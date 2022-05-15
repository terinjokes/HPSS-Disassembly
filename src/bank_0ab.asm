; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ab", ROMX[$4000], BANK[$ab]

    db $ab

    db $10                                        ; $4001: $10
    inc bc                                        ; $4002: $03
    add $02                                       ; $4003: $c6 $02
    ld b, b                                       ; $4005: $40
    nop                                           ; $4006: $00

jr_0ab_4007:
    ld bc, $0300                                  ; $4007: $01 $00 $03
    nop                                           ; $400a: $00
    dec b                                         ; $400b: $05
    ld b, $0e                                     ; $400c: $06 $0e
    dec bc                                        ; $400e: $0b
    nop                                           ; $400f: $00

jr_0ab_4010:
    dec b                                         ; $4010: $05
    rra                                           ; $4011: $1f
    dec d                                         ; $4012: $15
    cpl                                           ; $4013: $2f
    dec d                                         ; $4014: $15
    ld a, $00                                     ; $4015: $3e $00
    nop                                           ; $4017: $00
    nop                                           ; $4018: $00
    ld [$5a04], sp                                ; $4019: $08 $04 $5a
    sbc h                                         ; $401c: $9c
    ld c, h                                       ; $401d: $4c

Call_0ab_401e:
jr_0ab_401e:
    dec c                                         ; $401e: $0d
    ld b, b                                       ; $401f: $40
    inc de                                        ; $4020: $13
    ld [bc], a                                    ; $4021: $02
    ld b, b                                       ; $4022: $40
    ld hl, sp+$58                                 ; $4023: $f8 $58
    cp h                                          ; $4025: $bc
    jr nc, jr_0ab_4010                            ; $4026: $30 $e8

    jr nz, jr_0ab_4032                            ; $4028: $20 $08

    nop                                           ; $402a: $00
    nop                                           ; $402b: $00
    nop                                           ; $402c: $00
    cp $e6                                        ; $402d: $fe $e6
    db $f4                                        ; $402f: $f4
    ret                                           ; $4030: $c9


    ld [hl], d                                    ; $4031: $72

jr_0ab_4032:
    ld c, l                                       ; $4032: $4d
    ld a, $00                                     ; $4033: $3e $00
    ld [hl+], a                                   ; $4035: $22
    ld a, $19                                     ; $4036: $3e $19
    nop                                           ; $4038: $00
    rst $20                                       ; $4039: $e7
    jr jr_0ab_4007                                ; $403a: $18 $cb

    inc e                                         ; $403c: $1c
    nop                                           ; $403d: $00
    inc h                                         ; $403e: $24
    ld c, [hl]                                    ; $403f: $4e
    ld [hl], b                                    ; $4040: $70
    pop bc                                        ; $4041: $c1
    call c, Call_000_0903                         ; $4042: $dc $03 $09
    inc c                                         ; $4045: $0c
    nop                                           ; $4046: $00
    dec bc                                        ; $4047: $0b
    jr jr_0ab_4061                                ; $4048: $18 $17

    nop                                           ; $404a: $00
    nop                                           ; $404b: $00
    ld [hl], b                                    ; $404c: $70
    nop                                           ; $404d: $00
    ld hl, sp+$00                                 ; $404e: $f8 $00
    adc b                                         ; $4050: $88
    adc h                                         ; $4051: $8c
    ld [hl], h                                    ; $4052: $74
    ld hl, sp-$1b                                 ; $4053: $f8 $e5
    ldh [$9d], a                                  ; $4055: $e0 $9d
    db $ed                                        ; $4057: $ed
    db $10                                        ; $4058: $10
    dec a                                         ; $4059: $3d
    rst $10                                       ; $405a: $d7
    ld l, a                                       ; $405b: $6f
    jr nc, @+$12                                  ; $405c: $30 $10

    add sp, $48                                   ; $405e: $e8 $48
    db $f4                                        ; $4060: $f4

jr_0ab_4061:
    cp [hl]                                       ; $4061: $be
    ld bc, $ed66                                  ; $4062: $01 $66 $ed
    ccf                                           ; $4065: $3f
    ld b, d                                       ; $4066: $42
    sub h                                         ; $4067: $94
    jr nz, jr_0ab_401e                            ; $4068: $20 $b4

    ld b, b                                       ; $406a: $40
    db $18, $80                                   ; $406b: $18 $80
    ld b, $38                                     ; $406d: $06 $38
    dec d                                         ; $406f: $15
    ccf                                           ; $4070: $3f
    cpl                                           ; $4071: $2f
    jr c, jr_0ab_4085                             ; $4072: $38 $11

    rra                                           ; $4074: $1f
    ld c, $00                                     ; $4075: $0e $00
    dec e                                         ; $4077: $1d
    rrca                                          ; $4078: $0f
    ld d, $20                                     ; $4079: $16 $20
    rlca                                          ; $407b: $07
    ld [hl], b                                    ; $407c: $70
    inc hl                                        ; $407d: $23
    ld [hl], c                                    ; $407e: $71
    nop                                           ; $407f: $00
    sbc c                                         ; $4080: $99
    ld h, b                                       ; $4081: $60
    ret nc                                        ; $4082: $d0

    ld h, b                                       ; $4083: $60
    sub b                                         ; $4084: $90

jr_0ab_4085:
    pop bc                                        ; $4085: $c1
    ld hl, $00e0                                  ; $4086: $21 $e0 $00
    inc hl                                        ; $4089: $23
    ldh [$2e], a                                  ; $408a: $e0 $2e
    ret c                                         ; $408c: $d8

    add hl, de                                    ; $408d: $19
    ret nc                                        ; $408e: $d0

    ld de, $00e0                                  ; $408f: $11 $e0 $00
    ld h, $38                                     ; $4092: $26 $38
    inc bc                                        ; $4094: $03
    ld b, c                                       ; $4095: $41
    rlca                                          ; $4096: $07
    rst $18                                       ; $4097: $df
    rra                                           ; $4098: $1f
    ccf                                           ; $4099: $3f
    nop                                           ; $409a: $00
    nop                                           ; $409b: $00
    rst $38                                       ; $409c: $ff
    nop                                           ; $409d: $00
    dec b                                         ; $409e: $05
    inc b                                         ; $409f: $04

jr_0ab_40a0:
    db $fd                                        ; $40a0: $fd
    cp $03                                        ; $40a1: $fe $03
    nop                                           ; $40a3: $00
    dec b                                         ; $40a4: $05
    ld sp, $632e                                  ; $40a5: $31 $2e $63
    ld e, h                                       ; $40a8: $5c
    ld c, a                                       ; $40a9: $4f
    ld [hl], b                                    ; $40aa: $70
    cpl                                           ; $40ab: $2f
    nop                                           ; $40ac: $00
    jr nc, jr_0ab_40ef                            ; $40ad: $30 $40

    jr jr_0ab_40a0                                ; $40af: $18 $ef

    ld [$0393], sp                                ; $40b1: $08 $93 $03
    add hl, hl                                    ; $40b4: $29
    nop                                           ; $40b5: $00
    ld b, l                                       ; $40b6: $45
    ret nc                                        ; $40b7: $d0

    call z, $e4eb                                 ; $40b8: $cc $eb $e4
    ldh a, [$f7]                                  ; $40bb: $f0 $f7
    db $f4                                        ; $40bd: $f4
    nop                                           ; $40be: $00
    db $e3                                        ; $40bf: $e3
    db $e3                                        ; $40c0: $e3
    inc de                                        ; $40c1: $13
    ld b, e                                       ; $40c2: $43
    dec sp                                        ; $40c3: $3b
    ld a, d                                       ; $40c4: $7a

jr_0ab_40c5:
    cp c                                          ; $40c5: $b9
    ld [bc], a                                    ; $40c6: $02

jr_0ab_40c7:
    nop                                           ; $40c7: $00
    ld bc, $ee52                                  ; $40c8: $01 $52 $ee
    sub $fa                                       ; $40cb: $d6 $fa
    db $ec                                        ; $40cd: $ec
    inc [hl]                                      ; $40ce: $34
    or h                                          ; $40cf: $b4
    nop                                           ; $40d0: $00
    ld e, h                                       ; $40d1: $5c
    ret c                                         ; $40d2: $d8

    jr c, jr_0ab_40c5                             ; $40d3: $38 $f0

    jr jr_0ab_40c7                                ; $40d5: $18 $f0

    inc e                                         ; $40d7: $1c
    ldh a, [rP1]                                  ; $40d8: $f0 $00
    scf                                           ; $40da: $37
    nop                                           ; $40db: $00
    nop                                           ; $40dc: $00
    jr nc, jr_0ab_40df                            ; $40dd: $30 $00

jr_0ab_40df:
    ld l, b                                       ; $40df: $68
    ld a, b                                       ; $40e0: $78
    db $f4                                        ; $40e1: $f4
    nop                                           ; $40e2: $00
    ld a, h                                       ; $40e3: $7c
    add b                                         ; $40e4: $80
    ld a, h                                       ; $40e5: $7c
    call nz, $78b8                                ; $40e6: $c4 $b8 $78

jr_0ab_40e9:
    rla                                           ; $40e9: $17
    jr nc, jr_0ab_40ec                            ; $40ea: $30 $00

jr_0ab_40ec:
    rrca                                          ; $40ec: $0f
    jr nz, jr_0ab_413f                            ; $40ed: $20 $50

jr_0ab_40ef:
    inc hl                                        ; $40ef: $23
    and b                                         ; $40f0: $a0
    ld c, $c0                                     ; $40f1: $0e $c0
    ret c                                         ; $40f3: $d8

    nop                                           ; $40f4: $00
    pop bc                                        ; $40f5: $c1
    jr nc, jr_0ab_40ff                            ; $40f6: $30 $07

    rra                                           ; $40f8: $1f
    ld h, e                                       ; $40f9: $63
    inc sp                                        ; $40fa: $33
    ld c, l                                       ; $40fb: $4d
    ld [hl], c                                    ; $40fc: $71
    nop                                           ; $40fd: $00
    ld c, [hl]                                    ; $40fe: $4e

jr_0ab_40ff:
    ld [hl], b                                    ; $40ff: $70

Call_0ab_4100:
    sub a                                         ; $4100: $97
    ld a, b                                       ; $4101: $78
    dec bc                                        ; $4102: $0b
    inc a                                         ; $4103: $3c
    add hl, bc                                    ; $4104: $09
    inc e                                         ; $4105: $1c
    nop                                           ; $4106: $00
    cpl                                           ; $4107: $2f
    inc c                                         ; $4108: $0c
    ccf                                           ; $4109: $3f
    call nc, $d035                                ; $410a: $d4 $35 $d0
    ld sp, $00d0                                  ; $410d: $31 $d0 $00
    ld sp, $c502                                  ; $4110: $31 $02 $c5
    cp h                                          ; $4113: $bc
    db $fc                                        ; $4114: $fc
    ret nz                                        ; $4115: $c0

    cp h                                          ; $4116: $bc
    ld [hl], e                                    ; $4117: $73
    nop                                           ; $4118: $00
    ld a, b                                       ; $4119: $78
    halt                                          ; $411a: $76
    ld [hl], c                                    ; $411b: $71
    ld b, $70                                     ; $411c: $06 $70
    ld b, $74                                     ; $411e: $06 $74
    ld a, [hl]                                    ; $4120: $7e
    nop                                           ; $4121: $00
    ld h, c                                       ; $4122: $61
    ld l, h                                       ; $4123: $6c
    xor $c6                                       ; $4124: $ee $c6
    sub d                                         ; $4126: $92
    sub d                                         ; $4127: $92
    ld de, $009b                                  ; $4128: $11 $9b $00
    ld h, l                                       ; $412b: $65
    ld bc, $d807                                  ; $412c: $01 $07 $d8
    inc bc                                        ; $412f: $03
    ld d, c                                       ; $4130: $51
    ld hl, sp+$05                                 ; $4131: $f8 $05
    nop                                           ; $4133: $00
    ldh a, [rNR44]                                ; $4134: $f0 $23
    ld [hl], b                                    ; $4136: $70
    ld [de], a                                    ; $4137: $12
    push de                                       ; $4138: $d5
    ld d, $f2                                     ; $4139: $16 $f2
    ld h, $00                                     ; $413b: $26 $00
    db $e4                                        ; $413d: $e4
    sub h                                         ; $413e: $94

jr_0ab_413f:
    ld a, d                                       ; $413f: $7a
    or b                                          ; $4140: $b0
    inc e                                         ; $4141: $1c
    ld [hl], b                                    ; $4142: $70
    jr jr_0ab_41b5                                ; $4143: $18 $70

    nop                                           ; $4145: $00
    jr jr_0ab_40e9                                ; $4146: $18 $a1

    add hl, bc                                    ; $4148: $09
    ld h, b                                       ; $4149: $60
    ld c, $6f                                     ; $414a: $0e $6f
    ld [hl], b                                    ; $414c: $70
    cpl                                           ; $414d: $2f
    nop                                           ; $414e: $00
    ld [hl], b                                    ; $414f: $70
    ld l, a                                       ; $4150: $6f
    ld h, b                                       ; $4151: $60
    ld l, [hl]                                    ; $4152: $6e
    ld h, c                                       ; $4153: $61
    db $e3                                        ; $4154: $e3
    db $ec                                        ; $4155: $ec
    rst $20                                       ; $4156: $e7
    nop                                           ; $4157: $00
    add sp, $0f                                   ; $4158: $e8 $0f
    add e                                         ; $415a: $83
    inc de                                        ; $415b: $13
    call Call_0ab_401e                            ; $415c: $cd $1e $40
    adc h                                         ; $415f: $8c
    nop                                           ; $4160: $00
    add b                                         ; $4161: $80
    db $ec                                        ; $4162: $ec
    inc c                                         ; $4163: $0c
    db $10                                        ; $4164: $10
    ld [c], a                                     ; $4165: $e2
    sub b                                         ; $4166: $90
    ld h, [hl]                                    ; $4167: $66
    reti                                          ; $4168: $d9


    nop                                           ; $4169: $00
    dec h                                         ; $416a: $25
    ld [hl], e                                    ; $416b: $73
    ld c, h                                       ; $416c: $4c
    rra                                           ; $416d: $1f
    ld h, b                                       ; $416e: $60
    adc [hl]                                      ; $416f: $8e
    or c                                          ; $4170: $b1
    sbc $00                                       ; $4171: $de $00
    ret nz                                        ; $4173: $c0

    ret nz                                        ; $4174: $c0

    pop bc                                        ; $4175: $c1
    inc bc                                        ; $4176: $03
    dec bc                                        ; $4177: $0b
    inc bc                                        ; $4178: $03
    ld a, [bc]                                    ; $4179: $0a
    db $e3                                        ; $417a: $e3
    nop                                           ; $417b: $00
    add sp, -$30                                  ; $417c: $e8 $d0
    ld sp, $33d1                                  ; $417e: $31 $d1 $33
    pop de                                        ; $4181: $d1
    inc sp                                        ; $4182: $33
    jp nc, $3e00                                  ; $4183: $d2 $00 $3e

    sbc $3e                                       ; $4186: $de $3e
    ret nz                                        ; $4188: $c0

    sbc $e0                                       ; $4189: $de $e0
    inc l                                         ; $418b: $2c
    ld [hl], d                                    ; $418c: $72
    nop                                           ; $418d: $00
    sub d                                         ; $418e: $92
    ld a, [hl]                                    ; $418f: $7e
    ld bc, $7c43                                  ; $4190: $01 $43 $7c
    ld c, a                                       ; $4193: $4f
    ld [hl], b                                    ; $4194: $70
    ld a, h                                       ; $4195: $7c
    nop                                           ; $4196: $00
    ld b, e                                       ; $4197: $43
    ld a, [hl]                                    ; $4198: $7e
    ld b, c                                       ; $4199: $41
    rra                                           ; $419a: $1f
    ld hl, $300f                                  ; $419b: $21 $0f $30
    rra                                           ; $419e: $1f
    nop                                           ; $419f: $00
    ld h, a                                       ; $41a0: $67
    ldh [$29], a                                  ; $41a1: $e0 $29
    ld h, b                                       ; $41a3: $60
    sub c                                         ; $41a4: $91
    ld bc, $72e3                                  ; $41a5: $01 $e3 $72

jr_0ab_41a8:
    nop                                           ; $41a8: $00
    add [hl]                                      ; $41a9: $86
    ld a, [$f10e]                                 ; $41aa: $fa $0e $f1
    inc c                                         ; $41ad: $0c
    pop af                                        ; $41ae: $f1
    dec c                                         ; $41af: $0d
    ldh a, [rP1]                                  ; $41b0: $f0 $00
    inc e                                         ; $41b2: $1c
    ld a, c                                       ; $41b3: $79
    rra                                           ; $41b4: $1f

jr_0ab_41b5:
    ld l, a                                       ; $41b5: $6f
    rra                                           ; $41b6: $1f
    rra                                           ; $41b7: $1f
    ld a, a                                       ; $41b8: $7f
    ld l, a                                       ; $41b9: $6f
    nop                                           ; $41ba: $00
    rra                                           ; $41bb: $1f
    ret nc                                        ; $41bc: $d0

    jr nz, jr_0ab_41a8                            ; $41bd: $20 $e9

    ld de, $f80f                                  ; $41bf: $11 $0f $f8
    ld d, a                                       ; $41c2: $57
    nop                                           ; $41c3: $00

jr_0ab_41c4:
    ld [hl], b                                    ; $41c4: $70
    rlca                                          ; $41c5: $07
    inc e                                         ; $41c6: $1c
    inc bc                                        ; $41c7: $03
    ld a, [hl-]                                   ; $41c8: $3a
    dec sp                                        ; $41c9: $3b
    inc bc                                        ; $41ca: $03
    ld [hl], c                                    ; $41cb: $71
    nop                                           ; $41cc: $00
    dec c                                         ; $41cd: $0d

jr_0ab_41ce:
    ld e, $e8                                     ; $41ce: $1e $e8
    ld c, $c5                                     ; $41d0: $0e $c5
    db $e3                                        ; $41d2: $e3
    call Call_000_00f7                            ; $41d3: $cd $f7 $00
    db $e3                                        ; $41d6: $e3
    ld hl, sp-$0c                                 ; $41d7: $f8 $f4
    ldh a, [$64]                                  ; $41d9: $f0 $64
    dec bc                                        ; $41db: $0b
    di                                            ; $41dc: $f3
    xor e                                         ; $41dd: $ab
    nop                                           ; $41de: $00
    db $e3                                        ; $41df: $e3
    dec de                                        ; $41e0: $1b
    inc bc                                        ; $41e1: $03
    rla                                           ; $41e2: $17
    rst $00                                       ; $41e3: $c7
    rst $00                                       ; $41e4: $c7
    rla                                           ; $41e5: $17
    rst $00                                       ; $41e6: $c7
    nop                                           ; $41e7: $00
    rla                                           ; $41e8: $17
    db $e3                                        ; $41e9: $e3
    add sp, -$0d                                  ; $41ea: $e8 $f3
    ldh a, [$f1]                                  ; $41ec: $f0 $f1
    db $f4                                        ; $41ee: $f4
    ld [bc], a                                    ; $41ef: $02

jr_0ab_41f0:
    nop                                           ; $41f0: $00
    ld b, $03                                     ; $41f1: $06 $03
    ld [bc], a                                    ; $41f3: $02
    ei                                            ; $41f4: $fb
    ld hl, sp-$07                                 ; $41f5: $f8 $f9
    ld a, [$0001]                                 ; $41f7: $fa $01 $00
    db $fc                                        ; $41fa: $fc
    sbc c                                         ; $41fb: $99
    ld e, c                                       ; $41fc: $59
    ld b, $d6                                     ; $41fd: $06 $d6
    rrca                                          ; $41ff: $0f
    jr z, jr_0ab_4239                             ; $4200: $28 $37

    nop                                           ; $4202: $00
    ld a, d                                       ; $4203: $7a
    cp a                                          ; $4204: $bf
    ld [hl], h                                    ; $4205: $74
    cp b                                          ; $4206: $b8
    ld hl, sp+$78                                 ; $4207: $f8 $78
    db $e3                                        ; $4209: $e3
    ld a, c                                       ; $420a: $79
    nop                                           ; $420b: $00
    pop bc                                        ; $420c: $c1
    rlca                                          ; $420d: $07
    ld a, b                                       ; $420e: $78
    ld h, b                                       ; $420f: $60
    rra                                           ; $4210: $1f
    sbc h                                         ; $4211: $9c
    add e                                         ; $4212: $83
    add b                                         ; $4213: $80
    nop                                           ; $4214: $00
    and b                                         ; $4215: $a0
    jp nc, $0c2d                                  ; $4216: $d2 $2d $0c

    ld h, a                                       ; $4219: $67
    ld e, $73                                     ; $421a: $1e $73
    dec sp                                        ; $421c: $3b
    nop                                           ; $421d: $00
    adc b                                         ; $421e: $88
    dec bc                                        ; $421f: $0b
    add sp, $13                                   ; $4220: $e8 $13
    ret nz                                        ; $4222: $c0

    dec sp                                        ; $4223: $3b
    inc a                                         ; $4224: $3c
    ld a, $00                                     ; $4225: $3e $00
    ld a, c                                       ; $4227: $79
    ld d, $c0                                     ; $4228: $16 $c0
    sbc l                                         ; $422a: $9d
    ld c, h                                       ; $422b: $4c
    jr nc, jr_0ab_4260                            ; $422c: $30 $32

    ld c, b                                       ; $422e: $48
    nop                                           ; $422f: $00
    ld h, d                                       ; $4230: $62
    rrca                                          ; $4231: $0f
    ld [hl], b                                    ; $4232: $70

Jump_0ab_4233:
    sbc a                                         ; $4233: $9f
    add b                                         ; $4234: $80
    nop                                           ; $4235: $00
    pop hl                                        ; $4236: $e1
    db $fd                                        ; $4237: $fd
    nop                                           ; $4238: $00

jr_0ab_4239:
    adc l                                         ; $4239: $8d
    jr nz, jr_0ab_41f0                            ; $423a: $20 $b4

    jr nc, jr_0ab_41c4                            ; $423c: $30 $86

    jr c, jr_0ab_41ce                             ; $423e: $38 $8e

    add hl, hl                                    ; $4240: $29
    nop                                           ; $4241: $00
    db $fd                                        ; $4242: $fd
    sbc a                                         ; $4243: $9f
    ld [de], a                                    ; $4244: $12
    ld c, $6e                                     ; $4245: $0e $6e
    db $e4                                        ; $4247: $e4
    dec d                                         ; $4248: $15
    sub c                                         ; $4249: $91
    nop                                           ; $424a: $00
    ld [hl+], a                                   ; $424b: $22
    or $25                                        ; $424c: $f6 $25
    rst $38                                       ; $424e: $ff
    cp c                                          ; $424f: $b9
    jr @+$13                                      ; $4250: $18 $11

    inc a                                         ; $4252: $3c
    nop                                           ; $4253: $00
    add hl, de                                    ; $4254: $19
    add a                                         ; $4255: $87
    scf                                           ; $4256: $37
    adc a                                         ; $4257: $8f
    cpl                                           ; $4258: $2f
    cpl                                           ; $4259: $2f
    adc a                                         ; $425a: $8f
    adc a                                         ; $425b: $8f
    db $10                                        ; $425c: $10
    ld l, a                                       ; $425d: $6f
    sbc a                                         ; $425e: $9f
    ld e, a                                       ; $425f: $5f

jr_0ab_4260:
    ld [bc], a                                    ; $4260: $02
    ld [$bf3f], sp                                ; $4261: $08 $3f $bf
    ld bc, $00fc                                  ; $4264: $01 $fc $00
    db $fc                                        ; $4267: $fc
    db $fd                                        ; $4268: $fd
    rst $38                                       ; $4269: $ff
    cp $02                                        ; $426a: $fe $02
    inc bc                                        ; $426c: $03
    ld bc, $0002                                  ; $426d: $01 $02 $00
    inc bc                                        ; $4270: $03
    nop                                           ; $4271: $00
    ld bc, $0002                                  ; $4272: $01 $02 $00
    nop                                           ; $4275: $00
    ld a, [hl-]                                   ; $4276: $3a
    inc bc                                        ; $4277: $03
    nop                                           ; $4278: $00
    db $fc                                        ; $4279: $fc
    db $e4                                        ; $427a: $e4
    ld a, [hl]                                    ; $427b: $7e
    cp $ed                                        ; $427c: $fe $ed
    rlca                                          ; $427e: $07
    xor $a5                                       ; $427f: $ee $a5
    nop                                           ; $4281: $00
    call $8726                                    ; $4282: $cd $26 $87
    ld a, [hl]                                    ; $4285: $7e
    ld a, a                                       ; $4286: $7f
    ld b, l                                       ; $4287: $45
    sbc h                                         ; $4288: $9c
    ld b, b                                       ; $4289: $40
    nop                                           ; $428a: $00
    adc a                                         ; $428b: $8f
    db $ed                                        ; $428c: $ed
    rrca                                          ; $428d: $0f
    ld c, $63                                     ; $428e: $0e $63
    ld [bc], a                                    ; $4290: $02
    adc [hl]                                      ; $4291: $8e
    dec c                                         ; $4292: $0d
    nop                                           ; $4293: $00
    rlca                                          ; $4294: $07
    add c                                         ; $4295: $81
    ld a, e                                       ; $4296: $7b
    add b                                         ; $4297: $80
    ld e, l                                       ; $4298: $5d
    ld de, $8c80                                  ; $4299: $11 $80 $8c
    nop                                           ; $429c: $00
    pop bc                                        ; $429d: $c1
    ld b, c                                       ; $429e: $41
    ld l, h                                       ; $429f: $6c
    adc e                                         ; $42a0: $8b
    jr nz, jr_0ab_42a7                            ; $42a1: $20 $04

    pop hl                                        ; $42a3: $e1
    ld l, h                                       ; $42a4: $6c
    nop                                           ; $42a5: $00
    and l                                         ; $42a6: $a5

jr_0ab_42a7:
    inc l                                         ; $42a7: $2c
    add a                                         ; $42a8: $87
    pop hl                                        ; $42a9: $e1
    inc bc                                        ; $42aa: $03
    ret nz                                        ; $42ab: $c0

    jp $00f0                                      ; $42ac: $c3 $f0 $00


    or a                                          ; $42af: $b7
    pop af                                        ; $42b0: $f1
    rrca                                          ; $42b1: $0f
    adc b                                         ; $42b2: $88
    ld b, $60                                     ; $42b3: $06 $60
    add b                                         ; $42b5: $80
    jr nc, jr_0ab_42b8                            ; $42b6: $30 $00

jr_0ab_42b8:
    add c                                         ; $42b8: $81
    ld h, c                                       ; $42b9: $61
    ld c, c                                       ; $42ba: $49
    rla                                           ; $42bb: $17
    and h                                         ; $42bc: $a4
    ld a, [de]                                    ; $42bd: $1a
    ld a, h                                       ; $42be: $7c
    ret nz                                        ; $42bf: $c0

    nop                                           ; $42c0: $00
    jp c, $81c3                                   ; $42c1: $da $c3 $81

    db $fd                                        ; $42c4: $fd
    ld d, e                                       ; $42c5: $53

jr_0ab_42c6:
    or $77                                        ; $42c6: $f6 $77
    and l                                         ; $42c8: $a5
    nop                                           ; $42c9: $00
    push hl                                       ; $42ca: $e5
    ld d, [hl]                                    ; $42cb: $56
    call c, $be3d                                 ; $42cc: $dc $3d $be
    and [hl]                                      ; $42cf: $a6
    add b                                         ; $42d0: $80
    ccf                                           ; $42d1: $3f
    nop                                           ; $42d2: $00
    add b                                         ; $42d3: $80
    ccf                                           ; $42d4: $3f
    nop                                           ; $42d5: $00
    add b                                         ; $42d6: $80
    add b                                         ; $42d7: $80

jr_0ab_42d8:
    ld b, b                                       ; $42d8: $40
    add b                                         ; $42d9: $80
    ret nz                                        ; $42da: $c0

    ld [$00c0], sp                                ; $42db: $08 $c0 $00
    add b                                         ; $42de: $80

jr_0ab_42df:
    ld b, b                                       ; $42df: $40
    ld a, $6a                                     ; $42e0: $3e $6a
    nop                                           ; $42e2: $00
    nop                                           ; $42e3: $00
    ld h, a                                       ; $42e4: $67
    nop                                           ; $42e5: $00
    ld e, b                                       ; $42e6: $58
    ld hl, $230d                                  ; $42e7: $21 $0d $23
    dec l                                         ; $42ea: $2d
    dec bc                                        ; $42eb: $0b
    inc a                                         ; $42ec: $3c
    inc d                                         ; $42ed: $14
    db $10                                        ; $42ee: $10
    ld a, [bc]                                    ; $42ef: $0a
    call c, $23d5                                 ; $42f0: $dc $d5 $23
    nop                                           ; $42f3: $00
    nop                                           ; $42f4: $00
    ld h, [hl]                                    ; $42f5: $66
    jr c, jr_0ab_42df                             ; $42f6: $38 $e7

    nop                                           ; $42f8: $00
    ld e, e                                       ; $42f9: $5b
    jp nc, Jump_000_3e12                          ; $42fa: $d2 $12 $3e

    jp nz, $3808                                  ; $42fd: $c2 $08 $38

Call_0ab_4300:
    rst $38                                       ; $4300: $ff
    add b                                         ; $4301: $80
    xor e                                         ; $4302: $ab
    ld [de], a                                    ; $4303: $12
    inc e                                         ; $4304: $1c
    jr nz, jr_0ab_42c6                            ; $4305: $20 $bf

    pop de                                        ; $4307: $d1
    ld c, d                                       ; $4308: $4a
    sbc c                                         ; $4309: $99
    jp nc, $1930                                  ; $430a: $d2 $30 $19

    nop                                           ; $430d: $00
    ld b, d                                       ; $430e: $42
    ld [bc], a                                    ; $430f: $02
    inc b                                         ; $4310: $04
    ld [$625a], sp                                ; $4311: $08 $5a $62
    jr jr_0ab_42d8                                ; $4314: $18 $c2

    ld [bc], a                                    ; $4316: $02
    ld b, c                                       ; $4317: $41
    dec a                                         ; $4318: $3d
    ld a, h                                       ; $4319: $7c
    ld bc, $1c0c                                  ; $431a: $01 $0c $1c
    db $10                                        ; $431d: $10
    jr @-$02                                      ; $431e: $18 $fc

    nop                                           ; $4320: $00
    ld [$3484], sp                                ; $4321: $08 $84 $34
    call z, $fc30                                 ; $4324: $cc $30 $fc
    inc l                                         ; $4327: $2c
    dec sp                                        ; $4328: $3b
    inc c                                         ; $4329: $0c
    dec de                                        ; $432a: $1b
    dec de                                        ; $432b: $1b
    rlc e                                         ; $432c: $cb $03
    inc h                                         ; $432e: $24
    db $10                                        ; $432f: $10
    and d                                         ; $4330: $a2
    ld e, d                                       ; $4331: $5a
    db $10                                        ; $4332: $10
    inc bc                                        ; $4333: $03
    adc c                                         ; $4334: $89
    ld [bc], a                                    ; $4335: $02
    ld h, b                                       ; $4336: $60
    nop                                           ; $4337: $00
    ld bc, $23f8                                  ; $4338: $01 $f8 $23
    ld [$0703], sp                                ; $433b: $08 $03 $07
    ld b, $ff                                     ; $433e: $06 $ff
    ldh a, [rP1]                                  ; $4340: $f0 $00
    ld hl, sp-$1a                                 ; $4342: $f8 $e6
    inc a                                         ; $4344: $3c
    inc c                                         ; $4345: $0c
    rst $30                                       ; $4346: $f7
    set 0, b                                      ; $4347: $cb $c0
    cp [hl]                                       ; $4349: $be
    nop                                           ; $434a: $00
    add b                                         ; $434b: $80
    ld a, h                                       ; $434c: $7c
    and $06                                       ; $434d: $e6 $06
    jp z, Jump_000_051b                           ; $434f: $ca $1b $05

    ld [hl], $00                                  ; $4352: $36 $00
    add hl, bc                                    ; $4354: $09
    push hl                                       ; $4355: $e5
    ld a, [bc]                                    ; $4356: $0a
    nop                                           ; $4357: $00
    rst $38                                       ; $4358: $ff
    nop                                           ; $4359: $00
    rlca                                          ; $435a: $07
    nop                                           ; $435b: $00
    nop                                           ; $435c: $00
    ld hl, sp+$78                                 ; $435d: $f8 $78
    ld h, h                                       ; $435f: $64
    jr c, jr_0ab_43df                             ; $4360: $38 $7d

    ld [hl], c                                    ; $4362: $71
    add hl, bc                                    ; $4363: $09
    cp b                                          ; $4364: $b8
    ld [$235b], sp                                ; $4365: $08 $5b $23
    cp e                                          ; $4368: $bb
    ret z                                         ; $4369: $c8

    ld d, b                                       ; $436a: $50
    ld [$00ff], sp                                ; $436b: $08 $ff $00
    rra                                           ; $436e: $1f
    nop                                           ; $436f: $00
    nop                                           ; $4370: $00
    rst $28                                       ; $4371: $ef
    rrca                                          ; $4372: $0f
    or a                                          ; $4373: $b7
    ld b, a                                       ; $4374: $47
    add b                                         ; $4375: $80
    ld h, b                                       ; $4376: $60
    or b                                          ; $4377: $b0
    ld c, b                                       ; $4378: $48
    ld d, b                                       ; $4379: $50
    ld h, b                                       ; $437a: $60
    ret c                                         ; $437b: $d8

    ld bc, $0403                                  ; $437c: $01 $03 $04
    nop                                           ; $437f: $00
    nop                                           ; $4380: $00
    ld [bc], a                                    ; $4381: $02
    inc bc                                        ; $4382: $03
    nop                                           ; $4383: $00
    ld c, $07                                     ; $4384: $0e $07
    inc e                                         ; $4386: $1c
    ld c, $38                                     ; $4387: $0e $38
    add hl, de                                    ; $4389: $19
    ldh a, [$37]                                  ; $438a: $f0 $37
    nop                                           ; $438c: $00
    ldh [$6f], a                                  ; $438d: $e0 $6f
    ld [hl], b                                    ; $438f: $70
    ld sp, $0be3                                  ; $4390: $31 $e3 $0b
    add b                                         ; $4393: $80
    ld e, d                                       ; $4394: $5a
    nop                                           ; $4395: $00
    ld a, [hl-]                                   ; $4396: $3a
    ld [bc], a                                    ; $4397: $02
    ld hl, sp+$03                                 ; $4398: $f8 $03
    ld sp, hl                                     ; $439a: $f9
    inc bc                                        ; $439b: $03
    ldh [rSC], a                                  ; $439c: $e0 $02
    nop                                           ; $439e: $00
    ld bc, $04dd                                  ; $439f: $01 $dd $04
    db $e4                                        ; $43a2: $e4
    cpl                                           ; $43a3: $2f
    ld c, c                                       ; $43a4: $49
    cp h                                          ; $43a5: $bc
    or e                                          ; $43a6: $b3
    nop                                           ; $43a7: $00
    or e                                          ; $43a8: $b3
    jr nc, jr_0ab_43cd                            ; $43a9: $30 $22

    xor b                                         ; $43ab: $a8
    ld b, c                                       ; $43ac: $41
    ld l, e                                       ; $43ad: $6b
    ld bc, $00d9                                  ; $43ae: $01 $d9 $00
    ld bc, $56b2                                  ; $43b1: $01 $b2 $56
    sub l                                         ; $43b4: $95
    db $ed                                        ; $43b5: $ed

jr_0ab_43b6:
    ld a, [hl+]                                   ; $43b6: $2a
    sbc e                                         ; $43b7: $9b
    rra                                           ; $43b8: $1f
    nop                                           ; $43b9: $00
    scf                                           ; $43ba: $37
    ccf                                           ; $43bb: $3f
    sbc h                                         ; $43bc: $9c
    db $ec                                        ; $43bd: $ec
    jp z, Jump_0ab_4233                           ; $43be: $ca $33 $42

    pop bc                                        ; $43c1: $c1
    nop                                           ; $43c2: $00
    cp h                                          ; $43c3: $bc
    cp h                                          ; $43c4: $bc
    and b                                         ; $43c5: $a0
    ld h, b                                       ; $43c6: $60
    add b                                         ; $43c7: $80
    ld c, h                                       ; $43c8: $4c
    sub [hl]                                      ; $43c9: $96
    adc b                                         ; $43ca: $88
    nop                                           ; $43cb: $00
    nop                                           ; $43cc: $00

jr_0ab_43cd:
    inc e                                         ; $43cd: $1c
    or b                                          ; $43ce: $b0
    call c, $9c7e                                 ; $43cf: $dc $7e $9c
    pop af                                        ; $43d2: $f1
    jp hl                                         ; $43d3: $e9


    jr nz, jr_0ab_43b6                            ; $43d4: $20 $e0

    add d                                         ; $43d6: $82
    ret nc                                        ; $43d7: $d0

    ld d, b                                       ; $43d8: $50
    add b                                         ; $43d9: $80
    ret nz                                        ; $43da: $c0

jr_0ab_43db:
    nop                                           ; $43db: $00
    ld bc, $0006                                  ; $43dc: $01 $06 $00

jr_0ab_43df:
    rlca                                          ; $43df: $07
    inc c                                         ; $43e0: $0c
    ld b, $1c                                     ; $43e1: $06 $1c
    ld c, c                                       ; $43e3: $49
    ld a, b                                       ; $43e4: $78
    rst $10                                       ; $43e5: $d7
    ldh a, [rP1]                                  ; $43e6: $f0 $00
    adc a                                         ; $43e8: $8f
    ldh [$8f], a                                  ; $43e9: $e0 $8f
    ldh [rVBK], a                                 ; $43eb: $e0 $4f
    ldh [$80], a                                  ; $43ed: $e0 $80
    rra                                           ; $43ef: $1f
    nop                                           ; $43f0: $00
    ld a, a                                       ; $43f1: $7f
    ld a, a                                       ; $43f2: $7f
    cp $01                                        ; $43f3: $fe $01
    db $fd                                        ; $43f5: $fd
    ld bc, $01fc                                  ; $43f6: $01 $fc $01
    nop                                           ; $43f9: $00
    db $fc                                        ; $43fa: $fc
    db $fd                                        ; $43fb: $fd
    db $fc                                        ; $43fc: $fc
    nop                                           ; $43fd: $00
    db $fd                                        ; $43fe: $fd
    ld bc, $d60f                                  ; $43ff: $01 $0f $d6
    nop                                           ; $4402: $00
    ld c, $10                                     ; $4403: $0e $10
    adc [hl]                                      ; $4405: $8e
    ret nz                                        ; $4406: $c0

    ld b, [hl]                                    ; $4407: $46
    jp nz, $f4fc                                  ; $4408: $c2 $fc $f4

    nop                                           ; $440b: $00
    ei                                            ; $440c: $fb
    db $fc                                        ; $440d: $fc
    ld a, b                                       ; $440e: $78
    db $fc                                        ; $440f: $fc
    jr jr_0ab_4476                                ; $4410: $18 $64

    ld h, [hl]                                    ; $4412: $66
    ld bc, $9700                                  ; $4413: $01 $00 $97
    sub b                                         ; $4416: $90
    and $01                                       ; $4417: $e6 $01
    rla                                           ; $4419: $17
    pop af                                        ; $441a: $f1
    ld l, a                                       ; $441b: $6f
    rra                                           ; $441c: $1f
    nop                                           ; $441d: $00
    ld b, h                                       ; $441e: $44
    inc l                                         ; $441f: $2c
    add sp, $08                                   ; $4420: $e8 $08
    ld [hl], h                                    ; $4422: $74
    add h                                         ; $4423: $84
    ld [hl-], a                                   ; $4424: $32
    ld d, h                                       ; $4425: $54
    nop                                           ; $4426: $00
    ld c, e                                       ; $4427: $4b
    sub l                                         ; $4428: $95
    push af                                       ; $4429: $f5
    inc bc                                        ; $442a: $03
    jp $8603                                      ; $442b: $c3 $03 $86


    pop af                                        ; $442e: $f1
    nop                                           ; $442f: $00
    ld b, b                                       ; $4430: $40
    add $53                                       ; $4431: $c6 $53
    ld b, d                                       ; $4433: $42
    cp $09                                        ; $4434: $fe $09
    inc bc                                        ; $4436: $03
    inc b                                         ; $4437: $04
    nop                                           ; $4438: $00
    ld a, a                                       ; $4439: $7f
    ld [hl], b                                    ; $443a: $70
    ccf                                           ; $443b: $3f
    sbc h                                         ; $443c: $9c
    jr c, jr_0ab_43db                             ; $443d: $38 $9c

    ld a, [de]                                    ; $443f: $1a
    ld d, $00                                     ; $4440: $16 $00
    ld l, l                                       ; $4442: $6d
    ld h, e                                       ; $4443: $63
    inc bc                                        ; $4444: $03
    sbc l                                         ; $4445: $9d
    inc bc                                        ; $4446: $03
    db $fc                                        ; $4447: $fc
    ld h, b                                       ; $4448: $60
    nop                                           ; $4449: $00
    nop                                           ; $444a: $00
    and b                                         ; $444b: $a0
    sbc b                                         ; $444c: $98
    jr nc, @+$0e                                  ; $444d: $30 $0c

    sub h                                         ; $444f: $94
    ld c, $ed                                     ; $4450: $0e $ed
    rrca                                          ; $4452: $0f
    nop                                           ; $4453: $00
    ld [hl], l                                    ; $4454: $75
    rlca                                          ; $4455: $07
    add h                                         ; $4456: $84
    or e                                          ; $4457: $b3
    ld b, l                                       ; $4458: $45
    jp nc, Jump_0ab_604f                          ; $4459: $d2 $4f $60

    nop                                           ; $445c: $00
    ld [hl], b                                    ; $445d: $70
    ld b, a                                       ; $445e: $47
    ld [hl], b                                    ; $445f: $70
    rlca                                          ; $4460: $07
    rla                                           ; $4461: $17
    jr nc, jr_0ab_447f                            ; $4462: $30 $1b

    jr c, jr_0ab_4466                             ; $4464: $38 $00

jr_0ab_4466:
    jp $e3f8                                      ; $4466: $c3 $f8 $e3


    ld hl, sp+$03                                 ; $4469: $f8 $03
    jr @-$06                                      ; $446b: $18 $f8

    inc bc                                        ; $446d: $03
    nop                                           ; $446e: $00
    or $07                                        ; $446f: $f6 $07
    db $f4                                        ; $4471: $f4
    rlca                                          ; $4472: $07
    ldh a, [rTAC]                                 ; $4473: $f0 $07
    rst $30                                       ; $4475: $f7

jr_0ab_4476:
    rlca                                          ; $4476: $07
    nop                                           ; $4477: $00
    ld a, [$fc03]                                 ; $4478: $fa $03 $fc
    ld bc, $fe00                                  ; $447b: $01 $00 $fe
    rst $30                                       ; $447e: $f7

jr_0ab_447f:
    rst $08                                       ; $447f: $cf
    nop                                           ; $4480: $00
    push af                                       ; $4481: $f5
    dec b                                         ; $4482: $05
    db $f4                                        ; $4483: $f4
    dec b                                         ; $4484: $05
    rrca                                          ; $4485: $0f
    ld hl, sp+$0b                                 ; $4486: $f8 $0b
    ld [$0600], a                                 ; $4488: $ea $00 $06
    ld e, $31                                     ; $448b: $1e $31
    ld c, $18                                     ; $448d: $0e $18
    ld l, a                                       ; $448f: $6f
    jp z, $0032                                   ; $4490: $ca $32 $00

    adc d                                         ; $4493: $8a
    ld d, d                                       ; $4494: $52
    ret z                                         ; $4495: $c8

    dec bc                                        ; $4496: $0b
    ld hl, sp+$07                                 ; $4497: $f8 $07
    rst $38                                       ; $4499: $ff
    rlca                                          ; $449a: $07
    nop                                           ; $449b: $00
    ld hl, sp+$0b                                 ; $449c: $f8 $0b
    and $16                                       ; $449e: $e6 $16
    ret nz                                        ; $44a0: $c0

    ld hl, $670f                                  ; $44a1: $21 $0f $67
    nop                                           ; $44a4: $00
    rlca                                          ; $44a5: $07
    ld l, l                                       ; $44a6: $6d
    rrca                                          ; $44a7: $0f
    ld bc, $1e01                                  ; $44a8: $01 $01 $1e
    nop                                           ; $44ab: $00
    or b                                          ; $44ac: $b0
    nop                                           ; $44ad: $00
    rrca                                          ; $44ae: $0f
    ret z                                         ; $44af: $c8

    ld e, $11                                     ; $44b0: $1e $11
    ld e, $e0                                     ; $44b2: $1e $e0
    rst $38                                       ; $44b4: $ff
    cp $00                                        ; $44b5: $fe $00
    inc bc                                        ; $44b7: $03
    add a                                         ; $44b8: $87
    jr nc, jr_0ab_44ca                            ; $44b9: $30 $0f

    ld a, h                                       ; $44bb: $7c
    ld a, b                                       ; $44bc: $78
    inc bc                                        ; $44bd: $03
    rlca                                          ; $44be: $07
    nop                                           ; $44bf: $00
    ld a, b                                       ; $44c0: $78
    nop                                           ; $44c1: $00
    rst $30                                       ; $44c2: $f7
    rst $38                                       ; $44c3: $ff
    or a                                          ; $44c4: $b7
    ld [hl], a                                    ; $44c5: $77
    ld d, h                                       ; $44c6: $54
    jp nz, $cc00                                  ; $44c7: $c2 $00 $cc

jr_0ab_44ca:
    ld b, d                                       ; $44ca: $42
    ld c, $03                                     ; $44cb: $0e $03
    call z, $0c03                                 ; $44cd: $cc $03 $0c
    ldh [rP1], a                                  ; $44d0: $e0 $00
    call c, $90a0                                 ; $44d2: $dc $a0 $90
    and b                                         ; $44d5: $a0
    ret nz                                        ; $44d6: $c0

    and b                                         ; $44d7: $a0
    dec b                                         ; $44d8: $05
    inc e                                         ; $44d9: $1c
    ld [bc], a                                    ; $44da: $02
    add hl, de                                    ; $44db: $19
    inc e                                         ; $44dc: $1c
    add hl, bc                                    ; $44dd: $09
    inc c                                         ; $44de: $0c
    db $fc                                        ; $44df: $fc

Jump_0ab_44e0:
    ld a, [c]                                     ; $44e0: $f2
    ld [bc], a                                    ; $44e1: $02
    nop                                           ; $44e2: $00
    ld a, [$fc00]                                 ; $44e3: $fa $00 $fc
    ei                                            ; $44e6: $fb
    ld b, $03                                     ; $44e7: $06 $03
    cp $00                                        ; $44e9: $fe $00
    nop                                           ; $44eb: $00
    cp $08                                        ; $44ec: $fe $08
    rst $38                                       ; $44ee: $ff
    nop                                           ; $44ef: $00
    cp $fe                                        ; $44f0: $fe $fe
    db $e4                                        ; $44f2: $e4
    ld [$0362], sp                                ; $44f3: $08 $62 $03
    ld e, c                                       ; $44f6: $59
    nop                                           ; $44f7: $00
    ld e, b                                       ; $44f8: $58
    ld a, h                                       ; $44f9: $7c
    sbc a                                         ; $44fa: $9f
    ld e, l                                       ; $44fb: $5d
    ld d, l                                       ; $44fc: $55
    dec de                                        ; $44fd: $1b
    daa                                           ; $44fe: $27
    inc sp                                        ; $44ff: $33
    nop                                           ; $4500: $00
    ld a, $27                                     ; $4501: $3e $27
    ld a, $c8                                     ; $4503: $3e $c8
    ld a, [bc]                                    ; $4505: $0a
    ldh [rTMA], a                                 ; $4506: $e0 $06
    add sp, $00                                   ; $4508: $e8 $00
    inc c                                         ; $450a: $0c
    ld hl, sp-$3f                                 ; $450b: $f8 $c1
    ldh [$87], a                                  ; $450d: $e0 $87
    rra                                           ; $450f: $1f
    ld c, h                                       ; $4510: $4c
    add hl, sp                                    ; $4511: $39
    nop                                           ; $4512: $00
    pop bc                                        ; $4513: $c1
    inc a                                         ; $4514: $3c
    dec b                                         ; $4515: $05
    ld a, l                                       ; $4516: $7d
    ld bc, $7eaa                                  ; $4517: $01 $aa $7e
    inc b                                         ; $451a: $04
    nop                                           ; $451b: $00
    sbc $9c                                       ; $451c: $de $9c
    ld d, d                                       ; $451e: $52
    sbc h                                         ; $451f: $9c
    ld d, d                                       ; $4520: $52
    call z, $cc1a                                 ; $4521: $cc $1a $cc
    nop                                           ; $4524: $00
    ld a, [de]                                    ; $4525: $1a
    and $2a                                       ; $4526: $e6 $2a
    ld h, [hl]                                    ; $4528: $66
    adc d                                         ; $4529: $8a
    db $e4                                        ; $452a: $e4
    adc [hl]                                      ; $452b: $8e
    ld h, h                                       ; $452c: $64
    nop                                           ; $452d: $00
    adc $67                                       ; $452e: $ce $67
    call nc, $d467                                ; $4530: $d4 $67 $d4
    rst $00                                       ; $4533: $c7
    db $e4                                        ; $4534: $e4
    add $00                                       ; $4535: $c6 $00
    db $ed                                        ; $4537: $ed
    ld h, $e8                                     ; $4538: $26 $e8
    ld h, [hl]                                    ; $453a: $66
    xor d                                         ; $453b: $aa
    ld e, h                                       ; $453c: $5c
    adc h                                         ; $453d: $8c
    ld c, h                                       ; $453e: $4c
    nop                                           ; $453f: $00
    sbc b                                         ; $4540: $98
    add a                                         ; $4541: $87
    ld h, a                                       ; $4542: $67

jr_0ab_4543:
    adc a                                         ; $4543: $8f
    ld c, a                                       ; $4544: $4f
    rst $08                                       ; $4545: $cf
    rrca                                          ; $4546: $0f
    adc a                                         ; $4547: $8f
    nop                                           ; $4548: $00
    ccf                                           ; $4549: $3f
    ccf                                           ; $454a: $3f
    ld c, a                                       ; $454b: $4f
    ccf                                           ; $454c: $3f
    ld c, a                                       ; $454d: $4f
    ld h, b                                       ; $454e: $60
    ret nz                                        ; $454f: $c0

    ld h, b                                       ; $4550: $60
    nop                                           ; $4551: $00
    ret nz                                        ; $4552: $c0

    ld [bc], a                                    ; $4553: $02
    ld bc, $0303                                  ; $4554: $01 $03 $03
    ld bc, $0102                                  ; $4557: $01 $02 $01
    ret nz                                        ; $455a: $c0

    cp e                                          ; $455b: $bb
    ld bc, $0804                                  ; $455c: $01 $04 $08
    nop                                           ; $455f: $00
    nop                                           ; $4560: $00
    daa                                           ; $4561: $27
    inc a                                         ; $4562: $3c
    add b                                         ; $4563: $80
    ld a, [bc]                                    ; $4564: $0a
    nop                                           ; $4565: $00
    or b                                          ; $4566: $b0
    jr nc, @-$76                                  ; $4567: $30 $88

    or b                                          ; $4569: $b0
    sbc b                                         ; $456a: $98
    and l                                         ; $456b: $a5
    ret z                                         ; $456c: $c8

    ld c, l                                       ; $456d: $4d
    nop                                           ; $456e: $00
    jp nc, $d01b                                  ; $456f: $d2 $1b $d0

    sub e                                         ; $4572: $93
    ld [hl], c                                    ; $4573: $71
    dec b                                         ; $4574: $05
    dec c                                         ; $4575: $0d
    ld [hl], c                                    ; $4576: $71
    nop                                           ; $4577: $00
    dec e                                         ; $4578: $1d
    ld h, c                                       ; $4579: $61
    jp nz, $c710                                  ; $457a: $c2 $10 $c7

    inc sp                                        ; $457d: $33
    jr nc, jr_0ab_45bf                            ; $457e: $30 $3f

    nop                                           ; $4580: $00
    jr nc, jr_0ab_4592                            ; $4581: $30 $0f

    ret nz                                        ; $4583: $c0

    rlca                                          ; $4584: $07
    rst $20                                       ; $4585: $e7
    ld l, b                                       ; $4586: $68
    di                                            ; $4587: $f3
    inc d                                         ; $4588: $14
    nop                                           ; $4589: $00
    ld a, c                                       ; $458a: $79
    adc d                                         ; $458b: $8a
    inc e                                         ; $458c: $1c
    ld h, l                                       ; $458d: $65
    ld e, $02                                     ; $458e: $1e $02
    rst $20                                       ; $4590: $e7
    jp hl                                         ; $4591: $e9


jr_0ab_4592:
    nop                                           ; $4592: $00
    ld a, [c]                                     ; $4593: $f2
    inc bc                                        ; $4594: $03
    db $fc                                        ; $4595: $fc
    nop                                           ; $4596: $00
    ld [hl-], a                                   ; $4597: $32
    ld b, [hl]                                    ; $4598: $46
    sub d                                         ; $4599: $92
    and h                                         ; $459a: $a4
    nop                                           ; $459b: $00
    or [hl]                                       ; $459c: $b6
    inc [hl]                                      ; $459d: $34
    ld e, b                                       ; $459e: $58
    sub e                                         ; $459f: $93
    ret                                           ; $45a0: $c9


    xor e                                         ; $45a1: $ab
    ld h, l                                       ; $45a2: $65
    ld e, l                                       ; $45a3: $5d
    nop                                           ; $45a4: $00
    and c                                         ; $45a5: $a1
    sub [hl]                                      ; $45a6: $96
    ld a, d                                       ; $45a7: $7a
    and b                                         ; $45a8: $a0
    jr nz, jr_0ab_4543                            ; $45a9: $20 $98

    add hl, bc                                    ; $45ab: $09
    or c                                          ; $45ac: $b1
    nop                                           ; $45ad: $00
    ld bc, $91b0                                  ; $45ae: $01 $b0 $91
    or b                                          ; $45b1: $b0
    ld l, b                                       ; $45b2: $68
    ld b, l                                       ; $45b3: $45
    ld e, b                                       ; $45b4: $58
    ld b, e                                       ; $45b5: $43
    nop                                           ; $45b6: $00
    ld de, $b3eb                                  ; $45b7: $11 $eb $b3
    ld c, e                                       ; $45ba: $4b
    ld h, b                                       ; $45bb: $60
    ldh [rLCDC], a                                ; $45bc: $e0 $40
    add b                                         ; $45be: $80

jr_0ab_45bf:
    rlca                                          ; $45bf: $07
    ld b, b                                       ; $45c0: $40
    ret nz                                        ; $45c1: $c0

    add b                                         ; $45c2: $80
    nop                                           ; $45c3: $00
    add b                                         ; $45c4: $80
    cp [hl]                                       ; $45c5: $be
    ld bc, $0004                                  ; $45c6: $01 $04 $00
    sbc a                                         ; $45c9: $9f
    ld [hl], d                                    ; $45ca: $72
    nop                                           ; $45cb: $00
    add sp, -$35                                  ; $45cc: $e8 $cb
    add sp, $03                                   ; $45ce: $e8 $03
    ld l, b                                       ; $45d0: $68
    add hl, bc                                    ; $45d1: $09
    db $e3                                        ; $45d2: $e3
    sub e                                         ; $45d3: $93
    nop                                           ; $45d4: $00
    ldh a, [$80]                                  ; $45d5: $f0 $80
    ld a, b                                       ; $45d7: $78
    rra                                           ; $45d8: $1f
    ld a, $07                                     ; $45d9: $3e $07
    add hl, sp                                    ; $45db: $39
    rlca                                          ; $45dc: $07
    nop                                           ; $45dd: $00
    and b                                         ; $45de: $a0
    ld hl, $5c28                                  ; $45df: $21 $28 $5c
    ld l, h                                       ; $45e2: $6c
    rra                                           ; $45e3: $1f
    ld e, a                                       ; $45e4: $5f
    ld [hl], b                                    ; $45e5: $70
    add b                                         ; $45e6: $80
    db $ed                                        ; $45e7: $ed
    ld bc, $f070                                  ; $45e8: $01 $70 $f0
    rst $28                                       ; $45eb: $ef
    rra                                           ; $45ec: $1f
    ld hl, sp+$0f                                 ; $45ed: $f8 $0f
    ldh a, [rDIV]                                 ; $45ef: $f0 $04
    ld [hl], b                                    ; $45f1: $70
    ld a, a                                       ; $45f2: $7f
    add b                                         ; $45f3: $80
    nop                                           ; $45f4: $00
    pop af                                        ; $45f5: $f1
    rlca                                          ; $45f6: $07
    ld bc, $3edd                                  ; $45f7: $01 $dd $3e
    nop                                           ; $45fa: $00
    ld h, e                                       ; $45fb: $63
    and d                                         ; $45fc: $a2
    ld h, e                                       ; $45fd: $63
    and d                                         ; $45fe: $a2
    rst $08                                       ; $45ff: $cf
    jp c, Jump_000_3ec9                           ; $4600: $da $c9 $3e

    db $10                                        ; $4603: $10
    sub e                                         ; $4604: $93
    di                                            ; $4605: $f3
    ldh a, [$e7]                                  ; $4606: $f0 $e7
    ld [bc], a                                    ; $4608: $02
    ld sp, hl                                     ; $4609: $f9
    rlca                                          ; $460a: $07
    inc a                                         ; $460b: $3c
    dec sp                                        ; $460c: $3b
    nop                                           ; $460d: $00
    inc a                                         ; $460e: $3c
    dec sp                                        ; $460f: $3b
    add a                                         ; $4610: $87
    pop af                                        ; $4611: $f1

jr_0ab_4612:
    rst $00                                       ; $4612: $c7
    ld a, [c]                                     ; $4613: $f2
    add $26                                       ; $4614: $c6 $26
    ld bc, $cc0e                                  ; $4616: $01 $0e $cc
    ld b, $08                                     ; $4619: $06 $08
    ld l, [hl]                                    ; $461b: $6e
    ldh a, [$3c]                                  ; $461c: $f0 $3c
    ld [bc], a                                    ; $461e: $02
    nop                                           ; $461f: $00
    add b                                         ; $4620: $80
    nop                                           ; $4621: $00
    ld l, e                                       ; $4622: $6b
    db $10                                        ; $4623: $10
    inc bc                                        ; $4624: $03
    sub c                                         ; $4625: $91
    ld [bc], a                                    ; $4626: $02
    ld d, b                                       ; $4627: $50
    nop                                           ; $4628: $00
    ld bc, $fe50                                  ; $4629: $01 $50 $fe
    rrca                                          ; $462c: $0f
    jr nz, jr_0ab_4612                            ; $462d: $20 $e3

    nop                                           ; $462f: $00
    pop bc                                        ; $4630: $c1
    inc e                                         ; $4631: $1c
    ld [bc], a                                    ; $4632: $02
    ld a, $22                                     ; $4633: $3e $22
    ld b, a                                       ; $4635: $47
    ld a, c                                       ; $4636: $79
    ld c, a                                       ; $4637: $4f
    ld [hl-], a                                   ; $4638: $32
    jr nz, jr_0ab_465b                            ; $4639: $20 $20

    inc bc                                        ; $463b: $03
    nop                                           ; $463c: $00
    rlca                                          ; $463d: $07
    ld bc, $f0ff                                  ; $463e: $01 $ff $f0
    ld [hl], b                                    ; $4641: $70
    ld c, [hl]                                    ; $4642: $4e
    or b                                          ; $4643: $b0
    adc h                                         ; $4644: $8c
    nop                                           ; $4645: $00
    inc a                                         ; $4646: $3c
    inc a                                         ; $4647: $3c
    ld h, d                                       ; $4648: $62
    ld a, h                                       ; $4649: $7c
    ld bc, $e7fe                                  ; $464a: $01 $fe $e7
    pop bc                                        ; $464d: $c1
    nop                                           ; $464e: $00
    jp Jump_000_005b                              ; $464f: $c3 $5b $00


    inc a                                         ; $4652: $3c
    nop                                           ; $4653: $00
    add hl, de                                    ; $4654: $19
    ret nz                                        ; $4655: $c0

    adc b                                         ; $4656: $88
    add b                                         ; $4657: $80
    ld b, b                                       ; $4658: $40
    jr jr_0ab_469b                                ; $4659: $18 $40

jr_0ab_465b:
    add b                                         ; $465b: $80
    ret nz                                        ; $465c: $c0

    jr nz, @+$32                                  ; $465d: $20 $30

    ret nc                                        ; $465f: $d0

    jr c, @+$1c                                   ; $4660: $38 $1a

    ld b, h                                       ; $4662: $44
    or [hl]                                       ; $4663: $b6
    ld a, [hl-]                                   ; $4664: $3a
    ld d, b                                       ; $4665: $50
    ld e, b                                       ; $4666: $58
    ld c, $78                                     ; $4667: $0e $78
    cp $64                                        ; $4669: $fe $64
    nop                                           ; $466b: $00
    rst $38                                       ; $466c: $ff
    add b                                         ; $466d: $80
    ld [hl], l                                    ; $466e: $75
    jr nz, jr_0ab_4672                            ; $466f: $20 $01

    nop                                           ; $4671: $00

jr_0ab_4672:
    inc bc                                        ; $4672: $03
    inc bc                                        ; $4673: $03
    ld e, a                                       ; $4674: $5f
    ld hl, $00e0                                  ; $4675: $21 $e0 $00
    rst $18                                       ; $4678: $df
    ld [hl], c                                    ; $4679: $71
    ld l, a                                       ; $467a: $6f
    ld c, $3d                                     ; $467b: $0e $3d
    dec b                                         ; $467d: $05
    ld a, [de]                                    ; $467e: $1a
    ld h, e                                       ; $467f: $63
    nop                                           ; $4680: $00
    ld h, e                                       ; $4681: $63
    push bc                                       ; $4682: $c5
    ld [hl], l                                    ; $4683: $75
    xor [hl]                                      ; $4684: $ae
    ld h, b                                       ; $4685: $60
    add b                                         ; $4686: $80
    or c                                          ; $4687: $b1
    ld bc, $c000                                  ; $4688: $01 $00 $c0
    inc bc                                        ; $468b: $03
    pop bc                                        ; $468c: $c1
    jp nz, $e406                                  ; $468d: $c2 $06 $e4

    push bc                                       ; $4690: $c5
    ld l, $00                                     ; $4691: $2e $00
    call z, $08ed                                 ; $4693: $cc $ed $08
    add hl, bc                                    ; $4696: $09
    ld bc, $b6f6                                  ; $4697: $01 $f6 $b6
    dec h                                         ; $469a: $25

jr_0ab_469b:
    nop                                           ; $469b: $00
    ld e, b                                       ; $469c: $58
    xor d                                         ; $469d: $aa
    sbc d                                         ; $469e: $9a
    add a                                         ; $469f: $87
    ld [bc], a                                    ; $46a0: $02
    ld [bc], a                                    ; $46a1: $02
    inc bc                                        ; $46a2: $03
    db $fd                                        ; $46a3: $fd
    nop                                           ; $46a4: $00
    ld bc, $cc32                                  ; $46a5: $01 $32 $cc
    pop af                                        ; $46a8: $f1
    add $cf                                       ; $46a9: $c6 $cf
    ret nz                                        ; $46ab: $c0

    rst $10                                       ; $46ac: $d7
    nop                                           ; $46ad: $00
    ldh a, [$c3]                                  ; $46ae: $f0 $c3
    adc e                                         ; $46b0: $8b
    ld b, b                                       ; $46b1: $40
    inc c                                         ; $46b2: $0c
    and b                                         ; $46b3: $a0
    add a                                         ; $46b4: $87
    and b                                         ; $46b5: $a0
    nop                                           ; $46b6: $00
    add e                                         ; $46b7: $83
    cp h                                          ; $46b8: $bc
    ld h, a                                       ; $46b9: $67
    ld a, [hl]                                    ; $46ba: $7e
    rrca                                          ; $46bb: $0f
    nop                                           ; $46bc: $00
    nop                                           ; $46bd: $00
    add b                                         ; $46be: $80
    nop                                           ; $46bf: $00
    ld b, b                                       ; $46c0: $40
    ld b, b                                       ; $46c1: $40
    ldh [$90], a                                  ; $46c2: $e0 $90
    add sp, $48                                   ; $46c4: $e8 $48
    ld a, h                                       ; $46c6: $7c
    add h                                         ; $46c7: $84
    inc b                                         ; $46c8: $04
    ld e, $e3                                     ; $46c9: $1e $e3
    db $ec                                        ; $46cb: $ec
    pop af                                        ; $46cc: $f1
    or $d0                                        ; $46cd: $f6 $d0
    ld d, b                                       ; $46cf: $50
    add b                                         ; $46d0: $80
    ret nz                                        ; $46d1: $c0

    nop                                           ; $46d2: $00
    ld b, b                                       ; $46d3: $40
    ld b, $01                                     ; $46d4: $06 $01
    add hl, de                                    ; $46d6: $19
    ld e, $3a                                     ; $46d7: $1e $3a
    inc [hl]                                      ; $46d9: $34
    add hl, de                                    ; $46da: $19
    nop                                           ; $46db: $00
    ld h, c                                       ; $46dc: $61
    rla                                           ; $46dd: $17
    rst $20                                       ; $46de: $e7
    rrca                                          ; $46df: $0f
    pop hl                                        ; $46e0: $e1
    inc c                                         ; $46e1: $0c
    ldh [$c0], a                                  ; $46e2: $e0 $c0
    nop                                           ; $46e4: $00
    jp hl                                         ; $46e5: $e9


    ld e, $80                                     ; $46e6: $1e $80
    ld a, a                                       ; $46e8: $7f
    inc bc                                        ; $46e9: $03
    db $fc                                        ; $46ea: $fc
    rra                                           ; $46eb: $1f
    rst $08                                       ; $46ec: $cf
    nop                                           ; $46ed: $00
    ret nz                                        ; $46ee: $c0

    sbc a                                         ; $46ef: $9f

jr_0ab_46f0:
    ret nz                                        ; $46f0: $c0

    ccf                                           ; $46f1: $3f
    ld b, b                                       ; $46f2: $40
    cp a                                          ; $46f3: $bf
    ldh [$f3], a                                  ; $46f4: $e0 $f3
    nop                                           ; $46f6: $00
    db $fc                                        ; $46f7: $fc
    inc bc                                        ; $46f8: $03
    ld [hl-], a                                   ; $46f9: $32
    ld h, [hl]                                    ; $46fa: $66
    ld b, $60                                     ; $46fb: $06 $60
    add hl, bc                                    ; $46fd: $09
    adc d                                         ; $46fe: $8a
    nop                                           ; $46ff: $00
    xor c                                         ; $4700: $a9
    add d                                         ; $4701: $82
    and b                                         ; $4702: $a0
    jp nz, $c732                                  ; $4703: $c2 $32 $c7

    jr nc, jr_0ab_46f0                            ; $4706: $30 $e8

    nop                                           ; $4708: $00
    rrca                                          ; $4709: $0f
    call $9eca                                    ; $470a: $cd $ca $9e
    db $fd                                        ; $470d: $fd
    db $fc                                        ; $470e: $fc
    sbc a                                         ; $470f: $9f
    ld h, [hl]                                    ; $4710: $66
    nop                                           ; $4711: $00
    rlca                                          ; $4712: $07
    ld h, e                                       ; $4713: $63
    adc d                                         ; $4714: $8a
    ld h, e                                       ; $4715: $63
    ld [bc], a                                    ; $4716: $02
    ld hl, $7e9f                                  ; $4717: $21 $9f $7e
    nop                                           ; $471a: $00
    dec e                                         ; $471b: $1d
    jr c, jr_0ab_4756                             ; $471c: $38 $38

    sbc b                                         ; $471e: $98
    add hl, de                                    ; $471f: $19
    sbc b                                         ; $4720: $98
    ld e, c                                       ; $4721: $59
    add hl, sp                                    ; $4722: $39
    nop                                           ; $4723: $00
    ld a, [bc]                                    ; $4724: $0a
    ld hl, sp-$32                                 ; $4725: $f8 $ce
    pop af                                        ; $4727: $f1
    ld h, l                                       ; $4728: $65
    or e                                          ; $4729: $b3
    ld d, b                                       ; $472a: $50
    and a                                         ; $472b: $a7
    nop                                           ; $472c: $00
    ld l, b                                       ; $472d: $68
    ld a, c                                       ; $472e: $79
    add c                                         ; $472f: $81
    ld c, $c0                                     ; $4730: $0e $c0
    or b                                          ; $4732: $b0
    add a                                         ; $4733: $87
    jr c, jr_0ab_4736                             ; $4734: $38 $00

jr_0ab_4736:
    dec bc                                        ; $4736: $0b
    ld b, c                                       ; $4737: $41
    dec a                                         ; $4738: $3d
    ld [bc], a                                    ; $4739: $02
    db $fc                                        ; $473a: $fc
    db $fc                                        ; $473b: $fc
    rrca                                          ; $473c: $0f
    ldh [rP1], a                                  ; $473d: $e0 $00
    jr jr_0ab_4781                                ; $473f: $18 $40

    and b                                         ; $4741: $a0
    jr c, @-$36                                   ; $4742: $38 $c8

    scf                                           ; $4744: $37
    ld e, e                                       ; $4745: $5b
    add hl, de                                    ; $4746: $19
    inc b                                         ; $4747: $04
    add a                                         ; $4748: $87
    db $ec                                        ; $4749: $ec
    dec bc                                        ; $474a: $0b
    db $f4                                        ; $474b: $f4
    inc bc                                        ; $474c: $03
    ld [bc], a                                    ; $474d: $02
    nop                                           ; $474e: $00
    add a                                         ; $474f: $87
    ld b, e                                       ; $4750: $43
    nop                                           ; $4751: $00
    ld l, b                                       ; $4752: $68
    ld h, c                                       ; $4753: $61
    ld d, d                                       ; $4754: $52
    ld h, b                                       ; $4755: $60

jr_0ab_4756:
    ld d, b                                       ; $4756: $50
    jr nc, @-$3a                                  ; $4757: $30 $c4

    jr c, jr_0ab_475b                             ; $4759: $38 $00

jr_0ab_475b:
    jp z, $cbf3                                   ; $475b: $ca $f3 $cb

    pop af                                        ; $475e: $f1
    jp hl                                         ; $475f: $e9


    ld [de], a                                    ; $4760: $12
    ld a, [bc]                                    ; $4761: $0a
    ld b, b                                       ; $4762: $40
    nop                                           ; $4763: $00
    ldh a, [$b8]                                  ; $4764: $f0 $b8
    ld b, b                                       ; $4766: $40
    ld c, a                                       ; $4767: $4f
    ld b, b                                       ; $4768: $40
    ld b, c                                       ; $4769: $41
    ld e, [hl]                                    ; $476a: $5e
    nop                                           ; $476b: $00
    nop                                           ; $476c: $00
    inc bc                                        ; $476d: $03
    inc c                                         ; $476e: $0c
    add b                                         ; $476f: $80
    ld c, $ce                                     ; $4770: $0e $ce
    rrca                                          ; $4772: $0f
    rst $00                                       ; $4773: $c7
    ld hl, sp+$00                                 ; $4774: $f8 $00
    sbc a                                         ; $4776: $9f
    ld [hl-], a                                   ; $4777: $32
    ld c, a                                       ; $4778: $4f
    dec de                                        ; $4779: $1b
    rlca                                          ; $477a: $07
    rrca                                          ; $477b: $0f
    call nz, Call_000_0007                        ; $477c: $c4 $07 $00
    ld h, h                                       ; $477f: $64
    rlca                                          ; $4780: $07

jr_0ab_4781:
    ld [hl-], a                                   ; $4781: $32
    rlca                                          ; $4782: $07
    ld a, [de]                                    ; $4783: $1a
    add e                                         ; $4784: $83
    ccf                                           ; $4785: $3f
    ld bc, $ee00                                  ; $4786: $01 $00 $ee
    call nz, $f8d8                                ; $4789: $c4 $d8 $f8
    ld a, [c]                                     ; $478c: $f2
    add e                                         ; $478d: $83
    rlca                                          ; $478e: $07
    ld c, b                                       ; $478f: $48
    nop                                           ; $4790: $00
    ld [hl], b                                    ; $4791: $70
    sbc [hl]                                      ; $4792: $9e
    ldh [rIE], a                                  ; $4793: $e0 $ff
    ld e, a                                       ; $4795: $5f
    ldh [$27], a                                  ; $4796: $e0 $27
    rst $08                                       ; $4798: $cf
    nop                                           ; $4799: $00
    ret nz                                        ; $479a: $c0

    cp a                                          ; $479b: $bf
    ld sp, hl                                     ; $479c: $f9
    or b                                          ; $479d: $b0
    db $fc                                        ; $479e: $fc
    pop de                                        ; $479f: $d1
    ld hl, sp+$07                                 ; $47a0: $f8 $07
    nop                                           ; $47a2: $00
    and e                                         ; $47a3: $a3
    rra                                           ; $47a4: $1f
    ld c, [hl]                                    ; $47a5: $4e
    ldh [rNR23], a                                ; $47a6: $e0 $18
    inc hl                                        ; $47a8: $23
    inc bc                                        ; $47a9: $03
    ld b, b                                       ; $47aa: $40
    nop                                           ; $47ab: $00
    ret nz                                        ; $47ac: $c0

    rrca                                          ; $47ad: $0f
    nop                                           ; $47ae: $00
    ccf                                           ; $47af: $3f
    rst $18                                       ; $47b0: $df
    db $e3                                        ; $47b1: $e3
    jp RST_00                                     ; $47b2: $c3 $00 $00


    add b                                         ; $47b5: $80
    ld a, b                                       ; $47b6: $78
    ld [hl], b                                    ; $47b7: $70
    ldh a, [$e3]                                  ; $47b8: $f0 $e3
    ldh a, [$e7]                                  ; $47ba: $f0 $e7
    inc [hl]                                      ; $47bc: $34
    nop                                           ; $47bd: $00
    ld [hl-], a                                   ; $47be: $32
    and h                                         ; $47bf: $a4
    ld a, [hl+]                                   ; $47c0: $2a
    add [hl]                                      ; $47c1: $86
    xor b                                         ; $47c2: $a8
    add h                                         ; $47c3: $84
    xor b                                         ; $47c4: $a8
    adc h                                         ; $47c5: $8c
    nop                                           ; $47c6: $00
    jr jr_0ab_47d5                                ; $47c7: $18 $0c

    inc e                                         ; $47c9: $1c
    adc a                                         ; $47ca: $8f
    sub a                                         ; $47cb: $97
    ld c, a                                       ; $47cc: $4f
    rla                                           ; $47cd: $17
    ld de, $0d00                                  ; $47ce: $11 $00 $0d
    add hl, de                                    ; $47d1: $19
    dec b                                         ; $47d2: $05
    add hl, bc                                    ; $47d3: $09
    dec b                                         ; $47d4: $05

jr_0ab_47d5:
    inc c                                         ; $47d5: $0c
    ld b, $0c                                     ; $47d6: $06 $0c
    nop                                           ; $47d8: $00
    ld b, $04                                     ; $47d9: $06 $04
    ld [bc], a                                    ; $47db: $02
    dec b                                         ; $47dc: $05
    inc bc                                        ; $47dd: $03
    ld b, $03                                     ; $47de: $06 $03
    rrca                                          ; $47e0: $0f
    nop                                           ; $47e1: $00
    ld b, e                                       ; $47e2: $43
    sub b                                         ; $47e3: $90
    rra                                           ; $47e4: $1f
    sub c                                         ; $47e5: $91
    rra                                           ; $47e6: $1f
    add a                                         ; $47e7: $87
    rrca                                          ; $47e8: $0f
    add e                                         ; $47e9: $83
    nop                                           ; $47ea: $00
    rlca                                          ; $47eb: $07
    add c                                         ; $47ec: $81
    rra                                           ; $47ed: $1f
    inc bc                                        ; $47ee: $03
    rra                                           ; $47ef: $1f
    rrca                                          ; $47f0: $0f
    inc e                                         ; $47f1: $1c
    add c                                         ; $47f2: $81
    nop                                           ; $47f3: $00
    dec e                                         ; $47f4: $1d
    ret nz                                        ; $47f5: $c0

    rlca                                          ; $47f6: $07
    ldh [rNR44], a                                ; $47f7: $e0 $23
    inc b                                         ; $47f9: $04
    ld hl, sp-$14                                 ; $47fa: $f8 $ec
    nop                                           ; $47fc: $00
    halt                                          ; $47fd: $76
    ld a, [bc]                                    ; $47fe: $0a
    add $12                                       ; $47ff: $c6 $12
    adc h                                         ; $4801: $8c
    jr nc, jr_0ab_4822                            ; $4802: $30 $1e

    ldh [rP1], a                                  ; $4804: $e0 $00
    sub c                                         ; $4806: $91
    inc b                                         ; $4807: $04
    db $f4                                        ; $4808: $f4
    inc b                                         ; $4809: $04

jr_0ab_480a:
    db $ec                                        ; $480a: $ec
    ret z                                         ; $480b: $c8

    jr jr_0ab_4840                                ; $480c: $18 $32

    nop                                           ; $480e: $00
    ld [bc], a                                    ; $480f: $02
    db $e4                                        ; $4810: $e4
    ld b, $0c                                     ; $4811: $06 $0c
    ld c, b                                       ; $4813: $48
    jr jr_0ab_4817                                ; $4814: $18 $01

    inc bc                                        ; $4816: $03

jr_0ab_4817:
    nop                                           ; $4817: $00
    adc a                                         ; $4818: $8f
    rra                                           ; $4819: $1f
    inc e                                         ; $481a: $1c
    ld c, $4f                                     ; $481b: $0e $4f
    adc d                                         ; $481d: $8a
    ld c, a                                       ; $481e: $4f
    jp nz, Jump_0ab_4f00                          ; $481f: $c2 $00 $4f

jr_0ab_4822:
    ret                                           ; $4822: $c9


    ld c, [hl]                                    ; $4823: $4e
    add d                                         ; $4824: $82
    ld b, a                                       ; $4825: $47
    ld bc, $f0f3                                  ; $4826: $01 $f3 $f0
    nop                                           ; $4829: $00
    ld d, $e1                                     ; $482a: $16 $e1
    db $e4                                        ; $482c: $e4
    add c                                         ; $482d: $81
    add sp, $4d                                   ; $482e: $e8 $4d
    ldh [$d6], a                                  ; $4830: $e0 $d6
    nop                                           ; $4832: $00
    or b                                          ; $4833: $b0
    ld h, e                                       ; $4834: $63
    call z, $820e                                 ; $4835: $cc $0e $82
    ld b, $40                                     ; $4838: $06 $40
    adc b                                         ; $483a: $88
    nop                                           ; $483b: $00
    or b                                          ; $483c: $b0
    adc b                                         ; $483d: $88
    or b                                          ; $483e: $b0
    sub b                                         ; $483f: $90

jr_0ab_4840:
    jr nc, @+$12                                  ; $4840: $30 $10

    ld [hl], b                                    ; $4842: $70
    ld h, b                                       ; $4843: $60
    nop                                           ; $4844: $00
    ld e, a                                       ; $4845: $5f
    ld h, b                                       ; $4846: $60
    ld e, a                                       ; $4847: $5f
    jr nz, jr_0ab_480a                            ; $4848: $20 $c0

    ld h, b                                       ; $484a: $60
    ret nz                                        ; $484b: $c0

    ld [bc], a                                    ; $484c: $02
    ld bc, $0201                                  ; $484d: $01 $01 $02
    ld bc, $0103                                  ; $4850: $01 $03 $01
    nop                                           ; $4853: $00
    ld bc, $0003                                  ; $4854: $01 $03 $00
    add b                                         ; $4857: $80
    ret nz                                        ; $4858: $c0

    ld bc, $0000                                  ; $4859: $01 $00 $00
    ld b, $0d                                     ; $485c: $06 $0d
    ld b, $84                                     ; $485e: $06 $84
    ld b, $00                                     ; $4860: $06 $00
    add h                                         ; $4862: $84
    add d                                         ; $4863: $82
    rlca                                          ; $4864: $07
    add [hl]                                      ; $4865: $86
    rlca                                          ; $4866: $07
    rlca                                          ; $4867: $07
    rst $00                                       ; $4868: $c7
    add a                                         ; $4869: $87
    nop                                           ; $486a: $00
    ld b, a                                       ; $486b: $47
    add e                                         ; $486c: $83
    ret nz                                        ; $486d: $c0

    ld [hl], b                                    ; $486e: $70
    ld e, h                                       ; $486f: $5c
    cp [hl]                                       ; $4870: $be
    jp nz, Jump_000_00ff                          ; $4871: $c2 $ff $00

    inc bc                                        ; $4874: $03
    cp $6e                                        ; $4875: $fe $6e
    ld hl, sp-$72                                 ; $4877: $f8 $8e
    ld a, [c]                                     ; $4879: $f2
    ld c, $60                                     ; $487a: $0e $60
    nop                                           ; $487c: $00
    db $fc                                        ; $487d: $fc
    ld sp, hl                                     ; $487e: $f9
    dec b                                         ; $487f: $05
    inc hl                                        ; $4880: $23
    jr nc, jr_0ab_488a                            ; $4881: $30 $07

    ldh [rIF], a                                  ; $4883: $e0 $0f
    nop                                           ; $4885: $00
    ret nz                                        ; $4886: $c0

    rra                                           ; $4887: $1f
    ld b, $07                                     ; $4888: $06 $07

jr_0ab_488a:
    ld a, [hl-]                                   ; $488a: $3a
    rlca                                          ; $488b: $07
    inc sp                                        ; $488c: $33
    rlca                                          ; $488d: $07
    nop                                           ; $488e: $00
    sub e                                         ; $488f: $93
    inc bc                                        ; $4890: $03
    adc l                                         ; $4891: $8d
    pop de                                        ; $4892: $d1
    ld hl, $f400                                  ; $4893: $21 $00 $f4
    ld a, [bc]                                    ; $4896: $0a
    nop                                           ; $4897: $00
    cp $0a                                        ; $4898: $fe $0a
    or $fc                                        ; $489a: $f6 $fc
    sbc b                                         ; $489c: $98
    ld [hl], h                                    ; $489d: $74
    ret c                                         ; $489e: $d8

    ld hl, sp+$00                                 ; $489f: $f8 $00
    add h                                         ; $48a1: $84
    ld hl, sp-$10                                 ; $48a2: $f8 $f0
    ld [de], a                                    ; $48a4: $12
    call z, $9539                                 ; $48a5: $cc $39 $95
    inc [hl]                                      ; $48a8: $34
    nop                                           ; $48a9: $00
    dec e                                         ; $48aa: $1d
    add hl, de                                    ; $48ab: $19
    dec b                                         ; $48ac: $05
    ld [$210d], sp                                ; $48ad: $08 $0d $21
    inc bc                                        ; $48b0: $03
    ld sp, $5200                                  ; $48b1: $31 $00 $52
    ld [hl-], a                                   ; $48b4: $32
    ld d, c                                       ; $48b5: $51
    ret nz                                        ; $48b6: $c0

    add b                                         ; $48b7: $80
    ld b, b                                       ; $48b8: $40
    add b                                         ; $48b9: $80
    ld b, b                                       ; $48ba: $40
    ld h, $c0                                     ; $48bb: $26 $c0
    add b                                         ; $48bd: $80
    rst $10                                       ; $48be: $d7
    ld bc, $0080                                  ; $48bf: $01 $80 $00
    ld b, $00                                     ; $48c2: $06 $00
    ld c, a                                       ; $48c4: $4f
    ld [hl], d                                    ; $48c5: $72
    pop bc                                        ; $48c6: $c1
    nop                                           ; $48c7: $00
    ldh [$e0], a                                  ; $48c8: $e0 $e0
    inc bc                                        ; $48ca: $03
    ld h, b                                       ; $48cb: $60
    ld b, e                                       ; $48cc: $43
    ld [hl], b                                    ; $48cd: $70
    and b                                         ; $48ce: $a0
    ld [hl], b                                    ; $48cf: $70
    nop                                           ; $48d0: $00
    sub b                                         ; $48d1: $90
    ld hl, $381e                                  ; $48d2: $21 $1e $38
    daa                                           ; $48d5: $27
    rrca                                          ; $48d6: $0f
    inc sp                                        ; $48d7: $33
    or $02                                        ; $48d8: $f6 $02

jr_0ab_48da:
    ld c, $1e                                     ; $48da: $0e $1e
    ld [c], a                                     ; $48dc: $e2
    db $fc                                        ; $48dd: $fc
    ld b, h                                       ; $48de: $44
    db $fc                                        ; $48df: $fc
    or h                                          ; $48e0: $b4
    ld a, [bc]                                    ; $48e1: $0a
    inc hl                                        ; $48e2: $23
    nop                                           ; $48e3: $00
    ld sp, $0fc1                                  ; $48e4: $31 $c1 $0f
    pop af                                        ; $48e7: $f1
    cp [hl]                                       ; $48e8: $be
    or c                                          ; $48e9: $b1
    rrca                                          ; $48ea: $0f
    ld [$0c10], sp                                ; $48eb: $08 $10 $0c
    inc bc                                        ; $48ee: $03
    rlca                                          ; $48ef: $07
    rst $10                                       ; $48f0: $d7
    ld [bc], a                                    ; $48f1: $02
    pop hl                                        ; $48f2: $e1
    ld a, a                                       ; $48f3: $7f
    ldh a, [$cf]                                  ; $48f4: $f0 $cf
    nop                                           ; $48f6: $00
    inc e                                         ; $48f7: $1c
    inc de                                        ; $48f8: $13
    ld [$f0f0], sp                                ; $48f9: $08 $f0 $f0
    db $10                                        ; $48fc: $10

jr_0ab_48fd:
    inc e                                         ; $48fd: $1c
    ldh a, [rLCDC]                                ; $48fe: $f0 $40
    ld hl, sp-$19                                 ; $4900: $f8 $e7
    ld [bc], a                                    ; $4902: $02
    ld a, [hl]                                    ; $4903: $7e
    db $d3                                        ; $4904: $d3
    add e                                         ; $4905: $83
    ld b, h                                       ; $4906: $44
    rst $00                                       ; $4907: $c7
    jp hl                                         ; $4908: $e9


    nop                                           ; $4909: $00
    or $95                                        ; $490a: $f6 $95
    db $f4                                        ; $490c: $f4
    ld d, e                                       ; $490d: $53
    ld b, a                                       ; $490e: $47
    pop hl                                        ; $490f: $e1
    ld c, a                                       ; $4910: $4f
    pop bc                                        ; $4911: $c1
    nop                                           ; $4912: $00
    inc bc                                        ; $4913: $03
    dec c                                         ; $4914: $0d
    rst $20                                       ; $4915: $e7
    dec de                                        ; $4916: $1b
    inc c                                         ; $4917: $0c
    ldh a, [rNR32]                                ; $4918: $f0 $1c
    db $e4                                        ; $491a: $e4
    add b                                         ; $491b: $80
    or b                                          ; $491c: $b0
    ld l, d                                       ; $491d: $6a
    db $10                                        ; $491e: $10
    inc bc                                        ; $491f: $03
    pop bc                                        ; $4920: $c1
    ld [bc], a                                    ; $4921: $02
    ld b, d                                       ; $4922: $42
    nop                                           ; $4923: $00
    ld bc, $0c40                                  ; $4924: $01 $40 $0c
    nop                                           ; $4927: $00
    ld [de], a                                    ; $4928: $12
    ld e, $10                                     ; $4929: $1e $10
    nop                                           ; $492b: $00
    cp $00                                        ; $492c: $fe $00
    inc bc                                        ; $492e: $03
    db $fc                                        ; $492f: $fc
    rlca                                          ; $4930: $07
    inc bc                                        ; $4931: $03
    ld c, $07                                     ; $4932: $0e $07
    inc e                                         ; $4934: $1c
    rrca                                          ; $4935: $0f
    ld [$083f], sp                                ; $4936: $08 $3f $08
    dec l                                         ; $4939: $2d
    ld d, $20                                     ; $493a: $16 $20
    nop                                           ; $493c: $00
    ld hl, sp-$08                                 ; $493d: $f8 $f8
    sbc [hl]                                      ; $493f: $9e
    nop                                           ; $4940: $00
    ldh a, [$fe]                                  ; $4941: $f0 $fe
    db $fc                                        ; $4943: $fc
    rlca                                          ; $4944: $07
    ld hl, sp-$71                                 ; $4945: $f8 $8f
    db $fc                                        ; $4947: $fc
    add b                                         ; $4948: $80
    nop                                           ; $4949: $00
    db $fc                                        ; $494a: $fc
    ei                                            ; $494b: $fb
    jr nc, @+$3e                                  ; $494c: $30 $3c

    ld a, h                                       ; $494e: $7c
    ld h, d                                       ; $494f: $62
    jr @+$01                                      ; $4950: $18 $ff

    nop                                           ; $4952: $00
    rst $20                                       ; $4953: $e7
    pop bc                                        ; $4954: $c1
    add b                                         ; $4955: $80
    ld b, e                                       ; $4956: $43
    sbc h                                         ; $4957: $9c
    jr c, jr_0ab_48da                             ; $4958: $38 $80

    inc e                                         ; $495a: $1c
    jr nz, jr_0ab_49a0                            ; $495b: $20 $43

    ld h, b                                       ; $495d: $60
    ld b, b                                       ; $495e: $40
    jr @+$42                                      ; $495f: $18 $40

jr_0ab_4961:
    add b                                         ; $4961: $80
    nop                                           ; $4962: $00
    ld bc, $04f1                                  ; $4963: $01 $f1 $04

jr_0ab_4966:
    inc bc                                        ; $4966: $03
    ld [hl], b                                    ; $4967: $70
    rlca                                          ; $4968: $07
    jr nc, jr_0ab_4961                            ; $4969: $30 $f6

    ld d, b                                       ; $496b: $50
    db $10                                        ; $496c: $10
    ld a, $3e                                     ; $496d: $3e $3e
    nop                                           ; $496f: $00
    db $fd                                        ; $4970: $fd
    jp $a03c                                      ; $4971: $c3 $3c $a0


    or c                                          ; $4974: $b1
    rra                                           ; $4975: $1f
    nop                                           ; $4976: $00
    cpl                                           ; $4977: $2f
    ld d, b                                       ; $4978: $50
    ldh [$60], a                                  ; $4979: $e0 $60
    jr jr_0ab_48fd                                ; $497b: $18 $80

    ld [hl+], a                                   ; $497d: $22
    nop                                           ; $497e: $00
    ldh [$c0], a                                  ; $497f: $e0 $c0
    ld h, b                                       ; $4981: $60
    ret nz                                        ; $4982: $c0

    nop                                           ; $4983: $00
    jr nc, jr_0ab_4966                            ; $4984: $30 $e0

    ld sp, $002f                                  ; $4986: $31 $2f $00
    ld a, $48                                     ; $4989: $3e $48
    ld a, [hl-]                                   ; $498b: $3a
    nop                                           ; $498c: $00
    ld [hl], b                                    ; $498d: $70
    xor a                                         ; $498e: $af
    ld h, b                                       ; $498f: $60
    cp d                                          ; $4990: $ba
    ld h, b                                       ; $4991: $60
    rlca                                          ; $4992: $07
    ld sp, $0007                                  ; $4993: $31 $07 $00
    ld sp, $3b03                                  ; $4996: $31 $03 $3b
    dec c                                         ; $4999: $0d
    ld e, $39                                     ; $499a: $1e $39
    ld e, $33                                     ; $499c: $1e $33
    nop                                           ; $499e: $00
    ccf                                           ; $499f: $3f

jr_0ab_49a0:
    jr nz, jr_0ab_49e1                            ; $49a0: $20 $3f

    ld h, b                                       ; $49a2: $60
    ld e, h                                       ; $49a3: $5c
    ret nz                                        ; $49a4: $c0

    sub d                                         ; $49a5: $92
    ret nz                                        ; $49a6: $c0

    nop                                           ; $49a7: $00
    ccf                                           ; $49a8: $3f
    add c                                         ; $49a9: $81
    ld a, b                                       ; $49aa: $78
    or $fe                                        ; $49ab: $f6 $fe
    ld d, $fc                                     ; $49ad: $16 $fc
    ld l, [hl]                                    ; $49af: $6e
    nop                                           ; $49b0: $00
    di                                            ; $49b1: $f3
    rlca                                          ; $49b2: $07
    ldh [$66], a                                  ; $49b3: $e0 $66
    cp b                                          ; $49b5: $b8
    ld c, b                                       ; $49b6: $48
    add c                                         ; $49b7: $81
    ld a, b                                       ; $49b8: $78
    nop                                           ; $49b9: $00
    inc bc                                        ; $49ba: $03
    ld sp, hl                                     ; $49bb: $f9
    ldh a, [rNR13]                                ; $49bc: $f0 $13
    ret nz                                        ; $49be: $c0

    rst $08                                       ; $49bf: $cf
    jr jr_0ab_49d1                                ; $49c0: $18 $0f

    nop                                           ; $49c2: $00
    inc sp                                        ; $49c3: $33
    dec c                                         ; $49c4: $0d
    ld bc, $373c                                  ; $49c5: $01 $3c $37
    jr z, jr_0ab_49d1                             ; $49c8: $28 $07

    or e                                          ; $49ca: $b3
    nop                                           ; $49cb: $00
    inc a                                         ; $49cc: $3c
    xor e                                         ; $49cd: $ab
    call z, $e03c                                 ; $49ce: $cc $3c $e0

jr_0ab_49d1:
    inc e                                         ; $49d1: $1c
    rlca                                          ; $49d2: $07
    db $e4                                        ; $49d3: $e4
    nop                                           ; $49d4: $00
    ld l, e                                       ; $49d5: $6b
    adc l                                         ; $49d6: $8d
    xor [hl]                                      ; $49d7: $ae
    add a                                         ; $49d8: $87
    jr c, @-$7d                                   ; $49d9: $38 $81

    ld d, $ae                                     ; $49db: $16 $ae
    nop                                           ; $49dd: $00
    dec b                                         ; $49de: $05
    ld e, c                                       ; $49df: $59
    rst $20                                       ; $49e0: $e7

jr_0ab_49e1:
    add sp, $03                                   ; $49e1: $e8 $03
    call z, $0ec3                                 ; $49e3: $cc $c3 $0e

jr_0ab_49e6:
    nop                                           ; $49e6: $00
    db $e3                                        ; $49e7: $e3
    ld c, $0c                                     ; $49e8: $0e $0c
    xor c                                         ; $49ea: $a9
    nop                                           ; $49eb: $00
    ld [hl], c                                    ; $49ec: $71
    inc hl                                        ; $49ed: $23
    ret nc                                        ; $49ee: $d0

    ld bc, $23d6                                  ; $49ef: $01 $d6 $23
    jr z, @-$0e                                   ; $49f2: $28 $f0

    jr c, jr_0ab_49e6                             ; $49f4: $38 $f0

    ret z                                         ; $49f6: $c8

    ld [bc], a                                    ; $49f7: $02
    ld [$3000], sp                                ; $49f8: $08 $00 $30
    ret c                                         ; $49fb: $d8

    jr nc, @+$72                                  ; $49fc: $30 $70

    and b                                         ; $49fe: $a0
    ldh a, [$c0]                                  ; $49ff: $f0 $c0
    add hl, sp                                    ; $4a01: $39
    nop                                           ; $4a02: $00
    inc bc                                        ; $4a03: $03
    dec sp                                        ; $4a04: $3b
    rlca                                          ; $4a05: $07
    inc a                                         ; $4a06: $3c
    inc hl                                        ; $4a07: $23
    ld h, b                                       ; $4a08: $60
    ld l, a                                       ; $4a09: $6f
    ldh a, [rP1]                                  ; $4a0a: $f0 $00
    rst $20                                       ; $4a0c: $e7
    add sp, -$3d                                  ; $4a0d: $e8 $c3
    db $ec                                        ; $4a0f: $ec
    pop bc                                        ; $4a10: $c1
    ldh [$ce], a                                  ; $4a11: $e0 $ce

jr_0ab_4a13:
    ld a, a                                       ; $4a13: $7f
    nop                                           ; $4a14: $00
    ld [bc], a                                    ; $4a15: $02
    ld a, h                                       ; $4a16: $7c
    ld sp, hl                                     ; $4a17: $f9
    db $fc                                        ; $4a18: $fc
    ld hl, sp+$7f                                 ; $4a19: $f8 $7f
    add a                                         ; $4a1b: $87
    nop                                           ; $4a1c: $00
    nop                                           ; $4a1d: $00
    ld a, $c0                                     ; $4a1e: $3e $c0
    ld a, a                                       ; $4a20: $7f
    cp $c0                                        ; $4a21: $fe $c0
    ccf                                           ; $4a23: $3f
    ld a, a                                       ; $4a24: $7f
    scf                                           ; $4a25: $37
    nop                                           ; $4a26: $00
    jp nz, $c7f0                                  ; $4a27: $c2 $f0 $c7

    and $0a                                       ; $4a2a: $e6 $0a
    pop bc                                        ; $4a2c: $c1
    call z, Call_000_0082                         ; $4a2d: $cc $82 $00
    sbc c                                         ; $4a30: $99
    ld [hl], b                                    ; $4a31: $70
    inc sp                                        ; $4a32: $33
    inc b                                         ; $4a33: $04
    inc bc                                        ; $4a34: $03
    ld b, $e6                                     ; $4a35: $06 $e6
    rlca                                          ; $4a37: $07
    nop                                           ; $4a38: $00
    ld a, $6e                                     ; $4a39: $3e $6e
    ld d, h                                       ; $4a3b: $54
    ldh a, [$4c]                                  ; $4a3c: $f0 $4c
    ldh a, [$f8]                                  ; $4a3e: $f0 $f8
    ld [c], a                                     ; $4a40: $e2
    nop                                           ; $4a41: $00
    push af                                       ; $4a42: $f5
    ret nz                                        ; $4a43: $c0

    sub d                                         ; $4a44: $92
    ld sp, $6001                                  ; $4a45: $31 $01 $60
    dec c                                         ; $4a48: $0d
    ld a, a                                       ; $4a49: $7f
    nop                                           ; $4a4a: $00
    inc h                                         ; $4a4b: $24
    ld [bc], a                                    ; $4a4c: $02
    jp nz, Jump_000_31cd                          ; $4a4d: $c2 $cd $31

    pop af                                        ; $4a50: $f1
    db $fc                                        ; $4a51: $fc
    ld b, a                                       ; $4a52: $47
    nop                                           ; $4a53: $00
    ld a, a                                       ; $4a54: $7f
    xor d                                         ; $4a55: $aa
    ld a, [hl-]                                   ; $4a56: $3a
    call nz, $8495                                ; $4a57: $c4 $95 $84
    inc b                                         ; $4a5a: $04
    ld h, c                                       ; $4a5b: $61
    nop                                           ; $4a5c: $00
    db $f4                                        ; $4a5d: $f4
    cp c                                          ; $4a5e: $b9
    ret                                           ; $4a5f: $c9


    ld e, l                                       ; $4a60: $5d
    db $f4                                        ; $4a61: $f4
    ld l, l                                       ; $4a62: $6d
    sub b                                         ; $4a63: $90
    db $fc                                        ; $4a64: $fc
    nop                                           ; $4a65: $00
    reti                                          ; $4a66: $d9


    ld a, [$fbf1]                                 ; $4a67: $fa $f1 $fb
    ld a, b                                       ; $4a6a: $78
    ldh a, [$5b]                                  ; $4a6b: $f0 $5b
    ld l, $00                                     ; $4a6d: $2e $00
    jp z, Jump_0ab_55bb                           ; $4a6f: $ca $bb $55

    jp z, $8a04                                   ; $4a72: $ca $04 $8a

    inc b                                         ; $4a75: $04
    sbc [hl]                                      ; $4a76: $9e
    nop                                           ; $4a77: $00
    di                                            ; $4a78: $f3
    sbc [hl]                                      ; $4a79: $9e
    di                                            ; $4a7a: $f3
    sbc b                                         ; $4a7b: $98
    inc bc                                        ; $4a7c: $03
    db $f4                                        ; $4a7d: $f4
    rlca                                          ; $4a7e: $07
    ld h, b                                       ; $4a7f: $60
    nop                                           ; $4a80: $00
    ld c, a                                       ; $4a81: $4f
    jr nc, @+$59                                  ; $4a82: $30 $57

    jr nc, jr_0ab_4add                            ; $4a84: $30 $57

    rlca                                          ; $4a86: $07
    scf                                           ; $4a87: $37
    dec bc                                        ; $4a88: $0b
    nop                                           ; $4a89: $00
    inc sp                                        ; $4a8a: $33
    inc sp                                        ; $4a8b: $33
    dec bc                                        ; $4a8c: $0b
    inc de                                        ; $4a8d: $13
    dec bc                                        ; $4a8e: $0b
    dec bc                                        ; $4a8f: $0b
    jr jr_0ab_4a13                                ; $4a90: $18 $81

    nop                                           ; $4a92: $00
    rrca                                          ; $4a93: $0f
    ldh [rP1], a                                  ; $4a94: $e0 $00
    rst $38                                       ; $4a96: $ff
    nop                                           ; $4a97: $00
    nop                                           ; $4a98: $00
    rst $38                                       ; $4a99: $ff
    cp $08                                        ; $4a9a: $fe $08
    ld a, [de]                                    ; $4a9c: $1a
    db $fd                                        ; $4a9d: $fd
    ld bc, $59f9                                  ; $4a9e: $01 $f9 $59
    ld bc, $8c05                                  ; $4aa1: $01 $05 $8c
    ld h, e                                       ; $4aa4: $63
    nop                                           ; $4aa5: $00
    ld [$09e3], sp                                ; $4aa6: $08 $e3 $09
    push af                                       ; $4aa9: $f5
    inc bc                                        ; $4aaa: $03
    inc a                                         ; $4aab: $3c
    nop                                           ; $4aac: $00
    ld c, a                                       ; $4aad: $4f
    nop                                           ; $4aae: $00
    ret nz                                        ; $4aaf: $c0

    rlca                                          ; $4ab0: $07
    ldh [$0e], a                                  ; $4ab1: $e0 $0e
    or $e0                                        ; $4ab3: $f6 $e0
    ld c, h                                       ; $4ab5: $4c
    ret nz                                        ; $4ab6: $c0

    nop                                           ; $4ab7: $00
    ld c, [hl]                                    ; $4ab8: $4e
    sbc a                                         ; $4ab9: $9f
    add a                                         ; $4aba: $87
    rrca                                          ; $4abb: $0f
    ld b, a                                       ; $4abc: $47
    jp $c107                                      ; $4abd: $c3 $07 $c1


    nop                                           ; $4ac0: $00
    inc de                                        ; $4ac1: $13
    add hl, sp                                    ; $4ac2: $39
    sbc c                                         ; $4ac3: $99
    ld a, $1c                                     ; $4ac4: $3e $1c
    ld de, $3314                                  ; $4ac6: $11 $14 $33
    nop                                           ; $4ac9: $00
    jr nc, @+$11                                  ; $4aca: $30 $0f

    ld hl, sp-$4a                                 ; $4acc: $f8 $b6
    and b                                         ; $4ace: $a0
    add b                                         ; $4acf: $80
    db $ec                                        ; $4ad0: $ec
    jp $e000                                      ; $4ad1: $c3 $00 $e0


    ret nz                                        ; $4ad4: $c0

    sbc a                                         ; $4ad5: $9f
    nop                                           ; $4ad6: $00
    ccf                                           ; $4ad7: $3f
    or b                                          ; $4ad8: $b0
    sub a                                         ; $4ad9: $97
    jr nz, @+$0c                                  ; $4ada: $20 $0a

    add e                                         ; $4adc: $83

jr_0ab_4add:
    inc e                                         ; $4add: $1c
    ld b, b                                       ; $4ade: $40
    ccf                                           ; $4adf: $3f
    ld b, d                                       ; $4ae0: $42
    nop                                           ; $4ae1: $00
    add hl, bc                                    ; $4ae2: $09
    ld c, b                                       ; $4ae3: $48
    ld [$0000], sp                                ; $4ae4: $08 $00 $00
    push hl                                       ; $4ae7: $e5
    rlca                                          ; $4ae8: $07
    add c                                         ; $4ae9: $81
    rrca                                          ; $4aea: $0f
    ld l, d                                       ; $4aeb: $6a
    ld h, h                                       ; $4aec: $64
    add sp, -$1c                                  ; $4aed: $e8 $e4
    nop                                           ; $4aef: $00
    ret c                                         ; $4af0: $d8

    inc d                                         ; $4af1: $14
    ret c                                         ; $4af2: $d8

    inc d                                         ; $4af3: $14
    ret z                                         ; $4af4: $c8

    ret nc                                        ; $4af5: $d0

    ret z                                         ; $4af6: $c8

    ret nc                                        ; $4af7: $d0

    nop                                           ; $4af8: $00

jr_0ab_4af9:
    dec c                                         ; $4af9: $0d
    inc e                                         ; $4afa: $1c
    add hl, de                                    ; $4afb: $19
    dec b                                         ; $4afc: $05
    add hl, bc                                    ; $4afd: $09
    dec b                                         ; $4afe: $05
    inc c                                         ; $4aff: $0c
    ld b, $00                                     ; $4b00: $06 $00
    inc c                                         ; $4b02: $0c
    ld b, $04                                     ; $4b03: $06 $04
    ld [bc], a                                    ; $4b05: $02
    dec b                                         ; $4b06: $05
    inc bc                                        ; $4b07: $03
    ld b, $03                                     ; $4b08: $06 $03
    ld b, b                                       ; $4b0a: $40
    db $fc                                        ; $4b0b: $fc
    ret nz                                        ; $4b0c: $c0

    ld bc, $01fd                                  ; $4b0d: $01 $fd $01
    ld hl, sp+$03                                 ; $4b10: $f8 $03
    ld a, [$0003]                                 ; $4b12: $fa $03 $00
    rlca                                          ; $4b15: $07
    rst $30                                       ; $4b16: $f7
    rlca                                          ; $4b17: $07
    ld [hl], h                                    ; $4b18: $74
    rrca                                          ; $4b19: $0f
    ld h, a                                       ; $4b1a: $67
    ld d, l                                       ; $4b1b: $55
    add hl, hl                                    ; $4b1c: $29
    nop                                           ; $4b1d: $00
    inc a                                         ; $4b1e: $3c
    rra                                           ; $4b1f: $1f
    ld c, $0f                                     ; $4b20: $0e $0f
    rlca                                          ; $4b22: $07
    rst $20                                       ; $4b23: $e7
    add e                                         ; $4b24: $83
    ld [hl], e                                    ; $4b25: $73
    nop                                           ; $4b26: $00
    add hl, de                                    ; $4b27: $19
    add sp, $1e                                   ; $4b28: $e8 $1e
    xor $f0                                       ; $4b2a: $ee $f0
    db $eb                                        ; $4b2c: $eb
    ld h, c                                       ; $4b2d: $61
    ld e, [hl]                                    ; $4b2e: $5e
    nop                                           ; $4b2f: $00
    ret nz                                        ; $4b30: $c0

    cp a                                          ; $4b31: $bf
    ld a, a                                       ; $4b32: $7f
    cp a                                          ; $4b33: $bf
    ld a, a                                       ; $4b34: $7f

jr_0ab_4b35:
    ccf                                           ; $4b35: $3f
    add b                                         ; $4b36: $80
    cp a                                          ; $4b37: $bf
    nop                                           ; $4b38: $00
    ret nz                                        ; $4b39: $c0

    ld e, a                                       ; $4b3a: $5f
    ld b, b                                       ; $4b3b: $40
    ret nz                                        ; $4b3c: $c0

    ld l, a                                       ; $4b3d: $6f
    ld h, b                                       ; $4b3e: $60
    add b                                         ; $4b3f: $80
    inc a                                         ; $4b40: $3c
    nop                                           ; $4b41: $00
    add e                                         ; $4b42: $83
    inc bc                                        ; $4b43: $03
    add h                                         ; $4b44: $84
    adc d                                         ; $4b45: $8a
    ldh [$e0], a                                  ; $4b46: $e0 $e0
    ld d, h                                       ; $4b48: $54
    and h                                         ; $4b49: $a4
    nop                                           ; $4b4a: $00
    dec bc                                        ; $4b4b: $0b
    di                                            ; $4b4c: $f3
    ld bc, $c301                                  ; $4b4d: $01 $01 $c3
    dec sp                                        ; $4b50: $3b
    rra                                           ; $4b51: $1f
    nop                                           ; $4b52: $00
    nop                                           ; $4b53: $00
    ld c, a                                       ; $4b54: $4f
    ld h, b                                       ; $4b55: $60
    ld [hl], b                                    ; $4b56: $70
    scf                                           ; $4b57: $37
    ld a, b                                       ; $4b58: $78
    inc de                                        ; $4b59: $13
    ld hl, sp+$3b                                 ; $4b5a: $f8 $3b
    nop                                           ; $4b5c: $00
    ldh [rTAC], a                                 ; $4b5d: $e0 $07
    ld e, $d8                                     ; $4b5f: $1e $d8
    ld c, $80                                     ; $4b61: $0e $80
    xor b                                         ; $4b63: $a8
    jr nc, jr_0ab_4b66                            ; $4b64: $30 $00

jr_0ab_4b66:
    xor b                                         ; $4b66: $a8
    jr nc, jr_0ab_4af9                            ; $4b67: $30 $90

    jr nc, @+$12                                  ; $4b69: $30 $10

    ld [hl], b                                    ; $4b6b: $70
    ccf                                           ; $4b6c: $3f
    ld c, a                                       ; $4b6d: $4f
    db $10                                        ; $4b6e: $10
    ccf                                           ; $4b6f: $3f
    ld e, a                                       ; $4b70: $5f
    jr nz, jr_0ab_4b35                            ; $4b71: $20 $c2

    ld bc, $0102                                  ; $4b73: $01 $02 $01
    ld [bc], a                                    ; $4b76: $02
    ld bc, $030a                                  ; $4b77: $01 $0a $03
    ld bc, $0100                                  ; $4b7a: $01 $00 $01
    inc bc                                        ; $4b7d: $03
    nop                                           ; $4b7e: $00
    cp $6a                                        ; $4b7f: $fe $6a
    ld [$000f], sp                                ; $4b81: $08 $0f $00
    inc bc                                        ; $4b84: $03
    rrca                                          ; $4b85: $0f
    ld l, a                                       ; $4b86: $6f
    ld b, a                                       ; $4b87: $47
    cpl                                           ; $4b88: $2f
    ld h, b                                       ; $4b89: $60
    ld c, a                                       ; $4b8a: $4f
    ld h, b                                       ; $4b8b: $60
    nop                                           ; $4b8c: $00
    ld h, a                                       ; $4b8d: $67
    jr nc, jr_0ab_4be0                            ; $4b8e: $30 $50

    sbc b                                         ; $4b90: $98
    inc a                                         ; $4b91: $3c
    sbc [hl]                                      ; $4b92: $9e
    ld c, h                                       ; $4b93: $4c
    ldh a, [rP1]                                  ; $4b94: $f0 $00
    db $e3                                        ; $4b96: $e3
    ldh a, [$e9]                                  ; $4b97: $f0 $e9
    ldh [$db], a                                  ; $4b99: $e0 $db
    jp Jump_000_0734                              ; $4b9b: $c3 $34 $07


    nop                                           ; $4b9e: $00
    db $e3                                        ; $4b9f: $e3
    add sp, -$19                                  ; $4ba0: $e8 $e7
    ret z                                         ; $4ba2: $c8

    rst $00                                       ; $4ba3: $c7
    rrca                                          ; $4ba4: $0f
    ld d, a                                       ; $4ba5: $57
    rla                                           ; $4ba6: $17
    nop                                           ; $4ba7: $00
    jr nc, jr_0ab_4bca                            ; $4ba8: $30 $20

    db $10                                        ; $4baa: $10
    inc de                                        ; $4bab: $13
    ret c                                         ; $4bac: $d8

    dec bc                                        ; $4bad: $0b
    ret z                                         ; $4bae: $c8

    call z, Call_000_0b00                         ; $4baf: $cc $00 $0b
    db $e4                                        ; $4bb2: $e4
    dec b                                         ; $4bb3: $05
    rst $20                                       ; $4bb4: $e7
    inc de                                        ; $4bb5: $13
    rst $20                                       ; $4bb6: $e7
    rla                                           ; $4bb7: $17
    rlca                                          ; $4bb8: $07
    nop                                           ; $4bb9: $00
    db $f4                                        ; $4bba: $f4
    rlca                                          ; $4bbb: $07
    ld bc, $1ef8                                  ; $4bbc: $01 $f8 $1e
    ldh a, [rNR32]                                ; $4bbf: $f0 $1c
    add hl, bc                                    ; $4bc1: $09
    nop                                           ; $4bc2: $00
    pop af                                        ; $4bc3: $f1
    inc de                                        ; $4bc4: $13
    set 0, e                                      ; $4bc5: $cb $c3
    ret nc                                        ; $4bc7: $d0

    and a                                         ; $4bc8: $a7
    add b                                         ; $4bc9: $80

jr_0ab_4bca:
    jr nz, jr_0ab_4bcc                            ; $4bca: $20 $00

jr_0ab_4bcc:
    ld l, $71                                     ; $4bcc: $2e $71
    ld [hl], h                                    ; $4bce: $74
    ld de, $1161                                  ; $4bcf: $11 $61 $11
    add hl, hl                                    ; $4bd2: $29
    cp b                                          ; $4bd3: $b8
    nop                                           ; $4bd4: $00
    add c                                         ; $4bd5: $81
    cp b                                          ; $4bd6: $b8
    ld a, [hl-]                                   ; $4bd7: $3a
    add h                                         ; $4bd8: $84
    ld d, [hl]                                    ; $4bd9: $56
    add $06                                       ; $4bda: $c6 $06
    ret nz                                        ; $4bdc: $c0

    ld [bc], a                                    ; $4bdd: $02
    add b                                         ; $4bde: $80
    ld b, b                                       ; $4bdf: $40

jr_0ab_4be0:
    add b                                         ; $4be0: $80
    ld b, b                                       ; $4be1: $40
    ret nz                                        ; $4be2: $c0

    add b                                         ; $4be3: $80
    inc sp                                        ; $4be4: $33
    ld [bc], a                                    ; $4be5: $02
    add b                                         ; $4be6: $80
    ld l, $00                                     ; $4be7: $2e $00
    ld a, a                                       ; $4be9: $7f
    ld [bc], a                                    ; $4bea: $02
    nop                                           ; $4beb: $00
    db $fc                                        ; $4bec: $fc
    ld h, a                                       ; $4bed: $67
    nop                                           ; $4bee: $00
    ld hl, sp+$08                                 ; $4bef: $f8 $08
    xor b                                         ; $4bf1: $a8
    ld a, [hl+]                                   ; $4bf2: $2a
    rlca                                          ; $4bf3: $07
    nop                                           ; $4bf4: $00
    bit 4, e                                      ; $4bf5: $cb $63
    rst $00                                       ; $4bf7: $c7
    ld sp, $106a                                  ; $4bf8: $31 $6a $10
    dec e                                         ; $4bfb: $1d
    ld b, b                                       ; $4bfc: $40
    nop                                           ; $4bfd: $00
    nop                                           ; $4bfe: $00
    ld h, c                                       ; $4bff: $61
    ld e, [hl]                                    ; $4c00: $5e
    ld a, b                                       ; $4c01: $78
    ld h, a                                       ; $4c02: $67
    rrca                                          ; $4c03: $0f
    inc sp                                        ; $4c04: $33
    rrca                                          ; $4c05: $0f
    nop                                           ; $4c06: $00
    sub a                                         ; $4c07: $97
    ret nz                                        ; $4c08: $c0

    rrca                                          ; $4c09: $0f
    ldh [$27], a                                  ; $4c0a: $e0 $27
    inc de                                        ; $4c0c: $13
    ldh a, [rP1]                                  ; $4c0d: $f0 $00
    nop                                           ; $4c0f: $00
    nop                                           ; $4c10: $00
    db $e3                                        ; $4c11: $e3
    inc hl                                        ; $4c12: $23
    ld sp, $0fc1                                  ; $4c13: $31 $c1 $0f
    pop af                                        ; $4c16: $f1
    ldh [rP1], a                                  ; $4c17: $e0 $00
    jp nc, $9ae0                                  ; $4c19: $d2 $e0 $9a

    dec sp                                        ; $4c1c: $3b
    jp $8179                                      ; $4c1d: $c3 $79 $81


    nop                                           ; $4c20: $00
    nop                                           ; $4c21: $00
    nop                                           ; $4c22: $00
    pop hl                                        ; $4c23: $e1
    ld a, a                                       ; $4c24: $7f
    ldh a, [$cf]                                  ; $4c25: $f0 $cf
    inc e                                         ; $4c27: $1c
    inc de                                        ; $4c28: $13
    daa                                           ; $4c29: $27
    nop                                           ; $4c2a: $00
    and b                                         ; $4c2b: $a0
    rlca                                          ; $4c2c: $07
    ret nz                                        ; $4c2d: $c0

    rra                                           ; $4c2e: $1f
    ret c                                         ; $4c2f: $d8

    ld c, a                                       ; $4c30: $4f
    call z, RST_00                                ; $4c31: $cc $00 $00
    nop                                           ; $4c34: $00
    ld a, [hl]                                    ; $4c35: $7e
    db $d3                                        ; $4c36: $d3
    add e                                         ; $4c37: $83
    ld b, h                                       ; $4c38: $44
    rst $00                                       ; $4c39: $c7
    jp hl                                         ; $4c3a: $e9


    jp nc, Jump_000_1b00                          ; $4c3b: $d2 $00 $1b

    adc d                                         ; $4c3e: $8a
    dec de                                        ; $4c3f: $1b
    inc [hl]                                      ; $4c40: $34
    add d                                         ; $4c41: $82
    ld l, c                                       ; $4c42: $69
    dec b                                         ; $4c43: $05
    ld [bc], a                                    ; $4c44: $02
    ld bc, $fc00                                  ; $4c45: $01 $00 $fc
    ld a, [de]                                    ; $4c48: $1a
    ld c, $f2                                     ; $4c49: $0e $f2
    inc e                                         ; $4c4b: $1c
    db $e4                                        ; $4c4c: $e4
    ld h, h                                       ; $4c4d: $64
    ld [$0480], sp                                ; $4c4e: $08 $80 $04
    ld c, e                                       ; $4c51: $4b
    db $10                                        ; $4c52: $10
    inc bc                                        ; $4c53: $03
    rst $30                                       ; $4c54: $f7
    ld [bc], a                                    ; $4c55: $02
    nop                                           ; $4c56: $00

jr_0ab_4c57:
    dec sp                                        ; $4c57: $3b
    rlca                                          ; $4c58: $07
    rrca                                          ; $4c59: $0f
    inc c                                         ; $4c5a: $0c
    inc e                                         ; $4c5b: $1c
    dec de                                        ; $4c5c: $1b
    rlca                                          ; $4c5d: $07
    add hl, de                                    ; $4c5e: $19
    ld [$370f], sp                                ; $4c5f: $08 $0f $37
    jr c, jr_0ab_4c8b                             ; $4c62: $38 $27

    ld [bc], a                                    ; $4c64: $02
    ld [$edf3], sp                                ; $4c65: $08 $f3 $ed
    pop af                                        ; $4c68: $f1
    nop                                           ; $4c69: $00
    ld de, $e818                                  ; $4c6a: $11 $18 $e8
    jr jr_0ab_4c57                                ; $4c6d: $18 $e8

    inc c                                         ; $4c6f: $0c
    db $f4                                        ; $4c70: $f4
    ld hl, sp+$00                                 ; $4c71: $f8 $00
    db $f4                                        ; $4c73: $f4
    db $fc                                        ; $4c74: $fc
    ei                                            ; $4c75: $fb
    ld hl, sp-$1c                                 ; $4c76: $f8 $e4
    rst $00                                       ; $4c78: $c7
    ld a, h                                       ; $4c79: $7c
    inc a                                         ; $4c7a: $3c
    nop                                           ; $4c7b: $00
    ld b, d                                       ; $4c7c: $42
    ccf                                           ; $4c7d: $3f
    ld a, [hl]                                    ; $4c7e: $7e
    ccf                                           ; $4c7f: $3f
    ld bc, $033c                                  ; $4c80: $01 $3c $03
    daa                                           ; $4c83: $27
    nop                                           ; $4c84: $00
    jr jr_0ab_4ca5                                ; $4c85: $18 $1e

    ld b, $b2                                     ; $4c87: $06 $b2
    adc a                                         ; $4c89: $8f
    dec [hl]                                      ; $4c8a: $35

jr_0ab_4c8b:
    add hl, bc                                    ; $4c8b: $09
    ld b, c                                       ; $4c8c: $41
    nop                                           ; $4c8d: $00
    ccf                                           ; $4c8e: $3f

jr_0ab_4c8f:
    cp $7f                                        ; $4c8f: $fe $7f
    rst $20                                       ; $4c91: $e7
    nop                                           ; $4c92: $00
    db $db                                        ; $4c93: $db
    jr jr_0ab_4cb2                                ; $4c94: $18 $1c

    nop                                           ; $4c96: $00
    inc a                                         ; $4c97: $3c
    rst $38                                       ; $4c98: $ff

jr_0ab_4c99:
    ret nz                                        ; $4c99: $c0

    rra                                           ; $4c9a: $1f
    and b                                         ; $4c9b: $a0
    db $fc                                        ; $4c9c: $fc
    inc c                                         ; $4c9d: $0c
    adc b                                         ; $4c9e: $88

jr_0ab_4c9f:
    nop                                           ; $4c9f: $00
    ld a, b                                       ; $4ca0: $78
    ld [hl], b                                    ; $4ca1: $70
    inc bc                                        ; $4ca2: $03

jr_0ab_4ca3:
    ldh a, [$c3]                                  ; $4ca3: $f0 $c3

jr_0ab_4ca5:
    ccf                                           ; $4ca5: $3f
    ldh a, [$1f]                                  ; $4ca6: $f0 $1f
    nop                                           ; $4ca8: $00
    jr @+$81                                      ; $4ca9: $18 $7f

    rlca                                          ; $4cab: $07
    rlca                                          ; $4cac: $07
    cp e                                          ; $4cad: $bb
    ld hl, sp+$08                                 ; $4cae: $f8 $08
    rrca                                          ; $4cb0: $0f
    nop                                           ; $4cb1: $00

jr_0ab_4cb2:
    rst $30                                       ; $4cb2: $f7
    ldh [rNR11], a                                ; $4cb3: $e0 $11
    ldh [$d7], a                                  ; $4cb5: $e0 $d7
    jp nz, $c627                                  ; $4cb7: $c2 $27 $c6

    nop                                           ; $4cba: $00
    ld c, $71                                     ; $4cbb: $0e $71
    adc a                                         ; $4cbd: $8f
    ld h, d                                       ; $4cbe: $62
    sbc [hl]                                      ; $4cbf: $9e
    ldh [$d8], a                                  ; $4cc0: $e0 $d8
    ldh [rP1], a                                  ; $4cc2: $e0 $00
    ret c                                         ; $4cc4: $d8

    jr c, jr_0ab_4c9f                             ; $4cc5: $38 $d8

    jr nc, jr_0ab_4c99                            ; $4cc7: $30 $d0

    jr c, jr_0ab_4ca3                             ; $4cc9: $38 $d8

    ld a, b                                       ; $4ccb: $78
    nop                                           ; $4ccc: $00
    cp b                                          ; $4ccd: $b8
    ld a, [hl]                                    ; $4cce: $7e
    adc [hl]                                      ; $4ccf: $8e
    ld b, a                                       ; $4cd0: $47
    cp c                                          ; $4cd1: $b9
    jr c, jr_0ab_4cfb                             ; $4cd2: $38 $27

    rla                                           ; $4cd4: $17
    nop                                           ; $4cd5: $00
    rrca                                          ; $4cd6: $0f
    rla                                           ; $4cd7: $17
    rrca                                          ; $4cd8: $0f
    rrca                                          ; $4cd9: $0f
    inc de                                        ; $4cda: $13
    rrca                                          ; $4cdb: $0f
    inc de                                        ; $4cdc: $13
    inc e                                         ; $4cdd: $1c
    add b                                         ; $4cde: $80
    ld [bc], a                                    ; $4cdf: $02
    db $10                                        ; $4ce0: $10
    db $fc                                        ; $4ce1: $fc
    di                                            ; $4ce2: $f3
    nop                                           ; $4ce3: $00
    db $fc                                        ; $4ce4: $fc
    rst $18                                       ; $4ce5: $df
    db $fc                                        ; $4ce6: $fc
    rst $30                                       ; $4ce7: $f7
    nop                                           ; $4ce8: $00
    rlca                                          ; $4ce9: $07
    nop                                           ; $4cea: $00
    xor $36                                       ; $4ceb: $ee $36
    reti                                          ; $4ced: $d9


    ret z                                         ; $4cee: $c8

    dec sp                                        ; $4cef: $3b
    ret nc                                        ; $4cf0: $d0

    nop                                           ; $4cf1: $00
    scf                                           ; $4cf2: $37
    cp h                                          ; $4cf3: $bc
    rrca                                          ; $4cf4: $0f
    rla                                           ; $4cf5: $17
    ldh a, [rIE]                                  ; $4cf6: $f0 $ff
    ldh a, [rTAC]                                 ; $4cf8: $f0 $07
    nop                                           ; $4cfa: $00

jr_0ab_4cfb:
    dec sp                                        ; $4cfb: $3b
    rlca                                          ; $4cfc: $07
    ei                                            ; $4cfd: $fb
    add $45                                       ; $4cfe: $c6 $45
    halt                                          ; $4d00: $76
    sub l                                         ; $4d01: $95
    rra                                           ; $4d02: $1f
    nop                                           ; $4d03: $00
    ldh [$1f], a                                  ; $4d04: $e0 $1f

jr_0ab_4d06:
    xor a                                         ; $4d06: $af
    add a                                         ; $4d07: $87
    rrca                                          ; $4d08: $0f
    ld b, [hl]                                    ; $4d09: $46
    push bc                                       ; $4d0a: $c5
    ld b, d                                       ; $4d0b: $42
    jr nz, jr_0ab_4c8f                            ; $4d0c: $20 $81

    ld b, e                                       ; $4d0e: $43
    ld [bc], a                                    ; $4d0f: $02
    nop                                           ; $4d10: $00
    inc hl                                        ; $4d11: $23
    ldh [$31], a                                  ; $4d12: $e0 $31
    ret nc                                        ; $4d14: $d0

    ld b, a                                       ; $4d15: $47
    nop                                           ; $4d16: $00
    ret z                                         ; $4d17: $c8

    di                                            ; $4d18: $f3
    db $f4                                        ; $4d19: $f4
    ld hl, sp-$09                                 ; $4d1a: $f8 $f7
    db $fc                                        ; $4d1c: $fc
    ldh a, [$0e]                                  ; $4d1d: $f0 $0e
    nop                                           ; $4d1f: $00
    ld a, [c]                                     ; $4d20: $f2
    inc c                                         ; $4d21: $0c
    ldh a, [rTIMA]                                ; $4d22: $f0 $05
    ld sp, hl                                     ; $4d24: $f9
    add hl, bc                                    ; $4d25: $09
    ldh a, [$c4]                                  ; $4d26: $f0 $c4
    nop                                           ; $4d28: $00
    jr c, jr_0ab_4d2f                             ; $4d29: $38 $04

    db $fc                                        ; $4d2b: $fc
    rst $08                                       ; $4d2c: $cf
    or a                                          ; $4d2d: $b7
    ld b, a                                       ; $4d2e: $47

jr_0ab_4d2f:
    jr c, jr_0ab_4d32                             ; $4d2f: $38 $01

    nop                                           ; $4d31: $00

jr_0ab_4d32:
    ld a, [hl]                                    ; $4d32: $7e
    db $e3                                        ; $4d33: $e3
    sbc l                                         ; $4d34: $9d
    rst $30                                       ; $4d35: $f7
    add hl, de                                    ; $4d36: $19
    di                                            ; $4d37: $f3
    inc b                                         ; $4d38: $04
    rst $08                                       ; $4d39: $cf
    nop                                           ; $4d3a: $00
    inc sp                                        ; $4d3b: $33
    rrca                                          ; $4d3c: $0f
    rst $30                                       ; $4d3d: $f7
    rra                                           ; $4d3e: $1f
    rst $28                                       ; $4d3f: $ef
    dec sp                                        ; $4d40: $3b
    db $db                                        ; $4d41: $db
    ret nz                                        ; $4d42: $c0

    ld bc, $80bf                                  ; $4d43: $01 $bf $80
    ld a, a                                       ; $4d46: $7f
    ld a, a                                       ; $4d47: $7f
    di                                            ; $4d48: $f3
    ccf                                           ; $4d49: $3f
    jp Jump_000_00dc                              ; $4d4a: $c3 $dc $00


    nop                                           ; $4d4d: $00
    inc c                                         ; $4d4e: $0c
    ld c, $1c                                     ; $4d4f: $0e $1c
    ld c, c                                       ; $4d51: $49
    ld [hl], c                                    ; $4d52: $71
    rst $10                                       ; $4d53: $d7
    ld [hl], a                                    ; $4d54: $77
    and b                                         ; $4d55: $a0
    nop                                           ; $4d56: $00
    ld l, a                                       ; $4d57: $6f
    and b                                         ; $4d58: $a0
    ld l, a                                       ; $4d59: $6f
    xor a                                         ; $4d5a: $af
    ldh [$a0], a                                  ; $4d5b: $e0 $a0
    ccf                                           ; $4d5d: $3f
    ld [hl], b                                    ; $4d5e: $70
    nop                                           ; $4d5f: $00
    ccf                                           ; $4d60: $3f
    ldh a, [$3f]                                  ; $4d61: $f0 $3f
    rrca                                          ; $4d63: $0f
    nop                                           ; $4d64: $00
    rra                                           ; $4d65: $1f
    rst $38                                       ; $4d66: $ff
    rst $38                                       ; $4d67: $ff
    nop                                           ; $4d68: $00
    ld bc, $fc02                                  ; $4d69: $01 $02 $fc

Call_0ab_4d6c:
    ret nz                                        ; $4d6c: $c0

    cp $1b                                        ; $4d6d: $fe $1b
    db $eb                                        ; $4d6f: $eb
    jr nc, jr_0ab_4d72                            ; $4d70: $30 $00

jr_0ab_4d72:
    ret nc                                        ; $4d72: $d0

    ld c, e                                       ; $4d73: $4b
    adc e                                         ; $4d74: $8b
    adc a                                         ; $4d75: $8f
    ret nc                                        ; $4d76: $d0

    rra                                           ; $4d77: $1f
    xor h                                         ; $4d78: $ac
    or a                                          ; $4d79: $b7
    nop                                           ; $4d7a: $00
    xor b                                         ; $4d7b: $a8
    jr nz, jr_0ab_4dbd                            ; $4d7c: $20 $3f

    ccf                                           ; $4d7e: $3f
    ld e, [hl]                                    ; $4d7f: $5e
    db $d3                                        ; $4d80: $d3
    ld [hl+], a                                   ; $4d81: $22
    jr nc, jr_0ab_4d84                            ; $4d82: $30 $00

jr_0ab_4d84:
    jr nc, jr_0ab_4d06                            ; $4d84: $30 $80

    ret nz                                        ; $4d86: $c0

    pop bc                                        ; $4d87: $c1
    daa                                           ; $4d88: $27
    ret nz                                        ; $4d89: $c0

    ld b, c                                       ; $4d8a: $41
    adc b                                         ; $4d8b: $88
    nop                                           ; $4d8c: $00
    ld c, b                                       ; $4d8d: $48
    ld b, e                                       ; $4d8e: $43

jr_0ab_4d8f:
    add b                                         ; $4d8f: $80
    and d                                         ; $4d90: $a2
    ld hl, $fa09                                  ; $4d91: $21 $09 $fa
    rlca                                          ; $4d94: $07
    nop                                           ; $4d95: $00
    inc b                                         ; $4d96: $04
    inc c                                         ; $4d97: $0c
    inc bc                                        ; $4d98: $03
    ld hl, sp-$01                                 ; $4d99: $f8 $ff
    rra                                           ; $4d9b: $1f
    ld h, b                                       ; $4d9c: $60
    rlca                                          ; $4d9d: $07
    nop                                           ; $4d9e: $00
    ld a, a                                       ; $4d9f: $7f
    ld a, b                                       ; $4da0: $78
    ld a, a                                       ; $4da1: $7f
    ld hl, sp+$7f                                 ; $4da2: $f8 $7f
    jr jr_0ab_4d8f                                ; $4da4: $18 $e9

    ld d, $00                                     ; $4da6: $16 $00
    db $e4                                        ; $4da8: $e4
    ld [de], a                                    ; $4da9: $12
    pop af                                        ; $4daa: $f1
    inc a                                         ; $4dab: $3c
    db $e3                                        ; $4dac: $e3
    ld bc, $ff06                                  ; $4dad: $01 $06 $ff
    nop                                           ; $4db0: $00
    rra                                           ; $4db1: $1f
    ld a, l                                       ; $4db2: $7d
    ld b, e                                       ; $4db3: $43
    rst $38                                       ; $4db4: $ff
    ret nz                                        ; $4db5: $c0

    cp $06                                        ; $4db6: $fe $06
    ld h, [hl]                                    ; $4db8: $66
    nop                                           ; $4db9: $00
    sbc [hl]                                      ; $4dba: $9e
    ld [hl], b                                    ; $4dbb: $70
    inc c                                         ; $4dbc: $0c

jr_0ab_4dbd:
    inc d                                         ; $4dbd: $14
    adc [hl]                                      ; $4dbe: $8e
    db $ed                                        ; $4dbf: $ed
    and $f5                                       ; $4dc0: $e6 $f5
    nop                                           ; $4dc2: $00
    di                                            ; $4dc3: $f3
    inc b                                         ; $4dc4: $04
    di                                            ; $4dc5: $f3
    dec b                                         ; $4dc6: $05
    ld a, [c]                                     ; $4dc7: $f2
    cpl                                           ; $4dc8: $2f
    ld h, b                                       ; $4dc9: $60
    ld d, b                                       ; $4dca: $50
    nop                                           ; $4dcb: $00
    ld h, a                                       ; $4dcc: $67
    ld d, b                                       ; $4dcd: $50
    daa                                           ; $4dce: $27
    rla                                           ; $4dcf: $17
    daa                                           ; $4dd0: $27
    dec de                                        ; $4dd1: $1b
    inc hl                                        ; $4dd2: $23
    ld hl, sp+$40                                 ; $4dd3: $f8 $40
    db $e3                                        ; $4dd5: $e3
    ld [bc], a                                    ; $4dd6: $02
    ld [$fec1], sp                                ; $4dd7: $08 $c1 $fe
    ret nz                                        ; $4dda: $c0

    rst $38                                       ; $4ddb: $ff
    rra                                           ; $4ddc: $1f
    nop                                           ; $4ddd: $00
    nop                                           ; $4dde: $00

jr_0ab_4ddf:
    ret nz                                        ; $4ddf: $c0

    rst $38                                       ; $4de0: $ff
    ei                                            ; $4de1: $fb
    ldh [$f8], a                                  ; $4de2: $e0 $f8
    rst $38                                       ; $4de4: $ff
    ld hl, sp-$10                                 ; $4de5: $f8 $f0
    nop                                           ; $4de7: $00
    ldh a, [$f8]                                  ; $4de8: $f0 $f8
    ld a, a                                       ; $4dea: $7f
    cp $fe                                        ; $4deb: $fe $fe
    cp $0e                                        ; $4ded: $fe $0e
    db $fc                                        ; $4def: $fc
    nop                                           ; $4df0: $00
    ld [bc], a                                    ; $4df1: $02
    cp $d5                                        ; $4df2: $fe $d5
    add hl, sp                                    ; $4df4: $39
    ld a, b                                       ; $4df5: $78
    cp l                                          ; $4df6: $bd
    ld a, b                                       ; $4df7: $78
    sub c                                         ; $4df8: $91
    nop                                           ; $4df9: $00
    adc e                                         ; $4dfa: $8b
    ld a, [$a503]                                 ; $4dfb: $fa $03 $a5
    add hl, bc                                    ; $4dfe: $09
    sub [hl]                                      ; $4dff: $96
    jr @-$59                                      ; $4e00: $18 $a5

    nop                                           ; $4e02: $00
    pop de                                        ; $4e03: $d1
    adc e                                         ; $4e04: $8b
    rlca                                          ; $4e05: $07
    xor b                                         ; $4e06: $a8
    rrca                                          ; $4e07: $0f
    ret z                                         ; $4e08: $c8

    sbc b                                         ; $4e09: $98
    sub a                                         ; $4e0a: $97
    nop                                           ; $4e0b: $00
    sbc b                                         ; $4e0c: $98
    rlca                                          ; $4e0d: $07
    rlca                                          ; $4e0e: $07
    ei                                            ; $4e0f: $fb
    inc bc                                        ; $4e10: $03
    inc b                                         ; $4e11: $04
    ld [hl], h                                    ; $4e12: $74
    ld [hl], e                                    ; $4e13: $73
    nop                                           ; $4e14: $00
    rst $28                                       ; $4e15: $ef
    jr z, jr_0ab_4ddf                             ; $4e16: $28 $c7

    ret z                                         ; $4e18: $c8

    rst $00                                       ; $4e19: $c7
    adc [hl]                                      ; $4e1a: $8e
    add a                                         ; $4e1b: $87
    ld c, a                                       ; $4e1c: $4f
    nop                                           ; $4e1d: $00
    add a                                         ; $4e1e: $87
    ld c, a                                       ; $4e1f: $4f
    rst $38                                       ; $4e20: $ff
    ld bc, $f000                                  ; $4e21: $01 $00 $f0
    db $fd                                        ; $4e24: $fd
    dec e                                         ; $4e25: $1d
    nop                                           ; $4e26: $00
    nop                                           ; $4e27: $00
    rst $38                                       ; $4e28: $ff
    rra                                           ; $4e29: $1f
    rra                                           ; $4e2a: $1f
    ret nz                                        ; $4e2b: $c0

    ccf                                           ; $4e2c: $3f
    nop                                           ; $4e2d: $00
    ld a, $00                                     ; $4e2e: $3e $00
    cp $3d                                        ; $4e30: $fe $3d
    or $f3                                        ; $4e32: $f6 $f3
    ld l, [hl]                                    ; $4e34: $6e
    db $e3                                        ; $4e35: $e3
    rrca                                          ; $4e36: $0f
    pop hl                                        ; $4e37: $e1
    nop                                           ; $4e38: $00
    rrca                                          ; $4e39: $0f
    pop hl                                        ; $4e3a: $e1
    rst $08                                       ; $4e3b: $cf
    inc de                                        ; $4e3c: $13
    adc $12                                       ; $4e3d: $ce $12
    ret c                                         ; $4e3f: $d8

    sub $02                                       ; $4e40: $d6 $02
    ret c                                         ; $4e42: $d8

    db $f4                                        ; $4e43: $f4
    ld hl, sp-$1b                                 ; $4e44: $f8 $e5
    ld a, b                                       ; $4e46: $78
    ld h, l                                       ; $4e47: $65
    ld [bc], a                                    ; $4e48: $02
    nop                                           ; $4e49: $00
    ld h, [hl]                                    ; $4e4a: $66
    nop                                           ; $4e4b: $00
    ld a, h                                       ; $4e4c: $7c
    ld h, d                                       ; $4e4d: $62
    inc a                                         ; $4e4e: $3c
    ld a, [hl-]                                   ; $4e4f: $3a
    inc c                                         ; $4e50: $0c
    dec bc                                        ; $4e51: $0b
    ld c, $0d                                     ; $4e52: $0e $0d
    nop                                           ; $4e54: $00
    pop af                                        ; $4e55: $f1
    ld a, [$29fa]                                 ; $4e56: $fa $fa $29
    call c, $0f53                                 ; $4e59: $dc $53 $0f
    rlca                                          ; $4e5c: $07
    nop                                           ; $4e5d: $00
    ccf                                           ; $4e5e: $3f
    add $7f                                       ; $4e5f: $c6 $7f
    ret nz                                        ; $4e61: $c0

    ld a, a                                       ; $4e62: $7f
    ld b, b                                       ; $4e63: $40
    inc bc                                        ; $4e64: $03
    ld a, h                                       ; $4e65: $7c
    nop                                           ; $4e66: $00
    rra                                           ; $4e67: $1f
    db $fc                                        ; $4e68: $fc
    ld e, $e2                                     ; $4e69: $1e $e2
    ld e, $e6                                     ; $4e6b: $1e $e6
    adc $f0                                       ; $4e6d: $ce $f0
    jr nz, @-$40                                  ; $4e6f: $20 $be

    ret nz                                        ; $4e71: $c0

    xor e                                         ; $4e72: $ab
    nop                                           ; $4e73: $00
    db $fc                                        ; $4e74: $fc
    ld a, [c]                                     ; $4e75: $f2
    db $fc                                        ; $4e76: $fc
    cp b                                          ; $4e77: $b8
    daa                                           ; $4e78: $27
    nop                                           ; $4e79: $00
    jr z, @+$39                                   ; $4e7a: $28 $37

    inc a                                         ; $4e7c: $3c
    inc bc                                        ; $4e7d: $03
    ld a, b                                       ; $4e7e: $78
    ld b, a                                       ; $4e7f: $47
    ccf                                           ; $4e80: $3f
    ld h, e                                       ; $4e81: $63
    nop                                           ; $4e82: $00
    ld a, a                                       ; $4e83: $7f
    scf                                           ; $4e84: $37
    inc e                                         ; $4e85: $1c
    ld h, e                                       ; $4e86: $63
    ld a, a                                       ; $4e87: $7f
    ld h, e                                       ; $4e88: $63
    ret z                                         ; $4e89: $c8

    rlca                                          ; $4e8a: $07
    nop                                           ; $4e8b: $00
    ret c                                         ; $4e8c: $d8

    ld d, a                                       ; $4e8d: $57
    ret c                                         ; $4e8e: $d8

    ld d, a                                       ; $4e8f: $57
    call c, $8713                                 ; $4e90: $dc $13 $87
    ld c, e                                       ; $4e93: $4b
    nop                                           ; $4e94: $00
    add e                                         ; $4e95: $83
    push bc                                       ; $4e96: $c5
    pop bc                                        ; $4e97: $c1
    and e                                         ; $4e98: $a3
    rst $38                                       ; $4e99: $ff
    pop hl                                        ; $4e9a: $e1
    nop                                           ; $4e9b: $00
    ld a, $00                                     ; $4e9c: $3e $00
    ld a, [hl]                                    ; $4e9e: $7e
    adc c                                         ; $4e9f: $89
    nop                                           ; $4ea0: $00
    rra                                           ; $4ea1: $1f
    rra                                           ; $4ea2: $1f
    ld c, $18                                     ; $4ea3: $0e $18
    rla                                           ; $4ea5: $17
    nop                                           ; $4ea6: $00
    jr @+$19                                      ; $4ea7: $18 $17

    ld hl, sp+$0e                                 ; $4ea9: $f8 $0e
    db $fc                                        ; $4eab: $fc
    ld c, $f8                                     ; $4eac: $0e $f8
    db $f4                                        ; $4eae: $f4
    nop                                           ; $4eaf: $00
    ld hl, sp-$0a                                 ; $4eb0: $f8 $f6
    ld hl, sp-$1a                                 ; $4eb2: $f8 $e6
    ld hl, sp+$66                                 ; $4eb4: $f8 $66
    cp h                                          ; $4eb6: $bc
    ld a, b                                       ; $4eb7: $78
    nop                                           ; $4eb8: $00
    inc a                                         ; $4eb9: $3c
    ld [hl], b                                    ; $4eba: $70
    ccf                                           ; $4ebb: $3f
    rst $18                                       ; $4ebc: $df
    ld a, h                                       ; $4ebd: $7c
    sbc h                                         ; $4ebe: $9c
    ld c, $09                                     ; $4ebf: $0e $09
    nop                                           ; $4ec1: $00
    inc e                                         ; $4ec2: $1c
    inc de                                        ; $4ec3: $13
    jr jr_0ab_4edd                                ; $4ec4: $18 $17

    jr nc, jr_0ab_4ef7                            ; $4ec6: $30 $2f

    jr nc, jr_0ab_4ef9                            ; $4ec8: $30 $2f

    nop                                           ; $4eca: $00
    rra                                           ; $4ecb: $1f
    rrca                                          ; $4ecc: $0f
    rrca                                          ; $4ecd: $0f
    rra                                           ; $4ece: $1f
    rrca                                          ; $4ecf: $0f
    rla                                           ; $4ed0: $17
    add a                                         ; $4ed1: $87
    ld hl, sp+$00                                 ; $4ed2: $f8 $00
    ldh a, [$b3]                                  ; $4ed4: $f0 $b3
    ldh [$03], a                                  ; $4ed6: $e0 $03
    jp nz, $04c1                                  ; $4ed8: $c2 $c1 $04

    inc bc                                        ; $4edb: $03
    nop                                           ; $4edc: $00

jr_0ab_4edd:
    rra                                           ; $4edd: $1f
    ld hl, sp+$5f                                 ; $4ede: $f8 $5f
    ret nc                                        ; $4ee0: $d0

    rst $18                                       ; $4ee1: $df
    ret nz                                        ; $4ee2: $c0

    ld [c], a                                     ; $4ee3: $e2
    db $fc                                        ; $4ee4: $fc

jr_0ab_4ee5:
    nop                                           ; $4ee5: $00
    ld [c], a                                     ; $4ee6: $e2
    ld e, $c6                                     ; $4ee7: $1e $c6
    ld a, [hl-]                                   ; $4ee9: $3a
    db $fc                                        ; $4eea: $fc
    jr c, jr_0ab_4ee5                             ; $4eeb: $38 $f8

    dec a                                         ; $4eed: $3d
    nop                                           ; $4eee: $00
    add hl, bc                                    ; $4eef: $09
    ldh a, [rNR13]                                ; $4ef0: $f0 $13
    pop hl                                        ; $4ef2: $e1
    db $f4                                        ; $4ef3: $f4
    rlca                                          ; $4ef4: $07
    sbc h                                         ; $4ef5: $9c

jr_0ab_4ef6:
    db $e3                                        ; $4ef6: $e3

jr_0ab_4ef7:
    nop                                           ; $4ef7: $00
    inc e                                         ; $4ef8: $1c

jr_0ab_4ef9:
    ld h, e                                       ; $4ef9: $63
    ld e, h                                       ; $4efa: $5c
    inc hl                                        ; $4efb: $23
    sbc h                                         ; $4efc: $9c
    db $e3                                        ; $4efd: $e3
    ld h, e                                       ; $4efe: $63
    push de                                       ; $4eff: $d5

Jump_0ab_4f00:
    nop                                           ; $4f00: $00
    db $e3                                        ; $4f01: $e3
    push bc                                       ; $4f02: $c5
    inc h                                         ; $4f03: $24
    rst $00                                       ; $4f04: $c7
    rst $20                                       ; $4f05: $e7
    inc b                                         ; $4f06: $04
    ldh [$91], a                                  ; $4f07: $e0 $91
    nop                                           ; $4f09: $00
    ldh a, [$c9]                                  ; $4f0a: $f0 $c9
    jr jr_0ab_4ef6                                ; $4f0c: $18 $e8

    inc e                                         ; $4f0e: $1c
    db $e4                                        ; $4f0f: $e4
    db $ec                                        ; $4f10: $ec
    db $e3                                        ; $4f11: $e3
    nop                                           ; $4f12: $00
    db $fc                                        ; $4f13: $fc
    di                                            ; $4f14: $f3
    rst $00                                       ; $4f15: $c7
    add sp, -$39                                  ; $4f16: $e8 $c7
    ret c                                         ; $4f18: $d8

    adc $11                                       ; $4f19: $ce $11
    nop                                           ; $4f1b: $00
    adc l                                         ; $4f1c: $8d
    ld e, [hl]                                    ; $4f1d: $5e
    pop hl                                        ; $4f1e: $e1
    ld e, h                                       ; $4f1f: $5c
    ret nc                                        ; $4f20: $d0

    dec a                                         ; $4f21: $3d
    ldh [$3d], a                                  ; $4f22: $e0 $3d
    nop                                           ; $4f24: $00
    ldh a, [rNR31]                                ; $4f25: $f0 $1b
    dec bc                                        ; $4f27: $0b
    ld hl, sp+$03                                 ; $4f28: $f8 $03
    ld sp, hl                                     ; $4f2a: $f9
    ld h, b                                       ; $4f2b: $60
    add b                                         ; $4f2c: $80
    nop                                           ; $4f2d: $00
    ld [hl], b                                    ; $4f2e: $70
    or b                                          ; $4f2f: $b0
    inc a                                         ; $4f30: $3c
    call z, $e61e                                 ; $4f31: $cc $1e $e6
    add h                                         ; $4f34: $84
    ld hl, sp+$02                                 ; $4f35: $f8 $02
    add $b8                                       ; $4f37: $c6 $b8
    ld a, a                                       ; $4f39: $7f
    add c                                         ; $4f3a: $81
    rst $38                                       ; $4f3b: $ff
    db $e3                                        ; $4f3c: $e3
    jr z, jr_0ab_4f49                             ; $4f3d: $28 $0a

    rrca                                          ; $4f3f: $0f
    nop                                           ; $4f40: $00
    ld [$0b0c], sp                                ; $4f41: $08 $0c $0b
    rrca                                          ; $4f44: $0f
    inc c                                         ; $4f45: $0c
    ld hl, sp+$09                                 ; $4f46: $f8 $09
    db $fc                                        ; $4f48: $fc

jr_0ab_4f49:
    nop                                           ; $4f49: $00
    inc b                                         ; $4f4a: $04
    nop                                           ; $4f4b: $00
    nop                                           ; $4f4c: $00
    cpl                                           ; $4f4d: $2f
    ldh [$8f], a                                  ; $4f4e: $e0 $8f
    ldh [rIF], a                                  ; $4f50: $e0 $0f
    nop                                           ; $4f52: $00
    ld h, b                                       ; $4f53: $60
    ld [hl], b                                    ; $4f54: $70
    rla                                           ; $4f55: $17
    ld [hl], b                                    ; $4f56: $70
    nop                                           ; $4f57: $00
    ld a, b                                       ; $4f58: $78
    rra                                           ; $4f59: $1f
    ld a, $00                                     ; $4f5a: $3e $00
    rlca                                          ; $4f5c: $07
    add hl, sp                                    ; $4f5d: $39
    rlca                                          ; $4f5e: $07
    ldh a, [rIF]                                  ; $4f5f: $f0 $0f
    rla                                           ; $4f61: $17
    ld [$003e], sp                                ; $4f62: $08 $3e $00
    ccf                                           ; $4f65: $3f
    ld hl, sp+$7f                                 ; $4f66: $f8 $7f
    nop                                           ; $4f68: $00
    nop                                           ; $4f69: $00
    add b                                         ; $4f6a: $80
    ld [hl], b                                    ; $4f6b: $70
    ldh a, [rP1]                                  ; $4f6c: $f0 $00
    rst $28                                       ; $4f6e: $ef
    rra                                           ; $4f6f: $1f
    ld hl, sp+$27                                 ; $4f70: $f8 $27
    db $e3                                        ; $4f72: $e3

jr_0ab_4f73:
    rlca                                          ; $4f73: $07
    ldh [$e0], a                                  ; $4f74: $e0 $e0
    nop                                           ; $4f76: $00
    nop                                           ; $4f77: $00
    ldh [$df], a                                  ; $4f78: $e0 $df
    ccf                                           ; $4f7a: $3f
    ccf                                           ; $4f7b: $3f
    pop bc                                        ; $4f7c: $c1
    ld a, $e1                                     ; $4f7d: $3e $e1
    nop                                           ; $4f7f: $00
    jp nc, $dfe0                                  ; $4f80: $d2 $e0 $df

    inc c                                         ; $4f83: $0c
    db $e3                                        ; $4f84: $e3
    inc a                                         ; $4f85: $3c
    rst $18                                       ; $4f86: $df
    inc a                                         ; $4f87: $3c
    ld bc, $3e1e                                  ; $4f88: $01 $1e $3e
    ld e, l                                       ; $4f8b: $5d
    nop                                           ; $4f8c: $00
    nop                                           ; $4f8d: $00
    di                                            ; $4f8e: $f3
    rrca                                          ; $4f8f: $0f
    ld d, [hl]                                    ; $4f90: $56
    ld [bc], a                                    ; $4f91: $02
    nop                                           ; $4f92: $00
    dec de                                        ; $4f93: $1b

jr_0ab_4f94:
    or $f1                                        ; $4f94: $f6 $f1
    db $f4                                        ; $4f96: $f4
    ld a, [c]                                     ; $4f97: $f2
    ldh a, [rTMA]                                 ; $4f98: $f0 $06
    ld [c], a                                     ; $4f9a: $e2
    nop                                           ; $4f9b: $00
    xor $06                                       ; $4f9c: $ee $06
    inc c                                         ; $4f9e: $0c
    ld c, $fc                                     ; $4f9f: $0e $fc
    inc a                                         ; $4fa1: $3c
    ldh a, [$3c]                                  ; $4fa2: $f0 $3c
    nop                                           ; $4fa4: $00
    ldh a, [$e3]                                  ; $4fa5: $f0 $e3
    cp $7c                                        ; $4fa7: $fe $7c
    ret nz                                        ; $4fa9: $c0

    ld a, b                                       ; $4faa: $78
    cp b                                          ; $4fab: $b8
    ld [hl], b                                    ; $4fac: $70
    ld [bc], a                                    ; $4fad: $02
    or b                                          ; $4fae: $b0
    ld b, b                                       ; $4faf: $40
    add b                                         ; $4fb0: $80
    add b                                         ; $4fb1: $80
    add b                                         ; $4fb2: $80
    nop                                           ; $4fb3: $00
    ld bc, $1000                                  ; $4fb4: $01 $00 $10
    inc bc                                        ; $4fb7: $03
    ld a, [hl]                                    ; $4fb8: $7e
    ld [bc], a                                    ; $4fb9: $02
    ld b, b                                       ; $4fba: $40
    nop                                           ; $4fbb: $00
    ld bc, $f9f8                                  ; $4fbc: $01 $f8 $f9
    ld b, $f2                                     ; $4fbf: $06 $f2
    inc c                                         ; $4fc1: $0c
    pop hl                                        ; $4fc2: $e1
    jr jr_0ab_4fc5                                ; $4fc3: $18 $00

jr_0ab_4fc5:
    reti                                          ; $4fc5: $d9


    jr c, @-$75                                   ; $4fc6: $38 $89

    jr c, jr_0ab_4f73                             ; $4fc8: $38 $a9

    jr c, @+$3a                                   ; $4fca: $38 $38

    nop                                           ; $4fcc: $00
    nop                                           ; $4fcd: $00
    rst $20                                       ; $4fce: $e7
    jr jr_0ab_4f94                                ; $4fcf: $18 $c3

    inc a                                         ; $4fd1: $3c
    add c                                         ; $4fd2: $81
    and $80                                       ; $4fd3: $e6 $80
    sbc b                                         ; $4fd5: $98
    nop                                           ; $4fd6: $00
    add e                                         ; $4fd7: $83
    cp h                                          ; $4fd8: $bc
    add b                                         ; $4fd9: $80
    ld e, $c0                                     ; $4fda: $1e $c0
    ld e, [hl]                                    ; $4fdc: $5e
    pop bc                                        ; $4fdd: $c1
    rst $38                                       ; $4fde: $ff
    nop                                           ; $4fdf: $00
    nop                                           ; $4fe0: $00
    pop af                                        ; $4fe1: $f1
    ld d, $06                                     ; $4fe2: $16 $06
    nop                                           ; $4fe4: $00
    inc b                                         ; $4fe5: $04
    rlca                                          ; $4fe6: $07
    add e                                         ; $4fe7: $83
    ld bc, $03f4                                  ; $4fe8: $01 $f4 $03
    ldh a, [$63]                                  ; $4feb: $f0 $63
    ldh [$3b], a                                  ; $4fed: $e0 $3b
    ldh [$50], a                                  ; $4fef: $e0 $50
    stop                                          ; $4ff1: $10 $00
    rst $38                                       ; $4ff3: $ff
    ld b, b                                       ; $4ff4: $40
    ccf                                           ; $4ff5: $3f
    add b                                         ; $4ff6: $80
    ccf                                           ; $4ff7: $3f
    add b                                         ; $4ff8: $80

jr_0ab_4ff9:
    cp a                                          ; $4ff9: $bf
    ccf                                           ; $4ffa: $3f
    inc d                                         ; $4ffb: $14
    cp a                                          ; $4ffc: $bf
    cp a                                          ; $4ffd: $bf
    ccf                                           ; $4ffe: $3f
    ld h, b                                       ; $4fff: $60
    ldh [$fe], a                                  ; $5000: $e0 $fe
    inc b                                         ; $5002: $04
    ld [$fc01], sp                                ; $5003: $08 $01 $fc
    nop                                           ; $5006: $00
    inc bc                                        ; $5007: $03
    ldh a, [$0c]                                  ; $5008: $f0 $0c
    ldh [rNR24], a                                ; $500a: $e0 $19
    ld a, [de]                                    ; $500c: $1a
    ld [hl], $31                                  ; $500d: $36 $31
    nop                                           ; $500f: $00
    rrca                                          ; $5010: $0f
    jp $1b38                                      ; $5011: $c3 $38 $1b


    nop                                           ; $5014: $00
    ld e, b                                       ; $5015: $58
    dec e                                         ; $5016: $1d
    call c, $0100                                 ; $5017: $dc $00 $01
    dec c                                         ; $501a: $0d
    adc h                                         ; $501b: $8c
    ldh [rNR21], a                                ; $501c: $e0 $16
    ldh a, [$f2]                                  ; $501e: $f0 $f2
    ldh a, [rP1]                                  ; $5020: $f0 $00
    inc bc                                        ; $5022: $03
    ld sp, hl                                     ; $5023: $f9
    ld b, e                                       ; $5024: $43
    ld e, $01                                     ; $5025: $1e $01
    nop                                           ; $5027: $00
    db $fc                                        ; $5028: $fc
    ld a, [hl]                                    ; $5029: $7e
    nop                                           ; $502a: $00
    rst $38                                       ; $502b: $ff
    rst $38                                       ; $502c: $ff
    cp $7f                                        ; $502d: $fe $7f
    ld h, $7c                                     ; $502f: $26 $7c
    inc a                                         ; $5031: $3c
    cp l                                          ; $5032: $bd
    nop                                           ; $5033: $00
    jr c, jr_0ab_5055                             ; $5034: $38 $1f

    dec bc                                        ; $5036: $0b
    add b                                         ; $5037: $80
    halt                                          ; $5038: $76
    ld [hl], b                                    ; $5039: $70
    ld [hl], b                                    ; $503a: $70
    ld b, $00                                     ; $503b: $06 $00
    adc b                                         ; $503d: $88
    add h                                         ; $503e: $84
    ld l, b                                       ; $503f: $68
    ld h, c                                       ; $5040: $61
    ret nc                                        ; $5041: $d0

    ret nz                                        ; $5042: $c0

    add a                                         ; $5043: $87
    and c                                         ; $5044: $a1
    nop                                           ; $5045: $00
    rrca                                          ; $5046: $0f
    ld c, h                                       ; $5047: $4c
    ld a, a                                       ; $5048: $7f
    nop                                           ; $5049: $00
    ld a, a                                       ; $504a: $7f
    nop                                           ; $504b: $00
    add b                                         ; $504c: $80
    ccf                                           ; $504d: $3f
    nop                                           ; $504e: $00
    ret nz                                        ; $504f: $c0

    rrca                                          ; $5050: $0f
    ld [hl], a                                    ; $5051: $77
    rlca                                          ; $5052: $07
    dec de                                        ; $5053: $1b
    add e                                         ; $5054: $83

jr_0ab_5055:
    inc c                                         ; $5055: $0c
    ld l, h                                       ; $5056: $6c
    inc l                                         ; $5057: $2c
    add a                                         ; $5058: $87
    scf                                           ; $5059: $37
    ret nc                                        ; $505a: $d0

    ld c, b                                       ; $505b: $48
    rst $38                                       ; $505c: $ff
    inc e                                         ; $505d: $1c
    nop                                           ; $505e: $00
    ld e, h                                       ; $505f: $5c
    ld [$e00e], sp                                ; $5060: $08 $0e $e0

jr_0ab_5063:
    nop                                           ; $5063: $00
    ret c                                         ; $5064: $d8

    ret nz                                        ; $5065: $c0

    jr nc, @+$04                                  ; $5066: $30 $02

    ld bc, $0860                                  ; $5068: $01 $60 $08
    ld l, b                                       ; $506b: $68
    nop                                           ; $506c: $00
    and b                                         ; $506d: $a0

jr_0ab_506e:
    adc b                                         ; $506e: $88
    jr c, jr_0ab_4ff9                             ; $506f: $38 $88

    ld h, c                                       ; $5071: $61
    ld h, b                                       ; $5072: $60
    add d                                         ; $5073: $82
    add h                                         ; $5074: $84
    nop                                           ; $5075: $00
    ld h, b                                       ; $5076: $60
    ld b, $66                                     ; $5077: $06 $66
    ld b, $20                                     ; $5079: $06 $20
    add b                                         ; $507b: $80
    and [hl]                                      ; $507c: $a6
    add b                                         ; $507d: $80
    nop                                           ; $507e: $00
    ld [bc], a                                    ; $507f: $02
    ld a, [de]                                    ; $5080: $1a
    ld bc, $ac00                                  ; $5081: $01 $00 $ac
    inc c                                         ; $5084: $0c
    xor b                                         ; $5085: $a8
    ld b, $00                                     ; $5086: $06 $00
    xor b                                         ; $5088: $a8
    ld b, $0e                                     ; $5089: $06 $0e
    ld a, [bc]                                    ; $508b: $0a
    db $10                                        ; $508c: $10
    ret nz                                        ; $508d: $c0

    ret c                                         ; $508e: $d8

    jp nz, $1a00                                  ; $508f: $c2 $00 $1a

    jp nz, $9018                                  ; $5092: $c2 $18 $90

    db $10                                        ; $5095: $10
    db $d3                                        ; $5096: $d3
    ld d, b                                       ; $5097: $50
    ld d, b                                       ; $5098: $50
    nop                                           ; $5099: $00
    add hl, bc                                    ; $509a: $09
    add $09                                       ; $509b: $c6 $09
    jr nc, jr_0ab_506e                            ; $509d: $30 $cf

    or $6d                                        ; $509f: $f6 $6d
    cp e                                          ; $50a1: $bb
    nop                                           ; $50a2: $00
    add hl, hl                                    ; $50a3: $29
    add hl, de                                    ; $50a4: $19
    add e                                         ; $50a5: $83
    rra                                           ; $50a6: $1f
    nop                                           ; $50a7: $00
    ld bc, $3086                                  ; $50a8: $01 $86 $30
    nop                                           ; $50ab: $00

jr_0ab_50ac:
    or l                                          ; $50ac: $b5
    jr nc, jr_0ab_5063                            ; $50ad: $30 $b4

    add l                                         ; $50af: $85
    inc b                                         ; $50b0: $04
    add l                                         ; $50b1: $85
    dec h                                         ; $50b2: $25
    add h                                         ; $50b3: $84
    nop                                           ; $50b4: $00
    ld b, $b6                                     ; $50b5: $06 $b6
    pop bc                                        ; $50b7: $c1
    ld c, c                                       ; $50b8: $49
    ld h, b                                       ; $50b9: $60
    or [hl]                                       ; $50ba: $b6
    inc hl                                        ; $50bb: $23
    inc de                                        ; $50bc: $13
    nop                                           ; $50bd: $00
    sub c                                         ; $50be: $91
    adc c                                         ; $50bf: $89
    add h                                         ; $50c0: $84
    and b                                         ; $50c1: $a0
    add d                                         ; $50c2: $82
    or b                                          ; $50c3: $b0
    xor l                                         ; $50c4: $ad
    inc c                                         ; $50c5: $0c
    jr nz, jr_0ab_5128                            ; $50c6: $20 $60

    inc c                                         ; $50c8: $0c
    ld a, h                                       ; $50c9: $7c
    jr z, jr_0ab_50ac                             ; $50ca: $28 $e0

    inc c                                         ; $50cc: $0c
    ld [hl], b                                    ; $50cd: $70
    ld b, $70                                     ; $50ce: $06 $70
    nop                                           ; $50d0: $00
    ld b, $71                                     ; $50d1: $06 $71
    dec b                                         ; $50d3: $05
    and b                                         ; $50d4: $a0
    add b                                         ; $50d5: $80
    add d                                         ; $50d6: $82
    or h                                          ; $50d7: $b4
    add $00                                       ; $50d8: $c6 $00
    jp nc, $c6d2                                  ; $50da: $d2 $d2 $c6

    pop de                                        ; $50dd: $d1
    pop bc                                        ; $50de: $c1
    db $e3                                        ; $50df: $e3
    add sp, -$15                                  ; $50e0: $e8 $eb
    nop                                           ; $50e2: $00
    ldh [$e8], a                                  ; $50e3: $e0 $e8
    db $e4                                        ; $50e5: $e4
    ld e, d                                       ; $50e6: $5a
    ld b, d                                       ; $50e7: $42
    db $db                                        ; $50e8: $db
    jp $029b                                      ; $50e9: $c3 $9b $02


    jp $a740                                      ; $50ec: $c3 $40 $a7


    rst $38                                       ; $50ef: $ff
    add c                                         ; $50f0: $81
    rst $38                                       ; $50f1: $ff
    ld l, e                                       ; $50f2: $6b
    ld bc, $00fc                                  ; $50f3: $01 $fc $00
    nop                                           ; $50f6: $00
    ld a, [de]                                    ; $50f7: $1a
    jp nz, Jump_000_3802                          ; $50f8: $c2 $02 $38

    inc bc                                        ; $50fb: $03
    ld a, [$00f9]                                 ; $50fc: $fa $f9 $00
    ld a, [$f6f1]                                 ; $50ff: $fa $f1 $f6
    pop hl                                        ; $5102: $e1
    and $92                                       ; $5103: $e6 $92
    adc h                                         ; $5105: $8c
    ld a, h                                       ; $5106: $7c
    nop                                           ; $5107: $00
    ld d, c                                       ; $5108: $51
    jp nc, $900d                                  ; $5109: $d2 $0d $90

    rst $08                                       ; $510c: $cf
    ld a, a                                       ; $510d: $7f
    add c                                         ; $510e: $81
    ld c, [hl]                                    ; $510f: $4e
    nop                                           ; $5110: $00
    inc sp                                        ; $5111: $33
    add b                                         ; $5112: $80
    cp h                                          ; $5113: $bc
    add d                                         ; $5114: $82
    nop                                           ; $5115: $00
    inc a                                         ; $5116: $3c
    ld [bc], a                                    ; $5117: $02
    or b                                          ; $5118: $b0
    nop                                           ; $5119: $00
    adc [hl]                                      ; $511a: $8e
    or b                                          ; $511b: $b0
    and a                                         ; $511c: $a7
    or b                                          ; $511d: $b0
    and [hl]                                      ; $511e: $a6
    ld [hl], b                                    ; $511f: $70
    ld h, $70                                     ; $5120: $26 $70
    nop                                           ; $5122: $00
    ld h, $f0                                     ; $5123: $26 $f0
    dec hl                                        ; $5125: $2b
    ld [hl], b                                    ; $5126: $70
    dec a                                         ; $5127: $3d

jr_0ab_5128:
    add h                                         ; $5128: $84
    or b                                          ; $5129: $b0
    and [hl]                                      ; $512a: $a6
    nop                                           ; $512b: $00
    sub b                                         ; $512c: $90
    ld hl, $d32d                                  ; $512d: $21 $2d $d3
    inc de                                        ; $5130: $13
    dec de                                        ; $5131: $1b
    ret nz                                        ; $5132: $c0

    db $d3                                        ; $5133: $d3
    nop                                           ; $5134: $00
    ret nz                                        ; $5135: $c0

    inc c                                         ; $5136: $0c
    dec l                                         ; $5137: $2d
    inc c                                         ; $5138: $0c

jr_0ab_5139:
    pop hl                                        ; $5139: $e1
    inc c                                         ; $513a: $0c
    db $ec                                        ; $513b: $ec
    inc c                                         ; $513c: $0c
    nop                                           ; $513d: $00
    ldh [rTIMA], a                                ; $513e: $e0 $05
    ld sp, $a10d                                  ; $5140: $31 $0d $a1
    dec bc                                        ; $5143: $0b
    and e                                         ; $5144: $a3
    dec bc                                        ; $5145: $0b
    nop                                           ; $5146: $00
    and e                                         ; $5147: $a3
    sbc b                                         ; $5148: $98
    add e                                         ; $5149: $83
    db $10                                        ; $514a: $10
    rlca                                          ; $514b: $07
    rla                                           ; $514c: $17
    rst $00                                       ; $514d: $c7
    rst $10                                       ; $514e: $d7
    nop                                           ; $514f: $00
    rlca                                          ; $5150: $07
    db $e4                                        ; $5151: $e4
    db $e3                                        ; $5152: $e3
    pop af                                        ; $5153: $f1
    ldh a, [$f0]                                  ; $5154: $f0 $f0
    db $f4                                        ; $5156: $f4
    ld b, $00                                     ; $5157: $06 $00
    ldh a, [rSC]                                  ; $5159: $f0 $02
    ld hl, sp+$02                                 ; $515b: $f8 $02
    ld hl, sp+$03                                 ; $515d: $f8 $03
    ld hl, sp+$00                                 ; $515f: $f8 $00
    nop                                           ; $5161: $00
    db $fc                                        ; $5162: $fc
    ld [bc], a                                    ; $5163: $02
    inc bc                                        ; $5164: $03
    rst $38                                       ; $5165: $ff
    db $fc                                        ; $5166: $fc
    ld [hl], c                                    ; $5167: $71
    inc bc                                        ; $5168: $03
    ld bc, $0600                                  ; $5169: $01 $00 $06
    ld [bc], a                                    ; $516c: $02

jr_0ab_516d:
    ld e, $3c                                     ; $516d: $1e $3c
    dec b                                         ; $516f: $05
    ld a, b                                       ; $5170: $78
    dec de                                        ; $5171: $1b
    ret nc                                        ; $5172: $d0

    nop                                           ; $5173: $00
    add l                                         ; $5174: $85
    ld hl, sp+$23                                 ; $5175: $f8 $23
    ld [hl], d                                    ; $5177: $72
    ld hl, sp+$00                                 ; $5178: $f8 $00
    sub b                                         ; $517a: $90
    inc b                                         ; $517b: $04
    nop                                           ; $517c: $00
    ld b, a                                       ; $517d: $47
    ld [hl], b                                    ; $517e: $70
    rst $20                                       ; $517f: $e7
    jr nz, jr_0ab_5139                            ; $5180: $20 $b7

    ld [hl], $82                                  ; $5182: $36 $82
    or b                                          ; $5184: $b0
    nop                                           ; $5185: $00
    dec [hl]                                      ; $5186: $35
    ld a, b                                       ; $5187: $78
    ld b, [hl]                                    ; $5188: $46
    ld a, b                                       ; $5189: $78
    ld b, [hl]                                    ; $518a: $46
    inc a                                         ; $518b: $3c
    ld c, h                                       ; $518c: $4c
    jr c, jr_0ab_518f                             ; $518d: $38 $00

jr_0ab_518f:
    add hl, bc                                    ; $518f: $09
    ld b, [hl]                                    ; $5190: $46
    rla                                           ; $5191: $17
    ld l, l                                       ; $5192: $6d
    nop                                           ; $5193: $00
    dec bc                                        ; $5194: $0b
    ld [hl], b                                    ; $5195: $70
    ld [de], a                                    ; $5196: $12
    nop                                           ; $5197: $00
    ld c, e                                       ; $5198: $4b
    rlca                                          ; $5199: $07
    inc e                                         ; $519a: $1c
    rla                                           ; $519b: $17
    ld a, [bc]                                    ; $519c: $0a
    db $10                                        ; $519d: $10
    sbc $28                                       ; $519e: $de $28
    nop                                           ; $51a0: $00
    call z, $e3c2                                 ; $51a1: $cc $c2 $e3
    ld e, h                                       ; $51a4: $5c
    jp z, $1844                                   ; $51a5: $ca $44 $18

    adc l                                         ; $51a8: $8d
    nop                                           ; $51a9: $00
    or h                                          ; $51aa: $b4
    ld [hl], d                                    ; $51ab: $72
    ld [hl], d                                    ; $51ac: $72
    add d                                         ; $51ad: $82
    ld a, $c0                                     ; $51ae: $3e $c0
    ld c, a                                       ; $51b0: $4f
    jr nc, jr_0ab_51b3                            ; $51b1: $30 $00

jr_0ab_51b3:
    ld [hl], e                                    ; $51b3: $73
    sub b                                         ; $51b4: $90
    inc e                                         ; $51b5: $1c
    add h                                         ; $51b6: $84
    ld b, a                                       ; $51b7: $47
    ld hl, sp+$32                                 ; $51b8: $f8 $32
    ld sp, hl                                     ; $51ba: $f9
    nop                                           ; $51bb: $00
    ld [hl+], a                                   ; $51bc: $22
    db $10                                        ; $51bd: $10
    ret nc                                        ; $51be: $d0

    inc b                                         ; $51bf: $04
    nop                                           ; $51c0: $00
    dec b                                         ; $51c1: $05
    ld hl, $000b                                  ; $51c2: $21 $0b $00
    ld b, e                                       ; $51c5: $43
    dec hl                                        ; $51c6: $2b
    inc de                                        ; $51c7: $13
    rla                                           ; $51c8: $17
    rst $20                                       ; $51c9: $e7
    ldh [$cf], a                                  ; $51ca: $e0 $cf
    nop                                           ; $51cc: $00
    nop                                           ; $51cd: $00
    rra                                           ; $51ce: $1f
    inc bc                                        ; $51cf: $03
    pop hl                                        ; $51d0: $e1
    call c, $e0c3                                 ; $51d1: $dc $c3 $e0
    ldh [$fe], a                                  ; $51d4: $e0 $fe
    and b                                         ; $51d6: $a0
    cp c                                          ; $51d7: $b9
    ld bc, $60fe                                  ; $51d8: $01 $fe $60
    ld bc, $0000                                  ; $51db: $01 $00 $00
    ld hl, $032c                                  ; $51de: $21 $2c $03
    nop                                           ; $51e1: $00
    dec l                                         ; $51e2: $2d
    add hl, bc                                    ; $51e3: $09
    ld h, a                                       ; $51e4: $67
    jr nc, jr_0ab_516d                            ; $51e5: $30 $86

    ld sp, $d881                                  ; $51e7: $31 $81 $d8
    nop                                           ; $51ea: $00
    pop bc                                        ; $51eb: $c1
    ld e, b                                       ; $51ec: $58
    ld b, b                                       ; $51ed: $40
    ld d, d                                       ; $51ee: $52
    ld c, h                                       ; $51ef: $4c
    sub c                                         ; $51f0: $91
    ld [de], a                                    ; $51f1: $12
    add hl, de                                    ; $51f2: $19
    nop                                           ; $51f3: $00
    ld e, d                                       ; $51f4: $5a
    ld c, c                                       ; $51f5: $49
    ld a, [bc]                                    ; $51f6: $0a
    ld h, c                                       ; $51f7: $61
    dec hl                                        ; $51f8: $2b
    ld hl, $25b1                                  ; $51f9: $21 $b1 $25
    nop                                           ; $51fc: $00
    or h                                          ; $51fd: $b4
    ld d, b                                       ; $51fe: $50
    add b                                         ; $51ff: $80
    inc h                                         ; $5200: $24
    ld l, h                                       ; $5201: $6c
    ld d, $21                                     ; $5202: $16 $21
    inc h                                         ; $5204: $24
    nop                                           ; $5205: $00
    sub [hl]                                      ; $5206: $96
    xor b                                         ; $5207: $a8
    inc h                                         ; $5208: $24
    and c                                         ; $5209: $a1
    add hl, hl                                    ; $520a: $29
    sub e                                         ; $520b: $93
    dec bc                                        ; $520c: $0b
    sub a                                         ; $520d: $97
    nop                                           ; $520e: $00
    daa                                           ; $520f: $27
    ld c, $2e                                     ; $5210: $0e $2e
    ret c                                         ; $5212: $d8

    jr jr_0ab_5236                                ; $5213: $18 $21

    ld e, c                                       ; $5215: $59
    ld b, c                                       ; $5216: $41
    nop                                           ; $5217: $00
    ld a, [hl-]                                   ; $5218: $3a
    or $f4                                        ; $5219: $f6 $f4
    db $e4                                        ; $521b: $e4
    ld [c], a                                     ; $521c: $e2
    inc c                                         ; $521d: $0c
    ret z                                         ; $521e: $c8

    stop                                          ; $521f: $10 $00
    cp h                                          ; $5221: $bc
    ld b, c                                       ; $5222: $41
    ld [hl], b                                    ; $5223: $70
    sub d                                         ; $5224: $92
    ld h, c                                       ; $5225: $61
    sbc c                                         ; $5226: $99
    cp e                                          ; $5227: $bb
    add hl, sp                                    ; $5228: $39
    nop                                           ; $5229: $00
    cp d                                          ; $522a: $ba
    ld b, e                                       ; $522b: $43
    inc sp                                        ; $522c: $33
    ld b, $36                                     ; $522d: $06 $36
    jr nz, jr_0ab_5253                            ; $522f: $20 $22

    pop bc                                        ; $5231: $c1
    nop                                           ; $5232: $00
    jp nz, $9101                                  ; $5233: $c2 $01 $91

jr_0ab_5236:
    ld hl, $bf11                                  ; $5236: $21 $11 $bf
    ccf                                           ; $5239: $3f
    ccf                                           ; $523a: $3f
    nop                                           ; $523b: $00
    cp a                                          ; $523c: $bf
    ld e, a                                       ; $523d: $5f
    sbc a                                         ; $523e: $9f
    sbc a                                         ; $523f: $9f
    ld e, a                                       ; $5240: $5f
    ld e, a                                       ; $5241: $5f
    sbc a                                         ; $5242: $9f
    ld e, a                                       ; $5243: $5f
    inc b                                         ; $5244: $04
    rra                                           ; $5245: $1f
    ld b, b                                       ; $5246: $40
    ld e, a                                       ; $5247: $5f
    ld b, b                                       ; $5248: $40
    rra                                           ; $5249: $1f
    and b                                         ; $524a: $a0
    ld l, d                                       ; $524b: $6a
    ld h, d                                       ; $524c: $62
    ld l, h                                       ; $524d: $6c
    nop                                           ; $524e: $00
    inc h                                         ; $524f: $24
    ld [hl+], a                                   ; $5250: $22
    inc h                                         ; $5251: $24
    ld [hl+], a                                   ; $5252: $22

jr_0ab_5253:
    add [hl]                                      ; $5253: $86
    or d                                          ; $5254: $b2
    ret nz                                        ; $5255: $c0

    ret nc                                        ; $5256: $d0

    nop                                           ; $5257: $00
    rra                                           ; $5258: $1f
    ret nz                                        ; $5259: $c0

    nop                                           ; $525a: $00
    ret nz                                        ; $525b: $c0

    nop                                           ; $525c: $00
    nop                                           ; $525d: $00
    add hl, de                                    ; $525e: $19
    inc b                                         ; $525f: $04
    inc bc                                        ; $5260: $03
    dec c                                         ; $5261: $0d
    ld de, $4925                                  ; $5262: $11 $25 $49
    dec h                                         ; $5265: $25
    ld b, c                                       ; $5266: $41
    xor $09                                       ; $5267: $ee $09
    call z, Call_000_000a                         ; $5269: $cc $0a $00
    ldh [$03], a                                  ; $526c: $e0 $03
    ldh [$cf], a                                  ; $526e: $e0 $cf
    xor b                                         ; $5270: $a8
    pop bc                                        ; $5271: $c1
    add sp, -$3a                                  ; $5272: $e8 $c6
    add b                                         ; $5274: $80
    db $10                                        ; $5275: $10
    jr @+$01                                      ; $5276: $18 $ff

    nop                                           ; $5278: $00
    call z, $f8aa                                 ; $5279: $cc $aa $f8
    ld [$10b0], sp                                ; $527c: $08 $b0 $10
    ld d, d                                       ; $527f: $52
    ld b, h                                       ; $5280: $44
    add d                                         ; $5281: $82
    db $10                                        ; $5282: $10
    jr z, jr_0ab_5299                             ; $5283: $28 $14

    dec h                                         ; $5285: $25
    inc d                                         ; $5286: $14
    inc h                                         ; $5287: $24
    nop                                           ; $5288: $00
    dec d                                         ; $5289: $15
    ld hl, $210d                                  ; $528a: $21 $0d $21
    ld [$f803], sp                                ; $528d: $08 $03 $f8
    inc bc                                        ; $5290: $03
    ld b, h                                       ; $5291: $44
    inc bc                                        ; $5292: $03
    ld [hl+], a                                   ; $5293: $22
    ld [bc], a                                    ; $5294: $02
    rra                                           ; $5295: $1f
    nop                                           ; $5296: $00
    cp a                                          ; $5297: $bf
    inc bc                                        ; $5298: $03

jr_0ab_5299:
    ld d, e                                       ; $5299: $53
    db $10                                        ; $529a: $10
    inc bc                                        ; $529b: $03
    adc a                                         ; $529c: $8f
    ld [bc], a                                    ; $529d: $02
    ld b, b                                       ; $529e: $40
    nop                                           ; $529f: $00
    ld bc, $feb0                                  ; $52a0: $01 $b0 $fe
    nop                                           ; $52a3: $00
    ld hl, sp+$00                                 ; $52a4: $f8 $00
    ld [c], a                                     ; $52a6: $e2
    pop hl                                        ; $52a7: $e1
    add b                                         ; $52a8: $80
    jr nz, jr_0ab_52c3                            ; $52a9: $20 $18

    ld [bc], a                                    ; $52ab: $02
    db $fc                                        ; $52ac: $fc
    ld bc, $3f81                                  ; $52ad: $01 $81 $3f
    ccf                                           ; $52b0: $3f
    ret nz                                        ; $52b1: $c0

    nop                                           ; $52b2: $00
    ccf                                           ; $52b3: $3f
    nop                                           ; $52b4: $00
    rst $38                                       ; $52b5: $ff
    inc a                                         ; $52b6: $3c
    inc a                                         ; $52b7: $3c
    ld h, d                                       ; $52b8: $62
    ld a, h                                       ; $52b9: $7c
    ld bc, $fe00                                  ; $52ba: $01 $00 $fe
    ld b, e                                       ; $52bd: $43
    ld b, d                                       ; $52be: $42
    adc h                                         ; $52bf: $8c
    ld [hl], h                                    ; $52c0: $74
    db $10                                        ; $52c1: $10
    rra                                           ; $52c2: $1f

jr_0ab_52c3:
    ld h, c                                       ; $52c3: $61
    db $10                                        ; $52c4: $10
    and b                                         ; $52c5: $a0
    ld c, $fa                                     ; $52c6: $0e $fa
    ld b, b                                       ; $52c8: $40
    jr jr_0ab_530b                                ; $52c9: $18 $40

    add b                                         ; $52cb: $80
    nop                                           ; $52cc: $00
    rra                                           ; $52cd: $1f
    ld [bc], a                                    ; $52ce: $02
    ldh [rNR44], a                                ; $52cf: $e0 $23
    ldh a, [$f8]                                  ; $52d1: $f0 $f8
    inc a                                         ; $52d3: $3c
    ld e, d                                       ; $52d4: $5a
    ld d, b                                       ; $52d5: $50
    ld c, b                                       ; $52d6: $48
    rst $38                                       ; $52d7: $ff
    jr nz, jr_0ab_52da                            ; $52d8: $20 $00

jr_0ab_52da:
    ld a, a                                       ; $52da: $7f
    ld e, l                                       ; $52db: $5d
    or b                                          ; $52dc: $b0
    ld bc, $f9fc                                  ; $52dd: $01 $fc $f9
    ld a, [$00fa]                                 ; $52e0: $fa $fa $00
    ld hl, sp-$0c                                 ; $52e3: $f8 $f4
    pop af                                        ; $52e5: $f1
    ret z                                         ; $52e6: $c8

    rst $00                                       ; $52e7: $c7
    ld [hl+], a                                   ; $52e8: $22
    ld e, $49                                     ; $52e9: $1e $49
    nop                                           ; $52eb: $00
    ld a, b                                       ; $52ec: $78
    dec h                                         ; $52ed: $25
    ld b, d                                       ; $52ee: $42
    inc d                                         ; $52ef: $14
    adc h                                         ; $52f0: $8c
    ld [hl], b                                    ; $52f1: $70
    ld b, e                                       ; $52f2: $43
    ldh [rP1], a                                  ; $52f3: $e0 $00
    xor a                                         ; $52f5: $af
    ret nz                                        ; $52f6: $c0

    ld e, a                                       ; $52f7: $5f
    ld b, b                                       ; $52f8: $40
    add b                                         ; $52f9: $80
    ccf                                           ; $52fa: $3f
    jr z, jr_0ab_533c                             ; $52fb: $28 $3f

    db $10                                        ; $52fd: $10
    rst $00                                       ; $52fe: $c7
    ld b, b                                       ; $52ff: $40
    ret nz                                        ; $5300: $c0

    ld a, [hl-]                                   ; $5301: $3a
    nop                                           ; $5302: $00
    db $fc                                        ; $5303: $fc
    inc bc                                        ; $5304: $03
    pop af                                        ; $5305: $f1
    ld b, $00                                     ; $5306: $06 $00
    add $3f                                       ; $5308: $c6 $3f
    rra                                           ; $530a: $1f

jr_0ab_530b:
    add c                                         ; $530b: $81
    ld h, c                                       ; $530c: $61
    db $fc                                        ; $530d: $fc
    ld [bc], a                                    ; $530e: $02
    ld a, [bc]                                    ; $530f: $0a
    nop                                           ; $5310: $00
    dec bc                                        ; $5311: $0b
    add hl, bc                                    ; $5312: $09
    ret c                                         ; $5313: $d8

    ld d, $1a                                     ; $5314: $16 $1a
    dec h                                         ; $5316: $25
    ld d, h                                       ; $5317: $54
    add h                                         ; $5318: $84
    nop                                           ; $5319: $00
    ld b, h                                       ; $531a: $44
    rra                                           ; $531b: $1f
    ld h, $8e                                     ; $531c: $26 $8e
    db $d3                                        ; $531e: $d3
    and $cb                                       ; $531f: $e6 $cb
    ld h, [hl]                                    ; $5321: $66
    nop                                           ; $5322: $00
    ld h, b                                       ; $5323: $60
    dec [hl]                                      ; $5324: $35
    add b                                         ; $5325: $80
    jp nc, $0703                                  ; $5326: $d2 $03 $07

    inc bc                                        ; $5329: $03
    call nc, $a200                                ; $532a: $d4 $00 $a2
    cp a                                          ; $532d: $bf
    add b                                         ; $532e: $80
    ccf                                           ; $532f: $3f
    add b                                         ; $5330: $80
    ld e, a                                       ; $5331: $5f
    ld e, a                                       ; $5332: $5f
    sub a                                         ; $5333: $97
    nop                                           ; $5334: $00
    ld c, a                                       ; $5335: $4f
    ld c, e                                       ; $5336: $4b
    sub a                                         ; $5337: $97
    ld b, l                                       ; $5338: $45
    db $db                                        ; $5339: $db
    and e                                         ; $533a: $a3
    inc l                                         ; $533b: $2c

jr_0ab_533c:
    ld sp, $3640                                  ; $533c: $31 $40 $36
    ret nc                                        ; $533f: $d0

    ld c, b                                       ; $5340: $48
    ld h, e                                       ; $5341: $63
    db $e3                                        ; $5342: $e3
    sub l                                         ; $5343: $95
    ld c, c                                       ; $5344: $49
    jp hl                                         ; $5345: $e9


    db $e4                                        ; $5346: $e4
    nop                                           ; $5347: $00
    ld a, [bc]                                    ; $5348: $0a
    rla                                           ; $5349: $17
    ld d, $08                                     ; $534a: $16 $08
    ld c, h                                       ; $534c: $4c
    ld a, [de]                                    ; $534d: $1a
    call z, Call_000_0015                         ; $534e: $cc $15 $00
    sbc b                                         ; $5351: $98
    adc c                                         ; $5352: $89
    sbc b                                         ; $5353: $98
    sub e                                         ; $5354: $93
    sbc b                                         ; $5355: $98
    dec bc                                        ; $5356: $0b
    add b                                         ; $5357: $80
    cp a                                          ; $5358: $bf
    nop                                           ; $5359: $00
    ld a, a                                       ; $535a: $7f
    ccf                                           ; $535b: $3f
    db $fc                                        ; $535c: $fc
    ld a, a                                       ; $535d: $7f
    ld hl, sp+$01                                 ; $535e: $f8 $01
    di                                            ; $5360: $f3
    inc bc                                        ; $5361: $03
    nop                                           ; $5362: $00
    inc de                                        ; $5363: $13
    ld a, [c]                                     ; $5364: $f2
    cpl                                           ; $5365: $2f
    add sp, -$7d                                  ; $5366: $e8 $83
    sbc h                                         ; $5368: $9c
    inc l                                         ; $5369: $2c
    adc h                                         ; $536a: $8c
    nop                                           ; $536b: $00
    ld e, c                                       ; $536c: $59
    dec b                                         ; $536d: $05
    or c                                          ; $536e: $b1
    dec bc                                        ; $536f: $0b
    sbc b                                         ; $5370: $98
    xor e                                         ; $5371: $ab
    ld [hl], c                                    ; $5372: $71
    ld [de], a                                    ; $5373: $12
    nop                                           ; $5374: $00
    ld b, $63                                     ; $5375: $06 $63
    ld b, $85                                     ; $5377: $06 $85
    ld b, $8d                                     ; $5379: $06 $8d
    call $0088                                    ; $537b: $cd $88 $00
    adc b                                         ; $537e: $88
    ld c, e                                       ; $537f: $4b
    adc l                                         ; $5380: $8d
    dec d                                         ; $5381: $15
    sub e                                         ; $5382: $93
    and b                                         ; $5383: $a0
    ld l, c                                       ; $5384: $69
    ld a, [bc]                                    ; $5385: $0a
    nop                                           ; $5386: $00
    ret c                                         ; $5387: $d8

    rra                                           ; $5388: $1f
    ld e, $07                                     ; $5389: $1e $07
    ccf                                           ; $538b: $3f
    inc bc                                        ; $538c: $03
    add hl, de                                    ; $538d: $19
    ld c, c                                       ; $538e: $49
    nop                                           ; $538f: $00
    ldh a, [$fc]                                  ; $5390: $f0 $fc
    ld d, b                                       ; $5392: $50
    db $e4                                        ; $5393: $e4
    sbc e                                         ; $5394: $9b
    ret z                                         ; $5395: $c8

    di                                            ; $5396: $f3
    ld e, d                                       ; $5397: $5a
    nop                                           ; $5398: $00
    ld d, e                                       ; $5399: $53
    adc b                                         ; $539a: $88
    ld a, [de]                                    ; $539b: $1a
    ld d, h                                       ; $539c: $54
    inc d                                         ; $539d: $14
    sub c                                         ; $539e: $91
    add c                                         ; $539f: $81
    cp b                                          ; $53a0: $b8
    nop                                           ; $53a1: $00
    add b                                         ; $53a2: $80
    ld a, $7e                                     ; $53a3: $3e $7e
    nop                                           ; $53a5: $00
    ld a, h                                       ; $53a6: $7c
    ld bc, $6000                                  ; $53a7: $01 $00 $60
    nop                                           ; $53aa: $00
    rra                                           ; $53ab: $1f
    ld [de], a                                    ; $53ac: $12
    sub e                                         ; $53ad: $93
    rra                                           ; $53ae: $1f
    add b                                         ; $53af: $80
    rrca                                          ; $53b0: $0f
    dec l                                         ; $53b1: $2d
    sub c                                         ; $53b2: $91
    nop                                           ; $53b3: $00
    dec d                                         ; $53b4: $15
    ld bc, $2226                                  ; $53b5: $01 $26 $22
    ld [c], a                                     ; $53b8: $e2
    ld h, b                                       ; $53b9: $60
    ld [bc], a                                    ; $53ba: $02
    ld hl, sp+$00                                 ; $53bb: $f8 $00
    ld [hl], h                                    ; $53bd: $74
    adc b                                         ; $53be: $88
    ld a, h                                       ; $53bf: $7c
    add b                                         ; $53c0: $80
    add b                                         ; $53c1: $80
    ld bc, $2730                                  ; $53c2: $01 $30 $27
    nop                                           ; $53c5: $00
    rlca                                          ; $53c6: $07
    jr nc, jr_0ab_53d0                            ; $53c7: $30 $07

    ld sp, $3016                                  ; $53c9: $31 $16 $30
    ld d, $30                                     ; $53cc: $16 $30
    nop                                           ; $53ce: $00
    rla                                           ; $53cf: $17

jr_0ab_53d0:
    ld sp, $3013                                  ; $53d0: $31 $13 $30

jr_0ab_53d3:
    sub e                                         ; $53d3: $93
    or b                                          ; $53d4: $b0
    ld b, c                                       ; $53d5: $41
    ld a, $00                                     ; $53d6: $3e $00
    ldh a, [$af]                                  ; $53d8: $f0 $af
    ret nc                                        ; $53da: $d0

    rst $18                                       ; $53db: $df
    rrca                                          ; $53dc: $0f
    rst $10                                       ; $53dd: $d7
    rrca                                          ; $53de: $0f
    ld d, a                                       ; $53df: $57
    nop                                           ; $53e0: $00
    ld e, b                                       ; $53e1: $58
    ld d, a                                       ; $53e2: $57
    ld c, b                                       ; $53e3: $48
    ld b, a                                       ; $53e4: $47
    ld [$0407], sp                                ; $53e5: $08 $07 $04
    adc $00                                       ; $53e8: $ce $00
    add h                                         ; $53ea: $84
    ld c, [hl]                                    ; $53eb: $4e
    call nz, Call_000_3326                        ; $53ec: $c4 $26 $33
    rst $10                                       ; $53ef: $d7
    inc de                                        ; $53f0: $13
    db $e3                                        ; $53f1: $e3
    nop                                           ; $53f2: $00
    db $10                                        ; $53f3: $10
    ldh a, [$2f]                                  ; $53f4: $f0 $2f
    add sp, -$61                                  ; $53f6: $e8 $9f
    ret nc                                        ; $53f8: $d0

    cpl                                           ; $53f9: $2f
    daa                                           ; $53fa: $27
    nop                                           ; $53fb: $00
    ld h, $4e                                     ; $53fc: $26 $4e
    ld a, [hl+]                                   ; $53fe: $2a
    ld h, [hl]                                    ; $53ff: $66
    and l                                         ; $5400: $a5
    ret z                                         ; $5401: $c8

    ld l, c                                       ; $5402: $69
    or h                                          ; $5403: $b4
    nop                                           ; $5404: $00
    ld e, b                                       ; $5405: $58
    or h                                          ; $5406: $b4
    ld e, d                                       ; $5407: $5a
    inc bc                                        ; $5408: $03
    ld l, $1a                                     ; $5409: $2e $1a
    ld b, d                                       ; $540b: $42
    ld [de], a                                    ; $540c: $12
    nop                                           ; $540d: $00
    ld hl, $4340                                  ; $540e: $21 $40 $43
    adc e                                         ; $5411: $8b
    ld a, [de]                                    ; $5412: $1a
    sbc d                                         ; $5413: $9a
    ret nz                                        ; $5414: $c0

    ld d, b                                       ; $5415: $50
    nop                                           ; $5416: $00
    db $10                                        ; $5417: $10
    ld c, $9c                                     ; $5418: $0e $9c
    ld h, $3a                                     ; $541a: $26 $3a
    cpl                                           ; $541c: $2f
    dec de                                        ; $541d: $1b
    inc d                                         ; $541e: $14
    nop                                           ; $541f: $00
    ld h, [hl]                                    ; $5420: $66
    pop hl                                        ; $5421: $e1
    inc hl                                        ; $5422: $23
    db $e3                                        ; $5423: $e3
    sbc b                                         ; $5424: $98
    add b                                         ; $5425: $80
    inc hl                                        ; $5426: $23
    jr c, jr_0ab_5429                             ; $5427: $38 $00

jr_0ab_5429:
    inc hl                                        ; $5429: $23
    cp b                                          ; $542a: $b8
    ld d, c                                       ; $542b: $51
    ret                                           ; $542c: $c9


    dec b                                         ; $542d: $05
    ld c, c                                       ; $542e: $49
    add l                                         ; $542f: $85
    inc bc                                        ; $5430: $03
    nop                                           ; $5431: $00
    and l                                         ; $5432: $a5
    dec bc                                        ; $5433: $0b
    ld c, $68                                     ; $5434: $0e $68
    inc c                                         ; $5436: $0c
    add sp, -$2c                                  ; $5437: $e8 $d4
    jr jr_0ab_543b                                ; $5439: $18 $00

jr_0ab_543b:
    ret nc                                        ; $543b: $d0

    inc e                                         ; $543c: $1c
    ret nc                                        ; $543d: $d0

    jr @-$2e                                      ; $543e: $18 $d0

    jr jr_0ab_53d3                                ; $5440: $18 $91

    or h                                          ; $5442: $b4
    nop                                           ; $5443: $00
    ld de, $3334                                  ; $5444: $11 $34 $33
    ld b, $14                                     ; $5447: $06 $14
    ld sp, $1214                                  ; $5449: $31 $14 $12
    nop                                           ; $544c: $00
    ld b, $12                                     ; $544d: $06 $12
    ld d, $08                                     ; $544f: $16 $08
    ld [c], a                                     ; $5451: $e2
    add sp, -$78                                  ; $5452: $e8 $88
    add a                                         ; $5454: $87
    nop                                           ; $5455: $00
    rlca                                          ; $5456: $07
    add [hl]                                      ; $5457: $86
    rlca                                          ; $5458: $07
    add h                                         ; $5459: $84
    ld b, [hl]                                    ; $545a: $46
    ret nz                                        ; $545b: $c0

    ld c, $c0                                     ; $545c: $0e $c0
    nop                                           ; $545e: $00
    ld l, $e0                                     ; $545f: $2e $e0
    ld l, $60                                     ; $5461: $2e $60
    ld h, d                                       ; $5463: $62
    ld b, $1c                                     ; $5464: $06 $1c
    add h                                         ; $5466: $84
    nop                                           ; $5467: $00
    ld a, [bc]                                    ; $5468: $0a
    inc sp                                        ; $5469: $33
    ld [bc], a                                    ; $546a: $02
    inc sp                                        ; $546b: $33
    ld bc, $1071                                  ; $546c: $01 $71 $10
    ld h, b                                       ; $546f: $60
    nop                                           ; $5470: $00
    ld h, [hl]                                    ; $5471: $66
    sub [hl]                                      ; $5472: $96
    ld l, [hl]                                    ; $5473: $6e
    adc [hl]                                      ; $5474: $8e
    ldh [$60], a                                  ; $5475: $e0 $60
    ld h, b                                       ; $5477: $60
    adc l                                         ; $5478: $8d
    nop                                           ; $5479: $00
    pop hl                                        ; $547a: $e1
    reti                                          ; $547b: $d9


    add hl, sp                                    ; $547c: $39
    ret nz                                        ; $547d: $c0

    dec de                                        ; $547e: $1b
    ld a, [$f271]                                 ; $547f: $fa $71 $f2
    nop                                           ; $5482: $00
    add hl, bc                                    ; $5483: $09
    ld h, b                                       ; $5484: $60
    dec b                                         ; $5485: $05
    inc c                                         ; $5486: $0c
    dec h                                         ; $5487: $25
    inc l                                         ; $5488: $2c
    dec de                                        ; $5489: $1b
    sbc d                                         ; $548a: $9a
    nop                                           ; $548b: $00
    ld bc, $b080                                  ; $548c: $01 $80 $b0
    and c                                         ; $548f: $a1
    or b                                          ; $5490: $b0
    add c                                         ; $5491: $81
    ld hl, $0011                                  ; $5492: $21 $11 $00
    jr nz, jr_0ab_54e7                            ; $5495: $20 $50

    ld h, b                                       ; $5497: $60
    jr nc, jr_0ab_54fa                            ; $5498: $30 $60

    ld [hl], b                                    ; $549a: $70
    ld l, h                                       ; $549b: $6c
    ld h, b                                       ; $549c: $60
    nop                                           ; $549d: $00
    ld l, $a4                                     ; $549e: $2e $a4
    ld b, $a2                                     ; $54a0: $06 $a2
    scf                                           ; $54a2: $37
    or d                                          ; $54a3: $b2
    sub b                                         ; $54a4: $90
    daa                                           ; $54a5: $27
    nop                                           ; $54a6: $00
    ret c                                         ; $54a7: $d8

    ld c, a                                       ; $54a8: $4f
    ld c, e                                       ; $54a9: $4b
    sub e                                         ; $54aa: $93
    jp nz, $881a                                  ; $54ab: $c2 $1a $88

    jr c, jr_0ab_54b0                             ; $54ae: $38 $00

jr_0ab_54b0:
    adc b                                         ; $54b0: $88
    jr c, @+$32                                   ; $54b1: $38 $30

    and b                                         ; $54b3: $a0
    ld [hl], b                                    ; $54b4: $70
    ld h, b                                       ; $54b5: $60
    jr nz, jr_0ab_5518                            ; $54b6: $20 $60

    nop                                           ; $54b8: $00
    jr nz, jr_0ab_54fb                            ; $54b9: $20 $40

    ld h, b                                       ; $54bb: $60
    ld b, b                                       ; $54bc: $40
    jr nz, @+$42                                  ; $54bd: $20 $40

    jp hl                                         ; $54bf: $e9


    and $04                                       ; $54c0: $e6 $04
    rlca                                          ; $54c2: $07
    push hl                                       ; $54c3: $e5
    ld [bc], a                                    ; $54c4: $02
    ld a, [c]                                     ; $54c5: $f2
    ld hl, sp-$3f                                 ; $54c6: $f8 $c1
    ld bc, $0001                                  ; $54c8: $01 $01 $00
    ld b, b                                       ; $54cb: $40
    ld bc, $023d                                  ; $54cc: $01 $3d $02
    ld h, d                                       ; $54cf: $62
    ld b, $20                                     ; $54d0: $06 $20
    ld b, $30                                     ; $54d2: $06 $30
    ld d, $00                                     ; $54d4: $16 $00
    or b                                          ; $54d6: $b0
    ld [hl], $30                                  ; $54d7: $36 $30
    or d                                          ; $54d9: $b2
    ld d, b                                       ; $54da: $50
    sub d                                         ; $54db: $92
    sub b                                         ; $54dc: $90
    ld d, e                                       ; $54dd: $53
    nop                                           ; $54de: $00
    ret nz                                        ; $54df: $c0

    sbc b                                         ; $54e0: $98
    ld h, b                                       ; $54e1: $60
    ldh [$6f], a                                  ; $54e2: $e0 $6f
    adc a                                         ; $54e4: $8f
    ld l, a                                       ; $54e5: $6f
    adc a                                         ; $54e6: $8f

jr_0ab_54e7:
    nop                                           ; $54e7: $00
    rrca                                          ; $54e8: $0f
    ld l, a                                       ; $54e9: $6f
    ld c, a                                       ; $54ea: $4f
    cpl                                           ; $54eb: $2f
    ld l, $4e                                     ; $54ec: $2e $4e
    ld h, $56                                     ; $54ee: $26 $56
    nop                                           ; $54f0: $00
    ld b, $36                                     ; $54f1: $06 $36
    inc l                                         ; $54f3: $2c
    add hl, bc                                    ; $54f4: $09
    inc l                                         ; $54f5: $2c
    dec c                                         ; $54f6: $0d
    inc l                                         ; $54f7: $2c
    ld c, l                                       ; $54f8: $4d
    nop                                           ; $54f9: $00

jr_0ab_54fa:
    ld h, h                                       ; $54fa: $64

jr_0ab_54fb:
    ld c, $26                                     ; $54fb: $0e $26
    ld b, b                                       ; $54fd: $40
    ld l, $6c                                     ; $54fe: $2e $6c
    ld b, d                                       ; $5500: $42
    add sp, $34                                   ; $5501: $e8 $34
    ld b, d                                       ; $5503: $42
    jp hl                                         ; $5504: $e9


    ld h, h                                       ; $5505: $64
    nop                                           ; $5506: $00
    ld [bc], a                                    ; $5507: $02

jr_0ab_5508:
    db $10                                        ; $5508: $10
    ld d, b                                       ; $5509: $50
    ld [bc], a                                    ; $550a: $02
    nop                                           ; $550b: $00
    ld d, a                                       ; $550c: $57
    daa                                           ; $550d: $27
    nop                                           ; $550e: $00
    ld b, a                                       ; $550f: $47
    scf                                           ; $5510: $37
    dec de                                        ; $5511: $1b
    jp $031b                                      ; $5512: $c3 $1b $03


    jr @+$35                                      ; $5515: $18 $33

    nop                                           ; $5517: $00

jr_0ab_5518:
    jr jr_0ab_554d                                ; $5518: $18 $33

    ld a, [hl+]                                   ; $551a: $2a
    ld [de], a                                    ; $551b: $12
    ld a, [hl+]                                   ; $551c: $2a
    ld [de], a                                    ; $551d: $12
    jr nc, @+$3c                                  ; $551e: $30 $3a

    nop                                           ; $5520: $00
    jr nc, jr_0ab_554d                            ; $5521: $30 $2a

    ccf                                           ; $5523: $3f
    ld a, a                                       ; $5524: $7f
    ld a, a                                       ; $5525: $7f
    ccf                                           ; $5526: $3f
    ld b, b                                       ; $5527: $40
    ccf                                           ; $5528: $3f
    inc d                                         ; $5529: $14
    nop                                           ; $552a: $00
    ld a, a                                       ; $552b: $7f
    ld a, a                                       ; $552c: $7f
    inc a                                         ; $552d: $3c
    ld [bc], a                                    ; $552e: $02
    add b                                         ; $552f: $80
    sbc l                                         ; $5530: $9d
    add d                                         ; $5531: $82
    ldh [$c8], a                                  ; $5532: $e0 $c8
    nop                                           ; $5534: $00
    inc c                                         ; $5535: $0c
    db $e4                                        ; $5536: $e4
    inc c                                         ; $5537: $0c
    ld h, b                                       ; $5538: $60
    add h                                         ; $5539: $84
    ldh a, [$80]                                  ; $553a: $f0 $80
    ldh a, [rP1]                                  ; $553c: $f0 $00
    ld hl, $381e                                  ; $553e: $21 $1e $38

jr_0ab_5541:
    daa                                           ; $5541: $27
    rrca                                          ; $5542: $0f

jr_0ab_5543:
    inc sp                                        ; $5543: $33
    ld h, $16                                     ; $5544: $26 $16
    nop                                           ; $5546: $00
    jr jr_0ab_5561                                ; $5547: $18 $18

    ld e, $11                                     ; $5549: $1e $11
    inc c                                         ; $554b: $0c
    dec bc                                        ; $554c: $0b

jr_0ab_554d:
    inc bc                                        ; $554d: $03
    inc bc                                        ; $554e: $03
    nop                                           ; $554f: $00
    ret nz                                        ; $5550: $c0

    jr c, jr_0ab_5543                             ; $5551: $38 $f0

    rst $08                                       ; $5553: $cf
    rrca                                          ; $5554: $0f
    pop af                                        ; $5555: $f1
    bit 0, b                                      ; $5556: $cb $40
    nop                                           ; $5558: $00
    jp c, Jump_000_1ac1                           ; $5559: $da $c1 $1a

    pop bc                                        ; $555c: $c1
    ld e, a                                       ; $555d: $5f
    call nc, $8080                                ; $555e: $d4 $80 $80

jr_0ab_5561:
    nop                                           ; $5561: $00
    ld [hl], c                                    ; $5562: $71
    ld c, $f0                                     ; $5563: $0e $f0
    rst $08                                       ; $5565: $cf
    inc e                                         ; $5566: $1c
    inc de                                        ; $5567: $13
    ld h, b                                       ; $5568: $60

jr_0ab_5569:
    ld d, b                                       ; $5569: $50
    nop                                           ; $556a: $00
    jr z, @+$12                                   ; $556b: $28 $10

    or c                                          ; $556d: $b1
    dec l                                         ; $556e: $2d
    jr jr_0ab_5508                                ; $556f: $18 $97

    inc c                                         ; $5571: $0c
    inc bc                                        ; $5572: $03
    nop                                           ; $5573: $00
    scf                                           ; $5574: $37
    add $78                                       ; $5575: $c6 $78
    ret nz                                        ; $5577: $c0

    jr c, jr_0ab_5569                             ; $5578: $38 $ef

    ld h, c                                       ; $557a: $61
    ld sp, $6100                                  ; $557b: $31 $00 $61
    ld d, c                                       ; $557e: $51
    jp nz, $8686                                  ; $557f: $c2 $86 $86

    ld c, $0f                                     ; $5582: $0e $0f
    pop bc                                        ; $5584: $c1
    ld [bc], a                                    ; $5585: $02
    sbc a                                         ; $5586: $9f
    add e                                         ; $5587: $83
    inc c                                         ; $5588: $0c
    jr nc, jr_0ab_55a7                            ; $5589: $30 $1c

    db $e4                                        ; $558b: $e4
    nop                                           ; $558c: $00
    ld l, e                                       ; $558d: $6b
    db $10                                        ; $558e: $10
    inc bc                                        ; $558f: $03
    cp d                                          ; $5590: $ba
    ld [bc], a                                    ; $5591: $02
    ld b, b                                       ; $5592: $40
    nop                                           ; $5593: $00
    ld bc, $ff90                                  ; $5594: $01 $90 $ff
    nop                                           ; $5597: $00
    ei                                            ; $5598: $fb
    nop                                           ; $5599: $00
    push af                                       ; $559a: $f5
    pop af                                        ; $559b: $f1
    ld [$e4ea], sp                                ; $559c: $08 $ea $e4
    dec e                                         ; $559f: $1d
    inc de                                        ; $55a0: $13
    jr nz, jr_0ab_55a3                            ; $55a1: $20 $00

jr_0ab_55a3:
    ld hl, sp+$07                                 ; $55a3: $f8 $07
    db $f4                                        ; $55a5: $f4
    nop                                           ; $55a6: $00

jr_0ab_55a7:
    push af                                       ; $55a7: $f5
    ld a, [c]                                     ; $55a8: $f2
    ld [$e5e4], a                                 ; $55a9: $ea $e4 $e5
    add sp, -$1e                                  ; $55ac: $e8 $e2
    jp hl                                         ; $55ae: $e9


    nop                                           ; $55af: $00
    add hl, hl                                    ; $55b0: $29
    dec bc                                        ; $55b1: $0b
    rst $30                                       ; $55b2: $f7
    bit 0, d                                      ; $55b3: $cb $42
    inc a                                         ; $55b5: $3c
    ld a, [hl+]                                   ; $55b6: $2a
    add hl, sp                                    ; $55b7: $39
    nop                                           ; $55b8: $00
    pop bc                                        ; $55b9: $c1
    ld [bc], a                                    ; $55ba: $02

Jump_0ab_55bb:
    ld b, e                                       ; $55bb: $43
    jr jr_0ab_5541                                ; $55bc: $18 $83

jr_0ab_55be:
    cp b                                          ; $55be: $b8
    rst $00                                       ; $55bf: $c7
    and $00                                       ; $55c0: $e6 $00
    rst $20                                       ; $55c2: $e7
    inc e                                         ; $55c3: $1c
    dec c                                         ; $55c4: $0d
    rlca                                          ; $55c5: $07
    ld e, $07                                     ; $55c6: $1e $07
    ld e, a                                       ; $55c8: $5f
    sub b                                         ; $55c9: $90
    nop                                           ; $55ca: $00
    xor a                                         ; $55cb: $af
    ld c, c                                       ; $55cc: $49
    sub $72                                       ; $55cd: $d6 $72
    db $eb                                        ; $55cf: $eb
    db $10                                        ; $55d0: $10
    dec de                                        ; $55d1: $1b
    nop                                           ; $55d2: $00
    nop                                           ; $55d3: $00
    sbc l                                         ; $55d4: $9d
    sub [hl]                                      ; $55d5: $96
    dec c                                         ; $55d6: $0d
    dec c                                         ; $55d7: $0d
    ld [hl+], a                                   ; $55d8: $22
    ld d, b                                       ; $55d9: $50
    push hl                                       ; $55da: $e5
    ld [bc], a                                    ; $55db: $02
    nop                                           ; $55dc: $00
    ld b, [hl]                                    ; $55dd: $46
    ld c, e                                       ; $55de: $4b
    cpl                                           ; $55df: $2f
    db $10                                        ; $55e0: $10
    rst $18                                       ; $55e1: $df
    ld h, b                                       ; $55e2: $60
    ld a, a                                       ; $55e3: $7f
    add e                                         ; $55e4: $83
    jr nz, @+$80                                  ; $55e5: $20 $7e

    ld c, [hl]                                    ; $55e7: $4e
    ld h, b                                       ; $55e8: $60
    db $10                                        ; $55e9: $10
    ld a, a                                       ; $55ea: $7f
    add b                                         ; $55eb: $80
    ccf                                           ; $55ec: $3f
    ccf                                           ; $55ed: $3f
    cp a                                          ; $55ee: $bf
    inc b                                         ; $55ef: $04
    cp a                                          ; $55f0: $bf
    ccf                                           ; $55f1: $3f
    ld a, a                                       ; $55f2: $7f
    nop                                           ; $55f3: $00
    ld a, a                                       ; $55f4: $7f
    ld e, h                                       ; $55f5: $5c
    db $10                                        ; $55f6: $10
    cp $00                                        ; $55f7: $fe $00
    nop                                           ; $55f9: $00
    db $fc                                        ; $55fa: $fc
    db $fd                                        ; $55fb: $fd
    ld a, [$f9f9]                                 ; $55fc: $fa $f9 $f9
    db $fc                                        ; $55ff: $fc
    cp $fe                                        ; $5600: $fe $fe
    nop                                           ; $5602: $00
    ld bc, $0e03                                  ; $5603: $01 $03 $0e
    nop                                           ; $5606: $00
    inc b                                         ; $5607: $04
    ld bc, $0383                                  ; $5608: $01 $83 $03
    nop                                           ; $560b: $00
    ld b, a                                       ; $560c: $47
    add a                                         ; $560d: $87
    and e                                         ; $560e: $a3
    ld h, e                                       ; $560f: $63
    ret c                                         ; $5610: $d8

    ret nz                                        ; $5611: $c0

    ccf                                           ; $5612: $3f
    add b                                         ; $5613: $80
    nop                                           ; $5614: $00
    ld bc, $2d7f                                  ; $5615: $01 $7f $2d
    ld l, $07                                     ; $5618: $2e $07
    add $83                                       ; $561a: $c6 $83
    ld [hl], d                                    ; $561c: $72
    nop                                           ; $561d: $00
    add hl, sp                                    ; $561e: $39
    ret c                                         ; $561f: $d8

    inc e                                         ; $5620: $1c
    push hl                                       ; $5621: $e5
    ld c, $72                                     ; $5622: $0e $72
    rlca                                          ; $5624: $07
    add hl, de                                    ; $5625: $19
    nop                                           ; $5626: $00
    ld c, $cf                                     ; $5627: $0e $cf
    ldh [$1f], a                                  ; $5629: $e0 $1f
    rst $20                                       ; $562b: $e7
    jr nz, jr_0ab_55be                            ; $562c: $20 $90

    jr jr_0ab_5630                                ; $562e: $18 $00

jr_0ab_5630:
    and e                                         ; $5630: $a3
    ccf                                           ; $5631: $3f
    cp b                                          ; $5632: $b8
    jr c, @-$6c                                   ; $5633: $38 $92

    inc de                                        ; $5635: $13
    ld e, [hl]                                    ; $5636: $5e
    rlca                                          ; $5637: $07
    nop                                           ; $5638: $00
    cpl                                           ; $5639: $2f
    inc bc                                        ; $563a: $03
    jp z, $b7c4                                   ; $563b: $ca $c4 $b7

    add a                                         ; $563e: $87
    ld [bc], a                                    ; $563f: $02
    ld a, d                                       ; $5640: $7a
    nop                                           ; $5641: $00

jr_0ab_5642:
    rst $30                                       ; $5642: $f7
    adc c                                         ; $5643: $89
    inc e                                         ; $5644: $1c
    inc b                                         ; $5645: $04
    ld c, b                                       ; $5646: $48
    add c                                         ; $5647: $81
    adc c                                         ; $5648: $89
    inc e                                         ; $5649: $1c
    nop                                           ; $564a: $00
    ld [$20fd], sp                                ; $564b: $08 $fd $20
    ld hl, $2fe0                                  ; $564e: $21 $e0 $2f
    ld h, b                                       ; $5651: $60
    ld c, a                                       ; $5652: $4f
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    rlca                                          ; $5655: $07
    dec hl                                        ; $5656: $2b
    inc de                                        ; $5657: $13
    dec [hl]                                      ; $5658: $35
    add hl, bc                                    ; $5659: $09
    add hl, bc                                    ; $565a: $09
    dec h                                         ; $565b: $25
    jr nz, jr_0ab_568a                            ; $565c: $20 $2c

    ld b, c                                       ; $565e: $41
    ret nc                                        ; $565f: $d0

    ld d, b                                       ; $5660: $50
    add b                                         ; $5661: $80
    ret nz                                        ; $5662: $c0

    nop                                           ; $5663: $00
    ld bc, $0006                                  ; $5664: $01 $06 $00
    rlca                                          ; $5667: $07
    inc c                                         ; $5668: $0c
    ld b, $1c                                     ; $5669: $06 $1c
    ld c, b                                       ; $566b: $48
    jr nc, jr_0ab_5642                            ; $566c: $30 $d4

    inc h                                         ; $566e: $24
    nop                                           ; $566f: $00
    inc c                                         ; $5670: $0c
    call z, $8021                                 ; $5671: $cc $21 $80
    ld d, a                                       ; $5674: $57
    ld [hl], b                                    ; $5675: $70
    ld h, b                                       ; $5676: $60
    rra                                           ; $5677: $1f
    nop                                           ; $5678: $00
    rra                                           ; $5679: $1f
    ld l, a                                       ; $567a: $6f
    rrca                                          ; $567b: $0f
    di                                            ; $567c: $f3
    sbc h                                         ; $567d: $9c
    sub e                                         ; $567e: $93
    adc a                                         ; $567f: $8f
    adc [hl]                                      ; $5680: $8e

jr_0ab_5681:
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    nop                                           ; $5683: $00
    rlca                                          ; $5684: $07
    ld sp, hl                                     ; $5685: $f9
    rst $38                                       ; $5686: $ff
    rlca                                          ; $5687: $07
    sub [hl]                                      ; $5688: $96
    rst $20                                       ; $5689: $e7

jr_0ab_568a:
    nop                                           ; $568a: $00
    srl b                                         ; $568b: $cb $38
    pop hl                                        ; $568d: $e1
    jr jr_0ab_5681                                ; $568e: $18 $f1

    db $fd                                        ; $5690: $fd
    ld a, [$00fc]                                 ; $5691: $fa $fc $00
    ld hl, sp-$7a                                 ; $5694: $f8 $86
    inc e                                         ; $5696: $1c
    inc de                                        ; $5697: $13
    jp $20e0                                      ; $5698: $c3 $e0 $20


    adc a                                         ; $569b: $8f
    nop                                           ; $569c: $00
    sub b                                         ; $569d: $90
    sbc a                                         ; $569e: $9f
    ld c, a                                       ; $569f: $4f
    rst $20                                       ; $56a0: $e7
    ld h, a                                       ; $56a1: $67
    adc e                                         ; $56a2: $8b
    db $e3                                        ; $56a3: $e3
    call nc, Call_0ab_7100                        ; $56a4: $d4 $00 $71
    ld [hl], d                                    ; $56a7: $72
    jr nc, @+$47                                  ; $56a8: $30 $45

    sub [hl]                                      ; $56aa: $96
    ld h, $f6                                     ; $56ab: $26 $f6
    ld a, [bc]                                    ; $56ad: $0a
    nop                                           ; $56ae: $00
    ld a, [$f106]                                 ; $56af: $fa $06 $f1
    dec b                                         ; $56b2: $05
    ld a, l                                       ; $56b3: $7d
    pop bc                                        ; $56b4: $c1
    cp b                                          ; $56b5: $b8
    ld a, e                                       ; $56b6: $7b
    nop                                           ; $56b7: $00
    ret nz                                        ; $56b8: $c0

    add hl, sp                                    ; $56b9: $39
    ld b, $74                                     ; $56ba: $06 $74
    ld c, $06                                     ; $56bc: $0e $06
    cp c                                          ; $56be: $b9
    ld l, b                                       ; $56bf: $68
    nop                                           ; $56c0: $00
    and b                                         ; $56c1: $a0
    ld h, b                                       ; $56c2: $60
    ld [hl], $d6                                  ; $56c3: $36 $d6
    rrca                                          ; $56c5: $0f
    ldh a, [$e1]                                  ; $56c6: $f0 $e1
    ld e, $00                                     ; $56c8: $1e $00
    ret                                           ; $56ca: $c9


    ld a, [hl-]                                   ; $56cb: $3a
    and e                                         ; $56cc: $a3
    ld h, c                                       ; $56cd: $61
    rst $08                                       ; $56ce: $cf
    ld h, b                                       ; $56cf: $60
    jr nz, @-$3e                                  ; $56d0: $20 $c0

    nop                                           ; $56d2: $00
    ld c, b                                       ; $56d3: $48
    cp b                                          ; $56d4: $b8
    ld h, b                                       ; $56d5: $60
    inc e                                         ; $56d6: $1c
    sub h                                         ; $56d7: $94
    ld c, $8f                                     ; $56d8: $0e $8f
    add [hl]                                      ; $56da: $86
    nop                                           ; $56db: $00
    rst $00                                       ; $56dc: $c7
    inc de                                        ; $56dd: $13
    inc de                                        ; $56de: $13
    add a                                         ; $56df: $87
    ld [hl-], a                                   ; $56e0: $32
    rlca                                          ; $56e1: $07
    ld h, d                                       ; $56e2: $62
    ld [hl], b                                    ; $56e3: $70
    nop                                           ; $56e4: $00
    ld [hl], a                                    ; $56e5: $77
    rlca                                          ; $56e6: $07
    rlca                                          ; $56e7: $07
    daa                                           ; $56e8: $27
    db $10                                        ; $56e9: $10
    rlca                                          ; $56ea: $07
    jr c, jr_0ab_5710                             ; $56eb: $38 $23

    nop                                           ; $56ed: $00
    ld hl, sp-$40                                 ; $56ee: $f8 $c0
    ld hl, sp-$1e                                 ; $56f0: $f8 $e2
    ld [c], a                                     ; $56f2: $e2
    ld hl, sp+$00                                 ; $56f3: $f8 $00
    rlca                                          ; $56f5: $07
    nop                                           ; $56f6: $00
    rlca                                          ; $56f7: $07
    ld sp, hl                                     ; $56f8: $f9
    ld bc, $e002                                  ; $56f9: $01 $02 $e0
    rra                                           ; $56fc: $1f
    jr c, jr_0ab_5736                             ; $56fd: $38 $37

    nop                                           ; $56ff: $00
    rlca                                          ; $5700: $07
    ld sp, hl                                     ; $5701: $f9
    ld [bc], a                                    ; $5702: $02
    cp $05                                        ; $5703: $fe $05
    ld sp, hl                                     ; $5705: $f9
    ldh a, [$f8]                                  ; $5706: $f0 $f8
    nop                                           ; $5708: $00
    ld a, [c]                                     ; $5709: $f2
    ld c, $fc                                     ; $570a: $0e $fc
    inc bc                                        ; $570c: $03
    ld a, [$90ec]                                 ; $570d: $fa $ec $90

jr_0ab_5710:
    adc c                                         ; $5710: $89
    nop                                           ; $5711: $00
    ld [$9033], sp                                ; $5712: $08 $33 $90
    and $a0                                       ; $5715: $e6 $a0
    inc l                                         ; $5717: $2c
    ret nz                                        ; $5718: $c0

    add $00                                       ; $5719: $c6 $00
    ld h, b                                       ; $571b: $60
    ld b, $26                                     ; $571c: $06 $26
    ld d, $12                                     ; $571e: $16 $12
    ld [c], a                                     ; $5720: $e2
    ld [bc], a                                    ; $5721: $02
    adc h                                         ; $5722: $8c
    nop                                           ; $5723: $00
    ld c, [hl]                                    ; $5724: $4e
    ccf                                           ; $5725: $3f
    rra                                           ; $5726: $1f
    ld h, a                                       ; $5727: $67
    ccf                                           ; $5728: $3f
    pop bc                                        ; $5729: $c1
    or $8a                                        ; $572a: $f6 $8a
    nop                                           ; $572c: $00
    jp hl                                         ; $572d: $e9


jr_0ab_572e:
    sub c                                         ; $572e: $91
    or e                                          ; $572f: $b3
    ld b, b                                       ; $5730: $40
    and [hl]                                      ; $5731: $a6
    ld b, [hl]                                    ; $5732: $46
    ld h, c                                       ; $5733: $61
    ld h, a                                       ; $5734: $67
    nop                                           ; $5735: $00

jr_0ab_5736:
    sub h                                         ; $5736: $94
    scf                                           ; $5737: $37
    dec hl                                        ; $5738: $2b
    sbc e                                         ; $5739: $9b
    dec d                                         ; $573a: $15
    reti                                          ; $573b: $d9


    ld b, b                                       ; $573c: $40
    call z, Call_0ab_4100                         ; $573d: $cc $00 $41
    ret nz                                        ; $5740: $c0

    rlca                                          ; $5741: $07
    ldh [$83], a                                  ; $5742: $e0 $83
    ldh a, [$60]                                  ; $5744: $f0 $60
    inc a                                         ; $5746: $3c
    nop                                           ; $5747: $00
    sub b                                         ; $5748: $90
    sbc a                                         ; $5749: $9f
    ld h, d                                       ; $574a: $62
    jp $fc04                                      ; $574b: $c3 $04 $fc


    ld [hl], d                                    ; $574e: $72
    ld b, $00                                     ; $574f: $06 $00
    ld [c], a                                     ; $5751: $e2
    ld c, $e2                                     ; $5752: $0e $e2
    ld c, $e0                                     ; $5754: $0e $e0
    inc c                                         ; $5756: $0c
    ld d, b                                       ; $5757: $50
    inc e                                         ; $5758: $1c
    nop                                           ; $5759: $00
    db $10                                        ; $575a: $10
    sbc h                                         ; $575b: $9c
    jr jr_0ab_572e                                ; $575c: $18 $d0

    ret c                                         ; $575e: $d8

    db $10                                        ; $575f: $10
    pop hl                                        ; $5760: $e1
    db $fc                                        ; $5761: $fc
    ld [bc], a                                    ; $5762: $02
    dec b                                         ; $5763: $05
    inc e                                         ; $5764: $1c
    dec b                                         ; $5765: $05
    inc c                                         ; $5766: $0c
    db $fc                                        ; $5767: $fc
    ld a, [c]                                     ; $5768: $f2
    ld [bc], a                                    ; $5769: $02
    nop                                           ; $576a: $00
    ld a, [$fc00]                                 ; $576b: $fa $00 $fc
    ei                                            ; $576e: $fb
    ld b, $03                                     ; $576f: $06 $03
    rlca                                          ; $5771: $07
    ld a, e                                       ; $5772: $7b
    add b                                         ; $5773: $80
    ld a, $00                                     ; $5774: $3e $00
    add c                                         ; $5776: $81
    dec a                                         ; $5777: $3d
    dec de                                        ; $5778: $1b
    sbc d                                         ; $5779: $9a
    dec de                                        ; $577a: $1b
    ret c                                         ; $577b: $d8

    ret c                                         ; $577c: $d8

    dec de                                        ; $577d: $1b
    nop                                           ; $577e: $00
    ld d, h                                       ; $577f: $54
    rla                                           ; $5780: $17
    rla                                           ; $5781: $17
    ld b, [hl]                                    ; $5782: $46
    ld d, h                                       ; $5783: $54
    ld c, c                                       ; $5784: $49
    inc c                                         ; $5785: $0c
    push de                                       ; $5786: $d5
    nop                                           ; $5787: $00
    ld a, [hl+]                                   ; $5788: $2a
    sub c                                         ; $5789: $91
    cp b                                          ; $578a: $b8
    and e                                         ; $578b: $a3
    jr c, jr_0ab_57b1                             ; $578c: $38 $23

    dec de                                        ; $578e: $1b
    ld h, e                                       ; $578f: $63
    nop                                           ; $5790: $00
    dec sp                                        ; $5791: $3b
    ld b, e                                       ; $5792: $43
    ld a, b                                       ; $5793: $78
    ld b, e                                       ; $5794: $43
    cp a                                          ; $5795: $bf
    ret nz                                        ; $5796: $c0

    cp a                                          ; $5797: $bf
    and b                                         ; $5798: $a0
    nop                                           ; $5799: $00
    ccf                                           ; $579a: $3f
    sbc a                                         ; $579b: $9f
    adc a                                         ; $579c: $8f
    ccf                                           ; $579d: $3f
    ccf                                           ; $579e: $3f
    adc a                                         ; $579f: $8f
    ccf                                           ; $57a0: $3f
    add a                                         ; $57a1: $87
    nop                                           ; $57a2: $00
    or b                                          ; $57a3: $b0
    adc a                                         ; $57a4: $8f
    or b                                          ; $57a5: $b0
    adc a                                         ; $57a6: $8f
    add hl, de                                    ; $57a7: $19
    call nz, $d01d                                ; $57a8: $c4 $1d $d0
    nop                                           ; $57ab: $00
    dec e                                         ; $57ac: $1d
    call nc, $ca0b                                ; $57ad: $d4 $0b $ca
    sub e                                         ; $57b0: $93

jr_0ab_57b1:
    ret nz                                        ; $57b1: $c0

    sub c                                         ; $57b2: $91
    ret z                                         ; $57b3: $c8

    nop                                           ; $57b4: $00
    jr nc, @-$62                                  ; $57b5: $30 $9c

    add hl, sp                                    ; $57b7: $39
    sbc a                                         ; $57b8: $9f
    ret nz                                        ; $57b9: $c0

    cp $d4                                        ; $57ba: $fe $d4
    or a                                          ; $57bc: $b7
    nop                                           ; $57bd: $00
    and $2f                                       ; $57be: $e6 $2f
    ret nz                                        ; $57c0: $c0

    ld e, a                                       ; $57c1: $5f
    ld hl, sp+$20                                 ; $57c2: $f8 $20
    ldh a, [rSCX]                                 ; $57c4: $f0 $43
    nop                                           ; $57c6: $00
    ld d, h                                       ; $57c7: $54
    ldh a, [$08]                                  ; $57c8: $f0 $08
    ld [bc], a                                    ; $57ca: $02
    rrca                                          ; $57cb: $0f
    scf                                           ; $57cc: $37
    adc a                                         ; $57cd: $8f
    scf                                           ; $57ce: $37
    nop                                           ; $57cf: $00
    or b                                          ; $57d0: $b0
    jr nz, jr_0ab_5803                            ; $57d1: $20 $30

    ld h, b                                       ; $57d3: $60
    ccf                                           ; $57d4: $3f
    ld c, a                                       ; $57d5: $4f
    ccf                                           ; $57d6: $3f
    ld c, a                                       ; $57d7: $4f
    nop                                           ; $57d8: $00
    ld h, b                                       ; $57d9: $60
    ret nz                                        ; $57da: $c0

    ld h, b                                       ; $57db: $60
    ret nz                                        ; $57dc: $c0

    ld [bc], a                                    ; $57dd: $02
    ld bc, $fc03                                  ; $57de: $01 $03 $fc
    ld [bc], a                                    ; $57e1: $02
    ld [bc], a                                    ; $57e2: $02
    cp $01                                        ; $57e3: $fe $01
    nop                                           ; $57e5: $00
    nop                                           ; $57e6: $00
    ld bc, $0804                                  ; $57e7: $01 $04 $08
    nop                                           ; $57ea: $00
    nop                                           ; $57eb: $00
    nop                                           ; $57ec: $00
    daa                                           ; $57ed: $27
    ld b, $56                                     ; $57ee: $06 $56
    jr nz, @-$10                                  ; $57f0: $20 $ee

    sbc [hl]                                      ; $57f2: $9e
    ld [hl], b                                    ; $57f3: $70
    nop                                           ; $57f4: $00
    halt                                          ; $57f5: $76
    and b                                         ; $57f6: $a0
    ld b, $c2                                     ; $57f7: $06 $c2
    ld [de], a                                    ; $57f9: $12
    jp nz, $c01a                                  ; $57fa: $c2 $1a $c0

    nop                                           ; $57fd: $00
    sbc h                                         ; $57fe: $9c
    ld a, b                                       ; $57ff: $78
    ld b, c                                       ; $5800: $41
    add hl, sp                                    ; $5801: $39
    pop bc                                        ; $5802: $c1

jr_0ab_5803:
    ld a, [hl-]                                   ; $5803: $3a
    jp z, $00e0                                   ; $5804: $ca $e0 $00

    sbc e                                         ; $5807: $9b
    ldh [$9b], a                                  ; $5808: $e0 $9b

Call_0ab_580a:
    pop hl                                        ; $580a: $e1
    jp c, $dc61                                   ; $580b: $da $61 $dc

    ld a, l                                       ; $580e: $7d
    nop                                           ; $580f: $00
    inc e                                         ; $5810: $1c
    or b                                          ; $5811: $b0
    adc a                                         ; $5812: $8f
    jr nc, jr_0ab_5824                            ; $5813: $30 $0f

    jr nc, jr_0ab_5826                            ; $5815: $30 $0f

    or c                                          ; $5817: $b1
    nop                                           ; $5818: $00
    adc [hl]                                      ; $5819: $8e
    ld sp, $310e                                  ; $581a: $31 $0e $31
    rrca                                          ; $581d: $0f
    ld a, $4e                                     ; $581e: $3e $4e
    ld a, $00                                     ; $5820: $3e $00
    ld c, h                                       ; $5822: $4c
    and [hl]                                      ; $5823: $a6

jr_0ab_5824:
    rla                                           ; $5824: $17
    inc bc                                        ; $5825: $03

jr_0ab_5826:
    inc de                                        ; $5826: $13
    ld e, b                                       ; $5827: $58
    dec sp                                        ; $5828: $3b
    ld a, h                                       ; $5829: $7c
    nop                                           ; $582a: $00
    ld c, c                                       ; $582b: $49
    ld c, d                                       ; $582c: $4a
    ld l, [hl]                                    ; $582d: $6e
    ld c, h                                       ; $582e: $4c
    ld h, a                                       ; $582f: $67
    ld c, [hl]                                    ; $5830: $4e
    dec l                                         ; $5831: $2d
    rst $10                                       ; $5832: $d7
    nop                                           ; $5833: $00
    and h                                         ; $5834: $a4
    rlca                                          ; $5835: $07
    add d                                         ; $5836: $82
    rlca                                          ; $5837: $07
    pop af                                        ; $5838: $f1
    ldh a, [$87]                                  ; $5839: $f0 $87
    ld a, [c]                                     ; $583b: $f2
    nop                                           ; $583c: $00
    jp nc, $ece1                                  ; $583d: $d2 $e1 $ec

    inc de                                        ; $5840: $13
    nop                                           ; $5841: $00
    xor c                                         ; $5842: $a9
    add hl, sp                                    ; $5843: $39
    inc sp                                        ; $5844: $33
    jr nz, jr_0ab_5882                            ; $5845: $20 $3b

    ld h, b                                       ; $5847: $60
    inc l                                         ; $5848: $2c
    ld [bc], a                                    ; $5849: $02
    ld b, b                                       ; $584a: $40
    ld a, a                                       ; $584b: $7f
    add b                                         ; $584c: $80
    ld a, a                                       ; $584d: $7f
    add b                                         ; $584e: $80
    ldh [$be], a                                  ; $584f: $e0 $be
    ld bc, $0004                                  ; $5851: $01 $04 $00
    sbc a                                         ; $5854: $9f
    ld [hl], d                                    ; $5855: $72
    db $e3                                        ; $5856: $e3
    ret                                           ; $5857: $c9


    add a                                         ; $5858: $87
    ld h, h                                       ; $5859: $64
    ld b, e                                       ; $585a: $43
    nop                                           ; $585b: $00
    jr z, @+$63                                   ; $585c: $28 $61

    dec d                                         ; $585e: $15
    ld [hl], b                                    ; $585f: $70
    nop                                           ; $5860: $00
    ld a, b                                       ; $5861: $78
    rra                                           ; $5862: $1f
    ld a, $00                                     ; $5863: $3e $00
    rlca                                          ; $5865: $07
    add hl, sp                                    ; $5866: $39
    rlca                                          ; $5867: $07
    inc a                                         ; $5868: $3c
    sbc h                                         ; $5869: $9c
    ld a, l                                       ; $586a: $7d
    db $fd                                        ; $586b: $fd
    cp d                                          ; $586c: $ba
    nop                                           ; $586d: $00
    add hl, sp                                    ; $586e: $39
    rlca                                          ; $586f: $07
    ld [hl], h                                    ; $5870: $74
    inc bc                                        ; $5871: $03
    nop                                           ; $5872: $00
    ld a, l                                       ; $5873: $7d
    add l                                         ; $5874: $85
    ld c, $00                                     ; $5875: $0e $00
    ldh a, [$1f]                                  ; $5877: $f0 $1f
    ld hl, sp+$42                                 ; $5879: $f8 $42
    inc a                                         ; $587b: $3c
    ld b, d                                       ; $587c: $42
    ld a, $bc                                     ; $587d: $3e $bc
    nop                                           ; $587f: $00
    inc a                                         ; $5880: $3c
    ld e, h                                       ; $5881: $5c

jr_0ab_5882:
    sbc h                                         ; $5882: $9c
    nop                                           ; $5883: $00
    add b                                         ; $5884: $80
    ld a, a                                       ; $5885: $7f
    ld a, $63                                     ; $5886: $3e $63
    nop                                           ; $5888: $00
    and d                                         ; $5889: $a2
    ld h, e                                       ; $588a: $63
    and d                                         ; $588b: $a2
    jp nz, $d4b2                                  ; $588c: $c2 $b2 $d4

    and l                                         ; $588f: $a5
    ld c, $00                                     ; $5890: $0e $00
    db $e4                                        ; $5892: $e4
    ld c, $d3                                     ; $5893: $0e $d3
    nop                                           ; $5895: $00
    ld c, $f5                                     ; $5896: $0e $f5
    ld bc, $003b                                  ; $5898: $01 $3b $00
    ld hl, sp+$3f                                 ; $589b: $f8 $3f

jr_0ab_589d:
    ld hl, sp+$3a                                 ; $589d: $f8 $3a
    ld bc, $d215                                  ; $589f: $01 $15 $d2
    and $00                                       ; $58a2: $e6 $00
    ld b, $6c                                     ; $58a4: $06 $6c
    ld c, $06                                     ; $58a6: $0e $06
    ld [$f06e], sp                                ; $58a8: $08 $6e $f0
    inc a                                         ; $58ab: $3c
    ret nz                                        ; $58ac: $c0

    ld [bc], a                                    ; $58ad: $02
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    ld l, e                                       ; $58b0: $6b
    db $10                                        ; $58b1: $10
    inc bc                                        ; $58b2: $03
    sub e                                         ; $58b3: $93
    ld [bc], a                                    ; $58b4: $02
    ld b, b                                       ; $58b5: $40
    nop                                           ; $58b6: $00
    ld bc, $ff70                                  ; $58b7: $01 $70 $ff
    nop                                           ; $58ba: $00
    rst $20                                       ; $58bb: $e7
    db $10                                        ; $58bc: $10
    ld [$00f3], sp                                ; $58bd: $08 $f3 $00
    ld b, $fb                                     ; $58c0: $06 $fb
    ld a, h                                       ; $58c2: $7c
    ld a, d                                       ; $58c3: $7a
    sbc [hl]                                      ; $58c4: $9e
    db $dd                                        ; $58c5: $dd
    jr nc, @+$13                                  ; $58c6: $30 $11

    add b                                         ; $58c8: $80
    jr nz, jr_0ab_58e3                            ; $58c9: $20 $18

    cp $fe                                        ; $58cb: $fe $fe
    ld a, l                                       ; $58cd: $7d
    db $fc                                        ; $58ce: $fc
    ld hl, sp-$25                                 ; $58cf: $f8 $db
    ldh [rP1], a                                  ; $58d1: $e0 $00
    and [hl]                                      ; $58d3: $a6
    sbc b                                         ; $58d4: $98
    ret nz                                        ; $58d5: $c0

    nop                                           ; $58d6: $00
    rst $20                                       ; $58d7: $e7
    jr jr_0ab_589d                                ; $58d8: $18 $c3

    inc a                                         ; $58da: $3c
    nop                                           ; $58db: $00
    add c                                         ; $58dc: $81
    ld h, [hl]                                    ; $58dd: $66
    nop                                           ; $58de: $00
    jp RST_18                                     ; $58df: $c3 $18 $00


    inc a                                         ; $58e2: $3c

jr_0ab_58e3:
    rst $38                                       ; $58e3: $ff
    jr nz, jr_0ab_58e6                            ; $58e4: $20 $00

jr_0ab_58e6:
    rrca                                          ; $58e6: $0f

jr_0ab_58e7:
    ld [hl-], a                                   ; $58e7: $32
    jr nz, @+$81                                  ; $58e8: $20 $7f

    nop                                           ; $58ea: $00
    cp a                                          ; $58eb: $bf
    ccf                                           ; $58ec: $3f
    sbc $04                                       ; $58ed: $de $04
    rra                                           ; $58ef: $1f
    ld h, a                                       ; $58f0: $67
    rlca                                          ; $58f1: $07
    ld a, [hl-]                                   ; $58f2: $3a
    add d                                         ; $58f3: $82
    ld b, d                                       ; $58f4: $42
    jr jr_0ab_58e7                                ; $58f5: $18 $f0

    nop                                           ; $58f7: $00
    nop                                           ; $58f8: $00
    ld b, $01                                     ; $58f9: $06 $01
    rlca                                          ; $58fb: $07
    rlca                                          ; $58fc: $07
    nop                                           ; $58fd: $00
    rlca                                          ; $58fe: $07
    rlca                                          ; $58ff: $07
    ld [bc], a                                    ; $5900: $02
    add b                                         ; $5901: $80
    ld d, d                                       ; $5902: $52
    jr @+$41                                      ; $5903: $18 $3f

    nop                                           ; $5905: $00
    rrca                                          ; $5906: $0f
    rst $08                                       ; $5907: $cf
    di                                            ; $5908: $f3
    inc bc                                        ; $5909: $03
    dec c                                         ; $590a: $0d
    db $10                                        ; $590b: $10
    pop af                                        ; $590c: $f1
    ld bc, $70f5                                  ; $590d: $01 $f5 $70
    ld h, b                                       ; $5910: $60
    cp $0e                                        ; $5911: $fe $0e
    ld a, [hl-]                                   ; $5913: $3a
    rlca                                          ; $5914: $07
    nop                                           ; $5915: $00
    add hl, de                                    ; $5916: $19
    inc bc                                        ; $5917: $03
    ld c, $04                                     ; $5918: $0e $04
    ld h, l                                       ; $591a: $65
    ld h, $11                                     ; $591b: $26 $11
    ld [de], a                                    ; $591d: $12
    nop                                           ; $591e: $00
    ld a, [bc]                                    ; $591f: $0a
    inc sp                                        ; $5920: $33
    rlca                                          ; $5921: $07
    ret nz                                        ; $5922: $c0

    rlca                                          ; $5923: $07
    scf                                           ; $5924: $37
    pop bc                                        ; $5925: $c1
    rlca                                          ; $5926: $07
    nop                                           ; $5927: $00
    db $e4                                        ; $5928: $e4
    rlca                                          ; $5929: $07
    call z, $d4c3                                 ; $592a: $cc $c3 $d4
    di                                            ; $592d: $f3
    call nz, $0016                                ; $592e: $c4 $16 $00
    ret nz                                        ; $5931: $c0

    db $d3                                        ; $5932: $d3
    ret z                                         ; $5933: $c8

    ld h, h                                       ; $5934: $64
    ld c, b                                       ; $5935: $48
    rst $30                                       ; $5936: $f7
    ldh a, [rNR22]                                ; $5937: $f0 $17
    nop                                           ; $5939: $00
    ldh a, [$b3]                                  ; $593a: $f0 $b3
    or b                                          ; $593c: $b0
    ld [hl], c                                    ; $593d: $71
    ld [hl], h                                    ; $593e: $74
    ld b, [hl]                                    ; $593f: $46
    ld [hl], b                                    ; $5940: $70
    add $00                                       ; $5941: $c6 $00
    ldh a, [rDIV]                                 ; $5943: $f0 $04
    add [hl]                                      ; $5945: $86
    ld c, $d8                                     ; $5946: $0e $d8
    inc c                                         ; $5948: $0c
    ret nz                                        ; $5949: $c0

    ld b, $00                                     ; $594a: $06 $00
    ldh a, [$f8]                                  ; $594c: $f0 $f8
    ld [bc], a                                    ; $594e: $02
    db $fc                                        ; $594f: $fc
    nop                                           ; $5950: $00
    ld a, [$f102]                                 ; $5951: $fa $02 $f1
    nop                                           ; $5954: $00
    ld b, $f1                                     ; $5955: $06 $f1
    push af                                       ; $5957: $f5
    push hl                                       ; $5958: $e5
    jp hl                                         ; $5959: $e9


    nop                                           ; $595a: $00
    ldh a, [$03]                                  ; $595b: $f0 $03
    nop                                           ; $595d: $00
    ld a, c                                       ; $595e: $79
    dec a                                         ; $595f: $3d
    cp h                                          ; $5960: $bc
    dec c                                         ; $5961: $0d
    call z, Call_0ab_7071                         ; $5962: $cc $71 $70
    jr jr_0ab_5967                                ; $5965: $18 $00

jr_0ab_5967:
    sbc c                                         ; $5967: $99
    ldh [rP1], a                                  ; $5968: $e0 $00
    db $ed                                        ; $596a: $ed
    ld c, $1c                                     ; $596b: $0e $1c
    inc c                                         ; $596d: $0c
    add [hl]                                      ; $596e: $86
    nop                                           ; $596f: $00
    inc b                                         ; $5970: $04
    or $c6                                        ; $5971: $f6 $c6
    cp $c2                                        ; $5973: $fe $c2
    ld a, $c0                                     ; $5975: $3e $c0
    ld a, $00                                     ; $5977: $3e $00
    ret nz                                        ; $5979: $c0

    add hl, sp                                    ; $597a: $39

jr_0ab_597b:
    dec b                                         ; $597b: $05
    add hl, de                                    ; $597c: $19
    push bc                                       ; $597d: $c5
    ld bc, $03fc                                  ; $597e: $01 $fc $03
    nop                                           ; $5981: $00
    ldh a, [$0e]                                  ; $5982: $f0 $0e
    ldh [$d8], a                                  ; $5984: $e0 $d8
    pop bc                                        ; $5986: $c1
    jr nc, @+$09                                  ; $5987: $30 $07

    ld h, b                                       ; $5989: $60
    nop                                           ; $598a: $00
    ld c, $61                                     ; $598b: $0e $61
    dec c                                         ; $598d: $0d
    ld hl, $b02c                                  ; $598e: $21 $2c $b0
    scf                                           ; $5991: $37
    rlca                                          ; $5992: $07
    nop                                           ; $5993: $00
    ld [hl], b                                    ; $5994: $70
    inc c                                         ; $5995: $0c
    db $ec                                        ; $5996: $ec
    sbc a                                         ; $5997: $9f
    inc bc                                        ; $5998: $03
    ccf                                           ; $5999: $3f

jr_0ab_599a:
    ld c, a                                       ; $599a: $4f
    ret nz                                        ; $599b: $c0

    nop                                           ; $599c: $00
    cp [hl]                                       ; $599d: $be
    ret nz                                        ; $599e: $c0

    or c                                          ; $599f: $b1
    ld c, a                                       ; $59a0: $4f
    adc a                                         ; $59a1: $8f
    sbc b                                         ; $59a2: $98
    add [hl]                                      ; $59a3: $86
    rla                                           ; $59a4: $17
    nop                                           ; $59a5: $00
    ld a, b                                       ; $59a6: $78
    jr nz, jr_0ab_59e8                            ; $59a7: $20 $3f

    ld c, b                                       ; $59a9: $48
    jr z, @-$6f                                   ; $59aa: $28 $8f

    or e                                          ; $59ac: $b3
    ld [$0f00], sp                                ; $59ad: $08 $00 $0f
    ld b, d                                       ; $59b0: $42
    ld b, c                                       ; $59b1: $41
    ld l, b                                       ; $59b2: $68
    inc l                                         ; $59b3: $2c
    rlca                                          ; $59b4: $07
    dec sp                                        ; $59b5: $3b
    ld e, a                                       ; $59b6: $5f
    nop                                           ; $59b7: $00
    ld l, d                                       ; $59b8: $6a
    ld a, h                                       ; $59b9: $7c
    ld e, [hl]                                    ; $59ba: $5e
    adc c                                         ; $59bb: $89
    adc b                                         ; $59bc: $88
    db $fd                                        ; $59bd: $fd
    jp c, $0036                                   ; $59be: $da $36 $00

    jp z, $c0e0                                   ; $59c1: $ca $e0 $c0

    adc e                                         ; $59c4: $8b
    jr jr_0ab_599a                                ; $59c5: $18 $d3

    jr @+$29                                      ; $59c7: $18 $27

    nop                                           ; $59c9: $00
    jr nc, jr_0ab_597b                            ; $59ca: $30 $af

    ldh [$5f], a                                  ; $59cc: $e0 $5f
    ret nz                                        ; $59ce: $c0

    cp a                                          ; $59cf: $bf
    add b                                         ; $59d0: $80
    ccf                                           ; $59d1: $3f
    nop                                           ; $59d2: $00
    ld b, b                                       ; $59d3: $40
    ld a, a                                       ; $59d4: $7f
    ld b, b                                       ; $59d5: $40
    ccf                                           ; $59d6: $3f
    ret nz                                        ; $59d7: $c0

    rra                                           ; $59d8: $1f
    jp z, $001f                                   ; $59d9: $ca $1f $00

    pop de                                        ; $59dc: $d1
    sbc a                                         ; $59dd: $9f
    and b                                         ; $59de: $a0
    cp [hl]                                       ; $59df: $be
    add c                                         ; $59e0: $81
    xor [hl]                                      ; $59e1: $ae
    ld a, $a0                                     ; $59e2: $3e $a0
    nop                                           ; $59e4: $00
    ld a, $53                                     ; $59e5: $3e $53
    ld l, l                                       ; $59e7: $6d

jr_0ab_59e8:
    ld a, e                                       ; $59e8: $7b
    rlca                                          ; $59e9: $07
    dec h                                         ; $59ea: $25
    pop bc                                        ; $59eb: $c1
    dec h                                         ; $59ec: $25
    nop                                           ; $59ed: $00
    add c                                         ; $59ee: $81
    ld bc, $430c                                  ; $59ef: $01 $0c $43
    ld c, b                                       ; $59f2: $48
    ret z                                         ; $59f3: $c8

    ret z                                         ; $59f4: $c8

    adc [hl]                                      ; $59f5: $8e
    nop                                           ; $59f6: $00
    adc b                                         ; $59f7: $88
    cp [hl]                                       ; $59f8: $be
    cp b                                          ; $59f9: $b8
    ld [hl], h                                    ; $59fa: $74
    ld [hl], c                                    ; $59fb: $71
    ld hl, $312c                                  ; $59fc: $21 $2c $31
    nop                                           ; $59ff: $00
    inc [hl]                                      ; $5a00: $34
    db $10                                        ; $5a01: $10
    dec d                                         ; $5a02: $15
    ret nc                                        ; $5a03: $d0

    jp nz, $c3d8                                  ; $5a04: $c2 $d8 $c3

    add sp, $40                                   ; $5a07: $e8 $40
    db $e3                                        ; $5a09: $e3
    ld [bc], a                                    ; $5a0a: $02
    ld [$3ebe], sp                                ; $5a0b: $08 $be $3e
    ld bc, $037d                                  ; $5a0e: $01 $7d $03

jr_0ab_5a11:
    ld a, d                                       ; $5a11: $7a
    nop                                           ; $5a12: $00
    rlca                                          ; $5a13: $07
    di                                            ; $5a14: $f3
    rrca                                          ; $5a15: $0f
    rst $20                                       ; $5a16: $e7
    ld [de], a                                    ; $5a17: $12
    jp nz, $8434                                  ; $5a18: $c2 $34 $84

    nop                                           ; $5a1b: $00
    and c                                         ; $5a1c: $a1
    adc l                                         ; $5a1d: $8d
    db $ec                                        ; $5a1e: $ec
    xor d                                         ; $5a1f: $aa
    ld b, [hl]                                    ; $5a20: $46
    rrca                                          ; $5a21: $0f
    ld l, b                                       ; $5a22: $68
    rrca                                          ; $5a23: $0f
    nop                                           ; $5a24: $00
    jr nc, jr_0ab_5a3e                            ; $5a25: $30 $17

    jr nc, @+$09                                  ; $5a27: $30 $07

    dec bc                                        ; $5a29: $0b
    ld [hl-], a                                   ; $5a2a: $32
    add e                                         ; $5a2b: $83
    ld [hl-], a                                   ; $5a2c: $32
    nop                                           ; $5a2d: $00
    nop                                           ; $5a2e: $00
    ld sp, $1929                                  ; $5a2f: $31 $29 $19
    ld a, b                                       ; $5a32: $78
    ld a, c                                       ; $5a33: $79
    ld b, e                                       ; $5a34: $43
    ld a, d                                       ; $5a35: $7a
    nop                                           ; $5a36: $00
    ld b, a                                       ; $5a37: $47
    ld [hl], l                                    ; $5a38: $75
    rlca                                          ; $5a39: $07
    pop af                                        ; $5a3a: $f1
    rrca                                          ; $5a3b: $0f
    ld l, c                                       ; $5a3c: $69
    jp hl                                         ; $5a3d: $e9


jr_0ab_5a3e:
    rrca                                          ; $5a3e: $0f
    ld [$0fc9], sp                                ; $5a3f: $08 $c9 $0f
    ccf                                           ; $5a42: $3f
    ld h, b                                       ; $5a43: $60
    ld [bc], a                                    ; $5a44: $02
    jr @-$3f                                      ; $5a45: $18 $bf

    ldh [$3f], a                                  ; $5a47: $e0 $3f
    nop                                           ; $5a49: $00
    ld [hl], b                                    ; $5a4a: $70
    rlca                                          ; $5a4b: $07
    jr nc, jr_0ab_5a11                            ; $5a4c: $30 $c3

    ld e, b                                       ; $5a4e: $58
    ld b, e                                       ; $5a4f: $43
    ld a, $3d                                     ; $5a50: $3e $3d
    nop                                           ; $5a52: $00
    ld b, b                                       ; $5a53: $40
    rlca                                          ; $5a54: $07
    ld a, d                                       ; $5a55: $7a
    ld [hl], a                                    ; $5a56: $77
    dec bc                                        ; $5a57: $0b
    ld de, $3b7c                                  ; $5a58: $11 $7c $3b
    nop                                           ; $5a5b: $00
    ld l, [hl]                                    ; $5a5c: $6e
    ld bc, $1e80                                  ; $5a5d: $01 $80 $1e
    cp h                                          ; $5a60: $bc
    ld [hl], h                                    ; $5a61: $74
    ld [hl], c                                    ; $5a62: $71
    ld l, h                                       ; $5a63: $6c
    nop                                           ; $5a64: $00
    ld h, c                                       ; $5a65: $61
    ld c, b                                       ; $5a66: $48
    ld b, e                                       ; $5a67: $43
    ld c, b                                       ; $5a68: $48
    ld b, e                                       ; $5a69: $43
    sbc b                                         ; $5a6a: $98
    add e                                         ; $5a6b: $83
    sub b                                         ; $5a6c: $90
    nop                                           ; $5a6d: $00
    add a                                         ; $5a6e: $87
    ld b, a                                       ; $5a6f: $47
    rla                                           ; $5a70: $17
    rst $00                                       ; $5a71: $c7
    rla                                           ; $5a72: $17
    db $ec                                        ; $5a73: $ec
    pop hl                                        ; $5a74: $e1
    db $f4                                        ; $5a75: $f4
    nop                                           ; $5a76: $00

jr_0ab_5a77:
    pop af                                        ; $5a77: $f1
    db $f4                                        ; $5a78: $f4
    pop af                                        ; $5a79: $f1
    ld b, $f0                                     ; $5a7a: $06 $f0
    ld [bc], a                                    ; $5a7c: $02
    ld hl, sp+$02                                 ; $5a7d: $f8 $02
    nop                                           ; $5a7f: $00

jr_0ab_5a80:
    ld hl, sp+$03                                 ; $5a80: $f8 $03
    ld hl, sp+$01                                 ; $5a82: $f8 $01
    db $fc                                        ; $5a84: $fc
    ld b, e                                       ; $5a85: $43
    dec sp                                        ; $5a86: $3b
    ld e, b                                       ; $5a87: $58
    nop                                           ; $5a88: $00
    ld a, [bc]                                    ; $5a89: $0a
    ld b, b                                       ; $5a8a: $40
    ld b, $05                                     ; $5a8b: $06 $05
    inc b                                         ; $5a8d: $04
    add b                                         ; $5a8e: $80
    db $ec                                        ; $5a8f: $ec
    add sp, $00                                   ; $5a90: $e8 $00
    adc [hl]                                      ; $5a92: $8e
    ld h, b                                       ; $5a93: $60
    ld c, $12                                     ; $5a94: $0e $12
    ld h, d                                       ; $5a96: $62
    jp nc, Jump_0ab_6262                          ; $5a97: $d2 $62 $62

    nop                                           ; $5a9a: $00
    dec de                                        ; $5a9b: $1b
    db $e3                                        ; $5a9c: $e3
    sbc e                                         ; $5a9d: $9b
    rlca                                          ; $5a9e: $07
    or e                                          ; $5a9f: $b3
    rla                                           ; $5aa0: $17
    ld h, d                                       ; $5aa1: $62
    dec b                                         ; $5aa2: $05
    nop                                           ; $5aa3: $00
    ld c, h                                       ; $5aa4: $4c
    ld b, $04                                     ; $5aa5: $06 $04
    ld [bc], a                                    ; $5aa7: $02
    ld [$0006], sp                                ; $5aa8: $08 $06 $00
    daa                                           ; $5aab: $27
    nop                                           ; $5aac: $00
    ldh [$c2], a                                  ; $5aad: $e0 $c2
    call $e6e1                                    ; $5aaf: $cd $e1 $e6
    add l                                         ; $5ab2: $85
    ld c, a                                       ; $5ab3: $4f
    add c                                         ; $5ab4: $81
    nop                                           ; $5ab5: $00
    add hl, sp                                    ; $5ab6: $39
    ld b, b                                       ; $5ab7: $40
    and e                                         ; $5ab8: $a3
    ld e, l                                       ; $5ab9: $5d
    sbc l                                         ; $5aba: $9d
    ld b, e                                       ; $5abb: $43
    ld c, b                                       ; $5abc: $48
    inc hl                                        ; $5abd: $23
    nop                                           ; $5abe: $00
    jr z, @-$6e                                   ; $5abf: $28 $90

    ld sp, $1290                                  ; $5ac1: $31 $90 $12
    and b                                         ; $5ac4: $a0
    dec sp                                        ; $5ac5: $3b
    ld sp, $3b00                                  ; $5ac6: $31 $00 $3b
    ld [hl], b                                    ; $5ac9: $70
    ld c, d                                       ; $5aca: $4a
    ld [hl], c                                    ; $5acb: $71
    ld b, e                                       ; $5acc: $43
    or b                                          ; $5acd: $b0
    adc $b1                                       ; $5ace: $ce $b1
    nop                                           ; $5ad0: $00
    sbc l                                         ; $5ad1: $9d
    jr c, jr_0ab_5a77                             ; $5ad2: $38 $a3

    jr nc, jr_0ab_5add                            ; $5ad4: $30 $07

    scf                                           ; $5ad6: $37
    jr nc, jr_0ab_5a80                            ; $5ad7: $30 $a7

    nop                                           ; $5ad9: $00
    ret nz                                        ; $5ada: $c0

    ld [hl], $d0                                  ; $5adb: $36 $d0

jr_0ab_5add:
    ld [hl-], a                                   ; $5add: $32
    ldh a, [$37]                                  ; $5ade: $f0 $37
    add a                                         ; $5ae0: $87
    cpl                                           ; $5ae1: $2f
    nop                                           ; $5ae2: $00
    adc a                                         ; $5ae3: $8f
    cpl                                           ; $5ae4: $2f
    adc a                                         ; $5ae5: $8f
    ld l, a                                       ; $5ae6: $6f
    rrca                                          ; $5ae7: $0f
    ld b, b                                       ; $5ae8: $40
    rra                                           ; $5ae9: $1f
    ld b, b                                       ; $5aea: $40
    nop                                           ; $5aeb: $00
    rra                                           ; $5aec: $1f
    ret nz                                        ; $5aed: $c0

    rra                                           ; $5aee: $1f
    add b                                         ; $5aef: $80
    ccf                                           ; $5af0: $3f
    ld bc, $01fc                                  ; $5af1: $01 $fc $01
    ld d, h                                       ; $5af4: $54
    db $fc                                        ; $5af5: $fc
    rrca                                          ; $5af6: $0f
    ld [bc], a                                    ; $5af7: $02
    nop                                           ; $5af8: $00
    ld [bc], a                                    ; $5af9: $02
    ld [$3dff], sp                                ; $5afa: $08 $ff $3d
    ld [bc], a                                    ; $5afd: $02
    ld a, [hl-]                                   ; $5afe: $3a
    ld b, d                                       ; $5aff: $42
    nop                                           ; $5b00: $00
    add b                                         ; $5b01: $80
    ld a, [hl-]                                   ; $5b02: $3a
    add c                                         ; $5b03: $81
    add hl, sp                                    ; $5b04: $39
    add c                                         ; $5b05: $81
    dec h                                         ; $5b06: $25
    add b                                         ; $5b07: $80
    ld h, $00                                     ; $5b08: $26 $00
    ret z                                         ; $5b0a: $c8

    ld c, $48                                     ; $5b0b: $0e $48
    ld c, $44                                     ; $5b0d: $0e $44
    ld c, $19                                     ; $5b0f: $0e $19
    db $fc                                        ; $5b11: $fc
    nop                                           ; $5b12: $00
    jr c, @+$04                                   ; $5b13: $38 $02

    ld sp, $3607                                  ; $5b15: $31 $07 $36
    dec b                                         ; $5b18: $05
    jr jr_0ab_5b1c                                ; $5b19: $18 $01

    nop                                           ; $5b1b: $00

jr_0ab_5b1c:
    rra                                           ; $5b1c: $1f
    inc bc                                        ; $5b1d: $03
    ld e, $80                                     ; $5b1e: $1e $80
    ld c, h                                       ; $5b20: $4c
    pop bc                                        ; $5b21: $c1
    rra                                           ; $5b22: $1f
    adc c                                         ; $5b23: $89
    nop                                           ; $5b24: $00
    rra                                           ; $5b25: $1f
    rra                                           ; $5b26: $1f
    ld b, b                                       ; $5b27: $40
    ld e, $61                                     ; $5b28: $1e $61
    dec c                                         ; $5b2a: $0d
    sbc h                                         ; $5b2b: $9c
    add c                                         ; $5b2c: $81
    nop                                           ; $5b2d: $00
    cp b                                          ; $5b2e: $b8
    add d                                         ; $5b2f: $82
    ld a, b                                       ; $5b30: $78
    ld [bc], a                                    ; $5b31: $02
    di                                            ; $5b32: $f3
    add a                                         ; $5b33: $87
    ld l, c                                       ; $5b34: $69
    ld c, d                                       ; $5b35: $4a
    nop                                           ; $5b36: $00
    inc [hl]                                      ; $5b37: $34
    ld [hl+], a                                   ; $5b38: $22
    or $90                                        ; $5b39: $f6 $90
    dec hl                                        ; $5b3b: $2b
    xor e                                         ; $5b3c: $ab
    ld b, c                                       ; $5b3d: $41
    ld b, d                                       ; $5b3e: $42
    nop                                           ; $5b3f: $00
    ret nz                                        ; $5b40: $c0

    jp $da03                                      ; $5b41: $c3 $03 $da


    inc bc                                        ; $5b44: $03
    ret c                                         ; $5b45: $d8

    db $ec                                        ; $5b46: $ec
    inc h                                         ; $5b47: $24
    nop                                           ; $5b48: $00
    db $ec                                        ; $5b49: $ec
    dec h                                         ; $5b4a: $25
    pop de                                        ; $5b4b: $d1
    call c, $9c91                                 ; $5b4c: $dc $91 $9c
    ld h, c                                       ; $5b4f: $61
    db $ec                                        ; $5b50: $ec
    nop                                           ; $5b51: $00
    inc hl                                        ; $5b52: $23
    add sp, $0a                                   ; $5b53: $e8 $0a
    ret c                                         ; $5b55: $d8

    ld [de], a                                    ; $5b56: $12
    cp b                                          ; $5b57: $b8
    add b                                         ; $5b58: $80
    ccf                                           ; $5b59: $3f
    inc e                                         ; $5b5a: $1c
    add b                                         ; $5b5b: $80
    ccf                                           ; $5b5c: $3f
    ld a, a                                       ; $5b5d: $7f
    ld d, b                                       ; $5b5e: $50
    ld [bc], a                                    ; $5b5f: $02
    inc b                                         ; $5b60: $04
    ld [$8801], sp                                ; $5b61: $08 $01 $88
    ld h, h                                       ; $5b64: $64
    ld c, $00                                     ; $5b65: $0e $00
    and b                                         ; $5b67: $a0
    adc [hl]                                      ; $5b68: $8e
    and b                                         ; $5b69: $a0
    adc [hl]                                      ; $5b6a: $8e
    or b                                          ; $5b6b: $b0
    add h                                         ; $5b6c: $84
    ret nc                                        ; $5b6d: $d0

    ret nz                                        ; $5b6e: $c0

    nop                                           ; $5b6f: $00
    rra                                           ; $5b70: $1f
    ret nz                                        ; $5b71: $c0

    nop                                           ; $5b72: $00
    ret nz                                        ; $5b73: $c0

    nop                                           ; $5b74: $00
    nop                                           ; $5b75: $00
    ld c, h                                       ; $5b76: $4c
    ret nz                                        ; $5b77: $c0

    inc bc                                        ; $5b78: $03
    ret nz                                        ; $5b79: $c0

    ld c, [hl]                                    ; $5b7a: $4e
    ret nz                                        ; $5b7b: $c0

    ld c, [hl]                                    ; $5b7c: $4e
    pop bc                                        ; $5b7d: $c1
    cpl                                           ; $5b7e: $2f
    cp b                                          ; $5b7f: $b8
    ld a, [bc]                                    ; $5b80: $0a
    call z, Call_000_000a                         ; $5b81: $cc $0a $00
    ld [hl], e                                    ; $5b84: $73
    rlca                                          ; $5b85: $07
    ld h, e                                       ; $5b86: $63
    rrca                                          ; $5b87: $0f
    rrca                                          ; $5b88: $0f
    rst $20                                       ; $5b89: $e7
    adc a                                         ; $5b8a: $8f
    rst $20                                       ; $5b8b: $e7
    add b                                         ; $5b8c: $80
    db $10                                        ; $5b8d: $10
    jr @+$01                                      ; $5b8e: $18 $ff

    nop                                           ; $5b90: $00
    sub a                                         ; $5b91: $97
    sub b                                         ; $5b92: $90
    and e                                         ; $5b93: $a3
    and l                                         ; $5b94: $a5
    ld b, $10                                     ; $5b95: $06 $10
    inc c                                         ; $5b97: $0c
    inc b                                         ; $5b98: $04
    inc bc                                        ; $5b99: $03
    db $10                                        ; $5b9a: $10
    jr z, jr_0ab_5ba3                             ; $5b9b: $28 $06

    jr nc, jr_0ab_5ba4                            ; $5b9d: $30 $05

    ld sp, $0500                                  ; $5b9f: $31 $00 $05
    ld [hl], c                                    ; $5ba2: $71

jr_0ab_5ba3:
    dec c                                         ; $5ba3: $0d

jr_0ab_5ba4:
    ld h, c                                       ; $5ba4: $61
    ld [$f803], sp                                ; $5ba5: $08 $03 $f8
    inc bc                                        ; $5ba8: $03
    ld h, b                                       ; $5ba9: $60
    inc bc                                        ; $5baa: $03
    inc [hl]                                      ; $5bab: $34
    jr nz, jr_0ab_5bb2                            ; $5bac: $20 $04

    ld c, e                                       ; $5bae: $4b
    db $10                                        ; $5baf: $10
    inc bc                                        ; $5bb0: $03
    cp a                                          ; $5bb1: $bf

jr_0ab_5bb2:
    ld [bc], a                                    ; $5bb2: $02
    ld bc, $0000                                  ; $5bb3: $01 $00 $00
    rst $38                                       ; $5bb6: $ff
    nop                                           ; $5bb7: $00
    db $fc                                        ; $5bb8: $fc
    nop                                           ; $5bb9: $00
    cp $06                                        ; $5bba: $fe $06
    nop                                           ; $5bbc: $00
    ld [bc], a                                    ; $5bbd: $02
    rst $38                                       ; $5bbe: $ff
    nop                                           ; $5bbf: $00
    ldh a, [rP1]                                  ; $5bc0: $f0 $00
    db $e3                                        ; $5bc2: $e3
    db $e4                                        ; $5bc3: $e4
    db $10                                        ; $5bc4: $10
    ld [$007f], sp                                ; $5bc5: $08 $7f $00
    nop                                           ; $5bc8: $00
    nop                                           ; $5bc9: $00

jr_0ab_5bca:
    rra                                           ; $5bca: $1f
    ld b, b                                       ; $5bcb: $40
    rrca                                          ; $5bcc: $0f
    or a                                          ; $5bcd: $b7
    add a                                         ; $5bce: $87
    inc de                                        ; $5bcf: $13
    ld [$480b], sp                                ; $5bd0: $08 $0b $48

jr_0ab_5bd3:
    add h                                         ; $5bd3: $84
    nop                                           ; $5bd4: $00
    ld bc, $0318                                  ; $5bd5: $01 $18 $03
    rlca                                          ; $5bd8: $07
    ld bc, $ff00                                  ; $5bd9: $01 $00 $ff
    ldh a, [$f0]                                  ; $5bdc: $f0 $f0
    adc $7c                                       ; $5bde: $ce $7c
    dec c                                         ; $5be0: $0d
    inc a                                         ; $5be1: $3c
    inc a                                         ; $5be2: $3c
    nop                                           ; $5be3: $00
    ld h, d                                       ; $5be4: $62
    ld a, h                                       ; $5be5: $7c
    ld bc, $e7fe                                  ; $5be6: $01 $fe $e7
    pop bc                                        ; $5be9: $c1
    ld e, e                                       ; $5bea: $5b
    jp Jump_000_3c50                              ; $5beb: $c3 $50 $3c


    dec de                                        ; $5bee: $1b
    nop                                           ; $5bef: $00
    ld de, $201f                                  ; $5bf0: $11 $1f $20
    ld b, b                                       ; $5bf3: $40
    add b                                         ; $5bf4: $80
    ret nz                                        ; $5bf5: $c0

    jr nz, jr_0ab_5bfa                            ; $5bf6: $20 $02

    jr nc, jr_0ab_5bca                            ; $5bf8: $30 $d0

jr_0ab_5bfa:
    ld a, h                                       ; $5bfa: $7c
    ld b, h                                       ; $5bfb: $44
    add hl, sp                                    ; $5bfc: $39
    cp b                                          ; $5bfd: $b8
    jr nc, @+$0a                                  ; $5bfe: $30 $08

    inc b                                         ; $5c00: $04
    nop                                           ; $5c01: $00
    ei                                            ; $5c02: $fb
    nop                                           ; $5c03: $00
    jp $8710                                      ; $5c04: $c3 $10 $87


    jr nz, jr_0ab_5c30                            ; $5c07: $20 $27

    ret nz                                        ; $5c09: $c0

    jr jr_0ab_5c13                                ; $5c0a: $18 $07

    add b                                         ; $5c0c: $80
    adc a                                         ; $5c0d: $8f
    ld b, b                                       ; $5c0e: $40
    jr nz, jr_0ab_5c18                            ; $5c0f: $20 $07

    jr nc, jr_0ab_5bd3                            ; $5c11: $30 $c0

jr_0ab_5c13:
    rst $08                                       ; $5c13: $cf
    add b                                         ; $5c14: $80
    nop                                           ; $5c15: $00
    db $10                                        ; $5c16: $10
    add b                                         ; $5c17: $80

jr_0ab_5c18:
    nop                                           ; $5c18: $00
    or d                                          ; $5c19: $b2
    or c                                          ; $5c1a: $b1
    push hl                                       ; $5c1b: $e5
    ld [c], a                                     ; $5c1c: $e2
    inc bc                                        ; $5c1d: $03
    nop                                           ; $5c1e: $00
    dec c                                         ; $5c1f: $0d
    add hl, de                                    ; $5c20: $19
    ld [bc], a                                    ; $5c21: $02
    inc bc                                        ; $5c22: $03
    ld d, $fc                                     ; $5c23: $16 $fc
    sub d                                         ; $5c25: $92
    ld b, [hl]                                    ; $5c26: $46
    nop                                           ; $5c27: $00
    ld a, c                                       ; $5c28: $79
    jp nz, $febd                                  ; $5c29: $c2 $bd $fe

    rst $38                                       ; $5c2c: $ff
    rlca                                          ; $5c2d: $07
    sbc d                                         ; $5c2e: $9a
    add hl, bc                                    ; $5c2f: $09

jr_0ab_5c30:
    nop                                           ; $5c30: $00
    rlca                                          ; $5c31: $07
    ld [bc], a                                    ; $5c32: $02
    ld bc, $a061                                  ; $5c33: $01 $61 $a0
    ldh a, [$33]                                  ; $5c36: $f0 $33
    cpl                                           ; $5c38: $2f
    nop                                           ; $5c39: $00
    ld h, b                                       ; $5c3a: $60
    ld c, a                                       ; $5c3b: $4f
    ld b, b                                       ; $5c3c: $40
    ld h, $26                                     ; $5c3d: $26 $26
    ld hl, $17a0                                  ; $5c3f: $21 $a0 $17
    nop                                           ; $5c42: $00
    sub b                                         ; $5c43: $90
    ld d, $c1                                     ; $5c44: $16 $c1
    or d                                          ; $5c46: $b2
    ld c, c                                       ; $5c47: $49
    nop                                           ; $5c48: $00
    nop                                           ; $5c49: $00
    sub d                                         ; $5c4a: $92
    add b                                         ; $5c4b: $80
    and b                                         ; $5c4c: $a0
    nop                                           ; $5c4d: $00
    nop                                           ; $5c4e: $00
    ld bc, $01f1                                  ; $5c4f: $01 $f1 $01
    dec de                                        ; $5c52: $1b
    pop hl                                        ; $5c53: $e1
    db $e3                                        ; $5c54: $e3
    nop                                           ; $5c55: $00
    pop af                                        ; $5c56: $f1
    db $e3                                        ; $5c57: $e3
    rst $10                                       ; $5c58: $d7
    add d                                         ; $5c59: $82
    add c                                         ; $5c5a: $81
    dec b                                         ; $5c5b: $05
    ld b, d                                       ; $5c5c: $42
    adc e                                         ; $5c5d: $8b
    nop                                           ; $5c5e: $00
    ld c, l                                       ; $5c5f: $4d
    ld c, a                                       ; $5c60: $4f
    ret nz                                        ; $5c61: $c0

    sbc e                                         ; $5c62: $9b
    adc a                                         ; $5c63: $8f
    ld sp, hl                                     ; $5c64: $f9
    ld a, $f0                                     ; $5c65: $3e $f0
    nop                                           ; $5c67: $00
    ld l, h                                       ; $5c68: $6c
    ret nz                                        ; $5c69: $c0

    and b                                         ; $5c6a: $a0
    nop                                           ; $5c6b: $00
    add e                                         ; $5c6c: $83
    jr c, jr_0ab_5c88                             ; $5c6d: $38 $19

    ld b, b                                       ; $5c6f: $40
    nop                                           ; $5c70: $00
    inc a                                         ; $5c71: $3c
    call nz, Call_0ab_6306                        ; $5c72: $c4 $06 $63
    add e                                         ; $5c75: $83
    ldh [$50], a                                  ; $5c76: $e0 $50
    ld hl, $381c                                  ; $5c78: $21 $1c $38
    pop af                                        ; $5c7b: $f1
    db $ec                                        ; $5c7c: $ec
    or b                                          ; $5c7d: $b0
    ld [$08c2], sp                                ; $5c7e: $08 $c2 $08
    ld [bc], a                                    ; $5c81: $02
    ld [$8000], sp                                ; $5c82: $08 $00 $80
    nop                                           ; $5c85: $00
    ret nz                                        ; $5c86: $c0

    ld b, b                                       ; $5c87: $40

jr_0ab_5c88:
    ld b, $25                                     ; $5c88: $06 $25
    add d                                         ; $5c8a: $82
    sub [hl]                                      ; $5c8b: $96
    adc h                                         ; $5c8c: $8c
    and b                                         ; $5c8d: $a0
    nop                                           ; $5c8e: $00
    ld h, c                                       ; $5c8f: $61
    ld l, b                                       ; $5c90: $68
    db $e3                                        ; $5c91: $e3
    ldh [$e0], a                                  ; $5c92: $e0 $e0
    jp $c7e0                                      ; $5c94: $c3 $e0 $c7


    nop                                           ; $5c97: $00
    ldh [$cf], a                                  ; $5c98: $e0 $cf
    db $10                                        ; $5c9a: $10
    db $10                                        ; $5c9b: $10
    ld h, b                                       ; $5c9c: $60
    ld [$1dd8], sp                                ; $5c9d: $08 $d8 $1d
    nop                                           ; $5ca0: $00
    pop bc                                        ; $5ca1: $c1
    ld de, $3393                                  ; $5ca2: $11 $93 $33
    add d                                         ; $5ca5: $82
    inc sp                                        ; $5ca6: $33
    and b                                         ; $5ca7: $a0
    ld [hl-], a                                   ; $5ca8: $32
    nop                                           ; $5ca9: $00
    or b                                          ; $5caa: $b0
    add d                                         ; $5cab: $82
    ld [hl], d                                    ; $5cac: $72
    ld e, c                                       ; $5cad: $59
    ld [hl+], a                                   ; $5cae: $22
    add hl, sp                                    ; $5caf: $39
    ld [de], a                                    ; $5cb0: $12
    add hl, bc                                    ; $5cb1: $09
    nop                                           ; $5cb2: $00
    dec bc                                        ; $5cb3: $0b
    add hl, bc                                    ; $5cb4: $09
    inc bc                                        ; $5cb5: $03
    add hl, bc                                    ; $5cb6: $09
    ld b, e                                       ; $5cb7: $43
    ld h, b                                       ; $5cb8: $60
    ld b, e                                       ; $5cb9: $43
    ld [hl], b                                    ; $5cba: $70
    nop                                           ; $5cbb: $00
    inc bc                                        ; $5cbc: $03
    jr c, jr_0ab_5cdf                             ; $5cbd: $38 $20

    rst $00                                       ; $5cbf: $c7

jr_0ab_5cc0:
    ld e, a                                       ; $5cc0: $5f
    adc c                                         ; $5cc1: $89
    ret c                                         ; $5cc2: $d8

    sub h                                         ; $5cc3: $94
    nop                                           ; $5cc4: $00
    sub b                                         ; $5cc5: $90
    sbc b                                         ; $5cc6: $98

jr_0ab_5cc7:
    or c                                          ; $5cc7: $b1
    ld hl, $27a3                                  ; $5cc8: $21 $a3 $27
    add d                                         ; $5ccb: $82
    ld c, $00                                     ; $5ccc: $0e $00
    sub b                                         ; $5cce: $90
    inc e                                         ; $5ccf: $1c
    add b                                         ; $5cd0: $80
    nop                                           ; $5cd1: $00
    inc b                                         ; $5cd2: $04
    ld c, $40                                     ; $5cd3: $0e $40
    ld c, [hl]                                    ; $5cd5: $4e
    nop                                           ; $5cd6: $00
    adc c                                         ; $5cd7: $89
    ld h, e                                       ; $5cd8: $63
    dec d                                         ; $5cd9: $15
    rst $30                                       ; $5cda: $f7
    ld d, l                                       ; $5cdb: $55
    sub e                                         ; $5cdc: $93
    jr nz, jr_0ab_5cff                            ; $5cdd: $20 $20

jr_0ab_5cdf:
    nop                                           ; $5cdf: $00
    ld a, [hl+]                                   ; $5ce0: $2a
    and h                                         ; $5ce1: $a4
    ld hl, sp-$7b                                 ; $5ce2: $f8 $85
    ld e, h                                       ; $5ce4: $5c
    ld l, d                                       ; $5ce5: $6a
    dec sp                                        ; $5ce6: $3b
    jr z, jr_0ab_5ce9                             ; $5ce7: $28 $00

jr_0ab_5ce9:
    add hl, de                                    ; $5ce9: $19
    sub b                                         ; $5cea: $90
    adc b                                         ; $5ceb: $88
    ret nz                                        ; $5cec: $c0

    db $e3                                        ; $5ced: $e3
    db $e3                                        ; $5cee: $e3
    ld [hl], a                                    ; $5cef: $77
    nop                                           ; $5cf0: $00
    nop                                           ; $5cf1: $00
    di                                            ; $5cf2: $f3
    ld a, a                                       ; $5cf3: $7f
    ld b, b                                       ; $5cf4: $40
    and b                                         ; $5cf5: $a0
    jr c, jr_0ab_5cc0                             ; $5cf6: $38 $c8

    scf                                           ; $5cf8: $37
    ld c, e                                       ; $5cf9: $4b
    nop                                           ; $5cfa: $00
    add hl, de                                    ; $5cfb: $19
    rlca                                          ; $5cfc: $07
    ld h, e                                       ; $5cfd: $63
    rlca                                          ; $5cfe: $07

jr_0ab_5cff:
    ld [hl], c                                    ; $5cff: $71
    rlca                                          ; $5d00: $07
    rlca                                          ; $5d01: $07
    db $f4                                        ; $5d02: $f4
    nop                                           ; $5d03: $00
    rlca                                          ; $5d04: $07
    db $f4                                        ; $5d05: $f4
    ld h, b                                       ; $5d06: $60
    ld c, a                                       ; $5d07: $4f
    ld b, h                                       ; $5d08: $44
    inc [hl]                                      ; $5d09: $34
    ld b, a                                       ; $5d0a: $47
    scf                                           ; $5d0b: $37
    nop                                           ; $5d0c: $00
    rst $00                                       ; $5d0d: $c7
    ldh a, [$c0]                                  ; $5d0e: $f0 $c0
    ld hl, sp+$04                                 ; $5d10: $f8 $04
    ld hl, $0c1e                                  ; $5d12: $21 $1e $0c
    nop                                           ; $5d15: $00
    ld h, $1a                                     ; $5d16: $26 $1a
    nop                                           ; $5d18: $00
    nop                                           ; $5d19: $00
    ld h, b                                       ; $5d1a: $60
    rra                                           ; $5d1b: $1f
    adc e                                         ; $5d1c: $8b
    add h                                         ; $5d1d: $84
    nop                                           ; $5d1e: $00
    ld a, $3c                                     ; $5d1f: $3e $3c
    ldh a, [$ee]                                  ; $5d21: $f0 $ee
    ld [hl], b                                    ; $5d23: $70
    sub b                                         ; $5d24: $90
    ret nz                                        ; $5d25: $c0

    ld b, b                                       ; $5d26: $40
    nop                                           ; $5d27: $00
    sub $56                                       ; $5d28: $d6 $56
    dec hl                                        ; $5d2a: $2b
    jr c, jr_0ab_5cc7                             ; $5d2b: $38 $9a

    pop de                                        ; $5d2d: $d1
    ret z                                         ; $5d2e: $c8

    dec bc                                        ; $5d2f: $0b
    nop                                           ; $5d30: $00
    inc de                                        ; $5d31: $13
    ld h, e                                       ; $5d32: $63
    rla                                           ; $5d33: $17
    inc hl                                        ; $5d34: $23
    jr c, jr_0ab_5d5a                             ; $5d35: $38 $23

    nop                                           ; $5d37: $00
    nop                                           ; $5d38: $00
    nop                                           ; $5d39: $00
    add hl, bc                                    ; $5d3a: $09
    ld b, $91                                     ; $5d3b: $06 $91
    dec sp                                        ; $5d3d: $3b
    add a                                         ; $5d3e: $87
    jr nc, @-$75                                  ; $5d3f: $30 $89

    and a                                         ; $5d41: $a7
    inc b                                         ; $5d42: $04
    sub c                                         ; $5d43: $91
    sbc d                                         ; $5d44: $9a
    ret nz                                        ; $5d45: $c0

    sub d                                         ; $5d46: $92
    add b                                         ; $5d47: $80
    ld l, e                                       ; $5d48: $6b
    ld bc, $68f0                                  ; $5d49: $01 $f0 $68
    nop                                           ; $5d4c: $00
    add [hl]                                      ; $5d4d: $86
    ld a, [de]                                    ; $5d4e: $1a
    jr c, jr_0ab_5d99                             ; $5d4f: $38 $48

    add a                                         ; $5d51: $87

jr_0ab_5d52:
    db $db                                        ; $5d52: $db
    inc e                                         ; $5d53: $1c
    dec sp                                        ; $5d54: $3b
    nop                                           ; $5d55: $00
    inc a                                         ; $5d56: $3c
    ld c, [hl]                                    ; $5d57: $4e
    jr nz, @+$7e                                  ; $5d58: $20 $7c

jr_0ab_5d5a:
    ld bc, $0a00                                  ; $5d5a: $01 $00 $0a
    add hl, bc                                    ; $5d5d: $09
    nop                                           ; $5d5e: $00
    call Call_000_20c1                            ; $5d5f: $cd $c1 $20
    ld e, $c2                                     ; $5d62: $1e $c2
    cp $41                                        ; $5d64: $fe $41
    ld a, h                                       ; $5d66: $7c
    nop                                           ; $5d67: $00
    inc sp                                        ; $5d68: $33
    ld a, b                                       ; $5d69: $78
    daa                                           ; $5d6a: $27
    ld [hl], b                                    ; $5d6b: $70
    ldh [$cf], a                                  ; $5d6c: $e0 $cf
    ret nz                                        ; $5d6e: $c0

    rst $08                                       ; $5d6f: $cf
    nop                                           ; $5d70: $00
    ld a, [c]                                     ; $5d71: $f2
    ld b, $ea                                     ; $5d72: $06 $ea
    ld c, $0e                                     ; $5d74: $0e $0e
    and $0c                                       ; $5d76: $e6 $0c
    db $e4                                        ; $5d78: $e4
    nop                                           ; $5d79: $00
    inc e                                         ; $5d7a: $1c
    call nz, $c01c                                ; $5d7b: $c4 $1c $c0
    jr @-$2e                                      ; $5d7e: $18 $d0

    jr jr_0ab_5d52                                ; $5d80: $18 $d0

    nop                                           ; $5d82: $00
    ld c, h                                       ; $5d83: $4c
    inc [hl]                                      ; $5d84: $34
    ld h, c                                       ; $5d85: $61
    ld d, c                                       ; $5d86: $51
    ld b, e                                       ; $5d87: $43
    inc hl                                        ; $5d88: $23
    adc b                                         ; $5d89: $88
    add a                                         ; $5d8a: $87
    nop                                           ; $5d8b: $00
    pop de                                        ; $5d8c: $d1
    adc $1c                                       ; $5d8d: $ce $1c
    ld a, [de]                                    ; $5d8f: $1a
    jr c, jr_0ab_5da6                             ; $5d90: $38 $14

jr_0ab_5d92:
    ld sp, $0029                                  ; $5d92: $31 $29 $00
    inc e                                         ; $5d95: $1c
    jr nz, jr_0ab_5e11                            ; $5d96: $20 $79

    ret z                                         ; $5d98: $c8

jr_0ab_5d99:
    ld d, b                                       ; $5d99: $50
    sub b                                         ; $5d9a: $90
    ld b, b                                       ; $5d9b: $40
    ret nz                                        ; $5d9c: $c0

    nop                                           ; $5d9d: $00
    adc h                                         ; $5d9e: $8c
    add c                                         ; $5d9f: $81
    ld l, b                                       ; $5da0: $68
    inc b                                         ; $5da1: $04
    ldh [$7e], a                                  ; $5da2: $e0 $7e
    ldh [$f4], a                                  ; $5da4: $e0 $f4

jr_0ab_5da6:
    nop                                           ; $5da6: $00
    sub b                                         ; $5da7: $90
    ldh [$60], a                                  ; $5da8: $e0 $60
    add b                                         ; $5daa: $80
    ld b, $c6                                     ; $5dab: $06 $c6
    ld e, $12                                     ; $5dad: $1e $12
    nop                                           ; $5daf: $00
    ld e, $82                                     ; $5db0: $1e $82
    ld e, a                                       ; $5db2: $5f
    adc a                                         ; $5db3: $8f
    rlca                                          ; $5db4: $07
    ret c                                         ; $5db5: $d8

    ld l, a                                       ; $5db6: $6f
    ld [$1e00], sp                                ; $5db7: $08 $00 $1e
    db $10                                        ; $5dba: $10
    ld [bc], a                                    ; $5dbb: $02
    rlca                                          ; $5dbc: $07
    ld l, a                                       ; $5dbd: $6f
    ld h, c                                       ; $5dbe: $61
    add b                                         ; $5dbf: $80
    ldh a, [rP1]                                  ; $5dc0: $f0 $00
    ldh a, [$74]                                  ; $5dc2: $f0 $74
    ldh [$74], a                                  ; $5dc4: $e0 $74
    call nc, $c038                                ; $5dc6: $d4 $38 $c0
    ld [$4300], sp                                ; $5dc9: $08 $00 $43
    ld c, b                                       ; $5dcc: $48
    rlca                                          ; $5dcd: $07
    ld a, h                                       ; $5dce: $7c
    inc de                                        ; $5dcf: $13
    ld h, a                                       ; $5dd0: $67
    inc bc                                        ; $5dd1: $03
    sub a                                         ; $5dd2: $97
    nop                                           ; $5dd3: $00
    call nz, $e843                                ; $5dd4: $c4 $43 $e8
    ld h, $4c                                     ; $5dd7: $26 $4c
    sbc c                                         ; $5dd9: $99
    dec de                                        ; $5dda: $1b
    ret                                           ; $5ddb: $c9


    nop                                           ; $5ddc: $00
    ret nz                                        ; $5ddd: $c0

    rrca                                          ; $5dde: $0f
    ldh [$2f], a                                  ; $5ddf: $e0 $2f
    rla                                           ; $5de1: $17
    ldh a, [rSB]                                  ; $5de2: $f0 $01
    ld hl, sp+$00                                 ; $5de4: $f8 $00
    jp c, $08ee                                   ; $5de6: $da $ee $08

    rlca                                          ; $5de9: $07
    call z, Call_000_264b                         ; $5dea: $cc $4b $26
    push bc                                       ; $5ded: $c5
    nop                                           ; $5dee: $00
    and b                                         ; $5def: $a0
    jr c, jr_0ab_5d92                             ; $5df0: $38 $a0

    jr c, @+$32                                   ; $5df2: $38 $30

    and b                                         ; $5df4: $a0
    ld [hl], b                                    ; $5df5: $70
    ld h, b                                       ; $5df6: $60
    nop                                           ; $5df7: $00
    ld h, b                                       ; $5df8: $60
    ld e, a                                       ; $5df9: $5f
    nop                                           ; $5dfa: $00
    inc bc                                        ; $5dfb: $03
    ld c, $f2                                     ; $5dfc: $0e $f2
    ld b, $fa                                     ; $5dfe: $06 $fa
    nop                                           ; $5e00: $00
    inc bc                                        ; $5e01: $03
    inc sp                                        ; $5e02: $33
    ret nz                                        ; $5e03: $c0

    rst $00                                       ; $5e04: $c7
    jp hl                                         ; $5e05: $e9


    and $13                                       ; $5e06: $e6 $13
    dec e                                         ; $5e08: $1d
    nop                                           ; $5e09: $00
    ld d, $1a                                     ; $5e0a: $16 $1a
    jp hl                                         ; $5e0c: $e9


    ldh [$f0], a                                  ; $5e0d: $e0 $f0
    pop af                                        ; $5e0f: $f1
    inc bc                                        ; $5e10: $03

jr_0ab_5e11:
    inc b                                         ; $5e11: $04
    nop                                           ; $5e12: $00
    ldh [$c4], a                                  ; $5e13: $e0 $c4
    ld h, h                                       ; $5e15: $64
    and h                                         ; $5e16: $a4
    sbc c                                         ; $5e17: $99
    ld [$1820], sp                                ; $5e18: $08 $20 $18
    nop                                           ; $5e1b: $00
    adc h                                         ; $5e1c: $8c
    db $f4                                        ; $5e1d: $f4
    ldh a, [$e8]                                  ; $5e1e: $f0 $e8
    ldh [$d1], a                                  ; $5e20: $e0 $d1
    ret z                                         ; $5e22: $c8

    jr z, jr_0ab_5e25                             ; $5e23: $28 $00

jr_0ab_5e25:
    rrca                                          ; $5e25: $0f
    ccf                                           ; $5e26: $3f
    ret nz                                        ; $5e27: $c0

    ld c, a                                       ; $5e28: $4f
    ldh [$60], a                                  ; $5e29: $e0 $60
    jr nc, @+$3c                                  ; $5e2b: $30 $3a

    nop                                           ; $5e2d: $00
    halt                                          ; $5e2e: $76
    dec sp                                        ; $5e2f: $3b
    sbc [hl]                                      ; $5e30: $9e
    rlca                                          ; $5e31: $07
    ld e, $3d                                     ; $5e32: $1e $3d
    ld a, $59                                     ; $5e34: $3e $59
    nop                                           ; $5e36: $00
    jr nc, @-$1d                                  ; $5e37: $30 $e1

    ret z                                         ; $5e39: $c8

    inc l                                         ; $5e3a: $2c
    db $10                                        ; $5e3b: $10
    inc c                                         ; $5e3c: $0c
    ld l, d                                       ; $5e3d: $6a
    ld b, [hl]                                    ; $5e3e: $46
    nop                                           ; $5e3f: $00
    ld d, d                                       ; $5e40: $52
    ld [hl-], a                                   ; $5e41: $32
    ret z                                         ; $5e42: $c8

    or b                                          ; $5e43: $b0
    ld c, h                                       ; $5e44: $4c
    inc [hl]                                      ; $5e45: $34
    call c, Call_000_00a0                         ; $5e46: $dc $a0 $00
    dec de                                        ; $5e49: $1b
    cp c                                          ; $5e4a: $b9
    db $10                                        ; $5e4b: $10
    jr nc, jr_0ab_5e55                            ; $5e4c: $30 $07

    ld h, $0f                                     ; $5e4e: $26 $0f
    cpl                                           ; $5e50: $2f
    nop                                           ; $5e51: $00
    cp h                                          ; $5e52: $bc
    or e                                          ; $5e53: $b3
    inc bc                                        ; $5e54: $03

jr_0ab_5e55:
    ld [bc], a                                    ; $5e55: $02
    inc e                                         ; $5e56: $1c
    nop                                           ; $5e57: $00
    and c                                         ; $5e58: $a1
    sbc [hl]                                      ; $5e59: $9e
    nop                                           ; $5e5a: $00
    ld hl, $5cf0                                  ; $5e5b: $21 $f0 $5c
    jr c, jr_0ab_5e80                             ; $5e5e: $38 $20

    inc e                                         ; $5e60: $1c
    ld c, a                                       ; $5e61: $4f
    add c                                         ; $5e62: $81
    nop                                           ; $5e63: $00
    ldh [$d0], a                                  ; $5e64: $e0 $d0
    ld hl, sp+$7b                                 ; $5e66: $f8 $7b
    adc e                                         ; $5e68: $8b
    ld hl, sp+$33                                 ; $5e69: $f8 $33
    jr nc, jr_0ab_5e6f                            ; $5e6b: $30 $02

    ld hl, sp+$06                                 ; $5e6d: $f8 $06

jr_0ab_5e6f:
    ldh a, [$fc]                                  ; $5e6f: $f0 $fc
    ld hl, sp+$00                                 ; $5e71: $f8 $00
    inc c                                         ; $5e73: $0c
    ld bc, $6180                                  ; $5e74: $01 $80 $61
    add b                                         ; $5e77: $80
    ld b, $08                                     ; $5e78: $06 $08
    ld a, c                                       ; $5e7a: $79
    ld [bc], a                                    ; $5e7b: $02
    inc bc                                        ; $5e7c: $03
    inc b                                         ; $5e7d: $04
    nop                                           ; $5e7e: $00
    inc bc                                        ; $5e7f: $03

jr_0ab_5e80:
    ld b, [hl]                                    ; $5e80: $46
    ld a, [hl-]                                   ; $5e81: $3a
    nop                                           ; $5e82: $00
    sbc b                                         ; $5e83: $98
    ld e, b                                       ; $5e84: $58
    add b                                         ; $5e85: $80
    adc b                                         ; $5e86: $88
    ld h, b                                       ; $5e87: $60
    add hl, bc                                    ; $5e88: $09
    add c                                         ; $5e89: $81
    ldh a, [rP1]                                  ; $5e8a: $f0 $00
    add b                                         ; $5e8c: $80
    ldh a, [rNR42]                                ; $5e8d: $f0 $21
    ld e, $38                                     ; $5e8f: $1e $38
    daa                                           ; $5e91: $27
    rrca                                          ; $5e92: $0f
    inc sp                                        ; $5e93: $33
    nop                                           ; $5e94: $00
    ld a, h                                       ; $5e95: $7c
    inc hl                                        ; $5e96: $23
    sbc b                                         ; $5e97: $98
    db $e4                                        ; $5e98: $e4
    jr c, jr_0ab_5e6f                             ; $5e99: $38 $d4

    call z, Call_000_00b3                         ; $5e9b: $cc $b3 $00
    nop                                           ; $5e9e: $00
    nop                                           ; $5e9f: $00
    db $e3                                        ; $5ea0: $e3
    inc hl                                        ; $5ea1: $23
    ld sp, $0fc1                                  ; $5ea2: $31 $c1 $0f
    pop af                                        ; $5ea5: $f1
    nop                                           ; $5ea6: $00
    ld h, b                                       ; $5ea7: $60
    and [hl]                                      ; $5ea8: $a6
    ld h, b                                       ; $5ea9: $60
    or b                                          ; $5eaa: $b0
    ld [hl], b                                    ; $5eab: $70
    and b                                         ; $5eac: $a0
    jr nc, jr_0ab_5f2a                            ; $5ead: $30 $7b

    nop                                           ; $5eaf: $00
    nop                                           ; $5eb0: $00
    nop                                           ; $5eb1: $00
    pop hl                                        ; $5eb2: $e1
    ld a, a                                       ; $5eb3: $7f
    ldh a, [$cf]                                  ; $5eb4: $f0 $cf
    inc e                                         ; $5eb6: $1c
    inc de                                        ; $5eb7: $13
    ld bc, $a71f                                  ; $5eb8: $01 $1f $a7
    inc bc                                        ; $5ebb: $03
    push bc                                       ; $5ebc: $c5
    ld d, c                                       ; $5ebd: $51
    ld sp, $5de0                                  ; $5ebe: $31 $e0 $5d
    ld bc, $7e00                                  ; $5ec1: $01 $00 $7e
    db $d3                                        ; $5ec4: $d3
    add e                                         ; $5ec5: $83
    ld b, h                                       ; $5ec6: $44
    rst $00                                       ; $5ec7: $c7
    jp hl                                         ; $5ec8: $e9


    rlca                                          ; $5ec9: $07
    db $e4                                        ; $5eca: $e4
    nop                                           ; $5ecb: $00
    rlca                                          ; $5ecc: $07
    ret nz                                        ; $5ecd: $c0

    rlca                                          ; $5ece: $07
    add c                                         ; $5ecf: $81
    rrca                                          ; $5ed0: $0f
    ld bc, $0d03                                  ; $5ed1: $01 $03 $0d
    ld b, $e7                                     ; $5ed4: $06 $e7
    dec de                                        ; $5ed6: $1b
    inc c                                         ; $5ed7: $0c
    ldh a, [rNR32]                                ; $5ed8: $f0 $1c
    ldh a, [rSC]                                  ; $5eda: $f0 $02
    and d                                         ; $5edc: $a2
    ld e, d                                       ; $5edd: $5a
    db $10                                        ; $5ede: $10
    inc bc                                        ; $5edf: $03
    ld [hl], e                                    ; $5ee0: $73
    ld [bc], a                                    ; $5ee1: $02
    ld d, b                                       ; $5ee2: $50
    nop                                           ; $5ee3: $00
    ld bc, $0190                                  ; $5ee4: $01 $90 $01
    ld [bc], a                                    ; $5ee7: $02
    jr nz, @+$0d                                  ; $5ee8: $20 $0b

    ld [bc], a                                    ; $5eea: $02
    pop bc                                        ; $5eeb: $c1
    or c                                          ; $5eec: $b1
    nop                                           ; $5eed: $00
    adc a                                         ; $5eee: $8f
    ld [hl], a                                    ; $5eef: $77
    sbc h                                         ; $5ef0: $9c
    ld h, h                                       ; $5ef1: $64
    inc e                                         ; $5ef2: $1c
    db $e4                                        ; $5ef3: $e4
    ld e, $e2                                     ; $5ef4: $1e $e2
    nop                                           ; $5ef6: $00
    ld e, $e0                                     ; $5ef7: $1e $e0
    cp $e0                                        ; $5ef9: $fe $e0
    ldh [$d0], a                                  ; $5efb: $e0 $d0
    inc a                                         ; $5efd: $3c
    inc a                                         ; $5efe: $3c
    nop                                           ; $5eff: $00
    ld h, d                                       ; $5f00: $62
    ld a, h                                       ; $5f01: $7c
    add c                                         ; $5f02: $81
    cp $67                                        ; $5f03: $fe $67
    nop                                           ; $5f05: $00
    inc bc                                        ; $5f06: $03
    jr jr_0ab_5f0b                                ; $5f07: $18 $02

    inc c                                         ; $5f09: $0c
    inc c                                         ; $5f0a: $0c

jr_0ab_5f0b:
    dec c                                         ; $5f0b: $0d
    ld e, $1e                                     ; $5f0c: $1e $1e
    ccf                                           ; $5f0e: $3f
    ld b, b                                       ; $5f0f: $40
    jr @+$42                                      ; $5f10: $18 $40

    nop                                           ; $5f12: $00
    add b                                         ; $5f13: $80
    ret nz                                        ; $5f14: $c0

    jr nz, jr_0ab_5f47                            ; $5f15: $20 $30

    ret nc                                        ; $5f17: $d0

    jr c, jr_0ab_5f96                             ; $5f18: $38 $7c

    add h                                         ; $5f1a: $84
    ld h, b                                       ; $5f1b: $60
    ld a, $50                                     ; $5f1c: $3e $50
    sbc b                                         ; $5f1e: $98
    ld h, [hl]                                    ; $5f1f: $66
    xor b                                         ; $5f20: $a8
    inc bc                                        ; $5f21: $03
    inc bc                                        ; $5f22: $03
    ld d, $09                                     ; $5f23: $16 $09
    rra                                           ; $5f25: $1f
    nop                                           ; $5f26: $00
    inc c                                         ; $5f27: $0c
    ld a, [hl-]                                   ; $5f28: $3a
    inc d                                         ; $5f29: $14

jr_0ab_5f2a:
    ld a, $14                                     ; $5f2a: $3e $14
    ld e, $24                                     ; $5f2c: $1e $24
    ld [hl], d                                    ; $5f2e: $72
    nop                                           ; $5f2f: $00
    ld [hl], b                                    ; $5f30: $70
    ld [hl], d                                    ; $5f31: $72
    pop af                                        ; $5f32: $f1
    daa                                           ; $5f33: $27
    ldh [$30], a                                  ; $5f34: $e0 $30
    add sp, $38                                   ; $5f36: $e8 $38
    nop                                           ; $5f38: $00
    jr z, jr_0ab_5f77                             ; $5f39: $28 $3c

    and h                                         ; $5f3b: $a4
    push hl                                       ; $5f3c: $e5
    ret c                                         ; $5f3d: $d8

    xor a                                         ; $5f3e: $af
    sub b                                         ; $5f3f: $90
    ccf                                           ; $5f40: $3f
    nop                                           ; $5f41: $00
    ld de, $ff00                                  ; $5f42: $11 $00 $ff
    rst $38                                       ; $5f45: $ff
    ccf                                           ; $5f46: $3f

jr_0ab_5f47:
    ld a, $34                                     ; $5f47: $3e $34
    inc [hl]                                      ; $5f49: $34
    nop                                           ; $5f4a: $00
    ld hl, $6441                                  ; $5f4b: $21 $41 $64
    add e                                         ; $5f4e: $83
    ret z                                         ; $5f4f: $c8

    ld [hl], e                                    ; $5f50: $73
    ldh a, [rIF]                                  ; $5f51: $f0 $0f
    nop                                           ; $5f53: $00
    ld hl, sp-$10                                 ; $5f54: $f8 $f0
    dec c                                         ; $5f56: $0d
    cp $f0                                        ; $5f57: $fe $f0
    call $f70f                                    ; $5f59: $cd $0f $f7
    ld [bc], a                                    ; $5f5c: $02
    rlca                                          ; $5f5d: $07
    ld sp, hl                                     ; $5f5e: $f9
    inc bc                                        ; $5f5f: $03
    db $fc                                        ; $5f60: $fc
    nop                                           ; $5f61: $00
    rst $38                                       ; $5f62: $ff
    cp c                                          ; $5f63: $b9
    nop                                           ; $5f64: $00
    rst $38                                       ; $5f65: $ff
    ld b, b                                       ; $5f66: $40
    nop                                           ; $5f67: $00
    ld a, a                                       ; $5f68: $7f
    ld [$4080], sp                                ; $5f69: $08 $80 $40
    ld b, b                                       ; $5f6c: $40
    ldh [$90], a                                  ; $5f6d: $e0 $90
    add sp, $00                                   ; $5f6f: $e8 $00
    ld c, b                                       ; $5f71: $48
    ld a, h                                       ; $5f72: $7c
    add h                                         ; $5f73: $84
    ld e, $0e                                     ; $5f74: $1e $0e
    db $ed                                        ; $5f76: $ed

jr_0ab_5f77:
    rlca                                          ; $5f77: $07
    or $80                                        ; $5f78: $f6 $80
    ret nc                                        ; $5f7a: $d0

    ld d, b                                       ; $5f7b: $50
    add b                                         ; $5f7c: $80
    ret nz                                        ; $5f7d: $c0

    ld b, b                                       ; $5f7e: $40
    ld b, $01                                     ; $5f7f: $06 $01
    add hl, de                                    ; $5f81: $19
    ld e, $00                                     ; $5f82: $1e $00
    ld a, [hl-]                                   ; $5f84: $3a
    inc [hl]                                      ; $5f85: $34
    add hl, de                                    ; $5f86: $19
    ld h, c                                       ; $5f87: $61
    db $10                                        ; $5f88: $10
    ldh [$e3], a                                  ; $5f89: $e0 $e3
    dec bc                                        ; $5f8b: $0b
    nop                                           ; $5f8c: $00
    pop hl                                        ; $5f8d: $e1
    ld [$e4e0], sp                                ; $5f8e: $08 $e0 $e4
    rrca                                          ; $5f91: $0f
    add a                                         ; $5f92: $87
    ld b, b                                       ; $5f93: $40
    jr jr_0ab_5f96                                ; $5f94: $18 $00

jr_0ab_5f96:
    add a                                         ; $5f96: $87
    scf                                           ; $5f97: $37
    add [hl]                                      ; $5f98: $86
    ld h, $06                                     ; $5f99: $26 $06
    halt                                          ; $5f9b: $76
    ldh [rNR52], a                                ; $5f9c: $e0 $26
    nop                                           ; $5f9e: $00
    add b                                         ; $5f9f: $80
    adc [hl]                                      ; $5fa0: $8e
    ld [bc], a                                    ; $5fa1: $02
    inc bc                                        ; $5fa2: $03
    nop                                           ; $5fa3: $00
    add b                                         ; $5fa4: $80
    ei                                            ; $5fa5: $fb
    add h                                         ; $5fa6: $84
    nop                                           ; $5fa7: $00
    ldh [$a8], a                                  ; $5fa8: $e0 $a8
    pop bc                                        ; $5faa: $c1
    inc b                                         ; $5fab: $04
    dec h                                         ; $5fac: $25
    inc c                                         ; $5fad: $0c
    or e                                          ; $5fae: $b3
    sbc b                                         ; $5faf: $98
    nop                                           ; $5fb0: $00
    rra                                           ; $5fb1: $1f
    add b                                         ; $5fb2: $80
    ld e, a                                       ; $5fb3: $5f

jr_0ab_5fb4:
    nop                                           ; $5fb4: $00
    ld c, $1f                                     ; $5fb5: $0e $1f
    pop af                                        ; $5fb7: $f1
    ld bc, $6200                                  ; $5fb8: $01 $00 $62
    sbc $a2                                       ; $5fbb: $de $a2
    sbc $67                                       ; $5fbd: $de $67
    ld hl, sp+$74                                 ; $5fbf: $f8 $74
    ret z                                         ; $5fc1: $c8

    nop                                           ; $5fc2: $00
    ret nz                                        ; $5fc3: $c0

    call c, $9881                                 ; $5fc4: $dc $81 $98
    ret nz                                        ; $5fc7: $c0

    rra                                           ; $5fc8: $1f
    ldh [$c7], a                                  ; $5fc9: $e0 $c7
    nop                                           ; $5fcb: $00
    jr c, jr_0ab_5ff7                             ; $5fcc: $38 $29

    ld c, $00                                     ; $5fce: $0e $00
    inc bc                                        ; $5fd0: $03
    ld c, $01                                     ; $5fd1: $0e $01
    ld [bc], a                                    ; $5fd3: $02
    ld bc, $0101                                  ; $5fd4: $01 $01 $01
    ret nz                                        ; $5fd7: $c0

    rrca                                          ; $5fd8: $0f
    ld hl, sp-$07                                 ; $5fd9: $f8 $f9
    cp $7c                                        ; $5fdb: $fe $7c
    stop                                          ; $5fdd: $10 $00
    ccf                                           ; $5fdf: $3f
    nop                                           ; $5fe0: $00
    adc a                                         ; $5fe1: $8f
    ret nz                                        ; $5fe2: $c0

    ld [hl], b                                    ; $5fe3: $70
    ld b, e                                       ; $5fe4: $43
    inc e                                         ; $5fe5: $1c
    stop                                          ; $5fe6: $10 $00
    ld b, b                                       ; $5fe8: $40
    and b                                         ; $5fe9: $a0
    jr c, jr_0ab_5fb4                             ; $5fea: $38 $c8

    inc [hl]                                      ; $5fec: $34
    ld c, b                                       ; $5fed: $48
    sbc b                                         ; $5fee: $98
    add [hl]                                      ; $5fef: $86
    nop                                           ; $5ff0: $00
    pop hl                                        ; $5ff1: $e1
    rlca                                          ; $5ff2: $07
    push de                                       ; $5ff3: $d5
    inc bc                                        ; $5ff4: $03
    or h                                          ; $5ff5: $b4
    inc hl                                        ; $5ff6: $23

jr_0ab_5ff7:
    ld d, h                                       ; $5ff7: $54
    ld h, e                                       ; $5ff8: $63
    nop                                           ; $5ff9: $00
    ld h, c                                       ; $5ffa: $61
    ld l, [hl]                                    ; $5ffb: $6e
    ld h, l                                       ; $5ffc: $65
    ld h, b                                       ; $5ffd: $60
    nop                                           ; $5ffe: $00
    ld a, [bc]                                    ; $5fff: $0a
    scf                                           ; $6000: $37
    dec e                                         ; $6001: $1d
    nop                                           ; $6002: $00
    nop                                           ; $6003: $00
    inc d                                         ; $6004: $14
    db $ec                                        ; $6005: $ec
    jp nc, $c8e4                                  ; $6006: $d2 $e4 $c8

    pop hl                                        ; $6009: $e1
    ldh [rSB], a                                  ; $600a: $e0 $01
    ld hl, sp+$00                                 ; $600c: $f8 $00
    db $fc                                        ; $600e: $fc

jr_0ab_600f:
    ld bc, $40fe                                  ; $600f: $01 $fe $40
    ld a, a                                       ; $6012: $7f
    or b                                          ; $6013: $b0
    nop                                           ; $6014: $00
    nop                                           ; $6015: $00
    rst $20                                       ; $6016: $e7

jr_0ab_6017:
    jr jr_0ab_6017                                ; $6017: $18 $fe

    nop                                           ; $6019: $00
    ld bc, $a2ff                                  ; $601a: $01 $ff $a2
    sbc h                                         ; $601d: $9c
    nop                                           ; $601e: $00
    ld e, b                                       ; $601f: $58
    ld e, $e1                                     ; $6020: $1e $e1
    inc b                                         ; $6022: $04
    ld hl, $2966                                  ; $6023: $21 $66 $29
    ld a, [$4800]                                 ; $6026: $fa $00 $48
    db $db                                        ; $6029: $db
    ld c, c                                       ; $602a: $49
    jp nc, $4f75                                  ; $602b: $d2 $75 $4f

    rlca                                          ; $602e: $07
    ld b, b                                       ; $602f: $40
    nop                                           ; $6030: $00
    ld de, $edd0                                  ; $6031: $11 $d0 $ed
    ccf                                           ; $6034: $3f
    pop de                                        ; $6035: $d1
    ld [hl], e                                    ; $6036: $73
    ld b, h                                       ; $6037: $44

jr_0ab_6038:
    xor [hl]                                      ; $6038: $ae
    ld [bc], a                                    ; $6039: $02
    adc b                                         ; $603a: $88
    ld e, h                                       ; $603b: $5c
    cp c                                          ; $603c: $b9
    ld [de], a                                    ; $603d: $12
    di                                            ; $603e: $f3
    dec h                                         ; $603f: $25
    ret c                                         ; $6040: $d8

    nop                                           ; $6041: $00
    ld c, a                                       ; $6042: $4f
    nop                                           ; $6043: $00
    nop                                           ; $6044: $00
    rra                                           ; $6045: $1f
    inc e                                         ; $6046: $1c
    dec hl                                        ; $6047: $2b
    ld [hl+], a                                   ; $6048: $22
    ld [hl], a                                    ; $6049: $77
    ld e, b                                       ; $604a: $58
    and d                                         ; $604b: $a2
    nop                                           ; $604c: $00
    cp h                                          ; $604d: $bc
    ret nz                                        ; $604e: $c0

Jump_0ab_604f:
    ld a, h                                       ; $604f: $7c
    add e                                         ; $6050: $83
    rlca                                          ; $6051: $07
    nop                                           ; $6052: $00
    add b                                         ; $6053: $80
    ldh a, [rP1]                                  ; $6054: $f0 $00
    nop                                           ; $6056: $00
    rst $38                                       ; $6057: $ff
    ei                                            ; $6058: $fb
    nop                                           ; $6059: $00
    ld sp, hl                                     ; $605a: $f9
    ld sp, hl                                     ; $605b: $f9
    db $fc                                        ; $605c: $fc
    ld a, [bc]                                    ; $605d: $0a
    nop                                           ; $605e: $00
    ld bc, $03f9                                  ; $605f: $01 $f9 $03
    ld a, [$12e0]                                 ; $6062: $fa $e0 $12
    ld b, b                                       ; $6065: $40
    ld c, d                                       ; $6066: $4a
    nop                                           ; $6067: $00
    ld c, $46                                     ; $6068: $0e $46
    inc c                                         ; $606a: $0c
    db $e4                                        ; $606b: $e4
    ret nc                                        ; $606c: $d0

    jr jr_0ab_600f                                ; $606d: $18 $a0

    db $e4                                        ; $606f: $e4
    nop                                           ; $6070: $00
    add sp, $18                                   ; $6071: $e8 $18
    or h                                          ; $6073: $b4
    call c, $ecf1                                 ; $6074: $dc $f1 $ec
    add hl, de                                    ; $6077: $19
    inc e                                         ; $6078: $1c
    nop                                           ; $6079: $00
    add hl, bc                                    ; $607a: $09
    inc c                                         ; $607b: $0c
    inc c                                         ; $607c: $0c
    ld b, $0c                                     ; $607d: $06 $0c
    ld b, $04                                     ; $607f: $06 $04
    ld [bc], a                                    ; $6081: $02
    nop                                           ; $6082: $00
    dec b                                         ; $6083: $05
    inc bc                                        ; $6084: $03
    ld b, $03                                     ; $6085: $06 $03
    ld bc, $fefc                                  ; $6087: $01 $fc $fe
    db $fd                                        ; $608a: $fd
    add b                                         ; $608b: $80
    cp [hl]                                       ; $608c: $be
    add hl, bc                                    ; $608d: $09
    ld [bc], a                                    ; $608e: $02
    ld bc, $03fe                                  ; $608f: $01 $fe $03
    ld a, a                                       ; $6092: $7f
    ld bc, $007f                                  ; $6093: $01 $7f $00
    ld bc, $c24a                                  ; $6096: $01 $4a $c2
    rst $20                                       ; $6099: $e7
    ld b, e                                       ; $609a: $43
    ld b, d                                       ; $609b: $42
    ld [$0018], sp                                ; $609c: $08 $18 $00
    ld b, [hl]                                    ; $609f: $46
    jr jr_0ab_6038                                ; $60a0: $18 $96

    ld sp, $71b4                                  ; $60a2: $31 $b4 $71
    ld h, h                                       ; $60a5: $64
    ld [hl], l                                    ; $60a6: $75
    nop                                           ; $60a7: $00
    inc b                                         ; $60a8: $04
    ld c, l                                       ; $60a9: $4d
    db $e3                                        ; $60aa: $e3
    sbc b                                         ; $60ab: $98

jr_0ab_60ac:
    pop bc                                        ; $60ac: $c1
    ld b, $26                                     ; $60ad: $06 $26
    ld b, $00                                     ; $60af: $06 $00
    ld [hl], b                                    ; $60b1: $70
    ld hl, sp+$71                                 ; $60b2: $f8 $71
    ld hl, sp-$0a                                 ; $60b4: $f8 $f6
    dec c                                         ; $60b6: $0d
    pop af                                        ; $60b7: $f1
    rst $38                                       ; $60b8: $ff
    nop                                           ; $60b9: $00
    inc bc                                        ; $60ba: $03
    add c                                         ; $60bb: $81
    db $fc                                        ; $60bc: $fc
    inc b                                         ; $60bd: $04
    db $fd                                        ; $60be: $fd
    ld hl, sp-$77                                 ; $60bf: $f8 $89
    nop                                           ; $60c1: $00
    nop                                           ; $60c2: $00
    ld b, $26                                     ; $60c3: $06 $26
    sbc $ff                                       ; $60c5: $de $ff
    ld sp, hl                                     ; $60c7: $f9
    ld a, $03                                     ; $60c8: $3e $03
    db $fd                                        ; $60ca: $fd
    ld bc, $7eff                                  ; $60cb: $01 $ff $7e
    add d                                         ; $60ce: $82
    ld a, a                                       ; $60cf: $7f
    add e                                         ; $60d0: $83
    add b                                         ; $60d1: $80
    ld a, a                                       ; $60d2: $7f
    ld e, l                                       ; $60d3: $5d
    add hl, bc                                    ; $60d4: $09
    nop                                           ; $60d5: $00
    add b                                         ; $60d6: $80
    nop                                           ; $60d7: $00
    ld a, [hl]                                    ; $60d8: $7e
    add b                                         ; $60d9: $80
    cp $80                                        ; $60da: $fe $80
    jr @-$16                                      ; $60dc: $18 $e8

    nop                                           ; $60de: $00
    ld d, b                                       ; $60df: $50
    ldh a, [$e0]                                  ; $60e0: $f0 $e0
    or b                                          ; $60e2: $b0
    ret nz                                        ; $60e3: $c0

    ldh a, [$60]                                  ; $60e4: $f0 $60
    ld e, a                                       ; $60e6: $5f
    ld bc, $5f60                                  ; $60e7: $01 $60 $5f
    jr nz, jr_0ab_60ac                            ; $60ea: $20 $c0

    ld h, b                                       ; $60ec: $60
    ret nz                                        ; $60ed: $c0

    ld [bc], a                                    ; $60ee: $02
    rlca                                          ; $60ef: $07
    ld bc, $0360                                  ; $60f0: $01 $60 $03
    rra                                           ; $60f3: $1f
    ld [bc], a                                    ; $60f4: $02
    ld [hl+], a                                   ; $60f5: $22
    ld a, [de]                                    ; $60f6: $1a
    nop                                           ; $60f7: $00
    nop                                           ; $60f8: $00
    ld a, [hl]                                    ; $60f9: $7e
    ld bc, $0081                                  ; $60fa: $01 $81 $00
    ccf                                           ; $60fd: $3f
    add c                                         ; $60fe: $81
    ccf                                           ; $60ff: $3f
    add b                                         ; $6100: $80
    ld a, $81                                     ; $6101: $3e $81
    dec a                                         ; $6103: $3d
    dec e                                         ; $6104: $1d
    nop                                           ; $6105: $00
    call c, $dc1f                                 ; $6106: $dc $1f $dc
    pop bc                                        ; $6109: $c1
    dec b                                         ; $610a: $05
    ld [hl], c                                    ; $610b: $71
    inc b                                         ; $610c: $04
    cp e                                          ; $610d: $bb
    nop                                           ; $610e: $00
    ld c, $da                                     ; $610f: $0e $da
    ld c, $c0                                     ; $6111: $0e $c0
    add a                                         ; $6113: $87
    jp nz, $c587                                  ; $6114: $c2 $87 $c5

    nop                                           ; $6117: $00
    rlca                                          ; $6118: $07
    push bc                                       ; $6119: $c5
    rlca                                          ; $611a: $07
    add l                                         ; $611b: $85
    inc bc                                        ; $611c: $03
    ld sp, hl                                     ; $611d: $f9
    rlca                                          ; $611e: $07
    ld [hl], b                                    ; $611f: $70
    nop                                           ; $6120: $00
    adc [hl]                                      ; $6121: $8e
    db $fc                                        ; $6122: $fc
    ld hl, sp+$60                                 ; $6123: $f8 $60
    ret nc                                        ; $6125: $d0

    db $10                                        ; $6126: $10
    ld h, b                                       ; $6127: $60
    ld e, b                                       ; $6128: $58
    nop                                           ; $6129: $00
    jr z, jr_0ab_6164                             ; $612a: $28 $38

    nop                                           ; $612c: $00
    inc a                                         ; $612d: $3c
    sbc b                                         ; $612e: $98
    xor $12                                       ; $612f: $ee $12
    db $fc                                        ; $6131: $fc
    nop                                           ; $6132: $00
    db $fc                                        ; $6133: $fc
    ld h, c                                       ; $6134: $61
    dec e                                         ; $6135: $1d
    ld c, c                                       ; $6136: $49
    dec [hl]                                      ; $6137: $35
    dec h                                         ; $6138: $25
    ld de, $0025                                  ; $6139: $11 $25 $00
    ld de, $0931                                  ; $613c: $11 $31 $09
    ld [hl-], a                                   ; $613f: $32
    inc c                                         ; $6140: $0c
    cp $fe                                        ; $6141: $fe $fe
    ld bc, $fc12                                  ; $6143: $01 $12 $fc
    ld bc, $04fd                                  ; $6146: $01 $fd $04
    ld [$fa03], sp                                ; $6149: $08 $03 $fa
    ld [bc], a                                    ; $614c: $02
    nop                                           ; $614d: $00
    ld sp, hl                                     ; $614e: $f9
    ld bc, $80c0                                  ; $614f: $01 $c0 $80
    ld b, b                                       ; $6152: $40
    add b                                         ; $6153: $80
    ld b, b                                       ; $6154: $40
    ret nz                                        ; $6155: $c0

    add b                                         ; $6156: $80
    rst $10                                       ; $6157: $d7
    ld bc, $8030                                  ; $6158: $01 $30 $80
    nop                                           ; $615b: $00
    ld b, $00                                     ; $615c: $06 $00
    sbc a                                         ; $615e: $9f
    ld [hl], d                                    ; $615f: $72
    ldh [rSC], a                                  ; $6160: $e0 $02
    pop hl                                        ; $6162: $e1
    ld [c], a                                     ; $6163: $e2

jr_0ab_6164:
    nop                                           ; $6164: $00
    ld h, b                                       ; $6165: $60
    ld h, a                                       ; $6166: $67
    add a                                         ; $6167: $87
    ldh a, [$80]                                  ; $6168: $f0 $80
    ldh a, [rNR42]                                ; $616a: $f0 $21
    ld e, $00                                     ; $616c: $1e $00
    jr c, @+$29                                   ; $616e: $38 $27

    rrca                                          ; $6170: $0f
    inc sp                                        ; $6171: $33
    dec b                                         ; $6172: $05
    inc de                                        ; $6173: $13
    dec c                                         ; $6174: $0d
    push hl                                       ; $6175: $e5
    nop                                           ; $6176: $00
    inc c                                         ; $6177: $0c
    add hl, bc                                    ; $6178: $09
    dec c                                         ; $6179: $0d
    inc bc                                        ; $617a: $03
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    db $e3                                        ; $617d: $e3
    inc hl                                        ; $617e: $23
    nop                                           ; $617f: $00
    ld sp, $0fc1                                  ; $6180: $31 $c1 $0f
    pop af                                        ; $6183: $f1
    ld a, $a6                                     ; $6184: $3e $a6
    ld a, $83                                     ; $6186: $3e $83
    nop                                           ; $6188: $00
    inc a                                         ; $6189: $3c
    dec a                                         ; $618a: $3d
    ld a, $18                                     ; $618b: $3e $18
    nop                                           ; $618d: $00
    nop                                           ; $618e: $00
    pop hl                                        ; $618f: $e1
    ld a, a                                       ; $6190: $7f
    nop                                           ; $6191: $00
    ldh a, [$cf]                                  ; $6192: $f0 $cf
    inc e                                         ; $6194: $1c
    inc de                                        ; $6195: $13
    ld a, $44                                     ; $6196: $3e $44
    ld e, $60                                     ; $6198: $1e $60
    ld [$c201], sp                                ; $619a: $08 $01 $c2
    jp $aa3c                                      ; $619d: $c3 $3c $aa


    nop                                           ; $61a0: $00
    db $d3                                        ; $61a1: $d3
    add e                                         ; $61a2: $83
    ld b, h                                       ; $61a3: $44
    nop                                           ; $61a4: $00
    rst $00                                       ; $61a5: $c7
    jp hl                                         ; $61a6: $e9


    inc bc                                        ; $61a7: $03
    push af                                       ; $61a8: $f5
    rlca                                          ; $61a9: $07
    ld [hl], e                                    ; $61aa: $73
    halt                                          ; $61ab: $76
    ldh a, [rP1]                                  ; $61ac: $f0 $00
    ld l, $a0                                     ; $61ae: $2e $a0
    inc bc                                        ; $61b0: $03
    dec c                                         ; $61b1: $0d
    rst $20                                       ; $61b2: $e7
    dec de                                        ; $61b3: $1b
    inc c                                         ; $61b4: $0c
    ldh a, [rNR41]                                ; $61b5: $f0 $20
    inc e                                         ; $61b7: $1c
    db $e4                                        ; $61b8: $e4
    nop                                           ; $61b9: $00
    ld l, e                                       ; $61ba: $6b
    db $10                                        ; $61bb: $10
    inc bc                                        ; $61bc: $03
    ld a, [hl]                                    ; $61bd: $7e
    ld [bc], a                                    ; $61be: $02
    ld b, b                                       ; $61bf: $40
    nop                                           ; $61c0: $00
    ld bc, $0140                                  ; $61c1: $01 $40 $01
    nop                                           ; $61c4: $00
    inc bc                                        ; $61c5: $03
    nop                                           ; $61c6: $00
    jr jr_0ab_61c9                                ; $61c7: $18 $00

jr_0ab_61c9:
    ld [$3c08], sp                                ; $61c9: $08 $08 $3c
    jr z, @+$5e                                   ; $61cc: $28 $5c

    ld [bc], a                                    ; $61ce: $02
    ld [$e438], sp                                ; $61cf: $08 $38 $e4
    jr c, @+$12                                   ; $61d2: $38 $10

    db $e4                                        ; $61d4: $e4
    ret c                                         ; $61d5: $d8

    and h                                         ; $61d6: $a4
    jr nz, jr_0ab_61f9                            ; $61d7: $20 $20

    cp $01                                        ; $61d9: $fe $01
    db $fc                                        ; $61db: $fc
    inc bc                                        ; $61dc: $03
    nop                                           ; $61dd: $00
    ld hl, sp+$06                                 ; $61de: $f8 $06
    ldh [$c1], a                                  ; $61e0: $e0 $c1
    call c, $e700                                 ; $61e2: $dc $00 $e7
    jr jr_0ab_61eb                                ; $61e5: $18 $04

    jp $813c                                      ; $61e7: $c3 $3c $81


    ld h, [hl]                                    ; $61ea: $66

jr_0ab_61eb:
    nop                                           ; $61eb: $00
    ld b, $00                                     ; $61ec: $06 $00
    nop                                           ; $61ee: $00
    rst $30                                       ; $61ef: $f7
    nop                                           ; $61f0: $00
    scf                                           ; $61f1: $37
    db $e3                                        ; $61f2: $e3
    ld [$ff00], sp                                ; $61f3: $08 $00 $ff
    ld [$08f3], sp                                ; $61f6: $08 $f3 $08

jr_0ab_61f9:
    nop                                           ; $61f9: $00
    dec d                                         ; $61fa: $15
    add hl, bc                                    ; $61fb: $09
    ld e, $3f                                     ; $61fc: $1e $3f
    xor h                                         ; $61fe: $ac
    ld a, $ec                                     ; $61ff: $3e $ec
    ld l, a                                       ; $6201: $6f
    db $10                                        ; $6202: $10
    ld a, c                                       ; $6203: $79
    db $e3                                        ; $6204: $e3
    db $fc                                        ; $6205: $fc

jr_0ab_6206:
    ld d, b                                       ; $6206: $50
    ld [$0080], sp                                ; $6207: $08 $80 $00
    ld b, b                                       ; $620a: $40
    add b                                         ; $620b: $80
    ld b, e                                       ; $620c: $43
    add b                                         ; $620d: $80
    ld e, c                                       ; $620e: $59
    nop                                           ; $620f: $00
    ret nz                                        ; $6210: $c0

    add b                                         ; $6211: $80
    ld h, b                                       ; $6212: $60
    and b                                         ; $6213: $a0
    ld h, b                                       ; $6214: $60
    ld c, b                                       ; $6215: $48
    ld l, h                                       ; $6216: $6c
    ld [$0500], sp                                ; $6217: $08 $00 $05
    ld [bc], a                                    ; $621a: $02
    inc bc                                        ; $621b: $03
    ld b, $01                                     ; $621c: $06 $01
    ld [bc], a                                    ; $621e: $02
    inc bc                                        ; $621f: $03
    db $fc                                        ; $6220: $fc
    nop                                           ; $6221: $00
    ld bc, $01fc                                  ; $6222: $01 $fc $01
    nop                                           ; $6225: $00
    ld [bc], a                                    ; $6226: $02
    inc bc                                        ; $6227: $03
    ld bc, $0002                                  ; $6228: $01 $02 $00
    ret c                                         ; $622b: $d8

    ld a, h                                       ; $622c: $7c
    xor [hl]                                      ; $622d: $ae
    cp $a5                                        ; $622e: $fe $a5

jr_0ab_6230:
    ccf                                           ; $6230: $3f
    ret nz                                        ; $6231: $c0

    ccf                                           ; $6232: $3f
    nop                                           ; $6233: $00
    ld [bc], a                                    ; $6234: $02
    ld [c], a                                     ; $6235: $e2
    nop                                           ; $6236: $00
    ret z                                         ; $6237: $c8

    ld h, a                                       ; $6238: $67
    ld [hl], b                                    ; $6239: $70
    xor a                                         ; $623a: $af
    and b                                         ; $623b: $a0
    nop                                           ; $623c: $00
    add e                                         ; $623d: $83

Jump_0ab_623e:
    or b                                          ; $623e: $b0
    rrca                                          ; $623f: $0f
    ld h, b                                       ; $6240: $60
    sbc a                                         ; $6241: $9f
    ret nz                                        ; $6242: $c0

    cp a                                          ; $6243: $bf
    add b                                         ; $6244: $80
    nop                                           ; $6245: $00
    sbc a                                         ; $6246: $9f
    ret nz                                        ; $6247: $c0

    nop                                           ; $6248: $00
    ccf                                           ; $6249: $3f
    rst $38                                       ; $624a: $ff
    nop                                           ; $624b: $00
    nop                                           ; $624c: $00
    rst $38                                       ; $624d: $ff
    nop                                           ; $624e: $00
    db $eb                                        ; $624f: $eb
    add hl, bc                                    ; $6250: $09
    pop de                                        ; $6251: $d1
    inc e                                         ; $6252: $1c
    push de                                       ; $6253: $d5
    inc e                                         ; $6254: $1c
    or l                                          ; $6255: $b5
    inc l                                         ; $6256: $2c
    nop                                           ; $6257: $00
    and e                                         ; $6258: $a3
    jr c, jr_0ab_6206                             ; $6259: $38 $ab

    jr c, jr_0ab_6281                             ; $625b: $38 $24

    ld sp, $096c                                  ; $625d: $31 $6c $09
    nop                                           ; $6260: $00
    sbc c                                         ; $6261: $99

Jump_0ab_6262:
    ld d, a                                       ; $6262: $57
    dec l                                         ; $6263: $2d
    dec de                                        ; $6264: $1b
    ret nc                                        ; $6265: $d0

    ld e, $e0                                     ; $6266: $1e $e0
    nop                                           ; $6268: $00
    ld bc, $00f9                                  ; $6269: $01 $f9 $00
    db $f4                                        ; $626c: $f4
    ld b, $f5                                     ; $626d: $06 $f5
    rlca                                          ; $626f: $07
    ld hl, sp+$6a                                 ; $6270: $f8 $6a
    stop                                          ; $6272: $10 $00
    ccf                                           ; $6274: $3f
    cp a                                          ; $6275: $bf
    adc a                                         ; $6276: $8f
    ld c, a                                       ; $6277: $4f
    and b                                         ; $6278: $a0
    ld h, b                                       ; $6279: $60
    and b                                         ; $627a: $a0
    ld c, b                                       ; $627b: $48
    ld [$74c4], sp                                ; $627c: $08 $c4 $74
    inc de                                        ; $627f: $13
    ld a, e                                       ; $6280: $7b

jr_0ab_6281:
    ret nc                                        ; $6281: $d0

    ld c, b                                       ; $6282: $48
    rst $38                                       ; $6283: $ff
    nop                                           ; $6284: $00
    ld a, a                                       ; $6285: $7f
    nop                                           ; $6286: $00
    nop                                           ; $6287: $00
    ld bc, $f003                                  ; $6288: $01 $03 $f0
    pop af                                        ; $628b: $f1
    db $ec                                        ; $628c: $ec
    pop hl                                        ; $628d: $e1
    ld bc, $1900                                  ; $628e: $01 $00 $19
    dec b                                         ; $6291: $05
    ld sp, $610d                                  ; $6292: $31 $0d $61
    dec c                                         ; $6295: $0d
    ld h, c                                       ; $6296: $61
    adc l                                         ; $6297: $8d
    nop                                           ; $6298: $00
    and c                                         ; $6299: $a1
    rrca                                          ; $629a: $0f
    ld h, b                                       ; $629b: $60
    ld l, a                                       ; $629c: $6f
    ld h, b                                       ; $629d: $60
    rst $08                                       ; $629e: $cf
    jr nz, jr_0ab_6230                            ; $629f: $20 $8f

    nop                                           ; $62a1: $00
    ldh [$8f], a                                  ; $62a2: $e0 $8f
    ret nz                                        ; $62a4: $c0

    ld h, a                                       ; $62a5: $67
    ld h, b                                       ; $62a6: $60
    adc a                                         ; $62a7: $8f
    add sp, -$75                                  ; $62a8: $e8 $8b
    nop                                           ; $62aa: $00
    add sp, -$02                                  ; $62ab: $e8 $fe
    nop                                           ; $62ad: $00
    ld [$fe14], a                                 ; $62ae: $ea $14 $fe
    nop                                           ; $62b1: $00
    cp $00                                        ; $62b2: $fe $00
    nop                                           ; $62b4: $00
    db $fd                                        ; $62b5: $fd
    inc bc                                        ; $62b6: $03
    ld hl, sp+$03                                 ; $62b7: $f8 $03
    or $06                                        ; $62b9: $f6 $06
    add sp, $00                                   ; $62bb: $e8 $00
    rrca                                          ; $62bd: $0f
    add hl, de                                    ; $62be: $19
    inc e                                         ; $62bf: $1c
    inc e                                         ; $62c0: $1c
    inc a                                         ; $62c1: $3c
    inc e                                         ; $62c2: $1c
    ld e, $1c                                     ; $62c3: $1e $1c
    nop                                           ; $62c5: $00
    ld c, $0c                                     ; $62c6: $0e $0c
    dec bc                                        ; $62c8: $0b
    db $fc                                        ; $62c9: $fc

Call_0ab_62ca:
    db $eb                                        ; $62ca: $eb
    cp $03                                        ; $62cb: $fe $03
    ld a, d                                       ; $62cd: $7a
    nop                                           ; $62ce: $00
    inc bc                                        ; $62cf: $03
    ei                                            ; $62d0: $fb
    inc bc                                        ; $62d1: $03
    ld a, [$fd03]                                 ; $62d2: $fa $03 $fd
    ld bc, $007c                                  ; $62d5: $01 $7c $00
    add c                                         ; $62d8: $81
    ld a, h                                       ; $62d9: $7c
    ld a, l                                       ; $62da: $7d
    ld a, h                                       ; $62db: $7c
    ld bc, $81fc                                  ; $62dc: $01 $fc $81
    db $fd                                        ; $62df: $fd
    nop                                           ; $62e0: $00
    add c                                         ; $62e1: $81
    adc b                                         ; $62e2: $88
    or c                                          ; $62e3: $b1
    ld [c], a                                     ; $62e4: $e2
    ld l, b                                       ; $62e5: $68
    dec e                                         ; $62e6: $1d
    db $fc                                        ; $62e7: $fc
    add d                                         ; $62e8: $82
    nop                                           ; $62e9: $00
    cp $1e                                        ; $62ea: $fe $1e
    inc sp                                        ; $62ec: $33
    ld e, $c3                                     ; $62ed: $1e $c3
    ld e, $ed                                     ; $62ef: $1e $ed
    inc c                                         ; $62f1: $0c
    nop                                           ; $62f2: $00
    cp $80                                        ; $62f3: $fe $80
    ccf                                           ; $62f5: $3f
    ret nz                                        ; $62f6: $c0

    rrca                                          ; $62f7: $0f
    rlca                                          ; $62f8: $07
    ld [hl], a                                    ; $62f9: $77
    add e                                         ; $62fa: $83
    nop                                           ; $62fb: $00
    dec de                                        ; $62fc: $1b
    ld h, b                                       ; $62fd: $60
    inc c                                         ; $62fe: $0c
    ld [hl], b                                    ; $62ff: $70
    ld b, $70                                     ; $6300: $06 $70
    ld b, $f1                                     ; $6302: $06 $f1
    nop                                           ; $6304: $00
    dec b                                         ; $6305: $05

Call_0ab_6306:
    adc c                                         ; $6306: $89
    and c                                         ; $6307: $a1
    inc b                                         ; $6308: $04
    jr nc, jr_0ab_6317                            ; $6309: $30 $0c

    inc b                                         ; $630b: $04
    ret                                           ; $630c: $c9


    nop                                           ; $630d: $00
    ret nz                                        ; $630e: $c0

    call nz, $0fcb                                ; $630f: $c4 $cb $0f
    db $ec                                        ; $6312: $ec
    rlca                                          ; $6313: $07
    ldh [$e0], a                                  ; $6314: $e0 $e0
    nop                                           ; $6316: $00

jr_0ab_6317:
    rst $20                                       ; $6317: $e7
    sbc e                                         ; $6318: $9b
    ret nz                                        ; $6319: $c0

    add l                                         ; $631a: $85
    cp h                                          ; $631b: $bc
    ld bc, $cc6c                                  ; $631c: $01 $6c $cc
    nop                                           ; $631f: $00
    add $8c                                       ; $6320: $c6 $8c
    inc d                                         ; $6322: $14
    inc c                                         ; $6323: $0c
    ld a, [hl-]                                   ; $6324: $3a
    inc b                                         ; $6325: $04

jr_0ab_6326:
    cp d                                          ; $6326: $ba
    add [hl]                                      ; $6327: $86
    nop                                           ; $6328: $00
    ld a, [$1dc1]                                 ; $6329: $fa $c1 $1d
    cp b                                          ; $632c: $b8
    ccf                                           ; $632d: $3f
    jr nz, jr_0ab_63af                            ; $632e: $20 $7f

    nop                                           ; $6330: $00
    ld b, b                                       ; $6331: $40
    ret c                                         ; $6332: $d8

    ei                                            ; $6333: $fb
    nop                                           ; $6334: $00
    scf                                           ; $6335: $37
    daa                                           ; $6336: $27
    call nz, Call_0ab_62ca                        ; $6337: $c4 $ca $62
    ld a, [hl-]                                   ; $633a: $3a
    nop                                           ; $633b: $00
    inc bc                                        ; $633c: $03
    nop                                           ; $633d: $00
    jp nz, $7e07                                  ; $633e: $c2 $07 $7e

    rra                                           ; $6341: $1f
    ld h, d                                       ; $6342: $62
    inc bc                                        ; $6343: $03
    nop                                           ; $6344: $00
    ld e, $e1                                     ; $6345: $1e $e1
    inc b                                         ; $6347: $04
    dec de                                        ; $6348: $1b
    ld [bc], a                                    ; $6349: $02
    inc b                                         ; $634a: $04
    ret nz                                        ; $634b: $c0

    ld a, h                                       ; $634c: $7c
    nop                                           ; $634d: $00
    ld bc, $03fb                                  ; $634e: $01 $fb $03
    ld a, e                                       ; $6351: $7b
    inc bc                                        ; $6352: $03
    dec sp                                        ; $6353: $3b
    add d                                         ; $6354: $82
    sub l                                         ; $6355: $95
    nop                                           ; $6356: $00
    ret nz                                        ; $6357: $c0

    jr nz, jr_0ab_6326                            ; $6358: $20 $cc

    adc $26                                       ; $635a: $ce $26
    ld e, $46                                     ; $635c: $1e $46
    inc c                                         ; $635e: $0c
    nop                                           ; $635f: $00
    cp $09                                        ; $6360: $fe $09
    db $fc                                        ; $6362: $fc
    push af                                       ; $6363: $f5
    db $fc                                        ; $6364: $fc
    push af                                       ; $6365: $f5
    db $ec                                        ; $6366: $ec
    db $eb                                        ; $6367: $eb
    nop                                           ; $6368: $00
    ld hl, sp+$67                                 ; $6369: $f8 $67
    ldh a, [rNR22]                                ; $636b: $f0 $17
    ldh a, [$2f]                                  ; $636d: $f0 $2f
    ldh [$f1], a                                  ; $636f: $e0 $f1
    nop                                           ; $6371: $00
    dec b                                         ; $6372: $05
    pop hl                                        ; $6373: $e1
    dec c                                         ; $6374: $0d
    db $e3                                        ; $6375: $e3
    dec bc                                        ; $6376: $0b
    db $e3                                        ; $6377: $e3
    dec bc                                        ; $6378: $0b
    jp Jump_000_1b10                              ; $6379: $c3 $10 $1b


    rst $00                                       ; $637c: $c7
    rla                                           ; $637d: $17
    ld [bc], a                                    ; $637e: $02
    ld [$e3e8], sp                                ; $637f: $08 $e8 $e3
    ldh a, [$f3]                                  ; $6382: $f0 $f3
    ld [$f3f4], sp                                ; $6384: $08 $f4 $f3
    rlca                                          ; $6387: $07
    di                                            ; $6388: $f3
    xor c                                         ; $6389: $a9
    nop                                           ; $638a: $00
    ld sp, hl                                     ; $638b: $f9
    inc bc                                        ; $638c: $03
    ld sp, hl                                     ; $638d: $f9
    ld [bc], a                                    ; $638e: $02
    ld bc, $06fc                                  ; $638f: $01 $fc $06
    ld hl, sp+$06                                 ; $6392: $f8 $06
    ld a, [$1002]                                 ; $6394: $fa $02 $10
    ld a, d                                       ; $6397: $7a
    nop                                           ; $6398: $00
    ld a, h                                       ; $6399: $7c
    ld b, $3c                                     ; $639a: $06 $3c
    ld b, $fd                                     ; $639c: $06 $fd
    db $e3                                        ; $639e: $e3
    ld a, [hl-]                                   ; $639f: $3a
    ld sp, $4300                                  ; $63a0: $31 $00 $43
    ld e, h                                       ; $63a3: $5c
    ld [hl], a                                    ; $63a4: $77
    ld [hl], e                                    ; $63a5: $73
    ld [de], a                                    ; $63a6: $12
    ld a, [hl]                                    ; $63a7: $7e
    add hl, de                                    ; $63a8: $19
    jr c, jr_0ab_63ab                             ; $63a9: $38 $00

jr_0ab_63ab:
    inc [hl]                                      ; $63ab: $34
    jr z, jr_0ab_63b6                             ; $63ac: $28 $08

    inc b                                         ; $63ae: $04

jr_0ab_63af:
    dec h                                         ; $63af: $25
    ld sp, $921a                                  ; $63b0: $31 $1a $92
    nop                                           ; $63b3: $00
    adc b                                         ; $63b4: $88
    ld [hl], b                                    ; $63b5: $70

jr_0ab_63b6:
    ld a, c                                       ; $63b6: $79
    db $fc                                        ; $63b7: $fc
    ldh a, [$7e]                                  ; $63b8: $f0 $7e
    ld [bc], a                                    ; $63ba: $02
    ret c                                         ; $63bb: $d8

    nop                                           ; $63bc: $00
    add [hl]                                      ; $63bd: $86
    ld [c], a                                     ; $63be: $e2
    dec b                                         ; $63bf: $05
    ld [hl], c                                    ; $63c0: $71
    add b                                         ; $63c1: $80
    sub c                                         ; $63c2: $91
    jr nc, jr_0ab_63f4                            ; $63c3: $30 $2f

    nop                                           ; $63c5: $00
    ldh [$5f], a                                  ; $63c6: $e0 $5f
    ld h, b                                       ; $63c8: $60
    rra                                           ; $63c9: $1f
    ldh [$9f], a                                  ; $63ca: $e0 $9f
    ld a, a                                       ; $63cc: $7f
    ld a, h                                       ; $63cd: $7c
    nop                                           ; $63ce: $00
    ld a, a                                       ; $63cf: $7f
    db $fc                                        ; $63d0: $fc
    db $e4                                        ; $63d1: $e4
    ld a, b                                       ; $63d2: $78
    ret c                                         ; $63d3: $d8

    ldh [rIF], a                                  ; $63d4: $e0 $0f
    ret nz                                        ; $63d6: $c0

    nop                                           ; $63d7: $00
    rst $18                                       ; $63d8: $df
    ret nz                                        ; $63d9: $c0

    ld e, a                                       ; $63da: $5f
    ret nz                                        ; $63db: $c0

    rra                                           ; $63dc: $1f
    ret nz                                        ; $63dd: $c0

    rra                                           ; $63de: $1f
    sbc a                                         ; $63df: $9f
    nop                                           ; $63e0: $00
    ccf                                           ; $63e1: $3f
    add b                                         ; $63e2: $80
    ld a, $be                                     ; $63e3: $3e $be
    ld a, $80                                     ; $63e5: $3e $80
    scf                                           ; $63e7: $37
    add a                                         ; $63e8: $87
    nop                                           ; $63e9: $00
    cpl                                           ; $63ea: $2f
    adc a                                         ; $63eb: $8f
    cpl                                           ; $63ec: $2f
    adc a                                         ; $63ed: $8f
    ld l, a                                       ; $63ee: $6f
    rrca                                          ; $63ef: $0f
    ld b, b                                       ; $63f0: $40
    rra                                           ; $63f1: $1f
    ld c, b                                       ; $63f2: $48
    ld b, b                                       ; $63f3: $40

jr_0ab_63f4:
    dec d                                         ; $63f4: $15
    nop                                           ; $63f5: $00
    add b                                         ; $63f6: $80
    ccf                                           ; $63f7: $3f
    cp b                                          ; $63f8: $b8
    ld bc, $00fc                                  ; $63f9: $01 $fc $00
    cp $a0                                        ; $63fc: $fe $a0
    ld [hl-], a                                   ; $63fe: $32
    add hl, bc                                    ; $63ff: $09
    cp $60                                        ; $6400: $fe $60
    ld bc, $0000                                  ; $6402: $01 $00 $00
    ld a, a                                       ; $6405: $7f
    ld [hl], c                                    ; $6406: $71
    cp c                                          ; $6407: $b9
    nop                                           ; $6408: $00
    ccf                                           ; $6409: $3f
    sbc b                                         ; $640a: $98
    rra                                           ; $640b: $1f
    add e                                         ; $640c: $83
    inc hl                                        ; $640d: $23
    add c                                         ; $640e: $81
    ld sp, $00c7                                  ; $640f: $31 $c7 $00
    rla                                           ; $6412: $17
    ld b, e                                       ; $6413: $43
    dec de                                        ; $6414: $1b
    ld b, c                                       ; $6415: $41
    dec e                                         ; $6416: $1d
    dec b                                         ; $6417: $05
    jr c, jr_0ab_642a                             ; $6418: $38 $10

    nop                                           ; $641a: $00
    dec b                                         ; $641b: $05
    add hl, bc                                    ; $641c: $09
    inc c                                         ; $641d: $0c
    ld b, $3e                                     ; $641e: $06 $3e
    rlca                                          ; $6420: $07
    dec de                                        ; $6421: $1b
    adc $00                                       ; $6422: $ce $00
    add l                                         ; $6424: $85
    ldh [$62], a                                  ; $6425: $e0 $62
    ld bc, $c070                                  ; $6427: $01 $70 $c0

jr_0ab_642a:
    and e                                         ; $642a: $a3
    ldh [rP1], a                                  ; $642b: $e0 $00
    push de                                       ; $642d: $d5
    ld [hl], e                                    ; $642e: $73
    or a                                          ; $642f: $b7

jr_0ab_6430:
    ld l, d                                       ; $6430: $6a
    ld b, h                                       ; $6431: $44
    ld e, d                                       ; $6432: $5a
    ld d, h                                       ; $6433: $54
    dec e                                         ; $6434: $1d
    nop                                           ; $6435: $00
    adc e                                         ; $6436: $8b
    ld [bc], a                                    ; $6437: $02
    ld l, a                                       ; $6438: $6f
    and e                                         ; $6439: $a3
    adc h                                         ; $643a: $8c
    ldh a, [$c8]                                  ; $643b: $f0 $c8
    ldh [rP1], a                                  ; $643d: $e0 $00
    jr jr_0ab_6430                                ; $643f: $18 $ef

    ldh a, [$3e]                                  ; $6441: $f0 $3e
    ret nz                                        ; $6443: $c0

    add c                                         ; $6444: $81
    db $fc                                        ; $6445: $fc
    add c                                         ; $6446: $81
    nop                                           ; $6447: $00
    db $fc                                        ; $6448: $fc
    add e                                         ; $6449: $83
    ld hl, sp-$79                                 ; $644a: $f8 $87
    ldh a, [$80]                                  ; $644c: $f0 $80
    cp [hl]                                       ; $644e: $be
    ld bc, $7c48                                  ; $644f: $01 $48 $7c
    ld [bc], a                                    ; $6452: $02
    nop                                           ; $6453: $00

Call_0ab_6454:
    db $fc                                        ; $6454: $fc
    ld de, $0260                                  ; $6455: $11 $60 $02
    ld a, [$02f8]                                 ; $6458: $fa $f8 $02
    inc bc                                        ; $645b: $03
    ld hl, sp-$80                                 ; $645c: $f8 $80
    ccf                                           ; $645e: $3f
    add b                                         ; $645f: $80
    ccf                                           ; $6460: $3f
    ld a, a                                       ; $6461: $7f
    cp b                                          ; $6462: $b8
    ld bc, $0804                                  ; $6463: $01 $04 $08
    add b                                         ; $6466: $80
    ld bc, $6088                                  ; $6467: $01 $88 $60
    ld c, $a0                                     ; $646a: $0e $a0
    adc a                                         ; $646c: $8f
    and b                                         ; $646d: $a0
    adc a                                         ; $646e: $8f
    or b                                          ; $646f: $b0
    inc h                                         ; $6470: $24
    add a                                         ; $6471: $87
    ret nc                                        ; $6472: $d0

    and h                                         ; $6473: $a4
    nop                                           ; $6474: $00
    nop                                           ; $6475: $00
    ret nz                                        ; $6476: $c0

    or h                                          ; $6477: $b4
    ld [bc], a                                    ; $6478: $02
    ld de, $067a                                  ; $6479: $11 $7a $06
    ld c, b                                       ; $647c: $48
    ld a, d                                       ; $647d: $7a
    ld h, e                                       ; $647e: $63
    and c                                         ; $647f: $a1
    dec a                                         ; $6480: $3d

jr_0ab_6481:
    xor $09                                       ; $6481: $ee $09
    call z, $e10a                                 ; $6483: $cc $0a $e1
    ld bc, $a0ce                                  ; $6486: $01 $ce $a0
    adc a                                         ; $6489: $8f
    cpl                                           ; $648a: $2f
    rst $08                                       ; $648b: $cf
    cpl                                           ; $648c: $2f
    rst $08                                       ; $648d: $cf
    db $10                                        ; $648e: $10
    jr jr_0ab_6492                                ; $648f: $18 $01

    rst $38                                       ; $6491: $ff

jr_0ab_6492:
    nop                                           ; $6492: $00
    cpl                                           ; $6493: $2f
    ldh [rVBK], a                                 ; $6494: $e0 $4f
    ldh [$1f], a                                  ; $6496: $e0 $1f
    ld d, b                                       ; $6498: $50
    ld [bc], a                                    ; $6499: $02
    add b                                         ; $649a: $80
    db $10                                        ; $649b: $10
    jr z, jr_0ab_64a4                             ; $649c: $28 $06

    ldh a, [rTIMA]                                ; $649e: $f0 $05
    pop af                                        ; $64a0: $f1
    dec b                                         ; $64a1: $05
    pop af                                        ; $64a2: $f1
    dec c                                         ; $64a3: $0d

jr_0ab_64a4:
    inc l                                         ; $64a4: $2c
    pop hl                                        ; $64a5: $e1
    ld [$01f0], sp                                ; $64a6: $08 $f0 $01
    inc bc                                        ; $64a9: $03
    inc [hl]                                      ; $64aa: $34
    jr nz, jr_0ab_64b1                            ; $64ab: $20 $04

    ld c, e                                       ; $64ad: $4b
    db $10                                        ; $64ae: $10
    inc bc                                        ; $64af: $03
    and [hl]                                      ; $64b0: $a6

jr_0ab_64b1:
    ld [bc], a                                    ; $64b1: $02
    ld b, b                                       ; $64b2: $40
    nop                                           ; $64b3: $00
    ld bc, $fc10                                  ; $64b4: $01 $10 $fc
    cp $f9                                        ; $64b7: $fe $f9
    ld hl, sp+$00                                 ; $64b9: $f8 $00
    rlca                                          ; $64bb: $07
    ld [$0d0e], sp                                ; $64bc: $08 $0e $0d
    add hl, bc                                    ; $64bf: $09
    ld e, $10                                     ; $64c0: $1e $10
    nop                                           ; $64c2: $00
    rst $38                                       ; $64c3: $ff
    call nz, Call_000_0027                        ; $64c4: $c4 $27 $00
    ld [$e000], sp                                ; $64c7: $08 $00 $e0
    ccf                                           ; $64ca: $3f
    ld [hl+], a                                   ; $64cb: $22
    ld e, $f3                                     ; $64cc: $1e $f3
    db $ed                                        ; $64ce: $ed
    jr nz, jr_0ab_6481                            ; $64cf: $20 $b0

    jr @+$22                                      ; $64d1: $18 $20

    jr jr_0ab_6551                                ; $64d3: $18 $7c

    db $fc                                        ; $64d5: $fc
    add hl, sp                                    ; $64d6: $39
    jr c, jr_0ab_651b                             ; $64d7: $38 $42

    nop                                           ; $64d9: $00
    jp $e083                                      ; $64da: $c3 $83 $e0


    db $10                                        ; $64dd: $10
    inc de                                        ; $64de: $13
    rst $20                                       ; $64df: $e7
    rst $20                                       ; $64e0: $e7
    sbc e                                         ; $64e1: $9b
    nop                                           ; $64e2: $00
    jp $810c                                      ; $64e3: $c3 $0c $81


    ld [hl], $30                                  ; $64e6: $36 $30
    sub b                                         ; $64e8: $90
    add e                                         ; $64e9: $83
    ld e, b                                       ; $64ea: $58
    nop                                           ; $64eb: $00
    ret nc                                        ; $64ec: $d0

    dec c                                         ; $64ed: $0d
    push bc                                       ; $64ee: $c5
    dec c                                         ; $64ef: $0d
    pop bc                                        ; $64f0: $c1
    nop                                           ; $64f1: $00
    ld a, [$0005]                                 ; $64f2: $fa $05 $00
    db $f4                                        ; $64f5: $f4
    push hl                                       ; $64f6: $e5
    ldh [rWY], a                                  ; $64f7: $e0 $4a
    ld b, h                                       ; $64f9: $44
    ld e, $88                                     ; $64fa: $1e $88
    rrca                                          ; $64fc: $0f
    nop                                           ; $64fd: $00
    add $05                                       ; $64fe: $c6 $05
    ld h, [hl]                                    ; $6500: $66
    inc bc                                        ; $6501: $03
    jr nc, jr_0ab_6544                            ; $6502: $30 $40

    ccf                                           ; $6504: $3f
    ret nz                                        ; $6505: $c0

    nop                                           ; $6506: $00
    rst $38                                       ; $6507: $ff
    ret nz                                        ; $6508: $c0

    rst $38                                       ; $6509: $ff
    add b                                         ; $650a: $80
    ccf                                           ; $650b: $3f
    sbc a                                         ; $650c: $9f
    ccf                                           ; $650d: $3f
    add e                                         ; $650e: $83
    ld b, $07                                     ; $650f: $06 $07
    ldh a, [rSVBK]                                ; $6511: $f0 $70
    add b                                         ; $6513: $80
    ld b, b                                       ; $6514: $40
    ld h, b                                       ; $6515: $60
    jr jr_0ab_651e                                ; $6516: $18 $06

    jr c, @+$05                                   ; $6518: $38 $03

    nop                                           ; $651a: $00

jr_0ab_651b:
    inc l                                         ; $651b: $2c
    ld a, $60                                     ; $651c: $3e $60

jr_0ab_651e:
    and b                                         ; $651e: $a0
    ret nz                                        ; $651f: $c0

    rlca                                          ; $6520: $07
    add a                                         ; $6521: $87
    rst $38                                       ; $6522: $ff
    nop                                           ; $6523: $00
    ld a, a                                       ; $6524: $7f
    cp $fc                                        ; $6525: $fe $fc
    db $fc                                        ; $6527: $fc
    ld sp, hl                                     ; $6528: $f9
    ld hl, sp+$01                                 ; $6529: $f8 $01
    ld h, h                                       ; $652b: $64
    nop                                           ; $652c: $00
    inc hl                                        ; $652d: $23
    inc c                                         ; $652e: $0c
    inc bc                                        ; $652f: $03
    rrca                                          ; $6530: $0f
    ld [$c307], sp                                ; $6531: $08 $07 $c3
    nop                                           ; $6534: $00
    nop                                           ; $6535: $00
    ret nz                                        ; $6536: $c0

    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    sbc b                                         ; $6539: $98
    ld l, b                                       ; $653a: $68
    ld b, h                                       ; $653b: $44
    xor $e8                                       ; $653c: $ee $e8
    nop                                           ; $653e: $00
    add hl, bc                                    ; $653f: $09
    ldh a, [$74]                                  ; $6540: $f0 $74
    ldh a, [rDIV]                                 ; $6542: $f0 $04

jr_0ab_6544:
    inc d                                         ; $6544: $14
    ld a, [c]                                     ; $6545: $f2
    xor $00                                       ; $6546: $ee $00
    ld [c], a                                     ; $6548: $e2
    inc e                                         ; $6549: $1c
    inc e                                         ; $654a: $1c
    jr c, jr_0ab_65aa                             ; $654b: $38 $5d

    ld [hl-], a                                   ; $654d: $32
    ld [hl], b                                    ; $654e: $70
    adc b                                         ; $654f: $88
    nop                                           ; $6550: $00

jr_0ab_6551:
    call nz, $c4ca                                ; $6551: $c4 $ca $c4
    ld c, $c6                                     ; $6554: $0e $c6
    ld c, $8a                                     ; $6556: $0e $8a
    rra                                           ; $6558: $1f
    nop                                           ; $6559: $00
    add d                                         ; $655a: $82
    rra                                           ; $655b: $1f
    and c                                         ; $655c: $a1
    ld e, $24                                     ; $655d: $1e $24
    inc e                                         ; $655f: $1c
    ld c, h                                       ; $6560: $4c
    inc bc                                        ; $6561: $03
    nop                                           ; $6562: $00
    nop                                           ; $6563: $00
    db $10                                        ; $6564: $10
    inc e                                         ; $6565: $1c
    rrca                                          ; $6566: $0f
    dec c                                         ; $6567: $0d
    ld b, c                                       ; $6568: $41
    ld sp, $0040                                  ; $6569: $31 $40 $00
    ld a, $71                                     ; $656c: $3e $71
    add hl, bc                                    ; $656e: $09
    add a                                         ; $656f: $87
    or h                                          ; $6570: $b4
    add e                                         ; $6571: $83
    or b                                          ; $6572: $b0
    add a                                         ; $6573: $87
    nop                                           ; $6574: $00
    daa                                           ; $6575: $27
    ccf                                           ; $6576: $3f
    ccf                                           ; $6577: $3f
    ccf                                           ; $6578: $3f
    nop                                           ; $6579: $00
    cpl                                           ; $657a: $2f
    and b                                         ; $657b: $a0
    ld d, b                                       ; $657c: $50
    ld bc, $9847                                  ; $657d: $01 $47 $98
    add e                                         ; $6580: $83
    add b                                         ; $6581: $80
    inc c                                         ; $6582: $0c
    ret nz                                        ; $6583: $c0

    ld b, [hl]                                    ; $6584: $46
    ld [hl], b                                    ; $6585: $70
    ld d, b                                       ; $6586: $50
    nop                                           ; $6587: $00
    sbc a                                         ; $6588: $9f
    and b                                         ; $6589: $a0
    adc a                                         ; $658a: $8f
    ld a, [$060b]                                 ; $658b: $fa $0b $06
    rlca                                          ; $658e: $07
    inc c                                         ; $658f: $0c
    nop                                           ; $6590: $00
    ld [$c9c0], sp                                ; $6591: $08 $c0 $c9
    ld a, [de]                                    ; $6594: $1a
    ld bc, $3116                                  ; $6595: $01 $16 $31
    inc b                                         ; $6598: $04
    nop                                           ; $6599: $00
    scf                                           ; $659a: $37
    inc c                                         ; $659b: $0c
    adc b                                         ; $659c: $88
    inc e                                         ; $659d: $1c
    add h                                         ; $659e: $84
    call z, $3db4                                 ; $659f: $cc $b4 $3d
    nop                                           ; $65a2: $00
    db $dd                                        ; $65a3: $dd
    ld h, c                                       ; $65a4: $61
    add c                                         ; $65a5: $81
    jp nz, Jump_000_0303                          ; $65a6: $c2 $03 $03

    dec b                                         ; $65a9: $05

jr_0ab_65aa:
    rlca                                          ; $65aa: $07
    nop                                           ; $65ab: $00
    dec de                                        ; $65ac: $1b
    ld c, $16                                     ; $65ad: $0e $16
    inc b                                         ; $65af: $04
    ldh [$03], a                                  ; $65b0: $e0 $03
    dec de                                        ; $65b2: $1b
    rlca                                          ; $65b3: $07
    nop                                           ; $65b4: $00
    ld h, h                                       ; $65b5: $64
    ld [de], a                                    ; $65b6: $12
    jp z, $8910                                   ; $65b7: $ca $10 $89

    rlca                                          ; $65ba: $07
    cp a                                          ; $65bb: $bf
    daa                                           ; $65bc: $27
    nop                                           ; $65bd: $00
    inc sp                                        ; $65be: $33
    inc sp                                        ; $65bf: $33
    jr nz, @-$33                                  ; $65c0: $20 $cb

    adc d                                         ; $65c2: $8a
    add a                                         ; $65c3: $87
    push bc                                       ; $65c4: $c5
    ld h, $00                                     ; $65c5: $26 $00
    and $d6                                       ; $65c7: $e6 $d6

jr_0ab_65c9:
    call nc, $f076                                ; $65c9: $d4 $76 $f0
    add b                                         ; $65cc: $80
    ldh a, [$d1]                                  ; $65cd: $f0 $d1
    nop                                           ; $65cf: $00
    ld hl, $8575                                  ; $65d0: $21 $75 $85
    ld bc, $0521                                  ; $65d3: $01 $21 $05
    add hl, hl                                    ; $65d6: $29
    inc b                                         ; $65d7: $04
    nop                                           ; $65d8: $00
    call nz, $c616                                ; $65d9: $c4 $16 $c6
    ld [de], a                                    ; $65dc: $12
    add $1a                                       ; $65dd: $c6 $1a
    add $d4                                       ; $65df: $c6 $d4
    nop                                           ; $65e1: $00
    jp z, $c0cc                                   ; $65e2: $ca $cc $c0

    ld b, c                                       ; $65e5: $41
    add c                                         ; $65e6: $81
    ld h, b                                       ; $65e7: $60
    and [hl]                                      ; $65e8: $a6
    call $8d00                                    ; $65e9: $cd $00 $8d
    ret                                           ; $65ec: $c9


    add e                                         ; $65ed: $83
    ldh [$27], a                                  ; $65ee: $e0 $27
    ret nz                                        ; $65f0: $c0

    inc bc                                        ; $65f1: $03
    jr z, jr_0ab_65f4                             ; $65f2: $28 $00

jr_0ab_65f4:
    db $f4                                        ; $65f4: $f4
    inc b                                         ; $65f5: $04
    xor d                                         ; $65f6: $aa
    ld c, a                                       ; $65f7: $4f
    xor a                                         ; $65f8: $af
    rst $08                                       ; $65f9: $cf
    rrca                                          ; $65fa: $0f
    ld b, b                                       ; $65fb: $40
    nop                                           ; $65fc: $00
    ld b, a                                       ; $65fd: $47
    sbc b                                         ; $65fe: $98
    inc bc                                        ; $65ff: $03
    add b                                         ; $6600: $80
    inc l                                         ; $6601: $2c
    db $10                                        ; $6602: $10
    halt                                          ; $6603: $76
    add $00                                       ; $6604: $c6 $00
    ld d, $04                                     ; $6606: $16 $04
    dec b                                         ; $6608: $05
    ld [$28b8], sp                                ; $6609: $08 $b8 $28
    and b                                         ; $660c: $a0
    jr c, jr_0ab_660f                             ; $660d: $38 $00

jr_0ab_660f:
    or d                                          ; $660f: $b2
    or a                                          ; $6610: $b7
    xor a                                         ; $6611: $af
    sub e                                         ; $6612: $93
    and e                                         ; $6613: $a3
    jr nc, jr_0ab_65c9                            ; $6614: $30 $b3

    jr nc, jr_0ab_6618                            ; $6616: $30 $00

jr_0ab_6618:
    add e                                         ; $6618: $83
    jr nc, @-$4b                                  ; $6619: $30 $b3

    inc e                                         ; $661b: $1c
    ld l, b                                       ; $661c: $68
    ld [hl], b                                    ; $661d: $70
    dec sp                                        ; $661e: $3b
    nop                                           ; $661f: $00
    nop                                           ; $6620: $00
    daa                                           ; $6621: $27
    ld c, $09                                     ; $6622: $0e $09
    rra                                           ; $6624: $1f
    ret z                                         ; $6625: $c8

    adc a                                         ; $6626: $8f
    sub b                                         ; $6627: $90
    xor l                                         ; $6628: $ad
    nop                                           ; $6629: $00
    or d                                          ; $662a: $b2
    xor d                                         ; $662b: $aa
    sub h                                         ; $662c: $94
    jr nc, jr_0ab_6647                            ; $662d: $30 $18

    ld [de], a                                    ; $662f: $12
    inc e                                         ; $6630: $1c
    ld [$0f00], sp                                ; $6631: $08 $00 $0f
    db $eb                                        ; $6634: $eb
    db $ec                                        ; $6635: $ec
    db $e3                                        ; $6636: $e3
    db $e4                                        ; $6637: $e4
    sub e                                         ; $6638: $93
    sub b                                         ; $6639: $90
    ld [bc], a                                    ; $663a: $02
    nop                                           ; $663b: $00
    jr c, jr_0ab_6666                             ; $663c: $38 $28

    ld a, b                                       ; $663e: $78
    ld [$0ce4], a                                 ; $663f: $ea $e4 $0c
    inc b                                         ; $6642: $04
    add b                                         ; $6643: $80
    nop                                           ; $6644: $00
    ld d, c                                       ; $6645: $51
    or [hl]                                       ; $6646: $b6

jr_0ab_6647:
    dec a                                         ; $6647: $3d
    cp h                                          ; $6648: $bc
    ld a, [de]                                    ; $6649: $1a
    ld bc, $4c01                                  ; $664a: $01 $01 $4c
    nop                                           ; $664d: $00
    adc l                                         ; $664e: $8d
    inc e                                         ; $664f: $1c
    sbc $b4                                       ; $6650: $de $b4
    add l                                         ; $6652: $85
    nop                                           ; $6653: $00
    add hl, sp                                    ; $6654: $39
    jr c, jr_0ab_6657                             ; $6655: $38 $00

jr_0ab_6657:
    dec sp                                        ; $6657: $3b
    ld [de], a                                    ; $6658: $12
    ld [bc], a                                    ; $6659: $02
    dec b                                         ; $665a: $05
    ld b, b                                       ; $665b: $40
    dec c                                         ; $665c: $0d
    db $e4                                        ; $665d: $e4
    db $e3                                        ; $665e: $e3
    nop                                           ; $665f: $00
    jr nz, @-$75                                  ; $6660: $20 $89

    ld a, [de]                                    ; $6662: $1a
    sbc h                                         ; $6663: $9c
    ld [hl], $aa                                  ; $6664: $36 $aa

jr_0ab_6666:
    ld a, [hl-]                                   ; $6666: $3a
    ld [bc], a                                    ; $6667: $02
    nop                                           ; $6668: $00
    jr jr_0ab_66cc                                ; $6669: $18 $61

    ld bc, $ce41                                  ; $666b: $01 $41 $ce
    add b                                         ; $666e: $80
    rrca                                          ; $666f: $0f
    ld bc, $0f00                                  ; $6670: $01 $00 $0f
    ld h, b                                       ; $6673: $60
    ld b, $71                                     ; $6674: $06 $71
    dec d                                         ; $6676: $15
    pop af                                        ; $6677: $f1
    dec b                                         ; $6678: $05
    ld hl, sp+$00                                 ; $6679: $f8 $00
    inc de                                        ; $667b: $13
    ld hl, sp+$09                                 ; $667c: $f8 $09
    pop bc                                        ; $667e: $c1
    dec a                                         ; $667f: $3d
    pop bc                                        ; $6680: $c1
    dec a                                         ; $6681: $3d
    nop                                           ; $6682: $00
    nop                                           ; $6683: $00
    add b                                         ; $6684: $80
    ld a, $0e                                     ; $6685: $3e $0e
    inc c                                         ; $6687: $0c
    pop bc                                        ; $6688: $c1
    inc h                                         ; $6689: $24
    pop hl                                        ; $668a: $e1
    inc b                                         ; $668b: $04
    nop                                           ; $668c: $00
    pop af                                        ; $668d: $f1
    ld b, $f0                                     ; $668e: $06 $f0
    ld [bc], a                                    ; $6690: $02
    ld hl, sp+$02                                 ; $6691: $f8 $02
    ld hl, sp+$03                                 ; $6693: $f8 $03
    nop                                           ; $6695: $00
    ld hl, sp+$01                                 ; $6696: $f8 $01
    db $fc                                        ; $6698: $fc
    add h                                         ; $6699: $84
    cp b                                          ; $669a: $b8
    add c                                         ; $669b: $81
    cp b                                          ; $669c: $b8
    add e                                         ; $669d: $83
    nop                                           ; $669e: $00
    or b                                          ; $669f: $b0
    jr nc, jr_0ab_66b9                            ; $66a0: $30 $17

    jr nz, jr_0ab_66ab                            ; $66a2: $20 $07

    jr z, jr_0ab_66a9                             ; $66a4: $28 $03

    inc c                                         ; $66a6: $0c
    nop                                           ; $66a7: $00
    dec c                                         ; $66a8: $0d

jr_0ab_66a9:
    inc e                                         ; $66a9: $1c
    db $10                                        ; $66aa: $10

jr_0ab_66ab:
    add hl, sp                                    ; $66ab: $39
    ld a, [de]                                    ; $66ac: $1a
    ld [$2006], sp                                ; $66ad: $08 $06 $20
    nop                                           ; $66b0: $00
    jr nz, jr_0ab_6701                            ; $66b1: $20 $4e

    ld [hl], $40                                  ; $66b3: $36 $40
    ld a, [hl]                                    ; $66b5: $7e
    ld a, $5c                                     ; $66b6: $3e $5c
    inc a                                         ; $66b8: $3c

jr_0ab_66b9:
    nop                                           ; $66b9: $00
    ld a, a                                       ; $66ba: $7f
    ld a, b                                       ; $66bb: $78
    inc a                                         ; $66bc: $3c
    inc c                                         ; $66bd: $0c
    ldh [$e1], a                                  ; $66be: $e0 $e1
    ldh [rNR33], a                                ; $66c0: $e0 $1d
    nop                                           ; $66c2: $00
    inc e                                         ; $66c3: $1c
    dec e                                         ; $66c4: $1d
    call c, Call_000_2ee2                         ; $66c5: $dc $e2 $2e
    ldh [$0e], a                                  ; $66c8: $e0 $0e
    rrca                                          ; $66ca: $0f
    nop                                           ; $66cb: $00

jr_0ab_66cc:
    add sp, $00                                   ; $66cc: $e8 $00
    nop                                           ; $66ce: $00
    ld d, $74                                     ; $66cf: $16 $74
    db $e4                                        ; $66d1: $e4
    add sp, -$5f                                  ; $66d2: $e8 $a1
    nop                                           ; $66d4: $00
    add sp, -$38                                  ; $66d5: $e8 $c8
    ret c                                         ; $66d7: $d8

    or [hl]                                       ; $66d8: $b6
    jr nc, jr_0ab_66fd                            ; $66d9: $30 $22

    ld h, h                                       ; $66db: $64
    ld b, d                                       ; $66dc: $42
    nop                                           ; $66dd: $00
    ld c, h                                       ; $66de: $4c
    jp z, $1198                                   ; $66df: $ca $98 $11

    pop af                                        ; $66e2: $f1
    inc de                                        ; $66e3: $13
    ldh a, [$f0]                                  ; $66e4: $f0 $f0
    nop                                           ; $66e6: $00
    rst $20                                       ; $66e7: $e7
    ldh a, [$67]                                  ; $66e8: $f0 $67
    ldh [rNR52], a                                ; $66ea: $e0 $26
    ld h, b                                       ; $66ec: $60
    inc b                                         ; $66ed: $04
    ld h, b                                       ; $66ee: $60
    nop                                           ; $66ef: $00
    ld [$8880], sp                                ; $66f0: $08 $80 $88
    ldh a, [$e0]                                  ; $66f3: $f0 $e0
    ret nz                                        ; $66f5: $c0

    inc bc                                        ; $66f6: $03
    add a                                         ; $66f7: $87
    nop                                           ; $66f8: $00
    daa                                           ; $66f9: $27
    rrca                                          ; $66fa: $0f
    cpl                                           ; $66fb: $2f
    ld b, b                                       ; $66fc: $40

jr_0ab_66fd:
    rra                                           ; $66fd: $1f
    ld b, b                                       ; $66fe: $40
    rra                                           ; $66ff: $1f
    ret nz                                        ; $6700: $c0

jr_0ab_6701:
    nop                                           ; $6701: $00
    rra                                           ; $6702: $1f
    add b                                         ; $6703: $80
    ccf                                           ; $6704: $3f
    ld bc, $01fc                                  ; $6705: $01 $fc $01
    db $fc                                        ; $6708: $fc
    nop                                           ; $6709: $00
    inc d                                         ; $670a: $14
    cp $fe                                        ; $670b: $fe $fe
    nop                                           ; $670d: $00
    ld [bc], a                                    ; $670e: $02
    ld [$3dff], sp                                ; $670f: $08 $ff $3d
    ld [bc], a                                    ; $6712: $02
    ld e, $13                                     ; $6713: $1e $13
    nop                                           ; $6715: $00
    ld e, $93                                     ; $6716: $1e $93
    rrca                                          ; $6718: $0f
    add e                                         ; $6719: $83
    rrca                                          ; $671a: $0f

jr_0ab_671b:
    add e                                         ; $671b: $83
    ld c, $82                                     ; $671c: $0e $82
    nop                                           ; $671e: $00
    call z, $48c0                                 ; $671f: $cc $c0 $48
    ld d, c                                       ; $6722: $51
    ld d, d                                       ; $6723: $52
    ld b, c                                       ; $6724: $41
    cp b                                          ; $6725: $b8
    ld a, b                                       ; $6726: $78
    nop                                           ; $6727: $00
    pop hl                                        ; $6728: $e1
    ldh [$83], a                                  ; $6729: $e0 $83
    adc b                                         ; $672b: $88
    rlca                                          ; $672c: $07
    inc sp                                        ; $672d: $33
    rla                                           ; $672e: $17
    ld h, l                                       ; $672f: $65
    nop                                           ; $6730: $00
    ldh [$67], a                                  ; $6731: $e0 $67
    ldh [$c7], a                                  ; $6733: $e0 $c7
    ldh [$cf], a                                  ; $6735: $e0 $cf
    push af                                       ; $6737: $f5
    sub l                                         ; $6738: $95
    nop                                           ; $6739: $00
    ldh a, [rNR14]                                ; $673a: $f0 $14
    ret nz                                        ; $673c: $c0

    rrca                                          ; $673d: $0f
    and b                                         ; $673e: $a0
    ccf                                           ; $673f: $3f
    ld a, $7f                                     ; $6740: $3e $7f
    nop                                           ; $6742: $00
    ld a, a                                       ; $6743: $7f
    inc [hl]                                      ; $6744: $34
    ld d, h                                       ; $6745: $54
    ld l, d                                       ; $6746: $6a
    jr nc, jr_0ab_674a                            ; $6747: $30 $01

    dec de                                        ; $6749: $1b

jr_0ab_674a:
    add a                                         ; $674a: $87
    nop                                           ; $674b: $00
    ld e, e                                       ; $674c: $5b
    rlca                                          ; $674d: $07
    inc bc                                        ; $674e: $03
    adc e                                         ; $674f: $8b
    rst $00                                       ; $6750: $c7
    dec bc                                        ; $6751: $0b
    rrca                                          ; $6752: $0f
    inc c                                         ; $6753: $0c
    nop                                           ; $6754: $00
    rlca                                          ; $6755: $07
    inc h                                         ; $6756: $24
    ld [hl], h                                    ; $6757: $74
    rlca                                          ; $6758: $07
    db $f4                                        ; $6759: $f4
    rlca                                          ; $675a: $07
    ret nz                                        ; $675b: $c0

    add b                                         ; $675c: $80
    nop                                           ; $675d: $00
    add c                                         ; $675e: $81
    ld b, c                                       ; $675f: $41
    ld h, b                                       ; $6760: $60
    ld hl, $2140                                  ; $6761: $21 $40 $21
    ld h, b                                       ; $6764: $60
    ld bc, $7000                                  ; $6765: $01 $00 $70
    inc de                                        ; $6768: $13
    ld [hl], b                                    ; $6769: $70
    ld h, d                                       ; $676a: $62
    ld [hl], b                                    ; $676b: $70
    ld [hl+], a                                   ; $676c: $22
    add b                                         ; $676d: $80
    ccf                                           ; $676e: $3f
    inc c                                         ; $676f: $0c
    add b                                         ; $6770: $80
    ccf                                           ; $6771: $3f
    ld a, a                                       ; $6772: $7f
    nop                                           ; $6773: $00
    ld [bc], a                                    ; $6774: $02
    jr jr_0ab_6778                                ; $6775: $18 $01

    adc b                                         ; $6777: $88

jr_0ab_6778:
    ld h, l                                       ; $6778: $65
    ld h, e                                       ; $6779: $63
    nop                                           ; $677a: $00
    dec h                                         ; $677b: $25
    ld hl, $2b25                                  ; $677c: $21 $25 $2b
    or c                                          ; $677f: $b1
    add [hl]                                      ; $6780: $86
    ret nc                                        ; $6781: $d0

    ret nz                                        ; $6782: $c0

    jr nz, jr_0ab_67a4                            ; $6783: $20 $1f

    ret nz                                        ; $6785: $c0

    inc [hl]                                      ; $6786: $34
    ld a, [bc]                                    ; $6787: $0a
    ret nz                                        ; $6788: $c0

    rst $28                                       ; $6789: $ef
    ret nz                                        ; $678a: $c0

    xor [hl]                                      ; $678b: $ae
    ret nz                                        ; $678c: $c0

    jr jr_0ab_671b                                ; $678d: $18 $8c

    pop bc                                        ; $678f: $c1
    dec c                                         ; $6790: $0d
    or a                                          ; $6791: $b7
    ld [bc], a                                    ; $6792: $02
    rl d                                          ; $6793: $cb $12
    ld h, b                                       ; $6795: $60
    ld bc, $04e0                                  ; $6796: $01 $e0 $04
    and c                                         ; $6799: $a1
    ld b, c                                       ; $679a: $41

jr_0ab_679b:
    add c                                         ; $679b: $81
    ld bc, $1081                                  ; $679c: $01 $81 $10
    jr @+$01                                      ; $679f: $18 $ff

    nop                                           ; $67a1: $00
    ld [hl+], a                                   ; $67a2: $22
    inc bc                                        ; $67a3: $03

jr_0ab_67a4:
    pop af                                        ; $67a4: $f1
    ld [bc], a                                    ; $67a5: $02
    nop                                           ; $67a6: $00
    ld a, [c]                                     ; $67a7: $f2
    inc bc                                        ; $67a8: $03
    ld a, [c]                                     ; $67a9: $f2
    db $10                                        ; $67aa: $10
    jr z, jr_0ab_681d                             ; $67ab: $28 $70

    nop                                           ; $67ad: $00
    ld h, $70                                     ; $67ae: $26 $70
    inc h                                         ; $67b0: $24
    ld [hl], b                                    ; $67b1: $70
    inc h                                         ; $67b2: $24
    ld h, b                                       ; $67b3: $60
    ld c, h                                       ; $67b4: $4c
    ld [$030c], sp                                ; $67b5: $08 $0c $03
    ld hl, sp+$03                                 ; $67b8: $f8 $03
    inc bc                                        ; $67ba: $03
    inc [hl]                                      ; $67bb: $34
    jr nz, @-$5a                                  ; $67bc: $20 $a4

    ld c, d                                       ; $67be: $4a
    db $10                                        ; $67bf: $10
    inc bc                                        ; $67c0: $03
    sbc e                                         ; $67c1: $9b
    ld [bc], a                                    ; $67c2: $02
    ld d, b                                       ; $67c3: $50
    nop                                           ; $67c4: $00
    ld bc, $ffd0                                  ; $67c5: $01 $d0 $ff
    rra                                           ; $67c8: $1f
    jr z, @+$05                                   ; $67c9: $28 $03

    rlca                                          ; $67cb: $07
    ld bc, $00ff                                  ; $67cc: $01 $ff $00
    ldh a, [$f0]                                  ; $67cf: $f0 $f0
    adc $80                                       ; $67d1: $ce $80
    add b                                         ; $67d3: $80
    inc a                                         ; $67d4: $3c
    inc a                                         ; $67d5: $3c
    ld h, d                                       ; $67d6: $62
    nop                                           ; $67d7: $00
    ld a, h                                       ; $67d8: $7c
    ld bc, $e7fe                                  ; $67d9: $01 $fe $e7
    pop bc                                        ; $67dc: $c1
    nop                                           ; $67dd: $00
    ret nz                                        ; $67de: $c0

    rra                                           ; $67df: $1f
    inc b                                         ; $67e0: $04
    ld bc, $3d03                                  ; $67e1: $01 $03 $3d
    inc bc                                        ; $67e4: $03
    ld bc, $1840                                  ; $67e5: $01 $40 $18
    ld b, b                                       ; $67e8: $40
    add b                                         ; $67e9: $80
    nop                                           ; $67ea: $00
    ldh [rNR41], a                                ; $67eb: $e0 $20
    ld h, b                                       ; $67ed: $60
    ld [hl], b                                    ; $67ee: $70
    add b                                         ; $67ef: $80
    cp h                                          ; $67f0: $bc
    ret nz                                        ; $67f1: $c0

    ld e, $a0                                     ; $67f2: $1e $a0
    ld a, $58                                     ; $67f4: $3e $58
    cp $5f                                        ; $67f6: $fe $5f
    jr nz, jr_0ab_680a                            ; $67f8: $20 $10

    jr nz, jr_0ab_679b                            ; $67fa: $20 $9f

    ei                                            ; $67fc: $fb
    sbc e                                         ; $67fd: $9b
    inc b                                         ; $67fe: $04
    rst $18                                       ; $67ff: $df
    ld d, h                                       ; $6800: $54
    inc [hl]                                      ; $6801: $34
    sbc b                                         ; $6802: $98
    ld a, b                                       ; $6803: $78
    ld [hl], b                                    ; $6804: $70
    ld c, b                                       ; $6805: $48
    ld bc, $0000                                  ; $6806: $01 $00 $00
    inc bc                                        ; $6809: $03

jr_0ab_680a:
    inc bc                                        ; $680a: $03
    db $fc                                        ; $680b: $fc
    nop                                           ; $680c: $00
    ei                                            ; $680d: $fb
    ld hl, sp-$10                                 ; $680e: $f8 $f0
    or $00                                        ; $6810: $f6 $00
    ldh [$e0], a                                  ; $6812: $e0 $e0
    ld hl, sp-$3a                                 ; $6814: $f8 $c6
    ld h, b                                       ; $6816: $60
    add hl, de                                    ; $6817: $19
    ret nz                                        ; $6818: $c0

    or a                                          ; $6819: $b7
    nop                                           ; $681a: $00
    xor $2e                                       ; $681b: $ee $2e

jr_0ab_681d:
    ld h, b                                       ; $681d: $60
    rra                                           ; $681e: $1f
    rra                                           ; $681f: $1f
    ldh [$03], a                                  ; $6820: $e0 $03
    inc bc                                        ; $6822: $03
    nop                                           ; $6823: $00
    ld hl, $f87d                                  ; $6824: $21 $7d $f8
    nop                                           ; $6827: $00
    cp $41                                        ; $6828: $fe $41
    cp [hl]                                       ; $682a: $be
    or e                                          ; $682b: $b3
    nop                                           ; $682c: $00
    and b                                         ; $682d: $a0
    and h                                         ; $682e: $a4
    add b                                         ; $682f: $80
    ld h, a                                       ; $6830: $67
    ld hl, sp-$10                                 ; $6831: $f8 $f0
    pop af                                        ; $6833: $f1
    adc $00                                       ; $6834: $ce $00
    daa                                           ; $6836: $27
    inc h                                         ; $6837: $24
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00

jr_0ab_683a:
    dec e                                         ; $683a: $1d
    or b                                          ; $683b: $b0
    jr nc, @-$6c                                  ; $683c: $30 $92

    nop                                           ; $683e: $00
    cp l                                          ; $683f: $bd
    ld [bc], a                                    ; $6840: $02
    ld c, a                                       ; $6841: $4f
    adc a                                         ; $6842: $8f
    rlca                                          ; $6843: $07
    daa                                           ; $6844: $27
    inc bc                                        ; $6845: $03
    add b                                         ; $6846: $80
    nop                                           ; $6847: $00
    jr nz, jr_0ab_683a                            ; $6848: $20 $f0

    jr c, @+$3e                                   ; $684a: $38 $3c

    add b                                         ; $684c: $80
    inc bc                                        ; $684d: $03
    nop                                           ; $684e: $00
    add b                                         ; $684f: $80
    nop                                           ; $6850: $00
    cp e                                          ; $6851: $bb
    add b                                         ; $6852: $80
    ld bc, $4100                                  ; $6853: $01 $00 $41
    ret nz                                        ; $6856: $c0

    ld b, c                                       ; $6857: $41
    and c                                         ; $6858: $a1
    nop                                           ; $6859: $00
    sub b                                         ; $685a: $90
    ld l, b                                       ; $685b: $68
    ld [hl], b                                    ; $685c: $70
    jr nc, jr_0ab_6861                            ; $685d: $30 $02

    ld a, [c]                                     ; $685f: $f2
    nop                                           ; $6860: $00

jr_0ab_6861:
    inc c                                         ; $6861: $0c
    nop                                           ; $6862: $00
    pop af                                        ; $6863: $f1
    db $f4                                        ; $6864: $f4
    inc bc                                        ; $6865: $03
    ei                                            ; $6866: $fb
    db $d3                                        ; $6867: $d3
    dec bc                                        ; $6868: $0b
    daa                                           ; $6869: $27
    rlca                                          ; $686a: $07
    nop                                           ; $686b: $00
    cpl                                           ; $686c: $2f
    ld b, a                                       ; $686d: $47
    adc a                                         ; $686e: $8f
    rlca                                          ; $686f: $07
    rra                                           ; $6870: $1f
    sbc a                                         ; $6871: $9f
    ret nz                                        ; $6872: $c0

    ld e, a                                       ; $6873: $5f
    nop                                           ; $6874: $00
    nop                                           ; $6875: $00
    rra                                           ; $6876: $1f
    ld b, $01                                     ; $6877: $06 $01
    add hl, de                                    ; $6879: $19
    ld e, $3a                                     ; $687a: $1e $3a
    inc [hl]                                      ; $687c: $34
    nop                                           ; $687d: $00
    add hl, de                                    ; $687e: $19
    ld l, b                                       ; $687f: $68
    rla                                           ; $6880: $17
    ldh [$2f], a                                  ; $6881: $e0 $2f
    rst $08                                       ; $6883: $cf
    ld l, $ce                                     ; $6884: $2e $ce
    nop                                           ; $6886: $00
    xor $ce                                       ; $6887: $ee $ce
    sbc b                                         ; $6889: $98
    add hl, de                                    ; $688a: $19
    ld a, [hl]                                    ; $688b: $7e
    ld [bc], a                                    ; $688c: $02
    db $fd                                        ; $688d: $fd
    rlca                                          ; $688e: $07
    nop                                           ; $688f: $00
    rlca                                          ; $6890: $07
    ret nz                                        ; $6891: $c0

    add hl, bc                                    ; $6892: $09
    cp c                                          ; $6893: $b9
    ld a, b                                       ; $6894: $78
    ld [hl], c                                    ; $6895: $71
    ldh a, [$f7]                                  ; $6896: $f0 $f7
    nop                                           ; $6898: $00
    rlca                                          ; $6899: $07
    or $7a                                        ; $689a: $f6 $7a
    sbc b                                         ; $689c: $98
    ld h, e                                       ; $689d: $63
    sub a                                         ; $689e: $97
    ld bc, $0066                                  ; $689f: $01 $66 $00
    add b                                         ; $68a2: $80
    ld b, b                                       ; $68a3: $40
    add [hl]                                      ; $68a4: $86
    ld b, a                                       ; $68a5: $47
    pop de                                        ; $68a6: $d1
    ld d, a                                       ; $68a7: $57
    sub b                                         ; $68a8: $90
    nop                                           ; $68a9: $00
    nop                                           ; $68aa: $00
    sbc b                                         ; $68ab: $98
    add e                                         ; $68ac: $83
    sbc b                                         ; $68ad: $98
    and l                                         ; $68ae: $a5
    rra                                           ; $68af: $1f
    jr nz, jr_0ab_68e8                            ; $68b0: $20 $36

    rrca                                          ; $68b2: $0f
    nop                                           ; $68b3: $00
    jr nc, @+$11                                  ; $68b4: $30 $0f

    rra                                           ; $68b6: $1f
    sbc a                                         ; $68b7: $9f
    add b                                         ; $68b8: $80
    ld b, b                                       ; $68b9: $40
    ld a, [hl]                                    ; $68ba: $7e
    ld l, $00                                     ; $68bb: $2e $00
    cp l                                          ; $68bd: $bd
    ld c, h                                       ; $68be: $4c
    or c                                          ; $68bf: $b1
    add b                                         ; $68c0: $80
    add b                                         ; $68c1: $80
    add d                                         ; $68c2: $82
    and b                                         ; $68c3: $a0
    ld h, $00                                     ; $68c4: $26 $00
    ld h, h                                       ; $68c6: $64
    ld [bc], a                                    ; $68c7: $02
    ld h, $67                                     ; $68c8: $26 $67
    add d                                         ; $68ca: $82
    ld h, c                                       ; $68cb: $61
    daa                                           ; $68cc: $27
    inc h                                         ; $68cd: $24
    nop                                           ; $68ce: $00
    ld d, e                                       ; $68cf: $53
    sub c                                         ; $68d0: $91
    ld hl, sp-$7d                                 ; $68d1: $f8 $83
    db $fd                                        ; $68d3: $fd
    pop af                                        ; $68d4: $f1
    inc hl                                        ; $68d5: $23
    jr z, jr_0ab_68d8                             ; $68d6: $28 $00

jr_0ab_68d8:
    ret nz                                        ; $68d8: $c0

    jp c, Jump_000_0080                           ; $68d9: $da $80 $00

    and c                                         ; $68dc: $a1
    sbc [hl]                                      ; $68dd: $9e
    ld e, [hl]                                    ; $68de: $5e
    ccf                                           ; $68df: $3f
    nop                                           ; $68e0: $00
    ld b, b                                       ; $68e1: $40
    sbc c                                         ; $68e2: $99
    add b                                         ; $68e3: $80
    sbc a                                         ; $68e4: $9f
    ld e, b                                       ; $68e5: $58
    ld b, a                                       ; $68e6: $47
    scf                                           ; $68e7: $37

jr_0ab_68e8:
    dec bc                                        ; $68e8: $0b
    nop                                           ; $68e9: $00
    add hl, de                                    ; $68ea: $19
    rlca                                          ; $68eb: $07
    ld l, [hl]                                    ; $68ec: $6e
    add hl, bc                                    ; $68ed: $09
    halt                                          ; $68ee: $76
    ld bc, $84b3                                  ; $68ef: $01 $b3 $84
    nop                                           ; $68f2: $00
    or e                                          ; $68f3: $b3
    call nz, Call_0ab_4d6c                        ; $68f4: $c4 $6c $4d
    ld h, h                                       ; $68f7: $64
    ld d, l                                       ; $68f8: $55
    ld h, h                                       ; $68f9: $64
    ld d, l                                       ; $68fa: $55
    ld [$c4f0], sp                                ; $68fb: $08 $f0 $c4
    ldh a, [$ca]                                  ; $68fe: $f0 $ca
    ld [bc], a                                    ; $6900: $02
    nop                                           ; $6901: $00
    db $eb                                        ; $6902: $eb
    dec bc                                        ; $6903: $0b
    inc de                                        ; $6904: $13
    nop                                           ; $6905: $00
    inc de                                        ; $6906: $13
    ldh [$f1], a                                  ; $6907: $e0 $f1
    ld [bc], a                                    ; $6909: $02
    ld a, [c]                                     ; $690a: $f2
    push bc                                       ; $690b: $c5
    cpl                                           ; $690c: $2f
    rst $00                                       ; $690d: $c7
    nop                                           ; $690e: $00
    dec c                                         ; $690f: $0d
    pop af                                        ; $6910: $f1
    ld bc, $033b                                  ; $6911: $01 $3b $03
    ld [hl], b                                    ; $6914: $70
    inc bc                                        ; $6915: $03
    ld [hl], c                                    ; $6916: $71
    nop                                           ; $6917: $00
    adc b                                         ; $6918: $88
    add e                                         ; $6919: $83
    sbc b                                         ; $691a: $98
    dec de                                        ; $691b: $1b
    sbc b                                         ; $691c: $98
    dec a                                         ; $691d: $3d
    sbc h                                         ; $691e: $9c
    ld bc, $5b00                                  ; $691f: $01 $00 $5b
    rst $00                                       ; $6922: $c7
    jp z, $cc8c                                   ; $6923: $ca $8c $cc

    jp nz, $e90f                                  ; $6926: $c2 $0f $e9

    nop                                           ; $6929: $00
    db $db                                        ; $692a: $db
    ld l, $5b                                     ; $692b: $2e $5b
    ld l, a                                       ; $692d: $6f
    or l                                          ; $692e: $b5
    ld bc, $a233                                  ; $692f: $01 $33 $a2
    nop                                           ; $6932: $00
    pop bc                                        ; $6933: $c1
    ld d, c                                       ; $6934: $51
    ld sp, $7342                                  ; $6935: $31 $42 $73
    inc c                                         ; $6938: $0c
    adc h                                         ; $6939: $8c
    adc b                                         ; $693a: $88
    nop                                           ; $693b: $00
    ret nc                                        ; $693c: $d0

    ld [hl-], a                                   ; $693d: $32
    sub d                                         ; $693e: $92
    ld a, [c]                                     ; $693f: $f2

jr_0ab_6940:
    or [hl]                                       ; $6940: $b6
    sub h                                         ; $6941: $94
    halt                                          ; $6942: $76
    jp nc, $cd00                                  ; $6943: $d2 $00 $cd

    ld l, b                                       ; $6946: $68
    ld b, b                                       ; $6947: $40
    ld l, l                                       ; $6948: $6d
    inc hl                                        ; $6949: $23
    ld l, a                                       ; $694a: $6f
    ret nc                                        ; $694b: $d0

    inc c                                         ; $694c: $0c
    nop                                           ; $694d: $00
    add b                                         ; $694e: $80
    add b                                         ; $694f: $80
    ld b, d                                       ; $6950: $42
    inc a                                         ; $6951: $3c
    add a                                         ; $6952: $87
    ld a, [$0102]                                 ; $6953: $fa $02 $01
    nop                                           ; $6956: $00
    add c                                         ; $6957: $81
    ld a, b                                       ; $6958: $78
    ld hl, sp-$08                                 ; $6959: $f8 $f8
    inc d                                         ; $695b: $14
    db $e4                                        ; $695c: $e4
    inc b                                         ; $695d: $04
    rrca                                          ; $695e: $0f
    nop                                           ; $695f: $00
    jp nc, Jump_000_0a17                          ; $6960: $d2 $17 $0a

    rrca                                          ; $6963: $0f
    rrca                                          ; $6964: $0f
    ld hl, $630f                                  ; $6965: $21 $0f $63
    nop                                           ; $6968: $00
    jr @+$19                                      ; $6969: $18 $17

    inc e                                         ; $696b: $1c
    inc de                                        ; $696c: $13
    ret nc                                        ; $696d: $d0

    jr jr_0ab_6940                                ; $696e: $18 $d0

    jr jr_0ab_6972                                ; $6970: $18 $00

jr_0ab_6972:
    inc c                                         ; $6972: $0c
    inc d                                         ; $6973: $14
    jr @+$06                                      ; $6974: $18 $04

    add hl, bc                                    ; $6976: $09
    dec b                                         ; $6977: $05
    inc c                                         ; $6978: $0c
    ld b, $00                                     ; $6979: $06 $00
    inc c                                         ; $697b: $0c
    ld b, $04                                     ; $697c: $06 $04
    ld [bc], a                                    ; $697e: $02
    dec b                                         ; $697f: $05
    inc bc                                        ; $6980: $03
    ld b, $03                                     ; $6981: $06 $03
    nop                                           ; $6983: $00
    ld [hl+], a                                   ; $6984: $22
    db $d3                                        ; $6985: $d3
    adc $36                                       ; $6986: $ce $36
    adc l                                         ; $6988: $8d
    ld [hl], l                                    ; $6989: $75
    inc c                                         ; $698a: $0c
    db $f4                                        ; $698b: $f4
    nop                                           ; $698c: $00
    inc c                                         ; $698d: $0c
    db $f4                                        ; $698e: $f4
    ld c, $f6                                     ; $698f: $0e $f6
    ld c, $76                                     ; $6991: $0e $76
    ld a, b                                       ; $6993: $78
    halt                                          ; $6994: $76
    nop                                           ; $6995: $00
    or a                                          ; $6996: $b7
    rst $00                                       ; $6997: $c7
    res 7, e                                      ; $6998: $cb $bb
    adc e                                         ; $699a: $8b
    ld [hl], e                                    ; $699b: $73
    ld e, b                                       ; $699c: $58
    or h                                          ; $699d: $b4
    nop                                           ; $699e: $00
    inc a                                         ; $699f: $3c
    inc h                                         ; $69a0: $24
    inc a                                         ; $69a1: $3c
    inc c                                         ; $69a2: $0c
    ld e, $90                                     ; $69a3: $1e $90
    pop de                                        ; $69a5: $d1
    rra                                           ; $69a6: $1f
    jr nz, jr_0ab_69b1                            ; $69a7: $20 $08

    add b                                         ; $69a9: $80
    ld bc, $8800                                  ; $69aa: $01 $00 $88
    ld l, l                                       ; $69ad: $6d
    or b                                          ; $69ae: $b0
    sub $f7                                       ; $69af: $d6 $f7

jr_0ab_69b1:
    nop                                           ; $69b1: $00
    ld b, d                                       ; $69b2: $42
    add b                                         ; $69b3: $80
    ld b, e                                       ; $69b4: $43
    ld a, l                                       ; $69b5: $7d
    inc a                                         ; $69b6: $3c
    inc h                                         ; $69b7: $24
    ld a, [de]                                    ; $69b8: $1a
    add hl, bc                                    ; $69b9: $09
    nop                                           ; $69ba: $00
    dec de                                        ; $69bb: $1b
    jr @+$34                                      ; $69bc: $18 $32

    ld [$506a], sp                                ; $69be: $08 $6a $50
    ld a, b                                       ; $69c1: $78
    ld sp, $7c00                                  ; $69c2: $31 $00 $7c
    dec c                                         ; $69c5: $0d
    add c                                         ; $69c6: $81
    db $fc                                        ; $69c7: $fc
    add e                                         ; $69c8: $83
    ld a, [$ece0]                                 ; $69c9: $fa $e0 $ec
    nop                                           ; $69cc: $00
    ldh [rNR11], a                                ; $69cd: $e0 $11
    sbc [hl]                                      ; $69cf: $9e
    call $f4c6                                    ; $69d0: $cd $c6 $f4
    cpl                                           ; $69d3: $2f
    xor e                                         ; $69d4: $ab
    nop                                           ; $69d5: $00
    dec e                                         ; $69d6: $1d
    sub a                                         ; $69d7: $97
    rla                                           ; $69d8: $17
    sub [hl]                                      ; $69d9: $96
    ccf                                           ; $69da: $3f
    inc a                                         ; $69db: $3c
    ld e, b                                       ; $69dc: $58
    ldh [rP1], a                                  ; $69dd: $e0 $00
    ld e, b                                       ; $69df: $58
    ldh [$50], a                                  ; $69e0: $e0 $50
    ld c, a                                       ; $69e2: $4f
    db $10                                        ; $69e3: $10
    rrca                                          ; $69e4: $0f
    ld e, a                                       ; $69e5: $5f
    ld b, b                                       ; $69e6: $40
    nop                                           ; $69e7: $00
    rra                                           ; $69e8: $1f
    ld b, b                                       ; $69e9: $40
    ret nz                                        ; $69ea: $c0

    ld e, a                                       ; $69eb: $5f
    ret nz                                        ; $69ec: $c0

    ld a, a                                       ; $69ed: $7f
    ld [bc], a                                    ; $69ee: $02
    ld bc, $022c                                  ; $69ef: $01 $2c $02
    ld bc, $01f6                                  ; $69f2: $01 $f6 $01
    ld bc, $0003                                  ; $69f5: $01 $03 $00
    ret nz                                        ; $69f8: $c0

    ld bc, $0000                                  ; $69f9: $01 $00 $00
    nop                                           ; $69fc: $00
    ld [hl], b                                    ; $69fd: $70
    ld l, [hl]                                    ; $69fe: $6e
    inc a                                         ; $69ff: $3c
    adc h                                         ; $6a00: $8c
    inc a                                         ; $6a01: $3c
    sbc l                                         ; $6a02: $9d
    add c                                         ; $6a03: $81
    dec a                                         ; $6a04: $3d
    nop                                           ; $6a05: $00
    add e                                         ; $6a06: $83
    dec sp                                        ; $6a07: $3b
    inc bc                                        ; $6a08: $03
    jp $4787                                      ; $6a09: $c3 $87 $47


    ld b, b                                       ; $6a0c: $40
    add a                                         ; $6a0d: $87
    nop                                           ; $6a0e: $00
    and h                                         ; $6a0f: $a4
    cpl                                           ; $6a10: $2f
    rrca                                          ; $6a11: $0f
    jp Jump_000_041f                              ; $6a12: $c3 $1f $04


    ccf                                           ; $6a15: $3f
    adc c                                         ; $6a16: $89
    nop                                           ; $6a17: $00
    rra                                           ; $6a18: $1f
    db $d3                                        ; $6a19: $d3
    rrca                                          ; $6a1a: $0f
    add [hl]                                      ; $6a1b: $86
    rrca                                          ; $6a1c: $0f
    and l                                         ; $6a1d: $a5
    ld [c], a                                     ; $6a1e: $e2
    rrca                                          ; $6a1f: $0f
    nop                                           ; $6a20: $00
    ld l, $2a                                     ; $6a21: $2e $2a
    and b                                         ; $6a23: $a0
    sbc h                                         ; $6a24: $9c
    sbc h                                         ; $6a25: $9c
    nop                                           ; $6a26: $00
    sbc b                                         ; $6a27: $98
    inc e                                         ; $6a28: $1c
    nop                                           ; $6a29: $00
    add b                                         ; $6a2a: $80
    inc a                                         ; $6a2b: $3c
    cp b                                          ; $6a2c: $b8
    jr jr_0ab_6a4b                                ; $6a2d: $18 $1c

    cp c                                          ; $6a2f: $b9
    ld [$00b5], sp                                ; $6a30: $08 $b5 $00
    ld a, b                                       ; $6a33: $78
    ld c, d                                       ; $6a34: $4a
    ldh a, [rDIV]                                 ; $6a35: $f0 $04
    ldh a, [rSVBK]                                ; $6a37: $f0 $70
    ldh [rBCPD], a                                ; $6a39: $e0 $69
    nop                                           ; $6a3b: $00
    ldh [rSTAT], a                                ; $6a3c: $e0 $41
    ldh a, [$a0]                                  ; $6a3e: $f0 $a0
    ldh [$63], a                                  ; $6a40: $e0 $63
    ldh a, [rSCX]                                 ; $6a42: $f0 $43
    inc b                                         ; $6a44: $04
    rra                                           ; $6a45: $1f
    ld h, [hl]                                    ; $6a46: $66
    rra                                           ; $6a47: $1f
    ld l, [hl]                                    ; $6a48: $6e
    ld [hl], c                                    ; $6a49: $71
    ld [bc], a                                    ; $6a4a: $02

jr_0ab_6a4b:
    nop                                           ; $6a4b: $00
    ld e, $8e                                     ; $6a4c: $1e $8e
    nop                                           ; $6a4e: $00
    ld c, $c4                                     ; $6a4f: $0e $c4
    ldh [$e4], a                                  ; $6a51: $e0 $e4
    pop af                                        ; $6a53: $f1
    ld a, [c]                                     ; $6a54: $f2
    add b                                         ; $6a55: $80
    ret nz                                        ; $6a56: $c0

    nop                                           ; $6a57: $00
    add b                                         ; $6a58: $80
    ld b, b                                       ; $6a59: $40
    add b                                         ; $6a5a: $80
    ccf                                           ; $6a5b: $3f
    add b                                         ; $6a5c: $80
    ld a, a                                       ; $6a5d: $7f
    nop                                           ; $6a5e: $00
    ld a, a                                       ; $6a5f: $7f
    db $10                                        ; $6a60: $10
    add b                                         ; $6a61: $80
    ld a, a                                       ; $6a62: $7f
    add b                                         ; $6a63: $80
    sbc l                                         ; $6a64: $9d
    add d                                         ; $6a65: $82
    and b                                         ; $6a66: $a0
    rst $08                                       ; $6a67: $cf
    cpl                                           ; $6a68: $2f
    ret nz                                        ; $6a69: $c0

    nop                                           ; $6a6a: $00
    ld c, a                                       ; $6a6b: $4f
    ld h, b                                       ; $6a6c: $60
    add a                                         ; $6a6d: $87
    ldh a, [$80]                                  ; $6a6e: $f0 $80
    ldh a, [rNR42]                                ; $6a70: $f0 $21
    ld e, $00                                     ; $6a72: $1e $00
    jr c, @+$29                                   ; $6a74: $38 $27

    rrca                                          ; $6a76: $0f
    inc sp                                        ; $6a77: $33
    push bc                                       ; $6a78: $c5
    rra                                           ; $6a79: $1f
    rra                                           ; $6a7a: $1f
    dec c                                         ; $6a7b: $0d
    nop                                           ; $6a7c: $00
    ccf                                           ; $6a7d: $3f
    db $db                                        ; $6a7e: $db
    rra                                           ; $6a7f: $1f
    add l                                         ; $6a80: $85
    nop                                           ; $6a81: $00
    nop                                           ; $6a82: $00
    db $e3                                        ; $6a83: $e3
    inc hl                                        ; $6a84: $23
    nop                                           ; $6a85: $00
    ld sp, $0fc1                                  ; $6a86: $31 $c1 $0f
    pop af                                        ; $6a89: $f1
    dec b                                         ; $6a8a: $05
    cp l                                          ; $6a8b: $bd
    cp l                                          ; $6a8c: $bd
    and c                                         ; $6a8d: $a1
    nop                                           ; $6a8e: $00
    add c                                         ; $6a8f: $81
    cp l                                          ; $6a90: $bd
    cp l                                          ; $6a91: $bd
    dec b                                         ; $6a92: $05
    nop                                           ; $6a93: $00
    nop                                           ; $6a94: $00
    pop hl                                        ; $6a95: $e1
    ld a, a                                       ; $6a96: $7f
    nop                                           ; $6a97: $00
    ldh a, [$cf]                                  ; $6a98: $f0 $cf
    inc e                                         ; $6a9a: $1c

jr_0ab_6a9b:
    inc de                                        ; $6a9b: $13
    ld hl, sp+$39                                 ; $6a9c: $f8 $39
    db $fc                                        ; $6a9e: $fc
    ld c, h                                       ; $6a9f: $4c
    db $10                                        ; $6aa0: $10
    ld hl, sp+$40                                 ; $6aa1: $f8 $40
    db $fc                                        ; $6aa3: $fc
    xor b                                         ; $6aa4: $a8
    ld [bc], a                                    ; $6aa5: $02
    ld a, [hl]                                    ; $6aa6: $7e
    db $d3                                        ; $6aa7: $d3
    add e                                         ; $6aa8: $83
    ld b, h                                       ; $6aa9: $44
    nop                                           ; $6aaa: $00
    rst $00                                       ; $6aab: $c7
    jp hl                                         ; $6aac: $e9


    ld b, $f5                                     ; $6aad: $06 $f5
    inc b                                         ; $6aaf: $04
    ld [hl], e                                    ; $6ab0: $73
    push af                                       ; $6ab1: $f5
    inc bc                                        ; $6ab2: $03
    nop                                           ; $6ab3: $00
    jp hl                                         ; $6ab4: $e9


    rlca                                          ; $6ab5: $07
    inc bc                                        ; $6ab6: $03
    dec c                                         ; $6ab7: $0d
    rst $20                                       ; $6ab8: $e7
    dec de                                        ; $6ab9: $1b
    inc c                                         ; $6aba: $0c
    ldh a, [rNR41]                                ; $6abb: $f0 $20
    inc e                                         ; $6abd: $1c
    db $e4                                        ; $6abe: $e4
    nop                                           ; $6abf: $00
    ld l, e                                       ; $6ac0: $6b
    db $10                                        ; $6ac1: $10
    inc bc                                        ; $6ac2: $03
    pop bc                                        ; $6ac3: $c1
    ld [bc], a                                    ; $6ac4: $02
    ld b, b                                       ; $6ac5: $40
    nop                                           ; $6ac6: $00
    ld bc, $0718                                  ; $6ac7: $01 $18 $07
    rrca                                          ; $6aca: $0f
    rla                                           ; $6acb: $17
    db $fc                                        ; $6acc: $fc
    ret nz                                        ; $6acd: $c0

    ldh a, [rP1]                                  ; $6ace: $f0 $00
    add e                                         ; $6ad0: $83
    db $ec                                        ; $6ad1: $ec
    db $e3                                        ; $6ad2: $e3
    db $f4                                        ; $6ad3: $f4
    inc c                                         ; $6ad4: $0c
    ld a, [$f6f9]                                 ; $6ad5: $fa $f9 $f6
    nop                                           ; $6ad8: $00
    pop af                                        ; $6ad9: $f1
    ld [$fbf0], sp                                ; $6ada: $08 $f0 $fb
    inc bc                                        ; $6add: $03
    ld a, h                                       ; $6ade: $7c
    ld a, b                                       ; $6adf: $78
    inc e                                         ; $6ae0: $1c
    nop                                           ; $6ae1: $00
    sbc h                                         ; $6ae2: $9c
    rrca                                          ; $6ae3: $0f
    db $e3                                        ; $6ae4: $e3
    pop hl                                        ; $6ae5: $e1
    inc b                                         ; $6ae6: $04
    ld l, c                                       ; $6ae7: $69
    inc c                                         ; $6ae8: $0c
    adc c                                         ; $6ae9: $89
    nop                                           ; $6aea: $00
    adc b                                         ; $6aeb: $88
    nop                                           ; $6aec: $00
    ld [bc], a                                    ; $6aed: $02
    ld [hl], c                                    ; $6aee: $71
    add c                                         ; $6aef: $81
    ld hl, sp-$7d                                 ; $6af0: $f8 $83
    ret c                                         ; $6af2: $d8

    nop                                           ; $6af3: $00
    add b                                         ; $6af4: $80
    ld [hl], b                                    ; $6af5: $70
    or b                                          ; $6af6: $b0
    inc b                                         ; $6af7: $04
    ldh [rNR21], a                                ; $6af8: $e0 $16
    call nz, $0092                                ; $6afa: $c4 $92 $00
    xor b                                         ; $6afd: $a8
    ld a, [bc]                                    ; $6afe: $0a
    nop                                           ; $6aff: $00
    ld d, c                                       ; $6b00: $51
    ld a, b                                       ; $6b01: $78
    ld [bc], a                                    ; $6b02: $02
    ld b, b                                       ; $6b03: $40
    rla                                           ; $6b04: $17
    nop                                           ; $6b05: $00
    ld a, [hl+]                                   ; $6b06: $2a
    rrca                                          ; $6b07: $0f
    dec e                                         ; $6b08: $1d
    ld b, e                                       ; $6b09: $43
    rrca                                          ; $6b0a: $0f
    sub c                                         ; $6b0b: $91
    ld b, a                                       ; $6b0c: $47
    cp b                                          ; $6b0d: $b8
    nop                                           ; $6b0e: $00
    dec hl                                        ; $6b0f: $2b
    ret nz                                        ; $6b10: $c0

    ld b, a                                       ; $6b11: $47
    ld [bc], a                                    ; $6b12: $02
    jr c, jr_0ab_6a9b                             ; $6b13: $38 $86

    adc b                                         ; $6b15: $88
    inc hl                                        ; $6b16: $23
    db $10                                        ; $6b17: $10
    ld d, a                                       ; $6b18: $57
    add e                                         ; $6b19: $83
    dec hl                                        ; $6b1a: $2b
    ld d, b                                       ; $6b1b: $50
    db $10                                        ; $6b1c: $10
    add b                                         ; $6b1d: $80
    ld b, b                                       ; $6b1e: $40
    add b                                         ; $6b1f: $80
    jr nz, jr_0ab_6b23                            ; $6b20: $20 $01

    nop                                           ; $6b22: $00

jr_0ab_6b23:
    nop                                           ; $6b23: $00
    rrca                                          ; $6b24: $0f
    pop hl                                        ; $6b25: $e1
    xor $cf                                       ; $6b26: $ee $cf
    ret nc                                        ; $6b28: $d0

    dec c                                         ; $6b29: $0d
    nop                                           ; $6b2a: $00
    add b                                         ; $6b2b: $80
    ld [bc], a                                    ; $6b2c: $02
    db $10                                        ; $6b2d: $10
    ld [bc], a                                    ; $6b2e: $02
    nop                                           ; $6b2f: $00
    inc b                                         ; $6b30: $04
    ret nz                                        ; $6b31: $c0

    add b                                         ; $6b32: $80
    ldh a, [$e0]                                  ; $6b33: $f0 $e0
    nop                                           ; $6b35: $00
    ret c                                         ; $6b36: $d8

    sbc $c1                                       ; $6b37: $de $c1
    ccf                                           ; $6b39: $3f
    cp b                                          ; $6b3a: $b8
    ld [hl], b                                    ; $6b3b: $70
    ld [hl], b                                    ; $6b3c: $70
    adc b                                         ; $6b3d: $88
    nop                                           ; $6b3e: $00
    nop                                           ; $6b3f: $00
    ldh [$27], a                                  ; $6b40: $e0 $27
    rra                                           ; $6b42: $1f
    call c, $b93c                                 ; $6b43: $dc $3c $b9
    ld [bc], a                                    ; $6b46: $02
    nop                                           ; $6b47: $00
    ld [hl], b                                    ; $6b48: $70
    nop                                           ; $6b49: $00
    ldh a, [$b9]                                  ; $6b4a: $f0 $b9
    ld a, b                                       ; $6b4c: $78
    nop                                           ; $6b4d: $00
    inc bc                                        ; $6b4e: $03
    ldh [rP1], a                                  ; $6b4f: $e0 $00
    rlca                                          ; $6b51: $07
    ret z                                         ; $6b52: $c8

    inc c                                         ; $6b53: $0c
    ld e, b                                       ; $6b54: $58
    add hl, de                                    ; $6b55: $19
    nop                                           ; $6b56: $00
    inc bc                                        ; $6b57: $03
    ld b, $00                                     ; $6b58: $06 $00
    ld [c], a                                     ; $6b5a: $e2
    ld h, c                                       ; $6b5b: $61
    ld hl, $23dd                                  ; $6b5c: $21 $dd $23
    ret nz                                        ; $6b5f: $c0

    jr nc, jr_0ab_6bd2                            ; $6b60: $30 $70

    nop                                           ; $6b62: $00
    ld [hl], $f0                                  ; $6b63: $36 $f0
    ld [hl], $ec                                  ; $6b65: $36 $ec
    ld c, $d8                                     ; $6b67: $0e $d8
    inc e                                         ; $6b69: $1c
    jr jr_0ab_6b6c                                ; $6b6a: $18 $00

jr_0ab_6b6c:
    ret nc                                        ; $6b6c: $d0

    sbc [hl]                                      ; $6b6d: $9e
    adc e                                         ; $6b6e: $8b
    ld d, $9d                                     ; $6b6f: $16 $9d
    ld l, d                                       ; $6b71: $6a
    dec bc                                        ; $6b72: $0b
    ld a, [hl]                                    ; $6b73: $7e
    nop                                           ; $6b74: $00
    ld [bc], a                                    ; $6b75: $02
    ld [hl], b                                    ; $6b76: $70
    ld e, a                                       ; $6b77: $5f
    rra                                           ; $6b78: $1f
    ld [hl], b                                    ; $6b79: $70
    ld l, [hl]                                    ; $6b7a: $6e
    ld [hl], b                                    ; $6b7b: $70
    sbc [hl]                                      ; $6b7c: $9e
    nop                                           ; $6b7d: $00
    and b                                         ; $6b7e: $a0
    ld d, b                                       ; $6b7f: $50
    ld [$2383], sp                                ; $6b80: $08 $83 $23
    and b                                         ; $6b83: $a0
    and b                                         ; $6b84: $a0
    sbc a                                         ; $6b85: $9f
    nop                                           ; $6b86: $00
    ldh [rP1], a                                  ; $6b87: $e0 $00
    ldh [$1f], a                                  ; $6b89: $e0 $1f
    inc de                                        ; $6b8b: $13
    ld a, b                                       ; $6b8c: $78
    pop af                                        ; $6b8d: $f1
    ld a, c                                       ; $6b8e: $79
    nop                                           ; $6b8f: $00
    pop hl                                        ; $6b90: $e1
    add e                                         ; $6b91: $83
    cp h                                          ; $6b92: $bc
    rlca                                          ; $6b93: $07
    ld [$a827], sp                                ; $6b94: $08 $27 $a8
    add hl, de                                    ; $6b97: $19
    nop                                           ; $6b98: $00
    jr nc, jr_0ab_6bf3                            ; $6b99: $30 $58

    ld a, b                                       ; $6b9b: $78
    ld e, d                                       ; $6b9c: $5a
    ld e, $24                                     ; $6b9d: $1e $24
    sub [hl]                                      ; $6b9f: $96
    inc bc                                        ; $6ba0: $03
    nop                                           ; $6ba1: $00
    sbc h                                         ; $6ba2: $9c
    ldh a, [$ec]                                  ; $6ba3: $f0 $ec
    ld hl, sp-$0c                                 ; $6ba5: $f8 $f4
    ld b, $fe                                     ; $6ba7: $06 $fe
    ld b, $00                                     ; $6ba9: $06 $00
    ld a, [$f00c]                                 ; $6bab: $fa $0c $f0
    ld c, [hl]                                    ; $6bae: $4e
    ld [hl], b                                    ; $6baf: $70
    xor $f1                                       ; $6bb0: $ee $f1
    push hl                                       ; $6bb2: $e5
    nop                                           ; $6bb3: $00
    ld a, [$018d]                                 ; $6bb4: $fa $8d $01
    add e                                         ; $6bb7: $83
    ldh a, [$ee]                                  ; $6bb8: $f0 $ee
    ldh [rSB], a                                  ; $6bba: $e0 $01
    nop                                           ; $6bbc: $00
    jr jr_0ab_6bc6                                ; $6bbd: $18 $07

    inc [hl]                                      ; $6bbf: $34
    ld h, c                                       ; $6bc0: $61
    rrca                                          ; $6bc1: $0f
    ld h, c                                       ; $6bc2: $61
    rrca                                          ; $6bc3: $0f
    and b                                         ; $6bc4: $a0
    nop                                           ; $6bc5: $00

jr_0ab_6bc6:
    adc a                                         ; $6bc6: $8f
    dec c                                         ; $6bc7: $0d
    adc h                                         ; $6bc8: $8c
    ld c, c                                       ; $6bc9: $49
    add hl, de                                    ; $6bca: $19
    sub e                                         ; $6bcb: $93
    inc sp                                        ; $6bcc: $33
    ld h, $00                                     ; $6bcd: $26 $00
    ld h, [hl]                                    ; $6bcf: $66
    dec b                                         ; $6bd0: $05
    ld c, h                                       ; $6bd1: $4c

jr_0ab_6bd2:
    xor b                                         ; $6bd2: $a8
    and b                                         ; $6bd3: $a0
    ldh a, [$f1]                                  ; $6bd4: $f0 $f1
    inc bc                                        ; $6bd6: $03
    nop                                           ; $6bd7: $00
    di                                            ; $6bd8: $f3
    ccf                                           ; $6bd9: $3f
    and e                                         ; $6bda: $a3
    ld e, [hl]                                    ; $6bdb: $5e
    ld h, c                                       ; $6bdc: $61
    ld a, $41                                     ; $6bdd: $3e $41
    ld b, c                                       ; $6bdf: $41
    nop                                           ; $6be0: $00
    add b                                         ; $6be1: $80
    pop bc                                        ; $6be2: $c1
    ld b, c                                       ; $6be3: $41
    nop                                           ; $6be4: $00
    rra                                           ; $6be5: $1f
    ldh [rNR41], a                                ; $6be6: $e0 $20
    cp a                                          ; $6be8: $bf
    nop                                           ; $6be9: $00
    add hl, sp                                    ; $6bea: $39
    jr nc, jr_0ab_6c1c                            ; $6beb: $30 $2f

    or b                                          ; $6bed: $b0
    xor a                                         ; $6bee: $af
    ret nc                                        ; $6bef: $d0

    ld c, a                                       ; $6bf0: $4f
    ldh a, [rP1]                                  ; $6bf1: $f0 $00

jr_0ab_6bf3:
    cpl                                           ; $6bf3: $2f
    ld l, $f0                                     ; $6bf4: $2e $f0
    sbc h                                         ; $6bf6: $9c
    ld d, b                                       ; $6bf7: $50
    reti                                          ; $6bf8: $d9


    jr nc, @+$53                                  ; $6bf9: $30 $51

    nop                                           ; $6bfb: $00
    jr c, jr_0ab_6c76                             ; $6bfc: $38 $78

    ld [hl], b                                    ; $6bfe: $70
    jr c, @-$4e                                   ; $6bff: $38 $b0

    ret nz                                        ; $6c01: $c0

    ret c                                         ; $6c02: $d8

    ret c                                         ; $6c03: $d8

    nop                                           ; $6c04: $00
    ret nz                                        ; $6c05: $c0

    ld [$5008], sp                                ; $6c06: $08 $08 $50
    jr nc, jr_0ab_6c3b                            ; $6c09: $30 $30

    nop                                           ; $6c0b: $00
    ret nc                                        ; $6c0c: $d0

    nop                                           ; $6c0d: $00
    pop bc                                        ; $6c0e: $c1
    ld h, c                                       ; $6c0f: $61
    ld de, $a29c                                  ; $6c10: $11 $9c $a2
    ret nz                                        ; $6c13: $c0

    rlca                                          ; $6c14: $07
    ld a, d                                       ; $6c15: $7a
    nop                                           ; $6c16: $00
    add hl, sp                                    ; $6c17: $39
    db $fc                                        ; $6c18: $fc
    db $fc                                        ; $6c19: $fc
    adc [hl]                                      ; $6c1a: $8e
    ld a, [c]                                     ; $6c1b: $f2

jr_0ab_6c1c:
    jr c, jr_0ab_6c2e                             ; $6c1c: $38 $10

    nop                                           ; $6c1e: $00
    nop                                           ; $6c1f: $00
    ld b, l                                       ; $6c20: $45
    ldh [$df], a                                  ; $6c21: $e0 $df
    jr nc, jr_0ab_6c63                            ; $6c23: $30 $3e

    ret nz                                        ; $6c25: $c0

    adc a                                         ; $6c26: $8f
    add b                                         ; $6c27: $80
    nop                                           ; $6c28: $00
    rrca                                          ; $6c29: $0f
    nop                                           ; $6c2a: $00
    add b                                         ; $6c2b: $80
    ld h, [hl]                                    ; $6c2c: $66

jr_0ab_6c2d:
    ld [hl], b                                    ; $6c2d: $70

jr_0ab_6c2e:
    ldh a, [$96]                                  ; $6c2e: $f0 $96
    pop af                                        ; $6c30: $f1
    nop                                           ; $6c31: $00
    dec d                                         ; $6c32: $15
    and b                                         ; $6c33: $a0
    adc a                                         ; $6c34: $8f
    or b                                          ; $6c35: $b0
    add a                                         ; $6c36: $87
    ret nc                                        ; $6c37: $d0

    rst $00                                       ; $6c38: $c7
    ret nc                                        ; $6c39: $d0

    inc b                                         ; $6c3a: $04

jr_0ab_6c3b:
    rst $00                                       ; $6c3b: $c7
    ret c                                         ; $6c3c: $d8

    jp $e3e8                                      ; $6c3d: $c3 $e8 $e3


    ld [bc], a                                    ; $6c40: $02
    nop                                           ; $6c41: $00
    ld [c], a                                     ; $6c42: $e2
    rlca                                          ; $6c43: $07
    nop                                           ; $6c44: $00
    ld a, [c]                                     ; $6c45: $f2
    rlca                                          ; $6c46: $07
    db $f4                                        ; $6c47: $f4
    rlca                                          ; $6c48: $07
    db $e4                                        ; $6c49: $e4
    rrca                                          ; $6c4a: $0f
    ldh [rIF], a                                  ; $6c4b: $e0 $0f
    nop                                           ; $6c4d: $00
    jp hl                                         ; $6c4e: $e9


    rra                                           ; $6c4f: $1f
    pop de                                        ; $6c50: $d1
    ld e, $92                                     ; $6c51: $1e $92
    nop                                           ; $6c53: $00
    inc c                                         ; $6c54: $0c
    push bc                                       ; $6c55: $c5
    nop                                           ; $6c56: $00
    ld b, $ec                                     ; $6c57: $06 $ec
    dec bc                                        ; $6c59: $0b
    adc $09                                       ; $6c5a: $ce $09
    sbc a                                         ; $6c5c: $9f
    rst $28                                       ; $6c5d: $ef
    ccf                                           ; $6c5e: $3f
    nop                                           ; $6c5f: $00
    sbc a                                         ; $6c60: $9f
    ld h, b                                       ; $6c61: $60
    ccf                                           ; $6c62: $3f

jr_0ab_6c63:
    ret nz                                        ; $6c63: $c0

    ld a, a                                       ; $6c64: $7f
    cp c                                          ; $6c65: $b9
    add $28                                       ; $6c66: $c6 $28
    nop                                           ; $6c68: $00
    ld l, b                                       ; $6c69: $68
    cp d                                          ; $6c6a: $ba
    jr c, jr_0ab_6c2d                             ; $6c6b: $38 $c0

    sbc b                                         ; $6c6d: $98
    pop bc                                        ; $6c6e: $c1
    ld de, $002c                                  ; $6c6f: $11 $2c $00
    rst $08                                       ; $6c72: $cf
    ld [hl+], a                                   ; $6c73: $22
    pop bc                                        ; $6c74: $c1
    db $e3                                        ; $6c75: $e3

jr_0ab_6c76:
    ld a, [bc]                                    ; $6c76: $0a
    push hl                                       ; $6c77: $e5
    dec c                                         ; $6c78: $0d
    inc hl                                        ; $6c79: $23
    nop                                           ; $6c7a: $00
    and b                                         ; $6c7b: $a0
    ld b, b                                       ; $6c7c: $40
    ld l, b                                       ; $6c7d: $68
    sub h                                         ; $6c7e: $94
    inc d                                         ; $6c7f: $14
    jp z, $e41b                                   ; $6c80: $ca $1b $e4

    nop                                           ; $6c83: $00
    rlca                                          ; $6c84: $07
    pop hl                                        ; $6c85: $e1
    inc bc                                        ; $6c86: $03
    ldh [$08], a                                  ; $6c87: $e0 $08
    inc bc                                        ; $6c89: $03
    ld bc, $00bc                                  ; $6c8a: $01 $bc $00
    cp a                                          ; $6c8d: $bf
    sbc e                                         ; $6c8e: $9b
    sbc l                                         ; $6c8f: $9d
    jr jr_0ab_6ca2                                ; $6c90: $18 $10

    jr nz, @+$09                                  ; $6c92: $20 $07

    rrca                                          ; $6c94: $0f
    nop                                           ; $6c95: $00
    ret nz                                        ; $6c96: $c0

    inc bc                                        ; $6c97: $03
    pop hl                                        ; $6c98: $e1
    sub h                                         ; $6c99: $94
    call z, $3715                                 ; $6c9a: $cc $15 $37
    call nz, Call_000_3500                        ; $6c9d: $c4 $00 $35
    inc b                                         ; $6ca0: $04
    dec b                                         ; $6ca1: $05

jr_0ab_6ca2:
    ld h, e                                       ; $6ca2: $63
    inc bc                                        ; $6ca3: $03
    inc hl                                        ; $6ca4: $23
    dec bc                                        ; $6ca5: $0b
    jp Jump_000_1b00                              ; $6ca6: $c3 $00 $1b


    rst $20                                       ; $6ca9: $e7
    rlca                                          ; $6caa: $07
    ld h, b                                       ; $6cab: $60
    rlca                                          ; $6cac: $07
    add b                                         ; $6cad: $80
    add a                                         ; $6cae: $87
    db $ec                                        ; $6caf: $ec
    nop                                           ; $6cb0: $00
    ldh [$f1], a                                  ; $6cb1: $e0 $f1
    db $f4                                        ; $6cb3: $f4
    di                                            ; $6cb4: $f3
    or $f3                                        ; $6cb5: $f6 $f3
    or $f9                                        ; $6cb7: $f6 $f9
    nop                                           ; $6cb9: $00
    ei                                            ; $6cba: $fb
    ld [bc], a                                    ; $6cbb: $02
    ld hl, sp+$03                                 ; $6cbc: $f8 $03
    ld hl, sp+$01                                 ; $6cbe: $f8 $01
    db $fc                                        ; $6cc0: $fc
    ldh a, [rP1]                                  ; $6cc1: $f0 $00
    pop hl                                        ; $6cc3: $e1
    db $fc                                        ; $6cc4: $fc
    ld a, [hl]                                    ; $6cc5: $7e
    rra                                           ; $6cc6: $1f
    cp $08                                        ; $6cc7: $fe $08
    rlca                                          ; $6cc9: $07
    stop                                          ; $6cca: $10 $00
    ld de, $021e                                  ; $6ccc: $11 $1e $02
    ld [bc], a                                    ; $6ccf: $02
    inc e                                         ; $6cd0: $1c
    ld e, $5c                                     ; $6cd1: $1e $5c
    ld c, [hl]                                    ; $6cd3: $4e
    nop                                           ; $6cd4: $00
    scf                                           ; $6cd5: $37
    add hl, sp                                    ; $6cd6: $39
    ld b, [hl]                                    ; $6cd7: $46
    sbc h                                         ; $6cd8: $9c
    and c                                         ; $6cd9: $a1
    ret nz                                        ; $6cda: $c0

    adc h                                         ; $6cdb: $8c
    ldh [rP1], a                                  ; $6cdc: $e0 $00
    add $b8                                       ; $6cde: $c6 $b8
    ldh a, [$3c]                                  ; $6ce0: $f0 $3c
    jr nc, @+$50                                  ; $6ce2: $30 $4e

    adc [hl]                                      ; $6ce4: $8e
    db $e4                                        ; $6ce5: $e4
    nop                                           ; $6ce6: $00
    ldh a, [$32]                                  ; $6ce7: $f0 $32
    ldh a, [$a1]                                  ; $6ce9: $f0 $a1
    cp b                                          ; $6ceb: $b8
    add b                                         ; $6cec: $80
    and b                                         ; $6ced: $a0
    xor l                                         ; $6cee: $ad
    nop                                           ; $6cef: $00
    and b                                         ; $6cf0: $a0
    nop                                           ; $6cf1: $00
    inc c                                         ; $6cf2: $0c
    cpl                                           ; $6cf3: $2f
    inc d                                         ; $6cf4: $14
    ld e, h                                       ; $6cf5: $5c
    halt                                          ; $6cf6: $76
    inc c                                         ; $6cf7: $0c
    nop                                           ; $6cf8: $00
    dec bc                                        ; $6cf9: $0b
    rrca                                          ; $6cfa: $0f
    ld [$4307], sp                                ; $6cfb: $08 $07 $43
    inc bc                                        ; $6cfe: $03
    and b                                         ; $6cff: $a0
    and b                                         ; $6d00: $a0
    nop                                           ; $6d01: $00
    pop de                                        ; $6d02: $d1
    ld b, b                                       ; $6d03: $40
    jr @+$78                                      ; $6d04: $18 $76

    ld b, $3b                                     ; $6d06: $06 $3b
    ld b, e                                       ; $6d08: $43
    ld a, [c]                                     ; $6d09: $f2
    nop                                           ; $6d0a: $00
    ccf                                           ; $6d0b: $3f
    db $ec                                        ; $6d0c: $ec
    rrca                                          ; $6d0d: $0f
    ldh [$d0], a                                  ; $6d0e: $e0 $d0
    pop bc                                        ; $6d10: $c1
    ld [hl+], a                                   ; $6d11: $22
    push bc                                       ; $6d12: $c5
    nop                                           ; $6d13: $00
    add $09                                       ; $6d14: $c6 $09
    ld b, $0e                                     ; $6d16: $06 $0e
    ld [bc], a                                    ; $6d18: $02
    nop                                           ; $6d19: $00
    ld [hl], b                                    ; $6d1a: $70
    ldh a, [rP1]                                  ; $6d1b: $f0 $00
    rlca                                          ; $6d1d: $07
    ret nz                                        ; $6d1e: $c0

    add a                                         ; $6d1f: $87
    ld h, a                                       ; $6d20: $67
    ld h, b                                       ; $6d21: $60
    rrca                                          ; $6d22: $0f
    add b                                         ; $6d23: $80
    add b                                         ; $6d24: $80
    nop                                           ; $6d25: $00
    sbc a                                         ; $6d26: $9f
    ld b, b                                       ; $6d27: $40
    rra                                           ; $6d28: $1f
    ret nz                                        ; $6d29: $c0

    sbc a                                         ; $6d2a: $9f
    add b                                         ; $6d2b: $80
    cp a                                          ; $6d2c: $bf
    ld bc, $fc01                                  ; $6d2d: $01 $01 $fc
    ld bc, $00fc                                  ; $6d30: $01 $fc $00
    cp $fe                                        ; $6d33: $fe $fe
    nop                                           ; $6d35: $00
    ld [bc], a                                    ; $6d36: $02
    ld [$ff40], sp                                ; $6d37: $08 $40 $ff
    dec a                                         ; $6d3a: $3d
    ld [bc], a                                    ; $6d3b: $02
    ld e, $5c                                     ; $6d3c: $1e $5c
    sbc h                                         ; $6d3e: $9c
    add d                                         ; $6d3f: $82
    sbc h                                         ; $6d40: $9c
    add d                                         ; $6d41: $82
    nop                                           ; $6d42: $00
    sub d                                         ; $6d43: $92
    adc h                                         ; $6d44: $8c
    adc h                                         ; $6d45: $8c
    add b                                         ; $6d46: $80
    ret nz                                        ; $6d47: $c0

    db $10                                        ; $6d48: $10
    ld e, c                                       ; $6d49: $59
    add hl, de                                    ; $6d4a: $19
    nop                                           ; $6d4b: $00
    ld e, $42                                     ; $6d4c: $1e $42
    rla                                           ; $6d4e: $17
    rst $20                                       ; $6d4f: $e7
    ldh a, [$e8]                                  ; $6d50: $f0 $e8
    ld hl, sp-$1c                                 ; $6d52: $f8 $e4
    nop                                           ; $6d54: $00
    inc c                                         ; $6d55: $0c
    db $f4                                        ; $6d56: $f4
    adc h                                         ; $6d57: $8c
    db $f4                                        ; $6d58: $f4
    ld c, e                                       ; $6d59: $4b
    ld [hl], e                                    ; $6d5a: $73
    add e                                         ; $6d5b: $83
    add e                                         ; $6d5c: $83
    nop                                           ; $6d5d: $00
    pop bc                                        ; $6d5e: $c1
    add hl, sp                                    ; $6d5f: $39
    ld l, d                                       ; $6d60: $6a
    rla                                           ; $6d61: $17
    inc b                                         ; $6d62: $04
    ld c, [hl]                                    ; $6d63: $4e
    jr c, jr_0ab_6d86                             ; $6d64: $38 $20

    nop                                           ; $6d66: $00
    ld h, b                                       ; $6d67: $60
    ld b, e                                       ; $6d68: $43
    rlca                                          ; $6d69: $07
    dec bc                                        ; $6d6a: $0b

jr_0ab_6d6b:
    ccf                                           ; $6d6b: $3f
    ld c, a                                       ; $6d6c: $4f
    halt                                          ; $6d6d: $76
    ld c, c                                       ; $6d6e: $49
    nop                                           ; $6d6f: $00
    ld [hl], c                                    ; $6d70: $71
    ld c, [hl]                                    ; $6d71: $4e
    ld e, b                                       ; $6d72: $58
    ccf                                           ; $6d73: $3f
    inc l                                         ; $6d74: $2c
    ld [hl], l                                    ; $6d75: $75
    ld e, $04                                     ; $6d76: $1e $04
    nop                                           ; $6d78: $00
    rlca                                          ; $6d79: $07
    ld [hl+], a                                   ; $6d7a: $22
    add sp, $50                                   ; $6d7b: $e8 $50
    dec hl                                        ; $6d7d: $2b
    sub e                                         ; $6d7e: $93
    jp nc, RST_30                                 ; $6d7f: $d2 $30 $00

    or b                                          ; $6d82: $b0
    ld [hl], b                                    ; $6d83: $70
    ld h, e                                       ; $6d84: $63
    rra                                           ; $6d85: $1f

jr_0ab_6d86:
    sub b                                         ; $6d86: $90
    xor b                                         ; $6d87: $a8
    dec e                                         ; $6d88: $1d
    db $fc                                        ; $6d89: $fc
    nop                                           ; $6d8a: $00
    or c                                          ; $6d8b: $b1
    ldh a, [$61]                                  ; $6d8c: $f0 $61
    db $ec                                        ; $6d8e: $ec
    inc bc                                        ; $6d8f: $03
    jr jr_0ab_6d94                                ; $6d90: $18 $02

    ld a, b                                       ; $6d92: $78
    nop                                           ; $6d93: $00

jr_0ab_6d94:
    ld [bc], a                                    ; $6d94: $02
    ld hl, sp-$80                                 ; $6d95: $f8 $80
    ccf                                           ; $6d97: $3f
    add b                                         ; $6d98: $80
    ccf                                           ; $6d99: $3f
    ld a, a                                       ; $6d9a: $7f
    nop                                           ; $6d9b: $00
    ret nz                                        ; $6d9c: $c0

    ld [bc], a                                    ; $6d9d: $02
    jr jr_0ab_6da1                                ; $6d9e: $18 $01

    adc b                                         ; $6da0: $88

jr_0ab_6da1:
    inc bc                                        ; $6da1: $03
    ld h, b                                       ; $6da2: $60
    ld c, $28                                     ; $6da3: $0e $28
    rrca                                          ; $6da5: $0f
    ld h, $00                                     ; $6da6: $26 $00
    or b                                          ; $6da8: $b0
    add l                                         ; $6da9: $85
    ret nc                                        ; $6daa: $d0

    ret nz                                        ; $6dab: $c0

    rra                                           ; $6dac: $1f
    ret nz                                        ; $6dad: $c0

    nop                                           ; $6dae: $00
    ret nz                                        ; $6daf: $c0

    nop                                           ; $6db0: $00
    nop                                           ; $6db1: $00
    nop                                           ; $6db2: $00
    ldh [rNR23], a                                ; $6db3: $e0 $18
    ldh a, [$b2]                                  ; $6db5: $f0 $b2
    ldh a, [$31]                                  ; $6db7: $f0 $31
    db $10                                        ; $6db9: $10
    ldh a, [$c6]                                  ; $6dba: $f0 $c6
    nop                                           ; $6dbc: $00
    adc [hl]                                      ; $6dbd: $8e
    stop                                          ; $6dbe: $10 $00
    nop                                           ; $6dc0: $00
    ldh a, [$cf]                                  ; $6dc1: $f0 $cf
    ld [bc], a                                    ; $6dc3: $02
    ld a, a                                       ; $6dc4: $7f
    ld b, b                                       ; $6dc5: $40
    ld e, a                                       ; $6dc6: $5f
    ld h, b                                       ; $6dc7: $60
    ld sp, $103f                                  ; $6dc8: $31 $3f $10
    jr @+$01                                      ; $6dcb: $18 $ff

    nop                                           ; $6dcd: $00
    nop                                           ; $6dce: $00
    rst $20                                       ; $6dcf: $e7
    rla                                           ; $6dd0: $17
    rst $00                                       ; $6dd1: $c7
    daa                                           ; $6dd2: $27
    ret nz                                        ; $6dd3: $c0

    ld c, a                                       ; $6dd4: $4f
    add b                                         ; $6dd5: $80
    ld b, b                                       ; $6dd6: $40
    sbc a                                         ; $6dd7: $9f
    db $10                                        ; $6dd8: $10
    jr z, @+$08                                   ; $6dd9: $28 $06

    ldh a, [rTIMA]                                ; $6ddb: $f0 $05
    pop af                                        ; $6ddd: $f1
    dec b                                         ; $6dde: $05
    pop af                                        ; $6ddf: $f1
    ld bc, $e10d                                  ; $6de0: $01 $0d $e1
    ld [$f803], sp                                ; $6de3: $08 $03 $f8
    inc bc                                        ; $6de6: $03
    inc bc                                        ; $6de7: $03
    inc [hl]                                      ; $6de8: $34
    jr nz, jr_0ab_6d6b                            ; $6de9: $20 $80

    ld l, c                                       ; $6deb: $69
    ld c, b                                       ; $6dec: $48
    db $10                                        ; $6ded: $10
    inc bc                                        ; $6dee: $03
    ret z                                         ; $6def: $c8

    ld [bc], a                                    ; $6df0: $02
    ld b, b                                       ; $6df1: $40
    nop                                           ; $6df2: $00
    ld bc, $0910                                  ; $6df3: $01 $10 $09
    rrca                                          ; $6df6: $0f
    ld b, $09                                     ; $6df7: $06 $09
    rlca                                          ; $6df9: $07
    dec bc                                        ; $6dfa: $0b
    ld [$0603], sp                                ; $6dfb: $08 $03 $06
    dec b                                         ; $6dfe: $05
    ld b, $10                                     ; $6dff: $06 $10
    ld [$0003], sp                                ; $6e01: $08 $03 $00
    ld bc, $0700                                  ; $6e04: $01 $00 $07
    inc bc                                        ; $6e07: $03
    add l                                         ; $6e08: $85
    adc $49                                       ; $6e09: $ce $49
    cp $39                                        ; $6e0b: $fe $39
    db $e4                                        ; $6e0d: $e4
    nop                                           ; $6e0e: $00
    rlca                                          ; $6e0f: $07
    rrca                                          ; $6e10: $0f
    nop                                           ; $6e11: $00
    nop                                           ; $6e12: $00
    rst $38                                       ; $6e13: $ff
    ld [hl], b                                    ; $6e14: $70
    ld [c], a                                     ; $6e15: $e2
    ldh a, [rP1]                                  ; $6e16: $f0 $00
    pop bc                                        ; $6e18: $c1
    ret nz                                        ; $6e19: $c0

    ldh [$80], a                                  ; $6e1a: $e0 $80
    sbc a                                         ; $6e1c: $9f
    rrca                                          ; $6e1d: $0f
    or b                                          ; $6e1e: $b0
    ld h, b                                       ; $6e1f: $60

jr_0ab_6e20:
    nop                                           ; $6e20: $00
    ld e, a                                       ; $6e21: $5f

jr_0ab_6e22:
    nop                                           ; $6e22: $00
    rst $38                                       ; $6e23: $ff
    ld a, b                                       ; $6e24: $78
    dec sp                                        ; $6e25: $3b
    add h                                         ; $6e26: $84
    ld a, h                                       ; $6e27: $7c
    call nz, $bc00                                ; $6e28: $c4 $00 $bc
    ld [$e006], sp                                ; $6e2b: $08 $06 $e0
    and $f0                                       ; $6e2e: $e6 $f0
    jr nc, jr_0ab_6e4a                            ; $6e30: $30 $18

    nop                                           ; $6e32: $00
    add sp, $00                                   ; $6e33: $e8 $00
    ld a, b                                       ; $6e35: $78
    jr nc, jr_0ab_6e20                            ; $6e36: $30 $e8

    ld [hl], b                                    ; $6e38: $70
    db $ec                                        ; $6e39: $ec
    ld [hl], b                                    ; $6e3a: $70
    nop                                           ; $6e3b: $00
    adc $93                                       ; $6e3c: $ce $93
    ld h, e                                       ; $6e3e: $63
    inc [hl]                                      ; $6e3f: $34
    call nz, $cce0                                ; $6e40: $c4 $e0 $cc
    ldh [$60], a                                  ; $6e43: $e0 $60
    ld c, h                                       ; $6e45: $4c
    ld d, b                                       ; $6e46: $50
    jr @+$58                                      ; $6e47: $18 $56

jr_0ab_6e49:
    nop                                           ; $6e49: $00

jr_0ab_6e4a:
    ldh [$c0], a                                  ; $6e4a: $e0 $c0
    ld a, b                                       ; $6e4c: $78
    ld [hl], b                                    ; $6e4d: $70
    or b                                          ; $6e4e: $b0
    jr nc, jr_0ab_6e49                            ; $6e4f: $30 $f8

    ld [hl], b                                    ; $6e51: $70

jr_0ab_6e52:
    db $10                                        ; $6e52: $10
    jr nc, @+$1b                                  ; $6e53: $30 $19

    jr nz, jr_0ab_6e5b                            ; $6e55: $20 $04

    rlca                                          ; $6e57: $07
    inc bc                                        ; $6e58: $03
    ld b, $00                                     ; $6e59: $06 $00

jr_0ab_6e5b:
    ld [bc], a                                    ; $6e5b: $02
    rrca                                          ; $6e5c: $0f
    rlca                                          ; $6e5d: $07
    add hl, bc                                    ; $6e5e: $09
    rra                                           ; $6e5f: $1f
    jr nz, jr_0ab_6e22                            ; $6e60: $20 $c0

    ccf                                           ; $6e62: $3f
    nop                                           ; $6e63: $00
    add sp, -$19                                  ; $6e64: $e8 $e7
    ldh [rNR32], a                                ; $6e66: $e0 $1c
    ld [hl], c                                    ; $6e68: $71
    jp Jump_0ab_44e0                              ; $6e69: $c3 $e0 $44


    nop                                           ; $6e6c: $00
    jr nc, jr_0ab_6e52                            ; $6e6d: $30 $e3

    sbc b                                         ; $6e6f: $98
    or [hl]                                       ; $6e70: $b6
    call z, $c05a                                 ; $6e71: $cc $5a $c0
    ld h, h                                       ; $6e74: $64
    nop                                           ; $6e75: $00
    ldh [rNR30], a                                ; $6e76: $e0 $1a
    inc c                                         ; $6e78: $0c
    db $fc                                        ; $6e79: $fc
    ld b, b                                       ; $6e7a: $40
    jr nz, jr_0ab_6ecd                            ; $6e7b: $20 $50

    ld b, e                                       ; $6e7d: $43
    nop                                           ; $6e7e: $00
    jr nz, @+$03                                  ; $6e7f: $20 $01

    ldh a, [rIE]                                  ; $6e81: $f0 $ff
    ld l, h                                       ; $6e83: $6c
    db $e3                                        ; $6e84: $e3
    dec l                                         ; $6e85: $2d
    call $8500                                    ; $6e86: $cd $00 $85
    ld h, l                                       ; $6e89: $65
    ld a, $98                                     ; $6e8a: $3e $98
    inc e                                         ; $6e8c: $1c
    db $10                                        ; $6e8d: $10
    inc c                                         ; $6e8e: $0c
    adc h                                         ; $6e8f: $8c
    nop                                           ; $6e90: $00
    ld bc, $1601                                  ; $6e91: $01 $01 $16
    ld a, [c]                                     ; $6e94: $f2
    add d                                         ; $6e95: $82
    ld [hl], b                                    ; $6e96: $70
    ld [hl], $46                                  ; $6e97: $36 $46
    nop                                           ; $6e99: $00
    xor a                                         ; $6e9a: $af
    cp l                                          ; $6e9b: $bd
    db $fd                                        ; $6e9c: $fd
    rlca                                          ; $6e9d: $07
    jp nc, $7533                                  ; $6e9e: $d2 $33 $75

    or [hl]                                       ; $6ea1: $b6
    nop                                           ; $6ea2: $00
    ld b, e                                       ; $6ea3: $43
    adc c                                         ; $6ea4: $89
    rlca                                          ; $6ea5: $07
    sub e                                         ; $6ea6: $93
    rrca                                          ; $6ea7: $0f
    ld b, e                                       ; $6ea8: $43
    rrca                                          ; $6ea9: $0f
    add $00                                       ; $6eaa: $c6 $00
    rra                                           ; $6eac: $1f
    adc h                                         ; $6ead: $8c
    ld e, $bd                                     ; $6eae: $1e $bd
    ld hl, sp-$1c                                 ; $6eb0: $f8 $e4
    cp $c0                                        ; $6eb2: $fe $c0
    nop                                           ; $6eb4: $00
    ldh [$de], a                                  ; $6eb5: $e0 $de
    ret nz                                        ; $6eb7: $c0

    cp [hl]                                       ; $6eb8: $be
    ld a, a                                       ; $6eb9: $7f
    add c                                         ; $6eba: $81
    ld a, b                                       ; $6ebb: $78
    adc b                                         ; $6ebc: $88
    ld [$e0e7], sp                                ; $6ebd: $08 $e7 $e0
    rst $00                                       ; $6ec0: $c7
    ret nc                                        ; $6ec1: $d0

    ret nc                                        ; $6ec2: $d0

    db $10                                        ; $6ec3: $10
    ld a, a                                       ; $6ec4: $7f
    add b                                         ; $6ec5: $80
    ld a, a                                       ; $6ec6: $7f
    nop                                           ; $6ec7: $00
    add b                                         ; $6ec8: $80
    nop                                           ; $6ec9: $00
    add b                                         ; $6eca: $80
    nop                                           ; $6ecb: $00
    nop                                           ; $6ecc: $00

jr_0ab_6ecd:
    add b                                         ; $6ecd: $80
    ret nz                                        ; $6ece: $c0

    ld b, b                                       ; $6ecf: $40
    nop                                           ; $6ed0: $00
    db $fc                                        ; $6ed1: $fc
    rlca                                          ; $6ed2: $07
    add hl, de                                    ; $6ed3: $19
    ld e, $3a                                     ; $6ed4: $1e $3a
    inc [hl]                                      ; $6ed6: $34
    ld [$0078], sp                                ; $6ed7: $08 $78 $00
    inc b                                         ; $6eda: $04
    pop af                                        ; $6edb: $f1
    pop hl                                        ; $6edc: $e1
    call $cde1                                    ; $6edd: $cd $e1 $cd
    ldh [$c6], a                                  ; $6ee0: $e0 $c6
    nop                                           ; $6ee2: $00
    rlca                                          ; $6ee3: $07
    cp $03                                        ; $6ee4: $fe $03
    inc a                                         ; $6ee6: $3c
    pop bc                                        ; $6ee7: $c1
    adc $70                                       ; $6ee8: $ce $70
    add sp, $00                                   ; $6eea: $e8 $00
    ld a, b                                       ; $6eec: $78
    call c, $b24c                                 ; $6eed: $dc $4c $b2
    and h                                         ; $6ef0: $a4
    jp c, $b636                                   ; $6ef1: $da $36 $b6

    nop                                           ; $6ef4: $00
    jr z, jr_0ab_6f2f                             ; $6ef5: $28 $38

    or h                                          ; $6ef7: $b4
    inc sp                                        ; $6ef8: $33
    xor b                                         ; $6ef9: $a8
    inc h                                         ; $6efa: $24
    add e                                         ; $6efb: $83
    and b                                         ; $6efc: $a0
    nop                                           ; $6efd: $00
    add a                                         ; $6efe: $87

jr_0ab_6eff:
    and b                                         ; $6eff: $a0
    ld a, h                                       ; $6f00: $7c
    ld l, e                                       ; $6f01: $6b
    ld e, a                                       ; $6f02: $5f
    ld d, h                                       ; $6f03: $54
    db $eb                                        ; $6f04: $eb
    rst $28                                       ; $6f05: $ef
    nop                                           ; $6f06: $00
    xor $d6                                       ; $6f07: $ee $d6
    ld a, [hl]                                    ; $6f09: $7e
    and [hl]                                      ; $6f0a: $a6
    ld l, b                                       ; $6f0b: $68
    ld bc, $8388                                  ; $6f0c: $01 $88 $83
    nop                                           ; $6f0f: $00
    ret z                                         ; $6f10: $c8

    ld b, b                                       ; $6f11: $40
    add b                                         ; $6f12: $80
    ret nc                                        ; $6f13: $d0

    ld d, a                                       ; $6f14: $57
    db $f4                                        ; $6f15: $f4
    xor a                                         ; $6f16: $af
    jp hl                                         ; $6f17: $e9


    nop                                           ; $6f18: $00
    inc a                                         ; $6f19: $3c
    dec de                                        ; $6f1a: $1b
    jr c, jr_0ab_6f73                             ; $6f1b: $38 $56

    ld [hl], b                                    ; $6f1d: $70
    adc h                                         ; $6f1e: $8c
    ld h, c                                       ; $6f1f: $61
    sbc l                                         ; $6f20: $9d
    nop                                           ; $6f21: $00
    ld hl, sp+$61                                 ; $6f22: $f8 $61
    jr nc, jr_0ab_6f26                            ; $6f24: $30 $00

jr_0ab_6f26:
    ld b, $30                                     ; $6f26: $06 $30
    adc [hl]                                      ; $6f28: $8e
    sub b                                         ; $6f29: $90
    nop                                           ; $6f2a: $00
    jr c, jr_0ab_6f36                             ; $6f2b: $38 $09

    ld a, [hl]                                    ; $6f2d: $7e
    db $10                                        ; $6f2e: $10

jr_0ab_6f2f:
    cp h                                          ; $6f2f: $bc
    inc b                                         ; $6f30: $04
    call z, Call_000_000d                         ; $6f31: $cc $0d $00
    db $fc                                        ; $6f34: $fc
    cp l                                          ; $6f35: $bd

jr_0ab_6f36:
    jr c, jr_0ab_6f71                             ; $6f36: $38 $39

    inc bc                                        ; $6f38: $03
    pop bc                                        ; $6f39: $c1
    rst $38                                       ; $6f3a: $ff
    rst $38                                       ; $6f3b: $ff
    nop                                           ; $6f3c: $00
    jr nz, jr_0ab_6eff                            ; $6f3d: $20 $c0

    ld [$07f8], sp                                ; $6f3f: $08 $f8 $07
    ld [hl], a                                    ; $6f42: $77
    add a                                         ; $6f43: $87
    ld [hl], c                                    ; $6f44: $71
    nop                                           ; $6f45: $00
    ld b, a                                       ; $6f46: $47
    and e                                         ; $6f47: $a3
    ld d, a                                       ; $6f48: $57
    add e                                         ; $6f49: $83
    db $f4                                        ; $6f4a: $f4
    rlca                                          ; $6f4b: $07
    db $e4                                        ; $6f4c: $e4
    rlca                                          ; $6f4d: $07
    nop                                           ; $6f4e: $00
    jr nz, jr_0ab_6f57                            ; $6f4f: $20 $06

    ld b, $44                                     ; $6f51: $06 $44
    inc bc                                        ; $6f53: $03
    ld h, b                                       ; $6f54: $60
    inc e                                         ; $6f55: $1c
    inc l                                         ; $6f56: $2c

jr_0ab_6f57:
    nop                                           ; $6f57: $00
    rlca                                          ; $6f58: $07
    dec bc                                        ; $6f59: $0b
    ldh [$c1], a                                  ; $6f5a: $e0 $c1
    ld a, [$3be1]                                 ; $6f5c: $fa $e1 $3b
    dec a                                         ; $6f5f: $3d
    nop                                           ; $6f60: $00
    ld e, [hl]                                    ; $6f61: $5e
    sbc d                                         ; $6f62: $9a
    sbc h                                         ; $6f63: $9c
    ret nz                                        ; $6f64: $c0

    ld l, b                                       ; $6f65: $68
    jr nz, jr_0ab_6f6b                            ; $6f66: $20 $03

    ld h, [hl]                                    ; $6f68: $66
    nop                                           ; $6f69: $00
    cp a                                          ; $6f6a: $bf

jr_0ab_6f6b:
    ldh a, [$e0]                                  ; $6f6b: $f0 $e0
    add b                                         ; $6f6d: $80
    ret nz                                        ; $6f6e: $c0

    db $e3                                        ; $6f6f: $e3
    ld b, [hl]                                    ; $6f70: $46

jr_0ab_6f71:
    and [hl]                                      ; $6f71: $a6
    nop                                           ; $6f72: $00

jr_0ab_6f73:
    db $f4                                        ; $6f73: $f4
    sub a                                         ; $6f74: $97
    jr nc, @-$23                                  ; $6f75: $30 $db

    db $10                                        ; $6f77: $10
    rst $28                                       ; $6f78: $ef
    rlca                                          ; $6f79: $07
    add a                                         ; $6f7a: $87
    nop                                           ; $6f7b: $00
    dec c                                         ; $6f7c: $0d
    add b                                         ; $6f7d: $80
    ld b, b                                       ; $6f7e: $40
    ld c, a                                       ; $6f7f: $4f
    ldh [$c0], a                                  ; $6f80: $e0 $c0
    add sp, $41                                   ; $6f82: $e8 $41
    nop                                           ; $6f84: $00
    add d                                         ; $6f85: $82
    ld [hl+], a                                   ; $6f86: $22
    ld bc, $0c01                                  ; $6f87: $01 $01 $0c
    inc c                                         ; $6f8a: $0c
    sbc b                                         ; $6f8b: $98
    ld h, c                                       ; $6f8c: $61
    nop                                           ; $6f8d: $00
    jp $0733                                      ; $6f8e: $c3 $33 $07


    and $0e                                       ; $6f91: $e6 $0e
    rrca                                          ; $6f93: $0f
    ld c, h                                       ; $6f94: $4c
    ld e, $00                                     ; $6f95: $1e $00
    ret nc                                        ; $6f97: $d0

    adc $3c                                       ; $6f98: $ce $3c

jr_0ab_6f9a:
    ld [bc], a                                    ; $6f9a: $02
    halt                                          ; $6f9b: $76

jr_0ab_6f9c:
    inc b                                         ; $6f9c: $04
    ld c, h                                       ; $6f9d: $4c
    dec c                                         ; $6f9e: $0d
    nop                                           ; $6f9f: $00
    inc bc                                        ; $6fa0: $03
    dec de                                        ; $6fa1: $1b
    rlca                                          ; $6fa2: $07
    ld b, $44                                     ; $6fa3: $06 $44
    ld a, d                                       ; $6fa5: $7a
    db $fc                                        ; $6fa6: $fc
    cp $00                                        ; $6fa7: $fe $00
    inc bc                                        ; $6fa9: $03
    db $fd                                        ; $6faa: $fd
    ldh a, [rNR10]                                ; $6fab: $f0 $10
    rlca                                          ; $6fad: $07
    rrca                                          ; $6fae: $0f
    dec b                                         ; $6faf: $05
    db $fc                                        ; $6fb0: $fc
    nop                                           ; $6fb1: $00
    inc a                                         ; $6fb2: $3c
    call z, $cc3c                                 ; $6fb3: $cc $3c $cc
    ld a, a                                       ; $6fb6: $7f
    cp a                                          ; $6fb7: $bf
    ld b, a                                       ; $6fb8: $47
    rst $08                                       ; $6fb9: $cf
    nop                                           ; $6fba: $00
    dec [hl]                                      ; $6fbb: $35
    rlca                                          ; $6fbc: $07
    push hl                                       ; $6fbd: $e5
    rrca                                          ; $6fbe: $0f
    pop bc                                        ; $6fbf: $c1
    rrca                                          ; $6fc0: $0f
    and e                                         ; $6fc1: $a3
    rrca                                          ; $6fc2: $0f
    nop                                           ; $6fc3: $00
    ret nc                                        ; $6fc4: $d0

    inc e                                         ; $6fc5: $1c
    ret nc                                        ; $6fc6: $d0

    inc e                                         ; $6fc7: $1c
    jr jr_0ab_6f9a                                ; $6fc8: $18 $d0

    jr jr_0ab_6f9c                                ; $6fca: $18 $d0

    nop                                           ; $6fcc: $00
    ld [hl], a                                    ; $6fcd: $77
    ld l, e                                       ; $6fce: $6b
    inc sp                                        ; $6fcf: $33
    ld a, b                                       ; $6fd0: $78
    ld b, e                                       ; $6fd1: $43
    ld a, [hl+]                                   ; $6fd2: $2a
    halt                                          ; $6fd3: $76
    ld a, l                                       ; $6fd4: $7d
    nop                                           ; $6fd5: $00
    rlca                                          ; $6fd6: $07
    dec c                                         ; $6fd7: $0d
    ld b, $0b                                     ; $6fd8: $06 $0b
    nop                                           ; $6fda: $00
    rrca                                          ; $6fdb: $0f
    ld b, $03                                     ; $6fdc: $06 $03

jr_0ab_6fde:
    nop                                           ; $6fde: $00
    jr @-$5e                                      ; $6fdf: $18 $a0

    jr z, jr_0ab_7000                             ; $6fe1: $28 $1d

    ld d, [hl]                                    ; $6fe3: $56
    ld c, $5b                                     ; $6fe4: $0e $5b
    rlca                                          ; $6fe6: $07
    nop                                           ; $6fe7: $00
    ld l, c                                       ; $6fe8: $69
    rlca                                          ; $6fe9: $07
    db $eb                                        ; $6fea: $eb
    rlca                                          ; $6feb: $07
    ld [hl], b                                    ; $6fec: $70
    rlca                                          ; $6fed: $07
    ld c, $7d                                     ; $6fee: $0e $7d
    nop                                           ; $6ff0: $00
    dec h                                         ; $6ff1: $25
    ld bc, $6b81                                  ; $6ff2: $01 $81 $6b
    ret nz                                        ; $6ff5: $c0

    cpl                                           ; $6ff6: $2f
    ld c, h                                       ; $6ff7: $4c
    inc l                                         ; $6ff8: $2c
    nop                                           ; $6ff9: $00
    ld c, b                                       ; $6ffa: $48
    jr z, jr_0ab_7006                             ; $6ffb: $28 $09

    ret z                                         ; $6ffd: $c8

    nop                                           ; $6ffe: $00
    add b                                         ; $6fff: $80

jr_0ab_7000:
    inc bc                                        ; $7000: $03
    ldh [rP1], a                                  ; $7001: $e0 $00
    ld c, h                                       ; $7003: $4c
    ld d, d                                       ; $7004: $52
    ret z                                         ; $7005: $c8

jr_0ab_7006:
    call nc, $a3c0                                ; $7006: $d4 $c0 $a3
    ret nz                                        ; $7009: $c0

    ld h, $00                                     ; $700a: $26 $00
    ld bc, $9105                                  ; $700c: $01 $05 $91
    add hl, bc                                    ; $700f: $09
    ld [bc], a                                    ; $7010: $02
    dec b                                         ; $7011: $05
    db $fc                                        ; $7012: $fc
    adc $00                                       ; $7013: $ce $00
    ldh a, [rIE]                                  ; $7015: $f0 $ff
    ldh a, [$73]                                  ; $7017: $f0 $73
    rst $30                                       ; $7019: $f7
    db $f4                                        ; $701a: $f4
    rrca                                          ; $701b: $0f
    ret c                                         ; $701c: $d8

    nop                                           ; $701d: $00
    ldh a, [$e7]                                  ; $701e: $f0 $e7
    ldh [rBGP], a                                 ; $7020: $e0 $47
    inc a                                         ; $7022: $3c
    daa                                           ; $7023: $27
    cp $c3                                        ; $7024: $fe $c3
    nop                                           ; $7026: $00
    ld sp, $fffa                                  ; $7027: $31 $fa $ff
    cp $e1                                        ; $702a: $fe $e1
    db $fc                                        ; $702c: $fc
    db $e3                                        ; $702d: $e3
    sbc h                                         ; $702e: $9c
    nop                                           ; $702f: $00
    rst $08                                       ; $7030: $cf
    sbc a                                         ; $7031: $9f
    pop af                                        ; $7032: $f1
    cp e                                          ; $7033: $bb
    call z, $e69e                                 ; $7034: $cc $9e $e6
    cp $00                                        ; $7037: $fe $00
    and b                                         ; $7039: $a0
    jr c, jr_0ab_705c                             ; $703a: $38 $20

    jr c, jr_0ab_6fde                             ; $703c: $38 $a0

    jr nc, jr_0ab_70a0                            ; $703e: $30 $60

    ld [hl], b                                    ; $7040: $70
    nop                                           ; $7041: $00
    ld h, b                                       ; $7042: $60
    ld e, a                                       ; $7043: $5f
    ld h, b                                       ; $7044: $60
    ld e, a                                       ; $7045: $5f
    jr nz, @-$3e                                  ; $7046: $20 $c0

    ld h, b                                       ; $7048: $60
    ret nz                                        ; $7049: $c0

    nop                                           ; $704a: $00
    ld [bc], a                                    ; $704b: $02
    ld bc, $0102                                  ; $704c: $01 $02 $01
    inc bc                                        ; $704f: $03
    ld bc, $0100                                  ; $7050: $01 $00 $01
    ret nz                                        ; $7053: $c0

    inc bc                                        ; $7054: $03
    nop                                           ; $7055: $00
    ld [bc], a                                    ; $7056: $02
    nop                                           ; $7057: $00
    nop                                           ; $7058: $00
    nop                                           ; $7059: $00
    ld [hl], a                                    ; $705a: $77
    cpl                                           ; $705b: $2f

jr_0ab_705c:
    rra                                           ; $705c: $1f
    sbc a                                         ; $705d: $9f
    nop                                           ; $705e: $00
    ld a, $ae                                     ; $705f: $3e $ae
    ccf                                           ; $7061: $3f
    and c                                         ; $7062: $a1
    ccf                                           ; $7063: $3f
    and c                                         ; $7064: $a1
    rla                                           ; $7065: $17
    db $d3                                        ; $7066: $d3
    nop                                           ; $7067: $00
    rla                                           ; $7068: $17
    rst $00                                       ; $7069: $c7
    ret nz                                        ; $706a: $c0

    sbc a                                         ; $706b: $9f
    rrca                                          ; $706c: $0f
    rst $00                                       ; $706d: $c7
    ld a, b                                       ; $706e: $78
    jr jr_0ab_7071                                ; $706f: $18 $00

Call_0ab_7071:
jr_0ab_7071:
    ld b, b                                       ; $7071: $40
    rlca                                          ; $7072: $07
    ld a, a                                       ; $7073: $7f
    ld h, b                                       ; $7074: $60

jr_0ab_7075:
    db $e3                                        ; $7075: $e3
    db $fc                                        ; $7076: $fc
    daa                                           ; $7077: $27
    jr c, jr_0ab_707a                             ; $7078: $38 $00

jr_0ab_707a:
    ld h, a                                       ; $707a: $67
    ld a, b                                       ; $707b: $78
    rrca                                          ; $707c: $0f
    ld a, a                                       ; $707d: $7f
    ldh [$80], a                                  ; $707e: $e0 $80
    nop                                           ; $7080: $00
    inc bc                                        ; $7081: $03
    nop                                           ; $7082: $00
    and e                                         ; $7083: $a3
    ld h, b                                       ; $7084: $60
    ld hl, $84c0                                  ; $7085: $21 $c0 $84
    ldh [$8e], a                                  ; $7088: $e0 $8e
    ret nz                                        ; $708a: $c0

    nop                                           ; $708b: $00
    rrca                                          ; $708c: $0f
    ret nz                                        ; $708d: $c0

    rra                                           ; $708e: $1f
    add c                                         ; $708f: $81
    ld a, [hl]                                    ; $7090: $7e
    ld hl, sp+$3f                                 ; $7091: $f8 $3f
    ld hl, sp+$00                                 ; $7093: $f8 $00
    ld a, a                                       ; $7095: $7f
    ldh a, [$7e]                                  ; $7096: $f0 $7e
    ldh a, [$f0]                                  ; $7098: $f0 $f0
    inc a                                         ; $709a: $3c
    ld a, b                                       ; $709b: $78
    jr jr_0ab_709e                                ; $709c: $18 $00

jr_0ab_709e:
    nop                                           ; $709e: $00
    ld [de], a                                    ; $709f: $12

jr_0ab_70a0:
    call nz, $fa04                                ; $70a0: $c4 $04 $fa
    ld [$017c], sp                                ; $70a3: $08 $7c $01
    nop                                           ; $70a6: $00
    ld a, h                                       ; $70a7: $7c
    dec e                                         ; $70a8: $1d
    inc l                                         ; $70a9: $2c
    dec h                                         ; $70aa: $25
    jr nc, jr_0ab_70ae                            ; $70ab: $30 $01

    ld e, b                                       ; $70ad: $58

jr_0ab_70ae:
    ld b, e                                       ; $70ae: $43
    nop                                           ; $70af: $00
    ld c, e                                       ; $70b0: $4b
    ld l, b                                       ; $70b1: $68
    inc hl                                        ; $70b2: $23
    jr nc, jr_0ab_7075                            ; $70b3: $30 $c0

    add b                                         ; $70b5: $80
    ld b, b                                       ; $70b6: $40
    add b                                         ; $70b7: $80
    ld sp, $c040                                  ; $70b8: $31 $40 $c0
    cp h                                          ; $70bb: $bc
    add hl, bc                                    ; $70bc: $09
    jp nz, $7f01                                  ; $70bd: $c2 $01 $7f

    nop                                           ; $70c0: $00
    cp a                                          ; $70c1: $bf
    and b                                         ; $70c2: $a0
    ld a, [de]                                    ; $70c3: $1a
    ret nz                                        ; $70c4: $c0

    ld l, d                                       ; $70c5: $6a
    ld [$2257], sp                                ; $70c6: $08 $57 $22
    set 5, l                                      ; $70c9: $cb $ed
    rrca                                          ; $70cb: $0f
    ld h, c                                       ; $70cc: $61
    rrca                                          ; $70cd: $0f
    ldh a, [rP1]                                  ; $70ce: $f0 $00
    add [hl]                                      ; $70d0: $86
    ldh a, [$80]                                  ; $70d1: $f0 $80
    ld hl, $381e                                  ; $70d3: $21 $1e $38
    daa                                           ; $70d6: $27
    rrca                                          ; $70d7: $0f
    nop                                           ; $70d8: $00
    inc sp                                        ; $70d9: $33
    rrca                                          ; $70da: $0f
    ld a, [hl]                                    ; $70db: $7e
    ld a, [hl]                                    ; $70dc: $7e
    ld [hl], c                                    ; $70dd: $71
    ld a, [hl]                                    ; $70de: $7e
    ld h, c                                       ; $70df: $61
    sbc a                                         ; $70e0: $9f
    nop                                           ; $70e1: $00
    ldh [rP1], a                                  ; $70e2: $e0 $00
    nop                                           ; $70e4: $00
    db $e3                                        ; $70e5: $e3
    inc hl                                        ; $70e6: $23
    ld sp, $0fc1                                  ; $70e7: $31 $c1 $0f
    nop                                           ; $70ea: $00
    pop af                                        ; $70eb: $f1
    ld a, l                                       ; $70ec: $7d
    ld h, d                                       ; $70ed: $62
    db $fd                                        ; $70ee: $fd
    ei                                            ; $70ef: $fb
    ld b, $40                                     ; $70f0: $06 $40
    rla                                           ; $70f2: $17
    add b                                         ; $70f3: $80
    ld [$e102], sp                                ; $70f4: $08 $02 $e1
    ld a, a                                       ; $70f7: $7f
    ldh a, [$cf]                                  ; $70f8: $f0 $cf
    inc e                                         ; $70fa: $1c
    inc de                                        ; $70fb: $13
    nop                                           ; $70fc: $00
    nop                                           ; $70fd: $00
    ld a, b                                       ; $70fe: $78
    ret z                                         ; $70ff: $c8

Call_0ab_7100:
    halt                                          ; $7100: $76
    dec de                                        ; $7101: $1b
    xor h                                         ; $7102: $ac
    reti                                          ; $7103: $d9


    add [hl]                                      ; $7104: $86
    nop                                           ; $7105: $00
    nop                                           ; $7106: $00
    nop                                           ; $7107: $00
    ld a, [hl]                                    ; $7108: $7e
    db $d3                                        ; $7109: $d3
    add e                                         ; $710a: $83
    ld b, h                                       ; $710b: $44
    rst $00                                       ; $710c: $c7
    jp hl                                         ; $710d: $e9


    ld h, [hl]                                    ; $710e: $66
    nop                                           ; $710f: $00
    ld [hl], l                                    ; $7110: $75
    inc [hl]                                      ; $7111: $34
    inc hl                                        ; $7112: $23
    ld b, $82                                     ; $7113: $06 $82
    ld c, $e6                                     ; $7115: $0e $e6
    inc bc                                        ; $7117: $03
    ld bc, $e70d                                  ; $7118: $01 $0d $e7
    dec de                                        ; $711b: $1b
    inc c                                         ; $711c: $0c
    ldh a, [rNR32]                                ; $711d: $f0 $1c
    db $e4                                        ; $711f: $e4
    and b                                         ; $7120: $a0
    ld l, d                                       ; $7121: $6a
    db $10                                        ; $7122: $10
    inc bc                                        ; $7123: $03
    add l                                         ; $7124: $85
    ld [bc], a                                    ; $7125: $02
    ld b, b                                       ; $7126: $40
    nop                                           ; $7127: $00
    ld bc, $f0b0                                  ; $7128: $01 $b0 $f0
    ldh a, [$e8]                                  ; $712b: $f0 $e8
    rst $20                                       ; $712d: $e7

jr_0ab_712e:
    ld e, $0d                                     ; $712e: $1e $0d
    add b                                         ; $7130: $80
    jr nz, jr_0ab_7153                            ; $7131: $20 $20

    inc bc                                        ; $7133: $03
    rlca                                          ; $7134: $07
    ld b, $3f                                     ; $7135: $06 $3f
    jr nc, jr_0ab_7197                            ; $7137: $30 $5e

    ret nz                                        ; $7139: $c0

    nop                                           ; $713a: $00
    inc e                                         ; $713b: $1c
    ld b, h                                       ; $713c: $44
    rst $20                                       ; $713d: $e7
    jp $9bd1                                      ; $713e: $c3 $d1 $9b


    and b                                         ; $7141: $a0
    sbc l                                         ; $7142: $9d
    nop                                           ; $7143: $00
    add l                                         ; $7144: $85
    and c                                         ; $7145: $a1
    add hl, de                                    ; $7146: $19
    ld h, b                                       ; $7147: $60
    inc a                                         ; $7148: $3c
    ld e, h                                       ; $7149: $5c
    ldh a, [$c1]                                  ; $714a: $f0 $c1
    jr nz, jr_0ab_712e                            ; $714c: $20 $e0

    add c                                         ; $714e: $81
    ld b, b                                       ; $714f: $40
    jr @+$42                                      ; $7150: $18 $40

    add b                                         ; $7152: $80

jr_0ab_7153:
    ld b, b                                       ; $7153: $40
    ldh [$f0], a                                  ; $7154: $e0 $f0
    ld b, $00                                     ; $7156: $06 $00
    ld b, b                                       ; $7158: $40
    ld a, h                                       ; $7159: $7c
    cp b                                          ; $715a: $b8
    ld a, $50                                     ; $715b: $3e $50
    cp b                                          ; $715d: $b8
    ld l, d                                       ; $715e: $6a
    adc b                                         ; $715f: $88
    ld bc, $0300                                  ; $7160: $01 $00 $03
    inc e                                         ; $7163: $1c
    jr nc, jr_0ab_71a2                            ; $7164: $30 $3c

    jr nc, @+$3e                                  ; $7166: $30 $3c

    ld bc, $003e                                  ; $7168: $01 $3e $00
    add d                                         ; $716b: $82
    ccf                                           ; $716c: $3f
    and c                                         ; $716d: $a1
    sbc a                                         ; $716e: $9f
    sub b                                         ; $716f: $90
    rrca                                          ; $7170: $0f
    rst $08                                       ; $7171: $cf
    ld h, b                                       ; $7172: $60
    nop                                           ; $7173: $00
    ldh [rNR10], a                                ; $7174: $e0 $10
    db $10                                        ; $7176: $10
    ld [$53e0], sp                                ; $7177: $08 $e0 $53
    jp Jump_000_0021                              ; $717a: $c3 $21 $00


    jr nz, jr_0ab_7199                            ; $717d: $20 $1a

    inc c                                         ; $717f: $0c
    ret nz                                        ; $7180: $c0

    cp l                                          ; $7181: $bd
    jr c, @+$35                                   ; $7182: $38 $33

    inc bc                                        ; $7184: $03
    nop                                           ; $7185: $00
    dec sp                                        ; $7186: $3b
    ldh [$9c], a                                  ; $7187: $e0 $9c
    nop                                           ; $7189: $00
    inc c                                         ; $718a: $0c
    ldh [$d0], a                                  ; $718b: $e0 $d0
    ld hl, sp+$00                                 ; $718d: $f8 $00
    db $fc                                        ; $718f: $fc
    nop                                           ; $7190: $00
    ld b, $b0                                     ; $7191: $06 $b0
    adc c                                         ; $7193: $89
    ld [hl+], a                                   ; $7194: $22
    cp [hl]                                       ; $7195: $be
    dec a                                         ; $7196: $3d

jr_0ab_7197:
    nop                                           ; $7197: $00
    and d                                         ; $7198: $a2

jr_0ab_7199:
    ret nz                                        ; $7199: $c0

    rrca                                          ; $719a: $0f
    db $f4                                        ; $719b: $f4
    ld b, $01                                     ; $719c: $06 $01
    ld hl, sp+$00                                 ; $719e: $f8 $00
    nop                                           ; $71a0: $00
    db $fc                                        ; $71a1: $fc

jr_0ab_71a2:
    ld a, a                                       ; $71a2: $7f
    ld l, $3f                                     ; $71a3: $2e $3f
    add b                                         ; $71a5: $80
    ccf                                           ; $71a6: $3f
    add b                                         ; $71a7: $80
    sbc a                                         ; $71a8: $9f
    nop                                           ; $71a9: $00
    add b                                         ; $71aa: $80
    rrca                                          ; $71ab: $0f
    rrca                                          ; $71ac: $0f
    add a                                         ; $71ad: $87
    ld [hl], a                                    ; $71ae: $77
    add e                                         ; $71af: $83
    ld a, e                                       ; $71b0: $7b
    add hl, sp                                    ; $71b1: $39
    nop                                           ; $71b2: $00
    dec b                                         ; $71b3: $05
    inc a                                         ; $71b4: $3c
    inc b                                         ; $71b5: $04
    ld a, $84                                     ; $71b6: $3e $84
    ld a, $b4                                     ; $71b8: $3e $b4
    ld a, h                                       ; $71ba: $7c
    ld b, b                                       ; $71bb: $40
    ld h, b                                       ; $71bc: $60
    ret nc                                        ; $71bd: $d0

    ld d, b                                       ; $71be: $50
    add b                                         ; $71bf: $80
    ret nz                                        ; $71c0: $c0

    nop                                           ; $71c1: $00
    ld bc, $0706                                  ; $71c2: $01 $06 $07
    nop                                           ; $71c5: $00
    inc c                                         ; $71c6: $0c

jr_0ab_71c7:
    ld b, $1c                                     ; $71c7: $06 $1c
    ld a, b                                       ; $71c9: $78
    ld sp, $27f0                                  ; $71ca: $31 $f0 $27
    ldh [rP1], a                                  ; $71cd: $e0 $00
    ld l, a                                       ; $71cf: $6f
    ldh [$6e], a                                  ; $71d0: $e0 $6e
    ldh [$4c], a                                  ; $71d2: $e0 $4c
    rra                                           ; $71d4: $1f
    add b                                         ; $71d5: $80
    nop                                           ; $71d6: $00
    nop                                           ; $71d7: $00
    ld a, a                                       ; $71d8: $7f
    rst $38                                       ; $71d9: $ff
    nop                                           ; $71da: $00
    db $fc                                        ; $71db: $fc
    nop                                           ; $71dc: $00
    ld [c], a                                     ; $71dd: $e2
    inc bc                                        ; $71de: $03
    ld e, $41                                     ; $71df: $1e $41
    rlca                                          ; $71e1: $07
    rlca                                          ; $71e2: $07
    nop                                           ; $71e3: $00
    ld bc, $0803                                  ; $71e4: $01 $03 $08
    pop bc                                        ; $71e7: $c1
    inc bc                                        ; $71e8: $03
    inc b                                         ; $71e9: $04
    ld bc, $f800                                  ; $71ea: $01 $00 $f8
    db $fc                                        ; $71ed: $fc
    rlca                                          ; $71ee: $07
    nop                                           ; $71ef: $00
    nop                                           ; $71f0: $00
    ld sp, $1b2e                                  ; $71f1: $31 $2e $1b
    jr nz, jr_0ab_71c7                            ; $71f4: $20 $d1

    rra                                           ; $71f6: $1f
    jp nc, Jump_000_1100                          ; $71f7: $d2 $00 $11

    ld sp, $020e                                  ; $71fa: $31 $0e $02
    ld a, $20                                     ; $71fd: $3e $20
    rra                                           ; $71ff: $1f
    nop                                           ; $7200: $00
    jr jr_0ab_7203                                ; $7201: $18 $00

jr_0ab_7203:
    pop hl                                        ; $7203: $e1
    sbc [hl]                                      ; $7204: $9e
    ld b, b                                       ; $7205: $40
    ret nz                                        ; $7206: $c0

    ld a, e                                       ; $7207: $7b
    nop                                           ; $7208: $00
    nop                                           ; $7209: $00

jr_0ab_720a:
    sbc a                                         ; $720a: $9f
    sub b                                         ; $720b: $90
    jr nz, jr_0ab_726e                            ; $720c: $20 $60

    add b                                         ; $720e: $80
    add b                                         ; $720f: $80
    db $fc                                        ; $7210: $fc
    nop                                           ; $7211: $00
    jp Jump_000_0001                              ; $7212: $c3 $01 $00


    add b                                         ; $7215: $80
    adc h                                         ; $7216: $8c
    ldh a, [$f1]                                  ; $7217: $f0 $f1
    add d                                         ; $7219: $82
    nop                                           ; $721a: $00
    add b                                         ; $721b: $80
    rlca                                          ; $721c: $07
    rst $20                                       ; $721d: $e7
    rrca                                          ; $721e: $0f
    nop                                           ; $721f: $00
    add b                                         ; $7220: $80
    rst $38                                       ; $7221: $ff
    rra                                           ; $7222: $1f
    nop                                           ; $7223: $00
    jr jr_0ab_726d                                ; $7224: $18 $47

    ldh [rNR13], a                                ; $7226: $e0 $13
    jr nc, jr_0ab_720a                            ; $7228: $30 $e0

    add b                                         ; $722a: $80
    ld h, b                                       ; $722b: $60
    nop                                           ; $722c: $00
    ld hl, sp+$70                                 ; $722d: $f8 $70
    inc c                                         ; $722f: $0c
    sub b                                         ; $7230: $90
    adc [hl]                                      ; $7231: $8e
    ld [c], a                                     ; $7232: $e2
    rrca                                          ; $7233: $0f
    ld a, [c]                                     ; $7234: $f2
    nop                                           ; $7235: $00
    rlca                                          ; $7236: $07
    di                                            ; $7237: $f3
    rlca                                          ; $7238: $07
    ld a, [c]                                     ; $7239: $f2

jr_0ab_723a:
    rlca                                          ; $723a: $07
    ld h, b                                       ; $723b: $60
    ld b, b                                       ; $723c: $40
    ld h, b                                       ; $723d: $60
    nop                                           ; $723e: $00

jr_0ab_723f:
    ld b, b                                       ; $723f: $40
    ld b, b                                       ; $7240: $40
    ld bc, $0007                                  ; $7241: $01 $07 $00
    inc hl                                        ; $7244: $23
    jr c, jr_0ab_723f                             ; $7245: $38 $f8

    nop                                           ; $7247: $00
    jp $e3f8                                      ; $7248: $c3 $f8 $e3


    jr @+$05                                      ; $724b: $18 $03

    db $fc                                        ; $724d: $fc
    jp $0102                                      ; $724e: $c3 $02 $01


    inc bc                                        ; $7251: $03
    ld a, [$fd03]                                 ; $7252: $fa $03 $fd
    ld bc, $01fc                                  ; $7255: $01 $fc $01
    inc b                                         ; $7258: $04
    ld [$fe00], sp                                ; $7259: $08 $00 $fe
    rlca                                          ; $725c: $07
    inc de                                        ; $725d: $13
    pop de                                        ; $725e: $d1
    call c, $a040                                 ; $725f: $dc $40 $a0
    ldh [rP1], a                                  ; $7262: $e0 $00
    jp nz, $d08d                                  ; $7264: $c2 $8d $d0

    sbc l                                         ; $7267: $9d
    ret nc                                        ; $7268: $d0

    ld d, $d0                                     ; $7269: $16 $d0
    inc bc                                        ; $726b: $03
    nop                                           ; $726c: $00

jr_0ab_726d:
    ret nc                                        ; $726d: $d0

jr_0ab_726e:
    inc bc                                        ; $726e: $03
    scf                                           ; $726f: $37
    pop hl                                        ; $7270: $e1
    ld b, a                                       ; $7271: $47
    ld h, c                                       ; $7272: $61
    ld e, $80                                     ; $7273: $1e $80
    nop                                           ; $7275: $00
    add b                                         ; $7276: $80
    ldh [rSB], a                                  ; $7277: $e0 $01
    cp $01                                        ; $7279: $fe $01
    or $cb                                        ; $727b: $f6 $cb
    inc a                                         ; $727d: $3c
    nop                                           ; $727e: $00
    ld a, [hl-]                                   ; $727f: $3a
    ld a, h                                       ; $7280: $7c
    call z, Call_000_1c04                         ; $7281: $cc $04 $1c
    ld c, $30                                     ; $7284: $0e $30
    ld l, e                                       ; $7286: $6b
    nop                                           ; $7287: $00
    and [hl]                                      ; $7288: $a6
    pop de                                        ; $7289: $d1
    ld b, a                                       ; $728a: $47
    ld e, $43                                     ; $728b: $1e $43
    ld e, $6a                                     ; $728d: $1e $6a
    ld sp, $2500                                  ; $728f: $31 $00 $25
    inc e                                         ; $7292: $1c
    dec c                                         ; $7293: $0d
    inc e                                         ; $7294: $1c
    inc b                                         ; $7295: $04
    ld c, $03                                     ; $7296: $0e $03
    dec [hl]                                      ; $7298: $35
    nop                                           ; $7299: $00
    ld bc, $e00a                                  ; $729a: $01 $0a $e0
    add c                                         ; $729d: $81
    ld hl, sp-$80                                 ; $729e: $f8 $80
    ld a, [hl]                                    ; $72a0: $7e
    cp $00                                        ; $72a1: $fe $00
    ld a, a                                       ; $72a3: $7f
    add b                                         ; $72a4: $80
    ld a, [c]                                     ; $72a5: $f2
    ld b, $e2                                     ; $72a6: $06 $e2
    ld c, $62                                     ; $72a8: $0e $62
    ld c, $00                                     ; $72aa: $0e $00
    jr nz, jr_0ab_723a                            ; $72ac: $20 $8c

    inc e                                         ; $72ae: $1c
    sub b                                         ; $72af: $90
    inc e                                         ; $72b0: $1c
    sub b                                         ; $72b1: $90
    rra                                           ; $72b2: $1f
    ld b, a                                       ; $72b3: $47
    nop                                           ; $72b4: $00
    rra                                           ; $72b5: $1f
    rst $00                                       ; $72b6: $c7
    inc e                                         ; $72b7: $1c
    dec b                                         ; $72b8: $05
    inc e                                         ; $72b9: $1c
    dec b                                         ; $72ba: $05
    inc c                                         ; $72bb: $0c
    inc b                                         ; $72bc: $04
    nop                                           ; $72bd: $00
    inc bc                                        ; $72be: $03
    ld c, $07                                     ; $72bf: $0e $07
    inc c                                         ; $72c1: $0c
    ld c, $09                                     ; $72c2: $0e $09
    inc c                                         ; $72c4: $0c
    dec bc                                        ; $72c5: $0b
    nop                                           ; $72c6: $00
    inc e                                         ; $72c7: $1c
    inc de                                        ; $72c8: $13
    db $f4                                        ; $72c9: $f4
    dec d                                         ; $72ca: $15
    dec bc                                        ; $72cb: $0b
    add b                                         ; $72cc: $80
    ccf                                           ; $72cd: $3f
    inc e                                         ; $72ce: $1c
    nop                                           ; $72cf: $00
    push de                                       ; $72d0: $d5
    jr c, jr_0ab_733b                             ; $72d1: $38 $68

    pop af                                        ; $72d3: $f1
    ld [hl-], a                                   ; $72d4: $32

jr_0ab_72d5:
    db $e3                                        ; $72d5: $e3
    push bc                                       ; $72d6: $c5

jr_0ab_72d7:
    add a                                         ; $72d7: $87
    nop                                           ; $72d8: $00
    sub c                                         ; $72d9: $91
    adc [hl]                                      ; $72da: $8e
    db $ec                                        ; $72db: $ec
    add hl, hl                                    ; $72dc: $29
    db $e4                                        ; $72dd: $e4
    nop                                           ; $72de: $00
    db $fc                                        ; $72df: $fc
    dec b                                         ; $72e0: $05
    nop                                           ; $72e1: $00
    ld sp, hl                                     ; $72e2: $f9
    ld [hl+], a                                   ; $72e3: $22
    ld a, [c]                                     ; $72e4: $f2
    ld h, h                                       ; $72e5: $64
    xor b                                         ; $72e6: $a8
    inc c                                         ; $72e7: $0c
    and d                                         ; $72e8: $a2
    adc [hl]                                      ; $72e9: $8e
    nop                                           ; $72ea: $00
    ld h, d                                       ; $72eb: $62
    rrca                                          ; $72ec: $0f
    db $fc                                        ; $72ed: $fc
    ld a, d                                       ; $72ee: $7a
    ld hl, sp+$05                                 ; $72ef: $f8 $05
    inc bc                                        ; $72f1: $03
    nop                                           ; $72f2: $00
    nop                                           ; $72f3: $00
    rlca                                          ; $72f4: $07
    ld a, d                                       ; $72f5: $7a
    ld a, [hl]                                    ; $72f6: $7e
    cp a                                          ; $72f7: $bf
    ld a, h                                       ; $72f8: $7c
    sbc [hl]                                      ; $72f9: $9e
    dec c                                         ; $72fa: $0d
    adc h                                         ; $72fb: $8c
    nop                                           ; $72fc: $00
    inc c                                         ; $72fd: $0c
    ld l, l                                       ; $72fe: $6d
    ld bc, $571c                                  ; $72ff: $01 $1c $57
    rra                                           ; $7302: $1f
    rrca                                          ; $7303: $0f
    ld h, $00                                     ; $7304: $26 $00
    ld c, $2d                                     ; $7306: $0e $2d
    ld h, e                                       ; $7308: $63
    add hl, hl                                    ; $7309: $29
    pop bc                                        ; $730a: $c1
    jp nz, $8040                                  ; $730b: $c2 $40 $80

    nop                                           ; $730e: $00
    adc h                                         ; $730f: $8c
    adc e                                         ; $7310: $8b
    ld a, a                                       ; $7311: $7f
    nop                                           ; $7312: $00
    ccf                                           ; $7313: $3f
    nop                                           ; $7314: $00
    rra                                           ; $7315: $1f
    nop                                           ; $7316: $00
    nop                                           ; $7317: $00
    ld h, a                                       ; $7318: $67
    ldh [$f0], a                                  ; $7319: $e0 $f0
    add c                                         ; $731b: $81
    adc h                                         ; $731c: $8c
    nop                                           ; $731d: $00
    nop                                           ; $731e: $00
    ld b, $00                                     ; $731f: $06 $00
    ldh [$c2], a                                  ; $7321: $e0 $c2
    jr c, jr_0ab_72d5                             ; $7323: $38 $b0

    jr c, jr_0ab_72d7                             ; $7325: $38 $b0

    jr nc, @-$7e                                  ; $7327: $30 $80

    nop                                           ; $7329: $00
    ld [hl], b                                    ; $732a: $70
    ld b, b                                       ; $732b: $40
    ccf                                           ; $732c: $3f
    ld c, a                                       ; $732d: $4f
    ccf                                           ; $732e: $3f
    ld c, a                                       ; $732f: $4f
    ld h, b                                       ; $7330: $60
    ret nz                                        ; $7331: $c0

    nop                                           ; $7332: $00
    ld h, b                                       ; $7333: $60
    ret nz                                        ; $7334: $c0

    add hl, de                                    ; $7335: $19
    rla                                           ; $7336: $17
    pop hl                                        ; $7337: $e1
    db $ec                                        ; $7338: $ec
    ldh [$e9], a                                  ; $7339: $e0 $e9

jr_0ab_733b:
    nop                                           ; $733b: $00
    dec bc                                        ; $733c: $0b
    jp hl                                         ; $733d: $e9


    dec bc                                        ; $733e: $0b
    db $e3                                        ; $733f: $e3
    rlca                                          ; $7340: $07
    dec de                                        ; $7341: $1b
    inc bc                                        ; $7342: $03
    rrca                                          ; $7343: $0f
    nop                                           ; $7344: $00
    inc bc                                        ; $7345: $03
    dec b                                         ; $7346: $05
    ld [c], a                                     ; $7347: $e2
    sbc h                                         ; $7348: $9c
    adc c                                         ; $7349: $89
    cp b                                          ; $734a: $b8
    sub e                                         ; $734b: $93
    di                                            ; $734c: $f3
    nop                                           ; $734d: $00
    ld h, $e3                                     ; $734e: $26 $e3
    ld l, h                                       ; $7350: $6c
    call nz, Call_000_01e8                        ; $7351: $c4 $e8 $01
    ldh a, [rNR13]                                ; $7354: $f0 $13
    nop                                           ; $7356: $00
    rst $20                                       ; $7357: $e7
    rlca                                          ; $7358: $07
    ld h, b                                       ; $7359: $60
    ld bc, $23c3                                  ; $735a: $01 $c3 $23
    rlca                                          ; $735d: $07
    rst $00                                       ; $735e: $c7
    nop                                           ; $735f: $00
    nop                                           ; $7360: $00
    ld [$ae70], sp                                ; $7361: $08 $70 $ae
    ldh [$d8], a                                  ; $7364: $e0 $d8
    ldh [rNR23], a                                ; $7366: $e0 $18
    nop                                           ; $7368: $00
    jr nc, jr_0ab_733b                            ; $7369: $30 $d0

    ldh [$2c], a                                  ; $736b: $e0 $2c
    ld b, $08                                     ; $736d: $06 $08
    dec h                                         ; $736f: $25
    dec h                                         ; $7370: $25
    nop                                           ; $7371: $00
    rlca                                          ; $7372: $07
    ld [hl], b                                    ; $7373: $70
    ld a, b                                       ; $7374: $78
    inc b                                         ; $7375: $04
    ld [bc], a                                    ; $7376: $02
    ld b, e                                       ; $7377: $43
    inc bc                                        ; $7378: $03
    nop                                           ; $7379: $00
    nop                                           ; $737a: $00
    ld [hl], a                                    ; $737b: $77
    cp $20                                        ; $737c: $fe $20
    ld h, a                                       ; $737e: $67
    ld [hl], b                                    ; $737f: $70
    ld h, a                                       ; $7380: $67
    add a                                         ; $7381: $87
    ld [hl], a                                    ; $7382: $77
    nop                                           ; $7383: $00
    rrca                                          ; $7384: $0f
    rlca                                          ; $7385: $07
    rrca                                          ; $7386: $0f
    db $10                                        ; $7387: $10
    rlca                                          ; $7388: $07
    ld a, e                                       ; $7389: $7b
    ld e, $19                                     ; $738a: $1e $19
    nop                                           ; $738c: $00
    sbc b                                         ; $738d: $98
    sub a                                         ; $738e: $97
    ld [de], a                                    ; $738f: $12
    ldh [$89], a                                  ; $7390: $e0 $89
    ld [hl], c                                    ; $7392: $71
    db $fc                                        ; $7393: $fc
    add c                                         ; $7394: $81
    nop                                           ; $7395: $00
    cp h                                          ; $7396: $bc
    and c                                         ; $7397: $a1
    call c, $d881                                 ; $7398: $dc $81 $d8
    jp $c1e2                                      ; $739b: $c3 $e2 $c1


    ld [$c3e8], sp                                ; $739e: $08 $e8 $c3
    ld h, b                                       ; $73a1: $60
    ldh [$4c], a                                  ; $73a2: $e0 $4c
    ld [bc], a                                    ; $73a4: $02
    ret nz                                        ; $73a5: $c0

    add b                                         ; $73a6: $80
    nop                                           ; $73a7: $00
    ld h, b                                       ; $73a8: $60
    add b                                         ; $73a9: $80
    cp [hl]                                       ; $73aa: $be
    ld bc, $0004                                  ; $73ab: $01 $04 $00
    nop                                           ; $73ae: $00
    ld bc, $0207                                  ; $73af: $01 $07 $02
    ld bc, $a1c0                                  ; $73b2: $01 $c0 $a1
    add hl, bc                                    ; $73b5: $09
    xor b                                         ; $73b6: $a8
    ld a, [hl+]                                   ; $73b7: $2a
    db $e4                                        ; $73b8: $e4
    rrca                                          ; $73b9: $0f
    ld [c], a                                     ; $73ba: $e2
    db $ec                                        ; $73bb: $ec
    call nz, $00c8                                ; $73bc: $c4 $c8 $00
    nop                                           ; $73bf: $00
    inc c                                         ; $73c0: $0c
    ld [hl], b                                    ; $73c1: $70

jr_0ab_73c2:
    ld h, b                                       ; $73c2: $60
    ld a, b                                       ; $73c3: $78
    rra                                           ; $73c4: $1f
    ld a, $07                                     ; $73c5: $3e $07
    nop                                           ; $73c7: $00
    add hl, sp                                    ; $73c8: $39
    rlca                                          ; $73c9: $07
    ldh [$60], a                                  ; $73ca: $e0 $60
    rst $38                                       ; $73cc: $ff
    ret nz                                        ; $73cd: $c0

    jr c, jr_0ab_73f7                             ; $73ce: $38 $27

    jr nz, jr_0ab_73c2                            ; $73d0: $20 $f0

    rst $08                                       ; $73d2: $cf
    db $ed                                        ; $73d3: $ed
    ld bc, $f070                                  ; $73d4: $01 $70 $f0
    rst $28                                       ; $73d7: $ef
    rra                                           ; $73d8: $1f
    ld hl, sp+$00                                 ; $73d9: $f8 $00
    pop bc                                        ; $73db: $c1
    ldh a, [rP1]                                  ; $73dc: $f0 $00
    add c                                         ; $73de: $81
    ld a, b                                       ; $73df: $78
    cp b                                          ; $73e0: $b8
    ld e, $e8                                     ; $73e1: $1e $e8
    nop                                           ; $73e3: $00
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    db $dd                                        ; $73e6: $dd
    ld a, $63                                     ; $73e7: $3e $63
    and d                                         ; $73e9: $a2
    ld h, e                                       ; $73ea: $63
    and d                                         ; $73eb: $a2
    nop                                           ; $73ec: $00
    ld bc, $8c97                                  ; $73ed: $01 $97 $8c
    add $c1                                       ; $73f0: $c6 $c1
    rrca                                          ; $73f2: $0f
    ld [hl], b                                    ; $73f3: $70
    ld b, b                                       ; $73f4: $40
    nop                                           ; $73f5: $00
    nop                                           ; $73f6: $00

jr_0ab_73f7:
    nop                                           ; $73f7: $00
    ld sp, hl                                     ; $73f8: $f9
    rlca                                          ; $73f9: $07
    inc a                                         ; $73fa: $3c
    dec sp                                        ; $73fb: $3b
    inc a                                         ; $73fc: $3c
    dec sp                                        ; $73fd: $3b
    ld bc, $e107                                  ; $73fe: $01 $07 $e1
    rlca                                          ; $7401: $07
    ld [c], a                                     ; $7402: $e2
    ld b, $f6                                     ; $7403: $06 $f6
    ld c, $96                                     ; $7405: $0e $96
    nop                                           ; $7407: $00
    jr jr_0ab_7478                                ; $7408: $18 $6e

    ldh a, [$3c]                                  ; $740a: $f0 $3c
    ld [bc], a                                    ; $740c: $02
    nop                                           ; $740d: $00
    nop                                           ; $740e: $00
    ld l, e                                       ; $740f: $6b
    db $10                                        ; $7410: $10
    inc bc                                        ; $7411: $03
    ld [hl], c                                    ; $7412: $71
    ld [bc], a                                    ; $7413: $02
    ld h, b                                       ; $7414: $60
    nop                                           ; $7415: $00
    ld bc, $23f8                                  ; $7416: $01 $f8 $23
    nop                                           ; $7419: $00
    inc bc                                        ; $741a: $03
    ld bc, $0f00                                  ; $741b: $01 $00 $0f
    rra                                           ; $741e: $1f
    nop                                           ; $741f: $00
    db $10                                        ; $7420: $10
    dec de                                        ; $7421: $1b
    dec e                                         ; $7422: $1d
    sub $e9                                       ; $7423: $d6 $e9
    inc [hl]                                      ; $7425: $34
    inc e                                         ; $7426: $1c
    ld b, b                                       ; $7427: $40
    nop                                           ; $7428: $00
    ld a, [hl]                                    ; $7429: $7e
    cp $7f                                        ; $742a: $fe $7f
    rst $20                                       ; $742c: $e7
    nop                                           ; $742d: $00
    rst $18                                       ; $742e: $df
    ld b, $39                                     ; $742f: $06 $39
    ld [$343f], sp                                ; $7431: $08 $3f $34
    inc bc                                        ; $7434: $03
    db $db                                        ; $7435: $db
    ccf                                           ; $7436: $3f
    jr nz, jr_0ab_7479                            ; $7437: $20 $40

    add b                                         ; $7439: $80
    nop                                           ; $743a: $00
    ld bc, $f0e0                                  ; $743b: $01 $e0 $f0
    ret nz                                        ; $743e: $c0

    ld e, h                                       ; $743f: $5c
    ret nz                                        ; $7440: $c0

    ld l, $e0                                     ; $7441: $2e $e0
    ld d, b                                       ; $7443: $50
    ld hl, sp-$70                                 ; $7444: $f8 $90
    ld [hl], d                                    ; $7446: $72
    ld c, b                                       ; $7447: $48
    ld bc, $0503                                  ; $7448: $01 $03 $05
    ld [$0102], sp                                ; $744b: $08 $02 $01
    ld [$0006], sp                                ; $744e: $08 $06 $00
    ld [de], a                                    ; $7451: $12
    ld c, $38                                     ; $7452: $0e $38
    add hl, de                                    ; $7454: $19
    ldh a, [$37]                                  ; $7455: $f0 $37
    ld l, a                                       ; $7457: $6f
    ldh [rP1], a                                  ; $7458: $e0 $00
    dec l                                         ; $745a: $2d
    ld d, d                                       ; $745b: $52
    ld c, l                                       ; $745c: $4d
    ld l, l                                       ; $745d: $6d
    adc h                                         ; $745e: $8c
    or h                                          ; $745f: $b4
    db $10                                        ; $7460: $10
    and b                                         ; $7461: $a0
    nop                                           ; $7462: $00
    ld h, e                                       ; $7463: $63
    add e                                         ; $7464: $83
    ld l, b                                       ; $7465: $68
    inc hl                                        ; $7466: $23
    jr nc, @+$19                                  ; $7467: $30 $17

    ld b, e                                       ; $7469: $43
    ccf                                           ; $746a: $3f
    nop                                           ; $746b: $00
    ret                                           ; $746c: $c9


    nop                                           ; $746d: $00
    inc d                                         ; $746e: $14
    and b                                         ; $746f: $a0
    inc bc                                        ; $7470: $03
    or b                                          ; $7471: $b0
    add hl, bc                                    ; $7472: $09
    stop                                          ; $7473: $10 $00
    inc b                                         ; $7475: $04
    add hl, de                                    ; $7476: $19
    ld [c], a                                     ; $7477: $e2

jr_0ab_7478:
    db $ed                                        ; $7478: $ed

jr_0ab_7479:
    add h                                         ; $7479: $84
    add d                                         ; $747a: $82
    ld [hl+], a                                   ; $747b: $22
    jr nz, jr_0ab_747e                            ; $747c: $20 $00

jr_0ab_747e:
    rst $20                                       ; $747e: $e7
    ldh a, [$63]                                  ; $747f: $f0 $63
    ldh a, [$7b]                                  ; $7481: $f0 $7b
    inc bc                                        ; $7483: $03
    ld [$00b0], sp                                ; $7484: $08 $b0 $00
    ret nc                                        ; $7487: $d0

    ld hl, sp-$30                                 ; $7488: $f8 $d0
    ld a, b                                       ; $748a: $78

jr_0ab_748b:
    sub b                                         ; $748b: $90
    ld l, b                                       ; $748c: $68
    or b                                          ; $748d: $b0
    ld l, b                                       ; $748e: $68
    nop                                           ; $748f: $00
    nop                                           ; $7490: $00
    nop                                           ; $7491: $00
    ret nz                                        ; $7492: $c0

    nop                                           ; $7493: $00
    ldh [$80], a                                  ; $7494: $e0 $80
    ld a, b                                       ; $7496: $78
    ret nz                                        ; $7497: $c0

    nop                                           ; $7498: $00
    inc e                                         ; $7499: $1c
    ld h, b                                       ; $749a: $60
    adc [hl]                                      ; $749b: $8e
    sub b                                         ; $749c: $90
    rrca                                          ; $749d: $0f
    add sp, $07                                   ; $749e: $e8 $07
    db $f4                                        ; $74a0: $f4
    add b                                         ; $74a1: $80
    ret nc                                        ; $74a2: $d0

    ld d, b                                       ; $74a3: $50
    add b                                         ; $74a4: $80
    ret nz                                        ; $74a5: $c0

    nop                                           ; $74a6: $00
    ld bc, $0706                                  ; $74a7: $01 $06 $07
    ld [$0f00], sp                                ; $74aa: $08 $00 $0f
    inc de                                        ; $74ad: $13
    ld c, h                                       ; $74ae: $4c
    scf                                           ; $74af: $37
    call nc, $8827                                ; $74b0: $d4 $27 $88
    ld l, e                                       ; $74b3: $6b
    nop                                           ; $74b4: $00
    adc h                                         ; $74b5: $8c
    ld l, l                                       ; $74b6: $6d
    pop hl                                        ; $74b7: $e1
    rrca                                          ; $74b8: $0f
    nop                                           ; $74b9: $00
    add b                                         ; $74ba: $80
    ld b, b                                       ; $74bb: $40
    ccf                                           ; $74bc: $3f
    nop                                           ; $74bd: $00
    ccf                                           ; $74be: $3f
    rst $38                                       ; $74bf: $ff
    cp $fe                                        ; $74c0: $fe $fe
    db $fc                                        ; $74c2: $fc
    sbc l                                         ; $74c3: $9d
    cp d                                          ; $74c4: $ba
    cp c                                          ; $74c5: $b9
    nop                                           ; $74c6: $00
    call nz, $07c3                                ; $74c7: $c4 $c3 $07
    di                                            ; $74ca: $f3
    adc c                                         ; $74cb: $89
    rst $38                                       ; $74cc: $ff
    rra                                           ; $74cd: $1f
    ld d, b                                       ; $74ce: $50
    nop                                           ; $74cf: $00
    rra                                           ; $74d0: $1f
    ld d, b                                       ; $74d1: $50
    db $10                                        ; $74d2: $10
    sbc a                                         ; $74d3: $9f
    daa                                           ; $74d4: $27
    jr z, jr_0ab_748b                             ; $74d5: $28 $b4

    adc a                                         ; $74d7: $8f
    nop                                           ; $74d8: $00
    ld [hl-], a                                   ; $74d9: $32
    ld h, a                                       ; $74da: $67
    ld c, d                                       ; $74db: $4a
    inc hl                                        ; $74dc: $23
    ld a, b                                       ; $74dd: $78
    ld bc, $01fe                                  ; $74de: $01 $fe $01
    nop                                           ; $74e1: $00
    rst $38                                       ; $74e2: $ff
    db $fd                                        ; $74e3: $fd
    add [hl]                                      ; $74e4: $86
    add l                                         ; $74e5: $85
    db $fc                                        ; $74e6: $fc
    sub e                                         ; $74e7: $93
    ld hl, sp+$26                                 ; $74e8: $f8 $26
    nop                                           ; $74ea: $00
    ldh a, [$3a]                                  ; $74eb: $f0 $3a
    ret nz                                        ; $74ed: $c0

    or $d4                                        ; $74ee: $f6 $d4
    db $ec                                        ; $74f0: $ec
    call nc, Call_000_006c                        ; $74f1: $d4 $6c $00
    jp nc, Jump_0ab_623e                          ; $74f4: $d2 $3e $62

    sbc $d4                                       ; $74f7: $de $d4
    ret z                                         ; $74f9: $c8

    call z, Call_000_0021                         ; $74fa: $cc $21 $00
    inc bc                                        ; $74fd: $03
    or e                                          ; $74fe: $b3
    rla                                           ; $74ff: $17
    sub c                                         ; $7500: $91
    ld hl, sp-$07                                 ; $7501: $f8 $f9
    cp $00                                        ; $7503: $fe $00
    inc h                                         ; $7505: $24
    adc $31                                       ; $7506: $ce $31
    ld [hl], $01                                  ; $7508: $36 $01
    rst $38                                       ; $750a: $ff
    add b                                         ; $750b: $80
    ld e, a                                       ; $750c: $5f
    nop                                           ; $750d: $00
    ret nz                                        ; $750e: $c0

    ld h, b                                       ; $750f: $60
    nop                                           ; $7510: $00
    ldh [$80], a                                  ; $7511: $e0 $80
    ld h, b                                       ; $7513: $60
    ld hl, sp+$70                                 ; $7514: $f8 $70
    inc c                                         ; $7516: $0c
    sub b                                         ; $7517: $90
    adc [hl]                                      ; $7518: $8e
    nop                                           ; $7519: $00
    rrca                                          ; $751a: $0f
    ld [c], a                                     ; $751b: $e2
    rlca                                          ; $751c: $07
    ld a, [c]                                     ; $751d: $f2
    rlca                                          ; $751e: $07
    di                                            ; $751f: $f3
    rlca                                          ; $7520: $07
    ld a, [c]                                     ; $7521: $f2
    nop                                           ; $7522: $00
    ld h, c                                       ; $7523: $61
    rrca                                          ; $7524: $0f
    scf                                           ; $7525: $37
    ld b, a                                       ; $7526: $47
    ld [hl], a                                    ; $7527: $77
    rlca                                          ; $7528: $07
    jr nc, jr_0ab_7552                            ; $7529: $30 $27

    nop                                           ; $752b: $00
    jr c, jr_0ab_7551                             ; $752c: $38 $23

    add hl, sp                                    ; $752e: $39
    pop bc                                        ; $752f: $c1
    add hl, de                                    ; $7530: $19
    pop hl                                        ; $7531: $e1
    ld a, [$00e3]                                 ; $7532: $fa $e3 $00
    ld c, $e6                                     ; $7535: $0e $e6

jr_0ab_7537:
    rst $28                                       ; $7537: $ef
    di                                            ; $7538: $f3
    ld l, $33                                     ; $7539: $2e $33
    ld [hl], a                                    ; $753b: $77
    ld c, [hl]                                    ; $753c: $4e
    nop                                           ; $753d: $00
    and $9d                                       ; $753e: $e6 $9d
    jp nz, $8231                                  ; $7540: $c2 $31 $82

    ld [hl], c                                    ; $7543: $71
    add d                                         ; $7544: $82
    ld h, c                                       ; $7545: $61
    nop                                           ; $7546: $00
    adc c                                         ; $7547: $89
    ld h, l                                       ; $7548: $65
    adc c                                         ; $7549: $89
    ld b, a                                       ; $754a: $47
    inc de                                        ; $754b: $13
    rst $08                                       ; $754c: $cf
    ret                                           ; $754d: $c9


    ret c                                         ; $754e: $d8

    nop                                           ; $754f: $00
    add a                                         ; $7550: $87

jr_0ab_7551:
    sub b                                         ; $7551: $90

jr_0ab_7552:
    sub e                                         ; $7552: $93
    sbc h                                         ; $7553: $9c
    sbc b                                         ; $7554: $98
    sub b                                         ; $7555: $90
    and b                                         ; $7556: $a0
    sbc a                                         ; $7557: $9f
    nop                                           ; $7558: $00
    jp z, Jump_000_2f04                           ; $7559: $ca $04 $2f

    rra                                           ; $755c: $1f
    rrca                                          ; $755d: $0f
    nop                                           ; $755e: $00
    ldh a, [rIF]                                  ; $755f: $f0 $0f
    nop                                           ; $7561: $00
    ret nz                                        ; $7562: $c0

    ccf                                           ; $7563: $3f
    rrca                                          ; $7564: $0f
    or b                                          ; $7565: $b0
    ldh [$90], a                                  ; $7566: $e0 $90
    rst $38                                       ; $7568: $ff
    ld h, b                                       ; $7569: $60
    nop                                           ; $756a: $00
    inc de                                        ; $756b: $13
    ret c                                         ; $756c: $d8

    add hl, bc                                    ; $756d: $09
    ld c, h                                       ; $756e: $4c
    ld h, $84                                     ; $756f: $26 $84
    inc de                                        ; $7571: $13
    jp Jump_000_3900                              ; $7572: $c3 $00 $39


    ld h, c                                       ; $7575: $61
    inc e                                         ; $7576: $1c
    ld [hl], b                                    ; $7577: $70
    adc h                                         ; $7578: $8c
    jr c, jr_0ab_75c1                             ; $7579: $38 $46

    inc e                                         ; $757b: $1c
    nop                                           ; $757c: $00
    ldh [rNR41], a                                ; $757d: $e0 $20
    ld [hl], b                                    ; $757f: $70
    sub b                                         ; $7580: $90
    ldh a, [$38]                                  ; $7581: $f0 $38
    ld a, b                                       ; $7583: $78
    inc e                                         ; $7584: $1c
    nop                                           ; $7585: $00
    inc [hl]                                      ; $7586: $34
    adc h                                         ; $7587: $8c
    ld a, [de]                                    ; $7588: $1a
    add $e8                                       ; $7589: $c6 $e8
    ld [c], a                                     ; $758b: $e2
    halt                                          ; $758c: $76
    ld [hl], e                                    ; $758d: $73
    nop                                           ; $758e: $00
    ld b, $f2                                     ; $758f: $06 $f2
    ld c, $e2                                     ; $7591: $0e $e2
    ld c, $e2                                     ; $7593: $0e $e2
    inc c                                         ; $7595: $0c
    ldh [rP1], a                                  ; $7596: $e0 $00
    inc e                                         ; $7598: $1c
    inc de                                        ; $7599: $13
    inc e                                         ; $759a: $1c
    inc de                                        ; $759b: $13
    jr jr_0ab_75b5                                ; $759c: $18 $17

    jr jr_0ab_7537                                ; $759e: $18 $97

    nop                                           ; $75a0: $00
    db $fc                                        ; $75a1: $fc
    pop hl                                        ; $75a2: $e1
    inc e                                         ; $75a3: $1c
    dec b                                         ; $75a4: $05
    inc c                                         ; $75a5: $0c
    dec b                                         ; $75a6: $05
    db $fc                                        ; $75a7: $fc
    ld a, [c]                                     ; $75a8: $f2
    add b                                         ; $75a9: $80
    ld [bc], a                                    ; $75aa: $02
    nop                                           ; $75ab: $00
    ld a, [$fbfc]                                 ; $75ac: $fa $fc $fb
    ld b, $03                                     ; $75af: $06 $03
    add h                                         ; $75b1: $84
    ld h, e                                       ; $75b2: $63
    nop                                           ; $75b3: $00
    add l                                         ; $75b4: $85

jr_0ab_75b5:
    and $86                                       ; $75b5: $e6 $86
    push hl                                       ; $75b7: $e5
    db $e4                                        ; $75b8: $e4
    ld h, e                                       ; $75b9: $63
    db $e4                                        ; $75ba: $e4
    inc hl                                        ; $75bb: $23
    nop                                           ; $75bc: $00
    ldh [rNR44], a                                ; $75bd: $e0 $23
    ld h, b                                       ; $75bf: $60
    inc hl                                        ; $75c0: $23

jr_0ab_75c1:
    ld h, b                                       ; $75c1: $60
    ld b, e                                       ; $75c2: $43
    ret nz                                        ; $75c3: $c0

    ld a, $00                                     ; $75c4: $3e $00
    db $fc                                        ; $75c6: $fc
    nop                                           ; $75c7: $00
    db $fd                                        ; $75c8: $fd
    nop                                           ; $75c9: $00
    add $3f                                       ; $75ca: $c6 $3f
    inc h                                         ; $75cc: $24

jr_0ab_75cd:
    rst $10                                       ; $75cd: $d7
    nop                                           ; $75ce: $00
    cp $f0                                        ; $75cf: $fe $f0
    ld sp, hl                                     ; $75d1: $f9
    or $07                                        ; $75d2: $f6 $07
    rrca                                          ; $75d4: $0f
    ld a, a                                       ; $75d5: $7f
    nop                                           ; $75d6: $00
    ld b, b                                       ; $75d7: $40
    rst $38                                       ; $75d8: $ff
    ld [bc], a                                    ; $75d9: $02
    nop                                           ; $75da: $00
    db $fc                                        ; $75db: $fc
    nop                                           ; $75dc: $00
    cp $00                                        ; $75dd: $fe $00
    ld a, a                                       ; $75df: $7f
    add b                                         ; $75e0: $80
    nop                                           ; $75e1: $00
    ld a, [hl]                                    ; $75e2: $7e
    ld e, [hl]                                    ; $75e3: $5e
    ld a, $ae                                     ; $75e4: $3e $ae
    inc e                                         ; $75e6: $1c
    call z, $d61e                                 ; $75e7: $cc $1e $d6
    nop                                           ; $75ea: $00
    rra                                           ; $75eb: $1f
    call nz, Call_000_101f                        ; $75ec: $c4 $1f $10
    ld de, $102f                                  ; $75ef: $11 $2f $10
    ld l, a                                       ; $75f2: $6f
    nop                                           ; $75f3: $00
    rst $30                                       ; $75f4: $f7
    nop                                           ; $75f5: $00
    sub $28                                       ; $75f6: $d6 $28
    ccf                                           ; $75f8: $3f
    ld e, [hl]                                    ; $75f9: $5e
    rlca                                          ; $75fa: $07
    ccf                                           ; $75fb: $3f
    nop                                           ; $75fc: $00
    inc c                                         ; $75fd: $0c
    ccf                                           ; $75fe: $3f
    add a                                         ; $75ff: $87
    scf                                           ; $7600: $37
    dec sp                                        ; $7601: $3b
    sbc c                                         ; $7602: $99
    jr c, @+$12                                   ; $7603: $38 $10

    nop                                           ; $7605: $00
    xor b                                         ; $7606: $a8
    ret nc                                        ; $7607: $d0

    ld l, b                                       ; $7608: $68
    sub b                                         ; $7609: $90
    adc b                                         ; $760a: $88
    or b                                          ; $760b: $b0
    adc b                                         ; $760c: $88
    or b                                          ; $760d: $b0
    ld [$8fbf], sp                                ; $760e: $08 $bf $8f
    ccf                                           ; $7611: $3f
    ld c, a                                       ; $7612: $4f
    ld [bc], a                                    ; $7613: $02
    ld [$c060], sp                                ; $7614: $08 $60 $c0
    ld h, b                                       ; $7617: $60
    rlca                                          ; $7618: $07
    ret nz                                        ; $7619: $c0

    ld [bc], a                                    ; $761a: $02
    ld bc, $0303                                  ; $761b: $01 $03 $03
    or c                                          ; $761e: $b1
    ld bc, $01bb                                  ; $761f: $01 $bb $01
    inc b                                         ; $7622: $04
    ld [$0000], sp                                ; $7623: $08 $00 $00
    nop                                           ; $7626: $00
    ld [hl], b                                    ; $7627: $70
    ld b, c                                       ; $7628: $41
    and b                                         ; $7629: $a0
    jr nc, jr_0ab_75cd                            ; $762a: $30 $a1

    jr c, jr_0ab_762e                             ; $762c: $38 $00

jr_0ab_762e:
    inc hl                                        ; $762e: $23
    cp h                                          ; $762f: $bc
    jr nz, @-$43                                  ; $7630: $20 $bb

    pop bc                                        ; $7632: $c1
    add hl, de                                    ; $7633: $19
    pop de                                        ; $7634: $d1
    add hl, de                                    ; $7635: $19
    nop                                           ; $7636: $00
    ret nc                                        ; $7637: $d0

    sbc h                                         ; $7638: $9c
    rlca                                          ; $7639: $07
    dec c                                         ; $763a: $0d
    rra                                           ; $763b: $1f
    jr nc, jr_0ab_765d                            ; $763c: $30 $1f

    call z, Call_0ab_4300                         ; $763e: $cc $00 $43
    scf                                           ; $7641: $37
    ld b, c                                       ; $7642: $41
    daa                                           ; $7643: $27
    ld c, c                                       ; $7644: $49
    ld l, $63                                     ; $7645: $2e $63
    inc c                                         ; $7647: $0c
    nop                                           ; $7648: $00
    ld e, [hl]                                    ; $7649: $5e
    inc e                                         ; $764a: $1c
    sbc [hl]                                      ; $764b: $9e
    ld e, $c8                                     ; $764c: $1e $c8
    ld c, $e1                                     ; $764e: $0e $e1
    ld [hl], c                                    ; $7650: $71
    nop                                           ; $7651: $00
    or $ff                                        ; $7652: $f6 $ff
    rst $38                                       ; $7654: $ff
    sbc c                                         ; $7655: $99
    ld a, [hl]                                    ; $7656: $7e
    ld e, a                                       ; $7657: $5f
    ld b, c                                       ; $7658: $41
    ld c, [hl]                                    ; $7659: $4e
    nop                                           ; $765a: $00
    ld [c], a                                     ; $765b: $e2
    db $ed                                        ; $765c: $ed

jr_0ab_765d:
    cp e                                          ; $765d: $bb
    ld b, l                                       ; $765e: $45
    cp [hl]                                       ; $765f: $be
    ld b, d                                       ; $7660: $42
    db $fc                                        ; $7661: $fc
    inc e                                         ; $7662: $1c
    nop                                           ; $7663: $00
    ldh a, [$f1]                                  ; $7664: $f0 $f1
    add d                                         ; $7666: $82
    ld h, c                                       ; $7667: $61
    ld b, $e1                                     ; $7668: $06 $e1
    inc c                                         ; $766a: $0c
    jp $1800                                      ; $766b: $c3 $00 $18


    add $48                                       ; $766e: $c6 $48
    ld e, b                                       ; $7670: $58
    ret                                           ; $7671: $c9


    ret c                                         ; $7672: $d8

    ret c                                         ; $7673: $d8

    adc c                                         ; $7674: $89
    nop                                           ; $7675: $00
    sbc b                                         ; $7676: $98
    add hl, bc                                    ; $7677: $09
    add hl, hl                                    ; $7678: $29
    ld de, $334b                                  ; $7679: $11 $4b $33
    ld b, e                                       ; $767c: $43
    ld a, b                                       ; $767d: $78
    nop                                           ; $767e: $00
    ld c, e                                       ; $767f: $4b
    ld a, b                                       ; $7680: $78
    ld h, b                                       ; $7681: $60
    ldh [rLCDC], a                                ; $7682: $e0 $40
    add b                                         ; $7684: $80
    ld b, b                                       ; $7685: $40
    ret nz                                        ; $7686: $c0

    ldh a, [$5c]                                  ; $7687: $f0 $5c
    ld bc, $01be                                  ; $7689: $01 $be $01
    inc b                                         ; $768c: $04
    nop                                           ; $768d: $00
    sbc a                                         ; $768e: $9f
    ld [hl], d                                    ; $768f: $72
    ldh [$cc], a                                  ; $7690: $e0 $cc
    ldh [$6c], a                                  ; $7692: $e0 $6c
    nop                                           ; $7694: $00
    ld h, b                                       ; $7695: $60
    inc l                                         ; $7696: $2c
    ld [hl], b                                    ; $7697: $70
    inc d                                         ; $7698: $14
    ld [hl], b                                    ; $7699: $70
    nop                                           ; $769a: $00
    ld a, b                                       ; $769b: $78
    rra                                           ; $769c: $1f
    nop                                           ; $769d: $00
    ld a, $07                                     ; $769e: $3e $07
    add hl, sp                                    ; $76a0: $39
    rlca                                          ; $76a1: $07
    dec e                                         ; $76a2: $1d
    sbc c                                         ; $76a3: $99
    dec a                                         ; $76a4: $3d
    or c                                          ; $76a5: $b1
    ld [$737b], sp                                ; $76a6: $08 $7b $73
    ei                                            ; $76a9: $fb
    rst $30                                       ; $76aa: $f7
    db $ed                                        ; $76ab: $ed
    ld bc, $f070                                  ; $76ac: $01 $70 $f0
    rst $28                                       ; $76af: $ef
    nop                                           ; $76b0: $00
    rra                                           ; $76b1: $1f
    ld hl, sp-$1c                                 ; $76b2: $f8 $e4
    db $eb                                        ; $76b4: $eb
    db $f4                                        ; $76b5: $f4
    di                                            ; $76b6: $f3
    db $f4                                        ; $76b7: $f4
    rst $20                                       ; $76b8: $e7
    nop                                           ; $76b9: $00
    ld hl, sp-$1e                                 ; $76ba: $f8 $e2
    nop                                           ; $76bc: $00
    nop                                           ; $76bd: $00
    db $dd                                        ; $76be: $dd
    ld a, $63                                     ; $76bf: $3e $63
    and d                                         ; $76c1: $a2
    nop                                           ; $76c2: $00
    ld h, e                                       ; $76c3: $63
    and d                                         ; $76c4: $a2
    adc h                                         ; $76c5: $8c
    db $10                                        ; $76c6: $10
    ld [$6130], sp                                ; $76c7: $08 $30 $61
    stop                                          ; $76ca: $10 $00
    ld b, e                                       ; $76cc: $43
    jr nz, jr_0ab_76cf                            ; $76cd: $20 $00

jr_0ab_76cf:
    nop                                           ; $76cf: $00
    ld sp, hl                                     ; $76d0: $f9
    rlca                                          ; $76d1: $07
    inc a                                         ; $76d2: $3c
    dec sp                                        ; $76d3: $3b
    nop                                           ; $76d4: $00
    inc a                                         ; $76d5: $3c
    dec sp                                        ; $76d6: $3b
    ld [hl], $f1                                  ; $76d7: $36 $f1
    ld h, l                                       ; $76d9: $65
    ld a, [c]                                     ; $76da: $f2
    sub [hl]                                      ; $76db: $96
    or $01                                        ; $76dc: $f6 $01
    ld l, $ec                                     ; $76de: $2e $ec
    ld b, $08                                     ; $76e0: $06 $08
    ld l, [hl]                                    ; $76e2: $6e
    ldh a, [$3c]                                  ; $76e3: $f0 $3c
    ld [bc], a                                    ; $76e5: $02
    nop                                           ; $76e6: $00
    add b                                         ; $76e7: $80
    nop                                           ; $76e8: $00
    ld l, e                                       ; $76e9: $6b

    db $10, $03, $8f, $02, $40, $00, $01, $b0, $0f, $00, $10, $0f, $30, $1f, $00, $08
    db $00, $08, $0c, $0c, $06, $02, $02, $00, $01, $02, $fa, $fc, $e4, $21, $e6, $3c
    db $00, $30, $20, $18, $70, $18, $14, $1b, $51, $00, $cb, $c2, $85, $30, $b8, $cd
    db $fc, $4d, $00, $78, $40, $04, $08, $06, $0b, $06, $8b, $00, $0c, $84, $18, $48
    db $30, $50, $61, $20, $84, $50, $48, $78, $00, $84, $f8, $60, $98, $01, $00, $00
    db $02, $01, $04, $02, $0a, $0c, $06, $04, $00, $30, $19, $20, $38, $01, $10, $03
    db $f3, $00, $0e, $ea, $01, $19, $03, $31, $e2, $06, $00, $72, $51, $3a, $28, $13
    db $81, $01, $01, $00, $7c, $f0, $8c, $8e, $7a, $03, $f0, $01, $00, $f9, $01, $f8
    db $01, $f1, $05, $70, $0c, $00, $a0, $8c, $44, $55, $d3, $f6, $6a, $ff, $00, $2d
    db $4e, $22, $45, $24, $4a, $44, $8a, $00, $09, $9c, $89, $bc, $13, $38, $27, $70
    db $00, $8c, $76, $04, $8e, $0c, $84, $00, $c0, $00, $01, $71, $3f, $87, $c0, $78
    db $a7, $e0, $80, $d0, $38, $c0, $00, $bf, $7f, $7f, $7f, $06, $00, $05, $02, $06
    db $03, $06, $0e, $1b, $0e, $00, $3b, $0e, $6b, $07, $6d, $21, $2c, $9a, $00, $06
    db $79, $67, $7d, $53, $3f, $60, $9f, $00, $30, $cf, $18, $e4, $0c, $70, $87, $e4
    db $00, $0c, $cc, $1e, $c2, $1e, $a6, $3e, $88, $00, $38, $fc, $e1, $f6, $c3, $a3
    db $4b, $4f, $00, $c1, $22, $68, $89, $80, $04, $46, $0e, $00, $cc, $3e, $5e, $86
    db $8e, $36, $4f, $2f, $00, $63, $4c, $cf, $9c, $83, $60, $1c, $8f, $00, $fe, $bf
    db $b8, $3f, $07, $27, $80, $99, $00, $c0, $3e, $83, $7d, $03, $fa, $06, $e5, $00
    db $1c, $93, $70, $47, $c0, $9f, $82, $80, $00, $3f, $c0, $8f, $c0, $f0, $50, $98
    db $60, $00, $8c, $60, $86, $60, $86, $61, $85, $20, $00, $2e, $87, $b0, $c7, $d0
    db $c7, $d0, $c3, $00, $d8, $0b, $08, $0a, $09, $09, $0a, $88, $00, $f2, $70, $0f
    db $03, $03, $e0, $20, $c7, $00, $7f, $9e, $79, $24, $e3, $38, $f2, $e3, $00, $6b
    db $f3, $2c, $d3, $1a, $29, $22, $41, $00, $e2, $e6, $35, $86, $05, $13, $74, $07
    db $00, $f1, $0f, $00, $c5, $3a, $83, $7a, $7f, $00, $80, $74, $8e, $f8, $35, $1c
    db $6b, $70, $00, $0f, $7f, $b3, $35, $ec, $33, $6f, $76, $00, $5a, $76, $58, $49
    db $b1, $43, $b3, $7d, $00, $0f, $78, $0d, $b1, $89, $b4, $88, $7e, $00, $c3, $1c
    db $07, $ea, $0e, $f1, $00, $f0, $00, $94, $f0, $9c, $f0, $b8, $e0, $28, $98, $00
    db $78, $10, $d0, $47, $17, $c7, $17, $0d, $00, $0e, $03, $04, $03, $05, $07, $f1
    db $02, $00, $f8, $f8, $f9, $fa, $f9, $03, $05, $78, $00, $e5, $f0, $89, $80, $f1
    db $00, $01, $f2, $00, $f1, $7b, $83, $f8, $00, $f8, $09, $c3, $00, $39, $8d, $07
    db $83, $07, $23, $24, $2a, $00, $0d, $21, $05, $15, $01, $42, $58, $83, $00, $01
    db $90, $60, $f4, $e0, $f8, $f5, $f8, $00, $f0, $f8, $f2, $e2, $f8, $66, $e0, $27
    db $00, $60, $37, $f0, $97, $54, $8b, $4b, $c0, $00, $68, $80, $ec, $f7, $92, $f6
    db $85, $c3, $00, $f0, $81, $f4, $f1, $17, $e1, $67, $0e, $00, $08, $06, $0d, $4f
    db $08, $52, $56, $87, $00, $37, $8f, $2f, $8f, $2f, $0f, $6f, $40, $00, $1f, $40
    db $1f, $c0, $1f, $80, $3f, $03, $01, $07, $fc, $01, $fe, $02, $fe, $00, $02, $08
    db $40, $ff, $3d, $02, $f0, $13, $83, $f9, $07, $f4, $00, $02, $05, $13, $05, $52
    db $5b, $59, $49, $00, $6c, $48, $61, $6a, $05, $70, $02, $7a, $00, $3c, $be, $3f
    db $be, $1f, $ce, $0f, $c3, $00, $e7, $40, $58, $58, $24, $80, $22, $62, $00, $5c
    db $14, $0e, $18, $12, $86, $17, $b9, $00, $15, $ab, $c7, $b0, $85, $73, $f4, $62
    db $00, $e4, $e2, $e5, $0a, $45, $29, $4a, $01, $00, $9f, $80, $5a, $08, $d8, $c1
    db $89, $98, $00, $a9, $e8, $c9, $c8, $0b, $f8, $b8, $12, $00, $38, $12, $80, $3f
    db $80, $3f, $7f, $00, $c0, $02, $18, $9c, $8a, $24, $6e, $36, $23, $13, $1d, $02
    db $86, $89, $c0, $c0, $1f, $c0, $e3, $01, $00, $00, $0b, $7b, $15, $39, $b2, $84
    db $5b, $98, $40, $00, $8e, $10, $00, $00, $3f, $ac, $28, $08, $08, $00, $00, $fc
    db $8f, $10, $18, $ff, $00, $14, $01, $ba, $28, $70, $73, $c3, $c6, $b6, $10, $28
    db $00, $46, $36, $14, $e4, $30, $24, $60, $4c, $06, $08, $03, $f8, $03, $03, $34
    db $20, $04, $4b

    db $10                                        ; $79dd: $10
    inc bc                                        ; $79de: $03
    add b                                         ; $79df: $80
    ld [bc], a                                    ; $79e0: $02
    ld b, h                                       ; $79e1: $44
    nop                                           ; $79e2: $00
    ld bc, $fe30                                  ; $79e3: $01 $30 $fe
    nop                                           ; $79e6: $00
    db $fc                                        ; $79e7: $fc
    dec c                                         ; $79e8: $0d
    db $10                                        ; $79e9: $10
    rst $38                                       ; $79ea: $ff
    nop                                           ; $79eb: $00
    nop                                           ; $79ec: $00
    ldh [rP1], a                                  ; $79ed: $e0 $00
    rra                                           ; $79ef: $1f
    rlca                                          ; $79f0: $07
    ld c, a                                       ; $79f1: $4f
    jr nc, @-$7e                                  ; $79f2: $30 $80

    nop                                           ; $79f4: $00
    nop                                           ; $79f5: $00
    ld a, [hl]                                    ; $79f6: $7e
    ld a, a                                       ; $79f7: $7f
    nop                                           ; $79f8: $00
    cp $18                                        ; $79f9: $fe $18
    db $d3                                        ; $79fb: $d3
    jp hl                                         ; $79fc: $e9


    push hl                                       ; $79fd: $e5
    nop                                           ; $79fe: $00
    inc [hl]                                      ; $79ff: $34
    ld [hl-], a                                   ; $7a00: $32
    jp nz, $f2c2                                  ; $7a01: $c2 $c2 $f2

    dec sp                                        ; $7a04: $3b
    dec de                                        ; $7a05: $1b
    jr c, jr_0ab_7a08                             ; $7a06: $38 $00

jr_0ab_7a08:
    ld c, $1e                                     ; $7a08: $0e $1e
    ld a, h                                       ; $7a0a: $7c
    ld a, [c]                                     ; $7a0b: $f2
    db $e4                                        ; $7a0c: $e4
    db $e4                                        ; $7a0d: $e4
    pop bc                                        ; $7a0e: $c1
    ret nc                                        ; $7a0f: $d0

    nop                                           ; $7a10: $00
    ld hl, $4022                                  ; $7a11: $21 $22 $40
    ld b, e                                       ; $7a14: $43
    ld l, $0d                                     ; $7a15: $2e $0d
    ld c, $6d                                     ; $7a17: $0e $6d
    nop                                           ; $7a19: $00
    adc [hl]                                      ; $7a1a: $8e
    call $c607                                    ; $7a1b: $cd $07 $c6
    rra                                           ; $7a1e: $1f
    rra                                           ; $7a1f: $1f
    rst $08                                       ; $7a20: $cf
    ld l, a                                       ; $7a21: $6f
    nop                                           ; $7a22: $00
    adc a                                         ; $7a23: $8f
    ld l, a                                       ; $7a24: $6f
    db $dd                                        ; $7a25: $dd
    dec e                                         ; $7a26: $1d
    ld e, h                                       ; $7a27: $5c
    sbc h                                         ; $7a28: $9c
    ld e, h                                       ; $7a29: $5c
    sbc l                                         ; $7a2a: $9d
    nop                                           ; $7a2b: $00
    ret nz                                        ; $7a2c: $c0

    add b                                         ; $7a2d: $80
    ldh [$c8], a                                  ; $7a2e: $e0 $c8
    nop                                           ; $7a30: $00
    rst $38                                       ; $7a31: $ff
    db $10                                        ; $7a32: $10
    rst $08                                       ; $7a33: $cf
    nop                                           ; $7a34: $00
    nop                                           ; $7a35: $00
    rst $08                                       ; $7a36: $cf
    db $10                                        ; $7a37: $10
    call nz, Call_0ab_6454                        ; $7a38: $c4 $54 $64
    jr nc, jr_0ab_7a3f                            ; $7a3b: $30 $02

    dec c                                         ; $7a3d: $0d
    dec h                                         ; $7a3e: $25

jr_0ab_7a3f:
    ld de, $1028                                  ; $7a3f: $11 $28 $10
    ld h, b                                       ; $7a42: $60
    jr c, jr_0ab_7a9f                             ; $7a43: $38 $5a

    ld [$0f1f], sp                                ; $7a45: $08 $1f $0f
    ld c, b                                       ; $7a48: $48
    add b                                         ; $7a49: $80
    ld [hl], l                                    ; $7a4a: $75
    db $10                                        ; $7a4b: $10
    ld bc, $f8fc                                  ; $7a4c: $01 $fc $f8
    ei                                            ; $7a4f: $fb
    pop af                                        ; $7a50: $f1
    or $0e                                        ; $7a51: $f6 $0e
    nop                                           ; $7a53: $00
    db $ec                                        ; $7a54: $ec
    jr @-$26                                      ; $7a55: $18 $d8

    jr jr_0ab_7a62                                ; $7a57: $18 $09

    jr nc, jr_0ab_7a62                            ; $7a59: $30 $07

    adc a                                         ; $7a5b: $8f
    nop                                           ; $7a5c: $00
    cpl                                           ; $7a5d: $2f
    db $fc                                        ; $7a5e: $fc
    add d                                         ; $7a5f: $82
    ld h, b                                       ; $7a60: $60
    xor l                                         ; $7a61: $ad

jr_0ab_7a62:
    add d                                         ; $7a62: $82
    add l                                         ; $7a63: $85
    rlca                                          ; $7a64: $07
    nop                                           ; $7a65: $00
    inc h                                         ; $7a66: $24
    rrca                                          ; $7a67: $0f
    xor $0d                                       ; $7a68: $ee $0d
    db $ec                                        ; $7a6a: $ec
    ld c, $8e                                     ; $7a6b: $0e $8e
    jr nc, jr_0ab_7a6f                            ; $7a6d: $30 $00

jr_0ab_7a6f:
    ld [hl], c                                    ; $7a6f: $71
    ld b, $c7                                     ; $7a70: $06 $c7
    ld d, e                                       ; $7a72: $53
    jp Jump_000_1880                              ; $7a73: $c3 $80 $18


    add l                                         ; $7a76: $85
    nop                                           ; $7a77: $00
    inc e                                         ; $7a78: $1c
    adc b                                         ; $7a79: $88
    jr jr_0ab_7a08                                ; $7a7a: $18 $8c

    inc e                                         ; $7a7c: $1c
    sbc [hl]                                      ; $7a7d: $9e
    add b                                         ; $7a7e: $80
    adc [hl]                                      ; $7a7f: $8e
    nop                                           ; $7a80: $00
    sub b                                         ; $7a81: $90
    jp nz, $e2f0                                  ; $7a82: $c2 $f0 $e2

    ld e, d                                       ; $7a85: $5a
    ld [bc], a                                    ; $7a86: $02

jr_0ab_7a87:
    ld a, [bc]                                    ; $7a87: $0a
    pop bc                                        ; $7a88: $c1
    nop                                           ; $7a89: $00
    dec [hl]                                      ; $7a8a: $35
    ld bc, $3105                                  ; $7a8b: $01 $05 $31
    dec d                                         ; $7a8e: $15
    nop                                           ; $7a8f: $00
    inc b                                         ; $7a90: $04
    db $e3                                        ; $7a91: $e3
    nop                                           ; $7a92: $00
    dec de                                        ; $7a93: $1b
    ld h, e                                       ; $7a94: $63
    ld e, a                                       ; $7a95: $5f
    ld a, h                                       ; $7a96: $7c
    ld a, d                                       ; $7a97: $7a
    ldh [$c1], a                                  ; $7a98: $e0 $c1
    ret nz                                        ; $7a9a: $c0

    nop                                           ; $7a9b: $00
    adc a                                         ; $7a9c: $8f
    rla                                           ; $7a9d: $17
    add a                                         ; $7a9e: $87

jr_0ab_7a9f:
    dec bc                                        ; $7a9f: $0b
    db $e3                                        ; $7aa0: $e3
    ld [hl], h                                    ; $7aa1: $74
    ldh a, [rNR31]                                ; $7aa2: $f0 $1b
    inc bc                                        ; $7aa4: $03
    jr c, jr_0ab_7a87                             ; $7aa5: $38 $e0

    add a                                         ; $7aa7: $87
    jr @+$05                                      ; $7aa8: $18 $03

    pop hl                                        ; $7aaa: $e1
    call nz, $ca00                                ; $7aab: $c4 $00 $ca
    jr jr_0ab_7ab0                                ; $7aae: $18 $00

jr_0ab_7ab0:
    ld a, a                                       ; $7ab0: $7f
    nop                                           ; $7ab1: $00
    ld bc, $03fc                                  ; $7ab2: $01 $fc $03
    ldh a, [$0e]                                  ; $7ab5: $f0 $0e
    ldh [rP1], a                                  ; $7ab7: $e0 $00
    ret c                                         ; $7ab9: $d8

    ret nz                                        ; $7aba: $c0

    jr nc, jr_0ab_7ac3                            ; $7abb: $30 $06

    ld h, b                                       ; $7abd: $60
    ld c, $6e                                     ; $7abe: $0e $6e
    ld c, $00                                     ; $7ac0: $0e $00
    and b                                         ; $7ac2: $a0

jr_0ab_7ac3:
    adc a                                         ; $7ac3: $8f
    ld e, $5e                                     ; $7ac4: $1e $5e
    ld b, c                                       ; $7ac6: $41
    ld a, l                                       ; $7ac7: $7d
    add e                                         ; $7ac8: $83
    cp d                                          ; $7ac9: $ba
    nop                                           ; $7aca: $00
    add [hl]                                      ; $7acb: $86
    or d                                          ; $7acc: $b2
    add h                                         ; $7acd: $84
    and h                                         ; $7ace: $a4
    ld l, d                                       ; $7acf: $6a
    ld [$18c2], sp                                ; $7ad0: $08 $c2 $18
    nop                                           ; $7ad3: $00
    ld de, $ccc5                                  ; $7ad4: $11 $c5 $cc
    ret nz                                        ; $7ad7: $c0

    sbc e                                         ; $7ad8: $9b
    sub b                                         ; $7ad9: $90
    ld a, [de]                                    ; $7ada: $1a
    add hl, de                                    ; $7adb: $19
    nop                                           ; $7adc: $00
    ld b, [hl]                                    ; $7add: $46
    ld b, c                                       ; $7ade: $41
    pop bc                                        ; $7adf: $c1
    ld bc, $8201                                  ; $7ae0: $01 $01 $82
    dec sp                                        ; $7ae3: $3b
    or l                                          ; $7ae4: $b5
    nop                                           ; $7ae5: $00
    jr z, jr_0ab_7b08                             ; $7ae6: $28 $20

    adc [hl]                                      ; $7ae8: $8e
    ld c, [hl]                                    ; $7ae9: $4e
    rlca                                          ; $7aea: $07
    ld c, a                                       ; $7aeb: $4f
    ld l, b                                       ; $7aec: $68
    rrca                                          ; $7aed: $0f
    nop                                           ; $7aee: $00
    ld [hl], l                                    ; $7aef: $75
    ld b, a                                       ; $7af0: $47
    sbc b                                         ; $7af1: $98
    nop                                           ; $7af2: $00
    and b                                         ; $7af3: $a0
    xor h                                         ; $7af4: $ac
    ld [hl+], a                                   ; $7af5: $22
    nop                                           ; $7af6: $00
    nop                                           ; $7af7: $00
    ld l, b                                       ; $7af8: $68
    inc c                                         ; $7af9: $0c
    ld bc, $3102                                  ; $7afa: $01 $02 $31
    jr c, @+$03                                   ; $7afd: $38 $01

    ld bc, $b000                                  ; $7aff: $01 $00 $b0
    ret z                                         ; $7b02: $c8

    rlca                                          ; $7b03: $07
    nop                                           ; $7b04: $00
    ld [hl], a                                    ; $7b05: $77
    ld a, b                                       ; $7b06: $78
    ld [hl], a                                    ; $7b07: $77

jr_0ab_7b08:
    rlca                                          ; $7b08: $07
    nop                                           ; $7b09: $00
    ld b, e                                       ; $7b0a: $43
    inc de                                        ; $7b0b: $13
    sbc h                                         ; $7b0c: $9c
    ld de, $20e6                                  ; $7b0d: $11 $e6 $20
    db $e3                                        ; $7b10: $e3
    and [hl]                                      ; $7b11: $a6
    nop                                           ; $7b12: $00
    ld [hl], c                                    ; $7b13: $71
    di                                            ; $7b14: $f3
    ld d, c                                       ; $7b15: $51
    db $10                                        ; $7b16: $10
    jr z, @+$04                                   ; $7b17: $28 $02

    and d                                         ; $7b19: $a2
    jr z, jr_0ab_7b1c                             ; $7b1a: $28 $00

jr_0ab_7b1c:
    add a                                         ; $7b1c: $87
    jr nz, jr_0ab_7a9f                            ; $7b1d: $20 $80

    ccf                                           ; $7b1f: $3f
    ret nz                                        ; $7b20: $c0

    rrca                                          ; $7b21: $0f
    ld [hl], b                                    ; $7b22: $70
    rlca                                          ; $7b23: $07
    nop                                           ; $7b24: $00
    jr jr_0ab_7b2a                                ; $7b25: $18 $03

    and b                                         ; $7b27: $a0
    inc l                                         ; $7b28: $2c
    or b                                          ; $7b29: $b0

jr_0ab_7b2a:
    ld [hl], $06                                  ; $7b2a: $36 $06
    ret nz                                        ; $7b2c: $c0

    nop                                           ; $7b2d: $00
    dec b                                         ; $7b2e: $05
    ld b, c                                       ; $7b2f: $41
    and b                                         ; $7b30: $a0
    adc a                                         ; $7b31: $8f
    or b                                          ; $7b32: $b0
    add a                                         ; $7b33: $87
    ret nc                                        ; $7b34: $d0

    rst $00                                       ; $7b35: $c7

jr_0ab_7b36:
    ld [bc], a                                    ; $7b36: $02
    ret nc                                        ; $7b37: $d0

    rst $00                                       ; $7b38: $c7
    ret c                                         ; $7b39: $d8

    jp $e3e8                                      ; $7b3a: $c3 $e8 $e3


    ld [bc], a                                    ; $7b3d: $02
    ld [$0001], sp                                ; $7b3e: $08 $01 $00
    call $9cdc                                    ; $7b41: $cd $dc $9c
    nop                                           ; $7b44: $00
    db $fd                                        ; $7b45: $fd
    nop                                           ; $7b46: $00
    nop                                           ; $7b47: $00
    ld e, a                                       ; $7b48: $5f
    ld b, b                                       ; $7b49: $40
    and b                                         ; $7b4a: $a0
    ld h, b                                       ; $7b4b: $60
    ld bc, $0101                                  ; $7b4c: $01 $01 $01
    adc l                                         ; $7b4f: $8d
    ld [hl], b                                    ; $7b50: $70
    ld [bc], a                                    ; $7b51: $02
    db $e3                                        ; $7b52: $e3
    nop                                           ; $7b53: $00
    ldh [$e2], a                                  ; $7b54: $e0 $e2
    add sp, $08                                   ; $7b56: $e8 $08
    inc bc                                        ; $7b58: $03
    ld l, b                                       ; $7b59: $68
    ld h, c                                       ; $7b5a: $61
    ld h, b                                       ; $7b5b: $60
    nop                                           ; $7b5c: $00
    dec c                                         ; $7b5d: $0d
    ret nz                                        ; $7b5e: $c0

    add $e0                                       ; $7b5f: $c6 $e0
    jp $4c0e                                      ; $7b61: $c3 $0e $4c


    adc a                                         ; $7b64: $8f
    nop                                           ; $7b65: $00
    ld d, b                                       ; $7b66: $50
    sbc l                                         ; $7b67: $9d
    db $10                                        ; $7b68: $10
    ld e, $30                                     ; $7b69: $1e $30
    ld [hl], b                                    ; $7b6b: $70
    jr jr_0ab_7bb0                                ; $7b6c: $18 $42

    nop                                           ; $7b6e: $00
    ld c, $24                                     ; $7b6f: $0e $24
    ld l, b                                       ; $7b71: $68
    ld e, d                                       ; $7b72: $5a
    ld [hl], d                                    ; $7b73: $72
    dec d                                         ; $7b74: $15
    ld hl, $0065                                  ; $7b75: $21 $65 $00
    ld bc, $8006                                  ; $7b78: $01 $06 $80
    ld a, [bc]                                    ; $7b7b: $0a
    ld [$22aa], sp                                ; $7b7c: $08 $aa $22
    adc d                                         ; $7b7f: $8a
    nop                                           ; $7b80: $00
    ld [hl+], a                                   ; $7b81: $22
    adc b                                         ; $7b82: $88
    ld [hl+], a                                   ; $7b83: $22
    xor h                                         ; $7b84: $ac
    jr nz, jr_0ab_7b36                            ; $7b85: $20 $af

    jr nz, @-$6f                                  ; $7b87: $20 $8f

    add h                                         ; $7b89: $84
    inc b                                         ; $7b8a: $04
    db $10                                        ; $7b8b: $10
    rst $18                                       ; $7b8c: $df
    ld b, $00                                     ; $7b8d: $06 $00
    rst $18                                       ; $7b8f: $df
    xor h                                         ; $7b90: $ac
    add hl, bc                                    ; $7b91: $09
    dec b                                         ; $7b92: $05
    ld h, c                                       ; $7b93: $61
    nop                                           ; $7b94: $00
    dec c                                         ; $7b95: $0d
    and c                                         ; $7b96: $a1
    adc b                                         ; $7b97: $88
    add e                                         ; $7b98: $83
    adc b                                         ; $7b99: $88
    add e                                         ; $7b9a: $83
    dec bc                                        ; $7b9b: $0b
    jp $1720                                      ; $7b9c: $c3 $20 $17


    rst $00                                       ; $7b9f: $c7
    ld [bc], a                                    ; $7ba0: $02
    ld [$e1ec], sp                                ; $7ba1: $08 $ec $e1
    db $f4                                        ; $7ba4: $f4
    pop af                                        ; $7ba5: $f1
    db $f4                                        ; $7ba6: $f4
    nop                                           ; $7ba7: $00
    ldh a, [rSC]                                  ; $7ba8: $f0 $02
    di                                            ; $7baa: $f3
    inc bc                                        ; $7bab: $03
    ld sp, hl                                     ; $7bac: $f9
    ld bc, $01f8                                  ; $7bad: $01 $f8 $01

jr_0ab_7bb0:
    nop                                           ; $7bb0: $00
    ld sp, hl                                     ; $7bb1: $f9
    db $fc                                        ; $7bb2: $fc
    nop                                           ; $7bb3: $00
    ld h, b                                       ; $7bb4: $60
    ld de, $5535                                  ; $7bb5: $11 $35 $55
    jr nc, jr_0ab_7bba                            ; $7bb8: $30 $00

jr_0ab_7bba:
    inc b                                         ; $7bba: $04
    jr nz, @+$12                                  ; $7bbb: $20 $10

    ld hl, $9819                                  ; $7bbd: $21 $19 $98
    ld l, l                                       ; $7bc0: $6d
    call z, Call_000_3c00                         ; $7bc1: $cc $00 $3c
    ld l, [hl]                                    ; $7bc4: $6e
    sub [hl]                                      ; $7bc5: $96
    ret nz                                        ; $7bc6: $c0

    ld hl, $8c94                                  ; $7bc7: $21 $94 $8c
    jr nz, jr_0ab_7bcc                            ; $7bca: $20 $00

jr_0ab_7bcc:
    ld e, $32                                     ; $7bcc: $1e $32
    ld c, $1d                                     ; $7bce: $0e $1d
    ld bc, $1983                                  ; $7bd0: $01 $83 $19
    add c                                         ; $7bd3: $81
    nop                                           ; $7bd4: $00
    ld b, e                                       ; $7bd5: $43
    ld sp, $1150                                  ; $7bd6: $31 $50 $11
    inc b                                         ; $7bd9: $04
    inc de                                        ; $7bda: $13
    ld c, c                                       ; $7bdb: $49
    stop                                          ; $7bdc: $10 $00
    jr @-$3c                                      ; $7bde: $18 $c2

    dec h                                         ; $7be0: $25
    inc d                                         ; $7be1: $14
    di                                            ; $7be2: $f3
    inc d                                         ; $7be3: $14
    rst $20                                       ; $7be4: $e7
    inc d                                         ; $7be5: $14
    nop                                           ; $7be6: $00
    rst $20                                       ; $7be7: $e7
    di                                            ; $7be8: $f3
    inc de                                        ; $7be9: $13
    ld a, h                                       ; $7bea: $7c
    jr nz, jr_0ab_7c2b                            ; $7beb: $20 $3e

    add b                                         ; $7bed: $80
    ld c, a                                       ; $7bee: $4f
    nop                                           ; $7bef: $00
    ld b, b                                       ; $7bf0: $40
    ld b, e                                       ; $7bf1: $43
    ld h, b                                       ; $7bf2: $60
    add b                                         ; $7bf3: $80
    or h                                          ; $7bf4: $b4
    and b                                         ; $7bf5: $a0
    sbc [hl]                                      ; $7bf6: $9e
    or b                                          ; $7bf7: $b0
    dec d                                         ; $7bf8: $15
    add [hl]                                      ; $7bf9: $86
    jr nz, jr_0ab_7c02                            ; $7bfa: $20 $06

    db $10                                        ; $7bfc: $10
    ld [de], a                                    ; $7bfd: $12
    ld b, h                                       ; $7bfe: $44
    ld b, b                                       ; $7bff: $40
    add hl, bc                                    ; $7c00: $09
    rst $30                                       ; $7c01: $f7

jr_0ab_7c02:
    ld [de], a                                    ; $7c02: $12
    ld [bc], a                                    ; $7c03: $02
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    cp $37                                        ; $7c06: $fe $37
    add a                                         ; $7c08: $87
    cpl                                           ; $7c09: $2f
    adc a                                         ; $7c0a: $8f
    cpl                                           ; $7c0b: $2f
    adc a                                         ; $7c0c: $8f
    nop                                           ; $7c0d: $00
    ld l, a                                       ; $7c0e: $6f
    rrca                                          ; $7c0f: $0f
    ld b, b                                       ; $7c10: $40
    rra                                           ; $7c11: $1f
    ld b, b                                       ; $7c12: $40
    rra                                           ; $7c13: $1f
    ret nz                                        ; $7c14: $c0

    rra                                           ; $7c15: $1f
    ld de, $3f80                                  ; $7c16: $11 $80 $3f
    db $fc                                        ; $7c19: $fc
    ld d, d                                       ; $7c1a: $52
    ld bc, $fe00                                  ; $7c1b: $01 $00 $fe
    cp $2e                                        ; $7c1e: $fe $2e
    ld [bc], a                                    ; $7c20: $02
    ld b, b                                       ; $7c21: $40
    cp $66                                        ; $7c22: $fe $66
    ld de, $433f                                  ; $7c24: $11 $3f $43
    ccf                                           ; $7c27: $3f
    jr nz, jr_0ab_7c37                            ; $7c28: $20 $0d

    add c                                         ; $7c2a: $81

jr_0ab_7c2b:
    nop                                           ; $7c2b: $00
    ld h, $86                                     ; $7c2c: $26 $86
    ld [hl-], a                                   ; $7c2e: $32
    add d                                         ; $7c2f: $82
    ret nz                                        ; $7c30: $c0

    jr @+$4d                                      ; $7c31: $18 $4b

    dec de                                        ; $7c33: $1b
    nop                                           ; $7c34: $00
    ld d, c                                       ; $7c35: $51
    inc de                                        ; $7c36: $13

jr_0ab_7c37:
    add hl, bc                                    ; $7c37: $09
    add hl, sp                                    ; $7c38: $39
    add h                                         ; $7c39: $84
    inc e                                         ; $7c3a: $1c
    ret nz                                        ; $7c3b: $c0

jr_0ab_7c3c:
    inc c                                         ; $7c3c: $0c
    nop                                           ; $7c3d: $00
    ld h, b                                       ; $7c3e: $60
    ld h, $30                                     ; $7c3f: $26 $30
    ld [de], a                                    ; $7c41: $12
    add hl, de                                    ; $7c42: $19
    sub c                                         ; $7c43: $91
    add b                                         ; $7c44: $80
    call nz, $8000                                ; $7c45: $c4 $00 $80
    nop                                           ; $7c48: $00
    nop                                           ; $7c49: $00
    ldh [$0e], a                                  ; $7c4a: $e0 $0e
    ld [$5866], sp                                ; $7c4c: $08 $66 $58
    nop                                           ; $7c4f: $00
    ld [hl], d                                    ; $7c50: $72
    ld c, h                                       ; $7c51: $4c
    jr nc, jr_0ab_7c82                            ; $7c52: $30 $2e

    ld a, [hl-]                                   ; $7c54: $3a
    inc [hl]                                      ; $7c55: $34
    nop                                           ; $7c56: $00
    nop                                           ; $7c57: $00
    nop                                           ; $7c58: $00
    inc bc                                        ; $7c59: $03
    ld h, c                                       ; $7c5a: $61
    halt                                          ; $7c5b: $76
    ld d, b                                       ; $7c5c: $50
    ld h, $40                                     ; $7c5d: $26 $40
    pop bc                                        ; $7c5f: $c1
    ld b, l                                       ; $7c60: $45
    nop                                           ; $7c61: $00
    pop bc                                        ; $7c62: $c1
    add l                                         ; $7c63: $85
    add e                                         ; $7c64: $83
    adc c                                         ; $7c65: $89
    inc bc                                        ; $7c66: $03
    ld b, c                                       ; $7c67: $41
    ld b, d                                       ; $7c68: $42
    ld b, c                                       ; $7c69: $41
    ld b, b                                       ; $7c6a: $40
    add c                                         ; $7c6b: $81
    halt                                          ; $7c6c: $76
    ld a, [bc]                                    ; $7c6d: $0a
    db $fd                                        ; $7c6e: $fd
    inc c                                         ; $7c6f: $0c
    dec c                                         ; $7c70: $0d
    inc [hl]                                      ; $7c71: $34
    dec b                                         ; $7c72: $05
    xor b                                         ; $7c73: $a8
    nop                                           ; $7c74: $00
    ld de, $cbd8                                  ; $7c75: $11 $d8 $cb
    add b                                         ; $7c78: $80
    sub d                                         ; $7c79: $92
    and b                                         ; $7c7a: $a0
    sub d                                         ; $7c7b: $92
    add b                                         ; $7c7c: $80
    ld c, $3f                                     ; $7c7d: $0e $3f
    add b                                         ; $7c7f: $80
    ccf                                           ; $7c80: $3f
    ld a, a                                       ; $7c81: $7f

jr_0ab_7c82:
    cp b                                          ; $7c82: $b8
    ld bc, $0804                                  ; $7c83: $01 $04 $08
    ld bc, $6188                                  ; $7c86: $01 $88 $61
    jr nz, jr_0ab_7c8e                            ; $7c89: $20 $03

    ld hl, $0002                                  ; $7c8b: $21 $02 $00

jr_0ab_7c8e:
    or b                                          ; $7c8e: $b0
    add e                                         ; $7c8f: $83
    ret nc                                        ; $7c90: $d0

    ret nz                                        ; $7c91: $c0

    rra                                           ; $7c92: $1f

jr_0ab_7c93:
    db $10                                        ; $7c93: $10
    ret nz                                        ; $7c94: $c0

    nop                                           ; $7c95: $00
    ret nz                                        ; $7c96: $c0

    ld e, a                                       ; $7c97: $5f
    nop                                           ; $7c98: $00
    ret nc                                        ; $7c99: $d0

    inc e                                         ; $7c9a: $1c
    db $e4                                        ; $7c9b: $e4
    inc c                                         ; $7c9c: $0c
    jr jr_0ab_7c93                                ; $7c9d: $18 $f4

    dec e                                         ; $7c9f: $1d
    push hl                                       ; $7ca0: $e5
    cp b                                          ; $7ca1: $b8
    ld a, [bc]                                    ; $7ca2: $0a
    call z, Call_0ab_580a                         ; $7ca3: $cc $0a $58
    add hl, hl                                    ; $7ca6: $29
    add a                                         ; $7ca7: $87
    inc b                                         ; $7ca8: $04
    add $97                                       ; $7ca9: $c6 $97
    or $c6                                        ; $7cab: $f6 $c6
    cp c                                          ; $7cad: $b9
    db $10                                        ; $7cae: $10
    jr @+$01                                      ; $7caf: $18 $ff

    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    ret nz                                        ; $7cb3: $c0

    sub b                                         ; $7cb4: $90
    ret nz                                        ; $7cb5: $c0

    ld e, b                                       ; $7cb6: $58
    ret nc                                        ; $7cb7: $d0

    jr @-$6a                                      ; $7cb8: $18 $94

    jr jr_0ab_7c3c                                ; $7cba: $18 $80

    db $10                                        ; $7cbc: $10
    jr z, jr_0ab_7ccf                             ; $7cbd: $28 $10

    ld h, $81                                     ; $7cbf: $26 $81
    push hl                                       ; $7cc1: $e5
    and b                                         ; $7cc2: $a0
    db $e4                                        ; $7cc3: $e4
    ret nz                                        ; $7cc4: $c0

    inc bc                                        ; $7cc5: $03
    ld c, h                                       ; $7cc6: $4c
    ld [$f803], sp                                ; $7cc7: $08 $03 $f8
    inc bc                                        ; $7cca: $03
    inc bc                                        ; $7ccb: $03
    jr z, @+$24                                   ; $7ccc: $28 $22

    and h                                         ; $7cce: $a4

jr_0ab_7ccf:
    ld c, d                                       ; $7ccf: $4a
    db $10                                        ; $7cd0: $10
    inc bc                                        ; $7cd1: $03
    sub [hl]                                      ; $7cd2: $96
    ld [bc], a                                    ; $7cd3: $02
    ld d, b                                       ; $7cd4: $50
    nop                                           ; $7cd5: $00
    ld bc, $e050                                  ; $7cd6: $01 $50 $e0
    rrca                                          ; $7cd9: $0f
    jr nz, @-$02                                  ; $7cda: $20 $fc

    nop                                           ; $7cdc: $00
    ldh a, [rSB]                                  ; $7cdd: $f0 $01
    nop                                           ; $7cdf: $00
    and $e7                                       ; $7ce0: $e6 $e7
    db $eb                                        ; $7ce2: $eb
    db $ec                                        ; $7ce3: $ec
    ld e, h                                       ; $7ce4: $5c
    ld e, e                                       ; $7ce5: $5b
    nop                                           ; $7ce6: $00
    nop                                           ; $7ce7: $00
    nop                                           ; $7ce8: $00
    rst $38                                       ; $7ce9: $ff
    nop                                           ; $7cea: $00
    pop bc                                        ; $7ceb: $c1
    nop                                           ; $7cec: $00
    inc e                                         ; $7ced: $1c
    inc e                                         ; $7cee: $1c
    sbc $e6                                       ; $7cef: $de $e6
    nop                                           ; $7cf1: $00
    cp $7e                                        ; $7cf2: $fe $7e
    pop af                                        ; $7cf4: $f1
    ld c, $1c                                     ; $7cf5: $0e $1c
    ldh [rP1], a                                  ; $7cf7: $e0 $00
    rst $20                                       ; $7cf9: $e7
    nop                                           ; $7cfa: $00
    jr @-$3b                                      ; $7cfb: $18 $c3

    inc a                                         ; $7cfd: $3c
    add c                                         ; $7cfe: $81
    ld h, [hl]                                    ; $7cff: $66
    nop                                           ; $7d00: $00
    jr @+$45                                      ; $7d01: $18 $43

    nop                                           ; $7d03: $00
    inc e                                         ; $7d04: $1c
    nop                                           ; $7d05: $00
    rrca                                          ; $7d06: $0f
    ret nz                                        ; $7d07: $c0

    nop                                           ; $7d08: $00
    ld h, b                                       ; $7d09: $60
    nop                                           ; $7d0a: $00
    di                                            ; $7d0b: $f3
    nop                                           ; $7d0c: $00
    ld [$f7e3], sp                                ; $7d0d: $08 $e3 $f7
    rst $28                                       ; $7d10: $ef
    ld d, a                                       ; $7d11: $57
    ld h, a                                       ; $7d12: $67
    and b                                         ; $7d13: $a0
    jr nc, jr_0ab_7d19                            ; $7d14: $30 $03

    ld [hl], b                                    ; $7d16: $70
    db $10                                        ; $7d17: $10
    daa                                           ; $7d18: $27

jr_0ab_7d19:
    ld b, a                                       ; $7d19: $47
    ld c, e                                       ; $7d1a: $4b
    add e                                         ; $7d1b: $83
    ld d, b                                       ; $7d1c: $50
    ld e, b                                       ; $7d1d: $58
    ld c, $78                                     ; $7d1e: $0e $78
    nop                                           ; $7d20: $00
    ret nz                                        ; $7d21: $c0

    rrca                                          ; $7d22: $0f
    db $dd                                        ; $7d23: $dd
    jp c, $979f                                   ; $7d24: $da $9f $97

    inc a                                         ; $7d27: $3c
    or h                                          ; $7d28: $b4
    add b                                         ; $7d29: $80
    ld [bc], a                                    ; $7d2a: $02
    ld [$b33f], sp                                ; $7d2b: $08 $3f $b3
    sub a                                         ; $7d2e: $97
    sbc b                                         ; $7d2f: $98
    db $10                                        ; $7d30: $10
    rra                                           ; $7d31: $1f
    sub b                                         ; $7d32: $90
    nop                                           ; $7d33: $00
    sbc a                                         ; $7d34: $9f
    and a                                         ; $7d35: $a7
    cp b                                          ; $7d36: $b8
    inc e                                         ; $7d37: $1c
    nop                                           ; $7d38: $00
    db $10                                        ; $7d39: $10
    inc sp                                        ; $7d3a: $33
    ld c, a                                       ; $7d3b: $4f
    nop                                           ; $7d3c: $00
    ld l, h                                       ; $7d3d: $6c
    sbc [hl]                                      ; $7d3e: $9e
    ret nc                                        ; $7d3f: $d0

    inc a                                         ; $7d40: $3c
    add b                                         ; $7d41: $80
    add hl, de                                    ; $7d42: $19
    pop hl                                        ; $7d43: $e1
    jp nc, $2200                                  ; $7d44: $d2 $00 $22

    rst $00                                       ; $7d47: $c7
    scf                                           ; $7d48: $37
    ld b, c                                       ; $7d49: $41
    and a                                         ; $7d4a: $a7
    pop bc                                        ; $7d4b: $c1
    rrca                                          ; $7d4c: $0f
    rra                                           ; $7d4d: $1f
    nop                                           ; $7d4e: $00
    sbc h                                         ; $7d4f: $9c
    ld a, $30                                     ; $7d50: $3e $30
    db $10                                        ; $7d52: $10
    ld h, b                                       ; $7d53: $60
    rrca                                          ; $7d54: $0f
    adc [hl]                                      ; $7d55: $8e
    ld [$4e00], sp                                ; $7d56: $08 $00 $4e
    inc bc                                        ; $7d59: $03
    ld h, h                                       ; $7d5a: $64
    inc bc                                        ; $7d5b: $03
    dec h                                         ; $7d5c: $25
    ld bc, $0725                                  ; $7d5d: $01 $25 $07
    nop                                           ; $7d60: $00
    and b                                         ; $7d61: $a0
    and e                                         ; $7d62: $a3
    and b                                         ; $7d63: $a0
    ld [hl+], a                                   ; $7d64: $22
    dec l                                         ; $7d65: $2d
    db $ec                                        ; $7d66: $ec
    jr nz, jr_0ab_7dbf                            ; $7d67: $20 $56

    nop                                           ; $7d69: $00

jr_0ab_7d6a:
    sub b                                         ; $7d6a: $90
    dec de                                        ; $7d6b: $1b
    ret c                                         ; $7d6c: $d8

    xor h                                         ; $7d6d: $ac
    inc l                                         ; $7d6e: $2c
    add a                                         ; $7d6f: $87
    scf                                           ; $7d70: $37
    add e                                         ; $7d71: $83
    nop                                           ; $7d72: $00
    ei                                            ; $7d73: $fb
    jr c, @+$42                                   ; $7d74: $38 $40

    sbc h                                         ; $7d76: $9c
    ldh [rIE], a                                  ; $7d77: $e0 $ff
    nop                                           ; $7d79: $00
    ld a, a                                       ; $7d7a: $7f
    nop                                           ; $7d7b: $00
    nop                                           ; $7d7c: $00
    add b                                         ; $7d7d: $80
    ld bc, $04c4                                  ; $7d7e: $01 $c4 $04
    ld h, b                                       ; $7d81: $60
    ld [bc], a                                    ; $7d82: $02
    sub d                                         ; $7d83: $92
    rlca                                          ; $7d84: $07
    add b                                         ; $7d85: $80
    ld [c], a                                     ; $7d86: $e2
    ld [bc], a                                    ; $7d87: $02
    inc b                                         ; $7d88: $04
    ld b, $d0                                     ; $7d89: $06 $d0
    jr z, jr_0ab_7da5                             ; $7d8b: $28 $18

    ld [$0802], sp                                ; $7d8d: $08 $02 $08
    nop                                           ; $7d90: $00
    rst $08                                       ; $7d91: $cf
    rst $08                                       ; $7d92: $cf
    ld bc, $03e6                                  ; $7d93: $01 $e6 $03
    call $cf02                                    ; $7d96: $cd $02 $cf
    nop                                           ; $7d99: $00
    ld b, $0a                                     ; $7d9a: $06 $0a
    ld b, $9a                                     ; $7d9c: $06 $9a
    ld b, $de                                     ; $7d9e: $06 $de
    add d                                         ; $7da0: $82
    add h                                         ; $7da1: $84
    nop                                           ; $7da2: $00
    ld hl, sp-$67                                 ; $7da3: $f8 $99

jr_0ab_7da5:
    ld d, b                                       ; $7da5: $50
    inc bc                                        ; $7da6: $03
    and l                                         ; $7da7: $a5
    rlca                                          ; $7da8: $07
    daa                                           ; $7da9: $27
    ldh [rP1], a                                  ; $7daa: $e0 $00
    ld h, b                                       ; $7dac: $60
    ld h, a                                       ; $7dad: $67
    ld h, b                                       ; $7dae: $60
    and $e0                                       ; $7daf: $e6 $e0
    inc b                                         ; $7db1: $04
    ld b, h                                       ; $7db2: $44
    and h                                         ; $7db3: $a4
    nop                                           ; $7db4: $00
    ld hl, $18c1                                  ; $7db5: $21 $c1 $18
    ld hl, sp-$1c                                 ; $7db8: $f8 $e4
    call c, $f8ff                                 ; $7dba: $dc $ff $f8
    nop                                           ; $7dbd: $00
    add b                                         ; $7dbe: $80

jr_0ab_7dbf:
    adc a                                         ; $7dbf: $8f
    ld l, b                                       ; $7dc0: $68
    dec sp                                        ; $7dc1: $3b
    ldh [$35], a                                  ; $7dc2: $e0 $35
    sub c                                         ; $7dc4: $91
    inc [hl]                                      ; $7dc5: $34
    nop                                           ; $7dc6: $00
    ld h, $20                                     ; $7dc7: $26 $20
    ld [hl], d                                    ; $7dc9: $72
    ld l, h                                       ; $7dca: $6c
    ld e, b                                       ; $7dcb: $58
    ld b, h                                       ; $7dcc: $44
    inc c                                         ; $7dcd: $0c
    nop                                           ; $7dce: $00
    nop                                           ; $7dcf: $00
    and h                                         ; $7dd0: $a4
    cp h                                          ; $7dd1: $bc
    sub b                                         ; $7dd2: $90
    adc b                                         ; $7dd3: $88
    jr c, @-$76                                   ; $7dd4: $38 $88

    jr nz, jr_0ab_7d6a                            ; $7dd6: $20 $92

    nop                                           ; $7dd8: $00
    ld b, b                                       ; $7dd9: $40
    ld b, c                                       ; $7dda: $41
    ld d, $06                                     ; $7ddb: $16 $06
    ld a, [bc]                                    ; $7ddd: $0a
    dec l                                         ; $7dde: $2d
    add sp, $0f                                   ; $7ddf: $e8 $0f
    nop                                           ; $7de1: $00

jr_0ab_7de2:
    ret nz                                        ; $7de2: $c0

    ld [hl+], a                                   ; $7de3: $22
    inc b                                         ; $7de4: $04
    ld b, h                                       ; $7de5: $44
    ld d, $1e                                     ; $7de6: $16 $1e
    ld [hl], l                                    ; $7de8: $75
    ld a, d                                       ; $7de9: $7a
    nop                                           ; $7dea: $00
    inc c                                         ; $7deb: $0c
    inc c                                         ; $7dec: $0c
    ld hl, sp+$04                                 ; $7ded: $f8 $04
    ld a, $46                                     ; $7def: $3e $46
    call nz, Call_000_00c4                        ; $7df1: $c4 $c4 $00
    ld b, c                                       ; $7df4: $41
    ld hl, $1060                                  ; $7df5: $21 $60 $10
    jr @+$6a                                      ; $7df8: $18 $68

    inc l                                         ; $7dfa: $2c
    ld d, b                                       ; $7dfb: $50
    nop                                           ; $7dfc: $00
    nop                                           ; $7dfd: $00
    ccf                                           ; $7dfe: $3f
    ld b, b                                       ; $7dff: $40
    rrca                                          ; $7e00: $0f
    ld [hl], a                                    ; $7e01: $77
    rlca                                          ; $7e02: $07
    dec de                                        ; $7e03: $1b
    add e                                         ; $7e04: $83
    nop                                           ; $7e05: $00
    ldh [$0c], a                                  ; $7e06: $e0 $0c
    ldh a, [rTMA]                                 ; $7e08: $f0 $06
    ldh a, [rTMA]                                 ; $7e0a: $f0 $06
    pop af                                        ; $7e0c: $f1
    dec b                                         ; $7e0d: $05
    nop                                           ; $7e0e: $00
    adc e                                         ; $7e0f: $8b
    add l                                         ; $7e10: $85
    add d                                         ; $7e11: $82
    ld c, $22                                     ; $7e12: $0e $22
    ld e, [hl]                                    ; $7e14: $5e
    add e                                         ; $7e15: $83
    rst $38                                       ; $7e16: $ff
    nop                                           ; $7e17: $00
    ld a, a                                       ; $7e18: $7f
    ld a, [hl]                                    ; $7e19: $7e
    nop                                           ; $7e1a: $00
    rrca                                          ; $7e1b: $0f
    jr nz, jr_0ab_7e21                            ; $7e1c: $20 $03

    nop                                           ; $7e1e: $00
    inc bc                                        ; $7e1f: $03
    nop                                           ; $7e20: $00

jr_0ab_7e21:
    ld [hl], c                                    ; $7e21: $71
    add b                                         ; $7e22: $80
    ld l, a                                       ; $7e23: $6f
    and b                                         ; $7e24: $a0
    add e                                         ; $7e25: $83
    jr z, jr_0ab_7de2                             ; $7e26: $28 $ba

    ld c, l                                       ; $7e28: $4d
    nop                                           ; $7e29: $00
    ld e, b                                       ; $7e2a: $58
    ld hl, sp-$6f                                 ; $7e2b: $f8 $91
    ld a, c                                       ; $7e2d: $79
    ld [hl-], a                                   ; $7e2e: $32
    inc sp                                        ; $7e2f: $33
    ld h, h                                       ; $7e30: $64
    ld h, a                                       ; $7e31: $67
    nop                                           ; $7e32: $00
    sub b                                         ; $7e33: $90
    ld [bc], a                                    ; $7e34: $02
    call c, $38ce                                 ; $7e35: $dc $ce $38
    ld a, [bc]                                    ; $7e38: $0a
    ld h, $e8                                     ; $7e39: $26 $e8
    nop                                           ; $7e3b: $00
    ld b, c                                       ; $7e3c: $41
    db $ed                                        ; $7e3d: $ed
    and e                                         ; $7e3e: $a3
    add hl, bc                                    ; $7e3f: $09
    ld [bc], a                                    ; $7e40: $02
    ld c, c                                       ; $7e41: $49
    rla                                           ; $7e42: $17
    jp nz, $9500                                  ; $7e43: $c2 $00 $95

    or b                                          ; $7e46: $b0
    push bc                                       ; $7e47: $c5
    ret nc                                        ; $7e48: $d0

    add h                                         ; $7e49: $84
    ld h, h                                       ; $7e4a: $64
    ld h, l                                       ; $7e4b: $65
    call nc, $b200                                ; $7e4c: $d4 $00 $b2
    ld a, [c]                                     ; $7e4f: $f2
    xor e                                         ; $7e50: $ab
    rst $10                                       ; $7e51: $d7
    jp hl                                         ; $7e52: $e9


    ld b, $91                                     ; $7e53: $06 $91
    rra                                           ; $7e55: $1f
    nop                                           ; $7e56: $00
    ld e, l                                       ; $7e57: $5d
    daa                                           ; $7e58: $27
    ld l, a                                       ; $7e59: $6f
    ld sp, $3a44                                  ; $7e5a: $31 $44 $3a
    add hl, sp                                    ; $7e5d: $39
    jr c, jr_0ab_7e60                             ; $7e5e: $38 $00

jr_0ab_7e60:
    rla                                           ; $7e60: $17
    jr z, jr_0ab_7e72                             ; $7e61: $28 $0f

    jr jr_0ab_7e83                                ; $7e63: $18 $1e

    jp nz, $c888                                  ; $7e65: $c2 $88 $c8

    nop                                           ; $7e68: $00
    ld b, b                                       ; $7e69: $40
    ld a, h                                       ; $7e6a: $7c
    db $10                                        ; $7e6b: $10
    inc l                                         ; $7e6c: $2c
    ld a, [de]                                    ; $7e6d: $1a
    inc c                                         ; $7e6e: $0c
    ld a, [bc]                                    ; $7e6f: $0a
    inc b                                         ; $7e70: $04
    nop                                           ; $7e71: $00

jr_0ab_7e72:
    ld [hl], b                                    ; $7e72: $70
    ld h, $38                                     ; $7e73: $26 $38
    db $10                                        ; $7e75: $10
    inc a                                         ; $7e76: $3c
    jr jr_0ab_7eb5                                ; $7e77: $18 $3c

    dec a                                         ; $7e79: $3d
    nop                                           ; $7e7a: $00
    pop af                                        ; $7e7b: $f1
    dec b                                         ; $7e7c: $05
    ld h, c                                       ; $7e7d: $61
    dec c                                         ; $7e7e: $0d
    ld h, e                                       ; $7e7f: $63
    dec bc                                        ; $7e80: $0b
    ld h, e                                       ; $7e81: $63
    dec bc                                        ; $7e82: $0b

jr_0ab_7e83:
    nop                                           ; $7e83: $00
    dec de                                        ; $7e84: $1b
    ld b, e                                       ; $7e85: $43
    rla                                           ; $7e86: $17
    ld b, a                                       ; $7e87: $47
    nop                                           ; $7e88: $00
    rlca                                          ; $7e89: $07
    sub b                                         ; $7e8a: $90
    rla                                           ; $7e8b: $17
    nop                                           ; $7e8c: $00
    ld b, c                                       ; $7e8d: $41
    rlca                                          ; $7e8e: $07
    ld h, e                                       ; $7e8f: $63
    inc bc                                        ; $7e90: $03
    daa                                           ; $7e91: $27
    add hl, de                                    ; $7e92: $19
    ld [hl], c                                    ; $7e93: $71
    ld a, a                                       ; $7e94: $7f
    inc b                                         ; $7e95: $04
    sbc [hl]                                      ; $7e96: $9e
    ld e, $c0                                     ; $7e97: $1e $c0
    nop                                           ; $7e99: $00
    ld hl, sp-$48                                 ; $7e9a: $f8 $b8
    ld bc, $c3c5                                  ; $7e9c: $01 $c5 $c3
    nop                                           ; $7e9f: $00
    ld c, e                                       ; $7ea0: $4b
    add a                                         ; $7ea1: $87
    inc bc                                        ; $7ea2: $03
    add a                                         ; $7ea3: $87
    rrca                                          ; $7ea4: $0f
    rlca                                          ; $7ea5: $07
    inc c                                         ; $7ea6: $0c
    rla                                           ; $7ea7: $17
    nop                                           ; $7ea8: $00
    and $fa                                       ; $7ea9: $e6 $fa
    and $f9                                       ; $7eab: $e6 $f9
    dec bc                                        ; $7ead: $0b
    inc c                                         ; $7eae: $0c
    ld b, e                                       ; $7eaf: $43
    add e                                         ; $7eb0: $83
    nop                                           ; $7eb1: $00
    db $10                                        ; $7eb2: $10
    add b                                         ; $7eb3: $80
    dec sp                                        ; $7eb4: $3b

jr_0ab_7eb5:
    ld c, $37                                     ; $7eb5: $0e $37
    ld c, $35                                     ; $7eb7: $0e $35
    ld c, $00                                     ; $7eb9: $0e $00
    ld [hl-], a                                   ; $7ebb: $32
    rrca                                          ; $7ebc: $0f
    dec de                                        ; $7ebd: $1b
    rlca                                          ; $7ebe: $07
    rrca                                          ; $7ebf: $0f
    add e                                         ; $7ec0: $83
    ld a, [hl-]                                   ; $7ec1: $3a
    add hl, de                                    ; $7ec2: $19
    nop                                           ; $7ec3: $00
    ld [bc], a                                    ; $7ec4: $02
    ld bc, $e707                                  ; $7ec5: $01 $07 $e7
    ld c, $34                                     ; $7ec8: $0e $34
    ld c, b                                       ; $7eca: $48
    ld d, [hl]                                    ; $7ecb: $56
    nop                                           ; $7ecc: $00
    ld h, b                                       ; $7ecd: $60
    ld l, $b1                                     ; $7ece: $2e $b1
    inc [hl]                                      ; $7ed0: $34
    ret nz                                        ; $7ed1: $c0

    ld b, $02                                     ; $7ed2: $06 $02
    ld [bc], a                                    ; $7ed4: $02
    nop                                           ; $7ed5: $00
    inc h                                         ; $7ed6: $24
    ld e, $2c                                     ; $7ed7: $1e $2c
    add hl, de                                    ; $7ed9: $19
    add hl, hl                                    ; $7eda: $29
    inc bc                                        ; $7edb: $03
    ld sp, $0003                                  ; $7edc: $31 $03 $00
    ld h, e                                       ; $7edf: $63
    ld b, a                                       ; $7ee0: $47
    daa                                           ; $7ee1: $27
    ld c, a                                       ; $7ee2: $4f
    daa                                           ; $7ee3: $27
    ld b, a                                       ; $7ee4: $47
    dec a                                         ; $7ee5: $3d
    ld a, h                                       ; $7ee6: $7c
    nop                                           ; $7ee7: $00
    ld a, c                                       ; $7ee8: $79
    ld a, h                                       ; $7ee9: $7c
    db $fc                                        ; $7eea: $fc
    inc b                                         ; $7eeb: $04
    db $fc                                        ; $7eec: $fc
    dec c                                         ; $7eed: $0d
    ld hl, sp+$19                                 ; $7eee: $f8 $19
    nop                                           ; $7ef0: $00
    ldh a, [rNR10]                                ; $7ef1: $f0 $10
    pop af                                        ; $7ef3: $f1
    ld sp, $6dec                                  ; $7ef4: $31 $ec $6d
    rla                                           ; $7ef7: $17
    add a                                         ; $7ef8: $87
    nop                                           ; $7ef9: $00
    rra                                           ; $7efa: $1f
    adc a                                         ; $7efb: $8f
    rra                                           ; $7efc: $1f
    adc a                                         ; $7efd: $8f
    cpl                                           ; $7efe: $2f
    rra                                           ; $7eff: $1f
    ldh [$c0], a                                  ; $7f00: $e0 $c0
    ld bc, $c000                                  ; $7f02: $01 $00 $c0
    rra                                           ; $7f05: $1f
    rra                                           ; $7f06: $1f
    ccf                                           ; $7f07: $3f
    rst $18                                       ; $7f08: $df
    db $fc                                        ; $7f09: $fc
    inc e                                         ; $7f0a: $1c
    ld [bc], a                                    ; $7f0b: $02
    ld b, b                                       ; $7f0c: $40
    cp $02                                        ; $7f0d: $fe $02
    jr nc, jr_0ab_7f11                            ; $7f0f: $30 $00

jr_0ab_7f11:
    ld hl, sp+$0f                                 ; $7f11: $f8 $0f
    ld c, $39                                     ; $7f13: $0e $39
    ld a, $00                                     ; $7f15: $3e $00
    add hl, bc                                    ; $7f17: $09
    ld c, $0f                                     ; $7f18: $0e $0f
    call c, $380f                                 ; $7f1a: $dc $0f $38
    ccf                                           ; $7f1d: $3f
    ld sp, $7d00                                  ; $7f1e: $31 $00 $7d
    ld h, e                                       ; $7f21: $63
    call $87f1                                    ; $7f22: $cd $f1 $87
    and c                                         ; $7f25: $a1
    sub b                                         ; $7f26: $90
    and b                                         ; $7f27: $a0
    nop                                           ; $7f28: $00
    sub b                                         ; $7f29: $90
    and h                                         ; $7f2a: $a4
    xor h                                         ; $7f2b: $ac
    sub d                                         ; $7f2c: $92
    jr c, jr_0ab_7f58                             ; $7f2d: $38 $29

    ret c                                         ; $7f2f: $d8

    cp b                                          ; $7f30: $b8
    nop                                           ; $7f31: $00
    or b                                          ; $7f32: $b0
    ld d, b                                       ; $7f33: $50
    ret nz                                        ; $7f34: $c0

    rst $20                                       ; $7f35: $e7
    ld sp, hl                                     ; $7f36: $f9
    di                                            ; $7f37: $f3
    db $fc                                        ; $7f38: $fc
    ld a, b                                       ; $7f39: $78
    nop                                           ; $7f3a: $00
    ld a, l                                       ; $7f3b: $7d
    inc a                                         ; $7f3c: $3c
    ld a, h                                       ; $7f3d: $7c
    dec a                                         ; $7f3e: $3d
    add hl, sp                                    ; $7f3f: $39
    ld a, b                                       ; $7f40: $78
    inc sp                                        ; $7f41: $33
    inc [hl]                                      ; $7f42: $34
    nop                                           ; $7f43: $00
    dec h                                         ; $7f44: $25
    rrca                                          ; $7f45: $0f
    jr z, jr_0ab_7f57                             ; $7f46: $28 $0f

    nop                                           ; $7f48: $00
    inc bc                                        ; $7f49: $03
    jr c, jr_0ab_7f5d                             ; $7f4a: $38 $11

    nop                                           ; $7f4c: $00
    db $fc                                        ; $7f4d: $fc
    ret nc                                        ; $7f4e: $d0

    halt                                          ; $7f4f: $76
    ld a, [c]                                     ; $7f50: $f2
    jp nz, $e20a                                  ; $7f51: $c2 $0a $e2

    ld [bc], a                                    ; $7f54: $02
    nop                                           ; $7f55: $00
    ld [bc], a                                    ; $7f56: $02

jr_0ab_7f57:
    ret nz                                        ; $7f57: $c0

jr_0ab_7f58:
    ld a, [bc]                                    ; $7f58: $0a
    ld [$cc81], sp                                ; $7f59: $08 $81 $cc
    nop                                           ; $7f5c: $00

jr_0ab_7f5d:
    adc h                                         ; $7f5d: $8c
    nop                                           ; $7f5e: $00
    inc b                                         ; $7f5f: $04
    add h                                         ; $7f60: $84
    dec b                                         ; $7f61: $05
    ld l, h                                       ; $7f62: $6c
    inc l                                         ; $7f63: $2c
    dec l                                         ; $7f64: $2d
    adc b                                         ; $7f65: $88
    dec bc                                        ; $7f66: $0b
    nop                                           ; $7f67: $00
    ret z                                         ; $7f68: $c8

    ld c, d                                       ; $7f69: $4a
    ret c                                         ; $7f6a: $d8

    ld a, [de]                                    ; $7f6b: $1a
    ccf                                           ; $7f6c: $3f
    rst $18                                       ; $7f6d: $df
    rra                                           ; $7f6e: $1f
    ccf                                           ; $7f6f: $3f
    inc c                                         ; $7f70: $0c
    ld b, b                                       ; $7f71: $40
    rra                                           ; $7f72: $1f
    nop                                           ; $7f73: $00
    ld e, a                                       ; $7f74: $5f
    cp [hl]                                       ; $7f75: $be
    add hl, bc                                    ; $7f76: $09
    sbc h                                         ; $7f77: $9c
    ld a, [bc]                                    ; $7f78: $0a
    inc bc                                        ; $7f79: $03
    ld sp, hl                                     ; $7f7a: $f9
    jr nc, @+$05                                  ; $7f7b: $30 $03

    ld hl, sp+$69                                 ; $7f7d: $f8 $69
    ld [$2aa8], sp                                ; $7f7f: $08 $a8 $2a
    pop af                                        ; $7f82: $f1
    add c                                         ; $7f83: $81
    ret nz                                        ; $7f84: $c0

    ld b, $01                                     ; $7f85: $06 $01
    nop                                           ; $7f87: $00
    ld c, $37                                     ; $7f88: $0e $37
    add a                                         ; $7f8a: $87
    db $10                                        ; $7f8b: $10
    ret nz                                        ; $7f8c: $c0

    rra                                           ; $7f8d: $1f
    sub d                                         ; $7f8e: $92
    nop                                           ; $7f8f: $00
    add b                                         ; $7f90: $80
    or d                                          ; $7f91: $b2
    ld [bc], a                                    ; $7f92: $02
    ld l, h                                       ; $7f93: $6c
    ld h, b                                       ; $7f94: $60
    ld h, e                                       ; $7f95: $63
    ld h, b                                       ; $7f96: $60
    ld bc, $3011                                  ; $7f97: $01 $11 $30
    ld [$190b], sp                                ; $7f9a: $08 $0b $19
    add b                                         ; $7f9d: $80
    rra                                           ; $7f9e: $1f
    call z, Call_000_1f0a                         ; $7f9f: $cc $0a $1f
    ld sp, $011f                                  ; $7fa2: $31 $1f $01
    ccf                                           ; $7fa5: $3f
    add hl, hl                                    ; $7fa6: $29
    dec d                                         ; $7fa7: $15
    jr nc, jr_0ab_7fb7                            ; $7fa8: $30 $0d

    rrca                                          ; $7faa: $0f
    inc bc                                        ; $7fab: $03
    ld e, $08                                     ; $7fac: $1e $08
    nop                                           ; $7fae: $00
    rst $38                                       ; $7faf: $ff
    nop                                           ; $7fb0: $00
    ld a, [de]                                    ; $7fb1: $1a
    sbc $08                                       ; $7fb2: $de $08
    inc b                                         ; $7fb4: $04
    ldh a, [$64]                                  ; $7fb5: $f0 $64

jr_0ab_7fb7:
    ld [bc], a                                    ; $7fb7: $02
    ldh a, [$64]                                  ; $7fb8: $f0 $64
    ldh [$80], a                                  ; $7fba: $e0 $80
    nop                                           ; $7fbc: $00
    rrca                                          ; $7fbd: $0f
    call z, $e00a                                 ; $7fbe: $cc $0a $e0
    nop                                           ; $7fc1: $00
    ld h, $e0                                     ; $7fc2: $26 $e0
    and h                                         ; $7fc4: $a4
    ld b, h                                       ; $7fc5: $44
    ldh [$0c], a                                  ; $7fc6: $e0 $0c
    ldh [$08], a                                  ; $7fc8: $e0 $08
    inc c                                         ; $7fca: $0c
    inc bc                                        ; $7fcb: $03
    ld hl, sp+$03                                 ; $7fcc: $f8 $03
    inc bc                                        ; $7fce: $03
    call c, $b002                                 ; $7fcf: $dc $02 $b0
    ld l, d                                       ; $7fd2: $6a

    db $60, $00, $1b, $00, $56, $00, $01, $60, $ff, $01, $68, $00, $02, $58, $0f, $60
    db $ff, $12, $00, $fe, $7c, $02, $30, $00, $fe, $4e, $00, $fe, $00, $7c, $fa, $7c
    db $f2, $7c, $a6, $7c, $8e, $20, $7c, $de, $10, $08

    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
