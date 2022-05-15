; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0d0", ROMX[$4000], BANK[$d0]

    db $d0

    nop                                           ; $4001: $00
    ld bc, $00ed                                  ; $4002: $01 $ed $00
    nop                                           ; $4005: $00
    ld a, a                                       ; $4006: $7f
    rst $38                                       ; $4007: $ff
    ld a, a                                       ; $4008: $7f
    ret nz                                        ; $4009: $c0

    cp a                                          ; $400a: $bf

Call_0d0_400b:
    ret nz                                        ; $400b: $c0

    cp a                                          ; $400c: $bf
    pop bc                                        ; $400d: $c1
    nop                                           ; $400e: $00
    ld a, l                                       ; $400f: $7d
    pop bc                                        ; $4010: $c1
    ld a, c                                       ; $4011: $79
    pop bc                                        ; $4012: $c1
    rst $00                                       ; $4013: $c7
    ld [hl], e                                    ; $4014: $73
    sbc $40                                       ; $4015: $de $40
    nop                                           ; $4017: $00
    rst $38                                       ; $4018: $ff
    nop                                           ; $4019: $00
    dec b                                         ; $401a: $05
    push hl                                       ; $401b: $e5
    ret z                                         ; $401c: $c8

    rrca                                          ; $401d: $0f
    nop                                           ; $401e: $00
    rra                                           ; $401f: $1f
    nop                                           ; $4020: $00
    ret nz                                        ; $4021: $c0

    cp a                                          ; $4022: $bf
    ld bc, $fedf                                  ; $4023: $01 $df $fe
    dec b                                         ; $4026: $05
    ld a, a                                       ; $4027: $7f
    dec b                                         ; $4028: $05
    nop                                           ; $4029: $00
    rst $38                                       ; $402a: $ff
    nop                                           ; $402b: $00
    db $fc                                        ; $402c: $fc
    db $fd                                        ; $402d: $fd
    add hl, sp                                    ; $402e: $39
    di                                            ; $402f: $f3
    ld e, c                                       ; $4030: $59
    rlc b                                         ; $4031: $cb $00
    db $e3                                        ; $4033: $e3
    db $dd                                        ; $4034: $dd
    pop hl                                        ; $4035: $e1
    ld a, [c]                                     ; $4036: $f2
    ld a, b                                       ; $4037: $78
    db $ed                                        ; $4038: $ed
    inc a                                         ; $4039: $3c
    and $00                                       ; $403a: $e6 $00
    cp $fe                                        ; $403c: $fe $fe
    ld e, $82                                     ; $403e: $1e $82
    ld e, h                                       ; $4040: $5c
    ld h, d                                       ; $4041: $62
    inc b                                         ; $4042: $04
    ld a, [c]                                     ; $4043: $f2
    nop                                           ; $4044: $00
    ld a, [$4a54]                                 ; $4045: $fa $54 $4a
    adc b                                         ; $4048: $88
    ld [c], a                                     ; $4049: $e2
    inc b                                         ; $404a: $04
    ld a, [c]                                     ; $404b: $f2
    ld a, h                                       ; $404c: $7c
    nop                                           ; $404d: $00
    or b                                          ; $404e: $b0
    ld a, h                                       ; $404f: $7c
    add d                                         ; $4050: $82
    ld c, a                                       ; $4051: $4f
    and b                                         ; $4052: $a0
    ld e, a                                       ; $4053: $5f
    sub h                                         ; $4054: $94
    ld e, a                                       ; $4055: $5f
    nop                                           ; $4056: $00
    add a                                         ; $4057: $87
    ret c                                         ; $4058: $d8

    sbc a                                         ; $4059: $9f
    ret nz                                        ; $405a: $c0

    xor d                                         ; $405b: $aa
    ld d, h                                       ; $405c: $54
    cp e                                          ; $405d: $bb
    ld [hl], e                                    ; $405e: $73
    nop                                           ; $405f: $00

jr_0d0_4060:
    call c, $94b7                                 ; $4060: $dc $b7 $94
    ld [$806e], a                                 ; $4063: $ea $6e $80
    and e                                         ; $4066: $a3
    dec h                                         ; $4067: $25
    nop                                           ; $4068: $00
    adc [hl]                                      ; $4069: $8e
    dec de                                        ; $406a: $1b
    adc b                                         ; $406b: $88
    ei                                            ; $406c: $fb
    ret nz                                        ; $406d: $c0

    cp a                                          ; $406e: $bf
    add b                                         ; $406f: $80
    ld b, c                                       ; $4070: $41
    nop                                           ; $4071: $00
    ld a, b                                       ; $4072: $78
    ld c, [hl]                                    ; $4073: $4e
    ld de, $1502                                  ; $4074: $11 $02 $15
    or h                                          ; $4077: $b4
    ld [bc], a                                    ; $4078: $02
    cp $00                                        ; $4079: $fe $00
    rrca                                          ; $407b: $0f
    pop af                                        ; $407c: $f1
    ld bc, $1ee0                                  ; $407d: $01 $e0 $1e

Jump_0d0_4080:
    rst $00                                       ; $4080: $c7
    inc b                                         ; $4081: $04
    push bc                                       ; $4082: $c5
    nop                                           ; $4083: $00
    adc h                                         ; $4084: $8c
    jp nz, $425c                                  ; $4085: $c2 $5c $42

    inc e                                         ; $4088: $1c
    ld [bc], a                                    ; $4089: $02
    cp h                                          ; $408a: $bc
    add d                                         ; $408b: $82
    ld b, b                                       ; $408c: $40
    ld b, d                                       ; $408d: $42
    rlca                                          ; $408e: $07
    nop                                           ; $408f: $00
    ld e, $c2                                     ; $4090: $1e $c2
    ld e, $42                                     ; $4092: $1e $42
    ret z                                         ; $4094: $c8

    ld b, l                                       ; $4095: $45
    nop                                           ; $4096: $00
    ret nz                                        ; $4097: $c0

    ld h, a                                       ; $4098: $67
    ld [hl], b                                    ; $4099: $70
    push bc                                       ; $409a: $c5
    ld [hl], b                                    ; $409b: $70
    push bc                                       ; $409c: $c5
    dec [hl]                                      ; $409d: $35
    push bc                                       ; $409e: $c5
    nop                                           ; $409f: $00
    add hl, sp                                    ; $40a0: $39
    ret nz                                        ; $40a1: $c0

    ld a, [hl]                                    ; $40a2: $7e
    ret nz                                        ; $40a3: $c0

    ld a, a                                       ; $40a4: $7f
    ret nz                                        ; $40a5: $c0

    xor h                                         ; $40a6: $ac
    inc hl                                        ; $40a7: $23
    nop                                           ; $40a8: $00
    ld [hl], b                                    ; $40a9: $70
    ld [hl], e                                    ; $40aa: $73
    add c                                         ; $40ab: $81
    ld b, $00                                     ; $40ac: $06 $00
    rst $38                                       ; $40ae: $ff
    ld a, a                                       ; $40af: $7f
    add b                                         ; $40b0: $80
    nop                                           ; $40b1: $00
    ld a, [hl]                                    ; $40b2: $7e
    add b                                         ; $40b3: $80
    pop bc                                        ; $40b4: $c1
    dec a                                         ; $40b5: $3d
    ld h, b                                       ; $40b6: $60
    rra                                           ; $40b7: $1f
    ld a, a                                       ; $40b8: $7f
    sbc h                                         ; $40b9: $9c
    nop                                           ; $40ba: $00
    cp a                                          ; $40bb: $bf
    add b                                         ; $40bc: $80
    ccf                                           ; $40bd: $3f
    nop                                           ; $40be: $00
    cp $01                                        ; $40bf: $fe $01
    rst $38                                       ; $40c1: $ff
    cp $00                                        ; $40c2: $fe $00
    ld e, $fe                                     ; $40c4: $1e $fe
    add d                                         ; $40c6: $82
    cp [hl]                                       ; $40c7: $be
    dec b                                         ; $40c8: $05
    db $fc                                        ; $40c9: $fc
    ld a, $82                                     ; $40ca: $3e $82
    add b                                         ; $40cc: $80
    ld [bc], a                                    ; $40cd: $02
    ld [$027e], sp                                ; $40ce: $08 $7e $02
    ld a, h                                       ; $40d1: $7c
    ld a, [hl]                                    ; $40d2: $7e
    db $fc                                        ; $40d3: $fc
    ld [bc], a                                    ; $40d4: $02
    cp $0c                                        ; $40d5: $fe $0c
    db $fc                                        ; $40d7: $fc
    ld [bc], a                                    ; $40d8: $02
    db $fc                                        ; $40d9: $fc
    ld a, a                                       ; $40da: $7f
    inc [hl]                                      ; $40db: $34
    nop                                           ; $40dc: $00
    inc b                                         ; $40dd: $04
    jr z, jr_0d0_4060                             ; $40de: $28 $80

    ld a, a                                       ; $40e0: $7f
    nop                                           ; $40e1: $00
    rst $38                                       ; $40e2: $ff
    nop                                           ; $40e3: $00
    ccf                                           ; $40e4: $3f
    adc a                                         ; $40e5: $8f
    rra                                           ; $40e6: $1f
    jp Jump_000_0fe8                              ; $40e7: $c3 $e8 $0f


    nop                                           ; $40ea: $00
    ldh [rP1], a                                  ; $40eb: $e0 $00
    ret nc                                        ; $40ed: $d0

    rla                                           ; $40ee: $17
    cp b                                          ; $40ef: $b8
    ccf                                           ; $40f0: $3f
    rst $38                                       ; $40f1: $ff
    nop                                           ; $40f2: $00
    nop                                           ; $40f3: $00
    nop                                           ; $40f4: $00
    nop                                           ; $40f5: $00
    add hl, bc                                    ; $40f6: $09
    ld hl, sp+$30                                 ; $40f7: $f8 $30
    ldh a, [rTIMA]                                ; $40f9: $f0 $05
    call z, $0102                                 ; $40fb: $cc $02 $01
    inc a                                         ; $40fe: $3c
    di                                            ; $40ff: $f3
    dec bc                                        ; $4100: $0b
    rlca                                          ; $4101: $07
    or $10                                        ; $4102: $f6 $10
    ld [$8002], sp                                ; $4104: $08 $02 $80
    inc [hl]                                      ; $4107: $34
    nop                                           ; $4108: $00
    db $fc                                        ; $4109: $fc
    add d                                         ; $410a: $82
    db $fc                                        ; $410b: $fc
    cp $fc                                        ; $410c: $fe $fc
    ld a, [hl]                                    ; $410e: $7e
    db $fc                                        ; $410f: $fc
    nop                                           ; $4110: $00
    cp $00                                        ; $4111: $fe $00
    cp $fe                                        ; $4113: $fe $fe
    nop                                           ; $4115: $00

jr_0d0_4116:
    nop                                           ; $4116: $00
    ld bc, $00ea                                  ; $4117: $01 $ea $00
    nop                                           ; $411a: $00
    ld a, a                                       ; $411b: $7f
    rst $38                                       ; $411c: $ff
    ld a, a                                       ; $411d: $7f
    ret nz                                        ; $411e: $c0

    ld a, h                                       ; $411f: $7c
    ret nz                                        ; $4120: $c0

    ld a, b                                       ; $4121: $78
    pop bc                                        ; $4122: $c1
    nop                                           ; $4123: $00
    ld [hl], b                                    ; $4124: $70
    rst $00                                       ; $4125: $c7
    ld h, b                                       ; $4126: $60
    adc $cc                                       ; $4127: $ce $cc
    ld d, c                                       ; $4129: $51
    ret z                                         ; $412a: $c8

    ld d, e                                       ; $412b: $53
    nop                                           ; $412c: $00
    nop                                           ; $412d: $00
    rst $38                                       ; $412e: $ff
    ld e, e                                       ; $412f: $5b
    ld e, b                                       ; $4130: $58
    ld e, l                                       ; $4131: $5d
    ld a, h                                       ; $4132: $7c
    inc d                                         ; $4133: $14
    call c, Call_000_2000                         ; $4134: $dc $00 $20
    cp h                                          ; $4137: $bc
    ld c, $30                                     ; $4138: $0e $30
    call nc, Call_0d0_79ac                        ; $413a: $d4 $ac $79
    ld b, c                                       ; $413d: $41
    nop                                           ; $413e: $00
    rst $38                                       ; $413f: $ff
    nop                                           ; $4140: $00
    rrca                                          ; $4141: $0f
    adc $04                                       ; $4142: $ce $04
    dec sp                                        ; $4144: $3b
    dec sp                                        ; $4145: $3b
    inc [hl]                                      ; $4146: $34
    nop                                           ; $4147: $00
    ld h, e                                       ; $4148: $63
    ld [hl], a                                    ; $4149: $77
    pop af                                        ; $414a: $f1
    dec de                                        ; $414b: $1b
    ld b, e                                       ; $414c: $43
    jr c, @+$25                                   ; $414d: $38 $23

    ld de, $0100                                  ; $414f: $11 $00 $01
    rst $38                                       ; $4152: $ff
    dec a                                         ; $4153: $3d
    inc bc                                        ; $4154: $03
    ld e, $c2                                     ; $4155: $1e $c2
    ld c, $e2                                     ; $4157: $0e $e2
    nop                                           ; $4159: $00
    ld b, $72                                     ; $415a: $06 $72
    ld [bc], a                                    ; $415c: $02
    cp d                                          ; $415d: $ba
    sbc d                                         ; $415e: $9a
    ld [hl+], a                                   ; $415f: $22
    ld e, d                                       ; $4160: $5a
    add [hl]                                      ; $4161: $86
    nop                                           ; $4162: $00
    ret z                                         ; $4163: $c8

    ld [hl], e                                    ; $4164: $73
    add sp, $55                                   ; $4165: $e8 $55
    ret nc                                        ; $4167: $d0

    ld c, l                                       ; $4168: $4d
    ret nc                                        ; $4169: $d0

    ld b, c                                       ; $416a: $41
    nop                                           ; $416b: $00
    jp nz, $c622                                  ; $416c: $c2 $22 $c6

    ld [hl], $36                                  ; $416f: $36 $36
    add $36                                       ; $4171: $c6 $36
    add $00                                       ; $4173: $c6 $00
    scf                                           ; $4175: $37
    inc hl                                        ; $4176: $23
    dec h                                         ; $4177: $25
    daa                                           ; $4178: $27
    rla                                           ; $4179: $17
    ld d, b                                       ; $417a: $50
    add c                                         ; $417b: $81
    ld a, [hl]                                    ; $417c: $7e
    nop                                           ; $417d: $00
    inc bc                                        ; $417e: $03
    add h                                         ; $417f: $84
    rst $38                                       ; $4180: $ff
    inc a                                         ; $4181: $3c
    sbc l                                         ; $4182: $9d
    jr nc, jr_0d0_4116                            ; $4183: $30 $91

    jr nc, jr_0d0_4187                            ; $4185: $30 $00

jr_0d0_4187:
    or c                                          ; $4187: $b1
    jr nc, jr_0d0_41b4                            ; $4188: $30 $2a

    and b                                         ; $418a: $a0
    nop                                           ; $418b: $00
    call c, $82fd                                 ; $418c: $dc $fd $82
    nop                                           ; $418f: $00
    ld bc, $3f01                                  ; $4190: $01 $01 $3f
    jp $0db9                                      ; $4193: $c3 $b9 $0d


    adc c                                         ; $4196: $89
    dec c                                         ; $4197: $0d
    nop                                           ; $4198: $00
    add d                                         ; $4199: $82
    ld e, $02                                     ; $419a: $1e $02
    ld e, [hl]                                    ; $419c: $5e
    ld a, b                                       ; $419d: $78
    ld a, d                                       ; $419e: $7a
    inc [hl]                                      ; $419f: $34
    ld [hl-], a                                   ; $41a0: $32
    nop                                           ; $41a1: $00
    ld b, h                                       ; $41a2: $44
    ld b, d                                       ; $41a3: $42
    ld l, h                                       ; $41a4: $6c
    ld h, d                                       ; $41a5: $62
    ld e, h                                       ; $41a6: $5c
    ld b, d                                       ; $41a7: $42
    ld e, h                                       ; $41a8: $5c
    ld b, d                                       ; $41a9: $42
    nop                                           ; $41aa: $00
    add $36                                       ; $41ab: $c6 $36
    jp nz, Jump_0d0_7c3a                          ; $41ad: $c2 $3a $7c

    ret nz                                        ; $41b0: $c0

    ld a, [hl]                                    ; $41b1: $7e
    ret nz                                        ; $41b2: $c0

    ld b, b                                       ; $41b3: $40

jr_0d0_41b4:
    ld a, a                                       ; $41b4: $7f
    ld [bc], a                                    ; $41b5: $02
    db $10                                        ; $41b6: $10
    ld a, [hl]                                    ; $41b7: $7e
    ret nz                                        ; $41b8: $c0

    jp $fefe                                      ; $41b9: $c3 $fe $fe


    cp $00                                        ; $41bc: $fe $00
    rst $38                                       ; $41be: $ff
    nop                                           ; $41bf: $00
    ld a, a                                       ; $41c0: $7f

Jump_0d0_41c1:
    nop                                           ; $41c1: $00
    inc bc                                        ; $41c2: $03
    ld a, h                                       ; $41c3: $7c
    ld b, h                                       ; $41c4: $44
    ld a, b                                       ; $41c5: $78
    nop                                           ; $41c6: $00
    ld a, $3c                                     ; $41c7: $3e $3c
    rra                                           ; $41c9: $1f
    ccf                                           ; $41ca: $3f
    ret nz                                        ; $41cb: $c0

    inc bc                                        ; $41cc: $03
    ld hl, sp+$07                                 ; $41cd: $f8 $07
    add b                                         ; $41cf: $80
    ld [bc], a                                    ; $41d0: $02
    nop                                           ; $41d1: $00
    ld b, $8e                                     ; $41d2: $06 $8e
    ld [hl], d                                    ; $41d4: $72
    ld e, l                                       ; $41d5: $5d
    dec h                                         ; $41d6: $25
    ldh a, [rSCX]                                 ; $41d7: $f0 $43
    jr nz, @-$1e                                  ; $41d9: $20 $e0

    add e                                         ; $41db: $83
    inc [hl]                                      ; $41dc: $34
    ld [$c2fc], sp                                ; $41dd: $08 $fc $c2
    db $fc                                        ; $41e0: $fc
    ld [bc], a                                    ; $41e1: $02
    cp $10                                        ; $41e2: $fe $10
    db $fc                                        ; $41e4: $fc
    ld [bc], a                                    ; $41e5: $02
    db $fc                                        ; $41e6: $fc
    inc b                                         ; $41e7: $04
    ld [$c17c], sp                                ; $41e8: $08 $7c $c1
    ld a, b                                       ; $41eb: $78
    jp $7880                                      ; $41ec: $c3 $80 $78


    ld [$c636], sp                                ; $41ef: $08 $36 $c6
    ld l, $ce                                     ; $41f2: $2e $ce
    add b                                         ; $41f4: $80
    ld a, a                                       ; $41f5: $7f
    rst $38                                       ; $41f6: $ff
    ld bc, $0700                                  ; $41f7: $01 $00 $07
    rst $08                                       ; $41fa: $cf
    ld h, e                                       ; $41fb: $63
    db $10                                        ; $41fc: $10
    ld a, b                                       ; $41fd: $78
    call z, $004e                                 ; $41fe: $cc $4e $00
    nop                                           ; $4201: $00
    ldh [$7f], a                                  ; $4202: $e0 $7f
    ld [hl], b                                    ; $4204: $70
    rst $38                                       ; $4205: $ff
    nop                                           ; $4206: $00
    nop                                           ; $4207: $00
    nop                                           ; $4208: $00
    dec h                                         ; $4209: $25
    nop                                           ; $420a: $00
    db $e4                                        ; $420b: $e4
    ld a, [de]                                    ; $420c: $1a
    sbc d                                         ; $420d: $9a
    ld c, e                                       ; $420e: $4b
    inc sp                                        ; $420f: $33
    dec bc                                        ; $4210: $0b
    di                                            ; $4211: $f3
    adc e                                         ; $4212: $8b
    inc d                                         ; $4213: $14
    ldh a, [$0a]                                  ; $4214: $f0 $0a
    ldh a, [rNR10]                                ; $4216: $f0 $10
    ld [$3802], sp                                ; $4218: $08 $02 $38
    nop                                           ; $421b: $00
    ld a, l                                       ; $421c: $7d
    inc bc                                        ; $421d: $03
    nop                                           ; $421e: $00
    ld a, l                                       ; $421f: $7d
    inc bc                                        ; $4220: $03
    inc a                                         ; $4221: $3c
    ld [bc], a                                    ; $4222: $02
    cp h                                          ; $4223: $bc
    add d                                         ; $4224: $82
    nop                                           ; $4225: $00
    cp $00                                        ; $4226: $fe $00
    cp $00                                        ; $4228: $fe $00

    db $00, $01, $ec, $00, $00, $80, $ff, $bf, $c0, $bf, $40, $bf, $41, $00, $be, $42
    db $bc, $44, $b8, $48, $b0, $50, $00, $ff, $00, $03, $c3, $c3, $3f, $40, $c0, $00
    db $00, $00, $26, $39, $31, $01, $00, $01, $00, $ff, $00, $f0, $f7, $1c, $1b, $0e
    db $05, $00, $22, $21, $32, $31, $94, $95, $1c, $01, $00, $fe, $00, $02, $fc, $fc
    db $02, $fc, $fe, $80, $04, $00, $02, $fc, $0e, $fc, $fe, $e0, $50, $00, $c0, $77
    db $67, $c0, $69, $c0, $79, $c0, $00, $59, $c0, $89, $49, $88, $48, $01, $01, $00
    db $74, $17, $ee, $e1, $98, $87, $10, $0f, $00, $31, $0f, $7c, $87, $70, $8e, $01
    db $3f, $00, $82, $7e, $fc, $04, $f8, $02, $f9, $06, $02, $d9, $c2, $3d, $00, $5e
    db $c2, $3c, $20, $fe, $04, $fc, $82, $fc, $82, $3e, $02, $00, $c0, $40, $00, $c0
    db $61, $b2, $50, $bb, $58, $b9, $48, $00, $bc, $44, $3e, $c6, $3e, $c6, $71, $33
    db $00, $78, $02, $79, $81, $3f, $43, $bc, $23, $00, $ee, $01, $ff, $e0, $1f, $b2
    db $3f, $81, $10, $7d, $04, $00, $01, $00, $fc, $00, $ff, $00, $08, $00, $ff, $80
    db $7e, $34, $08, $3c, $a2, $3c, $00, $32, $1e, $98, $2e, $ac, $32, $46, $1e, $00
    db $62, $3e, $c2, $3f, $c3, $3f, $c7, $3f, $00, $c6, $3f, $cc, $3f, $c0, $80, $7f
    db $ff, $00, $00, $a0, $06, $b0, $13, $07, $b6, $2d, $04, $dd, $34, $c4, $68, $88
    db $32, $00, $00, $01, $00, $01, $c0, $3e, $c0, $7e, $e0, $be, $1f, $10, $a0, $0f
    db $f0, $10, $08, $86, $3a, $02, $06, $00, $6c, $62, $74, $72, $c6, $fc, $e2, $fc
    db $00, $00, $fe, $fe, $00

    nop                                           ; $433f: $00
    ld bc, $00ef                                  ; $4340: $01 $ef $00
    ld [$ff7f], sp                                ; $4343: $08 $7f $ff
    ld a, a                                       ; $4346: $7f
    ret nz                                        ; $4347: $c0

    ld [bc], a                                    ; $4348: $02
    jr c, jr_0d0_43c9                             ; $4349: $38 $7e

    ret nz                                        ; $434b: $c0

    rst $38                                       ; $434c: $ff
    nop                                           ; $434d: $00
    nop                                           ; $434e: $00
    nop                                           ; $434f: $00
    db $fc                                        ; $4350: $fc
    pop hl                                        ; $4351: $e1
    inc bc                                        ; $4352: $03
    db $d3                                        ; $4353: $d3
    rla                                           ; $4354: $17
    ccf                                           ; $4355: $3f
    nop                                           ; $4356: $00
    adc c                                         ; $4357: $89
    ld l, a                                       ; $4358: $6f
    ld b, e                                       ; $4359: $43
    ld a, h                                       ; $435a: $7c
    ld c, e                                       ; $435b: $4b
    ld e, h                                       ; $435c: $5c
    ld l, d                                       ; $435d: $6a
    rst $38                                       ; $435e: $ff
    nop                                           ; $435f: $00
    nop                                           ; $4360: $00
    ld b, b                                       ; $4361: $40
    ld e, a                                       ; $4362: $5f
    rst $08                                       ; $4363: $cf
    ldh [$e4], a                                  ; $4364: $e0 $e4
    ldh a, [$33]                                  ; $4366: $f0 $33
    nop                                           ; $4368: $00
    db $d3                                        ; $4369: $d3
    inc de                                        ; $436a: $13
    or $15                                        ; $436b: $f6 $15
    nop                                           ; $436d: $00
    add sp, $43                                   ; $436e: $e8 $43
    cp $00                                        ; $4370: $fe $00
    nop                                           ; $4372: $00
    ld [bc], a                                    ; $4373: $02
    db $fc                                        ; $4374: $fc
    db $fd                                        ; $4375: $fd
    inc bc                                        ; $4376: $03
    ld a, l                                       ; $4377: $7d
    inc bc                                        ; $4378: $03
    add d                                         ; $4379: $82
    nop                                           ; $437a: $00
    ld e, $e2                                     ; $437b: $1e $e2
    ld c, $f2                                     ; $437d: $0e $f2
    ld b, $f2                                     ; $437f: $06 $f2
    ld b, $76                                     ; $4381: $06 $76
    nop                                           ; $4383: $00
    ret nz                                        ; $4384: $c0

    ld h, [hl]                                    ; $4385: $66
    ret nz                                        ; $4386: $c0

    pop de                                        ; $4387: $d1
    ld de, $1fc2                                  ; $4388: $11 $c2 $1f
    sbc e                                         ; $438b: $9b
    nop                                           ; $438c: $00
    rst $18                                       ; $438d: $df
    xor d                                         ; $438e: $aa
    adc $d4                                       ; $438f: $ce $d4
    ld c, b                                       ; $4391: $48
    ret nz                                        ; $4392: $c0

    ld e, c                                       ; $4393: $59
    call c, $ea00                                 ; $4394: $dc $00 $ea
    sbc l                                         ; $4397: $9d
    call nc, $8c9d                                ; $4398: $d4 $9d $8c
    inc e                                         ; $439b: $1c
    xor h                                         ; $439c: $ac
    dec c                                         ; $439d: $0d
    nop                                           ; $439e: $00
    push af                                       ; $439f: $f5
    ld c, l                                       ; $43a0: $4d
    dec [hl]                                      ; $43a1: $35
    adc $b4                                       ; $43a2: $ce $b4
    adc [hl]                                      ; $43a4: $8e
    call nc, $0054                                ; $43a5: $d4 $54 $00
    inc hl                                        ; $43a8: $23
    inc de                                        ; $43a9: $13
    sub l                                         ; $43aa: $95
    dec h                                         ; $43ab: $25
    push bc                                       ; $43ac: $c5
    add c                                         ; $43ad: $81
    pop hl                                        ; $43ae: $e1
    jr c, jr_0d0_43b1                             ; $43af: $38 $00

jr_0d0_43b1:
    ld h, $e4                                     ; $43b1: $26 $e4
    rst $00                                       ; $43b3: $c7
    ld a, [c]                                     ; $43b4: $f2
    pop af                                        ; $43b5: $f1
    adc b                                         ; $43b6: $88
    ret                                           ; $43b7: $c9


    ld hl, sp+$00                                 ; $43b8: $f8 $00
    ld a, [hl-]                                   ; $43ba: $3a
    inc a                                         ; $43bb: $3c
    ld e, $82                                     ; $43bc: $1e $82
    inc e                                         ; $43be: $1c
    jp nc, $0e9c                                  ; $43bf: $d2 $9c $0e

    ld b, b                                       ; $43c2: $40
    ld [hl], d                                    ; $43c3: $72
    ld [bc], a                                    ; $43c4: $02
    ld [$324e], sp                                ; $43c5: $08 $4e $32
    ret nz                                        ; $43c8: $c0

jr_0d0_43c9:
    ld d, e                                       ; $43c9: $53
    pop bc                                        ; $43ca: $c1
    ld d, [hl]                                    ; $43cb: $56
    nop                                           ; $43cc: $00
    sbc e                                         ; $43cd: $9b
    ld e, h                                       ; $43ce: $5c
    adc [hl]                                      ; $43cf: $8e
    ld b, b                                       ; $43d0: $40
    xor l                                         ; $43d1: $ad
    ld h, b                                       ; $43d2: $60
    sbc [hl]                                      ; $43d3: $9e
    ld b, e                                       ; $43d4: $43
    nop                                           ; $43d5: $00
    sbc [hl]                                      ; $43d6: $9e
    ld d, l                                       ; $43d7: $55
    cp h                                          ; $43d8: $bc
    ld [hl], a                                    ; $43d9: $77
    adc [hl]                                      ; $43da: $8e
    ld e, $1e                                     ; $43db: $1e $1e
    cp [hl]                                       ; $43dd: $be
    nop                                           ; $43de: $00
    ld a, l                                       ; $43df: $7d
    dec [hl]                                      ; $43e0: $35
    ld a, h                                       ; $43e1: $7c
    jp hl                                         ; $43e2: $e9


    ld a, [$e103]                                 ; $43e3: $fa $03 $e1
    inc bc                                        ; $43e6: $03
    nop                                           ; $43e7: $00
    call c, $1f1b                                 ; $43e8: $dc $1b $1f
    cp h                                          ; $43eb: $bc
    or c                                          ; $43ec: $b1
    ld h, h                                       ; $43ed: $64
    add hl, de                                    ; $43ee: $19
    ld d, d                                       ; $43ef: $52
    nop                                           ; $43f0: $00
    ld [bc], a                                    ; $43f1: $02
    ld [$788c], a                                 ; $43f2: $ea $8c $78
    call c, Call_0d0_58e5                         ; $43f5: $dc $e5 $58
    ld [$b300], a                                 ; $43f8: $ea $00 $b3
    db $d3                                        ; $43fb: $d3
    ld l, [hl]                                    ; $43fc: $6e
    xor l                                         ; $43fd: $ad
    ld a, h                                       ; $43fe: $7c
    ld d, d                                       ; $43ff: $52

Jump_0d0_4400:
    ld e, h                                       ; $4400: $5c
    ld b, d                                       ; $4401: $42
    nop                                           ; $4402: $00
    sbc [hl]                                      ; $4403: $9e
    call c, $bc1a                                 ; $4404: $dc $1a $bc
    ld b, d                                       ; $4407: $42
    ld a, [hl-]                                   ; $4408: $3a
    add d                                         ; $4409: $82
    ld [hl], d                                    ; $440a: $72

jr_0d0_440b:
    nop                                           ; $440b: $00
    ld a, [c]                                     ; $440c: $f2
    ld b, $e2                                     ; $440d: $06 $e2
    ld c, $bf                                     ; $440f: $0e $bf
    ld [hl], h                                    ; $4411: $74
    cp a                                          ; $4412: $bf
    ld [hl], c                                    ; $4413: $71
    nop                                           ; $4414: $00
    xor [hl]                                      ; $4415: $ae
    ld h, h                                       ; $4416: $64
    or e                                          ; $4417: $b3
    ld [hl], b                                    ; $4418: $70
    ld l, l                                       ; $4419: $6d
    ret nz                                        ; $441a: $c0

    halt                                          ; $441b: $76
    ret nz                                        ; $441c: $c0

    nop                                           ; $441d: $00
    add b                                         ; $441e: $80
    ld a, a                                       ; $441f: $7f
    rst $38                                       ; $4420: $ff
    nop                                           ; $4421: $00
    ld d, b                                       ; $4422: $50
    ccf                                           ; $4423: $3f
    rrca                                          ; $4424: $0f
    ld a, a                                       ; $4425: $7f
    nop                                           ; $4426: $00
    pop bc                                        ; $4427: $c1
    ccf                                           ; $4428: $3f
    inc bc                                        ; $4429: $03
    ccf                                           ; $442a: $3f
    ld e, $81                                     ; $442b: $1e $81
    inc b                                         ; $442d: $04
    cpl                                           ; $442e: $2f
    add b                                         ; $442f: $80
    call z, RST_00                                ; $4430: $cc $00 $00
    inc c                                         ; $4433: $0c
    rst $10                                       ; $4434: $d7
    xor c                                         ; $4435: $a9
    inc d                                         ; $4436: $14
    inc hl                                        ; $4437: $23
    sub h                                         ; $4438: $94
    ld [bc], a                                    ; $4439: $02
    cpl                                           ; $443a: $2f
    ld e, c                                       ; $443b: $59
    add hl, de                                    ; $443c: $19
    ld b, a                                       ; $443d: $47
    ld e, b                                       ; $443e: $58
    rst $00                                       ; $443f: $c7
    db $10                                        ; $4440: $10
    ld [$00c2], sp                                ; $4441: $08 $c2 $00
    ld c, $82                                     ; $4444: $0e $82
    ld e, $82                                     ; $4446: $1e $82
    cp h                                          ; $4448: $bc
    ld [bc], a                                    ; $4449: $02
    ld l, h                                       ; $444a: $6c
    ld [de], a                                    ; $444b: $12
    nop                                           ; $444c: $00
    ld [hl], h                                    ; $444d: $74
    ld [de], a                                    ; $444e: $12
    inc b                                         ; $444f: $04
    nop                                           ; $4450: $00

jr_0d0_4451:
    cp $fe                                        ; $4451: $fe $fe
    nop                                           ; $4453: $00
    nop                                           ; $4454: $00
    ld bc, $00f4                                  ; $4455: $01 $f4 $00
    ld [$ff7f], sp                                ; $4458: $08 $7f $ff
    ld a, a                                       ; $445b: $7f
    ret nz                                        ; $445c: $c0

    ld [bc], a                                    ; $445d: $02
    jr @+$80                                      ; $445e: $18 $7e

    ret nz                                        ; $4460: $c0

    pop bc                                        ; $4461: $c1
    nop                                           ; $4462: $00
    ld a, h                                       ; $4463: $7c
    pop bc                                        ; $4464: $c1
    ld a, l                                       ; $4465: $7d
    rst $38                                       ; $4466: $ff
    nop                                           ; $4467: $00
    rrca                                          ; $4468: $0f
    rst $28                                       ; $4469: $ef
    rra                                           ; $446a: $1f
    nop                                           ; $446b: $00
    reti                                          ; $446c: $d9


    ccf                                           ; $446d: $3f
    or e                                          ; $446e: $b3
    ld h, a                                       ; $446f: $67
    ld c, $cc                                     ; $4470: $0e $cc
    rra                                           ; $4472: $1f
    ld h, d                                       ; $4473: $62
    nop                                           ; $4474: $00
    sbc e                                         ; $4475: $9b
    db $10                                        ; $4476: $10
    and a                                         ; $4477: $a7
    nop                                           ; $4478: $00
    nop                                           ; $4479: $00
    db $fc                                        ; $447a: $fc
    inc bc                                        ; $447b: $03
    ld bc, $fd00                                  ; $447c: $01 $00 $fd
    ret nz                                        ; $447f: $c0

    inc a                                         ; $4480: $3c
    ld b, a                                       ; $4481: $47
    jr c, jr_0d0_440b                             ; $4482: $38 $87

    ld a, d                                       ; $4484: $7a
    pop af                                        ; $4485: $f1
    nop                                           ; $4486: $00
    add sp, -$3e                                  ; $4487: $e8 $c2
    dec h                                         ; $4489: $25
    rst $38                                       ; $448a: $ff
    ld bc, $7d03                                  ; $448b: $01 $03 $7d
    sbc h                                         ; $448e: $9c
    nop                                           ; $448f: $00
    add d                                         ; $4490: $82
    xor h                                         ; $4491: $ac
    and d                                         ; $4492: $a2
    inc d                                         ; $4493: $14
    or d                                          ; $4494: $b2
    jr jr_0d0_4451                                ; $4495: $18 $ba

    ld e, [hl]                                    ; $4497: $5e
    inc c                                         ; $4498: $0c
    cp [hl]                                       ; $4499: $be
    add d                                         ; $449a: $82
    ld a, [hl]                                    ; $449b: $7e
    ld a, l                                       ; $449c: $7d
    dec [hl]                                      ; $449d: $35
    nop                                           ; $449e: $00
    ld [bc], a                                    ; $449f: $02
    nop                                           ; $44a0: $00
    ret nz                                        ; $44a1: $c0

    ld a, b                                       ; $44a2: $78
    nop                                           ; $44a3: $00
    jp nz, $c378                                  ; $44a4: $c2 $78 $c3

    ld a, c                                       ; $44a7: $79
    pop bc                                        ; $44a8: $c1
    ld [hl], a                                    ; $44a9: $77
    rst $00                                       ; $44aa: $c7
    ld h, $00                                     ; $44ab: $26 $00
    ld l, a                                       ; $44ad: $6f
    ld bc, $9bac                                  ; $44ae: $01 $ac $9b
    ld l, b                                       ; $44b1: $68
    dec sp                                        ; $44b2: $3b
    ld c, b                                       ; $44b3: $48
    ld a, [de]                                    ; $44b4: $1a
    nop                                           ; $44b5: $00
    ld c, c                                       ; $44b6: $49
    ld e, $49                                     ; $44b7: $1e $49
    inc sp                                        ; $44b9: $33
    db $f4                                        ; $44ba: $f4
    ld h, e                                       ; $44bb: $63
    db $ec                                        ; $44bc: $ec
    ret z                                         ; $44bd: $c8

    nop                                           ; $44be: $00
    ret z                                         ; $44bf: $c8

    add b                                         ; $44c0: $80
    ld a, a                                       ; $44c1: $7f
    cp $01                                        ; $44c2: $fe $01
    ld a, h                                       ; $44c4: $7c
    db $fd                                        ; $44c5: $fd
    rlca                                          ; $44c6: $07
    nop                                           ; $44c7: $00
    nop                                           ; $44c8: $00
    dec bc                                        ; $44c9: $0b
    jr c, @-$3d                                   ; $44ca: $38 $c1

    ld c, h                                       ; $44cc: $4c
    rst $38                                       ; $44cd: $ff
    inc a                                         ; $44ce: $3c
    ld [hl], h                                    ; $44cf: $74
    nop                                           ; $44d0: $00
    ld [bc], a                                    ; $44d1: $02
    or h                                          ; $44d2: $b4
    ld [hl+], a                                   ; $44d3: $22
    add [hl]                                      ; $44d4: $86
    ret nz                                        ; $44d5: $c0

    add $f0                                       ; $44d6: $c6 $f0
    ld [c], a                                     ; $44d8: $e2
    nop                                           ; $44d9: $00
    ret nc                                        ; $44da: $d0

    sub d                                         ; $44db: $92
    add h                                         ; $44dc: $84
    jp nc, Jump_000_22c4                          ; $44dd: $d2 $c4 $22

    inc l                                         ; $44e0: $2c
    xor c                                         ; $44e1: $a9
    nop                                           ; $44e2: $00
    ld c, a                                       ; $44e3: $4f
    sub e                                         ; $44e4: $93
    ld e, e                                       ; $44e5: $5b
    or h                                          ; $44e6: $b4
    ld [hl], a                                    ; $44e7: $77
    xor c                                         ; $44e8: $a9
    ld l, [hl]                                    ; $44e9: $6e
    and a                                         ; $44ea: $a7
    nop                                           ; $44eb: $00
    ld e, b                                       ; $44ec: $58
    xor a                                         ; $44ed: $af
    ld a, c                                       ; $44ee: $79
    sbc e                                         ; $44ef: $9b
    ld [hl], a                                    ; $44f0: $77
    add h                                         ; $44f1: $84
    ld l, b                                       ; $44f2: $68
    call c, $4300                                 ; $44f3: $dc $00 $43
    sbc b                                         ; $44f6: $98
    add a                                         ; $44f7: $87
    ld hl, sp-$39                                 ; $44f8: $f8 $c7
    jr c, jr_0d0_4523                             ; $44fa: $38 $27

    rra                                           ; $44fc: $1f
    nop                                           ; $44fd: $00
    ld h, a                                       ; $44fe: $67
    rrca                                          ; $44ff: $0f
    ld d, e                                       ; $4500: $53
    ld l, c                                       ; $4501: $69
    rlca                                          ; $4502: $07
    ld d, h                                       ; $4503: $54
    inc hl                                        ; $4504: $23
    nop                                           ; $4505: $00
    nop                                           ; $4506: $00
    cp $02                                        ; $4507: $fe $02
    db $fc                                        ; $4509: $fc
    db $fd                                        ; $450a: $fd
    ld [bc], a                                    ; $450b: $02
    db $fd                                        ; $450c: $fd
    nop                                           ; $450d: $00
    ld bc, $be00                                  ; $450e: $01 $00 $be
    ld [hl-], a                                   ; $4511: $32
    xor h                                         ; $4512: $ac
    sub h                                         ; $4513: $94
    ld de, $03c8                                  ; $4514: $11 $c8 $03
    ld c, h                                       ; $4517: $4c
    nop                                           ; $4518: $00
    ld b, d                                       ; $4519: $42
    ld e, h                                       ; $451a: $5c
    ld b, d                                       ; $451b: $42
    call c, $bcc2                                 ; $451c: $dc $c2 $bc
    add d                                         ; $451f: $82
    ld [bc], a                                    ; $4520: $02
    nop                                           ; $4521: $00
    ld a, [hl]                                    ; $4522: $7e

jr_0d0_4523:
    add d                                         ; $4523: $82
    ld a, $82                                     ; $4524: $3e $82
    cp h                                          ; $4526: $bc
    jp nz, $b2dc                                  ; $4527: $c2 $dc $b2

    nop                                           ; $452a: $00
    ld c, d                                       ; $452b: $4a
    adc e                                         ; $452c: $8b
    ld d, e                                       ; $452d: $53
    and l                                         ; $452e: $a5
    ld e, b                                       ; $452f: $58
    adc c                                         ; $4530: $89
    ld [hl], c                                    ; $4531: $71
    add c                                         ; $4532: $81
    nop                                           ; $4533: $00
    ldh [$8f], a                                  ; $4534: $e0 $8f
    call nz, Call_0d0_7f80                        ; $4536: $c4 $80 $7f
    rst $38                                       ; $4539: $ff
    nop                                           ; $453a: $00
    ld c, d                                       ; $453b: $4a
    nop                                           ; $453c: $00
    ld sp, $b885                                  ; $453d: $31 $85 $b8
    sub d                                         ; $4540: $92
    ld e, $91                                     ; $4541: $1e $91

Jump_0d0_4543:
    rra                                           ; $4543: $1f
    ret nc                                        ; $4544: $d0

    nop                                           ; $4545: $00
    rra                                           ; $4546: $1f
    pop bc                                        ; $4547: $c1
    rrca                                          ; $4548: $0f
    rst $38                                       ; $4549: $ff
    nop                                           ; $454a: $00
    nop                                           ; $454b: $00
    nop                                           ; $454c: $00
    ei                                            ; $454d: $fb
    nop                                           ; $454e: $00
    ld [hl], a                                    ; $454f: $77
    ld [c], a                                     ; $4550: $e2
    rlca                                          ; $4551: $07
    add hl, bc                                    ; $4552: $09
    ld a, [bc]                                    ; $4553: $0a
    pop bc                                        ; $4554: $c1
    nop                                           ; $4555: $00
    ld c, h                                       ; $4556: $4c
    db $10                                        ; $4557: $10
    adc l                                         ; $4558: $8d
    ld e, b                                       ; $4559: $58
    sub c                                         ; $455a: $91
    db $10                                        ; $455b: $10
    ld [$dcc2], sp                                ; $455c: $08 $c2 $dc
    ld [c], a                                     ; $455f: $e2

jr_0d0_4560:
    db $ec                                        ; $4560: $ec
    nop                                           ; $4561: $00
    ld [c], a                                     ; $4562: $e2
    db $ec                                        ; $4563: $ec
    ld h, d                                       ; $4564: $62
    ld l, h                                       ; $4565: $6c
    ld h, d                                       ; $4566: $62
    ld l, h                                       ; $4567: $6c
    ld [hl], d                                    ; $4568: $72
    db $f4                                        ; $4569: $f4
    nop                                           ; $456a: $00
    nop                                           ; $456b: $00
    cp $fe                                        ; $456c: $fe $fe
    nop                                           ; $456e: $00
    nop                                           ; $456f: $00
    ld bc, $00fa                                  ; $4570: $01 $fa $00
    db $10                                        ; $4573: $10
    rst $38                                       ; $4574: $ff
    ld a, a                                       ; $4575: $7f
    ret nz                                        ; $4576: $c0

    ld [bc], a                                    ; $4577: $02
    ld [$7063], sp                                ; $4578: $08 $63 $70
    ldh a, [$66]                                  ; $457b: $f0 $66
    nop                                           ; $457d: $00
    ldh [$0c], a                                  ; $457e: $e0 $0c
    ret z                                         ; $4580: $c8

    cpl                                           ; $4581: $2f
    rst $20                                       ; $4582: $e7
    nop                                           ; $4583: $00
    rst $38                                       ; $4584: $ff
    dec a                                         ; $4585: $3d

jr_0d0_4586:
    nop                                           ; $4586: $00
    dec c                                         ; $4587: $0d
    ld [bc], a                                    ; $4588: $02
    db $10                                        ; $4589: $10
    ld h, $04                                     ; $458a: $26 $04
    sbc c                                         ; $458c: $99
    and $b6                                       ; $458d: $e6 $b6
    nop                                           ; $458f: $00
    ld h, d                                       ; $4590: $62
    ld c, d                                       ; $4591: $4a
    add h                                         ; $4592: $84
    sub b                                         ; $4593: $90
    ld [$ff00], sp                                ; $4594: $08 $00 $ff

jr_0d0_4597:
    ld b, a                                       ; $4597: $47

jr_0d0_4598:
    nop                                           ; $4598: $00
    ld b, b                                       ; $4599: $40
    ld c, b                                       ; $459a: $48
    ld bc, $307c                                  ; $459b: $01 $7c $30
    cp d                                          ; $459e: $ba
    ld d, l                                       ; $459f: $55
    and e                                         ; $45a0: $a3
    nop                                           ; $45a1: $00
    ld l, b                                       ; $45a2: $68
    adc e                                         ; $45a3: $8b
    dec d                                         ; $45a4: $15
    add c                                         ; $45a5: $81
    ld b, [hl]                                    ; $45a6: $46
    nop                                           ; $45a7: $00
    cp $fc                                        ; $45a8: $fe $fc
    nop                                           ; $45aa: $00
    ld [bc], a                                    ; $45ab: $02
    inc a                                         ; $45ac: $3c
    ld [bc], a                                    ; $45ad: $02
    and h                                         ; $45ae: $a4
    add d                                         ; $45af: $82
    ld [bc], a                                    ; $45b0: $02
    adc b                                         ; $45b1: $88
    ld b, [hl]                                    ; $45b2: $46
    nop                                           ; $45b3: $00
    ldh [rLCDC], a                                ; $45b4: $e0 $40
    ld b, [hl]                                    ; $45b6: $46
    ld h, b                                       ; $45b7: $60
    ld b, d                                       ; $45b8: $42
    ld a, a                                       ; $45b9: $7f
    ret nz                                        ; $45ba: $c0

    ld h, h                                       ; $45bb: $64
    nop                                           ; $45bc: $00
    ret nz                                        ; $45bd: $c0

    ld c, $c6                                     ; $45be: $0e $c6
    add hl, de                                    ; $45c0: $19
    ret z                                         ; $45c1: $c8

    dec d                                         ; $45c2: $15
    call nz, $0026                                ; $45c3: $c4 $26 $00
    ldh [$86], a                                  ; $45c6: $e0 $86
    ret nz                                        ; $45c8: $c0

    add [hl]                                      ; $45c9: $86
    ret nz                                        ; $45ca: $c0

    db $10                                        ; $45cb: $10
    ld b, $17                                     ; $45cc: $06 $17
    nop                                           ; $45ce: $00
    ld b, a                                       ; $45cf: $47
    rst $28                                       ; $45d0: $ef
    ld l, [hl]                                    ; $45d1: $6e
    add e                                         ; $45d2: $83
    db $fc                                        ; $45d3: $fc
    add b                                         ; $45d4: $80
    rst $38                                       ; $45d5: $ff
    ld l, [hl]                                    ; $45d6: $6e
    nop                                           ; $45d7: $00
    xor c                                         ; $45d8: $a9
    jr jr_0d0_4586                                ; $45d9: $18 $ab

    jr nz, jr_0d0_4560                            ; $45db: $20 $83

    ld b, c                                       ; $45dd: $41
    jr jr_0d0_4598                                ; $45de: $18 $b8

    nop                                           ; $45e0: $00
    cp [hl]                                       ; $45e1: $be
    cp $7c                                        ; $45e2: $fe $7c
    add e                                         ; $45e4: $83
    ld a, [hl]                                    ; $45e5: $7e
    inc bc                                        ; $45e6: $03
    cp $ec                                        ; $45e7: $fe $ec
    nop                                           ; $45e9: $00
    ld a, [hl+]                                   ; $45ea: $2a
    jr nc, jr_0d0_4597                            ; $45eb: $30 $aa

    ld [$7082], sp                                ; $45ed: $08 $82 $70
    ld [bc], a                                    ; $45f0: $02
    ld [hl], b                                    ; $45f1: $70
    nop                                           ; $45f2: $00
    ld d, [hl]                                    ; $45f3: $56
    jr nc, jr_0d0_462c                            ; $45f4: $30 $36

    db $10                                        ; $45f6: $10
    ld [bc], a                                    ; $45f7: $02
    ld e, b                                       ; $45f8: $58
    ld c, d                                       ; $45f9: $4a
    call c, $8e00                                 ; $45fa: $dc $00 $8e
    add d                                         ; $45fd: $82
    ld d, d                                       ; $45fe: $52
    sub d                                         ; $45ff: $92
    ld c, d                                       ; $4600: $4a
    sub [hl]                                      ; $4601: $96
    ld d, b                                       ; $4602: $50
    adc d                                         ; $4603: $8a
    nop                                           ; $4604: $00
    ld c, b                                       ; $4605: $48
    ld c, b                                       ; $4606: $48
    ldh [rOBP0], a                                ; $4607: $e0 $48
    ldh [$ab], a                                  ; $4609: $e0 $ab
    ld c, b                                       ; $460b: $48
    and e                                         ; $460c: $a3
    nop                                           ; $460d: $00
    ld b, b                                       ; $460e: $40
    and a                                         ; $460f: $a7
    ret nz                                        ; $4610: $c0

    xor a                                         ; $4611: $af
    ret nz                                        ; $4612: $c0

    add d                                         ; $4613: $82
    rst $00                                       ; $4614: $c7
    cp $00                                        ; $4615: $fe $00
    push bc                                       ; $4617: $c5
    ld a, a                                       ; $4618: $7f
    add b                                         ; $4619: $80
    ld [hl], b                                    ; $461a: $70
    rrca                                          ; $461b: $0f
    ld a, b                                       ; $461c: $78
    nop                                           ; $461d: $00
    add hl, sp                                    ; $461e: $39
    nop                                           ; $461f: $00
    ld b, l                                       ; $4620: $45
    sbc h                                         ; $4621: $9c
    ld a, $0f                                     ; $4622: $3e $0f
    rra                                           ; $4624: $1f
    ld b, h                                       ; $4625: $44
    add d                                         ; $4626: $82
    cp b                                          ; $4627: $b8
    nop                                           ; $4628: $00
    cp $02                                        ; $4629: $fe $02
    db $fc                                        ; $462b: $fc

jr_0d0_462c:
    ld [c], a                                     ; $462c: $e2
    ld e, $3d                                     ; $462d: $1e $3d
    inc a                                         ; $462f: $3c
    add hl, sp                                    ; $4630: $39
    nop                                           ; $4631: $00
    ld a, h                                       ; $4632: $7c
    ld [hl], e                                    ; $4633: $73
    ld hl, sp-$1f                                 ; $4634: $f8 $e1
    ldh a, [$82]                                  ; $4636: $f0 $82
    ld e, [hl]                                    ; $4638: $5e
    ld [bc], a                                    ; $4639: $02
    nop                                           ; $463a: $00
    or d                                          ; $463b: $b2
    ld [hl+], a                                   ; $463c: $22
    ld a, [bc]                                    ; $463d: $0a
    ld [hl+], a                                   ; $463e: $22
    ld c, $2c                                     ; $463f: $0e $2c
    ld c, $ac                                     ; $4641: $0e $ac
    nop                                           ; $4643: $00
    adc [hl]                                      ; $4644: $8e
    and h                                         ; $4645: $a4
    ld [hl+], a                                   ; $4646: $22
    call z, $bc02                                 ; $4647: $cc $02 $bc
    db $fc                                        ; $464a: $fc
    cp d                                          ; $464b: $ba
    nop                                           ; $464c: $00
    ld hl, sp-$4b                                 ; $464d: $f8 $b5
    ld b, l                                       ; $464f: $45
    or b                                          ; $4650: $b0
    ld b, h                                       ; $4651: $44
    and [hl]                                      ; $4652: $a6
    ld b, h                                       ; $4653: $44
    sbc e                                         ; $4654: $9b
    nop                                           ; $4655: $00
    ld e, b                                       ; $4656: $58
    add b                                         ; $4657: $80
    ld a, a                                       ; $4658: $7f
    rst $38                                       ; $4659: $ff
    nop                                           ; $465a: $00
    add a                                         ; $465b: $87
    ret z                                         ; $465c: $c8

    nop                                           ; $465d: $00
    nop                                           ; $465e: $00
    rrca                                          ; $465f: $0f
    ccf                                           ; $4660: $3f
    cpl                                           ; $4661: $2f
    ccf                                           ; $4662: $3f
    and b                                         ; $4663: $a0
    rlca                                          ; $4664: $07
    dec de                                        ; $4665: $1b
    rrca                                          ; $4666: $0f
    nop                                           ; $4667: $00
    rla                                           ; $4668: $17
    rst $38                                       ; $4669: $ff
    nop                                           ; $466a: $00
    nop                                           ; $466b: $00
    nop                                           ; $466c: $00
    ldh [$c2], a                                  ; $466d: $e0 $c2
    add b                                         ; $466f: $80
    nop                                           ; $4670: $00
    ld h, c                                       ; $4671: $61
    jp hl                                         ; $4672: $e9


    ld hl, sp+$08                                 ; $4673: $f8 $08
    ld hl, sp-$40                                 ; $4675: $f8 $c0
    or b                                          ; $4677: $b0
    pop hl                                        ; $4678: $e1
    ld b, b                                       ; $4679: $40
    pop de                                        ; $467a: $d1
    db $10                                        ; $467b: $10
    ld [$027c], sp                                ; $467c: $08 $7c $02
    cp h                                          ; $467f: $bc
    add d                                         ; $4680: $82
    ld e, $82                                     ; $4681: $1e $82
    nop                                           ; $4683: $00
    ld e, $42                                     ; $4684: $1e $42
    call z, $b442                                 ; $4686: $cc $42 $b4
    ld [hl-], a                                   ; $4689: $32
    nop                                           ; $468a: $00
    cp $00                                        ; $468b: $fe $00
    cp $00                                        ; $468d: $fe $00
    nop                                           ; $468f: $00
    ld bc, $00f4                                  ; $4690: $01 $f4 $00
    nop                                           ; $4693: $00
    rst $38                                       ; $4694: $ff
    ld a, a                                       ; $4695: $7f
    ret nz                                        ; $4696: $c0

    ld b, b                                       ; $4697: $40
    cp a                                          ; $4698: $bf
    ret nz                                        ; $4699: $c0

    cp [hl]                                       ; $469a: $be
    ret nz                                        ; $469b: $c0

    nop                                           ; $469c: $00
    ld a, h                                       ; $469d: $7c
    pop bc                                        ; $469e: $c1
    ld a, b                                       ; $469f: $78
    jp Jump_0d0_4ac5                              ; $46a0: $c3 $c5 $4a


    jp $004c                                      ; $46a3: $c3 $4c $00


    nop                                           ; $46a6: $00
    rst $38                                       ; $46a7: $ff
    ccf                                           ; $46a8: $3f
    jr nz, jr_0d0_46c9                            ; $46a9: $20 $1e

    ld sp, $eb35                                  ; $46ab: $31 $35 $eb
    nop                                           ; $46ae: $00
    ld c, [hl]                                    ; $46af: $4e
    ld a, [c]                                     ; $46b0: $f2
    sub l                                         ; $46b1: $95
    db $ed                                        ; $46b2: $ed
    ld a, [hl+]                                   ; $46b3: $2a
    db $d3                                        ; $46b4: $d3
    ld d, l                                       ; $46b5: $55
    and [hl]                                      ; $46b6: $a6
    nop                                           ; $46b7: $00
    rst $38                                       ; $46b8: $ff
    rst $38                                       ; $46b9: $ff
    ld d, $e1                                     ; $46ba: $16 $e1
    ld a, c                                       ; $46bc: $79
    ld a, [c]                                     ; $46bd: $f2
    adc a                                         ; $46be: $8f
    ld hl, sp+$00                                 ; $46bf: $f8 $00
    adc a                                         ; $46c1: $8f
    ld [hl], l                                    ; $46c2: $75
    ld [hl], e                                    ; $46c3: $73
    adc d                                         ; $46c4: $8a
    adc e                                         ; $46c5: $8b
    ld [hl], d                                    ; $46c6: $72
    ld h, b                                       ; $46c7: $60
    di                                            ; $46c8: $f3

jr_0d0_46c9:
    nop                                           ; $46c9: $00
    cp $ff                                        ; $46ca: $fe $ff
    ld [c], a                                     ; $46cc: $e2
    inc bc                                        ; $46cd: $03
    ld [hl], c                                    ; $46ce: $71
    add e                                         ; $46cf: $83
    ld sp, hl                                     ; $46d0: $f9
    inc bc                                        ; $46d1: $03
    nop                                           ; $46d2: $00
    ld e, $c2                                     ; $46d3: $1e $c2
    adc $22                                       ; $46d5: $ce $22
    ld c, d                                       ; $46d7: $4a
    and [hl]                                      ; $46d8: $a6
    ld h, $4a                                     ; $46d9: $26 $4a
    nop                                           ; $46db: $00
    rst $00                                       ; $46dc: $c7
    ld b, b                                       ; $46dd: $40
    rst $00                                       ; $46de: $c7
    ld c, b                                       ; $46df: $48
    call c, $dd13                                 ; $46e0: $dc $13 $dd
    ld a, [de]                                    ; $46e3: $1a
    nop                                           ; $46e4: $00

jr_0d0_46e5:
    add $33                                       ; $46e5: $c6 $33
    jp nz, $c332                                  ; $46e7: $c2 $32 $c3

    dec sp                                        ; $46ea: $3b
    jp $0033                                      ; $46eb: $c3 $33 $00


    ld d, e                                       ; $46ee: $53
    or l                                          ; $46ef: $b5
    ld a, a                                       ; $46f0: $7f
    cp e                                          ; $46f1: $bb
    call nz, $c4b0                                ; $46f2: $c4 $b0 $c4
    ld [hl], h                                    ; $46f5: $74
    nop                                           ; $46f6: $00
    ld d, l                                       ; $46f7: $55
    ld l, h                                       ; $46f8: $6c
    ld e, c                                       ; $46f9: $59
    ld h, h                                       ; $46fa: $64
    jr @+$29                                      ; $46fb: $18 $27

    ld e, a                                       ; $46fd: $5f
    ld h, b                                       ; $46fe: $60
    nop                                           ; $46ff: $00
    rst $38                                       ; $4700: $ff
    nop                                           ; $4701: $00
    rst $00                                       ; $4702: $c7
    ld [$1800], sp                                ; $4703: $08 $00 $18
    ldh a, [$ec]                                  ; $4706: $f0 $ec
    nop                                           ; $4708: $00
    ld d, h                                       ; $4709: $54
    ld l, e                                       ; $470a: $6b
    dec d                                         ; $470b: $15
    add hl, hl                                    ; $470c: $29
    and $1a                                       ; $470d: $e6 $1a
    ld bc, $00fa                                  ; $470f: $01 $fa $00
    ld l, h                                       ; $4712: $6c
    ld c, d                                       ; $4713: $4a
    db $ec                                        ; $4714: $ec
    jp z, $17ea                                   ; $4715: $ca $ea $17

    ld b, d                                       ; $4718: $42
    cp e                                          ; $4719: $bb
    jr nz, @+$2d                                  ; $471a: $20 $2b

    ld sp, hl                                     ; $471c: $f9
    ld [bc], a                                    ; $471d: $02
    jr jr_0d0_46e5                                ; $471e: $18 $c5

    ld c, e                                       ; $4720: $4b
    adc $57                                       ; $4721: $ce $57
    rlc b                                         ; $4723: $cb $00
    ld d, [hl]                                    ; $4725: $56
    bit 3, h                                      ; $4726: $cb $5c
    push bc                                       ; $4728: $c5
    ld c, [hl]                                    ; $4729: $4e
    pop bc                                        ; $472a: $c1
    ld b, [hl]                                    ; $472b: $46
    ret nz                                        ; $472c: $c0

    nop                                           ; $472d: $00
    ld a, [hl]                                    ; $472e: $7e
    ret nz                                        ; $472f: $c0

    ld a, b                                       ; $4730: $78
    sbc a                                         ; $4731: $9f
    ldh [$3f], a                                  ; $4732: $e0 $3f
    ld b, b                                       ; $4734: $40
    ld b, b                                       ; $4735: $40
    nop                                           ; $4736: $00
    ccf                                           ; $4737: $3f
    ld b, b                                       ; $4738: $40
    ccf                                           ; $4739: $3f
    pop bc                                        ; $473a: $c1
    cp a                                          ; $473b: $bf
    ld h, c                                       ; $473c: $61
    ld e, [hl]                                    ; $473d: $5e
    ld [hl], b                                    ; $473e: $70
    nop                                           ; $473f: $00
    cpl                                           ; $4740: $2f
    ld hl, sp+$17                                 ; $4741: $f8 $17
    inc b                                         ; $4743: $04
    ld sp, hl                                     ; $4744: $f9
    ld [$00f3], sp                                ; $4745: $08 $f3 $00
    add b                                         ; $4748: $80
    ld bc, $8100                                  ; $4749: $01 $00 $81
    ld a, [hl]                                    ; $474c: $7e
    ld [bc], a                                    ; $474d: $02
    inc b                                         ; $474e: $04
    adc h                                         ; $474f: $8c
    ld [hl], c                                    ; $4750: $71
    sbc h                                         ; $4751: $9c
    nop                                           ; $4752: $00
    adc b                                         ; $4753: $88
    dec sp                                        ; $4754: $3b
    ld sp, hl                                     ; $4755: $f9
    dec sp                                        ; $4756: $3b
    pop af                                        ; $4757: $f1
    or b                                          ; $4758: $b0
    and d                                         ; $4759: $a2
    ld e, b                                       ; $475a: $58
    nop                                           ; $475b: $00
    ld d, d                                       ; $475c: $52
    ld b, d                                       ; $475d: $42

jr_0d0_475e:
    ld a, [hl+]                                   ; $475e: $2a
    jp nz, $a22a                                  ; $475f: $c2 $2a $a2

    ld e, e                                       ; $4762: $5b
    ld [bc], a                                    ; $4763: $02
    nop                                           ; $4764: $00
    db $e3                                        ; $4765: $e3
    add $70                                       ; $4766: $c6 $70
    call z, $8e60                                 ; $4768: $cc $60 $8e
    jp nz, Jump_000_00b7                          ; $476b: $c2 $b7 $00

    pop af                                        ; $476e: $f1
    cp e                                          ; $476f: $bb
    ret z                                         ; $4770: $c8

    cp l                                          ; $4771: $bd
    call nz, Call_0d0_7f80                        ; $4772: $c4 $80 $7f
    rst $38                                       ; $4775: $ff
    nop                                           ; $4776: $00
    nop                                           ; $4777: $00
    or $01                                        ; $4778: $f6 $01
    pop hl                                        ; $477a: $e1
    jr jr_0d0_475e                                ; $477b: $18 $e1

    rra                                           ; $477d: $1f
    ld h, b                                       ; $477e: $60
    ld [bc], a                                    ; $477f: $02

jr_0d0_4780:
    rra                                           ; $4780: $1f
    ccf                                           ; $4781: $3f
    sbc a                                         ; $4782: $9f
    rra                                           ; $4783: $1f
    rst $08                                       ; $4784: $cf
    rst $38                                       ; $4785: $ff
    add hl, sp                                    ; $4786: $39
    nop                                           ; $4787: $00
    ld hl, sp+$00                                 ; $4788: $f8 $00
    di                                            ; $478a: $f3
    ldh [$61], a                                  ; $478b: $e0 $61
    jr jr_0d0_4780                                ; $478d: $18 $f1

    ld hl, sp-$0f                                 ; $478f: $f8 $f1
    ld [$f010], sp                                ; $4791: $08 $10 $f0
    add hl, de                                    ; $4794: $19
    pop hl                                        ; $4795: $e1
    db $10                                        ; $4796: $10
    ld [$8302], sp                                ; $4797: $08 $02 $83
    add d                                         ; $479a: $82
    ld b, e                                       ; $479b: $43
    nop                                           ; $479c: $00
    pop hl                                        ; $479d: $e1
    inc hl                                        ; $479e: $23
    pop af                                        ; $479f: $f1
    inc de                                        ; $47a0: $13
    ld sp, hl                                     ; $47a1: $f9
    dec bc                                        ; $47a2: $0b
    db $fd                                        ; $47a3: $fd
    add a                                         ; $47a4: $87
    nop                                           ; $47a5: $00
    nop                                           ; $47a6: $00
    cp $fe                                        ; $47a7: $fe $fe
    nop                                           ; $47a9: $00
    nop                                           ; $47aa: $00
    ld bc, $00f5                                  ; $47ab: $01 $f5 $00
    nop                                           ; $47ae: $00
    rst $38                                       ; $47af: $ff
    ld a, a                                       ; $47b0: $7f
    ret nz                                        ; $47b1: $c0

    ld b, b                                       ; $47b2: $40
    cp a                                          ; $47b3: $bf
    ret nz                                        ; $47b4: $c0

    cp [hl]                                       ; $47b5: $be
    ret nz                                        ; $47b6: $c0

    nop                                           ; $47b7: $00
    ld a, h                                       ; $47b8: $7c
    pop bc                                        ; $47b9: $c1
    ld a, b                                       ; $47ba: $78
    jp Jump_0d0_4ac5                              ; $47bb: $c3 $c5 $4a


    jp $004c                                      ; $47be: $c3 $4c $00


    nop                                           ; $47c1: $00
    rst $38                                       ; $47c2: $ff
    ccf                                           ; $47c3: $3f
    jr nz, jr_0d0_47e4                            ; $47c4: $20 $1e

    ld sp, $eb35                                  ; $47c6: $31 $35 $eb
    nop                                           ; $47c9: $00
    ld c, [hl]                                    ; $47ca: $4e
    ld a, [c]                                     ; $47cb: $f2
    sub l                                         ; $47cc: $95
    db $ed                                        ; $47cd: $ed
    ld a, [hl+]                                   ; $47ce: $2a
    db $d3                                        ; $47cf: $d3
    ld d, l                                       ; $47d0: $55
    and [hl]                                      ; $47d1: $a6
    nop                                           ; $47d2: $00
    rst $38                                       ; $47d3: $ff
    rst $38                                       ; $47d4: $ff
    ld d, $e1                                     ; $47d5: $16 $e1
    ld a, c                                       ; $47d7: $79
    ld a, [c]                                     ; $47d8: $f2
    adc a                                         ; $47d9: $8f
    ld hl, sp+$00                                 ; $47da: $f8 $00
    adc a                                         ; $47dc: $8f
    ld [hl], l                                    ; $47dd: $75
    ld [hl], e                                    ; $47de: $73
    adc d                                         ; $47df: $8a

jr_0d0_47e0:
    adc e                                         ; $47e0: $8b
    ld [hl], d                                    ; $47e1: $72
    ld h, b                                       ; $47e2: $60
    di                                            ; $47e3: $f3

jr_0d0_47e4:
    nop                                           ; $47e4: $00
    cp $ff                                        ; $47e5: $fe $ff

Call_0d0_47e7:
    ld [c], a                                     ; $47e7: $e2
    inc bc                                        ; $47e8: $03
    ld [hl], c                                    ; $47e9: $71
    add e                                         ; $47ea: $83
    ld sp, hl                                     ; $47eb: $f9
    inc bc                                        ; $47ec: $03
    nop                                           ; $47ed: $00
    ld e, $c2                                     ; $47ee: $1e $c2
    adc $22                                       ; $47f0: $ce $22
    ld c, d                                       ; $47f2: $4a
    and [hl]                                      ; $47f3: $a6
    ld h, $4a                                     ; $47f4: $26 $4a
    nop                                           ; $47f6: $00
    rst $00                                       ; $47f7: $c7
    ld b, b                                       ; $47f8: $40
    rst $00                                       ; $47f9: $c7
    ld c, b                                       ; $47fa: $48
    call c, $dd13                                 ; $47fb: $dc $13 $dd
    ld a, [de]                                    ; $47fe: $1a
    nop                                           ; $47ff: $00
    add $33                                       ; $4800: $c6 $33
    jp nz, $c332                                  ; $4802: $c2 $32 $c3

    dec sp                                        ; $4805: $3b
    jp $0033                                      ; $4806: $c3 $33 $00


    xor h                                         ; $4809: $ac
    ld c, d                                       ; $480a: $4a
    adc h                                         ; $480b: $8c
    ld c, b                                       ; $480c: $48
    xor b                                         ; $480d: $a8
    ld d, b                                       ; $480e: $50
    ld l, c                                       ; $480f: $69

Call_0d0_4810:
    sub c                                         ; $4810: $91
    nop                                           ; $4811: $00
    ld b, c                                       ; $4812: $41
    ld h, [hl]                                    ; $4813: $66
    ld c, c                                       ; $4814: $49
    ld h, [hl]                                    ; $4815: $66
    jr jr_0d0_483f                                ; $4816: $18 $27

    ld e, a                                       ; $4818: $5f
    ld h, b                                       ; $4819: $60
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    nop                                           ; $481c: $00
    rlca                                          ; $481d: $07
    jr jr_0d0_47e0                                ; $481e: $18 $c0

    rrca                                          ; $4820: $0f
    ldh a, [$c8]                                  ; $4821: $f0 $c8
    nop                                           ; $4823: $00
    ld d, h                                       ; $4824: $54
    ld l, e                                       ; $4825: $6b
    dec d                                         ; $4826: $15
    add hl, hl                                    ; $4827: $29
    and $1a                                       ; $4828: $e6 $1a
    ld bc, $00fa                                  ; $482a: $01 $fa $00
    or h                                          ; $482d: $b4
    jp c, $d2bc                                   ; $482e: $da $bc $d2

    ld l, d                                       ; $4831: $6a
    sub a                                         ; $4832: $97
    ld b, d                                       ; $4833: $42
    cp e                                          ; $4834: $bb
    db $10                                        ; $4835: $10
    xor e                                         ; $4836: $ab
    ld sp, hl                                     ; $4837: $f9
    dec hl                                        ; $4838: $2b
    ld [bc], a                                    ; $4839: $02
    db $10                                        ; $483a: $10
    cp [hl]                                       ; $483b: $be
    ld a, e                                       ; $483c: $7b
    cp c                                          ; $483d: $b9
    ld d, a                                       ; $483e: $57

jr_0d0_483f:
    nop                                           ; $483f: $00
    adc l                                         ; $4840: $8d
    halt                                          ; $4841: $76
    or a                                          ; $4842: $b7
    ld a, h                                       ; $4843: $7c
    push bc                                       ; $4844: $c5
    ld c, [hl]                                    ; $4845: $4e
    pop bc                                        ; $4846: $c1
    ld b, [hl]                                    ; $4847: $46
    nop                                           ; $4848: $00
    ret nz                                        ; $4849: $c0

    ld a, [hl]                                    ; $484a: $7e
    ret nz                                        ; $484b: $c0

    ld a, b                                       ; $484c: $78
    sbc a                                         ; $484d: $9f
    ldh [$3f], a                                  ; $484e: $e0 $3f
    ld b, b                                       ; $4850: $40
    nop                                           ; $4851: $00
    ld b, b                                       ; $4852: $40
    ccf                                           ; $4853: $3f
    ld b, b                                       ; $4854: $40
    ccf                                           ; $4855: $3f
    pop bc                                        ; $4856: $c1
    cp a                                          ; $4857: $bf
    ld h, c                                       ; $4858: $61
    ld e, [hl]                                    ; $4859: $5e
    nop                                           ; $485a: $00
    ld [hl], b                                    ; $485b: $70
    cpl                                           ; $485c: $2f
    ld hl, sp+$17                                 ; $485d: $f8 $17
    inc b                                         ; $485f: $04
    ld sp, hl                                     ; $4860: $f9
    ld [$40f3], sp                                ; $4861: $08 $f3 $40
    nop                                           ; $4864: $00
    ld bc, $8100                                  ; $4865: $01 $00 $81
    ld a, [hl]                                    ; $4868: $7e
    ld [bc], a                                    ; $4869: $02
    inc b                                         ; $486a: $04
    pop af                                        ; $486b: $f1
    dec c                                         ; $486c: $0d
    nop                                           ; $486d: $00
    inc b                                         ; $486e: $04
    ld hl, sp-$3e                                 ; $486f: $f8 $c2
    ld sp, hl                                     ; $4871: $f9
    jp nz, $b2f1                                  ; $4872: $c2 $f1 $b2

    ld c, e                                       ; $4875: $4b
    nop                                           ; $4876: $00
    ld d, d                                       ; $4877: $52
    xor e                                         ; $4878: $ab
    ld h, d                                       ; $4879: $62

jr_0d0_487a:
    cp e                                          ; $487a: $bb
    ld [c], a                                     ; $487b: $e2
    inc sp                                        ; $487c: $33
    ld [c], a                                     ; $487d: $e2
    pop hl                                        ; $487e: $e1
    nop                                           ; $487f: $00
    ld [bc], a                                    ; $4880: $02
    ld bc, $70c6                                  ; $4881: $01 $c6 $70
    call z, $8e60                                 ; $4884: $cc $60 $8e
    jp nz, $b700                                  ; $4887: $c2 $00 $b7

    pop af                                        ; $488a: $f1
    cp e                                          ; $488b: $bb
    ret z                                         ; $488c: $c8

    cp l                                          ; $488d: $bd
    call nz, Call_0d0_7f80                        ; $488e: $c4 $80 $7f
    nop                                           ; $4891: $00
    rst $38                                       ; $4892: $ff
    nop                                           ; $4893: $00
    or $01                                        ; $4894: $f6 $01
    pop hl                                        ; $4896: $e1
    jr jr_0d0_487a                                ; $4897: $18 $e1

    rra                                           ; $4899: $1f
    ld bc, $1f60                                  ; $489a: $01 $60 $1f
    ccf                                           ; $489d: $3f
    sbc a                                         ; $489e: $9f
    rra                                           ; $489f: $1f
    rst $08                                       ; $48a0: $cf
    rst $38                                       ; $48a1: $ff
    add hl, sp                                    ; $48a2: $39
    nop                                           ; $48a3: $00
    nop                                           ; $48a4: $00
    ld hl, sp-$0d                                 ; $48a5: $f8 $f3
    ldh [$61], a                                  ; $48a7: $e0 $61
    jr @-$0d                                      ; $48a9: $18 $f1

    ld hl, sp-$0f                                 ; $48ab: $f8 $f1
    ld [$f008], sp                                ; $48ad: $08 $08 $f0
    add hl, de                                    ; $48b0: $19
    pop hl                                        ; $48b1: $e1
    db $10                                        ; $48b2: $10
    ld [$8302], sp                                ; $48b3: $08 $02 $83
    add d                                         ; $48b6: $82
    nop                                           ; $48b7: $00
    ld b, e                                       ; $48b8: $43
    pop hl                                        ; $48b9: $e1
    inc hl                                        ; $48ba: $23
    pop af                                        ; $48bb: $f1
    inc de                                        ; $48bc: $13
    ld sp, hl                                     ; $48bd: $f9
    dec bc                                        ; $48be: $0b
    db $fd                                        ; $48bf: $fd
    nop                                           ; $48c0: $00
    add a                                         ; $48c1: $87
    nop                                           ; $48c2: $00
    cp $fe                                        ; $48c3: $fe $fe
    nop                                           ; $48c5: $00
    nop                                           ; $48c6: $00
    ld bc, $00f4                                  ; $48c7: $01 $f4 $00
    nop                                           ; $48ca: $00
    add b                                         ; $48cb: $80
    ld a, a                                       ; $48cc: $7f
    cp a                                          ; $48cd: $bf
    ld b, e                                       ; $48ce: $43
    ld hl, sp+$41                                 ; $48cf: $f8 $41
    ld hl, sp+$43                                 ; $48d1: $f8 $43
    nop                                           ; $48d3: $00
    rrca                                          ; $48d4: $0f
    db $fc                                        ; $48d5: $fc
    ld c, $fe                                     ; $48d6: $0e $fe
    cp h                                          ; $48d8: $bc
    ld c, h                                       ; $48d9: $4c
    or c                                          ; $48da: $b1
    ld d, c                                       ; $48db: $51
    nop                                           ; $48dc: $00
    rst $38                                       ; $48dd: $ff
    nop                                           ; $48de: $00
    inc b                                         ; $48df: $04
    sbc l                                         ; $48e0: $9d
    ld l, a                                       ; $48e1: $6f
    add d                                         ; $48e2: $82
    inc hl                                        ; $48e3: $23
    db $ec                                        ; $48e4: $ec
    nop                                           ; $48e5: $00
    db $fc                                        ; $48e6: $fc
    and d                                         ; $48e7: $a2
    ld [hl], h                                    ; $48e8: $74
    ld d, d                                       ; $48e9: $52
    ld a, [c]                                     ; $48ea: $f2
    ld d, h                                       ; $48eb: $54
    sub h                                         ; $48ec: $94
    ld sp, $ff00                                  ; $48ed: $31 $00 $ff
    nop                                           ; $48f0: $00
    ld [hl], d                                    ; $48f1: $72
    cp $86                                        ; $48f2: $fe $86
    jp hl                                         ; $48f4: $e9


    ld d, e                                       ; $48f5: $53
    and b                                         ; $48f6: $a0
    nop                                           ; $48f7: $00
    xor e                                         ; $48f8: $ab
    ret c                                         ; $48f9: $d8

    db $d3                                        ; $48fa: $d3
    ld [hl+], a                                   ; $48fb: $22
    ld [hl], d                                    ; $48fc: $72
    jp nc, $a282                                  ; $48fd: $d2 $82 $a2

    nop                                           ; $4900: $00
    nop                                           ; $4901: $00
    cp $7c                                        ; $4902: $fe $7c
    ld b, d                                       ; $4904: $42
    ldh [$fe], a                                  ; $4905: $e0 $fe
    ldh [$3e], a                                  ; $4907: $e0 $3e
    nop                                           ; $4909: $00
    ld e, $d0                                     ; $490a: $1e $d0
    adc [hl]                                      ; $490c: $8e
    xor b                                         ; $490d: $a8
    and h                                         ; $490e: $a4
    ld b, $04                                     ; $490f: $06 $04
    ld b, $00                                     ; $4911: $06 $00
    ldh [rLCDC], a                                ; $4913: $e0 $40
    ldh [rHDMA1], a                               ; $4915: $e0 $51
    ld [c], a                                     ; $4917: $e2
    inc bc                                        ; $4918: $03
    or $06                                        ; $4919: $f6 $06
    nop                                           ; $491b: $00
    ld a, [c]                                     ; $491c: $f2
    ld b, h                                       ; $491d: $44
    ldh a, [rLY]                                  ; $491e: $f0 $44
    db $f4                                        ; $4920: $f4
    ld b, d                                       ; $4921: $42
    push af                                       ; $4922: $f5
    ld b, d                                       ; $4923: $42
    nop                                           ; $4924: $00
    ld b, e                                       ; $4925: $43
    ld hl, $4362                                  ; $4926: $21 $62 $43
    ldh [$67], a                                  ; $4929: $e0 $67
    ld b, c                                       ; $492b: $41
    ld c, [hl]                                    ; $492c: $4e
    nop                                           ; $492d: $00
    inc a                                         ; $492e: $3c
    jr jr_0d0_496a                                ; $492f: $18 $39

    ld a, c                                       ; $4931: $79
    ld b, l                                       ; $4932: $45
    add hl, sp                                    ; $4933: $39
    add h                                         ; $4934: $84
    ld a, b                                       ; $4935: $78
    nop                                           ; $4936: $00
    adc h                                         ; $4937: $8c
    add h                                         ; $4938: $84
    ld h, h                                       ; $4939: $64
    jr jr_0d0_493c                                ; $493a: $18 $00

jr_0d0_493c:
    cp $c3                                        ; $493c: $fe $c3
    ret c                                         ; $493e: $d8

    nop                                           ; $493f: $00
    ld [$5a34], sp                                ; $4940: $08 $34 $5a
    ld l, [hl]                                    ; $4943: $6e
    ld h, $7c                                     ; $4944: $26 $7c
    rst $20                                       ; $4946: $e7
    db $db                                        ; $4947: $db
    nop                                           ; $4948: $00
    ld l, h                                       ; $4949: $6c
    ld l, d                                       ; $494a: $6a
    inc l                                         ; $494b: $2c
    ld a, [hl+]                                   ; $494c: $2a
    ld l, $28                                     ; $494d: $2e $28
    ld e, $90                                     ; $494f: $1e $90
    nop                                           ; $4951: $00
    cp h                                          ; $4952: $bc
    and d                                         ; $4953: $a2
    inc a                                         ; $4954: $3c
    ld [bc], a                                    ; $4955: $02
    ld a, $82                                     ; $4956: $3e $82
    ld a, $02                                     ; $4958: $3e $02
    nop                                           ; $495a: $00
    db $fc                                        ; $495b: $fc
    rrca                                          ; $495c: $0f
    ld a, [$bd03]                                 ; $495d: $fa $03 $bd
    ld b, l                                       ; $4960: $45
    cp [hl]                                       ; $4961: $be
    ld b, d                                       ; $4962: $42
    nop                                           ; $4963: $00
    cp a                                          ; $4964: $bf
    ld b, c                                       ; $4965: $41
    cp [hl]                                       ; $4966: $be
    ld b, b                                       ; $4967: $40
    cp h                                          ; $4968: $bc
    db $fc                                        ; $4969: $fc

jr_0d0_496a:
    cp l                                          ; $496a: $bd
    db $fc                                        ; $496b: $fc
    nop                                           ; $496c: $00
    ld h, e                                       ; $496d: $63
    ccf                                           ; $496e: $3f
    ld h, b                                       ; $496f: $60
    ccf                                           ; $4970: $3f
    ldh [$9f], a                                  ; $4971: $e0 $9f
    ld [hl], c                                    ; $4973: $71
    ld c, $00                                     ; $4974: $0e $00
    ld a, a                                       ; $4976: $7f
    ccf                                           ; $4977: $3f
    ccf                                           ; $4978: $3f
    ld e, a                                       ; $4979: $5f
    rra                                           ; $497a: $1f
    cp a                                          ; $497b: $bf
    rst $08                                       ; $497c: $cf
    rrca                                          ; $497d: $0f
    nop                                           ; $497e: $00
    db $fd                                        ; $497f: $fd
    inc b                                         ; $4980: $04
    pop hl                                        ; $4981: $e1
    ld [hl], $18                                  ; $4982: $36 $18

Jump_0d0_4984:
    db $eb                                        ; $4984: $eb
    nop                                           ; $4985: $00
    rst $38                                       ; $4986: $ff
    nop                                           ; $4987: $00
    jr c, @-$43                                   ; $4988: $38 $bb

    cp $45                                        ; $498a: $fe $45
    db $fc                                        ; $498c: $fc
    ld [bc], a                                    ; $498d: $02
    push af                                       ; $498e: $f5
    add hl, bc                                    ; $498f: $09
    ld h, h                                       ; $4990: $64
    add d                                         ; $4991: $82
    dec [hl]                                      ; $4992: $35
    nop                                           ; $4993: $00
    jr c, jr_0d0_4996                             ; $4994: $38 $00

jr_0d0_4996:
    add d                                         ; $4996: $82
    db $fc                                        ; $4997: $fc
    ld [bc], a                                    ; $4998: $02
    ld [$fcfe], sp                                ; $4999: $08 $fe $fc
    nop                                           ; $499c: $00
    ld [bc], a                                    ; $499d: $02
    ld hl, sp+$41                                 ; $499e: $f8 $41
    ld a, [$f241]                                 ; $49a0: $fa $41 $f2
    ld b, c                                       ; $49a3: $41
    ret nz                                        ; $49a4: $c0

    nop                                           ; $49a5: $00
    ld b, c                                       ; $49a6: $41
    pop bc                                        ; $49a7: $c1
    ld a, h                                       ; $49a8: $7c
    ret nz                                        ; $49a9: $c0

    ld a, [hl]                                    ; $49aa: $7e
    add b                                         ; $49ab: $80
    ld a, a                                       ; $49ac: $7f
    rst $38                                       ; $49ad: $ff
    nop                                           ; $49ae: $00
    nop                                           ; $49af: $00
    sub a                                         ; $49b0: $97
    ld [hl], h                                    ; $49b1: $74
    call nz, Call_000_1e3c                        ; $49b2: $c4 $3c $1e
    cpl                                           ; $49b5: $2f
    rra                                           ; $49b6: $1f
    ld bc, $e727                                  ; $49b7: $01 $27 $e7
    rra                                           ; $49ba: $1f
    ld [hl], b                                    ; $49bb: $70
    rrca                                          ; $49bc: $0f
    rst $38                                       ; $49bd: $ff
    nop                                           ; $49be: $00
    ld bc, $0000                                  ; $49bf: $01 $00 $00
    ldh a, [$0e]                                  ; $49c2: $f0 $0e
    ld b, $9f                                     ; $49c4: $06 $9f
    pop af                                        ; $49c6: $f1
    rst $08                                       ; $49c7: $cf
    add hl, bc                                    ; $49c8: $09
    and l                                         ; $49c9: $a5
    db $10                                        ; $49ca: $10
    inc hl                                        ; $49cb: $23
    ld [hl], h                                    ; $49cc: $74
    ld [hl], d                                    ; $49cd: $72
    db $10                                        ; $49ce: $10
    ld [$fefc], sp                                ; $49cf: $08 $fc $fe
    ld a, h                                       ; $49d2: $7c
    ld [bc], a                                    ; $49d3: $02
    nop                                           ; $49d4: $00
    db $fd                                        ; $49d5: $fd
    add e                                         ; $49d6: $83
    ld a, l                                       ; $49d7: $7d
    ld [hl], e                                    ; $49d8: $73
    ld h, d                                       ; $49d9: $62
    ld [hl], b                                    ; $49da: $70
    ld a, [bc]                                    ; $49db: $0a
    db $fc                                        ; $49dc: $fc
    nop                                           ; $49dd: $00
    nop                                           ; $49de: $00
    cp $fe                                        ; $49df: $fe $fe
    nop                                           ; $49e1: $00
    nop                                           ; $49e2: $00
    ld bc, $00ee                                  ; $49e3: $01 $ee $00
    nop                                           ; $49e6: $00
    ld a, a                                       ; $49e7: $7f
    rst $38                                       ; $49e8: $ff
    ld a, [hl]                                    ; $49e9: $7e
    ret nz                                        ; $49ea: $c0

    pop bc                                        ; $49eb: $c1
    dec a                                         ; $49ec: $3d
    pop bc                                        ; $49ed: $c1
    add hl, sp                                    ; $49ee: $39
    nop                                           ; $49ef: $00
    inc a                                         ; $49f0: $3c

Jump_0d0_49f1:
    call nz, $c43d                                ; $49f1: $c4 $3d $c4
    jp $c633                                      ; $49f4: $c3 $33 $c6


    scf                                           ; $49f7: $37
    nop                                           ; $49f8: $00
    rst $38                                       ; $49f9: $ff
    nop                                           ; $49fa: $00
    add b                                         ; $49fb: $80
    ldh [$80], a                                  ; $49fc: $e0 $80
    rst $38                                       ; $49fe: $ff
    add b                                         ; $49ff: $80
    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    ld b, c                                       ; $4a02: $41
    ld a, $3e                                     ; $4a03: $3e $3e
    reti                                          ; $4a05: $d9


    ld b, e                                       ; $4a06: $43
    jp nz, Jump_000_3e42                          ; $4a07: $c2 $42 $3e

    nop                                           ; $4a0a: $00
    rst $38                                       ; $4a0b: $ff
    nop                                           ; $4a0c: $00
    jr nc, @+$41                                  ; $4a0d: $30 $3f

    rst $00                                       ; $4a0f: $c7
    ld hl, sp+$3b                                 ; $4a10: $f8 $3b
    ld a, [hl]                                    ; $4a12: $7e
    nop                                           ; $4a13: $00
    sbc a                                         ; $4a14: $9f
    sub b                                         ; $4a15: $90
    rra                                           ; $4a16: $1f
    ret c                                         ; $4a17: $d8

    xor a                                         ; $4a18: $af
    ld c, b                                       ; $4a19: $48
    rst $08                                       ; $4a1a: $cf
    inc l                                         ; $4a1b: $2c
    nop                                           ; $4a1c: $00
    cp $00                                        ; $4a1d: $fe $00
    add d                                         ; $4a1f: $82
    db $fc                                        ; $4a20: $fc
    cp h                                          ; $4a21: $bc
    add d                                         ; $4a22: $82
    call c, $00c2                                 ; $4a23: $dc $c2 $00
    db $ec                                        ; $4a26: $ec
    ld [c], a                                     ; $4a27: $e2
    adc h                                         ; $4a28: $8c
    add d                                         ; $4a29: $82
    cp h                                          ; $4a2a: $bc
    or d                                          ; $4a2b: $b2
    xor h                                         ; $4a2c: $ac
    and d                                         ; $4a2d: $a2
    nop                                           ; $4a2e: $00
    db $e4                                        ; $4a2f: $e4
    ld h, $c9                                     ; $4a30: $26 $c9
    dec c                                         ; $4a32: $0d
    dec de                                        ; $4a33: $1b
    ret                                           ; $4a34: $c9


    ld c, $c0                                     ; $4a35: $0e $c0
    ld b, b                                       ; $4a37: $40
    ld e, h                                       ; $4a38: $5c
    ld [bc], a                                    ; $4a39: $02
    nop                                           ; $4a3a: $00
    ld e, b                                       ; $4a3b: $58
    ret nz                                        ; $4a3c: $c0

    ld a, b                                       ; $4a3d: $78
    ret nz                                        ; $4a3e: $c0

    inc a                                         ; $4a3f: $3c
    jp $8200                                      ; $4a40: $c3 $00 $82


    inc bc                                        ; $4a43: $03
    ld a, h                                       ; $4a44: $7c
    ld b, c                                       ; $4a45: $41
    cp $f0                                        ; $4a46: $fe $f0
    inc a                                         ; $4a48: $3c
    inc c                                         ; $4a49: $0c
    nop                                           ; $4a4a: $00
    add d                                         ; $4a4b: $82
    cp [hl]                                       ; $4a4c: $be
    ld d, $d1                                     ; $4a4d: $16 $d1
    halt                                          ; $4a4f: $76
    add c                                         ; $4a50: $81
    rst $30                                       ; $4a51: $f7
    add [hl]                                      ; $4a52: $86
    nop                                           ; $4a53: $00
    db $e3                                        ; $4a54: $e3
    jp nc, Jump_0d0_49f1                          ; $4a55: $d2 $f1 $49

    ld hl, sp+$14                                 ; $4a58: $f8 $14
    ld c, [hl]                                    ; $4a5a: $4e
    ld [hl+], a                                   ; $4a5b: $22
    nop                                           ; $4a5c: $00
    ld d, a                                       ; $4a5d: $57
    ld hl, $3167                                  ; $4a5e: $21 $67 $31
    inc hl                                        ; $4a61: $23
    ld a, [hl-]                                   ; $4a62: $3a
    ld b, $84                                     ; $4a63: $06 $84
    nop                                           ; $4a65: $00
    ld [bc], a                                    ; $4a66: $02
    or b                                          ; $4a67: $b0
    jr c, jr_0d0_4a9c                             ; $4a68: $38 $32

    cp h                                          ; $4a6a: $bc
    or d                                          ; $4a6b: $b2
    ld b, $3c                                     ; $4a6c: $06 $3c
    nop                                           ; $4a6e: $00
    ld [bc], a                                    ; $4a6f: $02
    inc a                                         ; $4a70: $3c
    sbc h                                         ; $4a71: $9c
    ld [bc], a                                    ; $4a72: $02
    sbc h                                         ; $4a73: $9c
    add [hl]                                      ; $4a74: $86
    ld [hl], b                                    ; $4a75: $70
    ret nz                                        ; $4a76: $c0

    add b                                         ; $4a77: $80
    ld [bc], a                                    ; $4a78: $02
    jr c, jr_0d0_4ab3                             ; $4a79: $38 $38

    ldh [$38], a                                  ; $4a7b: $e0 $38
    ldh [$ef], a                                  ; $4a7d: $e0 $ef
    ld [hl], c                                    ; $4a7f: $71
    ld h, c                                       ; $4a80: $61
    nop                                           ; $4a81: $00
    ld a, e                                       ; $4a82: $7b
    ccf                                           ; $4a83: $3f
    ld b, b                                       ; $4a84: $40
    ccf                                           ; $4a85: $3f
    nop                                           ; $4a86: $00
    ld d, $27                                     ; $4a87: $16 $27
    inc c                                         ; $4a89: $0c
    nop                                           ; $4a8a: $00
    inc sp                                        ; $4a8b: $33
    jr nz, jr_0d0_4acd                            ; $4a8c: $20 $3f

    rra                                           ; $4a8e: $1f
    add hl, de                                    ; $4a8f: $19
    dec de                                        ; $4a90: $1b
    adc b                                         ; $4a91: $88
    dec e                                         ; $4a92: $1d
    nop                                           ; $4a93: $00
    call nz, $cbc4                                ; $4a94: $c4 $c4 $cb
    db $e4                                        ; $4a97: $e4
    db $eb                                        ; $4a98: $eb
    rlca                                          ; $4a99: $07
    and $03                                       ; $4a9a: $e6 $03

jr_0d0_4a9c:
    ld b, b                                       ; $4a9c: $40
    ld [c], a                                     ; $4a9d: $e2
    ld [bc], a                                    ; $4a9e: $02
    nop                                           ; $4a9f: $00
    ret nz                                        ; $4aa0: $c0

    call c, $d882                                 ; $4aa1: $dc $82 $d8
    ld b, d                                       ; $4aa4: $42
    ret z                                         ; $4aa5: $c8

    nop                                           ; $4aa6: $00
    ld c, d                                       ; $4aa7: $4a
    call z, $cc4a                                 ; $4aa8: $cc $4a $cc
    ld b, d                                       ; $4aab: $42
    call z, $4a42                                 ; $4aac: $cc $42 $4a
    nop                                           ; $4aaf: $00
    call c, $d88a                                 ; $4ab0: $dc $8a $d8

jr_0d0_4ab3:
    ldh [$28], a                                  ; $4ab3: $e0 $28
    ldh [$3c], a                                  ; $4ab5: $e0 $3c
    jp nz, Jump_000_3600                          ; $4ab7: $c2 $00 $36

    push bc                                       ; $4aba: $c5
    scf                                           ; $4abb: $37
    ret nc                                        ; $4abc: $d0

    dec sp                                        ; $4abd: $3b
    call z, $801f                                 ; $4abe: $cc $1f $80
    nop                                           ; $4ac1: $00
    ld a, a                                       ; $4ac2: $7f
    rst $38                                       ; $4ac3: $ff
    nop                                           ; $4ac4: $00

Jump_0d0_4ac5:
    ld a, [bc]                                    ; $4ac5: $0a
    inc bc                                        ; $4ac6: $03
    nop                                           ; $4ac7: $00
    nop                                           ; $4ac8: $00
    ld bc, $0380                                  ; $4ac9: $01 $80 $03
    nop                                           ; $4acc: $00

jr_0d0_4acd:
    ld bc, $8001                                  ; $4acd: $01 $01 $80
    ld b, c                                       ; $4ad0: $41
    rst $38                                       ; $4ad1: $ff
    nop                                           ; $4ad2: $00
    nop                                           ; $4ad3: $00
    nop                                           ; $4ad4: $00
    nop                                           ; $4ad5: $00
    inc bc                                        ; $4ad6: $03
    jr nz, @-$77                                  ; $4ad7: $20 $87

    ldh [rTAC], a                                 ; $4ad9: $e0 $07
    rst $00                                       ; $4adb: $c7
    rrca                                          ; $4adc: $0f
    inc b                                         ; $4add: $04
    add [hl]                                      ; $4ade: $86
    ld c, $4f                                     ; $4adf: $0e $4f
    inc e                                         ; $4ae1: $1c
    sbc d                                         ; $4ae2: $9a
    db $10                                        ; $4ae3: $10
    ld [$989a], sp                                ; $4ae4: $08 $9a $98
    nop                                           ; $4ae7: $00
    add d                                         ; $4ae8: $82
    sbc h                                         ; $4ae9: $9c
    ld b, $bc                                     ; $4aea: $06 $bc
    ld c, [hl]                                    ; $4aec: $4e
    ld a, h                                       ; $4aed: $7c
    ld h, d                                       ; $4aee: $62
    ld h, h                                       ; $4aef: $64
    nop                                           ; $4af0: $00
    ld h, d                                       ; $4af1: $62
    ld l, h                                       ; $4af2: $6c
    nop                                           ; $4af3: $00
    cp $fe                                        ; $4af4: $fe $fe
    nop                                           ; $4af6: $00
    nop                                           ; $4af7: $00
    ld bc, $00f0                                  ; $4af8: $01 $f0 $00
    nop                                           ; $4afb: $00
    ld a, a                                       ; $4afc: $7f
    rst $38                                       ; $4afd: $ff
    ld a, l                                       ; $4afe: $7d
    pop bc                                        ; $4aff: $c1
    dec a                                         ; $4b00: $3d
    pop bc                                        ; $4b01: $c1
    dec sp                                        ; $4b02: $3b
    jp $c500                                      ; $4b03: $c3 $00 $c5


    ld [hl], b                                    ; $4b06: $70
    call $ce60                                    ; $4b07: $cd $60 $ce
    ld h, b                                       ; $4b0a: $60
    ret nz                                        ; $4b0b: $c0

    ld h, b                                       ; $4b0c: $60
    nop                                           ; $4b0d: $00
    nop                                           ; $4b0e: $00
    rst $38                                       ; $4b0f: $ff
    rst $28                                       ; $4b10: $ef
    cpl                                           ; $4b11: $2f
    db $e4                                        ; $4b12: $e4
    rlca                                          ; $4b13: $07
    or c                                          ; $4b14: $b1
    ccf                                           ; $4b15: $3f
    nop                                           ; $4b16: $00
    ld h, a                                       ; $4b17: $67
    ld a, b                                       ; $4b18: $78
    daa                                           ; $4b19: $27
    ld b, b                                       ; $4b1a: $40

Call_0d0_4b1b:
    sub c                                         ; $4b1b: $91
    halt                                          ; $4b1c: $76
    inc de                                        ; $4b1d: $13
    push af                                       ; $4b1e: $f5
    nop                                           ; $4b1f: $00
    rst $38                                       ; $4b20: $ff
    nop                                           ; $4b21: $00
    add b                                         ; $4b22: $80
    adc a                                         ; $4b23: $8f
    nop                                           ; $4b24: $00
    ld hl, sp+$70                                 ; $4b25: $f8 $70
    rst $28                                       ; $4b27: $ef
    nop                                           ; $4b28: $00
    ld a, [bc]                                    ; $4b29: $0a
    ld [hl], e                                    ; $4b2a: $73
    ld h, b                                       ; $4b2b: $60
    rst $20                                       ; $4b2c: $e7
    db $e3                                        ; $4b2d: $e3
    ld e, [hl]                                    ; $4b2e: $5e
    inc bc                                        ; $4b2f: $03
    push bc                                       ; $4b30: $c5
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    cp $fc                                        ; $4b33: $fe $fc
    ld [bc], a                                    ; $4b35: $02
    ld a, [hl]                                    ; $4b36: $7e
    ld [bc], a                                    ; $4b37: $02
    ld a, $82                                     ; $4b38: $3e $82
    nop                                           ; $4b3a: $00
    sbc h                                         ; $4b3b: $9c
    jp nz, $e2cc                                  ; $4b3c: $c2 $cc $e2

    ld [c], a                                     ; $4b3f: $e2
    ld d, $da                                     ; $4b40: $16 $da
    ld b, $02                                     ; $4b42: $06 $02
    ld [hl], b                                    ; $4b44: $70
    ret nz                                        ; $4b45: $c0

    ld a, h                                       ; $4b46: $7c
    ret nz                                        ; $4b47: $c0

    pop bc                                        ; $4b48: $c1
    ld a, b                                       ; $4b49: $78
    ld [bc], a                                    ; $4b4a: $02
    ld [$20c0], sp                                ; $4b4b: $08 $c0 $20
    ld a, b                                       ; $4b4e: $78
    ld a, b                                       ; $4b4f: $78
    inc c                                         ; $4b50: $0c
    nop                                           ; $4b51: $00
    jp nz, Jump_000_3f3e                          ; $4b52: $c2 $3e $3f

    cp $33                                        ; $4b55: $fe $33
    nop                                           ; $4b57: $00
    or b                                          ; $4b58: $b0
    inc hl                                        ; $4b59: $23
    pop hl                                        ; $4b5a: $e1
    ld l, e                                       ; $4b5b: $6b
    inc hl                                        ; $4b5c: $23
    reti                                          ; $4b5d: $d9


    rlca                                          ; $4b5e: $07
    pop af                                        ; $4b5f: $f1
    nop                                           ; $4b60: $00
    db $fc                                        ; $4b61: $fc
    jr nc, jr_0d0_4ba2                            ; $4b62: $30 $3e

    db $10                                        ; $4b64: $10
    dec bc                                        ; $4b65: $0b
    ld hl, sp+$74                                 ; $4b66: $f8 $74
    inc bc                                        ; $4b68: $03
    nop                                           ; $4b69: $00
    db $fc                                        ; $4b6a: $fc
    ld b, b                                       ; $4b6b: $40
    jp $c33e                                      ; $4b6c: $c3 $3e $c3


    ld c, [hl]                                    ; $4b6f: $4e
    jp Jump_000_0006                              ; $4b70: $c3 $06 $00


    or a                                          ; $4b73: $b7
    ld [$fcc1], sp                                ; $4b74: $08 $c1 $fc
    and $3c                                       ; $4b77: $e6 $3c
    ld h, $98                                     ; $4b79: $26 $98
    nop                                           ; $4b7b: $00
    adc d                                         ; $4b7c: $8a

jr_0d0_4b7d:
    ret z                                         ; $4b7d: $c8

    jp nz, $e2e4                                  ; $4b7e: $c2 $e4 $e2

    db $e4                                        ; $4b81: $e4
    ld [c], a                                     ; $4b82: $e2
    call z, $e208                                 ; $4b83: $cc $08 $e2
    inc l                                         ; $4b86: $2c
    ld [c], a                                     ; $4b87: $e2
    ld a, h                                       ; $4b88: $7c
    ld b, b                                       ; $4b89: $40
    nop                                           ; $4b8a: $00
    ld a, [hl]                                    ; $4b8b: $7e
    ret nz                                        ; $4b8c: $c0

    ld a, a                                       ; $4b8d: $7f
    add b                                         ; $4b8e: $80
    ld b, [hl]                                    ; $4b8f: $46
    nop                                           ; $4b90: $00
    ld a, d                                       ; $4b91: $7a
    ret nz                                        ; $4b92: $c0

    ld [hl], $f0                                  ; $4b93: $36 $f0
    ld [hl], $f0                                  ; $4b95: $36 $f0
    ld a, c                                       ; $4b97: $79
    nop                                           ; $4b98: $00
    ccf                                           ; $4b99: $3f
    ld a, b                                       ; $4b9a: $78
    ld a, a                                       ; $4b9b: $7f
    ld a, b                                       ; $4b9c: $78
    rlca                                          ; $4b9d: $07
    ld a, h                                       ; $4b9e: $7c
    ld b, e                                       ; $4b9f: $43
    dec de                                        ; $4ba0: $1b
    nop                                           ; $4ba1: $00

jr_0d0_4ba2:
    daa                                           ; $4ba2: $27
    rrca                                          ; $4ba3: $0f
    inc de                                        ; $4ba4: $13
    ld h, a                                       ; $4ba5: $67
    dec bc                                        ; $4ba6: $0b
    ld h, a                                       ; $4ba7: $67
    ld de, $000c                                  ; $4ba8: $11 $0c $00
    rrca                                          ; $4bab: $0f
    ld [hl], a                                    ; $4bac: $77
    ld [hl], l                                    ; $4bad: $75
    add b                                         ; $4bae: $80
    jr nc, jr_0d0_4b7d                            ; $4baf: $30 $cc

    dec b                                         ; $4bb1: $05
    ld [$f000], sp                                ; $4bb2: $08 $00 $f0
    add c                                         ; $4bb5: $81
    db $fc                                        ; $4bb6: $fc
    db $d3                                        ; $4bb7: $d3
    ld hl, sp+$67                                 ; $4bb8: $f8 $67
    ldh a, [rNR32]                                ; $4bba: $f0 $1c
    nop                                           ; $4bbc: $00
    ld [bc], a                                    ; $4bbd: $02
    cp h                                          ; $4bbe: $bc
    add d                                         ; $4bbf: $82
    inc e                                         ; $4bc0: $1c
    ld [bc], a                                    ; $4bc1: $02
    call z, Call_000_1d82                         ; $4bc2: $cc $82 $1d
    nop                                           ; $4bc5: $00
    inc bc                                        ; $4bc6: $03
    db $fd                                        ; $4bc7: $fd
    inc bc                                        ; $4bc8: $03
    cp $fc                                        ; $4bc9: $fe $fc
    ld d, d                                       ; $4bcb: $52
    db $fc                                        ; $4bcc: $fc
    cpl                                           ; $4bcd: $2f
    nop                                           ; $4bce: $00
    jp $c70f                                      ; $4bcf: $c3 $0f $c7


    daa                                           ; $4bd2: $27
    rst $00                                       ; $4bd3: $c7
    scf                                           ; $4bd4: $37
    rst $00                                       ; $4bd5: $c7
    ld e, c                                       ; $4bd6: $59
    nop                                           ; $4bd7: $00
    ret nz                                        ; $4bd8: $c0

    ld a, b                                       ; $4bd9: $78
    ret nz                                        ; $4bda: $c0

    add b                                         ; $4bdb: $80
    ld a, a                                       ; $4bdc: $7f
    rst $38                                       ; $4bdd: $ff
    nop                                           ; $4bde: $00
    dec sp                                        ; $4bdf: $3b
    nop                                           ; $4be0: $00
    ld [hl], e                                    ; $4be1: $73
    inc e                                         ; $4be2: $1c
    cp h                                          ; $4be3: $bc
    ret nz                                        ; $4be4: $c0

    ld c, $f9                                     ; $4be5: $0e $f9
    adc b                                         ; $4be7: $88
    di                                            ; $4be8: $f3
    nop                                           ; $4be9: $00
    db $f4                                        ; $4bea: $f4
    db $f4                                        ; $4beb: $f4
    ld hl, sp-$01                                 ; $4bec: $f8 $ff
    nop                                           ; $4bee: $00
    nop                                           ; $4bef: $00
    nop                                           ; $4bf0: $00
    rst $28                                       ; $4bf1: $ef
    nop                                           ; $4bf2: $00
    ldh [$1f], a                                  ; $4bf3: $e0 $1f
    add b                                         ; $4bf5: $80
    ld e, a                                       ; $4bf6: $5f
    ld b, b                                       ; $4bf7: $40
    ld b, $40                                     ; $4bf8: $06 $40
    adc c                                         ; $4bfa: $89
    inc e                                         ; $4bfb: $1c
    and h                                         ; $4bfc: $a4
    add h                                         ; $4bfd: $84
    sbc d                                         ; $4bfe: $9a
    db $10                                        ; $4bff: $10
    ld [$00bf], sp                                ; $4c00: $08 $bf $00
    ld [bc], a                                    ; $4c03: $02
    nop                                           ; $4c04: $00
    add d                                         ; $4c05: $82
    db $fc                                        ; $4c06: $fc
    nop                                           ; $4c07: $00
    adc h                                         ; $4c08: $8c
    add d                                         ; $4c09: $82
    ret c                                         ; $4c0a: $d8

    jp c, $fe00                                   ; $4c0b: $da $00 $fe

    cp $00                                        ; $4c0e: $fe $00
    nop                                           ; $4c10: $00
    ld bc, $00fd                                  ; $4c11: $01 $fd $00
    nop                                           ; $4c14: $00
    add b                                         ; $4c15: $80
    ld a, a                                       ; $4c16: $7f
    cp a                                          ; $4c17: $bf
    ld a, a                                       ; $4c18: $7f
    inc bc                                        ; $4c19: $03
    jp $cc0f                                      ; $4c1a: $c3 $0f $cc


    nop                                           ; $4c1d: $00
    rra                                           ; $4c1e: $1f
    reti                                          ; $4c1f: $d9


    ld a, $f0                                     ; $4c20: $3e $f0
    rra                                           ; $4c22: $1f
    ret                                           ; $4c23: $c9


    scf                                           ; $4c24: $37
    rst $10                                       ; $4c25: $d7
    nop                                           ; $4c26: $00
    rst $38                                       ; $4c27: $ff
    nop                                           ; $4c28: $00
    ld b, b                                       ; $4c29: $40
    ld a, a                                       ; $4c2a: $7f
    xor $28                                       ; $4c2b: $ee $28
    and b                                         ; $4c2d: $a0
    cp a                                          ; $4c2e: $bf
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    ld a, a                                       ; $4c31: $7f
    ld a, a                                       ; $4c32: $7f
    ld b, a                                       ; $4c33: $47
    rst $38                                       ; $4c34: $ff
    nop                                           ; $4c35: $00
    add c                                         ; $4c36: $81
    jp $ff00                                      ; $4c37: $c3 $00 $ff


    nop                                           ; $4c3a: $00
    ld [$3cf8], sp                                ; $4c3b: $08 $f8 $3c
    ld e, d                                       ; $4c3e: $5a
    add [hl]                                      ; $4c3f: $86
    ld a, a                                       ; $4c40: $7f
    nop                                           ; $4c41: $00
    adc b                                         ; $4c42: $88
    ld a, e                                       ; $4c43: $7b
    inc sp                                        ; $4c44: $33
    rrca                                          ; $4c45: $0f
    add $88                                       ; $4c46: $c6 $88
    pop af                                        ; $4c48: $f1
    ld a, [c]                                     ; $4c49: $f2
    nop                                           ; $4c4a: $00
    rst $38                                       ; $4c4b: $ff
    ld bc, $0d03                                  ; $4c4c: $01 $03 $0d
    add [hl]                                      ; $4c4f: $86
    add h                                         ; $4c50: $84
    ld b, d                                       ; $4c51: $42
    ret nz                                        ; $4c52: $c0

    nop                                           ; $4c53: $00
    ret nz                                        ; $4c54: $c0

    ld b, d                                       ; $4c55: $42
    ldh [rNR43], a                                ; $4c56: $e0 $22
    ldh [rSCY], a                                 ; $4c58: $e0 $42
    ld [hl], b                                    ; $4c5a: $70
    ld [hl+], a                                   ; $4c5b: $22
    nop                                           ; $4c5c: $00
    ccf                                           ; $4c5d: $3f
    ret nz                                        ; $4c5e: $c0

    ccf                                           ; $4c5f: $3f
    db $d3                                        ; $4c60: $d3
    ccf                                           ; $4c61: $3f
    rst $10                                       ; $4c62: $d7
    ld a, $de                                     ; $4c63: $3e $de
    nop                                           ; $4c65: $00
    ld sp, $39e0                                  ; $4c66: $31 $e0 $39
    pop de                                        ; $4c69: $d1
    ldh [$3c], a                                  ; $4c6a: $e0 $3c
    jp nc, $001f                                  ; $4c6c: $d2 $1f $00

    inc a                                         ; $4c6f: $3c
    jp Jump_0d0_41c1                              ; $4c70: $c3 $c1 $41


    ld b, $49                                     ; $4c73: $06 $49
    ld b, a                                       ; $4c75: $47
    rst $38                                       ; $4c76: $ff
    nop                                           ; $4c77: $00
    sub b                                         ; $4c78: $90
    pop hl                                        ; $4c79: $e1
    inc de                                        ; $4c7a: $13
    cp h                                          ; $4c7b: $bc
    ld e, e                                       ; $4c7c: $5b
    ld h, h                                       ; $4c7d: $64
    sbc b                                         ; $4c7e: $98
    and a                                         ; $4c7f: $a7
    nop                                           ; $4c80: $00
    call nz, Call_000_39b8                        ; $4c81: $c4 $b8 $39
    ld [hl], $07                                  ; $4c84: $36 $07
    add hl, de                                    ; $4c86: $19
    add c                                         ; $4c87: $81
    add [hl]                                      ; $4c88: $86
    nop                                           ; $4c89: $00
    inc de                                        ; $4c8a: $13
    ld a, [c]                                     ; $4c8b: $f2
    ld [hl], h                                    ; $4c8c: $74
    sbc h                                         ; $4c8d: $9c
    adc h                                         ; $4c8e: $8c
    call z, $0e1f                                 ; $4c8f: $cc $1f $0e
    nop                                           ; $4c92: $00
    or b                                          ; $4c93: $b0
    ld [hl-], a                                   ; $4c94: $32
    jr c, jr_0d0_4ca9                             ; $4c95: $38 $12

    call c, $fc46                                 ; $4c97: $dc $46 $fc
    ld [hl], $00                                  ; $4c9a: $36 $00
    db $ec                                        ; $4c9c: $ec
    add d                                         ; $4c9d: $82
    ld [hl], h                                    ; $4c9e: $74
    ld b, d                                       ; $4c9f: $42
    db $fc                                        ; $4ca0: $fc
    ld a, [hl-]                                   ; $4ca1: $3a
    call c, Call_000_009a                         ; $4ca2: $dc $9a $00
    ret nc                                        ; $4ca5: $d0

jr_0d0_4ca6:
    rra                                           ; $4ca6: $1f
    db $d3                                        ; $4ca7: $d3
    rra                                           ; $4ca8: $1f

jr_0d0_4ca9:
    add hl, de                                    ; $4ca9: $19
    ret z                                         ; $4caa: $c8

    rra                                           ; $4cab: $1f
    jp nc, Jump_000_3f00                          ; $4cac: $d2 $00 $3f

    sub $3e                                       ; $4caf: $d6 $3e
    and $3e                                       ; $4cb1: $e6 $3e
    ret nz                                        ; $4cb3: $c0

    add hl, sp                                    ; $4cb4: $39
    ret c                                         ; $4cb5: $d8

    nop                                           ; $4cb6: $00
    ccf                                           ; $4cb7: $3f
    and e                                         ; $4cb8: $a3
    ld a, a                                       ; $4cb9: $7f
    ret nz                                        ; $4cba: $c0

    ld a, a                                       ; $4cbb: $7f
    sbc b                                         ; $4cbc: $98
    rlca                                          ; $4cbd: $07
    adc b                                         ; $4cbe: $88
    nop                                           ; $4cbf: $00
    ldh a, [$6f]                                  ; $4cc0: $f0 $6f
    rra                                           ; $4cc2: $1f
    ld h, e                                       ; $4cc3: $63
    ld h, a                                       ; $4cc4: $67
    inc h                                         ; $4cc5: $24
    ld [hl], b                                    ; $4cc6: $70
    ld c, a                                       ; $4cc7: $4f
    nop                                           ; $4cc8: $00
    ld l, b                                       ; $4cc9: $68
    ld d, [hl]                                    ; $4cca: $56
    ld bc, $fefe                                  ; $4ccb: $01 $fe $fe
    rst $38                                       ; $4cce: $ff
    cp $fc                                        ; $4ccf: $fe $fc
    nop                                           ; $4cd1: $00
    db $fc                                        ; $4cd2: $fc
    ld h, d                                       ; $4cd3: $62
    inc a                                         ; $4cd4: $3c
    ret nz                                        ; $4cd5: $c0

    db $fc                                        ; $4cd6: $fc
    ld b, $fa                                     ; $4cd7: $06 $fa
    ld c, $00                                     ; $4cd9: $0e $00
    call z, $d842                                 ; $4cdb: $cc $42 $d8
    ld a, [bc]                                    ; $4cde: $0a
    add sp, -$1e                                  ; $4cdf: $e8 $e2
    db $ec                                        ; $4ce1: $ec
    add [hl]                                      ; $4ce2: $86
    nop                                           ; $4ce3: $00
    db $f4                                        ; $4ce4: $f4
    ld a, [c]                                     ; $4ce5: $f2
    call c, $acc2                                 ; $4ce6: $dc $c2 $ac
    add [hl]                                      ; $4ce9: $86
    db $fc                                        ; $4cea: $fc
    ld d, [hl]                                    ; $4ceb: $56
    nop                                           ; $4cec: $00
    dec sp                                        ; $4ced: $3b
    jp z, $fa3b                                   ; $4cee: $ca $3b $fa

    add hl, sp                                    ; $4cf1: $39
    ret nz                                        ; $4cf2: $c0

    dec a                                         ; $4cf3: $3d

jr_0d0_4cf4:
    push bc                                       ; $4cf4: $c5
    nop                                           ; $4cf5: $00
    inc a                                         ; $4cf6: $3c
    call nz, $c23e                                ; $4cf7: $c4 $3e $c2
    add b                                         ; $4cfa: $80
    ld a, a                                       ; $4cfb: $7f
    rst $38                                       ; $4cfc: $ff
    nop                                           ; $4cfd: $00
    nop                                           ; $4cfe: $00
    cp a                                          ; $4cff: $bf
    and b                                         ; $4d00: $a0
    adc a                                         ; $4d01: $8f
    sbc a                                         ; $4d02: $9f
    cp a                                          ; $4d03: $bf
    jr nz, jr_0d0_4ca6                            ; $4d04: $20 $a0

    ccf                                           ; $4d06: $3f
    nop                                           ; $4d07: $00
    ld e, $df                                     ; $4d08: $1e $df
    ld c, h                                       ; $4d0a: $4c
    jr @+$01                                      ; $4d0b: $18 $ff

    nop                                           ; $4d0d: $00
    nop                                           ; $4d0e: $00
    nop                                           ; $4d0f: $00
    nop                                           ; $4d10: $00
    dec a                                         ; $4d11: $3d
    pop de                                        ; $4d12: $d1
    di                                            ; $4d13: $f3
    ldh a, [rWY]                                  ; $4d14: $f0 $4a
    call nz, $8894                                ; $4d16: $c4 $94 $88
    ld [$7a4b], sp                                ; $4d19: $08 $4b $7a
    add a                                         ; $4d1c: $87
    ldh [rNR10], a                                ; $4d1d: $e0 $10
    ld [$46fc], sp                                ; $4d1f: $08 $fc $46
    cp h                                          ; $4d22: $bc
    nop                                           ; $4d23: $00
    and d                                         ; $4d24: $a2
    jr nc, @+$34                                  ; $4d25: $30 $32

    db $fc                                        ; $4d27: $fc
    jp nz, $0efc                                  ; $4d28: $c2 $fc $0e

    db $fc                                        ; $4d2b: $fc
    nop                                           ; $4d2c: $00
    ld c, $00                                     ; $4d2d: $0e $00
    cp $fe                                        ; $4d2f: $fe $fe
    nop                                           ; $4d31: $00
    nop                                           ; $4d32: $00
    ld bc, $00fb                                  ; $4d33: $01 $fb $00
    nop                                           ; $4d36: $00
    add b                                         ; $4d37: $80
    ld a, a                                       ; $4d38: $7f
    add a                                         ; $4d39: $87
    ld b, a                                       ; $4d3a: $47
    rrca                                          ; $4d3b: $0f
    adc $0f                                       ; $4d3c: $ce $0f
    call z, $0700                                 ; $4d3e: $cc $00 $07
    jp nz, $c60f                                  ; $4d41: $c2 $0f $c6

    rra                                           ; $4d44: $1f
    pop bc                                        ; $4d45: $c1
    ccf                                           ; $4d46: $3f
    pop bc                                        ; $4d47: $c1
    nop                                           ; $4d48: $00
    rst $38                                       ; $4d49: $ff
    nop                                           ; $4d4a: $00
    ld [bc], a                                    ; $4d4b: $02
    ld [hl], a                                    ; $4d4c: $77
    cp c                                          ; $4d4d: $b9
    ld [$7e02], sp                                ; $4d4e: $08 $02 $7e
    nop                                           ; $4d51: $00
    adc $b2                                       ; $4d52: $ce $b2
    ret z                                         ; $4d54: $c8

    or b                                          ; $4d55: $b0
    jr c, @-$66                                   ; $4d56: $38 $98

    jr nc, jr_0d0_4cf4                            ; $4d58: $30 $9a

    nop                                           ; $4d5a: $00
    rst $38                                       ; $4d5b: $ff
    nop                                           ; $4d5c: $00
    jp nz, $e7fe                                  ; $4d5d: $c2 $fe $e7

    dec h                                         ; $4d60: $25
    sbc a                                         ; $4d61: $9f
    and [hl]                                      ; $4d62: $a6
    nop                                           ; $4d63: $00
    inc a                                         ; $4d64: $3c
    ld e, a                                       ; $4d65: $5f
    inc a                                         ; $4d66: $3c
    sbc $44                                       ; $4d67: $de $44
    dec a                                         ; $4d69: $3d
    ld a, l                                       ; $4d6a: $7d
    inc b                                         ; $4d6b: $04
    nop                                           ; $4d6c: $00
    cp $00                                        ; $4d6d: $fe $00
    ld [hl+], a                                   ; $4d6f: $22
    ldh [$c0], a                                  ; $4d70: $e0 $c0
    jp nz, Jump_0d0_62e0                          ; $4d72: $c2 $e0 $62

    nop                                           ; $4d75: $00
    ldh [rNR43], a                                ; $4d76: $e0 $22
    ldh a, [$92]                                  ; $4d78: $f0 $92
    db $fc                                        ; $4d7a: $fc
    ld c, [hl]                                    ; $4d7b: $4e
    db $fc                                        ; $4d7c: $fc
    and $00                                       ; $4d7d: $e6 $00
    ld a, $c6                                     ; $4d7f: $3e $c6
    scf                                           ; $4d81: $37
    jp nz, $c437                                  ; $4d82: $c2 $37 $c4

    scf                                           ; $4d85: $37
    add $00                                       ; $4d86: $c6 $00
    dec sp                                        ; $4d88: $3b
    jp nz, $cf3f                                  ; $4d89: $c2 $3f $cf

    ld a, $ce                                     ; $4d8c: $3e $ce
    ld a, $de                                     ; $4d8e: $3e $de
    nop                                           ; $4d90: $00
    ld e, d                                       ; $4d91: $5a
    inc l                                         ; $4d92: $2c
    ld [hl], c                                    ; $4d93: $71
    ld e, [hl]                                    ; $4d94: $5e
    dec b                                         ; $4d95: $05
    ld b, [hl]                                    ; $4d96: $46
    inc b                                         ; $4d97: $04
    ld c, [hl]                                    ; $4d98: $4e
    nop                                           ; $4d99: $00
    inc a                                         ; $4d9a: $3c
    ld l, d                                       ; $4d9b: $6a
    ld l, a                                       ; $4d9c: $6f
    ld e, d                                       ; $4d9d: $5a
    dec h                                         ; $4d9e: $25
    ld e, [hl]                                    ; $4d9f: $5e
    ld c, h                                       ; $4da0: $4c

jr_0d0_4da1:
    add [hl]                                      ; $4da1: $86
    nop                                           ; $4da2: $00

jr_0d0_4da3:
    ld b, a                                       ; $4da3: $47
    xor c                                         ; $4da4: $a9
    jp $f0e4                                      ; $4da5: $c3 $e4 $f0


    db $eb                                        ; $4da8: $eb
    jr c, jr_0d0_4da1                             ; $4da9: $38 $f6

    nop                                           ; $4dab: $00
    ld a, [de]                                    ; $4dac: $1a
    ld b, c                                       ; $4dad: $41
    add b                                         ; $4dae: $80
    sbc e                                         ; $4daf: $9b
    jr c, jr_0d0_4da3                             ; $4db0: $38 $f1

    and c                                         ; $4db2: $a1
    ld b, b                                       ; $4db3: $40
    nop                                           ; $4db4: $00
    db $fc                                        ; $4db5: $fc
    jp nc, $0afc                                  ; $4db6: $d2 $fc $0a

    db $f4                                        ; $4db9: $f4
    halt                                          ; $4dba: $76
    db $f4                                        ; $4dbb: $f4
    ld h, $00                                     ; $4dbc: $26 $00
    db $ec                                        ; $4dbe: $ec
    ld [c], a                                     ; $4dbf: $e2
    call c, $bcc2                                 ; $4dc0: $dc $c2 $bc
    and [hl]                                      ; $4dc3: $a6
    cp h                                          ; $4dc4: $bc
    ld c, $00                                     ; $4dc5: $0e $00
    ccf                                           ; $4dc7: $3f
    ret c                                         ; $4dc8: $d8

    dec de                                        ; $4dc9: $1b
    ret nz                                        ; $4dca: $c0

    ret nz                                        ; $4dcb: $c0

    db $fd                                        ; $4dcc: $fd
    ldh [$df], a                                  ; $4dcd: $e0 $df
    db $10                                        ; $4dcf: $10
    scf                                           ; $4dd0: $37
    rst $00                                       ; $4dd1: $c7
    ccf                                           ; $4dd2: $3f
    ld [bc], a                                    ; $4dd3: $02
    nop                                           ; $4dd4: $00
    dec a                                         ; $4dd5: $3d
    call z, $8e5c                                 ; $4dd6: $cc $5c $8e
    nop                                           ; $4dd9: $00
    ld b, a                                       ; $4dda: $47
    cp a                                          ; $4ddb: $bf
    ld b, a                                       ; $4ddc: $47
    dec hl                                        ; $4ddd: $2b
    ld a, a                                       ; $4dde: $7f
    rrca                                          ; $4ddf: $0f
    ld e, h                                       ; $4de0: $5c
    dec de                                        ; $4de1: $1b
    nop                                           ; $4de2: $00
    ld d, h                                       ; $4de3: $54
    inc de                                        ; $4de4: $13
    ld b, a                                       ; $4de5: $47
    xor a                                         ; $4de6: $af
    cp h                                          ; $4de7: $bc
    ld d, e                                       ; $4de8: $53
    ld hl, $00f8                                  ; $4de9: $21 $f8 $00
    srl d                                         ; $4dec: $cb $3a
    jp nc, $c0e9                                  ; $4dee: $d2 $e9 $c0

    db $ec                                        ; $4df1: $ec
    ld a, [c]                                     ; $4df2: $f2
    db $e4                                        ; $4df3: $e4
    nop                                           ; $4df4: $00
    ld [c], a                                     ; $4df5: $e2
    pop de                                        ; $4df6: $d1
    daa                                           ; $4df7: $27
    ldh [$ef], a                                  ; $4df8: $e0 $ef
    ld [hl], h                                    ; $4dfa: $74
    cp h                                          ; $4dfb: $bc

jr_0d0_4dfc:
    ld c, $00                                     ; $4dfc: $0e $00
    call c, $cc46                                 ; $4dfe: $dc $46 $cc
    ld b, $fc                                     ; $4e01: $06 $fc
    ld a, [de]                                    ; $4e03: $1a
    db $fc                                        ; $4e04: $fc
    ld e, $00                                     ; $4e05: $1e $00

jr_0d0_4e07:
    db $fc                                        ; $4e07: $fc
    ld e, $c2                                     ; $4e08: $1e $c2
    ret c                                         ; $4e0a: $d8

    add d                                         ; $4e0b: $82
    or h                                          ; $4e0c: $b4
    dec bc                                        ; $4e0d: $0b
    pop bc                                        ; $4e0e: $c1
    nop                                           ; $4e0f: $00
    ld [hl], $f2                                  ; $4e10: $36 $f2
    scf                                           ; $4e12: $37
    pop bc                                        ; $4e13: $c1
    ccf                                           ; $4e14: $3f
    call $c03b                                    ; $4e15: $cd $3b $c0
    nop                                           ; $4e18: $00
    ccf                                           ; $4e19: $3f
    rst $00                                       ; $4e1a: $c7
    add b                                         ; $4e1b: $80
    ld a, a                                       ; $4e1c: $7f
    rst $38                                       ; $4e1d: $ff
    nop                                           ; $4e1e: $00
    ld sp, $008e                                  ; $4e1f: $31 $8e $00
    rrca                                          ; $4e22: $0f
    rra                                           ; $4e23: $1f
    ldh a, [$ef]                                  ; $4e24: $f0 $ef
    db $10                                        ; $4e26: $10
    rrca                                          ; $4e27: $0f
    ld sp, $002e                                  ; $4e28: $31 $2e $00
    pop de                                        ; $4e2b: $d1
    adc $ff                                       ; $4e2c: $ce $ff
    nop                                           ; $4e2e: $00
    nop                                           ; $4e2f: $00
    nop                                           ; $4e30: $00
    ldh a, [rBGP]                                 ; $4e31: $f0 $47
    nop                                           ; $4e33: $00
    ld hl, sp+$5d                                 ; $4e34: $f8 $5d
    and c                                         ; $4e36: $a1
    jr nc, @-$4d                                  ; $4e37: $30 $b1

    ld a, [hl-]                                   ; $4e39: $3a
    inc b                                         ; $4e3a: $04
    add e                                         ; $4e3b: $83
    jr nz, jr_0d0_4dfc                            ; $4e3c: $20 $be

    ccf                                           ; $4e3e: $3f
    db $10                                        ; $4e3f: $10
    ld [$467c], sp                                ; $4e40: $08 $7c $46
    ld a, h                                       ; $4e43: $7c
    ld c, $2c                                     ; $4e44: $0e $2c
    nop                                           ; $4e46: $00
    ld a, [hl+]                                   ; $4e47: $2a
    db $fc                                        ; $4e48: $fc
    ld [bc], a                                    ; $4e49: $02
    db $fc                                        ; $4e4a: $fc
    ld a, [hl]                                    ; $4e4b: $7e
    db $fc                                        ; $4e4c: $fc
    ld a, [hl-]                                   ; $4e4d: $3a
    nop                                           ; $4e4e: $00
    nop                                           ; $4e4f: $00
    cp $fe                                        ; $4e50: $fe $fe
    nop                                           ; $4e52: $00
    nop                                           ; $4e53: $00
    ld bc, $00f6                                  ; $4e54: $01 $f6 $00
    nop                                           ; $4e57: $00
    rst $38                                       ; $4e58: $ff
    ld a, a                                       ; $4e59: $7f
    ret nz                                        ; $4e5a: $c0

    ld b, a                                       ; $4e5b: $47
    ld c, $c6                                     ; $4e5c: $0e $c6
    dec c                                         ; $4e5e: $0d
    push bc                                       ; $4e5f: $c5
    nop                                           ; $4e60: $00
    pop bc                                        ; $4e61: $c1
    dec e                                         ; $4e62: $1d
    ret nz                                        ; $4e63: $c0

    dec de                                        ; $4e64: $1b
    jp $c11b                                      ; $4e65: $c3 $1b $c1


    dec bc                                        ; $4e68: $0b
    nop                                           ; $4e69: $00
    rst $38                                       ; $4e6a: $ff
    nop                                           ; $4e6b: $00
    inc b                                         ; $4e6c: $04
    inc c                                         ; $4e6d: $0c
    ld [hl], b                                    ; $4e6e: $70
    sub e                                         ; $4e6f: $93
    add a                                         ; $4e70: $87
    ld l, b                                       ; $4e71: $68

jr_0d0_4e72:
    nop                                           ; $4e72: $00
    ld a, l                                       ; $4e73: $7d
    add d                                         ; $4e74: $82
    rst $00                                       ; $4e75: $c7
    jr z, jr_0d0_4e07                             ; $4e76: $28 $8f

    ld d, b                                       ; $4e78: $50
    db $fd                                        ; $4e79: $fd
    nop                                           ; $4e7a: $00
    add b                                         ; $4e7b: $80
    stop                                          ; $4e7c: $10 $00
    db $ec                                        ; $4e7e: $ec
    rrca                                          ; $4e7f: $0f
    inc d                                         ; $4e80: $14
    ld e, [hl]                                    ; $4e81: $5e
    ld b, l                                       ; $4e82: $45
    ei                                            ; $4e83: $fb
    ld h, h                                       ; $4e84: $64
    nop                                           ; $4e85: $00
    xor e                                         ; $4e86: $ab
    ld [hl], $ef                                  ; $4e87: $36 $ef
    jr nc, jr_0d0_4eda                            ; $4e89: $30 $4f

    db $dd                                        ; $4e8b: $dd
    cp $00                                        ; $4e8c: $fe $00
    nop                                           ; $4e8e: $00
    ld [hl+], a                                   ; $4e8f: $22
    ldh [$60], a                                  ; $4e90: $e0 $60
    ld [bc], a                                    ; $4e92: $02
    or b                                          ; $4e93: $b0
    add d                                         ; $4e94: $82
    ld b, d                                       ; $4e95: $42
    ret c                                         ; $4e96: $d8

    nop                                           ; $4e97: $00
    ld [bc], a                                    ; $4e98: $02
    ret c                                         ; $4e99: $d8

    and d                                         ; $4e9a: $a2
    add sp, -$5e                                  ; $4e9b: $e8 $a2

jr_0d0_4e9d:
    add sp, -$30                                  ; $4e9d: $e8 $d0
    ld a, [de]                                    ; $4e9f: $1a
    jr nz, jr_0d0_4e72                            ; $4ea0: $20 $d0

    dec e                                         ; $4ea2: $1d
    inc a                                         ; $4ea3: $3c
    ld [$17c2], sp                                ; $4ea4: $08 $c2 $17
    pop bc                                        ; $4ea7: $c1
    rla                                           ; $4ea8: $17
    jp Jump_000_0b00                              ; $4ea9: $c3 $00 $0b


    pop bc                                        ; $4eac: $c1
    dec bc                                        ; $4ead: $0b
    ld h, a                                       ; $4eae: $67
    db $10                                        ; $4eaf: $10
    ld a, e                                       ; $4eb0: $7b
    add b                                         ; $4eb1: $80
    ld hl, sp+$00                                 ; $4eb2: $f8 $00
    db $10                                        ; $4eb4: $10
    jp nc, Jump_000_2c27                          ; $4eb5: $d2 $27 $2c

    call z, $c02b                                 ; $4eb8: $cc $2b $c0
    and b                                         ; $4ebb: $a0
    nop                                           ; $4ebc: $00
    ldh [$90], a                                  ; $4ebd: $e0 $90
    rst $00                                       ; $4ebf: $c7
    or a                                          ; $4ec0: $b7
    ld a, c                                       ; $4ec1: $79
    dec b                                         ; $4ec2: $05
    add d                                         ; $4ec3: $82
    ld [hl], h                                    ; $4ec4: $74
    nop                                           ; $4ec5: $00
    ld d, e                                       ; $4ec6: $53
    ld sp, hl                                     ; $4ec7: $f9
    dec bc                                        ; $4ec8: $0b
    jr nc, jr_0d0_4f04                            ; $4ec9: $30 $39

    ld [de], a                                    ; $4ecb: $12
    add h                                         ; $4ecc: $84
    stop                                          ; $4ecd: $10 $00
    nop                                           ; $4ecf: $00
    ld d, b                                       ; $4ed0: $50
    push de                                       ; $4ed1: $d5
    ret c                                         ; $4ed2: $d8

    ld b, d                                       ; $4ed3: $42
    ld e, b                                       ; $4ed4: $58
    ld b, d                                       ; $4ed5: $42
    ld [hl+], a                                   ; $4ed6: $22
    nop                                           ; $4ed7: $00
    cp b                                          ; $4ed8: $b8
    and d                                         ; $4ed9: $a2

jr_0d0_4eda:
    cp b                                          ; $4eda: $b8
    ret c                                         ; $4edb: $d8

    add d                                         ; $4edc: $82
    ret nc                                        ; $4edd: $d0

    jp nz, Jump_000_001a                          ; $4ede: $c2 $1a $00

    cp b                                          ; $4ee1: $b8
    ld a, [de]                                    ; $4ee2: $1a
    cp b                                          ; $4ee3: $b8
    jp nz, $c11b                                  ; $4ee4: $c2 $1b $c1

    dec de                                        ; $4ee7: $1b
    call nz, $1700                                ; $4ee8: $c4 $00 $17
    jp nz, $c017                                  ; $4eeb: $c2 $17 $c0

    add hl, de                                    ; $4eee: $19
    jp $c137                                      ; $4eef: $c3 $37 $c1


    nop                                           ; $4ef2: $00
    scf                                           ; $4ef3: $37
    pop bc                                        ; $4ef4: $c1
    dec hl                                        ; $4ef5: $2b
    ld h, b                                       ; $4ef6: $60
    add sp, $67                                   ; $4ef7: $e8 $67

jr_0d0_4ef9:
    ldh [$60], a                                  ; $4ef9: $e0 $60
    nop                                           ; $4efb: $00
    rst $30                                       ; $4efc: $f7
    add sp, -$20                                  ; $4efd: $e8 $e0
    and a                                         ; $4eff: $a7
    ldh [$b0], a                                  ; $4f00: $e0 $b0
    di                                            ; $4f02: $f3
    xor b                                         ; $4f03: $a8

jr_0d0_4f04:
    nop                                           ; $4f04: $00
    ld hl, sp-$5f                                 ; $4f05: $f8 $a1
    ld a, [$3120]                                 ; $4f07: $fa $20 $31
    ld [$c098], a                                 ; $4f0a: $ea $98 $c0
    nop                                           ; $4f0d: $00
    ret nz                                        ; $4f0e: $c0

    ld c, b                                       ; $4f0f: $48
    ld [hl], c                                    ; $4f10: $71
    ld a, [$f479]                                 ; $4f11: $fa $79 $f4
    inc bc                                        ; $4f14: $03
    ld h, a                                       ; $4f15: $67
    nop                                           ; $4f16: $00
    pop hl                                        ; $4f17: $e1
    add e                                         ; $4f18: $83
    jr jr_0d0_4e9d                                ; $4f19: $18 $82

    ret nc                                        ; $4f1b: $d0

    ld [bc], a                                    ; $4f1c: $02
    ld d, b                                       ; $4f1d: $50
    ld a, [de]                                    ; $4f1e: $1a
    jr nz, jr_0d0_4ef9                            ; $4f1f: $20 $d8

    ld a, [de]                                    ; $4f21: $1a
    ld b, d                                       ; $4f22: $42
    nop                                           ; $4f23: $00
    ld b, d                                       ; $4f24: $42
    ret z                                         ; $4f25: $c8

    jp nc, Jump_0d0_52f4                          ; $4f26: $d2 $f4 $52

    nop                                           ; $4f29: $00
    ld hl, sp-$35                                 ; $4f2a: $f8 $cb
    dec de                                        ; $4f2c: $1b
    db $d3                                        ; $4f2d: $d3
    ccf                                           ; $4f2e: $3f
    ret                                           ; $4f2f: $c9


    or $da                                        ; $4f30: $f6 $da
    nop                                           ; $4f32: $00
    push hl                                       ; $4f33: $e5
    or c                                          ; $4f34: $b1
    adc $95                                       ; $4f35: $ce $95
    jp z, Jump_0d0_7f80                           ; $4f37: $ca $80 $7f

    rst $38                                       ; $4f3a: $ff
    nop                                           ; $4f3b: $00
    nop                                           ; $4f3c: $00
    ld a, [c]                                     ; $4f3d: $f2
    inc b                                         ; $4f3e: $04
    ld h, a                                       ; $4f3f: $67
    push de                                       ; $4f40: $d5
    ld h, a                                       ; $4f41: $67
    sub e                                         ; $4f42: $93
    db $db                                        ; $4f43: $db
    nop                                           ; $4f44: $00
    xor b                                         ; $4f45: $a8
    ei                                            ; $4f46: $fb
    adc c                                         ; $4f47: $89
    xor e                                         ; $4f48: $ab
    pop de                                        ; $4f49: $d1
    rst $38                                       ; $4f4a: $ff
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    nop                                           ; $4f4d: $00
    nop                                           ; $4f4e: $00
    ret z                                         ; $4f4f: $c8

    or c                                          ; $4f50: $b1
    ld e, h                                       ; $4f51: $5c
    sub b                                         ; $4f52: $90
    ld a, [hl+]                                   ; $4f53: $2a
    call z, Call_000_0415                         ; $4f54: $cc $15 $04
    halt                                          ; $4f57: $76
    sbc $6b                                       ; $4f58: $de $6b
    sub b                                         ; $4f5a: $90
    jp c, Jump_000_0810                           ; $4f5b: $da $10 $08

    ld d, d                                       ; $4f5e: $52
    ld hl, sp+$00                                 ; $4f5f: $f8 $00
    ld a, [hl-]                                   ; $4f61: $3a
    ld hl, sp+$32                                 ; $4f62: $f8 $32
    ld a, h                                       ; $4f64: $7c
    ld d, d                                       ; $4f65: $52
    ld a, b                                       ; $4f66: $78

jr_0d0_4f67:
    ld h, d                                       ; $4f67: $62
    ld a, b                                       ; $4f68: $78
    nop                                           ; $4f69: $00
    ld a, [hl+]                                   ; $4f6a: $2a
    db $fc                                        ; $4f6b: $fc
    nop                                           ; $4f6c: $00
    cp $fe                                        ; $4f6d: $fe $fe
    nop                                           ; $4f6f: $00
    nop                                           ; $4f70: $00
    ld bc, $00ef                                  ; $4f71: $01 $ef $00
    nop                                           ; $4f74: $00
    rst $38                                       ; $4f75: $ff
    ld a, a                                       ; $4f76: $7f
    ret nz                                        ; $4f77: $c0

    ld a, [hl]                                    ; $4f78: $7e
    pop bc                                        ; $4f79: $c1
    dec a                                         ; $4f7a: $3d
    jp Jump_000_003b                              ; $4f7b: $c3 $3b $00


    jp $c73b                                      ; $4f7e: $c3 $3b $c7


    scf                                           ; $4f81: $37
    ldh a, [$37]                                  ; $4f82: $f0 $37
    ldh [$2f], a                                  ; $4f84: $e0 $2f
    nop                                           ; $4f86: $00
    rst $38                                       ; $4f87: $ff
    nop                                           ; $4f88: $00
    ld l, a                                       ; $4f89: $6f
    ld a, a                                       ; $4f8a: $7f
    add b                                         ; $4f8b: $80
    ld e, a                                       ; $4f8c: $5f
    ld b, b                                       ; $4f8d: $40
    ld a, a                                       ; $4f8e: $7f
    ld bc, $003f                                  ; $4f8f: $01 $3f $00
    ld a, a                                       ; $4f92: $7f
    nop                                           ; $4f93: $00
    rst $38                                       ; $4f94: $ff
    nop                                           ; $4f95: $00
    di                                            ; $4f96: $f3
    inc b                                         ; $4f97: $04
    nop                                           ; $4f98: $00
    nop                                           ; $4f99: $00
    ldh a, [$fe]                                  ; $4f9a: $f0 $fe
    add sp, -$08                                  ; $4f9c: $e8 $f8
    ld hl, sp-$10                                 ; $4f9e: $f8 $f0
    nop                                           ; $4fa0: $00
    db $fc                                        ; $4fa1: $fc
    nop                                           ; $4fa2: $00
    ld [$fcf4], sp                                ; $4fa3: $08 $f4 $fc
    nop                                           ; $4fa6: $00
    db $fc                                        ; $4fa7: $fc
    nop                                           ; $4fa8: $00
    cp $00                                        ; $4fa9: $fe $00
    nop                                           ; $4fab: $00
    ld [bc], a                                    ; $4fac: $02
    db $fc                                        ; $4fad: $fc
    ld [bc], a                                    ; $4fae: $02
    ld a, [hl]                                    ; $4faf: $7e
    add d                                         ; $4fb0: $82
    ld a, $c2                                     ; $4fb1: $3e $c2
    ld e, $00                                     ; $4fb3: $1e $00
    jp nz, $e21e                                  ; $4fb5: $c2 $1e $e2

    ld c, $e2                                     ; $4fb8: $0e $e2
    ld c, $e0                                     ; $4fba: $0e $e0
    cpl                                           ; $4fbc: $2f
    nop                                           ; $4fbd: $00
    ld hl, sp+$3f                                 ; $4fbe: $f8 $3f
    rr e                                          ; $4fc0: $cb $1b
    push bc                                       ; $4fc2: $c5
    dec b                                         ; $4fc3: $05
    pop de                                        ; $4fc4: $d1
    dec d                                         ; $4fc5: $15
    ld [hl+], a                                   ; $4fc6: $22
    pop de                                        ; $4fc7: $d1
    dec e                                         ; $4fc8: $1d
    ld [bc], a                                    ; $4fc9: $02
    ld [$00c0], sp                                ; $4fca: $08 $c0 $00
    nop                                           ; $4fcd: $00
    jr c, jr_0d0_4fd0                             ; $4fce: $38 $00

jr_0d0_4fd0:
    nop                                           ; $4fd0: $00
    nop                                           ; $4fd1: $00
    add b                                         ; $4fd2: $80
    rst $38                                       ; $4fd3: $ff
    add b                                         ; $4fd4: $80
    ld b, b                                       ; $4fd5: $40
    add b                                         ; $4fd6: $80
    add [hl]                                      ; $4fd7: $86
    jr c, jr_0d0_4f67                             ; $4fd8: $38 $8d

    nop                                           ; $4fda: $00
    ld [hl], c                                    ; $4fdb: $71
    nop                                           ; $4fdc: $00
    db $fc                                        ; $4fdd: $fc
    ret nz                                        ; $4fde: $c0

    inc a                                         ; $4fdf: $3c
    rra                                           ; $4fe0: $1f
    ld hl, sp+$10                                 ; $4fe1: $f8 $10
    nop                                           ; $4fe3: $00
    ld [hl], b                                    ; $4fe4: $70
    or a                                          ; $4fe5: $b7
    jr c, jr_0d0_5018                             ; $4fe6: $38 $30

    inc a                                         ; $4fe8: $3c
    ld a, d                                       ; $4fe9: $7a
    ld b, c                                       ; $4fea: $41
    ld a, h                                       ; $4feb: $7c
    ld b, b                                       ; $4fec: $40
    add a                                         ; $4fed: $87
    inc [hl]                                      ; $4fee: $34
    ld [$0e0c], sp                                ; $4fef: $08 $0c $0e
    db $ec                                        ; $4ff2: $ec
    ld c, $0e                                     ; $4ff3: $0e $0e
    db $ec                                        ; $4ff5: $ec
    nop                                           ; $4ff6: $00
    ld h, $04                                     ; $4ff7: $26 $04
    ld b, $84                                     ; $4ff9: $06 $84
    ld b, $c4                                     ; $4ffb: $06 $c4
    dec [hl]                                      ; $4ffd: $35
    pop de                                        ; $4ffe: $d1
    nop                                           ; $4fff: $00
    dec h                                         ; $5000: $25
    ret nz                                        ; $5001: $c0

    ld [hl-], a                                   ; $5002: $32
    jp nz, $ce2e                                  ; $5003: $c2 $2e $ce

    ret z                                         ; $5006: $c8

    ld a, [de]                                    ; $5007: $1a
    nop                                           ; $5008: $00
    ret                                           ; $5009: $c9


    ccf                                           ; $500a: $3f
    push bc                                       ; $500b: $c5
    ccf                                           ; $500c: $3f
    pop de                                        ; $500d: $d1
    ccf                                           ; $500e: $3f
    ldh a, [rNR32]                                ; $500f: $f0 $1c
    db $10                                        ; $5011: $10
    rst $38                                       ; $5012: $ff
    rrca                                          ; $5013: $0f
    rst $38                                       ; $5014: $ff
    ld a, h                                       ; $5015: $7c
    nop                                           ; $5016: $00
    rra                                           ; $5017: $1f

jr_0d0_5018:
    ldh [$65], a                                  ; $5018: $e0 $65
    ld l, d                                       ; $501a: $6a
    nop                                           ; $501b: $00
    or [hl]                                       ; $501c: $b6
    ld l, d                                       ; $501d: $6a
    ld l, l                                       ; $501e: $6d
    or b                                          ; $501f: $b0
    ld [hl], h                                    ; $5020: $74
    ld a, h                                       ; $5021: $7c
    ld [hl], b                                    ; $5022: $70
    jr c, jr_0d0_5025                             ; $5023: $38 $00

jr_0d0_5025:
    rst $30                                       ; $5025: $f7
    add hl, bc                                    ; $5026: $09
    di                                            ; $5027: $f3
    dec b                                         ; $5028: $05
    ei                                            ; $5029: $fb
    ld sp, hl                                     ; $502a: $f9
    ret z                                         ; $502b: $c8

    ld a, e                                       ; $502c: $7b
    nop                                           ; $502d: $00
    ret nz                                        ; $502e: $c0

    inc hl                                        ; $502f: $23
    ret nz                                        ; $5030: $c0

    and e                                         ; $5031: $a3
    jp nc, $52d4                                  ; $5032: $d2 $d4 $52

    inc d                                         ; $5035: $14
    nop                                           ; $5036: $00
    jp nz, $e206                                  ; $5037: $c2 $06 $e2

    ld c, $86                                     ; $503a: $0e $86
    inc d                                         ; $503c: $14
    ld [bc], a                                    ; $503d: $02
    ld h, b                                       ; $503e: $60
    nop                                           ; $503f: $00
    ld hl, sp-$26                                 ; $5040: $f8 $da
    sub h                                         ; $5042: $94
    ld b, $c9                                     ; $5043: $06 $c9
    or $c1                                        ; $5045: $f6 $c1
    or $00                                        ; $5047: $f6 $00
    db $ec                                        ; $5049: $ec
    ccf                                           ; $504a: $3f
    call z, $c22c                                 ; $504b: $cc $2c $c2
    ccf                                           ; $504e: $3f
    add $3f                                       ; $504f: $c6 $3f
    nop                                           ; $5051: $00
    add b                                         ; $5052: $80
    ld a, a                                       ; $5053: $7f
    rst $38                                       ; $5054: $ff
    nop                                           ; $5055: $00
    or a                                          ; $5056: $b7
    ld l, [hl]                                    ; $5057: $6e
    or h                                          ; $5058: $b4
    ld l, [hl]                                    ; $5059: $6e
    nop                                           ; $505a: $00
    ret c                                         ; $505b: $d8

    ld l, b                                       ; $505c: $68
    sbc c                                         ; $505d: $99
    ld l, h                                       ; $505e: $6c
    sub c                                         ; $505f: $91
    ld l, h                                       ; $5060: $6c
    dec [hl]                                      ; $5061: $35
    db $ec                                        ; $5062: $ec
    add b                                         ; $5063: $80
    adc b                                         ; $5064: $88
    nop                                           ; $5065: $00
    nop                                           ; $5066: $00
    inc e                                         ; $5067: $1c
    sbc [hl]                                      ; $5068: $9e
    ld h, d                                       ; $5069: $62
    inc hl                                        ; $506a: $23
    add c                                         ; $506b: $81
    dec a                                         ; $506c: $3d
    ld [bc], a                                    ; $506d: $02
    db $dd                                        ; $506e: $dd
    ld d, b                                       ; $506f: $50
    push de                                       ; $5070: $d5
    ld c, c                                       ; $5071: $49
    and d                                         ; $5072: $a2
    ld a, $10                                     ; $5073: $3e $10
    ld [$005c], sp                                ; $5075: $08 $5c $00
    ld c, [hl]                                    ; $5078: $4e
    ld l, h                                       ; $5079: $6c
    ld b, $a4                                     ; $507a: $06 $a4
    add d                                         ; $507c: $82
    sub b                                         ; $507d: $90
    add d                                         ; $507e: $82
    ret c                                         ; $507f: $d8

    nop                                           ; $5080: $00
    ld a, [bc]                                    ; $5081: $0a
    ret c                                         ; $5082: $d8

    sub d                                         ; $5083: $92
    nop                                           ; $5084: $00
    cp $fe                                        ; $5085: $fe $fe

jr_0d0_5087:
    nop                                           ; $5087: $00
    nop                                           ; $5088: $00
    ld bc, $00ea                                  ; $5089: $01 $ea $00
    ld [$ff80], sp                                ; $508c: $08 $80 $ff
    cp a                                          ; $508f: $bf
    ret nz                                        ; $5090: $c0

    ld [bc], a                                    ; $5091: $02
    ld c, b                                       ; $5092: $48
    rst $38                                       ; $5093: $ff
    nop                                           ; $5094: $00
    nop                                           ; $5095: $00
    nop                                           ; $5096: $00
    cp $f9                                        ; $5097: $fe $f9
    ld bc, $06f0                                  ; $5099: $01 $f0 $06
    ld bc, $07e0                                  ; $509c: $01 $e0 $07
    nop                                           ; $509f: $00
    pop bc                                        ; $50a0: $c1
    rrca                                          ; $50a1: $0f
    add [hl]                                      ; $50a2: $86
    inc c                                         ; $50a3: $0c
    nop                                           ; $50a4: $00
    nop                                           ; $50a5: $00
    rst $38                                       ; $50a6: $ff
    inc bc                                        ; $50a7: $03
    nop                                           ; $50a8: $00
    nop                                           ; $50a9: $00
    db $fc                                        ; $50aa: $fc
    db $fc                                        ; $50ab: $fc
    ld de, $2222                                  ; $50ac: $11 $22 $22
    call z, Call_000_007c                         ; $50af: $cc $7c $00
    rst $38                                       ; $50b2: $ff
    inc bc                                        ; $50b3: $03
    inc bc                                        ; $50b4: $03
    ret c                                         ; $50b5: $d8

    inc h                                         ; $50b6: $24

jr_0d0_50b7:
    cp $00                                        ; $50b7: $fe $00
    ld [bc], a                                    ; $50b9: $02
    nop                                           ; $50ba: $00
    db $fc                                        ; $50bb: $fc
    ld a, l                                       ; $50bc: $7d
    inc bc                                        ; $50bd: $03
    dec a                                         ; $50be: $3d
    inc bc                                        ; $50bf: $03
    cp h                                          ; $50c0: $bc
    add d                                         ; $50c1: $82
    sbc h                                         ; $50c2: $9c
    inc b                                         ; $50c3: $04
    jp nz, $821c                                  ; $50c4: $c2 $1c $82

    call c, Call_000_3ec2                         ; $50c7: $dc $c2 $3e
    db $10                                        ; $50ca: $10
    ld b, b                                       ; $50cb: $40
    cp a                                          ; $50cc: $bf
    nop                                           ; $50cd: $00
    ld b, c                                       ; $50ce: $41
    cp a                                          ; $50cf: $bf
    ld b, e                                       ; $50d0: $43
    cp [hl]                                       ; $50d1: $be
    ld b, c                                       ; $50d2: $41
    cp a                                          ; $50d3: $bf
    ld b, d                                       ; $50d4: $42
    cp e                                          ; $50d5: $bb
    nop                                           ; $50d6: $00
    ld b, l                                       ; $50d7: $45
    or d                                          ; $50d8: $b2
    or c                                          ; $50d9: $b1
    cpl                                           ; $50da: $2f
    jr z, jr_0d0_50e9                             ; $50db: $28 $0c

    dec bc                                        ; $50dd: $0b
    cp $00                                        ; $50de: $fe $00
    ld de, $6bdf                                  ; $50e0: $11 $df $6b
    jp z, $f763                                   ; $50e3: $ca $63 $f7

    ld b, l                                       ; $50e6: $45
    sbc a                                         ; $50e7: $9f
    nop                                           ; $50e8: $00

jr_0d0_50e9:
    jr c, jr_0d0_5087                             ; $50e9: $38 $9c

    ld [hl], d                                    ; $50eb: $72
    ld a, c                                       ; $50ec: $79
    rst $30                                       ; $50ed: $f7
    jr c, jr_0d0_50b7                             ; $50ee: $38 $c7

    dec e                                         ; $50f0: $1d
    nop                                           ; $50f1: $00
    nop                                           ; $50f2: $00
    ld [$99f7], a                                 ; $50f3: $ea $f7 $99
    sub c                                         ; $50f6: $91
    sbc h                                         ; $50f7: $9c
    dec [hl]                                      ; $50f8: $35
    rst $38                                       ; $50f9: $ff
    nop                                           ; $50fa: $00
    db $e4                                        ; $50fb: $e4
    ld e, h                                       ; $50fc: $5c
    ld b, d                                       ; $50fd: $42
    cp h                                          ; $50fe: $bc
    ld [bc], a                                    ; $50ff: $02
    add d                                         ; $5100: $82
    cp h                                          ; $5101: $bc
    and d                                         ; $5102: $a2
    nop                                           ; $5103: $00
    db $fc                                        ; $5104: $fc
    ld [hl-], a                                   ; $5105: $32
    call c, $9c62                                 ; $5106: $dc $62 $9c
    ld b, d                                       ; $5109: $42
    cp h                                          ; $510a: $bc
    ld a, [de]                                    ; $510b: $1a
    nop                                           ; $510c: $00
    db $fc                                        ; $510d: $fc
    cp l                                          ; $510e: $bd
    jp nz, $c1be                                  ; $510f: $c2 $be $c1

    cp [hl]                                       ; $5112: $be
    ret nz                                        ; $5113: $c0

    cp [hl]                                       ; $5114: $be
    nop                                           ; $5115: $00
    ret nz                                        ; $5116: $c0

    db $fc                                        ; $5117: $fc
    ld b, c                                       ; $5118: $41
    ld hl, sp+$43                                 ; $5119: $f8 $43
    dec sp                                        ; $511b: $3b
    ld hl, sp+$03                                 ; $511c: $f8 $03
    nop                                           ; $511e: $00
    ret nz                                        ; $511f: $c0

    add a                                         ; $5120: $87
    ld e, b                                       ; $5121: $58
    daa                                           ; $5122: $27
    xor b                                         ; $5123: $a8
    db $ec                                        ; $5124: $ec
    db $e3                                        ; $5125: $e3
    and $00                                       ; $5126: $e6 $00
    jp hl                                         ; $5128: $e9


    rrca                                          ; $5129: $0f
    ld [hl-], a                                   ; $512a: $32
    rlca                                          ; $512b: $07
    add hl, sp                                    ; $512c: $39
    dec bc                                        ; $512d: $0b
    ccf                                           ; $512e: $3f
    dec h                                         ; $512f: $25
    nop                                           ; $5130: $00
    rra                                           ; $5131: $1f
    ei                                            ; $5132: $fb
    ld [$01fe], sp                                ; $5133: $08 $fe $01
    cp h                                          ; $5136: $bc
    ld a, d                                       ; $5137: $7a
    call z, Call_000_2a00                         ; $5138: $cc $00 $2a
    jp hl                                         ; $513b: $e9


    dec d                                         ; $513c: $15
    ldh a, [$08]                                  ; $513d: $f0 $08
    ld hl, sp+$08                                 ; $513f: $f8 $08
    jr z, jr_0d0_5143                             ; $5141: $28 $00

jr_0d0_5143:
    ld sp, hl                                     ; $5143: $f9
    ld l, d                                       ; $5144: $6a
    sub h                                         ; $5145: $94
    ld a, [$7c8c]                                 ; $5146: $fa $8c $7c
    ld c, $7c                                     ; $5149: $0e $7c
    nop                                           ; $514b: $00
    ld a, [hl]                                    ; $514c: $7e
    cp h                                          ; $514d: $bc
    ld a, $dc                                     ; $514e: $3e $dc
    ld e, $82                                     ; $5150: $1e $82
    inc e                                         ; $5152: $1c
    ld [hl+], a                                   ; $5153: $22
    nop                                           ; $5154: $00
    inc l                                         ; $5155: $2c
    ld e, e                                       ; $5156: $5b
    ret nz                                        ; $5157: $c0

    ld [hl], c                                    ; $5158: $71
    ret nz                                        ; $5159: $c0

    ret nz                                        ; $515a: $c0

    ld a, h                                       ; $515b: $7c
    ret nz                                        ; $515c: $c0

    ld b, b                                       ; $515d: $40
    ld a, [hl]                                    ; $515e: $7e
    ld [bc], a                                    ; $515f: $02
    nop                                           ; $5160: $00
    ld a, a                                       ; $5161: $7f
    add b                                         ; $5162: $80
    ld a, a                                       ; $5163: $7f
    rst $38                                       ; $5164: $ff
    nop                                           ; $5165: $00
    ld d, $00                                     ; $5166: $16 $00
    and $09                                       ; $5168: $e6 $09
    pop af                                        ; $516a: $f1
    ldh a, [$08]                                  ; $516b: $f0 $08
    ldh a, [$88]                                  ; $516d: $f0 $88
    inc c                                         ; $516f: $0c
    db $10                                        ; $5170: $10
    ld a, h                                       ; $5171: $7c

jr_0d0_5172:
    inc c                                         ; $5172: $0c
    ld [hl], h                                    ; $5173: $74
    call z, RST_00                                ; $5174: $cc $00 $00
    rla                                           ; $5177: $17
    ld b, $6e                                     ; $5178: $06 $6e
    nop                                           ; $517a: $00
    adc h                                         ; $517b: $8c
    call c, Call_000_1dc2                         ; $517c: $dc $c2 $1d
    ld [bc], a                                    ; $517f: $02
    ld e, $01                                     ; $5180: $1e $01
    rst $08                                       ; $5182: $cf
    add b                                         ; $5183: $80
    call c, RST_08                                ; $5184: $dc $08 $00
    ld [bc], a                                    ; $5187: $02
    ld [hl], b                                    ; $5188: $70
    ld e, d                                       ; $5189: $5a
    ld a, h                                       ; $518a: $7c
    ld h, d                                       ; $518b: $62
    ld a, h                                       ; $518c: $7c
    nop                                           ; $518d: $00
    ld e, [hl]                                    ; $518e: $5e
    ld e, h                                       ; $518f: $5c
    ld [bc], a                                    ; $5190: $02
    ld [bc], a                                    ; $5191: $02
    add d                                         ; $5192: $82
    ld b, d                                       ; $5193: $42
    nop                                           ; $5194: $00
    cp $00                                        ; $5195: $fe $00
    cp $00                                        ; $5197: $fe $00
    nop                                           ; $5199: $00
    ld bc, $00ec                                  ; $519a: $01 $ec $00
    nop                                           ; $519d: $00
    ld a, a                                       ; $519e: $7f
    rst $38                                       ; $519f: $ff
    ld a, a                                       ; $51a0: $7f
    ret nz                                        ; $51a1: $c0

    ld a, a                                       ; $51a2: $7f
    ret nz                                        ; $51a3: $c0

    ld a, [hl]                                    ; $51a4: $7e
    ret nz                                        ; $51a5: $c0

    nop                                           ; $51a6: $00
    ld a, l                                       ; $51a7: $7d
    ret nz                                        ; $51a8: $c0

    ld a, b                                       ; $51a9: $78
    ret nz                                        ; $51aa: $c0

    ld b, a                                       ; $51ab: $47
    add a                                         ; $51ac: $87
    ld a, a                                       ; $51ad: $7f
    cp a                                          ; $51ae: $bf
    nop                                           ; $51af: $00
    rst $38                                       ; $51b0: $ff
    nop                                           ; $51b1: $00
    jr nc, jr_0d0_5172                            ; $51b2: $30 $be

    rra                                           ; $51b4: $1f
    ld h, e                                       ; $51b5: $63

jr_0d0_51b6:
    rra                                           ; $51b6: $1f
    db $e3                                        ; $51b7: $e3
    nop                                           ; $51b8: $00
    ccf                                           ; $51b9: $3f
    rst $00                                       ; $51ba: $c7
    inc bc                                        ; $51bb: $03
    inc bc                                        ; $51bc: $03
    ld [$e1f0], sp                                ; $51bd: $08 $f0 $e1
    cp $00                                        ; $51c0: $fe $00

jr_0d0_51c2:
    rst $38                                       ; $51c2: $ff
    nop                                           ; $51c3: $00
    ldh a, [$f8]                                  ; $51c4: $f0 $f8
    rra                                           ; $51c6: $1f
    rst $20                                       ; $51c7: $e7
    ld a, $ce                                     ; $51c8: $3e $ce
    nop                                           ; $51ca: $00
    ld a, $ce                                     ; $51cb: $3e $ce
    ld a, [hl]                                    ; $51cd: $7e
    adc [hl]                                      ; $51ce: $8e
    ld a, h                                       ; $51cf: $7c
    sbc h                                         ; $51d0: $9c
    adc h                                         ; $51d1: $8c

jr_0d0_51d2:
    ld a, h                                       ; $51d2: $7c
    ld bc, $00fe                                  ; $51d3: $01 $fe $00

jr_0d0_51d6:
    ld [bc], a                                    ; $51d6: $02
    db $fc                                        ; $51d7: $fc
    ld a, l                                       ; $51d8: $7d
    inc bc                                        ; $51d9: $03
    dec a                                         ; $51da: $3d
    ld [bc], a                                    ; $51db: $02
    db $10                                        ; $51dc: $10
    ld b, b                                       ; $51dd: $40
    dec e                                         ; $51de: $1d
    ld [bc], a                                    ; $51df: $02
    nop                                           ; $51e0: $00
    rst $00                                       ; $51e1: $c7
    ccf                                           ; $51e2: $3f
    db $fd                                        ; $51e3: $fd
    dec a                                         ; $51e4: $3d
    add hl, sp                                    ; $51e5: $39
    ret nz                                        ; $51e6: $c0

    nop                                           ; $51e7: $00
    inc [hl]                                      ; $51e8: $34
    call nz, $c313                                ; $51e9: $c4 $13 $c3
    cpl                                           ; $51ec: $2f
    rst $08                                       ; $51ed: $cf
    ld [hl], $c6                                  ; $51ee: $36 $c6
    inc b                                         ; $51f0: $04
    jr nc, @-$3e                                  ; $51f1: $30 $c0

    nop                                           ; $51f3: $00
    nop                                           ; $51f4: $00
    rst $38                                       ; $51f5: $ff
    ld [bc], a                                    ; $51f6: $02
    nop                                           ; $51f7: $00
    ld a, h                                       ; $51f8: $7c
    ld [bc], a                                    ; $51f9: $02
    nop                                           ; $51fa: $00
    jr c, jr_0d0_51b6                             ; $51fb: $38 $b9

    jr jr_0d0_51d2                                ; $51fd: $18 $d3

    jr jr_0d0_5211                                ; $51ff: $18 $10

jr_0d0_5201:
    ld c, h                                       ; $5201: $4c
    db $fd                                        ; $5202: $fd
    nop                                           ; $5203: $00
    jr nc, jr_0d0_51d6                            ; $5204: $30 $d0

    ld e, $02                                     ; $5206: $1e $02
    add e                                         ; $5208: $83
    add b                                         ; $5209: $80
    inc e                                         ; $520a: $1c
    ld e, h                                       ; $520b: $5c
    nop                                           ; $520c: $00
    ld [bc], a                                    ; $520d: $02
    jp nz, Jump_000_00fd                          ; $520e: $c2 $fd $00

jr_0d0_5211:
    dec de                                        ; $5211: $1b
    ld [bc], a                                    ; $5212: $02
    inc bc                                        ; $5213: $03
    ld h, d                                       ; $5214: $62
    add b                                         ; $5215: $80
    inc [hl]                                      ; $5216: $34
    ld [$1c02], sp                                ; $5217: $08 $02 $1c
    jp nz, Jump_0d0_72c4                          ; $521a: $c2 $c4 $72

    ld a, b                                       ; $521d: $78
    ld [bc], a                                    ; $521e: $02
    nop                                           ; $521f: $00
    jr jr_0d0_51c2                                ; $5220: $18 $a0

    ld [bc], a                                    ; $5222: $02
    and b                                         ; $5223: $a0
    and d                                         ; $5224: $a2
    ccf                                           ; $5225: $3f
    ret nz                                        ; $5226: $c0

    ccf                                           ; $5227: $3f
    nop                                           ; $5228: $00
    ret z                                         ; $5229: $c8

    call nz, $c7fb                                ; $522a: $c4 $fb $c7
    ld hl, sp-$3d                                 ; $522d: $f8 $c3
    db $f4                                        ; $522f: $f4
    ret nz                                        ; $5230: $c0

    ld b, b                                       ; $5231: $40
    rst $30                                       ; $5232: $f7
    add e                                         ; $5233: $83
    nop                                           ; $5234: $00
    ld a, a                                       ; $5235: $7f
    sbc h                                         ; $5236: $9c
    sub d                                         ; $5237: $92
    rst $38                                       ; $5238: $ff
    and b                                         ; $5239: $a0
    ld de, $ff00                                  ; $523a: $11 $00 $ff
    call nz, $9313                                ; $523d: $c4 $13 $93
    jr c, jr_0d0_527a                             ; $5240: $38 $38

    ld a, e                                       ; $5242: $7b
    add h                                         ; $5243: $84
    nop                                           ; $5244: $00
    add sp, -$39                                  ; $5245: $e8 $c7
    add sp, $1d                                   ; $5247: $e8 $1d
    ei                                            ; $5249: $fb
    and $f5                                       ; $524a: $e6 $f5
    inc sp                                        ; $524c: $33
    nop                                           ; $524d: $00
    push hl                                       ; $524e: $e5
    db $e3                                        ; $524f: $e3
    call z, Call_000_0fe3                         ; $5250: $cc $e3 $0f
    ld [bc], a                                    ; $5253: $02
    ld e, $3c                                     ; $5254: $1e $3c
    nop                                           ; $5256: $00
    add hl, sp                                    ; $5257: $39
    ld hl, sp-$0f                                 ; $5258: $f8 $f1
    add b                                         ; $525a: $80
    ld [hl+], a                                   ; $525b: $22
    db $f4                                        ; $525c: $f4
    add [hl]                                      ; $525d: $86
    ld c, b                                       ; $525e: $48
    nop                                           ; $525f: $00
    ld [bc], a                                    ; $5260: $02
    inc [hl]                                      ; $5261: $34
    add [hl]                                      ; $5262: $86
    ld [hl], h                                    ; $5263: $74
    ld b, [hl]                                    ; $5264: $46
    call nc, $8206                                ; $5265: $d4 $06 $82
    ld de, $821e                                  ; $5268: $11 $1e $82
    ld c, [hl]                                    ; $526b: $4e
    cp l                                          ; $526c: $bd
    nop                                           ; $526d: $00
    ld a, a                                       ; $526e: $7f
    ret nz                                        ; $526f: $c0

    ld b, b                                       ; $5270: $40
    ld [bc], a                                    ; $5271: $02
    nop                                           ; $5272: $00
    nop                                           ; $5273: $00
    cp $c1                                        ; $5274: $fe $c1
    db $fc                                        ; $5276: $fc
    add b                                         ; $5277: $80
    ld a, a                                       ; $5278: $7f
    rst $38                                       ; $5279: $ff

jr_0d0_527a:
    nop                                           ; $527a: $00
    rst $18                                       ; $527b: $df
    nop                                           ; $527c: $00
    ldh [$1f], a                                  ; $527d: $e0 $1f
    jr nz, jr_0d0_5201                            ; $527f: $20 $80

    sbc a                                         ; $5281: $9f
    ld h, b                                       ; $5282: $60
    rrca                                          ; $5283: $0f
    jr nc, jr_0d0_5286                            ; $5284: $30 $00

jr_0d0_5286:
    ldh a, [rIF]                                  ; $5286: $f0 $0f
    ret nz                                        ; $5288: $c0

    rst $38                                       ; $5289: $ff
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    ldh a, [rP1]                                  ; $528d: $f0 $00
    db $e4                                        ; $528f: $e4
    ldh [$cc], a                                  ; $5290: $e0 $cc
    ret                                           ; $5292: $c9


    sub l                                         ; $5293: $95
    add hl, sp                                    ; $5294: $39
    dec b                                         ; $5295: $05
    pop af                                        ; $5296: $f1
    db $10                                        ; $5297: $10
    ld a, [$f4e3]                                 ; $5298: $fa $e3 $f4
    db $10                                        ; $529b: $10
    ld [$fc82], sp                                ; $529c: $08 $82 $fc
    ld [bc], a                                    ; $529f: $02
    db $fc                                        ; $52a0: $fc
    nop                                           ; $52a1: $00
    ld [bc], a                                    ; $52a2: $02
    ld a, [hl]                                    ; $52a3: $7e
    add d                                         ; $52a4: $82
    ld a, $dc                                     ; $52a5: $3e $dc
    ld e, [hl]                                    ; $52a7: $5e
    call z, Call_000_000e                         ; $52a8: $cc $0e $00
    nop                                           ; $52ab: $00
    cp $fe                                        ; $52ac: $fe $fe
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    ld bc, $00f1                                  ; $52b0: $01 $f1 $00
    nop                                           ; $52b3: $00
    ld a, a                                       ; $52b4: $7f
    rst $38                                       ; $52b5: $ff
    ld a, a                                       ; $52b6: $7f
    ret nz                                        ; $52b7: $c0

    cp a                                          ; $52b8: $bf
    ret nz                                        ; $52b9: $c0

    cp [hl]                                       ; $52ba: $be
    ret nz                                        ; $52bb: $c0

    nop                                           ; $52bc: $00
    ld a, l                                       ; $52bd: $7d
    pop bc                                        ; $52be: $c1
    ld a, l                                       ; $52bf: $7d
    pop bc                                        ; $52c0: $c1
    ld a, d                                       ; $52c1: $7a
    jp $c37a                                      ; $52c2: $c3 $7a $c3


    nop                                           ; $52c5: $00
    rst $38                                       ; $52c6: $ff
    nop                                           ; $52c7: $00
    nop                                           ; $52c8: $00
    ld a, $00                                     ; $52c9: $3e $00
    ld a, $3e                                     ; $52cb: $3e $3e
    ld sp, hl                                     ; $52cd: $f9
    nop                                           ; $52ce: $00
    ld a, [hl]                                    ; $52cf: $7e
    cp l                                          ; $52d0: $bd
    push bc                                       ; $52d1: $c5
    inc bc                                        ; $52d2: $03
    jp $80f0                                      ; $52d3: $c3 $f0 $80


    ld a, b                                       ; $52d6: $78
    add b                                         ; $52d7: $80
    stop                                          ; $52d8: $10 $00
    inc a                                         ; $52da: $3c
    cp h                                          ; $52db: $bc
    inc a                                         ; $52dc: $3c
    ld b, e                                       ; $52dd: $43
    ld [hl], a                                    ; $52de: $77
    cp [hl]                                       ; $52df: $be
    ld e, l                                       ; $52e0: $5d
    nop                                           ; $52e1: $00
    dec bc                                        ; $52e2: $0b
    ld [hl-], a                                   ; $52e3: $32
    ld h, e                                       ; $52e4: $63
    or e                                          ; $52e5: $b3
    rlca                                          ; $52e6: $07
    cpl                                           ; $52e7: $2f
    cp $00                                        ; $52e8: $fe $00
    nop                                           ; $52ea: $00
    ld [bc], a                                    ; $52eb: $02
    db $fc                                        ; $52ec: $fc
    db $fc                                        ; $52ed: $fc
    ld [bc], a                                    ; $52ee: $02
    db $fc                                        ; $52ef: $fc
    add d                                         ; $52f0: $82
    cp h                                          ; $52f1: $bc
    add d                                         ; $52f2: $82
    nop                                           ; $52f3: $00

Jump_0d0_52f4:
    ld e, h                                       ; $52f4: $5c
    jp nz, $425c                                  ; $52f5: $c2 $5c $42

    inc l                                         ; $52f8: $2c
    ld h, d                                       ; $52f9: $62
    ld a, d                                       ; $52fa: $7a
    jp $7848                                      ; $52fb: $c3 $48 $78


    ld [bc], a                                    ; $52fe: $02
    nop                                           ; $52ff: $00
    ld a, h                                       ; $5300: $7c
    pop bc                                        ; $5301: $c1
    ld [bc], a                                    ; $5302: $02
    ld [$c07e], sp                                ; $5303: $08 $7e $c0
    ld a, [hl]                                    ; $5306: $7e
    nop                                           ; $5307: $00
    ret nz                                        ; $5308: $c0

    nop                                           ; $5309: $00
    and a                                         ; $530a: $a7
    rst $08                                       ; $530b: $cf
    ret nc                                        ; $530c: $d0

    sub b                                         ; $530d: $90
    rst $08                                       ; $530e: $cf
    adc a                                         ; $530f: $8f
    nop                                           ; $5310: $00
    sub b                                         ; $5311: $90
    ld d, c                                       ; $5312: $51
    pop af                                        ; $5313: $f1
    dec bc                                        ; $5314: $0b
    call $8849                                    ; $5315: $cd $49 $88
    ld e, a                                       ; $5318: $5f
    nop                                           ; $5319: $00
    add b                                         ; $531a: $80
    ret nz                                        ; $531b: $c0

    ret nz                                        ; $531c: $c0

    db $fc                                        ; $531d: $fc
    dec a                                         ; $531e: $3d
    add h                                         ; $531f: $84
    ld a, [$00fa]                                 ; $5320: $fa $fa $00
    db $fc                                        ; $5323: $fc
    ld [bc], a                                    ; $5324: $02
    rst $00                                       ; $5325: $c7
    ld sp, $c9d9                                  ; $5326: $31 $d9 $c9
    jr jr_0d0_53a8                                ; $5329: $18 $7d

    nop                                           ; $532b: $00
    add b                                         ; $532c: $80
    inc l                                         ; $532d: $2c
    ld h, d                                       ; $532e: $62
    inc l                                         ; $532f: $2c
    ld [hl+], a                                   ; $5330: $22
    ld l, $e2                                     ; $5331: $2e $e2
    ld l, $00                                     ; $5333: $2e $00
    ld h, d                                       ; $5335: $62
    ld c, $e2                                     ; $5336: $0e $e2
    ld e, $c2                                     ; $5338: $1e $c2
    ld a, $82                                     ; $533a: $3e $82
    ld a, $40                                     ; $533c: $3e $40
    add d                                         ; $533e: $82
    inc [hl]                                      ; $533f: $34
    ld [$c82e], sp                                ; $5340: $08 $2e $c8
    daa                                           ; $5343: $27
    ret                                           ; $5344: $c9


    add sp, -$31                                  ; $5345: $e8 $cf
    nop                                           ; $5347: $00
    rst $20                                       ; $5348: $e7
    rst $00                                       ; $5349: $c7
    scf                                           ; $534a: $37
    rst $00                                       ; $534b: $c7
    dec sp                                        ; $534c: $3b
    jp $8f1e                                      ; $534d: $c3 $1e $8f


    nop                                           ; $5350: $00
    sbc a                                         ; $5351: $9f
    ld c, a                                       ; $5352: $4f
    adc a                                         ; $5353: $8f
    ld [hl], d                                    ; $5354: $72
    adc [hl]                                      ; $5355: $8e
    ld h, c                                       ; $5356: $61
    db $fc                                        ; $5357: $fc
    ld a, e                                       ; $5358: $7b
    nop                                           ; $5359: $00
    rst $20                                       ; $535a: $e7
    and $c7                                       ; $535b: $e6 $c7
    pop bc                                        ; $535d: $c1
    or c                                          ; $535e: $b1
    sub [hl]                                      ; $535f: $96
    inc a                                         ; $5360: $3c
    ld a, b                                       ; $5361: $78
    nop                                           ; $5362: $00
    ld a, h                                       ; $5363: $7c
    ld sp, hl                                     ; $5364: $f9

jr_0d0_5365:
    ei                                            ; $5365: $fb
    daa                                           ; $5366: $27
    ld a, [hl-]                                   ; $5367: $3a
    jp $f103                                      ; $5368: $c3 $03 $f1


    nop                                           ; $536b: $00
    inc bc                                        ; $536c: $03
    jp nz, $c6f7                                  ; $536d: $c2 $f7 $c6

    jp Jump_000_3e33                              ; $5370: $c3 $33 $3e


    add d                                         ; $5373: $82
    nop                                           ; $5374: $00

jr_0d0_5375:
    ld [hl], $82                                  ; $5375: $36 $82
    or h                                          ; $5377: $b4
    sub d                                         ; $5378: $92
    ld h, h                                       ; $5379: $64

jr_0d0_537a:
    ld a, [c]                                     ; $537a: $f2
    ld b, $e2                                     ; $537b: $06 $e2
    nop                                           ; $537d: $00
    ld c, $c2                                     ; $537e: $0e $c2
    call z, $9cc2                                 ; $5380: $cc $c2 $9c
    add d                                         ; $5383: $82
    ld a, h                                       ; $5384: $7c
    ret nz                                        ; $5385: $c0

    nop                                           ; $5386: $00
    ld [hl], b                                    ; $5387: $70
    ret nz                                        ; $5388: $c0

    adc a                                         ; $5389: $8f
    ld c, b                                       ; $538a: $48
    or e                                          ; $538b: $b3
    ld a, h                                       ; $538c: $7c
    cp a                                          ; $538d: $bf
    cp $00                                        ; $538e: $fe $00
    cp a                                          ; $5390: $bf
    cp $80                                        ; $5391: $fe $80
    ld a, a                                       ; $5393: $7f
    rst $38                                       ; $5394: $ff
    nop                                           ; $5395: $00
    ld [hl], e                                    ; $5396: $73
    ld d, h                                       ; $5397: $54
    nop                                           ; $5398: $00
    ldh a, [$87]                                  ; $5399: $f0 $87
    ld a, b                                       ; $539b: $78
    dec bc                                        ; $539c: $0b
    ld a, h                                       ; $539d: $7c
    ld b, l                                       ; $539e: $45
    jr c, jr_0d0_53ba                             ; $539f: $38 $19

    jr nz, jr_0d0_53bb                            ; $53a1: $20 $18

    add a                                         ; $53a3: $87
    call z, RST_00                                ; $53a4: $cc $00 $00
    inc b                                         ; $53a7: $04

jr_0d0_53a8:
    db $f4                                        ; $53a8: $f4
    inc c                                         ; $53a9: $0c
    ldh [rP1], a                                  ; $53aa: $e0 $00
    call z, $9cca                                 ; $53ac: $cc $ca $9c
    adc d                                         ; $53af: $8a
    cp h                                          ; $53b0: $bc
    sub c                                         ; $53b1: $91
    jr jr_0d0_5375                                ; $53b2: $18 $c1

    add b                                         ; $53b4: $80
    db $10                                        ; $53b5: $10
    ld [$427c], sp                                ; $53b6: $08 $7c $42
    ld a, h                                       ; $53b9: $7c

jr_0d0_53ba:
    ld [bc], a                                    ; $53ba: $02

jr_0d0_53bb:
    add d                                         ; $53bb: $82
    ld b, $7a                                     ; $53bc: $06 $7a
    nop                                           ; $53be: $00
    ld [bc], a                                    ; $53bf: $02
    ld [hl], d                                    ; $53c0: $72
    ld c, $7a                                     ; $53c1: $0e $7a
    ld b, $00                                     ; $53c3: $06 $00
    cp $fe                                        ; $53c5: $fe $fe
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    ld bc, $00f1                                  ; $53ca: $01 $f1 $00
    nop                                           ; $53cd: $00
    add b                                         ; $53ce: $80
    ld a, a                                       ; $53cf: $7f
    cp [hl]                                       ; $53d0: $be
    ld a, [hl]                                    ; $53d1: $7e
    cp [hl]                                       ; $53d2: $be
    ld b, a                                       ; $53d3: $47
    cp h                                          ; $53d4: $bc
    ld c, a                                       ; $53d5: $4f
    nop                                           ; $53d6: $00
    ld [c], a                                     ; $53d7: $e2
    ld e, l                                       ; $53d8: $5d
    ret nz                                        ; $53d9: $c0

    halt                                          ; $53da: $76
    ld l, h                                       ; $53db: $6c
    pop bc                                        ; $53dc: $c1
    ld [hl], e                                    ; $53dd: $73
    ret z                                         ; $53de: $c8

    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    rst $38                                       ; $53e1: $ff
    pop hl                                        ; $53e2: $e1
    jr nz, jr_0d0_5365                            ; $53e3: $20 $80

    sbc [hl]                                      ; $53e5: $9e
    and [hl]                                      ; $53e6: $a6
    stop                                          ; $53e7: $10 $00
    ld e, d                                       ; $53e9: $5a
    jr c, jr_0d0_537a                             ; $53ea: $38 $8e

    ld h, h                                       ; $53ec: $64
    jp z, $1ae8                                   ; $53ed: $ca $e8 $1a

    add $00                                       ; $53f0: $c6 $00
    nop                                           ; $53f2: $00
    rst $38                                       ; $53f3: $ff
    jp $c442                                      ; $53f4: $c3 $42 $c4


    ld c, a                                       ; $53f7: $4f
    ld b, d                                       ; $53f8: $42
    ld h, d                                       ; $53f9: $62
    nop                                           ; $53fa: $00
    ld c, c                                       ; $53fb: $49
    ld a, c                                       ; $53fc: $79
    ld c, l                                       ; $53fd: $4d
    ld h, a                                       ; $53fe: $67
    ld b, a                                       ; $53ff: $47
    pop bc                                        ; $5400: $c1
    add d                                         ; $5401: $82
    ld b, a                                       ; $5402: $47
    nop                                           ; $5403: $00
    ld bc, $7dff                                  ; $5404: $01 $ff $7d
    inc bc                                        ; $5407: $03
    ld a, $82                                     ; $5408: $3e $82
    ld e, $42                                     ; $540a: $1e $42
    nop                                           ; $540c: $00
    ld [hl+], a                                   ; $540d: $22
    ld c, $b2                                     ; $540e: $0e $b2
    ld c, $f8                                     ; $5410: $0e $f8
    ld l, [hl]                                    ; $5412: $6e
    ld hl, sp+$4e                                 ; $5413: $f8 $4e
    nop                                           ; $5415: $00
    adc [hl]                                      ; $5416: $8e
    ld e, d                                       ; $5417: $5a
    cp [hl]                                       ; $5418: $be
    ld l, b                                       ; $5419: $68
    ccf                                           ; $541a: $3f
    push de                                       ; $541b: $d5
    ccf                                           ; $541c: $3f
    xor $00                                       ; $541d: $ee $00
    ret nz                                        ; $541f: $c0

    ld [hl], a                                    ; $5420: $77
    ret nz                                        ; $5421: $c0

    ld [hl], e                                    ; $5422: $73
    ret nz                                        ; $5423: $c0

    ld b, b                                       ; $5424: $40
    ret nz                                        ; $5425: $c0

    ld b, h                                       ; $5426: $44
    nop                                           ; $5427: $00
    inc d                                         ; $5428: $14
    rst $28                                       ; $5429: $ef
    inc e                                         ; $542a: $1c
    ldh a, [$94]                                  ; $542b: $f0 $94
    and c                                         ; $542d: $a1
    ld l, h                                       ; $542e: $6c
    ld b, a                                       ; $542f: $47
    nop                                           ; $5430: $00
    ld c, h                                       ; $5431: $4c
    ld a, [bc]                                    ; $5432: $0a
    rst $10                                       ; $5433: $d7
    call z, $b4ab                                 ; $5434: $cc $ab $b4
    xor b                                         ; $5437: $a8
    sbc [hl]                                      ; $5438: $9e
    nop                                           ; $5439: $00
    pop af                                        ; $543a: $f1
    db $eb                                        ; $543b: $eb
    ld [hl], a                                    ; $543c: $77
    rst $18                                       ; $543d: $df
    ld hl, sp+$70                                 ; $543e: $f8 $70
    or b                                          ; $5440: $b0
    add sp, $00                                   ; $5441: $e8 $00
    ld c, b                                       ; $5443: $48
    sub b                                         ; $5444: $90
    ld h, $70                                     ; $5445: $26 $70
    rst $18                                       ; $5447: $df
    ld hl, $5c50                                  ; $5448: $21 $50 $5c
    nop                                           ; $544b: $00
    ld a, b                                       ; $544c: $78
    ld c, [hl]                                    ; $544d: $4e
    jr c, jr_0d0_545e                             ; $544e: $38 $0e

    ld b, $3a                                     ; $5450: $06 $3a
    ld b, $0a                                     ; $5452: $06 $0a
    nop                                           ; $5454: $00
    ld d, $18                                     ; $5455: $16 $18
    add $c8                                       ; $5457: $c6 $c8
    ld c, $ca                                     ; $5459: $0e $ca
    sbc [hl]                                      ; $545b: $9e
    ld [bc], a                                    ; $545c: $02
    nop                                           ; $545d: $00

jr_0d0_545e:
    jp nz, $e406                                  ; $545e: $c2 $06 $e4

    ld b, $83                                     ; $5461: $06 $83
    ld [hl], d                                    ; $5463: $72
    add c                                         ; $5464: $81
    ld a, c                                       ; $5465: $79
    ld [$7c80], sp                                ; $5466: $08 $80 $7c
    add c                                         ; $5469: $81
    ld a, a                                       ; $546a: $7f
    ld [bc], a                                    ; $546b: $02
    ld [$1a34], sp                                ; $546c: $08 $34 $1a
    scf                                           ; $546f: $37
    nop                                           ; $5470: $00
    dec de                                        ; $5471: $1b
    jr c, jr_0d0_5493                             ; $5472: $38 $1f

    ccf                                           ; $5474: $3f
    inc e                                         ; $5475: $1c
    rra                                           ; $5476: $1f
    ccf                                           ; $5477: $3f
    ld a, a                                       ; $5478: $7f
    nop                                           ; $5479: $00
    ccf                                           ; $547a: $3f
    ld a, $1f                                     ; $547b: $3e $1f
    rra                                           ; $547d: $1f
    ld l, $8c                                     ; $547e: $2e $8c
    push de                                       ; $5480: $d5
    xor a                                         ; $5481: $af
    nop                                           ; $5482: $00
    add hl, de                                    ; $5483: $19
    ld [hl], b                                    ; $5484: $70
    ld [hl], $f6                                  ; $5485: $36 $f6
    ret                                           ; $5487: $c9


    ld bc, $03cf                                  ; $5488: $01 $cf $03
    nop                                           ; $548b: $00
    cp $fe                                        ; $548c: $fe $fe
    inc bc                                        ; $548e: $03
    ld hl, sp-$0d                                 ; $548f: $f8 $f3
    sbc [hl]                                      ; $5491: $9e
    ld [hl+], a                                   ; $5492: $22

jr_0d0_5493:
    ld a, $06                                     ; $5493: $3e $06
    ld b, d                                       ; $5495: $42
    db $fc                                        ; $5496: $fc
    ld [bc], a                                    ; $5497: $02
    db $fc                                        ; $5498: $fc
    cp $04                                        ; $5499: $fe $04
    db $10                                        ; $549b: $10
    ld b, $00                                     ; $549c: $06 $00
    add c                                         ; $549e: $81
    nop                                           ; $549f: $00
    ld a, a                                       ; $54a0: $7f
    add e                                         ; $54a1: $83
    ld a, a                                       ; $54a2: $7f
    add c                                         ; $54a3: $81
    ld hl, sp-$80                                 ; $54a4: $f8 $80
    ret nz                                        ; $54a6: $c0

    ret nz                                        ; $54a7: $c0

    nop                                           ; $54a8: $00
    ld e, [hl]                                    ; $54a9: $5e
    ret nz                                        ; $54aa: $c0

    ld a, a                                       ; $54ab: $7f
    add b                                         ; $54ac: $80
    ld a, a                                       ; $54ad: $7f
    rst $38                                       ; $54ae: $ff
    nop                                           ; $54af: $00
    rrca                                          ; $54b0: $0f
    nop                                           ; $54b1: $00
    rst $10                                       ; $54b2: $d7
    add e                                         ; $54b3: $83
    dec h                                         ; $54b4: $25
    ld b, b                                       ; $54b5: $40
    add b                                         ; $54b6: $80
    ld [hl], b                                    ; $54b7: $70
    xor b                                         ; $54b8: $a8
    or a                                          ; $54b9: $b7
    nop                                           ; $54ba: $00
    ret z                                         ; $54bb: $c8

    ld c, [hl]                                    ; $54bc: $4e
    ld [hl], c                                    ; $54bd: $71
    rst $38                                       ; $54be: $ff
    nop                                           ; $54bf: $00
    nop                                           ; $54c0: $00
    nop                                           ; $54c1: $00
    dec b                                         ; $54c2: $05
    nop                                           ; $54c3: $00
    db $f4                                        ; $54c4: $f4
    ld [bc], a                                    ; $54c5: $02
    and $0e                                       ; $54c6: $e6 $0e
    call nz, $da0e                                ; $54c8: $c4 $0e $da
    or b                                          ; $54cb: $b0
    jr jr_0d0_54d4                                ; $54cc: $18 $06

    ld [hl], d                                    ; $54ce: $72
    db $10                                        ; $54cf: $10
    db $10                                        ; $54d0: $10
    ld [$083c], sp                                ; $54d1: $08 $3c $08

jr_0d0_54d4:
    ld b, $04                                     ; $54d4: $06 $04
    ld a, [bc]                                    ; $54d6: $0a
    nop                                           ; $54d7: $00
    ld hl, sp+$7e                                 ; $54d8: $f8 $7e
    db $fc                                        ; $54da: $fc
    halt                                          ; $54db: $76
    ld a, h                                       ; $54dc: $7c
    nop                                           ; $54dd: $00
    cp $fe                                        ; $54de: $fe $fe
    nop                                           ; $54e0: $00
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    ld bc, $00ef                                  ; $54e3: $01 $ef $00
    nop                                           ; $54e6: $00
    add b                                         ; $54e7: $80
    ld a, a                                       ; $54e8: $7f
    add e                                         ; $54e9: $83
    ld b, e                                       ; $54ea: $43
    inc bc                                        ; $54eb: $03
    jp $c607                                      ; $54ec: $c3 $07 $c6


    nop                                           ; $54ef: $00
    rrca                                          ; $54f0: $0f
    call z, $d81e                                 ; $54f1: $cc $1e $d8
    rrca                                          ; $54f4: $0f
    jp $c00f                                      ; $54f5: $c3 $0f $c0


    nop                                           ; $54f8: $00
    rst $38                                       ; $54f9: $ff
    nop                                           ; $54fa: $00
    add hl, de                                    ; $54fb: $19
    ccf                                           ; $54fc: $3f
    ldh [rPCM12], a                               ; $54fd: $e0 $76
    call nz, $008e                                ; $54ff: $c4 $8e $00
    dec c                                         ; $5502: $0d
    ld e, d                                       ; $5503: $5a
    ld e, e                                       ; $5504: $5b
    dec l                                         ; $5505: $2d
    ld [hl], h                                    ; $5506: $74

jr_0d0_5507:
    ld b, e                                       ; $5507: $43
    ld h, b                                       ; $5508: $60
    sub $00                                       ; $5509: $d6 $00
    rst $38                                       ; $550b: $ff
    nop                                           ; $550c: $00
    jr jr_0d0_5507                                ; $550d: $18 $f8

    ld h, b                                       ; $550f: $60
    db $10                                        ; $5510: $10
    ldh [$f8], a                                  ; $5511: $e0 $f8
    nop                                           ; $5513: $00
    ld l, h                                       ; $5514: $6c
    and b                                         ; $5515: $a0
    ld a, [$964e]                                 ; $5516: $fa $4e $96
    ld h, [hl]                                    ; $5519: $66
    ld c, e                                       ; $551a: $4b
    sub e                                         ; $551b: $93
    nop                                           ; $551c: $00
    cp $01                                        ; $551d: $fe $01
    ld [bc], a                                    ; $551f: $02
    ld bc, $8103                                  ; $5520: $01 $03 $81
    inc bc                                        ; $5523: $03
    add c                                         ; $5524: $81
    nop                                           ; $5525: $00
    ld b, e                                       ; $5526: $43
    pop bc                                        ; $5527: $c1
    inc hl                                        ; $5528: $23
    pop hl                                        ; $5529: $e1
    add d                                         ; $552a: $82
    ret nz                                        ; $552b: $c0

    add d                                         ; $552c: $82
    ldh [rP1], a                                  ; $552d: $e0 $00
    rra                                           ; $552f: $1f
    call nc, $d21b                                ; $5530: $d4 $1b $d2
    ret z                                         ; $5533: $c8

    rst $10                                       ; $5534: $d7
    call z, Call_000_00d3                         ; $5535: $cc $d3 $00
    ld a, $f2                                     ; $5538: $3e $f2
    ccf                                           ; $553a: $3f
    pop af                                        ; $553b: $f1
    rra                                           ; $553c: $1f
    jp nz, $c41f                                  ; $553d: $c2 $1f $c4

    nop                                           ; $5540: $00
    rst $20                                       ; $5541: $e7
    and h                                         ; $5542: $a4
    call nz, $8843                                ; $5543: $c4 $43 $88
    add a                                         ; $5546: $87
    ld sp, hl                                     ; $5547: $f9
    rst $00                                       ; $5548: $c7
    nop                                           ; $5549: $00
    ldh a, [$80]                                  ; $554a: $f0 $80
    db $fc                                        ; $554c: $fc
    rst $28                                       ; $554d: $ef
    dec de                                        ; $554e: $1b
    ld b, $7f                                     ; $554f: $06 $7f
    ld [hl], h                                    ; $5551: $74
    nop                                           ; $5552: $00
    ld a, e                                       ; $5553: $7b
    cp d                                          ; $5554: $ba
    ld [hl], a                                    ; $5555: $77
    or b                                          ; $5556: $b0
    add [hl]                                      ; $5557: $86
    or e                                          ; $5558: $b3
    xor $fb                                       ; $5559: $ee $fb
    nop                                           ; $555b: $00
    dec e                                         ; $555c: $1d
    sbc e                                         ; $555d: $9b
    ld c, h                                       ; $555e: $4c
    cp a                                          ; $555f: $bf
    ld a, $a2                                     ; $5560: $3e $a2
    ld a, [hl-]                                   ; $5562: $3a
    adc d                                         ; $5563: $8a
    ret nz                                        ; $5564: $c0

    inc [hl]                                      ; $5565: $34
    ld [$0002], sp                                ; $5566: $08 $02 $00
    ldh a, [$f0]                                  ; $5569: $f0 $f0
    ld [hl], d                                    ; $556b: $72
    ldh a, [rNR12]                                ; $556c: $f0 $12
    ldh [rP1], a                                  ; $556e: $e0 $00
    ld b, d                                       ; $5570: $42
    ldh [rSCY], a                                 ; $5571: $e0 $42
    ccf                                           ; $5573: $3f
    ldh a, [$3f]                                  ; $5574: $f0 $3f
    ld hl, sp+$43                                 ; $5576: $f8 $43
    ld b, b                                       ; $5578: $40
    ret nz                                        ; $5579: $c0

    ld [bc], a                                    ; $557a: $02
    jr jr_0d0_55c3                                ; $557b: $18 $46

    ret nz                                        ; $557d: $c0

    ld b, a                                       ; $557e: $47
    ret nz                                        ; $557f: $c0

    cpl                                           ; $5580: $2f
    inc de                                        ; $5581: $13
    nop                                           ; $5582: $00
    adc a                                         ; $5583: $8f
    xor b                                         ; $5584: $a8
    inc a                                         ; $5585: $3c
    ld c, d                                       ; $5586: $4a
    or h                                          ; $5587: $b4
    sub a                                         ; $5588: $97
    and a                                         ; $5589: $a7
    db $f4                                        ; $558a: $f4
    nop                                           ; $558b: $00
    ld c, a                                       ; $558c: $4f
    xor c                                         ; $558d: $a9
    sub $d1                                       ; $558e: $d6 $d1
    xor e                                         ; $5590: $ab
    sbc d                                         ; $5591: $9a
    inc sp                                        ; $5592: $33
    jp $f000                                      ; $5593: $c3 $00 $f0


    jr nc, jr_0d0_559b                            ; $5596: $30 $03

    inc bc                                        ; $5598: $03
    db $fc                                        ; $5599: $fc
    rlca                                          ; $559a: $07

jr_0d0_559b:
    srl c                                         ; $559b: $cb $39
    nop                                           ; $559d: $00
    add d                                         ; $559e: $82
    or b                                          ; $559f: $b0
    or d                                          ; $55a0: $b2
    push af                                       ; $55a1: $f5
    inc sp                                        ; $55a2: $33

Call_0d0_55a3:
    and h                                         ; $55a3: $a4
    db $fc                                        ; $55a4: $fc
    ld c, $00                                     ; $55a5: $0e $00
    db $fc                                        ; $55a7: $fc
    ld h, [hl]                                    ; $55a8: $66
    db $fc                                        ; $55a9: $fc
    ld h, $fc                                     ; $55aa: $26 $fc
    ld c, $0e                                     ; $55ac: $0e $0e
    db $fc                                        ; $55ae: $fc
    ld bc, $f032                                  ; $55af: $01 $32 $f0
    ld [bc], a                                    ; $55b2: $02
    ret nz                                        ; $55b3: $c0

    add d                                         ; $55b4: $82
    ret nz                                        ; $55b5: $c0

    ld c, [hl]                                    ; $55b6: $4e
    ld [bc], a                                    ; $55b7: $02
    nop                                           ; $55b8: $00
    inc b                                         ; $55b9: $04

Call_0d0_55ba:
    rra                                           ; $55ba: $1f
    reti                                          ; $55bb: $d9


    rrca                                          ; $55bc: $0f
    ret z                                         ; $55bd: $c8

    ld b, a                                       ; $55be: $47
    ld a, [bc]                                    ; $55bf: $0a
    nop                                           ; $55c0: $00
    add b                                         ; $55c1: $80
    ld a, a                                       ; $55c2: $7f

jr_0d0_55c3:
    nop                                           ; $55c3: $00
    rst $38                                       ; $55c4: $ff
    nop                                           ; $55c5: $00
    ld c, d                                       ; $55c6: $4a
    ld [hl-], a                                   ; $55c7: $32
    ld d, l                                       ; $55c8: $55
    ld hl, $4caa                                  ; $55c9: $21 $aa $4c
    nop                                           ; $55cc: $00
    adc b                                         ; $55cd: $88
    adc b                                         ; $55ce: $88
    ld h, e                                       ; $55cf: $63
    ld d, e                                       ; $55d0: $53
    xor $89                                       ; $55d1: $ee $89
    rst $38                                       ; $55d3: $ff
    nop                                           ; $55d4: $00
    nop                                           ; $55d5: $00
    nop                                           ; $55d6: $00
    nop                                           ; $55d7: $00
    cp b                                          ; $55d8: $b8
    ret nz                                        ; $55d9: $c0

    ld h, a                                       ; $55da: $67
    adc [hl]                                      ; $55db: $8e
    and h                                         ; $55dc: $a4
    jr @+$04                                      ; $55dd: $18 $02

    ret nz                                        ; $55df: $c0

    ldh a, [rNR50]                                ; $55e0: $f0 $24
    ld b, h                                       ; $55e2: $44
    sbc c                                         ; $55e3: $99
    ld d, $10                                     ; $55e4: $16 $10
    ld [$00e0], sp                                ; $55e6: $08 $e0 $00
    ld [hl+], a                                   ; $55e9: $22
    ldh a, [$92]                                  ; $55ea: $f0 $92
    or b                                          ; $55ec: $b0
    add d                                         ; $55ed: $82
    sbc b                                         ; $55ee: $98
    sub d                                         ; $55ef: $92
    ld l, b                                       ; $55f0: $68
    nop                                           ; $55f1: $00
    ld c, d                                       ; $55f2: $4a
    ld [hl], h                                    ; $55f3: $74
    ld [hl], d                                    ; $55f4: $72
    nop                                           ; $55f5: $00
    cp $fe                                        ; $55f6: $fe $fe
    nop                                           ; $55f8: $00
    nop                                           ; $55f9: $00
    ld bc, $00e9                                  ; $55fa: $01 $e9 $00

jr_0d0_55fd:
    nop                                           ; $55fd: $00
    add b                                         ; $55fe: $80
    rst $38                                       ; $55ff: $ff
    cp a                                          ; $5600: $bf
    ret nz                                        ; $5601: $c0

    cp [hl]                                       ; $5602: $be
    ret nz                                        ; $5603: $c0

    cp h                                          ; $5604: $bc
    ret nz                                        ; $5605: $c0

    nop                                           ; $5606: $00
    db $fc                                        ; $5607: $fc
    ld b, c                                       ; $5608: $41
    ld hl, sp+$40                                 ; $5609: $f8 $40
    cp b                                          ; $560b: $b8
    ret nz                                        ; $560c: $c0

    cp b                                          ; $560d: $b8
    ret nz                                        ; $560e: $c0

    nop                                           ; $560f: $00
    rst $38                                       ; $5610: $ff
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    nop                                           ; $5613: $00
    ld [bc], a                                    ; $5614: $02
    ld b, b                                       ; $5615: $40
    ld bc, $00c0                                  ; $5616: $01 $c0 $00
    nop                                           ; $5619: $00
    nop                                           ; $561a: $00
    jr jr_0d0_561d                                ; $561b: $18 $00

jr_0d0_561d:
    ld l, $0e                                     ; $561d: $2e $0e
    ld e, $1f                                     ; $561f: $1e $1f
    nop                                           ; $5621: $00
    nop                                           ; $5622: $00
    rst $38                                       ; $5623: $ff
    ld bc, $9000                                  ; $5624: $01 $00 $90
    add b                                         ; $5627: $80
    and b                                         ; $5628: $a0
    add c                                         ; $5629: $81
    nop                                           ; $562a: $00

jr_0d0_562b:
    nop                                           ; $562b: $00
    ld b, b                                       ; $562c: $40
    ld b, h                                       ; $562d: $44
    ld b, b                                       ; $562e: $40
    ld e, d                                       ; $562f: $5a
    ld e, b                                       ; $5630: $58
    jr jr_0d0_562b                                ; $5631: $18 $f8

    nop                                           ; $5633: $00
    cp $00                                        ; $5634: $fe $00
    ld [bc], a                                    ; $5636: $02
    db $fc                                        ; $5637: $fc
    db $fc                                        ; $5638: $fc
    ld [bc], a                                    ; $5639: $02

Jump_0d0_563a:
    ld a, h                                       ; $563a: $7c
    ld [hl], d                                    ; $563b: $72
    nop                                           ; $563c: $00
    ld a, $82                                     ; $563d: $3e $82
    ld a, $82                                     ; $563f: $3e $82
    db $fc                                        ; $5641: $fc
    ld [c], a                                     ; $5642: $e2
    db $fc                                        ; $5643: $fc
    ld [c], a                                     ; $5644: $e2
    ld [$f8b8], sp                                ; $5645: $08 $b8 $f8
    or c                                          ; $5648: $b1
    ldh a, [rSC]                                  ; $5649: $f0 $02
    jr c, jr_0d0_55fd                             ; $564b: $38 $b0

    ldh a, [$f0]                                  ; $564d: $f0 $f0
    nop                                           ; $564f: $00
    pop bc                                        ; $5650: $c1
    xor $c0                                       ; $5651: $ee $c0
    ccf                                           ; $5653: $3f
    nop                                           ; $5654: $00
    cpl                                           ; $5655: $2f
    rra                                           ; $5656: $1f
    ld a, [hl+]                                   ; $5657: $2a
    nop                                           ; $5658: $00
    ld e, $28                                     ; $5659: $1e $28
    db $10                                        ; $565b: $10
    jr nz, jr_0d0_567d                            ; $565c: $20 $1f

    jr nz, @+$21                                  ; $565e: $20 $1f

    rrca                                          ; $5660: $0f
    nop                                           ; $5661: $00
    di                                            ; $5662: $f3
    nop                                           ; $5663: $00
    ldh a, [rHDMA4]                               ; $5664: $f0 $54
    ld [hl+], a                                   ; $5666: $22
    sbc $fe                                       ; $5667: $de $fe
    ld c, b                                       ; $5669: $48
    nop                                           ; $566a: $00
    db $ec                                        ; $566b: $ec
    ld d, b                                       ; $566c: $50
    jr nc, @+$52                                  ; $566d: $30 $50

    cp h                                          ; $566f: $bc
    ret z                                         ; $5670: $c8

    cp h                                          ; $5671: $bc
    db $fd                                        ; $5672: $fd
    nop                                           ; $5673: $00
    db $e3                                        ; $5674: $e3
    ld a, l                                       ; $5675: $7d
    ld h, e                                       ; $5676: $63
    ld e, h                                       ; $5677: $5c
    ld e, $5c                                     ; $5678: $1e $5c
    ld e, $fc                                     ; $567a: $1e $fc
    nop                                           ; $567c: $00

jr_0d0_567d:
    jp nz, $c2fc                                  ; $567d: $c2 $fc $c2

    inc a                                         ; $5680: $3c
    ld a, $3c                                     ; $5681: $3e $3c
    ld [bc], a                                    ; $5683: $02
    and h                                         ; $5684: $a4
    nop                                           ; $5685: $00
    ldh [$a4], a                                  ; $5686: $e0 $a4
    ldh [$b4], a                                  ; $5688: $e0 $b4
    ldh a, [$b4]                                  ; $568a: $f0 $b4
    ldh a, [$b2]                                  ; $568c: $f0 $b2
    ld bc, $a2f0                                  ; $568e: $01 $f0 $a2
    ldh [$a0], a                                  ; $5691: $e0 $a0
    ret nz                                        ; $5693: $c0

    xor b                                         ; $5694: $a8
    ret nz                                        ; $5695: $c0

jr_0d0_5696:
    inc [hl]                                      ; $5696: $34
    ld [$3000], sp                                ; $5697: $08 $00 $30
    cpl                                           ; $569a: $2f
    ld de, $190e                                  ; $569b: $11 $0e $19
    rla                                           ; $569e: $17
    inc c                                         ; $569f: $0c
    inc bc                                        ; $56a0: $03
    nop                                           ; $56a1: $00
    ld c, $09                                     ; $56a2: $0e $09
    scf                                           ; $56a4: $37
    inc d                                         ; $56a5: $14
    ldh a, [$7c]                                  ; $56a6: $f0 $7c
    ld h, b                                       ; $56a8: $60
    sbc h                                         ; $56a9: $9c
    nop                                           ; $56aa: $00
    ld b, $fa                                     ; $56ab: $06 $fa
    db $f4                                        ; $56ad: $f4
    inc c                                         ; $56ae: $0c
    sbc b                                         ; $56af: $98
    db $f4                                        ; $56b0: $f4
    ldh a, [$08]                                  ; $56b1: $f0 $08
    nop                                           ; $56b3: $00
    jr nz, jr_0d0_5696                            ; $56b4: $20 $e0

    ret                                           ; $56b6: $c9


    pop bc                                        ; $56b7: $c1
    sbc h                                         ; $56b8: $9c
    ld e, $84                                     ; $56b9: $1e $84
    ld b, $00                                     ; $56bb: $06 $00
    ld e, h                                       ; $56bd: $5c
    ld e, $0c                                     ; $56be: $1e $0c
    ld c, $ac                                     ; $56c0: $0e $ac
    ld l, $3c                                     ; $56c2: $2e $3c
    ld a, $06                                     ; $56c4: $3e $06
    db $fc                                        ; $56c6: $fc
    ld b, d                                       ; $56c7: $42
    db $fc                                        ; $56c8: $fc
    ld h, d                                       ; $56c9: $62
    xor b                                         ; $56ca: $a8
    cp h                                          ; $56cb: $bc
    nop                                           ; $56cc: $00
    ret nz                                        ; $56cd: $c0

    ld [$00b9], sp                                ; $56ce: $08 $b9 $00
    ld hl, sp-$5a                                 ; $56d1: $f8 $a6
    ldh [$80], a                                  ; $56d3: $e0 $80

jr_0d0_56d5:
    ld a, a                                       ; $56d5: $7f
    rst $38                                       ; $56d6: $ff
    nop                                           ; $56d7: $00
    adc a                                         ; $56d8: $8f
    nop                                           ; $56d9: $00
    rst $08                                       ; $56da: $cf
    adc a                                         ; $56db: $8f
    ret nz                                        ; $56dc: $c0

    add e                                         ; $56dd: $83
    and b                                         ; $56de: $a0
    nop                                           ; $56df: $00
    inc e                                         ; $56e0: $1c
    ld h, d                                       ; $56e1: $62
    stop                                          ; $56e2: $10 $00
    ld a, $00                                     ; $56e4: $3e $00
    call z, $e108                                 ; $56e6: $cc $08 $e1
    call nz, $0ae2                                ; $56e9: $c4 $e2 $0a
    nop                                           ; $56ec: $00
    add b                                         ; $56ed: $80
    ld [$3202], sp                                ; $56ee: $08 $02 $32
    ld [bc], a                                    ; $56f1: $02
    inc c                                         ; $56f2: $0c
    inc b                                         ; $56f3: $04
    ld a, [hl-]                                   ; $56f4: $3a
    add b                                         ; $56f5: $80
    call c, $fc08                                 ; $56f6: $dc $08 $fc
    ld [bc], a                                    ; $56f9: $02
    db $fc                                        ; $56fa: $fc
    ld [bc], a                                    ; $56fb: $02
    db $fd                                        ; $56fc: $fd
    inc bc                                        ; $56fd: $03
    ld a, l                                       ; $56fe: $7d
    nop                                           ; $56ff: $00
    inc bc                                        ; $5700: $03
    cp h                                          ; $5701: $bc
    ld a, $4c                                     ; $5702: $3e $4c
    ld c, $00                                     ; $5704: $0e $00
    cp $fe                                        ; $5706: $fe $fe
    nop                                           ; $5708: $00
    nop                                           ; $5709: $00
    nop                                           ; $570a: $00
    ld bc, $00fd                                  ; $570b: $01 $fd $00
    nop                                           ; $570e: $00
    ld a, a                                       ; $570f: $7f
    rst $38                                       ; $5710: $ff
    ld a, l                                       ; $5711: $7d
    ret nz                                        ; $5712: $c0

    ld hl, sp-$3d                                 ; $5713: $f8 $c3
    ldh a, [$c7]                                  ; $5715: $f0 $c7
    nop                                           ; $5717: $00
    add sp, -$39                                  ; $5718: $e8 $c7
    ret nc                                        ; $571a: $d0

    adc $c0                                       ; $571b: $ce $c0
    ld e, h                                       ; $571d: $5c
    pop bc                                        ; $571e: $c1
    ld e, h                                       ; $571f: $5c
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    rst $38                                       ; $5722: $ff
    ldh a, [$80]                                  ; $5723: $f0 $80
    inc b                                         ; $5725: $04
    ld hl, sp+$12                                 ; $5726: $f8 $12
    adc [hl]                                      ; $5728: $8e
    nop                                           ; $5729: $00
    ld b, $07                                     ; $572a: $06 $07
    ld [hl], b                                    ; $572c: $70
    ld [bc], a                                    ; $572d: $02
    db $ec                                        ; $572e: $ec
    nop                                           ; $572f: $00
    ld de, $0016                                  ; $5730: $11 $16 $00
    rst $38                                       ; $5733: $ff
    nop                                           ; $5734: $00
    ld [hl+], a                                   ; $5735: $22
    ccf                                           ; $5736: $3f
    and b                                         ; $5737: $a0
    ld e, a                                       ; $5738: $5f
    ret z                                         ; $5739: $c8

    ld d, c                                       ; $573a: $51
    nop                                           ; $573b: $00
    add b                                         ; $573c: $80
    nop                                           ; $573d: $00
    ld bc, $fb3f                                  ; $573e: $01 $3f $fb
    nop                                           ; $5741: $00
    inc b                                         ; $5742: $04
    db $f4                                        ; $5743: $f4
    nop                                           ; $5744: $00
    rst $38                                       ; $5745: $ff
    ld bc, $1d03                                  ; $5746: $01 $03 $1d
    ld c, $ec                                     ; $5749: $0e $ec
    ld b, $f4                                     ; $574b: $06 $f4
    nop                                           ; $574d: $00
    ld a, d                                       ; $574e: $7a
    ld a, b                                       ; $574f: $78
    ld a, [de]                                    ; $5750: $1a
    jr c, jr_0d0_56d5                             ; $5751: $38 $82

    ld a, [de]                                    ; $5753: $1a
    jp nc, Jump_000_000e                          ; $5754: $d2 $0e $00

    ret c                                         ; $5757: $d8

    db $e4                                        ; $5758: $e4
    ret nc                                        ; $5759: $d0

    push hl                                       ; $575a: $e5
    ret                                           ; $575b: $c9


    db $e4                                        ; $575c: $e4
    ldh [$cc], a                                  ; $575d: $e0 $cc
    nop                                           ; $575f: $00
    ret nc                                        ; $5760: $d0

    ld c, h                                       ; $5761: $4c
    ret nz                                        ; $5762: $c0

    ld e, h                                       ; $5763: $5c
    push hl                                       ; $5764: $e5
    ld e, c                                       ; $5765: $59
    ret z                                         ; $5766: $c8

    ld [hl], c                                    ; $5767: $71
    nop                                           ; $5768: $00
    inc bc                                        ; $5769: $03
    cp e                                          ; $576a: $bb
    db $fd                                        ; $576b: $fd
    ld bc, $01fc                                  ; $576c: $01 $fc $01
    ld [$0009], sp                                ; $576f: $08 $09 $00
    dec de                                        ; $5772: $1b
    ld a, b                                       ; $5773: $78
    and e                                         ; $5774: $a3
    ld h, b                                       ; $5775: $60
    nop                                           ; $5776: $00
    di                                            ; $5777: $f3
    di                                            ; $5778: $f3
    dec bc                                        ; $5779: $0b
    nop                                           ; $577a: $00
    ldh [$ed], a                                  ; $577b: $e0 $ed
    rst $18                                       ; $577d: $df
    ret nz                                        ; $577e: $c0

    sbc [hl]                                      ; $577f: $9e
    add c                                         ; $5780: $81
    pop bc                                        ; $5781: $c1
    add b                                         ; $5782: $80
    nop                                           ; $5783: $00
    ld [c], a                                     ; $5784: $e2
    ld e, h                                       ; $5785: $5c
    db $e3                                        ; $5786: $e3

jr_0d0_5787:
    ld b, b                                       ; $5787: $40
    cp a                                          ; $5788: $bf
    nop                                           ; $5789: $00
    ret nz                                        ; $578a: $c0

    cp a                                          ; $578b: $bf
    nop                                           ; $578c: $00
    ld h, d                                       ; $578d: $62
    ld c, $22                                     ; $578e: $0e $22
    adc [hl]                                      ; $5790: $8e
    jp nz, $c20e                                  ; $5791: $c2 $0e $c2

    ld c, $00                                     ; $5794: $0e $00
    ld [bc], a                                    ; $5796: $02
    ld c, $d6                                     ; $5797: $0e $d6
    ld a, [bc]                                    ; $5799: $0a
    ld a, [bc]                                    ; $579a: $0a
    call c, Call_000_1892                         ; $579b: $dc $92 $18
    nop                                           ; $579e: $00
    call $db3d                                    ; $579f: $cd $3d $db
    jr c, jr_0d0_5787                             ; $57a2: $38 $e3

    ret nz                                        ; $57a4: $c0

    ret nz                                        ; $57a5: $c0

    call z, $c000                                 ; $57a6: $cc $00 $c0
    ld e, a                                       ; $57a9: $5f
    jp nz, $c679                                  ; $57aa: $c2 $79 $c6

    ldh a, [$c4]                                  ; $57ad: $f0 $c4
    ldh [rP1], a                                  ; $57af: $e0 $00
    db $e3                                        ; $57b1: $e3
    ld hl, sp+$07                                 ; $57b2: $f8 $07
    ldh [$d1], a                                  ; $57b4: $e0 $d1
    ld d, $0c                                     ; $57b6: $16 $0c
    inc a                                         ; $57b8: $3c
    nop                                           ; $57b9: $00
    ldh a, [$c2]                                  ; $57ba: $f0 $c2
    add b                                         ; $57bc: $80
    ld [$080f], sp                                ; $57bd: $08 $0f $08
    ret z                                         ; $57c0: $c8

    jr c, jr_0d0_57c3                             ; $57c1: $38 $00

jr_0d0_57c3:
    pop bc                                        ; $57c3: $c1
    ld b, c                                       ; $57c4: $41
    cp [hl]                                       ; $57c5: $be
    ld a, a                                       ; $57c6: $7f
    adc a                                         ; $57c7: $8f
    rrca                                          ; $57c8: $0f
    nop                                           ; $57c9: $00
    ld [hl], b                                    ; $57ca: $70
    nop                                           ; $57cb: $00
    db $fd                                        ; $57cc: $fd
    ld e, d                                       ; $57cd: $5a
    rlca                                          ; $57ce: $07
    ccf                                           ; $57cf: $3f
    nop                                           ; $57d0: $00
    inc bc                                        ; $57d1: $03
    call nz, $003d                                ; $57d2: $c4 $3d $00
    jr @+$14                                      ; $57d5: $18 $12

    sbc b                                         ; $57d7: $98
    ld [de], a                                    ; $57d8: $12
    ld [hl+], a                                   ; $57d9: $22
    jr c, jr_0d0_57fe                             ; $57da: $38 $22

    jr c, jr_0d0_57de                             ; $57dc: $38 $00

jr_0d0_57de:
    ld d, d                                       ; $57de: $52
    call c, $c48a                                 ; $57df: $dc $8a $c4
    and h                                         ; $57e2: $a4

jr_0d0_57e3:
    ld h, $a4                                     ; $57e3: $26 $a4
    and d                                         ; $57e5: $a2
    nop                                           ; $57e6: $00
    call z, $d063                                 ; $57e7: $cc $63 $d0
    ld b, a                                       ; $57ea: $47
    ret c                                         ; $57eb: $d8

    rst $00                                       ; $57ec: $c7
    ret c                                         ; $57ed: $d8

    rst $00                                       ; $57ee: $c7
    nop                                           ; $57ef: $00
    ld hl, sp-$39                                 ; $57f0: $f8 $c7
    pop af                                        ; $57f2: $f1
    adc $80                                       ; $57f3: $ce $80
    ld a, a                                       ; $57f5: $7f
    rst $38                                       ; $57f6: $ff
    nop                                           ; $57f7: $00
    nop                                           ; $57f8: $00
    bit 6, a                                      ; $57f9: $cb $77
    db $d3                                        ; $57fb: $d3
    adc [hl]                                      ; $57fc: $8e

jr_0d0_57fd:
    inc [hl]                                      ; $57fd: $34

jr_0d0_57fe:
    add e                                         ; $57fe: $83
    inc d                                         ; $57ff: $14
    inc sp                                        ; $5800: $33
    nop                                           ; $5801: $00
    ld c, l                                       ; $5802: $4d
    ld a, [hl+]                                   ; $5803: $2a
    ld c, l                                       ; $5804: $4d
    ld a, [hl+]                                   ; $5805: $2a
    rst $38                                       ; $5806: $ff
    nop                                           ; $5807: $00
    nop                                           ; $5808: $00
    nop                                           ; $5809: $00
    nop                                           ; $580a: $00
    ld [hl], e                                    ; $580b: $73
    xor h                                         ; $580c: $ac
    jr nz, jr_0d0_57fd                            ; $580d: $20 $ee

    add hl, hl                                    ; $580f: $29
    adc $34                                       ; $5810: $ce $34
    db $d3                                        ; $5812: $d3
    ld [$d734], sp                                ; $5813: $08 $34 $d7
    ld [hl-], a                                   ; $5816: $32
    pop bc                                        ; $5817: $c1
    db $10                                        ; $5818: $10
    ld [$924a], sp                                ; $5819: $08 $4a $92
    add [hl]                                      ; $581c: $86
    nop                                           ; $581d: $00
    ld c, d                                       ; $581e: $4a
    ld a, [hl+]                                   ; $581f: $2a
    ld b, [hl]                                    ; $5820: $46
    add d                                         ; $5821: $82
    ld h, $a4                                     ; $5822: $26 $a4
    add d                                         ; $5824: $82
    db $f4                                        ; $5825: $f4
    nop                                           ; $5826: $00
    add d                                         ; $5827: $82
    nop                                           ; $5828: $00
    cp $fe                                        ; $5829: $fe $fe
    nop                                           ; $582b: $00
    nop                                           ; $582c: $00
    ld bc, $00dc                                  ; $582d: $01 $dc $00
    nop                                           ; $5830: $00
    ld a, a                                       ; $5831: $7f
    rst $38                                       ; $5832: $ff
    ld a, a                                       ; $5833: $7f
    ret nz                                        ; $5834: $c0

    ld a, a                                       ; $5835: $7f
    ret nz                                        ; $5836: $c0

    ld a, [hl]                                    ; $5837: $7e
    ret nz                                        ; $5838: $c0

    nop                                           ; $5839: $00
    dec a                                         ; $583a: $3d
    pop bc                                        ; $583b: $c1
    inc a                                         ; $583c: $3c
    ret nz                                        ; $583d: $c0

    ld a, h                                       ; $583e: $7c
    ret nz                                        ; $583f: $c0

    ld a, l                                       ; $5840: $7d
    ret nz                                        ; $5841: $c0

    nop                                           ; $5842: $00
    rst $38                                       ; $5843: $ff
    nop                                           ; $5844: $00
    add b                                         ; $5845: $80
    cp a                                          ; $5846: $bf
    ld b, b                                       ; $5847: $40
    jr nz, @-$5f                                  ; $5848: $20 $9f

    ld e, a                                       ; $584a: $5f
    nop                                           ; $584b: $00
    or a                                          ; $584c: $b7
    jr c, @+$52                                   ; $584d: $38 $50

    ld h, b                                       ; $584f: $60
    adc a                                         ; $5850: $8f
    ld c, a                                       ; $5851: $4f
    jr nc, jr_0d0_57e3                            ; $5852: $30 $8f

    nop                                           ; $5854: $00
    rst $38                                       ; $5855: $ff
    nop                                           ; $5856: $00
    rrca                                          ; $5857: $0f
    rst $28                                       ; $5858: $ef
    dec sp                                        ; $5859: $3b
    ld b, e                                       ; $585a: $43
    adc l                                         ; $585b: $8d
    ld de, $e600                                  ; $585c: $11 $00 $e6
    ld l, d                                       ; $585f: $6a
    inc sp                                        ; $5860: $33
    push de                                       ; $5861: $d5
    add hl, bc                                    ; $5862: $09
    ld a, [hl-]                                   ; $5863: $3a
    call nz, Call_000_084d                        ; $5864: $c4 $4d $08
    cp $00                                        ; $5867: $fe $00
    ld [bc], a                                    ; $5869: $02
    db $fc                                        ; $586a: $fc
    ld [bc], a                                    ; $586b: $02
    ld [$fd03], sp                                ; $586c: $08 $03 $fd
    inc bc                                        ; $586f: $03
    nop                                           ; $5870: $00
    ld a, l                                       ; $5871: $7d
    cp h                                          ; $5872: $bc
    add d                                         ; $5873: $82
    call c, $3bc2                                 ; $5874: $dc $c2 $3b
    jp $b038                                      ; $5877: $c3 $38 $b0


    jr c, @+$12                                   ; $587a: $38 $10

    ld a, [hl]                                    ; $587c: $7e
    ld b, [hl]                                    ; $587d: $46
    nop                                           ; $587e: $00
    ld c, d                                       ; $587f: $4a
    ld [$4020], sp                                ; $5880: $08 $20 $40
    ld e, a                                       ; $5883: $5f
    pop bc                                        ; $5884: $c1
    nop                                           ; $5885: $00
    ccf                                           ; $5886: $3f
    and b                                         ; $5887: $a0
    inc e                                         ; $5888: $1c
    ld h, e                                       ; $5889: $63
    ld c, c                                       ; $588a: $49
    ld a, $08                                     ; $588b: $3e $08
    ld a, a                                       ; $588d: $7f
    nop                                           ; $588e: $00
    ld c, d                                       ; $588f: $4a
    dec h                                         ; $5890: $25
    ld e, a                                       ; $5891: $5f
    ld d, e                                       ; $5892: $53
    halt                                          ; $5893: $76
    call nz, $623b                                ; $5894: $c4 $3b $62
    nop                                           ; $5897: $00
    or b                                          ; $5898: $b0
    dec l                                         ; $5899: $2d
    reti                                          ; $589a: $d9


    sub l                                         ; $589b: $95
    and d                                         ; $589c: $a2
    call z, $c671                                 ; $589d: $cc $71 $c6
    nop                                           ; $58a0: $00
    jr nc, jr_0d0_590e                            ; $58a1: $30 $6b

    ld [hl], h                                    ; $58a3: $74
    db $fc                                        ; $58a4: $fc
    db $ec                                        ; $58a5: $ec
    jp nz, Jump_0d0_626c                          ; $58a6: $c2 $6c $62

    nop                                           ; $58a9: $00
    add d                                         ; $58aa: $82
    ld c, $c2                                     ; $58ab: $0e $c2
    ld b, $06                                     ; $58ad: $06 $06

jr_0d0_58af:
    db $e4                                        ; $58af: $e4
    ld b, $74                                     ; $58b0: $06 $74
    inc c                                         ; $58b2: $0c
    adc h                                         ; $58b3: $8c
    add d                                         ; $58b4: $82
    inc c                                         ; $58b5: $0c
    ld [bc], a                                    ; $58b6: $02
    ld [hl], $18                                  ; $58b7: $36 $18
    ld b, $38                                     ; $58b9: $06 $38
    ld h, $79                                     ; $58bb: $26 $79
    nop                                           ; $58bd: $00
    ld a, a                                       ; $58be: $7f
    jr z, @+$5c                                   ; $58bf: $28 $5a

    dec [hl]                                      ; $58c1: $35
    add c                                         ; $58c2: $81

jr_0d0_58c3:
    cp [hl]                                       ; $58c3: $be
    add hl, hl                                    ; $58c4: $29
    sub a                                         ; $58c5: $97
    nop                                           ; $58c6: $00
    rra                                           ; $58c7: $1f
    rst $18                                       ; $58c8: $df
    rra                                           ; $58c9: $1f
    ret nz                                        ; $58ca: $c0

    rrca                                          ; $58cb: $0f
    dec b                                         ; $58cc: $05
    ldh a, [$ac]                                  ; $58cd: $f0 $ac
    nop                                           ; $58cf: $00
    db $f4                                        ; $58d0: $f4
    jr z, jr_0d0_58c3                             ; $58d1: $28 $f0

    ld hl, $42e0                                  ; $58d3: $21 $e0 $42
    jp nz, Jump_000_00d4                          ; $58d6: $c2 $d4 $00

    call nz, $b2b1                                ; $58d9: $c4 $b1 $b2
    add [hl]                                      ; $58dc: $86
    ld [hl], c                                    ; $58dd: $71
    rlca                                          ; $58de: $07
    sbc h                                         ; $58df: $9c
    add d                                         ; $58e0: $82
    ld [bc], a                                    ; $58e1: $02
    ld a, h                                       ; $58e2: $7c
    ld [bc], a                                    ; $58e3: $02
    inc bc                                        ; $58e4: $03

Call_0d0_58e5:
    ld a, l                                       ; $58e5: $7d
    inc bc                                        ; $58e6: $03
    db $fd                                        ; $58e7: $fd
    add h                                         ; $58e8: $84
    jr z, jr_0d0_5969                             ; $58e9: $28 $7e

    nop                                           ; $58eb: $00
    ret nz                                        ; $58ec: $c0

    ld [hl], b                                    ; $58ed: $70
    ret nz                                        ; $58ee: $c0

    add hl, hl                                    ; $58ef: $29
    ret                                           ; $58f0: $c9


    dec de                                        ; $58f1: $1b
    pop de                                        ; $58f2: $d1
    ldh [rP1], a                                  ; $58f3: $e0 $00
    ld d, e                                       ; $58f5: $53
    ret nz                                        ; $58f6: $c0

    ld h, c                                       ; $58f7: $61
    add b                                         ; $58f8: $80
    ld a, a                                       ; $58f9: $7f
    rst $38                                       ; $58fa: $ff
    nop                                           ; $58fb: $00
    call nc, $9400                                ; $58fc: $d4 $00 $94
    sbc a                                         ; $58ff: $9f

Jump_0d0_5900:
    ld b, b                                       ; $5900: $40
    ld d, a                                       ; $5901: $57
    ld c, a                                       ; $5902: $4f
    ld l, b                                       ; $5903: $68
    ld b, a                                       ; $5904: $47
    ld b, b                                       ; $5905: $40
    nop                                           ; $5906: $00
    jr nz, jr_0d0_58af                            ; $5907: $20 $a6

    ld [de], a                                    ; $5909: $12
    rst $38                                       ; $590a: $ff
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00

jr_0d0_590e:
    ld h, b                                       ; $590e: $60
    nop                                           ; $590f: $00
    and e                                         ; $5910: $a3
    jp z, $d9e9                                   ; $5911: $ca $e9 $d9

    adc d                                         ; $5914: $8a
    cp c                                          ; $5915: $b9
    ld [de], a                                    ; $5916: $12
    ld d, [hl]                                    ; $5917: $56
    db $10                                        ; $5918: $10
    ld [hl], b                                    ; $5919: $70
    ld l, $60                                     ; $591a: $2e $60
    db $10                                        ; $591c: $10
    ld [$023c], sp                                ; $591d: $08 $3c $02
    adc h                                         ; $5920: $8c
    add d                                         ; $5921: $82
    nop                                           ; $5922: $00
    ld [de], a                                    ; $5923: $12
    or h                                          ; $5924: $b4
    adc d                                         ; $5925: $8a
    ret c                                         ; $5926: $d8

    add [hl]                                      ; $5927: $86
    call z, $c482                                 ; $5928: $cc $82 $c4
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    cp $fe                                        ; $592d: $fe $fe
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    ld bc, $00c3                                  ; $5931: $01 $c3 $00
    ld [$ff7f], sp                                ; $5934: $08 $7f $ff
    ld a, a                                       ; $5937: $7f
    ret nz                                        ; $5938: $c0

    ld [bc], a                                    ; $5939: $02
    ld c, b                                       ; $593a: $48
    rst $38                                       ; $593b: $ff
    nop                                           ; $593c: $00
    nop                                           ; $593d: $00
    ld b, b                                       ; $593e: $40
    nop                                           ; $593f: $00
    inc b                                         ; $5940: $04
    nop                                           ; $5941: $00
    cp a                                          ; $5942: $bf
    ld hl, sp+$00                                 ; $5943: $f8 $00
    ld a, [c]                                     ; $5945: $f2
    ld b, $f6                                     ; $5946: $06 $f6
    inc d                                         ; $5948: $14
    pop af                                        ; $5949: $f1
    jp hl                                         ; $594a: $e9


    ldh [rNR10], a                                ; $594b: $e0 $10
    nop                                           ; $594d: $00
    xor a                                         ; $594e: $af
    inc d                                         ; $594f: $14
    ld [$ff00], sp                                ; $5950: $08 $00 $ff
    nop                                           ; $5953: $00
    ld a, a                                       ; $5954: $7f
    nop                                           ; $5955: $00
    cp a                                          ; $5956: $bf
    add b                                         ; $5957: $80
    ld a, a                                       ; $5958: $7f
    ret nz                                        ; $5959: $c0

    nop                                           ; $595a: $00
    cp $02                                        ; $595b: $fe $02
    db $fc                                        ; $595d: $fc
    xor [hl]                                      ; $595e: $ae
    db $fc                                        ; $595f: $fc
    cp $fc                                        ; $5960: $fe $fc
    ld [bc], a                                    ; $5962: $02
    inc b                                         ; $5963: $04

jr_0d0_5964:
    db $10                                        ; $5964: $10
    cp [hl]                                       ; $5965: $be
    jr nz, jr_0d0_5964                            ; $5966: $20 $fc

    ld [bc], a                                    ; $5968: $02

jr_0d0_5969:
    ld a, $58                                     ; $5969: $3e $58
    ld a, a                                       ; $596b: $7f
    ret nz                                        ; $596c: $c0

    ret nz                                        ; $596d: $c0

    add hl, de                                    ; $596e: $19
    pop de                                        ; $596f: $d1
    nop                                           ; $5970: $00
    inc d                                         ; $5971: $14
    ldh [rSB], a                                  ; $5972: $e0 $01
    db $fc                                        ; $5974: $fc
    dec b                                         ; $5975: $05
    ld hl, sp+$01                                 ; $5976: $f8 $01
    ld a, [$0200]                                 ; $5978: $fa $00 $02
    or $06                                        ; $597b: $f6 $06
    pop hl                                        ; $597d: $e1
    ld [$c05f], sp                                ; $597e: $08 $5f $c0
    ld c, a                                       ; $5981: $4f
    nop                                           ; $5982: $00
    ret nz                                        ; $5983: $c0

    or a                                          ; $5984: $b7
    ld b, a                                       ; $5985: $47
    ld b, a                                       ; $5986: $47
    scf                                           ; $5987: $37
    inc hl                                        ; $5988: $23
    ldh a, [$61]                                  ; $5989: $f0 $61
    rlca                                          ; $598b: $07
    ret z                                         ; $598c: $c8

    inc l                                         ; $598d: $2c
    ld h, l                                       ; $598e: $65
    ldh a, [$a2]                                  ; $598f: $f0 $a2
    inc a                                         ; $5991: $3c
    db $10                                        ; $5992: $10
    ld [bc], a                                    ; $5993: $02
    ld [$2044], sp                                ; $5994: $08 $44 $20
    nop                                           ; $5997: $00
    ld a, a                                       ; $5998: $7f
    ret nz                                        ; $5999: $c0

    ld a, h                                       ; $599a: $7c
    ret nz                                        ; $599b: $c0

    jp nz, $c632                                  ; $599c: $c2 $32 $c6

    ld l, $00                                     ; $599f: $2e $00
    rra                                           ; $59a1: $1f
    db $db                                        ; $59a2: $db
    rla                                           ; $59a3: $17
    ret nz                                        ; $59a4: $c0

    ret nz                                        ; $59a5: $c0

    nop                                           ; $59a6: $00
    jp Jump_000_0027                              ; $59a7: $c3 $27 $00


    rl e                                          ; $59aa: $cb $13
    ld d, $26                                     ; $59ac: $16 $26
    and e                                         ; $59ae: $a3
    sbc h                                         ; $59af: $9c
    inc bc                                        ; $59b0: $03
    jr z, jr_0d0_59b3                             ; $59b1: $28 $00

jr_0d0_59b3:
    ld hl, $8445                                  ; $59b3: $21 $45 $84
    adc b                                         ; $59b6: $88
    ld [hl], b                                    ; $59b7: $70
    add b                                         ; $59b8: $80
    rst $38                                       ; $59b9: $ff
    inc bc                                        ; $59ba: $03
    nop                                           ; $59bb: $00
    ld b, h                                       ; $59bc: $44
    db $10                                        ; $59bd: $10
    inc c                                         ; $59be: $0c
    adc $ea                                       ; $59bf: $ce $ea
    sub $ce                                       ; $59c1: $d6 $ce
    cp [hl]                                       ; $59c3: $be
    nop                                           ; $59c4: $00
    and e                                         ; $59c5: $a3
    ld b, c                                       ; $59c6: $41
    inc bc                                        ; $59c7: $03
    inc bc                                        ; $59c8: $03
    inc b                                         ; $59c9: $04

jr_0d0_59ca:
    ld [bc], a                                    ; $59ca: $02
    add e                                         ; $59cb: $83
    ld a, l                                       ; $59cc: $7d
    nop                                           ; $59cd: $00
    db $fc                                        ; $59ce: $fc
    cp $7c                                        ; $59cf: $fe $7c
    ld [bc], a                                    ; $59d1: $02
    inc e                                         ; $59d2: $1c
    ld [bc], a                                    ; $59d3: $02

jr_0d0_59d4:
    db $e4                                        ; $59d4: $e4
    jp nz, $4200                                  ; $59d5: $c2 $00 $42

    ld l, b                                       ; $59d8: $68
    ld [bc], a                                    ; $59d9: $02
    ldh a, [$f0]                                  ; $59da: $f0 $f0
    ld h, d                                       ; $59dc: $62
    add h                                         ; $59dd: $84
    add d                                         ; $59de: $82
    inc b                                         ; $59df: $04
    ld [hl], e                                    ; $59e0: $73
    ret nz                                        ; $59e1: $c0

    ld a, b                                       ; $59e2: $78
    ret nz                                        ; $59e3: $c0

    ld a, [hl]                                    ; $59e4: $7e
    jp nz, $8020                                  ; $59e5: $c2 $20 $80

    ld a, a                                       ; $59e8: $7f
    nop                                           ; $59e9: $00
    rst $38                                       ; $59ea: $ff
    nop                                           ; $59eb: $00
    cp a                                          ; $59ec: $bf
    ei                                            ; $59ed: $fb
    inc bc                                        ; $59ee: $03
    db $e4                                        ; $59ef: $e4
    ld a, d                                       ; $59f0: $7a
    ld a, c                                       ; $59f1: $79
    inc b                                         ; $59f2: $04
    sbc b                                         ; $59f3: $98
    ld a, [de]                                    ; $59f4: $1a
    ldh [rSB], a                                  ; $59f5: $e0 $01
    cp $c8                                        ; $59f7: $fe $c8
    ld [$9400], sp                                ; $59f9: $08 $00 $94
    nop                                           ; $59fc: $00
    sub a                                         ; $59fd: $97
    ld b, c                                       ; $59fe: $41
    rlca                                          ; $59ff: $07
    sub d                                         ; $5a00: $92
    ld [hl], h                                    ; $5a01: $74
    dec d                                         ; $5a02: $15
    inc [hl]                                      ; $5a03: $34
    ld [bc], a                                    ; $5a04: $02
    jr nz, jr_0d0_59ca                            ; $5a05: $20 $c3

    ccf                                           ; $5a07: $3f
    db $10                                        ; $5a08: $10
    db $10                                        ; $5a09: $10
    db $f4                                        ; $5a0a: $f4
    ld a, [c]                                     ; $5a0b: $f2
    inc l                                         ; $5a0c: $2c
    ld [hl+], a                                   ; $5a0d: $22
    ld e, h                                       ; $5a0e: $5c
    nop                                           ; $5a0f: $00
    ld b, d                                       ; $5a10: $42
    inc a                                         ; $5a11: $3c
    ld [bc], a                                    ; $5a12: $02
    ld a, l                                       ; $5a13: $7d
    inc bc                                        ; $5a14: $03
    db $fd                                        ; $5a15: $fd
    inc bc                                        ; $5a16: $03
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00
    cp $fe                                        ; $5a19: $fe $fe
    nop                                           ; $5a1b: $00
    nop                                           ; $5a1c: $00
    ld bc, $00ef                                  ; $5a1d: $01 $ef $00
    nop                                           ; $5a20: $00
    ld a, a                                       ; $5a21: $7f
    rst $38                                       ; $5a22: $ff
    ld b, e                                       ; $5a23: $43
    ret nz                                        ; $5a24: $c0

    ret nz                                        ; $5a25: $c0

    ld b, c                                       ; $5a26: $41
    ret nz                                        ; $5a27: $c0

    ld h, b                                       ; $5a28: $60
    nop                                           ; $5a29: $00
    scf                                           ; $5a2a: $37
    add $33                                       ; $5a2b: $c6 $33
    db $d3                                        ; $5a2d: $d3
    pop bc                                        ; $5a2e: $c1
    dec sp                                        ; $5a2f: $3b
    pop bc                                        ; $5a30: $c1
    add hl, sp                                    ; $5a31: $39
    nop                                           ; $5a32: $00
    rst $38                                       ; $5a33: $ff
    nop                                           ; $5a34: $00
    add b                                         ; $5a35: $80
    cp a                                          ; $5a36: $bf
    ret nz                                        ; $5a37: $c0

    sbc a                                         ; $5a38: $9f
    ret nz                                        ; $5a39: $c0

    ld e, a                                       ; $5a3a: $5f
    nop                                           ; $5a3b: $00
    ld h, b                                       ; $5a3c: $60
    ld l, a                                       ; $5a3d: $6f
    or b                                          ; $5a3e: $b0
    ld h, $36                                     ; $5a3f: $26 $36
    or [hl]                                       ; $5a41: $b6
    jr nz, jr_0d0_59d4                            ; $5a42: $20 $90

    jr nz, @+$01                                  ; $5a44: $20 $ff

    nop                                           ; $5a46: $00
    ld bc, $7f38                                  ; $5a47: $01 $38 $7f
    nop                                           ; $5a4a: $00
    dec a                                         ; $5a4b: $3d
    add c                                         ; $5a4c: $81
    cp $00                                        ; $5a4d: $fe $00
    nop                                           ; $5a4f: $00
    ld [bc], a                                    ; $5a50: $02
    db $fc                                        ; $5a51: $fc
    db $fd                                        ; $5a52: $fd
    inc bc                                        ; $5a53: $03
    pop hl                                        ; $5a54: $e1
    inc bc                                        ; $5a55: $03
    call c, Call_000_1e00                         ; $5a56: $dc $00 $1e
    or b                                          ; $5a59: $b0
    ld [hl-], a                                   ; $5a5a: $32
    ld h, b                                       ; $5a5b: $60
    ld b, d                                       ; $5a5c: $42
    call z, $c102                                 ; $5a5d: $cc $02 $c1
    nop                                           ; $5a60: $00
    add hl, sp                                    ; $5a61: $39
    pop bc                                        ; $5a62: $c1
    ld hl, $15c1                                  ; $5a63: $21 $c1 $15
    jp Jump_000_0607                              ; $5a66: $c3 $07 $06


    nop                                           ; $5a69: $00
    add $3e                                       ; $5a6a: $c6 $3e
    ret z                                         ; $5a6c: $c8

    call z, $c01c                                 ; $5a6d: $cc $1c $c0
    inc hl                                        ; $5a70: $23
    and b                                         ; $5a71: $a0
    nop                                           ; $5a72: $00
    add a                                         ; $5a73: $87
    sub a                                         ; $5a74: $97
    jr nz, jr_0d0_5abf                            ; $5a75: $20 $48

    jr nc, @+$74                                  ; $5a77: $30 $72

    rlca                                          ; $5a79: $07
    ld h, a                                       ; $5a7a: $67
    nop                                           ; $5a7b: $00
    pop af                                        ; $5a7c: $f1
    add c                                         ; $5a7d: $81
    pop hl                                        ; $5a7e: $e1
    ld b, l                                       ; $5a7f: $45
    or h                                          ; $5a80: $b4
    db $e3                                        ; $5a81: $e3
    sbc h                                         ; $5a82: $9c
    ret c                                         ; $5a83: $d8

    nop                                           ; $5a84: $00
    jp nz, $a366                                  ; $5a85: $c2 $66 $a3

    scf                                           ; $5a88: $37
    or $24                                        ; $5a89: $f6 $24
    ld d, h                                       ; $5a8b: $54
    jp c, Jump_0d0_5900                           ; $5a8c: $da $00 $59

    and $24                                       ; $5a8f: $e6 $24
    db $ec                                        ; $5a91: $ec
    db $eb                                        ; $5a92: $eb
    add $c9                                       ; $5a93: $c6 $c9
    db $fc                                        ; $5a95: $fc
    nop                                           ; $5a96: $00
    ld [hl-], a                                   ; $5a97: $32
    db $fc                                        ; $5a98: $fc
    cp d                                          ; $5a99: $ba
    ld l, h                                       ; $5a9a: $6c
    ld h, $5c                                     ; $5a9b: $26 $5c
    ld c, d                                       ; $5a9d: $4a
    ld e, b                                       ; $5a9e: $58
    nop                                           ; $5a9f: $00
    ld e, d                                       ; $5aa0: $5a
    db $e4                                        ; $5aa1: $e4
    ld [bc], a                                    ; $5aa2: $02
    ld c, h                                       ; $5aa3: $4c
    ld b, d                                       ; $5aa4: $42
    inc [hl]                                      ; $5aa5: $34
    ld [hl-], a                                   ; $5aa6: $32
    ld a, d                                       ; $5aa7: $7a
    nop                                           ; $5aa8: $00
    ret nz                                        ; $5aa9: $c0

    ld b, b                                       ; $5aaa: $40
    ret nz                                        ; $5aab: $c0

    ld a, l                                       ; $5aac: $7d
    ret nz                                        ; $5aad: $c0

    ld a, h                                       ; $5aae: $7c
    ret nz                                        ; $5aaf: $c0

    or c                                          ; $5ab0: $b1
    nop                                           ; $5ab1: $00

jr_0d0_5ab2:
    ld [hl], b                                    ; $5ab2: $70
    xor l                                         ; $5ab3: $ad
    ld h, b                                       ; $5ab4: $60
    inc c                                         ; $5ab5: $0c
    ret z                                         ; $5ab6: $c8

    ld a, $e6                                     ; $5ab7: $3e $e6
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    nop                                           ; $5abb: $00
    cp b                                          ; $5abc: $b8
    add $01                                       ; $5abd: $c6 $01

jr_0d0_5abf:
    add b                                         ; $5abf: $80
    ld [hl-], a                                   ; $5ac0: $32
    ld l, b                                       ; $5ac1: $68
    db $fc                                        ; $5ac2: $fc
    nop                                           ; $5ac3: $00
    or b                                          ; $5ac4: $b0
    ld a, a                                       ; $5ac5: $7f
    pop hl                                        ; $5ac6: $e1
    add c                                         ; $5ac7: $81
    inc sp                                        ; $5ac8: $33
    jp $0f07                                      ; $5ac9: $c3 $07 $0f


    nop                                           ; $5acc: $00
    pop hl                                        ; $5acd: $e1
    ld b, $a0                                     ; $5ace: $06 $a0
    ldh [rP1], a                                  ; $5ad0: $e0 $00
    inc b                                         ; $5ad2: $04
    ld c, $1a                                     ; $5ad3: $0e $1a
    nop                                           ; $5ad5: $00
    dec de                                        ; $5ad6: $1b
    ld a, [de]                                    ; $5ad7: $1a
    rla                                           ; $5ad8: $17
    add b                                         ; $5ad9: $80
    ret nz                                        ; $5ada: $c0

    ld a, e                                       ; $5adb: $7b
    dec h                                         ; $5adc: $25
    ld h, b                                       ; $5add: $60
    nop                                           ; $5ade: $00
    ld b, d                                       ; $5adf: $42
    jr z, @+$24                                   ; $5ae0: $28 $22

    jp nz, Jump_000_02cc                          ; $5ae2: $c2 $cc $02

    inc b                                         ; $5ae5: $04
    jr nc, jr_0d0_5ae8                            ; $5ae6: $30 $00

jr_0d0_5ae8:
    ld [bc], a                                    ; $5ae8: $02
    ret c                                         ; $5ae9: $d8

    jp nz, $dcc2                                  ; $5aea: $c2 $c2 $dc

    ld [bc], a                                    ; $5aed: $02
    adc h                                         ; $5aee: $8c
    halt                                          ; $5aef: $76
    jr nz, jr_0d0_5ab2                            ; $5af0: $20 $c0

    ld a, [hl]                                    ; $5af2: $7e
    ld a, $00                                     ; $5af3: $3e $00
    ld a, e                                       ; $5af5: $7b
    ret nz                                        ; $5af6: $c0

    ld [hl], e                                    ; $5af7: $73
    ret nz                                        ; $5af8: $c0

    ld h, a                                       ; $5af9: $67
    nop                                           ; $5afa: $00
    ret nz                                        ; $5afb: $c0

    add b                                         ; $5afc: $80
    ld a, a                                       ; $5afd: $7f
    rst $38                                       ; $5afe: $ff
    nop                                           ; $5aff: $00
    ld h, $60                                     ; $5b00: $26 $60
    ld hl, $1900                                  ; $5b02: $21 $00 $19
    add c                                         ; $5b05: $81
    dec e                                         ; $5b06: $1d
    ret nz                                        ; $5b07: $c0

    ld b, $e0                                     ; $5b08: $06 $e0
    ret z                                         ; $5b0a: $c8

    rst $08                                       ; $5b0b: $cf
    ld b, b                                       ; $5b0c: $40
    sbc $bc                                       ; $5b0d: $de $bc
    ld [$136c], sp                                ; $5b0f: $08 $6c $13
    add d                                         ; $5b12: $82
    ld e, d                                       ; $5b13: $5a
    ld [$020c], sp                                ; $5b14: $08 $0c $02
    ldh a, [rSB]                                  ; $5b17: $f0 $01
    inc c                                         ; $5b19: $0c
    dec bc                                        ; $5b1a: $0b
    ld h, b                                       ; $5b1b: $60
    ld e, a                                       ; $5b1c: $5f
    call z, $3408                                 ; $5b1d: $cc $08 $34
    nop                                           ; $5b20: $00
    ld h, $78                                     ; $5b21: $26 $78
    ld a, [de]                                    ; $5b23: $1a
    ld [hl-], a                                   ; $5b24: $32
    or b                                          ; $5b25: $b0
    jp nz, $f0d8                                  ; $5b26: $c2 $d8 $f0

    nop                                           ; $5b29: $00
    ld h, d                                       ; $5b2a: $62
    jr c, @+$3c                                   ; $5b2b: $38 $3a

    nop                                           ; $5b2d: $00
    cp $fe                                        ; $5b2e: $fe $fe
    nop                                           ; $5b30: $00

    db $00, $01, $bc, $00, $00, $80, $7f, $80, $40, $5f, $c0, $5f, $c0, $50, $5c, $02
    db $00, $5d, $02, $00, $ff, $00, $00, $00, $00, $3f, $c7, $7e, $8e, $00, $00, $6f
    db $1f, $08, $3f, $47, $3f, $5f, $10, $08, $fd, $03, $02, $00, $01, $1f, $18, $0f
    db $f8, $f0, $17, $f0, $01, $17, $fe, $01, $02, $01, $dc, $1e, $02, $38, $a0, $34
    db $08, $9d, $02, $40, $5f, $3f, $5f, $3f, $40, $00, $3f, $44, $3c, $4b, $38, $56
    db $20, $36, $00, $60, $36, $60, $f0, $e7, $e0, $c0, $1f, $00, $8e, $7f, $3e, $3d
    db $7e, $c3, $3c, $c3, $00, $bc, $7f, $41, $dc, $1e, $5c, $1e, $1e, $00, $02, $5e
    db $82, $0e, $c2, $2e, $c2, $ec, $18, $e2, $ec, $e2, $3c, $48, $48, $08, $70, $66
    db $70, $00, $66, $38, $70, $3c, $78, $67, $1f, $67, $00, $1f, $4f, $3f, $4c, $3c
    db $40, $3f, $31, $00, $2e, $60, $1f, $7f, $60, $9f, $1f, $20, $00, $c0, $f0, $e7
    db $70, $e7, $ec, $c2, $ec, $00, $82, $12, $dc, $42, $dc, $1c, $02, $dc, $60, $82
    db $88, $08, $7c, $38, $80, $c0, $80, $7f, $ff, $00, $00, $58, $38, $58, $38, $5c
    db $3c, $78, $04, $38, $47, $3f, $00, $00, $cc, $08, $30, $57, $00, $30, $57, $70
    db $97, $30, $57, $f0, $17, $c0, $10, $18, $bb, $18, $5e, $dc, $dd, $03, $01, $03
    db $00, $00, $fe, $fe, $00

    nop                                           ; $5c16: $00
    ld bc, $00f5                                  ; $5c17: $01 $f5 $00
    ld [$7fff], sp                                ; $5c1a: $08 $ff $7f
    ret nz                                        ; $5c1d: $c0

    ld a, a                                       ; $5c1e: $7f
    inc bc                                        ; $5c1f: $03
    nop                                           ; $5c20: $00
    ret nz                                        ; $5c21: $c0

    pop bc                                        ; $5c22: $c1
    ld a, l                                       ; $5c23: $7d
    nop                                           ; $5c24: $00
    jp $c37b                                      ; $5c25: $c3 $7b $c3


    ld a, e                                       ; $5c28: $7b
    rst $00                                       ; $5c29: $c7
    ld [hl], a                                    ; $5c2a: $77
    rst $38                                       ; $5c2b: $ff
    nop                                           ; $5c2c: $00
    nop                                           ; $5c2d: $00
    inc [hl]                                      ; $5c2e: $34
    ccf                                           ; $5c2f: $3f
    cpl                                           ; $5c30: $2f
    rra                                           ; $5c31: $1f
    db $f4                                        ; $5c32: $f4
    ld c, a                                       ; $5c33: $4f
    ld h, h                                       ; $5c34: $64
    and a                                         ; $5c35: $a7
    nop                                           ; $5c36: $00
    dec b                                         ; $5c37: $05
    db $fc                                        ; $5c38: $fc
    ld a, [$0f06]                                 ; $5c39: $fa $06 $0f
    pop af                                        ; $5c3c: $f1
    rst $38                                       ; $5c3d: $ff
    nop                                           ; $5c3e: $00
    nop                                           ; $5c3f: $00
    ld b, b                                       ; $5c40: $40
    ld hl, sp+$6c                                 ; $5c41: $f8 $6c
    sub h                                         ; $5c43: $94
    ld [hl-], a                                   ; $5c44: $32
    sbc $18                                       ; $5c45: $de $18
    xor $00                                       ; $5c47: $ee $00
    dec b                                         ; $5c49: $05
    di                                            ; $5c4a: $f3
    ld [hl], e                                    ; $5c4b: $73
    rst $08                                       ; $5c4c: $cf
    dec sp                                        ; $5c4d: $3b
    ld l, b                                       ; $5c4e: $68
    cp $00                                        ; $5c4f: $fe $00
    inc b                                         ; $5c51: $04
    ld [bc], a                                    ; $5c52: $02
    db $fc                                        ; $5c53: $fc
    ld [bc], a                                    ; $5c54: $02
    db $fc                                        ; $5c55: $fc
    cp $04                                        ; $5c56: $fe $04
    nop                                           ; $5c58: $00
    add d                                         ; $5c59: $82
    db $fc                                        ; $5c5a: $fc
    nop                                           ; $5c5b: $00
    add d                                         ; $5c5c: $82
    cp h                                          ; $5c5d: $bc
    add d                                         ; $5c5e: $82
    cp h                                          ; $5c5f: $bc
    rst $00                                       ; $5c60: $c7
    ld [hl], a                                    ; $5c61: $77
    rst $08                                       ; $5c62: $cf
    ld h, [hl]                                    ; $5c63: $66
    nop                                           ; $5c64: $00
    rst $08                                       ; $5c65: $cf
    ld h, a                                       ; $5c66: $67
    rst $08                                       ; $5c67: $cf
    ld h, e                                       ; $5c68: $63
    and [hl]                                      ; $5c69: $a6
    ld l, c                                       ; $5c6a: $69
    and e                                         ; $5c6b: $a3
    ld l, h                                       ; $5c6c: $6c
    nop                                           ; $5c6d: $00
    rst $08                                       ; $5c6e: $cf
    ld l, a                                       ; $5c6f: $6f
    adc $6c                                       ; $5c70: $ce $6c
    rra                                           ; $5c72: $1f
    adc a                                         ; $5c73: $8f
    ld b, e                                       ; $5c74: $43
    and a                                         ; $5c75: $a7
    nop                                           ; $5c76: $00
    ldh a, [$0d]                                  ; $5c77: $f0 $0d
    ld sp, hl                                     ; $5c79: $f9
    dec b                                         ; $5c7a: $05
    ld a, [c]                                     ; $5c7b: $f2
    pop hl                                        ; $5c7c: $e1
    ld b, $10                                     ; $5c7d: $06 $10
    nop                                           ; $5c7f: $00
    rst $00                                       ; $5c80: $c7
    sub e                                         ; $5c81: $93
    call nz, Call_000_3a50                        ; $5c82: $c4 $50 $3a
    sbc l                                         ; $5c85: $9d
    sbc d                                         ; $5c86: $9a
    reti                                          ; $5c87: $d9


    nop                                           ; $5c88: $00
    jp nz, Jump_000_01e8                          ; $5c89: $c2 $e8 $01

    ldh [rP1], a                                  ; $5c8c: $e0 $00
    ld e, $e5                                     ; $5c8e: $1e $e5
    ld b, $00                                     ; $5c90: $06 $00
    inc c                                         ; $5c92: $0c
    di                                            ; $5c93: $f3
    ld [hl], l                                    ; $5c94: $75
    ld a, c                                       ; $5c95: $79
    ld [c], a                                     ; $5c96: $e2
    cp h                                          ; $5c97: $bc
    ld [c], a                                     ; $5c98: $e2
    inc a                                         ; $5c99: $3c
    nop                                           ; $5c9a: $00
    jp nz, $c29e                                  ; $5c9b: $c2 $9e $c2

    ld e, [hl]                                    ; $5c9e: $5e
    jp nz, $c2fc                                  ; $5c9f: $c2 $fc $c2

    ld a, h                                       ; $5ca2: $7c
    add b                                         ; $5ca3: $80
    ld b, b                                       ; $5ca4: $40
    nop                                           ; $5ca5: $00
    db $fc                                        ; $5ca6: $fc
    rst $08                                       ; $5ca7: $cf
    ld l, b                                       ; $5ca8: $68
    rst $00                                       ; $5ca9: $c7
    ld [hl], l                                    ; $5caa: $75
    jp Jump_000_0078                              ; $5cab: $c3 $78 $00


    pop bc                                        ; $5cae: $c1
    ld h, b                                       ; $5caf: $60

jr_0d0_5cb0:
    pop bc                                        ; $5cb0: $c1
    ld c, b                                       ; $5cb1: $48
    pop bc                                        ; $5cb2: $c1
    ld e, h                                       ; $5cb3: $5c
    ld e, l                                       ; $5cb4: $5d
    pop bc                                        ; $5cb5: $c1
    nop                                           ; $5cb6: $00
    ld a, l                                       ; $5cb7: $7d
    pop bc                                        ; $5cb8: $c1
    ld b, [hl]                                    ; $5cb9: $46
    sub d                                         ; $5cba: $92
    ld b, a                                       ; $5cbb: $47
    sub d                                         ; $5cbc: $92
    rlca                                          ; $5cbd: $07
    rlc b                                         ; $5cbe: $cb $00
    ld l, a                                       ; $5cc0: $6f
    sub a                                         ; $5cc1: $97
    rrca                                          ; $5cc2: $0f
    rst $10                                       ; $5cc3: $d7
    ld h, $90                                     ; $5cc4: $26 $90
    inc de                                        ; $5cc6: $13
    sbc b                                         ; $5cc7: $98
    nop                                           ; $5cc8: $00
    inc c                                         ; $5cc9: $0c
    ld l, h                                       ; $5cca: $6c
    dec a                                         ; $5ccb: $3d
    ld b, h                                       ; $5ccc: $44
    db $fd                                        ; $5ccd: $fd
    push af                                       ; $5cce: $f5
    add [hl]                                      ; $5ccf: $86
    db $fc                                        ; $5cd0: $fc
    nop                                           ; $5cd1: $00
    inc b                                         ; $5cd2: $04
    jp nz, Jump_000_3b83                          ; $5cd3: $c2 $83 $3b

    nop                                           ; $5cd6: $00
    ld a, b                                       ; $5cd7: $78
    ld [c], a                                     ; $5cd8: $e2
    ld d, $04                                     ; $5cd9: $16 $04
    ld [$021c], sp                                ; $5cdb: $08 $1c $02
    ld a, [hl]                                    ; $5cde: $7e
    add d                                         ; $5cdf: $82
    ld [bc], a                                    ; $5ce0: $02
    nop                                           ; $5ce1: $00
    ld [bc], a                                    ; $5ce2: $02
    ld l, [hl]                                    ; $5ce3: $6e
    nop                                           ; $5ce4: $00
    sub d                                         ; $5ce5: $92
    db $e3                                        ; $5ce6: $e3
    ld [c], a                                     ; $5ce7: $e2
    ld d, e                                       ; $5ce8: $53
    ld [bc], a                                    ; $5ce9: $02
    inc c                                         ; $5cea: $0c
    ld [c], a                                     ; $5ceb: $e2
    db $f4                                        ; $5cec: $f4
    nop                                           ; $5ced: $00
    jr c, jr_0d0_5cb0                             ; $5cee: $38 $c0

    inc sp                                        ; $5cf0: $33
    jp $32c2                                      ; $5cf1: $c3 $c2 $32


    add $26                                       ; $5cf4: $c6 $26
    nop                                           ; $5cf6: $00
    rst $00                                       ; $5cf7: $c7
    daa                                           ; $5cf8: $27
    call $800d                                    ; $5cf9: $cd $0d $80
    ld a, a                                       ; $5cfc: $7f
    rst $38                                       ; $5cfd: $ff
    nop                                           ; $5cfe: $00
    nop                                           ; $5cff: $00
    ld [hl], h                                    ; $5d00: $74
    inc bc                                        ; $5d01: $03
    ld e, a                                       ; $5d02: $5f
    ld h, $86                                     ; $5d03: $26 $86
    ld a, [$fc83]                                 ; $5d05: $fa $83 $fc
    nop                                           ; $5d08: $00
    ld b, c                                       ; $5d09: $41
    ld a, $e1                                     ; $5d0a: $3e $e1
    sbc $ff                                       ; $5d0c: $de $ff
    nop                                           ; $5d0e: $00
    nop                                           ; $5d0f: $00
    nop                                           ; $5d10: $00
    nop                                           ; $5d11: $00
    inc e                                         ; $5d12: $1c
    ld hl, sp-$3e                                 ; $5d13: $f8 $c2
    db $fc                                        ; $5d15: $fc
    ld a, h                                       ; $5d16: $7c
    ld a, [hl-]                                   ; $5d17: $3a
    nop                                           ; $5d18: $00
    sbc h                                         ; $5d19: $9c
    ld [$be23], sp                                ; $5d1a: $08 $23 $be
    ld a, $bc                                     ; $5d1d: $3e $bc
    db $10                                        ; $5d1f: $10
    ld [$f862], sp                                ; $5d20: $08 $62 $f8
    ld [de], a                                    ; $5d23: $12
    nop                                           ; $5d24: $00
    inc a                                         ; $5d25: $3c
    add d                                         ; $5d26: $82
    db $e4                                        ; $5d27: $e4
    ld [bc], a                                    ; $5d28: $02
    add b                                         ; $5d29: $80
    ld [bc], a                                    ; $5d2a: $02
    ld a, b                                       ; $5d2b: $78
    add d                                         ; $5d2c: $82
    nop                                           ; $5d2d: $00
    cp h                                          ; $5d2e: $bc
    nop                                           ; $5d2f: $00
    cp $fe                                        ; $5d30: $fe $fe
    nop                                           ; $5d32: $00
    nop                                           ; $5d33: $00
    ld bc, $00d8                                  ; $5d34: $01 $d8 $00
    ld [bc], a                                    ; $5d37: $02
    rst $38                                       ; $5d38: $ff
    ld a, a                                       ; $5d39: $7f
    ret nz                                        ; $5d3a: $c0

    ld b, b                                       ; $5d3b: $40
    cp a                                          ; $5d3c: $bf
    ret nz                                        ; $5d3d: $c0

    ld [bc], a                                    ; $5d3e: $02
    jr jr_0d0_5dbf                                ; $5d3f: $18 $7e

    add b                                         ; $5d41: $80
    ld [bc], a                                    ; $5d42: $02
    nop                                           ; $5d43: $00
    rst $38                                       ; $5d44: $ff
    nop                                           ; $5d45: $00
    nop                                           ; $5d46: $00
    ld [bc], a                                    ; $5d47: $02
    db $fd                                        ; $5d48: $fd
    dec c                                         ; $5d49: $0d
    ldh a, [rP1]                                  ; $5d4a: $f0 $00
    rla                                           ; $5d4c: $17
    ld a, a                                       ; $5d4d: $7f
    ldh a, [$bf]                                  ; $5d4e: $f0 $bf
    add c                                         ; $5d50: $81
    ccf                                           ; $5d51: $3f
    ld c, a                                       ; $5d52: $4f
    add hl, de                                    ; $5d53: $19
    ld b, b                                       ; $5d54: $40
    ld a, $10                                     ; $5d55: $3e $10
    nop                                           ; $5d57: $00
    nop                                           ; $5d58: $00
    di                                            ; $5d59: $f3
    nop                                           ; $5d5a: $00
    call nc, Call_0d0_55a3                        ; $5d5b: $d4 $a3 $55
    nop                                           ; $5d5e: $00
    or d                                          ; $5d5f: $b2
    call Call_0d0_55ba                            ; $5d60: $cd $ba $55
    or d                                          ; $5d63: $b2
    inc b                                         ; $5d64: $04
    add c                                         ; $5d65: $81
    cp $00                                        ; $5d66: $fe $00
    ld bc, $0102                                  ; $5d68: $01 $02 $01
    cp h                                          ; $5d6b: $bc
    add d                                         ; $5d6c: $82
    db $fc                                        ; $5d6d: $fc
    ld a, [c]                                     ; $5d6e: $f2
    ld [hl-], a                                   ; $5d6f: $32
    nop                                           ; $5d70: $00
    ld b, $f2                                     ; $5d71: $06 $f2
    ld b, $e4                                     ; $5d73: $06 $e4
    ld b, $7c                                     ; $5d75: $06 $7c
    sub [hl]                                      ; $5d77: $96
    ld a, h                                       ; $5d78: $7c
    nop                                           ; $5d79: $00
    ret nz                                        ; $5d7a: $c0

    ld a, b                                       ; $5d7b: $78
    pop bc                                        ; $5d7c: $c1
    ld a, b                                       ; $5d7d: $78
    ret nz                                        ; $5d7e: $c0

    ld a, h                                       ; $5d7f: $7c
    pop bc                                        ; $5d80: $c1
    ld a, b                                       ; $5d81: $78
    ld [$7cc3], sp                                ; $5d82: $08 $c3 $7c
    ret nz                                        ; $5d85: $c0

    ld a, a                                       ; $5d86: $7f
    ld [bc], a                                    ; $5d87: $02
    nop                                           ; $5d88: $00
    db $fd                                        ; $5d89: $fd
    dec b                                         ; $5d8a: $05
    db $f4                                        ; $5d8b: $f4
    nop                                           ; $5d8c: $00
    sub a                                         ; $5d8d: $97
    rst $30                                       ; $5d8e: $f7
    inc l                                         ; $5d8f: $2c
    or b                                          ; $5d90: $b0
    scf                                           ; $5d91: $37
    cp b                                          ; $5d92: $b8
    ldh a, [$f9]                                  ; $5d93: $f0 $f9
    nop                                           ; $5d95: $00
    or d                                          ; $5d96: $b2
    ld c, l                                       ; $5d97: $4d
    ld c, [hl]                                    ; $5d98: $4e
    dec bc                                        ; $5d99: $0b
    rrca                                          ; $5d9a: $0f
    db $10                                        ; $5d9b: $10
    xor h                                         ; $5d9c: $ac
    rst $38                                       ; $5d9d: $ff
    nop                                           ; $5d9e: $00
    ld bc, $28e5                                  ; $5d9f: $01 $e5 $28
    di                                            ; $5da2: $f3
    rst $28                                       ; $5da3: $ef
    rst $20                                       ; $5da4: $e7
    ret c                                         ; $5da5: $d8

    ld c, a                                       ; $5da6: $4f
    nop                                           ; $5da7: $00
    scf                                           ; $5da8: $37
    ld [hl], h                                    ; $5da9: $74
    ld a, $f4                                     ; $5daa: $3e $f4
    ld a, [hl]                                    ; $5dac: $7e
    ld h, [hl]                                    ; $5dad: $66
    ld a, [de]                                    ; $5dae: $1a
    ld d, $00                                     ; $5daf: $16 $00
    ld a, [bc]                                    ; $5db1: $0a
    sub d                                         ; $5db2: $92
    ld [bc], a                                    ; $5db3: $02
    ld [c], a                                     ; $5db4: $e2
    ld c, $e1                                     ; $5db5: $0e $e1
    ld [c], a                                     ; $5db7: $e2
    pop bc                                        ; $5db8: $c1
    ld b, $c2                                     ; $5db9: $06 $c2
    ld b, d                                       ; $5dbb: $42
    add e                                         ; $5dbc: $83
    ld b, d                                       ; $5dbd: $42
    add e                                         ; $5dbe: $83

jr_0d0_5dbf:
    inc [hl]                                      ; $5dbf: $34
    ld [$2804], sp                                ; $5dc0: $08 $04 $28
    ret nz                                        ; $5dc3: $c0

    nop                                           ; $5dc4: $00
    ld b, b                                       ; $5dc5: $40
    ret nz                                        ; $5dc6: $c0

    ld b, b                                       ; $5dc7: $40
    adc b                                         ; $5dc8: $88
    rst $00                                       ; $5dc9: $c7
    ret z                                         ; $5dca: $c8

    rst $00                                       ; $5dcb: $c7
    ld c, a                                       ; $5dcc: $4f
    nop                                           ; $5dcd: $00
    ld [hl], b                                    ; $5dce: $70
    ccf                                           ; $5dcf: $3f
    jr nc, @+$11                                  ; $5dd0: $30 $0f

    scf                                           ; $5dd2: $37
    rrca                                          ; $5dd3: $0f
    inc de                                        ; $5dd4: $13
    rlca                                          ; $5dd5: $07
    nop                                           ; $5dd6: $00
    jr jr_0d0_5dfc                                ; $5dd7: $18 $23

    inc a                                         ; $5dd9: $3c
    rst $30                                       ; $5dda: $f7
    rlca                                          ; $5ddb: $07
    db $db                                        ; $5ddc: $db
    ld sp, $0021                                  ; $5ddd: $31 $21 $00
    and $00                                       ; $5de0: $e6 $00
    cp $fc                                        ; $5de2: $fe $fc
    add [hl]                                      ; $5de4: $86
    ld b, [hl]                                    ; $5de5: $46
    ld a, [hl-]                                   ; $5de6: $3a
    inc b                                         ; $5de7: $04
    nop                                           ; $5de8: $00
    or [hl]                                       ; $5de9: $b6
    adc h                                         ; $5dea: $8c
    or $c2                                        ; $5deb: $f6 $c2
    pop bc                                        ; $5ded: $c1
    add d                                         ; $5dee: $82
    add c                                         ; $5def: $81
    add d                                         ; $5df0: $82
    jr nz, @-$7d                                  ; $5df1: $20 $81

    ld [bc], a                                    ; $5df3: $02
    add [hl]                                      ; $5df4: $86
    nop                                           ; $5df5: $00
    ld [bc], a                                    ; $5df6: $02
    ld bc, $fdfe                                  ; $5df7: $01 $fe $fd
    ld [bc], a                                    ; $5dfa: $02
    ld b, b                                       ; $5dfb: $40

jr_0d0_5dfc:
    ld bc, $0834                                  ; $5dfc: $01 $34 $08

jr_0d0_5dff:
    ret nz                                        ; $5dff: $c0

    ld b, c                                       ; $5e00: $41
    pop bc                                        ; $5e01: $c1
    ld b, d                                       ; $5e02: $42
    pop bc                                        ; $5e03: $c1
    ld a, l                                       ; $5e04: $7d
    nop                                           ; $5e05: $00
    pop bc                                        ; $5e06: $c1
    ld a, d                                       ; $5e07: $7a
    add b                                         ; $5e08: $80
    ld a, a                                       ; $5e09: $7f
    rst $38                                       ; $5e0a: $ff
    nop                                           ; $5e0b: $00
    ld a, [hl]                                    ; $5e0c: $7e
    ld h, c                                       ; $5e0d: $61
    nop                                           ; $5e0e: $00
    rst $38                                       ; $5e0f: $ff
    and b                                         ; $5e10: $a0
    adc $d1                                       ; $5e11: $ce $d1
    jp $d1ac                                      ; $5e13: $c3 $ac $d1


    ldh [rNR41], a                                ; $5e16: $e0 $20
    ld l, h                                       ; $5e18: $6c
    or b                                          ; $5e19: $b0
    cp h                                          ; $5e1a: $bc
    ld [$fcf8], sp                                ; $5e1b: $08 $f8 $fc
    ldh a, [$0c]                                  ; $5e1e: $f0 $0c
    ld h, [hl]                                    ; $5e20: $66
    ld bc, $fffa                                  ; $5e21: $01 $fa $ff
    add hl, bc                                    ; $5e24: $09
    ld [c], a                                     ; $5e25: $e2
    halt                                          ; $5e26: $76
    ld bc, $cce6                                  ; $5e27: $01 $e6 $cc
    ld [$34c0], sp                                ; $5e2a: $08 $c0 $34
    ld [$183e], sp                                ; $5e2d: $08 $3e $18
    add d                                         ; $5e30: $82
    add c                                         ; $5e31: $81
    nop                                           ; $5e32: $00
    cp $fe                                        ; $5e33: $fe $fe
    nop                                           ; $5e35: $00
    nop                                           ; $5e36: $00
    ld bc, $00f3                                  ; $5e37: $01 $f3 $00
    nop                                           ; $5e3a: $00
    ld a, a                                       ; $5e3b: $7f
    rst $38                                       ; $5e3c: $ff
    ld a, a                                       ; $5e3d: $7f
    ret nz                                        ; $5e3e: $c0

    ld a, [hl]                                    ; $5e3f: $7e
    ret nz                                        ; $5e40: $c0

    ld a, l                                       ; $5e41: $7d
    ret nz                                        ; $5e42: $c0

    nop                                           ; $5e43: $00
    ld h, e                                       ; $5e44: $63
    ret nz                                        ; $5e45: $c0

    ld e, e                                       ; $5e46: $5b
    ret nz                                        ; $5e47: $c0

    jp nz, $cb1a                                  ; $5e48: $c2 $1a $cb

    dec sp                                        ; $5e4b: $3b
    nop                                           ; $5e4c: $00
    rst $38                                       ; $5e4d: $ff
    nop                                           ; $5e4e: $00
    nop                                           ; $5e4f: $00
    add a                                         ; $5e50: $87
    add $be                                       ; $5e51: $c6 $be
    cp c                                          ; $5e53: $b9
    rlca                                          ; $5e54: $07
    nop                                           ; $5e55: $00
    ld sp, hl                                     ; $5e56: $f9
    ld a, $b4                                     ; $5e57: $3e $b4
    cp e                                          ; $5e59: $bb
    and $9a                                       ; $5e5a: $e6 $9a
    ret                                           ; $5e5c: $c9


    add hl, sp                                    ; $5e5d: $39
    add b                                         ; $5e5e: $80
    stop                                          ; $5e5f: $10 $00
    adc a                                         ; $5e61: $8f
    ld [hl], a                                    ; $5e62: $77
    ld d, b                                       ; $5e63: $50
    ld c, e                                       ; $5e64: $4b
    jr c, jr_0d0_5dff                             ; $5e65: $38 $98

    or e                                          ; $5e67: $b3
    nop                                           ; $5e68: $00
    ret nc                                        ; $5e69: $d0

    adc e                                         ; $5e6a: $8b
    db $ec                                        ; $5e6b: $ec
    ld l, c                                       ; $5e6c: $69
    add h                                         ; $5e6d: $84
    adc d                                         ; $5e6e: $8a
    cp $00                                        ; $5e6f: $fe $00
    ld [$fc02], sp                                ; $5e71: $08 $02 $fc
    cp $fc                                        ; $5e74: $fe $fc
    inc b                                         ; $5e76: $04
    db $10                                        ; $5e77: $10
    call c, $ac8e                                 ; $5e78: $dc $8e $ac
    nop                                           ; $5e7b: $00
    ld c, $6c                                     ; $5e7c: $0e $6c
    jp z, $c139                                   ; $5e7e: $ca $39 $c1

    inc c                                         ; $5e81: $0c
    ret nc                                        ; $5e82: $d0

    inc [hl]                                      ; $5e83: $34
    nop                                           ; $5e84: $00
    ret nz                                        ; $5e85: $c0

    ld a, [de]                                    ; $5e86: $1a
    call nz, $e8c2                                ; $5e87: $c4 $c2 $e8
    jp nc, Jump_000_36c4                          ; $5e8a: $d2 $c4 $36

    nop                                           ; $5e8d: $00
    call z, $c00f                                 ; $5e8e: $cc $0f $c0
    ld h, [hl]                                    ; $5e91: $66
    add $1e                                       ; $5e92: $c6 $1e
    add [hl]                                      ; $5e94: $86
    ret z                                         ; $5e95: $c8

    nop                                           ; $5e96: $00
    pop bc                                        ; $5e97: $c1
    pop hl                                        ; $5e98: $e1
    ld b, d                                       ; $5e99: $42
    rst $38                                       ; $5e9a: $ff
    ld a, a                                       ; $5e9b: $7f
    ld h, c                                       ; $5e9c: $61
    ld hl, $003f                                  ; $5e9d: $21 $3f $00
    cp [hl]                                       ; $5ea0: $be
    sbc h                                         ; $5ea1: $9c
    sub e                                         ; $5ea2: $93
    rst $10                                       ; $5ea3: $d7
    adc e                                         ; $5ea4: $8b
    ld e, e                                       ; $5ea5: $5b
    add c                                         ; $5ea6: $81
    ld c, e                                       ; $5ea7: $4b
    nop                                           ; $5ea8: $00
    jp Jump_000_3b33                              ; $5ea9: $c3 $33 $3b


    reti                                          ; $5eac: $d9


    ld b, e                                       ; $5ead: $43
    xor e                                         ; $5eae: $ab
    db $f4                                        ; $5eaf: $f4
    or e                                          ; $5eb0: $b3
    ld [bc], a                                    ; $5eb1: $02
    inc b                                         ; $5eb2: $04
    rlca                                          ; $5eb3: $07
    db $ec                                        ; $5eb4: $ec
    ld c, $dc                                     ; $5eb5: $0e $dc
    ld e, $04                                     ; $5eb7: $1e $04
    nop                                           ; $5eb9: $00
    ld e, [hl]                                    ; $5eba: $5e
    nop                                           ; $5ebb: $00
    db $ec                                        ; $5ebc: $ec
    ld l, $f4                                     ; $5ebd: $2e $f4
    ld d, $12                                     ; $5ebf: $16 $12
    ld [c], a                                     ; $5ec1: $e2
    ld [hl+], a                                   ; $5ec2: $22
    jp nz, $d900                                  ; $5ec3: $c2 $00 $d9

    rra                                           ; $5ec6: $1f
    ld hl, sp+$3f                                 ; $5ec7: $f8 $3f
    sbc $3f                                       ; $5ec9: $de $3f
    rst $00                                       ; $5ecb: $c7
    ccf                                           ; $5ecc: $3f
    nop                                           ; $5ecd: $00
    jp nz, $c10f                                  ; $5ece: $c2 $0f $c1

    rlca                                          ; $5ed1: $07
    call z, $c92f                                 ; $5ed2: $cc $2f $c9
    add hl, hl                                    ; $5ed5: $29
    nop                                           ; $5ed6: $00
    add c                                         ; $5ed7: $81
    call c, $a2c1                                 ; $5ed8: $dc $c1 $a2
    ld a, $dd                                     ; $5edb: $3e $dd
    ld e, $75                                     ; $5edd: $1e $75
    nop                                           ; $5edf: $00
    db $d3                                        ; $5ee0: $d3
    call Call_000_18e6                            ; $5ee1: $cd $e6 $18
    ld a, $d9                                     ; $5ee4: $3e $d9
    dec c                                         ; $5ee6: $0d
    ld e, l                                       ; $5ee7: $5d
    nop                                           ; $5ee8: $00
    ld b, b                                       ; $5ee9: $40
    rst $00                                       ; $5eea: $c7
    ld [hl], b                                    ; $5eeb: $70
    rlca                                          ; $5eec: $07
    dec c                                         ; $5eed: $0d
    add a                                         ; $5eee: $87
    ld a, [hl]                                    ; $5eef: $7e
    add a                                         ; $5ef0: $87
    nop                                           ; $5ef1: $00
    ld [hl], $fa                                  ; $5ef2: $36 $fa
    call nc, $dc2e                                ; $5ef4: $d4 $2e $dc
    db $ec                                        ; $5ef7: $ec
    ldh a, [$ea]                                  ; $5ef8: $f0 $ea
    nop                                           ; $5efa: $00
    call c, $cc5e                                 ; $5efb: $dc $5e $cc
    ld c, $80                                     ; $5efe: $0e $80
    add d                                         ; $5f00: $82
    call c, $008e                                 ; $5f01: $dc $8e $00
    ld b, d                                       ; $5f04: $42
    call z, $ec62                                 ; $5f05: $cc $62 $ec
    and [hl]                                      ; $5f08: $a6
    db $fc                                        ; $5f09: $fc
    ld [bc], a                                    ; $5f0a: $02
    adc h                                         ; $5f0b: $8c
    nop                                           ; $5f0c: $00
    dec hl                                        ; $5f0d: $2b
    jp nz, $d131                                  ; $5f0e: $c2 $31 $d1

    ld a, [hl-]                                   ; $5f11: $3a
    ret c                                         ; $5f12: $d8

    dec sp                                        ; $5f13: $3b
    ret c                                         ; $5f14: $d8

    nop                                           ; $5f15: $00
    ret nz                                        ; $5f16: $c0

    ld [hl], e                                    ; $5f17: $73
    ret nz                                        ; $5f18: $c0

    ld [hl], a                                    ; $5f19: $77
    add b                                         ; $5f1a: $80
    ld a, a                                       ; $5f1b: $7f
    rst $38                                       ; $5f1c: $ff
    nop                                           ; $5f1d: $00
    nop                                           ; $5f1e: $00
    ld c, d                                       ; $5f1f: $4a
    adc l                                         ; $5f20: $8d
    push hl                                       ; $5f21: $e5
    ld h, a                                       ; $5f22: $67
    ld [bc], a                                    ; $5f23: $02
    add e                                         ; $5f24: $83
    ld b, d                                       ; $5f25: $42
    ld a, [hl+]                                   ; $5f26: $2a
    ld [$c4c8], sp                                ; $5f27: $08 $c8 $c4
    rst $08                                       ; $5f2a: $cf
    ret nz                                        ; $5f2b: $c0

    call z, RST_00                                ; $5f2c: $cc $00 $00
    ld d, b                                       ; $5f2f: $50
    and b                                         ; $5f30: $a0
    nop                                           ; $5f31: $00
    db $fc                                        ; $5f32: $fc
    call z, $02ba                                 ; $5f33: $cc $ba $02
    add hl, de                                    ; $5f36: $19
    inc bc                                        ; $5f37: $03
    rst $20                                       ; $5f38: $e7
    db $c4, $20, $01                              ; $5f39: $c4 $20 $01
    cp $10                                        ; $5f3c: $fe $10
    ld [$0c02], sp                                ; $5f3e: $08 $02 $0c
    ld h, d                                       ; $5f41: $62
    ld h, h                                       ; $5f42: $64
    ld [hl+], a                                   ; $5f43: $22
    nop                                           ; $5f44: $00
    ld h, h                                       ; $5f45: $64
    ld [de], a                                    ; $5f46: $12
    jr nc, jr_0d0_5f5b                            ; $5f47: $30 $12

    ld a, b                                       ; $5f49: $78
    ld [bc], a                                    ; $5f4a: $02
    ld a, h                                       ; $5f4b: $7c
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    cp $fe                                        ; $5f4e: $fe $fe
    nop                                           ; $5f50: $00
    nop                                           ; $5f51: $00
    ld bc, $00d2                                  ; $5f52: $01 $d2 $00
    ld [$ff80], sp                                ; $5f55: $08 $80 $ff
    cp a                                          ; $5f58: $bf
    ret nz                                        ; $5f59: $c0

    ld [bc], a                                    ; $5f5a: $02

jr_0d0_5f5b:
    db $10                                        ; $5f5b: $10
    ld b, c                                       ; $5f5c: $41
    cp a                                          ; $5f5d: $bf
    ld b, e                                       ; $5f5e: $43
    nop                                           ; $5f5f: $00
    cp b                                          ; $5f60: $b8
    ld hl, sp-$46                                 ; $5f61: $f8 $ba
    ld hl, sp+$00                                 ; $5f63: $f8 $00
    rst $38                                       ; $5f65: $ff
    ldh [rNR41], a                                ; $5f66: $e0 $20
    nop                                           ; $5f68: $00
    sub b                                         ; $5f69: $90
    rra                                           ; $5f6a: $1f
    ld h, b                                       ; $5f6b: $60
    ld e, a                                       ; $5f6c: $5f
    ccf                                           ; $5f6d: $3f
    ld d, b                                       ; $5f6e: $50
    ccf                                           ; $5f6f: $3f
    ld [hl], e                                    ; $5f70: $73
    nop                                           ; $5f71: $00
    ccf                                           ; $5f72: $3f
    ld a, a                                       ; $5f73: $7f
    ccf                                           ; $5f74: $3f
    ld c, l                                       ; $5f75: $4d
    nop                                           ; $5f76: $00
    rst $38                                       ; $5f77: $ff
    rrca                                          ; $5f78: $0f
    ld [$8300], sp                                ; $5f79: $08 $00 $83
    ldh [$f1], a                                  ; $5f7c: $e0 $f1
    ld hl, sp-$04                                 ; $5f7e: $f8 $fc
    ld a, [$fefc]                                 ; $5f80: $fa $fc $fe
    nop                                           ; $5f83: $00
    ld b, $fc                                     ; $5f84: $06 $fc
    ld b, $fc                                     ; $5f86: $06 $fc
    nop                                           ; $5f88: $00
    cp $fc                                        ; $5f89: $fe $fc
    ld [bc], a                                    ; $5f8b: $02

jr_0d0_5f8c:
    add b                                         ; $5f8c: $80
    ld [bc], a                                    ; $5f8d: $02
    db $10                                        ; $5f8e: $10
    cp $fc                                        ; $5f8f: $fe $fc
    ld a, [hl]                                    ; $5f91: $7e
    db $fc                                        ; $5f92: $fc
    add d                                         ; $5f93: $82
    db $fc                                        ; $5f94: $fc
    add d                                         ; $5f95: $82
    nop                                           ; $5f96: $00
    ld sp, hl                                     ; $5f97: $f9
    ld b, b                                       ; $5f98: $40
    ld hl, sp+$42                                 ; $5f99: $f8 $42
    ld b, d                                       ; $5f9b: $42
    ldh a, [rDMA]                                 ; $5f9c: $f0 $46
    ldh a, [rP1]                                  ; $5f9e: $f0 $00
    ldh a, [rLYC]                                 ; $5fa0: $f0 $45
    ldh a, [rLYC]                                 ; $5fa2: $f0 $45
    ld b, c                                       ; $5fa4: $41
    ld hl, sp+$43                                 ; $5fa5: $f8 $43
    ld hl, sp+$00                                 ; $5fa7: $f8 $00
    ccf                                           ; $5fa9: $3f
    ld e, a                                       ; $5faa: $5f
    or c                                          ; $5fab: $b1
    inc bc                                        ; $5fac: $03
    or h                                          ; $5fad: $b4
    inc a                                         ; $5fae: $3c
    xor d                                         ; $5faf: $aa
    ld a, $00                                     ; $5fb0: $3e $00
    sbc b                                         ; $5fb2: $98
    jr nz, jr_0d0_5fc3                            ; $5fb3: $20 $0e

    inc sp                                        ; $5fb5: $33
    jr c, jr_0d0_6008                             ; $5fb6: $38 $50

    inc a                                         ; $5fb8: $3c
    ld a, e                                       ; $5fb9: $7b
    nop                                           ; $5fba: $00
    cp $e9                                        ; $5fbb: $fe $e9
    db $ec                                        ; $5fbd: $ec
    jp nc, $a9d1                                  ; $5fbe: $d2 $d1 $a9

    ld [hl], l                                    ; $5fc1: $75
    ld b, e                                       ; $5fc2: $43

jr_0d0_5fc3:
    nop                                           ; $5fc3: $00
    ld hl, $cf31                                  ; $5fc4: $21 $31 $cf
    sub l                                         ; $5fc7: $95
    nop                                           ; $5fc8: $00
    jr nz, @+$34                                  ; $5fc9: $20 $32

    db $f4                                        ; $5fcb: $f4
    pop de                                        ; $5fcc: $d1
    inc [hl]                                      ; $5fcd: $34
    ld [$1004], sp                                ; $5fce: $08 $04 $10
    ld [c], a                                     ; $5fd1: $e2
    ld b, h                                       ; $5fd2: $44
    db $10                                        ; $5fd3: $10
    and $42                                       ; $5fd4: $e6 $42
    ld hl, sp+$02                                 ; $5fd6: $f8 $02
    jr jr_0d0_5fda                                ; $5fd8: $18 $00

jr_0d0_5fda:
    ld c, d                                       ; $5fda: $4a
    ldh a, [rRP]                                  ; $5fdb: $f0 $56
    ldh [$3e], a                                  ; $5fdd: $e0 $3e
    jp c, $f03c                                   ; $5fdf: $da $3c $f0

    nop                                           ; $5fe2: $00
    inc bc                                        ; $5fe3: $03
    ld a, $27                                     ; $5fe4: $3e $27
    add hl, de                                    ; $5fe6: $19
    jr z, jr_0d0_6020                             ; $5fe7: $28 $37

    jr nc, jr_0d0_601a                            ; $5fe9: $30 $2f

    nop                                           ; $5feb: $00
    jr nc, jr_0d0_600d                            ; $5fec: $30 $1f

    rla                                           ; $5fee: $17
    ld e, $0c                                     ; $5fef: $1e $0c
    dec [hl]                                      ; $5ff1: $35
    rlca                                          ; $5ff2: $07
    ld e, d                                       ; $5ff3: $5a
    nop                                           ; $5ff4: $00
    or $02                                        ; $5ff5: $f6 $02
    ld h, $12                                     ; $5ff7: $26 $12
    and l                                         ; $5ff9: $a5
    db $10                                        ; $5ffa: $10
    call z, Call_000_0081                         ; $5ffb: $cc $81 $00
    ldh a, [$cb]                                  ; $5ffe: $f0 $cb
    nop                                           ; $6000: $00
    dec bc                                        ; $6001: $0b
    db $e4                                        ; $6002: $e4
    ldh [rNR14], a                                ; $6003: $e0 $14
    ldh a, [$a0]                                  ; $6005: $f0 $a0
    ld b, b                                       ; $6007: $40

jr_0d0_6008:
    jr nc, jr_0d0_5f8c                            ; $6008: $30 $82

    adc b                                         ; $600a: $88
    jr @-$2a                                      ; $600b: $18 $d4

jr_0d0_600d:
    ld h, b                                       ; $600d: $60
    call nz, $e448                                ; $600e: $c4 $48 $e4
    nop                                           ; $6011: $00
    ld c, b                                       ; $6012: $48
    add sp, $44                                   ; $6013: $e8 $44
    add sp, $53                                   ; $6015: $e8 $53
    ret nz                                        ; $6017: $c0

    ld [hl], l                                    ; $6018: $75
    add b                                         ; $6019: $80

jr_0d0_601a:
    nop                                           ; $601a: $00
    ld a, a                                       ; $601b: $7f
    rst $38                                       ; $601c: $ff
    nop                                           ; $601d: $00
    inc l                                         ; $601e: $2c
    ld c, e                                       ; $601f: $4b

jr_0d0_6020:
    ld d, a                                       ; $6020: $57
    inc h                                         ; $6021: $24
    cpl                                           ; $6022: $2f
    nop                                           ; $6023: $00
    sub a                                         ; $6024: $97
    sbc e                                         ; $6025: $9b
    ld b, l                                       ; $6026: $45
    adc e                                         ; $6027: $8b
    ld h, l                                       ; $6028: $65
    jp $ff31                                      ; $6029: $c3 $31 $ff


    nop                                           ; $602c: $00
    nop                                           ; $602d: $00
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    push hl                                       ; $6030: $e5
    ld b, $c1                                     ; $6031: $06 $c1
    add $2e                                       ; $6033: $c6 $2e
    ld bc, $6637                                  ; $6035: $01 $37 $66
    ld a, a                                       ; $6038: $7f
    ld h, [hl]                                    ; $6039: $66
    add hl, bc                                    ; $603a: $09
    ld a, [hl-]                                   ; $603b: $3a
    inc c                                         ; $603c: $0c
    db $10                                        ; $603d: $10
    ld [$b484], sp                                ; $603e: $08 $84 $b4
    ld [$7e7c], sp                                ; $6041: $08 $7c $7e
    db $fc                                        ; $6044: $fc
    ld a, [bc]                                    ; $6045: $0a
    add $08                                       ; $6046: $c6 $08
    nop                                           ; $6048: $00
    cp $00                                        ; $6049: $fe $00
    cp $00                                        ; $604b: $fe $00
    nop                                           ; $604d: $00
    ld bc, $00eb                                  ; $604e: $01 $eb $00
    nop                                           ; $6051: $00
    rst $38                                       ; $6052: $ff
    ld a, a                                       ; $6053: $7f
    ret nz                                        ; $6054: $c0

    ld [hl], a                                    ; $6055: $77
    dec hl                                        ; $6056: $2b
    ret z                                         ; $6057: $c8

    dec h                                         ; $6058: $25
    call z, $c800                                 ; $6059: $cc $00 $c8
    ld h, d                                       ; $605c: $62
    call z, $c261                                 ; $605d: $cc $61 $c2
    ld h, h                                       ; $6060: $64
    jp Jump_000_0064                              ; $6061: $c3 $64 $00


    rst $38                                       ; $6064: $ff
    nop                                           ; $6065: $00
    nop                                           ; $6066: $00
    and [hl]                                      ; $6067: $a6
    nop                                           ; $6068: $00
    nop                                           ; $6069: $00
    ld a, [bc]                                    ; $606a: $0a
    push af                                       ; $606b: $f5
    nop                                           ; $606c: $00
    ld a, a                                       ; $606d: $7f
    nop                                           ; $606e: $00
    ccf                                           ; $606f: $3f
    cp a                                          ; $6070: $bf
    dec de                                        ; $6071: $1b
    ld b, b                                       ; $6072: $40
    sbc l                                         ; $6073: $9d
    add b                                         ; $6074: $80
    add b                                         ; $6075: $80
    stop                                          ; $6076: $10 $00
    jp z, RST_00                                  ; $6078: $ca $00 $00

    and c                                         ; $607b: $a1
    ld e, a                                       ; $607c: $5f
    cp $00                                        ; $607d: $fe $00
    nop                                           ; $607f: $00
    db $fc                                        ; $6080: $fc
    db $fd                                        ; $6081: $fd
    sbc d                                         ; $6082: $9a
    ld [bc], a                                    ; $6083: $02
    or b                                          ; $6084: $b0
    dec b                                         ; $6085: $05
    rst $38                                       ; $6086: $ff
    ld bc, $0300                                  ; $6087: $01 $00 $03
    db $dd                                        ; $608a: $dd
    xor h                                         ; $608b: $ac
    ld [hl+], a                                   ; $608c: $22
    ld c, h                                       ; $608d: $4c
    ld h, d                                       ; $608e: $62
    ld b, $a2                                     ; $608f: $06 $a2
    nop                                           ; $6091: $00
    ld b, $62                                     ; $6092: $06 $62
    ld b, $c2                                     ; $6094: $06 $c2
    ld e, $82                                     ; $6096: $1e $82
    push bc                                       ; $6098: $c5
    ld h, d                                       ; $6099: $62
    ld bc, $71c2                                  ; $609a: $01 $c2 $71
    ld a, b                                       ; $609d: $78
    pop bc                                        ; $609e: $c1
    ld a, h                                       ; $609f: $7c
    ret nz                                        ; $60a0: $c0

    ld a, [hl]                                    ; $60a1: $7e
    ld [bc], a                                    ; $60a2: $02
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    ld a, h                                       ; $60a5: $7c
    pop bc                                        ; $60a6: $c1
    ld e, b                                       ; $60a7: $58
    jp nz, Jump_0d0_644c                          ; $60a8: $c2 $4c $64

    or c                                          ; $60ab: $b1
    ld [hl+], a                                   ; $60ac: $22
    nop                                           ; $60ad: $00
    or d                                          ; $60ae: $b2
    sbc a                                         ; $60af: $9f
    add $03                                       ; $60b0: $c6 $03
    add hl, de                                    ; $60b2: $19
    ld b, d                                       ; $60b3: $42
    jr c, @-$65                                   ; $60b4: $38 $99

    nop                                           ; $60b6: $00
    and c                                         ; $60b7: $a1
    inc l                                         ; $60b8: $2c
    and h                                         ; $60b9: $a4
    add b                                         ; $60ba: $80
    ld l, l                                       ; $60bb: $6d
    ld b, h                                       ; $60bc: $44
    ld a, [de]                                    ; $60bd: $1a
    adc c                                         ; $60be: $89
    nop                                           ; $60bf: $00
    sbc e                                         ; $60c0: $9b
    ld a, [c]                                     ; $60c1: $f2
    rst $00                                       ; $60c2: $c7
    add c                                         ; $60c3: $81
    jr nc, @-$7a                                  ; $60c4: $30 $84

jr_0d0_60c6:
    jr c, jr_0d0_60fa                             ; $60c6: $38 $32

    nop                                           ; $60c8: $00
    dec bc                                        ; $60c9: $0b
    ld l, b                                       ; $60ca: $68
    ld c, d                                       ; $60cb: $4a
    ld [bc], a                                    ; $60cc: $02
    ld a, $82                                     ; $60cd: $3e $82
    ld c, $82                                     ; $60cf: $0e $82
    nop                                           ; $60d1: $00
    ld e, $42                                     ; $60d2: $1e $42
    ld a, $82                                     ; $60d4: $3e $82
    ld a, h                                       ; $60d6: $7c
    ld [bc], a                                    ; $60d7: $02
    ld a, h                                       ; $60d8: $7c
    ld a, [hl]                                    ; $60d9: $7e
    nop                                           ; $60da: $00
    ld a, d                                       ; $60db: $7a
    ld [bc], a                                    ; $60dc: $02
    ld [hl], $82                                  ; $60dd: $36 $82
    jp nz, $c361                                  ; $60df: $c2 $61 $c3

    ld a, b                                       ; $60e2: $78
    nop                                           ; $60e3: $00
    ret nz                                        ; $60e4: $c0

    ld b, c                                       ; $60e5: $41
    pop bc                                        ; $60e6: $c1
    ld a, h                                       ; $60e7: $7c
    ld h, b                                       ; $60e8: $60
    ret nz                                        ; $60e9: $c0

    ld e, e                                       ; $60ea: $5b
    ret nz                                        ; $60eb: $c0

    ld b, b                                       ; $60ec: $40
    ld [hl], a                                    ; $60ed: $77
    ld [bc], a                                    ; $60ee: $02
    nop                                           ; $60ef: $00
    add e                                         ; $60f0: $83
    ld b, c                                       ; $60f1: $41
    dec e                                         ; $60f2: $1d
    ld h, h                                       ; $60f3: $64
    ld a, [bc]                                    ; $60f4: $0a
    ld [hl-], a                                   ; $60f5: $32
    nop                                           ; $60f6: $00
    ld d, e                                       ; $60f7: $53
    rla                                           ; $60f8: $17
    inc [hl]                                      ; $60f9: $34

jr_0d0_60fa:
    ld [hl], $80                                  ; $60fa: $36 $80
    jr c, jr_0d0_60c6                             ; $60fc: $38 $c8

    dec de                                        ; $60fe: $1b
    nop                                           ; $60ff: $00
    jr z, @+$0e                                   ; $6100: $28 $0c

    add e                                         ; $6102: $83
    inc b                                         ; $6103: $04
    ld [hl], e                                    ; $6104: $73
    ld c, $a1                                     ; $6105: $0e $a1
    sbc c                                         ; $6107: $99
    nop                                           ; $6108: $00
    sub l                                         ; $6109: $95
    ret nc                                        ; $610a: $d0

    ld e, b                                       ; $610b: $58
    call c, $3803                                 ; $610c: $dc $03 $38
    add a                                         ; $610f: $87
    or b                                          ; $6110: $b0
    ld bc, $e08b                                  ; $6111: $01 $8b $e0
    call z, $bc42                                 ; $6114: $cc $42 $bc
    add d                                         ; $6117: $82
    add b                                         ; $6118: $80
    ld a, $00                                     ; $6119: $3e $00
    nop                                           ; $611b: $00
    dec c                                         ; $611c: $0d
    inc bc                                        ; $611d: $03
    ld [hl], c                                    ; $611e: $71
    inc bc                                        ; $611f: $03
    ld a, l                                       ; $6120: $7d
    inc bc                                        ; $6121: $03
    cp l                                          ; $6122: $bd
    inc bc                                        ; $6123: $03
    adc b                                         ; $6124: $88
    inc [hl]                                      ; $6125: $34
    ld [$c07b], sp                                ; $6126: $08 $7b $c0
    ld a, a                                       ; $6129: $7f
    ld a, [hl]                                    ; $612a: $7e
    ld [$80c0], sp                                ; $612b: $08 $c0 $80
    ld a, a                                       ; $612e: $7f
    nop                                           ; $612f: $00
    rst $38                                       ; $6130: $ff
    nop                                           ; $6131: $00
    db $f4                                        ; $6132: $f4
    rlca                                          ; $6133: $07
    ldh a, [rP1]                                  ; $6134: $f0 $00
    rlca                                          ; $6136: $07
    jp Jump_000_2702                              ; $6137: $c3 $02 $27


    ld a, [hl-]                                   ; $613a: $3a
    adc d                                         ; $613b: $8a
    pop hl                                        ; $613c: $e1
    db $fc                                        ; $613d: $fc
    ld [c], a                                     ; $613e: $e2
    call z, RST_00                                ; $613f: $cc $00 $00
    nop                                           ; $6142: $00
    sbc l                                         ; $6143: $9d
    ret nz                                        ; $6144: $c0

    rrca                                          ; $6145: $0f
    jr nz, jr_0d0_614f                            ; $6146: $20 $07

    or b                                          ; $6148: $b0
    ld b, b                                       ; $6149: $40
    ld hl, sp+$08                                 ; $614a: $f8 $08
    jp hl                                         ; $614c: $e9


    ld a, $9b                                     ; $614d: $3e $9b

jr_0d0_614f:
    or h                                          ; $614f: $b4
    db $10                                        ; $6150: $10
    ld [$03b5], sp                                ; $6151: $08 $b5 $03
    call Call_000_0302                            ; $6154: $cd $02 $03
    db $fc                                        ; $6157: $fc
    ld [bc], a                                    ; $6158: $02
    db $fc                                        ; $6159: $fc
    ld [bc], a                                    ; $615a: $02
    ld a, [hl]                                    ; $615b: $7e
    adc d                                         ; $615c: $8a
    nop                                           ; $615d: $00
    nop                                           ; $615e: $00
    nop                                           ; $615f: $00
    cp $fe                                        ; $6160: $fe $fe
    nop                                           ; $6162: $00
    nop                                           ; $6163: $00
    ld bc, $00fb                                  ; $6164: $01 $fb $00
    nop                                           ; $6167: $00
    rst $38                                       ; $6168: $ff
    ld a, a                                       ; $6169: $7f
    ret nz                                        ; $616a: $c0

    ld c, a                                       ; $616b: $4f
    rrca                                          ; $616c: $0f
    jp $c139                                      ; $616d: $c3 $39 $c1


    ld [$c838], sp                                ; $6170: $08 $38 $c8
    inc a                                         ; $6173: $3c
    call z, $0002                                 ; $6174: $cc $02 $00
    call c, Call_000_00ff                         ; $6177: $dc $ff $00
    nop                                           ; $617a: $00
    ccf                                           ; $617b: $3f
    ld a, a                                       ; $617c: $7f
    ld h, b                                       ; $617d: $60
    nop                                           ; $617e: $00
    ld de, $081b                                  ; $617f: $11 $1b $08
    ld d, c                                       ; $6182: $51

jr_0d0_6183:
    nop                                           ; $6183: $00
    sub d                                         ; $6184: $92
    ld c, l                                       ; $6185: $4d
    ld c, h                                       ; $6186: $4c
    cp d                                          ; $6187: $ba
    add b                                         ; $6188: $80
    ld c, l                                       ; $6189: $4d
    rst $38                                       ; $618a: $ff
    nop                                           ; $618b: $00
    nop                                           ; $618c: $00
    ldh a, [$fc]                                  ; $618d: $f0 $fc
    ret nz                                        ; $618f: $c0

    rst $00                                       ; $6190: $c7
    adc b                                         ; $6191: $88
    inc de                                        ; $6192: $13
    ret c                                         ; $6193: $d8

    ld h, h                                       ; $6194: $64
    nop                                           ; $6195: $00
    ld hl, $1842                                  ; $6196: $21 $42 $18
    nop                                           ; $6199: $00
    ld a, h                                       ; $619a: $7c
    cp c                                          ; $619b: $b9
    rst $38                                       ; $619c: $ff
    ld bc, $0300                                  ; $619d: $01 $00 $03
    pop bc                                        ; $61a0: $c1
    ldh a, [$32]                                  ; $61a1: $f0 $32
    ld hl, sp+$1a                                 ; $61a3: $f8 $1a
    db $fc                                        ; $61a5: $fc
    ld c, $00                                     ; $61a6: $0e $00
    ld a, h                                       ; $61a8: $7c
    ld b, $bc                                     ; $61a9: $06 $bc
    or d                                          ; $61ab: $b2
    inc a                                         ; $61ac: $3c
    ld [hl-], a                                   ; $61ad: $32
    dec a                                         ; $61ae: $3d
    ret z                                         ; $61af: $c8

    nop                                           ; $61b0: $00
    jr c, jr_0d0_6183                             ; $61b1: $38 $d0

    ld a, $ea                                     ; $61b3: $3e $ea
    ccf                                           ; $61b5: $3f
    push hl                                       ; $61b6: $e5
    ccf                                           ; $61b7: $3f
    db $e3                                        ; $61b8: $e3
    nop                                           ; $61b9: $00
    ccf                                           ; $61ba: $3f
    db $d3                                        ; $61bb: $d3
    ccf                                           ; $61bc: $3f
    rst $10                                       ; $61bd: $d7
    ccf                                           ; $61be: $3f
    ret z                                         ; $61bf: $c8

    or e                                          ; $61c0: $b3
    sub d                                         ; $61c1: $92
    nop                                           ; $61c2: $00
    or b                                          ; $61c3: $b0
    adc a                                         ; $61c4: $8f
    ccf                                           ; $61c5: $3f
    sbc a                                         ; $61c6: $9f
    rrca                                          ; $61c7: $0f
    or a                                          ; $61c8: $b7
    ld h, a                                       ; $61c9: $67
    ld e, e                                       ; $61ca: $5b
    nop                                           ; $61cb: $00
    ld b, c                                       ; $61cc: $41
    ld h, e                                       ; $61cd: $63
    push bc                                       ; $61ce: $c5
    ld e, l                                       ; $61cf: $5d
    ld b, h                                       ; $61d0: $44
    ld d, [hl]                                    ; $61d1: $56
    db $e4                                        ; $61d2: $e4
    ld e, l                                       ; $61d3: $5d
    nop                                           ; $61d4: $00
    pop bc                                        ; $61d5: $c1
    and l                                         ; $61d6: $a5
    ret nz                                        ; $61d7: $c0

    ld e, b                                       ; $61d8: $58
    sbc c                                         ; $61d9: $99
    and b                                         ; $61da: $a0
    ld b, b                                       ; $61db: $40
    ld h, h                                       ; $61dc: $64
    nop                                           ; $61dd: $00
    sbc d                                         ; $61de: $9a
    jp z, $b8a3                                   ; $61df: $ca $a3 $b8

    ld [hl+], a                                   ; $61e2: $22
    ld l, b                                       ; $61e3: $68
    inc l                                         ; $61e4: $2c
    ld [hl+], a                                   ; $61e5: $22
    nop                                           ; $61e6: $00
    ld d, h                                       ; $61e7: $54
    ld [de], a                                    ; $61e8: $12
    inc l                                         ; $61e9: $2c
    ld b, $5c                                     ; $61ea: $06 $5c
    ld b, $b8                                     ; $61ec: $06 $b8
    ld a, [hl-]                                   ; $61ee: $3a
    nop                                           ; $61ef: $00
    inc [hl]                                      ; $61f0: $34
    ld [hl-], a                                   ; $61f1: $32
    db $fc                                        ; $61f2: $fc
    ld [$16fc], a                                 ; $61f3: $ea $fc $16
    ccf                                           ; $61f6: $3f
    add $00                                       ; $61f7: $c6 $00
    ccf                                           ; $61f9: $3f
    jp z, $cd1f                                   ; $61fa: $ca $1f $cd

    rra                                           ; $61fd: $1f
    call $e223                                    ; $61fe: $cd $23 $e2
    nop                                           ; $6201: $00
    ld bc, $bddf                                  ; $6202: $01 $df $bd
    ret nz                                        ; $6205: $c0

    cp e                                          ; $6206: $bb
    ret nz                                        ; $6207: $c0

    and l                                         ; $6208: $a5
    sbc b                                         ; $6209: $98
    nop                                           ; $620a: $00
    ld c, b                                       ; $620b: $48
    jp $d5b2                                      ; $620c: $c3 $b2 $d5


    ld d, e                                       ; $620f: $53
    ld l, d                                       ; $6210: $6a
    xor b                                         ; $6211: $a8
    inc [hl]                                      ; $6212: $34
    nop                                           ; $6213: $00
    call nc, Call_0d0_4b1b                        ; $6214: $d4 $1b $4b
    cpl                                           ; $6217: $2f
    inc h                                         ; $6218: $24
    rla                                           ; $6219: $17
    and l                                         ; $621a: $a5
    add hl, de                                    ; $621b: $19
    nop                                           ; $621c: $00
    ld [de], a                                    ; $621d: $12
    jp $ab4d                                      ; $621e: $c3 $4d $ab


    jp z, Jump_000_1556                           ; $6221: $ca $56 $15

    inc l                                         ; $6224: $2c
    nop                                           ; $6225: $00
    dec hl                                        ; $6226: $2b
    ret c                                         ; $6227: $d8

    jp nc, $24f4                                  ; $6228: $d2 $f4 $24

    add sp, -$04                                  ; $622b: $e8 $fc
    sbc [hl]                                      ; $622d: $9e
    nop                                           ; $622e: $00
    db $fc                                        ; $622f: $fc
    xor [hl]                                      ; $6230: $ae
    db $fc                                        ; $6231: $fc
    ld c, [hl]                                    ; $6232: $4e
    db $fc                                        ; $6233: $fc
    ld b, [hl]                                    ; $6234: $46
    call z, $0042                                 ; $6235: $cc $42 $00
    add b                                         ; $6238: $80
    or d                                          ; $6239: $b2
    call c, $ec5e                                 ; $623a: $dc $5e $ec
    ld l, [hl]                                    ; $623d: $6e
    or a                                          ; $623e: $b7
    db $f4                                        ; $623f: $f4
    nop                                           ; $6240: $00
    xor a                                         ; $6241: $af
    db $ec                                        ; $6242: $ec
    xor a                                         ; $6243: $af
    db $ec                                        ; $6244: $ec
    or a                                          ; $6245: $b7
    db $f4                                        ; $6246: $f4
    cp e                                          ; $6247: $bb
    ld c, b                                       ; $6248: $48
    nop                                           ; $6249: $00
    cp h                                          ; $624a: $bc
    ld a, h                                       ; $624b: $7c
    add b                                         ; $624c: $80
    ld a, a                                       ; $624d: $7f
    rst $38                                       ; $624e: $ff
    nop                                           ; $624f: $00
    jr jr_0d0_6281                                ; $6250: $18 $2f

    nop                                           ; $6252: $00
    rrca                                          ; $6253: $0f
    ld d, $07                                     ; $6254: $16 $07
    dec bc                                        ; $6256: $0b
    inc bc                                        ; $6257: $03

jr_0d0_6258:
    dec b                                         ; $6258: $05
    jr c, @-$4b                                   ; $6259: $38 $b3

    nop                                           ; $625b: $00
    ld a, c                                       ; $625c: $79
    ld b, l                                       ; $625d: $45
    rst $38                                       ; $625e: $ff
    nop                                           ; $625f: $00
    nop                                           ; $6260: $00
    nop                                           ; $6261: $00
    jr jr_0d0_6258                                ; $6262: $18 $f4

    nop                                           ; $6264: $00
    ldh a, [rBCPS]                                ; $6265: $f0 $68
    ldh [$d0], a                                  ; $6267: $e0 $d0
    ret nz                                        ; $6269: $c0

    and b                                         ; $626a: $a0
    inc e                                         ; $626b: $1c

Jump_0d0_626c:
    call $9e20                                    ; $626c: $cd $20 $9e
    ld [hl+], a                                   ; $626f: $22
    db $10                                        ; $6270: $10
    ld [$82f4], sp                                ; $6271: $08 $f4 $82
    db $f4                                        ; $6274: $f4
    add d                                         ; $6275: $82
    db $ec                                        ; $6276: $ec
    nop                                           ; $6277: $00
    ld h, [hl]                                    ; $6278: $66
    call c, $86c2                                 ; $6279: $dc $c2 $86
    cp h                                          ; $627c: $bc
    ld [bc], a                                    ; $627d: $02
    ld a, h                                       ; $627e: $7c
    nop                                           ; $627f: $00
    nop                                           ; $6280: $00

jr_0d0_6281:
    cp $fe                                        ; $6281: $fe $fe
    nop                                           ; $6283: $00
    nop                                           ; $6284: $00
    ld bc, $00db                                  ; $6285: $01 $db $00
    ld [bc], a                                    ; $6288: $02
    add b                                         ; $6289: $80
    ld a, a                                       ; $628a: $7f
    cp a                                          ; $628b: $bf
    ld a, a                                       ; $628c: $7f
    db $fc                                        ; $628d: $fc
    jp $0002                                      ; $628e: $c3 $02 $00


    ld a, $00                                     ; $6291: $3e $00
    ld hl, sp+$3a                                 ; $6293: $f8 $3a
    cp d                                          ; $6295: $ba
    ld b, d                                       ; $6296: $42
    cp b                                          ; $6297: $b8
    ld b, b                                       ; $6298: $40
    rst $38                                       ; $6299: $ff
    nop                                           ; $629a: $00
    nop                                           ; $629b: $00
    nop                                           ; $629c: $00
    nop                                           ; $629d: $00
    inc c                                         ; $629e: $0c
    db $fc                                        ; $629f: $fc
    ldh a, [$0c]                                  ; $62a0: $f0 $0c
    rst $38                                       ; $62a2: $ff
    inc bc                                        ; $62a3: $03
    nop                                           ; $62a4: $00
    ccf                                           ; $62a5: $3f
    add b                                         ; $62a6: $80
    jr c, jr_0d0_62c8                             ; $62a7: $38 $1f

    ld a, a                                       ; $62a9: $7f
    inc sp                                        ; $62aa: $33
    rst $38                                       ; $62ab: $ff
    nop                                           ; $62ac: $00
    nop                                           ; $62ad: $00
    inc bc                                        ; $62ae: $03
    ld [hl], e                                    ; $62af: $73
    adc l                                         ; $62b0: $8d
    db $ec                                        ; $62b1: $ec
    or $1e                                        ; $62b2: $f6 $1e
    db $eb                                        ; $62b4: $eb
    daa                                           ; $62b5: $27
    nop                                           ; $62b6: $00
    inc a                                         ; $62b7: $3c
    jp z, $e7f0                                   ; $62b8: $ca $f0 $e7

    db $f4                                        ; $62bb: $f4
    ld [hl], $fe                                  ; $62bc: $36 $fe
    nop                                           ; $62be: $00
    ld a, [bc]                                    ; $62bf: $0a
    ld [bc], a                                    ; $62c0: $02
    db $fc                                        ; $62c1: $fc
    db $fc                                        ; $62c2: $fc
    ld [bc], a                                    ; $62c3: $02
    ld [bc], a                                    ; $62c4: $02
    nop                                           ; $62c5: $00
    add d                                         ; $62c6: $82
    ld [bc], a                                    ; $62c7: $02

jr_0d0_62c8:
    db $10                                        ; $62c8: $10
    ld [bc], a                                    ; $62c9: $02
    nop                                           ; $62ca: $00
    ld b, l                                       ; $62cb: $45
    ld hl, sp+$47                                 ; $62cc: $f8 $47
    ld hl, sp-$04                                 ; $62ce: $f8 $fc
    ld b, c                                       ; $62d0: $41
    db $fc                                        ; $62d1: $fc
    ld b, c                                       ; $62d2: $41
    db $10                                        ; $62d3: $10
    cp [hl]                                       ; $62d4: $be
    ret nz                                        ; $62d5: $c0

    cp a                                          ; $62d6: $bf
    ld [bc], a                                    ; $62d7: $02
    db $10                                        ; $62d8: $10
    ld a, b                                       ; $62d9: $78
    rlca                                          ; $62da: $07
    rlca                                          ; $62db: $07
    ccf                                           ; $62dc: $3f
    nop                                           ; $62dd: $00
    sbc h                                         ; $62de: $9c
    ld a, h                                       ; $62df: $7c

Jump_0d0_62e0:
    ld [hl], c                                    ; $62e0: $71
    pop af                                        ; $62e1: $f1
    inc e                                         ; $62e2: $1c
    sub e                                         ; $62e3: $93
    dec bc                                        ; $62e4: $0b
    cp a                                          ; $62e5: $bf
    nop                                           ; $62e6: $00
    ld a, b                                       ; $62e7: $78
    ld b, h                                       ; $62e8: $44
    adc c                                         ; $62e9: $89
    and b                                         ; $62ea: $a0
    ld a, [$c7fc]                                 ; $62eb: $fa $fc $c7
    ld b, $00                                     ; $62ee: $06 $00
    ld l, h                                       ; $62f0: $6c
    ld c, b                                       ; $62f1: $48
    db $ec                                        ; $62f2: $ec
    ld [c], a                                     ; $62f3: $e2
    ld bc, $0f64                                  ; $62f4: $01 $64 $0f
    ld l, h                                       ; $62f7: $6c

Jump_0d0_62f8:
    add hl, bc                                    ; $62f8: $09
    db $fc                                        ; $62f9: $fc
    rrca                                          ; $62fa: $0f
    ldh a, [rTAC]                                 ; $62fb: $f0 $07
    jr c, @+$2a                                   ; $62fd: $38 $28

    db $fc                                        ; $62ff: $fc
    cp $04                                        ; $6300: $fe $04
    db $10                                        ; $6302: $10
    ld b, b                                       ; $6303: $40
    cp [hl]                                       ; $6304: $be
    ld [hl], $18                                  ; $6305: $36 $18
    and a                                         ; $6307: $a7
    ret nz                                        ; $6308: $c0

    ld e, b                                       ; $6309: $58
    sbc b                                         ; $630a: $98
    ld a, l                                       ; $630b: $7d
    cp a                                          ; $630c: $bf
    nop                                           ; $630d: $00
    ret nz                                        ; $630e: $c0

    adc $c6                                       ; $630f: $ce $c6
    ldh a, [$87]                                  ; $6311: $f0 $87
    adc b                                         ; $6313: $88
    db $d3                                        ; $6314: $d3
    ret z                                         ; $6315: $c8

    nop                                           ; $6316: $00
    ld c, $e7                                     ; $6317: $0e $e7
    ld bc, $8bf5                                  ; $6319: $01 $f5 $8b
    add b                                         ; $631c: $80
    db $10                                        ; $631d: $10
    ld l, b                                       ; $631e: $68
    nop                                           ; $631f: $00
    add c                                         ; $6320: $81
    ld a, l                                       ; $6321: $7d
    ld [hl], h                                    ; $6322: $74
    ld [bc], a                                    ; $6323: $02
    ldh a, [$c7]                                  ; $6324: $f0 $c7
    ldh [$cf], a                                  ; $6326: $e0 $cf
    nop                                           ; $6328: $00
    ldh [rSB], a                                  ; $6329: $e0 $01
    call nz, $a206                                ; $632b: $c4 $06 $a2
    inc bc                                        ; $632e: $03
    ld a, h                                       ; $632f: $7c
    inc de                                        ; $6330: $13
    ld [$0f90], sp                                ; $6331: $08 $90 $0f
    ld e, a                                       ; $6334: $5f
    adc h                                         ; $6335: $8c
    scf                                           ; $6336: $37
    ld [$f002], sp                                ; $6337: $08 $02 $f0
    ld c, $00                                     ; $633a: $0e $00
    db $ec                                        ; $633c: $ec
    ld b, d                                       ; $633d: $42
    ld e, b                                       ; $633e: $58
    add d                                         ; $633f: $82
    cp h                                          ; $6340: $bc
    ld a, $3c                                     ; $6341: $3e $3c
    ld e, $00                                     ; $6343: $1e $00
    ld a, h                                       ; $6345: $7c
    ret nz                                        ; $6346: $c0

    ld a, b                                       ; $6347: $78
    ret nz                                        ; $6348: $c0

    ld a, l                                       ; $6349: $7d
    ld sp, hl                                     ; $634a: $f9
    add hl, sp                                    ; $634b: $39
    pop bc                                        ; $634c: $c1
    nop                                           ; $634d: $00
    add hl, sp                                    ; $634e: $39
    pop bc                                        ; $634f: $c1
    dec hl                                        ; $6350: $2b
    jp $8037                                      ; $6351: $c3 $37 $80


    ld a, a                                       ; $6354: $7f
    rst $38                                       ; $6355: $ff
    nop                                           ; $6356: $00
    nop                                           ; $6357: $00
    ld a, [hl-]                                   ; $6358: $3a
    ld l, $44                                     ; $6359: $2e $44
    dec a                                         ; $635b: $3d
    cp b                                          ; $635c: $b8
    ld b, h                                       ; $635d: $44
    sub c                                         ; $635e: $91
    inc b                                         ; $635f: $04
    adc c                                         ; $6360: $89
    ld h, $a3                                     ; $6361: $26 $a3
    ld a, [hl]                                    ; $6363: $7e
    ld b, c                                       ; $6364: $41
    call z, $cf08                                 ; $6365: $cc $08 $cf
    rst $20                                       ; $6368: $e7
    nop                                           ; $6369: $00
    ld [c], a                                     ; $636a: $e2
    push af                                       ; $636b: $f5
    ld a, b                                       ; $636c: $78
    push hl                                       ; $636d: $e5
    jr c, @+$09                                   ; $636e: $38 $07

    ld b, d                                       ; $6370: $42
    xor d                                         ; $6371: $aa
    jr nz, jr_0d0_63f2                            ; $6372: $20 $7e

    ld h, e                                       ; $6374: $63
    call c, $bc08                                 ; $6375: $dc $08 $bc
    ld a, $9c                                     ; $6378: $3e $9c
    ld d, $bc                                     ; $637a: $16 $bc
    nop                                           ; $637c: $00
    or d                                          ; $637d: $b2
    db $f4                                        ; $637e: $f4
    jp nc, Jump_0d0_62f8                          ; $637f: $d2 $f8 $62

    call c, $0092                                 ; $6382: $dc $92 $00
    nop                                           ; $6385: $00
    cp $fe                                        ; $6386: $fe $fe
    nop                                           ; $6388: $00
    nop                                           ; $6389: $00
    ld bc, $00e6                                  ; $638a: $01 $e6 $00
    nop                                           ; $638d: $00
    ld a, a                                       ; $638e: $7f
    rst $38                                       ; $638f: $ff
    ld a, [hl]                                    ; $6390: $7e
    ret nz                                        ; $6391: $c0

    dec a                                         ; $6392: $3d
    pop bc                                        ; $6393: $c1
    dec sp                                        ; $6394: $3b
    pop bc                                        ; $6395: $c1
    nop                                           ; $6396: $00
    dec sp                                        ; $6397: $3b
    jp nz, $c23a                                  ; $6398: $c2 $3a $c2

    halt                                          ; $639b: $76
    ret nz                                        ; $639c: $c0

    ld [hl], a                                    ; $639d: $77
    ret nz                                        ; $639e: $c0

    nop                                           ; $639f: $00
    rst $38                                       ; $63a0: $ff
    nop                                           ; $63a1: $00
    sbc h                                         ; $63a2: $9c
    cp [hl]                                       ; $63a3: $be
    ld b, h                                       ; $63a4: $44
    cp b                                          ; $63a5: $b8
    ld [hl], b                                    ; $63a6: $70
    sub c                                         ; $63a7: $91
    nop                                           ; $63a8: $00
    push hl                                       ; $63a9: $e5
    call nz, Call_000_0fd8                        ; $63aa: $c4 $d8 $0f
    dec de                                        ; $63ad: $1b
    rlca                                          ; $63ae: $07
    ld a, $1e                                     ; $63af: $3e $1e
    nop                                           ; $63b1: $00
    rst $38                                       ; $63b2: $ff
    nop                                           ; $63b3: $00
    nop                                           ; $63b4: $00
    nop                                           ; $63b5: $00
    rst $38                                       ; $63b6: $ff
    ldh a, [rIF]                                  ; $63b7: $f0 $0f
    ld a, [hl]                                    ; $63b9: $7e
    nop                                           ; $63ba: $00
    adc [hl]                                      ; $63bb: $8e
    ld d, h                                       ; $63bc: $54
    daa                                           ; $63bd: $27
    reti                                          ; $63be: $d9


    ld l, [hl]                                    ; $63bf: $6e
    ld a, b                                       ; $63c0: $78
    dec a                                         ; $63c1: $3d
    inc b                                         ; $63c2: $04
    nop                                           ; $63c3: $00
    cp $00                                        ; $63c4: $fe $00
    ld [bc], a                                    ; $63c6: $02
    db $fc                                        ; $63c7: $fc
    db $fc                                        ; $63c8: $fc
    ld [bc], a                                    ; $63c9: $02
    db $fc                                        ; $63ca: $fc
    ld [bc], a                                    ; $63cb: $02
    inc b                                         ; $63cc: $04
    ld a, h                                       ; $63cd: $7c
    ld [bc], a                                    ; $63ce: $02
    cp h                                          ; $63cf: $bc
    add d                                         ; $63d0: $82
    call c, $0002                                 ; $63d1: $dc $02 $00
    scf                                           ; $63d4: $37
    ldh a, [rP1]                                  ; $63d5: $f0 $00
    dec sp                                        ; $63d7: $3b
    ld hl, sp+$3b                                 ; $63d8: $f8 $3b
    jp $c236                                      ; $63da: $c3 $36 $c2


    ld [hl], d                                    ; $63dd: $72
    ret nz                                        ; $63de: $c0

    nop                                           ; $63df: $00
    ld a, d                                       ; $63e0: $7a
    ret nz                                        ; $63e1: $c0

    ld a, h                                       ; $63e2: $7c
    ret nz                                        ; $63e3: $c0

    ld a, [hl]                                    ; $63e4: $7e
    ret nz                                        ; $63e5: $c0

    db $10                                        ; $63e6: $10
    ld h, h                                       ; $63e7: $64
    nop                                           ; $63e8: $00
    ld de, $3170                                  ; $63e9: $11 $70 $31
    ld [hl], $53                                  ; $63ec: $36 $53
    ld d, h                                       ; $63ee: $54
    ld b, $ee                                     ; $63ef: $06 $ee
    nop                                           ; $63f1: $00

jr_0d0_63f2:
    dec b                                         ; $63f2: $05
    inc b                                         ; $63f3: $04
    ld h, c                                       ; $63f4: $61
    inc bc                                        ; $63f5: $03
    jr z, jr_0d0_6438                             ; $63f6: $28 $40

    ld [bc], a                                    ; $63f8: $02
    add b                                         ; $63f9: $80
    nop                                           ; $63fa: $00
    ld hl, sp-$08                                 ; $63fb: $f8 $f8
    db $fc                                        ; $63fd: $fc
    inc bc                                        ; $63fe: $03
    ld e, $01                                     ; $63ff: $1e $01
    ldh [$0c], a                                  ; $6401: $e0 $0c
    nop                                           ; $6403: $00
    di                                            ; $6404: $f3
    ld [$b6c3], sp                                ; $6405: $08 $c3 $b6
    call $ecd5                                    ; $6408: $cd $d5 $ec
    ld [hl+], a                                   ; $640b: $22
    nop                                           ; $640c: $00
    ld l, h                                       ; $640d: $6c
    ld [hl+], a                                   ; $640e: $22
    inc l                                         ; $640f: $2c
    ld c, $1c                                     ; $6410: $0e $1c
    ld e, $fc                                     ; $6412: $1e $fc
    add d                                         ; $6414: $82
    nop                                           ; $6415: $00
    db $fc                                        ; $6416: $fc
    ld [bc], a                                    ; $6417: $02
    ld a, l                                       ; $6418: $7d
    inc bc                                        ; $6419: $03
    ld a, l                                       ; $641a: $7d
    inc bc                                        ; $641b: $03
    ld a, a                                       ; $641c: $7f
    ret nz                                        ; $641d: $c0

    add b                                         ; $641e: $80
    ld [bc], a                                    ; $641f: $02
    ld c, b                                       ; $6420: $48
    ld a, h                                       ; $6421: $7c
    ret nz                                        ; $6422: $c0

jr_0d0_6423:
    ld l, [hl]                                    ; $6423: $6e
    ret nz                                        ; $6424: $c0

    cpl                                           ; $6425: $2f
    and b                                         ; $6426: $a0
    rrca                                          ; $6427: $0f
    nop                                           ; $6428: $00
    ret z                                         ; $6429: $c8

    rrca                                          ; $642a: $0f
    ret z                                         ; $642b: $c8

    inc sp                                        ; $642c: $33
    or b                                          ; $642d: $b0
    add hl, sp                                    ; $642e: $39
    or b                                          ; $642f: $b0
    daa                                           ; $6430: $27
    nop                                           ; $6431: $00
    dec de                                        ; $6432: $1b
    and c                                         ; $6433: $a1
    rra                                           ; $6434: $1f
    inc bc                                        ; $6435: $03
    jr nz, jr_0d0_646c                            ; $6436: $20 $34

jr_0d0_6438:
    ld b, l                                       ; $6438: $45
    ld l, c                                       ; $6439: $69
    nop                                           ; $643a: $00
    ld [$1c00], sp                                ; $643b: $08 $00 $1c
    ld sp, hl                                     ; $643e: $f9
    ld bc, $1be3                                  ; $643f: $01 $e3 $1b

Call_0d0_6442:
    ldh [rP1], a                                  ; $6442: $e0 $00
    rst $20                                       ; $6444: $e7
    inc c                                         ; $6445: $0c
    dec bc                                        ; $6446: $0b
    cp h                                          ; $6447: $bc
    add d                                         ; $6448: $82
    cp h                                          ; $6449: $bc
    ld [bc], a                                    ; $644a: $02
    ld a, h                                       ; $644b: $7c

Jump_0d0_644c:
    inc c                                         ; $644c: $0c
    ld a, [hl]                                    ; $644d: $7e
    db $fc                                        ; $644e: $fc
    ld [de], a                                    ; $644f: $12
    cp $85                                        ; $6450: $fe $85
    nop                                           ; $6452: $00
    inc b                                         ; $6453: $04
    ld [$fc3f], sp                                ; $6454: $08 $3f $fc
    nop                                           ; $6457: $00
    ccf                                           ; $6458: $3f
    ret nz                                        ; $6459: $c0

    scf                                           ; $645a: $37
    call nz, $ca3b                                ; $645b: $c4 $3b $ca
    ld sp, $00c0                                  ; $645e: $31 $c0 $00
    jr c, jr_0d0_6423                             ; $6461: $38 $c0

    add b                                         ; $6463: $80
    ld a, a                                       ; $6464: $7f
    rst $38                                       ; $6465: $ff

jr_0d0_6466:
    nop                                           ; $6466: $00
    ret nc                                        ; $6467: $d0

    rst $08                                       ; $6468: $cf
    nop                                           ; $6469: $00
    add sp, -$19                                  ; $646a: $e8 $e7

jr_0d0_646c:
    add [hl]                                      ; $646c: $86
    rlca                                          ; $646d: $07
    pop bc                                        ; $646e: $c1
    ld bc, $03e2                                  ; $646f: $01 $e2 $03
    jr nz, jr_0d0_6466                            ; $6472: $20 $f2

    inc bc                                        ; $6474: $03
    cp h                                          ; $6475: $bc
    ld [$ddb8], sp                                ; $6476: $08 $b8 $dd
    sbc b                                         ; $6479: $98
    sbc b                                         ; $647a: $98
    jp hl                                         ; $647b: $e9


    ld bc, $6099                                  ; $647c: $01 $99 $60

jr_0d0_647f:
    nop                                           ; $647f: $00
    ld hl, sp+$50                                 ; $6480: $f8 $50
    db $10                                        ; $6482: $10
    ret z                                         ; $6483: $c8

    call z, RST_08                                ; $6484: $cc $08 $00
    ld [bc], a                                    ; $6487: $02
    db $fc                                        ; $6488: $fc
    ld [c], a                                     ; $6489: $e2
    db $fc                                        ; $648a: $fc
    db $e4                                        ; $648b: $e4
    ld [c], a                                     ; $648c: $e2
    ld hl, sp-$06                                 ; $648d: $f8 $fa
    add b                                         ; $648f: $80
    ld a, e                                       ; $6490: $7b
    nop                                           ; $6491: $00
    dec a                                         ; $6492: $3d
    nop                                           ; $6493: $00
    cp $fe                                        ; $6494: $fe $fe
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    ld bc, $00e3                                  ; $6498: $01 $e3 $00
    ld bc, $ff7f                                  ; $649b: $01 $7f $ff
    ld a, a                                       ; $649e: $7f
    ret nz                                        ; $649f: $c0

    ld a, h                                       ; $64a0: $7c
    ret nz                                        ; $64a1: $c0

    ld a, [hl]                                    ; $64a2: $7e
    ld [bc], a                                    ; $64a3: $02
    nop                                           ; $64a4: $00
    nop                                           ; $64a5: $00
    ld h, b                                       ; $64a6: $60
    ret nz                                        ; $64a7: $c0

    jp nz, $c333                                  ; $64a8: $c2 $33 $c3

    dec sp                                        ; $64ab: $3b
    rst $38                                       ; $64ac: $ff
    nop                                           ; $64ad: $00
    nop                                           ; $64ae: $00
    jp nz, $c0ce                                  ; $64af: $c2 $ce $c0

    nop                                           ; $64b2: $00
    inc b                                         ; $64b3: $04
    inc l                                         ; $64b4: $2c
    adc [hl]                                      ; $64b5: $8e
    and a                                         ; $64b6: $a7
    nop                                           ; $64b7: $00
    ld c, h                                       ; $64b8: $4c
    di                                            ; $64b9: $f3
    ld l, e                                       ; $64ba: $6b
    ld [de], a                                    ; $64bb: $12
    or b                                          ; $64bc: $b0
    ld bc, $00ff                                  ; $64bd: $01 $ff $00
    nop                                           ; $64c0: $00
    nop                                           ; $64c1: $00
    rst $08                                       ; $64c2: $cf
    rst $38                                       ; $64c3: $ff
    ld h, [hl]                                    ; $64c4: $66
    sbc e                                         ; $64c5: $9b
    sbc $8c                                       ; $64c6: $de $8c
    call c, $0d00                                 ; $64c8: $dc $00 $0d
    di                                            ; $64cb: $f3
    ld a, [hl+]                                   ; $64cc: $2a
    sub b                                         ; $64cd: $90
    ld [hl], c                                    ; $64ce: $71
    rla                                           ; $64cf: $17
    cp $00                                        ; $64d0: $fe $00
    nop                                           ; $64d2: $00
    ld [bc], a                                    ; $64d3: $02
    db $fc                                        ; $64d4: $fc
    cp $fc                                        ; $64d5: $fe $fc
    ld [de], a                                    ; $64d7: $12
    db $fc                                        ; $64d8: $fc
    db $fc                                        ; $64d9: $fc
    jp nz, $fc00                                  ; $64da: $c2 $00 $fc

    sbc d                                         ; $64dd: $9a
    ld [bc], a                                    ; $64de: $02
    ld [$7406], sp                                ; $64df: $08 $06 $74
    pop bc                                        ; $64e2: $c1
    ld sp, $c100                                  ; $64e3: $31 $00 $c1
    add hl, sp                                    ; $64e6: $39
    jp nz, $c332                                  ; $64e7: $c2 $32 $c3

    daa                                           ; $64ea: $27
    inc hl                                        ; $64eb: $23
    jp Jump_000_3a00                              ; $64ec: $c3 $00 $3a


    jp nz, $c078                                  ; $64ef: $c2 $78 $c0

    ld a, c                                       ; $64f2: $79
    ret nz                                        ; $64f3: $c0

    ld b, [hl]                                    ; $64f4: $46
    ret nz                                        ; $64f5: $c0

    nop                                           ; $64f6: $00
    jr c, jr_0d0_647f                             ; $64f7: $38 $86

    ld a, a                                       ; $64f9: $7f
    ld b, b                                       ; $64fa: $40
    ld c, a                                       ; $64fb: $4f
    ld [hl], b                                    ; $64fc: $70
    ld a, c                                       ; $64fd: $79
    ld c, a                                       ; $64fe: $4f
    nop                                           ; $64ff: $00
    ld c, d                                       ; $6500: $4a
    ccf                                           ; $6501: $3f
    ld [$6306], sp                                ; $6502: $08 $06 $63
    ld c, l                                       ; $6505: $4d
    rlca                                          ; $6506: $07
    add $00                                       ; $6507: $c6 $00
    rlca                                          ; $6509: $07
    ld d, $fa                                     ; $650a: $16 $fa
    ldh a, [$08]                                  ; $650c: $f0 $08
    ld hl, sp-$07                                 ; $650e: $f8 $f9
    dec c                                         ; $6510: $0d
    nop                                           ; $6511: $00
    nop                                           ; $6512: $00
    cp $fe                                        ; $6513: $fe $fe
    db $fc                                        ; $6515: $fc
    db $ec                                        ; $6516: $ec
    sbc d                                         ; $6517: $9a
    db $f4                                        ; $6518: $f4
    ld d, $00                                     ; $6519: $16 $00
    db $e4                                        ; $651b: $e4
    ld b, [hl]                                    ; $651c: $46
    ld [bc], a                                    ; $651d: $02
    sbc b                                         ; $651e: $98
    ld a, [de]                                    ; $651f: $1a
    sbc b                                         ; $6520: $98
    db $10                                        ; $6521: $10
    ld [bc], a                                    ; $6522: $02
    nop                                           ; $6523: $00
    add sp, -$1e                                  ; $6524: $e8 $e2
    db $f4                                        ; $6526: $f4
    ld b, [hl]                                    ; $6527: $46
    db $f4                                        ; $6528: $f4
    ld d, [hl]                                    ; $6529: $56
    ld a, e                                       ; $652a: $7b
    ret nz                                        ; $652b: $c0

    ld h, b                                       ; $652c: $60
    ld a, a                                       ; $652d: $7f
    ld [bc], a                                    ; $652e: $02
    jr nc, jr_0d0_653c                            ; $652f: $30 $0b

    ld [$ac06], sp                                ; $6531: $08 $06 $ac
    ld a, a                                       ; $6534: $7f
    or a                                          ; $6535: $b7
    ret nz                                        ; $6536: $c0

    nop                                           ; $6537: $00
    xor a                                         ; $6538: $af
    ret nz                                        ; $6539: $c0

    xor a                                         ; $653a: $af
    ld a, a                                       ; $653b: $7f

jr_0d0_653c:
    sbc b                                         ; $653c: $98
    ld a, $41                                     ; $653d: $3e $41
    ld h, e                                       ; $653f: $63
    nop                                           ; $6540: $00
    ld e, [hl]                                    ; $6541: $5e
    scf                                           ; $6542: $37
    inc l                                         ; $6543: $2c
    rra                                           ; $6544: $1f
    adc [hl]                                      ; $6545: $8e
    cp $fe                                        ; $6546: $fe $fe
    cp $00                                        ; $6548: $fe $00
    db $fd                                        ; $654a: $fd
    db $fc                                        ; $654b: $fc
    ld a, [$06f8]                                 ; $654c: $fa $f8 $06
    pop af                                        ; $654f: $f1
    dec c                                         ; $6550: $0d
    and $00                                       ; $6551: $e6 $00
    ld e, $ca                                     ; $6553: $1e $ca
    ld a, $82                                     ; $6555: $3e $82
    ld d, [hl]                                    ; $6557: $56
    ld [hl+], a                                   ; $6558: $22
    adc [hl]                                      ; $6559: $8e
    ld b, [hl]                                    ; $655a: $46
    nop                                           ; $655b: $00
    db $f4                                        ; $655c: $f4
    ld c, $9c                                     ; $655d: $0e $9c
    add d                                         ; $655f: $82
    and h                                         ; $6560: $a4
    ld [bc], a                                    ; $6561: $02
    ld a, h                                       ; $6562: $7c
    cp $14                                        ; $6563: $fe $14
    db $fc                                        ; $6565: $fc
    ld [bc], a                                    ; $6566: $02
    db $fc                                        ; $6567: $fc
    ccf                                           ; $6568: $3f
    db $10                                        ; $6569: $10
    ld b, b                                       ; $656a: $40
    ld [bc], a                                    ; $656b: $02
    nop                                           ; $656c: $00
    ld a, [hl]                                    ; $656d: $7e
    ret nz                                        ; $656e: $c0

    nop                                           ; $656f: $00
    ld a, b                                       ; $6570: $78
    add b                                         ; $6571: $80
    ld a, a                                       ; $6572: $7f
    rst $38                                       ; $6573: $ff
    nop                                           ; $6574: $00
    rst $28                                       ; $6575: $ef
    ldh a, [$c7]                                  ; $6576: $f0 $c7
    nop                                           ; $6578: $00
    ret z                                         ; $6579: $c8

    jr nz, jr_0d0_65b3                            ; $657a: $20 $37

    ld h, c                                       ; $657c: $61
    ld l, [hl]                                    ; $657d: $6e
    ld l, $49                                     ; $657e: $2e $49
    add [hl]                                      ; $6580: $86
    ld b, b                                       ; $6581: $40
    pop hl                                        ; $6582: $e1
    cp h                                          ; $6583: $bc
    nop                                           ; $6584: $00
    nop                                           ; $6585: $00
    ld l, l                                       ; $6586: $6d
    add c                                         ; $6587: $81
    call c, Call_000_2000                         ; $6588: $dc $00 $20
    ld bc, $e1bd                                  ; $658b: $01 $bd $e1
    ld hl, sp+$70                                 ; $658e: $f8 $70
    db $e3                                        ; $6590: $e3
    inc bc                                        ; $6591: $03
    adc h                                         ; $6592: $8c
    db $10                                        ; $6593: $10
    ld [$3480], sp                                ; $6594: $08 $80 $34
    ld [$7d03], sp                                ; $6597: $08 $03 $7d
    inc bc                                        ; $659a: $03
    dec a                                         ; $659b: $3d
    cp h                                          ; $659c: $bc
    ld a, $8c                                     ; $659d: $3e $8c
    ld b, b                                       ; $659f: $40
    ld c, $92                                     ; $65a0: $0e $92
    nop                                           ; $65a2: $00
    nop                                           ; $65a3: $00
    nop                                           ; $65a4: $00

jr_0d0_65a5:
    ld bc, $00ea                                  ; $65a5: $01 $ea $00
    nop                                           ; $65a8: $00
    rst $38                                       ; $65a9: $ff
    ld a, a                                       ; $65aa: $7f
    ret nz                                        ; $65ab: $c0

    ld e, a                                       ; $65ac: $5f
    ccf                                           ; $65ad: $3f
    and $3f                                       ; $65ae: $e6 $3f
    ld a, [c]                                     ; $65b0: $f2
    nop                                           ; $65b1: $00
    ccf                                           ; $65b2: $3f

jr_0d0_65b3:
    db $d3                                        ; $65b3: $d3
    ccf                                           ; $65b4: $3f
    reti                                          ; $65b5: $d9


    ccf                                           ; $65b6: $3f
    call $cd3f                                    ; $65b7: $cd $3f $cd
    nop                                           ; $65ba: $00
    rst $38                                       ; $65bb: $ff
    nop                                           ; $65bc: $00
    nop                                           ; $65bd: $00
    nop                                           ; $65be: $00
    rst $38                                       ; $65bf: $ff
    nop                                           ; $65c0: $00
    ldh [rNR10], a                                ; $65c1: $e0 $10
    nop                                           ; $65c3: $00
    rlca                                          ; $65c4: $07
    ret z                                         ; $65c5: $c8

    rrca                                          ; $65c6: $0f
    rra                                           ; $65c7: $1f
    db $10                                        ; $65c8: $10
    jr nc, jr_0d0_6633                            ; $65c9: $30 $68

    rst $20                                       ; $65cb: $e7
    add b                                         ; $65cc: $80
    stop                                          ; $65cd: $10 $00
    rst $28                                       ; $65cf: $ef
    add $29                                       ; $65d0: $c6 $29
    nop                                           ; $65d2: $00
    ld h, b                                       ; $65d3: $60
    inc c                                         ; $65d4: $0c
    add d                                         ; $65d5: $82
    nop                                           ; $65d6: $00
    sbc $dc                                       ; $65d7: $de $dc
    ld [hl], d                                    ; $65d9: $72
    ld h, b                                       ; $65da: $60
    db $e4                                        ; $65db: $e4
    ld l, b                                       ; $65dc: $68
    cp $00                                        ; $65dd: $fe $00
    nop                                           ; $65df: $00
    ld b, $b4                                     ; $65e0: $06 $b4
    ld b, $62                                     ; $65e2: $06 $62
    ld c, $c2                                     ; $65e4: $0e $c2
    db $fc                                        ; $65e6: $fc
    ld [c], a                                     ; $65e7: $e2
    nop                                           ; $65e8: $00
    db $fc                                        ; $65e9: $fc
    jp nz, Jump_000_02fc                          ; $65ea: $c2 $fc $02

    db $fc                                        ; $65ed: $fc
    cp $3f                                        ; $65ee: $fe $3f
    rst $00                                       ; $65f0: $c7
    ld [bc], a                                    ; $65f1: $02
    ccf                                           ; $65f2: $3f
    jp $7ec0                                      ; $65f3: $c3 $c0 $7e


    ret nz                                        ; $65f6: $c0

    ld a, a                                       ; $65f7: $7f
    ld [bc], a                                    ; $65f8: $02
    ld [$80c3], sp                                ; $65f9: $08 $c3 $80
    dec c                                         ; $65fc: $0d
    nop                                           ; $65fd: $00
    db $f4                                        ; $65fe: $f4
    ld b, $f0                                     ; $65ff: $06 $f0
    inc b                                         ; $6601: $04
    ld c, a                                       ; $6602: $4f
    jr nc, jr_0d0_6645                            ; $6603: $30 $40

    nop                                           ; $6605: $00
    ccf                                           ; $6606: $3f
    ld a, a                                       ; $6607: $7f
    ccf                                           ; $6608: $3f
    ccf                                           ; $6609: $3f
    ld e, a                                       ; $660a: $5f
    rra                                           ; $660b: $1f
    cpl                                           ; $660c: $2f
    rrca                                          ; $660d: $0f
    nop                                           ; $660e: $00
    ld d, a                                       ; $660f: $57
    inc e                                         ; $6610: $1c
    or $00                                        ; $6611: $f6 $00
    xor $05                                       ; $6613: $ee $05
    ld a, [c]                                     ; $6615: $f2
    jr c, jr_0d0_6618                             ; $6616: $38 $00

jr_0d0_6618:
    rst $08                                       ; $6618: $cf
    rst $38                                       ; $6619: $ff
    nop                                           ; $661a: $00
    add a                                         ; $661b: $87
    jr nc, jr_0d0_65a5                            ; $661c: $30 $87

    add a                                         ; $661e: $87
    rst $08                                       ; $661f: $cf
    ld b, d                                       ; $6620: $42
    cp $34                                        ; $6621: $fe $34
    ld [$7e7c], sp                                ; $6623: $08 $7c $7e
    cp h                                          ; $6626: $bc
    ld a, $02                                     ; $6627: $3e $02
    db $10                                        ; $6629: $10
    ld [bc], a                                    ; $662a: $02
    nop                                           ; $662b: $00
    cp h                                          ; $662c: $bc
    add d                                         ; $662d: $82
    jp $c770                                      ; $662e: $c3 $70 $c7


    ld h, b                                       ; $6631: $60
    ccf                                           ; $6632: $3f

jr_0d0_6633:
    ldh a, [rP1]                                  ; $6633: $f0 $00
    ccf                                           ; $6635: $3f
    ldh [$7e], a                                  ; $6636: $e0 $7e
    ret nz                                        ; $6638: $c0

    ld a, b                                       ; $6639: $78
    pop bc                                        ; $663a: $c1
    cp h                                          ; $663b: $bc
    ld c, a                                       ; $663c: $4f
    nop                                           ; $663d: $00
    cp l                                          ; $663e: $bd
    ld e, a                                       ; $663f: $5f
    and a                                         ; $6640: $a7
    adc b                                         ; $6641: $88
    sub c                                         ; $6642: $91
    and d                                         ; $6643: $a2
    ret nc                                        ; $6644: $d0

jr_0d0_6645:
    ld c, h                                       ; $6645: $4c
    nop                                           ; $6646: $00
    db $ec                                        ; $6647: $ec
    inc hl                                        ; $6648: $23
    nop                                           ; $6649: $00
    nop                                           ; $664a: $00
    ldh a, [$87]                                  ; $664b: $f0 $87
    ret z                                         ; $664d: $c8

    jp $e000                                      ; $664e: $c3 $00 $e0


    rst $08                                       ; $6651: $cf
    cp $78                                        ; $6652: $fe $78
    ld a, b                                       ; $6654: $78
    or h                                          ; $6655: $b4
    ld c, c                                       ; $6656: $49
    ld sp, $0300                                  ; $6657: $31 $00 $03
    add d                                         ; $665a: $82
    nop                                           ; $665b: $00
    inc bc                                        ; $665c: $03
    inc l                                         ; $665d: $2c
    add hl, bc                                    ; $665e: $09
    or d                                          ; $665f: $b2
    add h                                         ; $6660: $84
    nop                                           ; $6661: $00
    ret nc                                        ; $6662: $d0

    bit 3, h                                      ; $6663: $cb $5c
    ld b, d                                       ; $6665: $42
    db $ec                                        ; $6666: $ec
    ld [c], a                                     ; $6667: $e2
    ld b, $e2                                     ; $6668: $06 $e2
    nop                                           ; $666a: $00
    ld [bc], a                                    ; $666b: $02
    jp nz, $82b8                                  ; $666c: $c2 $b8 $82

    cp b                                          ; $666f: $b8
    add d                                         ; $6670: $82
    ld a, b                                       ; $6671: $78
    ld [hl-], a                                   ; $6672: $32
    nop                                           ; $6673: $00
    ldh a, [$62]                                  ; $6674: $f0 $62
    cp a                                          ; $6676: $bf
    ld a, [hl]                                    ; $6677: $7e
    cp a                                          ; $6678: $bf
    ld h, [hl]                                    ; $6679: $66
    ld a, l                                       ; $667a: $7d
    ret nz                                        ; $667b: $c0

    db $10                                        ; $667c: $10
    ld a, h                                       ; $667d: $7c
    ret nz                                        ; $667e: $c0

    ccf                                           ; $667f: $3f
    ld a, l                                       ; $6680: $7d
    nop                                           ; $6681: $00
    add b                                         ; $6682: $80
    ld a, a                                       ; $6683: $7f
    rst $38                                       ; $6684: $ff
    nop                                           ; $6685: $00
    nop                                           ; $6686: $00
    rla                                           ; $6687: $17
    ret nc                                        ; $6688: $d0

    rla                                           ; $6689: $17
    db $10                                        ; $668a: $10
    db $10                                        ; $668b: $10
    rst $00                                       ; $668c: $c7
    db $10                                        ; $668d: $10
    rst $00                                       ; $668e: $c7
    ld [$9338], sp                                ; $668f: $08 $38 $93
    jr c, @+$1d                                   ; $6692: $38 $1b

    call z, $0d08                                 ; $6694: $cc $08 $0d
    push hl                                       ; $6697: $e5
    ld b, $00                                     ; $6698: $06 $00
    ld a, [c]                                     ; $669a: $f2
    inc bc                                        ; $669b: $03
    ld sp, hl                                     ; $669c: $f9
    nop                                           ; $669d: $00
    cp h                                          ; $669e: $bc
    cp a                                          ; $669f: $bf
    nop                                           ; $66a0: $00
    rra                                           ; $66a1: $1f
    ld b, b                                       ; $66a2: $40
    and b                                         ; $66a3: $a0
    call c, $cc08                                 ; $66a4: $dc $08 $cc
    jp nz, Jump_000_02bc                          ; $66a7: $c2 $bc $02

    db $fc                                        ; $66aa: $fc
    ld a, [c]                                     ; $66ab: $f2
    nop                                           ; $66ac: $00
    db $fc                                        ; $66ad: $fc
    ld h, $32                                     ; $66ae: $26 $32
    ld b, $12                                     ; $66b0: $06 $12
    add [hl]                                      ; $66b2: $86
    nop                                           ; $66b3: $00
    cp $00                                        ; $66b4: $fe $00
    cp $00                                        ; $66b6: $fe $00
    nop                                           ; $66b8: $00
    ld bc, $00f7                                  ; $66b9: $01 $f7 $00
    nop                                           ; $66bc: $00
    add b                                         ; $66bd: $80
    ld a, a                                       ; $66be: $7f
    add c                                         ; $66bf: $81
    ld b, c                                       ; $66c0: $41
    ld bc, $03c0                                  ; $66c1: $01 $c0 $03
    jp nz, $1f00                                  ; $66c4: $c2 $00 $1f

    call c, $e03f                                 ; $66c7: $dc $3f $e0
    scf                                           ; $66ca: $37
    ld a, [c]                                     ; $66cb: $f2
    ld [hl], $e0                                  ; $66cc: $36 $e0
    nop                                           ; $66ce: $00
    rst $38                                       ; $66cf: $ff
    nop                                           ; $66d0: $00
    jr jr_0d0_672d                                ; $66d1: $18 $5a

    ldh a, [$a3]                                  ; $66d3: $f0 $a3
    and [hl]                                      ; $66d5: $a6
    inc bc                                        ; $66d6: $03
    nop                                           ; $66d7: $00
    inc d                                         ; $66d8: $14
    ld [bc], a                                    ; $66d9: $02
    and e                                         ; $66da: $a3
    inc a                                         ; $66db: $3c
    db $fc                                        ; $66dc: $fc
    dec a                                         ; $66dd: $3d
    db $e3                                        ; $66de: $e3
    ld e, l                                       ; $66df: $5d
    nop                                           ; $66e0: $00
    rst $38                                       ; $66e1: $ff
    nop                                           ; $66e2: $00
    ret nz                                        ; $66e3: $c0

    ldh [$e0], a                                  ; $66e4: $e0 $e0
    jr nz, @+$12                                  ; $66e6: $20 $10

    ldh [rP1], a                                  ; $66e8: $e0 $00
    ret nc                                        ; $66ea: $d0

    and b                                         ; $66eb: $a0
    jr c, @-$26                                   ; $66ec: $38 $d8

    ldh [$d8], a                                  ; $66ee: $e0 $d8
    db $fc                                        ; $66f0: $fc
    ld h, e                                       ; $66f1: $63
    nop                                           ; $66f2: $00
    cp $01                                        ; $66f3: $fe $01
    ld [bc], a                                    ; $66f5: $02
    ld bc, $0103                                  ; $66f6: $01 $03 $01
    inc bc                                        ; $66f9: $03
    dec b                                         ; $66fa: $05
    nop                                           ; $66fb: $00
    ld [bc], a                                    ; $66fc: $02
    nop                                           ; $66fd: $00
    ld a, [de]                                    ; $66fe: $1a
    inc a                                         ; $66ff: $3c
    ld a, h                                       ; $6700: $7c
    ld a, [bc]                                    ; $6701: $0a
    call c, Call_000_000a                         ; $6702: $dc $0a $00
    rra                                           ; $6705: $1f
    add $27                                       ; $6706: $c6 $27
    jp $cf2f                                      ; $6708: $c3 $2f $cf


    ccf                                           ; $670b: $3f
    ret z                                         ; $670c: $c8

    nop                                           ; $670d: $00
    ccf                                           ; $670e: $3f
    rst $00                                       ; $670f: $c7
    ccf                                           ; $6710: $3f
    jp $2ecc                                      ; $6711: $c3 $cc $2e


    ret nz                                        ; $6714: $c0

    inc a                                         ; $6715: $3c
    nop                                           ; $6716: $00
    ccf                                           ; $6717: $3f
    ld e, [hl]                                    ; $6718: $5e
    ccf                                           ; $6719: $3f
    ld e, b                                       ; $671a: $58
    ccf                                           ; $671b: $3f
    cp a                                          ; $671c: $bf
    ld a, $1d                                     ; $671d: $3e $1d
    nop                                           ; $671f: $00
    inc sp                                        ; $6720: $33
    sla b                                         ; $6721: $cb $20
    ld d, h                                       ; $6723: $54
    ld l, $17                                     ; $6724: $2e $17
    rlca                                          ; $6726: $07
    ld a, [c]                                     ; $6727: $f2
    nop                                           ; $6728: $00
    add e                                         ; $6729: $83
    nop                                           ; $672a: $00
    rlca                                          ; $672b: $07
    ei                                            ; $672c: $fb

jr_0d0_672d:
    cp $0c                                        ; $672d: $fe $0c
    ld c, $f4                                     ; $672f: $0e $f4
    nop                                           ; $6731: $00
    pop de                                        ; $6732: $d1
    rrca                                          ; $6733: $0f
    di                                            ; $6734: $f3
    sub l                                         ; $6735: $95
    ld h, $2a                                     ; $6736: $26 $2a
    add h                                         ; $6738: $84
    ld c, c                                       ; $6739: $49
    nop                                           ; $673a: $00
    sbc h                                         ; $673b: $9c
    ld a, [de]                                    ; $673c: $1a
    inc b                                         ; $673d: $04
    ld [bc], a                                    ; $673e: $02
    ld [bc], a                                    ; $673f: $02
    ld l, [hl]                                    ; $6740: $6e
    ld a, [bc]                                    ; $6741: $0a
    or $00                                        ; $6742: $f6 $00
    adc $fc                                       ; $6744: $ce $fc
    ld [c], a                                     ; $6746: $e2
    db $e4                                        ; $6747: $e4
    ldh a, [$f2]                                  ; $6748: $f0 $f2
    call c, Call_000_0012                         ; $674a: $dc $12 $00
    ret z                                         ; $674d: $c8

    add hl, de                                    ; $674e: $19
    rr a                                          ; $674f: $cb $1f
    ret nc                                        ; $6751: $d0

    rra                                           ; $6752: $1f
    db $d3                                        ; $6753: $d3
    rra                                           ; $6754: $1f
    nop                                           ; $6755: $00
    rra                                           ; $6756: $1f
    jp nc, $d21f                                  ; $6757: $d2 $1f $d2

    dec c                                         ; $675a: $0d
    call z, $cd0f                                 ; $675b: $cc $0f $cd
    nop                                           ; $675e: $00
    ret nz                                        ; $675f: $c0

    add e                                         ; $6760: $83
    adc $fd                                       ; $6761: $ce $fd
    rst $28                                       ; $6763: $ef
    jr jr_0d0_6776                                ; $6764: $18 $10

    cpl                                           ; $6766: $2f
    nop                                           ; $6767: $00
    inc e                                         ; $6768: $1c
    ld a, e                                       ; $6769: $7b
    rst $38                                       ; $676a: $ff
    rra                                           ; $676b: $1f
    ld a, a                                       ; $676c: $7f
    sbc a                                         ; $676d: $9f
    rra                                           ; $676e: $1f
    jr nz, jr_0d0_6771                            ; $676f: $20 $00

jr_0d0_6771:
    ld e, l                                       ; $6771: $5d
    cp b                                          ; $6772: $b8
    dec bc                                        ; $6773: $0b
    dec a                                         ; $6774: $3d
    xor h                                         ; $6775: $ac

jr_0d0_6776:
    db $e3                                        ; $6776: $e3
    dec a                                         ; $6777: $3d
    ld [hl+], a                                   ; $6778: $22
    nop                                           ; $6779: $00
    ld a, b                                       ; $677a: $78
    or a                                          ; $677b: $b7
    ldh a, [$e0]                                  ; $677c: $f0 $e0
    db $e4                                        ; $677e: $e4
    ret                                           ; $677f: $c9


    add d                                         ; $6780: $82
    reti                                          ; $6781: $d9


    nop                                           ; $6782: $00
    ld a, h                                       ; $6783: $7c
    ld [hl], $fc                                  ; $6784: $36 $fc
    ld [hl], $fc                                  ; $6786: $36 $fc
    ld e, d                                       ; $6788: $5a
    sbc h                                         ; $6789: $9c
    ld a, [de]                                    ; $678a: $1a
    nop                                           ; $678b: $00
    db $f4                                        ; $678c: $f4

jr_0d0_678d:
    ld a, [c]                                     ; $678d: $f2
    db $fc                                        ; $678e: $fc
    ld [c], a                                     ; $678f: $e2
    db $fc                                        ; $6790: $fc
    and d                                         ; $6791: $a2
    ld a, h                                       ; $6792: $7c
    ld h, d                                       ; $6793: $62
    add h                                         ; $6794: $84
    jr c, jr_0d0_6797                             ; $6795: $38 $00

jr_0d0_6797:
    db $d3                                        ; $6797: $d3
    ld b, a                                       ; $6798: $47
    ret nz                                        ; $6799: $c0

    ld b, e                                       ; $679a: $43
    ld [bc], a                                    ; $679b: $02
    db $10                                        ; $679c: $10
    add b                                         ; $679d: $80
    ld a, a                                       ; $679e: $7f
    nop                                           ; $679f: $00
    rst $38                                       ; $67a0: $ff
    nop                                           ; $67a1: $00
    ld bc, $46fe                                  ; $67a2: $01 $fe $46
    ld a, [hl-]                                   ; $67a5: $3a
    ld bc, $003e                                  ; $67a6: $01 $3e $00
    adc a                                         ; $67a9: $8f
    inc de                                        ; $67aa: $13
    rra                                           ; $67ab: $1f
    adc a                                         ; $67ac: $8f
    rra                                           ; $67ad: $1f
    rst $38                                       ; $67ae: $ff
    rst $38                                       ; $67af: $ff
    nop                                           ; $67b0: $00
    nop                                           ; $67b1: $00
    nop                                           ; $67b2: $00
    nop                                           ; $67b3: $00
    cp l                                          ; $67b4: $bd
    cp e                                          ; $67b5: $bb
    and $db                                       ; $67b6: $e6 $db
    cp c                                          ; $67b8: $b9
    jp z, $9602                                   ; $67b9: $ca $02 $96

    xor a                                         ; $67bc: $af
    sbc h                                         ; $67bd: $9c
    ld l, [hl]                                    ; $67be: $6e
    adc h                                         ; $67bf: $8c
    ld a, $10                                     ; $67c0: $3e $10
    ld [$00bc], sp                                ; $67c2: $08 $bc $00
    sbc d                                         ; $67c5: $9a
    db $f4                                        ; $67c6: $f4
    sub $e0                                       ; $67c7: $d6 $e0
    jp nz, Jump_000_02c0                          ; $67c9: $c2 $c0 $02

    ld a, [$f900]                                 ; $67cc: $fa $00 $f9
    ld [de], a                                    ; $67cf: $12
    ld de, $fe00                                  ; $67d0: $11 $00 $fe
    cp $00                                        ; $67d3: $fe $00
    nop                                           ; $67d5: $00
    ld bc, $00ef                                  ; $67d6: $01 $ef $00
    nop                                           ; $67d9: $00
    ld a, a                                       ; $67da: $7f
    rst $38                                       ; $67db: $ff
    ld b, e                                       ; $67dc: $43
    ret nz                                        ; $67dd: $c0

    ret nz                                        ; $67de: $c0

    ld b, c                                       ; $67df: $41
    ret nz                                        ; $67e0: $c0

    ld h, b                                       ; $67e1: $60
    nop                                           ; $67e2: $00
    scf                                           ; $67e3: $37
    add $33                                       ; $67e4: $c6 $33
    db $d3                                        ; $67e6: $d3
    pop bc                                        ; $67e7: $c1
    dec sp                                        ; $67e8: $3b
    pop bc                                        ; $67e9: $c1
    add hl, sp                                    ; $67ea: $39
    nop                                           ; $67eb: $00
    rst $38                                       ; $67ec: $ff
    nop                                           ; $67ed: $00
    add b                                         ; $67ee: $80
    cp a                                          ; $67ef: $bf
    ret nz                                        ; $67f0: $c0

    sbc a                                         ; $67f1: $9f
    ret nz                                        ; $67f2: $c0

    ld e, a                                       ; $67f3: $5f
    nop                                           ; $67f4: $00
    ld h, b                                       ; $67f5: $60
    ld l, a                                       ; $67f6: $6f
    or b                                          ; $67f7: $b0
    ld h, $36                                     ; $67f8: $26 $36
    or [hl]                                       ; $67fa: $b6
    jr nz, jr_0d0_678d                            ; $67fb: $20 $90

    jr nz, @+$01                                  ; $67fd: $20 $ff

    nop                                           ; $67ff: $00
    ld bc, $7f38                                  ; $6800: $01 $38 $7f
    nop                                           ; $6803: $00
    dec a                                         ; $6804: $3d
    add c                                         ; $6805: $81
    cp $00                                        ; $6806: $fe $00
    nop                                           ; $6808: $00
    ld [bc], a                                    ; $6809: $02
    db $fc                                        ; $680a: $fc
    db $fd                                        ; $680b: $fd
    inc bc                                        ; $680c: $03
    pop hl                                        ; $680d: $e1
    inc bc                                        ; $680e: $03
    call c, Call_000_1e00                         ; $680f: $dc $00 $1e
    or b                                          ; $6812: $b0
    ld [hl-], a                                   ; $6813: $32
    ld h, b                                       ; $6814: $60
    ld b, d                                       ; $6815: $42
    call z, $c102                                 ; $6816: $cc $02 $c1
    nop                                           ; $6819: $00
    add hl, sp                                    ; $681a: $39
    pop bc                                        ; $681b: $c1
    ld hl, $15c1                                  ; $681c: $21 $c1 $15
    jp Jump_000_0607                              ; $681f: $c3 $07 $06


    nop                                           ; $6822: $00
    add $3e                                       ; $6823: $c6 $3e
    ret z                                         ; $6825: $c8

    call z, $c01c                                 ; $6826: $cc $1c $c0
    inc hl                                        ; $6829: $23
    daa                                           ; $682a: $27
    nop                                           ; $682b: $00
    add a                                         ; $682c: $87
    or a                                          ; $682d: $b7
    and c                                         ; $682e: $a1
    inc sp                                        ; $682f: $33
    ld e, h                                       ; $6830: $5c
    nop                                           ; $6831: $00
    ld [hl], b                                    ; $6832: $70
    sub l                                         ; $6833: $95
    nop                                           ; $6834: $00
    ld h, [hl]                                    ; $6835: $66
    ld a, b                                       ; $6836: $78
    sbc b                                         ; $6837: $98
    ld b, l                                       ; $6838: $45
    or h                                          ; $6839: $b4
    db $e3                                        ; $683a: $e3
    sbc h                                         ; $683b: $9c
    ret c                                         ; $683c: $d8

    nop                                           ; $683d: $00
    jp nz, $a366                                  ; $683e: $c2 $66 $a3

    scf                                           ; $6841: $37
    or $24                                        ; $6842: $f6 $24
    ld d, h                                       ; $6844: $54
    sbc b                                         ; $6845: $98
    nop                                           ; $6846: $00
    ld de, $4020                                  ; $6847: $11 $20 $40
    db $ec                                        ; $684a: $ec
    db $eb                                        ; $684b: $eb
    add $c9                                       ; $684c: $c6 $c9
    db $fc                                        ; $684e: $fc
    nop                                           ; $684f: $00
    ld [hl-], a                                   ; $6850: $32
    db $fc                                        ; $6851: $fc
    cp d                                          ; $6852: $ba
    ld l, h                                       ; $6853: $6c
    ld h, $5c                                     ; $6854: $26 $5c
    ld c, d                                       ; $6856: $4a
    ld e, b                                       ; $6857: $58
    nop                                           ; $6858: $00
    ld e, d                                       ; $6859: $5a
    db $e4                                        ; $685a: $e4
    ld [bc], a                                    ; $685b: $02
    ld c, h                                       ; $685c: $4c
    ld b, d                                       ; $685d: $42
    inc [hl]                                      ; $685e: $34
    ld [hl-], a                                   ; $685f: $32
    ld a, d                                       ; $6860: $7a
    nop                                           ; $6861: $00
    ret nz                                        ; $6862: $c0

    ld b, b                                       ; $6863: $40
    ret nz                                        ; $6864: $c0

    ld a, l                                       ; $6865: $7d
    ret nz                                        ; $6866: $c0

    ld a, h                                       ; $6867: $7c
    ret nz                                        ; $6868: $c0

    or c                                          ; $6869: $b1
    nop                                           ; $686a: $00

jr_0d0_686b:
    ld [hl], b                                    ; $686b: $70
    xor l                                         ; $686c: $ad
    ld h, b                                       ; $686d: $60
    inc c                                         ; $686e: $0c
    ret z                                         ; $686f: $c8

    ld a, $e6                                     ; $6870: $3e $e6
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    nop                                           ; $6874: $00
    cp b                                          ; $6875: $b8
    add $80                                       ; $6876: $c6 $80
    add c                                         ; $6878: $81
    ld e, c                                       ; $6879: $59
    ld l, b                                       ; $687a: $68
    db $fc                                        ; $687b: $fc
    nop                                           ; $687c: $00
    or b                                          ; $687d: $b0
    ld a, a                                       ; $687e: $7f
    pop hl                                        ; $687f: $e1
    add c                                         ; $6880: $81
    inc sp                                        ; $6881: $33
    jp $0f07                                      ; $6882: $c3 $07 $0f


    nop                                           ; $6885: $00
    pop hl                                        ; $6886: $e1
    ld b, $a0                                     ; $6887: $06 $a0
    ld d, b                                       ; $6889: $50
    ldh [rNR41], a                                ; $688a: $e0 $20
    ret nz                                        ; $688c: $c0

    rla                                           ; $688d: $17
    nop                                           ; $688e: $00
    rla                                           ; $688f: $17
    xor l                                         ; $6890: $ad
    ld d, [hl]                                    ; $6891: $56
    ld [$35bf], a                                 ; $6892: $ea $bf $35
    ld l, e                                       ; $6895: $6b
    ld h, b                                       ; $6896: $60
    nop                                           ; $6897: $00
    ld b, d                                       ; $6898: $42
    jr z, @+$24                                   ; $6899: $28 $22

    adc [hl]                                      ; $689b: $8e
    call z, $c446                                 ; $689c: $cc $46 $c4
    jr nc, jr_0d0_68a1                            ; $689f: $30 $00

jr_0d0_68a1:
    ld [bc], a                                    ; $68a1: $02
    ret c                                         ; $68a2: $d8

    jp nz, $dc82                                  ; $68a3: $c2 $82 $dc

    ld [bc], a                                    ; $68a6: $02
    adc h                                         ; $68a7: $8c
    halt                                          ; $68a8: $76
    jr nz, jr_0d0_686b                            ; $68a9: $20 $c0

    ld a, [hl]                                    ; $68ab: $7e
    ld a, $00                                     ; $68ac: $3e $00
    ld a, e                                       ; $68ae: $7b
    ret nz                                        ; $68af: $c0

    ld [hl], e                                    ; $68b0: $73
    ret nz                                        ; $68b1: $c0

    ld h, a                                       ; $68b2: $67
    nop                                           ; $68b3: $00
    ret nz                                        ; $68b4: $c0

    add b                                         ; $68b5: $80
    ld a, a                                       ; $68b6: $7f
    rst $38                                       ; $68b7: $ff
    nop                                           ; $68b8: $00
    ld h, $60                                     ; $68b9: $26 $60
    ld hl, $1900                                  ; $68bb: $21 $00 $19
    add c                                         ; $68be: $81
    inc e                                         ; $68bf: $1c
    push hl                                       ; $68c0: $e5
    daa                                           ; $68c1: $27
    ldh [$c8], a                                  ; $68c2: $e0 $c8
    rst $08                                       ; $68c4: $cf
    ld b, b                                       ; $68c5: $40
    sbc $bc                                       ; $68c6: $de $bc
    ld [$136c], sp                                ; $68c8: $08 $6c $13
    add d                                         ; $68cb: $82
    ld e, d                                       ; $68cc: $5a
    ld [$020c], sp                                ; $68cd: $08 $0c $02
    ldh a, [rSB]                                  ; $68d0: $f0 $01
    inc c                                         ; $68d2: $0c
    dec bc                                        ; $68d3: $0b
    ld h, b                                       ; $68d4: $60
    ld e, a                                       ; $68d5: $5f
    call z, $3408                                 ; $68d6: $cc $08 $34
    nop                                           ; $68d9: $00
    ld h, $78                                     ; $68da: $26 $78
    ld a, [de]                                    ; $68dc: $1a
    ld [hl-], a                                   ; $68dd: $32
    or b                                          ; $68de: $b0
    jp nz, $f0d8                                  ; $68df: $c2 $d8 $f0

    nop                                           ; $68e2: $00
    ld h, d                                       ; $68e3: $62
    jr c, jr_0d0_6920                             ; $68e4: $38 $3a

    nop                                           ; $68e6: $00
    cp $fe                                        ; $68e7: $fe $fe
    nop                                           ; $68e9: $00
    nop                                           ; $68ea: $00
    ld bc, $00f0                                  ; $68eb: $01 $f0 $00
    nop                                           ; $68ee: $00
    ld a, a                                       ; $68ef: $7f
    rst $38                                       ; $68f0: $ff
    ld a, a                                       ; $68f1: $7f
    ret nz                                        ; $68f2: $c0

    ld a, a                                       ; $68f3: $7f
    ret nz                                        ; $68f4: $c0

    ld a, [hl]                                    ; $68f5: $7e
    ret nz                                        ; $68f6: $c0

    nop                                           ; $68f7: $00
    pop de                                        ; $68f8: $d1
    dec a                                         ; $68f9: $3d
    reti                                          ; $68fa: $d9


    ccf                                           ; $68fb: $3f
    ld a, $cc                                     ; $68fc: $3e $cc
    ccf                                           ; $68fe: $3f
    rlc b                                         ; $68ff: $cb $00
    rst $38                                       ; $6901: $ff
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    nop                                           ; $6904: $00
    ldh [rP1], a                                  ; $6905: $e0 $00
    ret                                           ; $6907: $c9


    rra                                           ; $6908: $1f
    nop                                           ; $6909: $00
    daa                                           ; $690a: $27
    ld e, $64                                     ; $690b: $1e $64
    adc [hl]                                      ; $690d: $8e

jr_0d0_690e:
    ret c                                         ; $690e: $d8

    ret nc                                        ; $690f: $d0

    adc e                                         ; $6910: $8b
    jp nz, $1080                                  ; $6911: $c2 $80 $10

    nop                                           ; $6914: $00
    ccf                                           ; $6915: $3f
    rrca                                          ; $6916: $0f
    ret nz                                        ; $6917: $c0

    rst $00                                       ; $6918: $c7
    ldh a, [$eb]                                  ; $6919: $f0 $eb
    ld hl, sp+$00                                 ; $691b: $f8 $00
    add l                                         ; $691d: $85
    db $fc                                        ; $691e: $fc
    inc a                                         ; $691f: $3c

jr_0d0_6920:
    inc c                                         ; $6920: $0c
    ld h, b                                       ; $6921: $60
    cpl                                           ; $6922: $2f
    cp $00                                        ; $6923: $fe $00
    ld [$fc02], sp                                ; $6925: $08 $02 $fc
    db $fc                                        ; $6928: $fc
    ld [bc], a                                    ; $6929: $02
    ld [bc], a                                    ; $692a: $02
    db $10                                        ; $692b: $10
    ld a, [hl-]                                   ; $692c: $3a
    ld [de], a                                    ; $692d: $12
    db $f4                                        ; $692e: $f4
    nop                                           ; $692f: $00
    ld [bc], a                                    ; $6930: $02
    or h                                          ; $6931: $b4
    inc a                                         ; $6932: $3c
    ret z                                         ; $6933: $c8

    ld a, $c6                                     ; $6934: $3e $c6
    ld a, h                                       ; $6936: $7c
    ret nz                                        ; $6937: $c0

    ld b, b                                       ; $6938: $40
    ld a, h                                       ; $6939: $7c
    ld b, d                                       ; $693a: $42
    nop                                           ; $693b: $00
    ld a, [hl]                                    ; $693c: $7e
    ret nz                                        ; $693d: $c0

    inc a                                         ; $693e: $3c
    db $fc                                        ; $693f: $fc
    dec sp                                        ; $6940: $3b
    ld hl, sp+$00                                 ; $6941: $f8 $00
    dec b                                         ; $6943: $05
    jp c, Jump_000_3d45                           ; $6944: $da $45 $3d

    ld b, l                                       ; $6947: $45
    ld [hl], l                                    ; $6948: $75
    and d                                         ; $6949: $a2
    ld h, h                                       ; $694a: $64
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    jr nz, jr_0d0_690e                            ; $694d: $20 $bf

    ld h, a                                       ; $694f: $67
    ld hl, sp+$4f                                 ; $6950: $f8 $4f
    ld [hl], l                                    ; $6952: $75
    ld b, d                                       ; $6953: $42
    nop                                           ; $6954: $00
    ld l, [hl]                                    ; $6955: $6e
    ld [hl], $71                                  ; $6956: $36 $71
    ld d, b                                       ; $6958: $50
    ret nz                                        ; $6959: $c0

    rst $08                                       ; $695a: $cf
    db $db                                        ; $695b: $db
    push bc                                       ; $695c: $c5
    nop                                           ; $695d: $00
    jp nz, Jump_0d0_4543                          ; $695e: $c2 $43 $45

    add h                                         ; $6961: $84
    ldh [rNR43], a                                ; $6962: $e0 $22
    pop de                                        ; $6964: $d1
    rlca                                          ; $6965: $07
    nop                                           ; $6966: $00
    ld l, $42                                     ; $6967: $2e $42
    ld e, [hl]                                    ; $6969: $5e
    add d                                         ; $696a: $82
    cp h                                          ; $696b: $bc
    add d                                         ; $696c: $82
    ld a, h                                       ; $696d: $7c
    ld [bc], a                                    ; $696e: $02
    jr nz, jr_0d0_69ed                            ; $696f: $20 $7c

    ld [bc], a                                    ; $6971: $02
    ld b, $00                                     ; $6972: $06 $00
    jp nz, $427c                                  ; $6974: $c2 $7c $42

    ldh [rLCDC], a                                ; $6977: $e0 $40
    nop                                           ; $6979: $00
    ret nc                                        ; $697a: $d0

    ld c, h                                       ; $697b: $4c
    and b                                         ; $697c: $a0
    ld d, h                                       ; $697d: $54
    and d                                         ; $697e: $a2
    ld b, d                                       ; $697f: $42
    sub d                                         ; $6980: $92
    ld b, d                                       ; $6981: $42
    nop                                           ; $6982: $00
    add b                                         ; $6983: $80
    ld h, b                                       ; $6984: $60
    ldh [$60], a                                  ; $6985: $e0 $60
    ldh [$59], a                                  ; $6987: $e0 $59
    inc bc                                        ; $6989: $03
    ld h, d                                       ; $698a: $62
    nop                                           ; $698b: $00
    ld l, [hl]                                    ; $698c: $6e
    ld b, $00                                     ; $698d: $06 $00
    sub b                                         ; $698f: $90
    add a                                         ; $6990: $87
    db $e4                                        ; $6991: $e4
    sub b                                         ; $6992: $90
    sub c                                         ; $6993: $91
    nop                                           ; $6994: $00
    ldh a, [$84]                                  ; $6995: $f0 $84
    inc b                                         ; $6997: $04
    ld d, h                                       ; $6998: $54
    ld b, $a0                                     ; $6999: $06 $a0
    sub a                                         ; $699b: $97
    rrca                                          ; $699c: $0f
    nop                                           ; $699d: $00
    ld l, b                                       ; $699e: $68
    ld h, h                                       ; $699f: $64
    ld [hl], $c6                                  ; $69a0: $36 $c6
    ld [hl], d                                    ; $69a2: $72
    ld [bc], a                                    ; $69a3: $02
    add d                                         ; $69a4: $82
    cp b                                          ; $69a5: $b8
    nop                                           ; $69a6: $00
    ret nz                                        ; $69a7: $c0

    pop de                                        ; $69a8: $d1
    inc bc                                        ; $69a9: $03
    ld h, d                                       ; $69aa: $62
    rlca                                          ; $69ab: $07
    ld h, [hl]                                    ; $69ac: $66
    ld a, l                                       ; $69ad: $7d
    inc bc                                        ; $69ae: $03
    nop                                           ; $69af: $00
    ld a, l                                       ; $69b0: $7d
    inc bc                                        ; $69b1: $03
    ld [bc], a                                    ; $69b2: $02
    ld h, $8a                                     ; $69b3: $26 $8a
    ld d, d                                       ; $69b5: $52
    ld a, [hl+]                                   ; $69b6: $2a
    db $ec                                        ; $69b7: $ec
    nop                                           ; $69b8: $00
    ld [hl+], a                                   ; $69b9: $22
    db $e4                                        ; $69ba: $e4
    call nz, $80ca                                ; $69bb: $c4 $ca $80
    sbc d                                         ; $69be: $9a
    ret nz                                        ; $69bf: $c0

    jr jr_0d0_69c2                                ; $69c0: $18 $00

jr_0d0_69c2:
    ld a, [c]                                     ; $69c2: $f2
    ld [de], a                                    ; $69c3: $12
    sbc d                                         ; $69c4: $9a
    ld b, d                                       ; $69c5: $42
    xor b                                         ; $69c6: $a8
    ld h, b                                       ; $69c7: $60
    jp Jump_000_0031                              ; $69c8: $c3 $31 $00


    ld [c], a                                     ; $69cb: $e2
    jr c, @-$7e                                   ; $69cc: $38 $80

    ld a, a                                       ; $69ce: $7f
    rst $38                                       ; $69cf: $ff
    nop                                           ; $69d0: $00
    ld b, $70                                     ; $69d1: $06 $70
    nop                                           ; $69d3: $00
    dec b                                         ; $69d4: $05
    ld [hl], e                                    ; $69d5: $73
    ld [hl], b                                    ; $69d6: $70
    inc sp                                        ; $69d7: $33
    inc [hl]                                      ; $69d8: $34
    inc d                                         ; $69d9: $14
    adc d                                         ; $69da: $8a
    add [hl]                                      ; $69db: $86
    jr nz, jr_0d0_6a4a                            ; $69dc: $20 $6c

    inc c                                         ; $69de: $0c
    call z, $3008                                 ; $69df: $cc $08 $30
    daa                                           ; $69e2: $27
    add c                                         ; $69e3: $81
    inc c                                         ; $69e4: $0c
    ld [$0701], sp                                ; $69e5: $08 $01 $07
    db $ec                                        ; $69e8: $ec
    call nc, Call_000_0f00                        ; $69e9: $d4 $00 $0f
    rrca                                          ; $69ec: $0f

jr_0d0_69ed:
    rst $30                                       ; $69ed: $f7
    call c, RST_08                                ; $69ee: $dc $08 $00
    ld d, $64                                     ; $69f1: $16 $64
    ld c, [hl]                                    ; $69f3: $4e
    adc h                                         ; $69f4: $8c
    inc c                                         ; $69f5: $0c
    ld a, [bc]                                    ; $69f6: $0a
    inc a                                         ; $69f7: $3c
    ld [hl-], a                                   ; $69f8: $32
    nop                                           ; $69f9: $00
    db $fc                                        ; $69fa: $fc
    ld c, $fc                                     ; $69fb: $0e $fc
    ld e, $00                                     ; $69fd: $1e $00
    cp $fe                                        ; $69ff: $fe $fe
    nop                                           ; $6a01: $00
    nop                                           ; $6a02: $00
    ld bc, $00f2                                  ; $6a03: $01 $f2 $00
    ld [$7fff], sp                                ; $6a06: $08 $ff $7f
    ret nz                                        ; $6a09: $c0

    ld a, a                                       ; $6a0a: $7f
    inc bc                                        ; $6a0b: $03
    nop                                           ; $6a0c: $00
    ret nz                                        ; $6a0d: $c0

    ccf                                           ; $6a0e: $3f
    ret nz                                        ; $6a0f: $c0

    nop                                           ; $6a10: $00
    ccf                                           ; $6a11: $3f
    call c, Call_000_2fc8                         ; $6a12: $dc $c8 $2f
    ret nz                                        ; $6a15: $c0

    dec l                                         ; $6a16: $2d
    rst $38                                       ; $6a17: $ff
    nop                                           ; $6a18: $00
    nop                                           ; $6a19: $00
    nop                                           ; $6a1a: $00
    db $fc                                        ; $6a1b: $fc
    inc bc                                        ; $6a1c: $03
    ldh a, [rIF]                                  ; $6a1d: $f0 $0f
    db $e3                                        ; $6a1f: $e3
    rra                                           ; $6a20: $1f
    jp z, Jump_000_3f02                           ; $6a21: $ca $02 $3f

    sbc [hl]                                      ; $6a24: $9e
    inc c                                         ; $6a25: $0c
    ld [hl], b                                    ; $6a26: $70
    ld a, [c]                                     ; $6a27: $f2
    db $f4                                        ; $6a28: $f4
    stop                                          ; $6a29: $10 $00
    nop                                           ; $6a2b: $00
    nop                                           ; $6a2c: $00
    rlca                                          ; $6a2d: $07
    nop                                           ; $6a2e: $00
    dec hl                                        ; $6a2f: $2b
    ld hl, sp+$18                                 ; $6a30: $f8 $18
    db $e4                                        ; $6a32: $e4
    ld e, l                                       ; $6a33: $5d
    ld a, [hl+]                                   ; $6a34: $2a
    nop                                           ; $6a35: $00
    jr jr_0d0_6a38                                ; $6a36: $18 $00

jr_0d0_6a38:
    pop de                                        ; $6a38: $d1
    ld b, e                                       ; $6a39: $43
    cp $00                                        ; $6a3a: $fe $00
    ld [bc], a                                    ; $6a3c: $02
    db $fc                                        ; $6a3d: $fc
    nop                                           ; $6a3e: $00
    ld [bc], a                                    ; $6a3f: $02
    cp $1a                                        ; $6a40: $fe $1a
    ld h, [hl]                                    ; $6a42: $66
    ld [hl-], a                                   ; $6a43: $32
    add [hl]                                      ; $6a44: $86
    ld h, d                                       ; $6a45: $62
    sub [hl]                                      ; $6a46: $96
    nop                                           ; $6a47: $00
    ld c, h                                       ; $6a48: $4c
    ld b, d                                       ; $6a49: $42

jr_0d0_6a4a:
    inc l                                         ; $6a4a: $2c
    ld [hl+], a                                   ; $6a4b: $22
    ret nz                                        ; $6a4c: $c0

    ld [hl], $c1                                  ; $6a4d: $36 $c1
    dec sp                                        ; $6a4f: $3b
    ld [$c07d], sp                                ; $6a50: $08 $7d $c0
    ld a, [hl]                                    ; $6a53: $7e
    ret nz                                        ; $6a54: $c0

    inc bc                                        ; $6a55: $03
    nop                                           ; $6a56: $00
    ld a, l                                       ; $6a57: $7d
    ld a, l                                       ; $6a58: $7d
    pop bc                                        ; $6a59: $c1
    nop                                           ; $6a5a: $00
    ld a, h                                       ; $6a5b: $7c
    ret nz                                        ; $6a5c: $c0

    ld [de], a                                    ; $6a5d: $12
    ld a, [bc]                                    ; $6a5e: $0a
    add [hl]                                      ; $6a5f: $86
    ld [bc], a                                    ; $6a60: $02
    inc bc                                        ; $6a61: $03
    di                                            ; $6a62: $f3
    nop                                           ; $6a63: $00
    ld e, d                                       ; $6a64: $5a
    ld [hl+], a                                   ; $6a65: $22
    ld bc, $a281                                  ; $6a66: $01 $81 $a2
    inc bc                                        ; $6a69: $03
    ld b, $41                                     ; $6a6a: $06 $41
    nop                                           ; $6a6c: $00
    db $e3                                        ; $6a6d: $e3
    add sp, -$60                                  ; $6a6e: $e8 $a0
    ld e, e                                       ; $6a70: $5b
    and d                                         ; $6a71: $a2
    cp h                                          ; $6a72: $bc
    and d                                         ; $6a73: $a2
    xor [hl]                                      ; $6a74: $ae
    nop                                           ; $6a75: $00
    ld b, l                                       ; $6a76: $45
    ld h, $00                                     ; $6a77: $26 $00
    inc b                                         ; $6a79: $04
    db $fd                                        ; $6a7a: $fd
    and $1f                                       ; $6a7b: $e6 $1f
    ld a, [c]                                     ; $6a7d: $f2
    nop                                           ; $6a7e: $00
    xor [hl]                                      ; $6a7f: $ae
    ld b, d                                       ; $6a80: $42
    inc a                                         ; $6a81: $3c
    ld [de], a                                    ; $6a82: $12
    ld a, h                                       ; $6a83: $7c
    ld h, d                                       ; $6a84: $62
    db $fc                                        ; $6a85: $fc
    jp nz, Jump_0d0_7c00                          ; $6a86: $c2 $00 $7c

    ld b, d                                       ; $6a89: $42
    db $fc                                        ; $6a8a: $fc
    add d                                         ; $6a8b: $82
    db $fc                                        ; $6a8c: $fc
    add d                                         ; $6a8d: $82
    ld a, $02                                     ; $6a8e: $3e $02
    db $10                                        ; $6a90: $10
    ld e, $c2                                     ; $6a91: $1e $c2
    ld a, [hl]                                    ; $6a93: $7e
    inc a                                         ; $6a94: $3c
    nop                                           ; $6a95: $00
    ldh [rLY], a                                  ; $6a96: $e0 $44
    ret                                           ; $6a98: $c9


    ld d, c                                       ; $6a99: $51
    nop                                           ; $6a9a: $00
    rst $10                                       ; $6a9b: $d7
    ld h, e                                       ; $6a9c: $63
    rst $00                                       ; $6a9d: $c7
    ld h, c                                       ; $6a9e: $61
    and e                                         ; $6a9f: $a3
    db $d3                                        ; $6aa0: $d3
    add c                                         ; $6aa1: $81
    reti                                          ; $6aa2: $d9


    nop                                           ; $6aa3: $00
    ret c                                         ; $6aa4: $d8

    pop bc                                        ; $6aa5: $c1
    ld h, $16                                     ; $6aa6: $26 $16
    ld c, [hl]                                    ; $6aa8: $4e
    ld h, c                                       ; $6aa9: $61
    ld e, [hl]                                    ; $6aaa: $5e
    ld b, b                                       ; $6aab: $40
    nop                                           ; $6aac: $00
    ld b, c                                       ; $6aad: $41
    ld e, h                                       ; $6aae: $5c
    inc bc                                        ; $6aaf: $03
    adc b                                         ; $6ab0: $88
    add $c0                                       ; $6ab1: $c6 $c0
    db $e4                                        ; $6ab3: $e4
    ld [c], a                                     ; $6ab4: $e2
    nop                                           ; $6ab5: $00
    add b                                         ; $6ab6: $80
    ld b, $74                                     ; $6ab7: $06 $74
    ld [hl], d                                    ; $6ab9: $72
    nop                                           ; $6aba: $00
    add hl, bc                                    ; $6abb: $09
    pop bc                                        ; $6abc: $c1
    xor $00                                       ; $6abd: $ee $00
    add hl, bc                                    ; $6abf: $09
    adc c                                         ; $6ac0: $89
    rrca                                          ; $6ac1: $0f
    ld hl, $240f                                  ; $6ac2: $21 $0f $24
    ld c, a                                       ; $6ac5: $4f
    ld hl, $0200                                  ; $6ac6: $21 $00 $02
    ld b, h                                       ; $6ac9: $44
    ld [hl-], a                                   ; $6aca: $32
    cp b                                          ; $6acb: $b8
    ld l, $88                                     ; $6acc: $2e $88
    ld [bc], a                                    ; $6ace: $02
    call nz, $c200                                ; $6acf: $c4 $00 $c2
    ret z                                         ; $6ad2: $c8

    add [hl]                                      ; $6ad3: $86
    adc b                                         ; $6ad4: $88
    inc b                                         ; $6ad5: $04
    ld b, $94                                     ; $6ad6: $06 $94
    ld b, $00                                     ; $6ad8: $06 $00
    and [hl]                                      ; $6ada: $a6
    ld c, [hl]                                    ; $6adb: $4e
    or c                                          ; $6adc: $b1
    ld b, e                                       ; $6add: $43
    cp h                                          ; $6ade: $bc
    ldh [$bf], a                                  ; $6adf: $e0 $bf

jr_0d0_6ae1:
    ldh a, [rP1]                                  ; $6ae1: $f0 $00
    cp a                                          ; $6ae3: $bf
    ld hl, sp-$41                                 ; $6ae4: $f8 $bf
    cp $80                                        ; $6ae6: $fe $80
    ld a, a                                       ; $6ae8: $7f
    rst $38                                       ; $6ae9: $ff
    nop                                           ; $6aea: $00
    nop                                           ; $6aeb: $00
    inc c                                         ; $6aec: $0c
    db $e4                                        ; $6aed: $e4
    add c                                         ; $6aee: $81
    jr nc, jr_0d0_6ae1                            ; $6aef: $30 $f0

    ld [$2a1c], a                                 ; $6af1: $ea $1c $2a
    ld [$8373], sp                                ; $6af4: $08 $73 $83
    rlca                                          ; $6af7: $07
    ld hl, sp-$44                                 ; $6af8: $f8 $bc
    ld [$606f], sp                                ; $6afa: $08 $6f $60
    ld l, $00                                     ; $6afd: $2e $00
    and b                                         ; $6aff: $a0
    jp nz, $04c4                                  ; $6b00: $c2 $c4 $04

    jr nz, jr_0d0_6b35                            ; $6b03: $20 $30

    ld h, c                                       ; $6b05: $61
    ld b, $40                                     ; $6b06: $06 $40
    or b                                          ; $6b08: $b0
    call z, Call_000_1208                         ; $6b09: $cc $08 $12
    ld a, [bc]                                    ; $6b0c: $0a
    ld b, $4e                                     ; $6b0d: $06 $4e
    jr jr_0d0_6b13                                ; $6b0f: $18 $02

    nop                                           ; $6b11: $00
    inc d                                         ; $6b12: $14

jr_0d0_6b13:
    ld b, $8c                                     ; $6b13: $06 $8c
    jp nz, $061c                                  ; $6b15: $c2 $1c $06

    nop                                           ; $6b18: $00
    cp $00                                        ; $6b19: $fe $00
    cp $00                                        ; $6b1b: $fe $00
    nop                                           ; $6b1d: $00
    ld bc, $00f6                                  ; $6b1e: $01 $f6 $00
    nop                                           ; $6b21: $00
    add b                                         ; $6b22: $80
    rst $38                                       ; $6b23: $ff
    cp a                                          ; $6b24: $bf
    ret nz                                        ; $6b25: $c0

    rst $38                                       ; $6b26: $ff
    ld b, b                                       ; $6b27: $40
    and $58                                       ; $6b28: $e6 $58
    nop                                           ; $6b2a: $00
    ldh [rKEY1], a                                ; $6b2b: $e0 $4d
    ldh [rBGP], a                                 ; $6b2d: $e0 $47
    ldh a, [rSCY]                                 ; $6b2f: $f0 $42
    ldh a, [rLY]                                  ; $6b31: $f0 $44
    jr nz, @+$01                                  ; $6b33: $20 $ff

jr_0d0_6b35:
    nop                                           ; $6b35: $00
    ld bc, $e000                                  ; $6b36: $01 $00 $e0
    rra                                           ; $6b39: $1f
    pop bc                                        ; $6b3a: $c1
    jr nz, jr_0d0_6b5c                            ; $6b3b: $20 $1f

    ld [bc], a                                    ; $6b3d: $02
    di                                            ; $6b3e: $f3
    dec e                                         ; $6b3f: $1d
    jr jr_0d0_6b42                                ; $6b40: $18 $00

jr_0d0_6b42:
    ld c, c                                       ; $6b42: $49
    adc e                                         ; $6b43: $8b

jr_0d0_6b44:
    stop                                          ; $6b44: $10 $00
    ccf                                           ; $6b46: $3f
    nop                                           ; $6b47: $00
    ret nz                                        ; $6b48: $c0

    rrca                                          ; $6b49: $0f
    ldh a, [$e7]                                  ; $6b4a: $f0 $e7
    ld hl, sp-$3d                                 ; $6b4c: $f8 $c3
    cp h                                          ; $6b4e: $bc
    ld e, c                                       ; $6b4f: $59
    nop                                           ; $6b50: $00
    inc a                                         ; $6b51: $3c
    ld a, [de]                                    ; $6b52: $1a
    ld l, h                                       ; $6b53: $6c
    ccf                                           ; $6b54: $3f
    cp $00                                        ; $6b55: $fe $00
    ld [bc], a                                    ; $6b57: $02
    db $fc                                        ; $6b58: $fc
    nop                                           ; $6b59: $00
    sbc $fc                                       ; $6b5a: $de $fc

jr_0d0_6b5c:
    xor d                                         ; $6b5c: $aa
    db $fc                                        ; $6b5d: $fc
    db $fc                                        ; $6b5e: $fc
    ld [bc], a                                    ; $6b5f: $02
    db $fc                                        ; $6b60: $fc
    ld a, [hl-]                                   ; $6b61: $3a
    nop                                           ; $6b62: $00
    inc h                                         ; $6b63: $24
    ld d, $e4                                     ; $6b64: $16 $e4
    ld b, $b4                                     ; $6b66: $06 $b4
    add sp, -$60                                  ; $6b68: $e8 $a0
    db $ec                                        ; $6b6a: $ec
    nop                                           ; $6b6b: $00
    cp a                                          ; $6b6c: $bf
    ld c, e                                       ; $6b6d: $4b
    cp [hl]                                       ; $6b6e: $be
    ld b, d                                       ; $6b6f: $42
    cp a                                          ; $6b70: $bf
    ld b, c                                       ; $6b71: $41
    cp a                                          ; $6b72: $bf
    ld b, c                                       ; $6b73: $41
    nop                                           ; $6b74: $00
    db $fc                                        ; $6b75: $fc
    ld b, b                                       ; $6b76: $40
    ld hl, sp+$42                                 ; $6b77: $f8 $42
    dec b                                         ; $6b79: $05
    jp c, Jump_000_3d45                           ; $6b7a: $da $45 $3d

    nop                                           ; $6b7d: $00
    ld b, l                                       ; $6b7e: $45
    ld [hl], l                                    ; $6b7f: $75
    and d                                         ; $6b80: $a2
    ld h, h                                       ; $6b81: $64
    nop                                           ; $6b82: $00
    jr nz, jr_0d0_6b44                            ; $6b83: $20 $bf

    ld h, a                                       ; $6b85: $67
    nop                                           ; $6b86: $00
    ld hl, sp+$4f                                 ; $6b87: $f8 $4f
    ld [hl], l                                    ; $6b89: $75
    ld b, d                                       ; $6b8a: $42
    ld l, a                                       ; $6b8b: $6f
    ld a, $73                                     ; $6b8c: $3e $73
    ld de, $0600                                  ; $6b8e: $11 $00 $06
    ld c, a                                       ; $6b91: $4f
    ld a, [de]                                    ; $6b92: $1a
    ld b, h                                       ; $6b93: $44
    jp c, $715b                                   ; $6b94: $da $5b $71

    or h                                          ; $6b97: $b4
    nop                                           ; $6b98: $00
    ld h, b                                       ; $6b99: $60
    and d                                         ; $6b9a: $a2
    pop bc                                        ; $6b9b: $c1
    rla                                           ; $6b9c: $17
    ld [de], a                                    ; $6b9d: $12
    ld e, $f2                                     ; $6b9e: $1e $f2
    ld [hl], $00                                  ; $6ba0: $36 $00
    xor h                                         ; $6ba2: $ac
    ld c, $7c                                     ; $6ba3: $0e $7c
    ld a, [hl]                                    ; $6ba5: $7e
    ld a, h                                       ; $6ba6: $7c
    ld [bc], a                                    ; $6ba7: $02
    cp h                                          ; $6ba8: $bc
    add d                                         ; $6ba9: $82
    nop                                           ; $6baa: $00
    ld a, h                                       ; $6bab: $7c
    jp nz, $427c                                  ; $6bac: $c2 $7c $42

    ld [c], a                                     ; $6baf: $e2
    ld b, b                                       ; $6bb0: $40
    ret nc                                        ; $6bb1: $d0

    ld c, l                                       ; $6bb2: $4d
    nop                                           ; $6bb3: $00
    db $e4                                        ; $6bb4: $e4
    ld d, l                                       ; $6bb5: $55
    db $e4                                        ; $6bb6: $e4
    ld b, c                                       ; $6bb7: $41
    sub $07                                       ; $6bb8: $d6 $07
    ret nc                                        ; $6bba: $d0

    ld sp, $9d00                                  ; $6bbb: $31 $00 $9d
    ld a, l                                       ; $6bbe: $7d
    cp l                                          ; $6bbf: $bd
    ld e, l                                       ; $6bc0: $5d
    ld h, b                                       ; $6bc1: $60
    ld b, e                                       ; $6bc2: $43
    ld c, [hl]                                    ; $6bc3: $4e
    inc l                                         ; $6bc4: $2c
    nop                                           ; $6bc5: $00
    nop                                           ; $6bc6: $00
    sub b                                         ; $6bc7: $90
    inc de                                        ; $6bc8: $13
    ld [c], a                                     ; $6bc9: $e2
    db $10                                        ; $6bca: $10
    add c                                         ; $6bcb: $81
    call nc, $0024                                ; $6bcc: $d4 $24 $00
    ld d, h                                       ; $6bcf: $54
    ld d, h                                       ; $6bd0: $54
    ld [hl], h                                    ; $6bd1: $74
    ld a, [c]                                     ; $6bd2: $f2
    sbc b                                         ; $6bd3: $98
    ld c, $24                                     ; $6bd4: $0e $24
    ld l, [hl]                                    ; $6bd6: $6e
    nop                                           ; $6bd7: $00
    and $d6                                       ; $6bd8: $e6 $d6
    ld [bc], a                                    ; $6bda: $02
    ld [hl], d                                    ; $6bdb: $72
    ld a, d                                       ; $6bdc: $7a
    ld hl, sp+$31                                 ; $6bdd: $f8 $31
    pop af                                        ; $6bdf: $f1
    nop                                           ; $6be0: $00
    inc bc                                        ; $6be1: $03
    ld h, e                                       ; $6be2: $63
    ld b, a                                       ; $6be3: $47
    daa                                           ; $6be4: $27
    ld a, l                                       ; $6be5: $7d
    inc bc                                        ; $6be6: $03
    ld a, l                                       ; $6be7: $7d
    inc bc                                        ; $6be8: $03
    nop                                           ; $6be9: $00
    ld h, $02                                     ; $6bea: $26 $02
    ld [de], a                                    ; $6bec: $12
    ld a, [bc]                                    ; $6bed: $0a
    ld l, h                                       ; $6bee: $6c
    ld c, d                                       ; $6bef: $4a
    db $e4                                        ; $6bf0: $e4
    jp nz, $0a00                                  ; $6bf1: $c2 $00 $0a

    call z, $981a                                 ; $6bf4: $cc $1a $98
    ret nz                                        ; $6bf7: $c0

    ld c, h                                       ; $6bf8: $4c
    ldh [$72], a                                  ; $6bf9: $e0 $72
    nop                                           ; $6bfb: $00
    sbc d                                         ; $6bfc: $9a
    ld b, d                                       ; $6bfd: $42
    xor c                                         ; $6bfe: $a9
    ld h, c                                       ; $6bff: $61
    jp $e031                                      ; $6c00: $c3 $31 $e0


    ld a, [hl-]                                   ; $6c03: $3a
    nop                                           ; $6c04: $00
    add b                                         ; $6c05: $80
    ld a, a                                       ; $6c06: $7f
    rst $38                                       ; $6c07: $ff
    nop                                           ; $6c08: $00
    ld [hl], d                                    ; $6c09: $72
    db $f4                                        ; $6c0a: $f4
    ld [hl], c                                    ; $6c0b: $71
    ld [hl], l                                    ; $6c0c: $75
    nop                                           ; $6c0d: $00
    ld [hl], b                                    ; $6c0e: $70
    inc de                                        ; $6c0f: $13
    inc [hl]                                      ; $6c10: $34
    inc d                                         ; $6c11: $14
    adc d                                         ; $6c12: $8a
    add [hl]                                      ; $6c13: $86
    ld l, l                                       ; $6c14: $6d
    dec c                                         ; $6c15: $0d
    add b                                         ; $6c16: $80
    call z, $3008                                 ; $6c17: $cc $08 $30
    cpl                                           ; $6c1a: $2f
    add c                                         ; $6c1b: $81
    inc l                                         ; $6c1c: $2c
    ld e, b                                       ; $6c1d: $58
    ld d, a                                       ; $6c1e: $57
    db $ec                                        ; $6c1f: $ec
    inc b                                         ; $6c20: $04
    call nc, $e0c3                                ; $6c21: $d4 $c3 $e0
    inc bc                                        ; $6c24: $03
    nop                                           ; $6c25: $00
    call c, $9608                                 ; $6c26: $dc $08 $96
    db $e4                                        ; $6c29: $e4
    nop                                           ; $6c2a: $00
    ld c, [hl]                                    ; $6c2b: $4e
    adc h                                         ; $6c2c: $8c
    ld [bc], a                                    ; $6c2d: $02
    ld a, $06                                     ; $6c2e: $3e $06
    ld a, [$c2fc]                                 ; $6c30: $fa $fc $c2
    nop                                           ; $6c33: $00
    db $fc                                        ; $6c34: $fc
    add d                                         ; $6c35: $82
    nop                                           ; $6c36: $00
    cp $fe                                        ; $6c37: $fe $fe
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    ld bc, $00e1                                  ; $6c3b: $01 $e1 $00
    ld [$7fff], sp                                ; $6c3e: $08 $ff $7f
    ret nz                                        ; $6c41: $c0

    ld b, b                                       ; $6c42: $40
    ld [bc], a                                    ; $6c43: $02
    db $10                                        ; $6c44: $10
    ld b, c                                       ; $6c45: $41
    ret nz                                        ; $6c46: $c0

    ld b, e                                       ; $6c47: $43
    nop                                           ; $6c48: $00
    pop bc                                        ; $6c49: $c1
    ld a, l                                       ; $6c4a: $7d
    jp $ff79                                      ; $6c4b: $c3 $79 $ff


    nop                                           ; $6c4e: $00
    ld c, $1f                                     ; $6c4f: $0e $1f
    nop                                           ; $6c51: $00
    ld e, $07                                     ; $6c52: $1e $07
    rra                                           ; $6c54: $1f
    dec e                                         ; $6c55: $1d
    dec b                                         ; $6c56: $05
    ld e, c                                       ; $6c57: $59
    ld [bc], a                                    ; $6c58: $02
    ret c                                         ; $6c59: $d8

    nop                                           ; $6c5a: $00
    jp c, $d8d1                                   ; $6c5b: $da $d1 $d8

    jp nz, Jump_000_00ff                          ; $6c5e: $c2 $ff $00

    nop                                           ; $6c61: $00
    inc c                                         ; $6c62: $0c
    nop                                           ; $6c63: $00
    inc c                                         ; $6c64: $0c
    jp nc, $ff1e                                  ; $6c65: $d2 $1e $ff

jr_0d0_6c68:
    sbc a                                         ; $6c68: $9f
    rra                                           ; $6c69: $1f
    sbc e                                         ; $6c6a: $9b
    ld h, c                                       ; $6c6b: $61
    ld bc, $8975                                  ; $6c6c: $01 $75 $89
    inc c                                         ; $6c6f: $0c
    pop bc                                        ; $6c70: $c1
    cp $01                                        ; $6c71: $fe $01
    ld [bc], a                                    ; $6c73: $02
    ld [bc], a                                    ; $6c74: $02
    jr jr_0d0_6c77                                ; $6c75: $18 $00

jr_0d0_6c77:
    add c                                         ; $6c77: $81
    add d                                         ; $6c78: $82
    pop bc                                        ; $6c79: $c1
    ld e, $dc                                     ; $6c7a: $1e $dc
    ld c, $ec                                     ; $6c7c: $0e $ec
    or b                                          ; $6c7e: $b0
    nop                                           ; $6c7f: $00
    ld [hl], e                                    ; $6c80: $73
    or h                                          ; $6c81: $b4
    ld [hl], d                                    ; $6c82: $72
    or b                                          ; $6c83: $b0
    halt                                          ; $6c84: $76
    and e                                         ; $6c85: $a3
    ld h, l                                       ; $6c86: $65
    call z, Call_0d0_6e00                         ; $6c87: $cc $00 $6e
    ret z                                         ; $6c8a: $c8

    ld l, b                                       ; $6c8b: $68
    jp nz, $c426                                  ; $6c8c: $c2 $26 $c4

    inc [hl]                                      ; $6c8f: $34
    ld [hl], $00                                  ; $6c90: $36 $00
    ld l, d                                       ; $6c92: $6a
    cp e                                          ; $6c93: $bb
    ld [hl], l                                    ; $6c94: $75
    ret nc                                        ; $6c95: $d0

    ret nz                                        ; $6c96: $c0

    sbc [hl]                                      ; $6c97: $9e
    add c                                         ; $6c98: $81
    cp a                                          ; $6c99: $bf
    nop                                           ; $6c9a: $00

jr_0d0_6c9b:
    and b                                         ; $6c9b: $a0
    ld h, b                                       ; $6c9c: $60
    ld l, a                                       ; $6c9d: $6f
    ld b, b                                       ; $6c9e: $40
    rra                                           ; $6c9f: $1f
    ld h, b                                       ; $6ca0: $60
    jr nz, jr_0d0_6c68                            ; $6ca1: $20 $c5

    nop                                           ; $6ca3: $00
    ld b, [hl]                                    ; $6ca4: $46
    ld b, d                                       ; $6ca5: $42
    jr c, @-$1e                                   ; $6ca6: $38 $e0

    db $f4                                        ; $6ca8: $f4
    ldh a, [rNR34]                                ; $6ca9: $f0 $1e
    cp $00                                        ; $6cab: $fe $00
    ld c, $70                                     ; $6cad: $0e $70
    adc h                                         ; $6caf: $8c
    sbc $70                                       ; $6cb0: $de $70
    ld c, b                                       ; $6cb2: $48
    jr nc, jr_0d0_6c9b                            ; $6cb3: $30 $e6

    nop                                           ; $6cb5: $00
    inc [hl]                                      ; $6cb6: $34
    add $14                                       ; $6cb7: $c6 $14
    jp nc, Jump_0d0_7284                          ; $6cb9: $d2 $84 $72

    inc [hl]                                      ; $6cbc: $34
    ld [hl], h                                    ; $6cbd: $74
    nop                                           ; $6cbe: $00
    ld b, $64                                     ; $6cbf: $06 $64
    ld b, $a2                                     ; $6cc1: $06 $a2
    adc h                                         ; $6cc3: $8c
    ld [bc], a                                    ; $6cc4: $02
    ld c, h                                       ; $6cc5: $4c
    call nz, Call_0d0_7600                        ; $6cc6: $c4 $00 $76
    ret nz                                        ; $6cc9: $c0

    halt                                          ; $6cca: $76
    jp nz, $c07a                                  ; $6ccb: $c2 $7a $c0

    ld a, h                                       ; $6cce: $7c
    ld a, [hl]                                    ; $6ccf: $7e
    ld b, b                                       ; $6cd0: $40
    ret nz                                        ; $6cd1: $c0

    ld [bc], a                                    ; $6cd2: $02
    ld [$c07c], sp                                ; $6cd3: $08 $7c $c0
    ld h, b                                       ; $6cd6: $60
    dec c                                         ; $6cd7: $0d
    db $f4                                        ; $6cd8: $f4
    dec c                                         ; $6cd9: $0d
    nop                                           ; $6cda: $00
    ld a, b                                       ; $6cdb: $78
    adc b                                         ; $6cdc: $88
    ld a, a                                       ; $6cdd: $7f
    add b                                         ; $6cde: $80
    ld a, a                                       ; $6cdf: $7f
    cp a                                          ; $6ce0: $bf
    ccf                                           ; $6ce1: $3f
    ld a, a                                       ; $6ce2: $7f
    nop                                           ; $6ce3: $00
    ld b, b                                       ; $6ce4: $40
    ccf                                           ; $6ce5: $3f
    ld h, b                                       ; $6ce6: $60
    ld e, a                                       ; $6ce7: $5f
    ld [hl], d                                    ; $6ce8: $72
    ld b, $b2                                     ; $6ce9: $06 $b2
    add [hl]                                      ; $6ceb: $86
    nop                                           ; $6cec: $00
    ld hl, sp-$78                                 ; $6ced: $f8 $88
    db $fc                                        ; $6cef: $fc
    add hl, bc                                    ; $6cf0: $09
    db $f4                                        ; $6cf1: $f4
    pop af                                        ; $6cf2: $f1
    db $e4                                        ; $6cf3: $e4
    pop hl                                        ; $6cf4: $e1
    ld bc, $f3f8                                  ; $6cf5: $01 $f8 $f3
    ld [hl], b                                    ; $6cf8: $70
    inc sp                                        ; $6cf9: $33
    ld [de], a                                    ; $6cfa: $12
    db $fc                                        ; $6cfb: $fc
    ld [bc], a                                    ; $6cfc: $02
    ld [bc], a                                    ; $6cfd: $02
    nop                                           ; $6cfe: $00
    ld b, b                                       ; $6cff: $40
    cp $04                                        ; $6d00: $fe $04
    jr nc, jr_0d0_6d3e                            ; $6d02: $30 $3a

    jp nz, $c33b                                  ; $6d04: $c2 $3b $c3

    inc hl                                        ; $6d07: $23
    ld [c], a                                     ; $6d08: $e2
    nop                                           ; $6d09: $00
    dec c                                         ; $6d0a: $0d
    call nz, $e23e                                ; $6d0b: $c4 $3e $e2
    inc a                                         ; $6d0e: $3c
    call nz, Call_0d0_7f80                        ; $6d0f: $c4 $80 $7f
    nop                                           ; $6d12: $00
    rst $38                                       ; $6d13: $ff
    nop                                           ; $6d14: $00
    rra                                           ; $6d15: $1f
    cpl                                           ; $6d16: $2f
    rrca                                          ; $6d17: $0f
    rla                                           ; $6d18: $17
    rlca                                          ; $6d19: $07
    adc b                                         ; $6d1a: $88
    ld [bc], a                                    ; $6d1b: $02
    add b                                         ; $6d1c: $80
    jp Jump_000_34c4                              ; $6d1d: $c3 $c4 $34


    ld h, a                                       ; $6d20: $67
    sub a                                         ; $6d21: $97
    cp h                                          ; $6d22: $bc
    nop                                           ; $6d23: $00
    nop                                           ; $6d24: $00
    nop                                           ; $6d25: $00
    ld hl, sp+$79                                 ; $6d26: $f8 $79
    ld hl, sp+$08                                 ; $6d28: $f8 $08
    ret nz                                        ; $6d2a: $c0

    ld [c], a                                     ; $6d2b: $e2
    inc b                                         ; $6d2c: $04
    jp nz, $0c0c                                  ; $6d2d: $c2 $0c $0c

    ld a, [de]                                    ; $6d30: $1a
    jr @+$77                                      ; $6d31: $18 $75

    db $10                                        ; $6d33: $10
    ld [$103c], sp                                ; $6d34: $08 $3c $10
    ld a, h                                       ; $6d37: $7c
    add d                                         ; $6d38: $82
    nop                                           ; $6d39: $00
    cp h                                          ; $6d3a: $bc
    add d                                         ; $6d3b: $82
    ld e, $42                                     ; $6d3c: $1e $42

jr_0d0_6d3e:
    ld b, $00                                     ; $6d3e: $06 $00
    cp $fe                                        ; $6d40: $fe $fe
    nop                                           ; $6d42: $00
    nop                                           ; $6d43: $00
    nop                                           ; $6d44: $00
    ld bc, $00f6                                  ; $6d45: $01 $f6 $00
    nop                                           ; $6d48: $00
    rst $38                                       ; $6d49: $ff
    ld a, a                                       ; $6d4a: $7f
    ret nz                                        ; $6d4b: $c0

    ld b, b                                       ; $6d4c: $40
    ret nz                                        ; $6d4d: $c0

    ld a, [hl]                                    ; $6d4e: $7e
    pop bc                                        ; $6d4f: $c1
    ld a, h                                       ; $6d50: $7c
    nop                                           ; $6d51: $00
    pop bc                                        ; $6d52: $c1
    ld [hl], c                                    ; $6d53: $71
    push bc                                       ; $6d54: $c5
    ld [hl], c                                    ; $6d55: $71
    add h                                         ; $6d56: $84
    jp $c09e                                      ; $6d57: $c3 $9e $c0


    nop                                           ; $6d5a: $00
    rst $38                                       ; $6d5b: $ff
    nop                                           ; $6d5c: $00
    dec b                                         ; $6d5d: $05
    sbc a                                         ; $6d5e: $9f
    scf                                           ; $6d5f: $37
    jr c, @-$5f                                   ; $6d60: $38 $9f

    add b                                         ; $6d62: $80
    nop                                           ; $6d63: $00
    ret nz                                        ; $6d64: $c0

    cp a                                          ; $6d65: $bf
    ld bc, $fedf                                  ; $6d66: $01 $df $fe
    dec b                                         ; $6d69: $05
    ld a, a                                       ; $6d6a: $7f
    dec b                                         ; $6d6b: $05
    nop                                           ; $6d6c: $00
    rst $38                                       ; $6d6d: $ff
    nop                                           ; $6d6e: $00
    db $fc                                        ; $6d6f: $fc
    db $fd                                        ; $6d70: $fd
    add hl, sp                                    ; $6d71: $39
    di                                            ; $6d72: $f3
    ld e, c                                       ; $6d73: $59
    rlc b                                         ; $6d74: $cb $00
    db $e3                                        ; $6d76: $e3
    db $dd                                        ; $6d77: $dd
    pop hl                                        ; $6d78: $e1
    ld a, [c]                                     ; $6d79: $f2
    ld a, b                                       ; $6d7a: $78
    db $ed                                        ; $6d7b: $ed
    inc a                                         ; $6d7c: $3c
    and $00                                       ; $6d7d: $e6 $00
    cp $fe                                        ; $6d7f: $fe $fe
    add d                                         ; $6d81: $82
    ld e, $22                                     ; $6d82: $1e $22
    ld c, [hl]                                    ; $6d84: $4e
    ld a, [c]                                     ; $6d85: $f2
    ld h, [hl]                                    ; $6d86: $66
    nop                                           ; $6d87: $00
    ld a, b                                       ; $6d88: $78
    jp nc, $8a48                                  ; $6d89: $d2 $48 $8a

    ld [c], a                                     ; $6d8c: $e2
    add h                                         ; $6d8d: $84
    add d                                         ; $6d8e: $82
    ld l, h                                       ; $6d8f: $6c
    nop                                           ; $6d90: $00
    or b                                          ; $6d91: $b0
    ld a, h                                       ; $6d92: $7c
    add d                                         ; $6d93: $82
    ld c, a                                       ; $6d94: $4f
    and b                                         ; $6d95: $a0
    ld e, a                                       ; $6d96: $5f
    sub h                                         ; $6d97: $94
    ld e, a                                       ; $6d98: $5f
    nop                                           ; $6d99: $00
    add a                                         ; $6d9a: $87
    ret c                                         ; $6d9b: $d8

    sbc a                                         ; $6d9c: $9f
    ret nz                                        ; $6d9d: $c0

    xor d                                         ; $6d9e: $aa
    ld d, h                                       ; $6d9f: $54
    cp e                                          ; $6da0: $bb
    ld [hl], e                                    ; $6da1: $73
    nop                                           ; $6da2: $00
    call c, $94b7                                 ; $6da3: $dc $b7 $94
    ld [$806e], a                                 ; $6da6: $ea $6e $80
    and e                                         ; $6da9: $a3
    dec h                                         ; $6daa: $25
    nop                                           ; $6dab: $00
    adc [hl]                                      ; $6dac: $8e
    dec de                                        ; $6dad: $1b
    adc b                                         ; $6dae: $88
    ei                                            ; $6daf: $fb
    db $fc                                        ; $6db0: $fc
    add e                                         ; $6db1: $83
    add b                                         ; $6db2: $80
    inc bc                                        ; $6db3: $03
    nop                                           ; $6db4: $00
    ld a, b                                       ; $6db5: $78
    ld c, [hl]                                    ; $6db6: $4e
    ld de, $1502                                  ; $6db7: $11 $02 $15
    or h                                          ; $6dba: $b4
    ld [bc], a                                    ; $6dbb: $02
    cp $00                                        ; $6dbc: $fe $00
    ldh a, [$0e]                                  ; $6dbe: $f0 $0e
    ldh [$1f], a                                  ; $6dc0: $e0 $1f
    ld hl, $1bc0                                  ; $6dc2: $21 $c0 $1b
    jp nc, $4200                                  ; $6dc5: $d2 $00 $42

    adc [hl]                                      ; $6dc8: $8e
    ld b, d                                       ; $6dc9: $42
    ld e, $02                                     ; $6dca: $1e $02
    inc e                                         ; $6dcc: $1c
    add d                                         ; $6dcd: $82
    cp h                                          ; $6dce: $bc
    inc b                                         ; $6dcf: $04
    ld b, d                                       ; $6dd0: $42
    ld e, $42                                     ; $6dd1: $1e $42
    ld e, $c2                                     ; $6dd3: $1e $c2
    inc b                                         ; $6dd5: $04
    nop                                           ; $6dd6: $00
    ret z                                         ; $6dd7: $c8

    ld b, l                                       ; $6dd8: $45
    nop                                           ; $6dd9: $00
    ret nz                                        ; $6dda: $c0

    ld b, a                                       ; $6ddb: $47
    ld h, b                                       ; $6ddc: $60
    push bc                                       ; $6ddd: $c5
    ld [hl], b                                    ; $6dde: $70
    push bc                                       ; $6ddf: $c5
    dec [hl]                                      ; $6de0: $35
    push bc                                       ; $6de1: $c5
    nop                                           ; $6de2: $00
    add hl, sp                                    ; $6de3: $39
    ret nz                                        ; $6de4: $c0

    ld a, [hl]                                    ; $6de5: $7e
    ret nz                                        ; $6de6: $c0

    ld a, a                                       ; $6de7: $7f
    ret nz                                        ; $6de8: $c0

    ld [hl], h                                    ; $6de9: $74
    ld h, e                                       ; $6dea: $63
    nop                                           ; $6deb: $00
    ld [hl], h                                    ; $6dec: $74
    ld h, e                                       ; $6ded: $63
    add c                                         ; $6dee: $81
    ld b, $00                                     ; $6def: $06 $00
    rst $38                                       ; $6df1: $ff
    rst $38                                       ; $6df2: $ff
    add b                                         ; $6df3: $80
    nop                                           ; $6df4: $00
    db $fc                                        ; $6df5: $fc
    add d                                         ; $6df6: $82
    jp $603f                                      ; $6df7: $c3 $3f $60


    rra                                           ; $6dfa: $1f
    adc e                                         ; $6dfb: $8b
    ld d, d                                       ; $6dfc: $52
    nop                                           ; $6dfd: $00
    cp [hl]                                       ; $6dfe: $be
    sbc l                                         ; $6dff: $9d

Call_0d0_6e00:
    ld b, b                                       ; $6e00: $40
    ld a, a                                       ; $6e01: $7f
    ld bc, $fffe                                  ; $6e02: $01 $fe $ff
    cp $00                                        ; $6e05: $fe $00
    ld e, $fe                                     ; $6e07: $1e $fe
    jp nz, $04fc                                  ; $6e09: $c2 $fc $04

    ld hl, sp+$3e                                 ; $6e0c: $f8 $3e
    add d                                         ; $6e0e: $82
    add b                                         ; $6e0f: $80

jr_0d0_6e10:
    ld [bc], a                                    ; $6e10: $02
    ld [$027e], sp                                ; $6e11: $08 $7e $02
    inc e                                         ; $6e14: $1c
    ld [bc], a                                    ; $6e15: $02
    db $e4                                        ; $6e16: $e4
    jp nz, Jump_000_0078                          ; $6e17: $c2 $78 $00

    ld [hl-], a                                   ; $6e1a: $32
    inc a                                         ; $6e1b: $3c
    ld a, [bc]                                    ; $6e1c: $0a
    ld a, [hl]                                    ; $6e1d: $7e
    ret nz                                        ; $6e1e: $c0

    ld a, l                                       ; $6e1f: $7d
    ret nz                                        ; $6e20: $c0

    pop bc                                        ; $6e21: $c1
    nop                                           ; $6e22: $00
    dec sp                                        ; $6e23: $3b
    jp nz, $c437                                  ; $6e24: $c2 $37 $c4

    cpl                                           ; $6e27: $2f
    ret z                                         ; $6e28: $c8

    ld e, $80                                     ; $6e29: $1e $80
    nop                                           ; $6e2b: $00
    ld a, a                                       ; $6e2c: $7f
    rst $38                                       ; $6e2d: $ff
    nop                                           ; $6e2e: $00
    or b                                          ; $6e2f: $b0
    adc a                                         ; $6e30: $8f
    ld e, h                                       ; $6e31: $5c
    jp Jump_000_0087                              ; $6e32: $c3 $87 $00


    rst $28                                       ; $6e35: $ef
    add b                                         ; $6e36: $80
    jr nz, jr_0d0_6e10                            ; $6e37: $20 $d7

    call nc, $3334                                ; $6e39: $d4 $34 $33
    rst $38                                       ; $6e3c: $ff
    nop                                           ; $6e3d: $00
    nop                                           ; $6e3e: $00
    nop                                           ; $6e3f: $00
    nop                                           ; $6e40: $00
    add hl, bc                                    ; $6e41: $09
    ld hl, sp+$31                                 ; $6e42: $f8 $31
    ldh a, [$c8]                                  ; $6e44: $f0 $c8
    ld bc, $3d05                                  ; $6e46: $01 $05 $3d
    ld bc, $0bf3                                  ; $6e49: $01 $f3 $0b
    dec b                                         ; $6e4c: $05
    push af                                       ; $6e4d: $f5
    db $10                                        ; $6e4e: $10
    ld [$3c02], sp                                ; $6e4f: $08 $02 $3c
    ld [hl-], a                                   ; $6e52: $32
    sbc h                                         ; $6e53: $9c
    ld [de], a                                    ; $6e54: $12
    call z, $020a                                 ; $6e55: $cc $0a $02
    nop                                           ; $6e58: $00
    adc d                                         ; $6e59: $8a
    nop                                           ; $6e5a: $00
    call z, $008a                                 ; $6e5b: $cc $8a $00
    cp $fe                                        ; $6e5e: $fe $fe
    nop                                           ; $6e60: $00
    nop                                           ; $6e61: $00
    ld bc, $00eb                                  ; $6e62: $01 $eb $00
    nop                                           ; $6e65: $00
    add b                                         ; $6e66: $80
    ld a, a                                       ; $6e67: $7f
    cp a                                          ; $6e68: $bf
    ld b, c                                       ; $6e69: $41
    db $fc                                        ; $6e6a: $fc
    ld b, c                                       ; $6e6b: $41
    ld hl, sp+$43                                 ; $6e6c: $f8 $43
    nop                                           ; $6e6e: $00
    ldh a, [rLY]                                  ; $6e6f: $f0 $44
    ldh [rOBP0], a                                ; $6e71: $e0 $48
    ldh [$3b], a                                  ; $6e73: $e0 $3b
    and $36                                       ; $6e75: $e6 $36
    nop                                           ; $6e77: $00
    rst $38                                       ; $6e78: $ff
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    ld [bc], a                                    ; $6e7b: $02
    ret                                           ; $6e7c: $c9


    add hl, sp                                    ; $6e7d: $39
    ld h, l                                       ; $6e7e: $65
    ld d, [hl]                                    ; $6e7f: $56
    nop                                           ; $6e80: $00
    ld a, [bc]                                    ; $6e81: $0a
    ld b, $c0                                     ; $6e82: $06 $c0
    ld [$8018], sp                                ; $6e84: $08 $18 $80
    ld [de], a                                    ; $6e87: $12
    ld [bc], a                                    ; $6e88: $02
    nop                                           ; $6e89: $00

jr_0d0_6e8a:
    nop                                           ; $6e8a: $00
    rst $38                                       ; $6e8b: $ff
    ld [hl-], a                                   ; $6e8c: $32
    ld [de], a                                    ; $6e8d: $12
    pop bc                                        ; $6e8e: $c1
    jp Jump_000_0480                              ; $6e8f: $c3 $80 $04


    nop                                           ; $6e92: $00
    add $3f                                       ; $6e93: $c6 $3f
    jr @+$3f                                      ; $6e95: $18 $3d

    ld de, $cc08                                  ; $6e97: $11 $08 $cc
    call nz, $fe00                                ; $6e9a: $c4 $00 $fe
    nop                                           ; $6e9d: $00
    ld [bc], a                                    ; $6e9e: $02
    db $fc                                        ; $6e9f: $fc
    ld a, [hl]                                    ; $6ea0: $7e
    ld [bc], a                                    ; $6ea1: $02
    ld a, $82                                     ; $6ea2: $3e $82
    nop                                           ; $6ea4: $00
    ld e, $42                                     ; $6ea5: $1e $42
    ld e, $82                                     ; $6ea7: $1e $82
    cp h                                          ; $6ea9: $bc
    and d                                         ; $6eaa: $a2
    inc a                                         ; $6eab: $3c
    ld [hl-], a                                   ; $6eac: $32
    nop                                           ; $6ead: $00
    call nz, $c024                                ; $6eae: $c4 $24 $c0
    jr z, @+$22                                   ; $6eb1: $28 $20

    ret nz                                        ; $6eb3: $c0

    ld hl, $00e0                                  ; $6eb4: $21 $e0 $00
    pop bc                                        ; $6eb7: $c1
    ld d, b                                       ; $6eb8: $50
    ret nz                                        ; $6eb9: $c0

    ld c, e                                       ; $6eba: $4b
    and b                                         ; $6ebb: $a0
    ld b, b                                       ; $6ebc: $40
    or l                                          ; $6ebd: $b5
    ld b, l                                       ; $6ebe: $45
    nop                                           ; $6ebf: $00

jr_0d0_6ec0:
    ld a, h                                       ; $6ec0: $7c
    ld h, h                                       ; $6ec1: $64
    add b                                         ; $6ec2: $80
    ld a, a                                       ; $6ec3: $7f
    ldh a, [$7f]                                  ; $6ec4: $f0 $7f
    ldh [rSVBK], a                                ; $6ec6: $e0 $70
    nop                                           ; $6ec8: $00
    ret nz                                        ; $6ec9: $c0

    or $03                                        ; $6eca: $f6 $03
    dec e                                         ; $6ecc: $1d
    sbc h                                         ; $6ecd: $9c
    ld b, [hl]                                    ; $6ece: $46
    adc a                                         ; $6ecf: $8f
    ret nz                                        ; $6ed0: $c0

    nop                                           ; $6ed1: $00
    call nz, $2204                                ; $6ed2: $c4 $04 $22
    call nz, $d6e2                                ; $6ed5: $c4 $e2 $d6
    ld [hl], d                                    ; $6ed8: $72
    and $00                                       ; $6ed9: $e6 $00
    ld [hl-], a                                   ; $6edb: $32
    ld h, b                                       ; $6edc: $60
    jr nc, jr_0d0_6e8a                            ; $6edd: $30 $ab

    ld [hl], b                                    ; $6edf: $70
    ld l, e                                       ; $6ee0: $6b
    ld hl, sp-$1e                                 ; $6ee1: $f8 $e2
    nop                                           ; $6ee3: $00
    ld c, $62                                     ; $6ee4: $0e $62

jr_0d0_6ee6:
    ld c, $62                                     ; $6ee6: $0e $62
    ld b, $22                                     ; $6ee8: $06 $22
    ld b, $e2                                     ; $6eea: $06 $e2
    nop                                           ; $6eec: $00
    ld b, $c2                                     ; $6eed: $06 $c2
    ld c, $82                                     ; $6eef: $0e $82

jr_0d0_6ef1:
    sbc h                                         ; $6ef1: $9c
    add d                                         ; $6ef2: $82
    ld a, h                                       ; $6ef3: $7c
    ld [bc], a                                    ; $6ef4: $02
    nop                                           ; $6ef5: $00
    cp d                                          ; $6ef6: $ba
    ld b, d                                       ; $6ef7: $42
    cp h                                          ; $6ef8: $bc
    ld b, b                                       ; $6ef9: $40
    cp a                                          ; $6efa: $bf
    ret nz                                        ; $6efb: $c0

    cp a                                          ; $6efc: $bf
    ret nz                                        ; $6efd: $c0

    jr nz, jr_0d0_6ec0                            ; $6efe: $20 $c0

    ld a, a                                       ; $6f00: $7f
    ld [bc], a                                    ; $6f01: $02
    jr @+$81                                      ; $6f02: $18 $7f

    or b                                          ; $6f04: $b0
    ld [hl], a                                    ; $6f05: $77
    jr @+$5a                                      ; $6f06: $18 $58

    nop                                           ; $6f08: $00
    ld [hl], a                                    ; $6f09: $77
    add b                                         ; $6f0a: $80
    ccf                                           ; $6f0b: $3f
    ret nz                                        ; $6f0c: $c0

    rra                                           ; $6f0d: $1f
    pop de                                        ; $6f0e: $d1
    jr jr_0d0_6ef1                                ; $6f0f: $18 $e0

    inc b                                         ; $6f11: $04
    rrca                                          ; $6f12: $0f
    adc b                                         ; $6f13: $88
    rrca                                          ; $6f14: $0f
    ld c, $f2                                     ; $6f15: $0e $f2
    ld [bc], a                                    ; $6f17: $02
    jr jr_0d0_6f36                                ; $6f18: $18 $1c

    db $e4                                        ; $6f1a: $e4
    nop                                           ; $6f1b: $00
    jr c, jr_0d0_6ee6                             ; $6f1c: $38 $c8

    call nz, $8ca0                                ; $6f1e: $c4 $a0 $8c
    ld [de], a                                    ; $6f21: $12

jr_0d0_6f22:
    db $fc                                        ; $6f22: $fc
    ld [bc], a                                    ; $6f23: $02
    jr nz, jr_0d0_6f22                            ; $6f24: $20 $fc

    cp $04                                        ; $6f26: $fe $04
    nop                                           ; $6f28: $00
    ld [bc], a                                    ; $6f29: $02
    dec e                                         ; $6f2a: $1d
    inc bc                                        ; $6f2b: $03
    dec c                                         ; $6f2c: $0d
    inc bc                                        ; $6f2d: $03
    ld [$2660], sp                                ; $6f2e: $08 $60 $26
    ld [hl], b                                    ; $6f31: $70
    ld h, [hl]                                    ; $6f32: $66
    jr c, jr_0d0_6f45                             ; $6f33: $38 $10

    ld a, [hl]                                    ; $6f35: $7e

jr_0d0_6f36:
    ret nz                                        ; $6f36: $c0

    ld a, h                                       ; $6f37: $7c
    nop                                           ; $6f38: $00
    ld hl, sp+$78                                 ; $6f39: $f8 $78

jr_0d0_6f3b:
    ldh a, [$71]                                  ; $6f3b: $f0 $71
    add b                                         ; $6f3d: $80
    ld a, a                                       ; $6f3e: $7f
    rst $38                                       ; $6f3f: $ff
    nop                                           ; $6f40: $00
    nop                                           ; $6f41: $00
    jr nz, jr_0d0_6f44                            ; $6f42: $20 $00

jr_0d0_6f44:
    ld b, c                                       ; $6f44: $41

jr_0d0_6f45:
    ld hl, $6051                                  ; $6f45: $21 $51 $60
    adc c                                         ; $6f48: $89
    cp b                                          ; $6f49: $b8
    ld [$1881], sp                                ; $6f4a: $08 $81 $18
    jr nz, jr_0d0_6f3b                            ; $6f4d: $20 $ec

    call z, RST_00                                ; $6f4f: $cc $00 $00
    ld l, [hl]                                    ; $6f52: $6e
    ld d, d                                       ; $6f53: $52
    nop                                           ; $6f54: $00
    add l                                         ; $6f55: $85
    ld a, c                                       ; $6f56: $79
    dec de                                        ; $6f57: $1b
    ld [c], a                                     ; $6f58: $e2
    or [hl]                                       ; $6f59: $b6
    ld b, a                                       ; $6f5a: $47
    call z, Call_0d0_400b                         ; $6f5b: $cc $0b $40
    add hl, sp                                    ; $6f5e: $39
    call c, RST_08                                ; $6f5f: $dc $08 $00
    ldh a, [$92]                                  ; $6f62: $f0 $92
    db $e4                                        ; $6f64: $e4
    ld h, $ec                                     ; $6f65: $26 $ec
    nop                                           ; $6f67: $00
    ld a, [hl+]                                   ; $6f68: $2a
    call z, $8c4a                                 ; $6f69: $cc $4a $8c
    add d                                         ; $6f6c: $82
    inc e                                         ; $6f6d: $1c
    ld [de], a                                    ; $6f6e: $12
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    cp $fe                                        ; $6f71: $fe $fe
    nop                                           ; $6f73: $00
    nop                                           ; $6f74: $00
    ld bc, $00e0                                  ; $6f75: $01 $e0 $00
    nop                                           ; $6f78: $00
    rst $38                                       ; $6f79: $ff
    ld a, a                                       ; $6f7a: $7f
    ret nz                                        ; $6f7b: $c0

    ld a, a                                       ; $6f7c: $7f
    ld a, [hl]                                    ; $6f7d: $7e
    ret nz                                        ; $6f7e: $c0

    ld a, h                                       ; $6f7f: $7c
    ret nz                                        ; $6f80: $c0

    nop                                           ; $6f81: $00
    jp nz, $c43a                                  ; $6f82: $c2 $3a $c4

    inc [hl]                                      ; $6f85: $34
    ret nz                                        ; $6f86: $c0

    ld l, b                                       ; $6f87: $68
    ret nz                                        ; $6f88: $c0

    ld d, b                                       ; $6f89: $50
    nop                                           ; $6f8a: $00
    rst $38                                       ; $6f8b: $ff
    nop                                           ; $6f8c: $00
    inc bc                                        ; $6f8d: $03
    ccf                                           ; $6f8e: $3f
    ccf                                           ; $6f8f: $3f
    jp Jump_0d0_4080                              ; $6f90: $c3 $80 $40


    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    nop                                           ; $6f95: $00
    add hl, de                                    ; $6f96: $19
    ld e, $31                                     ; $6f97: $1e $31
    ld bc, $0100                                  ; $6f99: $01 $00 $01
    add b                                         ; $6f9c: $80
    stop                                          ; $6f9d: $10 $00
    ei                                            ; $6f9f: $fb
    jr jr_0d0_6fb7                                ; $6fa0: $18 $15

    ld c, h                                       ; $6fa2: $4c
    ld c, d                                       ; $6fa3: $4a
    inc h                                         ; $6fa4: $24
    ld [hl+], a                                   ; $6fa5: $22
    nop                                           ; $6fa6: $00
    db $10                                        ; $6fa7: $10
    ld [hl-], a                                   ; $6fa8: $32
    inc [hl]                                      ; $6fa9: $34
    or l                                          ; $6faa: $b5
    ld a, $23                                     ; $6fab: $3e $23
    cp $00                                        ; $6fad: $fe $00
    jr nz, jr_0d0_6fb3                            ; $6faf: $20 $02

    db $fc                                        ; $6fb1: $fc
    ld [bc], a                                    ; $6fb2: $02

jr_0d0_6fb3:
    jr c, jr_0d0_6fb3                             ; $6fb3: $38 $fe

    db $fc                                        ; $6fb5: $fc
    db $10                                        ; $6fb6: $10

jr_0d0_6fb7:
    ret nc                                        ; $6fb7: $d0

    scf                                           ; $6fb8: $37
    nop                                           ; $6fb9: $00
    push hl                                       ; $6fba: $e5
    ld h, a                                       ; $6fbb: $67
    ret nz                                        ; $6fbc: $c0

    ld l, c                                       ; $6fbd: $69
    ret nz                                        ; $6fbe: $c0

    add hl, sp                                    ; $6fbf: $39
    ldh [rNR24], a                                ; $6fc0: $e0 $19
    nop                                           ; $6fc2: $00
    ret nc                                        ; $6fc3: $d0

    adc c                                         ; $6fc4: $89
    ld c, c                                       ; $6fc5: $49
    adc b                                         ; $6fc6: $88
    ld c, b                                       ; $6fc7: $48
    nop                                           ; $6fc8: $00
    nop                                           ; $6fc9: $00

jr_0d0_6fca:
    inc hl                                        ; $6fca: $23
    nop                                           ; $6fcb: $00
    ld b, e                                       ; $6fcc: $43
    xor $61                                       ; $6fcd: $ee $61
    sbc b                                         ; $6fcf: $98
    add a                                         ; $6fd0: $87
    db $10                                        ; $6fd1: $10
    rrca                                          ; $6fd2: $0f
    ld sp, $0f00                                  ; $6fd3: $31 $00 $0f
    inc a                                         ; $6fd6: $3c
    rst $00                                       ; $6fd7: $c7
    ld [hl], b                                    ; $6fd8: $70
    adc [hl]                                      ; $6fd9: $8e
    inc [hl]                                      ; $6fda: $34
    ld a, [bc]                                    ; $6fdb: $0a
    jp nz, $3e00                                  ; $6fdc: $c2 $00 $3e

    db $fc                                        ; $6fdf: $fc
    inc b                                         ; $6fe0: $04
    ld hl, sp+$02                                 ; $6fe1: $f8 $02
    ld sp, hl                                     ; $6fe3: $f9
    cp $19                                        ; $6fe4: $fe $19
    dec b                                         ; $6fe6: $05
    ld a, [de]                                    ; $6fe7: $1a
    dec a                                         ; $6fe8: $3d
    nop                                           ; $6fe9: $00
    ld e, [hl]                                    ; $6fea: $5e
    jp nz, $0834                                  ; $6feb: $c2 $34 $08

    ld c, $38                                     ; $6fee: $0e $38
    nop                                           ; $6ff0: $00
    ld b, b                                       ; $6ff1: $40
    add d                                         ; $6ff2: $82
    ld [bc], a                                    ; $6ff3: $02
    ld [$823e], sp                                ; $6ff4: $08 $3e $82
    ld a, $c0                                     ; $6ff7: $3e $c0
    ld b, b                                       ; $6ff9: $40
    ret nz                                        ; $6ffa: $c0

    nop                                           ; $6ffb: $00
    ld h, c                                       ; $6ffc: $61
    jp nz, $c222                                  ; $6ffd: $c2 $22 $c2

Call_0d0_7000:
    inc hl                                        ; $7000: $23
    add hl, sp                                    ; $7001: $39
    ret z                                         ; $7002: $c8

    inc a                                         ; $7003: $3c
    jr nz, jr_0d0_6fca                            ; $7004: $20 $c4

    ld a, $02                                     ; $7006: $3e $02
    nop                                           ; $7008: $00
    ld b, c                                       ; $7009: $41
    inc bc                                        ; $700a: $03
    ld [hl], b                                    ; $700b: $70
    ld [bc], a                                    ; $700c: $02
    add hl, sp                                    ; $700d: $39
    nop                                           ; $700e: $00
    add b                                         ; $700f: $80
    rra                                           ; $7010: $1f
    ld b, a                                       ; $7011: $47
    cp b                                          ; $7012: $b8
    daa                                           ; $7013: $27
    db $ec                                        ; $7014: $ec
    inc bc                                        ; $7015: $03
    ld e, $00                                     ; $7016: $1e $00
    ld bc, $a02d                                  ; $7018: $01 $2d $a0
    ld a, $be                                     ; $701b: $3e $be
    ld a, c                                       ; $701d: $79
    add hl, sp                                    ; $701e: $39
    nop                                           ; $701f: $00
    add b                                         ; $7020: $80
    ld bc, $fc00                                  ; $7021: $01 $00 $fc
    nop                                           ; $7024: $00
    rst $38                                       ; $7025: $ff
    nop                                           ; $7026: $00
    add c                                         ; $7027: $81
    ld a, [hl]                                    ; $7028: $7e
    cp $40                                        ; $7029: $fe $40
    nop                                           ; $702b: $00
    inc [hl]                                      ; $702c: $34
    ld [$821e], sp                                ; $702d: $08 $1e $82
    ld l, $02                                     ; $7030: $2e $02
    sbc h                                         ; $7032: $9c
    ld a, [bc]                                    ; $7033: $0a
    nop                                           ; $7034: $00
    xor h                                         ; $7035: $ac
    ld h, $74                                     ; $7036: $26 $74
    ld b, [hl]                                    ; $7038: $46
    ld a, h                                       ; $7039: $7c
    ld [hl+], a                                   ; $703a: $22
    ld a, $c2                                     ; $703b: $3e $c2
    nop                                           ; $703d: $00
    ccf                                           ; $703e: $3f
    jp nz, $c53f                                  ; $703f: $c2 $3f $c5

    ccf                                           ; $7042: $3f
    add $3f                                       ; $7043: $c6 $3f
    call z, Call_000_3f00                         ; $7045: $cc $00 $3f
    ret nz                                        ; $7048: $c0

    add b                                         ; $7049: $80
    ld a, a                                       ; $704a: $7f
    rst $38                                       ; $704b: $ff
    nop                                           ; $704c: $00
    add hl, hl                                    ; $704d: $29
    adc a                                         ; $704e: $8f
    nop                                           ; $704f: $00
    or h                                          ; $7050: $b4
    rlca                                          ; $7051: $07
    ld de, $24a1                                  ; $7052: $11 $a1 $24
    ldh a, [rNR50]                                ; $7055: $f0 $24
    call nz, Call_0d0_4810                        ; $7057: $c4 $10 $48
    adc h                                         ; $705a: $8c
    rst $38                                       ; $705b: $ff
    add hl, sp                                    ; $705c: $39
    ld [$fe01], sp                                ; $705d: $08 $01 $fe
    add b                                         ; $7060: $80
    or d                                          ; $7061: $b2
    ld bc, $d87c                                  ; $7062: $01 $7c $d8
    ld a, $c2                                     ; $7065: $3e $c2
    ld a, $e2                                     ; $7067: $3e $e2
    ld e, $10                                     ; $7069: $1e $10
    ld [$2600], sp                                ; $706b: $08 $00 $26
    sbc d                                         ; $706e: $9a
    ld [bc], a                                    ; $706f: $02
    ld b, $2c                                     ; $7070: $06 $2c
    ld [bc], a                                    ; $7072: $02
    ld h, h                                       ; $7073: $64
    ld h, d                                       ; $7074: $62
    nop                                           ; $7075: $00
    ret c                                         ; $7076: $d8

    sub d                                         ; $7077: $92
    db $fc                                        ; $7078: $fc
    or d                                          ; $7079: $b2
    nop                                           ; $707a: $00
    cp $fe                                        ; $707b: $fe $fe
    nop                                           ; $707d: $00
    nop                                           ; $707e: $00
    ld bc, $00f3                                  ; $707f: $01 $f3 $00
    nop                                           ; $7082: $00
    ld a, a                                       ; $7083: $7f
    rst $38                                       ; $7084: $ff
    ld a, a                                       ; $7085: $7f
    ret nz                                        ; $7086: $c0

    ld a, l                                       ; $7087: $7d
    ret nz                                        ; $7088: $c0

    ld a, b                                       ; $7089: $78
    ret nz                                        ; $708a: $c0

    nop                                           ; $708b: $00
    ld a, h                                       ; $708c: $7c
    pop bc                                        ; $708d: $c1
    ld a, b                                       ; $708e: $78
    jp $c379                                      ; $708f: $c3 $79 $c3


    ld [hl], d                                    ; $7092: $72
    rst $00                                       ; $7093: $c7
    nop                                           ; $7094: $00
    rst $38                                       ; $7095: $ff
    nop                                           ; $7096: $00
    db $10                                        ; $7097: $10
    rra                                           ; $7098: $1f
    rrca                                          ; $7099: $0f
    dec a                                         ; $709a: $3d
    ccf                                           ; $709b: $3f
    or $00                                        ; $709c: $f6 $00
    sub $eb                                       ; $709e: $d6 $eb
    ld h, b                                       ; $70a0: $60
    add $28                                       ; $70a1: $c6 $28
    add sp, $6f                                   ; $70a3: $e8 $6f
    and b                                         ; $70a5: $a0
    nop                                           ; $70a6: $00
    rst $38                                       ; $70a7: $ff
    nop                                           ; $70a8: $00
    nop                                           ; $70a9: $00
    ld a, l                                       ; $70aa: $7d
    inc a                                         ; $70ab: $3c
    ld b, l                                       ; $70ac: $45
    ld h, $dd                                     ; $70ad: $26 $dd
    nop                                           ; $70af: $00
    rst $38                                       ; $70b0: $ff
    nop                                           ; $70b1: $00
    dec l                                         ; $70b2: $2d
    ld e, d                                       ; $70b3: $5a
    add h                                         ; $70b4: $84
    daa                                           ; $70b5: $27
    and e                                         ; $70b6: $a3
    adc c                                         ; $70b7: $89
    nop                                           ; $70b8: $00
    cp $00                                        ; $70b9: $fe $00
    add d                                         ; $70bb: $82
    db $fc                                        ; $70bc: $fc
    ld [bc], a                                    ; $70bd: $02
    halt                                          ; $70be: $76

Jump_0d0_70bf:
    add d                                         ; $70bf: $82
    ld c, $00                                     ; $70c0: $0e $00
    jp nz, $021e                                  ; $70c2: $c2 $1e $02

    ld e, $c2                                     ; $70c5: $1e $c2
    ld c, $f2                                     ; $70c7: $0e $f2
    ld b, $00                                     ; $70c9: $06 $00
    rst $00                                       ; $70cb: $c7
    halt                                          ; $70cc: $76
    call nz, $cb64                                ; $70cd: $c4 $64 $cb
    ld l, c                                       ; $70d0: $69
    push bc                                       ; $70d1: $c5
    ld h, b                                       ; $70d2: $60
    nop                                           ; $70d3: $00
    jp nz, $c272                                  ; $70d4: $c2 $72 $c2

    ld a, b                                       ; $70d7: $78

jr_0d0_70d8:
    ld a, b                                       ; $70d8: $78
    jp nz, $c27a                                  ; $70d9: $c2 $7a $c2

    nop                                           ; $70dc: $00
    adc a                                         ; $70dd: $8f
    sub e                                         ; $70de: $93
    sbc h                                         ; $70df: $9c
    and b                                         ; $70e0: $a0
    or h                                          ; $70e1: $b4
    inc c                                         ; $70e2: $0c
    dec hl                                        ; $70e3: $2b
    sbc b                                         ; $70e4: $98
    nop                                           ; $70e5: $00
    and h                                         ; $70e6: $a4
    rlca                                          ; $70e7: $07
    xor c                                         ; $70e8: $a9
    add hl, de                                    ; $70e9: $19
    ld [hl+], a                                   ; $70ea: $22
    ld d, $64                                     ; $70eb: $16 $64
    inc c                                         ; $70ed: $0c
    nop                                           ; $70ee: $00
    inc c                                         ; $70ef: $0c
    ret nz                                        ; $70f0: $c0

    inc bc                                        ; $70f1: $03
    db $dd                                        ; $70f2: $dd
    sbc $2d                                       ; $70f3: $de $2d
    push af                                       ; $70f5: $f5
    ld b, $00                                     ; $70f6: $06 $00
    add hl, bc                                    ; $70f8: $09
    pop af                                        ; $70f9: $f1
    sbc d                                         ; $70fa: $9a
    ld l, d                                       ; $70fb: $6a
    inc d                                         ; $70fc: $14
    and $62                                       ; $70fd: $e6 $62
    db $d3                                        ; $70ff: $d3
    ld [bc], a                                    ; $7100: $02
    ld [hl], d                                    ; $7101: $72
    adc e                                         ; $7102: $8b
    ld [hl], d                                    ; $7103: $72
    adc e                                         ; $7104: $8b
    and d                                         ; $7105: $a2
    ld c, $02                                     ; $7106: $0e $02
    nop                                           ; $7108: $00
    ld d, e                                       ; $7109: $53
    nop                                           ; $710a: $00
    ld [bc], a                                    ; $710b: $02
    di                                            ; $710c: $f3
    ld [hl+], a                                   ; $710d: $22
    db $d3                                        ; $710e: $d3
    and d                                         ; $710f: $a2
    ld d, e                                       ; $7110: $53
    jp nz, Jump_000_1007                          ; $7111: $c2 $07 $10

    jp nz, $7c07                                  ; $7114: $c2 $07 $7c

    ld a, [hl]                                    ; $7117: $7e
    nop                                           ; $7118: $00
    ret nz                                        ; $7119: $c0

    ld a, [hl]                                    ; $711a: $7e
    ret nz                                        ; $711b: $c0

    ld a, h                                       ; $711c: $7c
    nop                                           ; $711d: $00
    ret nz                                        ; $711e: $c0

    ld a, d                                       ; $711f: $7a
    ret nz                                        ; $7120: $c0

    halt                                          ; $7121: $76
    ldh [rP1], a                                  ; $7122: $e0 $00
    ldh [$3f], a                                  ; $7124: $e0 $3f
    nop                                           ; $7126: $00
    jr nz, jr_0d0_7168                            ; $7127: $20 $3f

    jr nz, jr_0d0_714a                            ; $7129: $20 $1f

    ccf                                           ; $712b: $3f
    ret nz                                        ; $712c: $c0

    ccf                                           ; $712d: $3f
    ld h, b                                       ; $712e: $60
    nop                                           ; $712f: $00
    ld h, c                                       ; $7130: $61
    dec e                                         ; $7131: $1d
    ld [hl], c                                    ; $7132: $71
    ld c, a                                       ; $7133: $4f
    or b                                          ; $7134: $b0
    sub b                                         ; $7135: $90
    sbc $9f                                       ; $7136: $de $9f
    nop                                           ; $7138: $00
    rst $18                                       ; $7139: $df
    rst $28                                       ; $713a: $ef
    rra                                           ; $713b: $1f
    ld e, a                                       ; $713c: $5f
    ld bc, $00fe                                  ; $713d: $01 $fe $00
    cp $00                                        ; $7140: $fe $00
    ldh [rNR34], a                                ; $7142: $e0 $1e

Jump_0d0_7144:
    jp nz, $a2fc                                  ; $7144: $c2 $fc $a2

    ld d, e                                       ; $7147: $53
    and d                                         ; $7148: $a2
    ld d, e                                       ; $7149: $53

jr_0d0_714a:
    ld [bc], a                                    ; $714a: $02
    add d                                         ; $714b: $82
    ld e, $82                                     ; $714c: $1e $82
    ld a, $82                                     ; $714e: $3e $82
    db $fc                                        ; $7150: $fc
    adc b                                         ; $7151: $88
    nop                                           ; $7152: $00
    ld a, h                                       ; $7153: $7c
    jr nz, jr_0d0_70d8                            ; $7154: $20 $82

    cp h                                          ; $7156: $bc
    ccf                                           ; $7157: $3f
    nop                                           ; $7158: $00
    jp nz, $c327                                  ; $7159: $c2 $27 $c3

    inc hl                                        ; $715c: $23
    pop bc                                        ; $715d: $c1
    nop                                           ; $715e: $00
    inc sp                                        ; $715f: $33
    jp nz, $c139                                  ; $7160: $c2 $39 $c1

    add b                                         ; $7163: $80
    ld a, a                                       ; $7164: $7f
    rst $38                                       ; $7165: $ff
    nop                                           ; $7166: $00
    nop                                           ; $7167: $00

jr_0d0_7168:
    rra                                           ; $7168: $1f
    daa                                           ; $7169: $27
    rrca                                          ; $716a: $0f
    inc de                                        ; $716b: $13
    and a                                         ; $716c: $a7
    rlca                                          ; $716d: $07
    ld e, b                                       ; $716e: $58
    add b                                         ; $716f: $80
    ld [$c3ac], sp                                ; $7170: $08 $ac $c3
    ld d, [hl]                                    ; $7173: $56
    pop hl                                        ; $7174: $e1
    cp h                                          ; $7175: $bc
    nop                                           ; $7176: $00
    nop                                           ; $7177: $00
    db $fc                                        ; $7178: $fc
    ldh a, [rP1]                                  ; $7179: $f0 $00
    ldh a, [$e9]                                  ; $717b: $f0 $e9
    dec de                                        ; $717d: $1b
    ld a, [$e6f7]                                 ; $717e: $fa $f7 $e6
    ld [c], a                                     ; $7181: $e2
    add e                                         ; $7182: $83
    jr nz, @-$36                                  ; $7183: $20 $c8

    rrca                                          ; $7185: $0f
    db $10                                        ; $7186: $10
    ld [$5edc], sp                                ; $7187: $08 $dc $5e
    db $e4                                        ; $718a: $e4
    ld h, $e8                                     ; $718b: $26 $e8
    nop                                           ; $718d: $00
    ld a, [bc]                                    ; $718e: $0a
    db $ec                                        ; $718f: $ec
    ld a, [hl+]                                   ; $7190: $2a
    call z, $0c86                                 ; $7191: $cc $86 $0c
    ld [bc], a                                    ; $7194: $02
    nop                                           ; $7195: $00
    nop                                           ; $7196: $00
    cp $fe                                        ; $7197: $fe $fe
    nop                                           ; $7199: $00
    nop                                           ; $719a: $00
    ld bc, $00f8                                  ; $719b: $01 $f8 $00
    ld [$ff7f], sp                                ; $719e: $08 $7f $ff
    ld a, a                                       ; $71a1: $7f
    ret nz                                        ; $71a2: $c0

    ld [bc], a                                    ; $71a3: $02
    jr @+$80                                      ; $71a4: $18 $7e

    ret nz                                        ; $71a6: $c0

    ld a, l                                       ; $71a7: $7d
    nop                                           ; $71a8: $00
    ret nz                                        ; $71a9: $c0

    ld a, l                                       ; $71aa: $7d
    pop bc                                        ; $71ab: $c1
    rst $38                                       ; $71ac: $ff
    nop                                           ; $71ad: $00
    ldh [$ef], a                                  ; $71ae: $e0 $ef
    rra                                           ; $71b0: $1f
    nop                                           ; $71b1: $00
    reti                                          ; $71b2: $d9


    ccf                                           ; $71b3: $3f
    or e                                          ; $71b4: $b3
    ld h, a                                       ; $71b5: $67
    ld c, $cc                                     ; $71b6: $0e $cc
    rra                                           ; $71b8: $1f
    ld h, d                                       ; $71b9: $62
    nop                                           ; $71ba: $00
    sbc e                                         ; $71bb: $9b
    db $10                                        ; $71bc: $10
    and a                                         ; $71bd: $a7
    nop                                           ; $71be: $00
    nop                                           ; $71bf: $00
    db $fc                                        ; $71c0: $fc
    inc bc                                        ; $71c1: $03
    ld bc, $fd00                                  ; $71c2: $01 $00 $fd
    ret nz                                        ; $71c5: $c0

    inc a                                         ; $71c6: $3c
    jr c, jr_0d0_7248                             ; $71c7: $38 $7f

    ld a, b                                       ; $71c9: $78
    push af                                       ; $71ca: $f5
    pop af                                        ; $71cb: $f1
    nop                                           ; $71cc: $00
    add sp, -$3e                                  ; $71cd: $e8 $c2
    dec h                                         ; $71cf: $25
    rst $38                                       ; $71d0: $ff
    ld bc, $7d03                                  ; $71d1: $01 $03 $7d
    add d                                         ; $71d4: $82

jr_0d0_71d5:
    nop                                           ; $71d5: $00
    sbc h                                         ; $71d6: $9c
    and d                                         ; $71d7: $a2
    xor h                                         ; $71d8: $ac
    and [hl]                                      ; $71d9: $a6
    inc d                                         ; $71da: $14
    and d                                         ; $71db: $a2
    jr jr_0d0_723c                                ; $71dc: $18 $5e

    nop                                           ; $71de: $00
    cp [hl]                                       ; $71df: $be
    add d                                         ; $71e0: $82
    ld a, [hl]                                    ; $71e1: $7e
    ld a, l                                       ; $71e2: $7d
    pop bc                                        ; $71e3: $c1
    ld a, h                                       ; $71e4: $7c
    pop bc                                        ; $71e5: $c1
    add hl, sp                                    ; $71e6: $39
    nop                                           ; $71e7: $00
    ret nz                                        ; $71e8: $c0

    ld [hl-], a                                   ; $71e9: $32
    jp nz, $36f0                                  ; $71ea: $c2 $f0 $36

    ldh a, [$33]                                  ; $71ed: $f0 $33
    pop bc                                        ; $71ef: $c1
    nop                                           ; $71f0: $00
    ld [hl], c                                    ; $71f1: $71
    rst $00                                       ; $71f2: $c7
    ld [hl], a                                    ; $71f3: $77
    ld h, $6f                                     ; $71f4: $26 $6f
    ld bc, $9bac                                  ; $71f6: $01 $ac $9b
    nop                                           ; $71f9: $00
    ld l, b                                       ; $71fa: $68
    dec sp                                        ; $71fb: $3b
    ld c, b                                       ; $71fc: $48
    ld a, [de]                                    ; $71fd: $1a
    ld c, c                                       ; $71fe: $49
    ld e, $49                                     ; $71ff: $1e $49
    inc sp                                        ; $7201: $33
    nop                                           ; $7202: $00
    db $f4                                        ; $7203: $f4
    ld h, e                                       ; $7204: $63
    db $ec                                        ; $7205: $ec
    ret z                                         ; $7206: $c8

    ret z                                         ; $7207: $c8

    add b                                         ; $7208: $80
    ld a, a                                       ; $7209: $7f
    cp $00                                        ; $720a: $fe $00
    ld bc, $fd7c                                  ; $720c: $01 $7c $fd
    rlca                                          ; $720f: $07
    nop                                           ; $7210: $00
    dec bc                                        ; $7211: $0b
    jr c, jr_0d0_71d5                             ; $7212: $38 $c1

    nop                                           ; $7214: $00
    ld c, h                                       ; $7215: $4c
    rst $38                                       ; $7216: $ff
    inc a                                         ; $7217: $3c
    ld [hl], h                                    ; $7218: $74
    ld [bc], a                                    ; $7219: $02
    or h                                          ; $721a: $b4
    ld [hl+], a                                   ; $721b: $22
    add [hl]                                      ; $721c: $86
    nop                                           ; $721d: $00
    ret nz                                        ; $721e: $c0

    add $f0                                       ; $721f: $c6 $f0
    ld [hl+], a                                   ; $7221: $22
    ret nc                                        ; $7222: $d0

    ld [hl], $a4                                  ; $7223: $36 $a4
    ld a, $00                                     ; $7225: $3e $00
    db $ec                                        ; $7227: $ec
    ld c, $2c                                     ; $7228: $0e $2c
    and d                                         ; $722a: $a2
    ld l, l                                       ; $722b: $6d
    add h                                         ; $722c: $84
    ld e, a                                       ; $722d: $5f
    or h                                          ; $722e: $b4
    nop                                           ; $722f: $00
    ld [hl], a                                    ; $7230: $77
    xor c                                         ; $7231: $a9
    ld l, [hl]                                    ; $7232: $6e
    and a                                         ; $7233: $a7
    ld e, b                                       ; $7234: $58
    xor a                                         ; $7235: $af
    ld a, c                                       ; $7236: $79
    sbc d                                         ; $7237: $9a
    nop                                           ; $7238: $00
    ld [hl], h                                    ; $7239: $74
    add h                                         ; $723a: $84
    ld l, b                                       ; $723b: $68

jr_0d0_723c:
    call c, $9843                                 ; $723c: $dc $43 $98
    add a                                         ; $723f: $87
    ld hl, sp+$00                                 ; $7240: $f8 $00
    rst $00                                       ; $7242: $c7
    jr c, jr_0d0_726c                             ; $7243: $38 $27

    rra                                           ; $7245: $1f
    ld h, a                                       ; $7246: $67
    rrca                                          ; $7247: $0f

jr_0d0_7248:
    ld d, e                                       ; $7248: $53
    ld l, c                                       ; $7249: $69
    nop                                           ; $724a: $00
    rlca                                          ; $724b: $07
    ld d, h                                       ; $724c: $54
    inc hl                                        ; $724d: $23
    nop                                           ; $724e: $00
    cp $02                                        ; $724f: $fe $02
    db $fc                                        ; $7251: $fc
    db $fd                                        ; $7252: $fd
    nop                                           ; $7253: $00
    ld [bc], a                                    ; $7254: $02
    db $fd                                        ; $7255: $fd
    nop                                           ; $7256: $00
    ld bc, $32be                                  ; $7257: $01 $be $32
    xor h                                         ; $725a: $ac
    add l                                         ; $725b: $85
    nop                                           ; $725c: $00
    ld bc, $03c9                                  ; $725d: $01 $c9 $03
    ld c, $4c                                     ; $7260: $0e $4c
    ld e, $5c                                     ; $7262: $1e $5c
    add d                                         ; $7264: $82
    nop                                           ; $7265: $00
    ld e, [hl]                                    ; $7266: $5e
    add d                                         ; $7267: $82
    ld a, $02                                     ; $7268: $3e $02
    ld a, [hl]                                    ; $726a: $7e
    add d                                         ; $726b: $82

jr_0d0_726c:
    ld a, $82                                     ; $726c: $3e $82
    nop                                           ; $726e: $00
    cp h                                          ; $726f: $bc
    jp nz, $b0dc                                  ; $7270: $c2 $dc $b0

    ld a, b                                       ; $7273: $78
    adc c                                         ; $7274: $89
    ld e, c                                       ; $7275: $59
    db $fc                                        ; $7276: $fc
    nop                                           ; $7277: $00
    ld e, c                                       ; $7278: $59
    ld hl, sp+$71                                 ; $7279: $f8 $71
    ldh [rLY], a                                  ; $727b: $e0 $44
    ret nz                                        ; $727d: $c0

    ld e, [hl]                                    ; $727e: $5e
    add b                                         ; $727f: $80
    nop                                           ; $7280: $00
    ld a, a                                       ; $7281: $7f
    rst $38                                       ; $7282: $ff
    nop                                           ; $7283: $00

Jump_0d0_7284:
    dec sp                                        ; $7284: $3b
    ld sp, $b83d                                  ; $7285: $31 $3d $b8
    sbc [hl]                                      ; $7288: $9e
    nop                                           ; $7289: $00
    inc c                                         ; $728a: $0c
    ld c, a                                       ; $728b: $4f
    adc [hl]                                      ; $728c: $8e
    and a                                         ; $728d: $a7
    ld b, a                                       ; $728e: $47
    ld d, e                                       ; $728f: $53
    ld [hl+], a                                   ; $7290: $22
    rst $38                                       ; $7291: $ff
    nop                                           ; $7292: $00
    nop                                           ; $7293: $00
    nop                                           ; $7294: $00
    nop                                           ; $7295: $00
    adc h                                         ; $7296: $8c
    ei                                            ; $7297: $fb
    pop hl                                        ; $7298: $e1
    ld [c], a                                     ; $7299: $e2
    add hl, bc                                    ; $729a: $09
    ld bc, $c808                                  ; $729b: $01 $08 $c8
    inc c                                         ; $729e: $0c
    jp nc, $a49a                                  ; $729f: $d2 $9a $a4

    or h                                          ; $72a2: $b4
    db $10                                        ; $72a3: $10
    ld [$c200], sp                                ; $72a4: $08 $00 $c2
    call c, $ece2                                 ; $72a7: $dc $e2 $ec
    ldh [$e2], a                                  ; $72aa: $e0 $e2
    ldh [$62], a                                  ; $72ac: $e0 $62
    nop                                           ; $72ae: $00
    adc h                                         ; $72af: $8c
    ld l, [hl]                                    ; $72b0: $6e
    inc b                                         ; $72b1: $04
    halt                                          ; $72b2: $76
    nop                                           ; $72b3: $00
    cp $fe                                        ; $72b4: $fe $fe
    nop                                           ; $72b6: $00
    nop                                           ; $72b7: $00
    ld bc, $00f6                                  ; $72b8: $01 $f6 $00
    nop                                           ; $72bb: $00
    ld a, a                                       ; $72bc: $7f
    rst $38                                       ; $72bd: $ff
    ld a, a                                       ; $72be: $7f
    ret nz                                        ; $72bf: $c0

    ld a, a                                       ; $72c0: $7f
    ret nz                                        ; $72c1: $c0

    ld a, [hl]                                    ; $72c2: $7e
    ret nz                                        ; $72c3: $c0

Jump_0d0_72c4:
    nop                                           ; $72c4: $00
    add hl, sp                                    ; $72c5: $39
    pop bc                                        ; $72c6: $c1
    scf                                           ; $72c7: $37
    rst $00                                       ; $72c8: $c7
    rst $08                                       ; $72c9: $cf
    cpl                                           ; $72ca: $2f
    rst $08                                       ; $72cb: $cf
    cpl                                           ; $72cc: $2f
    nop                                           ; $72cd: $00
    rst $38                                       ; $72ce: $ff
    nop                                           ; $72cf: $00
    ld [bc], a                                    ; $72d0: $02
    ld a, [$07f3]                                 ; $72d1: $fa $f3 $07
    daa                                           ; $72d4: $27
    rrca                                          ; $72d5: $0f
    nop                                           ; $72d6: $00
    call z, $c8cb                                 ; $72d7: $cc $cb $c8
    ld l, a                                       ; $72da: $6f
    xor b                                         ; $72db: $a8
    nop                                           ; $72dc: $00
    rla                                           ; $72dd: $17
    jp nz, $ff00                                  ; $72de: $c2 $00 $ff

    nop                                           ; $72e1: $00
    nop                                           ; $72e2: $00
    ccf                                           ; $72e3: $3f
    rlca                                          ; $72e4: $07
    ret nz                                        ; $72e5: $c0

    inc hl                                        ; $72e6: $23
    add sp, $00                                   ; $72e7: $e8 $00
    ld l, l                                       ; $72e9: $6d
    db $fc                                        ; $72ea: $fc
    inc [hl]                                      ; $72eb: $34
    or $3e                                        ; $72ec: $f6 $3e
    jp nc, Jump_0d0_563a                          ; $72ee: $d2 $3a $56

    nop                                           ; $72f1: $00
    cp $00                                        ; $72f2: $fe $00
    ld [bc], a                                    ; $72f4: $02
    db $fc                                        ; $72f5: $fc
    db $fc                                        ; $72f6: $fc
    cp $fc                                        ; $72f7: $fe $fc
    ld a, [hl]                                    ; $72f9: $7e
    jr nz, @+$04                                  ; $72fa: $20 $02

    db $fc                                        ; $72fc: $fc
    ld [$7c08], sp                                ; $72fd: $08 $08 $7c
    ld [bc], a                                    ; $7300: $02
    jp $c45c                                      ; $7301: $c3 $5c $c4


    nop                                           ; $7304: $00
    ld a, b                                       ; $7305: $78
    pop bc                                        ; $7306: $c1
    ld a, b                                       ; $7307: $78
    bit 6, b                                      ; $7308: $cb $70
    adc $70                                       ; $730a: $ce $70
    call z, $0280                                 ; $730c: $cc $80 $02
    nop                                           ; $730f: $00
    adc $70                                       ; $7310: $ce $70
    ld a, [hl+]                                   ; $7312: $2a
    call nz, $a9c8                                ; $7313: $c4 $c8 $a9
    and h                                         ; $7316: $a4
    nop                                           ; $7317: $00
    and e                                         ; $7318: $a3
    add c                                         ; $7319: $81
    add a                                         ; $731a: $87
    inc e                                         ; $731b: $1c
    ld h, h                                       ; $731c: $64
    daa                                           ; $731d: $27
    db $e3                                        ; $731e: $e3
    ld c, a                                       ; $731f: $4f
    nop                                           ; $7320: $00
    adc a                                         ; $7321: $8f
    ld de, $3b93                                  ; $7322: $11 $93 $3b
    ld d, a                                       ; $7325: $57
    cp c                                          ; $7326: $b9
    dec hl                                        ; $7327: $2b
    cp c                                          ; $7328: $b9
    nop                                           ; $7329: $00
    ld sp, $3538                                  ; $732a: $31 $38 $35
    or b                                          ; $732d: $b0
    xor a                                         ; $732e: $af
    or d                                          ; $732f: $b2
    xor h                                         ; $7330: $ac
    ld [hl], e                                    ; $7331: $73
    nop                                           ; $7332: $00
    dec l                                         ; $7333: $2d
    ld [hl], c                                    ; $7334: $71
    dec hl                                        ; $7335: $2b
    ld l, h                                       ; $7336: $6c
    ld l, [hl]                                    ; $7337: $6e
    ld h, h                                       ; $7338: $64
    ld [bc], a                                    ; $7339: $02
    adc b                                         ; $733a: $88
    nop                                           ; $733b: $00
    adc d                                         ; $733c: $8a
    ld hl, sp+$42                                 ; $733d: $f8 $42
    ld h, d                                       ; $733f: $62
    sbc d                                         ; $7340: $9a
    ld [hl+], a                                   ; $7341: $22
    ld d, [hl]                                    ; $7342: $56
    xor d                                         ; $7343: $aa
    nop                                           ; $7344: $00
    sbc b                                         ; $7345: $98
    ld b, d                                       ; $7346: $42
    ret c                                         ; $7347: $d8

    call z, $c870                                 ; $7348: $cc $70 $c8
    ld [hl], b                                    ; $734b: $70
    cp e                                          ; $734c: $bb
    nop                                           ; $734d: $00
    ld a, c                                       ; $734e: $79
    cp l                                          ; $734f: $bd
    ld a, b                                       ; $7350: $78
    jp nz, $c15c                                  ; $7351: $c2 $5c $c1

    ld c, [hl]                                    ; $7354: $4e
    xor b                                         ; $7355: $a8
    nop                                           ; $7356: $00
    ld h, a                                       ; $7357: $67
    or h                                          ; $7358: $b4
    ld [hl], e                                    ; $7359: $73
    adc l                                         ; $735a: $8d
    ld h, $98                                     ; $735b: $26 $98
    ld c, d                                       ; $735d: $4a
    ld b, b                                       ; $735e: $40
    nop                                           ; $735f: $00
    ld d, a                                       ; $7360: $57
    jr nc, jr_0d0_7382                            ; $7361: $30 $1f

    dec de                                        ; $7363: $1b
    sbc a                                         ; $7364: $9f
    ld a, [bc]                                    ; $7365: $0a
    ld b, l                                       ; $7366: $45
    call $ca00                                    ; $7367: $cd $00 $ca
    halt                                          ; $736a: $76

jr_0d0_736b:
    sub l                                         ; $736b: $95
    ld [hl], c                                    ; $736c: $71
    ld a, b                                       ; $736d: $78
    ld a, b                                       ; $736e: $78
    ld a, l                                       ; $736f: $7d
    ld [de], a                                    ; $7370: $12
    nop                                           ; $7371: $00
    xor h                                         ; $7372: $ac
    add hl, hl                                    ; $7373: $29
    sub a                                         ; $7374: $97
    sbc a                                         ; $7375: $9f
    ret                                           ; $7376: $c9


    ld h, a                                       ; $7377: $67
    and $e3                                       ; $7378: $e6 $e3
    nop                                           ; $737a: $00
    jr jr_0d0_7382                                ; $737b: $18 $05

    db $fd                                        ; $737d: $fd
    ld [de], a                                    ; $737e: $12
    ret c                                         ; $737f: $d8

    sub d                                         ; $7380: $92
    ld a, b                                       ; $7381: $78

jr_0d0_7382:
    ret c                                         ; $7382: $d8

    nop                                           ; $7383: $00
    ld a, [hl-]                                   ; $7384: $3a
    ld [hl], b                                    ; $7385: $70
    ld [bc], a                                    ; $7386: $02
    ld [hl-], a                                   ; $7387: $32
    add [hl]                                      ; $7388: $86
    sub d                                         ; $7389: $92
    ld [$0078], a                                 ; $738a: $ea $78 $00
    xor d                                         ; $738d: $aa
    inc a                                         ; $738e: $3c

jr_0d0_738f:
    xor $c7                                       ; $738f: $ee $c7
    ld [hl], c                                    ; $7391: $71
    jp $c078                                      ; $7392: $c3 $78 $c0


    nop                                           ; $7395: $00
    ld a, h                                       ; $7396: $7c
    ret nz                                        ; $7397: $c0

    halt                                          ; $7398: $76
    ret z                                         ; $7399: $c8

    ld h, [hl]                                    ; $739a: $66
    ret z                                         ; $739b: $c8

    ld l, b                                       ; $739c: $68
    add b                                         ; $739d: $80
    nop                                           ; $739e: $00
    ld a, a                                       ; $739f: $7f
    rst $38                                       ; $73a0: $ff
    nop                                           ; $73a1: $00
    jr nc, jr_0d0_738f                            ; $73a2: $30 $eb

    sub l                                         ; $73a4: $95
    jr z, jr_0d0_736b                             ; $73a5: $28 $c4

    ld bc, $f429                                  ; $73a7: $01 $29 $f4
    sbc d                                         ; $73aa: $9a
    sbc b                                         ; $73ab: $98
    ld [c], a                                     ; $73ac: $e2
    ld a, [de]                                    ; $73ad: $1a
    db $e3                                        ; $73ae: $e3
    cp h                                          ; $73af: $bc
    nop                                           ; $73b0: $00
    nop                                           ; $73b1: $00
    nop                                           ; $73b2: $00
    ld a, [bc]                                    ; $73b3: $0a

jr_0d0_73b4:
    db $fc                                        ; $73b4: $fc
    ldh a, [$fe]                                  ; $73b5: $f0 $fe
    add e                                         ; $73b7: $83
    db $fc                                        ; $73b8: $fc
    ret nz                                        ; $73b9: $c0

    inc b                                         ; $73ba: $04
    db $fc                                        ; $73bb: $fc

jr_0d0_73bc:
    ld a, b                                       ; $73bc: $78
    add c                                         ; $73bd: $81
    jr nz, jr_0d0_73b4                            ; $73be: $20 $f4

    db $10                                        ; $73c0: $10
    ld [$a2f0], sp                                ; $73c1: $08 $f0 $a2
    nop                                           ; $73c4: $00
    ld [hl], b                                    ; $73c5: $70
    ld [hl+], a                                   ; $73c6: $22
    ld d, d                                       ; $73c7: $52
    ld [hl], h                                    ; $73c8: $74
    jp nz, $b4c0                                  ; $73c9: $c2 $c0 $b4

    add d                                         ; $73cc: $82
    nop                                           ; $73cd: $00
    ld a, h                                       ; $73ce: $7c
    ld [de], a                                    ; $73cf: $12
    nop                                           ; $73d0: $00
    cp $fe                                        ; $73d1: $fe $fe
    nop                                           ; $73d3: $00
    nop                                           ; $73d4: $00
    ld bc, $00f3                                  ; $73d5: $01 $f3 $00
    ld [$7fff], sp                                ; $73d8: $08 $ff $7f
    ret nz                                        ; $73db: $c0

    ld b, b                                       ; $73dc: $40
    ld [bc], a                                    ; $73dd: $02
    jr jr_0d0_73bc                                ; $73de: $18 $dc

    ld b, b                                       ; $73e0: $40
    and e                                         ; $73e1: $a3
    nop                                           ; $73e2: $00
    ld e, l                                       ; $73e3: $5d
    add a                                         ; $73e4: $87
    ld h, e                                       ; $73e5: $63
    rst $38                                       ; $73e6: $ff
    nop                                           ; $73e7: $00
    nop                                           ; $73e8: $00
    inc bc                                        ; $73e9: $03
    inc bc                                        ; $73ea: $03
    nop                                           ; $73eb: $00
    dec c                                         ; $73ec: $0d
    rrca                                          ; $73ed: $0f
    jr @+$21                                      ; $73ee: $18 $1f

    ld hl, $712f                                  ; $73f0: $21 $2f $71
    ld a, a                                       ; $73f3: $7f
    jr nz, @+$73                                  ; $73f4: $20 $71

    ld e, h                                       ; $73f6: $5c
    db $10                                        ; $73f7: $10
    ld [$0080], sp                                ; $73f8: $08 $80 $00
    ld hl, sp+$38                                 ; $73fb: $f8 $38
    rst $08                                       ; $73fd: $cf
    nop                                           ; $73fe: $00
    xor h                                         ; $73ff: $ac
    ld h, l                                       ; $7400: $65
    ld d, e                                       ; $7401: $53
    adc [hl]                                      ; $7402: $8e
    sbc l                                         ; $7403: $9d
    ret nc                                        ; $7404: $d0

    sbc h                                         ; $7405: $9c
    pop bc                                        ; $7406: $c1
    nop                                           ; $7407: $00
    cp $01                                        ; $7408: $fe $01
    ld [bc], a                                    ; $740a: $02
    ld bc, $c302                                  ; $740b: $01 $02 $c3
    jp nz, Jump_000_0023                          ; $740e: $c2 $23 $00

    ld b, d                                       ; $7411: $42
    or e                                          ; $7412: $b3
    jp nz, $f433                                  ; $7413: $c2 $33 $f4

    ld b, $04                                     ; $7416: $06 $04
    ld b, $00                                     ; $7418: $06 $00
    ret nz                                        ; $741a: $c0

    ld e, d                                       ; $741b: $5a
    pop bc                                        ; $741c: $c1
    ld e, l                                       ; $741d: $5d
    pop bc                                        ; $741e: $c1
    ld a, b                                       ; $741f: $78
    push bc                                       ; $7420: $c5
    ld h, b                                       ; $7421: $60
    nop                                           ; $7422: $00
    add e                                         ; $7423: $83
    ld e, e                                       ; $7424: $5b
    and b                                         ; $7425: $a0
    ld e, [hl]                                    ; $7426: $5e
    ret nz                                        ; $7427: $c0

    ld b, l                                       ; $7428: $45
    ldh a, [rKEY1]                                ; $7429: $f0 $4d
    nop                                           ; $742b: $00
    ld [hl], b                                    ; $742c: $70
    ld l, [hl]                                    ; $742d: $6e
    add b                                         ; $742e: $80
    call c, $d802                                 ; $742f: $dc $02 $d8
    ld h, e                                       ; $7432: $63
    ld h, b                                       ; $7433: $60
    nop                                           ; $7434: $00
    ld c, e                                       ; $7435: $4b
    ld e, b                                       ; $7436: $58
    jp nc, $b05b                                  ; $7437: $d2 $5b $b0

    ld b, $23                                     ; $743a: $06 $23
    dec c                                         ; $743c: $0d
    nop                                           ; $743d: $00
    inc d                                         ; $743e: $14
    cp b                                          ; $743f: $b8
    sbc b                                         ; $7440: $98
    ld de, $c447                                  ; $7441: $11 $47 $c4
    ld [hl], h                                    ; $7444: $74
    ld b, [hl]                                    ; $7445: $46
    nop                                           ; $7446: $00
    ld hl, sp+$02                                 ; $7447: $f8 $02
    ld a, c                                       ; $7449: $79
    ld h, c                                       ; $744a: $61
    inc c                                         ; $744b: $0c
    nop                                           ; $744c: $00
    ld e, a                                       ; $744d: $5f
    ret nz                                        ; $744e: $c0

    nop                                           ; $744f: $00
    add sp, $22                                   ; $7450: $e8 $22
    add sp, -$7e                                  ; $7452: $e8 $82
    db $fc                                        ; $7454: $fc
    sub d                                         ; $7455: $92
    ld a, h                                       ; $7456: $7c
    ld [hl+], a                                   ; $7457: $22
    nop                                           ; $7458: $00
    call c, $b89e                                 ; $7459: $dc $9e $b8
    ld a, [de]                                    ; $745c: $1a
    ld hl, sp-$36                                 ; $745d: $f8 $ca
    db $f4                                        ; $745f: $f4
    ld a, [c]                                     ; $7460: $f2
    nop                                           ; $7461: $00
    ld a, [c]                                     ; $7462: $f2
    ld c, h                                       ; $7463: $4c
    ld [c], a                                     ; $7464: $e2
    ld b, h                                       ; $7465: $44
    call nz, $c00c                                ; $7466: $c4 $0c $c0
    ld a, [hl-]                                   ; $7469: $3a
    nop                                           ; $746a: $00
    add $70                                       ; $746b: $c6 $70
    ldh a, [rLCDC]                                ; $746d: $f0 $40
    ret nz                                        ; $746f: $c0

    ld bc, $1bd9                                  ; $7470: $01 $d9 $1b
    nop                                           ; $7473: $00
    ld b, d                                       ; $7474: $42
    rra                                           ; $7475: $1f
    pop bc                                        ; $7476: $c1
    sub [hl]                                      ; $7477: $96
    add b                                         ; $7478: $80
    ld e, e                                       ; $7479: $5b
    jr c, jr_0d0_74c7                             ; $747a: $38 $4b

    nop                                           ; $747c: $00
    jr nc, jr_0d0_7496                            ; $747d: $30 $17

    ret nz                                        ; $747f: $c0

    rst $08                                       ; $7480: $cf
    sbc h                                         ; $7481: $9c
    ld c, h                                       ; $7482: $4c
    sbc h                                         ; $7483: $9c
    ld c, [hl]                                    ; $7484: $4e
    nop                                           ; $7485: $00
    rra                                           ; $7486: $1f
    and [hl]                                      ; $7487: $a6
    ccf                                           ; $7488: $3f
    rlca                                          ; $7489: $07

jr_0d0_748a:
    ld b, $f2                                     ; $748a: $06 $f2
    ld [bc], a                                    ; $748c: $02
    ld [c], a                                     ; $748d: $e2
    nop                                           ; $748e: $00
    ld e, $f6                                     ; $748f: $1e $f6
    inc l                                         ; $7491: $2c
    add b                                         ; $7492: $80
    add hl, sp                                    ; $7493: $39
    pop bc                                        ; $7494: $c1
    scf                                           ; $7495: $37

jr_0d0_7496:
    ld b, h                                       ; $7496: $44
    nop                                           ; $7497: $00
    call z, $f8c2                                 ; $7498: $cc $c2 $f8
    ld b, d                                       ; $749b: $42
    add d                                         ; $749c: $82
    ld b, $42                                     ; $749d: $06 $42
    ld c, $00                                     ; $749f: $0e $00
    ld h, d                                       ; $74a1: $62
    ld c, $e2                                     ; $74a2: $0e $e2
    ld c, $ce                                     ; $74a4: $0e $ce
    ld [c], a                                     ; $74a6: $e2
    sbc [hl]                                      ; $74a7: $9e
    jp nz, $d000                                  ; $74a8: $c2 $00 $d0

    inc sp                                        ; $74ab: $33
    pop de                                        ; $74ac: $d1
    scf                                           ; $74ad: $37
    db $d3                                        ; $74ae: $d3
    scf                                           ; $74af: $37
    reti                                          ; $74b0: $d9


    add hl, de                                    ; $74b1: $19
    nop                                           ; $74b2: $00
    ld l, $e0                                     ; $74b3: $2e $e0
    ld [hl], $f0                                  ; $74b5: $36 $f0
    add b                                         ; $74b7: $80
    ld a, a                                       ; $74b8: $7f

jr_0d0_74b9:
    rst $38                                       ; $74b9: $ff
    nop                                           ; $74ba: $00
    nop                                           ; $74bb: $00
    call z, $e727                                 ; $74bc: $cc $27 $e7
    sub b                                         ; $74bf: $90
    jr c, jr_0d0_748a                             ; $74c0: $38 $c8

    add hl, sp                                    ; $74c2: $39
    ret z                                         ; $74c3: $c8

    ld [$89f1], sp                                ; $74c4: $08 $f1 $89

jr_0d0_74c7:
    ldh [rNR11], a                                ; $74c7: $e0 $11
    call z, RST_00                                ; $74c9: $cc $00 $00
    ld b, $c5                                     ; $74cc: $06 $c5
    nop                                           ; $74ce: $00

jr_0d0_74cf:
    inc l                                         ; $74cf: $2c
    xor e                                         ; $74d0: $ab
    inc hl                                        ; $74d1: $23
    ld b, l                                       ; $74d2: $45
    ld de, $8462                                  ; $74d3: $11 $62 $84
    adc b                                         ; $74d6: $88
    jr nz, jr_0d0_74cf                            ; $74d7: $20 $f6

    ldh a, [rNR10]                                ; $74d9: $f0 $10
    ld [$8226], sp                                ; $74db: $08 $26 $82
    ld [hl], d                                    ; $74de: $72
    ld b, $32                                     ; $74df: $06 $32
    nop                                           ; $74e1: $00
    add [hl]                                      ; $74e2: $86
    ld [bc], a                                    ; $74e3: $02
    jp z, $f206                                   ; $74e4: $ca $06 $f2

    ld c, $02                                     ; $74e7: $0e $02
    nop                                           ; $74e9: $00
    nop                                           ; $74ea: $00
    cp $fe                                        ; $74eb: $fe $fe
    nop                                           ; $74ed: $00
    nop                                           ; $74ee: $00
    ld bc, $00fb                                  ; $74ef: $01 $fb $00
    nop                                           ; $74f2: $00
    rst $38                                       ; $74f3: $ff
    ld a, a                                       ; $74f4: $7f
    ret nz                                        ; $74f5: $c0

    ld a, a                                       ; $74f6: $7f
    inc e                                         ; $74f7: $1c
    ldh a, [$30]                                  ; $74f8: $f0 $30
    ldh [rP1], a                                  ; $74fa: $e0 $00
    ld a, h                                       ; $74fc: $7c
    ret nz                                        ; $74fd: $c0

    ld l, b                                       ; $74fe: $68
    ret nz                                        ; $74ff: $c0

    add hl, de                                    ; $7500: $19
    ret c                                         ; $7501: $d8

    inc sp                                        ; $7502: $33
    ldh [rP1], a                                  ; $7503: $e0 $00
    rst $38                                       ; $7505: $ff
    nop                                           ; $7506: $00
    add a                                         ; $7507: $87
    rra                                           ; $7508: $1f
    nop                                           ; $7509: $00
    ld b, b                                       ; $750a: $40
    ld a, $20                                     ; $750b: $3e $20
    nop                                           ; $750d: $00
    ld d, $20                                     ; $750e: $16 $20
    add e                                         ; $7510: $83
    and e                                         ; $7511: $a3
    dec [hl]                                      ; $7512: $35
    inc b                                         ; $7513: $04
    ld hl, $0011                                  ; $7514: $21 $11 $00
    rst $38                                       ; $7517: $ff
    nop                                           ; $7518: $00
    ldh [$91], a                                  ; $7519: $e0 $91
    nop                                           ; $751b: $00
    ld bc, $4103                                  ; $751c: $01 $03 $41
    nop                                           ; $751f: $00
    ld [hl], b                                    ; $7520: $70
    add b                                         ; $7521: $80
    inc sp                                        ; $7522: $33
    inc bc                                        ; $7523: $03
    ld d, a                                       ; $7524: $57
    rst $18                                       ; $7525: $df
    sub b                                         ; $7526: $90
    rst $00                                       ; $7527: $c7
    nop                                           ; $7528: $00
    cp $fe                                        ; $7529: $fe $fe
    ld a, [hl]                                    ; $752b: $7e
    add d                                         ; $752c: $82
    ld l, d                                       ; $752d: $6a
    sbc h                                         ; $752e: $9c
    or $8c                                        ; $752f: $f6 $8c
    nop                                           ; $7531: $00
    ld [hl], d                                    ; $7532: $72
    ld l, b                                       ; $7533: $68
    ld [hl+], a                                   ; $7534: $22
    jr nc, jr_0d0_74b9                            ; $7535: $30 $82

    add h                                         ; $7537: $84
    add [hl]                                      ; $7538: $86
    ret c                                         ; $7539: $d8

    nop                                           ; $753a: $00
    ld h, e                                       ; $753b: $63
    ret nz                                        ; $753c: $c0

    ld c, d                                       ; $753d: $4a
    ret nz                                        ; $753e: $c0

    ld d, c                                       ; $753f: $51
    ret nz                                        ; $7540: $c0

    ld [hl], b                                    ; $7541: $70
    ret nz                                        ; $7542: $c0

    nop                                           ; $7543: $00
    call nz, $c82c                                ; $7544: $c4 $2c $c8
    dec c                                         ; $7547: $0d
    ret nc                                        ; $7548: $d0

jr_0d0_7549:
    add hl, de                                    ; $7549: $19
    ret nc                                        ; $754a: $d0

    dec e                                         ; $754b: $1d
    nop                                           ; $754c: $00
    jr nz, jr_0d0_7596                            ; $754d: $20 $47

    ld b, [hl]                                    ; $754f: $46
    rst $08                                       ; $7550: $cf
    ld [bc], a                                    ; $7551: $02
    inc c                                         ; $7552: $0c
    cp $c1                                        ; $7553: $fe $c1
    nop                                           ; $7555: $00
    add b                                         ; $7556: $80
    ccf                                           ; $7557: $3f
    ld hl, sp+$00                                 ; $7558: $f8 $00
    ld b, c                                       ; $755a: $41

jr_0d0_755b:
    inc bc                                        ; $755b: $03
    ld [hl], c                                    ; $755c: $71
    inc bc                                        ; $755d: $03
    nop                                           ; $755e: $00
    and c                                         ; $755f: $a1
    nop                                           ; $7560: $00
    inc de                                        ; $7561: $13
    ld [hl+], a                                   ; $7562: $22
    rra                                           ; $7563: $1f
    ld l, a                                       ; $7564: $6f
    inc b                                         ; $7565: $04
    db $f4                                        ; $7566: $f4
    nop                                           ; $7567: $00
    rlca                                          ; $7568: $07
    jr jr_0d0_755b                                ; $7569: $18 $f0

    ldh a, [$30]                                  ; $756b: $f0 $30
    nop                                           ; $756d: $00
    ld sp, hl                                     ; $756e: $f9
    add d                                         ; $756f: $82
    nop                                           ; $7570: $00
    adc d                                         ; $7571: $8a
    call z, Call_0d0_6442                         ; $7572: $cc $42 $64
    ld [bc], a                                    ; $7575: $02
    call nz, $e422                                ; $7576: $c4 $22 $e4
    nop                                           ; $7579: $00
    ld h, [hl]                                    ; $757a: $66
    ld l, b                                       ; $757b: $68
    sub [hl]                                      ; $757c: $96
    sbc b                                         ; $757d: $98
    ld b, $da                                     ; $757e: $06 $da
    ld b, $1a                                     ; $7580: $06 $1a
    nop                                           ; $7582: $00
    rrca                                          ; $7583: $0f
    add $0e                                       ; $7584: $c6 $0e
    ret nz                                        ; $7586: $c0

    jr nz, jr_0d0_7549                            ; $7587: $20 $c0

    rra                                           ; $7589: $1f
    rst $00                                       ; $758a: $c7
    nop                                           ; $758b: $00
    rrca                                          ; $758c: $0f
    jp z, $c003                                   ; $758d: $ca $03 $c0

    rla                                           ; $7590: $17
    call nc, $d015                                ; $7591: $d4 $15 $d0
    nop                                           ; $7594: $00
    ld [hl], b                                    ; $7595: $70

jr_0d0_7596:
    ld c, a                                       ; $7596: $4f
    ld a, a                                       ; $7597: $7f
    ld b, b                                       ; $7598: $40
    ld a, a                                       ; $7599: $7f
    nop                                           ; $759a: $00
    ld a, a                                       ; $759b: $7f
    add b                                         ; $759c: $80
    nop                                           ; $759d: $00
    ret nz                                        ; $759e: $c0

    ccf                                           ; $759f: $3f
    and c                                         ; $75a0: $a1
    rra                                           ; $75a1: $1f
    sbc a                                         ; $75a2: $9f
    ld c, a                                       ; $75a3: $4f
    ld b, a                                       ; $75a4: $47
    and a                                         ; $75a5: $a7
    nop                                           ; $75a6: $00
    pop af                                        ; $75a7: $f1
    dec bc                                        ; $75a8: $0b
    add sp, $00                                   ; $75a9: $e8 $00
    db $e4                                        ; $75ab: $e4
    ld a, [c]                                     ; $75ac: $f2
    call z, $00e0                                 ; $75ad: $cc $e0 $00
    dec e                                         ; $75b0: $1d
    ldh [rNR32], a                                ; $75b1: $e0 $1c
    inc d                                         ; $75b3: $14
    ld a, [de]                                    ; $75b4: $1a
    ld hl, sp-$20                                 ; $75b5: $f8 $e0
    pop af                                        ; $75b7: $f1
    nop                                           ; $75b8: $00
    ld c, $32                                     ; $75b9: $0e $32
    ld a, $c2                                     ; $75bb: $3e $c2
    ld l, [hl]                                    ; $75bd: $6e
    sub d                                         ; $75be: $92
    add [hl]                                      ; $75bf: $86
    ld l, d                                       ; $75c0: $6a
    nop                                           ; $75c1: $00
    ld h, [hl]                                    ; $75c2: $66
    adc d                                         ; $75c3: $8a
    ld b, $ea                                     ; $75c4: $06 $ea
    inc e                                         ; $75c6: $1c
    ld [de], a                                    ; $75c7: $12
    inc a                                         ; $75c8: $3c
    ld [hl+], a                                   ; $75c9: $22
    nop                                           ; $75ca: $00
    ret nz                                        ; $75cb: $c0

    ld c, c                                       ; $75cc: $49
    ret nz                                        ; $75cd: $c0

jr_0d0_75ce:
    ld c, h                                       ; $75ce: $4c
    ret nz                                        ; $75cf: $c0

    ld d, c                                       ; $75d0: $51
    ret z                                         ; $75d1: $c8

    ld h, a                                       ; $75d2: $67
    nop                                           ; $75d3: $00
    jr c, jr_0d0_75ce                             ; $75d4: $38 $f8

    ccf                                           ; $75d6: $3f
    ldh [$80], a                                  ; $75d7: $e0 $80
    ld a, a                                       ; $75d9: $7f
    rst $38                                       ; $75da: $ff
    nop                                           ; $75db: $00
    nop                                           ; $75dc: $00
    ld [hl], c                                    ; $75dd: $71
    ret z                                         ; $75de: $c8

    ld a, h                                       ; $75df: $7c
    ld a, [c]                                     ; $75e0: $f2
    ld b, a                                       ; $75e1: $47
    add hl, sp                                    ; $75e2: $39
    ld h, c                                       ; $75e3: $61
    ld e, a                                       ; $75e4: $5f
    nop                                           ; $75e5: $00
    ld e, $bd                                     ; $75e6: $1e $bd
    adc [hl]                                      ; $75e8: $8e
    ld d, c                                       ; $75e9: $51
    rst $38                                       ; $75ea: $ff
    nop                                           ; $75eb: $00
    nop                                           ; $75ec: $00
    nop                                           ; $75ed: $00
    nop                                           ; $75ee: $00
    jp nz, Jump_000_05e0                          ; $75ef: $c2 $e0 $05

    ld [bc], a                                    ; $75f2: $02
    ld c, c                                       ; $75f3: $49
    ld b, $56                                     ; $75f4: $06 $56
    ld c, b                                       ; $75f6: $48
    ld [$4854], sp                                ; $75f7: $08 $54 $48
    ld c, e                                       ; $75fa: $4b
    ld b, h                                       ; $75fb: $44
    db $10                                        ; $75fc: $10
    ld [$423e], sp                                ; $75fd: $08 $3e $42

Call_0d0_7600:
    ld e, $40                                     ; $7600: $1e $40
    ld [hl+], a                                   ; $7602: $22
    ld [bc], a                                    ; $7603: $02
    nop                                           ; $7604: $00
    ld h, d                                       ; $7605: $62
    db $fc                                        ; $7606: $fc
    jp nz, Jump_000_02fc                          ; $7607: $c2 $fc $02

    nop                                           ; $760a: $00
    nop                                           ; $760b: $00
    cp $fe                                        ; $760c: $fe $fe
    nop                                           ; $760e: $00
    nop                                           ; $760f: $00
    ld bc, $00f2                                  ; $7610: $01 $f2 $00
    nop                                           ; $7613: $00
    rst $38                                       ; $7614: $ff
    ld a, a                                       ; $7615: $7f
    jp Jump_0d0_7144                              ; $7616: $c3 $44 $71


    rst $08                                       ; $7619: $cf
    ld h, b                                       ; $761a: $60
    rst $18                                       ; $761b: $df
    nop                                           ; $761c: $00
    db $fc                                        ; $761d: $fc
    ld b, e                                       ; $761e: $43
    ei                                            ; $761f: $fb
    ld b, h                                       ; $7620: $44
    sbc d                                         ; $7621: $9a
    ld l, l                                       ; $7622: $6d
    xor l                                         ; $7623: $ad
    ld e, e                                       ; $7624: $5b
    nop                                           ; $7625: $00
    rst $38                                       ; $7626: $ff
    rst $38                                       ; $7627: $ff
    ld l, b                                       ; $7628: $68
    add a                                         ; $7629: $87
    sbc [hl]                                      ; $762a: $9e
    ld c, a                                       ; $762b: $4f
    pop af                                        ; $762c: $f1
    rra                                           ; $762d: $1f
    nop                                           ; $762e: $00
    pop af                                        ; $762f: $f1
    xor [hl]                                      ; $7630: $ae
    adc $51                                       ; $7631: $ce $51
    pop de                                        ; $7633: $d1
    ld c, [hl]                                    ; $7634: $4e
    ld b, $cf                                     ; $7635: $06 $cf
    nop                                           ; $7637: $00
    nop                                           ; $7638: $00
    rst $38                                       ; $7639: $ff
    db $fc                                        ; $763a: $fc
    inc b                                         ; $763b: $04
    ld a, b                                       ; $763c: $78
    adc h                                         ; $763d: $8c
    xor h                                         ; $763e: $ac
    rst $10                                       ; $763f: $d7
    nop                                           ; $7640: $00
    ld [hl], d                                    ; $7641: $72
    ld c, a                                       ; $7642: $4f
    xor c                                         ; $7643: $a9
    or a                                          ; $7644: $b7
    ld d, h                                       ; $7645: $54
    res 5, d                                      ; $7646: $cb $aa
    ld h, l                                       ; $7648: $65
    db $10                                        ; $7649: $10
    cp $01                                        ; $764a: $fe $01
    ld [bc], a                                    ; $764c: $02
    ld [bc], a                                    ; $764d: $02
    nop                                           ; $764e: $00
    add d                                         ; $764f: $82
    add c                                         ; $7650: $81
    ld b, e                                       ; $7651: $43
    add d                                         ; $7652: $82
    nop                                           ; $7653: $00
    inc hl                                        ; $7654: $23
    jp nz, $53a2                                  ; $7655: $c2 $a2 $53

    jp nz, $ed33                                  ; $7658: $c2 $33 $ed

    ld d, d                                       ; $765b: $52
    nop                                           ; $765c: $00
    db $ec                                        ; $765d: $ec
    ld d, e                                       ; $765e: $53
    cp h                                          ; $765f: $bc
    ld h, e                                       ; $7660: $63
    sbc a                                         ; $7661: $9f
    ld d, c                                       ; $7662: $51
    call nc, $801f                                ; $7663: $d4 $1f $80
    ld [bc], a                                    ; $7666: $02
    jr @+$01                                      ; $7667: $18 $ff

    nop                                           ; $7669: $00
    db $e3                                        ; $766a: $e3
    db $10                                        ; $766b: $10
    jr jr_0d0_7686                                ; $766c: $18 $18

    jr c, jr_0d0_7670                             ; $766e: $38 $00

jr_0d0_7670:
    scf                                           ; $7670: $37
    ld a, [hl-]                                   ; $7671: $3a
    add $a8                                       ; $7672: $c6 $a8
    sub h                                         ; $7674: $94
    ld h, a                                       ; $7675: $67
    ld e, b                                       ; $7676: $58
    add b                                         ; $7677: $80
    nop                                           ; $7678: $00
    ld e, a                                       ; $7679: $5f
    ld b, d                                       ; $767a: $42
    inc h                                         ; $767b: $24
    ld h, $05                                     ; $767c: $26 $05
    halt                                          ; $767e: $76
    ld e, l                                       ; $767f: $5d
    ld d, e                                       ; $7680: $53
    nop                                           ; $7681: $00
    ld a, [hl]                                    ; $7682: $7e
    inc e                                         ; $7683: $1c

jr_0d0_7684:
    adc b                                         ; $7684: $88
    inc a                                         ; $7685: $3c

jr_0d0_7686:
    sbc b                                         ; $7686: $98
    jr @-$1a                                      ; $7687: $18 $e4

    ld a, [$0600]                                 ; $7689: $fa $00 $06
    ld [c], a                                     ; $768c: $e2
    inc bc                                        ; $768d: $03
    ld h, d                                       ; $768e: $62
    sub e                                         ; $768f: $93
    ld a, e                                       ; $7690: $7b
    ret                                           ; $7691: $c9


    dec sp                                        ; $7692: $3b
    nop                                           ; $7693: $00
    reti                                          ; $7694: $d9


    ld a, [c]                                     ; $7695: $f2
    cp h                                          ; $7696: $bc
    ld b, d                                       ; $7697: $42
    inc c                                         ; $7698: $0c
    ld b, d                                       ; $7699: $42
    call c, $00c2                                 ; $769a: $dc $c2 $00
    call z, $17dc                                 ; $769d: $cc $dc $17
    call c, $ba1f                                 ; $76a0: $dc $1f $ba
    ld [hl], a                                    ; $76a3: $77
    or l                                          ; $76a4: $b5
    nop                                           ; $76a5: $00
    ld l, a                                       ; $76a6: $6f
    xor e                                         ; $76a7: $ab
    ld a, l                                       ; $76a8: $7d
    cp a                                          ; $76a9: $bf
    ld a, h                                       ; $76aa: $7c
    ret nz                                        ; $76ab: $c0

    ld b, e                                       ; $76ac: $43
    ret nz                                        ; $76ad: $c0

    nop                                           ; $76ae: $00
    ld b, b                                       ; $76af: $40
    inc hl                                        ; $76b0: $23
    sbc a                                         ; $76b1: $9f
    sub a                                         ; $76b2: $97
    rst $08                                       ; $76b3: $cf
    inc bc                                        ; $76b4: $03
    nop                                           ; $76b5: $00
    nop                                           ; $76b6: $00
    nop                                           ; $76b7: $00
    nop                                           ; $76b8: $00
    pop hl                                        ; $76b9: $e1
    ld a, [hl]                                    ; $76ba: $7e
    ld h, b                                       ; $76bb: $60
    jr nz, @+$33                                  ; $76bc: $20 $31

    adc [hl]                                      ; $76be: $8e
    add hl, sp                                    ; $76bf: $39
    ld [bc], a                                    ; $76c0: $02
    ld de, $f8c7                                  ; $76c1: $11 $c7 $f8
    ld [c], a                                     ; $76c4: $e2
    db $fc                                        ; $76c5: $fc
    ld a, [c]                                     ; $76c6: $f2
    ld [bc], a                                    ; $76c7: $02
    nop                                           ; $76c8: $00
    ld [hl], d                                    ; $76c9: $72
    nop                                           ; $76ca: $00
    ld a, h                                       ; $76cb: $7c
    db $f4                                        ; $76cc: $f4
    ld a, b                                       ; $76cd: $78
    ld [$f7f0], a                                 ; $76ce: $ea $f0 $f7
    ldh [$a2], a                                  ; $76d1: $e0 $a2
    nop                                           ; $76d3: $00

jr_0d0_76d4:
    ld d, e                                       ; $76d4: $53
    ld [hl], d                                    ; $76d5: $72
    adc e                                         ; $76d6: $8b
    cp c                                          ; $76d7: $b9
    ld l, e                                       ; $76d8: $6b
    jp hl                                         ; $76d9: $e9


    dec sp                                        ; $76da: $3b
    and d                                         ; $76db: $a2
    nop                                           ; $76dc: $00
    ld [hl], e                                    ; $76dd: $73
    ld [bc], a                                    ; $76de: $02
    db $e3                                        ; $76df: $e3
    inc bc                                        ; $76e0: $03
    ld a, l                                       ; $76e1: $7d
    inc bc                                        ; $76e2: $03
    dec e                                         ; $76e3: $1d
    ret nz                                        ; $76e4: $c0

    nop                                           ; $76e5: $00
    pop bc                                        ; $76e6: $c1
    pop bc                                        ; $76e7: $c1
    jp nz, $f83b                                  ; $76e8: $c2 $3b $f8

    scf                                           ; $76eb: $37
    pop af                                        ; $76ec: $f1
    call nz, $f300                                ; $76ed: $c4 $00 $f3
    call nz, $80f2                                ; $76f0: $c4 $f2 $80
    ld a, a                                       ; $76f3: $7f
    rst $38                                       ; $76f4: $ff
    nop                                           ; $76f5: $00
    ld [hl], b                                    ; $76f6: $70
    nop                                           ; $76f7: $00
    xor a                                         ; $76f8: $af
    reti                                          ; $76f9: $d9


    ld e, [hl]                                    ; $76fa: $5e
    jr jr_0d0_7684                                ; $76fb: $18 $87

    rra                                           ; $76fd: $1f
    adc a                                         ; $76fe: $8f
    db $10                                        ; $76ff: $10
    ld [$980f], sp                                ; $7700: $08 $0f $98
    add a                                         ; $7703: $87
    rst $38                                       ; $7704: $ff
    ld c, b                                       ; $7705: $48
    nop                                           ; $7706: $00
    rst $28                                       ; $7707: $ef
    add b                                         ; $7708: $80
    add a                                         ; $7709: $87
    nop                                           ; $770a: $00
    jr jr_0d0_76d4                                ; $770b: $18 $c7

    cp b                                          ; $770d: $b8
    ld b, $f8                                     ; $770e: $06 $f8
    db $fc                                        ; $7710: $fc
    pop af                                        ; $7711: $f1
    ld sp, hl                                     ; $7712: $f9
    ld b, b                                       ; $7713: $40
    ld [c], a                                     ; $7714: $e2
    db $10                                        ; $7715: $10
    ld [$0e6c], sp                                ; $7716: $08 $6c $0e
    inc [hl]                                      ; $7719: $34
    ld b, $70                                     ; $771a: $06 $70
    ld [de], a                                    ; $771c: $12
    nop                                           ; $771d: $00
    db $ec                                        ; $771e: $ec
    ld [hl+], a                                   ; $771f: $22
    call c, $bc46                                 ; $7720: $dc $46 $bc
    adc [hl]                                      ; $7723: $8e
    nop                                           ; $7724: $00
    cp $00                                        ; $7725: $fe $00
    cp $00                                        ; $7727: $fe $00
    nop                                           ; $7729: $00
    ld bc, $00f4                                  ; $772a: $01 $f4 $00
    nop                                           ; $772d: $00
    ld a, a                                       ; $772e: $7f
    rst $38                                       ; $772f: $ff
    ld a, a                                       ; $7730: $7f
    ret nz                                        ; $7731: $c0

    ld a, a                                       ; $7732: $7f
    ret nz                                        ; $7733: $c0

    ld a, [hl]                                    ; $7734: $7e
    ret nz                                        ; $7735: $c0

    nop                                           ; $7736: $00
    ld a, h                                       ; $7737: $7c
    pop bc                                        ; $7738: $c1
    ld a, b                                       ; $7739: $78
    jp $c570                                      ; $773a: $c3 $70 $c5


    ld [hl], b                                    ; $773d: $70
    jp $ff00                                      ; $773e: $c3 $00 $ff


    rst $38                                       ; $7741: $ff
    dec bc                                        ; $7742: $0b
    inc [hl]                                      ; $7743: $34
    ld e, $31                                     ; $7744: $1e $31
    dec [hl]                                      ; $7746: $35
    db $eb                                        ; $7747: $eb
    nop                                           ; $7748: $00
    ld c, [hl]                                    ; $7749: $4e
    ld a, [c]                                     ; $774a: $f2
    sub l                                         ; $774b: $95
    db $ed                                        ; $774c: $ed
    ld a, [hl+]                                   ; $774d: $2a
    db $d3                                        ; $774e: $d3
    ld d, l                                       ; $774f: $55
    and [hl]                                      ; $7750: $a6
    nop                                           ; $7751: $00
    rst $38                                       ; $7752: $ff
    rst $38                                       ; $7753: $ff
    ld d, $e1                                     ; $7754: $16 $e1
    ld a, c                                       ; $7756: $79
    ld a, [c]                                     ; $7757: $f2
    adc a                                         ; $7758: $8f
    ld hl, sp+$00                                 ; $7759: $f8 $00
    adc a                                         ; $775b: $8f
    ld [hl], l                                    ; $775c: $75
    ld [hl], e                                    ; $775d: $73
    adc d                                         ; $775e: $8a
    adc e                                         ; $775f: $8b
    ld [hl], d                                    ; $7760: $72
    ld h, b                                       ; $7761: $60
    di                                            ; $7762: $f3
    nop                                           ; $7763: $00
    cp $fe                                        ; $7764: $fe $fe
    jp nz, $e21e                                  ; $7766: $c2 $1e $e2

    ld c, $32                                     ; $7769: $0e $32
    ld b, $00                                     ; $776b: $06 $00
    ld a, [de]                                    ; $776d: $1a
    jp nz, Jump_000_22ce                          ; $776e: $c2 $ce $22

    ld c, d                                       ; $7771: $4a
    and [hl]                                      ; $7772: $a6
    ld h, $4a                                     ; $7773: $26 $4a
    nop                                           ; $7775: $00
    ld a, b                                       ; $7776: $78
    rst $00                                       ; $7777: $c7
    ld [hl], b                                    ; $7778: $70
    rst $00                                       ; $7779: $c7
    db $ec                                        ; $777a: $ec
    rst $08                                       ; $777b: $cf
    push hl                                       ; $777c: $e5
    add $00                                       ; $777d: $c6 $00
    dec sp                                        ; $777f: $3b
    add $32                                       ; $7780: $c6 $32
    jp nz, $c23b                                  ; $7782: $c2 $3b $c2

    inc sp                                        ; $7785: $33
    jp $ac00                                      ; $7786: $c3 $00 $ac


    ld c, d                                       ; $7789: $4a
    adc l                                         ; $778a: $8d
    ld c, c                                       ; $778b: $49
    xor b                                         ; $778c: $a8
    ld d, b                                       ; $778d: $50
    ld l, c                                       ; $778e: $69
    sub c                                         ; $778f: $91
    nop                                           ; $7790: $00
    halt                                          ; $7791: $76
    daa                                           ; $7792: $27
    ld l, [hl]                                    ; $7793: $6e
    ld l, $18                                     ; $7794: $2e $18
    daa                                           ; $7796: $27
    ld e, a                                       ; $7797: $5f
    ld h, b                                       ; $7798: $60
    nop                                           ; $7799: $00
    nop                                           ; $779a: $00
    nop                                           ; $779b: $00
    jr jr_0d0_779e                                ; $779c: $18 $00

jr_0d0_779e:
    nop                                           ; $779e: $00
    rrca                                          ; $779f: $0f
    ldh a, [$c8]                                  ; $77a0: $f0 $c8
    nop                                           ; $77a2: $00
    inc d                                         ; $77a3: $14
    ld l, e                                       ; $77a4: $6b
    ld d, $6a                                     ; $77a5: $16 $6a
    push hl                                       ; $77a7: $e5
    add hl, de                                    ; $77a8: $19
    ld bc, $00fa                                  ; $77a9: $01 $fa $00
    or h                                          ; $77ac: $b4
    jp c, $d2bc                                   ; $77ad: $da $bc $d2

    ld l, d                                       ; $77b0: $6a
    sub d                                         ; $77b1: $92
    ld b, d                                       ; $77b2: $42
    ld [hl], $08                                  ; $77b3: $36 $08
    ld b, $54                                     ; $77b5: $06 $54
    ld b, $d4                                     ; $77b7: $06 $d4
    ld [bc], a                                    ; $77b9: $02
    ld [$7bc5], sp                                ; $77ba: $08 $c5 $7b
    adc $00                                       ; $77bd: $ce $00
    ld [hl], a                                    ; $77bf: $77
    xor l                                         ; $77c0: $ad
    halt                                          ; $77c1: $76
    or a                                          ; $77c2: $b7
    ld a, h                                       ; $77c3: $7c
    push bc                                       ; $77c4: $c5
    ld [hl], h                                    ; $77c5: $74
    pop bc                                        ; $77c6: $c1
    ld b, b                                       ; $77c7: $40
    ld a, b                                       ; $77c8: $78
    add a                                         ; $77c9: $87
    nop                                           ; $77ca: $00
    ld [hl], b                                    ; $77cb: $70
    sbc a                                         ; $77cc: $9f
    ldh [$3f], a                                  ; $77cd: $e0 $3f
    ld b, b                                       ; $77cf: $40
    ld b, b                                       ; $77d0: $40
    nop                                           ; $77d1: $00
    ccf                                           ; $77d2: $3f
    ld b, b                                       ; $77d3: $40
    ccf                                           ; $77d4: $3f
    pop bc                                        ; $77d5: $c1
    cp a                                          ; $77d6: $bf
    ld h, c                                       ; $77d7: $61
    ld e, [hl]                                    ; $77d8: $5e
    ld [hl], b                                    ; $77d9: $70
    nop                                           ; $77da: $00
    cpl                                           ; $77db: $2f
    ld hl, sp+$17                                 ; $77dc: $f8 $17
    inc b                                         ; $77de: $04
    ld sp, hl                                     ; $77df: $f9
    ld [$00f3], sp                                ; $77e0: $08 $f3 $00
    add b                                         ; $77e3: $80
    ld bc, $8100                                  ; $77e4: $01 $00 $81
    ld a, [hl]                                    ; $77e7: $7e
    ld [bc], a                                    ; $77e8: $02
    inc b                                         ; $77e9: $04
    pop af                                        ; $77ea: $f1
    dec c                                         ; $77eb: $0d
    inc b                                         ; $77ec: $04
    nop                                           ; $77ed: $00
    ld hl, sp+$16                                 ; $77ee: $f8 $16
    call nc, $cc0e                                ; $77f0: $d4 $0e $cc
    and d                                         ; $77f3: $a2
    ld c, $42                                     ; $77f4: $0e $42
    nop                                           ; $77f6: $00
    ld c, $42                                     ; $77f7: $0e $42
    ld e, $82                                     ; $77f9: $1e $82
    ld e, $c2                                     ; $77fb: $1e $c2
    db $fc                                        ; $77fd: $fc
    ld [bc], a                                    ; $77fe: $02
    nop                                           ; $77ff: $00
    inc a                                         ; $7800: $3c
    nop                                           ; $7801: $00
    ret nz                                        ; $7802: $c0

    rrca                                          ; $7803: $0f
    call z, $ca0e                                 ; $7804: $cc $0e $ca
    scf                                           ; $7807: $37
    nop                                           ; $7808: $00
    push bc                                       ; $7809: $c5

jr_0d0_780a:
    dec sp                                        ; $780a: $3b
    ld a, [c]                                     ; $780b: $f2
    dec a                                         ; $780c: $3d
    ld sp, hl                                     ; $780d: $f9
    add b                                         ; $780e: $80
    ld a, a                                       ; $780f: $7f
    rst $38                                       ; $7810: $ff
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    ld a, [hl]                                    ; $7813: $7e
    add hl, bc                                    ; $7814: $09
    cpl                                           ; $7815: $2f
    ld d, $1e                                     ; $7816: $16 $1e
    adc l                                         ; $7818: $8d
    rlca                                          ; $7819: $07
    ld [bc], a                                    ; $781a: $02
    ld c, e                                       ; $781b: $4b
    ld [hl+], a                                   ; $781c: $22
    add e                                         ; $781d: $83
    inc e                                         ; $781e: $1c
    ret nz                                        ; $781f: $c0

    rst $38                                       ; $7820: $ff
    add hl, sp                                    ; $7821: $39
    nop                                           ; $7822: $00
    dec c                                         ; $7823: $0d
    nop                                           ; $7824: $00
    or $98                                        ; $7825: $f6 $98
    ld a, c                                       ; $7827: $79
    jr jr_0d0_780a                                ; $7828: $18 $e0

    ld hl, sp-$1f                                 ; $782a: $f8 $e1
    pop hl                                        ; $782c: $e1
    db $10                                        ; $782d: $10
    jp nc, $8462                                  ; $782e: $d2 $62 $84

    db $10                                        ; $7831: $10
    ld [$9e02], sp                                ; $7832: $08 $02 $9e
    add d                                         ; $7835: $82
    ld c, [hl]                                    ; $7836: $4e
    nop                                           ; $7837: $00
    ldh [$82], a                                  ; $7838: $e0 $82
    ld h, b                                       ; $783a: $60
    ld b, d                                       ; $783b: $42
    ld [hl], b                                    ; $783c: $70
    ld [hl+], a                                   ; $783d: $22
    ld a, b                                       ; $783e: $78
    ld [hl-], a                                   ; $783f: $32
    nop                                           ; $7840: $00
    nop                                           ; $7841: $00
    cp $fe                                        ; $7842: $fe $fe
    nop                                           ; $7844: $00

    db $00, $01, $e9, $00, $00, $80, $ff, $bf, $c0, $bf, $c0, $be, $c0, $00, $bf, $43
    db $bd, $41, $bd, $41, $bb, $43, $00, $ff, $00, $22, $e2, $85, $82, $6b, $14, $00
    db $86, $64, $99, $d7, $51, $1a, $42, $b2, $00, $ff, $00, $1c, $dc, $ac, $14, $d0
    db $af, $00, $0d, $4c, $38, $af, $6c, $1f, $8f, $c3, $00, $fe, $00, $7e, $fc, $7c
    db $3e, $3c, $1e, $00, $1c, $0e, $8c, $0e, $ec, $2a, $e4, $c2, $00, $b9, $c1, $b0
    db $c0, $b2, $42, $b3, $43, $00, $b3, $41, $b2, $42, $b0, $c0, $b8, $c0, $00, $5e
    db $03, $d5, $4c, $08, $b4, $09, $e3, $00, $03, $99, $03, $41, $d8, $19, $3e, $e2
    db $00, $b7, $33, $67, $35, $ea, $58, $7a, $f0, $00, $38, $e0, $63, $db, $01, $0a
    db $66, $12, $20, $06, $72, $02, $10, $52, $06, $12, $0e, $22, $00, $1c, $0e, $3c
    db $1e, $bc, $44, $bc, $40, $0c, $be, $42, $bf, $41, $86, $08, $8a, $08, $b8, $66
    db $00, $f8, $66, $d0, $af, $78, $67, $38, $27, $00, $98, $97, $07, $8b, $83, $15
    db $e0, $38, $00, $49, $e1, $75, $05, $01, $8c, $fc, $e2, $00, $f0, $ef, $ba, $e5
    db $c0, $c9, $9c, $02, $01, $cc, $82, $5c, $5e, $bc, $3e, $7c, $02, $00, $08, $fc
    db $82, $fc, $82, $38, $10, $43, $bf, $4c, $00, $bf, $70, $bf, $40, $80, $7f, $ff
    db $00, $00, $bb, $22, $b5, $29, $b2, $ac, $d8, $d7, $00, $07, $c3, $03, $e1, $ff
    db $00, $00, $00, $00, $02, $e0, $85, $79, $47, $3c, $87, $80, $08, $c7, $46, $81
    db $19, $10, $08, $fc, $1e, $fc, $40, $3e, $04, $10, $7e, $fc, $fe, $00, $fe, $fe
    db $00, $00

    nop                                           ; $7957: $00
    ld bc, $00f0                                  ; $7958: $01 $f0 $00
    ld a, [bc]                                    ; $795b: $0a
    ld a, a                                       ; $795c: $7f
    rst $38                                       ; $795d: $ff
    ld a, a                                       ; $795e: $7f
    ret nz                                        ; $795f: $c0

    ld [bc], a                                    ; $7960: $02
    ld [$027e], sp                                ; $7961: $08 $7e $02
    nop                                           ; $7964: $00
    ld a, h                                       ; $7965: $7c
    add b                                         ; $7966: $80
    ld [bc], a                                    ; $7967: $02
    nop                                           ; $7968: $00
    nop                                           ; $7969: $00
    rst $38                                       ; $796a: $ff
    adc a                                         ; $796b: $8f
    rrca                                          ; $796c: $0f
    ld a, b                                       ; $796d: $78

jr_0d0_796e:
    ld b, a                                       ; $796e: $47
    ld h, b                                       ; $796f: $60
    nop                                           ; $7970: $00
    ld h, b                                       ; $7971: $60
    db $10                                        ; $7972: $10
    rrca                                          ; $7973: $0f
    ld c, a                                       ; $7974: $4f
    inc sp                                        ; $7975: $33
    ld d, b                                       ; $7976: $50
    ld [hl], b                                    ; $7977: $70
    sub e                                         ; $7978: $93
    nop                                           ; $7979: $00
    jr nc, @+$01                                  ; $797a: $30 $ff

    nop                                           ; $797c: $00
    ld [hl], b                                    ; $797d: $70
    ld a, e                                       ; $797e: $7b
    ld a, [$0ac7]                                 ; $797f: $fa $c7 $0a
    nop                                           ; $7982: $00
    rlca                                          ; $7983: $07
    pop af                                        ; $7984: $f1
    inc bc                                        ; $7985: $03
    pop af                                        ; $7986: $f1
    adc l                                         ; $7987: $8d
    inc c                                         ; $7988: $0c
    inc e                                         ; $7989: $1c
    sbc e                                         ; $798a: $9b
    nop                                           ; $798b: $00
    ld [$00fe], sp                                ; $798c: $08 $fe $00
    ld [bc], a                                    ; $798f: $02
    db $fc                                        ; $7990: $fc
    db $fc                                        ; $7991: $fc
    cp $fc                                        ; $7992: $fe $fc
    ld b, b                                       ; $7994: $40
    ld [bc], a                                    ; $7995: $02
    ld [bc], a                                    ; $7996: $02
    jr nz, @-$7c                                  ; $7997: $20 $82

    dec sp                                        ; $7999: $3b
    ld hl, sp+$3b                                 ; $799a: $f8 $3b
    ld hl, sp+$78                                 ; $799c: $f8 $78
    nop                                           ; $799e: $00
    ret nz                                        ; $799f: $c0

    ld [hl], b                                    ; $79a0: $70
    ret nz                                        ; $79a1: $c0

    add [hl]                                      ; $79a2: $86
    ld b, [hl]                                    ; $79a3: $46
    sbc c                                         ; $79a4: $99
    ld e, b                                       ; $79a5: $58
    ld b, b                                       ; $79a6: $40
    nop                                           ; $79a7: $00
    jp $c358                                      ; $79a8: $c3 $58 $c3


    adc e                                         ; $79ab: $8b

Call_0d0_79ac:
    jr jr_0d0_796e                                ; $79ac: $18 $c0

    ld [$0023], sp                                ; $79ae: $08 $23 $00
    rra                                           ; $79b1: $1f
    ldh [rP1], a                                  ; $79b2: $e0 $00
    rrca                                          ; $79b4: $0f
    inc b                                         ; $79b5: $04
    sub l                                         ; $79b6: $95
    rst $28                                       ; $79b7: $ef
    ld d, l                                       ; $79b8: $55
    nop                                           ; $79b9: $00
    ld h, h                                       ; $79ba: $64
    ld [bc], a                                    ; $79bb: $02
    cp $a7                                        ; $79bc: $fe $a7
    inc [hl]                                      ; $79be: $34
    rlca                                          ; $79bf: $07
    inc h                                         ; $79c0: $24
    di                                            ; $79c1: $f3
    nop                                           ; $79c2: $00
    rrca                                          ; $79c3: $0f
    nop                                           ; $79c4: $00
    rrca                                          ; $79c5: $0f
    ldh [$c0], a                                  ; $79c6: $e0 $c0
    scf                                           ; $79c8: $37
    db $eb                                        ; $79c9: $eb
    db $ec                                        ; $79ca: $ec
    nop                                           ; $79cb: $00
    ld [$ffc0], a                                 ; $79cc: $ea $c0 $ff
    add d                                         ; $79cf: $82
    cp h                                          ; $79d0: $bc
    jp nz, $1cdc                                  ; $79d1: $c2 $dc $1c

    nop                                           ; $79d4: $00
    ld [bc], a                                    ; $79d5: $02
    call z, Call_0d0_7cc2                         ; $79d6: $cc $c2 $7c

jr_0d0_79d9:
    ld c, $0c                                     ; $79d9: $0e $0c
    add d                                         ; $79db: $82
    ld [de], a                                    ; $79dc: $12
    nop                                           ; $79dd: $00
    jp nz, $c21e                                  ; $79de: $c2 $1e $c2

    ld a, c                                       ; $79e1: $79
    jp $c379                                      ; $79e2: $c3 $79 $c3


    ld [hl], c                                    ; $79e5: $71
    nop                                           ; $79e6: $00
    rst $00                                       ; $79e7: $c7
    ld h, e                                       ; $79e8: $63
    rst $08                                       ; $79e9: $cf
    ld h, [hl]                                    ; $79ea: $66
    adc $63                                       ; $79eb: $ce $63
    rst $08                                       ; $79ed: $cf
    ld [hl], c                                    ; $79ee: $71
    nop                                           ; $79ef: $00
    rst $00                                       ; $79f0: $c7
    ld a, b                                       ; $79f1: $78
    jp Jump_000_2323                              ; $79f2: $c3 $23 $23


    pop de                                        ; $79f5: $d1
    dec e                                         ; $79f6: $1d
    pop de                                        ; $79f7: $d1
    nop                                           ; $79f8: $00
    dec e                                         ; $79f9: $1d
    and d                                         ; $79fa: $a2
    jr nz, jr_0d0_79fe                            ; $79fb: $20 $01

    cp [hl]                                       ; $79fd: $be

jr_0d0_79fe:
    ld b, h                                       ; $79fe: $44
    ccf                                           ; $79ff: $3f
    rlca                                          ; $7a00: $07
    nop                                           ; $7a01: $00
    cp e                                          ; $7a02: $bb
    inc de                                        ; $7a03: $13
    call z, $01c5                                 ; $7a04: $cc $c5 $01
    adc e                                         ; $7a07: $8b
    inc de                                        ; $7a08: $13
    adc e                                         ; $7a09: $8b
    nop                                           ; $7a0a: $00
    inc de                                        ; $7a0b: $13
    ld a, l                                       ; $7a0c: $7d
    add hl, sp                                    ; $7a0d: $39
    db $fc                                        ; $7a0e: $fc
    ld a, l                                       ; $7a0f: $7d
    sbc $dc                                       ; $7a10: $de $dc
    inc a                                         ; $7a12: $3c
    nop                                           ; $7a13: $00
    dec e                                         ; $7a14: $1d
    ld hl, sp+$33                                 ; $7a15: $f8 $33
    ld c, $e2                                     ; $7a17: $0e $e2
    ld c, $e2                                     ; $7a19: $0e $e2
    ld a, [c]                                     ; $7a1b: $f2
    nop                                           ; $7a1c: $00
    inc [hl]                                      ; $7a1d: $34
    cp d                                          ; $7a1e: $ba
    jr jr_0d0_79d9                                ; $7a1f: $18 $b8

    ld a, [de]                                    ; $7a21: $1a
    ld a, b                                       ; $7a22: $78

jr_0d0_7a23:
    ld a, [de]                                    ; $7a23: $1a
    ld hl, sp+$00                                 ; $7a24: $f8 $00
    ld [bc], a                                    ; $7a26: $02
    db $f4                                        ; $7a27: $f4
    ld b, $50                                     ; $7a28: $06 $50
    jp $eb40                                      ; $7a2a: $c3 $40 $eb


    cp a                                          ; $7a2d: $bf
    nop                                           ; $7a2e: $00
    ld h, c                                       ; $7a2f: $61
    xor a                                         ; $7a30: $af
    ld h, c                                       ; $7a31: $61
    sbc a                                         ; $7a32: $9f
    ld b, e                                       ; $7a33: $43
    cp a                                          ; $7a34: $bf
    ld b, a                                       ; $7a35: $47
    add b                                         ; $7a36: $80
    nop                                           ; $7a37: $00
    ld a, a                                       ; $7a38: $7f
    rst $38                                       ; $7a39: $ff
    nop                                           ; $7a3a: $00
    adc a                                         ; $7a3b: $8f
    ld h, a                                       ; $7a3c: $67
    pop hl                                        ; $7a3d: $e1
    inc de                                        ; $7a3e: $13
    ldh a, [rP1]                                  ; $7a3f: $f0 $00
    jr nc, jr_0d0_7a23                            ; $7a41: $30 $e0

    ld l, a                                       ; $7a43: $6f
    rst $20                                       ; $7a44: $e7
    jr z, @-$2f                                   ; $7a45: $28 $cf

    db $d3                                        ; $7a47: $d3
    rst $38                                       ; $7a48: $ff
    nop                                           ; $7a49: $00
    nop                                           ; $7a4a: $00
    nop                                           ; $7a4b: $00
    nop                                           ; $7a4c: $00
    pop af                                        ; $7a4d: $f1
    and $c3                                       ; $7a4e: $e6 $c3
    call z, $010e                                 ; $7a50: $cc $0e $01
    ld c, $01                                     ; $7a53: $0e $01
    ldh [$c0], a                                  ; $7a55: $e0 $c0
    adc a                                         ; $7a57: $8f
    pop hl                                        ; $7a58: $e1
    adc $10                                       ; $7a59: $ce $10
    ld [$e200], sp                                ; $7a5b: $08 $00 $e2
    adc [hl]                                      ; $7a5e: $8e
    ld h, d                                       ; $7a5f: $62
    ld c, $e8                                     ; $7a60: $0e $e8
    ld a, [bc]                                    ; $7a62: $0a
    db $f4                                        ; $7a63: $f4
    ld [bc], a                                    ; $7a64: $02
    nop                                           ; $7a65: $00
    db $fc                                        ; $7a66: $fc
    ld e, $f0                                     ; $7a67: $1e $f0
    ld [bc], a                                    ; $7a69: $02
    nop                                           ; $7a6a: $00
    cp $fe                                        ; $7a6b: $fe $fe
    nop                                           ; $7a6d: $00
    nop                                           ; $7a6e: $00
    ld bc, $00f9                                  ; $7a6f: $01 $f9 $00
    nop                                           ; $7a72: $00
    ld a, a                                       ; $7a73: $7f
    rst $38                                       ; $7a74: $ff
    ld a, [hl]                                    ; $7a75: $7e
    ret nz                                        ; $7a76: $c0

    ld a, h                                       ; $7a77: $7c
    ret nz                                        ; $7a78: $c0

    ld a, c                                       ; $7a79: $79
    ret nz                                        ; $7a7a: $c0

    nop                                           ; $7a7b: $00

Jump_0d0_7a7c:
    dec sp                                        ; $7a7c: $3b
    ei                                            ; $7a7d: $fb
    dec sp                                        ; $7a7e: $3b
    ld hl, sp+$30                                 ; $7a7f: $f8 $30
    ret nz                                        ; $7a81: $c0

    ld [hl], $c4                                  ; $7a82: $36 $c4
    nop                                           ; $7a84: $00
    rst $38                                       ; $7a85: $ff
    nop                                           ; $7a86: $00
    ld b, h                                       ; $7a87: $44
    halt                                          ; $7a88: $76
    add h                                         ; $7a89: $84

jr_0d0_7a8a:
    jp z, Jump_0d0_4984                           ; $7a8a: $ca $84 $49

    nop                                           ; $7a8d: $00
    dec b                                         ; $7a8e: $05
    ret                                           ; $7a8f: $c9


    inc de                                        ; $7a90: $13
    and a                                         ; $7a91: $a7
    dec sp                                        ; $7a92: $3b
    adc e                                         ; $7a93: $8b
    inc c                                         ; $7a94: $0c
    ld e, $00                                     ; $7a95: $1e $00
    rst $38                                       ; $7a97: $ff
    nop                                           ; $7a98: $00
    ld [hl], d                                    ; $7a99: $72
    ld a, [hl]                                    ; $7a9a: $7e
    ld a, [hl-]                                   ; $7a9b: $3a
    inc b                                         ; $7a9c: $04
    cp b                                          ; $7a9d: $b8
    and c                                         ; $7a9e: $a1
    nop                                           ; $7a9f: $00
    add hl, de                                    ; $7aa0: $19
    add d                                         ; $7aa1: $82
    dec e                                         ; $7aa2: $1d
    adc [hl]                                      ; $7aa3: $8e
    rst $00                                       ; $7aa4: $c7
    db $f4                                        ; $7aa5: $f4
    ld [bc], a                                    ; $7aa6: $02
    scf                                           ; $7aa7: $37
    nop                                           ; $7aa8: $00
    nop                                           ; $7aa9: $00
    cp $fc                                        ; $7aaa: $fe $fc
    add d                                         ; $7aac: $82
    cp h                                          ; $7aad: $bc
    ld [bc], a                                    ; $7aae: $02
    cp b                                          ; $7aaf: $b8
    add d                                         ; $7ab0: $82
    nop                                           ; $7ab1: $00
    ld hl, sp-$7e                                 ; $7ab2: $f8 $82
    ldh a, [$82]                                  ; $7ab4: $f0 $82
    jr nz, jr_0d0_7ada                            ; $7ab6: $20 $22

    sbc b                                         ; $7ab8: $98
    ld [bc], a                                    ; $7ab9: $02
    nop                                           ; $7aba: $00
    dec [hl]                                      ; $7abb: $35
    ldh a, [rNR44]                                ; $7abc: $f0 $23
    ld [c], a                                     ; $7abe: $e2
    ld [hl], $c6                                  ; $7abf: $36 $c6
    inc [hl]                                      ; $7ac1: $34
    call nz, Call_0d0_7000                        ; $7ac2: $c4 $00 $70
    ret nz                                        ; $7ac5: $c0

    ld a, l                                       ; $7ac6: $7d
    ret nz                                        ; $7ac7: $c0

    jr z, jr_0d0_7a8a                             ; $7ac8: $28 $c0

    ld h, $c6                                     ; $7aca: $26 $c6
    nop                                           ; $7acc: $00
    ld b, d                                       ; $7acd: $42
    ld sp, $164e                                  ; $7ace: $31 $4e $16
    inc c                                         ; $7ad1: $0c
    ld [$5d59], sp                                ; $7ad2: $08 $59 $5d
    nop                                           ; $7ad5: $00
    or c                                          ; $7ad6: $b1
    xor c                                         ; $7ad7: $a9
    and l                                         ; $7ad8: $a5
    ld b, d                                       ; $7ad9: $42

jr_0d0_7ada:
    nop                                           ; $7ada: $00
    nop                                           ; $7adb: $00
    push hl                                       ; $7adc: $e5
    ld e, c                                       ; $7add: $59
    nop                                           ; $7ade: $00
    or h                                          ; $7adf: $b4
    jp nz, $a4d0                                  ; $7ae0: $c2 $d0 $a4

    add hl, bc                                    ; $7ae3: $09
    ld de, $06af                                  ; $7ae4: $11 $af $06
    nop                                           ; $7ae7: $00
    sbc [hl]                                      ; $7ae8: $9e
    sbc e                                         ; $7ae9: $9b
    call c, $3440                                 ; $7aea: $dc $40 $34
    inc l                                         ; $7aed: $2c
    ld c, h                                       ; $7aee: $4c
    ld h, h                                       ; $7aef: $64
    ld [bc], a                                    ; $7af0: $02
    ldh a, [$d2]                                  ; $7af1: $f0 $d2
    inc d                                         ; $7af3: $14
    ld [de], a                                    ; $7af4: $12
    sub h                                         ; $7af5: $94
    ld [de], a                                    ; $7af6: $12
    inc b                                         ; $7af7: $04
    nop                                           ; $7af8: $00
    sub d                                         ; $7af9: $92
    nop                                           ; $7afa: $00
    xor h                                         ; $7afb: $ac
    add d                                         ; $7afc: $82
    ld b, [hl]                                    ; $7afd: $46
    ld [hl], b                                    ; $7afe: $70
    ld h, d                                       ; $7aff: $62
    ld a, b                                       ; $7b00: $78
    dec h                                         ; $7b01: $25
    call nz, Call_000_2100                        ; $7b02: $c4 $00 $21
    ldh [$9a], a                                  ; $7b05: $e0 $9a
    ld e, b                                       ; $7b07: $58
    cp a                                          ; $7b08: $bf
    ld a, [hl]                                    ; $7b09: $7e
    cp l                                          ; $7b0a: $bd
    ld a, l                                       ; $7b0b: $7d
    nop                                           ; $7b0c: $00
    xor [hl]                                      ; $7b0d: $ae
    ld h, h                                       ; $7b0e: $64
    ret nz                                        ; $7b0f: $c0

    ld c, a                                       ; $7b10: $4f
    ret nz                                        ; $7b11: $c0

    ld e, a                                       ; $7b12: $5f
    cp h                                          ; $7b13: $bc
    jr nc, jr_0d0_7b16                            ; $7b14: $30 $00

jr_0d0_7b16:
    add b                                         ; $7b16: $80
    cp b                                          ; $7b17: $b8
    ld bc, $3c01                                  ; $7b18: $01 $01 $3c
    sub b                                         ; $7b1b: $90
    rst $00                                       ; $7b1c: $c7
    pop bc                                        ; $7b1d: $c1
    nop                                           ; $7b1e: $00
    rlca                                          ; $7b1f: $07
    ld a, a                                       ; $7b20: $7f
    ld h, b                                       ; $7b21: $60
    sub c                                         ; $7b22: $91
    add a                                         ; $7b23: $87
    xor a                                         ; $7b24: $af
    inc c                                         ; $7b25: $0c
    ld b, h                                       ; $7b26: $44
    nop                                           ; $7b27: $00
    ld a, [bc]                                    ; $7b28: $0a
    ld [de], a                                    ; $7b29: $12
    rlca                                          ; $7b2a: $07
    ld de, $038f                                  ; $7b2b: $11 $8f $03
    ld [hl], d                                    ; $7b2e: $72
    ld a, a                                       ; $7b2f: $7f
    nop                                           ; $7b30: $00
    add sp, $1f                                   ; $7b31: $e8 $1f
    scf                                           ; $7b33: $37
    rst $08                                       ; $7b34: $cf
    di                                            ; $7b35: $f3
    jp Jump_0d0_7a7c                              ; $7b36: $c3 $7c $7a


    nop                                           ; $7b39: $00
    inc c                                         ; $7b3a: $0c
    ld [bc], a                                    ; $7b3b: $02
    db $f4                                        ; $7b3c: $f4
    ld [c], a                                     ; $7b3d: $e2
    ld hl, sp-$0e                                 ; $7b3e: $f8 $f2
    ld a, $fc                                     ; $7b40: $3e $fc
    ld b, b                                       ; $7b42: $40
    ld e, $02                                     ; $7b43: $1e $02
    nop                                           ; $7b45: $00
    ld c, $fc                                     ; $7b46: $0e $fc
    cp a                                          ; $7b48: $bf
    ld a, a                                       ; $7b49: $7f
    cp a                                          ; $7b4a: $bf
    ld a, [hl]                                    ; $7b4b: $7e
    nop                                           ; $7b4c: $00
    ret nz                                        ; $7b4d: $c0

    ld a, [hl]                                    ; $7b4e: $7e
    jp nz, $bd7c                                  ; $7b4f: $c2 $7c $bd

    ld b, c                                       ; $7b52: $41
    cp l                                          ; $7b53: $bd
    ld b, l                                       ; $7b54: $45
    nop                                           ; $7b55: $00
    rst $18                                       ; $7b56: $df
    ld a, a                                       ; $7b57: $7f
    rst $38                                       ; $7b58: $ff
    nop                                           ; $7b59: $00
    ldh a, [$cf]                                  ; $7b5a: $f0 $cf
    ld h, b                                       ; $7b5c: $60
    rra                                           ; $7b5d: $1f
    nop                                           ; $7b5e: $00
    ccf                                           ; $7b5f: $3f
    ld b, a                                       ; $7b60: $47
    ccf                                           ; $7b61: $3f
    rst $08                                       ; $7b62: $cf
    ld [hl], b                                    ; $7b63: $70
    ld c, a                                       ; $7b64: $4f
    ld a, b                                       ; $7b65: $78
    ld b, a                                       ; $7b66: $47
    nop                                           ; $7b67: $00
    rst $38                                       ; $7b68: $ff
    nop                                           ; $7b69: $00
    nop                                           ; $7b6a: $00
    nop                                           ; $7b6b: $00
    dec sp                                        ; $7b6c: $3b
    jp nz, $e01d                                  ; $7b6d: $c2 $1d $e0

    nop                                           ; $7b70: $00
    dec e                                         ; $7b71: $1d
    pop hl                                        ; $7b72: $e1
    ld e, $e0                                     ; $7b73: $1e $e0
    ld e, $f0                                     ; $7b75: $1e $f0
    inc e                                         ; $7b77: $1c
    ldh a, [$80]                                  ; $7b78: $f0 $80
    db $10                                        ; $7b7a: $10
    ld [$fefc], sp                                ; $7b7b: $08 $fc $fe
    db $fc                                        ; $7b7e: $fc
    ld a, [hl]                                    ; $7b7f: $7e
    db $fc                                        ; $7b80: $fc
    cp d                                          ; $7b81: $ba
    ld hl, sp+$00                                 ; $7b82: $f8 $00
    ld b, d                                       ; $7b84: $42
    ld a, h                                       ; $7b85: $7c
    ld b, [hl]                                    ; $7b86: $46
    cp h                                          ; $7b87: $bc
    ld [hl+], a                                   ; $7b88: $22
    nop                                           ; $7b89: $00
    cp $fe                                        ; $7b8a: $fe $fe
    nop                                           ; $7b8c: $00
    nop                                           ; $7b8d: $00
    nop                                           ; $7b8e: $00
    ld bc, $00f1                                  ; $7b8f: $01 $f1 $00
    nop                                           ; $7b92: $00
    rst $38                                       ; $7b93: $ff
    ld a, a                                       ; $7b94: $7f
    ret nz                                        ; $7b95: $c0

    ld a, a                                       ; $7b96: $7f
    ld a, a                                       ; $7b97: $7f
    ret nz                                        ; $7b98: $c0

    ld a, b                                       ; $7b99: $78
    ret nz                                        ; $7b9a: $c0

    nop                                           ; $7b9b: $00
    add $36                                       ; $7b9c: $c6 $36
    push bc                                       ; $7b9e: $c5
    dec [hl]                                      ; $7b9f: $35
    ld [hl], b                                    ; $7ba0: $70
    add $7a                                       ; $7ba1: $c6 $7a
    jp $ff00                                      ; $7ba3: $c3 $00 $ff


    nop                                           ; $7ba6: $00
    ld [hl], c                                    ; $7ba7: $71
    dec de                                        ; $7ba8: $1b
    call nc, Call_000_2c27                        ; $7ba9: $d4 $27 $2c
    ret z                                         ; $7bac: $c8

    nop                                           ; $7bad: $00
    ld c, d                                       ; $7bae: $4a
    ld e, d                                       ; $7baf: $5a
    add hl, hl                                    ; $7bb0: $29
    ld de, $9a2a                                  ; $7bb1: $11 $2a $9a
    rrca                                          ; $7bb4: $0f
    jr jr_0d0_7bb7                                ; $7bb5: $18 $00

jr_0d0_7bb7:
    rst $38                                       ; $7bb7: $ff
    rst $38                                       ; $7bb8: $ff
    jr nc, @-$72                                  ; $7bb9: $30 $8c

    sbc b                                         ; $7bbb: $98
    ld d, e                                       ; $7bbc: $53
    ld c, e                                       ; $7bbd: $4b
    inc l                                         ; $7bbe: $2c
    nop                                           ; $7bbf: $00
    add l                                         ; $7bc0: $85
    inc l                                         ; $7bc1: $2c
    ld h, b                                       ; $7bc2: $60
    ld [$2906], sp                                ; $7bc3: $08 $06 $29
    ld a, l                                       ; $7bc6: $7d
    add c                                         ; $7bc7: $81
    nop                                           ; $7bc8: $00
    cp $00                                        ; $7bc9: $fe $00
    add d                                         ; $7bcb: $82
    db $fc                                        ; $7bcc: $fc
    ld b, d                                       ; $7bcd: $42
    ld a, h                                       ; $7bce: $7c
    and d                                         ; $7bcf: $a2
    inc a                                         ; $7bd0: $3c
    nop                                           ; $7bd1: $00
    jp nz, $228e                                  ; $7bd2: $c2 $8e $22

    ld c, $42                                     ; $7bd5: $0e $42

jr_0d0_7bd7:
    ld l, $22                                     ; $7bd7: $2e $22
    ld c, $00                                     ; $7bd9: $0e $00
    jp $c13a                                      ; $7bdb: $c3 $3a $c1


    add hl, sp                                    ; $7bde: $39
    ld a, d                                       ; $7bdf: $7a
    ret nz                                        ; $7be0: $c0

    ld a, e                                       ; $7be1: $7b
    jp nz, $c700                                  ; $7be2: $c2 $00 $c7

    ld a, d                                       ; $7be5: $7a
    rst $00                                       ; $7be6: $c7
    ld a, [hl]                                    ; $7be7: $7e
    add $7e                                       ; $7be8: $c6 $7e
    push bc                                       ; $7bea: $c5
    ld a, e                                       ; $7beb: $7b
    nop                                           ; $7bec: $00
    xor b                                         ; $7bed: $a8
    or b                                          ; $7bee: $b0
    jr z, jr_0d0_7c22                             ; $7bef: $28 $31

    or c                                          ; $7bf1: $b1
    inc bc                                        ; $7bf2: $03
    inc [hl]                                      ; $7bf3: $34
    nop                                           ; $7bf4: $00
    nop                                           ; $7bf5: $00
    ld h, b                                       ; $7bf6: $60
    rla                                           ; $7bf7: $17
    ldh [$97], a                                  ; $7bf8: $e0 $97
    sub h                                         ; $7bfa: $94
    and e                                         ; $7bfb: $a3
    call nz, $00e3                                ; $7bfc: $c4 $e3 $00

jr_0d0_7bff:
    cp b                                          ; $7bff: $b8

Jump_0d0_7c00:
    ld a, c                                       ; $7c00: $79
    inc d                                         ; $7c01: $14
    push de                                       ; $7c02: $d5
    ld de, $3178                                  ; $7c03: $11 $78 $31
    cp $00                                        ; $7c06: $fe $00
    ld hl, $01d5                                  ; $7c08: $21 $d5 $01
    sub l                                         ; $7c0b: $95
    ld b, l                                       ; $7c0c: $45
    add c                                         ; $7c0d: $81
    db $fd                                        ; $7c0e: $fd
    ld bc, $4200                                  ; $7c0f: $01 $00 $42
    ld e, h                                       ; $7c12: $5c
    ld [bc], a                                    ; $7c13: $02
    inc a                                         ; $7c14: $3c
    jp nz, $42fc                                  ; $7c15: $c2 $fc $42

    db $fc                                        ; $7c18: $fc
    jr nz, @-$7c                                  ; $7c19: $20 $82

    cp h                                          ; $7c1b: $bc
    ld [bc], a                                    ; $7c1c: $02
    jr jr_0d0_7bd7                                ; $7c1d: $18 $b8

    ld [hl], e                                    ; $7c1f: $73
    or b                                          ; $7c20: $b0
    ld l, [hl]                                    ; $7c21: $6e

jr_0d0_7c22:
    push hl                                       ; $7c22: $e5
    ld bc, $ca5c                                  ; $7c23: $01 $5c $ca
    ld a, c                                       ; $7c26: $79
    call nc, $c173                                ; $7c27: $d4 $73 $c1
    ld b, [hl]                                    ; $7c2a: $46
    add a                                         ; $7c2b: $87
    nop                                           ; $7c2c: $00
    nop                                           ; $7c2d: $00
    ld a, h                                       ; $7c2e: $7c
    rrca                                          ; $7c2f: $0f

Jump_0d0_7c30:
    ld l, b                                       ; $7c30: $68
    daa                                           ; $7c31: $27
    push hl                                       ; $7c32: $e5
    ld e, b                                       ; $7c33: $58
    ret nz                                        ; $7c34: $c0

    sub b                                         ; $7c35: $90
    nop                                           ; $7c36: $00
    adc h                                         ; $7c37: $8c
    cp b                                          ; $7c38: $b8
    add [hl]                                      ; $7c39: $86

Jump_0d0_7c3a:
    ld a, l                                       ; $7c3a: $7d
    ld [bc], a                                    ; $7c3b: $02
    cp $41                                        ; $7c3c: $fe $41
    ld a, $00                                     ; $7c3e: $3e $00
    add hl, sp                                    ; $7c40: $39
    sbc h                                         ; $7c41: $9c
    sub a                                         ; $7c42: $97
    call nc, Call_0d0_47e7                        ; $7c43: $d4 $e7 $47
    ld h, d                                       ; $7c46: $62
    ld d, a                                       ; $7c47: $57
    nop                                           ; $7c48: $00
    ld h, d                                       ; $7c49: $62
    ld b, a                                       ; $7c4a: $47
    ld hl, $0943                                  ; $7c4b: $21 $43 $09
    dec [hl]                                      ; $7c4e: $35
    add hl, bc                                    ; $7c4f: $09
    ld [bc], a                                    ; $7c50: $02
    jr jr_0d0_7bff                                ; $7c51: $18 $ac

    add d                                         ; $7c53: $82
    db $fc                                        ; $7c54: $fc
    ld [bc], a                                    ; $7c55: $02
    ld [$0042], sp                                ; $7c56: $08 $42 $00
    nop                                           ; $7c59: $00
    or d                                          ; $7c5a: $b2
    ld d, b                                       ; $7c5b: $50
    nop                                           ; $7c5c: $00
    ld a, [c]                                     ; $7c5d: $f2
    adc $3a                                       ; $7c5e: $ce $3a
    ld [hl], $c0                                  ; $7c60: $36 $c0
    ld a, [hl]                                    ; $7c62: $7e
    jp nz, Jump_000_007d                          ; $7c63: $c2 $7d $00

    ret nz                                        ; $7c66: $c0

    ld a, a                                       ; $7c67: $7f
    ret nz                                        ; $7c68: $c0

    ld a, [hl]                                    ; $7c69: $7e
    jp $c37c                                      ; $7c6a: $c3 $7c $c3


    ld a, h                                       ; $7c6d: $7c
    nop                                           ; $7c6e: $00
    add b                                         ; $7c6f: $80
    ld a, a                                       ; $7c70: $7f
    rst $38                                       ; $7c71: $ff
    nop                                           ; $7c72: $00
    inc a                                         ; $7c73: $3c
    jr @-$5d                                      ; $7c74: $18 $a1

    cp a                                          ; $7c76: $bf
    nop                                           ; $7c77: $00
    ld sp, $700f                                  ; $7c78: $31 $0f $70
    rrca                                          ; $7c7b: $0f
    inc e                                         ; $7c7c: $1c
    rla                                           ; $7c7d: $17
    ld a, [hl]                                    ; $7c7e: $7e
    daa                                           ; $7c7f: $27
    nop                                           ; $7c80: $00
    rst $38                                       ; $7c81: $ff
    nop                                           ; $7c82: $00
    nop                                           ; $7c83: $00
    nop                                           ; $7c84: $00
    rst $18                                       ; $7c85: $df
    jp c, Jump_0d0_7c30                           ; $7c86: $da $30 $7c

    nop                                           ; $7c89: $00
    adc a                                         ; $7c8a: $8f
    add $c7                                       ; $7c8b: $c6 $c7
    ld l, c                                       ; $7c8d: $69
    rla                                           ; $7c8e: $17
    ldh [rTAC], a                                 ; $7c8f: $e0 $07
    db $f4                                        ; $7c91: $f4
    add b                                         ; $7c92: $80
    db $10                                        ; $7c93: $10
    ld [$d41a], sp                                ; $7c94: $08 $1a $d4
    adc [hl]                                      ; $7c97: $8e
    add sp, -$7a                                  ; $7c98: $e8 $86
    or h                                          ; $7c9a: $b4
    ld h, d                                       ; $7c9b: $62
    nop                                           ; $7c9c: $00
    ld hl, sp+$3e                                 ; $7c9d: $f8 $3e
    jp nz, $e20e                                  ; $7c9f: $c2 $0e $e2

    nop                                           ; $7ca2: $00
    cp $fe                                        ; $7ca3: $fe $fe
    nop                                           ; $7ca5: $00
    nop                                           ; $7ca6: $00
    nop                                           ; $7ca7: $00
    ld bc, $00f7                                  ; $7ca8: $01 $f7 $00
    nop                                           ; $7cab: $00
    add b                                         ; $7cac: $80
    ld a, a                                       ; $7cad: $7f
    cp a                                          ; $7cae: $bf
    ld [hl], c                                    ; $7caf: $71
    cp a                                          ; $7cb0: $bf
    ld c, [hl]                                    ; $7cb1: $4e
    and b                                         ; $7cb2: $a0
    ld b, b                                       ; $7cb3: $40
    nop                                           ; $7cb4: $00
    adc c                                         ; $7cb5: $89
    ld c, c                                       ; $7cb6: $49
    cp b                                          ; $7cb7: $b8
    ld h, c                                       ; $7cb8: $61
    ldh [rSTAT], a                                ; $7cb9: $e0 $41
    call nz, Call_000_0078                        ; $7cbb: $c4 $78 $00
    nop                                           ; $7cbe: $00
    rst $38                                       ; $7cbf: $ff
    db $fc                                        ; $7cc0: $fc
    ld h, b                                       ; $7cc1: $60

Call_0d0_7cc2:
    add hl, hl                                    ; $7cc2: $29
    db $f4                                        ; $7cc3: $f4
    inc a                                         ; $7cc4: $3c
    ld d, c                                       ; $7cc5: $51
    nop                                           ; $7cc6: $00
    jr c, jr_0d0_7cf2                             ; $7cc7: $38 $29

    ld b, e                                       ; $7cc9: $43
    add b                                         ; $7cca: $80
    ld [hl], h                                    ; $7ccb: $74
    ld d, $c0                                     ; $7ccc: $16 $c0
    ld c, [hl]                                    ; $7cce: $4e
    nop                                           ; $7ccf: $00
    rst $38                                       ; $7cd0: $ff
    rst $38                                       ; $7cd1: $ff
    add b                                         ; $7cd2: $80
    dec a                                         ; $7cd3: $3d
    ld a, [de]                                    ; $7cd4: $1a
    ld b, d                                       ; $7cd5: $42
    add h                                         ; $7cd6: $84
    and h                                         ; $7cd7: $a4
    nop                                           ; $7cd8: $00
    cp h                                          ; $7cd9: $bc
    dec [hl]                                      ; $7cda: $35
    ld c, d                                       ; $7cdb: $4a
    dec bc                                        ; $7cdc: $0b
    call nz, $c505                                ; $7cdd: $c4 $05 $c5
    ld h, l                                       ; $7ce0: $65
    nop                                           ; $7ce1: $00
    cp $00                                        ; $7ce2: $fe $00
    add d                                         ; $7ce4: $82
    db $fc                                        ; $7ce5: $fc
    db $fc                                        ; $7ce6: $fc
    ld [bc], a                                    ; $7ce7: $02
    db $fc                                        ; $7ce8: $fc
    cp $80                                        ; $7ce9: $fe $80
    inc b                                         ; $7ceb: $04
    jr nz, jr_0d0_7cf0                            ; $7cec: $20 $02

    and e                                         ; $7cee: $a3
    ld h, d                                       ; $7cef: $62

jr_0d0_7cf0:
    cp c                                          ; $7cf0: $b9
    ld l, c                                       ; $7cf1: $69

jr_0d0_7cf2:
    cp b                                          ; $7cf2: $b8
    ld [hl], c                                    ; $7cf3: $71
    nop                                           ; $7cf4: $00
    and d                                         ; $7cf5: $a2
    ld b, e                                       ; $7cf6: $43
    sbc c                                         ; $7cf7: $99
    ld b, b                                       ; $7cf8: $40
    or a                                          ; $7cf9: $b7
    ld h, l                                       ; $7cfa: $65
    ret nz                                        ; $7cfb: $c0

    ld l, a                                       ; $7cfc: $6f
    nop                                           ; $7cfd: $00
    db $db                                        ; $7cfe: $db
    ld h, b                                       ; $7cff: $60
    ld [bc], a                                    ; $7d00: $02
    ldh a, [rNR30]                                ; $7d01: $f0 $1a
    ld [$4d9a], sp                                ; $7d03: $08 $9a $4d
    nop                                           ; $7d06: $00
    dec b                                         ; $7d07: $05
    ld [bc], a                                    ; $7d08: $02
    ld hl, sp+$07                                 ; $7d09: $f8 $07
    ld hl, sp-$04                                 ; $7d0b: $f8 $fc
    ld sp, hl                                     ; $7d0d: $f9
    ld b, c                                       ; $7d0e: $41
    nop                                           ; $7d0f: $00
    rst $30                                       ; $7d10: $f7
    bit 0, b                                      ; $7d11: $cb $40
    ld [hl+], a                                   ; $7d13: $22
    ld h, [hl]                                    ; $7d14: $66
    daa                                           ; $7d15: $27
    db $e3                                        ; $7d16: $e3
    and h                                         ; $7d17: $a4
    nop                                           ; $7d18: $00
    or c                                          ; $7d19: $b1
    xor [hl]                                      ; $7d1a: $ae
    sbc c                                         ; $7d1b: $99
    pop af                                        ; $7d1c: $f1
    ld [hl], b                                    ; $7d1d: $70
    ld l, [hl]                                    ; $7d1e: $6e
    inc [hl]                                      ; $7d1f: $34
    ld b, e                                       ; $7d20: $43
    nop                                           ; $7d21: $00
    and e                                         ; $7d22: $a3
    jp hl                                         ; $7d23: $e9


    ld [bc], a                                    ; $7d24: $02
    cp $1e                                        ; $7d25: $fe $1e
    and d                                         ; $7d27: $a2
    sbc h                                         ; $7d28: $9c
    add [hl]                                      ; $7d29: $86
    nop                                           ; $7d2a: $00
    call z, $c6c6                                 ; $7d2b: $cc $c6 $c6
    ld [hl+], a                                   ; $7d2e: $22
    ld h, d                                       ; $7d2f: $62
    ld a, [de]                                    ; $7d30: $1a
    ld [hl-], a                                   ; $7d31: $32
    ld c, $00                                     ; $7d32: $0e $00
    cp d                                          ; $7d34: $ba
    ld b, $b6                                     ; $7d35: $06 $b6
    jp nc, $d4b4                                  ; $7d37: $d2 $b4 $d4

    xor h                                         ; $7d3a: $ac
    ld c, l                                       ; $7d3b: $4d
    nop                                           ; $7d3c: $00
    xor [hl]                                      ; $7d3d: $ae
    ld c, c                                       ; $7d3e: $49
    and e                                         ; $7d3f: $a3
    pop hl                                        ; $7d40: $e1
    add e                                         ; $7d41: $83
    jp nz, $c88a                                  ; $7d42: $c2 $8a $c8

    nop                                           ; $7d45: $00
    cp b                                          ; $7d46: $b8
    ret nz                                        ; $7d47: $c0

    sbc b                                         ; $7d48: $98
    ld d, d                                       ; $7d49: $52
    and [hl]                                      ; $7d4a: $a6
    or h                                          ; $7d4b: $b4
    and h                                         ; $7d4c: $a4
    ld a, h                                       ; $7d4d: $7c
    nop                                           ; $7d4e: $00
    ld l, h                                       ; $7d4f: $6c
    ld hl, $4f68                                  ; $7d50: $21 $68 $4f
    ld c, b                                       ; $7d53: $48
    ld h, d                                       ; $7d54: $62
    ld c, b                                       ; $7d55: $48
    ld a, [c]                                     ; $7d56: $f2
    nop                                           ; $7d57: $00
    ld d, b                                       ; $7d58: $50
    ld hl, $bf61                                  ; $7d59: $21 $61 $bf
    dec [hl]                                      ; $7d5c: $35
    ld e, b                                       ; $7d5d: $58
    inc l                                         ; $7d5e: $2c
    ld a, [hl-]                                   ; $7d5f: $3a
    nop                                           ; $7d60: $00
    ld e, h                                       ; $7d61: $5c
    ld b, [hl]                                    ; $7d62: $46
    ld b, c                                       ; $7d63: $41
    dec bc                                        ; $7d64: $0b
    pop bc                                        ; $7d65: $c1
    jp z, $2229                                   ; $7d66: $ca $29 $22

    nop                                           ; $7d69: $00
    sbc a                                         ; $7d6a: $9f
    ld a, b                                       ; $7d6b: $78
    call c, $ec82                                 ; $7d6c: $dc $82 $ec
    ld [c], a                                     ; $7d6f: $e2
    and h                                         ; $7d70: $a4
    ld [hl+], a                                   ; $7d71: $22
    nop                                           ; $7d72: $00
    ret nz                                        ; $7d73: $c0

    ld b, d                                       ; $7d74: $42
    inc a                                         ; $7d75: $3c
    ld a, [de]                                    ; $7d76: $1a
    inc a                                         ; $7d77: $3c
    ld b, $bc                                     ; $7d78: $06 $bc
    add d                                         ; $7d7a: $82
    nop                                           ; $7d7b: $00
    db $fc                                        ; $7d7c: $fc
    ld [c], a                                     ; $7d7d: $e2
    or l                                          ; $7d7e: $b5
    ld b, l                                       ; $7d7f: $45
    xor [hl]                                      ; $7d80: $ae
    ld c, d                                       ; $7d81: $4a
    ret nz                                        ; $7d82: $c0

    ld c, [hl]                                    ; $7d83: $4e
    nop                                           ; $7d84: $00
    ret nc                                        ; $7d85: $d0

    ld c, a                                       ; $7d86: $4f
    ret nz                                        ; $7d87: $c0

    ld e, a                                       ; $7d88: $5f
    ldh [$5f], a                                  ; $7d89: $e0 $5f
    add b                                         ; $7d8b: $80
    ld a, a                                       ; $7d8c: $7f
    nop                                           ; $7d8d: $00
    rst $38                                       ; $7d8e: $ff
    nop                                           ; $7d8f: $00
    ld l, e                                       ; $7d90: $6b
    jr @+$0c                                      ; $7d91: $18 $0a

    add hl, de                                    ; $7d93: $19
    add [hl]                                      ; $7d94: $86
    ld b, a                                       ; $7d95: $47
    nop                                           ; $7d96: $00
    inc h                                         ; $7d97: $24
    jp $ef28                                      ; $7d98: $c3 $28 $ef


    ld [$ffc7], sp                                ; $7d9b: $08 $c7 $ff
    nop                                           ; $7d9e: $00
    nop                                           ; $7d9f: $00
    nop                                           ; $7da0: $00
    nop                                           ; $7da1: $00
    ld h, c                                       ; $7da2: $61
    adc l                                         ; $7da3: $8d
    ret                                           ; $7da4: $c9


    dec bc                                        ; $7da5: $0b
    sbc d                                         ; $7da6: $9a
    dec de                                        ; $7da7: $1b
    ld [bc], a                                    ; $7da8: $02
    xor $7f                                       ; $7da9: $ee $7f
    inc hl                                        ; $7dab: $23
    ld a, $61                                     ; $7dac: $3e $61
    ld a, $10                                     ; $7dae: $3e $10
    ld [$00cc], sp                                ; $7db0: $08 $cc $00
    ld [bc], a                                    ; $7db3: $02
    db $ec                                        ; $7db4: $ec
    ld a, [bc]                                    ; $7db5: $0a
    db $e4                                        ; $7db6: $e4
    ld b, $f0                                     ; $7db7: $06 $f0
    ld [bc], a                                    ; $7db9: $02
    ldh a, [rP1]                                  ; $7dba: $f0 $00
    ld [c], a                                     ; $7dbc: $e2
    ldh a, [$e2]                                  ; $7dbd: $f0 $e2
    nop                                           ; $7dbf: $00
    cp $fe                                        ; $7dc0: $fe $fe
    nop                                           ; $7dc2: $00

    db $00, $01, $8f, $00, $05, $80, $7f, $bd, $41, $fc, $02, $08, $43, $02, $18, $00
    db $ff, $00, $00, $00, $ff, $00, $60, $7f, $00, $5f, $c0, $5f, $c0, $1f, $80, $9f
    db $80, $81, $10, $08, $fe, $01, $f1, $f0, $f2, $0e, $02, $18, $0f, $00, $fe, $fc
    db $82, $02, $50, $38, $20, $40, $10, $4a, $00, $c0, $38, $08, $3c, $08, $00, $5f
    db $3f, $44, $c2, $fd, $20, $00, $00, $38, $30, $01, $d0, $59, $19, $98, $2a, $ff
    db $00, $3e, $60, $82, $7c, $10, $7d, $02, $38, $df, $00, $f8, $df, $8f, $57, $8f
    db $03, $07, $df, $00, $50, $17, $c8, $20, $f7, $02, $7d, $ff, $00, $01, $f1, $0b
    db $31, $f1, $5b, $81, $42, $00, $cd, $70, $af, $54, $65, $ce, $4f, $7d, $58, $03
    db $02, $18, $7e, $02, $20, $3c, $28, $80, $7e, $80, $00, $7f, $80, $7f, $ff, $00
    db $fd, $09, $fd, $01, $03, $00, $fd, $80, $70, $80, $7f, $c8, $08, $00, $00, $00
    db $7e, $3d, $72, $e1, $01, $e0, $03, $03, $f1, $fe, $fc, $00, $01, $10, $10, $38
    db $28, $00, $02, $fc, $02, $00, $fe, $fe, $00

    nop                                           ; $7e7c: $00
    ld bc, $00f1                                  ; $7e7d: $01 $f1 $00
    db $10                                        ; $7e80: $10
    rst $38                                       ; $7e81: $ff
    ld a, a                                       ; $7e82: $7f
    ret nz                                        ; $7e83: $c0

jr_0d0_7e84:
    ld [bc], a                                    ; $7e84: $02
    ld [$c17e], sp                                ; $7e85: $08 $7e $c1
    ld b, d                                       ; $7e88: $42
    jp Jump_0d0_4400                              ; $7e89: $c3 $00 $44


    jp nz, $c145                                  ; $7e8c: $c2 $45 $c1

    ld b, [hl]                                    ; $7e8f: $46
    rst $38                                       ; $7e90: $ff
    nop                                           ; $7e91: $00
    ld b, c                                       ; $7e92: $41
    nop                                           ; $7e93: $00
    ld a, a                                       ; $7e94: $7f
    jr nc, jr_0d0_7ee6                            ; $7e95: $30 $4f

    push bc                                       ; $7e97: $c5
    dec a                                         ; $7e98: $3d
    jp $0301                                      ; $7e99: $c3 $01 $03


    nop                                           ; $7e9c: $00
    add hl, sp                                    ; $7e9d: $39
    db $fd                                        ; $7e9e: $fd
    add c                                         ; $7e9f: $81
    add d                                         ; $7ea0: $82
    ld a, h                                       ; $7ea1: $7c
    rst $38                                       ; $7ea2: $ff
    nop                                           ; $7ea3: $00
    ret nz                                        ; $7ea4: $c0

    nop                                           ; $7ea5: $00
    ldh a, [$f8]                                  ; $7ea6: $f0 $f8
    jr c, jr_0d0_7f26                             ; $7ea8: $38 $7c

    sbc h                                         ; $7eaa: $9c
    jr nc, @-$3e                                  ; $7eab: $30 $c0

    ret c                                         ; $7ead: $d8

    nop                                           ; $7eae: $00
    ldh [$78], a                                  ; $7eaf: $e0 $78
    ldh a, [$9c]                                  ; $7eb1: $f0 $9c
    ld hl, sp-$02                                 ; $7eb3: $f8 $fe
    ld bc, $8402                                  ; $7eb5: $01 $02 $84
    ld [bc], a                                    ; $7eb8: $02
    nop                                           ; $7eb9: $00
    ld [c], a                                     ; $7eba: $e2
    pop hl                                        ; $7ebb: $e1
    add d                                         ; $7ebc: $82
    add c                                         ; $7ebd: $81
    inc b                                         ; $7ebe: $04
    jr jr_0d0_7e84                                ; $7ebf: $18 $c3

    rlca                                          ; $7ec1: $07
    nop                                           ; $7ec2: $00
    jp Jump_000_3c07                              ; $7ec3: $c3 $07 $3c


    pop bc                                        ; $7ec6: $c1
    dec a                                         ; $7ec7: $3d
    pop bc                                        ; $7ec8: $c1
    ld a, h                                       ; $7ec9: $7c
    ret nz                                        ; $7eca: $c0

    db $10                                        ; $7ecb: $10
    ld a, h                                       ; $7ecc: $7c
    pop bc                                        ; $7ecd: $c1
    add hl, sp                                    ; $7ece: $39
    ld [bc], a                                    ; $7ecf: $02
    nop                                           ; $7ed0: $00
    db $fc                                        ; $7ed1: $fc
    ld [hl], d                                    ; $7ed2: $72
    ldh [$03], a                                  ; $7ed3: $e0 $03
    nop                                           ; $7ed5: $00
    pop hl                                        ; $7ed6: $e1
    ld e, [hl]                                    ; $7ed7: $5e
    ld d, h                                       ; $7ed8: $54
    ld [hl], a                                    ; $7ed9: $77
    ld h, a                                       ; $7eda: $67
    push bc                                       ; $7edb: $c5
    ld a, a                                       ; $7edc: $7f
    inc hl                                        ; $7edd: $23
    nop                                           ; $7ede: $00
    rrca                                          ; $7edf: $0f
    ld a, a                                       ; $7ee0: $7f
    add b                                         ; $7ee1: $80
    ccf                                           ; $7ee2: $3f
    ld a, h                                       ; $7ee3: $7c
    or b                                          ; $7ee4: $b0
    ld a, h                                       ; $7ee5: $7c

jr_0d0_7ee6:
    cp d                                          ; $7ee6: $ba
    nop                                           ; $7ee7: $00
    sub b                                         ; $7ee8: $90
    inc h                                         ; $7ee9: $24
    adc b                                         ; $7eea: $88
    xor d                                         ; $7eeb: $aa
    call c, $d80e                                 ; $7eec: $dc $0e $d8
    ld [de], a                                    ; $7eef: $12
    nop                                           ; $7ef0: $00
    ld a, [$d31b]                                 ; $7ef1: $fa $1b $d3
    scf                                           ; $7ef4: $37
    jp nz, $e2c1                                  ; $7ef5: $c2 $c1 $e2

    pop hl                                        ; $7ef8: $e1
    nop                                           ; $7ef9: $00
    jp nz, $e2fc                                  ; $7efa: $c2 $fc $e2

    db $fc                                        ; $7efd: $fc
    jp nz, $62fc                                  ; $7efe: $c2 $fc $62

    db $fc                                        ; $7f01: $fc
    nop                                           ; $7f02: $00
    ld h, d                                       ; $7f03: $62
    ld a, h                                       ; $7f04: $7c
    ld [hl-], a                                   ; $7f05: $32
    ld a, h                                       ; $7f06: $7c
    ld a, b                                       ; $7f07: $78
    pop bc                                        ; $7f08: $c1
    ld [hl], b                                    ; $7f09: $70
    push bc                                       ; $7f0a: $c5
    nop                                           ; $7f0b: $00
    ld [hl], b                                    ; $7f0c: $70
    push bc                                       ; $7f0d: $c5
    ld h, b                                       ; $7f0e: $60
    adc $bf                                       ; $7f0f: $ce $bf
    ld [hl], c                                    ; $7f11: $71
    cp a                                          ; $7f12: $bf
    ld h, b                                       ; $7f13: $60
    nop                                           ; $7f14: $00
    sbc a                                         ; $7f15: $9f
    ret z                                         ; $7f16: $c8

    cp a                                          ; $7f17: $bf
    ret c                                         ; $7f18: $d8

    ld [$74f7], sp                                ; $7f19: $08 $f7 $74
    ld d, e                                       ; $7f1c: $53
    nop                                           ; $7f1d: $00
    rrca                                          ; $7f1e: $0f
    sub [hl]                                      ; $7f1f: $96
    cp $7c                                        ; $7f20: $fe $7c
    ld a, h                                       ; $7f22: $7c
    add [hl]                                      ; $7f23: $86
    jr nc, jr_0d0_7f9f                            ; $7f24: $30 $79

jr_0d0_7f26:
    nop                                           ; $7f26: $00
    add a                                         ; $7f27: $87
    ld b, $b8                                     ; $7f28: $06 $b8
    or a                                          ; $7f2a: $b7
    rlca                                          ; $7f2b: $07
    call nz, $8d0f                                ; $7f2c: $c4 $0f $8d
    nop                                           ; $7f2f: $00
    ld [bc], a                                    ; $7f30: $02
    ccf                                           ; $7f31: $3f
    dec bc                                        ; $7f32: $0b
    ld [hl], $0f                                  ; $7f33: $36 $0f
    ld [hl-], a                                   ; $7f35: $32
    ld a, [bc]                                    ; $7f36: $0a
    dec a                                         ; $7f37: $3d
    nop                                           ; $7f38: $00
    or a                                          ; $7f39: $b7
    adc b                                         ; $7f3a: $88
    ld e, [hl]                                    ; $7f3b: $5e
    jr nz, @-$7c                                  ; $7f3c: $20 $82

    ld a, [hl]                                    ; $7f3e: $7e
    jp nz, $003e                                  ; $7f3f: $c2 $3e $00

    pop hl                                        ; $7f42: $e1
    jp nz, $c2e1                                  ; $7f43: $c2 $e1 $c2

    pop af                                        ; $7f46: $f1
    ld [c], a                                     ; $7f47: $e2
    ld [hl], c                                    ; $7f48: $71
    ld [c], a                                     ; $7f49: $e2
    nop                                           ; $7f4a: $00
    ld [c], a                                     ; $7f4b: $e2
    sub e                                         ; $7f4c: $93
    ld a, [c]                                     ; $7f4d: $f2
    adc e                                         ; $7f4e: $8b
    cp [hl]                                       ; $7f4f: $be
    ret c                                         ; $7f50: $d8

    cp [hl]                                       ; $7f51: $be
    call nc, $7900                                ; $7f52: $d4 $00 $79
    add $5d                                       ; $7f55: $c6 $5d
    jp nz, Jump_0d0_70bf                          ; $7f57: $c2 $bf $70

    cp a                                          ; $7f5a: $bf
    ld a, h                                       ; $7f5b: $7c
    nop                                           ; $7f5c: $00
    add b                                         ; $7f5d: $80
    ld a, a                                       ; $7f5e: $7f
    rst $38                                       ; $7f5f: $ff

jr_0d0_7f60:
    nop                                           ; $7f60: $00
    inc sp                                        ; $7f61: $33
    rrca                                          ; $7f62: $0f
    dec l                                         ; $7f63: $2d
    ld e, $00                                     ; $7f64: $1e $00
    ld e, $2f                                     ; $7f66: $1e $2f
    ld c, $9e                                     ; $7f68: $0e $9e
    ld c, $86                                     ; $7f6a: $0e $86
    ld b, $c9                                     ; $7f6c: $06 $c9
    nop                                           ; $7f6e: $00
    rst $38                                       ; $7f6f: $ff
    nop                                           ; $7f70: $00
    nop                                           ; $7f71: $00
    nop                                           ; $7f72: $00
    jr nc, jr_0d0_7feb                            ; $7f73: $30 $76

    ld [hl], l                                    ; $7f75: $75
    ld [hl], d                                    ; $7f76: $72
    nop                                           ; $7f77: $00
    or l                                          ; $7f78: $b5
    adc $93                                       ; $7f79: $ce $93
    add sp, $5a                                   ; $7f7b: $e8 $5a
    ld sp, $0031                                  ; $7f7d: $31 $31 $00

Call_0d0_7f80:
Jump_0d0_7f80:
    add b                                         ; $7f80: $80
    db $10                                        ; $7f81: $10
    ld [$0bf2], sp                                ; $7f82: $08 $f2 $0b
    ld [hl], d                                    ; $7f85: $72
    adc e                                         ; $7f86: $8b
    ld [hl], d                                    ; $7f87: $72
    ld sp, hl                                     ; $7f88: $f9
    ld [hl-], a                                   ; $7f89: $32
    nop                                           ; $7f8a: $00
    jp hl                                         ; $7f8b: $e9


    ld c, [hl]                                    ; $7f8c: $4e
    db $fc                                        ; $7f8d: $fc
    ld a, [hl]                                    ; $7f8e: $7e
    db $fc                                        ; $7f8f: $fc
    nop                                           ; $7f90: $00
    cp $fe                                        ; $7f91: $fe $fe
    nop                                           ; $7f93: $00
    nop                                           ; $7f94: $00
    and h                                         ; $7f95: $a4
    jr jr_0d0_7f60                                ; $7f96: $18 $c8

    inc c                                         ; $7f98: $0c
    dec c                                         ; $7f99: $0d
    dec b                                         ; $7f9a: $05
    ld [hl], b                                    ; $7f9b: $70
    ld de, $1170                                  ; $7f9c: $11 $70 $11

jr_0d0_7f9f:
    db $d3                                        ; $7f9f: $d3
    ld hl, $3256                                  ; $7fa0: $21 $56 $32
    cp d                                          ; $7fa3: $ba
    ld b, d                                       ; $7fa4: $42
    cp d                                          ; $7fa5: $ba
    ld b, d                                       ; $7fa6: $42
    ld h, b                                       ; $7fa7: $60
    dec d                                         ; $7fa8: $15
    inc hl                                        ; $7fa9: $23
    ld [de], a                                    ; $7faa: $12
    ret nc                                        ; $7fab: $d0

    ld [hl+], a                                   ; $7fac: $22
    adc h                                         ; $7fad: $8c
    ld sp, $0ce0                                  ; $7fae: $31 $e0 $0c
    and h                                         ; $7fb1: $a4
    dec d                                         ; $7fb2: $15
    pop af                                        ; $7fb3: $f1
    ld h, $0b                                     ; $7fb4: $26 $0b
    ld l, $ba                                     ; $7fb6: $2e $ba
    inc b                                         ; $7fb8: $04
    ld [de], a                                    ; $7fb9: $12
    inc b                                         ; $7fba: $04
    ld b, $00                                     ; $7fbb: $06 $00
    dec bc                                        ; $7fbd: $0b
    ld l, $7b                                     ; $7fbe: $2e $7b
    ld l, e                                       ; $7fc0: $6b
    ld l, h                                       ; $7fc1: $6c
    add hl, hl                                    ; $7fc2: $29
    ld b, h                                       ; $7fc3: $44
    inc b                                         ; $7fc4: $04
    ld [de], a                                    ; $7fc5: $12
    ld [$0255], sp                                ; $7fc6: $08 $55 $02
    ld c, l                                       ; $7fc9: $4d
    dec h                                         ; $7fca: $25
    nop                                           ; $7fcb: $00
    ld [$318c], sp                                ; $7fcc: $08 $8c $31
    ld [hl], a                                    ; $7fcf: $77
    ld [hl], e                                    ; $7fd0: $73
    ld b, e                                       ; $7fd1: $43
    ld e, [hl]                                    ; $7fd2: $5e
    push hl                                       ; $7fd3: $e5
    ld b, h                                       ; $7fd4: $44
    rst $38                                       ; $7fd5: $ff
    ld a, a                                       ; $7fd6: $7f
    push bc                                       ; $7fd7: $c5
    rra                                           ; $7fd8: $1f
    ldh [rTIMA], a                                ; $7fd9: $e0 $05
    and c                                         ; $7fdb: $a1
    inc b                                         ; $7fdc: $04
    rst $38                                       ; $7fdd: $ff
    ld a, a                                       ; $7fde: $7f
    add e                                         ; $7fdf: $83
    ld [hl], e                                    ; $7fe0: $73
    pop bc                                        ; $7fe1: $c1
    dec l                                         ; $7fe2: $2d
    ld h, e                                       ; $7fe3: $63
    inc c                                         ; $7fe4: $0c
    rst $38                                       ; $7fe5: $ff
    ld a, a                                       ; $7fe6: $7f
    sbc $77                                       ; $7fe7: $de $77
    pop af                                        ; $7fe9: $f1
    add hl, sp                                    ; $7fea: $39

jr_0d0_7feb:
    ld h, e                                       ; $7feb: $63
    inc c                                         ; $7fec: $0c
    rst $38                                       ; $7fed: $ff
    ld a, a                                       ; $7fee: $7f
    sbc $77                                       ; $7fef: $de $77
    pop af                                        ; $7ff1: $f1
    add hl, sp                                    ; $7ff2: $39
    ld h, e                                       ; $7ff3: $63
    inc c                                         ; $7ff4: $0c
    rst $38                                       ; $7ff5: $ff
    ld a, a                                       ; $7ff6: $7f
    sbc $77                                       ; $7ff7: $de $77
    pop af                                        ; $7ff9: $f1
    add hl, sp                                    ; $7ffa: $39
    ld h, e                                       ; $7ffb: $63
    inc c                                         ; $7ffc: $0c
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
