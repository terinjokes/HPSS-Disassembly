; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ea", ROMX[$4000], BANK[$ea]

    db $ea

    rrca                                          ; $4001: $0f
    dec b                                         ; $4002: $05
    ld hl, sp+$08                                 ; $4003: $f8 $08
    ld [c], a                                     ; $4005: $e2
    ld bc, $f8e2                                  ; $4006: $01 $e2 $f8
    ld [c], a                                     ; $4009: $e2
    nop                                           ; $400a: $00
    pop af                                        ; $400b: $f1
    ld bc, $f8f2                                  ; $400c: $01 $f2 $f8
    ld a, [c]                                     ; $400f: $f2
    db $fd                                        ; $4010: $fd
    ld [bc], a                                    ; $4011: $02
    inc bc                                        ; $4012: $03
    sbc [hl]                                      ; $4013: $9e
    inc b                                         ; $4014: $04
    rlca                                          ; $4015: $07
    ld [$080f], sp                                ; $4016: $08 $0f $08
    rrca                                          ; $4019: $0f
    db $10                                        ; $401a: $10
    rra                                           ; $401b: $1f
    jr jr_0ea_403d                                ; $401c: $18 $1f

    inc d                                         ; $401e: $14
    rra                                           ; $401f: $1f
    jr nz, jr_0ea_4061                            ; $4020: $20 $3f

    dec d                                         ; $4022: $15
    rra                                           ; $4023: $1f
    ld e, $1f                                     ; $4024: $1e $1f
    ccf                                           ; $4026: $3f
    ld hl, $487f                                  ; $4027: $21 $7f $48
    ld l, e                                       ; $402a: $6b
    ld e, h                                       ; $402b: $5c
    ld c, h                                       ; $402c: $4c
    ld a, a                                       ; $402d: $7f
    ld a, e                                       ; $402e: $7b
    ld e, a                                       ; $402f: $5f
    call c, $02bf                                 ; $4030: $dc $bf $02
    ld h, b                                       ; $4033: $60
    sbc [hl]                                      ; $4034: $9e
    sub b                                         ; $4035: $90
    ldh a, [$08]                                  ; $4036: $f0 $08
    ld hl, sp-$78                                 ; $4038: $f8 $88
    ld hl, sp+$04                                 ; $403a: $f8 $04
    db $fc                                        ; $403c: $fc

jr_0ea_403d:
    inc c                                         ; $403d: $0c
    db $fc                                        ; $403e: $fc
    inc d                                         ; $403f: $14
    db $fc                                        ; $4040: $fc
    ld b, d                                       ; $4041: $42
    cp $14                                        ; $4042: $fe $14
    db $fc                                        ; $4044: $fc
    cp h                                          ; $4045: $bc
    db $fc                                        ; $4046: $fc
    cp $42                                        ; $4047: $fe $42
    rst $38                                       ; $4049: $ff
    add hl, bc                                    ; $404a: $09
    db $eb                                        ; $404b: $eb
    sbc l                                         ; $404c: $9d
    sbc c                                         ; $404d: $99
    rst $38                                       ; $404e: $ff
    rst $28                                       ; $404f: $ef
    db $fd                                        ; $4050: $fd
    dec e                                         ; $4051: $1d
    cp $02                                        ; $4052: $fe $02
    ld bc, $1f95                                  ; $4054: $01 $95 $1f
    db $fd                                        ; $4057: $fd
    add hl, bc                                    ; $4058: $09
    rst $38                                       ; $4059: $ff
    dec c                                         ; $405a: $0d
    rst $38                                       ; $405b: $ff
    adc d                                         ; $405c: $8a
    ld a, [$f888]                                 ; $405d: $fa $88 $f8
    ret nc                                        ; $4060: $d0

jr_0ea_4061:
    ldh a, [$d0]                                  ; $4061: $f0 $d0
    ldh a, [$b0]                                  ; $4063: $f0 $b0
    ldh a, [$50]                                  ; $4065: $f0 $50
    ldh a, [$50]                                  ; $4067: $f0 $50
    ldh a, [$60]                                  ; $4069: $f0 $60
    inc bc                                        ; $406b: $03
    ldh [rSC], a                                  ; $406c: $e0 $02
    ld h, b                                       ; $406e: $60
    ld [bc], a                                    ; $406f: $02
    jr nz, jr_0ea_4074                            ; $4070: $20 $02

    ld [hl], b                                    ; $4072: $70
    sub l                                         ; $4073: $95

jr_0ea_4074:
    ld hl, sp-$41                                 ; $4074: $f8 $bf
    sub b                                         ; $4076: $90
    rst $38                                       ; $4077: $ff
    or b                                          ; $4078: $b0
    rst $38                                       ; $4079: $ff
    ld d, c                                       ; $407a: $51
    ld e, a                                       ; $407b: $5f
    ld de, $0b1f                                  ; $407c: $11 $1f $0b
    rrca                                          ; $407f: $0f
    dec bc                                        ; $4080: $0b
    rrca                                          ; $4081: $0f
    dec c                                         ; $4082: $0d
    rrca                                          ; $4083: $0f
    add hl, bc                                    ; $4084: $09
    rrca                                          ; $4085: $0f
    ld a, [bc]                                    ; $4086: $0a
    rrca                                          ; $4087: $0f
    ld b, $03                                     ; $4088: $06 $03
    rlca                                          ; $408a: $07
    ld [bc], a                                    ; $408b: $02
    ld b, $02                                     ; $408c: $06 $02
    inc b                                         ; $408e: $04
    inc b                                         ; $408f: $04
    ld c, $83                                     ; $4090: $0e $83
    nop                                           ; $4092: $00
    stop                                          ; $4093: $10 $00
    dec b                                         ; $4095: $05
    db $10                                        ; $4096: $10
    add e                                         ; $4097: $83
    nop                                           ; $4098: $00
    stop                                          ; $4099: $10 $00
    ld [bc], a                                    ; $409b: $02
    db $10                                        ; $409c: $10
    ld [bc], a                                    ; $409d: $02
    nop                                           ; $409e: $00
    ld [bc], a                                    ; $409f: $02
    db $10                                        ; $40a0: $10
    add a                                         ; $40a1: $87
    nop                                           ; $40a2: $00
    stop                                          ; $40a3: $10 $00
    stop                                          ; $40a5: $10 $00
    stop                                          ; $40a7: $10 $00
    ld [bc], a                                    ; $40a9: $02
    db $10                                        ; $40aa: $10
    inc b                                         ; $40ab: $04
    nop                                           ; $40ac: $00
    ld [bc], a                                    ; $40ad: $02
    rlca                                          ; $40ae: $07
    rst $38                                       ; $40af: $ff
    rrca                                          ; $40b0: $0f
    dec b                                         ; $40b1: $05
    ld hl, sp+$08                                 ; $40b2: $f8 $08
    ld [c], a                                     ; $40b4: $e2
    ld bc, $f8e2                                  ; $40b5: $01 $e2 $f8
    ld [c], a                                     ; $40b8: $e2
    nop                                           ; $40b9: $00
    ldh a, [rSB]                                  ; $40ba: $f0 $01
    ld a, [c]                                     ; $40bc: $f2
    ld hl, sp-$0e                                 ; $40bd: $f8 $f2
    db $fd                                        ; $40bf: $fd
    ld [bc], a                                    ; $40c0: $02
    inc bc                                        ; $40c1: $03
    sbc [hl]                                      ; $40c2: $9e
    inc b                                         ; $40c3: $04
    rlca                                          ; $40c4: $07
    ld [$080f], sp                                ; $40c5: $08 $0f $08
    rrca                                          ; $40c8: $0f
    db $10                                        ; $40c9: $10
    rra                                           ; $40ca: $1f
    jr jr_0ea_40ec                                ; $40cb: $18 $1f

    inc d                                         ; $40cd: $14
    rra                                           ; $40ce: $1f
    jr nz, jr_0ea_4110                            ; $40cf: $20 $3f

    dec d                                         ; $40d1: $15
    rra                                           ; $40d2: $1f
    ld e, $1f                                     ; $40d3: $1e $1f
    ccf                                           ; $40d5: $3f
    ld hl, $487f                                  ; $40d6: $21 $7f $48
    ld l, e                                       ; $40d9: $6b
    ld e, h                                       ; $40da: $5c
    ld a, h                                       ; $40db: $7c
    ld e, a                                       ; $40dc: $5f
    db $db                                        ; $40dd: $db
    cp a                                          ; $40de: $bf
    db $fc                                        ; $40df: $fc
    cp a                                          ; $40e0: $bf
    ld [bc], a                                    ; $40e1: $02
    ld h, b                                       ; $40e2: $60
    sbc [hl]                                      ; $40e3: $9e
    sub b                                         ; $40e4: $90
    ldh a, [$08]                                  ; $40e5: $f0 $08
    ld hl, sp-$78                                 ; $40e7: $f8 $88
    ld hl, sp+$04                                 ; $40e9: $f8 $04
    db $fc                                        ; $40eb: $fc

jr_0ea_40ec:
    inc c                                         ; $40ec: $0c
    db $fc                                        ; $40ed: $fc
    inc d                                         ; $40ee: $14
    db $fc                                        ; $40ef: $fc
    ld b, d                                       ; $40f0: $42
    cp $14                                        ; $40f1: $fe $14
    db $fc                                        ; $40f3: $fc
    cp h                                          ; $40f4: $bc
    db $fc                                        ; $40f5: $fc
    cp $42                                        ; $40f6: $fe $42
    rst $30                                       ; $40f8: $f7
    add hl, bc                                    ; $40f9: $09
    rst $28                                       ; $40fa: $ef
    sbc c                                         ; $40fb: $99
    sbc l                                         ; $40fc: $9d
    rst $38                                       ; $40fd: $ff
    xor $fd                                       ; $40fe: $ee $fd
    dec e                                         ; $4100: $1d
    cp $04                                        ; $4101: $fe $04
    ld bc, $1b8d                                  ; $4103: $01 $8d $1b
    db $fd                                        ; $4106: $fd
    dec c                                         ; $4107: $0d
    ei                                            ; $4108: $fb
    dec bc                                        ; $4109: $0b
    db $fd                                        ; $410a: $fd
    adc [hl]                                      ; $410b: $8e
    cp $88                                        ; $410c: $fe $88
    ld hl, sp-$38                                 ; $410e: $f8 $c8

jr_0ea_4110:
    ld hl, sp-$28                                 ; $4110: $f8 $d8
    inc bc                                        ; $4112: $03
    ld hl, sp-$7a                                 ; $4113: $f8 $86
    ld l, b                                       ; $4115: $68
    ld hl, sp+$68                                 ; $4116: $f8 $68
    ld hl, sp+$70                                 ; $4118: $f8 $70
    ldh a, [rSC]                                  ; $411a: $f0 $02
    or b                                          ; $411c: $b0
    ld [bc], a                                    ; $411d: $02
    jr nz, jr_0ea_4122                            ; $411e: $20 $02

    ld [hl], b                                    ; $4120: $70
    sub l                                         ; $4121: $95

jr_0ea_4122:
    sbc b                                         ; $4122: $98
    rst $38                                       ; $4123: $ff
    ld d, b                                       ; $4124: $50
    ld a, a                                       ; $4125: $7f
    jr nc, jr_0ea_4167                            ; $4126: $30 $3f

    ld de, $111f                                  ; $4128: $11 $1f $11
    rra                                           ; $412b: $1f
    dec bc                                        ; $412c: $0b
    rrca                                          ; $412d: $0f
    dec bc                                        ; $412e: $0b
    rrca                                          ; $412f: $0f
    dec c                                         ; $4130: $0d
    rrca                                          ; $4131: $0f
    add hl, bc                                    ; $4132: $09
    rrca                                          ; $4133: $0f
    ld a, [bc]                                    ; $4134: $0a
    rrca                                          ; $4135: $0f
    ld b, $03                                     ; $4136: $06 $03
    rlca                                          ; $4138: $07
    ld [bc], a                                    ; $4139: $02
    inc b                                         ; $413a: $04
    inc b                                         ; $413b: $04
    ld b, $03                                     ; $413c: $06 $03
    nop                                           ; $413e: $00
    add d                                         ; $413f: $82
    stop                                          ; $4140: $10 $00
    dec b                                         ; $4142: $05
    db $10                                        ; $4143: $10
    add e                                         ; $4144: $83
    nop                                           ; $4145: $00
    stop                                          ; $4146: $10 $00
    ld [bc], a                                    ; $4148: $02
    db $10                                        ; $4149: $10
    ld [bc], a                                    ; $414a: $02
    nop                                           ; $414b: $00
    ld [bc], a                                    ; $414c: $02
    db $10                                        ; $414d: $10
    add a                                         ; $414e: $87
    nop                                           ; $414f: $00
    stop                                          ; $4150: $10 $00
    stop                                          ; $4152: $10 $00
    stop                                          ; $4154: $10 $00
    ld [bc], a                                    ; $4156: $02
    db $10                                        ; $4157: $10
    ld [bc], a                                    ; $4158: $02
    nop                                           ; $4159: $00
    ld [bc], a                                    ; $415a: $02
    inc bc                                        ; $415b: $03
    ld [bc], a                                    ; $415c: $02
    nop                                           ; $415d: $00
    rst $38                                       ; $415e: $ff
    rrca                                          ; $415f: $0f
    dec b                                         ; $4160: $05
    ld hl, sp+$08                                 ; $4161: $f8 $08
    ld [c], a                                     ; $4163: $e2
    ld bc, $f8e3                                  ; $4164: $01 $e3 $f8

jr_0ea_4167:
    db $e3                                        ; $4167: $e3
    nop                                           ; $4168: $00
    pop af                                        ; $4169: $f1
    ld bc, $f8f3                                  ; $416a: $01 $f3 $f8
    di                                            ; $416d: $f3
    ld sp, hl                                     ; $416e: $f9
    ld [bc], a                                    ; $416f: $02
    inc bc                                        ; $4170: $03
    adc a                                         ; $4171: $8f
    inc b                                         ; $4172: $04
    rlca                                          ; $4173: $07
    ld [$100f], sp                                ; $4174: $08 $0f $10
    rra                                           ; $4177: $1f
    jr jr_0ea_4199                                ; $4178: $18 $1f

    jr jr_0ea_419b                                ; $417a: $18 $1f

    inc h                                         ; $417c: $24
    ccf                                           ; $417d: $3f
    jr nz, jr_0ea_41bf                            ; $417e: $20 $3f

    dec d                                         ; $4180: $15
    inc bc                                        ; $4181: $03
    rra                                           ; $4182: $1f
    adc h                                         ; $4183: $8c
    ccf                                           ; $4184: $3f
    jr nz, jr_0ea_4206                            ; $4185: $20 $7f

    ld c, b                                       ; $4187: $48
    ld l, e                                       ; $4188: $6b
    ld e, h                                       ; $4189: $5c
    ld a, a                                       ; $418a: $7f
    ld e, a                                       ; $418b: $5f
    call c, $f8bf                                 ; $418c: $dc $bf $f8
    cp a                                          ; $418f: $bf
    ld [bc], a                                    ; $4190: $02
    ld h, b                                       ; $4191: $60
    adc a                                         ; $4192: $8f
    sub b                                         ; $4193: $90
    ldh a, [$08]                                  ; $4194: $f0 $08
    ld hl, sp-$7c                                 ; $4196: $f8 $84
    db $fc                                        ; $4198: $fc

jr_0ea_4199:
    inc b                                         ; $4199: $04
    db $fc                                        ; $419a: $fc

jr_0ea_419b:
    inc e                                         ; $419b: $1c
    db $fc                                        ; $419c: $fc
    ld b, d                                       ; $419d: $42
    cp $02                                        ; $419e: $fe $02
    cp $94                                        ; $41a0: $fe $94
    inc bc                                        ; $41a2: $03
    db $fc                                        ; $41a3: $fc
    adc h                                         ; $41a4: $8c
    ld a, [hl]                                    ; $41a5: $7e
    add d                                         ; $41a6: $82
    rst $38                                       ; $41a7: $ff
    add hl, bc                                    ; $41a8: $09
    db $eb                                        ; $41a9: $eb
    sbc l                                         ; $41aa: $9d
    db $fd                                        ; $41ab: $fd
    rst $38                                       ; $41ac: $ff
    ld e, $fd                                     ; $41ad: $1e $fd
    dec c                                         ; $41af: $0d
    cp $04                                        ; $41b0: $fe $04
    ld bc, $0f91                                  ; $41b2: $01 $91 $0f
    db $fd                                        ; $41b5: $fd
    adc l                                         ; $41b6: $8d
    ei                                            ; $41b7: $fb
    adc l                                         ; $41b8: $8d
    rst $38                                       ; $41b9: $ff
    adc $fe                                       ; $41ba: $ce $fe
    ret c                                         ; $41bc: $d8

    ld hl, sp+$78                                 ; $41bd: $f8 $78

jr_0ea_41bf:
    ld hl, sp+$78                                 ; $41bf: $f8 $78
    ld hl, sp+$68                                 ; $41c1: $f8 $68
    ld hl, sp+$70                                 ; $41c3: $f8 $70
    ld [bc], a                                    ; $41c5: $02
    ldh a, [$83]                                  ; $41c6: $f0 $83
    ld [hl], b                                    ; $41c8: $70
    ret nc                                        ; $41c9: $d0

    ld d, b                                       ; $41ca: $50
    ld [bc], a                                    ; $41cb: $02
    or b                                          ; $41cc: $b0
    ld [bc], a                                    ; $41cd: $02
    jr nc, jr_0ea_41d2                            ; $41ce: $30 $02

    nop                                           ; $41d0: $00
    sub h                                         ; $41d1: $94

jr_0ea_41d2:
    sub b                                         ; $41d2: $90
    rst $38                                       ; $41d3: $ff
    ld d, b                                       ; $41d4: $50
    ld a, a                                       ; $41d5: $7f
    ld [hl], c                                    ; $41d6: $71
    ld a, a                                       ; $41d7: $7f
    ld de, $131f                                  ; $41d8: $11 $1f $13
    rra                                           ; $41db: $1f
    dec bc                                        ; $41dc: $0b
    rrca                                          ; $41dd: $0f
    add hl, bc                                    ; $41de: $09
    rrca                                          ; $41df: $0f
    add hl, bc                                    ; $41e0: $09
    rrca                                          ; $41e1: $0f
    dec bc                                        ; $41e2: $0b
    rrca                                          ; $41e3: $0f
    dec bc                                        ; $41e4: $0b
    rrca                                          ; $41e5: $0f
    ld b, $04                                     ; $41e6: $06 $04
    inc b                                         ; $41e8: $04
    ld c, $03                                     ; $41e9: $0e $03
    nop                                           ; $41eb: $00
    dec b                                         ; $41ec: $05
    ld bc, $0083                                  ; $41ed: $01 $83 $00
    ld bc, $0200                                  ; $41f0: $01 $00 $02
    ld bc, $0086                                  ; $41f3: $01 $86 $00
    ld bc, $0100                                  ; $41f6: $01 $00 $01
    nop                                           ; $41f9: $00
    ld bc, $0002                                  ; $41fa: $01 $02 $00
    dec b                                         ; $41fd: $05
    ld bc, $0008                                  ; $41fe: $01 $08 $00
    rst $38                                       ; $4201: $ff
    rrca                                          ; $4202: $0f
    dec b                                         ; $4203: $05
    ld hl, sp+$08                                 ; $4204: $f8 $08

jr_0ea_4206:
    ld [c], a                                     ; $4206: $e2
    ld bc, $f8e2                                  ; $4207: $01 $e2 $f8
    ld [c], a                                     ; $420a: $e2
    nop                                           ; $420b: $00
    pop af                                        ; $420c: $f1
    ld bc, $f8f2                                  ; $420d: $01 $f2 $f8
    ld a, [c]                                     ; $4210: $f2
    ld sp, hl                                     ; $4211: $f9
    ld [bc], a                                    ; $4212: $02
    inc bc                                        ; $4213: $03
    adc a                                         ; $4214: $8f
    inc b                                         ; $4215: $04
    rlca                                          ; $4216: $07
    ld [$080f], sp                                ; $4217: $08 $0f $08
    rrca                                          ; $421a: $0f
    db $10                                        ; $421b: $10
    rra                                           ; $421c: $1f
    jr jr_0ea_423e                                ; $421d: $18 $1f

    inc h                                         ; $421f: $24
    ccf                                           ; $4220: $3f
    jr nz, jr_0ea_4262                            ; $4221: $20 $3f

    dec d                                         ; $4223: $15
    inc bc                                        ; $4224: $03
    rra                                           ; $4225: $1f
    adc h                                         ; $4226: $8c
    ccf                                           ; $4227: $3f
    jr nz, @+$81                                  ; $4228: $20 $7f

    ld c, b                                       ; $422a: $48
    ld l, e                                       ; $422b: $6b
    ld e, h                                       ; $422c: $5c
    ld c, h                                       ; $422d: $4c
    ld a, a                                       ; $422e: $7f
    ld a, e                                       ; $422f: $7b
    ld e, a                                       ; $4230: $5f
    call c, $02bf                                 ; $4231: $dc $bf $02
    ld h, b                                       ; $4234: $60
    adc a                                         ; $4235: $8f
    sub b                                         ; $4236: $90
    ldh a, [$08]                                  ; $4237: $f0 $08
    ld hl, sp-$78                                 ; $4239: $f8 $88
    ld hl, sp+$04                                 ; $423b: $f8 $04
    db $fc                                        ; $423d: $fc

jr_0ea_423e:
    inc c                                         ; $423e: $0c
    db $fc                                        ; $423f: $fc
    ld [de], a                                    ; $4240: $12
    cp $42                                        ; $4241: $fe $42
    cp $14                                        ; $4243: $fe $14
    inc bc                                        ; $4245: $03
    db $fc                                        ; $4246: $fc
    adc h                                         ; $4247: $8c
    ld a, [hl]                                    ; $4248: $7e
    add d                                         ; $4249: $82
    rst $38                                       ; $424a: $ff
    add hl, bc                                    ; $424b: $09
    db $eb                                        ; $424c: $eb
    sbc l                                         ; $424d: $9d
    sbc c                                         ; $424e: $99
    rst $38                                       ; $424f: $ff
    rst $28                                       ; $4250: $ef
    db $fd                                        ; $4251: $fd
    dec e                                         ; $4252: $1d
    cp $02                                        ; $4253: $fe $02
    ld bc, $1f95                                  ; $4255: $01 $95 $1f
    db $fd                                        ; $4258: $fd
    add hl, bc                                    ; $4259: $09
    rst $38                                       ; $425a: $ff
    adc l                                         ; $425b: $8d
    rst $38                                       ; $425c: $ff
    adc d                                         ; $425d: $8a
    ld a, [$f888]                                 ; $425e: $fa $88 $f8
    ret nc                                        ; $4261: $d0

jr_0ea_4262:
    ldh a, [$d0]                                  ; $4262: $f0 $d0
    ldh a, [rSVBK]                                ; $4264: $f0 $70
    ldh a, [$50]                                  ; $4266: $f0 $50
    ldh a, [$50]                                  ; $4268: $f0 $50
    ldh a, [$a0]                                  ; $426a: $f0 $a0
    ld [bc], a                                    ; $426c: $02
    ld h, b                                       ; $426d: $60
    inc bc                                        ; $426e: $03
    ldh [rSC], a                                  ; $426f: $e0 $02
    ld h, b                                       ; $4271: $60
    ld [bc], a                                    ; $4272: $02
    nop                                           ; $4273: $00
    sub [hl]                                      ; $4274: $96
    ld hl, sp-$41                                 ; $4275: $f8 $bf
    sub b                                         ; $4277: $90
    rst $38                                       ; $4278: $ff
    or b                                          ; $4279: $b0
    rst $38                                       ; $427a: $ff
    ld d, c                                       ; $427b: $51
    ld e, a                                       ; $427c: $5f
    ld de, $131f                                  ; $427d: $11 $1f $13
    rra                                           ; $4280: $1f
    ld de, $091f                                  ; $4281: $11 $1f $09
    rrca                                          ; $4284: $0f
    add hl, bc                                    ; $4285: $09
    rrca                                          ; $4286: $0f
    dec bc                                        ; $4287: $0b
    rrca                                          ; $4288: $0f
    ld a, [bc]                                    ; $4289: $0a
    ld c, $02                                     ; $428a: $0e $02
    ld b, $04                                     ; $428c: $06 $04
    inc b                                         ; $428e: $04
    ld [bc], a                                    ; $428f: $02
    ld c, $02                                     ; $4290: $0e $02
    ld b, $83                                     ; $4292: $06 $83
    nop                                           ; $4294: $00
    ld bc, $0500                                  ; $4295: $01 $00 $05
    ld bc, $0083                                  ; $4298: $01 $83 $00
    ld bc, $0200                                  ; $429b: $01 $00 $02
    ld bc, $0002                                  ; $429e: $01 $02 $00
    ld [bc], a                                    ; $42a1: $02
    ld bc, $0083                                  ; $42a2: $01 $83 $00
    ld bc, $0400                                  ; $42a5: $01 $00 $04
    ld bc, $0008                                  ; $42a8: $01 $08 $00
    rst $38                                       ; $42ab: $ff
    rrca                                          ; $42ac: $0f
    dec b                                         ; $42ad: $05
    ld hl, sp+$08                                 ; $42ae: $f8 $08
    ld [c], a                                     ; $42b0: $e2
    ld bc, $f8e2                                  ; $42b1: $01 $e2 $f8
    ld [c], a                                     ; $42b4: $e2
    nop                                           ; $42b5: $00
    ldh a, [rSB]                                  ; $42b6: $f0 $01
    ld a, [c]                                     ; $42b8: $f2
    ld hl, sp-$0e                                 ; $42b9: $f8 $f2
    db $fc                                        ; $42bb: $fc
    ld [bc], a                                    ; $42bc: $02
    inc bc                                        ; $42bd: $03
    sbc [hl]                                      ; $42be: $9e
    inc b                                         ; $42bf: $04
    rlca                                          ; $42c0: $07
    ld [$080f], sp                                ; $42c1: $08 $0f $08
    rrca                                          ; $42c4: $0f
    db $10                                        ; $42c5: $10
    rra                                           ; $42c6: $1f
    jr jr_0ea_42e8                                ; $42c7: $18 $1f

    inc d                                         ; $42c9: $14
    rra                                           ; $42ca: $1f
    jr nz, jr_0ea_430c                            ; $42cb: $20 $3f

    dec d                                         ; $42cd: $15
    rra                                           ; $42ce: $1f
    ld e, $1f                                     ; $42cf: $1e $1f
    ccf                                           ; $42d1: $3f
    ld hl, $4877                                  ; $42d2: $21 $77 $48
    ld a, e                                       ; $42d5: $7b
    ld c, h                                       ; $42d6: $4c
    ld e, h                                       ; $42d7: $5c
    ld a, a                                       ; $42d8: $7f
    cp e                                          ; $42d9: $bb
    rst $18                                       ; $42da: $df
    call c, $02bf                                 ; $42db: $dc $bf $02
    ld h, b                                       ; $42de: $60
    sbc [hl]                                      ; $42df: $9e
    sub b                                         ; $42e0: $90
    ldh a, [$08]                                  ; $42e1: $f0 $08
    ld hl, sp-$78                                 ; $42e3: $f8 $88
    ld hl, sp+$04                                 ; $42e5: $f8 $04
    db $fc                                        ; $42e7: $fc

jr_0ea_42e8:
    inc c                                         ; $42e8: $0c
    db $fc                                        ; $42e9: $fc
    inc d                                         ; $42ea: $14
    db $fc                                        ; $42eb: $fc
    ld b, d                                       ; $42ec: $42
    cp $14                                        ; $42ed: $fe $14
    db $fc                                        ; $42ef: $fc
    cp h                                          ; $42f0: $bc
    db $fc                                        ; $42f1: $fc
    cp $42                                        ; $42f2: $fe $42
    rst $38                                       ; $42f4: $ff
    add hl, bc                                    ; $42f5: $09
    db $eb                                        ; $42f6: $eb
    sbc l                                         ; $42f7: $9d
    sbc a                                         ; $42f8: $9f
    db $fd                                        ; $42f9: $fd
    db $ed                                        ; $42fa: $ed
    cp $1f                                        ; $42fb: $fe $1f
    cp $04                                        ; $42fd: $fe $04
    ld bc, $1995                                  ; $42ff: $01 $95 $19
    rst $38                                       ; $4302: $ff
    ld a, [bc]                                    ; $4303: $0a
    cp $0c                                        ; $4304: $fe $0c
    db $fc                                        ; $4306: $fc
    adc b                                         ; $4307: $88
    ld hl, sp-$78                                 ; $4308: $f8 $88
    ld hl, sp-$30                                 ; $430a: $f8 $d0

jr_0ea_430c:
    ldh a, [$d0]                                  ; $430c: $f0 $d0
    ldh a, [$b0]                                  ; $430e: $f0 $b0
    ldh a, [$50]                                  ; $4310: $f0 $50
    ldh a, [$50]                                  ; $4312: $f0 $50
    ldh a, [$60]                                  ; $4314: $f0 $60
    inc bc                                        ; $4316: $03
    ldh [rSC], a                                  ; $4317: $e0 $02
    jr nz, jr_0ea_431d                            ; $4319: $20 $02

    ld h, b                                       ; $431b: $60
    adc l                                         ; $431c: $8d

jr_0ea_431d:
    ret c                                         ; $431d: $d8

    cp a                                          ; $431e: $bf
    or b                                          ; $431f: $b0
    rst $18                                       ; $4320: $df
    ret nc                                        ; $4321: $d0

    cp a                                          ; $4322: $bf
    ld [hl], c                                    ; $4323: $71
    ld a, a                                       ; $4324: $7f
    ld de, $131f                                  ; $4325: $11 $1f $13
    rra                                           ; $4328: $1f
    dec de                                        ; $4329: $1b
    inc bc                                        ; $432a: $03
    rra                                           ; $432b: $1f
    add [hl]                                      ; $432c: $86
    rla                                           ; $432d: $17
    rra                                           ; $432e: $1f
    ld d, $1f                                     ; $432f: $16 $1f
    ld c, $0f                                     ; $4331: $0e $0f
    ld [bc], a                                    ; $4333: $02
    dec c                                         ; $4334: $0d
    ld [bc], a                                    ; $4335: $02
    inc b                                         ; $4336: $04
    ld [bc], a                                    ; $4337: $02
    ld c, $02                                     ; $4338: $0e $02
    inc c                                         ; $433a: $0c
    inc bc                                        ; $433b: $03
    nop                                           ; $433c: $00
    add d                                         ; $433d: $82
    ld [$0500], sp                                ; $433e: $08 $00 $05
    ld [$0083], sp                                ; $4341: $08 $83 $00
    ld [$0200], sp                                ; $4344: $08 $00 $02
    ld [$0002], sp                                ; $4347: $08 $02 $00
    ld [bc], a                                    ; $434a: $02
    ld [$0087], sp                                ; $434b: $08 $87 $00
    ld [$0800], sp                                ; $434e: $08 $00 $08
    nop                                           ; $4351: $00
    ld [$0200], sp                                ; $4352: $08 $00 $02
    ld [$0002], sp                                ; $4355: $08 $02 $00
    ld [bc], a                                    ; $4358: $02
    inc bc                                        ; $4359: $03
    ld [bc], a                                    ; $435a: $02
    nop                                           ; $435b: $00
    rst $38                                       ; $435c: $ff
    rrca                                          ; $435d: $0f
    dec b                                         ; $435e: $05
    ld hl, sp+$08                                 ; $435f: $f8 $08
    ld [c], a                                     ; $4361: $e2
    ld bc, $f8e3                                  ; $4362: $01 $e3 $f8
    db $e3                                        ; $4365: $e3
    nop                                           ; $4366: $00
    pop af                                        ; $4367: $f1
    ld bc, $f8f3                                  ; $4368: $01 $f3 $f8
    di                                            ; $436b: $f3
    db $fd                                        ; $436c: $fd
    ld [bc], a                                    ; $436d: $02
    inc bc                                        ; $436e: $03
    adc a                                         ; $436f: $8f
    inc b                                         ; $4370: $04
    rlca                                          ; $4371: $07
    ld [$100f], sp                                ; $4372: $08 $0f $10
    rra                                           ; $4375: $1f
    jr jr_0ea_4397                                ; $4376: $18 $1f

    jr jr_0ea_4399                                ; $4378: $18 $1f

    inc h                                         ; $437a: $24
    ccf                                           ; $437b: $3f
    jr nz, jr_0ea_43bd                            ; $437c: $20 $3f

    dec d                                         ; $437e: $15
    inc bc                                        ; $437f: $03
    rra                                           ; $4380: $1f
    adc h                                         ; $4381: $8c
    ccf                                           ; $4382: $3f
    jr nz, jr_0ea_4404                            ; $4383: $20 $7f

    ld c, b                                       ; $4385: $48
    ld l, e                                       ; $4386: $6b
    ld e, h                                       ; $4387: $5c
    ld e, a                                       ; $4388: $5f
    ld a, a                                       ; $4389: $7f
    cp h                                          ; $438a: $bc
    rst $18                                       ; $438b: $df
    ret c                                         ; $438c: $d8

    cp a                                          ; $438d: $bf
    ld [bc], a                                    ; $438e: $02
    ld h, b                                       ; $438f: $60
    adc a                                         ; $4390: $8f
    sub b                                         ; $4391: $90
    ldh a, [$08]                                  ; $4392: $f0 $08
    ld hl, sp-$7c                                 ; $4394: $f8 $84
    db $fc                                        ; $4396: $fc

jr_0ea_4397:
    inc b                                         ; $4397: $04
    db $fc                                        ; $4398: $fc

jr_0ea_4399:
    inc e                                         ; $4399: $1c
    db $fc                                        ; $439a: $fc
    ld b, d                                       ; $439b: $42
    cp $02                                        ; $439c: $fe $02
    cp $94                                        ; $439e: $fe $94
    inc bc                                        ; $43a0: $03
    db $fc                                        ; $43a1: $fc
    adc h                                         ; $43a2: $8c
    ld a, [hl]                                    ; $43a3: $7e
    add d                                         ; $43a4: $82
    rst $38                                       ; $43a5: $ff
    add hl, bc                                    ; $43a6: $09
    db $eb                                        ; $43a7: $eb
    sbc l                                         ; $43a8: $9d
    rst $38                                       ; $43a9: $ff
    db $fd                                        ; $43aa: $fd
    dec e                                         ; $43ab: $1d
    cp $0f                                        ; $43ac: $fe $0f
    cp $04                                        ; $43ae: $fe $04
    ld bc, $0994                                  ; $43b0: $01 $94 $09
    rst $38                                       ; $43b3: $ff
    ld a, [bc]                                    ; $43b4: $0a
    cp $8e                                        ; $43b5: $fe $8e
    cp $88                                        ; $43b7: $fe $88
    ld hl, sp-$38                                 ; $43b9: $f8 $c8
    ld hl, sp-$30                                 ; $43bb: $f8 $d0

jr_0ea_43bd:
    ldh a, [$90]                                  ; $43bd: $f0 $90
    ldh a, [$90]                                  ; $43bf: $f0 $90
    ldh a, [$d0]                                  ; $43c1: $f0 $d0
    ldh a, [$d0]                                  ; $43c3: $f0 $d0
    ldh a, [rTMA]                                 ; $43c5: $f0 $06
    jr nz, jr_0ea_43cb                            ; $43c7: $20 $02

    ld [hl], b                                    ; $43c9: $70
    sub c                                         ; $43ca: $91

jr_0ea_43cb:
    ldh a, [$bf]                                  ; $43cb: $f0 $bf
    or c                                          ; $43cd: $b1
    rst $18                                       ; $43ce: $df
    or c                                          ; $43cf: $b1
    rst $38                                       ; $43d0: $ff
    ld [hl], e                                    ; $43d1: $73
    ld a, a                                       ; $43d2: $7f
    dec de                                        ; $43d3: $1b
    rra                                           ; $43d4: $1f
    ld e, $1f                                     ; $43d5: $1e $1f
    ld e, $1f                                     ; $43d7: $1e $1f
    ld d, $1f                                     ; $43d9: $16 $1f
    ld c, $02                                     ; $43db: $0e $02
    rrca                                          ; $43dd: $0f
    add e                                         ; $43de: $83
    ld c, $0b                                     ; $43df: $0e $0b
    ld a, [bc]                                    ; $43e1: $0a
    ld [bc], a                                    ; $43e2: $02
    dec c                                         ; $43e3: $0d
    ld [bc], a                                    ; $43e4: $02
    inc c                                         ; $43e5: $0c
    rlca                                          ; $43e6: $07
    nop                                           ; $43e7: $00
    dec b                                         ; $43e8: $05
    db $10                                        ; $43e9: $10
    add e                                         ; $43ea: $83
    nop                                           ; $43eb: $00
    stop                                          ; $43ec: $10 $00
    ld [bc], a                                    ; $43ee: $02
    db $10                                        ; $43ef: $10
    add [hl]                                      ; $43f0: $86
    nop                                           ; $43f1: $00
    stop                                          ; $43f2: $10 $00
    stop                                          ; $43f4: $10 $00
    db $10                                        ; $43f6: $10
    ld [bc], a                                    ; $43f7: $02
    nop                                           ; $43f8: $00
    dec b                                         ; $43f9: $05
    db $10                                        ; $43fa: $10
    inc b                                         ; $43fb: $04
    nop                                           ; $43fc: $00
    ld [bc], a                                    ; $43fd: $02
    rlca                                          ; $43fe: $07
    ld [bc], a                                    ; $43ff: $02
    nop                                           ; $4400: $00
    rst $38                                       ; $4401: $ff
    rrca                                          ; $4402: $0f
    dec b                                         ; $4403: $05

jr_0ea_4404:
    ld hl, sp+$08                                 ; $4404: $f8 $08
    ld [c], a                                     ; $4406: $e2
    ld bc, $f8e2                                  ; $4407: $01 $e2 $f8
    ld [c], a                                     ; $440a: $e2
    nop                                           ; $440b: $00
    pop af                                        ; $440c: $f1
    ld bc, $f8f2                                  ; $440d: $01 $f2 $f8
    ld a, [c]                                     ; $4410: $f2
    db $fc                                        ; $4411: $fc
    ld [bc], a                                    ; $4412: $02
    inc bc                                        ; $4413: $03
    adc a                                         ; $4414: $8f
    inc b                                         ; $4415: $04
    rlca                                          ; $4416: $07
    ld [$080f], sp                                ; $4417: $08 $0f $08
    rrca                                          ; $441a: $0f
    db $10                                        ; $441b: $10
    rra                                           ; $441c: $1f
    jr jr_0ea_443e                                ; $441d: $18 $1f

    inc h                                         ; $441f: $24
    ccf                                           ; $4420: $3f
    jr nz, jr_0ea_4462                            ; $4421: $20 $3f

    dec d                                         ; $4423: $15
    inc bc                                        ; $4424: $03
    rra                                           ; $4425: $1f
    adc h                                         ; $4426: $8c
    ccf                                           ; $4427: $3f
    jr nz, jr_0ea_44a9                            ; $4428: $20 $7f

    ld c, b                                       ; $442a: $48
    ld l, e                                       ; $442b: $6b
    ld e, h                                       ; $442c: $5c
    ld c, h                                       ; $442d: $4c
    ld a, a                                       ; $442e: $7f
    ld a, e                                       ; $442f: $7b
    ld e, a                                       ; $4430: $5f
    call c, $02bf                                 ; $4431: $dc $bf $02
    ld h, b                                       ; $4434: $60
    adc a                                         ; $4435: $8f
    sub b                                         ; $4436: $90
    ldh a, [$08]                                  ; $4437: $f0 $08
    ld hl, sp-$78                                 ; $4439: $f8 $88
    ld hl, sp+$04                                 ; $443b: $f8 $04
    db $fc                                        ; $443d: $fc

jr_0ea_443e:
    inc c                                         ; $443e: $0c
    db $fc                                        ; $443f: $fc
    ld [de], a                                    ; $4440: $12
    cp $42                                        ; $4441: $fe $42
    cp $14                                        ; $4443: $fe $14
    inc bc                                        ; $4445: $03
    db $fc                                        ; $4446: $fc
    adc h                                         ; $4447: $8c
    ld a, [hl]                                    ; $4448: $7e
    add d                                         ; $4449: $82
    rst $38                                       ; $444a: $ff
    add hl, bc                                    ; $444b: $09
    db $eb                                        ; $444c: $eb
    sbc l                                         ; $444d: $9d
    sbc c                                         ; $444e: $99
    rst $38                                       ; $444f: $ff
    rst $28                                       ; $4450: $ef
    db $fd                                        ; $4451: $fd
    dec e                                         ; $4452: $1d
    cp $02                                        ; $4453: $fe $02
    ld bc, $1f96                                  ; $4455: $01 $96 $1f
    db $fd                                        ; $4458: $fd
    add hl, bc                                    ; $4459: $09
    rst $38                                       ; $445a: $ff
    dec c                                         ; $445b: $0d
    rst $38                                       ; $445c: $ff
    adc d                                         ; $445d: $8a
    ld a, [$f888]                                 ; $445e: $fa $88 $f8
    ret z                                         ; $4461: $c8

jr_0ea_4462:
    ld hl, sp-$78                                 ; $4462: $f8 $88
    ld hl, sp-$70                                 ; $4464: $f8 $90
    ldh a, [$90]                                  ; $4466: $f0 $90
    ldh a, [$d0]                                  ; $4468: $f0 $d0
    ldh a, [$50]                                  ; $446a: $f0 $50
    ld [hl], b                                    ; $446c: $70
    ld [bc], a                                    ; $446d: $02
    ld h, b                                       ; $446e: $60
    inc b                                         ; $446f: $04
    jr nz, jr_0ea_4474                            ; $4470: $20 $02

    ld [hl], b                                    ; $4472: $70
    sub l                                         ; $4473: $95

jr_0ea_4474:
    ld hl, sp-$41                                 ; $4474: $f8 $bf
    sub b                                         ; $4476: $90
    rst $38                                       ; $4477: $ff
    or c                                          ; $4478: $b1
    rst $38                                       ; $4479: $ff
    ld d, c                                       ; $447a: $51
    ld e, a                                       ; $447b: $5f
    ld de, $0b1f                                  ; $447c: $11 $1f $0b
    rrca                                          ; $447f: $0f
    dec bc                                        ; $4480: $0b
    rrca                                          ; $4481: $0f
    ld c, $0f                                     ; $4482: $0e $0f
    ld a, [bc]                                    ; $4484: $0a
    rrca                                          ; $4485: $0f
    ld a, [bc]                                    ; $4486: $0a
    rrca                                          ; $4487: $0f
    dec b                                         ; $4488: $05
    ld [bc], a                                    ; $4489: $02
    ld b, $03                                     ; $448a: $06 $03
    rlca                                          ; $448c: $07
    ld [bc], a                                    ; $448d: $02
    ld b, $05                                     ; $448e: $06 $05
    nop                                           ; $4490: $00
    add d                                         ; $4491: $82
    ld [$0500], sp                                ; $4492: $08 $00 $05
    ld [$0083], sp                                ; $4495: $08 $83 $00
    ld [$0200], sp                                ; $4498: $08 $00 $02
    ld [$0002], sp                                ; $449b: $08 $02 $00
    ld [bc], a                                    ; $449e: $02
    ld [$0083], sp                                ; $449f: $08 $83 $00
    ld [$0400], sp                                ; $44a2: $08 $00 $04
    ld [$0006], sp                                ; $44a5: $08 $06 $00
    ld [bc], a                                    ; $44a8: $02

jr_0ea_44a9:
    inc bc                                        ; $44a9: $03
    rst $38                                       ; $44aa: $ff
    rrca                                          ; $44ab: $0f
    dec b                                         ; $44ac: $05
    ld hl, sp+$08                                 ; $44ad: $f8 $08
    ld [c], a                                     ; $44af: $e2
    ld bc, $f9e2                                  ; $44b0: $01 $e2 $f9
    ld [c], a                                     ; $44b3: $e2
    nop                                           ; $44b4: $00
    ld a, [c]                                     ; $44b5: $f2
    ld hl, sp-$0e                                 ; $44b6: $f8 $f2
    nop                                           ; $44b8: $00
    ld a, [c]                                     ; $44b9: $f2
    ld bc, $0602                                  ; $44ba: $01 $02 $06
    sub c                                         ; $44bd: $91
    add hl, bc                                    ; $44be: $09
    rrca                                          ; $44bf: $0f
    ld d, $1f                                     ; $44c0: $16 $1f
    dec hl                                        ; $44c2: $2b
    inc a                                         ; $44c3: $3c
    cpl                                           ; $44c4: $2f
    ld a, $3f                                     ; $44c5: $3e $3f
    jr nc, jr_0ea_4508                            ; $44c7: $30 $3f

    ld sp, $392f                                  ; $44c9: $31 $2f $39
    ld c, [hl]                                    ; $44cc: $4e
    ld a, e                                       ; $44cd: $7b
    inc l                                         ; $44ce: $2c
    inc bc                                        ; $44cf: $03
    ccf                                           ; $44d0: $3f
    adc d                                         ; $44d1: $8a
    ld d, l                                       ; $44d2: $55
    ld a, e                                       ; $44d3: $7b
    rst $38                                       ; $44d4: $ff
    sub c                                         ; $44d5: $91
    cp l                                          ; $44d6: $bd
    cp $ff                                        ; $44d7: $fe $ff
    sbc c                                         ; $44d9: $99
    rst $18                                       ; $44da: $df
    or b                                          ; $44db: $b0
    ld [bc], a                                    ; $44dc: $02
    ld h, b                                       ; $44dd: $60
    add a                                         ; $44de: $87
    db $10                                        ; $44df: $10
    ld [hl], b                                    ; $44e0: $70
    ld l, b                                       ; $44e1: $68
    ld a, b                                       ; $44e2: $78
    ld d, h                                       ; $44e3: $54
    inc a                                         ; $44e4: $3c
    ld [hl], h                                    ; $44e5: $74
    ld [bc], a                                    ; $44e6: $02
    ld a, h                                       ; $44e7: $7c
    adc b                                         ; $44e8: $88
    ld c, h                                       ; $44e9: $4c
    ld a, h                                       ; $44ea: $7c
    ld c, h                                       ; $44eb: $4c
    ld [hl], h                                    ; $44ec: $74
    inc e                                         ; $44ed: $1c
    ld [hl], d                                    ; $44ee: $72
    ld e, [hl]                                    ; $44ef: $5e
    inc [hl]                                      ; $44f0: $34
    inc bc                                        ; $44f1: $03
    ld a, h                                       ; $44f2: $7c
    and b                                         ; $44f3: $a0
    ld a, [hl+]                                   ; $44f4: $2a
    ld e, [hl]                                    ; $44f5: $5e
    ld a, a                                       ; $44f6: $7f
    add hl, bc                                    ; $44f7: $09
    ld a, l                                       ; $44f8: $7d
    ccf                                           ; $44f9: $3f
    ld a, a                                       ; $44fa: $7f
    add hl, de                                    ; $44fb: $19
    ld a, e                                       ; $44fc: $7b
    dec c                                         ; $44fd: $0d
    rst $18                                       ; $44fe: $df
    cp b                                          ; $44ff: $b8
    db $db                                        ; $4500: $db
    cp h                                          ; $4501: $bc
    ld sp, hl                                     ; $4502: $f9
    cp a                                          ; $4503: $bf
    db $f4                                        ; $4504: $f4
    sbc a                                         ; $4505: $9f
    or b                                          ; $4506: $b0
    rst $18                                       ; $4507: $df

jr_0ea_4508:
    ld [hl], b                                    ; $4508: $70
    ld a, a                                       ; $4509: $7f
    db $10                                        ; $450a: $10
    rra                                           ; $450b: $1f
    add hl, bc                                    ; $450c: $09
    rrca                                          ; $450d: $0f
    dec c                                         ; $450e: $0d
    rrca                                          ; $450f: $0f
    add hl, bc                                    ; $4510: $09
    rrca                                          ; $4511: $0f
    ld a, [bc]                                    ; $4512: $0a
    ld c, $04                                     ; $4513: $0e $04
    ld b, $02                                     ; $4515: $06 $02
    inc b                                         ; $4517: $04
    inc b                                         ; $4518: $04
    ld c, $96                                     ; $4519: $0e $96
    db $fd                                        ; $451b: $fd
    adc [hl]                                      ; $451c: $8e
    db $ed                                        ; $451d: $ed
    sbc [hl]                                      ; $451e: $9e
    rst $08                                       ; $451f: $cf
    cp $97                                        ; $4520: $fe $97
    db $fc                                        ; $4522: $fc
    ld b, $fd                                     ; $4523: $06 $fd
    rlca                                          ; $4525: $07
    rst $38                                       ; $4526: $ff
    add h                                         ; $4527: $84
    db $fc                                        ; $4528: $fc
    ret z                                         ; $4529: $c8

    ld hl, sp+$58                                 ; $452a: $f8 $58
    ld a, b                                       ; $452c: $78
    ld c, b                                       ; $452d: $48
    ld a, b                                       ; $452e: $78
    jr z, jr_0ea_4569                             ; $452f: $28 $38

    inc b                                         ; $4531: $04
    jr nc, jr_0ea_4536                            ; $4532: $30 $02

    db $10                                        ; $4534: $10
    inc b                                         ; $4535: $04

jr_0ea_4536:
    jr c, @+$0c                                   ; $4536: $38 $0a

    ld bc, $0016                                  ; $4538: $01 $16 $00
    rst $38                                       ; $453b: $ff
    rrca                                          ; $453c: $0f
    dec b                                         ; $453d: $05
    ld hl, sp+$08                                 ; $453e: $f8 $08
    ld [c], a                                     ; $4540: $e2
    ld bc, $f8e2                                  ; $4541: $01 $e2 $f8
    ld [c], a                                     ; $4544: $e2
    nop                                           ; $4545: $00
    pop af                                        ; $4546: $f1
    ld bc, $f8f2                                  ; $4547: $01 $f2 $f8
    ld a, [c]                                     ; $454a: $f2
    ld sp, hl                                     ; $454b: $f9
    ld [bc], a                                    ; $454c: $02
    inc bc                                        ; $454d: $03
    add a                                         ; $454e: $87
    inc b                                         ; $454f: $04
    rlca                                          ; $4550: $07
    dec bc                                        ; $4551: $0b
    rrca                                          ; $4552: $0f
    dec d                                         ; $4553: $15
    ld e, $17                                     ; $4554: $1e $17
    ld [bc], a                                    ; $4556: $02
    rra                                           ; $4557: $1f
    adc b                                         ; $4558: $88
    jr jr_0ea_457a                                ; $4559: $18 $1f

    jr jr_0ea_4574                                ; $455b: $18 $17

    inc e                                         ; $455d: $1c
    daa                                           ; $455e: $27
    dec a                                         ; $455f: $3d
    ld d, $03                                     ; $4560: $16 $03
    rra                                           ; $4562: $1f
    adc d                                         ; $4563: $8a
    ld a, [hl-]                                   ; $4564: $3a
    dec l                                         ; $4565: $2d
    ld a, a                                       ; $4566: $7f
    ld c, b                                       ; $4567: $48
    ld e, [hl]                                    ; $4568: $5e

jr_0ea_4569:
    ld a, a                                       ; $4569: $7f
    ld l, a                                       ; $456a: $6f
    ld e, h                                       ; $456b: $5c
    rst $38                                       ; $456c: $ff
    cp b                                          ; $456d: $b8
    ld [bc], a                                    ; $456e: $02
    ld h, b                                       ; $456f: $60
    sub c                                         ; $4570: $91
    sub b                                         ; $4571: $90
    ldh a, [rBCPS]                                ; $4572: $f0 $68

jr_0ea_4574:
    ld hl, sp-$2c                                 ; $4574: $f8 $d4
    inc a                                         ; $4576: $3c
    db $f4                                        ; $4577: $f4
    ld a, h                                       ; $4578: $7c
    db $fc                                        ; $4579: $fc

jr_0ea_457a:
    ld c, h                                       ; $457a: $4c
    db $fc                                        ; $457b: $fc
    call z, $9cf4                                 ; $457c: $cc $f4 $9c
    ld [hl], d                                    ; $457f: $72
    sbc $34                                       ; $4580: $de $34
    inc bc                                        ; $4582: $03
    db $fc                                        ; $4583: $fc
    adc d                                         ; $4584: $8a
    xor d                                         ; $4585: $aa
    sbc $f7                                       ; $4586: $de $f7
    adc c                                         ; $4588: $89
    rst $38                                       ; $4589: $ff
    dec a                                         ; $458a: $3d
    rst $38                                       ; $458b: $ff
    sbc c                                         ; $458c: $99
    ld a, [$020f]                                 ; $458d: $fa $0f $02
    ld bc, $ff8f                                  ; $4590: $01 $8f $ff
    add hl, de                                    ; $4593: $19
    rst $18                                       ; $4594: $df
    add hl, sp                                    ; $4595: $39
    sbc l                                         ; $4596: $9d
    ei                                            ; $4597: $fb
    ld a, $f2                                     ; $4598: $3e $f2
    ld e, $f2                                     ; $459a: $1e $f2
    inc c                                         ; $459c: $0c
    db $fc                                        ; $459d: $fc
    adc b                                         ; $459e: $88
    ld hl, sp-$70                                 ; $459f: $f8 $90
    inc bc                                        ; $45a1: $03
    ldh a, [$81]                                  ; $45a2: $f0 $81
    and b                                         ; $45a4: $a0
    inc bc                                        ; $45a5: $03
    ldh [rDIV], a                                 ; $45a6: $e0 $04
    ld b, b                                       ; $45a8: $40
    inc b                                         ; $45a9: $04
    ld h, b                                       ; $45aa: $60
    sub e                                         ; $45ab: $93
    rst $18                                       ; $45ac: $df
    cp b                                          ; $45ad: $b8
    ei                                            ; $45ae: $fb
    cp h                                          ; $45af: $bc
    sbc c                                         ; $45b0: $99
    rst $38                                       ; $45b1: $ff
    db $f4                                        ; $45b2: $f4
    sbc a                                         ; $45b3: $9f
    ld [hl], b                                    ; $45b4: $70
    ld a, a                                       ; $45b5: $7f
    db $10                                        ; $45b6: $10
    rra                                           ; $45b7: $1f
    ld e, $1f                                     ; $45b8: $1e $1f
    add hl, bc                                    ; $45ba: $09
    rrca                                          ; $45bb: $0f
    add hl, bc                                    ; $45bc: $09
    rrca                                          ; $45bd: $0f
    ld a, [bc]                                    ; $45be: $0a
    inc bc                                        ; $45bf: $03
    ld c, $04                                     ; $45c0: $0e $04
    inc b                                         ; $45c2: $04
    inc b                                         ; $45c3: $04
    ld c, $02                                     ; $45c4: $0e $02
    inc b                                         ; $45c6: $04
    ld [$8301], sp                                ; $45c7: $08 $01 $83
    nop                                           ; $45ca: $00
    ld bc, $0500                                  ; $45cb: $01 $00 $05
    ld bc, $0010                                  ; $45ce: $01 $10 $00
    rst $38                                       ; $45d1: $ff
    rrca                                          ; $45d2: $0f
    dec b                                         ; $45d3: $05
    ld hl, sp+$08                                 ; $45d4: $f8 $08
    ld [c], a                                     ; $45d6: $e2
    ld bc, $f8e3                                  ; $45d7: $01 $e3 $f8
    db $e3                                        ; $45da: $e3
    nop                                           ; $45db: $00
    di                                            ; $45dc: $f3
    ld hl, sp-$0d                                 ; $45dd: $f8 $f3
    nop                                           ; $45df: $00
    di                                            ; $45e0: $f3
    ld bc, $0302                                  ; $45e1: $01 $02 $03
    add a                                         ; $45e4: $87
    inc b                                         ; $45e5: $04
    rlca                                          ; $45e6: $07
    dec bc                                        ; $45e7: $0b
    rrca                                          ; $45e8: $0f
    dec d                                         ; $45e9: $15
    ld e, $17                                     ; $45ea: $1e $17
    ld [bc], a                                    ; $45ec: $02
    rra                                           ; $45ed: $1f
    adc b                                         ; $45ee: $88
    jr jr_0ea_4620                                ; $45ef: $18 $2f

    jr c, jr_0ea_461a                             ; $45f1: $38 $27

    inc a                                         ; $45f3: $3c
    daa                                           ; $45f4: $27
    dec a                                         ; $45f5: $3d
    ld e, $03                                     ; $45f6: $1e $03
    rra                                           ; $45f8: $1f
    adc d                                         ; $45f9: $8a
    ld a, [hl-]                                   ; $45fa: $3a
    dec l                                         ; $45fb: $2d
    ld a, a                                       ; $45fc: $7f
    ld c, b                                       ; $45fd: $48
    ld e, a                                       ; $45fe: $5f
    ld a, a                                       ; $45ff: $7f
    ld l, a                                       ; $4600: $6f
    ld e, h                                       ; $4601: $5c
    rst $38                                       ; $4602: $ff
    cp b                                          ; $4603: $b8
    ld [bc], a                                    ; $4604: $02
    ld h, b                                       ; $4605: $60
    sub c                                         ; $4606: $91
    sub b                                         ; $4607: $90
    ldh a, [rBCPS]                                ; $4608: $f0 $68
    ld hl, sp-$2c                                 ; $460a: $f8 $d4
    inc a                                         ; $460c: $3c
    db $f4                                        ; $460d: $f4
    ld a, h                                       ; $460e: $7c
    db $fc                                        ; $460f: $fc
    ld c, h                                       ; $4610: $4c
    ld a, [$f2ce]                                 ; $4611: $fa $ce $f2
    sbc [hl]                                      ; $4614: $9e
    ld [hl], d                                    ; $4615: $72
    sbc $3c                                       ; $4616: $de $3c
    inc bc                                        ; $4618: $03
    db $fc                                        ; $4619: $fc

jr_0ea_461a:
    sbc [hl]                                      ; $461a: $9e
    xor d                                         ; $461b: $aa
    sbc $f7                                       ; $461c: $de $f7
    adc c                                         ; $461e: $89
    cp a                                          ; $461f: $bf

jr_0ea_4620:
    ld a, l                                       ; $4620: $7d
    rst $38                                       ; $4621: $ff
    sbc c                                         ; $4622: $99
    ld sp, hl                                     ; $4623: $f9
    rrca                                          ; $4624: $0f
    rst $18                                       ; $4625: $df
    cp b                                          ; $4626: $b8
    ei                                            ; $4627: $fb
    cp h                                          ; $4628: $bc
    sbc c                                         ; $4629: $99
    rst $38                                       ; $462a: $ff
    db $f4                                        ; $462b: $f4
    sbc a                                         ; $462c: $9f
    ld [hl], b                                    ; $462d: $70
    ld a, a                                       ; $462e: $7f
    db $10                                        ; $462f: $10
    rra                                           ; $4630: $1f
    dec c                                         ; $4631: $0d
    rrca                                          ; $4632: $0f
    add hl, bc                                    ; $4633: $09
    rrca                                          ; $4634: $0f
    add hl, bc                                    ; $4635: $09
    rrca                                          ; $4636: $0f
    dec b                                         ; $4637: $05
    rlca                                          ; $4638: $07
    inc b                                         ; $4639: $04
    ld b, $02                                     ; $463a: $06 $02
    ld [bc], a                                    ; $463c: $02
    inc b                                         ; $463d: $04
    rlca                                          ; $463e: $07
    ld [bc], a                                    ; $463f: $02
    nop                                           ; $4640: $00
    sub h                                         ; $4641: $94
    rst $38                                       ; $4642: $ff
    adc h                                         ; $4643: $8c
    rst $28                                       ; $4644: $ef
    sbc h                                         ; $4645: $9c
    adc $fd                                       ; $4646: $ce $fd
    sbc e                                         ; $4648: $9b
    db $fd                                        ; $4649: $fd
    rrca                                          ; $464a: $0f
    ld sp, hl                                     ; $464b: $f9
    ld b, $fe                                     ; $464c: $06 $fe
    ret z                                         ; $464e: $c8

    ld hl, sp+$58                                 ; $464f: $f8 $58
    ld a, b                                       ; $4651: $78
    ld c, b                                       ; $4652: $48
    ld a, b                                       ; $4653: $78
    jr z, @+$3a                                   ; $4654: $28 $38

    ld [bc], a                                    ; $4656: $02
    jr @+$06                                      ; $4657: $18 $04

    jr nc, jr_0ea_4661                            ; $4659: $30 $06

    nop                                           ; $465b: $00
    ld b, $01                                     ; $465c: $06 $01
    ld a, [de]                                    ; $465e: $1a
    nop                                           ; $465f: $00
    rst $38                                       ; $4660: $ff

jr_0ea_4661:
    rrca                                          ; $4661: $0f
    dec b                                         ; $4662: $05
    ld hl, sp+$08                                 ; $4663: $f8 $08
    ld [c], a                                     ; $4665: $e2
    ld bc, $f9e2                                  ; $4666: $01 $e2 $f9
    ld [c], a                                     ; $4669: $e2
    nop                                           ; $466a: $00
    ld a, [c]                                     ; $466b: $f2
    ld hl, sp-$0e                                 ; $466c: $f8 $f2
    nop                                           ; $466e: $00
    ld a, [c]                                     ; $466f: $f2
    ld bc, $0602                                  ; $4670: $01 $02 $06
    sub c                                         ; $4673: $91
    add hl, bc                                    ; $4674: $09
    rrca                                          ; $4675: $0f
    ld d, $1f                                     ; $4676: $16 $1f
    dec hl                                        ; $4678: $2b
    inc a                                         ; $4679: $3c
    cpl                                           ; $467a: $2f
    ld a, $3f                                     ; $467b: $3e $3f
    jr nc, jr_0ea_46be                            ; $467d: $30 $3f

    ld sp, $794f                                  ; $467f: $31 $4f $79
    ld c, [hl]                                    ; $4682: $4e
    ld a, e                                       ; $4683: $7b
    inc l                                         ; $4684: $2c
    inc bc                                        ; $4685: $03
    ccf                                           ; $4686: $3f
    adc d                                         ; $4687: $8a
    ld d, l                                       ; $4688: $55
    ld a, e                                       ; $4689: $7b
    rst $38                                       ; $468a: $ff
    sub c                                         ; $468b: $91
    cp l                                          ; $468c: $bd
    cp $ff                                        ; $468d: $fe $ff
    sbc c                                         ; $468f: $99
    rst $18                                       ; $4690: $df
    or b                                          ; $4691: $b0
    ld [bc], a                                    ; $4692: $02
    ld h, b                                       ; $4693: $60
    add a                                         ; $4694: $87
    db $10                                        ; $4695: $10
    ld [hl], b                                    ; $4696: $70
    ld l, b                                       ; $4697: $68
    ld a, b                                       ; $4698: $78
    ld d, h                                       ; $4699: $54
    inc a                                         ; $469a: $3c
    ld [hl], h                                    ; $469b: $74
    ld [bc], a                                    ; $469c: $02
    ld a, h                                       ; $469d: $7c
    adc b                                         ; $469e: $88
    ld c, h                                       ; $469f: $4c
    ld a, h                                       ; $46a0: $7c
    ld c, h                                       ; $46a1: $4c
    ld [hl], d                                    ; $46a2: $72
    ld e, $72                                     ; $46a3: $1e $72
    ld e, [hl]                                    ; $46a5: $5e
    inc [hl]                                      ; $46a6: $34
    inc bc                                        ; $46a7: $03
    ld a, h                                       ; $46a8: $7c
    and b                                         ; $46a9: $a0
    ld a, [hl+]                                   ; $46aa: $2a
    ld e, [hl]                                    ; $46ab: $5e
    ld a, a                                       ; $46ac: $7f
    add hl, bc                                    ; $46ad: $09
    ld a, l                                       ; $46ae: $7d
    ccf                                           ; $46af: $3f
    ld a, a                                       ; $46b0: $7f
    add hl, de                                    ; $46b1: $19
    ld a, e                                       ; $46b2: $7b
    dec c                                         ; $46b3: $0d
    rst $18                                       ; $46b4: $df
    cp b                                          ; $46b5: $b8
    db $db                                        ; $46b6: $db
    cp h                                          ; $46b7: $bc
    ld sp, hl                                     ; $46b8: $f9
    cp a                                          ; $46b9: $bf
    db $f4                                        ; $46ba: $f4
    sbc a                                         ; $46bb: $9f
    or b                                          ; $46bc: $b0
    rst $18                                       ; $46bd: $df

jr_0ea_46be:
    ld [hl], b                                    ; $46be: $70
    ld a, a                                       ; $46bf: $7f
    db $10                                        ; $46c0: $10
    rra                                           ; $46c1: $1f
    add hl, bc                                    ; $46c2: $09
    rrca                                          ; $46c3: $0f
    dec c                                         ; $46c4: $0d
    rrca                                          ; $46c5: $0f
    add hl, bc                                    ; $46c6: $09
    rrca                                          ; $46c7: $0f
    dec b                                         ; $46c8: $05
    rlca                                          ; $46c9: $07
    ld [bc], a                                    ; $46ca: $02
    ld b, $04                                     ; $46cb: $06 $04
    ld [bc], a                                    ; $46cd: $02
    ld [bc], a                                    ; $46ce: $02
    rlca                                          ; $46cf: $07
    ld [bc], a                                    ; $46d0: $02
    ld b, $96                                     ; $46d1: $06 $96
    db $fd                                        ; $46d3: $fd
    adc [hl]                                      ; $46d4: $8e
    db $ed                                        ; $46d5: $ed
    sbc [hl]                                      ; $46d6: $9e
    rst $08                                       ; $46d7: $cf
    cp $97                                        ; $46d8: $fe $97
    db $fc                                        ; $46da: $fc
    ld b, $fd                                     ; $46db: $06 $fd
    rlca                                          ; $46dd: $07
    rst $38                                       ; $46de: $ff
    adc h                                         ; $46df: $8c
    db $fc                                        ; $46e0: $fc
    ret c                                         ; $46e1: $d8

    ld hl, sp+$48                                 ; $46e2: $f8 $48
    ld a, b                                       ; $46e4: $78
    jr z, jr_0ea_471f                             ; $46e5: $28 $38

    jr z, jr_0ea_4721                             ; $46e7: $28 $38

    ld [bc], a                                    ; $46e9: $02
    jr jr_0ea_46f0                                ; $46ea: $18 $04

    jr c, jr_0ea_46f0                             ; $46ec: $38 $02

    db $10                                        ; $46ee: $10
    ld [bc], a                                    ; $46ef: $02

jr_0ea_46f0:
    nop                                           ; $46f0: $00
    ld a, [bc]                                    ; $46f1: $0a
    ld bc, $0016                                  ; $46f2: $01 $16 $00
    rst $38                                       ; $46f5: $ff
    rrca                                          ; $46f6: $0f
    dec b                                         ; $46f7: $05
    ld hl, sp+$08                                 ; $46f8: $f8 $08
    ld [c], a                                     ; $46fa: $e2
    ld bc, $f8e2                                  ; $46fb: $01 $e2 $f8
    ld [c], a                                     ; $46fe: $e2
    nop                                           ; $46ff: $00
    pop af                                        ; $4700: $f1
    ld bc, $f8f2                                  ; $4701: $01 $f2 $f8
    ld a, [c]                                     ; $4704: $f2
    db $fc                                        ; $4705: $fc
    ld [bc], a                                    ; $4706: $02
    inc bc                                        ; $4707: $03
    add a                                         ; $4708: $87
    inc b                                         ; $4709: $04
    rlca                                          ; $470a: $07
    dec bc                                        ; $470b: $0b
    rrca                                          ; $470c: $0f
    dec d                                         ; $470d: $15
    ld e, $17                                     ; $470e: $1e $17
    ld [bc], a                                    ; $4710: $02
    rra                                           ; $4711: $1f
    adc b                                         ; $4712: $88
    jr jr_0ea_4734                                ; $4713: $18 $1f

    jr jr_0ea_472e                                ; $4715: $18 $17

    inc e                                         ; $4717: $1c
    daa                                           ; $4718: $27
    dec a                                         ; $4719: $3d
    ld d, $03                                     ; $471a: $16 $03
    rra                                           ; $471c: $1f
    adc d                                         ; $471d: $8a
    ld a, [hl+]                                   ; $471e: $2a

jr_0ea_471f:
    dec a                                         ; $471f: $3d
    ld [hl], a                                    ; $4720: $77

jr_0ea_4721:
    ld c, b                                       ; $4721: $48
    ld a, [hl]                                    ; $4722: $7e
    ld e, a                                       ; $4723: $5f
    ld a, a                                       ; $4724: $7f
    ld c, h                                       ; $4725: $4c
    xor a                                         ; $4726: $af
    ld hl, sp+$02                                 ; $4727: $f8 $02
    ld h, b                                       ; $4729: $60
    sub c                                         ; $472a: $91
    sub b                                         ; $472b: $90
    ldh a, [rBCPS]                                ; $472c: $f0 $68

jr_0ea_472e:
    ld hl, sp-$2c                                 ; $472e: $f8 $d4
    inc a                                         ; $4730: $3c
    db $f4                                        ; $4731: $f4
    ld a, h                                       ; $4732: $7c
    db $fc                                        ; $4733: $fc

jr_0ea_4734:
    ld c, h                                       ; $4734: $4c
    db $fc                                        ; $4735: $fc
    call z, $9cf4                                 ; $4736: $cc $f4 $9c
    ld [hl], d                                    ; $4739: $72
    sbc $34                                       ; $473a: $de $34
    inc bc                                        ; $473c: $03
    db $fc                                        ; $473d: $fc
    adc d                                         ; $473e: $8a
    xor [hl]                                      ; $473f: $ae
    jp c, $89ff                                   ; $4740: $da $ff $89

    db $fd                                        ; $4743: $fd
    ccf                                           ; $4744: $3f
    ei                                            ; $4745: $fb
    sbc l                                         ; $4746: $9d
    rst $38                                       ; $4747: $ff
    ld c, $02                                     ; $4748: $0e $02
    ld bc, $fb93                                  ; $474a: $01 $93 $fb
    dec e                                         ; $474d: $1d
    rst $18                                       ; $474e: $df
    dec a                                         ; $474f: $3d
    sbc c                                         ; $4750: $99
    rst $38                                       ; $4751: $ff
    cpl                                           ; $4752: $2f
    ld sp, hl                                     ; $4753: $f9
    ld c, $fe                                     ; $4754: $0e $fe
    ld [$78f8], sp                                ; $4756: $08 $f8 $78
    ld hl, sp-$70                                 ; $4759: $f8 $90
    ldh a, [$90]                                  ; $475b: $f0 $90
    ldh a, [$50]                                  ; $475d: $f0 $50
    inc bc                                        ; $475f: $03
    ld [hl], b                                    ; $4760: $70
    inc b                                         ; $4761: $04
    jr nz, jr_0ea_4768                            ; $4762: $20 $04

    ld [hl], b                                    ; $4764: $70
    adc a                                         ; $4765: $8f
    rst $38                                       ; $4766: $ff
    sbc b                                         ; $4767: $98

jr_0ea_4768:
    ei                                            ; $4768: $fb
    sbc h                                         ; $4769: $9c
    cp c                                          ; $476a: $b9
    rst $18                                       ; $476b: $df
    ld a, h                                       ; $476c: $7c
    ld c, a                                       ; $476d: $4f
    ld a, b                                       ; $476e: $78
    ld c, a                                       ; $476f: $4f
    jr nc, jr_0ea_47b1                            ; $4770: $30 $3f

    ld de, $091f                                  ; $4772: $11 $1f $09
    inc bc                                        ; $4775: $03
    rrca                                          ; $4776: $0f
    add c                                         ; $4777: $81
    dec b                                         ; $4778: $05
    inc bc                                        ; $4779: $03
    rlca                                          ; $477a: $07
    inc b                                         ; $477b: $04
    ld [bc], a                                    ; $477c: $02
    inc b                                         ; $477d: $04
    ld b, $02                                     ; $477e: $06 $02
    nop                                           ; $4780: $00
    ld [$8308], sp                                ; $4781: $08 $08 $83
    nop                                           ; $4784: $00
    ld [$0500], sp                                ; $4785: $08 $00 $05
    ld [$000e], sp                                ; $4788: $08 $0e $00
    ld [bc], a                                    ; $478b: $02
    ld bc, $0fff                                  ; $478c: $01 $ff $0f
    dec b                                         ; $478f: $05
    ld hl, sp+$08                                 ; $4790: $f8 $08
    ld [c], a                                     ; $4792: $e2
    ld bc, $f9e3                                  ; $4793: $01 $e3 $f9
    db $e3                                        ; $4796: $e3
    ld bc, $f8f3                                  ; $4797: $01 $f3 $f8
    di                                            ; $479a: $f3
    nop                                           ; $479b: $00
    di                                            ; $479c: $f3
    ld bc, $0602                                  ; $479d: $01 $02 $06
    sub c                                         ; $47a0: $91
    add hl, bc                                    ; $47a1: $09
    rrca                                          ; $47a2: $0f
    ld d, $1f                                     ; $47a3: $16 $1f
    dec hl                                        ; $47a5: $2b
    inc a                                         ; $47a6: $3c
    cpl                                           ; $47a7: $2f
    ld a, $3f                                     ; $47a8: $3e $3f
    jr nc, jr_0ea_480b                            ; $47aa: $30 $5f

    ld [hl], c                                    ; $47ac: $71
    ld c, a                                       ; $47ad: $4f
    ld a, c                                       ; $47ae: $79
    ld c, [hl]                                    ; $47af: $4e
    ld a, e                                       ; $47b0: $7b

jr_0ea_47b1:
    inc a                                         ; $47b1: $3c
    inc bc                                        ; $47b2: $03
    ccf                                           ; $47b3: $3f
    adc d                                         ; $47b4: $8a
    ld d, l                                       ; $47b5: $55
    ld a, e                                       ; $47b6: $7b
    rst $28                                       ; $47b7: $ef
    sub c                                         ; $47b8: $91
    rst $38                                       ; $47b9: $ff
    cp [hl]                                       ; $47ba: $be
    rst $38                                       ; $47bb: $ff
    sbc c                                         ; $47bc: $99
    sbc a                                         ; $47bd: $9f
    ldh a, [rSC]                                  ; $47be: $f0 $02
    ret nz                                        ; $47c0: $c0

    add a                                         ; $47c1: $87
    jr nz, @-$1e                                  ; $47c2: $20 $e0

    ret nc                                        ; $47c4: $d0

    ldh a, [$a8]                                  ; $47c5: $f0 $a8
    ld a, b                                       ; $47c7: $78
    add sp, $02                                   ; $47c8: $e8 $02
    ld hl, sp-$78                                 ; $47ca: $f8 $88
    sbc b                                         ; $47cc: $98
    db $f4                                        ; $47cd: $f4
    sbc h                                         ; $47ce: $9c
    db $e4                                        ; $47cf: $e4
    inc a                                         ; $47d0: $3c
    db $e4                                        ; $47d1: $e4
    cp h                                          ; $47d2: $bc
    ld a, b                                       ; $47d3: $78
    inc bc                                        ; $47d4: $03
    ld hl, sp-$62                                 ; $47d5: $f8 $9e
    ld e, h                                       ; $47d7: $5c
    or h                                          ; $47d8: $b4
    cp $12                                        ; $47d9: $fe $12
    ld a, d                                       ; $47db: $7a
    cp $f6                                        ; $47dc: $fe $f6
    ld a, [hl-]                                   ; $47de: $3a
    rst $38                                       ; $47df: $ff
    dec e                                         ; $47e0: $1d
    rst $38                                       ; $47e1: $ff
    sbc b                                         ; $47e2: $98
    ei                                            ; $47e3: $fb
    sbc h                                         ; $47e4: $9c
    cp c                                          ; $47e5: $b9
    rst $18                                       ; $47e6: $df
    ld l, h                                       ; $47e7: $6c
    ld e, a                                       ; $47e8: $5f
    ld a, b                                       ; $47e9: $78
    ld c, a                                       ; $47ea: $4f
    jr nc, jr_0ea_482c                            ; $47eb: $30 $3f

    add hl, bc                                    ; $47ed: $09
    rrca                                          ; $47ee: $0f
    dec c                                         ; $47ef: $0d
    rrca                                          ; $47f0: $0f
    add hl, bc                                    ; $47f1: $09
    rrca                                          ; $47f2: $0f
    ld a, [bc]                                    ; $47f3: $0a
    ld c, $02                                     ; $47f4: $0e $02
    inc c                                         ; $47f6: $0c
    inc b                                         ; $47f7: $04
    ld b, $06                                     ; $47f8: $06 $06
    nop                                           ; $47fa: $00
    sub h                                         ; $47fb: $94
    db $fd                                        ; $47fc: $fd
    adc [hl]                                      ; $47fd: $8e
    rst $28                                       ; $47fe: $ef
    sbc [hl]                                      ; $47ff: $9e
    call z, $97ff                                 ; $4800: $cc $ff $97
    db $fc                                        ; $4803: $fc
    rlca                                          ; $4804: $07
    rst $38                                       ; $4805: $ff
    inc b                                         ; $4806: $04
    db $fc                                        ; $4807: $fc
    ret c                                         ; $4808: $d8

    ld hl, sp+$48                                 ; $4809: $f8 $48

jr_0ea_480b:
    ld a, b                                       ; $480b: $78
    ld c, b                                       ; $480c: $48
    ld a, b                                       ; $480d: $78
    ld d, b                                       ; $480e: $50
    ld [hl], b                                    ; $480f: $70
    inc b                                         ; $4810: $04
    jr nc, jr_0ea_4815                            ; $4811: $30 $02

    jr nz, @+$06                                  ; $4813: $20 $04

jr_0ea_4815:
    ld [hl], b                                    ; $4815: $70
    ld [bc], a                                    ; $4816: $02
    nop                                           ; $4817: $00
    ld [$1801], sp                                ; $4818: $08 $01 $18
    nop                                           ; $481b: $00
    rst $38                                       ; $481c: $ff
    rrca                                          ; $481d: $0f
    dec b                                         ; $481e: $05
    ld hl, sp+$08                                 ; $481f: $f8 $08
    ld [c], a                                     ; $4821: $e2
    ld bc, $f9e2                                  ; $4822: $01 $e2 $f9
    ld [c], a                                     ; $4825: $e2
    nop                                           ; $4826: $00
    ld a, [c]                                     ; $4827: $f2
    ld hl, sp-$0e                                 ; $4828: $f8 $f2
    nop                                           ; $482a: $00
    ld a, [c]                                     ; $482b: $f2

jr_0ea_482c:
    ld bc, $0602                                  ; $482c: $01 $02 $06
    sub c                                         ; $482f: $91
    add hl, bc                                    ; $4830: $09
    rrca                                          ; $4831: $0f
    ld d, $1f                                     ; $4832: $16 $1f
    dec hl                                        ; $4834: $2b
    inc a                                         ; $4835: $3c
    cpl                                           ; $4836: $2f
    ld a, $3f                                     ; $4837: $3e $3f
    jr nc, jr_0ea_487a                            ; $4839: $30 $3f

    ld sp, $794f                                  ; $483b: $31 $4f $79
    ld c, [hl]                                    ; $483e: $4e
    ld a, e                                       ; $483f: $7b
    inc l                                         ; $4840: $2c
    inc bc                                        ; $4841: $03
    ccf                                           ; $4842: $3f
    adc d                                         ; $4843: $8a
    ld d, l                                       ; $4844: $55
    ld a, e                                       ; $4845: $7b
    rst $38                                       ; $4846: $ff
    sub c                                         ; $4847: $91
    cp l                                          ; $4848: $bd
    cp $ff                                        ; $4849: $fe $ff
    sbc c                                         ; $484b: $99
    rst $18                                       ; $484c: $df
    or b                                          ; $484d: $b0
    ld [bc], a                                    ; $484e: $02
    ld h, b                                       ; $484f: $60
    add a                                         ; $4850: $87
    db $10                                        ; $4851: $10
    ld [hl], b                                    ; $4852: $70
    ld l, b                                       ; $4853: $68
    ld a, b                                       ; $4854: $78
    ld d, h                                       ; $4855: $54
    inc a                                         ; $4856: $3c
    ld [hl], h                                    ; $4857: $74
    ld [bc], a                                    ; $4858: $02
    ld a, h                                       ; $4859: $7c
    adc b                                         ; $485a: $88
    ld c, h                                       ; $485b: $4c
    ld a, h                                       ; $485c: $7c
    ld c, h                                       ; $485d: $4c
    ld [hl], d                                    ; $485e: $72
    ld e, $72                                     ; $485f: $1e $72
    ld e, [hl]                                    ; $4861: $5e
    inc [hl]                                      ; $4862: $34
    inc bc                                        ; $4863: $03
    ld a, h                                       ; $4864: $7c
    and b                                         ; $4865: $a0
    ld a, [hl+]                                   ; $4866: $2a
    ld e, [hl]                                    ; $4867: $5e
    ld a, a                                       ; $4868: $7f
    add hl, bc                                    ; $4869: $09
    ld a, l                                       ; $486a: $7d
    ccf                                           ; $486b: $3f
    ld a, a                                       ; $486c: $7f
    add hl, de                                    ; $486d: $19
    ld a, e                                       ; $486e: $7b
    dec c                                         ; $486f: $0d
    rst $18                                       ; $4870: $df
    cp b                                          ; $4871: $b8
    db $db                                        ; $4872: $db
    cp h                                          ; $4873: $bc
    ld sp, hl                                     ; $4874: $f9
    cp a                                          ; $4875: $bf
    db $f4                                        ; $4876: $f4
    sbc a                                         ; $4877: $9f
    or b                                          ; $4878: $b0
    rst $18                                       ; $4879: $df

jr_0ea_487a:
    ld [hl], b                                    ; $487a: $70
    ld a, a                                       ; $487b: $7f
    jr jr_0ea_489d                                ; $487c: $18 $1f

    dec c                                         ; $487e: $0d
    rrca                                          ; $487f: $0f
    add hl, bc                                    ; $4880: $09
    rrca                                          ; $4881: $0f
    ld a, [bc]                                    ; $4882: $0a
    ld c, $0a                                     ; $4883: $0e $0a
    ld c, $02                                     ; $4885: $0e $02
    inc c                                         ; $4887: $0c
    inc b                                         ; $4888: $04
    ld c, $02                                     ; $4889: $0e $02
    inc b                                         ; $488b: $04
    ld [bc], a                                    ; $488c: $02
    nop                                           ; $488d: $00
    sub [hl]                                      ; $488e: $96
    db $fd                                        ; $488f: $fd
    adc [hl]                                      ; $4890: $8e
    db $ed                                        ; $4891: $ed
    sbc [hl]                                      ; $4892: $9e
    rst $08                                       ; $4893: $cf
    cp $97                                        ; $4894: $fe $97
    db $fc                                        ; $4896: $fc
    ld b, $fd                                     ; $4897: $06 $fd
    rlca                                          ; $4899: $07
    rst $38                                       ; $489a: $ff
    add h                                         ; $489b: $84
    db $fc                                        ; $489c: $fc

jr_0ea_489d:
    ret z                                         ; $489d: $c8

    ld hl, sp+$58                                 ; $489e: $f8 $58
    ld a, b                                       ; $48a0: $78
    ld c, b                                       ; $48a1: $48
    ld a, b                                       ; $48a2: $78
    ld d, b                                       ; $48a3: $50
    ld [hl], b                                    ; $48a4: $70
    ld [bc], a                                    ; $48a5: $02
    jr nc, jr_0ea_48ac                            ; $48a6: $30 $04

    jr nz, jr_0ea_48ac                            ; $48a8: $20 $02

    ld [hl], b                                    ; $48aa: $70
    ld [bc], a                                    ; $48ab: $02

jr_0ea_48ac:
    jr nc, @+$0c                                  ; $48ac: $30 $0a

    ld bc, $0016                                  ; $48ae: $01 $16 $00
    rst $38                                       ; $48b1: $ff
    ld de, $f606                                  ; $48b2: $11 $06 $f6
    ld a, [bc]                                    ; $48b5: $0a
    ld [c], a                                     ; $48b6: $e2
    ld bc, $f8e8                                  ; $48b7: $01 $e8 $f8
    ld [c], a                                     ; $48ba: $e2
    nop                                           ; $48bb: $00
    ld [c], a                                     ; $48bc: $e2
    inc bc                                        ; $48bd: $03
    ld a, [c]                                     ; $48be: $f2
    db $f4                                        ; $48bf: $f4
    ld a, [c]                                     ; $48c0: $f2
    db $fc                                        ; $48c1: $fc
    ld a, [c]                                     ; $48c2: $f2
    inc bc                                        ; $48c3: $03
    ld [bc], a                                    ; $48c4: $02
    ld bc, $0002                                  ; $48c5: $01 $02 $00
    ld [bc], a                                    ; $48c8: $02
    ld bc, $000a                                  ; $48c9: $01 $0a $00
    ld [bc], a                                    ; $48cc: $02
    ld a, $8e                                     ; $48cd: $3e $8e
    pop bc                                        ; $48cf: $c1
    rst $38                                       ; $48d0: $ff
    nop                                           ; $48d1: $00
    rst $38                                       ; $48d2: $ff
    nop                                           ; $48d3: $00
    rst $38                                       ; $48d4: $ff
    ld bc, $01ff                                  ; $48d5: $01 $ff $01
    rst $38                                       ; $48d8: $ff
    ld b, e                                       ; $48d9: $43
    rst $38                                       ; $48da: $ff
    inc hl                                        ; $48db: $23
    rst $38                                       ; $48dc: $ff
    ld [bc], a                                    ; $48dd: $02
    rra                                           ; $48de: $1f
    sbc [hl]                                      ; $48df: $9e
    dec h                                         ; $48e0: $25
    ccf                                           ; $48e1: $3f
    ld c, e                                       ; $48e2: $4b
    ld a, [hl]                                    ; $48e3: $7e
    call c, $bfff                                 ; $48e4: $dc $ff $bf
    db $ed                                        ; $48e7: $ed
    sbc a                                         ; $48e8: $9f
    db $f4                                        ; $48e9: $f4
    rrca                                          ; $48ea: $0f
    db $fc                                        ; $48eb: $fc
    and a                                         ; $48ec: $a7
    db $fc                                        ; $48ed: $fc
    ld c, a                                       ; $48ee: $4f
    ld a, [$ff8f]                                 ; $48ef: $fa $8f $ff
    cp l                                          ; $48f2: $bd
    ei                                            ; $48f3: $fb
    ld a, a                                       ; $48f4: $7f
    ld [hl], c                                    ; $48f5: $71
    rra                                           ; $48f6: $1f
    dec de                                        ; $48f7: $1b
    rra                                           ; $48f8: $1f
    dec d                                         ; $48f9: $15
    ccf                                           ; $48fa: $3f
    add hl, sp                                    ; $48fb: $39
    rst $18                                       ; $48fc: $df
    di                                            ; $48fd: $f3
    ld [bc], a                                    ; $48fe: $02
    inc b                                         ; $48ff: $04
    add d                                         ; $4900: $82
    ld [bc], a                                    ; $4901: $02
    ld b, $02                                     ; $4902: $06 $02
    inc b                                         ; $4904: $04
    adc e                                         ; $4905: $8b
    ld b, $02                                     ; $4906: $06 $02
    ld b, $02                                     ; $4908: $06 $02
    rlca                                          ; $490a: $07
    ld bc, $0206                                  ; $490b: $01 $06 $02
    ld b, $02                                     ; $490e: $06 $02
    dec b                                         ; $4910: $05
    inc bc                                        ; $4911: $03
    rlca                                          ; $4912: $07
    add [hl]                                      ; $4913: $86
    ld b, $02                                     ; $4914: $06 $02
    rlca                                          ; $4916: $07
    ld bc, $0503                                  ; $4917: $01 $03 $05
    inc bc                                        ; $491a: $03
    rlca                                          ; $491b: $07
    add e                                         ; $491c: $83
    ld bc, $0503                                  ; $491d: $01 $03 $05
    ld [bc], a                                    ; $4920: $02
    db $10                                        ; $4921: $10
    add a                                         ; $4922: $87
    jr nz, jr_0ea_4955                            ; $4923: $20 $30

    jr nz, jr_0ea_4957                            ; $4925: $20 $30

    ld h, b                                       ; $4927: $60
    ld [hl], b                                    ; $4928: $70
    ld h, b                                       ; $4929: $60
    inc bc                                        ; $492a: $03
    ld [hl], b                                    ; $492b: $70
    adc h                                         ; $492c: $8c
    ld [$a4af], a                                 ; $492d: $ea $af $a4
    rst $20                                       ; $4930: $e7
    db $e4                                        ; $4931: $e4
    and a                                         ; $4932: $a7
    db $eb                                        ; $4933: $eb
    xor a                                         ; $4934: $af
    db $eb                                        ; $4935: $eb
    xor a                                         ; $4936: $af
    db $fd                                        ; $4937: $fd
    cp l                                          ; $4938: $bd
    ld [bc], a                                    ; $4939: $02
    reti                                          ; $493a: $d9


    ld [bc], a                                    ; $493b: $02
    jr @+$06                                      ; $493c: $18 $04

    inc c                                         ; $493e: $0c
    adc [hl]                                      ; $493f: $8e
    ld bc, $010f                                  ; $4940: $01 $0f $01
    rrca                                          ; $4943: $0f
    ld bc, $000f                                  ; $4944: $01 $0f $00
    rrca                                          ; $4947: $0f
    nop                                           ; $4948: $00
    rrca                                          ; $4949: $0f
    add hl, bc                                    ; $494a: $09
    rrca                                          ; $494b: $0f
    ld a, h                                       ; $494c: $7c
    rst $38                                       ; $494d: $ff
    ld [bc], a                                    ; $494e: $02
    rst $20                                       ; $494f: $e7
    inc b                                         ; $4950: $04
    ret nz                                        ; $4951: $c0

    ld b, $80                                     ; $4952: $06 $80
    inc b                                         ; $4954: $04

jr_0ea_4955:
    ret nz                                        ; $4955: $c0

    ld [bc], a                                    ; $4956: $02

jr_0ea_4957:
    nop                                           ; $4957: $00
    sbc b                                         ; $4958: $98
    ld a, e                                       ; $4959: $7b
    rra                                           ; $495a: $1f
    ld [hl], e                                    ; $495b: $73
    rra                                           ; $495c: $1f
    ld [hl], c                                    ; $495d: $71
    ld e, a                                       ; $495e: $5f
    ld a, c                                       ; $495f: $79
    ld c, a                                       ; $4960: $4f
    ld a, c                                       ; $4961: $79
    ld c, a                                       ; $4962: $4f
    ld [hl], e                                    ; $4963: $73
    ld a, a                                       ; $4964: $7f
    ld h, $7e                                     ; $4965: $26 $7e
    ld [hl], d                                    ; $4967: $72
    ld a, [hl]                                    ; $4968: $7e
    ld h, d                                       ; $4969: $62
    ld a, [hl]                                    ; $496a: $7e
    ld h, h                                       ; $496b: $64
    ld a, h                                       ; $496c: $7c
    ld [hl], h                                    ; $496d: $74
    ld a, h                                       ; $496e: $7c
    ld [hl], h                                    ; $496f: $74
    ld a, h                                       ; $4970: $7c
    inc b                                         ; $4971: $04
    inc a                                         ; $4972: $3c
    ld [bc], a                                    ; $4973: $02
    ld [hl], $02                                  ; $4974: $36 $02
    ld b, $ff                                     ; $4976: $06 $ff
    ld de, $f606                                  ; $4978: $11 $06 $f6
    ld a, [bc]                                    ; $497b: $0a
    ld [c], a                                     ; $497c: $e2
    ld bc, $f8e8                                  ; $497d: $01 $e8 $f8
    ld [c], a                                     ; $4980: $e2
    nop                                           ; $4981: $00
    ld [c], a                                     ; $4982: $e2
    inc bc                                        ; $4983: $03
    ld a, [c]                                     ; $4984: $f2
    db $f4                                        ; $4985: $f4
    ld a, [c]                                     ; $4986: $f2
    db $fc                                        ; $4987: $fc
    ld a, [c]                                     ; $4988: $f2
    inc b                                         ; $4989: $04
    ld [bc], a                                    ; $498a: $02
    ld bc, $0002                                  ; $498b: $01 $02 $00
    ld [bc], a                                    ; $498e: $02
    ld bc, $000a                                  ; $498f: $01 $0a $00
    ld [bc], a                                    ; $4992: $02
    ld a, [hl]                                    ; $4993: $7e
    adc [hl]                                      ; $4994: $8e
    add c                                         ; $4995: $81
    rst $38                                       ; $4996: $ff
    nop                                           ; $4997: $00
    rst $38                                       ; $4998: $ff
    nop                                           ; $4999: $00
    rst $38                                       ; $499a: $ff
    ld bc, $81ff                                  ; $499b: $01 $ff $81
    rst $38                                       ; $499e: $ff
    ld b, c                                       ; $499f: $41
    rst $38                                       ; $49a0: $ff
    ld h, e                                       ; $49a1: $63
    rst $38                                       ; $49a2: $ff
    ld [bc], a                                    ; $49a3: $02
    rra                                           ; $49a4: $1f
    sbc [hl]                                      ; $49a5: $9e
    dec h                                         ; $49a6: $25
    ccf                                           ; $49a7: $3f
    ld c, e                                       ; $49a8: $4b
    ld a, [hl]                                    ; $49a9: $7e
    call c, $bfff                                 ; $49aa: $dc $ff $bf
    db $ed                                        ; $49ad: $ed
    sbc a                                         ; $49ae: $9f
    db $f4                                        ; $49af: $f4
    rrca                                          ; $49b0: $0f
    db $fc                                        ; $49b1: $fc
    and a                                         ; $49b2: $a7
    db $fc                                        ; $49b3: $fc
    ld c, a                                       ; $49b4: $4f
    ld a, [$ff8f]                                 ; $49b5: $fa $8f $ff
    cp l                                          ; $49b8: $bd
    ei                                            ; $49b9: $fb
    ld a, [hl]                                    ; $49ba: $7e
    ld [hl], c                                    ; $49bb: $71
    rla                                           ; $49bc: $17
    rra                                           ; $49bd: $1f
    cpl                                           ; $49be: $2f
    dec sp                                        ; $49bf: $3b
    ccf                                           ; $49c0: $3f
    inc sp                                        ; $49c1: $33
    db $ec                                        ; $49c2: $ec
    rst $30                                       ; $49c3: $f7
    ld [bc], a                                    ; $49c4: $02
    inc b                                         ; $49c5: $04
    add d                                         ; $49c6: $82
    ld [bc], a                                    ; $49c7: $02
    ld b, $02                                     ; $49c8: $06 $02
    inc b                                         ; $49ca: $04
    adc e                                         ; $49cb: $8b
    ld b, $02                                     ; $49cc: $06 $02
    ld b, $02                                     ; $49ce: $06 $02
    rlca                                          ; $49d0: $07
    ld bc, $0206                                  ; $49d1: $01 $06 $02
    ld b, $02                                     ; $49d4: $06 $02
    dec b                                         ; $49d6: $05
    inc bc                                        ; $49d7: $03
    rlca                                          ; $49d8: $07
    add [hl]                                      ; $49d9: $86
    ld b, $02                                     ; $49da: $06 $02
    rlca                                          ; $49dc: $07
    ld bc, $0503                                  ; $49dd: $01 $03 $05
    inc bc                                        ; $49e0: $03
    rlca                                          ; $49e1: $07
    add e                                         ; $49e2: $83
    ld bc, $0503                                  ; $49e3: $01 $03 $05
    ld [bc], a                                    ; $49e6: $02
    db $10                                        ; $49e7: $10
    sub h                                         ; $49e8: $94
    jr nz, jr_0ea_4a1b                            ; $49e9: $20 $30

    ld h, b                                       ; $49eb: $60
    ld [hl], b                                    ; $49ec: $70
    ld h, b                                       ; $49ed: $60
    ld [hl], b                                    ; $49ee: $70
    ld h, b                                       ; $49ef: $60
    ld [hl], b                                    ; $49f0: $70
    ldh a, [$b0]                                  ; $49f1: $f0 $b0
    xor [hl]                                      ; $49f3: $ae
    rst $28                                       ; $49f4: $ef
    add sp, -$51                                  ; $49f5: $e8 $af
    rst $30                                       ; $49f7: $f7
    cp a                                          ; $49f8: $bf
    cp $be                                        ; $49f9: $fe $be
    db $fc                                        ; $49fb: $fc
    cp h                                          ; $49fc: $bc
    ld [bc], a                                    ; $49fd: $02
    call c, Call_000_3c02                         ; $49fe: $dc $02 $3c
    ld [bc], a                                    ; $4a01: $02
    ld [hl], $02                                  ; $4a02: $36 $02
    ld b, $02                                     ; $4a04: $06 $02
    nop                                           ; $4a06: $00
    adc [hl]                                      ; $4a07: $8e
    inc bc                                        ; $4a08: $03
    ld c, $02                                     ; $4a09: $0e $02
    rrca                                          ; $4a0b: $0f
    ld [bc], a                                    ; $4a0c: $02
    rrca                                          ; $4a0d: $0f
    ld bc, $010f                                  ; $4a0e: $01 $0f $01
    rrca                                          ; $4a11: $0f
    ld bc, $3c0f                                  ; $4a12: $01 $0f $3c
    rst $38                                       ; $4a15: $ff
    ld [bc], a                                    ; $4a16: $02
    rst $00                                       ; $4a17: $c7
    stop                                          ; $4a18: $10 $00
    sub h                                         ; $4a1a: $94

jr_0ea_4a1b:
    and $7e                                       ; $4a1b: $e6 $7e
    add $7e                                       ; $4a1d: $c6 $7e
    jp nz, $e27e                                  ; $4a1f: $c2 $7e $e2

    ld a, $e2                                     ; $4a22: $3e $e2
    ld a, $c6                                     ; $4a24: $3e $c6
    cp $64                                        ; $4a26: $fe $64
    db $fc                                        ; $4a28: $fc
    ld [c], a                                     ; $4a29: $e2
    cp $7a                                        ; $4a2a: $fe $7a
    ld a, [hl]                                    ; $4a2c: $7e
    ld e, l                                       ; $4a2d: $5d
    ld a, a                                       ; $4a2e: $7f
    ld [bc], a                                    ; $4a2f: $02
    ld h, a                                       ; $4a30: $67
    ld [bc], a                                    ; $4a31: $02
    ld h, e                                       ; $4a32: $63
    ld [bc], a                                    ; $4a33: $02
    ld b, c                                       ; $4a34: $41
    inc b                                         ; $4a35: $04
    ld h, e                                       ; $4a36: $63
    ld [bc], a                                    ; $4a37: $02
    nop                                           ; $4a38: $00
    rst $38                                       ; $4a39: $ff
    ld de, $f606                                  ; $4a3a: $11 $06 $f6
    ld a, [bc]                                    ; $4a3d: $0a
    ld [c], a                                     ; $4a3e: $e2
    ld bc, $f7f0                                  ; $4a3f: $01 $f0 $f7
    db $e3                                        ; $4a42: $e3
    rst $38                                       ; $4a43: $ff
    db $e3                                        ; $4a44: $e3
    inc bc                                        ; $4a45: $03
    di                                            ; $4a46: $f3
    db $f4                                        ; $4a47: $f4
    di                                            ; $4a48: $f3
    rst $38                                       ; $4a49: $ff
    di                                            ; $4a4a: $f3
    inc bc                                        ; $4a4b: $03
    ld [bc], a                                    ; $4a4c: $02
    rra                                           ; $4a4d: $1f
    sub d                                         ; $4a4e: $92
    ld h, b                                       ; $4a4f: $60
    ld a, a                                       ; $4a50: $7f
    add b                                         ; $4a51: $80
    rst $38                                       ; $4a52: $ff
    nop                                           ; $4a53: $00
    rst $38                                       ; $4a54: $ff
    nop                                           ; $4a55: $00
    rst $38                                       ; $4a56: $ff
    nop                                           ; $4a57: $00
    rst $38                                       ; $4a58: $ff
    and b                                         ; $4a59: $a0
    rst $38                                       ; $4a5a: $ff
    ret nc                                        ; $4a5b: $d0

    rst $38                                       ; $4a5c: $ff
    ld [hl], c                                    ; $4a5d: $71
    ld a, a                                       ; $4a5e: $7f
    jp Jump_000_02ff                              ; $4a5f: $c3 $ff $02


    db $fc                                        ; $4a62: $fc
    ld b, $e0                                     ; $4a63: $06 $e0
    ld [bc], a                                    ; $4a65: $02
    or b                                          ; $4a66: $b0
    ld [bc], a                                    ; $4a67: $02
    ldh [rSC], a                                  ; $4a68: $e0 $02
    rrca                                          ; $4a6a: $0f
    sbc [hl]                                      ; $4a6b: $9e
    ld [de], a                                    ; $4a6c: $12
    rra                                           ; $4a6d: $1f
    dec h                                         ; $4a6e: $25
    ccf                                           ; $4a6f: $3f
    ld c, [hl]                                    ; $4a70: $4e
    ld a, a                                       ; $4a71: $7f
    ld e, a                                       ; $4a72: $5f
    halt                                          ; $4a73: $76
    adc a                                         ; $4a74: $8f
    ld a, [$fea7]                                 ; $4a75: $fa $a7 $fe
    ld b, a                                       ; $4a78: $47
    ld a, [hl]                                    ; $4a79: $7e
    add a                                         ; $4a7a: $87
    db $fd                                        ; $4a7b: $fd
    ld c, a                                       ; $4a7c: $4f
    ld a, a                                       ; $4a7d: $7f
    ld a, $3d                                     ; $4a7e: $3e $3d
    rrca                                          ; $4a80: $0f
    ld [$0d0f], sp                                ; $4a81: $08 $0f $0d
    ld a, [de]                                    ; $4a84: $1a
    rra                                           ; $4a85: $1f
    rst $30                                       ; $4a86: $f7
    db $fd                                        ; $4a87: $fd
    dec d                                         ; $4a88: $15
    ei                                            ; $4a89: $fb
    ld [bc], a                                    ; $4a8a: $02
    inc c                                         ; $4a8b: $0c
    sub b                                         ; $4a8c: $90
    ld a, [bc]                                    ; $4a8d: $0a
    ld c, $0c                                     ; $4a8e: $0e $0c
    inc b                                         ; $4a90: $04
    ld b, $0a                                     ; $4a91: $06 $0a
    ld c, $0a                                     ; $4a93: $0e $0a
    rrca                                          ; $4a95: $0f
    ld bc, $020e                                  ; $4a96: $01 $0e $02
    ld c, $02                                     ; $4a99: $0e $02
    dec c                                         ; $4a9b: $0d
    rlca                                          ; $4a9c: $07
    ld [bc], a                                    ; $4a9d: $02
    rrca                                          ; $4a9e: $0f
    add e                                         ; $4a9f: $83
    ld c, $0a                                     ; $4aa0: $0e $0a
    rlca                                          ; $4aa2: $07
    ld [bc], a                                    ; $4aa3: $02
    add hl, bc                                    ; $4aa4: $09
    inc b                                         ; $4aa5: $04
    rrca                                          ; $4aa6: $0f
    add e                                         ; $4aa7: $83
    add hl, bc                                    ; $4aa8: $09
    inc bc                                        ; $4aa9: $03
    dec c                                         ; $4aaa: $0d
    ld [bc], a                                    ; $4aab: $02
    jr nz, jr_0ea_4ab2                            ; $4aac: $20 $04

    ld h, b                                       ; $4aae: $60
    add c                                         ; $4aaf: $81
    and b                                         ; $4ab0: $a0
    ld [bc], a                                    ; $4ab1: $02

jr_0ea_4ab2:
    ldh [$89], a                                  ; $4ab2: $e0 $89
    and b                                         ; $4ab4: $a0
    ldh [$a0], a                                  ; $4ab5: $e0 $a0
    ldh [$a0], a                                  ; $4ab7: $e0 $a0
    ldh [$a0], a                                  ; $4ab9: $e0 $a0
    ldh [$a0], a                                  ; $4abb: $e0 $a0
    ld [bc], a                                    ; $4abd: $02
    ret nz                                        ; $4abe: $c0

    ld b, $00                                     ; $4abf: $06 $00
    ld [bc], a                                    ; $4ac1: $02
    jr jr_0ea_4ac8                                ; $4ac2: $18 $04

    nop                                           ; $4ac4: $00
    adc h                                         ; $4ac5: $8c
    rla                                           ; $4ac6: $17
    ei                                            ; $4ac7: $fb

jr_0ea_4ac8:
    ld d, $fb                                     ; $4ac8: $16 $fb
    sub [hl]                                      ; $4aca: $96
    ei                                            ; $4acb: $fb
    adc a                                         ; $4acc: $8f
    ld sp, hl                                     ; $4acd: $f9
    adc a                                         ; $4ace: $8f
    ld sp, hl                                     ; $4acf: $f9
    adc $ff                                       ; $4ad0: $ce $ff
    ld [bc], a                                    ; $4ad2: $02
    ccf                                           ; $4ad3: $3f
    ld [bc], a                                    ; $4ad4: $02
    ld bc, $0006                                  ; $4ad5: $01 $06 $00
    inc b                                         ; $4ad8: $04
    ld bc, $0006                                  ; $4ad9: $01 $06 $00
    sub e                                         ; $4adc: $93
    inc bc                                        ; $4add: $03
    rrca                                          ; $4ade: $0f
    inc bc                                        ; $4adf: $03
    rrca                                          ; $4ae0: $0f
    ld bc, $010f                                  ; $4ae1: $01 $0f $01
    rrca                                          ; $4ae4: $0f
    ld bc, $020f                                  ; $4ae5: $01 $0f $02
    ld c, $02                                     ; $4ae8: $0e $02
    ld c, $0a                                     ; $4aea: $0e $0a
    ld c, $0a                                     ; $4aec: $0e $0a
    ld c, $0a                                     ; $4aee: $0e $0a
    rlca                                          ; $4af0: $07
    ld c, $04                                     ; $4af1: $0e $04
    inc bc                                        ; $4af3: $03
    ld [bc], a                                    ; $4af4: $02
    nop                                           ; $4af5: $00
    rst $38                                       ; $4af6: $ff
    ld de, $f606                                  ; $4af7: $11 $06 $f6
    ld a, [bc]                                    ; $4afa: $0a
    ld [c], a                                     ; $4afb: $e2
    ld bc, $f8e7                                  ; $4afc: $01 $e7 $f8
    ld [c], a                                     ; $4aff: $e2
    nop                                           ; $4b00: $00
    ld [c], a                                     ; $4b01: $e2
    inc bc                                        ; $4b02: $03
    ld a, [c]                                     ; $4b03: $f2
    db $f4                                        ; $4b04: $f4
    ld a, [c]                                     ; $4b05: $f2
    db $fc                                        ; $4b06: $fc
    ld a, [c]                                     ; $4b07: $f2
    inc b                                         ; $4b08: $04
    inc b                                         ; $4b09: $04
    ld bc, $0002                                  ; $4b0a: $01 $02 $00
    ld [bc], a                                    ; $4b0d: $02
    ld bc, $000a                                  ; $4b0e: $01 $0a $00
    ld [bc], a                                    ; $4b11: $02
    ld a, $8c                                     ; $4b12: $3e $8c
    pop bc                                        ; $4b14: $c1
    rst $38                                       ; $4b15: $ff
    nop                                           ; $4b16: $00
    rst $38                                       ; $4b17: $ff
    nop                                           ; $4b18: $00
    rst $38                                       ; $4b19: $ff
    nop                                           ; $4b1a: $00
    rst $38                                       ; $4b1b: $ff
    ld bc, $41ff                                  ; $4b1c: $01 $ff $41
    rst $38                                       ; $4b1f: $ff
    ld [bc], a                                    ; $4b20: $02
    rra                                           ; $4b21: $1f
    sbc [hl]                                      ; $4b22: $9e
    dec h                                         ; $4b23: $25
    ccf                                           ; $4b24: $3f
    ld c, e                                       ; $4b25: $4b
    ld a, [hl]                                    ; $4b26: $7e
    sbc h                                         ; $4b27: $9c
    rst $38                                       ; $4b28: $ff
    cp a                                          ; $4b29: $bf
    db $ed                                        ; $4b2a: $ed
    rra                                           ; $4b2b: $1f
    db $f4                                        ; $4b2c: $f4
    cpl                                           ; $4b2d: $2f
    db $fc                                        ; $4b2e: $fc
    rst $00                                       ; $4b2f: $c7
    db $fc                                        ; $4b30: $fc
    rrca                                          ; $4b31: $0f
    ld a, [$ff9f]                                 ; $4b32: $fa $9f $ff
    cp l                                          ; $4b35: $bd
    ei                                            ; $4b36: $fb
    ld a, a                                       ; $4b37: $7f
    ld [hl], c                                    ; $4b38: $71
    rra                                           ; $4b39: $1f
    dec de                                        ; $4b3a: $1b
    rra                                           ; $4b3b: $1f
    dec d                                         ; $4b3c: $15
    ccf                                           ; $4b3d: $3f
    add hl, sp                                    ; $4b3e: $39
    rst $18                                       ; $4b3f: $df
    di                                            ; $4b40: $f3
    ld [bc], a                                    ; $4b41: $02
    inc b                                         ; $4b42: $04
    add d                                         ; $4b43: $82
    ld [bc], a                                    ; $4b44: $02
    ld b, $02                                     ; $4b45: $06 $02
    inc b                                         ; $4b47: $04
    adc e                                         ; $4b48: $8b
    ld b, $02                                     ; $4b49: $06 $02
    ld b, $02                                     ; $4b4b: $06 $02
    rlca                                          ; $4b4d: $07
    ld bc, $0206                                  ; $4b4e: $01 $06 $02
    ld b, $02                                     ; $4b51: $06 $02
    dec b                                         ; $4b53: $05
    inc bc                                        ; $4b54: $03
    rlca                                          ; $4b55: $07
    add [hl]                                      ; $4b56: $86
    ld b, $02                                     ; $4b57: $06 $02
    rlca                                          ; $4b59: $07
    ld bc, $0503                                  ; $4b5a: $01 $03 $05
    inc bc                                        ; $4b5d: $03
    rlca                                          ; $4b5e: $07
    add e                                         ; $4b5f: $83
    ld bc, $0503                                  ; $4b60: $01 $03 $05
    ld [bc], a                                    ; $4b63: $02
    db $10                                        ; $4b64: $10
    sub d                                         ; $4b65: $92
    jr nz, jr_0ea_4b98                            ; $4b66: $20 $30

    ld h, b                                       ; $4b68: $60
    ld [hl], b                                    ; $4b69: $70
    ld h, b                                       ; $4b6a: $60
    ld [hl], b                                    ; $4b6b: $70
    or b                                          ; $4b6c: $b0
    ldh a, [$ba]                                  ; $4b6d: $f0 $ba
    rst $38                                       ; $4b6f: $ff
    ld a, [$febf]                                 ; $4b70: $fa $bf $fe
    cp a                                          ; $4b73: $bf
    db $fc                                        ; $4b74: $fc
    cp a                                          ; $4b75: $bf
    ei                                            ; $4b76: $fb
    cp a                                          ; $4b77: $bf
    ld [bc], a                                    ; $4b78: $02
    db $fc                                        ; $4b79: $fc
    ld [bc], a                                    ; $4b7a: $02
    ld l, h                                       ; $4b7b: $6c
    ld [bc], a                                    ; $4b7c: $02
    ld b, [hl]                                    ; $4b7d: $46
    inc b                                         ; $4b7e: $04
    ld h, e                                       ; $4b7f: $63
    ld [bc], a                                    ; $4b80: $02
    nop                                           ; $4b81: $00
    sub b                                         ; $4b82: $90
    ld bc, $010f                                  ; $4b83: $01 $0f $01
    rrca                                          ; $4b86: $0f
    ld bc, $000f                                  ; $4b87: $01 $0f $00
    rrca                                          ; $4b8a: $0f
    nop                                           ; $4b8b: $00
    rrca                                          ; $4b8c: $0f
    add hl, de                                    ; $4b8d: $19
    rst $38                                       ; $4b8e: $ff
    inc a                                         ; $4b8f: $3c
    rst $38                                       ; $4b90: $ff
    inc hl                                        ; $4b91: $23
    db $e3                                        ; $4b92: $e3
    ld [bc], a                                    ; $4b93: $02
    ret nz                                        ; $4b94: $c0

    ld c, $00                                     ; $4b95: $0e $00
    sub [hl]                                      ; $4b97: $96

jr_0ea_4b98:
    or $3e                                        ; $4b98: $f6 $3e
    and $3e                                       ; $4b9a: $e6 $3e
    and $be                                       ; $4b9c: $e6 $be
    ld a, [c]                                     ; $4b9e: $f2
    sbc [hl]                                      ; $4b9f: $9e
    ld a, [c]                                     ; $4ba0: $f2
    sbc [hl]                                      ; $4ba1: $9e
    and $fe                                       ; $4ba2: $e6 $fe
    ld b, [hl]                                    ; $4ba4: $46
    cp $c5                                        ; $4ba5: $fe $c5
    rst $38                                       ; $4ba7: $ff
    ld h, [hl]                                    ; $4ba8: $66
    ld a, [hl]                                    ; $4ba9: $7e
    ld l, $3e                                     ; $4baa: $2e $3e
    inc l                                         ; $4bac: $2c
    inc a                                         ; $4bad: $3c
    inc b                                         ; $4bae: $04
    jr c, jr_0ea_4bb3                             ; $4baf: $38 $02

    db $10                                        ; $4bb1: $10
    inc b                                         ; $4bb2: $04

jr_0ea_4bb3:
    jr @+$01                                      ; $4bb3: $18 $ff

    ld de, $f606                                  ; $4bb5: $11 $06 $f6
    ld a, [bc]                                    ; $4bb8: $0a
    ld [c], a                                     ; $4bb9: $e2
    ld bc, $f8e8                                  ; $4bba: $01 $e8 $f8
    ld [c], a                                     ; $4bbd: $e2
    nop                                           ; $4bbe: $00
    ld [c], a                                     ; $4bbf: $e2
    inc bc                                        ; $4bc0: $03
    ld a, [c]                                     ; $4bc1: $f2
    db $f4                                        ; $4bc2: $f4
    ld a, [c]                                     ; $4bc3: $f2
    db $fc                                        ; $4bc4: $fc
    ld a, [c]                                     ; $4bc5: $f2
    inc b                                         ; $4bc6: $04
    ld [bc], a                                    ; $4bc7: $02
    ld bc, $0002                                  ; $4bc8: $01 $02 $00
    ld [bc], a                                    ; $4bcb: $02
    ld bc, $000a                                  ; $4bcc: $01 $0a $00
    ld [bc], a                                    ; $4bcf: $02
    ld a, $8e                                     ; $4bd0: $3e $8e
    pop bc                                        ; $4bd2: $c1
    rst $38                                       ; $4bd3: $ff
    nop                                           ; $4bd4: $00
    rst $38                                       ; $4bd5: $ff
    nop                                           ; $4bd6: $00
    rst $38                                       ; $4bd7: $ff
    ld bc, $01ff                                  ; $4bd8: $01 $ff $01
    rst $38                                       ; $4bdb: $ff
    ld b, e                                       ; $4bdc: $43
    rst $38                                       ; $4bdd: $ff
    inc bc                                        ; $4bde: $03
    rst $38                                       ; $4bdf: $ff
    ld [bc], a                                    ; $4be0: $02
    rra                                           ; $4be1: $1f
    sbc [hl]                                      ; $4be2: $9e
    dec h                                         ; $4be3: $25
    ccf                                           ; $4be4: $3f
    ld c, e                                       ; $4be5: $4b
    ld a, [hl]                                    ; $4be6: $7e
    call c, $bfff                                 ; $4be7: $dc $ff $bf
    db $ed                                        ; $4bea: $ed
    sbc a                                         ; $4beb: $9f
    db $f4                                        ; $4bec: $f4
    rrca                                          ; $4bed: $0f
    db $fc                                        ; $4bee: $fc
    and a                                         ; $4bef: $a7
    db $fc                                        ; $4bf0: $fc
    ld c, a                                       ; $4bf1: $4f
    ld a, [$ff8f]                                 ; $4bf2: $fa $8f $ff
    cp l                                          ; $4bf5: $bd
    ei                                            ; $4bf6: $fb
    ld a, a                                       ; $4bf7: $7f
    ld [hl], c                                    ; $4bf8: $71
    rla                                           ; $4bf9: $17
    dec de                                        ; $4bfa: $1b
    rra                                           ; $4bfb: $1f
    dec d                                         ; $4bfc: $15
    ccf                                           ; $4bfd: $3f
    dec sp                                        ; $4bfe: $3b
    rst $10                                       ; $4bff: $d7
    ld sp, hl                                     ; $4c00: $f9
    ld [bc], a                                    ; $4c01: $02
    inc b                                         ; $4c02: $04
    add d                                         ; $4c03: $82
    ld [bc], a                                    ; $4c04: $02
    ld b, $02                                     ; $4c05: $06 $02
    inc b                                         ; $4c07: $04
    adc e                                         ; $4c08: $8b
    ld b, $02                                     ; $4c09: $06 $02
    ld b, $02                                     ; $4c0b: $06 $02
    rlca                                          ; $4c0d: $07
    ld bc, $0206                                  ; $4c0e: $01 $06 $02
    ld b, $02                                     ; $4c11: $06 $02
    dec b                                         ; $4c13: $05
    inc bc                                        ; $4c14: $03
    rlca                                          ; $4c15: $07
    add [hl]                                      ; $4c16: $86
    ld b, $02                                     ; $4c17: $06 $02
    rlca                                          ; $4c19: $07
    ld bc, $0503                                  ; $4c1a: $01 $03 $05
    inc bc                                        ; $4c1d: $03
    rlca                                          ; $4c1e: $07
    add e                                         ; $4c1f: $83
    ld bc, $0503                                  ; $4c20: $01 $03 $05
    ld [bc], a                                    ; $4c23: $02
    db $10                                        ; $4c24: $10
    add l                                         ; $4c25: $85
    jr nz, jr_0ea_4c58                            ; $4c26: $20 $30

    ld h, b                                       ; $4c28: $60
    ld [hl], b                                    ; $4c29: $70
    ld h, b                                       ; $4c2a: $60
    inc bc                                        ; $4c2b: $03
    ld [hl], b                                    ; $4c2c: $70
    adc h                                         ; $4c2d: $8c
    ldh a, [$b0]                                  ; $4c2e: $f0 $b0
    xor d                                         ; $4c30: $aa
    rst $28                                       ; $4c31: $ef
    db $fc                                        ; $4c32: $fc
    cp a                                          ; $4c33: $bf
    db $fc                                        ; $4c34: $fc
    cp a                                          ; $4c35: $bf
    ld sp, hl                                     ; $4c36: $f9
    cp a                                          ; $4c37: $bf
    or $be                                        ; $4c38: $f6 $be
    ld [bc], a                                    ; $4c3a: $02
    db $fc                                        ; $4c3b: $fc
    ld [bc], a                                    ; $4c3c: $02
    inc a                                         ; $4c3d: $3c
    ld [bc], a                                    ; $4c3e: $02
    inc c                                         ; $4c3f: $0c
    inc b                                         ; $4c40: $04
    ld b, $90                                     ; $4c41: $06 $90
    nop                                           ; $4c43: $00
    rrca                                          ; $4c44: $0f
    nop                                           ; $4c45: $00
    rrca                                          ; $4c46: $0f
    nop                                           ; $4c47: $00
    rrca                                          ; $4c48: $0f
    nop                                           ; $4c49: $00
    rrca                                          ; $4c4a: $0f
    nop                                           ; $4c4b: $00
    rrca                                          ; $4c4c: $0f
    ld [$3c0f], sp                                ; $4c4d: $08 $0f $3c
    rst $38                                       ; $4c50: $ff
    ld b, e                                       ; $4c51: $43
    jp $8002                                      ; $4c52: $c3 $02 $80


    ld c, $00                                     ; $4c55: $0e $00
    sub h                                         ; $4c57: $94

jr_0ea_4c58:
    or $9e                                        ; $4c58: $f6 $9e
    ld a, [hl]                                    ; $4c5a: $7e
    adc $7e                                       ; $4c5b: $ce $7e
    and $3e                                       ; $4c5d: $e6 $3e
    and $1a                                       ; $4c5f: $e6 $1a
    cp $86                                        ; $4c61: $fe $86
    cp $46                                        ; $4c63: $fe $46
    cp $c6                                        ; $4c65: $fe $c6
    cp $4d                                        ; $4c67: $fe $4d
    ld a, a                                       ; $4c69: $7f
    ld l, a                                       ; $4c6a: $6f
    ld a, a                                       ; $4c6b: $7f
    ld [bc], a                                    ; $4c6c: $02
    ld [hl], e                                    ; $4c6d: $73
    ld [bc], a                                    ; $4c6e: $02
    ld h, c                                       ; $4c6f: $61
    ld [bc], a                                    ; $4c70: $02
    ld h, e                                       ; $4c71: $63
    ld [bc], a                                    ; $4c72: $02
    ld b, e                                       ; $4c73: $43
    inc b                                         ; $4c74: $04
    ld h, b                                       ; $4c75: $60
    rst $38                                       ; $4c76: $ff
    ld de, $f606                                  ; $4c77: $11 $06 $f6
    ld a, [bc]                                    ; $4c7a: $0a
    ld [c], a                                     ; $4c7b: $e2
    ld bc, $f7f0                                  ; $4c7c: $01 $f0 $f7
    db $e3                                        ; $4c7f: $e3
    rst $38                                       ; $4c80: $ff
    db $e3                                        ; $4c81: $e3
    inc bc                                        ; $4c82: $03
    di                                            ; $4c83: $f3
    db $f4                                        ; $4c84: $f4
    di                                            ; $4c85: $f3
    rst $38                                       ; $4c86: $ff
    di                                            ; $4c87: $f3
    inc bc                                        ; $4c88: $03
    ld [bc], a                                    ; $4c89: $02
    ld e, $98                                     ; $4c8a: $1e $98
    ld h, c                                       ; $4c8c: $61
    ld a, a                                       ; $4c8d: $7f
    add b                                         ; $4c8e: $80
    rst $38                                       ; $4c8f: $ff
    nop                                           ; $4c90: $00
    rst $38                                       ; $4c91: $ff
    nop                                           ; $4c92: $00
    rst $38                                       ; $4c93: $ff
    jr nz, @+$01                                  ; $4c94: $20 $ff

    ld hl, $81ff                                  ; $4c96: $21 $ff $81
    rst $38                                       ; $4c99: $ff
    ld b, e                                       ; $4c9a: $43
    ld a, a                                       ; $4c9b: $7f
    db $e4                                        ; $4c9c: $e4
    db $fc                                        ; $4c9d: $fc
    call nz, $98fc                                ; $4c9e: $c4 $fc $98
    ld hl, sp-$60                                 ; $4ca1: $f8 $a0
    ldh [rSC], a                                  ; $4ca3: $e0 $02
    ldh a, [rSC]                                  ; $4ca5: $f0 $02
    ldh [rSC], a                                  ; $4ca7: $e0 $02
    add b                                         ; $4ca9: $80
    ld [bc], a                                    ; $4caa: $02
    rrca                                          ; $4cab: $0f
    sbc [hl]                                      ; $4cac: $9e
    ld [de], a                                    ; $4cad: $12
    rra                                           ; $4cae: $1f
    dec h                                         ; $4caf: $25
    ccf                                           ; $4cb0: $3f
    ld c, [hl]                                    ; $4cb1: $4e
    ld a, a                                       ; $4cb2: $7f
    ld e, a                                       ; $4cb3: $5f
    halt                                          ; $4cb4: $76
    adc a                                         ; $4cb5: $8f
    ld a, [$fea7]                                 ; $4cb6: $fa $a7 $fe
    ld b, a                                       ; $4cb9: $47
    ld a, [hl]                                    ; $4cba: $7e
    add a                                         ; $4cbb: $87
    db $fd                                        ; $4cbc: $fd
    ld c, a                                       ; $4cbd: $4f
    ld a, a                                       ; $4cbe: $7f
    ld a, $3d                                     ; $4cbf: $3e $3d
    rrca                                          ; $4cc1: $0f
    ld [$0d0b], sp                                ; $4cc2: $08 $0b $0d
    rra                                           ; $4cc5: $1f
    ld a, [de]                                    ; $4cc6: $1a
    rst $38                                       ; $4cc7: $ff
    db $fd                                        ; $4cc8: $fd
    dec bc                                        ; $4cc9: $0b
    db $fc                                        ; $4cca: $fc
    ld [bc], a                                    ; $4ccb: $02
    inc c                                         ; $4ccc: $0c
    sub b                                         ; $4ccd: $90
    ld a, [bc]                                    ; $4cce: $0a
    ld c, $0c                                     ; $4ccf: $0e $0c
    inc b                                         ; $4cd1: $04
    ld b, $0a                                     ; $4cd2: $06 $0a
    ld c, $0a                                     ; $4cd4: $0e $0a
    rrca                                          ; $4cd6: $0f
    ld bc, $020e                                  ; $4cd7: $01 $0e $02
    ld c, $02                                     ; $4cda: $0e $02
    dec c                                         ; $4cdc: $0d
    rlca                                          ; $4cdd: $07
    ld [bc], a                                    ; $4cde: $02
    rrca                                          ; $4cdf: $0f
    add e                                         ; $4ce0: $83
    ld c, $0a                                     ; $4ce1: $0e $0a
    rrca                                          ; $4ce3: $0f
    ld [bc], a                                    ; $4ce4: $02
    add hl, bc                                    ; $4ce5: $09
    inc b                                         ; $4ce6: $04
    rrca                                          ; $4ce7: $0f
    add e                                         ; $4ce8: $83
    add hl, bc                                    ; $4ce9: $09
    dec bc                                        ; $4cea: $0b
    dec c                                         ; $4ceb: $0d
    ld [bc], a                                    ; $4cec: $02
    jr nz, jr_0ea_4cf3                            ; $4ced: $20 $04

    ld h, b                                       ; $4cef: $60
    add c                                         ; $4cf0: $81
    and b                                         ; $4cf1: $a0
    ld [bc], a                                    ; $4cf2: $02

jr_0ea_4cf3:
    ldh [$89], a                                  ; $4cf3: $e0 $89
    and b                                         ; $4cf5: $a0
    ldh [$a0], a                                  ; $4cf6: $e0 $a0
    ldh [$a0], a                                  ; $4cf8: $e0 $a0
    ldh [$a0], a                                  ; $4cfa: $e0 $a0
    ldh [$a0], a                                  ; $4cfc: $e0 $a0
    ld [bc], a                                    ; $4cfe: $02
    ret nz                                        ; $4cff: $c0

    ld b, $00                                     ; $4d00: $06 $00
    inc b                                         ; $4d02: $04
    jr jr_0ea_4d07                                ; $4d03: $18 $02

    nop                                           ; $4d05: $00
    adc h                                         ; $4d06: $8c

jr_0ea_4d07:
    rlca                                          ; $4d07: $07
    db $fc                                        ; $4d08: $fc
    add a                                         ; $4d09: $87
    db $fc                                        ; $4d0a: $fc
    add e                                         ; $4d0b: $83
    cp $83                                        ; $4d0c: $fe $83
    cp $c5                                        ; $4d0e: $fe $c5
    rst $38                                       ; $4d10: $ff
    add $ff                                       ; $4d11: $c6 $ff
    ld [bc], a                                    ; $4d13: $02
    ccf                                           ; $4d14: $3f
    ld [bc], a                                    ; $4d15: $02
    ld bc, $0008                                  ; $4d16: $01 $08 $00
    inc b                                         ; $4d19: $04
    ld bc, $0004                                  ; $4d1a: $01 $04 $00
    sub d                                         ; $4d1d: $92
    dec bc                                        ; $4d1e: $0b
    rrca                                          ; $4d1f: $0f
    dec bc                                        ; $4d20: $0b
    rrca                                          ; $4d21: $0f
    dec c                                         ; $4d22: $0d
    rlca                                          ; $4d23: $07
    dec c                                         ; $4d24: $0d
    rlca                                          ; $4d25: $07
    dec bc                                        ; $4d26: $0b
    rrca                                          ; $4d27: $0f
    ld [bc], a                                    ; $4d28: $02
    ld c, $02                                     ; $4d29: $0e $02
    ld c, $0a                                     ; $4d2b: $0e $0a
    ld c, $0a                                     ; $4d2d: $0e $0a
    ld c, $04                                     ; $4d2f: $0e $04
    ld b, $02                                     ; $4d31: $06 $02
    ld c, $04                                     ; $4d33: $0e $04
    dec bc                                        ; $4d35: $0b
    inc b                                         ; $4d36: $04
    nop                                           ; $4d37: $00
    rst $38                                       ; $4d38: $ff
    ld de, $f606                                  ; $4d39: $11 $06 $f6
    ld a, [bc]                                    ; $4d3c: $0a
    ld [c], a                                     ; $4d3d: $e2
    ld bc, $f8e7                                  ; $4d3e: $01 $e7 $f8
    ld [c], a                                     ; $4d41: $e2
    nop                                           ; $4d42: $00
    ld [c], a                                     ; $4d43: $e2
    inc bc                                        ; $4d44: $03
    ld a, [c]                                     ; $4d45: $f2
    db $f4                                        ; $4d46: $f4
    ld a, [c]                                     ; $4d47: $f2
    db $fc                                        ; $4d48: $fc
    ld a, [c]                                     ; $4d49: $f2
    inc b                                         ; $4d4a: $04
    inc b                                         ; $4d4b: $04
    ld bc, $0002                                  ; $4d4c: $01 $02 $00
    ld [bc], a                                    ; $4d4f: $02
    ld bc, $000a                                  ; $4d50: $01 $0a $00
    ld [bc], a                                    ; $4d53: $02
    ld a, h                                       ; $4d54: $7c
    adc h                                         ; $4d55: $8c
    add e                                         ; $4d56: $83
    rst $38                                       ; $4d57: $ff
    nop                                           ; $4d58: $00
    rst $38                                       ; $4d59: $ff
    nop                                           ; $4d5a: $00
    rst $38                                       ; $4d5b: $ff
    add c                                         ; $4d5c: $81
    rst $38                                       ; $4d5d: $ff
    ld bc, $83ff                                  ; $4d5e: $01 $ff $83
    rst $38                                       ; $4d61: $ff
    ld [bc], a                                    ; $4d62: $02
    rra                                           ; $4d63: $1f
    sbc [hl]                                      ; $4d64: $9e
    dec h                                         ; $4d65: $25
    ccf                                           ; $4d66: $3f
    ld c, e                                       ; $4d67: $4b
    ld a, [hl]                                    ; $4d68: $7e
    sbc h                                         ; $4d69: $9c
    rst $38                                       ; $4d6a: $ff
    cp a                                          ; $4d6b: $bf
    db $ed                                        ; $4d6c: $ed
    rra                                           ; $4d6d: $1f
    db $f4                                        ; $4d6e: $f4
    cpl                                           ; $4d6f: $2f
    db $fc                                        ; $4d70: $fc
    rst $00                                       ; $4d71: $c7
    db $fc                                        ; $4d72: $fc
    rrca                                          ; $4d73: $0f
    ld a, [$ff9f]                                 ; $4d74: $fa $9f $ff
    cp l                                          ; $4d77: $bd
    ei                                            ; $4d78: $fb
    ld a, a                                       ; $4d79: $7f
    ld [hl], c                                    ; $4d7a: $71
    rra                                           ; $4d7b: $1f
    dec de                                        ; $4d7c: $1b
    rra                                           ; $4d7d: $1f
    dec d                                         ; $4d7e: $15
    ccf                                           ; $4d7f: $3f
    add hl, sp                                    ; $4d80: $39
    rst $18                                       ; $4d81: $df
    di                                            ; $4d82: $f3
    ld [bc], a                                    ; $4d83: $02
    inc b                                         ; $4d84: $04
    add d                                         ; $4d85: $82
    ld [bc], a                                    ; $4d86: $02
    ld b, $02                                     ; $4d87: $06 $02
    inc b                                         ; $4d89: $04
    adc e                                         ; $4d8a: $8b
    ld b, $02                                     ; $4d8b: $06 $02
    ld b, $02                                     ; $4d8d: $06 $02
    rlca                                          ; $4d8f: $07
    ld bc, $0206                                  ; $4d90: $01 $06 $02
    ld b, $02                                     ; $4d93: $06 $02
    dec b                                         ; $4d95: $05
    inc bc                                        ; $4d96: $03
    rlca                                          ; $4d97: $07
    add [hl]                                      ; $4d98: $86
    ld b, $02                                     ; $4d99: $06 $02
    rlca                                          ; $4d9b: $07
    ld bc, $0503                                  ; $4d9c: $01 $03 $05
    inc bc                                        ; $4d9f: $03
    rlca                                          ; $4da0: $07
    add e                                         ; $4da1: $83
    ld bc, $0503                                  ; $4da2: $01 $03 $05
    ld [bc], a                                    ; $4da5: $02
    db $10                                        ; $4da6: $10
    sub h                                         ; $4da7: $94
    jr nz, jr_0ea_4dda                            ; $4da8: $20 $30

    ld h, b                                       ; $4daa: $60
    ld [hl], b                                    ; $4dab: $70
    ld h, b                                       ; $4dac: $60
    ld [hl], b                                    ; $4dad: $70
    and b                                         ; $4dae: $a0
    ldh a, [$b8]                                  ; $4daf: $f0 $b8
    rst $38                                       ; $4db1: $ff
    ld hl, sp-$41                                 ; $4db2: $f8 $bf
    ld sp, hl                                     ; $4db4: $f9
    cp a                                          ; $4db5: $bf
    di                                            ; $4db6: $f3
    cp a                                          ; $4db7: $bf
    db $ec                                        ; $4db8: $ec
    cp h                                          ; $4db9: $bc
    db $ec                                        ; $4dba: $ec
    db $fc                                        ; $4dbb: $fc
    ld [bc], a                                    ; $4dbc: $02
    halt                                          ; $4dbd: $76
    ld [bc], a                                    ; $4dbe: $02
    ld h, e                                       ; $4dbf: $63
    ld [bc], a                                    ; $4dc0: $02
    ld b, e                                       ; $4dc1: $43
    inc b                                         ; $4dc2: $04
    ld h, b                                       ; $4dc3: $60
    adc [hl]                                      ; $4dc4: $8e
    ld bc, $010f                                  ; $4dc5: $01 $0f $01
    rrca                                          ; $4dc8: $0f
    ld bc, $000f                                  ; $4dc9: $01 $0f $00
    rrca                                          ; $4dcc: $0f
    nop                                           ; $4dcd: $00
    rrca                                          ; $4dce: $0f
    add hl, sp                                    ; $4dcf: $39
    rst $38                                       ; $4dd0: $ff
    ld a, h                                       ; $4dd1: $7c
    rst $38                                       ; $4dd2: $ff
    ld [bc], a                                    ; $4dd3: $02
    rst $00                                       ; $4dd4: $c7
    stop                                          ; $4dd5: $10 $00
    sub h                                         ; $4dd7: $94
    or $3e                                        ; $4dd8: $f6 $3e

jr_0ea_4dda:
    and $3e                                       ; $4dda: $e6 $3e
    and $be                                       ; $4ddc: $e6 $be
    ld a, [c]                                     ; $4dde: $f2
    sbc [hl]                                      ; $4ddf: $9e
    or $9e                                        ; $4de0: $f6 $9e
    and $fe                                       ; $4de2: $e6 $fe
    ld h, d                                       ; $4de4: $62
    cp $f2                                        ; $4de5: $fe $f2
    cp $3d                                        ; $4de7: $fe $3d
    ccf                                           ; $4de9: $3f
    ld a, [hl-]                                   ; $4dea: $3a
    ld a, $02                                     ; $4deb: $3e $02
    ld [hl], $02                                  ; $4ded: $36 $02
    inc a                                         ; $4def: $3c
    ld b, $18                                     ; $4df0: $06 $18
    ld [bc], a                                    ; $4df2: $02
    nop                                           ; $4df3: $00
    rst $38                                       ; $4df4: $ff
    rrca                                          ; $4df5: $0f
    dec b                                         ; $4df6: $05
    ld hl, sp+$08                                 ; $4df7: $f8 $08
    ld [c], a                                     ; $4df9: $e2
    ld bc, $f8e2                                  ; $4dfa: $01 $e2 $f8
    ld [c], a                                     ; $4dfd: $e2
    nop                                           ; $4dfe: $00
    pop af                                        ; $4dff: $f1
    ld bc, $f8f2                                  ; $4e00: $01 $f2 $f8
    ld a, [c]                                     ; $4e03: $f2
    db $fd                                        ; $4e04: $fd
    ld [bc], a                                    ; $4e05: $02
    inc bc                                        ; $4e06: $03
    sbc [hl]                                      ; $4e07: $9e
    ld b, $07                                     ; $4e08: $06 $07
    dec b                                         ; $4e0a: $05
    rlca                                          ; $4e0b: $07
    ld [$080f], sp                                ; $4e0c: $08 $0f $08
    rrca                                          ; $4e0f: $0f
    inc d                                         ; $4e10: $14
    rra                                           ; $4e11: $1f
    jr jr_0ea_4e33                                ; $4e12: $18 $1f

    jr nz, jr_0ea_4e55                            ; $4e14: $20 $3f

    jr z, jr_0ea_4e57                             ; $4e16: $28 $3f

    jr nc, jr_0ea_4e59                            ; $4e18: $30 $3f

    ld e, l                                       ; $4e1a: $5d

jr_0ea_4e1b:
    ld l, a                                       ; $4e1b: $6f
    ld a, a                                       ; $4e1c: $7f
    ld c, e                                       ; $4e1d: $4b
    ld a, e                                       ; $4e1e: $7b
    ld e, h                                       ; $4e1f: $5c
    ld c, [hl]                                    ; $4e20: $4e
    ld a, l                                       ; $4e21: $7d
    ld a, e                                       ; $4e22: $7b
    ld e, a                                       ; $4e23: $5f
    call c, $02bf                                 ; $4e24: $dc $bf $02
    ldh [$9e], a                                  ; $4e27: $e0 $9e
    jr nc, jr_0ea_4e1b                            ; $4e29: $30 $f0

    db $10                                        ; $4e2b: $10
    ldh a, [$08]                                  ; $4e2c: $f0 $08
    ld hl, sp+$08                                 ; $4e2e: $f8 $08
    ld hl, sp+$24                                 ; $4e30: $f8 $24
    db $fc                                        ; $4e32: $fc

jr_0ea_4e33:
    ld b, h                                       ; $4e33: $44
    db $fc                                        ; $4e34: $fc
    ld [hl+], a                                   ; $4e35: $22
    cp $0a                                        ; $4e36: $fe $0a
    cp $26                                        ; $4e38: $fe $26
    cp $5d                                        ; $4e3a: $fe $5d
    ei                                            ; $4e3c: $fb
    rst $38                                       ; $4e3d: $ff
    jp hl                                         ; $4e3e: $e9


    rst $28                                       ; $4e3f: $ef
    sbc l                                         ; $4e40: $9d
    cp c                                          ; $4e41: $b9
    rst $18                                       ; $4e42: $df
    rst $28                                       ; $4e43: $ef
    db $fd                                        ; $4e44: $fd
    dec e                                         ; $4e45: $1d
    cp $02                                        ; $4e46: $fe $02
    ld bc, $1f94                                  ; $4e48: $01 $94 $1f
    db $fd                                        ; $4e4b: $fd
    add hl, bc                                    ; $4e4c: $09
    rst $38                                       ; $4e4d: $ff
    rrca                                          ; $4e4e: $0f
    ld sp, hl                                     ; $4e4f: $f9
    adc [hl]                                      ; $4e50: $8e
    cp $88                                        ; $4e51: $fe $88
    ld hl, sp-$30                                 ; $4e53: $f8 $d0

jr_0ea_4e55:
    ldh a, [$d0]                                  ; $4e55: $f0 $d0

jr_0ea_4e57:
    ldh a, [$b0]                                  ; $4e57: $f0 $b0

jr_0ea_4e59:
    ldh a, [$90]                                  ; $4e59: $f0 $90
    ldh a, [$d0]                                  ; $4e5b: $f0 $d0
    ldh a, [rDIV]                                 ; $4e5d: $f0 $04
    ldh [rSC], a                                  ; $4e5f: $e0 $02
    ld h, b                                       ; $4e61: $60
    ld [bc], a                                    ; $4e62: $02
    jr nz, jr_0ea_4e67                            ; $4e63: $20 $02

    ld [hl], b                                    ; $4e65: $70
    sub h                                         ; $4e66: $94

jr_0ea_4e67:
    ld hl, sp-$41                                 ; $4e67: $f8 $bf
    sub b                                         ; $4e69: $90
    rst $38                                       ; $4e6a: $ff
    ldh a, [$9f]                                  ; $4e6b: $f0 $9f
    ld [hl], c                                    ; $4e6d: $71
    ld a, a                                       ; $4e6e: $7f
    ld de, $0b1f                                  ; $4e6f: $11 $1f $0b
    rrca                                          ; $4e72: $0f
    dec bc                                        ; $4e73: $0b
    rrca                                          ; $4e74: $0f
    dec c                                         ; $4e75: $0d
    rrca                                          ; $4e76: $0f
    add hl, bc                                    ; $4e77: $09
    rrca                                          ; $4e78: $0f
    dec bc                                        ; $4e79: $0b
    rrca                                          ; $4e7a: $0f
    inc b                                         ; $4e7b: $04
    rlca                                          ; $4e7c: $07
    ld [bc], a                                    ; $4e7d: $02
    ld b, $02                                     ; $4e7e: $06 $02
    inc b                                         ; $4e80: $04
    inc b                                         ; $4e81: $04
    ld c, $83                                     ; $4e82: $0e $83
    nop                                           ; $4e84: $00
    stop                                          ; $4e85: $10 $00
    rla                                           ; $4e87: $17
    db $10                                        ; $4e88: $10
    inc b                                         ; $4e89: $04
    nop                                           ; $4e8a: $00
    ld [bc], a                                    ; $4e8b: $02
    rlca                                          ; $4e8c: $07
    rst $38                                       ; $4e8d: $ff
    rrca                                          ; $4e8e: $0f
    dec b                                         ; $4e8f: $05
    ld hl, sp+$08                                 ; $4e90: $f8 $08
    ld [c], a                                     ; $4e92: $e2
    ld bc, $f8e2                                  ; $4e93: $01 $e2 $f8
    ld [c], a                                     ; $4e96: $e2
    nop                                           ; $4e97: $00
    ldh a, [rSB]                                  ; $4e98: $f0 $01
    ld a, [c]                                     ; $4e9a: $f2
    ld hl, sp-$0e                                 ; $4e9b: $f8 $f2
    db $fd                                        ; $4e9d: $fd
    ld [bc], a                                    ; $4e9e: $02
    inc bc                                        ; $4e9f: $03
    sbc [hl]                                      ; $4ea0: $9e
    ld b, $07                                     ; $4ea1: $06 $07
    dec b                                         ; $4ea3: $05
    rlca                                          ; $4ea4: $07
    ld [$080f], sp                                ; $4ea5: $08 $0f $08
    rrca                                          ; $4ea8: $0f
    inc d                                         ; $4ea9: $14
    rra                                           ; $4eaa: $1f
    jr jr_0ea_4ecc                                ; $4eab: $18 $1f

    jr nz, jr_0ea_4eee                            ; $4ead: $20 $3f

    jr z, jr_0ea_4ef0                             ; $4eaf: $28 $3f

    jr nc, @+$41                                  ; $4eb1: $30 $3f

    ld e, l                                       ; $4eb3: $5d

jr_0ea_4eb4:
    ld l, a                                       ; $4eb4: $6f
    ld a, a                                       ; $4eb5: $7f
    ld c, e                                       ; $4eb6: $4b
    ld l, e                                       ; $4eb7: $6b
    ld e, h                                       ; $4eb8: $5c
    ld a, [hl]                                    ; $4eb9: $7e
    ld e, l                                       ; $4eba: $5d
    db $db                                        ; $4ebb: $db
    cp a                                          ; $4ebc: $bf
    db $fc                                        ; $4ebd: $fc
    cp a                                          ; $4ebe: $bf
    ld [bc], a                                    ; $4ebf: $02
    ldh [$9e], a                                  ; $4ec0: $e0 $9e
    jr nc, jr_0ea_4eb4                            ; $4ec2: $30 $f0

    db $10                                        ; $4ec4: $10
    ldh a, [$08]                                  ; $4ec5: $f0 $08
    ld hl, sp+$08                                 ; $4ec7: $f8 $08
    ld hl, sp+$24                                 ; $4ec9: $f8 $24
    db $fc                                        ; $4ecb: $fc

jr_0ea_4ecc:
    ld b, h                                       ; $4ecc: $44
    db $fc                                        ; $4ecd: $fc
    ld [hl+], a                                   ; $4ece: $22
    cp $0a                                        ; $4ecf: $fe $0a
    cp $26                                        ; $4ed1: $fe $26
    cp $5d                                        ; $4ed3: $fe $5d
    ei                                            ; $4ed5: $fb
    rst $30                                       ; $4ed6: $f7
    jp hl                                         ; $4ed7: $e9


    rst $28                                       ; $4ed8: $ef
    sbc c                                         ; $4ed9: $99
    cp l                                          ; $4eda: $bd
    rst $18                                       ; $4edb: $df
    xor $fd                                       ; $4edc: $ee $fd
    dec e                                         ; $4ede: $1d
    cp $04                                        ; $4edf: $fe $04
    ld bc, $1b8d                                  ; $4ee1: $01 $8d $1b
    db $fd                                        ; $4ee4: $fd
    dec c                                         ; $4ee5: $0d
    ei                                            ; $4ee6: $fb
    dec bc                                        ; $4ee7: $0b
    db $fd                                        ; $4ee8: $fd
    adc [hl]                                      ; $4ee9: $8e
    cp $88                                        ; $4eea: $fe $88
    ld hl, sp-$38                                 ; $4eec: $f8 $c8

jr_0ea_4eee:
    ld hl, sp-$28                                 ; $4eee: $f8 $d8

jr_0ea_4ef0:
    inc bc                                        ; $4ef0: $03
    ld hl, sp-$7c                                 ; $4ef1: $f8 $84
    add sp, -$08                                  ; $4ef3: $e8 $f8
    add sp, -$08                                  ; $4ef5: $e8 $f8
    ld [bc], a                                    ; $4ef7: $02
    ldh a, [rSC]                                  ; $4ef8: $f0 $02
    or b                                          ; $4efa: $b0
    ld [bc], a                                    ; $4efb: $02
    jr nz, jr_0ea_4f00                            ; $4efc: $20 $02

    ld [hl], b                                    ; $4efe: $70
    sub h                                         ; $4eff: $94

jr_0ea_4f00:
    sbc b                                         ; $4f00: $98
    rst $38                                       ; $4f01: $ff
    ld [hl], b                                    ; $4f02: $70
    ld e, a                                       ; $4f03: $5f
    jr nc, jr_0ea_4f45                            ; $4f04: $30 $3f

    ld de, $111f                                  ; $4f06: $11 $1f $11
    rra                                           ; $4f09: $1f
    dec bc                                        ; $4f0a: $0b
    rrca                                          ; $4f0b: $0f
    dec bc                                        ; $4f0c: $0b
    rrca                                          ; $4f0d: $0f
    dec c                                         ; $4f0e: $0d
    rrca                                          ; $4f0f: $0f
    add hl, bc                                    ; $4f10: $09
    rrca                                          ; $4f11: $0f
    dec bc                                        ; $4f12: $0b
    rrca                                          ; $4f13: $0f
    inc b                                         ; $4f14: $04
    rlca                                          ; $4f15: $07
    ld [bc], a                                    ; $4f16: $02
    inc b                                         ; $4f17: $04
    inc b                                         ; $4f18: $04
    ld b, $03                                     ; $4f19: $06 $03
    nop                                           ; $4f1b: $00
    add d                                         ; $4f1c: $82
    stop                                          ; $4f1d: $10 $00
    rla                                           ; $4f1f: $17
    db $10                                        ; $4f20: $10
    ld [bc], a                                    ; $4f21: $02
    nop                                           ; $4f22: $00
    ld [bc], a                                    ; $4f23: $02
    inc bc                                        ; $4f24: $03
    ld [bc], a                                    ; $4f25: $02
    nop                                           ; $4f26: $00
    rst $38                                       ; $4f27: $ff
    rrca                                          ; $4f28: $0f
    dec b                                         ; $4f29: $05
    ld hl, sp+$08                                 ; $4f2a: $f8 $08
    ld [c], a                                     ; $4f2c: $e2
    ld bc, $f8e3                                  ; $4f2d: $01 $e3 $f8
    db $e3                                        ; $4f30: $e3
    nop                                           ; $4f31: $00
    pop af                                        ; $4f32: $f1
    ld bc, $f8f3                                  ; $4f33: $01 $f3 $f8
    di                                            ; $4f36: $f3
    ld sp, hl                                     ; $4f37: $f9
    ld [bc], a                                    ; $4f38: $02
    inc bc                                        ; $4f39: $03
    sbc [hl]                                      ; $4f3a: $9e
    ld b, $07                                     ; $4f3b: $06 $07
    add hl, bc                                    ; $4f3d: $09
    rrca                                          ; $4f3e: $0f
    ld [$100f], sp                                ; $4f3f: $08 $0f $10
    rra                                           ; $4f42: $1f
    inc e                                         ; $4f43: $1c
    rra                                           ; $4f44: $1f

jr_0ea_4f45:
    db $10                                        ; $4f45: $10
    rra                                           ; $4f46: $1f
    jr z, @+$41                                   ; $4f47: $28 $3f

    jr nc, @+$41                                  ; $4f49: $30 $3f

    add hl, sp                                    ; $4f4b: $39
    ccf                                           ; $4f4c: $3f
    ld e, a                                       ; $4f4d: $5f

jr_0ea_4f4e:
    ld l, a                                       ; $4f4e: $6f
    ld a, a                                       ; $4f4f: $7f
    ld c, b                                       ; $4f50: $48
    ld l, e                                       ; $4f51: $6b
    ld e, h                                       ; $4f52: $5c
    ld a, a                                       ; $4f53: $7f
    ld e, a                                       ; $4f54: $5f
    call c, $f8bf                                 ; $4f55: $dc $bf $f8
    cp a                                          ; $4f58: $bf
    ld [bc], a                                    ; $4f59: $02
    ldh [$9e], a                                  ; $4f5a: $e0 $9e
    jr nc, jr_0ea_4f4e                            ; $4f5c: $30 $f0

    ld [$08f8], sp                                ; $4f5e: $08 $f8 $08
    ld hl, sp+$24                                 ; $4f61: $f8 $24
    db $fc                                        ; $4f63: $fc
    ld h, h                                       ; $4f64: $64
    db $fc                                        ; $4f65: $fc
    inc d                                         ; $4f66: $14
    db $fc                                        ; $4f67: $fc
    ld [bc], a                                    ; $4f68: $02
    cp $06                                        ; $4f69: $fe $06
    cp $a6                                        ; $4f6b: $fe $a6
    cp $fd                                        ; $4f6d: $fe $fd
    ei                                            ; $4f6f: $fb
    ld a, a                                       ; $4f70: $7f
    adc c                                         ; $4f71: $89
    db $eb                                        ; $4f72: $eb
    sbc l                                         ; $4f73: $9d
    db $fd                                        ; $4f74: $fd
    rst $38                                       ; $4f75: $ff
    ld e, $fd                                     ; $4f76: $1e $fd
    dec c                                         ; $4f78: $0d
    cp $04                                        ; $4f79: $fe $04
    ld bc, $0f89                                  ; $4f7b: $01 $89 $0f
    db $fd                                        ; $4f7e: $fd
    adc l                                         ; $4f7f: $8d
    ei                                            ; $4f80: $fb
    adc a                                         ; $4f81: $8f
    db $fd                                        ; $4f82: $fd
    adc $fe                                       ; $4f83: $ce $fe
    ret c                                         ; $4f85: $d8

    dec b                                         ; $4f86: $05
    ld hl, sp-$7e                                 ; $4f87: $f8 $82
    add sp, -$08                                  ; $4f89: $e8 $f8
    inc b                                         ; $4f8b: $04
    ldh a, [rSC]                                  ; $4f8c: $f0 $02
    ret nc                                        ; $4f8e: $d0

    ld [bc], a                                    ; $4f8f: $02
    or b                                          ; $4f90: $b0
    ld [bc], a                                    ; $4f91: $02
    jr nc, jr_0ea_4f96                            ; $4f92: $30 $02

    nop                                           ; $4f94: $00
    sub h                                         ; $4f95: $94

jr_0ea_4f96:
    sub b                                         ; $4f96: $90
    rst $38                                       ; $4f97: $ff
    ld [hl], b                                    ; $4f98: $70
    ld e, a                                       ; $4f99: $5f
    ld [hl], c                                    ; $4f9a: $71
    ld a, a                                       ; $4f9b: $7f
    ld de, $131f                                  ; $4f9c: $11 $1f $13
    rra                                           ; $4f9f: $1f
    dec bc                                        ; $4fa0: $0b
    rrca                                          ; $4fa1: $0f
    add hl, bc                                    ; $4fa2: $09
    rrca                                          ; $4fa3: $0f
    add hl, bc                                    ; $4fa4: $09
    rrca                                          ; $4fa5: $0f
    dec bc                                        ; $4fa6: $0b
    rrca                                          ; $4fa7: $0f
    dec bc                                        ; $4fa8: $0b
    rrca                                          ; $4fa9: $0f
    ld b, $04                                     ; $4faa: $06 $04
    inc b                                         ; $4fac: $04
    ld c, $03                                     ; $4fad: $0e $03
    nop                                           ; $4faf: $00
    rla                                           ; $4fb0: $17
    ld bc, $0008                                  ; $4fb1: $01 $08 $00
    rst $38                                       ; $4fb4: $ff
    rrca                                          ; $4fb5: $0f
    dec b                                         ; $4fb6: $05
    ld hl, sp+$08                                 ; $4fb7: $f8 $08
    ld [c], a                                     ; $4fb9: $e2
    ld bc, $f8e2                                  ; $4fba: $01 $e2 $f8
    ld [c], a                                     ; $4fbd: $e2
    nop                                           ; $4fbe: $00
    pop af                                        ; $4fbf: $f1
    ld bc, $f8f2                                  ; $4fc0: $01 $f2 $f8
    ld a, [c]                                     ; $4fc3: $f2
    ld sp, hl                                     ; $4fc4: $f9
    ld [bc], a                                    ; $4fc5: $02
    inc bc                                        ; $4fc6: $03
    sbc [hl]                                      ; $4fc7: $9e
    ld b, $07                                     ; $4fc8: $06 $07
    add hl, bc                                    ; $4fca: $09
    rrca                                          ; $4fcb: $0f
    ld [$080f], sp                                ; $4fcc: $08 $0f $08
    rrca                                          ; $4fcf: $0f
    inc d                                         ; $4fd0: $14
    rra                                           ; $4fd1: $1f
    jr jr_0ea_4ff3                                ; $4fd2: $18 $1f

    jr nz, jr_0ea_5015                            ; $4fd4: $20 $3f

    jr z, jr_0ea_5017                             ; $4fd6: $28 $3f

    jr nc, @+$41                                  ; $4fd8: $30 $3f

    ld e, l                                       ; $4fda: $5d

jr_0ea_4fdb:
    ld l, a                                       ; $4fdb: $6f
    ld a, a                                       ; $4fdc: $7f
    ld c, e                                       ; $4fdd: $4b
    ld a, e                                       ; $4fde: $7b
    ld e, h                                       ; $4fdf: $5c
    ld c, [hl]                                    ; $4fe0: $4e
    ld a, l                                       ; $4fe1: $7d
    ld a, e                                       ; $4fe2: $7b
    ld e, a                                       ; $4fe3: $5f
    call c, $02bf                                 ; $4fe4: $dc $bf $02
    ldh [$9e], a                                  ; $4fe7: $e0 $9e
    jr nc, jr_0ea_4fdb                            ; $4fe9: $30 $f0

    ld [$08f8], sp                                ; $4feb: $08 $f8 $08
    ld hl, sp+$08                                 ; $4fee: $f8 $08
    ld hl, sp+$24                                 ; $4ff0: $f8 $24
    db $fc                                        ; $4ff2: $fc

jr_0ea_4ff3:
    ld b, h                                       ; $4ff3: $44
    db $fc                                        ; $4ff4: $fc
    ld [de], a                                    ; $4ff5: $12
    cp $0a                                        ; $4ff6: $fe $0a
    cp $26                                        ; $4ff8: $fe $26
    cp $5d                                        ; $4ffa: $fe $5d
    ei                                            ; $4ffc: $fb
    rst $38                                       ; $4ffd: $ff
    jp hl                                         ; $4ffe: $e9


    rst $28                                       ; $4fff: $ef
    sbc l                                         ; $5000: $9d
    cp c                                          ; $5001: $b9
    rst $18                                       ; $5002: $df
    rst $28                                       ; $5003: $ef
    db $fd                                        ; $5004: $fd
    dec e                                         ; $5005: $1d
    cp $02                                        ; $5006: $fe $02
    ld bc, $1f8d                                  ; $5008: $01 $8d $1f
    db $fd                                        ; $500b: $fd
    add hl, bc                                    ; $500c: $09
    rst $38                                       ; $500d: $ff
    adc a                                         ; $500e: $8f
    ld sp, hl                                     ; $500f: $f9
    adc [hl]                                      ; $5010: $8e
    cp $88                                        ; $5011: $fe $88
    ld hl, sp-$30                                 ; $5013: $f8 $d0

jr_0ea_5015:
    ldh a, [$d0]                                  ; $5015: $f0 $d0

jr_0ea_5017:
    inc bc                                        ; $5017: $03
    ldh a, [$84]                                  ; $5018: $f0 $84
    ret nc                                        ; $501a: $d0

    ldh a, [$d0]                                  ; $501b: $f0 $d0
    ldh a, [rTMA]                                 ; $501d: $f0 $06
    ldh [rSC], a                                  ; $501f: $e0 $02
    ld h, b                                       ; $5021: $60
    ld [bc], a                                    ; $5022: $02
    nop                                           ; $5023: $00
    sub [hl]                                      ; $5024: $96
    ld hl, sp-$41                                 ; $5025: $f8 $bf
    sub b                                         ; $5027: $90
    rst $38                                       ; $5028: $ff
    ldh a, [$9f]                                  ; $5029: $f0 $9f
    ld [hl], c                                    ; $502b: $71
    ld a, a                                       ; $502c: $7f
    ld de, $131f                                  ; $502d: $11 $1f $13
    rra                                           ; $5030: $1f
    ld de, $091f                                  ; $5031: $11 $1f $09
    rrca                                          ; $5034: $0f
    add hl, bc                                    ; $5035: $09
    rrca                                          ; $5036: $0f
    dec bc                                        ; $5037: $0b
    rrca                                          ; $5038: $0f
    ld a, [bc]                                    ; $5039: $0a
    ld c, $02                                     ; $503a: $0e $02
    ld b, $04                                     ; $503c: $06 $04
    inc b                                         ; $503e: $04
    ld [bc], a                                    ; $503f: $02
    ld c, $02                                     ; $5040: $0e $02
    ld b, $83                                     ; $5042: $06 $83
    nop                                           ; $5044: $00
    ld bc, $1500                                  ; $5045: $01 $00 $15
    ld bc, $0008                                  ; $5048: $01 $08 $00
    rst $38                                       ; $504b: $ff
    rrca                                          ; $504c: $0f
    dec b                                         ; $504d: $05
    ld hl, sp+$08                                 ; $504e: $f8 $08
    ld [c], a                                     ; $5050: $e2
    ld bc, $f8e2                                  ; $5051: $01 $e2 $f8
    ld [c], a                                     ; $5054: $e2
    nop                                           ; $5055: $00
    ldh a, [rSB]                                  ; $5056: $f0 $01
    ld a, [c]                                     ; $5058: $f2
    ld hl, sp-$0e                                 ; $5059: $f8 $f2
    db $fc                                        ; $505b: $fc
    ld [bc], a                                    ; $505c: $02
    inc bc                                        ; $505d: $03
    sbc [hl]                                      ; $505e: $9e
    ld b, $07                                     ; $505f: $06 $07
    dec b                                         ; $5061: $05
    rlca                                          ; $5062: $07
    ld [$080f], sp                                ; $5063: $08 $0f $08
    rrca                                          ; $5066: $0f
    inc d                                         ; $5067: $14
    rra                                           ; $5068: $1f
    jr jr_0ea_508a                                ; $5069: $18 $1f

    jr nz, jr_0ea_50ac                            ; $506b: $20 $3f

    jr z, jr_0ea_50ae                             ; $506d: $28 $3f

    jr nc, jr_0ea_50b0                            ; $506f: $30 $3f

    ld e, l                                       ; $5071: $5d

jr_0ea_5072:
    ld l, a                                       ; $5072: $6f
    ld [hl], a                                    ; $5073: $77
    ld c, e                                       ; $5074: $4b
    ld a, e                                       ; $5075: $7b
    ld c, h                                       ; $5076: $4c
    ld e, [hl]                                    ; $5077: $5e
    ld a, l                                       ; $5078: $7d
    cp e                                          ; $5079: $bb
    rst $18                                       ; $507a: $df
    call c, $02bf                                 ; $507b: $dc $bf $02
    ldh [$9e], a                                  ; $507e: $e0 $9e
    jr nc, jr_0ea_5072                            ; $5080: $30 $f0

    db $10                                        ; $5082: $10
    ldh a, [$08]                                  ; $5083: $f0 $08
    ld hl, sp+$08                                 ; $5085: $f8 $08
    ld hl, sp+$24                                 ; $5087: $f8 $24
    db $fc                                        ; $5089: $fc

jr_0ea_508a:
    ld b, h                                       ; $508a: $44
    db $fc                                        ; $508b: $fc
    ld [hl+], a                                   ; $508c: $22
    cp $0a                                        ; $508d: $fe $0a
    cp $26                                        ; $508f: $fe $26
    cp $5d                                        ; $5091: $fe $5d
    ei                                            ; $5093: $fb
    rst $38                                       ; $5094: $ff
    jp hl                                         ; $5095: $e9


    db $eb                                        ; $5096: $eb
    sbc l                                         ; $5097: $9d
    cp a                                          ; $5098: $bf
    db $dd                                        ; $5099: $dd
    db $ed                                        ; $509a: $ed
    cp $1f                                        ; $509b: $fe $1f
    cp $04                                        ; $509d: $fe $04
    ld bc, $1994                                  ; $509f: $01 $94 $19
    rst $38                                       ; $50a2: $ff
    ld c, $fa                                     ; $50a3: $0e $fa
    inc c                                         ; $50a5: $0c
    db $fc                                        ; $50a6: $fc
    adc b                                         ; $50a7: $88
    ld hl, sp-$78                                 ; $50a8: $f8 $88
    ld hl, sp-$30                                 ; $50aa: $f8 $d0

jr_0ea_50ac:
    ldh a, [$d0]                                  ; $50ac: $f0 $d0

jr_0ea_50ae:
    ldh a, [$b0]                                  ; $50ae: $f0 $b0

jr_0ea_50b0:
    ldh a, [$d0]                                  ; $50b0: $f0 $d0
    ldh a, [$d0]                                  ; $50b2: $f0 $d0
    ldh a, [rDIV]                                 ; $50b4: $f0 $04
    ldh [rSC], a                                  ; $50b6: $e0 $02
    jr nz, jr_0ea_50bc                            ; $50b8: $20 $02

    ld h, b                                       ; $50ba: $60
    adc l                                         ; $50bb: $8d

jr_0ea_50bc:
    ret c                                         ; $50bc: $d8

    cp a                                          ; $50bd: $bf
    or b                                          ; $50be: $b0
    rst $18                                       ; $50bf: $df
    ret nc                                        ; $50c0: $d0

    cp a                                          ; $50c1: $bf
    ld [hl], c                                    ; $50c2: $71
    ld a, a                                       ; $50c3: $7f
    ld de, $131f                                  ; $50c4: $11 $1f $13
    rra                                           ; $50c7: $1f
    dec de                                        ; $50c8: $1b
    inc bc                                        ; $50c9: $03
    rra                                           ; $50ca: $1f
    add h                                         ; $50cb: $84
    rla                                           ; $50cc: $17
    rra                                           ; $50cd: $1f
    rla                                           ; $50ce: $17
    rra                                           ; $50cf: $1f
    ld [bc], a                                    ; $50d0: $02
    rrca                                          ; $50d1: $0f
    ld [bc], a                                    ; $50d2: $02
    dec c                                         ; $50d3: $0d
    ld [bc], a                                    ; $50d4: $02
    inc b                                         ; $50d5: $04
    ld [bc], a                                    ; $50d6: $02
    ld c, $02                                     ; $50d7: $0e $02
    inc c                                         ; $50d9: $0c
    inc bc                                        ; $50da: $03
    nop                                           ; $50db: $00
    add d                                         ; $50dc: $82
    ld [$1700], sp                                ; $50dd: $08 $00 $17
    ld [$0002], sp                                ; $50e0: $08 $02 $00
    ld [bc], a                                    ; $50e3: $02
    inc bc                                        ; $50e4: $03
    ld [bc], a                                    ; $50e5: $02
    nop                                           ; $50e6: $00
    rst $38                                       ; $50e7: $ff
    rrca                                          ; $50e8: $0f
    dec b                                         ; $50e9: $05
    ld hl, sp+$08                                 ; $50ea: $f8 $08
    ld [c], a                                     ; $50ec: $e2
    ld bc, $f8e3                                  ; $50ed: $01 $e3 $f8
    db $e3                                        ; $50f0: $e3
    nop                                           ; $50f1: $00
    pop af                                        ; $50f2: $f1
    ld bc, $f8f3                                  ; $50f3: $01 $f3 $f8
    di                                            ; $50f6: $f3
    db $fd                                        ; $50f7: $fd
    ld [bc], a                                    ; $50f8: $02
    inc bc                                        ; $50f9: $03
    sbc [hl]                                      ; $50fa: $9e
    ld b, $07                                     ; $50fb: $06 $07
    add hl, bc                                    ; $50fd: $09
    rrca                                          ; $50fe: $0f
    ld [$100f], sp                                ; $50ff: $08 $0f $10
    rra                                           ; $5102: $1f
    inc e                                         ; $5103: $1c
    rra                                           ; $5104: $1f
    db $10                                        ; $5105: $10
    rra                                           ; $5106: $1f
    jr z, jr_0ea_5148                             ; $5107: $28 $3f

    jr nc, jr_0ea_514a                            ; $5109: $30 $3f

    add hl, sp                                    ; $510b: $39
    ccf                                           ; $510c: $3f
    ld e, a                                       ; $510d: $5f

jr_0ea_510e:
    ld l, a                                       ; $510e: $6f
    ld a, a                                       ; $510f: $7f
    ld c, b                                       ; $5110: $48
    ld l, e                                       ; $5111: $6b
    ld e, h                                       ; $5112: $5c
    ld e, a                                       ; $5113: $5f
    ld a, a                                       ; $5114: $7f
    cp h                                          ; $5115: $bc
    rst $18                                       ; $5116: $df
    ret c                                         ; $5117: $d8

    cp a                                          ; $5118: $bf
    ld [bc], a                                    ; $5119: $02
    ldh [$9e], a                                  ; $511a: $e0 $9e
    jr nc, jr_0ea_510e                            ; $511c: $30 $f0

    ld [$08f8], sp                                ; $511e: $08 $f8 $08
    ld hl, sp+$24                                 ; $5121: $f8 $24
    db $fc                                        ; $5123: $fc
    ld h, h                                       ; $5124: $64
    db $fc                                        ; $5125: $fc
    inc d                                         ; $5126: $14
    db $fc                                        ; $5127: $fc
    ld [bc], a                                    ; $5128: $02
    cp $06                                        ; $5129: $fe $06
    cp $a6                                        ; $512b: $fe $a6
    cp $fd                                        ; $512d: $fe $fd
    ei                                            ; $512f: $fb
    ld a, a                                       ; $5130: $7f
    adc c                                         ; $5131: $89
    db $eb                                        ; $5132: $eb
    sbc l                                         ; $5133: $9d
    rst $38                                       ; $5134: $ff
    db $fd                                        ; $5135: $fd
    dec e                                         ; $5136: $1d
    cp $0f                                        ; $5137: $fe $0f
    cp $04                                        ; $5139: $fe $04
    ld bc, $0994                                  ; $513b: $01 $94 $09
    rst $38                                       ; $513e: $ff
    ld c, $fa                                     ; $513f: $0e $fa
    adc [hl]                                      ; $5141: $8e
    cp $88                                        ; $5142: $fe $88
    ld hl, sp-$38                                 ; $5144: $f8 $c8
    ld hl, sp-$30                                 ; $5146: $f8 $d0

jr_0ea_5148:
    ldh a, [$90]                                  ; $5148: $f0 $90

jr_0ea_514a:
    ldh a, [$90]                                  ; $514a: $f0 $90
    ldh a, [$d0]                                  ; $514c: $f0 $d0
    ldh a, [$d0]                                  ; $514e: $f0 $d0
    ldh a, [rTMA]                                 ; $5150: $f0 $06
    jr nz, jr_0ea_5156                            ; $5152: $20 $02

    ld [hl], b                                    ; $5154: $70
    adc c                                         ; $5155: $89

jr_0ea_5156:
    ldh a, [$bf]                                  ; $5156: $f0 $bf
    or c                                          ; $5158: $b1
    rst $18                                       ; $5159: $df
    pop af                                        ; $515a: $f1
    cp a                                          ; $515b: $bf
    ld [hl], e                                    ; $515c: $73
    ld a, a                                       ; $515d: $7f
    dec de                                        ; $515e: $1b
    dec b                                         ; $515f: $05
    rra                                           ; $5160: $1f
    add d                                         ; $5161: $82
    rla                                           ; $5162: $17
    rra                                           ; $5163: $1f
    inc b                                         ; $5164: $04
    rrca                                          ; $5165: $0f
    ld [bc], a                                    ; $5166: $02
    dec bc                                        ; $5167: $0b
    ld [bc], a                                    ; $5168: $02
    dec c                                         ; $5169: $0d
    ld [bc], a                                    ; $516a: $02
    inc c                                         ; $516b: $0c
    rlca                                          ; $516c: $07
    nop                                           ; $516d: $00
    rla                                           ; $516e: $17
    db $10                                        ; $516f: $10
    inc b                                         ; $5170: $04
    nop                                           ; $5171: $00
    ld [bc], a                                    ; $5172: $02
    rlca                                          ; $5173: $07
    ld [bc], a                                    ; $5174: $02
    nop                                           ; $5175: $00
    rst $38                                       ; $5176: $ff
    rrca                                          ; $5177: $0f
    dec b                                         ; $5178: $05
    ld hl, sp+$08                                 ; $5179: $f8 $08
    ld [c], a                                     ; $517b: $e2
    ld bc, $f8e2                                  ; $517c: $01 $e2 $f8
    ld [c], a                                     ; $517f: $e2
    nop                                           ; $5180: $00
    pop af                                        ; $5181: $f1
    ld bc, $f8f2                                  ; $5182: $01 $f2 $f8
    ld a, [c]                                     ; $5185: $f2
    db $fc                                        ; $5186: $fc
    ld [bc], a                                    ; $5187: $02
    inc bc                                        ; $5188: $03
    sbc [hl]                                      ; $5189: $9e
    ld b, $07                                     ; $518a: $06 $07
    add hl, bc                                    ; $518c: $09
    rrca                                          ; $518d: $0f
    ld [$080f], sp                                ; $518e: $08 $0f $08
    rrca                                          ; $5191: $0f
    inc d                                         ; $5192: $14
    rra                                           ; $5193: $1f
    jr jr_0ea_51b5                                ; $5194: $18 $1f

    jr nz, jr_0ea_51d7                            ; $5196: $20 $3f

    jr z, jr_0ea_51d9                             ; $5198: $28 $3f

    jr nc, jr_0ea_51db                            ; $519a: $30 $3f

    ld e, l                                       ; $519c: $5d

jr_0ea_519d:
    ld l, a                                       ; $519d: $6f
    ld a, a                                       ; $519e: $7f
    ld c, e                                       ; $519f: $4b
    ld a, e                                       ; $51a0: $7b
    ld e, h                                       ; $51a1: $5c
    ld c, [hl]                                    ; $51a2: $4e
    ld a, l                                       ; $51a3: $7d
    ld a, e                                       ; $51a4: $7b
    ld e, a                                       ; $51a5: $5f
    call c, $02bf                                 ; $51a6: $dc $bf $02
    ldh [$9e], a                                  ; $51a9: $e0 $9e
    jr nc, jr_0ea_519d                            ; $51ab: $30 $f0

    ld [$08f8], sp                                ; $51ad: $08 $f8 $08
    ld hl, sp+$08                                 ; $51b0: $f8 $08
    ld hl, sp+$24                                 ; $51b2: $f8 $24
    db $fc                                        ; $51b4: $fc

jr_0ea_51b5:
    ld b, h                                       ; $51b5: $44
    db $fc                                        ; $51b6: $fc
    ld [de], a                                    ; $51b7: $12
    cp $0a                                        ; $51b8: $fe $0a
    cp $26                                        ; $51ba: $fe $26
    cp $5d                                        ; $51bc: $fe $5d
    ei                                            ; $51be: $fb
    rst $38                                       ; $51bf: $ff
    jp hl                                         ; $51c0: $e9


    rst $28                                       ; $51c1: $ef
    sbc l                                         ; $51c2: $9d
    cp c                                          ; $51c3: $b9
    rst $18                                       ; $51c4: $df
    rst $28                                       ; $51c5: $ef
    db $fd                                        ; $51c6: $fd
    dec e                                         ; $51c7: $1d
    cp $02                                        ; $51c8: $fe $02
    ld bc, $1f96                                  ; $51ca: $01 $96 $1f
    db $fd                                        ; $51cd: $fd
    add hl, bc                                    ; $51ce: $09
    rst $38                                       ; $51cf: $ff
    rrca                                          ; $51d0: $0f
    ld sp, hl                                     ; $51d1: $f9
    adc [hl]                                      ; $51d2: $8e
    cp $88                                        ; $51d3: $fe $88
    ld hl, sp-$38                                 ; $51d5: $f8 $c8

jr_0ea_51d7:
    ld hl, sp-$78                                 ; $51d7: $f8 $88

jr_0ea_51d9:
    ld hl, sp-$70                                 ; $51d9: $f8 $90

jr_0ea_51db:
    ldh a, [$90]                                  ; $51db: $f0 $90
    ldh a, [$d0]                                  ; $51dd: $f0 $d0
    ldh a, [$50]                                  ; $51df: $f0 $50
    ld [hl], b                                    ; $51e1: $70
    ld [bc], a                                    ; $51e2: $02
    ld h, b                                       ; $51e3: $60
    inc b                                         ; $51e4: $04
    jr nz, jr_0ea_51e9                            ; $51e5: $20 $02

    ld [hl], b                                    ; $51e7: $70
    adc l                                         ; $51e8: $8d

jr_0ea_51e9:
    ld hl, sp-$41                                 ; $51e9: $f8 $bf
    sub b                                         ; $51eb: $90
    rst $38                                       ; $51ec: $ff
    pop af                                        ; $51ed: $f1
    sbc a                                         ; $51ee: $9f
    ld [hl], c                                    ; $51ef: $71
    ld a, a                                       ; $51f0: $7f
    ld de, $0b1f                                  ; $51f1: $11 $1f $0b
    rrca                                          ; $51f4: $0f
    dec bc                                        ; $51f5: $0b
    inc bc                                        ; $51f6: $03
    rrca                                          ; $51f7: $0f
    add h                                         ; $51f8: $84
    dec bc                                        ; $51f9: $0b
    rrca                                          ; $51fa: $0f
    dec bc                                        ; $51fb: $0b
    rrca                                          ; $51fc: $0f
    ld b, $07                                     ; $51fd: $06 $07
    ld [bc], a                                    ; $51ff: $02
    ld b, $05                                     ; $5200: $06 $05
    nop                                           ; $5202: $00
    add d                                         ; $5203: $82
    ld [$1500], sp                                ; $5204: $08 $00 $15
    ld [$0006], sp                                ; $5207: $08 $06 $00
    ld [bc], a                                    ; $520a: $02
    inc bc                                        ; $520b: $03
    rst $38                                       ; $520c: $ff
    rrca                                          ; $520d: $0f
    dec b                                         ; $520e: $05
    ld hl, sp+$08                                 ; $520f: $f8 $08
    ld [c], a                                     ; $5211: $e2
    ld bc, $f8e2                                  ; $5212: $01 $e2 $f8

jr_0ea_5215:
    ld [c], a                                     ; $5215: $e2
    nop                                           ; $5216: $00
    ldh a, [rSB]                                  ; $5217: $f0 $01
    ld a, [c]                                     ; $5219: $f2
    ld hl, sp-$0e                                 ; $521a: $f8 $f2
    db $fd                                        ; $521c: $fd
    ld [bc], a                                    ; $521d: $02
    inc bc                                        ; $521e: $03
    add c                                         ; $521f: $81
    ld b, $02                                     ; $5220: $06 $02
    rlca                                          ; $5222: $07
    adc [hl]                                      ; $5223: $8e
    dec b                                         ; $5224: $05
    add hl, bc                                    ; $5225: $09
    ld c, $1f                                     ; $5226: $0e $1f
    dec de                                        ; $5228: $1b
    rra                                           ; $5229: $1f
    jr jr_0ea_5242                                ; $522a: $18 $16

    rra                                           ; $522c: $1f
    add hl, hl                                    ; $522d: $29
    ccf                                           ; $522e: $3f
    ld l, $3f                                     ; $522f: $2e $3f
    dec h                                         ; $5231: $25
    inc bc                                        ; $5232: $03
    ccf                                           ; $5233: $3f

jr_0ea_5234:
    adc d                                         ; $5234: $8a
    ld a, a                                       ; $5235: $7f
    ld c, b                                       ; $5236: $48
    ld l, a                                       ; $5237: $6f
    ld e, b                                       ; $5238: $58
    ld e, [hl]                                    ; $5239: $5e
    ld a, a                                       ; $523a: $7f
    db $eb                                        ; $523b: $eb
    sbc h                                         ; $523c: $9c
    xor a                                         ; $523d: $af
    ret c                                         ; $523e: $d8

    ld [bc], a                                    ; $523f: $02
    ldh [$91], a                                  ; $5240: $e0 $91

jr_0ea_5242:
    jr nc, jr_0ea_5234                            ; $5242: $30 $f0

    ld [hl], b                                    ; $5244: $70

jr_0ea_5245:
    ret nc                                        ; $5245: $d0

    ret z                                         ; $5246: $c8

    jr c, jr_0ea_5245                             ; $5247: $38 $fc

    ld l, h                                       ; $5249: $6c
    db $fc                                        ; $524a: $fc
    call z, $fcb4                                 ; $524b: $cc $b4 $fc
    jp z, $ba7e                                   ; $524e: $ca $7e $ba

    cp $d2                                        ; $5251: $fe $d2
    ld [bc], a                                    ; $5253: $02
    cp $8b                                        ; $5254: $fe $8b
    ld a, [hl]                                    ; $5256: $7e
    rst $38                                       ; $5257: $ff
    adc c                                         ; $5258: $89
    ei                                            ; $5259: $fb
    adc l                                         ; $525a: $8d
    db $fd                                        ; $525b: $fd
    ccf                                           ; $525c: $3f
    db $eb                                        ; $525d: $eb
    sbc h                                         ; $525e: $9c
    ld a, [$040d]                                 ; $525f: $fa $0d $04
    ld bc, $fb96                                  ; $5262: $01 $96 $fb
    dec e                                         ; $5265: $1d
    ei                                            ; $5266: $fb
    dec e                                         ; $5267: $1d
    rst $18                                       ; $5268: $df
    cp l                                          ; $5269: $bd
    cpl                                           ; $526a: $2f
    ld sp, hl                                     ; $526b: $f9
    ld c, l                                       ; $526c: $4d
    ei                                            ; $526d: $fb
    ld c, $fe                                     ; $526e: $0e $fe
    ld [$90f8], sp                                ; $5270: $08 $f8 $90
    ldh a, [$b0]                                  ; $5273: $f0 $b0
    ldh a, [$90]                                  ; $5275: $f0 $90
    ldh a, [$50]                                  ; $5277: $f0 $50
    ld [hl], b                                    ; $5279: $70
    inc b                                         ; $527a: $04
    ld h, b                                       ; $527b: $60
    ld [bc], a                                    ; $527c: $02
    jr nz, jr_0ea_5215                            ; $527d: $20 $96

    rst $18                                       ; $527f: $df
    cp b                                          ; $5280: $b8
    rst $18                                       ; $5281: $df
    cp b                                          ; $5282: $b8
    ei                                            ; $5283: $fb
    cp l                                          ; $5284: $bd
    db $f4                                        ; $5285: $f4
    sbc a                                         ; $5286: $9f
    or d                                          ; $5287: $b2
    rst $18                                       ; $5288: $df
    ld [hl], b                                    ; $5289: $70
    ld a, a                                       ; $528a: $7f
    db $10                                        ; $528b: $10
    rra                                           ; $528c: $1f
    add hl, bc                                    ; $528d: $09
    rrca                                          ; $528e: $0f
    dec c                                         ; $528f: $0d
    rrca                                          ; $5290: $0f
    add hl, bc                                    ; $5291: $09
    rrca                                          ; $5292: $0f
    ld a, [bc]                                    ; $5293: $0a
    ld c, $04                                     ; $5294: $0e $04
    ld b, $02                                     ; $5296: $06 $02
    inc b                                         ; $5298: $04
    inc b                                         ; $5299: $04
    ld c, $81                                     ; $529a: $0e $81
    db $10                                        ; $529c: $10
    ld [bc], a                                    ; $529d: $02
    nop                                           ; $529e: $00
    dec b                                         ; $529f: $05
    db $10                                        ; $52a0: $10
    add e                                         ; $52a1: $83
    nop                                           ; $52a2: $00
    stop                                          ; $52a3: $10 $00
    dec b                                         ; $52a5: $05
    db $10                                        ; $52a6: $10
    inc c                                         ; $52a7: $0c
    nop                                           ; $52a8: $00
    inc b                                         ; $52a9: $04
    rlca                                          ; $52aa: $07
    rst $38                                       ; $52ab: $ff
    rrca                                          ; $52ac: $0f
    dec b                                         ; $52ad: $05
    ld hl, sp+$08                                 ; $52ae: $f8 $08
    ld [c], a                                     ; $52b0: $e2
    ld bc, $f8e2                                  ; $52b1: $01 $e2 $f8
    ld [c], a                                     ; $52b4: $e2
    nop                                           ; $52b5: $00
    pop af                                        ; $52b6: $f1
    ld bc, $f8f2                                  ; $52b7: $01 $f2 $f8
    ld a, [c]                                     ; $52ba: $f2
    ld sp, hl                                     ; $52bb: $f9
    ld [bc], a                                    ; $52bc: $02
    inc bc                                        ; $52bd: $03
    add c                                         ; $52be: $81
    ld b, $02                                     ; $52bf: $06 $02
    rlca                                          ; $52c1: $07
    adc [hl]                                      ; $52c2: $8e
    dec b                                         ; $52c3: $05
    add hl, bc                                    ; $52c4: $09
    ld c, $1f                                     ; $52c5: $0e $1f
    dec de                                        ; $52c7: $1b
    rra                                           ; $52c8: $1f
    jr jr_0ea_52e1                                ; $52c9: $18 $16

    rra                                           ; $52cb: $1f
    add hl, hl                                    ; $52cc: $29
    ccf                                           ; $52cd: $3f
    ld l, $3f                                     ; $52ce: $2e $3f
    dec h                                         ; $52d0: $25
    inc bc                                        ; $52d1: $03
    ccf                                           ; $52d2: $3f

jr_0ea_52d3:
    adc d                                         ; $52d3: $8a
    ld e, a                                       ; $52d4: $5f
    ld l, b                                       ; $52d5: $68
    ld l, a                                       ; $52d6: $6f
    ld e, b                                       ; $52d7: $58
    ld e, [hl]                                    ; $52d8: $5e
    ld a, a                                       ; $52d9: $7f
    ld l, e                                       ; $52da: $6b
    ld e, h                                       ; $52db: $5c
    rst $38                                       ; $52dc: $ff
    cp b                                          ; $52dd: $b8
    ld [bc], a                                    ; $52de: $02
    ldh [$91], a                                  ; $52df: $e0 $91

jr_0ea_52e1:
    jr nc, jr_0ea_52d3                            ; $52e1: $30 $f0

    ld [hl], b                                    ; $52e3: $70

jr_0ea_52e4:
    ret nc                                        ; $52e4: $d0

    ret z                                         ; $52e5: $c8

    jr c, jr_0ea_52e4                             ; $52e6: $38 $fc

    ld l, h                                       ; $52e8: $6c
    db $fc                                        ; $52e9: $fc
    call z, $fcb4                                 ; $52ea: $cc $b4 $fc
    jp z, $ba7e                                   ; $52ed: $ca $7e $ba

    cp $d2                                        ; $52f0: $fe $d2
    ld [bc], a                                    ; $52f2: $02
    cp $8b                                        ; $52f3: $fe $8b
    ld a, [hl]                                    ; $52f5: $7e
    ld sp, hl                                     ; $52f6: $f9
    adc a                                         ; $52f7: $8f
    rst $30                                       ; $52f8: $f7
    adc c                                         ; $52f9: $89
    rst $38                                       ; $52fa: $ff
    dec a                                         ; $52fb: $3d
    rst $28                                       ; $52fc: $ef
    sbc c                                         ; $52fd: $99
    ld a, [$020f]                                 ; $52fe: $fa $0f $02
    ld bc, $ff8f                                  ; $5301: $01 $8f $ff
    add hl, de                                    ; $5304: $19
    rst $38                                       ; $5305: $ff
    add hl, de                                    ; $5306: $19
    db $dd                                        ; $5307: $dd
    cp e                                          ; $5308: $bb
    ld l, $f2                                     ; $5309: $2e $f2
    ld c, [hl]                                    ; $530b: $4e
    ld a, [c]                                     ; $530c: $f2
    inc c                                         ; $530d: $0c
    db $fc                                        ; $530e: $fc
    adc b                                         ; $530f: $88
    ld hl, sp-$70                                 ; $5310: $f8 $90
    inc bc                                        ; $5312: $03
    ldh a, [$81]                                  ; $5313: $f0 $81
    and b                                         ; $5315: $a0
    inc bc                                        ; $5316: $03
    ldh [rDIV], a                                 ; $5317: $e0 $04
    ld b, b                                       ; $5319: $40
    inc b                                         ; $531a: $04
    ld h, b                                       ; $531b: $60
    sub e                                         ; $531c: $93
    rst $18                                       ; $531d: $df
    cp b                                          ; $531e: $b8
    rst $38                                       ; $531f: $ff
    cp b                                          ; $5320: $b8
    sbc e                                         ; $5321: $9b
    db $fd                                        ; $5322: $fd
    db $f4                                        ; $5323: $f4
    sbc a                                         ; $5324: $9f
    ld [hl], d                                    ; $5325: $72
    ld a, a                                       ; $5326: $7f
    db $10                                        ; $5327: $10
    rra                                           ; $5328: $1f
    ld e, $1f                                     ; $5329: $1e $1f
    add hl, bc                                    ; $532b: $09
    rrca                                          ; $532c: $0f
    add hl, bc                                    ; $532d: $09
    rrca                                          ; $532e: $0f
    ld a, [bc]                                    ; $532f: $0a
    inc bc                                        ; $5330: $03
    ld c, $04                                     ; $5331: $0e $04
    inc b                                         ; $5333: $04
    inc b                                         ; $5334: $04
    ld c, $02                                     ; $5335: $0e $02
    inc b                                         ; $5337: $04
    add c                                         ; $5338: $81
    ld bc, $0002                                  ; $5339: $01 $02 $00
    dec b                                         ; $533c: $05
    ld bc, $0083                                  ; $533d: $01 $83 $00
    ld bc, $0500                                  ; $5340: $01 $00 $05
    ld bc, $0010                                  ; $5343: $01 $10 $00
    rst $38                                       ; $5346: $ff
    rrca                                          ; $5347: $0f
    dec b                                         ; $5348: $05
    ld hl, sp+$08                                 ; $5349: $f8 $08
    ld [c], a                                     ; $534b: $e2
    ld bc, $f8e3                                  ; $534c: $01 $e3 $f8
    db $e3                                        ; $534f: $e3
    nop                                           ; $5350: $00
    di                                            ; $5351: $f3
    ld hl, sp-$0d                                 ; $5352: $f8 $f3
    nop                                           ; $5354: $00
    di                                            ; $5355: $f3
    ld bc, $0302                                  ; $5356: $01 $02 $03
    sub c                                         ; $5359: $91
    ld b, $07                                     ; $535a: $06 $07
    rrca                                          ; $535c: $0f
    dec c                                         ; $535d: $0d
    add hl, de                                    ; $535e: $19
    ld e, $1f                                     ; $535f: $1e $1f
    dec de                                        ; $5361: $1b
    rla                                           ; $5362: $17
    jr @+$28                                      ; $5363: $18 $26

    ccf                                           ; $5365: $3f
    add hl, hl                                    ; $5366: $29
    ccf                                           ; $5367: $3f
    ld l, $3f                                     ; $5368: $2e $3f
    dec [hl]                                      ; $536a: $35
    inc bc                                        ; $536b: $03
    ccf                                           ; $536c: $3f

jr_0ea_536d:
    adc d                                         ; $536d: $8a
    ld e, a                                       ; $536e: $5f
    ld l, b                                       ; $536f: $68
    ld l, a                                       ; $5370: $6f
    ld e, b                                       ; $5371: $58
    ld e, a                                       ; $5372: $5f
    ld a, a                                       ; $5373: $7f
    ld l, e                                       ; $5374: $6b
    ld e, h                                       ; $5375: $5c
    rst $38                                       ; $5376: $ff
    cp b                                          ; $5377: $b8
    ld [bc], a                                    ; $5378: $02
    ldh [$91], a                                  ; $5379: $e0 $91
    jr nc, jr_0ea_536d                            ; $537b: $30 $f0

    ld a, b                                       ; $537d: $78
    ret c                                         ; $537e: $d8

    call z, $fc3c                                 ; $537f: $cc $3c $fc
    ld l, h                                       ; $5382: $6c
    db $f4                                        ; $5383: $f4
    call z, $feb2                                 ; $5384: $cc $b2 $fe
    jp z, $ba7e                                   ; $5387: $ca $7e $ba

    cp $d6                                        ; $538a: $fe $d6
    ld [bc], a                                    ; $538c: $02
    cp $9f                                        ; $538d: $fe $9f
    ld a, [hl]                                    ; $538f: $7e
    ld sp, hl                                     ; $5390: $f9
    adc a                                         ; $5391: $8f
    rst $30                                       ; $5392: $f7
    adc c                                         ; $5393: $89
    cp a                                          ; $5394: $bf
    ld a, l                                       ; $5395: $7d
    rst $28                                       ; $5396: $ef
    sbc c                                         ; $5397: $99
    ld sp, hl                                     ; $5398: $f9
    rrca                                          ; $5399: $0f
    rst $18                                       ; $539a: $df
    cp b                                          ; $539b: $b8
    ei                                            ; $539c: $fb
    cp h                                          ; $539d: $bc
    sbc e                                         ; $539e: $9b
    db $fd                                        ; $539f: $fd
    db $f4                                        ; $53a0: $f4
    sbc a                                         ; $53a1: $9f
    ld [hl], d                                    ; $53a2: $72
    ld a, a                                       ; $53a3: $7f
    db $10                                        ; $53a4: $10
    rra                                           ; $53a5: $1f
    dec c                                         ; $53a6: $0d
    rrca                                          ; $53a7: $0f
    add hl, bc                                    ; $53a8: $09
    rrca                                          ; $53a9: $0f
    add hl, bc                                    ; $53aa: $09
    rrca                                          ; $53ab: $0f
    dec b                                         ; $53ac: $05
    rlca                                          ; $53ad: $07
    inc b                                         ; $53ae: $04
    ld b, $02                                     ; $53af: $06 $02
    ld [bc], a                                    ; $53b1: $02
    inc b                                         ; $53b2: $04
    rlca                                          ; $53b3: $07
    ld [bc], a                                    ; $53b4: $02
    nop                                           ; $53b5: $00
    sub h                                         ; $53b6: $94
    rst $38                                       ; $53b7: $ff
    inc c                                         ; $53b8: $0c
    ld l, a                                       ; $53b9: $6f
    sbc h                                         ; $53ba: $9c
    xor $dd                                       ; $53bb: $ee $dd
    sub e                                         ; $53bd: $93
    db $fd                                        ; $53be: $fd
    daa                                           ; $53bf: $27
    ld sp, hl                                     ; $53c0: $f9
    ld b, $fe                                     ; $53c1: $06 $fe
    ret z                                         ; $53c3: $c8

    ld hl, sp+$58                                 ; $53c4: $f8 $58
    ld a, b                                       ; $53c6: $78
    ld c, b                                       ; $53c7: $48
    ld a, b                                       ; $53c8: $78
    jr z, jr_0ea_5403                             ; $53c9: $28 $38

    ld [bc], a                                    ; $53cb: $02
    jr @+$06                                      ; $53cc: $18 $04

    jr nc, jr_0ea_53d6                            ; $53ce: $30 $06

    nop                                           ; $53d0: $00
    ld b, $01                                     ; $53d1: $06 $01
    ld a, [de]                                    ; $53d3: $1a
    nop                                           ; $53d4: $00
    rst $38                                       ; $53d5: $ff

jr_0ea_53d6:
    rrca                                          ; $53d6: $0f
    dec b                                         ; $53d7: $05
    ld hl, sp+$08                                 ; $53d8: $f8 $08
    ld [c], a                                     ; $53da: $e2
    ld bc, $f8e2                                  ; $53db: $01 $e2 $f8
    ld [c], a                                     ; $53de: $e2
    nop                                           ; $53df: $00
    ldh a, [rSB]                                  ; $53e0: $f0 $01
    ld a, [c]                                     ; $53e2: $f2
    ld hl, sp-$0e                                 ; $53e3: $f8 $f2
    db $fc                                        ; $53e5: $fc
    ld [bc], a                                    ; $53e6: $02
    inc bc                                        ; $53e7: $03
    sub c                                         ; $53e8: $91
    ld b, $07                                     ; $53e9: $06 $07
    rrca                                          ; $53eb: $0f
    dec c                                         ; $53ec: $0d
    add hl, bc                                    ; $53ed: $09
    ld c, $1f                                     ; $53ee: $0e $1f
    dec de                                        ; $53f0: $1b
    rra                                           ; $53f1: $1f
    jr @+$28                                      ; $53f2: $18 $26

    ccf                                           ; $53f4: $3f
    add hl, hl                                    ; $53f5: $29
    ccf                                           ; $53f6: $3f
    ld l, $3f                                     ; $53f7: $2e $3f
    dec h                                         ; $53f9: $25
    inc bc                                        ; $53fa: $03
    ccf                                           ; $53fb: $3f

jr_0ea_53fc:
    adc d                                         ; $53fc: $8a
    ld a, a                                       ; $53fd: $7f
    ld c, b                                       ; $53fe: $48
    ld l, a                                       ; $53ff: $6f
    ld e, b                                       ; $5400: $58
    ld e, [hl]                                    ; $5401: $5e
    ld a, a                                       ; $5402: $7f

jr_0ea_5403:
    db $eb                                        ; $5403: $eb
    sbc h                                         ; $5404: $9c
    xor a                                         ; $5405: $af
    ret c                                         ; $5406: $d8

    ld [bc], a                                    ; $5407: $02
    ldh [$91], a                                  ; $5408: $e0 $91
    jr nc, jr_0ea_53fc                            ; $540a: $30 $f0

    ld a, b                                       ; $540c: $78

jr_0ea_540d:
    ret c                                         ; $540d: $d8

    ret z                                         ; $540e: $c8

    jr c, jr_0ea_540d                             ; $540f: $38 $fc

    ld l, h                                       ; $5411: $6c
    db $fc                                        ; $5412: $fc
    call z, $feb2                                 ; $5413: $cc $b2 $fe
    jp z, $ba7e                                   ; $5416: $ca $7e $ba

    cp $d2                                        ; $5419: $fe $d2
    ld [bc], a                                    ; $541b: $02
    cp $8b                                        ; $541c: $fe $8b
    ld a, [hl]                                    ; $541e: $7e
    rst $38                                       ; $541f: $ff
    adc c                                         ; $5420: $89
    ei                                            ; $5421: $fb
    adc l                                         ; $5422: $8d
    db $fd                                        ; $5423: $fd
    ccf                                           ; $5424: $3f
    db $eb                                        ; $5425: $eb
    sbc h                                         ; $5426: $9c
    ld a, [$040d]                                 ; $5427: $fa $0d $04
    ld bc, $fb96                                  ; $542a: $01 $96 $fb
    dec e                                         ; $542d: $1d
    ei                                            ; $542e: $fb
    dec e                                         ; $542f: $1d
    rst $18                                       ; $5430: $df
    cp l                                          ; $5431: $bd

jr_0ea_5432:
    cpl                                           ; $5432: $2f
    ld sp, hl                                     ; $5433: $f9
    ld c, l                                       ; $5434: $4d
    ei                                            ; $5435: $fb
    ld c, $fe                                     ; $5436: $0e $fe
    jr jr_0ea_5432                                ; $5438: $18 $f8

    or b                                          ; $543a: $b0
    ldh a, [$90]                                  ; $543b: $f0 $90
    ldh a, [$50]                                  ; $543d: $f0 $50
    ld [hl], b                                    ; $543f: $70
    ld d, b                                       ; $5440: $50
    ld [hl], b                                    ; $5441: $70
    ld [bc], a                                    ; $5442: $02
    jr nc, jr_0ea_5449                            ; $5443: $30 $04

    ld [hl], b                                    ; $5445: $70
    sub [hl]                                      ; $5446: $96
    rst $18                                       ; $5447: $df
    cp b                                          ; $5448: $b8

jr_0ea_5449:
    rst $18                                       ; $5449: $df
    cp b                                          ; $544a: $b8
    ei                                            ; $544b: $fb
    cp l                                          ; $544c: $bd
    db $f4                                        ; $544d: $f4
    sbc a                                         ; $544e: $9f
    or d                                          ; $544f: $b2
    rst $18                                       ; $5450: $df
    ld [hl], b                                    ; $5451: $70
    ld a, a                                       ; $5452: $7f
    db $10                                        ; $5453: $10
    rra                                           ; $5454: $1f
    add hl, bc                                    ; $5455: $09
    rrca                                          ; $5456: $0f
    dec c                                         ; $5457: $0d
    rrca                                          ; $5458: $0f
    add hl, bc                                    ; $5459: $09
    rrca                                          ; $545a: $0f
    dec b                                         ; $545b: $05
    rlca                                          ; $545c: $07
    ld [bc], a                                    ; $545d: $02
    ld b, $04                                     ; $545e: $06 $04
    ld [bc], a                                    ; $5460: $02
    ld [bc], a                                    ; $5461: $02
    rlca                                          ; $5462: $07
    ld [bc], a                                    ; $5463: $02
    ld b, $81                                     ; $5464: $06 $81
    ld [$0002], sp                                ; $5466: $08 $02 $00
    dec b                                         ; $5469: $05
    ld [$0083], sp                                ; $546a: $08 $83 $00
    ld [$0500], sp                                ; $546d: $08 $00 $05
    ld [$000c], sp                                ; $5470: $08 $0c $00
    ld [bc], a                                    ; $5473: $02
    ld bc, $0002                                  ; $5474: $01 $02 $00
    rst $38                                       ; $5477: $ff
    rrca                                          ; $5478: $0f
    dec b                                         ; $5479: $05
    ld hl, sp+$08                                 ; $547a: $f8 $08
    ld [c], a                                     ; $547c: $e2
    ld bc, $f8e2                                  ; $547d: $01 $e2 $f8
    ld [c], a                                     ; $5480: $e2
    nop                                           ; $5481: $00
    pop af                                        ; $5482: $f1
    ld bc, $f8f2                                  ; $5483: $01 $f2 $f8
    ld a, [c]                                     ; $5486: $f2
    db $fc                                        ; $5487: $fc
    ld [bc], a                                    ; $5488: $02
    inc bc                                        ; $5489: $03
    add c                                         ; $548a: $81
    ld b, $02                                     ; $548b: $06 $02
    rlca                                          ; $548d: $07
    adc [hl]                                      ; $548e: $8e
    dec b                                         ; $548f: $05
    add hl, bc                                    ; $5490: $09
    ld c, $1f                                     ; $5491: $0e $1f
    dec de                                        ; $5493: $1b
    rra                                           ; $5494: $1f
    jr jr_0ea_54ad                                ; $5495: $18 $16

    rra                                           ; $5497: $1f
    add hl, hl                                    ; $5498: $29
    ccf                                           ; $5499: $3f
    ld l, $3f                                     ; $549a: $2e $3f
    dec h                                         ; $549c: $25
    inc bc                                        ; $549d: $03
    ccf                                           ; $549e: $3f

jr_0ea_549f:
    adc d                                         ; $549f: $8a
    ld c, a                                       ; $54a0: $4f
    ld a, b                                       ; $54a1: $78
    ld [hl], a                                    ; $54a2: $77
    ld c, b                                       ; $54a3: $48
    ld a, [hl]                                    ; $54a4: $7e
    ld e, a                                       ; $54a5: $5f
    ld a, e                                       ; $54a6: $7b
    ld c, h                                       ; $54a7: $4c
    xor a                                         ; $54a8: $af
    ld hl, sp+$02                                 ; $54a9: $f8 $02
    ldh [$91], a                                  ; $54ab: $e0 $91

jr_0ea_54ad:
    jr nc, jr_0ea_549f                            ; $54ad: $30 $f0

    ld [hl], b                                    ; $54af: $70

jr_0ea_54b0:
    ret nc                                        ; $54b0: $d0

    ret z                                         ; $54b1: $c8

    jr c, jr_0ea_54b0                             ; $54b2: $38 $fc

    ld l, h                                       ; $54b4: $6c
    db $fc                                        ; $54b5: $fc
    call z, $fcb4                                 ; $54b6: $cc $b4 $fc
    jp z, $ba7e                                   ; $54b9: $ca $7e $ba

    cp $d2                                        ; $54bc: $fe $d2
    ld [bc], a                                    ; $54be: $02
    cp $8b                                        ; $54bf: $fe $8b
    ld a, [hl]                                    ; $54c1: $7e
    db $fd                                        ; $54c2: $fd
    adc e                                         ; $54c3: $8b
    ei                                            ; $54c4: $fb
    adc l                                         ; $54c5: $8d
    db $fd                                        ; $54c6: $fd
    ccf                                           ; $54c7: $3f
    db $eb                                        ; $54c8: $eb
    sbc l                                         ; $54c9: $9d
    rst $38                                       ; $54ca: $ff
    ld c, $02                                     ; $54cb: $0e $02
    ld bc, $fb93                                  ; $54cd: $01 $93 $fb
    dec e                                         ; $54d0: $1d
    rst $38                                       ; $54d1: $ff
    dec e                                         ; $54d2: $1d
    reti                                          ; $54d3: $d9


    cp a                                          ; $54d4: $bf
    cpl                                           ; $54d5: $2f
    ld sp, hl                                     ; $54d6: $f9
    ld c, [hl]                                    ; $54d7: $4e
    cp $08                                        ; $54d8: $fe $08
    ld hl, sp+$78                                 ; $54da: $f8 $78
    ld hl, sp-$70                                 ; $54dc: $f8 $90
    ldh a, [$90]                                  ; $54de: $f0 $90
    ldh a, [$50]                                  ; $54e0: $f0 $50
    inc bc                                        ; $54e2: $03
    ld [hl], b                                    ; $54e3: $70
    inc b                                         ; $54e4: $04
    jr nz, jr_0ea_54eb                            ; $54e5: $20 $04

    ld [hl], b                                    ; $54e7: $70
    adc a                                         ; $54e8: $8f
    rst $38                                       ; $54e9: $ff
    sbc b                                         ; $54ea: $98

jr_0ea_54eb:
    rst $38                                       ; $54eb: $ff
    sbc b                                         ; $54ec: $98
    cp e                                          ; $54ed: $bb
    db $dd                                        ; $54ee: $dd
    ld [hl], h                                    ; $54ef: $74
    ld c, a                                       ; $54f0: $4f
    ld [hl], d                                    ; $54f1: $72
    ld c, a                                       ; $54f2: $4f
    jr nc, jr_0ea_5534                            ; $54f3: $30 $3f

    ld de, $091f                                  ; $54f5: $11 $1f $09
    inc bc                                        ; $54f8: $03
    rrca                                          ; $54f9: $0f
    add c                                         ; $54fa: $81
    dec b                                         ; $54fb: $05
    inc bc                                        ; $54fc: $03
    rlca                                          ; $54fd: $07
    inc b                                         ; $54fe: $04
    ld [bc], a                                    ; $54ff: $02
    inc b                                         ; $5500: $04
    ld b, $02                                     ; $5501: $06 $02
    nop                                           ; $5503: $00
    add c                                         ; $5504: $81
    ld [$0002], sp                                ; $5505: $08 $02 $00
    dec b                                         ; $5508: $05
    ld [$0083], sp                                ; $5509: $08 $83 $00
    ld [$0500], sp                                ; $550c: $08 $00 $05
    ld [$000e], sp                                ; $550f: $08 $0e $00
    ld [bc], a                                    ; $5512: $02
    ld bc, $0fff                                  ; $5513: $01 $ff $0f
    dec b                                         ; $5516: $05
    ld hl, sp+$08                                 ; $5517: $f8 $08
    ld [c], a                                     ; $5519: $e2
    ld bc, $f9e3                                  ; $551a: $01 $e3 $f9
    db $e3                                        ; $551d: $e3
    ld bc, $f8f3                                  ; $551e: $01 $f3 $f8
    di                                            ; $5521: $f3
    nop                                           ; $5522: $00
    di                                            ; $5523: $f3
    ld bc, $0702                                  ; $5524: $01 $02 $07
    sub c                                         ; $5527: $91
    inc c                                         ; $5528: $0c
    rrca                                          ; $5529: $0f
    ld e, $1b                                     ; $552a: $1e $1b
    inc sp                                        ; $552c: $33
    inc a                                         ; $552d: $3c
    ccf                                           ; $552e: $3f
    ld [hl], $2f                                  ; $552f: $36 $2f
    ld sp, $7f4d                                  ; $5531: $31 $4d $7f

jr_0ea_5534:
    ld d, e                                       ; $5534: $53
    ld a, [hl]                                    ; $5535: $7e
    ld e, l                                       ; $5536: $5d
    ld a, a                                       ; $5537: $7f
    ld l, e                                       ; $5538: $6b
    ld [bc], a                                    ; $5539: $02
    ld a, a                                       ; $553a: $7f
    adc e                                         ; $553b: $8b
    ld a, [hl]                                    ; $553c: $7e
    sbc a                                         ; $553d: $9f
    pop af                                        ; $553e: $f1
    rst $28                                       ; $553f: $ef
    sub c                                         ; $5540: $91
    rst $38                                       ; $5541: $ff
    cp [hl]                                       ; $5542: $be
    rst $30                                       ; $5543: $f7
    sbc c                                         ; $5544: $99
    sbc a                                         ; $5545: $9f
    ldh a, [rSC]                                  ; $5546: $f0 $02
    ret nz                                        ; $5548: $c0

    sub c                                         ; $5549: $91
    ld h, b                                       ; $554a: $60
    ldh [$f0], a                                  ; $554b: $e0 $f0
    or b                                          ; $554d: $b0
    sbc b                                         ; $554e: $98
    ld a, b                                       ; $554f: $78
    ld hl, sp-$28                                 ; $5550: $f8 $d8
    add sp, -$68                                  ; $5552: $e8 $98
    ld h, h                                       ; $5554: $64
    db $fc                                        ; $5555: $fc
    sub h                                         ; $5556: $94
    db $fc                                        ; $5557: $fc
    ld [hl], h                                    ; $5558: $74
    db $fc                                        ; $5559: $fc
    xor h                                         ; $555a: $ac
    inc bc                                        ; $555b: $03
    db $fc                                        ; $555c: $fc
    sbc [hl]                                      ; $555d: $9e
    ld a, [$f616]                                 ; $555e: $fa $16 $f6
    ld a, [de]                                    ; $5561: $1a
    ld a, d                                       ; $5562: $7a
    cp $d6                                        ; $5563: $fe $d6
    ld a, [hl-]                                   ; $5565: $3a
    rst $38                                       ; $5566: $ff
    dec e                                         ; $5567: $1d
    rst $38                                       ; $5568: $ff
    sbc b                                         ; $5569: $98
    ei                                            ; $556a: $fb
    sbc h                                         ; $556b: $9c
    cp e                                          ; $556c: $bb
    db $dd                                        ; $556d: $dd
    ld h, h                                       ; $556e: $64
    ld e, a                                       ; $556f: $5f
    ld [hl], d                                    ; $5570: $72
    ld c, a                                       ; $5571: $4f
    jr nc, jr_0ea_55b3                            ; $5572: $30 $3f

    add hl, bc                                    ; $5574: $09
    rrca                                          ; $5575: $0f
    dec c                                         ; $5576: $0d
    rrca                                          ; $5577: $0f
    add hl, bc                                    ; $5578: $09
    rrca                                          ; $5579: $0f
    ld a, [bc]                                    ; $557a: $0a
    ld c, $02                                     ; $557b: $0e $02
    inc c                                         ; $557d: $0c
    inc b                                         ; $557e: $04
    ld b, $06                                     ; $557f: $06 $06
    nop                                           ; $5581: $00
    sub h                                         ; $5582: $94
    db $fd                                        ; $5583: $fd
    ld c, $6f                                     ; $5584: $0e $6f
    sbc [hl]                                      ; $5586: $9e
    db $ec                                        ; $5587: $ec
    rst $18                                       ; $5588: $df
    sub a                                         ; $5589: $97
    db $fc                                        ; $558a: $fc
    daa                                           ; $558b: $27
    rst $38                                       ; $558c: $ff
    inc b                                         ; $558d: $04
    db $fc                                        ; $558e: $fc
    ret c                                         ; $558f: $d8

    ld hl, sp+$48                                 ; $5590: $f8 $48
    ld a, b                                       ; $5592: $78
    ld c, b                                       ; $5593: $48
    ld a, b                                       ; $5594: $78
    ld d, b                                       ; $5595: $50
    ld [hl], b                                    ; $5596: $70
    inc b                                         ; $5597: $04
    jr nc, jr_0ea_559c                            ; $5598: $30 $02

    jr nz, @+$06                                  ; $559a: $20 $04

jr_0ea_559c:
    ld [hl], b                                    ; $559c: $70
    ld [bc], a                                    ; $559d: $02
    nop                                           ; $559e: $00
    ld [$1801], sp                                ; $559f: $08 $01 $18
    nop                                           ; $55a2: $00
    rst $38                                       ; $55a3: $ff
    rrca                                          ; $55a4: $0f
    dec b                                         ; $55a5: $05
    ld hl, sp+$08                                 ; $55a6: $f8 $08
    ld [c], a                                     ; $55a8: $e2
    ld bc, $f8e2                                  ; $55a9: $01 $e2 $f8
    ld [c], a                                     ; $55ac: $e2
    nop                                           ; $55ad: $00
    ldh a, [rSB]                                  ; $55ae: $f0 $01
    ld a, [c]                                     ; $55b0: $f2
    ld hl, sp-$0e                                 ; $55b1: $f8 $f2

jr_0ea_55b3:
    db $fc                                        ; $55b3: $fc
    ld [bc], a                                    ; $55b4: $02
    inc bc                                        ; $55b5: $03
    sub c                                         ; $55b6: $91
    ld b, $07                                     ; $55b7: $06 $07
    rrca                                          ; $55b9: $0f
    dec c                                         ; $55ba: $0d
    add hl, bc                                    ; $55bb: $09
    ld c, $1f                                     ; $55bc: $0e $1f
    dec de                                        ; $55be: $1b
    rra                                           ; $55bf: $1f
    jr @+$28                                      ; $55c0: $18 $26

    ccf                                           ; $55c2: $3f
    add hl, hl                                    ; $55c3: $29
    ccf                                           ; $55c4: $3f
    ld l, $3f                                     ; $55c5: $2e $3f
    dec h                                         ; $55c7: $25
    inc bc                                        ; $55c8: $03
    ccf                                           ; $55c9: $3f

jr_0ea_55ca:
    adc d                                         ; $55ca: $8a
    ld a, a                                       ; $55cb: $7f
    ld c, b                                       ; $55cc: $48
    ld l, a                                       ; $55cd: $6f
    ld e, b                                       ; $55ce: $58
    ld e, [hl]                                    ; $55cf: $5e
    ld a, a                                       ; $55d0: $7f
    db $eb                                        ; $55d1: $eb
    sbc h                                         ; $55d2: $9c
    xor a                                         ; $55d3: $af
    ret c                                         ; $55d4: $d8

    ld [bc], a                                    ; $55d5: $02
    ldh [$91], a                                  ; $55d6: $e0 $91
    jr nc, jr_0ea_55ca                            ; $55d8: $30 $f0

    ld a, b                                       ; $55da: $78

jr_0ea_55db:
    ret c                                         ; $55db: $d8

    ret z                                         ; $55dc: $c8

    jr c, jr_0ea_55db                             ; $55dd: $38 $fc

    ld l, h                                       ; $55df: $6c
    db $fc                                        ; $55e0: $fc
    call z, $feb2                                 ; $55e1: $cc $b2 $fe
    jp z, $ba7e                                   ; $55e4: $ca $7e $ba

    cp $d2                                        ; $55e7: $fe $d2
    ld [bc], a                                    ; $55e9: $02
    cp $8b                                        ; $55ea: $fe $8b
    ld a, [hl]                                    ; $55ec: $7e
    rst $38                                       ; $55ed: $ff
    adc c                                         ; $55ee: $89
    ei                                            ; $55ef: $fb
    adc l                                         ; $55f0: $8d
    db $fd                                        ; $55f1: $fd
    ccf                                           ; $55f2: $3f
    db $eb                                        ; $55f3: $eb
    sbc h                                         ; $55f4: $9c
    ld a, [$040d]                                 ; $55f5: $fa $0d $04
    ld bc, $fb96                                  ; $55f8: $01 $96 $fb
    dec e                                         ; $55fb: $1d
    ei                                            ; $55fc: $fb
    dec e                                         ; $55fd: $1d
    rst $18                                       ; $55fe: $df
    cp l                                          ; $55ff: $bd
    cpl                                           ; $5600: $2f
    ld sp, hl                                     ; $5601: $f9
    ld c, l                                       ; $5602: $4d
    ei                                            ; $5603: $fb
    ld c, $fe                                     ; $5604: $0e $fe
    ld [$90f8], sp                                ; $5606: $08 $f8 $90
    ldh a, [$b0]                                  ; $5609: $f0 $b0
    ldh a, [$90]                                  ; $560b: $f0 $90
    ldh a, [$a0]                                  ; $560d: $f0 $a0
    ldh [rSC], a                                  ; $560f: $e0 $02
    ld h, b                                       ; $5611: $60
    inc b                                         ; $5612: $04
    ld b, b                                       ; $5613: $40
    sub [hl]                                      ; $5614: $96
    rst $18                                       ; $5615: $df
    cp b                                          ; $5616: $b8
    rst $18                                       ; $5617: $df
    cp b                                          ; $5618: $b8
    ei                                            ; $5619: $fb
    cp l                                          ; $561a: $bd
    db $f4                                        ; $561b: $f4
    sbc a                                         ; $561c: $9f
    or d                                          ; $561d: $b2
    rst $18                                       ; $561e: $df
    ld [hl], b                                    ; $561f: $70
    ld a, a                                       ; $5620: $7f
    jr jr_0ea_5642                                ; $5621: $18 $1f

    dec c                                         ; $5623: $0d
    rrca                                          ; $5624: $0f
    add hl, bc                                    ; $5625: $09
    rrca                                          ; $5626: $0f
    ld a, [bc]                                    ; $5627: $0a
    ld c, $0a                                     ; $5628: $0e $0a
    ld c, $02                                     ; $562a: $0e $02
    inc c                                         ; $562c: $0c
    inc b                                         ; $562d: $04
    ld c, $02                                     ; $562e: $0e $02
    inc b                                         ; $5630: $04
    ld [bc], a                                    ; $5631: $02
    nop                                           ; $5632: $00
    add c                                         ; $5633: $81
    ld [$0002], sp                                ; $5634: $08 $02 $00
    dec b                                         ; $5637: $05
    ld [$0083], sp                                ; $5638: $08 $83 $00
    ld [$0500], sp                                ; $563b: $08 $00 $05
    ld [$000c], sp                                ; $563e: $08 $0c $00
    ld [bc], a                                    ; $5641: $02

jr_0ea_5642:
    rlca                                          ; $5642: $07
    ld [bc], a                                    ; $5643: $02
    inc bc                                        ; $5644: $03
    rst $38                                       ; $5645: $ff
    ld de, $f606                                  ; $5646: $11 $06 $f6
    ld a, [bc]                                    ; $5649: $0a
    ld [c], a                                     ; $564a: $e2
    ld bc, $f8ea                                  ; $564b: $01 $ea $f8
    ld [c], a                                     ; $564e: $e2
    nop                                           ; $564f: $00
    db $e3                                        ; $5650: $e3
    inc bc                                        ; $5651: $03
    ld a, [c]                                     ; $5652: $f2
    db $f4                                        ; $5653: $f4
    ld a, [c]                                     ; $5654: $f2
    db $fc                                        ; $5655: $fc
    ld a, [c]                                     ; $5656: $f2
    inc bc                                        ; $5657: $03
    inc b                                         ; $5658: $04
    ld bc, $0008                                  ; $5659: $01 $08 $00
    ld [bc], a                                    ; $565c: $02
    ld a, $92                                     ; $565d: $3e $92
    pop bc                                        ; $565f: $c1
    rst $38                                       ; $5660: $ff
    nop                                           ; $5661: $00
    rst $38                                       ; $5662: $ff
    nop                                           ; $5663: $00
    rst $38                                       ; $5664: $ff
    ld bc, $01ff                                  ; $5665: $01 $ff $01
    rst $38                                       ; $5668: $ff
    ld b, c                                       ; $5669: $41
    rst $38                                       ; $566a: $ff
    ld hl, $a3ff                                  ; $566b: $21 $ff $a3
    rst $38                                       ; $566e: $ff
    ld c, [hl]                                    ; $566f: $4e
    ld a, [hl]                                    ; $5670: $7e
    ld [bc], a                                    ; $5671: $02
    rra                                           ; $5672: $1f
    sbc [hl]                                      ; $5673: $9e
    ld h, $3f                                     ; $5674: $26 $3f
    ld c, a                                       ; $5676: $4f
    ld a, c                                       ; $5677: $79
    ld e, h                                       ; $5678: $5c
    ld a, e                                       ; $5679: $7b
    cp a                                          ; $567a: $bf
    push hl                                       ; $567b: $e5
    sbc a                                         ; $567c: $9f
    ldh a, [$8e]                                  ; $567d: $f0 $8e
    ei                                            ; $567f: $fb
    sbc a                                         ; $5680: $9f
    db $fd                                        ; $5681: $fd
    ld e, $fb                                     ; $5682: $1e $fb
    cpl                                           ; $5684: $2f
    rst $38                                       ; $5685: $ff
    sbc [hl]                                      ; $5686: $9e
    pop af                                        ; $5687: $f1
    xor a                                         ; $5688: $af
    pop af                                        ; $5689: $f1
    ld [hl], a                                    ; $568a: $77
    ld a, e                                       ; $568b: $7b
    dec de                                        ; $568c: $1b
    dec d                                         ; $568d: $15
    scf                                           ; $568e: $37
    add hl, sp                                    ; $568f: $39
    db $dd                                        ; $5690: $dd
    di                                            ; $5691: $f3
    inc b                                         ; $5692: $04
    inc b                                         ; $5693: $04
    add h                                         ; $5694: $84
    ld b, $02                                     ; $5695: $06 $02
    rlca                                          ; $5697: $07
    dec b                                         ; $5698: $05
    ld [bc], a                                    ; $5699: $02
    ld b, $86                                     ; $569a: $06 $86
    inc bc                                        ; $569c: $03
    dec b                                         ; $569d: $05
    ld bc, $0507                                  ; $569e: $01 $07 $05
    rlca                                          ; $56a1: $07
    inc bc                                        ; $56a2: $03
    ld b, $86                                     ; $56a3: $06 $86
    ld [bc], a                                    ; $56a5: $02
    rlca                                          ; $56a6: $07
    ld bc, $0107                                  ; $56a7: $01 $07 $01
    inc bc                                        ; $56aa: $03
    ld [bc], a                                    ; $56ab: $02
    rlca                                          ; $56ac: $07
    add l                                         ; $56ad: $85
    ld bc, $0107                                  ; $56ae: $01 $07 $01
    db $eb                                        ; $56b1: $eb
    sbc l                                         ; $56b2: $9d
    ld [bc], a                                    ; $56b3: $02
    db $10                                        ; $56b4: $10
    add a                                         ; $56b5: $87
    jr nz, jr_0ea_56e8                            ; $56b6: $20 $30

    jr nz, jr_0ea_56ea                            ; $56b8: $20 $30

    ld h, b                                       ; $56ba: $60
    ld [hl], b                                    ; $56bb: $70
    ld h, b                                       ; $56bc: $60
    inc bc                                        ; $56bd: $03
    ld [hl], b                                    ; $56be: $70
    inc b                                         ; $56bf: $04
    ldh [$86], a                                  ; $56c0: $e0 $86
    db $e4                                        ; $56c2: $e4
    rst $20                                       ; $56c3: $e7
    db $eb                                        ; $56c4: $eb
    rst $28                                       ; $56c5: $ef
    db $eb                                        ; $56c6: $eb
    rst $28                                       ; $56c7: $ef
    ld [bc], a                                    ; $56c8: $02
    db $fd                                        ; $56c9: $fd
    ld [bc], a                                    ; $56ca: $02
    reti                                          ; $56cb: $d9


    ld [bc], a                                    ; $56cc: $02
    jr @+$06                                      ; $56cd: $18 $04

    inc c                                         ; $56cf: $0c
    adc [hl]                                      ; $56d0: $8e
    nop                                           ; $56d1: $00
    ld c, $01                                     ; $56d2: $0e $01
    rrca                                          ; $56d4: $0f
    ld bc, $000f                                  ; $56d5: $01 $0f $00
    rrca                                          ; $56d8: $0f
    nop                                           ; $56d9: $00
    rrca                                          ; $56da: $0f
    add hl, bc                                    ; $56db: $09
    rrca                                          ; $56dc: $0f
    inc c                                         ; $56dd: $0c
    rrca                                          ; $56de: $0f
    ld [bc], a                                    ; $56df: $02
    rlca                                          ; $56e0: $07
    inc b                                         ; $56e1: $04
    ret nz                                        ; $56e2: $c0

    ld b, $80                                     ; $56e3: $06 $80
    inc b                                         ; $56e5: $04
    ret nz                                        ; $56e6: $c0

    inc b                                         ; $56e7: $04

jr_0ea_56e8:
    nop                                           ; $56e8: $00
    sub [hl]                                      ; $56e9: $96

jr_0ea_56ea:
    inc sp                                        ; $56ea: $33
    ld e, a                                       ; $56eb: $5f
    ld a, c                                       ; $56ec: $79
    ld c, a                                       ; $56ed: $4f
    ld a, l                                       ; $56ee: $7d
    ld b, a                                       ; $56ef: $47
    ld a, c                                       ; $56f0: $79
    ld l, a                                       ; $56f1: $6f
    ld [hl], e                                    ; $56f2: $73
    ld a, a                                       ; $56f3: $7f
    ld h, $7e                                     ; $56f4: $26 $7e
    ld [hl], d                                    ; $56f6: $72
    ld a, [hl]                                    ; $56f7: $7e
    ld h, d                                       ; $56f8: $62
    ld a, [hl]                                    ; $56f9: $7e
    ld h, h                                       ; $56fa: $64
    ld a, h                                       ; $56fb: $7c
    ld [hl], h                                    ; $56fc: $74
    ld a, h                                       ; $56fd: $7c
    ld [hl], h                                    ; $56fe: $74
    ld a, h                                       ; $56ff: $7c
    inc b                                         ; $5700: $04
    inc a                                         ; $5701: $3c
    ld [bc], a                                    ; $5702: $02
    ld [hl], $02                                  ; $5703: $36 $02
    ld b, $ff                                     ; $5705: $06 $ff
    ld de, $f606                                  ; $5707: $11 $06 $f6
    ld a, [bc]                                    ; $570a: $0a
    ld [c], a                                     ; $570b: $e2
    ld bc, $f8ea                                  ; $570c: $01 $ea $f8
    ld [c], a                                     ; $570f: $e2
    nop                                           ; $5710: $00
    db $e3                                        ; $5711: $e3
    inc bc                                        ; $5712: $03
    ld a, [c]                                     ; $5713: $f2
    db $f4                                        ; $5714: $f4
    ld a, [c]                                     ; $5715: $f2
    nop                                           ; $5716: $00
    ld a, [c]                                     ; $5717: $f2
    inc b                                         ; $5718: $04
    inc b                                         ; $5719: $04
    ld bc, $0008                                  ; $571a: $01 $08 $00
    ld [bc], a                                    ; $571d: $02
    ld a, [hl]                                    ; $571e: $7e
    sub d                                         ; $571f: $92
    add c                                         ; $5720: $81
    rst $38                                       ; $5721: $ff
    nop                                           ; $5722: $00
    rst $38                                       ; $5723: $ff
    nop                                           ; $5724: $00
    rst $38                                       ; $5725: $ff
    ld bc, $81ff                                  ; $5726: $01 $ff $81
    rst $38                                       ; $5729: $ff
    ld b, c                                       ; $572a: $41
    rst $38                                       ; $572b: $ff
    ld h, e                                       ; $572c: $63
    rst $38                                       ; $572d: $ff
    db $e3                                        ; $572e: $e3
    rst $38                                       ; $572f: $ff
    adc h                                         ; $5730: $8c
    db $fc                                        ; $5731: $fc
    ld [bc], a                                    ; $5732: $02
    rra                                           ; $5733: $1f
    sbc [hl]                                      ; $5734: $9e
    ld h, $3f                                     ; $5735: $26 $3f
    ld c, a                                       ; $5737: $4f
    ld a, c                                       ; $5738: $79
    ld e, h                                       ; $5739: $5c
    ld a, e                                       ; $573a: $7b
    cp a                                          ; $573b: $bf
    push hl                                       ; $573c: $e5
    sbc a                                         ; $573d: $9f
    ldh a, [$8e]                                  ; $573e: $f0 $8e
    ei                                            ; $5740: $fb
    sbc a                                         ; $5741: $9f
    db $fd                                        ; $5742: $fd
    ld e, $fb                                     ; $5743: $1e $fb
    cpl                                           ; $5745: $2f
    rst $38                                       ; $5746: $ff
    sub a                                         ; $5747: $97
    ld sp, hl                                     ; $5748: $f9
    cp [hl]                                       ; $5749: $be
    pop af                                        ; $574a: $f1
    ld a, a                                       ; $574b: $7f
    ld [hl], a                                    ; $574c: $77
    scf                                           ; $574d: $37
    dec hl                                        ; $574e: $2b
    ccf                                           ; $574f: $3f
    inc sp                                        ; $5750: $33
    db $ec                                        ; $5751: $ec
    rst $30                                       ; $5752: $f7
    inc b                                         ; $5753: $04
    inc b                                         ; $5754: $04
    add h                                         ; $5755: $84
    ld b, $02                                     ; $5756: $06 $02
    rlca                                          ; $5758: $07
    dec b                                         ; $5759: $05
    ld [bc], a                                    ; $575a: $02
    ld b, $86                                     ; $575b: $06 $86
    inc bc                                        ; $575d: $03
    dec b                                         ; $575e: $05
    ld bc, $0507                                  ; $575f: $01 $07 $05
    rlca                                          ; $5762: $07
    inc bc                                        ; $5763: $03
    ld b, $86                                     ; $5764: $06 $86
    ld [bc], a                                    ; $5766: $02
    rlca                                          ; $5767: $07
    ld bc, $0107                                  ; $5768: $01 $07 $01
    inc bc                                        ; $576b: $03
    ld [bc], a                                    ; $576c: $02
    rlca                                          ; $576d: $07
    add l                                         ; $576e: $85
    ld bc, $0107                                  ; $576f: $01 $07 $01
    di                                            ; $5772: $f3
    dec a                                         ; $5773: $3d
    ld [bc], a                                    ; $5774: $02
    db $10                                        ; $5775: $10
    adc b                                         ; $5776: $88

jr_0ea_5777:
    jr nz, jr_0ea_57a9                            ; $5777: $20 $30

    ld h, b                                       ; $5779: $60
    ld [hl], b                                    ; $577a: $70
    ld h, b                                       ; $577b: $60
    ld [hl], b                                    ; $577c: $70
    ld h, b                                       ; $577d: $60
    ld [hl], b                                    ; $577e: $70
    ld [bc], a                                    ; $577f: $02
    ldh a, [rDIV]                                 ; $5780: $f0 $04
    ldh [$82], a                                  ; $5782: $e0 $82
    rst $30                                       ; $5784: $f7
    rst $38                                       ; $5785: $ff
    ld [bc], a                                    ; $5786: $02
    cp $02                                        ; $5787: $fe $02
    db $fc                                        ; $5789: $fc
    ld [bc], a                                    ; $578a: $02
    call c, Call_000_3c02                         ; $578b: $dc $02 $3c
    ld [bc], a                                    ; $578e: $02
    ld [hl], $02                                  ; $578f: $36 $02
    ld b, $02                                     ; $5791: $06 $02
    nop                                           ; $5793: $00
    sub b                                         ; $5794: $90
    jr nz, jr_0ea_5777                            ; $5795: $20 $e0

    inc l                                         ; $5797: $2c
    rst $30                                       ; $5798: $f7
    inc l                                         ; $5799: $2c
    rst $30                                       ; $579a: $f7
    ld e, $f3                                     ; $579b: $1e $f3
    ld e, $f3                                     ; $579d: $1e $f3
    inc e                                         ; $579f: $1c
    rst $38                                       ; $57a0: $ff
    add $ff                                       ; $57a1: $c6 $ff
    ld a, [hl]                                    ; $57a3: $7e
    ld a, a                                       ; $57a4: $7f
    ld [bc], a                                    ; $57a5: $02
    rlca                                          ; $57a6: $07
    add d                                         ; $57a7: $82
    dec b                                         ; $57a8: $05

jr_0ea_57a9:
    rlca                                          ; $57a9: $07
    inc b                                         ; $57aa: $04
    ld b, $02                                     ; $57ab: $06 $02
    inc b                                         ; $57ad: $04
    inc b                                         ; $57ae: $04
    ld b, $04                                     ; $57af: $06 $04
    nop                                           ; $57b1: $00
    sub d                                         ; $57b2: $92
    ld b, $0e                                     ; $57b3: $06 $0e
    ld [bc], a                                    ; $57b5: $02
    ld c, $02                                     ; $57b6: $0e $02
    ld c, $02                                     ; $57b8: $0e $02
    ld c, $06                                     ; $57ba: $0e $06
    ld c, $04                                     ; $57bc: $0e $04
    inc c                                         ; $57be: $0c
    ld [bc], a                                    ; $57bf: $02
    ld c, $0a                                     ; $57c0: $0e $0a
    ld c, $0d                                     ; $57c2: $0e $0d
    rrca                                          ; $57c4: $0f
    ld [bc], a                                    ; $57c5: $02
    rlca                                          ; $57c6: $07
    ld [bc], a                                    ; $57c7: $02
    inc bc                                        ; $57c8: $03
    ld [bc], a                                    ; $57c9: $02
    ld bc, $0304                                  ; $57ca: $01 $04 $03
    ld [bc], a                                    ; $57cd: $02
    nop                                           ; $57ce: $00
    rst $38                                       ; $57cf: $ff
    ld de, $f606                                  ; $57d0: $11 $06 $f6
    ld a, [bc]                                    ; $57d3: $0a
    ld [c], a                                     ; $57d4: $e2
    ld bc, $f7f0                                  ; $57d5: $01 $f0 $f7
    db $e3                                        ; $57d8: $e3
    rst $38                                       ; $57d9: $ff
    db $e3                                        ; $57da: $e3
    inc bc                                        ; $57db: $03
    di                                            ; $57dc: $f3
    db $f4                                        ; $57dd: $f4
    di                                            ; $57de: $f3
    rst $38                                       ; $57df: $ff
    di                                            ; $57e0: $f3
    inc bc                                        ; $57e1: $03
    ld [bc], a                                    ; $57e2: $02
    rra                                           ; $57e3: $1f
    sub d                                         ; $57e4: $92
    ld h, b                                       ; $57e5: $60
    ld a, a                                       ; $57e6: $7f
    add b                                         ; $57e7: $80
    rst $38                                       ; $57e8: $ff
    nop                                           ; $57e9: $00
    rst $38                                       ; $57ea: $ff
    nop                                           ; $57eb: $00
    rst $38                                       ; $57ec: $ff
    nop                                           ; $57ed: $00
    rst $38                                       ; $57ee: $ff
    and b                                         ; $57ef: $a0
    rst $38                                       ; $57f0: $ff
    ret nc                                        ; $57f1: $d0

    rst $38                                       ; $57f2: $ff
    ld [hl], c                                    ; $57f3: $71
    ld a, a                                       ; $57f4: $7f
    jp Jump_000_02ff                              ; $57f5: $c3 $ff $02


    db $fc                                        ; $57f8: $fc
    ld b, $e0                                     ; $57f9: $06 $e0
    ld [bc], a                                    ; $57fb: $02
    or b                                          ; $57fc: $b0
    ld [bc], a                                    ; $57fd: $02
    ldh [rSC], a                                  ; $57fe: $e0 $02
    rrca                                          ; $5800: $0f
    sbc [hl]                                      ; $5801: $9e
    inc de                                        ; $5802: $13
    rra                                           ; $5803: $1f
    daa                                           ; $5804: $27
    inc a                                         ; $5805: $3c
    ld c, [hl]                                    ; $5806: $4e
    ld a, l                                       ; $5807: $7d
    ld e, a                                       ; $5808: $5f
    ld [hl], d                                    ; $5809: $72
    ld c, a                                       ; $580a: $4f
    ld a, b                                       ; $580b: $78
    adc a                                         ; $580c: $8f
    db $fd                                        ; $580d: $fd
    sbc a                                         ; $580e: $9f
    cp $97                                        ; $580f: $fe $97
    db $fd                                        ; $5811: $fd
    ld b, a                                       ; $5812: $47
    ld a, a                                       ; $5813: $7f
    ld a, e                                       ; $5814: $7b
    ld a, h                                       ; $5815: $7c
    rra                                           ; $5816: $1f
    jr jr_0ea_5834                                ; $5817: $18 $1b

    dec e                                         ; $5819: $1d
    inc e                                         ; $581a: $1c
    dec de                                        ; $581b: $1b
    di                                            ; $581c: $f3
    db $fd                                        ; $581d: $fd
    dec d                                         ; $581e: $15
    ei                                            ; $581f: $fb
    ld [bc], a                                    ; $5820: $02
    ld [$0481], sp                                ; $5821: $08 $81 $04
    inc bc                                        ; $5824: $03
    inc c                                         ; $5825: $0c
    adc h                                         ; $5826: $8c
    ld b, $0a                                     ; $5827: $06 $0a
    rrca                                          ; $5829: $0f
    dec c                                         ; $582a: $0d
    ld c, $06                                     ; $582b: $0e $06
    inc bc                                        ; $582d: $03
    dec c                                         ; $582e: $0d
    add hl, bc                                    ; $582f: $09
    rrca                                          ; $5830: $0f
    dec b                                         ; $5831: $05
    rrca                                          ; $5832: $0f
    inc bc                                        ; $5833: $03

jr_0ea_5834:
    ld c, $84                                     ; $5834: $0e $84
    ld a, [bc]                                    ; $5836: $0a
    rlca                                          ; $5837: $07
    add hl, bc                                    ; $5838: $09
    dec c                                         ; $5839: $0d
    ld [bc], a                                    ; $583a: $02
    dec bc                                        ; $583b: $0b
    ld [bc], a                                    ; $583c: $02
    rrca                                          ; $583d: $0f
    add e                                         ; $583e: $83
    add hl, bc                                    ; $583f: $09
    rlca                                          ; $5840: $07
    add hl, bc                                    ; $5841: $09
    ld [bc], a                                    ; $5842: $02
    jr nz, jr_0ea_5849                            ; $5843: $20 $04

    ld h, b                                       ; $5845: $60
    inc c                                         ; $5846: $0c
    ldh [rSC], a                                  ; $5847: $e0 $02

jr_0ea_5849:
    ret nz                                        ; $5849: $c0

    ld b, $00                                     ; $584a: $06 $00
    ld [bc], a                                    ; $584c: $02
    jr jr_0ea_5853                                ; $584d: $18 $04

    nop                                           ; $584f: $00
    adc h                                         ; $5850: $8c
    rra                                           ; $5851: $1f
    di                                            ; $5852: $f3

jr_0ea_5853:
    ld d, $fb                                     ; $5853: $16 $fb
    sub [hl]                                      ; $5855: $96
    ei                                            ; $5856: $fb
    adc a                                         ; $5857: $8f
    ld sp, hl                                     ; $5858: $f9
    adc a                                         ; $5859: $8f
    ld sp, hl                                     ; $585a: $f9
    adc $ff                                       ; $585b: $ce $ff
    ld [bc], a                                    ; $585d: $02
    ccf                                           ; $585e: $3f
    ld [bc], a                                    ; $585f: $02
    ld bc, $0006                                  ; $5860: $01 $06 $00
    inc b                                         ; $5863: $04
    ld bc, $0006                                  ; $5864: $01 $06 $00
    sub e                                         ; $5867: $93
    inc bc                                        ; $5868: $03
    dec c                                         ; $5869: $0d
    inc bc                                        ; $586a: $03
    rrca                                          ; $586b: $0f
    ld bc, $010f                                  ; $586c: $01 $0f $01
    rrca                                          ; $586f: $0f
    ld bc, $020f                                  ; $5870: $01 $0f $02
    ld c, $02                                     ; $5873: $0e $02
    ld c, $0a                                     ; $5875: $0e $0a
    ld c, $0a                                     ; $5877: $0e $0a
    ld c, $0a                                     ; $5879: $0e $0a
    rlca                                          ; $587b: $07
    ld c, $04                                     ; $587c: $0e $04
    inc bc                                        ; $587e: $03
    ld [bc], a                                    ; $587f: $02
    nop                                           ; $5880: $00
    rst $38                                       ; $5881: $ff
    ld de, $f606                                  ; $5882: $11 $06 $f6
    ld a, [bc]                                    ; $5885: $0a
    ld [c], a                                     ; $5886: $e2
    ld bc, $f8e9                                  ; $5887: $01 $e9 $f8
    ld [c], a                                     ; $588a: $e2
    nop                                           ; $588b: $00
    db $e3                                        ; $588c: $e3
    inc bc                                        ; $588d: $03
    ld a, [c]                                     ; $588e: $f2
    db $f4                                        ; $588f: $f4
    ld a, [c]                                     ; $5890: $f2
    db $fc                                        ; $5891: $fc
    ld a, [c]                                     ; $5892: $f2
    inc b                                         ; $5893: $04
    ld [$0601], sp                                ; $5894: $08 $01 $06
    nop                                           ; $5897: $00
    ld [bc], a                                    ; $5898: $02
    ld a, $90                                     ; $5899: $3e $90
    pop bc                                        ; $589b: $c1
    rst $38                                       ; $589c: $ff
    nop                                           ; $589d: $00
    rst $38                                       ; $589e: $ff
    nop                                           ; $589f: $00
    rst $38                                       ; $58a0: $ff
    nop                                           ; $58a1: $00
    rst $38                                       ; $58a2: $ff
    ld bc, $41ff                                  ; $58a3: $01 $ff $41
    rst $38                                       ; $58a6: $ff
    and c                                         ; $58a7: $a1
    rst $38                                       ; $58a8: $ff
    and e                                         ; $58a9: $a3
    rst $38                                       ; $58aa: $ff
    ld [bc], a                                    ; $58ab: $02
    rra                                           ; $58ac: $1f
    sbc [hl]                                      ; $58ad: $9e
    ld h, $3f                                     ; $58ae: $26 $3f
    ld c, a                                       ; $58b0: $4f
    ld a, c                                       ; $58b1: $79
    ld e, h                                       ; $58b2: $5c
    ld a, e                                       ; $58b3: $7b
    cp a                                          ; $58b4: $bf
    push hl                                       ; $58b5: $e5
    sbc a                                         ; $58b6: $9f
    ldh a, [$9e]                                  ; $58b7: $f0 $9e
    ei                                            ; $58b9: $fb
    rra                                           ; $58ba: $1f
    db $fd                                        ; $58bb: $fd
    ld e, $fb                                     ; $58bc: $1e $fb
    cpl                                           ; $58be: $2f
    rst $38                                       ; $58bf: $ff
    ld e, $f1                                     ; $58c0: $1e $f1
    rst $38                                       ; $58c2: $ff
    pop af                                        ; $58c3: $f1
    scf                                           ; $58c4: $37
    dec sp                                        ; $58c5: $3b
    dec de                                        ; $58c6: $1b
    dec d                                         ; $58c7: $15
    scf                                           ; $58c8: $37
    add hl, sp                                    ; $58c9: $39
    db $dd                                        ; $58ca: $dd
    di                                            ; $58cb: $f3
    inc b                                         ; $58cc: $04
    inc b                                         ; $58cd: $04
    add h                                         ; $58ce: $84
    ld b, $02                                     ; $58cf: $06 $02
    rlca                                          ; $58d1: $07
    dec b                                         ; $58d2: $05
    ld [bc], a                                    ; $58d3: $02
    ld b, $86                                     ; $58d4: $06 $86
    inc bc                                        ; $58d6: $03
    dec b                                         ; $58d7: $05
    ld bc, $0507                                  ; $58d8: $01 $07 $05
    rlca                                          ; $58db: $07
    inc bc                                        ; $58dc: $03
    ld b, $86                                     ; $58dd: $06 $86
    ld [bc], a                                    ; $58df: $02
    rlca                                          ; $58e0: $07
    ld bc, $0107                                  ; $58e1: $01 $07 $01
    inc bc                                        ; $58e4: $03
    ld [bc], a                                    ; $58e5: $02
    rlca                                          ; $58e6: $07
    add l                                         ; $58e7: $85
    ld bc, $0107                                  ; $58e8: $01 $07 $01
    db $eb                                        ; $58eb: $eb
    sbc l                                         ; $58ec: $9d
    ld [bc], a                                    ; $58ed: $02
    db $10                                        ; $58ee: $10
    add [hl]                                      ; $58ef: $86
    jr nz, jr_0ea_5922                            ; $58f0: $20 $30

    ld h, b                                       ; $58f2: $60
    ld [hl], b                                    ; $58f3: $70
    ld h, b                                       ; $58f4: $60
    ld [hl], b                                    ; $58f5: $70
    ld b, $f0                                     ; $58f6: $06 $f0
    add [hl]                                      ; $58f8: $86
    cp $ff                                        ; $58f9: $fe $ff
    db $fc                                        ; $58fb: $fc
    rst $38                                       ; $58fc: $ff
    ei                                            ; $58fd: $fb
    rst $38                                       ; $58fe: $ff
    ld [bc], a                                    ; $58ff: $02
    db $fc                                        ; $5900: $fc
    ld [bc], a                                    ; $5901: $02
    ld l, h                                       ; $5902: $6c
    ld [bc], a                                    ; $5903: $02
    ld b, [hl]                                    ; $5904: $46
    inc b                                         ; $5905: $04
    ld h, e                                       ; $5906: $63
    inc bc                                        ; $5907: $03
    nop                                           ; $5908: $00
    adc a                                         ; $5909: $8f
    ld c, $01                                     ; $590a: $0e $01
    rrca                                          ; $590c: $0f
    ld bc, $000f                                  ; $590d: $01 $0f $00
    rrca                                          ; $5910: $0f
    nop                                           ; $5911: $00
    rrca                                          ; $5912: $0f
    add hl, bc                                    ; $5913: $09
    rrca                                          ; $5914: $0f
    inc c                                         ; $5915: $0c
    rrca                                          ; $5916: $0f
    inc hl                                        ; $5917: $23
    db $e3                                        ; $5918: $e3
    ld [bc], a                                    ; $5919: $02
    ret nz                                        ; $591a: $c0

    stop                                          ; $591b: $10 $00
    sub h                                         ; $591d: $94
    ld h, [hl]                                    ; $591e: $66
    cp [hl]                                       ; $591f: $be
    or $9e                                        ; $5920: $f6 $9e

jr_0ea_5922:
    ld a, [$f28e]                                 ; $5922: $fa $8e $f2
    sbc $e6                                       ; $5925: $de $e6
    cp $46                                        ; $5927: $fe $46
    cp $c5                                        ; $5929: $fe $c5
    rst $38                                       ; $592b: $ff
    ld h, [hl]                                    ; $592c: $66
    ld a, [hl]                                    ; $592d: $7e
    ld l, $3e                                     ; $592e: $2e $3e
    inc l                                         ; $5930: $2c
    inc a                                         ; $5931: $3c
    inc b                                         ; $5932: $04
    jr c, jr_0ea_5937                             ; $5933: $38 $02

    db $10                                        ; $5935: $10
    inc b                                         ; $5936: $04

jr_0ea_5937:
    jr @+$01                                      ; $5937: $18 $ff

    ld de, $f606                                  ; $5939: $11 $06 $f6
    ld a, [bc]                                    ; $593c: $0a
    ld [c], a                                     ; $593d: $e2
    ld bc, $f8ea                                  ; $593e: $01 $ea $f8
    ld [c], a                                     ; $5941: $e2
    nop                                           ; $5942: $00
    db $e3                                        ; $5943: $e3
    inc bc                                        ; $5944: $03
    ld a, [c]                                     ; $5945: $f2
    db $f4                                        ; $5946: $f4
    ld a, [c]                                     ; $5947: $f2
    db $fc                                        ; $5948: $fc
    ld a, [c]                                     ; $5949: $f2
    inc b                                         ; $594a: $04
    inc b                                         ; $594b: $04
    ld bc, $0008                                  ; $594c: $01 $08 $00
    ld [bc], a                                    ; $594f: $02
    ld a, $92                                     ; $5950: $3e $92
    pop bc                                        ; $5952: $c1
    rst $38                                       ; $5953: $ff
    nop                                           ; $5954: $00
    rst $38                                       ; $5955: $ff
    nop                                           ; $5956: $00
    rst $38                                       ; $5957: $ff
    ld bc, $01ff                                  ; $5958: $01 $ff $01
    rst $38                                       ; $595b: $ff
    ld b, e                                       ; $595c: $43
    rst $38                                       ; $595d: $ff
    inc bc                                        ; $595e: $03
    rst $38                                       ; $595f: $ff
    and e                                         ; $5960: $a3
    rst $38                                       ; $5961: $ff
    call nz, Call_000_02fc                        ; $5962: $c4 $fc $02
    rra                                           ; $5965: $1f
    sbc [hl]                                      ; $5966: $9e
    ld h, $3f                                     ; $5967: $26 $3f
    ld c, a                                       ; $5969: $4f
    ld a, c                                       ; $596a: $79
    ld e, h                                       ; $596b: $5c
    ld a, e                                       ; $596c: $7b
    cp a                                          ; $596d: $bf
    push hl                                       ; $596e: $e5
    sbc a                                         ; $596f: $9f
    ldh a, [$8e]                                  ; $5970: $f0 $8e
    ei                                            ; $5972: $fb
    sbc a                                         ; $5973: $9f
    db $fd                                        ; $5974: $fd
    ld e, $fb                                     ; $5975: $1e $fb
    cpl                                           ; $5977: $2f
    rst $38                                       ; $5978: $ff
    sbc l                                         ; $5979: $9d
    di                                            ; $597a: $f3
    cp a                                          ; $597b: $bf
    pop af                                        ; $597c: $f1
    ld [hl], a                                    ; $597d: $77
    ld a, e                                       ; $597e: $7b
    dec de                                        ; $597f: $1b
    dec d                                         ; $5980: $15
    scf                                           ; $5981: $37
    dec sp                                        ; $5982: $3b
    rst $10                                       ; $5983: $d7
    ld sp, hl                                     ; $5984: $f9
    inc b                                         ; $5985: $04
    inc b                                         ; $5986: $04
    add h                                         ; $5987: $84
    ld b, $02                                     ; $5988: $06 $02
    rlca                                          ; $598a: $07
    dec b                                         ; $598b: $05
    ld [bc], a                                    ; $598c: $02
    ld b, $86                                     ; $598d: $06 $86
    inc bc                                        ; $598f: $03
    dec b                                         ; $5990: $05
    ld bc, $0507                                  ; $5991: $01 $07 $05
    rlca                                          ; $5994: $07
    inc bc                                        ; $5995: $03
    ld b, $86                                     ; $5996: $06 $86
    ld [bc], a                                    ; $5998: $02
    rlca                                          ; $5999: $07
    ld bc, $0107                                  ; $599a: $01 $07 $01
    inc bc                                        ; $599d: $03
    ld [bc], a                                    ; $599e: $02
    rlca                                          ; $599f: $07
    add l                                         ; $59a0: $85
    ld bc, $0107                                  ; $59a1: $01 $07 $01
    ld a, e                                       ; $59a4: $7b
    call $1002                                    ; $59a5: $cd $02 $10
    add l                                         ; $59a8: $85
    jr nz, jr_0ea_59db                            ; $59a9: $20 $30

    ld h, b                                       ; $59ab: $60
    ld [hl], b                                    ; $59ac: $70
    ld h, b                                       ; $59ad: $60
    inc bc                                        ; $59ae: $03
    ld [hl], b                                    ; $59af: $70
    ld [bc], a                                    ; $59b0: $02
    ldh a, [rSC]                                  ; $59b1: $f0 $02
    ldh [rSC], a                                  ; $59b3: $e0 $02
    ldh a, [$86]                                  ; $59b5: $f0 $86
    db $fc                                        ; $59b7: $fc
    rst $38                                       ; $59b8: $ff
    ld sp, hl                                     ; $59b9: $f9
    rst $38                                       ; $59ba: $ff
    or $fe                                        ; $59bb: $f6 $fe
    ld [bc], a                                    ; $59bd: $02
    db $fc                                        ; $59be: $fc
    ld [bc], a                                    ; $59bf: $02
    inc a                                         ; $59c0: $3c
    ld [bc], a                                    ; $59c1: $02
    inc c                                         ; $59c2: $0c
    inc b                                         ; $59c3: $04
    ld b, $8e                                     ; $59c4: $06 $8e
    nop                                           ; $59c6: $00
    ld c, $00                                     ; $59c7: $0e $00
    rrca                                          ; $59c9: $0f
    nop                                           ; $59ca: $00
    rrca                                          ; $59cb: $0f
    nop                                           ; $59cc: $00
    rrca                                          ; $59cd: $0f
    nop                                           ; $59ce: $00
    rrca                                          ; $59cf: $0f
    ld [$0c0f], sp                                ; $59d0: $08 $0f $0c
    rrca                                          ; $59d3: $0f
    ld [bc], a                                    ; $59d4: $02
    inc bc                                        ; $59d5: $03
    ld [bc], a                                    ; $59d6: $02
    add b                                         ; $59d7: $80
    stop                                          ; $59d8: $10 $00
    sub d                                         ; $59da: $92

jr_0ea_59db:
    ld a, [hl]                                    ; $59db: $7e
    adc $7e                                       ; $59dc: $ce $7e
    and $3e                                       ; $59de: $e6 $3e
    and $1a                                       ; $59e0: $e6 $1a
    cp $86                                        ; $59e2: $fe $86
    cp $46                                        ; $59e4: $fe $46
    cp $c6                                        ; $59e6: $fe $c6
    cp $4d                                        ; $59e8: $fe $4d
    ld a, a                                       ; $59ea: $7f
    ld l, a                                       ; $59eb: $6f
    ld a, a                                       ; $59ec: $7f
    ld [bc], a                                    ; $59ed: $02
    ld [hl], e                                    ; $59ee: $73
    ld [bc], a                                    ; $59ef: $02
    ld h, c                                       ; $59f0: $61
    ld [bc], a                                    ; $59f1: $02
    ld h, e                                       ; $59f2: $63
    ld [bc], a                                    ; $59f3: $02
    ld b, e                                       ; $59f4: $43
    inc b                                         ; $59f5: $04
    ld h, b                                       ; $59f6: $60
    rst $38                                       ; $59f7: $ff
    ld de, $f606                                  ; $59f8: $11 $06 $f6
    ld a, [bc]                                    ; $59fb: $0a
    ld [c], a                                     ; $59fc: $e2
    ld bc, $f7f0                                  ; $59fd: $01 $f0 $f7
    db $e3                                        ; $5a00: $e3
    rst $38                                       ; $5a01: $ff
    db $e3                                        ; $5a02: $e3
    inc bc                                        ; $5a03: $03
    di                                            ; $5a04: $f3
    db $f4                                        ; $5a05: $f4
    di                                            ; $5a06: $f3
    rst $38                                       ; $5a07: $ff
    di                                            ; $5a08: $f3
    inc bc                                        ; $5a09: $03
    ld [bc], a                                    ; $5a0a: $02
    ld e, $98                                     ; $5a0b: $1e $98
    ld h, c                                       ; $5a0d: $61
    ld a, a                                       ; $5a0e: $7f
    add b                                         ; $5a0f: $80
    rst $38                                       ; $5a10: $ff
    nop                                           ; $5a11: $00
    rst $38                                       ; $5a12: $ff
    nop                                           ; $5a13: $00
    rst $38                                       ; $5a14: $ff
    jr nz, @+$01                                  ; $5a15: $20 $ff

    ld hl, $81ff                                  ; $5a17: $21 $ff $81
    rst $38                                       ; $5a1a: $ff
    ld b, e                                       ; $5a1b: $43
    ld a, a                                       ; $5a1c: $7f
    db $e4                                        ; $5a1d: $e4
    db $fc                                        ; $5a1e: $fc
    call nz, $98fc                                ; $5a1f: $c4 $fc $98
    ld hl, sp-$60                                 ; $5a22: $f8 $a0
    ldh [rSC], a                                  ; $5a24: $e0 $02
    ldh a, [rSC]                                  ; $5a26: $f0 $02
    ldh [rSC], a                                  ; $5a28: $e0 $02
    add b                                         ; $5a2a: $80
    ld [bc], a                                    ; $5a2b: $02
    rrca                                          ; $5a2c: $0f
    sbc [hl]                                      ; $5a2d: $9e
    inc de                                        ; $5a2e: $13
    rra                                           ; $5a2f: $1f
    daa                                           ; $5a30: $27
    inc a                                         ; $5a31: $3c
    ld c, [hl]                                    ; $5a32: $4e
    ld a, l                                       ; $5a33: $7d
    ld e, a                                       ; $5a34: $5f
    ld [hl], d                                    ; $5a35: $72
    ld c, a                                       ; $5a36: $4f
    ld a, b                                       ; $5a37: $78
    adc a                                         ; $5a38: $8f
    db $fd                                        ; $5a39: $fd
    sbc a                                         ; $5a3a: $9f
    cp $97                                        ; $5a3b: $fe $97
    db $fd                                        ; $5a3d: $fd
    ld b, a                                       ; $5a3e: $47
    ld a, a                                       ; $5a3f: $7f
    ld a, [hl]                                    ; $5a40: $7e
    ld a, c                                       ; $5a41: $79
    rra                                           ; $5a42: $1f
    jr jr_0ea_5a50                                ; $5a43: $18 $0b

    dec c                                         ; $5a45: $0d
    rra                                           ; $5a46: $1f
    ld a, [de]                                    ; $5a47: $1a
    rst $38                                       ; $5a48: $ff
    db $fd                                        ; $5a49: $fd
    dec bc                                        ; $5a4a: $0b
    db $fc                                        ; $5a4b: $fc
    ld [bc], a                                    ; $5a4c: $02
    ld [$0481], sp                                ; $5a4d: $08 $81 $04

jr_0ea_5a50:
    inc bc                                        ; $5a50: $03
    inc c                                         ; $5a51: $0c
    adc h                                         ; $5a52: $8c
    ld b, $0a                                     ; $5a53: $06 $0a
    rrca                                          ; $5a55: $0f
    dec c                                         ; $5a56: $0d
    ld c, $06                                     ; $5a57: $0e $06
    inc bc                                        ; $5a59: $03
    dec c                                         ; $5a5a: $0d
    add hl, bc                                    ; $5a5b: $09
    rrca                                          ; $5a5c: $0f
    dec b                                         ; $5a5d: $05
    rrca                                          ; $5a5e: $0f
    inc bc                                        ; $5a5f: $03
    ld c, $84                                     ; $5a60: $0e $84
    ld a, [bc]                                    ; $5a62: $0a
    rrca                                          ; $5a63: $0f
    add hl, bc                                    ; $5a64: $09
    dec c                                         ; $5a65: $0d
    ld [bc], a                                    ; $5a66: $02
    dec bc                                        ; $5a67: $0b
    ld [bc], a                                    ; $5a68: $02
    rrca                                          ; $5a69: $0f
    add e                                         ; $5a6a: $83
    add hl, bc                                    ; $5a6b: $09
    rrca                                          ; $5a6c: $0f
    add hl, bc                                    ; $5a6d: $09
    ld [bc], a                                    ; $5a6e: $02
    jr nz, jr_0ea_5a75                            ; $5a6f: $20 $04

    ld h, b                                       ; $5a71: $60
    inc c                                         ; $5a72: $0c
    ldh [rSC], a                                  ; $5a73: $e0 $02

jr_0ea_5a75:
    ret nz                                        ; $5a75: $c0

    ld b, $00                                     ; $5a76: $06 $00
    inc b                                         ; $5a78: $04
    jr jr_0ea_5a7d                                ; $5a79: $18 $02

    nop                                           ; $5a7b: $00
    adc h                                         ; $5a7c: $8c

jr_0ea_5a7d:
    rlca                                          ; $5a7d: $07
    db $fc                                        ; $5a7e: $fc
    add a                                         ; $5a7f: $87
    db $fc                                        ; $5a80: $fc
    add e                                         ; $5a81: $83
    cp $83                                        ; $5a82: $fe $83
    cp $c5                                        ; $5a84: $fe $c5
    rst $38                                       ; $5a86: $ff
    add $ff                                       ; $5a87: $c6 $ff
    ld [bc], a                                    ; $5a89: $02
    ccf                                           ; $5a8a: $3f
    ld [bc], a                                    ; $5a8b: $02
    ld bc, $0008                                  ; $5a8c: $01 $08 $00
    inc b                                         ; $5a8f: $04
    ld bc, $0004                                  ; $5a90: $01 $04 $00
    sub d                                         ; $5a93: $92
    dec bc                                        ; $5a94: $0b
    dec c                                         ; $5a95: $0d
    dec bc                                        ; $5a96: $0b
    rrca                                          ; $5a97: $0f
    dec c                                         ; $5a98: $0d
    rlca                                          ; $5a99: $07
    dec c                                         ; $5a9a: $0d
    rlca                                          ; $5a9b: $07
    dec bc                                        ; $5a9c: $0b
    rrca                                          ; $5a9d: $0f
    ld [bc], a                                    ; $5a9e: $02
    ld c, $02                                     ; $5a9f: $0e $02
    ld c, $0a                                     ; $5aa1: $0e $0a
    ld c, $0a                                     ; $5aa3: $0e $0a
    ld c, $04                                     ; $5aa5: $0e $04
    ld b, $02                                     ; $5aa7: $06 $02
    ld c, $04                                     ; $5aa9: $0e $04
    dec bc                                        ; $5aab: $0b
    inc b                                         ; $5aac: $04
    nop                                           ; $5aad: $00
    rst $38                                       ; $5aae: $ff
    ld de, $f606                                  ; $5aaf: $11 $06 $f6
    ld a, [bc]                                    ; $5ab2: $0a
    ld [c], a                                     ; $5ab3: $e2
    ld bc, $f8e9                                  ; $5ab4: $01 $e9 $f8
    ld [c], a                                     ; $5ab7: $e2
    nop                                           ; $5ab8: $00
    db $e3                                        ; $5ab9: $e3
    inc bc                                        ; $5aba: $03
    ld a, [c]                                     ; $5abb: $f2
    db $f4                                        ; $5abc: $f4
    ld a, [c]                                     ; $5abd: $f2
    db $fc                                        ; $5abe: $fc
    ld a, [c]                                     ; $5abf: $f2
    inc b                                         ; $5ac0: $04
    ld [$0601], sp                                ; $5ac1: $08 $01 $06
    nop                                           ; $5ac4: $00
    ld [bc], a                                    ; $5ac5: $02
    ld a, h                                       ; $5ac6: $7c
    sub b                                         ; $5ac7: $90
    add e                                         ; $5ac8: $83
    rst $38                                       ; $5ac9: $ff
    nop                                           ; $5aca: $00
    rst $38                                       ; $5acb: $ff
    nop                                           ; $5acc: $00
    rst $38                                       ; $5acd: $ff
    add c                                         ; $5ace: $81
    rst $38                                       ; $5acf: $ff
    ld bc, $83ff                                  ; $5ad0: $01 $ff $83
    rst $38                                       ; $5ad3: $ff
    add e                                         ; $5ad4: $83
    rst $38                                       ; $5ad5: $ff
    add a                                         ; $5ad6: $87
    rst $38                                       ; $5ad7: $ff
    ld [bc], a                                    ; $5ad8: $02
    rra                                           ; $5ad9: $1f
    sbc [hl]                                      ; $5ada: $9e
    ld h, $3f                                     ; $5adb: $26 $3f
    ld c, a                                       ; $5add: $4f
    ld a, c                                       ; $5ade: $79
    ld e, h                                       ; $5adf: $5c
    ld a, e                                       ; $5ae0: $7b
    cp a                                          ; $5ae1: $bf
    push hl                                       ; $5ae2: $e5
    sbc a                                         ; $5ae3: $9f
    ldh a, [$9e]                                  ; $5ae4: $f0 $9e
    ei                                            ; $5ae6: $fb
    rra                                           ; $5ae7: $1f
    db $fd                                        ; $5ae8: $fd
    ld e, $fb                                     ; $5ae9: $1e $fb
    cpl                                           ; $5aeb: $2f
    rst $38                                       ; $5aec: $ff
    ld e, $f1                                     ; $5aed: $1e $f1
    rst $38                                       ; $5aef: $ff
    pop af                                        ; $5af0: $f1
    scf                                           ; $5af1: $37
    dec sp                                        ; $5af2: $3b
    dec de                                        ; $5af3: $1b
    dec d                                         ; $5af4: $15
    scf                                           ; $5af5: $37
    add hl, sp                                    ; $5af6: $39
    db $dd                                        ; $5af7: $dd
    di                                            ; $5af8: $f3
    inc b                                         ; $5af9: $04
    inc b                                         ; $5afa: $04
    add h                                         ; $5afb: $84
    ld b, $02                                     ; $5afc: $06 $02
    rlca                                          ; $5afe: $07
    dec b                                         ; $5aff: $05
    ld [bc], a                                    ; $5b00: $02
    ld b, $86                                     ; $5b01: $06 $86
    inc bc                                        ; $5b03: $03
    dec b                                         ; $5b04: $05
    ld bc, $0507                                  ; $5b05: $01 $07 $05
    rlca                                          ; $5b08: $07
    inc bc                                        ; $5b09: $03
    ld b, $86                                     ; $5b0a: $06 $86
    ld [bc], a                                    ; $5b0c: $02
    rlca                                          ; $5b0d: $07
    ld bc, $0107                                  ; $5b0e: $01 $07 $01
    inc bc                                        ; $5b11: $03
    ld [bc], a                                    ; $5b12: $02
    rlca                                          ; $5b13: $07
    add l                                         ; $5b14: $85
    ld bc, $0107                                  ; $5b15: $01 $07 $01
    db $eb                                        ; $5b18: $eb
    sbc l                                         ; $5b19: $9d
    ld [bc], a                                    ; $5b1a: $02
    db $10                                        ; $5b1b: $10
    add a                                         ; $5b1c: $87
    jr nz, jr_0ea_5b4f                            ; $5b1d: $20 $30

    ld h, b                                       ; $5b1f: $60
    ld [hl], b                                    ; $5b20: $70
    ld h, b                                       ; $5b21: $60
    ld [hl], b                                    ; $5b22: $70
    ldh [rTIMA], a                                ; $5b23: $e0 $05
    ldh a, [$88]                                  ; $5b25: $f0 $88
    ld sp, hl                                     ; $5b27: $f9
    rst $38                                       ; $5b28: $ff
    di                                            ; $5b29: $f3
    rst $38                                       ; $5b2a: $ff
    db $ec                                        ; $5b2b: $ec
    db $fc                                        ; $5b2c: $fc
    db $ec                                        ; $5b2d: $ec
    db $fc                                        ; $5b2e: $fc
    ld [bc], a                                    ; $5b2f: $02
    halt                                          ; $5b30: $76
    ld [bc], a                                    ; $5b31: $02
    ld h, e                                       ; $5b32: $63
    ld [bc], a                                    ; $5b33: $02
    ld b, e                                       ; $5b34: $43
    inc b                                         ; $5b35: $04
    ld h, b                                       ; $5b36: $60
    adc [hl]                                      ; $5b37: $8e
    nop                                           ; $5b38: $00
    ld c, $01                                     ; $5b39: $0e $01
    rrca                                          ; $5b3b: $0f
    ld bc, $000f                                  ; $5b3c: $01 $0f $00
    rrca                                          ; $5b3f: $0f
    nop                                           ; $5b40: $00
    rrca                                          ; $5b41: $0f
    add hl, bc                                    ; $5b42: $09
    rrca                                          ; $5b43: $0f
    inc c                                         ; $5b44: $0c
    rrca                                          ; $5b45: $0f
    ld [bc], a                                    ; $5b46: $02
    rst $00                                       ; $5b47: $c7
    ld [de], a                                    ; $5b48: $12
    nop                                           ; $5b49: $00
    sub d                                         ; $5b4a: $92
    ld h, [hl]                                    ; $5b4b: $66
    cp [hl]                                       ; $5b4c: $be
    or $9e                                        ; $5b4d: $f6 $9e

jr_0ea_5b4f:
    ld a, [$f68e]                                 ; $5b4f: $fa $8e $f6
    sbc $e6                                       ; $5b52: $de $e6
    cp $62                                        ; $5b54: $fe $62
    cp $f2                                        ; $5b56: $fe $f2
    cp $3d                                        ; $5b58: $fe $3d
    ccf                                           ; $5b5a: $3f
    ld a, [hl-]                                   ; $5b5b: $3a
    ld a, $02                                     ; $5b5c: $3e $02
    ld [hl], $02                                  ; $5b5e: $36 $02
    inc a                                         ; $5b60: $3c
    ld b, $18                                     ; $5b61: $06 $18
    ld [bc], a                                    ; $5b63: $02
    nop                                           ; $5b64: $00
    rst $38                                       ; $5b65: $ff
    add hl, bc                                    ; $5b66: $09
    ld [bc], a                                    ; $5b67: $02
    ld sp, hl                                     ; $5b68: $f9
    ld [$00f1], sp                                ; $5b69: $08 $f1 $00
    di                                            ; $5b6c: $f3
    ld sp, hl                                     ; $5b6d: $f9
    di                                            ; $5b6e: $f3
    ld bc, $b089                                  ; $5b6f: $01 $89 $b0
    rst $38                                       ; $5b72: $ff
    ld a, a                                       ; $5b73: $7f
    or b                                          ; $5b74: $b0
    or l                                          ; $5b75: $b5
    ld a, [$b57a]                                 ; $5b76: $fa $7a $b5
    or c                                          ; $5b79: $b1
    ld [bc], a                                    ; $5b7a: $02
    rst $38                                       ; $5b7b: $ff
    ld [bc], a                                    ; $5b7c: $02
    cp $84                                        ; $5b7d: $fe $84
    rst $38                                       ; $5b7f: $ff
    rst $10                                       ; $5b80: $d7
    rst $38                                       ; $5b81: $ff
    xor d                                         ; $5b82: $aa
    inc bc                                        ; $5b83: $03
    rst $38                                       ; $5b84: $ff
    add c                                         ; $5b85: $81
    push de                                       ; $5b86: $d5
    ld [bc], a                                    ; $5b87: $02
    xor d                                         ; $5b88: $aa
    add d                                         ; $5b89: $82
    push de                                       ; $5b8a: $d5
    add b                                         ; $5b8b: $80
    inc bc                                        ; $5b8c: $03
    rst $38                                       ; $5b8d: $ff
    inc b                                         ; $5b8e: $04
    nop                                           ; $5b8f: $00
    adc c                                         ; $5b90: $89
    dec c                                         ; $5b91: $0d
    rst $38                                       ; $5b92: $ff
    cp $0d                                        ; $5b93: $fe $0d
    ld e, l                                       ; $5b95: $5d
    xor a                                         ; $5b96: $af
    xor [hl]                                      ; $5b97: $ae
    ld e, l                                       ; $5b98: $5d
    adc l                                         ; $5b99: $8d
    ld [bc], a                                    ; $5b9a: $02
    rst $38                                       ; $5b9b: $ff
    add [hl]                                      ; $5b9c: $86
    ld a, a                                       ; $5b9d: $7f
    rst $38                                       ; $5b9e: $ff
    ld a, a                                       ; $5b9f: $7f
    push de                                       ; $5ba0: $d5
    rst $38                                       ; $5ba1: $ff
    xor e                                         ; $5ba2: $ab
    inc bc                                        ; $5ba3: $03
    rst $38                                       ; $5ba4: $ff
    add c                                         ; $5ba5: $81
    ld d, l                                       ; $5ba6: $55
    ld [bc], a                                    ; $5ba7: $02
    xor e                                         ; $5ba8: $ab
    add d                                         ; $5ba9: $82
    ld d, l                                       ; $5baa: $55
    ld bc, $ff03                                  ; $5bab: $01 $03 $ff
    inc b                                         ; $5bae: $04
    nop                                           ; $5baf: $00
    rst $38                                       ; $5bb0: $ff
    add hl, bc                                    ; $5bb1: $09
    ld [bc], a                                    ; $5bb2: $02
    ld sp, hl                                     ; $5bb3: $f9
    ld [$00f1], sp                                ; $5bb4: $08 $f1 $00
    ld a, [c]                                     ; $5bb7: $f2
    ld sp, hl                                     ; $5bb8: $f9
    ld a, [c]                                     ; $5bb9: $f2
    ld bc, $b087                                  ; $5bba: $01 $87 $b0
    rst $38                                       ; $5bbd: $ff
    ld a, a                                       ; $5bbe: $7f
    or b                                          ; $5bbf: $b0
    cp d                                          ; $5bc0: $ba
    push af                                       ; $5bc1: $f5
    ld sp, $ff02                                  ; $5bc2: $31 $02 $ff
    add c                                         ; $5bc5: $81
    cp $02                                        ; $5bc6: $fe $02
    rst $38                                       ; $5bc8: $ff
    add c                                         ; $5bc9: $81
    push de                                       ; $5bca: $d5
    inc bc                                        ; $5bcb: $03
    rst $38                                       ; $5bcc: $ff
    add e                                         ; $5bcd: $83
    push de                                       ; $5bce: $d5
    rst $38                                       ; $5bcf: $ff
    xor d                                         ; $5bd0: $aa
    inc bc                                        ; $5bd1: $03
    rst $38                                       ; $5bd2: $ff
    add c                                         ; $5bd3: $81
    push de                                       ; $5bd4: $d5
    ld [bc], a                                    ; $5bd5: $02
    xor d                                         ; $5bd6: $aa
    add d                                         ; $5bd7: $82
    push de                                       ; $5bd8: $d5
    add b                                         ; $5bd9: $80
    inc bc                                        ; $5bda: $03
    rst $38                                       ; $5bdb: $ff
    ld [bc], a                                    ; $5bdc: $02
    nop                                           ; $5bdd: $00
    add a                                         ; $5bde: $87
    dec c                                         ; $5bdf: $0d
    rst $38                                       ; $5be0: $ff
    cp $0d                                        ; $5be1: $fe $0d
    xor l                                         ; $5be3: $ad
    ld e, a                                       ; $5be4: $5f
    adc h                                         ; $5be5: $8c
    ld [bc], a                                    ; $5be6: $02
    rst $38                                       ; $5be7: $ff
    ld [bc], a                                    ; $5be8: $02
    ld a, a                                       ; $5be9: $7f
    add d                                         ; $5bea: $82
    rst $38                                       ; $5beb: $ff
    push de                                       ; $5bec: $d5
    inc bc                                        ; $5bed: $03
    rst $38                                       ; $5bee: $ff
    add e                                         ; $5bef: $83
    ld d, l                                       ; $5bf0: $55
    rst $38                                       ; $5bf1: $ff
    xor e                                         ; $5bf2: $ab
    inc bc                                        ; $5bf3: $03
    rst $38                                       ; $5bf4: $ff
    add c                                         ; $5bf5: $81
    ld d, l                                       ; $5bf6: $55
    ld [bc], a                                    ; $5bf7: $02
    xor e                                         ; $5bf8: $ab
    add d                                         ; $5bf9: $82
    ld d, l                                       ; $5bfa: $55
    ld bc, $ff03                                  ; $5bfb: $01 $03 $ff
    ld [bc], a                                    ; $5bfe: $02
    nop                                           ; $5bff: $00
    rst $38                                       ; $5c00: $ff
    add hl, bc                                    ; $5c01: $09
    ld [bc], a                                    ; $5c02: $02
    ld sp, hl                                     ; $5c03: $f9
    ld [$00f1], sp                                ; $5c04: $08 $f1 $00
    pop af                                        ; $5c07: $f1
    ld sp, hl                                     ; $5c08: $f9
    pop af                                        ; $5c09: $f1
    ld bc, $b087                                  ; $5c0a: $01 $87 $b0
    rst $38                                       ; $5c0d: $ff
    ccf                                           ; $5c0e: $3f
    ldh a, [$ba]                                  ; $5c0f: $f0 $ba
    push af                                       ; $5c11: $f5
    ld sp, $ff02                                  ; $5c12: $31 $02 $ff
    add c                                         ; $5c15: $81
    cp $04                                        ; $5c16: $fe $04
    rst $38                                       ; $5c18: $ff
    add c                                         ; $5c19: $81
    push de                                       ; $5c1a: $d5
    inc bc                                        ; $5c1b: $03
    rst $38                                       ; $5c1c: $ff
    add e                                         ; $5c1d: $83
    push de                                       ; $5c1e: $d5
    rst $38                                       ; $5c1f: $ff
    xor d                                         ; $5c20: $aa
    inc bc                                        ; $5c21: $03
    rst $38                                       ; $5c22: $ff
    add c                                         ; $5c23: $81
    push de                                       ; $5c24: $d5
    ld [bc], a                                    ; $5c25: $02
    xor d                                         ; $5c26: $aa
    add d                                         ; $5c27: $82
    push de                                       ; $5c28: $d5
    add b                                         ; $5c29: $80
    inc bc                                        ; $5c2a: $03
    rst $38                                       ; $5c2b: $ff
    add a                                         ; $5c2c: $87
    dec c                                         ; $5c2d: $0d
    rst $38                                       ; $5c2e: $ff
    db $ec                                        ; $5c2f: $ec
    rra                                           ; $5c30: $1f
    xor l                                         ; $5c31: $ad
    ld e, a                                       ; $5c32: $5f
    adc h                                         ; $5c33: $8c
    ld [bc], a                                    ; $5c34: $02
    rst $38                                       ; $5c35: $ff
    ld [bc], a                                    ; $5c36: $02
    ld a, a                                       ; $5c37: $7f
    inc bc                                        ; $5c38: $03
    rst $38                                       ; $5c39: $ff
    add c                                         ; $5c3a: $81
    ld d, l                                       ; $5c3b: $55
    inc bc                                        ; $5c3c: $03
    rst $38                                       ; $5c3d: $ff
    add e                                         ; $5c3e: $83
    ld d, l                                       ; $5c3f: $55
    rst $38                                       ; $5c40: $ff
    xor e                                         ; $5c41: $ab
    inc bc                                        ; $5c42: $03
    rst $38                                       ; $5c43: $ff
    add c                                         ; $5c44: $81
    ld d, l                                       ; $5c45: $55
    ld [bc], a                                    ; $5c46: $02
    xor e                                         ; $5c47: $ab
    add d                                         ; $5c48: $82
    ld d, l                                       ; $5c49: $55
    ld bc, $ff03                                  ; $5c4a: $01 $03 $ff
    rst $38                                       ; $5c4d: $ff
    add hl, bc                                    ; $5c4e: $09
    ld [bc], a                                    ; $5c4f: $02
    push af                                       ; $5c50: $f5
    inc c                                         ; $5c51: $0c
    ld a, [c]                                     ; $5c52: $f2
    ld bc, $fbed                                  ; $5c53: $01 $ed $fb
    db $ed                                        ; $5c56: $ed
    cp $02                                        ; $5c57: $fe $02
    ld a, [bc]                                    ; $5c59: $0a
    ld [bc], a                                    ; $5c5a: $02
    nop                                           ; $5c5b: $00
    add d                                         ; $5c5c: $82
    ld [hl+], a                                   ; $5c5d: $22
    ld [bc], a                                    ; $5c5e: $02
    ld [bc], a                                    ; $5c5f: $02
    nop                                           ; $5c60: $00
    ld [bc], a                                    ; $5c61: $02
    xor d                                         ; $5c62: $aa
    ld [bc], a                                    ; $5c63: $02
    dec d                                         ; $5c64: $15
    adc d                                         ; $5c65: $8a
    xor b                                         ; $5c66: $a8
    xor d                                         ; $5c67: $aa
    inc b                                         ; $5c68: $04
    dec b                                         ; $5c69: $05
    ld [$140a], sp                                ; $5c6a: $08 $0a $14

jr_0ea_5c6d:
    dec d                                         ; $5c6d: $15
    jr z, jr_0ea_5c9a                             ; $5c6e: $28 $2a

    ld [bc], a                                    ; $5c70: $02
    nop                                           ; $5c71: $00
    add d                                         ; $5c72: $82
    ld [$020a], sp                                ; $5c73: $08 $0a $02
    nop                                           ; $5c76: $00
    add d                                         ; $5c77: $82
    ld [$060a], sp                                ; $5c78: $08 $0a $06
    nop                                           ; $5c7b: $00
    ld [bc], a                                    ; $5c7c: $02
    inc b                                         ; $5c7d: $04
    inc bc                                        ; $5c7e: $03
    nop                                           ; $5c7f: $00
    add c                                         ; $5c80: $81
    dec b                                         ; $5c81: $05
    ld [bc], a                                    ; $5c82: $02
    nop                                           ; $5c83: $00
    add d                                         ; $5c84: $82
    inc b                                         ; $5c85: $04
    dec b                                         ; $5c86: $05
    ld [bc], a                                    ; $5c87: $02
    nop                                           ; $5c88: $00
    add d                                         ; $5c89: $82
    inc b                                         ; $5c8a: $04
    dec b                                         ; $5c8b: $05
    ld [bc], a                                    ; $5c8c: $02
    nop                                           ; $5c8d: $00
    add d                                         ; $5c8e: $82
    inc b                                         ; $5c8f: $04
    dec b                                         ; $5c90: $05
    ld [bc], a                                    ; $5c91: $02
    nop                                           ; $5c92: $00
    ld [bc], a                                    ; $5c93: $02
    inc b                                         ; $5c94: $04
    ld b, $00                                     ; $5c95: $06 $00
    rst $38                                       ; $5c97: $ff
    rrca                                          ; $5c98: $0f
    dec b                                         ; $5c99: $05

jr_0ea_5c9a:
    push af                                       ; $5c9a: $f5
    inc c                                         ; $5c9b: $0c
    ld a, [c]                                     ; $5c9c: $f2
    ld bc, $f9e9                                  ; $5c9d: $01 $e9 $f9
    jp hl                                         ; $5ca0: $e9


    nop                                           ; $5ca1: $00
    di                                            ; $5ca2: $f3
    ld [bc], a                                    ; $5ca3: $02
    ld sp, hl                                     ; $5ca4: $f9
    ld sp, hl                                     ; $5ca5: $f9
    ld sp, hl                                     ; $5ca6: $f9
    ld a, [$0202]                                 ; $5ca7: $fa $02 $02
    ld [bc], a                                    ; $5caa: $02
    nop                                           ; $5cab: $00
    ld [bc], a                                    ; $5cac: $02
    ld [bc], a                                    ; $5cad: $02
    ld [bc], a                                    ; $5cae: $02
    nop                                           ; $5caf: $00
    add [hl]                                      ; $5cb0: $86
    xor d                                         ; $5cb1: $aa
    add d                                         ; $5cb2: $82
    dec b                                         ; $5cb3: $05
    ld bc, $0028                                  ; $5cb4: $01 $28 $00
    ld [bc], a                                    ; $5cb7: $02
    dec d                                         ; $5cb8: $15
    ld [bc], a                                    ; $5cb9: $02
    xor d                                         ; $5cba: $aa
    ld [bc], a                                    ; $5cbb: $02
    rlca                                          ; $5cbc: $07
    ld [bc], a                                    ; $5cbd: $02
    ld a, [hl+]                                   ; $5cbe: $2a
    ld [bc], a                                    ; $5cbf: $02
    inc de                                        ; $5cc0: $13
    ld [bc], a                                    ; $5cc1: $02
    add d                                         ; $5cc2: $82
    ld [bc], a                                    ; $5cc3: $02
    rla                                           ; $5cc4: $17
    ld [bc], a                                    ; $5cc5: $02
    adc d                                         ; $5cc6: $8a
    ld [bc], a                                    ; $5cc7: $02
    dec d                                         ; $5cc8: $15
    ld [bc], a                                    ; $5cc9: $02
    ld b, b                                       ; $5cca: $40
    ld [bc], a                                    ; $5ccb: $02
    nop                                           ; $5ccc: $00
    add d                                         ; $5ccd: $82
    ld d, h                                       ; $5cce: $54
    inc d                                         ; $5ccf: $14
    ld [bc], a                                    ; $5cd0: $02
    nop                                           ; $5cd1: $00
    ld [bc], a                                    ; $5cd2: $02
    ld d, l                                       ; $5cd3: $55
    ld [bc], a                                    ; $5cd4: $02
    jr nz, jr_0ea_5c6d                            ; $5cd5: $20 $96

    ld d, h                                       ; $5cd7: $54
    ld d, l                                       ; $5cd8: $55
    nop                                           ; $5cd9: $00
    jr nz, @+$42                                  ; $5cda: $20 $40

    ld d, l                                       ; $5cdc: $55
    jr z, jr_0ea_5d47                             ; $5cdd: $28 $68

    db $10                                        ; $5cdf: $10
    ld d, l                                       ; $5ce0: $55
    jr jr_0ea_5d5d                                ; $5ce1: $18 $7a

    db $10                                        ; $5ce3: $10
    ld d, l                                       ; $5ce4: $55
    ld [$1028], sp                                ; $5ce5: $08 $28 $10
    ld d, l                                       ; $5ce8: $55
    ld [$0028], sp                                ; $5ce9: $08 $28 $00
    ld bc, $0002                                  ; $5cec: $01 $02 $00
    ld [bc], a                                    ; $5cef: $02
    ld bc, $0006                                  ; $5cf0: $01 $06 $00
    add [hl]                                      ; $5cf3: $86
    ld b, b                                       ; $5cf4: $40
    ld d, h                                       ; $5cf5: $54
    nop                                           ; $5cf6: $00
    add b                                         ; $5cf7: $80
    ld b, b                                       ; $5cf8: $40
    ld d, h                                       ; $5cf9: $54
    ld [bc], a                                    ; $5cfa: $02
    nop                                           ; $5cfb: $00
    add d                                         ; $5cfc: $82
    ld b, b                                       ; $5cfd: $40
    ld d, b                                       ; $5cfe: $50
    ld a, [bc]                                    ; $5cff: $0a
    nop                                           ; $5d00: $00
    ld [bc], a                                    ; $5d01: $02
    add d                                         ; $5d02: $82
    ld [bc], a                                    ; $5d03: $02
    dec b                                         ; $5d04: $05
    ld [bc], a                                    ; $5d05: $02
    ld [hl+], a                                   ; $5d06: $22
    ld [bc], a                                    ; $5d07: $02
    nop                                           ; $5d08: $00
    ld [bc], a                                    ; $5d09: $02
    ld [hl+], a                                   ; $5d0a: $22
    ld [bc], a                                    ; $5d0b: $02
    nop                                           ; $5d0c: $00
    ld [bc], a                                    ; $5d0d: $02
    ld [bc], a                                    ; $5d0e: $02
    inc de                                        ; $5d0f: $13
    nop                                           ; $5d10: $00
    add c                                         ; $5d11: $81
    ld bc, $0003                                  ; $5d12: $01 $03 $00
    add c                                         ; $5d15: $81
    ld bc, $0003                                  ; $5d16: $01 $03 $00
    add c                                         ; $5d19: $81
    ld bc, $0003                                  ; $5d1a: $01 $03 $00
    add c                                         ; $5d1d: $81
    ld bc, $0012                                  ; $5d1e: $01 $12 $00
    rst $38                                       ; $5d21: $ff
    ld de, $f506                                  ; $5d22: $11 $06 $f5
    inc c                                         ; $5d25: $0c
    ld a, [c]                                     ; $5d26: $f2
    ld bc, $f7e9                                  ; $5d27: $01 $e9 $f7
    push hl                                       ; $5d2a: $e5
    rst $38                                       ; $5d2b: $ff
    jp hl                                         ; $5d2c: $e9


    inc b                                         ; $5d2d: $04
    push af                                       ; $5d2e: $f5
    rst $30                                       ; $5d2f: $f7
    push af                                       ; $5d30: $f5
    rst $38                                       ; $5d31: $ff
    push af                                       ; $5d32: $f5
    inc b                                         ; $5d33: $04
    add h                                         ; $5d34: $84
    ld a, [bc]                                    ; $5d35: $0a
    nop                                           ; $5d36: $00
    dec b                                         ; $5d37: $05
    nop                                           ; $5d38: $00
    ld [bc], a                                    ; $5d39: $02
    and b                                         ; $5d3a: $a0
    adc b                                         ; $5d3b: $88
    dec d                                         ; $5d3c: $15
    nop                                           ; $5d3d: $00
    xor d                                         ; $5d3e: $aa
    and b                                         ; $5d3f: $a0
    rla                                           ; $5d40: $17
    ld [bc], a                                    ; $5d41: $02
    adc d                                         ; $5d42: $8a
    add b                                         ; $5d43: $80
    ld [bc], a                                    ; $5d44: $02
    rra                                           ; $5d45: $1f
    ld [bc], a                                    ; $5d46: $02

jr_0ea_5d47:
    ld a, [hl+]                                   ; $5d47: $2a
    ld [bc], a                                    ; $5d48: $02
    add hl, de                                    ; $5d49: $19
    ld [bc], a                                    ; $5d4a: $02
    ld a, [bc]                                    ; $5d4b: $0a
    ld [bc], a                                    ; $5d4c: $02
    ld b, h                                       ; $5d4d: $44
    ld [bc], a                                    ; $5d4e: $02
    jr nz, jr_0ea_5d53                            ; $5d4f: $20 $02

    ld e, a                                       ; $5d51: $5f
    ld [bc], a                                    ; $5d52: $02

jr_0ea_5d53:
    and d                                         ; $5d53: $a2
    ld [bc], a                                    ; $5d54: $02
    ld d, l                                       ; $5d55: $55
    ld [bc], a                                    ; $5d56: $02
    jr nz, jr_0ea_5d5b                            ; $5d57: $20 $02

    nop                                           ; $5d59: $00
    ld [bc], a                                    ; $5d5a: $02

jr_0ea_5d5b:
    adc d                                         ; $5d5b: $8a
    ld [bc], a                                    ; $5d5c: $02

jr_0ea_5d5d:
    nop                                           ; $5d5d: $00
    adc b                                         ; $5d5e: $88
    and b                                         ; $5d5f: $a0
    xor d                                         ; $5d60: $aa
    ld d, h                                       ; $5d61: $54
    ld b, h                                       ; $5d62: $44
    xor d                                         ; $5d63: $aa
    adc d                                         ; $5d64: $8a
    dec d                                         ; $5d65: $15
    inc b                                         ; $5d66: $04
    ld [bc], a                                    ; $5d67: $02
    xor d                                         ; $5d68: $aa
    add d                                         ; $5d69: $82
    db $fd                                        ; $5d6a: $fd
    push af                                       ; $5d6b: $f5
    ld [bc], a                                    ; $5d6c: $02
    ld a, [hl+]                                   ; $5d6d: $2a
    adc d                                         ; $5d6e: $8a
    ld l, d                                       ; $5d6f: $6a
    ld a, e                                       ; $5d70: $7b
    ldh [$ea], a                                  ; $5d71: $e0 $ea
    sbc $ff                                       ; $5d73: $de $ff
    adc b                                         ; $5d75: $88
    xor d                                         ; $5d76: $aa
    call z, Call_000_02fd                         ; $5d77: $cc $fd $02
    db $10                                        ; $5d7a: $10
    ld [bc], a                                    ; $5d7b: $02
    nop                                           ; $5d7c: $00
    add c                                         ; $5d7d: $81
    db $10                                        ; $5d7e: $10
    inc bc                                        ; $5d7f: $03
    nop                                           ; $5d80: $00
    ld [bc], a                                    ; $5d81: $02
    db $10                                        ; $5d82: $10
    ld [bc], a                                    ; $5d83: $02
    nop                                           ; $5d84: $00
    add [hl]                                      ; $5d85: $86
    inc b                                         ; $5d86: $04
    inc d                                         ; $5d87: $14
    nop                                           ; $5d88: $00
    ld [$1505], sp                                ; $5d89: $08 $05 $15
    ld [bc], a                                    ; $5d8c: $02
    ld [$0182], sp                                ; $5d8d: $08 $82 $01
    dec d                                         ; $5d90: $15
    ld [bc], a                                    ; $5d91: $02
    ld [$0488], sp                                ; $5d92: $08 $88 $04
    ld d, h                                       ; $5d95: $54
    adc b                                         ; $5d96: $88
    xor b                                         ; $5d97: $a8
    dec b                                         ; $5d98: $05
    ld d, l                                       ; $5d99: $55
    adc b                                         ; $5d9a: $88
    xor b                                         ; $5d9b: $a8
    ld [$8200], sp                                ; $5d9c: $08 $00 $82
    and b                                         ; $5d9f: $a0
    jr nz, jr_0ea_5da4                            ; $5da0: $20 $02

    dec b                                         ; $5da2: $05
    ld [bc], a                                    ; $5da3: $02

jr_0ea_5da4:
    ld [$0402], sp                                ; $5da4: $08 $02 $04
    ld [bc], a                                    ; $5da7: $02
    ld [$0402], sp                                ; $5da8: $08 $02 $04
    ld [bc], a                                    ; $5dab: $02
    ld [$0002], sp                                ; $5dac: $08 $02 $00
    ld [bc], a                                    ; $5daf: $02
    ld a, [bc]                                    ; $5db0: $0a
    ld b, $00                                     ; $5db1: $06 $00
    sub [hl]                                      ; $5db3: $96
    ret z                                         ; $5db4: $c8

    add sp, -$38                                  ; $5db5: $e8 $c8
    ret c                                         ; $5db7: $d8

    adc b                                         ; $5db8: $88
    xor b                                         ; $5db9: $a8
    ret z                                         ; $5dba: $c8

    ret c                                         ; $5dbb: $d8

    adc b                                         ; $5dbc: $88
    xor d                                         ; $5dbd: $aa
    call z, $88dd                                 ; $5dbe: $cc $dd $88
    xor d                                         ; $5dc1: $aa
    ld b, b                                       ; $5dc2: $40
    ld d, l                                       ; $5dc3: $55
    adc b                                         ; $5dc4: $88
    xor d                                         ; $5dc5: $aa
    ld b, h                                       ; $5dc6: $44
    ld d, h                                       ; $5dc7: $54
    adc b                                         ; $5dc8: $88
    xor d                                         ; $5dc9: $aa
    ld [bc], a                                    ; $5dca: $02
    nop                                           ; $5dcb: $00
    add d                                         ; $5dcc: $82
    xor b                                         ; $5dcd: $a8
    xor d                                         ; $5dce: $aa
    ld c, $00                                     ; $5dcf: $0e $00
    add d                                         ; $5dd1: $82
    ld bc, $0215                                  ; $5dd2: $01 $15 $02
    nop                                           ; $5dd5: $00
    add d                                         ; $5dd6: $82
    inc b                                         ; $5dd7: $04
    db $10                                        ; $5dd8: $10
    ld [bc], a                                    ; $5dd9: $02
    nop                                           ; $5dda: $00
    add d                                         ; $5ddb: $82
    inc b                                         ; $5ddc: $04
    inc d                                         ; $5ddd: $14
    inc bc                                        ; $5dde: $03
    nop                                           ; $5ddf: $00
    add c                                         ; $5de0: $81
    db $10                                        ; $5de1: $10
    ld a, [bc]                                    ; $5de2: $0a
    nop                                           ; $5de3: $00
    rst $38                                       ; $5de4: $ff
    dec bc                                        ; $5de5: $0b
    inc bc                                        ; $5de6: $03
    push af                                       ; $5de7: $f5
    inc c                                         ; $5de8: $0c
    ld a, [c]                                     ; $5de9: $f2
    ld bc, $f7e7                                  ; $5dea: $01 $e7 $f7
    db $ec                                        ; $5ded: $ec
    cp $f7                                        ; $5dee: $fe $f7
    rst $30                                       ; $5df0: $f7
    add c                                         ; $5df1: $81
    ld a, [bc]                                    ; $5df2: $0a
    inc bc                                        ; $5df3: $03
    nop                                           ; $5df4: $00
    add c                                         ; $5df5: $81
    jr nz, jr_0ea_5dfc                            ; $5df6: $20 $04

    nop                                           ; $5df8: $00
    add c                                         ; $5df9: $81
    ld a, [bc]                                    ; $5dfa: $0a
    inc c                                         ; $5dfb: $0c

jr_0ea_5dfc:
    nop                                           ; $5dfc: $00
    ld [bc], a                                    ; $5dfd: $02
    ld b, $02                                     ; $5dfe: $06 $02
    ld hl, $1b02                                  ; $5e00: $21 $02 $1b
    ld [bc], a                                    ; $5e03: $02
    adc d                                         ; $5e04: $8a
    ld [bc], a                                    ; $5e05: $02
    nop                                           ; $5e06: $00
    add c                                         ; $5e07: $81
    jr nz, jr_0ea_5e0f                            ; $5e08: $20 $05

    nop                                           ; $5e0a: $00
    add h                                         ; $5e0b: $84
    ld b, b                                       ; $5e0c: $40
    nop                                           ; $5e0d: $00
    ld b, d                                       ; $5e0e: $42

jr_0ea_5e0f:
    ld [bc], a                                    ; $5e0f: $02
    dec b                                         ; $5e10: $05
    nop                                           ; $5e11: $00
    add e                                         ; $5e12: $83
    ld [$0100], sp                                ; $5e13: $08 $00 $01
    inc bc                                        ; $5e16: $03
    nop                                           ; $5e17: $00
    add c                                         ; $5e18: $81
    ld de, $0003                                  ; $5e19: $11 $03 $00
    add c                                         ; $5e1c: $81
    ld de, $0003                                  ; $5e1d: $11 $03 $00
    add c                                         ; $5e20: $81
    db $10                                        ; $5e21: $10
    ld [bc], a                                    ; $5e22: $02
    nop                                           ; $5e23: $00
    ld [bc], a                                    ; $5e24: $02
    ld [$0a04], sp                                ; $5e25: $08 $04 $0a
    ld [bc], a                                    ; $5e28: $02
    ld [de], a                                    ; $5e29: $12
    ld [bc], a                                    ; $5e2a: $02
    ld [hl+], a                                   ; $5e2b: $22
    ld [bc], a                                    ; $5e2c: $02
    ld de, $2202                                  ; $5e2d: $11 $02 $22
    ld [bc], a                                    ; $5e30: $02
    ld bc, $2202                                  ; $5e31: $01 $02 $22
    ld c, $00                                     ; $5e34: $0e $00
    rst $38                                       ; $5e36: $ff
    ld de, $f506                                  ; $5e37: $11 $06 $f5
    inc c                                         ; $5e3a: $0c
    ld a, [c]                                     ; $5e3b: $f2
    ld bc, $f7e6                                  ; $5e3c: $01 $e6 $f7
    push hl                                       ; $5e3f: $e5
    rst $38                                       ; $5e40: $ff
    rst $20                                       ; $5e41: $e7
    inc b                                         ; $5e42: $04
    push af                                       ; $5e43: $f5
    or $f5                                        ; $5e44: $f6 $f5
    cp $f5                                        ; $5e46: $fe $f5
    inc b                                         ; $5e48: $04
    ld [bc], a                                    ; $5e49: $02
    inc b                                         ; $5e4a: $04
    add d                                         ; $5e4b: $82
    nop                                           ; $5e4c: $00
    jr nz, jr_0ea_5e51                            ; $5e4d: $20 $02

    inc b                                         ; $5e4f: $04
    add h                                         ; $5e50: $84

jr_0ea_5e51:
    ld a, [bc]                                    ; $5e51: $0a
    nop                                           ; $5e52: $00
    ld d, a                                       ; $5e53: $57
    ld b, b                                       ; $5e54: $40
    ld [bc], a                                    ; $5e55: $02
    and b                                         ; $5e56: $a0
    adc b                                         ; $5e57: $88
    rra                                           ; $5e58: $1f
    nop                                           ; $5e59: $00
    xor d                                         ; $5e5a: $aa
    and b                                         ; $5e5b: $a0
    ccf                                           ; $5e5c: $3f
    ld a, [hl+]                                   ; $5e5d: $2a
    adc e                                         ; $5e5e: $8b
    add c                                         ; $5e5f: $81
    ld [bc], a                                    ; $5e60: $02
    ccf                                           ; $5e61: $3f
    add d                                         ; $5e62: $82
    ld l, $2a                                     ; $5e63: $2e $2a
    ld [bc], a                                    ; $5e65: $02
    sbc c                                         ; $5e66: $99
    ld [bc], a                                    ; $5e67: $02
    ld a, [bc]                                    ; $5e68: $0a
    ld [bc], a                                    ; $5e69: $02
    ld h, h                                       ; $5e6a: $64
    ld [bc], a                                    ; $5e6b: $02
    dec h                                         ; $5e6c: $25
    add h                                         ; $5e6d: $84
    jr z, jr_0ea_5e9a                             ; $5e6e: $28 $2a

    ld b, b                                       ; $5e70: $40
    ld b, h                                       ; $5e71: $44
    ld [bc], a                                    ; $5e72: $02
    adc d                                         ; $5e73: $8a
    adc d                                         ; $5e74: $8a
    ld d, l                                       ; $5e75: $55
    ld b, h                                       ; $5e76: $44
    and b                                         ; $5e77: $a0
    xor d                                         ; $5e78: $aa
    db $dd                                        ; $5e79: $dd
    db $e4                                        ; $5e7a: $e4
    xor d                                         ; $5e7b: $aa
    adc d                                         ; $5e7c: $8a
    cp a                                          ; $5e7d: $bf
    and [hl]                                      ; $5e7e: $a6
    ld [bc], a                                    ; $5e7f: $02
    xor d                                         ; $5e80: $aa
    adc [hl]                                      ; $5e81: $8e
    rst $38                                       ; $5e82: $ff
    push af                                       ; $5e83: $f5
    ld a, [hl+]                                   ; $5e84: $2a
    ld a, [hl-]                                   ; $5e85: $3a
    ld l, d                                       ; $5e86: $6a
    ld a, e                                       ; $5e87: $7b
    db $e4                                        ; $5e88: $e4
    xor $de                                       ; $5e89: $ee $de
    rst $38                                       ; $5e8b: $ff
    ret z                                         ; $5e8c: $c8

    ld [$fdcc], a                                 ; $5e8d: $ea $cc $fd
    ld [bc], a                                    ; $5e90: $02
    inc d                                         ; $5e91: $14
    ld [bc], a                                    ; $5e92: $02
    nop                                           ; $5e93: $00
    ld [bc], a                                    ; $5e94: $02
    db $10                                        ; $5e95: $10
    ld [bc], a                                    ; $5e96: $02
    ld [$1081], sp                                ; $5e97: $08 $81 $10

jr_0ea_5e9a:
    inc bc                                        ; $5e9a: $03
    nop                                           ; $5e9b: $00
    ld [bc], a                                    ; $5e9c: $02
    db $10                                        ; $5e9d: $10
    sub d                                         ; $5e9e: $92
    nop                                           ; $5e9f: $00
    jr jr_0ea_5ea6                                ; $5ea0: $18 $04

    inc d                                         ; $5ea2: $14
    ld [de], a                                    ; $5ea3: $12
    ld a, [de]                                    ; $5ea4: $1a
    dec b                                         ; $5ea5: $05

jr_0ea_5ea6:
    dec d                                         ; $5ea6: $15
    ld [$010a], sp                                ; $5ea7: $08 $0a $01
    dec d                                         ; $5eaa: $15
    inc c                                         ; $5eab: $0c
    ld c, $84                                     ; $5eac: $0e $84
    call nc, $b898                                ; $5eae: $d4 $98 $b8
    ld [bc], a                                    ; $5eb1: $02
    nop                                           ; $5eb2: $00
    ld [bc], a                                    ; $5eb3: $02
    cp a                                          ; $5eb4: $bf
    ld [bc], a                                    ; $5eb5: $02
    ld d, c                                       ; $5eb6: $51
    ld [bc], a                                    ; $5eb7: $02
    cp d                                          ; $5eb8: $ba
    add d                                         ; $5eb9: $82
    ld d, d                                       ; $5eba: $52
    ld [de], a                                    ; $5ebb: $12
    ld [bc], a                                    ; $5ebc: $02
    or d                                          ; $5ebd: $b2
    ld [bc], a                                    ; $5ebe: $02
    inc b                                         ; $5ebf: $04
    ld [bc], a                                    ; $5ec0: $02
    ld h, $02                                     ; $5ec1: $26 $02
    inc b                                         ; $5ec3: $04
    ld [bc], a                                    ; $5ec4: $02
    ld [bc], a                                    ; $5ec5: $02
    ld [bc], a                                    ; $5ec6: $02
    inc b                                         ; $5ec7: $04
    ld [bc], a                                    ; $5ec8: $02
    ld [bc], a                                    ; $5ec9: $02
    ld [bc], a                                    ; $5eca: $02
    ld d, l                                       ; $5ecb: $55
    ld b, $00                                     ; $5ecc: $06 $00
    sbc d                                         ; $5ece: $9a
    ld h, h                                       ; $5ecf: $64
    ld [hl], h                                    ; $5ed0: $74
    db $e4                                        ; $5ed1: $e4
    db $ec                                        ; $5ed2: $ec
    db $e4                                        ; $5ed3: $e4
    push af                                       ; $5ed4: $f5
    and $ee                                       ; $5ed5: $e6 $ee
    ld h, [hl]                                    ; $5ed7: $66
    ld [hl], a                                    ; $5ed8: $77
    and $ee                                       ; $5ed9: $e6 $ee
    ld b, h                                       ; $5edb: $44
    ld d, l                                       ; $5edc: $55
    ld h, h                                       ; $5edd: $64
    ld l, [hl]                                    ; $5ede: $6e
    ld b, h                                       ; $5edf: $44
    ld d, l                                       ; $5ee0: $55
    ld [hl+], a                                   ; $5ee1: $22
    ld a, [hl+]                                   ; $5ee2: $2a
    ld b, h                                       ; $5ee3: $44
    ld d, l                                       ; $5ee4: $55
    ld [hl+], a                                   ; $5ee5: $22
    ld a, [hl+]                                   ; $5ee6: $2a
    ld d, h                                       ; $5ee7: $54
    ld d, l                                       ; $5ee8: $55
    ld a, [bc]                                    ; $5ee9: $0a
    nop                                           ; $5eea: $00
    sub [hl]                                      ; $5eeb: $96
    dec b                                         ; $5eec: $05
    dec d                                         ; $5eed: $15
    ld [$012a], sp                                ; $5eee: $08 $2a $01
    dec d                                         ; $5ef1: $15
    ld [bc], a                                    ; $5ef2: $02
    ld a, [hl+]                                   ; $5ef3: $2a
    dec b                                         ; $5ef4: $05
    ld de, $2a0a                                  ; $5ef5: $11 $0a $2a
    inc b                                         ; $5ef8: $04
    inc d                                         ; $5ef9: $14
    nop                                           ; $5efa: $00
    jr z, jr_0ea_5efd                             ; $5efb: $28 $00

jr_0ea_5efd:
    inc d                                         ; $5efd: $14
    nop                                           ; $5efe: $00
    jr nz, jr_0ea_5f06                            ; $5eff: $20 $05

    dec d                                         ; $5f01: $15
    ld b, $00                                     ; $5f02: $06 $00
    rst $38                                       ; $5f04: $ff
    rrca                                          ; $5f05: $0f

jr_0ea_5f06:
    dec b                                         ; $5f06: $05
    push af                                       ; $5f07: $f5
    inc c                                         ; $5f08: $0c
    ld a, [c]                                     ; $5f09: $f2
    ld bc, $f7e7                                  ; $5f0a: $01 $e7 $f7
    db $ec                                        ; $5f0d: $ec
    rst $38                                       ; $5f0e: $ff
    ld a, [c]                                     ; $5f0f: $f2
    ld [bc], a                                    ; $5f10: $02
    rst $30                                       ; $5f11: $f7
    rst $30                                       ; $5f12: $f7
    rst $30                                       ; $5f13: $f7
    ld a, [$0a85]                                 ; $5f14: $fa $85 $0a
    nop                                           ; $5f17: $00
    ld de, $2000                                  ; $5f18: $11 $00 $20
    inc b                                         ; $5f1b: $04
    nop                                           ; $5f1c: $00
    add d                                         ; $5f1d: $82
    ld a, [bc]                                    ; $5f1e: $0a
    ld b, b                                       ; $5f1f: $40
    inc bc                                        ; $5f20: $03
    nop                                           ; $5f21: $00
    add c                                         ; $5f22: $81
    ld b, b                                       ; $5f23: $40
    rlca                                          ; $5f24: $07
    nop                                           ; $5f25: $00
    ld [bc], a                                    ; $5f26: $02
    ld h, $02                                     ; $5f27: $26 $02
    ld sp, $9b02                                  ; $5f29: $31 $02 $9b
    ld [bc], a                                    ; $5f2c: $02
    adc d                                         ; $5f2d: $8a
    ld [bc], a                                    ; $5f2e: $02
    add b                                         ; $5f2f: $80
    add e                                         ; $5f30: $83
    ld b, b                                       ; $5f31: $40
    nop                                           ; $5f32: $00
    ld b, b                                       ; $5f33: $40
    inc bc                                        ; $5f34: $03
    nop                                           ; $5f35: $00
    add h                                         ; $5f36: $84
    add b                                         ; $5f37: $80
    nop                                           ; $5f38: $00
    add h                                         ; $5f39: $84
    inc b                                         ; $5f3a: $04
    dec b                                         ; $5f3b: $05
    nop                                           ; $5f3c: $00
    adc e                                         ; $5f3d: $8b
    ld de, $0200                                  ; $5f3e: $11 $00 $02
    nop                                           ; $5f41: $00
    stop                                          ; $5f42: $10 $00
    ld [hl+], a                                   ; $5f44: $22
    nop                                           ; $5f45: $00
    stop                                          ; $5f46: $10 $00
    ld [hl+], a                                   ; $5f48: $22
    inc bc                                        ; $5f49: $03
    nop                                           ; $5f4a: $00
    add l                                         ; $5f4b: $85
    ld [hl+], a                                   ; $5f4c: $22
    nop                                           ; $5f4d: $00
    stop                                          ; $5f4e: $10 $00
    dec b                                         ; $5f50: $05
    inc bc                                        ; $5f51: $03
    nop                                           ; $5f52: $00
    add c                                         ; $5f53: $81
    inc b                                         ; $5f54: $04
    ld a, [de]                                    ; $5f55: $1a
    nop                                           ; $5f56: $00
    ld [bc], a                                    ; $5f57: $02
    ld [$0a04], sp                                ; $5f58: $08 $04 $0a
    ld [bc], a                                    ; $5f5b: $02
    ld a, [de]                                    ; $5f5c: $1a
    ld [bc], a                                    ; $5f5d: $02
    inc hl                                        ; $5f5e: $23
    ld [bc], a                                    ; $5f5f: $02
    inc de                                        ; $5f60: $13
    ld [bc], a                                    ; $5f61: $02
    ld [hl+], a                                   ; $5f62: $22
    ld [bc], a                                    ; $5f63: $02
    ld d, e                                       ; $5f64: $53
    ld [bc], a                                    ; $5f65: $02
    and d                                         ; $5f66: $a2
    ld [bc], a                                    ; $5f67: $02
    ld de, $0017                                  ; $5f68: $11 $17 $00
    add c                                         ; $5f6b: $81
    ld bc, $0002                                  ; $5f6c: $01 $02 $00
    add d                                         ; $5f6f: $82
    inc b                                         ; $5f70: $04
    dec b                                         ; $5f71: $05
    stop                                          ; $5f72: $10 $00
    rst $38                                       ; $5f74: $ff
    ld de, $f506                                  ; $5f75: $11 $06 $f5
    inc c                                         ; $5f78: $0c
    ld a, [c]                                     ; $5f79: $f2
    ld bc, $f7e6                                  ; $5f7a: $01 $e6 $f7
    push hl                                       ; $5f7d: $e5
    rst $38                                       ; $5f7e: $ff
    and $04                                       ; $5f7f: $e6 $04
    push af                                       ; $5f81: $f5
    or $f5                                        ; $5f82: $f6 $f5
    cp $f5                                        ; $5f84: $fe $f5
    inc b                                         ; $5f86: $04
    ld [bc], a                                    ; $5f87: $02
    ld b, $82                                     ; $5f88: $06 $82
    nop                                           ; $5f8a: $00
    jr nz, jr_0ea_5f8f                            ; $5f8b: $20 $02

    ld h, $84                                     ; $5f8d: $26 $84

jr_0ea_5f8f:
    ld a, [bc]                                    ; $5f8f: $0a
    nop                                           ; $5f90: $00
    ld a, a                                       ; $5f91: $7f
    ld h, b                                       ; $5f92: $60
    ld [bc], a                                    ; $5f93: $02
    and b                                         ; $5f94: $a0
    adc b                                         ; $5f95: $88
    cp a                                          ; $5f96: $bf
    and b                                         ; $5f97: $a0
    xor a                                         ; $5f98: $af
    and h                                         ; $5f99: $a4
    cp a                                          ; $5f9a: $bf
    xor d                                         ; $5f9b: $aa
    sbc a                                         ; $5f9c: $9f
    sub l                                         ; $5f9d: $95
    ld [bc], a                                    ; $5f9e: $02
    cp a                                          ; $5f9f: $bf
    add d                                         ; $5fa0: $82
    ld l, [hl]                                    ; $5fa1: $6e
    ld l, d                                       ; $5fa2: $6a
    ld [bc], a                                    ; $5fa3: $02
    sbc c                                         ; $5fa4: $99
    add d                                         ; $5fa5: $82
    ld a, [bc]                                    ; $5fa6: $0a
    ld c, $02                                     ; $5fa7: $0e $02
    ld h, h                                       ; $5fa9: $64
    ld [bc], a                                    ; $5faa: $02
    ld h, l                                       ; $5fab: $65
    add h                                         ; $5fac: $84
    jr z, @+$2c                                   ; $5fad: $28 $2a

    ld c, c                                       ; $5faf: $49
    ld l, l                                       ; $5fb0: $6d
    ld [bc], a                                    ; $5fb1: $02
    adc d                                         ; $5fb2: $8a
    sbc d                                         ; $5fb3: $9a
    ld a, a                                       ; $5fb4: $7f
    ld l, h                                       ; $5fb5: $6c
    ldh [$ea], a                                  ; $5fb6: $e0 $ea
    rst $18                                       ; $5fb8: $df
    db $e4                                        ; $5fb9: $e4
    xor d                                         ; $5fba: $aa
    sbc d                                         ; $5fbb: $9a
    cp a                                          ; $5fbc: $bf
    and [hl]                                      ; $5fbd: $a6
    cp [hl]                                       ; $5fbe: $be
    xor d                                         ; $5fbf: $aa
    rst $38                                       ; $5fc0: $ff
    push af                                       ; $5fc1: $f5
    cpl                                           ; $5fc2: $2f
    ccf                                           ; $5fc3: $3f
    ld l, d                                       ; $5fc4: $6a
    ld a, e                                       ; $5fc5: $7b
    db $f4                                        ; $5fc6: $f4
    cp $de                                        ; $5fc7: $fe $de
    rst $38                                       ; $5fc9: $ff
    call z, $ccee                                 ; $5fca: $cc $ee $cc
    db $fd                                        ; $5fcd: $fd
    ld [bc], a                                    ; $5fce: $02
    ld [$1402], sp                                ; $5fcf: $08 $02 $14
    ld [bc], a                                    ; $5fd2: $02
    jr jr_0ea_5fd7                                ; $5fd3: $18 $02

    db $10                                        ; $5fd5: $10
    add h                                         ; $5fd6: $84

jr_0ea_5fd7:
    ld [$1018], sp                                ; $5fd7: $08 $18 $10
    nop                                           ; $5fda: $00
    inc b                                         ; $5fdb: $04
    db $10                                        ; $5fdc: $10
    sub b                                         ; $5fdd: $90
    inc b                                         ; $5fde: $04
    inc e                                         ; $5fdf: $1c
    inc b                                         ; $5fe0: $04
    inc d                                         ; $5fe1: $14
    ld [de], a                                    ; $5fe2: $12
    ld a, [de]                                    ; $5fe3: $1a
    dec b                                         ; $5fe4: $05
    dec d                                         ; $5fe5: $15
    add hl, bc                                    ; $5fe6: $09
    dec bc                                        ; $5fe7: $0b
    ld bc, $0c15                                  ; $5fe8: $01 $15 $0c
    ld c, $8c                                     ; $5feb: $0e $8c
    call c, $0002                                 ; $5fed: $dc $02 $00
    ld [bc], a                                    ; $5ff0: $02
    cp a                                          ; $5ff1: $bf
    ld [bc], a                                    ; $5ff2: $02
    ld e, e                                       ; $5ff3: $5b
    ld [bc], a                                    ; $5ff4: $02
    cp d                                          ; $5ff5: $ba
    add d                                         ; $5ff6: $82
    ld [hl], d                                    ; $5ff7: $72
    ld [hl-], a                                   ; $5ff8: $32
    ld [bc], a                                    ; $5ff9: $02
    ld a, [c]                                     ; $5ffa: $f2
    ld [bc], a                                    ; $5ffb: $02
    inc b                                         ; $5ffc: $04
    ld [bc], a                                    ; $5ffd: $02
    ld h, $02                                     ; $5ffe: $26 $02
    ld b, $02                                     ; $6000: $06 $02
    ld b, [hl]                                    ; $6002: $46
    ld [bc], a                                    ; $6003: $02
    inc b                                         ; $6004: $04
    ld [bc], a                                    ; $6005: $02
    and [hl]                                      ; $6006: $a6
    ld [bc], a                                    ; $6007: $02
    ld d, l                                       ; $6008: $55
    ld b, $00                                     ; $6009: $06 $00
    sbc d                                         ; $600b: $9a
    ld h, h                                       ; $600c: $64
    ld [hl], h                                    ; $600d: $74
    and $ee                                       ; $600e: $e6 $ee
    and $f7                                       ; $6010: $e6 $f7
    and $ee                                       ; $6012: $e6 $ee
    and $f7                                       ; $6014: $e6 $f7
    and $ee                                       ; $6016: $e6 $ee
    ld h, h                                       ; $6018: $64
    ld [hl], l                                    ; $6019: $75
    ld h, h                                       ; $601a: $64
    ld l, [hl]                                    ; $601b: $6e
    ld h, h                                       ; $601c: $64
    ld [hl], l                                    ; $601d: $75
    ld [hl+], a                                   ; $601e: $22
    ld a, [hl+]                                   ; $601f: $2a
    ld b, h                                       ; $6020: $44
    ld d, l                                       ; $6021: $55
    ld h, d                                       ; $6022: $62
    ld l, d                                       ; $6023: $6a
    ld d, h                                       ; $6024: $54
    ld d, l                                       ; $6025: $55
    ld [$8f00], sp                                ; $6026: $08 $00 $8f
    jr jr_0ea_6063                                ; $6029: $18 $38

    dec b                                         ; $602b: $05
    dec d                                         ; $602c: $15
    ld [$012a], sp                                ; $602d: $08 $2a $01
    dec d                                         ; $6030: $15
    inc bc                                        ; $6031: $03
    dec hl                                        ; $6032: $2b
    dec b                                         ; $6033: $05
    ld de, $2e0e                                  ; $6034: $11 $0e $2e
    inc b                                         ; $6037: $04
    ld [bc], a                                    ; $6038: $02
    inc d                                         ; $6039: $14
    add a                                         ; $603a: $87
    inc a                                         ; $603b: $3c
    nop                                           ; $603c: $00
    inc d                                         ; $603d: $14
    ld [bc], a                                    ; $603e: $02
    ld a, [hl+]                                   ; $603f: $2a
    dec b                                         ; $6040: $05
    dec d                                         ; $6041: $15
    ld b, $00                                     ; $6042: $06 $00
    rst $38                                       ; $6044: $ff
    ld de, $f506                                  ; $6045: $11 $06 $f5
    inc c                                         ; $6048: $0c
    ld a, [c]                                     ; $6049: $f2
    ld bc, $f7e7                                  ; $604a: $01 $e7 $f7
    add sp, -$01                                  ; $604d: $e8 $ff
    ldh a, [rSC]                                  ; $604f: $f0 $02
    rst $30                                       ; $6051: $f7
    rst $30                                       ; $6052: $f7
    rst $30                                       ; $6053: $f7
    cp $f7                                        ; $6054: $fe $f7
    nop                                           ; $6056: $00
    add l                                         ; $6057: $85
    ld a, [bc]                                    ; $6058: $0a
    nop                                           ; $6059: $00
    add hl, de                                    ; $605a: $19
    nop                                           ; $605b: $00
    jr nz, jr_0ea_6062                            ; $605c: $20 $04

    nop                                           ; $605e: $00
    add d                                         ; $605f: $82
    dec bc                                        ; $6060: $0b
    ld b, b                                       ; $6061: $40

jr_0ea_6062:
    inc bc                                        ; $6062: $03

jr_0ea_6063:
    nop                                           ; $6063: $00
    add c                                         ; $6064: $81
    ld b, b                                       ; $6065: $40
    dec b                                         ; $6066: $05
    nop                                           ; $6067: $00
    ld [bc], a                                    ; $6068: $02
    ld bc, $2602                                  ; $6069: $01 $02 $26
    ld [bc], a                                    ; $606c: $02
    ld sp, $9b02                                  ; $606d: $31 $02 $9b
    ld [bc], a                                    ; $6070: $02
    sbc d                                         ; $6071: $9a
    inc bc                                        ; $6072: $03
    add b                                         ; $6073: $80
    rlca                                          ; $6074: $07
    nop                                           ; $6075: $00
    add e                                         ; $6076: $83
    ld b, b                                       ; $6077: $40
    nop                                           ; $6078: $00
    ld b, b                                       ; $6079: $40
    inc bc                                        ; $607a: $03
    nop                                           ; $607b: $00
    add h                                         ; $607c: $84
    ret nz                                        ; $607d: $c0

    nop                                           ; $607e: $00
    add h                                         ; $607f: $84
    inc b                                         ; $6080: $04
    dec b                                         ; $6081: $05
    nop                                           ; $6082: $00
    adc a                                         ; $6083: $8f
    ld de, $0200                                  ; $6084: $11 $00 $02
    nop                                           ; $6087: $00
    ld de, $2200                                  ; $6088: $11 $00 $22
    nop                                           ; $608b: $00
    ld de, $0100                                  ; $608c: $11 $00 $01
    nop                                           ; $608f: $00
    ld [bc], a                                    ; $6090: $02
    nop                                           ; $6091: $00
    dec b                                         ; $6092: $05
    inc bc                                        ; $6093: $03
    nop                                           ; $6094: $00
    add c                                         ; $6095: $81
    inc b                                         ; $6096: $04
    rlca                                          ; $6097: $07
    nop                                           ; $6098: $00
    adc c                                         ; $6099: $89
    stop                                          ; $609a: $10 $00
    add b                                         ; $609c: $80
    nop                                           ; $609d: $00
    stop                                          ; $609e: $10 $00
    add b                                         ; $60a0: $80
    nop                                           ; $60a1: $00
    inc b                                         ; $60a2: $04
    inc bc                                        ; $60a3: $03
    nop                                           ; $60a4: $00
    add c                                         ; $60a5: $81
    db $10                                        ; $60a6: $10
    ld [bc], a                                    ; $60a7: $02
    nop                                           ; $60a8: $00
    ld [bc], a                                    ; $60a9: $02
    ld [$8a02], sp                                ; $60aa: $08 $02 $8a
    ld [bc], a                                    ; $60ad: $02
    ld a, [bc]                                    ; $60ae: $0a
    ld [bc], a                                    ; $60af: $02
    ld a, [de]                                    ; $60b0: $1a
    inc b                                         ; $60b1: $04
    inc sp                                        ; $60b2: $33
    ld [bc], a                                    ; $60b3: $02
    ld [hl+], a                                   ; $60b4: $22
    ld [bc], a                                    ; $60b5: $02
    ld [hl], e                                    ; $60b6: $73
    ld [bc], a                                    ; $60b7: $02
    and e                                         ; $60b8: $a3
    ld [bc], a                                    ; $60b9: $02
    inc sp                                        ; $60ba: $33
    rrca                                          ; $60bb: $0f

jr_0ea_60bc:
    nop                                           ; $60bc: $00
    add c                                         ; $60bd: $81
    db $10                                        ; $60be: $10
    inc bc                                        ; $60bf: $03
    nop                                           ; $60c0: $00
    add c                                         ; $60c1: $81
    db $10                                        ; $60c2: $10
    inc bc                                        ; $60c3: $03
    nop                                           ; $60c4: $00
    add c                                         ; $60c5: $81
    db $10                                        ; $60c6: $10
    ld [bc], a                                    ; $60c7: $02
    nop                                           ; $60c8: $00
    add d                                         ; $60c9: $82
    ld b, b                                       ; $60ca: $40
    ld d, b                                       ; $60cb: $50
    inc bc                                        ; $60cc: $03
    nop                                           ; $60cd: $00
    add c                                         ; $60ce: $81
    ld bc, $001f                                  ; $60cf: $01 $1f $00
    add c                                         ; $60d2: $81
    ld bc, $000c                                  ; $60d3: $01 $0c $00
    rst $38                                       ; $60d6: $ff
    ld de, $f506                                  ; $60d7: $11 $06 $f5
    inc c                                         ; $60da: $0c
    ld a, [c]                                     ; $60db: $f2
    ld bc, $f7e6                                  ; $60dc: $01 $e6 $f7
    push hl                                       ; $60df: $e5
    rst $38                                       ; $60e0: $ff
    and $04                                       ; $60e1: $e6 $04
    push af                                       ; $60e3: $f5
    or $f5                                        ; $60e4: $f6 $f5
    cp $f5                                        ; $60e6: $fe $f5
    inc b                                         ; $60e8: $04
    add h                                         ; $60e9: $84
    ld c, $0f                                     ; $60ea: $0e $0f
    ld de, $0231                                  ; $60ec: $11 $31 $02
    ld h, $8e                                     ; $60ef: $26 $8e
    ld c, [hl]                                    ; $60f1: $4e
    ld b, b                                       ; $60f2: $40
    ld a, a                                       ; $60f3: $7f
    ld h, b                                       ; $60f4: $60
    and h                                         ; $60f5: $a4
    and b                                         ; $60f6: $a0
    cp a                                          ; $60f7: $bf
    and b                                         ; $60f8: $a0
    rst $38                                       ; $60f9: $ff
    db $e4                                        ; $60fa: $e4
    cp a                                          ; $60fb: $bf
    xor d                                         ; $60fc: $aa
    rst $18                                       ; $60fd: $df
    push de                                       ; $60fe: $d5
    ld [bc], a                                    ; $60ff: $02
    cp a                                          ; $6100: $bf
    add d                                         ; $6101: $82
    ld l, [hl]                                    ; $6102: $6e
    ld l, d                                       ; $6103: $6a
    ld [bc], a                                    ; $6104: $02
    sbc c                                         ; $6105: $99
    add d                                         ; $6106: $82
    ld c, d                                       ; $6107: $4a
    ld c, [hl]                                    ; $6108: $4e
    ld [bc], a                                    ; $6109: $02
    ld h, h                                       ; $610a: $64
    ld [bc], a                                    ; $610b: $02
    ld h, l                                       ; $610c: $65
    add h                                         ; $610d: $84
    jr z, @+$2c                                   ; $610e: $28 $2a

    ld c, e                                       ; $6110: $4b
    ld l, a                                       ; $6111: $6f
    ld [bc], a                                    ; $6112: $02
    sbc e                                         ; $6113: $9b
    sbc d                                         ; $6114: $9a
    ld a, a                                       ; $6115: $7f
    ld l, h                                       ; $6116: $6c
    db $e4                                        ; $6117: $e4
    ld a, [$e4df]                                 ; $6118: $fa $df $e4
    rst $28                                       ; $611b: $ef
    db $db                                        ; $611c: $db
    cp a                                          ; $611d: $bf
    and [hl]                                      ; $611e: $a6
    cp a                                          ; $611f: $bf
    xor d                                         ; $6120: $aa
    rst $38                                       ; $6121: $ff
    push af                                       ; $6122: $f5
    cpl                                           ; $6123: $2f
    ccf                                           ; $6124: $3f
    ld l, d                                       ; $6125: $6a
    ld a, e                                       ; $6126: $7b
    push af                                       ; $6127: $f5
    rst $38                                       ; $6128: $ff
    sbc $ff                                       ; $6129: $de $ff
    call z, $ccee                                 ; $612b: $cc $ee $cc
    db $fd                                        ; $612e: $fd
    ld [bc], a                                    ; $612f: $02
    jr jr_0ea_6134                                ; $6130: $18 $02

    inc d                                         ; $6132: $14
    ld [bc], a                                    ; $6133: $02

jr_0ea_6134:
    inc e                                         ; $6134: $1c
    ld [bc], a                                    ; $6135: $02
    jr jr_0ea_60bc                                ; $6136: $18 $84

    ld [$1018], sp                                ; $6138: $08 $18 $10
    nop                                           ; $613b: $00
    ld [bc], a                                    ; $613c: $02
    db $10                                        ; $613d: $10
    ld [bc], a                                    ; $613e: $02
    jr @-$6e                                      ; $613f: $18 $90

    inc b                                         ; $6141: $04
    inc e                                         ; $6142: $1c
    inc c                                         ; $6143: $0c
    inc e                                         ; $6144: $1c
    ld [de], a                                    ; $6145: $12
    ld a, [de]                                    ; $6146: $1a
    dec b                                         ; $6147: $05
    dec d                                         ; $6148: $15
    add hl, bc                                    ; $6149: $09
    dec bc                                        ; $614a: $0b
    add hl, bc                                    ; $614b: $09
    dec e                                         ; $614c: $1d
    inc c                                         ; $614d: $0c
    ld c, $8c                                     ; $614e: $0e $8c
    call c, $0002                                 ; $6150: $dc $02 $00
    ld [bc], a                                    ; $6153: $02
    cp a                                          ; $6154: $bf
    ld [bc], a                                    ; $6155: $02
    ld a, e                                       ; $6156: $7b
    ld [bc], a                                    ; $6157: $02
    cp d                                          ; $6158: $ba
    add d                                         ; $6159: $82
    ld [hl], d                                    ; $615a: $72
    ld [hl-], a                                   ; $615b: $32
    ld [bc], a                                    ; $615c: $02
    ld a, [c]                                     ; $615d: $f2
    ld [bc], a                                    ; $615e: $02
    ld b, $04                                     ; $615f: $06 $04
    ld h, $02                                     ; $6161: $26 $02
    ld b, [hl]                                    ; $6163: $46
    ld [bc], a                                    ; $6164: $02
    inc b                                         ; $6165: $04
    ld [bc], a                                    ; $6166: $02
    and [hl]                                      ; $6167: $a6
    ld [bc], a                                    ; $6168: $02
    ld d, a                                       ; $6169: $57
    ld b, $00                                     ; $616a: $06 $00
    sbc d                                         ; $616c: $9a
    ld h, h                                       ; $616d: $64
    ld [hl], h                                    ; $616e: $74
    and $ee                                       ; $616f: $e6 $ee
    and $f7                                       ; $6171: $e6 $f7
    and $ee                                       ; $6173: $e6 $ee
    and $f7                                       ; $6175: $e6 $f7
    and $ee                                       ; $6177: $e6 $ee
    ld h, [hl]                                    ; $6179: $66
    ld [hl], a                                    ; $617a: $77
    ld h, h                                       ; $617b: $64
    ld l, [hl]                                    ; $617c: $6e
    ld h, h                                       ; $617d: $64
    ld [hl], l                                    ; $617e: $75
    ld [hl+], a                                   ; $617f: $22
    ld a, [hl+]                                   ; $6180: $2a
    ld h, h                                       ; $6181: $64
    ld [hl], l                                    ; $6182: $75
    ld h, d                                       ; $6183: $62
    ld l, d                                       ; $6184: $6a
    ld d, [hl]                                    ; $6185: $56
    ld d, a                                       ; $6186: $57
    ld [$9800], sp                                ; $6187: $08 $00 $98
    jr jr_0ea_61c4                                ; $618a: $18 $38

    dec b                                         ; $618c: $05
    dec d                                         ; $618d: $15
    ld [$012a], sp                                ; $618e: $08 $2a $01
    dec d                                         ; $6191: $15
    inc bc                                        ; $6192: $03
    dec hl                                        ; $6193: $2b
    rlca                                          ; $6194: $07
    ld de, $2e0e                                  ; $6195: $11 $0e $2e
    inc c                                         ; $6198: $0c
    inc e                                         ; $6199: $1c
    inc d                                         ; $619a: $14
    ld a, $00                                     ; $619b: $3e $00
    inc d                                         ; $619d: $14
    ld b, $2e                                     ; $619e: $06 $2e
    dec b                                         ; $61a0: $05
    dec d                                         ; $61a1: $15
    ld b, $00                                     ; $61a2: $06 $00
    rst $38                                       ; $61a4: $ff
    ld de, $f506                                  ; $61a5: $11 $06 $f5
    inc c                                         ; $61a8: $0c
    ld a, [c]                                     ; $61a9: $f2
    ld bc, $f7e7                                  ; $61aa: $01 $e7 $f7
    add sp, -$01                                  ; $61ad: $e8 $ff
    ldh a, [$03]                                  ; $61af: $f0 $03
    rst $30                                       ; $61b1: $f7
    or $f7                                        ; $61b2: $f6 $f7
    cp $f7                                        ; $61b4: $fe $f7
    nop                                           ; $61b6: $00
    add l                                         ; $61b7: $85
    ld a, [bc]                                    ; $61b8: $0a
    nop                                           ; $61b9: $00
    add hl, de                                    ; $61ba: $19
    nop                                           ; $61bb: $00
    ld hl, $0004                                  ; $61bc: $21 $04 $00
    add d                                         ; $61bf: $82
    dec de                                        ; $61c0: $1b
    ld b, b                                       ; $61c1: $40
    inc bc                                        ; $61c2: $03
    nop                                           ; $61c3: $00

jr_0ea_61c4:
    add c                                         ; $61c4: $81
    ld b, b                                       ; $61c5: $40
    dec b                                         ; $61c6: $05
    nop                                           ; $61c7: $00
    ld [bc], a                                    ; $61c8: $02
    ld de, $2602                                  ; $61c9: $11 $02 $26
    ld [bc], a                                    ; $61cc: $02
    ld sp, $9b02                                  ; $61cd: $31 $02 $9b
    ld [bc], a                                    ; $61d0: $02
    sbc d                                         ; $61d1: $9a
    inc bc                                        ; $61d2: $03
    add b                                         ; $61d3: $80
    rlca                                          ; $61d4: $07
    nop                                           ; $61d5: $00
    add e                                         ; $61d6: $83
    ld b, b                                       ; $61d7: $40
    nop                                           ; $61d8: $00
    ld b, b                                       ; $61d9: $40
    inc bc                                        ; $61da: $03
    nop                                           ; $61db: $00
    add h                                         ; $61dc: $84
    ret nz                                        ; $61dd: $c0

    nop                                           ; $61de: $00
    add h                                         ; $61df: $84
    inc b                                         ; $61e0: $04
    dec b                                         ; $61e1: $05
    nop                                           ; $61e2: $00
    sub e                                         ; $61e3: $93
    ld de, $0200                                  ; $61e4: $11 $00 $02
    nop                                           ; $61e7: $00
    ld de, $2200                                  ; $61e8: $11 $00 $22
    nop                                           ; $61eb: $00
    ld de, $0200                                  ; $61ec: $11 $00 $02
    nop                                           ; $61ef: $00
    inc b                                         ; $61f0: $04
    nop                                           ; $61f1: $00
    ld a, [bc]                                    ; $61f2: $0a
    nop                                           ; $61f3: $00
    ld bc, $0800                                  ; $61f4: $01 $00 $08
    rlca                                          ; $61f7: $07
    nop                                           ; $61f8: $00
    add l                                         ; $61f9: $85
    jr nz, jr_0ea_61fc                            ; $61fa: $20 $00

jr_0ea_61fc:
    stop                                          ; $61fc: $10 $00
    jr nz, @+$05                                  ; $61fe: $20 $03

    nop                                           ; $6200: $00
    add c                                         ; $6201: $81
    ld [$0003], sp                                ; $6202: $08 $03 $00
    add e                                         ; $6205: $83
    jr nz, jr_0ea_6208                            ; $6206: $20 $00

jr_0ea_6208:
    db $10                                        ; $6208: $10
    ld [bc], a                                    ; $6209: $02
    add h                                         ; $620a: $84
    ld [bc], a                                    ; $620b: $02
    ld b, l                                       ; $620c: $45
    inc b                                         ; $620d: $04
    dec c                                         ; $620e: $0d

jr_0ea_620f:
    inc b                                         ; $620f: $04
    add hl, de                                    ; $6210: $19
    ld [bc], a                                    ; $6211: $02
    ld de, $3902                                  ; $6212: $11 $02 $39
    inc b                                         ; $6215: $04
    ld e, c                                       ; $6216: $59
    rrca                                          ; $6217: $0f
    nop                                           ; $6218: $00
    adc l                                         ; $6219: $8d
    stop                                          ; $621a: $10 $00
    ld [$1000], sp                                ; $621c: $08 $00 $10
    add b                                         ; $621f: $80
    adc b                                         ; $6220: $88
    add b                                         ; $6221: $80
    sub b                                         ; $6222: $90
    add b                                         ; $6223: $80
    adc b                                         ; $6224: $88
    ret nz                                        ; $6225: $c0

    ret nc                                        ; $6226: $d0

    inc bc                                        ; $6227: $03
    add b                                         ; $6228: $80
    add c                                         ; $6229: $81
    add c                                         ; $622a: $81
    rra                                           ; $622b: $1f
    nop                                           ; $622c: $00
    add c                                         ; $622d: $81
    ld bc, $000c                                  ; $622e: $01 $0c $00
    rst $38                                       ; $6231: $ff
    ld de, $f506                                  ; $6232: $11 $06 $f5
    inc c                                         ; $6235: $0c
    ld a, [c]                                     ; $6236: $f2
    ld bc, $f6e6                                  ; $6237: $01 $e6 $f6
    push hl                                       ; $623a: $e5
    cp $e5                                        ; $623b: $fe $e5
    inc b                                         ; $623d: $04
    push af                                       ; $623e: $f5
    or $f5                                        ; $623f: $f6 $f5
    cp $f5                                        ; $6241: $fe $f5
    inc b                                         ; $6243: $04
    ld [bc], a                                    ; $6244: $02
    rlca                                          ; $6245: $07
    sub d                                         ; $6246: $92
    ld [$1318], sp                                ; $6247: $08 $18 $13
    inc sp                                        ; $624a: $33
    cpl                                           ; $624b: $2f
    jr z, @+$41                                   ; $624c: $28 $3f

    jr nc, jr_0ea_62a2                            ; $624e: $30 $52

    ld d, b                                       ; $6250: $50
    ld e, a                                       ; $6251: $5f
    ld d, b                                       ; $6252: $50
    ld a, a                                       ; $6253: $7f
    ld [hl], d                                    ; $6254: $72
    ld e, a                                       ; $6255: $5f
    ld d, l                                       ; $6256: $55
    ld l, a                                       ; $6257: $6f
    ld l, d                                       ; $6258: $6a
    ld [bc], a                                    ; $6259: $02
    ld e, a                                       ; $625a: $5f
    add d                                         ; $625b: $82
    or a                                          ; $625c: $b7
    or l                                          ; $625d: $b5
    ld [bc], a                                    ; $625e: $02
    ld c, h                                       ; $625f: $4c
    add d                                         ; $6260: $82
    dec h                                         ; $6261: $25
    daa                                           ; $6262: $27
    ld [bc], a                                    ; $6263: $02
    ld [hl-], a                                   ; $6264: $32
    ld [bc], a                                    ; $6265: $02
    or d                                          ; $6266: $b2
    add h                                         ; $6267: $84
    ld e, $1f                                     ; $6268: $1e $1f
    dec h                                         ; $626a: $25
    or a                                          ; $626b: $b7
    ld [bc], a                                    ; $626c: $02
    rst $28                                       ; $626d: $ef
    sbc d                                         ; $626e: $9a
    ccf                                           ; $626f: $3f
    ld [hl], $72                                  ; $6270: $36 $72
    ld a, l                                       ; $6272: $7d
    rst $28                                       ; $6273: $ef
    ld [hl], d                                    ; $6274: $72
    ld [hl], a                                    ; $6275: $77
    ld l, l                                       ; $6276: $6d
    rst $18                                       ; $6277: $df
    ld d, e                                       ; $6278: $53
    rst $18                                       ; $6279: $df
    ld d, l                                       ; $627a: $55
    rst $38                                       ; $627b: $ff
    ld a, d                                       ; $627c: $7a
    sub a                                         ; $627d: $97
    sbc a                                         ; $627e: $9f
    or l                                          ; $627f: $b5
    cp l                                          ; $6280: $bd
    ld a, d                                       ; $6281: $7a
    ld a, a                                       ; $6282: $7f
    rst $28                                       ; $6283: $ef
    rst $38                                       ; $6284: $ff
    ld h, [hl]                                    ; $6285: $66
    ld [hl], a                                    ; $6286: $77
    ld h, [hl]                                    ; $6287: $66
    ld a, [hl]                                    ; $6288: $7e
    ld [bc], a                                    ; $6289: $02
    jr z, jr_0ea_628e                             ; $628a: $28 $02

    jr c, jr_0ea_620f                             ; $628c: $38 $81

jr_0ea_628e:
    inc [hl]                                      ; $628e: $34
    ld [bc], a                                    ; $628f: $02
    inc a                                         ; $6290: $3c
    sbc c                                         ; $6291: $99
    inc e                                         ; $6292: $1c
    jr jr_0ea_62cd                                ; $6293: $18 $38

    jr z, jr_0ea_62af                             ; $6295: $28 $18

    jr c, jr_0ea_62c1                             ; $6297: $38 $28

    jr nc, @+$12                                  ; $6299: $30 $10

    jr c, jr_0ea_62b5                             ; $629b: $38 $18

    inc h                                         ; $629d: $24
    inc a                                         ; $629e: $3c
    inc l                                         ; $629f: $2c
    inc a                                         ; $62a0: $3c
    ld [de], a                                    ; $62a1: $12

jr_0ea_62a2:
    ld a, [hl-]                                   ; $62a2: $3a
    dec h                                         ; $62a3: $25
    dec [hl]                                      ; $62a4: $35
    add hl, bc                                    ; $62a5: $09
    dec hl                                        ; $62a6: $2b
    add hl, bc                                    ; $62a7: $09
    dec e                                         ; $62a8: $1d
    inc c                                         ; $62a9: $0c
    ld l, $02                                     ; $62aa: $2e $02
    nop                                           ; $62ac: $00
    ld [bc], a                                    ; $62ad: $02
    cp a                                          ; $62ae: $bf

jr_0ea_62af:
    ld [bc], a                                    ; $62af: $02
    ld a, e                                       ; $62b0: $7b
    ld [bc], a                                    ; $62b1: $02
    cp d                                          ; $62b2: $ba
    add d                                         ; $62b3: $82
    ld a, [c]                                     ; $62b4: $f2

jr_0ea_62b5:
    or d                                          ; $62b5: $b2
    ld [bc], a                                    ; $62b6: $02
    ld a, [c]                                     ; $62b7: $f2
    dec b                                         ; $62b8: $05
    ld h, $81                                     ; $62b9: $26 $81
    ld h, [hl]                                    ; $62bb: $66
    ld [bc], a                                    ; $62bc: $02
    ld b, [hl]                                    ; $62bd: $46
    inc b                                         ; $62be: $04
    and [hl]                                      ; $62bf: $a6
    ld [bc], a                                    ; $62c0: $02

jr_0ea_62c1:
    rst $18                                       ; $62c1: $df
    ld b, $00                                     ; $62c2: $06 $00
    sbc d                                         ; $62c4: $9a
    and $f7                                       ; $62c5: $e6 $f7
    and $ee                                       ; $62c7: $e6 $ee
    and $f7                                       ; $62c9: $e6 $f7
    and $ee                                       ; $62cb: $e6 $ee

jr_0ea_62cd:
    and $f7                                       ; $62cd: $e6 $f7
    and $ee                                       ; $62cf: $e6 $ee
    ld h, [hl]                                    ; $62d1: $66
    ld [hl], a                                    ; $62d2: $77
    ld h, h                                       ; $62d3: $64
    ld l, [hl]                                    ; $62d4: $6e
    ld h, h                                       ; $62d5: $64
    ld [hl], l                                    ; $62d6: $75
    ld [hl+], a                                   ; $62d7: $22
    ld a, [hl+]                                   ; $62d8: $2a
    ld h, h                                       ; $62d9: $64
    ld [hl], a                                    ; $62da: $77
    ld h, d                                       ; $62db: $62
    ld l, d                                       ; $62dc: $6a
    sub $d7                                       ; $62dd: $d6 $d7
    ld b, $00                                     ; $62df: $06 $00
    sbc d                                         ; $62e1: $9a
    inc c                                         ; $62e2: $0c
    inc e                                         ; $62e3: $1c
    jr jr_0ea_631e                                ; $62e4: $18 $38

    dec b                                         ; $62e6: $05
    dec d                                         ; $62e7: $15
    ld [$012a], sp                                ; $62e8: $08 $2a $01
    dec d                                         ; $62eb: $15
    inc bc                                        ; $62ec: $03
    dec hl                                        ; $62ed: $2b
    rlca                                          ; $62ee: $07
    ld de, $2e0e                                  ; $62ef: $11 $0e $2e
    inc c                                         ; $62f2: $0c
    inc e                                         ; $62f3: $1c
    inc d                                         ; $62f4: $14
    ld a, $0a                                     ; $62f5: $3e $0a
    ld e, $06                                     ; $62f7: $1e $06
    ld l, $0d                                     ; $62f9: $2e $0d
    rra                                           ; $62fb: $1f
    ld b, $00                                     ; $62fc: $06 $00
    rst $38                                       ; $62fe: $ff
    ld de, $f506                                  ; $62ff: $11 $06 $f5
    inc c                                         ; $6302: $0c
    ld a, [c]                                     ; $6303: $f2
    ld bc, $f7e7                                  ; $6304: $01 $e7 $f7
    add sp, -$01                                  ; $6307: $e8 $ff
    ldh a, [$03]                                  ; $6309: $f0 $03
    rst $30                                       ; $630b: $f7
    or $f7                                        ; $630c: $f6 $f7
    cp $f7                                        ; $630e: $fe $f7
    nop                                           ; $6310: $00
    add l                                         ; $6311: $85
    ld c, $00                                     ; $6312: $0e $00
    add hl, de                                    ; $6314: $19
    nop                                           ; $6315: $00
    ld hl, $0003                                  ; $6316: $21 $03 $00
    add e                                         ; $6319: $83
    ld b, b                                       ; $631a: $40
    dec de                                        ; $631b: $1b
    ld b, b                                       ; $631c: $40
    inc bc                                        ; $631d: $03

jr_0ea_631e:
    nop                                           ; $631e: $00
    add c                                         ; $631f: $81
    ld b, b                                       ; $6320: $40
    dec b                                         ; $6321: $05
    nop                                           ; $6322: $00
    ld [bc], a                                    ; $6323: $02
    ld de, $2602                                  ; $6324: $11 $02 $26
    ld [bc], a                                    ; $6327: $02
    ld sp, $9b02                                  ; $6328: $31 $02 $9b
    ld [bc], a                                    ; $632b: $02
    sbc d                                         ; $632c: $9a
    inc bc                                        ; $632d: $03
    add b                                         ; $632e: $80
    rlca                                          ; $632f: $07
    nop                                           ; $6330: $00
    add e                                         ; $6331: $83
    ld b, b                                       ; $6332: $40
    nop                                           ; $6333: $00
    ld b, b                                       ; $6334: $40
    inc bc                                        ; $6335: $03
    nop                                           ; $6336: $00
    add h                                         ; $6337: $84
    ret nz                                        ; $6338: $c0

    nop                                           ; $6339: $00
    add h                                         ; $633a: $84
    inc b                                         ; $633b: $04
    dec b                                         ; $633c: $05
    nop                                           ; $633d: $00
    sub e                                         ; $633e: $93
    ld de, $0200                                  ; $633f: $11 $00 $02
    nop                                           ; $6342: $00
    ld de, $2200                                  ; $6343: $11 $00 $22
    nop                                           ; $6346: $00
    ld de, $0200                                  ; $6347: $11 $00 $02
    nop                                           ; $634a: $00
    dec b                                         ; $634b: $05
    nop                                           ; $634c: $00
    ld a, [bc]                                    ; $634d: $0a
    nop                                           ; $634e: $00
    ld bc, $0800                                  ; $634f: $01 $00 $08
    rlca                                          ; $6352: $07
    nop                                           ; $6353: $00
    add l                                         ; $6354: $85
    jr nz, jr_0ea_6357                            ; $6355: $20 $00

jr_0ea_6357:
    stop                                          ; $6357: $10 $00
    jr nz, @+$05                                  ; $6359: $20 $03

    nop                                           ; $635b: $00
    add a                                         ; $635c: $87
    ld [$1000], sp                                ; $635d: $08 $00 $10
    nop                                           ; $6360: $00
    jr nz, jr_0ea_6363                            ; $6361: $20 $00

jr_0ea_6363:
    db $10                                        ; $6363: $10
    ld [bc], a                                    ; $6364: $02
    add h                                         ; $6365: $84
    ld [bc], a                                    ; $6366: $02
    ld b, l                                       ; $6367: $45
    inc b                                         ; $6368: $04
    dec c                                         ; $6369: $0d
    ld b, $19                                     ; $636a: $06 $19
    ld [bc], a                                    ; $636c: $02
    add hl, sp                                    ; $636d: $39
    inc b                                         ; $636e: $04
    ld e, c                                       ; $636f: $59
    ld [bc], a                                    ; $6370: $02
    jr nz, jr_0ea_6380                            ; $6371: $20 $0d

    nop                                           ; $6373: $00
    adc l                                         ; $6374: $8d
    stop                                          ; $6375: $10 $00
    ld [$1000], sp                                ; $6377: $08 $00 $10
    add b                                         ; $637a: $80
    adc b                                         ; $637b: $88
    add b                                         ; $637c: $80
    sub b                                         ; $637d: $90
    add b                                         ; $637e: $80
    adc b                                         ; $637f: $88

jr_0ea_6380:
    ret nz                                        ; $6380: $c0

    ret nc                                        ; $6381: $d0

    inc bc                                        ; $6382: $03
    add b                                         ; $6383: $80
    add c                                         ; $6384: $81
    add c                                         ; $6385: $81
    rra                                           ; $6386: $1f

jr_0ea_6387:
    nop                                           ; $6387: $00
    add e                                         ; $6388: $83
    ld bc, $0200                                  ; $6389: $01 $00 $02
    ld a, [bc]                                    ; $638c: $0a
    nop                                           ; $638d: $00
    rst $38                                       ; $638e: $ff
    ld de, $f506                                  ; $638f: $11 $06 $f5
    inc c                                         ; $6392: $0c
    ld a, [c]                                     ; $6393: $f2
    ld bc, $f6e6                                  ; $6394: $01 $e6 $f6
    push hl                                       ; $6397: $e5
    cp $e5                                        ; $6398: $fe $e5
    inc b                                         ; $639a: $04
    push af                                       ; $639b: $f5
    or $f5                                        ; $639c: $f6 $f5
    cp $f5                                        ; $639e: $fe $f5
    inc b                                         ; $63a0: $04
    ld [bc], a                                    ; $63a1: $02
    rlca                                          ; $63a2: $07
    sub d                                         ; $63a3: $92
    ld [$1318], sp                                ; $63a4: $08 $18 $13
    inc sp                                        ; $63a7: $33
    cpl                                           ; $63a8: $2f
    jr z, @+$41                                   ; $63a9: $28 $3f

    jr nc, jr_0ea_63ff                            ; $63ab: $30 $52

    ld d, b                                       ; $63ad: $50
    ld e, a                                       ; $63ae: $5f
    ld d, b                                       ; $63af: $50
    ld a, a                                       ; $63b0: $7f
    ld [hl], d                                    ; $63b1: $72
    ld e, a                                       ; $63b2: $5f
    ld d, l                                       ; $63b3: $55
    ld l, a                                       ; $63b4: $6f
    ld l, d                                       ; $63b5: $6a
    ld [bc], a                                    ; $63b6: $02
    ld e, a                                       ; $63b7: $5f
    add d                                         ; $63b8: $82
    or a                                          ; $63b9: $b7
    or l                                          ; $63ba: $b5
    ld [bc], a                                    ; $63bb: $02
    ld c, h                                       ; $63bc: $4c
    add d                                         ; $63bd: $82
    dec h                                         ; $63be: $25
    daa                                           ; $63bf: $27
    ld [bc], a                                    ; $63c0: $02
    ld [hl-], a                                   ; $63c1: $32
    ld [bc], a                                    ; $63c2: $02
    or d                                          ; $63c3: $b2
    add h                                         ; $63c4: $84
    ld e, $1f                                     ; $63c5: $1e $1f
    dec h                                         ; $63c7: $25
    or a                                          ; $63c8: $b7
    ld [bc], a                                    ; $63c9: $02
    rst $28                                       ; $63ca: $ef
    sbc d                                         ; $63cb: $9a
    ccf                                           ; $63cc: $3f
    ld [hl], $72                                  ; $63cd: $36 $72
    ld a, l                                       ; $63cf: $7d
    rst $28                                       ; $63d0: $ef
    ld [hl], d                                    ; $63d1: $72
    ld [hl], a                                    ; $63d2: $77
    ld l, l                                       ; $63d3: $6d
    rst $18                                       ; $63d4: $df
    ld d, e                                       ; $63d5: $53
    rst $18                                       ; $63d6: $df
    ld d, l                                       ; $63d7: $55
    rst $38                                       ; $63d8: $ff
    ld a, d                                       ; $63d9: $7a
    sub a                                         ; $63da: $97
    sbc a                                         ; $63db: $9f
    or l                                          ; $63dc: $b5
    cp l                                          ; $63dd: $bd
    ld a, d                                       ; $63de: $7a
    ld a, a                                       ; $63df: $7f
    rst $28                                       ; $63e0: $ef
    rst $38                                       ; $63e1: $ff
    ld h, [hl]                                    ; $63e2: $66
    ld [hl], a                                    ; $63e3: $77
    ld h, [hl]                                    ; $63e4: $66
    ld a, [hl]                                    ; $63e5: $7e
    ld [bc], a                                    ; $63e6: $02
    jr z, jr_0ea_63eb                             ; $63e7: $28 $02

    jr c, jr_0ea_6387                             ; $63e9: $38 $9c

jr_0ea_63eb:
    inc [hl]                                      ; $63eb: $34
    inc a                                         ; $63ec: $3c
    dec a                                         ; $63ed: $3d
    dec e                                         ; $63ee: $1d
    add hl, de                                    ; $63ef: $19
    add hl, sp                                    ; $63f0: $39
    dec hl                                        ; $63f1: $2b
    ld a, [de]                                    ; $63f2: $1a
    add hl, sp                                    ; $63f3: $39
    add hl, hl                                    ; $63f4: $29
    ld sp, $3811                                  ; $63f5: $31 $11 $38
    jr jr_0ea_6420                                ; $63f8: $18 $26

    ld a, $2d                                     ; $63fa: $3e $2d
    dec a                                         ; $63fc: $3d
    ld [de], a                                    ; $63fd: $12
    ld a, [hl-]                                   ; $63fe: $3a

jr_0ea_63ff:
    inc h                                         ; $63ff: $24
    dec [hl]                                      ; $6400: $35
    rrca                                          ; $6401: $0f
    cpl                                           ; $6402: $2f
    ld c, $1f                                     ; $6403: $0e $1f
    inc c                                         ; $6405: $0c
    inc l                                         ; $6406: $2c
    ld [bc], a                                    ; $6407: $02
    nop                                           ; $6408: $00
    ld [bc], a                                    ; $6409: $02
    cp a                                          ; $640a: $bf
    ld [bc], a                                    ; $640b: $02
    ld a, e                                       ; $640c: $7b
    ld [bc], a                                    ; $640d: $02
    cp d                                          ; $640e: $ba
    add d                                         ; $640f: $82
    ld a, [c]                                     ; $6410: $f2
    or d                                          ; $6411: $b2
    ld [bc], a                                    ; $6412: $02
    ld a, [c]                                     ; $6413: $f2
    dec b                                         ; $6414: $05
    ld h, $81                                     ; $6415: $26 $81
    ld h, [hl]                                    ; $6417: $66
    ld [bc], a                                    ; $6418: $02
    ld b, [hl]                                    ; $6419: $46
    inc b                                         ; $641a: $04
    and [hl]                                      ; $641b: $a6
    ld [bc], a                                    ; $641c: $02
    rst $18                                       ; $641d: $df
    ld b, $00                                     ; $641e: $06 $00

jr_0ea_6420:
    sbc d                                         ; $6420: $9a
    and $f7                                       ; $6421: $e6 $f7
    and $fe                                       ; $6423: $e6 $fe
    and $f7                                       ; $6425: $e6 $f7
    and $ee                                       ; $6427: $e6 $ee
    and $f7                                       ; $6429: $e6 $f7
    and $ee                                       ; $642b: $e6 $ee
    ld h, [hl]                                    ; $642d: $66
    ld [hl], a                                    ; $642e: $77
    ld h, h                                       ; $642f: $64
    ld l, [hl]                                    ; $6430: $6e
    ld h, h                                       ; $6431: $64
    ld [hl], l                                    ; $6432: $75
    ld [hl+], a                                   ; $6433: $22
    ld a, [hl+]                                   ; $6434: $2a
    ld h, h                                       ; $6435: $64
    ld [hl], a                                    ; $6436: $77
    ld h, d                                       ; $6437: $62
    ld l, d                                       ; $6438: $6a
    sub $d7                                       ; $6439: $d6 $d7
    ld b, $00                                     ; $643b: $06 $00
    sbc d                                         ; $643d: $9a
    inc c                                         ; $643e: $0c
    inc e                                         ; $643f: $1c
    ld [$0038], sp                                ; $6440: $08 $38 $00
    inc d                                         ; $6443: $14
    nop                                           ; $6444: $00
    jr z, jr_0ea_644b                             ; $6445: $28 $04

    inc d                                         ; $6447: $14
    ld [$0428], sp                                ; $6448: $08 $28 $04

jr_0ea_644b:
    inc d                                         ; $644b: $14
    inc c                                         ; $644c: $0c
    inc l                                         ; $644d: $2c
    inc c                                         ; $644e: $0c
    inc e                                         ; $644f: $1c
    inc d                                         ; $6450: $14
    ld a, $0a                                     ; $6451: $3e $0a
    ld e, $06                                     ; $6453: $1e $06
    ld l, $0d                                     ; $6455: $2e $0d
    rra                                           ; $6457: $1f
    ld b, $00                                     ; $6458: $06 $00
    rst $38                                       ; $645a: $ff
    ld de, $f506                                  ; $645b: $11 $06 $f5
    inc c                                         ; $645e: $0c
    ld a, [c]                                     ; $645f: $f2
    ld bc, $f7e7                                  ; $6460: $01 $e7 $f7
    add sp, -$01                                  ; $6463: $e8 $ff
    rst $28                                       ; $6465: $ef
    inc b                                         ; $6466: $04
    rst $30                                       ; $6467: $f7
    or $f7                                        ; $6468: $f6 $f7
    cp $f7                                        ; $646a: $fe $f7
    nop                                           ; $646c: $00
    add l                                         ; $646d: $85
    ld c, $00                                     ; $646e: $0e $00
    add hl, de                                    ; $6470: $19
    nop                                           ; $6471: $00
    ld hl, $0003                                  ; $6472: $21 $03 $00
    add e                                         ; $6475: $83
    ld b, b                                       ; $6476: $40
    dec de                                        ; $6477: $1b
    ld b, b                                       ; $6478: $40
    inc bc                                        ; $6479: $03
    nop                                           ; $647a: $00
    add c                                         ; $647b: $81
    ld b, b                                       ; $647c: $40
    dec b                                         ; $647d: $05
    nop                                           ; $647e: $00
    ld [bc], a                                    ; $647f: $02
    ld de, $2602                                  ; $6480: $11 $02 $26
    ld [bc], a                                    ; $6483: $02
    ld sp, $9b02                                  ; $6484: $31 $02 $9b
    ld [bc], a                                    ; $6487: $02
    sbc d                                         ; $6488: $9a
    inc bc                                        ; $6489: $03
    add b                                         ; $648a: $80
    rlca                                          ; $648b: $07
    nop                                           ; $648c: $00
    add e                                         ; $648d: $83
    ld b, b                                       ; $648e: $40
    nop                                           ; $648f: $00
    ld b, b                                       ; $6490: $40
    inc bc                                        ; $6491: $03
    nop                                           ; $6492: $00
    add h                                         ; $6493: $84
    ret nz                                        ; $6494: $c0

    nop                                           ; $6495: $00
    add h                                         ; $6496: $84
    inc b                                         ; $6497: $04
    dec b                                         ; $6498: $05
    nop                                           ; $6499: $00
    sub c                                         ; $649a: $91
    ld de, $0200                                  ; $649b: $11 $00 $02
    nop                                           ; $649e: $00
    ld de, $0200                                  ; $649f: $11 $00 $02
    nop                                           ; $64a2: $00
    ld de, $0200                                  ; $64a3: $11 $00 $02
    nop                                           ; $64a6: $00
    dec b                                         ; $64a7: $05
    nop                                           ; $64a8: $00
    ld a, [bc]                                    ; $64a9: $0a
    nop                                           ; $64aa: $00
    db $10                                        ; $64ab: $10
    inc bc                                        ; $64ac: $03
    nop                                           ; $64ad: $00
    add c                                         ; $64ae: $81
    db $10                                        ; $64af: $10
    rlca                                          ; $64b0: $07
    nop                                           ; $64b1: $00
    add l                                         ; $64b2: $85
    ld b, b                                       ; $64b3: $40
    nop                                           ; $64b4: $00
    jr nz, jr_0ea_64b7                            ; $64b5: $20 $00

jr_0ea_64b7:
    ld b, b                                       ; $64b7: $40
    inc bc                                        ; $64b8: $03
    nop                                           ; $64b9: $00
    add l                                         ; $64ba: $85
    stop                                          ; $64bb: $10 $00
    jr nz, jr_0ea_64bf                            ; $64bd: $20 $00

jr_0ea_64bf:
    ld b, b                                       ; $64bf: $40
    ld [bc], a                                    ; $64c0: $02
    add h                                         ; $64c1: $84
    ld [bc], a                                    ; $64c2: $02
    ld b, l                                       ; $64c3: $45
    inc b                                         ; $64c4: $04
    dec c                                         ; $64c5: $0d
    ld b, $19                                     ; $64c6: $06 $19
    ld [bc], a                                    ; $64c8: $02
    add hl, sp                                    ; $64c9: $39

jr_0ea_64ca:
    inc b                                         ; $64ca: $04
    ld e, c                                       ; $64cb: $59
    ld [bc], a                                    ; $64cc: $02
    jr nz, jr_0ea_64dc                            ; $64cd: $20 $0d

    nop                                           ; $64cf: $00
    adc l                                         ; $64d0: $8d
    stop                                          ; $64d1: $10 $00
    ld [$1000], sp                                ; $64d3: $08 $00 $10
    add b                                         ; $64d6: $80
    adc b                                         ; $64d7: $88
    add b                                         ; $64d8: $80
    sub b                                         ; $64d9: $90
    add b                                         ; $64da: $80
    adc b                                         ; $64db: $88

jr_0ea_64dc:
    ret nz                                        ; $64dc: $c0

    ret nc                                        ; $64dd: $d0

    inc bc                                        ; $64de: $03
    add b                                         ; $64df: $80
    add c                                         ; $64e0: $81
    add c                                         ; $64e1: $81
    dec e                                         ; $64e2: $1d
    nop                                           ; $64e3: $00
    add l                                         ; $64e4: $85
    ld [bc], a                                    ; $64e5: $02
    nop                                           ; $64e6: $00
    ld bc, $0200                                  ; $64e7: $01 $00 $02
    ld a, [bc]                                    ; $64ea: $0a
    nop                                           ; $64eb: $00
    rst $38                                       ; $64ec: $ff
    ld de, $f506                                  ; $64ed: $11 $06 $f5
    inc c                                         ; $64f0: $0c
    ld a, [c]                                     ; $64f1: $f2
    ld bc, $f6e6                                  ; $64f2: $01 $e6 $f6
    push hl                                       ; $64f5: $e5
    cp $e5                                        ; $64f6: $fe $e5
    inc b                                         ; $64f8: $04
    push af                                       ; $64f9: $f5
    or $f5                                        ; $64fa: $f6 $f5
    cp $f5                                        ; $64fc: $fe $f5
    inc b                                         ; $64fe: $04
    ld [bc], a                                    ; $64ff: $02
    rlca                                          ; $6500: $07
    sub d                                         ; $6501: $92
    ld [$1318], sp                                ; $6502: $08 $18 $13
    inc sp                                        ; $6505: $33
    cpl                                           ; $6506: $2f
    jr z, @+$41                                   ; $6507: $28 $3f

    jr nc, jr_0ea_655d                            ; $6509: $30 $52

    ld d, b                                       ; $650b: $50
    ld e, a                                       ; $650c: $5f
    ld d, b                                       ; $650d: $50
    ld a, a                                       ; $650e: $7f
    ld [hl], d                                    ; $650f: $72
    ld e, a                                       ; $6510: $5f
    ld d, l                                       ; $6511: $55
    ld l, a                                       ; $6512: $6f
    ld l, d                                       ; $6513: $6a
    ld [bc], a                                    ; $6514: $02
    ld e, a                                       ; $6515: $5f
    add d                                         ; $6516: $82
    or a                                          ; $6517: $b7
    or l                                          ; $6518: $b5
    ld [bc], a                                    ; $6519: $02
    ld c, h                                       ; $651a: $4c
    add d                                         ; $651b: $82
    dec h                                         ; $651c: $25
    daa                                           ; $651d: $27
    ld [bc], a                                    ; $651e: $02
    ld [hl-], a                                   ; $651f: $32
    ld [bc], a                                    ; $6520: $02
    or d                                          ; $6521: $b2
    add h                                         ; $6522: $84
    ld e, $1f                                     ; $6523: $1e $1f
    dec h                                         ; $6525: $25
    or a                                          ; $6526: $b7
    ld [bc], a                                    ; $6527: $02
    rst $28                                       ; $6528: $ef
    sbc d                                         ; $6529: $9a
    ccf                                           ; $652a: $3f
    ld [hl], $72                                  ; $652b: $36 $72
    ld a, l                                       ; $652d: $7d
    rst $28                                       ; $652e: $ef
    ld [hl], d                                    ; $652f: $72
    ld [hl], a                                    ; $6530: $77
    ld l, l                                       ; $6531: $6d
    rst $18                                       ; $6532: $df
    ld d, e                                       ; $6533: $53
    rst $18                                       ; $6534: $df
    ld d, l                                       ; $6535: $55
    rst $38                                       ; $6536: $ff
    ld a, d                                       ; $6537: $7a
    sub a                                         ; $6538: $97
    sbc a                                         ; $6539: $9f
    or l                                          ; $653a: $b5
    cp l                                          ; $653b: $bd
    ld a, d                                       ; $653c: $7a
    ld a, a                                       ; $653d: $7f
    rst $28                                       ; $653e: $ef
    rst $38                                       ; $653f: $ff
    ld h, [hl]                                    ; $6540: $66
    ld [hl], a                                    ; $6541: $77
    ld h, [hl]                                    ; $6542: $66
    ld a, [hl]                                    ; $6543: $7e
    ld [bc], a                                    ; $6544: $02
    jr z, jr_0ea_6549                             ; $6545: $28 $02

    jr c, jr_0ea_64ca                             ; $6547: $38 $81

jr_0ea_6549:
    scf                                           ; $6549: $37
    ld [bc], a                                    ; $654a: $02
    ccf                                           ; $654b: $3f
    sbc c                                         ; $654c: $99
    ld e, $1b                                     ; $654d: $1e $1b
    ld a, [hl-]                                   ; $654f: $3a
    cpl                                           ; $6550: $2f
    inc e                                         ; $6551: $1c
    dec sp                                        ; $6552: $3b
    dec hl                                        ; $6553: $2b
    ld [hl-], a                                   ; $6554: $32
    inc de                                        ; $6555: $13
    add hl, sp                                    ; $6556: $39
    add hl, de                                    ; $6557: $19
    daa                                           ; $6558: $27
    ccf                                           ; $6559: $3f
    dec l                                         ; $655a: $2d
    ccf                                           ; $655b: $3f
    ld [de], a                                    ; $655c: $12

jr_0ea_655d:
    ccf                                           ; $655d: $3f
    inc h                                         ; $655e: $24
    ld [hl], $0f                                  ; $655f: $36 $0f
    cpl                                           ; $6561: $2f
    rrca                                          ; $6562: $0f
    rra                                           ; $6563: $1f
    inc c                                         ; $6564: $0c
    inc l                                         ; $6565: $2c
    ld [bc], a                                    ; $6566: $02
    nop                                           ; $6567: $00
    ld [bc], a                                    ; $6568: $02
    cp a                                          ; $6569: $bf
    ld [bc], a                                    ; $656a: $02
    ld a, e                                       ; $656b: $7b
    ld [bc], a                                    ; $656c: $02
    cp d                                          ; $656d: $ba
    add d                                         ; $656e: $82
    ld a, [c]                                     ; $656f: $f2
    or d                                          ; $6570: $b2
    ld [bc], a                                    ; $6571: $02
    ld a, [c]                                     ; $6572: $f2
    dec b                                         ; $6573: $05
    ld h, $81                                     ; $6574: $26 $81
    ld h, [hl]                                    ; $6576: $66
    ld [bc], a                                    ; $6577: $02
    ld b, [hl]                                    ; $6578: $46
    inc b                                         ; $6579: $04
    and [hl]                                      ; $657a: $a6
    ld [bc], a                                    ; $657b: $02
    rst $18                                       ; $657c: $df
    ld b, $00                                     ; $657d: $06 $00
    sbc d                                         ; $657f: $9a
    and $f7                                       ; $6580: $e6 $f7
    and $fe                                       ; $6582: $e6 $fe
    and $f7                                       ; $6584: $e6 $f7
    and $ee                                       ; $6586: $e6 $ee
    and $f7                                       ; $6588: $e6 $f7
    and $ee                                       ; $658a: $e6 $ee
    ld h, [hl]                                    ; $658c: $66
    ld [hl], a                                    ; $658d: $77
    ld h, h                                       ; $658e: $64
    ld l, [hl]                                    ; $658f: $6e
    ld h, h                                       ; $6590: $64
    ld [hl], l                                    ; $6591: $75
    ld [hl+], a                                   ; $6592: $22
    ld a, [hl+]                                   ; $6593: $2a
    ld h, h                                       ; $6594: $64
    ld [hl], a                                    ; $6595: $77
    ld h, d                                       ; $6596: $62
    ld l, d                                       ; $6597: $6a
    sub $d7                                       ; $6598: $d6 $d7
    ld b, $00                                     ; $659a: $06 $00
    sbc d                                         ; $659c: $9a
    inc c                                         ; $659d: $0c
    inc e                                         ; $659e: $1c
    ld [$0028], sp                                ; $659f: $08 $28 $00
    inc d                                         ; $65a2: $14
    nop                                           ; $65a3: $00
    jr z, jr_0ea_65aa                             ; $65a4: $28 $04

    inc d                                         ; $65a6: $14
    ld [$0428], sp                                ; $65a7: $08 $28 $04

jr_0ea_65aa:
    inc d                                         ; $65aa: $14
    inc c                                         ; $65ab: $0c
    inc l                                         ; $65ac: $2c
    inc c                                         ; $65ad: $0c
    inc e                                         ; $65ae: $1c
    inc d                                         ; $65af: $14
    ld a, $0a                                     ; $65b0: $3e $0a
    ld e, $06                                     ; $65b2: $1e $06
    ld l, $0d                                     ; $65b4: $2e $0d
    rra                                           ; $65b6: $1f
    ld b, $00                                     ; $65b7: $06 $00
    rst $38                                       ; $65b9: $ff
    ld de, $f506                                  ; $65ba: $11 $06 $f5
    inc c                                         ; $65bd: $0c
    ld a, [c]                                     ; $65be: $f2
    ld bc, $f7e7                                  ; $65bf: $01 $e7 $f7
    add sp, -$01                                  ; $65c2: $e8 $ff
    pop af                                        ; $65c4: $f1
    inc b                                         ; $65c5: $04
    rst $30                                       ; $65c6: $f7
    or $f7                                        ; $65c7: $f6 $f7
    ei                                            ; $65c9: $fb
    rst $30                                       ; $65ca: $f7
    rst $38                                       ; $65cb: $ff
    add l                                         ; $65cc: $85
    ld c, $00                                     ; $65cd: $0e $00
    add hl, de                                    ; $65cf: $19
    nop                                           ; $65d0: $00
    ld hl, $0003                                  ; $65d1: $21 $03 $00
    add e                                         ; $65d4: $83
    ld b, b                                       ; $65d5: $40
    dec de                                        ; $65d6: $1b
    ld b, b                                       ; $65d7: $40
    inc bc                                        ; $65d8: $03
    nop                                           ; $65d9: $00
    add c                                         ; $65da: $81
    ld b, b                                       ; $65db: $40
    dec b                                         ; $65dc: $05
    nop                                           ; $65dd: $00
    ld [bc], a                                    ; $65de: $02
    ld de, $2602                                  ; $65df: $11 $02 $26
    ld [bc], a                                    ; $65e2: $02
    ld sp, $9b02                                  ; $65e3: $31 $02 $9b
    ld [bc], a                                    ; $65e6: $02
    sbc d                                         ; $65e7: $9a
    inc bc                                        ; $65e8: $03
    add b                                         ; $65e9: $80
    rlca                                          ; $65ea: $07
    nop                                           ; $65eb: $00
    add e                                         ; $65ec: $83
    ld b, b                                       ; $65ed: $40
    nop                                           ; $65ee: $00
    ld b, b                                       ; $65ef: $40
    inc bc                                        ; $65f0: $03
    nop                                           ; $65f1: $00
    add h                                         ; $65f2: $84
    ret nz                                        ; $65f3: $c0

    nop                                           ; $65f4: $00
    add h                                         ; $65f5: $84
    inc b                                         ; $65f6: $04
    dec b                                         ; $65f7: $05
    nop                                           ; $65f8: $00
    adc l                                         ; $65f9: $8d
    ld de, $0200                                  ; $65fa: $11 $00 $02
    nop                                           ; $65fd: $00
    ld de, $0200                                  ; $65fe: $11 $00 $02
    nop                                           ; $6601: $00
    ld de, $0900                                  ; $6602: $11 $00 $09
    nop                                           ; $6605: $00
    db $10                                        ; $6606: $10
    inc bc                                        ; $6607: $03
    nop                                           ; $6608: $00
    add c                                         ; $6609: $81
    db $10                                        ; $660a: $10
    inc bc                                        ; $660b: $03
    nop                                           ; $660c: $00
    add c                                         ; $660d: $81
    db $10                                        ; $660e: $10
    inc bc                                        ; $660f: $03
    nop                                           ; $6610: $00
    add l                                         ; $6611: $85
    ld b, b                                       ; $6612: $40
    nop                                           ; $6613: $00
    jr nz, jr_0ea_6616                            ; $6614: $20 $00

jr_0ea_6616:
    ld b, b                                       ; $6616: $40
    inc bc                                        ; $6617: $03
    nop                                           ; $6618: $00
    adc c                                         ; $6619: $89
    stop                                          ; $661a: $10 $00
    jr nz, jr_0ea_661e                            ; $661c: $20 $00

jr_0ea_661e:
    ld b, b                                       ; $661e: $40
    nop                                           ; $661f: $00
    jr nz, jr_0ea_6622                            ; $6620: $20 $00

jr_0ea_6622:
    ld d, b                                       ; $6622: $50
    ld [bc], a                                    ; $6623: $02
    add h                                         ; $6624: $84
    ld [bc], a                                    ; $6625: $02
    ld b, l                                       ; $6626: $45

jr_0ea_6627:
    inc b                                         ; $6627: $04
    dec c                                         ; $6628: $0d
    ld b, $19                                     ; $6629: $06 $19
    ld [bc], a                                    ; $662b: $02
    add hl, sp                                    ; $662c: $39
    inc b                                         ; $662d: $04
    ld e, c                                       ; $662e: $59
    ld [bc], a                                    ; $662f: $02
    jr nz, @+$0f                                  ; $6630: $20 $0d

    nop                                           ; $6632: $00
    adc l                                         ; $6633: $8d
    ld [bc], a                                    ; $6634: $02
    nop                                           ; $6635: $00
    ld bc, $0200                                  ; $6636: $01 $00 $02
    db $10                                        ; $6639: $10
    ld de, $1210                                  ; $663a: $11 $10 $12
    db $10                                        ; $663d: $10
    ld de, $1a18                                  ; $663e: $11 $18 $1a
    inc b                                         ; $6641: $04
    db $10                                        ; $6642: $10
    ld hl, $8100                                  ; $6643: $21 $00 $81
    ld bc, $000a                                  ; $6646: $01 $0a $00
    rst $38                                       ; $6649: $ff
    ld de, $f506                                  ; $664a: $11 $06 $f5
    inc c                                         ; $664d: $0c
    ld a, [c]                                     ; $664e: $f2
    ld bc, $f6e6                                  ; $664f: $01 $e6 $f6
    push hl                                       ; $6652: $e5
    cp $e5                                        ; $6653: $fe $e5
    inc b                                         ; $6655: $04
    push af                                       ; $6656: $f5
    or $f5                                        ; $6657: $f6 $f5
    cp $f5                                        ; $6659: $fe $f5
    inc b                                         ; $665b: $04
    ld [bc], a                                    ; $665c: $02
    rlca                                          ; $665d: $07
    sub d                                         ; $665e: $92
    ld [$1318], sp                                ; $665f: $08 $18 $13
    inc sp                                        ; $6662: $33
    cpl                                           ; $6663: $2f
    jr z, @+$41                                   ; $6664: $28 $3f

    jr nc, jr_0ea_66ba                            ; $6666: $30 $52

    ld d, b                                       ; $6668: $50
    ld e, a                                       ; $6669: $5f
    ld d, b                                       ; $666a: $50
    ld a, a                                       ; $666b: $7f
    ld [hl], d                                    ; $666c: $72
    ld e, a                                       ; $666d: $5f
    ld d, l                                       ; $666e: $55
    ld l, a                                       ; $666f: $6f
    ld l, d                                       ; $6670: $6a
    ld [bc], a                                    ; $6671: $02
    ld e, a                                       ; $6672: $5f
    add d                                         ; $6673: $82
    or a                                          ; $6674: $b7
    or l                                          ; $6675: $b5
    ld [bc], a                                    ; $6676: $02
    ld c, h                                       ; $6677: $4c
    add d                                         ; $6678: $82
    dec h                                         ; $6679: $25
    daa                                           ; $667a: $27
    ld [bc], a                                    ; $667b: $02
    ld [hl-], a                                   ; $667c: $32
    ld [bc], a                                    ; $667d: $02
    or d                                          ; $667e: $b2
    add h                                         ; $667f: $84
    ld e, $1f                                     ; $6680: $1e $1f
    dec h                                         ; $6682: $25
    or a                                          ; $6683: $b7
    ld [bc], a                                    ; $6684: $02
    rst $28                                       ; $6685: $ef
    sbc d                                         ; $6686: $9a
    ccf                                           ; $6687: $3f
    ld [hl], $72                                  ; $6688: $36 $72
    ld a, l                                       ; $668a: $7d
    rst $28                                       ; $668b: $ef
    ld [hl], d                                    ; $668c: $72
    ld [hl], a                                    ; $668d: $77
    ld l, l                                       ; $668e: $6d
    rst $18                                       ; $668f: $df
    ld d, e                                       ; $6690: $53
    rst $18                                       ; $6691: $df
    ld d, l                                       ; $6692: $55
    rst $38                                       ; $6693: $ff
    ld a, d                                       ; $6694: $7a
    sub a                                         ; $6695: $97
    sbc a                                         ; $6696: $9f
    or l                                          ; $6697: $b5
    cp l                                          ; $6698: $bd
    ld a, d                                       ; $6699: $7a
    ld a, a                                       ; $669a: $7f
    rst $28                                       ; $669b: $ef
    rst $38                                       ; $669c: $ff
    ld h, [hl]                                    ; $669d: $66
    ld [hl], a                                    ; $669e: $77
    ld h, [hl]                                    ; $669f: $66
    ld a, [hl]                                    ; $66a0: $7e
    ld [bc], a                                    ; $66a1: $02
    jr z, jr_0ea_66a6                             ; $66a2: $28 $02

    jr c, jr_0ea_6627                             ; $66a4: $38 $81

jr_0ea_66a6:
    inc [hl]                                      ; $66a6: $34
    ld [bc], a                                    ; $66a7: $02
    inc a                                         ; $66a8: $3c
    sbc c                                         ; $66a9: $99
    inc e                                         ; $66aa: $1c
    ld e, $32                                     ; $66ab: $1e $32
    cpl                                           ; $66ad: $2f
    add hl, de                                    ; $66ae: $19
    ccf                                           ; $66af: $3f
    ld sp, $1f3f                                  ; $66b0: $31 $3f $1f
    dec a                                         ; $66b3: $3d
    rra                                           ; $66b4: $1f
    ld h, $3f                                     ; $66b5: $26 $3f
    cpl                                           ; $66b7: $2f
    ccf                                           ; $66b8: $3f
    rla                                           ; $66b9: $17

jr_0ea_66ba:
    ccf                                           ; $66ba: $3f
    inc h                                         ; $66bb: $24
    dec [hl]                                      ; $66bc: $35
    dec c                                         ; $66bd: $0d
    cpl                                           ; $66be: $2f
    rrca                                          ; $66bf: $0f
    rra                                           ; $66c0: $1f
    inc c                                         ; $66c1: $0c
    inc l                                         ; $66c2: $2c
    ld [bc], a                                    ; $66c3: $02
    nop                                           ; $66c4: $00
    ld [bc], a                                    ; $66c5: $02
    cp a                                          ; $66c6: $bf
    ld [bc], a                                    ; $66c7: $02
    ld a, e                                       ; $66c8: $7b
    ld [bc], a                                    ; $66c9: $02
    cp d                                          ; $66ca: $ba
    add d                                         ; $66cb: $82
    ld a, [c]                                     ; $66cc: $f2
    or d                                          ; $66cd: $b2
    ld [bc], a                                    ; $66ce: $02
    ld a, [c]                                     ; $66cf: $f2
    dec b                                         ; $66d0: $05
    ld h, $81                                     ; $66d1: $26 $81
    ld h, [hl]                                    ; $66d3: $66
    ld [bc], a                                    ; $66d4: $02
    ld b, [hl]                                    ; $66d5: $46
    inc b                                         ; $66d6: $04
    and [hl]                                      ; $66d7: $a6
    ld [bc], a                                    ; $66d8: $02
    rst $18                                       ; $66d9: $df
    ld b, $00                                     ; $66da: $06 $00
    sbc d                                         ; $66dc: $9a
    and $f7                                       ; $66dd: $e6 $f7
    and $fe                                       ; $66df: $e6 $fe
    and $f7                                       ; $66e1: $e6 $f7
    and $ee                                       ; $66e3: $e6 $ee
    and $f7                                       ; $66e5: $e6 $f7
    and $ee                                       ; $66e7: $e6 $ee
    ld h, [hl]                                    ; $66e9: $66
    ld [hl], a                                    ; $66ea: $77
    ld h, h                                       ; $66eb: $64
    ld l, [hl]                                    ; $66ec: $6e
    ld h, h                                       ; $66ed: $64
    ld [hl], l                                    ; $66ee: $75
    ld [hl+], a                                   ; $66ef: $22
    ld a, [hl+]                                   ; $66f0: $2a
    ld h, h                                       ; $66f1: $64
    ld [hl], a                                    ; $66f2: $77
    ld h, d                                       ; $66f3: $62
    ld l, d                                       ; $66f4: $6a
    sub $d7                                       ; $66f5: $d6 $d7
    ld b, $00                                     ; $66f7: $06 $00
    sbc d                                         ; $66f9: $9a
    inc c                                         ; $66fa: $0c
    inc e                                         ; $66fb: $1c
    ld [$0028], sp                                ; $66fc: $08 $28 $00
    inc d                                         ; $66ff: $14
    nop                                           ; $6700: $00
    jr z, jr_0ea_6707                             ; $6701: $28 $04

    inc d                                         ; $6703: $14
    ld [$0428], sp                                ; $6704: $08 $28 $04

jr_0ea_6707:
    inc d                                         ; $6707: $14
    inc c                                         ; $6708: $0c
    inc l                                         ; $6709: $2c
    inc c                                         ; $670a: $0c
    inc e                                         ; $670b: $1c
    inc d                                         ; $670c: $14
    ld a, $0a                                     ; $670d: $3e $0a
    ld e, $06                                     ; $670f: $1e $06
    ld l, $0d                                     ; $6711: $2e $0d
    rra                                           ; $6713: $1f
    ld b, $00                                     ; $6714: $06 $00
    rst $38                                       ; $6716: $ff
    ld de, $f506                                  ; $6717: $11 $06 $f5
    inc c                                         ; $671a: $0c
    ld a, [c]                                     ; $671b: $f2
    ld bc, $f7e7                                  ; $671c: $01 $e7 $f7
    add sp, -$01                                  ; $671f: $e8 $ff
    pop af                                        ; $6721: $f1
    inc bc                                        ; $6722: $03
    rst $30                                       ; $6723: $f7
    or $f7                                        ; $6724: $f6 $f7
    ei                                            ; $6726: $fb
    rst $30                                       ; $6727: $f7
    rst $38                                       ; $6728: $ff
    add l                                         ; $6729: $85
    ld c, $00                                     ; $672a: $0e $00
    add hl, de                                    ; $672c: $19
    nop                                           ; $672d: $00
    ld hl, $0003                                  ; $672e: $21 $03 $00
    add e                                         ; $6731: $83
    ld b, b                                       ; $6732: $40
    dec de                                        ; $6733: $1b
    ld b, b                                       ; $6734: $40
    inc bc                                        ; $6735: $03
    nop                                           ; $6736: $00
    add c                                         ; $6737: $81
    ld b, b                                       ; $6738: $40
    dec b                                         ; $6739: $05
    nop                                           ; $673a: $00
    ld [bc], a                                    ; $673b: $02
    ld de, $2602                                  ; $673c: $11 $02 $26
    ld [bc], a                                    ; $673f: $02
    ld sp, $9b02                                  ; $6740: $31 $02 $9b
    ld [bc], a                                    ; $6743: $02
    sbc d                                         ; $6744: $9a
    inc bc                                        ; $6745: $03
    add b                                         ; $6746: $80
    rlca                                          ; $6747: $07
    nop                                           ; $6748: $00
    add e                                         ; $6749: $83
    ld b, b                                       ; $674a: $40
    nop                                           ; $674b: $00
    ld b, b                                       ; $674c: $40
    inc bc                                        ; $674d: $03
    nop                                           ; $674e: $00
    add h                                         ; $674f: $84
    ret nz                                        ; $6750: $c0

    nop                                           ; $6751: $00
    add h                                         ; $6752: $84
    inc b                                         ; $6753: $04
    dec b                                         ; $6754: $05
    nop                                           ; $6755: $00
    adc l                                         ; $6756: $8d
    ld de, $0200                                  ; $6757: $11 $00 $02
    nop                                           ; $675a: $00
    ld de, $0200                                  ; $675b: $11 $00 $02
    nop                                           ; $675e: $00
    ld de, $0500                                  ; $675f: $11 $00 $05
    nop                                           ; $6762: $00
    ld [$0003], sp                                ; $6763: $08 $03 $00
    add c                                         ; $6766: $81
    ld [$0003], sp                                ; $6767: $08 $03 $00
    add c                                         ; $676a: $81
    ld [$0003], sp                                ; $676b: $08 $03 $00
    add l                                         ; $676e: $85
    jr nz, jr_0ea_6771                            ; $676f: $20 $00

jr_0ea_6771:
    stop                                          ; $6771: $10 $00
    jr nz, @+$05                                  ; $6773: $20 $03

    nop                                           ; $6775: $00
    adc c                                         ; $6776: $89
    ld [$1000], sp                                ; $6777: $08 $00 $10
    nop                                           ; $677a: $00
    jr nz, jr_0ea_677d                            ; $677b: $20 $00

jr_0ea_677d:
    stop                                          ; $677d: $10 $00
    jr z, jr_0ea_6783                             ; $677f: $28 $02

    add h                                         ; $6781: $84
    ld [bc], a                                    ; $6782: $02

jr_0ea_6783:
    ld b, l                                       ; $6783: $45

jr_0ea_6784:
    inc b                                         ; $6784: $04
    dec c                                         ; $6785: $0d
    ld b, $19                                     ; $6786: $06 $19
    ld [bc], a                                    ; $6788: $02
    add hl, sp                                    ; $6789: $39
    inc b                                         ; $678a: $04
    ld e, c                                       ; $678b: $59
    ld [bc], a                                    ; $678c: $02
    jr nz, @+$0f                                  ; $678d: $20 $0d

    nop                                           ; $678f: $00
    adc l                                         ; $6790: $8d
    ld [bc], a                                    ; $6791: $02
    nop                                           ; $6792: $00
    ld bc, $0200                                  ; $6793: $01 $00 $02
    db $10                                        ; $6796: $10
    ld de, $1210                                  ; $6797: $11 $10 $12
    db $10                                        ; $679a: $10
    ld de, $1a18                                  ; $679b: $11 $18 $1a
    inc b                                         ; $679e: $04
    db $10                                        ; $679f: $10
    ld hl, $8100                                  ; $67a0: $21 $00 $81
    ld bc, $000a                                  ; $67a3: $01 $0a $00
    rst $38                                       ; $67a6: $ff
    ld de, $f506                                  ; $67a7: $11 $06 $f5
    inc c                                         ; $67aa: $0c
    ld a, [c]                                     ; $67ab: $f2
    ld bc, $f6e6                                  ; $67ac: $01 $e6 $f6
    push hl                                       ; $67af: $e5
    cp $e5                                        ; $67b0: $fe $e5
    inc b                                         ; $67b2: $04
    push af                                       ; $67b3: $f5
    or $f5                                        ; $67b4: $f6 $f5
    cp $f5                                        ; $67b6: $fe $f5
    inc b                                         ; $67b8: $04
    ld [bc], a                                    ; $67b9: $02
    rlca                                          ; $67ba: $07
    sub d                                         ; $67bb: $92
    ld [$1318], sp                                ; $67bc: $08 $18 $13
    inc sp                                        ; $67bf: $33
    cpl                                           ; $67c0: $2f
    jr z, @+$41                                   ; $67c1: $28 $3f

    jr nc, jr_0ea_6817                            ; $67c3: $30 $52

    ld d, b                                       ; $67c5: $50
    ld e, a                                       ; $67c6: $5f
    ld d, b                                       ; $67c7: $50
    ld a, a                                       ; $67c8: $7f
    ld [hl], d                                    ; $67c9: $72
    ld e, a                                       ; $67ca: $5f
    ld d, l                                       ; $67cb: $55
    ld l, a                                       ; $67cc: $6f
    ld l, d                                       ; $67cd: $6a
    ld [bc], a                                    ; $67ce: $02
    ld e, a                                       ; $67cf: $5f
    add d                                         ; $67d0: $82
    or a                                          ; $67d1: $b7
    or l                                          ; $67d2: $b5
    ld [bc], a                                    ; $67d3: $02
    ld c, h                                       ; $67d4: $4c
    add d                                         ; $67d5: $82
    dec h                                         ; $67d6: $25
    daa                                           ; $67d7: $27
    ld [bc], a                                    ; $67d8: $02
    ld [hl-], a                                   ; $67d9: $32
    ld [bc], a                                    ; $67da: $02
    or d                                          ; $67db: $b2
    add h                                         ; $67dc: $84
    ld e, $1f                                     ; $67dd: $1e $1f
    dec h                                         ; $67df: $25
    or a                                          ; $67e0: $b7
    ld [bc], a                                    ; $67e1: $02
    rst $28                                       ; $67e2: $ef
    sbc d                                         ; $67e3: $9a
    ccf                                           ; $67e4: $3f
    ld [hl], $72                                  ; $67e5: $36 $72
    ld a, l                                       ; $67e7: $7d
    rst $28                                       ; $67e8: $ef
    ld [hl], d                                    ; $67e9: $72
    ld [hl], a                                    ; $67ea: $77
    ld l, l                                       ; $67eb: $6d
    rst $18                                       ; $67ec: $df
    ld d, e                                       ; $67ed: $53
    rst $18                                       ; $67ee: $df
    ld d, l                                       ; $67ef: $55
    rst $38                                       ; $67f0: $ff
    ld a, d                                       ; $67f1: $7a
    sub a                                         ; $67f2: $97
    sbc a                                         ; $67f3: $9f
    or l                                          ; $67f4: $b5
    cp l                                          ; $67f5: $bd
    ld a, d                                       ; $67f6: $7a
    ld a, a                                       ; $67f7: $7f
    rst $28                                       ; $67f8: $ef
    rst $38                                       ; $67f9: $ff
    ld h, [hl]                                    ; $67fa: $66
    ld [hl], a                                    ; $67fb: $77
    ld h, [hl]                                    ; $67fc: $66
    ld a, [hl]                                    ; $67fd: $7e
    ld [bc], a                                    ; $67fe: $02
    jr z, jr_0ea_6803                             ; $67ff: $28 $02

    jr c, jr_0ea_6784                             ; $6801: $38 $81

jr_0ea_6803:
    scf                                           ; $6803: $37
    ld [bc], a                                    ; $6804: $02
    ccf                                           ; $6805: $3f
    sbc c                                         ; $6806: $99
    inc e                                         ; $6807: $1c
    dec de                                        ; $6808: $1b
    ld a, [hl-]                                   ; $6809: $3a
    cpl                                           ; $680a: $2f
    inc e                                         ; $680b: $1c
    dec sp                                        ; $680c: $3b
    dec hl                                        ; $680d: $2b
    ld [hl-], a                                   ; $680e: $32
    inc de                                        ; $680f: $13
    add hl, sp                                    ; $6810: $39
    add hl, de                                    ; $6811: $19
    daa                                           ; $6812: $27
    ccf                                           ; $6813: $3f
    dec l                                         ; $6814: $2d
    ccf                                           ; $6815: $3f
    rla                                           ; $6816: $17

jr_0ea_6817:
    ccf                                           ; $6817: $3f
    inc h                                         ; $6818: $24
    ld [hl], $0d                                  ; $6819: $36 $0d
    cpl                                           ; $681b: $2f
    ld c, $1f                                     ; $681c: $0e $1f
    inc c                                         ; $681e: $0c
    inc l                                         ; $681f: $2c
    ld [bc], a                                    ; $6820: $02
    nop                                           ; $6821: $00
    ld [bc], a                                    ; $6822: $02
    cp a                                          ; $6823: $bf
    ld [bc], a                                    ; $6824: $02
    ld a, e                                       ; $6825: $7b
    ld [bc], a                                    ; $6826: $02
    cp d                                          ; $6827: $ba
    add d                                         ; $6828: $82
    ld a, [c]                                     ; $6829: $f2
    or d                                          ; $682a: $b2
    ld [bc], a                                    ; $682b: $02
    ld a, [c]                                     ; $682c: $f2
    dec b                                         ; $682d: $05
    ld h, $81                                     ; $682e: $26 $81
    ld h, [hl]                                    ; $6830: $66
    ld [bc], a                                    ; $6831: $02
    ld b, [hl]                                    ; $6832: $46
    inc b                                         ; $6833: $04
    and [hl]                                      ; $6834: $a6
    ld [bc], a                                    ; $6835: $02
    rst $18                                       ; $6836: $df
    ld b, $00                                     ; $6837: $06 $00
    sbc d                                         ; $6839: $9a
    and $f7                                       ; $683a: $e6 $f7
    and $fe                                       ; $683c: $e6 $fe
    and $f7                                       ; $683e: $e6 $f7
    and $ee                                       ; $6840: $e6 $ee
    and $f7                                       ; $6842: $e6 $f7
    and $ee                                       ; $6844: $e6 $ee
    ld h, [hl]                                    ; $6846: $66
    ld [hl], a                                    ; $6847: $77
    ld h, h                                       ; $6848: $64
    ld l, [hl]                                    ; $6849: $6e
    ld h, h                                       ; $684a: $64
    ld [hl], l                                    ; $684b: $75
    ld [hl+], a                                   ; $684c: $22
    ld a, [hl+]                                   ; $684d: $2a
    ld h, h                                       ; $684e: $64
    ld [hl], a                                    ; $684f: $77
    ld h, d                                       ; $6850: $62
    ld l, d                                       ; $6851: $6a
    sub $d7                                       ; $6852: $d6 $d7
    ld b, $00                                     ; $6854: $06 $00
    sbc d                                         ; $6856: $9a
    inc c                                         ; $6857: $0c
    inc e                                         ; $6858: $1c
    ld [$0028], sp                                ; $6859: $08 $28 $00
    inc d                                         ; $685c: $14
    nop                                           ; $685d: $00
    jr z, jr_0ea_6864                             ; $685e: $28 $04

    inc d                                         ; $6860: $14
    ld [$0428], sp                                ; $6861: $08 $28 $04

jr_0ea_6864:
    inc d                                         ; $6864: $14
    inc c                                         ; $6865: $0c
    inc l                                         ; $6866: $2c
    inc c                                         ; $6867: $0c
    inc e                                         ; $6868: $1c
    inc d                                         ; $6869: $14
    ld a, $0a                                     ; $686a: $3e $0a
    ld e, $06                                     ; $686c: $1e $06
    ld l, $0d                                     ; $686e: $2e $0d
    rra                                           ; $6870: $1f
    ld b, $00                                     ; $6871: $06 $00
    rst $38                                       ; $6873: $ff
    ld de, $f506                                  ; $6874: $11 $06 $f5
    inc c                                         ; $6877: $0c
    ld a, [c]                                     ; $6878: $f2
    ld bc, $f7e7                                  ; $6879: $01 $e7 $f7
    add sp, -$01                                  ; $687c: $e8 $ff
    pop af                                        ; $687e: $f1
    inc b                                         ; $687f: $04
    rst $30                                       ; $6880: $f7
    or $f7                                        ; $6881: $f6 $f7
    ei                                            ; $6883: $fb
    rst $30                                       ; $6884: $f7
    rst $38                                       ; $6885: $ff
    add l                                         ; $6886: $85
    ld c, $00                                     ; $6887: $0e $00
    add hl, de                                    ; $6889: $19
    nop                                           ; $688a: $00
    ld hl, $0003                                  ; $688b: $21 $03 $00
    add e                                         ; $688e: $83
    ld b, b                                       ; $688f: $40
    dec de                                        ; $6890: $1b
    ld b, b                                       ; $6891: $40
    inc bc                                        ; $6892: $03
    nop                                           ; $6893: $00
    add c                                         ; $6894: $81
    ld b, b                                       ; $6895: $40
    dec b                                         ; $6896: $05
    nop                                           ; $6897: $00
    ld [bc], a                                    ; $6898: $02
    ld de, $2602                                  ; $6899: $11 $02 $26
    ld [bc], a                                    ; $689c: $02
    ld sp, $9b02                                  ; $689d: $31 $02 $9b
    ld [bc], a                                    ; $68a0: $02
    sbc d                                         ; $68a1: $9a
    inc bc                                        ; $68a2: $03
    add b                                         ; $68a3: $80
    rlca                                          ; $68a4: $07
    nop                                           ; $68a5: $00
    add e                                         ; $68a6: $83
    ld b, b                                       ; $68a7: $40
    nop                                           ; $68a8: $00
    ld b, b                                       ; $68a9: $40
    inc bc                                        ; $68aa: $03
    nop                                           ; $68ab: $00
    add h                                         ; $68ac: $84
    ret nz                                        ; $68ad: $c0

    nop                                           ; $68ae: $00
    add h                                         ; $68af: $84
    inc b                                         ; $68b0: $04
    dec b                                         ; $68b1: $05
    nop                                           ; $68b2: $00
    adc l                                         ; $68b3: $8d
    ld de, $0200                                  ; $68b4: $11 $00 $02
    nop                                           ; $68b7: $00
    ld de, $0200                                  ; $68b8: $11 $00 $02
    nop                                           ; $68bb: $00
    ld de, $0900                                  ; $68bc: $11 $00 $09
    nop                                           ; $68bf: $00
    db $10                                        ; $68c0: $10
    inc bc                                        ; $68c1: $03
    nop                                           ; $68c2: $00
    add c                                         ; $68c3: $81
    db $10                                        ; $68c4: $10
    inc bc                                        ; $68c5: $03
    nop                                           ; $68c6: $00
    add c                                         ; $68c7: $81
    db $10                                        ; $68c8: $10
    inc bc                                        ; $68c9: $03
    nop                                           ; $68ca: $00
    add l                                         ; $68cb: $85
    ld b, b                                       ; $68cc: $40
    nop                                           ; $68cd: $00
    jr nz, jr_0ea_68d0                            ; $68ce: $20 $00

jr_0ea_68d0:
    ld b, b                                       ; $68d0: $40
    inc bc                                        ; $68d1: $03
    nop                                           ; $68d2: $00
    adc c                                         ; $68d3: $89
    stop                                          ; $68d4: $10 $00
    jr nz, jr_0ea_68d8                            ; $68d6: $20 $00

jr_0ea_68d8:
    ld b, b                                       ; $68d8: $40
    nop                                           ; $68d9: $00
    jr nz, jr_0ea_68dc                            ; $68da: $20 $00

jr_0ea_68dc:
    ld d, b                                       ; $68dc: $50
    ld [bc], a                                    ; $68dd: $02
    add h                                         ; $68de: $84
    ld [bc], a                                    ; $68df: $02
    ld b, l                                       ; $68e0: $45
    inc b                                         ; $68e1: $04
    dec c                                         ; $68e2: $0d
    ld b, $19                                     ; $68e3: $06 $19
    ld [bc], a                                    ; $68e5: $02
    add hl, sp                                    ; $68e6: $39
    inc b                                         ; $68e7: $04
    ld e, c                                       ; $68e8: $59
    ld [bc], a                                    ; $68e9: $02
    jr nz, @+$0f                                  ; $68ea: $20 $0d

    nop                                           ; $68ec: $00
    adc l                                         ; $68ed: $8d
    ld [bc], a                                    ; $68ee: $02
    nop                                           ; $68ef: $00
    ld bc, $0200                                  ; $68f0: $01 $00 $02
    db $10                                        ; $68f3: $10
    ld de, $1210                                  ; $68f4: $11 $10 $12
    db $10                                        ; $68f7: $10
    ld de, $1a18                                  ; $68f8: $11 $18 $1a
    inc b                                         ; $68fb: $04
    db $10                                        ; $68fc: $10
    ld hl, $8100                                  ; $68fd: $21 $00 $81
    ld bc, $000a                                  ; $6900: $01 $0a $00
    rst $38                                       ; $6903: $ff
    add hl, bc                                    ; $6904: $09
    ld [bc], a                                    ; $6905: $02
    ld hl, sp+$07                                 ; $6906: $f8 $07
    ld a, [c]                                     ; $6908: $f2
    ld bc, $fbf0                                  ; $6909: $01 $f0 $fb
    ldh a, [$fe]                                  ; $690c: $f0 $fe
    add c                                         ; $690e: $81
    ld a, [bc]                                    ; $690f: $0a
    inc bc                                        ; $6910: $03
    nop                                           ; $6911: $00
    ld [bc], a                                    ; $6912: $02
    ld a, [hl+]                                   ; $6913: $2a
    ld [bc], a                                    ; $6914: $02
    nop                                           ; $6915: $00
    add d                                         ; $6916: $82
    ld a, [hl+]                                   ; $6917: $2a
    jr nz, jr_0ea_691c                            ; $6918: $20 $02

    inc b                                         ; $691a: $04
    ld [bc], a                                    ; $691b: $02

jr_0ea_691c:
    and b                                         ; $691c: $a0
    ld [bc], a                                    ; $691d: $02
    ld de, $2086                                  ; $691e: $11 $86 $20
    xor d                                         ; $6921: $aa
    ld de, $aa15                                  ; $6922: $11 $15 $aa
    ld a, [hl+]                                   ; $6925: $2a
    ld [bc], a                                    ; $6926: $02
    nop                                           ; $6927: $00
    add d                                         ; $6928: $82
    jr nz, jr_0ea_6955                            ; $6929: $20 $2a

    ld [bc], a                                    ; $692b: $02
    nop                                           ; $692c: $00
    ld [bc], a                                    ; $692d: $02
    ld a, [bc]                                    ; $692e: $0a
    ld b, $00                                     ; $692f: $06 $00
    ld [bc], a                                    ; $6931: $02
    inc b                                         ; $6932: $04
    ld [bc], a                                    ; $6933: $02
    nop                                           ; $6934: $00

jr_0ea_6935:
    ld [bc], a                                    ; $6935: $02
    inc b                                         ; $6936: $04
    ld [bc], a                                    ; $6937: $02
    nop                                           ; $6938: $00
    ld [bc], a                                    ; $6939: $02
    dec b                                         ; $693a: $05
    ld [bc], a                                    ; $693b: $02
    nop                                           ; $693c: $00
    add d                                         ; $693d: $82
    inc b                                         ; $693e: $04
    dec b                                         ; $693f: $05
    ld [bc], a                                    ; $6940: $02
    nop                                           ; $6941: $00
    add d                                         ; $6942: $82
    dec b                                         ; $6943: $05
    inc b                                         ; $6944: $04
    ld [bc], a                                    ; $6945: $02
    nop                                           ; $6946: $00
    ld [bc], a                                    ; $6947: $02
    inc b                                         ; $6948: $04
    ld b, $00                                     ; $6949: $06 $00
    rst $38                                       ; $694b: $ff
    rlca                                          ; $694c: $07
    ld bc, $07f8                                  ; $694d: $01 $f8 $07
    ld a, [c]                                     ; $6950: $f2
    ld bc, $fbf5                                  ; $6951: $01 $f5 $fb
    add l                                         ; $6954: $85

jr_0ea_6955:
    ld de, $0a00                                  ; $6955: $11 $00 $0a
    nop                                           ; $6958: $00
    inc b                                         ; $6959: $04
    dec de                                        ; $695a: $1b
    nop                                           ; $695b: $00
    rst $38                                       ; $695c: $ff
    dec c                                         ; $695d: $0d
    inc b                                         ; $695e: $04
    ld hl, sp+$07                                 ; $695f: $f8 $07
    ld a, [c]                                     ; $6961: $f2
    ld bc, $f9ec                                  ; $6962: $01 $ec $f9
    db $ec                                        ; $6965: $ec
    nop                                           ; $6966: $00
    db $fc                                        ; $6967: $fc
    ei                                            ; $6968: $fb
    db $fc                                        ; $6969: $fc
    cp $02                                        ; $696a: $fe $02
    ld [bc], a                                    ; $696c: $02
    ld [bc], a                                    ; $696d: $02
    nop                                           ; $696e: $00
    ld [bc], a                                    ; $696f: $02
    ld a, [hl+]                                   ; $6970: $2a
    ld [bc], a                                    ; $6971: $02
    nop                                           ; $6972: $00
    add h                                         ; $6973: $84
    ld a, [hl+]                                   ; $6974: $2a
    jr z, jr_0ea_697c                             ; $6975: $28 $05

    ld bc, $0a02                                  ; $6977: $01 $02 $0a
    add [hl]                                      ; $697a: $86
    dec b                                         ; $697b: $05

jr_0ea_697c:
    ld bc, $080a                                  ; $697c: $01 $0a $08
    inc bc                                        ; $697f: $03
    inc de                                        ; $6980: $13
    ld [bc], a                                    ; $6981: $02
    jr z, jr_0ea_6986                             ; $6982: $28 $02

    ld e, [hl]                                    ; $6984: $5e
    adc b                                         ; $6985: $88

jr_0ea_6986:
    ld [$162a], sp                                ; $6986: $08 $2a $16
    rla                                           ; $6989: $17
    xor d                                         ; $698a: $aa
    adc d                                         ; $698b: $8a
    inc d                                         ; $698c: $14
    dec d                                         ; $698d: $15
    ld [bc], a                                    ; $698e: $02
    ld b, b                                       ; $698f: $40
    ld [bc], a                                    ; $6990: $02
    nop                                           ; $6991: $00
    ld [bc], a                                    ; $6992: $02
    ld d, h                                       ; $6993: $54
    ld [bc], a                                    ; $6994: $02
    nop                                           ; $6995: $00
    add h                                         ; $6996: $84
    ld d, h                                       ; $6997: $54
    inc d                                         ; $6998: $14
    jr nz, jr_0ea_699b                            ; $6999: $20 $00

jr_0ea_699b:
    ld [bc], a                                    ; $699b: $02
    ld d, b                                       ; $699c: $50
    add [hl]                                      ; $699d: $86
    jr nz, jr_0ea_69a0                            ; $699e: $20 $00

jr_0ea_69a0:
    ld d, b                                       ; $69a0: $50
    db $10                                        ; $69a1: $10
    ld b, b                                       ; $69a2: $40
    ld c, b                                       ; $69a3: $48
    ld [bc], a                                    ; $69a4: $02
    inc d                                         ; $69a5: $14
    ld [bc], a                                    ; $69a6: $02
    ld a, d                                       ; $69a7: $7a
    add d                                         ; $69a8: $82
    db $10                                        ; $69a9: $10
    ld d, h                                       ; $69aa: $54
    ld [bc], a                                    ; $69ab: $02
    ld l, b                                       ; $69ac: $68
    add d                                         ; $69ad: $82
    ld d, l                                       ; $69ae: $55
    ld d, c                                       ; $69af: $51
    ld [bc], a                                    ; $69b0: $02
    jr z, jr_0ea_6935                             ; $69b1: $28 $82

    and b                                         ; $69b3: $a0
    xor d                                         ; $69b4: $aa
    ld [bc], a                                    ; $69b5: $02
    dec d                                         ; $69b6: $15
    ld [bc], a                                    ; $69b7: $02
    xor d                                         ; $69b8: $aa
    ld [bc], a                                    ; $69b9: $02
    nop                                           ; $69ba: $00
    add d                                         ; $69bb: $82
    ld a, [bc]                                    ; $69bc: $0a
    ld a, [hl+]                                   ; $69bd: $2a
    ld d, $00                                     ; $69be: $16 $00
    ld [bc], a                                    ; $69c0: $02
    dec b                                         ; $69c1: $05
    ld [bc], a                                    ; $69c2: $02
    nop                                           ; $69c3: $00
    ld [bc], a                                    ; $69c4: $02
    dec b                                         ; $69c5: $05
    inc bc                                        ; $69c6: $03
    nop                                           ; $69c7: $00
    add c                                         ; $69c8: $81
    inc b                                         ; $69c9: $04
    ld d, $00                                     ; $69ca: $16 $00
    rst $38                                       ; $69cc: $ff
    rlca                                          ; $69cd: $07
    ld bc, $07f8                                  ; $69ce: $01 $f8 $07
    ld a, [c]                                     ; $69d1: $f2
    ld bc, $fbf5                                  ; $69d2: $01 $f5 $fb
    add l                                         ; $69d5: $85
    ld de, $0a00                                  ; $69d6: $11 $00 $0a
    nop                                           ; $69d9: $00
    inc b                                         ; $69da: $04
    dec de                                        ; $69db: $1b
    nop                                           ; $69dc: $00
    rst $38                                       ; $69dd: $ff
    dec c                                         ; $69de: $0d
    inc b                                         ; $69df: $04
    ld hl, sp+$07                                 ; $69e0: $f8 $07
    ld a, [c]                                     ; $69e2: $f2
    ld bc, $faea                                  ; $69e3: $01 $ea $fa
    db $ec                                        ; $69e6: $ec
    nop                                           ; $69e7: $00
    ld a, [$faf9]                                 ; $69e8: $fa $f9 $fa
    cp $02                                        ; $69eb: $fe $02
    dec b                                         ; $69ed: $05
    ld [bc], a                                    ; $69ee: $02
    nop                                           ; $69ef: $00
    ld [bc], a                                    ; $69f0: $02
    dec d                                         ; $69f1: $15
    ld [bc], a                                    ; $69f2: $02
    ld a, [hl+]                                   ; $69f3: $2a
    ld [bc], a                                    ; $69f4: $02
    ld d, l                                       ; $69f5: $55
    add [hl]                                      ; $69f6: $86
    ld a, [hl+]                                   ; $69f7: $2a
    jr z, jr_0ea_6a4f                             ; $69f8: $28 $55

    ld d, b                                       ; $69fa: $50
    ccf                                           ; $69fb: $3f
    ld [de], a                                    ; $69fc: $12
    ld [bc], a                                    ; $69fd: $02
    dec d                                         ; $69fe: $15
    add [hl]                                      ; $69ff: $86
    rra                                           ; $6a00: $1f
    inc de                                        ; $6a01: $13
    rla                                           ; $6a02: $17
    db $10                                        ; $6a03: $10
    ld d, a                                       ; $6a04: $57
    ld [hl], a                                    ; $6a05: $77
    ld [bc], a                                    ; $6a06: $02
    ld e, b                                       ; $6a07: $58
    add [hl]                                      ; $6a08: $86
    cp l                                          ; $6a09: $bd
    db $fd                                        ; $6a0a: $fd
    ld [de], a                                    ; $6a0b: $12
    ld d, a                                       ; $6a0c: $57
    cp l                                          ; $6a0d: $bd
    rst $38                                       ; $6a0e: $ff
    ld [bc], a                                    ; $6a0f: $02
    inc d                                         ; $6a10: $14
    add d                                         ; $6a11: $82
    jr nz, jr_0ea_6a3c                            ; $6a12: $20 $28

    ld [bc], a                                    ; $6a14: $02
    inc d                                         ; $6a15: $14
    ld [bc], a                                    ; $6a16: $02
    jr z, jr_0ea_6a1b                             ; $6a17: $28 $02

    inc d                                         ; $6a19: $14
    add c                                         ; $6a1a: $81

jr_0ea_6a1b:
    jr c, @+$05                                   ; $6a1b: $38 $03

    db $10                                        ; $6a1d: $10
    add c                                         ; $6a1e: $81
    jr nc, jr_0ea_6a24                            ; $6a1f: $30 $03

    db $10                                        ; $6a21: $10
    add d                                         ; $6a22: $82
    inc d                                         ; $6a23: $14

jr_0ea_6a24:
    inc e                                         ; $6a24: $1c
    ld [bc], a                                    ; $6a25: $02
    inc [hl]                                      ; $6a26: $34
    add h                                         ; $6a27: $84
    ld a, [hl-]                                   ; $6a28: $3a
    ld a, $10                                     ; $6a29: $3e $10
    inc d                                         ; $6a2b: $14
    ld [bc], a                                    ; $6a2c: $02
    ld a, [hl-]                                   ; $6a2d: $3a

jr_0ea_6a2e:
    adc h                                         ; $6a2e: $8c
    ld d, l                                       ; $6a2f: $55
    ld d, c                                       ; $6a30: $51
    ld a, d                                       ; $6a31: $7a
    ld a, [$8aaa]                                 ; $6a32: $fa $aa $8a
    ld a, [hl]                                    ; $6a35: $7e
    ld e, [hl]                                    ; $6a36: $5e
    jr z, jr_0ea_6a63                             ; $6a37: $28 $2a

    dec e                                         ; $6a39: $1d
    rra                                           ; $6a3a: $1f
    ld [bc], a                                    ; $6a3b: $02

jr_0ea_6a3c:
    ld a, [hl+]                                   ; $6a3c: $2a
    ld [bc], a                                    ; $6a3d: $02
    dec d                                         ; $6a3e: $15
    add d                                         ; $6a3f: $82
    ld [bc], a                                    ; $6a40: $02
    ld a, [bc]                                    ; $6a41: $0a
    ld [bc], a                                    ; $6a42: $02
    inc b                                         ; $6a43: $04
    inc d                                         ; $6a44: $14
    nop                                           ; $6a45: $00
    add h                                         ; $6a46: $84
    dec b                                         ; $6a47: $05
    dec d                                         ; $6a48: $15
    ld a, [bc]                                    ; $6a49: $0a
    ld a, [de]                                    ; $6a4a: $1a
    ld [bc], a                                    ; $6a4b: $02
    dec d                                         ; $6a4c: $15
    ld [bc], a                                    ; $6a4d: $02
    ld a, [bc]                                    ; $6a4e: $0a

jr_0ea_6a4f:
    add d                                         ; $6a4f: $82
    db $10                                        ; $6a50: $10
    inc d                                         ; $6a51: $14
    ld [bc], a                                    ; $6a52: $02
    ld [$0010], sp                                ; $6a53: $08 $10 $00
    rst $38                                       ; $6a56: $ff
    rlca                                          ; $6a57: $07
    ld bc, $07f8                                  ; $6a58: $01 $f8 $07
    ld a, [c]                                     ; $6a5b: $f2
    ld bc, $fbf5                                  ; $6a5c: $01 $f5 $fb
    add l                                         ; $6a5f: $85
    ld de, $0a00                                  ; $6a60: $11 $00 $0a

jr_0ea_6a63:
    nop                                           ; $6a63: $00
    inc b                                         ; $6a64: $04
    dec de                                        ; $6a65: $1b
    nop                                           ; $6a66: $00
    rst $38                                       ; $6a67: $ff
    dec c                                         ; $6a68: $0d
    inc b                                         ; $6a69: $04
    ld hl, sp+$07                                 ; $6a6a: $f8 $07
    ld a, [c]                                     ; $6a6c: $f2
    ld bc, $faea                                  ; $6a6d: $01 $ea $fa
    db $eb                                        ; $6a70: $eb
    nop                                           ; $6a71: $00
    ld a, [$faf9]                                 ; $6a72: $fa $f9 $fa
    rst $38                                       ; $6a75: $ff
    ld [bc], a                                    ; $6a76: $02
    dec b                                         ; $6a77: $05
    add d                                         ; $6a78: $82
    ld [$020a], sp                                ; $6a79: $08 $0a $02
    dec d                                         ; $6a7c: $15
    ld [bc], a                                    ; $6a7d: $02
    ccf                                           ; $6a7e: $3f
    ld [bc], a                                    ; $6a7f: $02
    ld d, l                                       ; $6a80: $55
    add [hl]                                      ; $6a81: $86
    ccf                                           ; $6a82: $3f
    dec a                                         ; $6a83: $3d
    ld d, a                                       ; $6a84: $57
    ld d, d                                       ; $6a85: $52
    ld a, a                                       ; $6a86: $7f
    ld d, d                                       ; $6a87: $52
    ld [bc], a                                    ; $6a88: $02
    dec e                                         ; $6a89: $1d
    add [hl]                                      ; $6a8a: $86
    rra                                           ; $6a8b: $1f
    inc de                                        ; $6a8c: $13
    scf                                           ; $6a8d: $37
    jr nc, @+$59                                  ; $6a8e: $30 $57

    ld [hl], a                                    ; $6a90: $77
    ld [bc], a                                    ; $6a91: $02
    ld e, d                                       ; $6a92: $5a
    add [hl]                                      ; $6a93: $86
    cp l                                          ; $6a94: $bd
    db $fd                                        ; $6a95: $fd
    ld a, [de]                                    ; $6a96: $1a
    ld a, a                                       ; $6a97: $7f
    cp l                                          ; $6a98: $bd
    rst $38                                       ; $6a99: $ff
    ld [bc], a                                    ; $6a9a: $02
    jr z, jr_0ea_6a9f                             ; $6a9b: $28 $02

    inc d                                         ; $6a9d: $14
    add d                                         ; $6a9e: $82

jr_0ea_6a9f:
    jr nc, jr_0ea_6ad9                            ; $6a9f: $30 $38

    ld [bc], a                                    ; $6aa1: $02
    inc d                                         ; $6aa2: $14
    ld [bc], a                                    ; $6aa3: $02
    jr c, jr_0ea_6aa8                             ; $6aa4: $38 $02

    inc d                                         ; $6aa6: $14
    add d                                         ; $6aa7: $82

jr_0ea_6aa8:
    inc a                                         ; $6aa8: $3c
    inc d                                         ; $6aa9: $14
    inc bc                                        ; $6aaa: $03
    jr nc, jr_0ea_6a2e                            ; $6aab: $30 $81

    db $10                                        ; $6aad: $10
    ld [bc], a                                    ; $6aae: $02
    jr @-$7c                                      ; $6aaf: $18 $82

    inc d                                         ; $6ab1: $14
    inc e                                         ; $6ab2: $1c
    ld [bc], a                                    ; $6ab3: $02
    inc [hl]                                      ; $6ab4: $34
    add h                                         ; $6ab5: $84
    ld a, [hl-]                                   ; $6ab6: $3a
    ld a, $30                                     ; $6ab7: $3e $30
    inc a                                         ; $6ab9: $3c
    ld [bc], a                                    ; $6aba: $02
    ld a, [hl-]                                   ; $6abb: $3a
    adc h                                         ; $6abc: $8c
    ld [hl], l                                    ; $6abd: $75
    pop af                                        ; $6abe: $f1
    xor [hl]                                      ; $6abf: $ae
    adc [hl]                                      ; $6ac0: $8e
    ld a, [hl]                                    ; $6ac1: $7e
    ld e, a                                       ; $6ac2: $5f
    add hl, sp                                    ; $6ac3: $39
    dec sp                                        ; $6ac4: $3b
    dec e                                         ; $6ac5: $1d
    rra                                           ; $6ac6: $1f
    ld a, [hl+]                                   ; $6ac7: $2a
    ld l, $02                                     ; $6ac8: $2e $02
    ccf                                           ; $6aca: $3f
    add d                                         ; $6acb: $82
    ld [bc], a                                    ; $6acc: $02
    ld a, [bc]                                    ; $6acd: $0a
    ld [bc], a                                    ; $6ace: $02
    inc c                                         ; $6acf: $0c
    ld [de], a                                    ; $6ad0: $12
    nop                                           ; $6ad1: $00
    ld [bc], a                                    ; $6ad2: $02
    dec a                                         ; $6ad3: $3d
    add h                                         ; $6ad4: $84
    ld a, [bc]                                    ; $6ad5: $0a
    ld a, [hl+]                                   ; $6ad6: $2a
    inc d                                         ; $6ad7: $14
    inc [hl]                                      ; $6ad8: $34

jr_0ea_6ad9:
    ld [bc], a                                    ; $6ad9: $02
    ld a, [hl+]                                   ; $6ada: $2a
    ld [bc], a                                    ; $6adb: $02
    ld e, $82                                     ; $6adc: $1e $82
    jr nz, jr_0ea_6b08                            ; $6ade: $20 $28

    ld [bc], a                                    ; $6ae0: $02
    jr jr_0ea_6af3                                ; $6ae1: $18 $10

    nop                                           ; $6ae3: $00
    rst $38                                       ; $6ae4: $ff
    rlca                                          ; $6ae5: $07
    ld bc, $07f8                                  ; $6ae6: $01 $f8 $07
    ld a, [c]                                     ; $6ae9: $f2
    ld bc, $fbf5                                  ; $6aea: $01 $f5 $fb
    add l                                         ; $6aed: $85
    ld de, $0a00                                  ; $6aee: $11 $00 $0a
    nop                                           ; $6af1: $00
    inc b                                         ; $6af2: $04

jr_0ea_6af3:
    dec de                                        ; $6af3: $1b
    nop                                           ; $6af4: $00
    rst $38                                       ; $6af5: $ff
    dec c                                         ; $6af6: $0d
    inc b                                         ; $6af7: $04
    ld hl, sp+$07                                 ; $6af8: $f8 $07
    ld a, [c]                                     ; $6afa: $f2
    ld bc, $faea                                  ; $6afb: $01 $ea $fa
    ld [$faff], a                                 ; $6afe: $ea $ff $fa
    ld sp, hl                                     ; $6b01: $f9
    ld a, [$0200]                                 ; $6b02: $fa $00 $02
    rlca                                          ; $6b05: $07
    ld [bc], a                                    ; $6b06: $02
    dec d                                         ; $6b07: $15

jr_0ea_6b08:
    add d                                         ; $6b08: $82
    scf                                           ; $6b09: $37
    ccf                                           ; $6b0a: $3f
    ld [bc], a                                    ; $6b0b: $02
    dec e                                         ; $6b0c: $1d
    sbc b                                         ; $6b0d: $98
    ld a, a                                       ; $6b0e: $7f
    ld [hl], l                                    ; $6b0f: $75
    scf                                           ; $6b10: $37
    dec [hl]                                      ; $6b11: $35
    ld a, a                                       ; $6b12: $7f
    ld [hl], d                                    ; $6b13: $72
    ld e, a                                       ; $6b14: $5f
    ld d, d                                       ; $6b15: $52
    ccf                                           ; $6b16: $3f
    dec a                                         ; $6b17: $3d
    rra                                           ; $6b18: $1f
    inc de                                        ; $6b19: $13
    ccf                                           ; $6b1a: $3f
    jr c, jr_0ea_6b74                             ; $6b1b: $38 $57

    ld [hl], a                                    ; $6b1d: $77
    ld e, d                                       ; $6b1e: $5a
    ld a, d                                       ; $6b1f: $7a
    cp l                                          ; $6b20: $bd
    db $fd                                        ; $6b21: $fd
    sbc d                                         ; $6b22: $9a
    rst $38                                       ; $6b23: $ff
    cp l                                          ; $6b24: $bd
    rst $38                                       ; $6b25: $ff
    ld [bc], a                                    ; $6b26: $02
    inc d                                         ; $6b27: $14
    ld [bc], a                                    ; $6b28: $02
    ld [$1a82], sp                                ; $6b29: $08 $82 $1a
    ld e, $02                                     ; $6b2c: $1e $02
    ld a, [de]                                    ; $6b2e: $1a
    add d                                         ; $6b2f: $82
    ld e, $0e                                     ; $6b30: $1e $0e
    ld [bc], a                                    ; $6b32: $02
    inc c                                         ; $6b33: $0c
    add h                                         ; $6b34: $84
    ld e, $0e                                     ; $6b35: $1e $0e
    ld a, [de]                                    ; $6b37: $1a
    ld a, [bc]                                    ; $6b38: $0a
    ld [bc], a                                    ; $6b39: $02
    inc e                                         ; $6b3a: $1c
    add d                                         ; $6b3b: $82
    jr jr_0ea_6b46                                ; $6b3c: $18 $08

    ld [bc], a                                    ; $6b3e: $02
    inc e                                         ; $6b3f: $1c
    adc b                                         ; $6b40: $88
    ld a, [bc]                                    ; $6b41: $0a
    ld c, $1a                                     ; $6b42: $0e $1a
    ld e, $1d                                     ; $6b44: $1e $1d

jr_0ea_6b46:
    rra                                           ; $6b46: $1f
    jr jr_0ea_6b67                                ; $6b47: $18 $1e

    ld [bc], a                                    ; $6b49: $02
    dec e                                         ; $6b4a: $1d
    adc d                                         ; $6b4b: $8a
    cp $9f                                        ; $6b4c: $fe $9f
    ld a, $1f                                     ; $6b4e: $3e $1f
    dec a                                         ; $6b50: $3d
    ccf                                           ; $6b51: $3f
    dec c                                         ; $6b52: $0d
    rrca                                          ; $6b53: $0f
    dec sp                                        ; $6b54: $3b
    ccf                                           ; $6b55: $3f
    ld [bc], a                                    ; $6b56: $02
    dec sp                                        ; $6b57: $3b
    add d                                         ; $6b58: $82
    ld [de], a                                    ; $6b59: $12
    ld e, $02                                     ; $6b5a: $1e $02
    inc c                                         ; $6b5c: $0c
    stop                                          ; $6b5d: $10 $00
    add d                                         ; $6b5f: $82
    ld a, l                                       ; $6b60: $7d
    ld a, c                                       ; $6b61: $79
    ld [bc], a                                    ; $6b62: $02
    ld a, b                                       ; $6b63: $78
    add [hl]                                      ; $6b64: $86
    inc [hl]                                      ; $6b65: $34
    ld [hl], h                                    ; $6b66: $74

jr_0ea_6b67:
    jr nz, jr_0ea_6bc9                            ; $6b67: $20 $60

    ld d, h                                       ; $6b69: $54
    ld e, h                                       ; $6b6a: $5c
    ld [bc], a                                    ; $6b6b: $02
    inc e                                         ; $6b6c: $1c
    add d                                         ; $6b6d: $82
    ld c, b                                       ; $6b6e: $48
    ld e, b                                       ; $6b6f: $58
    ld [bc], a                                    ; $6b70: $02
    jr nc, jr_0ea_6b83                            ; $6b71: $30 $10

    nop                                           ; $6b73: $00

jr_0ea_6b74:
    rst $38                                       ; $6b74: $ff
    rlca                                          ; $6b75: $07
    ld bc, $07f8                                  ; $6b76: $01 $f8 $07
    ld a, [c]                                     ; $6b79: $f2
    ld bc, $fbf5                                  ; $6b7a: $01 $f5 $fb
    add l                                         ; $6b7d: $85
    ld de, $0a00                                  ; $6b7e: $11 $00 $0a
    nop                                           ; $6b81: $00
    inc b                                         ; $6b82: $04

jr_0ea_6b83:
    dec de                                        ; $6b83: $1b
    nop                                           ; $6b84: $00
    rst $38                                       ; $6b85: $ff
    dec c                                         ; $6b86: $0d
    inc b                                         ; $6b87: $04
    ld hl, sp+$07                                 ; $6b88: $f8 $07
    ld a, [c]                                     ; $6b8a: $f2
    ld bc, $faea                                  ; $6b8b: $01 $ea $fa
    ld [$faff], a                                 ; $6b8e: $ea $ff $fa
    ld sp, hl                                     ; $6b91: $f9
    ld a, [$0200]                                 ; $6b92: $fa $00 $02
    rlca                                          ; $6b95: $07
    add e                                         ; $6b96: $83
    dec e                                         ; $6b97: $1d
    rra                                           ; $6b98: $1f
    scf                                           ; $6b99: $37
    inc bc                                        ; $6b9a: $03
    ccf                                           ; $6b9b: $3f
    sbc b                                         ; $6b9c: $98
    ld a, a                                       ; $6b9d: $7f
    ld [hl], l                                    ; $6b9e: $75
    ccf                                           ; $6b9f: $3f
    dec a                                         ; $6ba0: $3d
    ld a, a                                       ; $6ba1: $7f
    ld [hl], d                                    ; $6ba2: $72
    ld a, a                                       ; $6ba3: $7f
    ld d, d                                       ; $6ba4: $52
    ccf                                           ; $6ba5: $3f
    dec a                                         ; $6ba6: $3d
    rra                                           ; $6ba7: $1f
    inc de                                        ; $6ba8: $13
    ccf                                           ; $6ba9: $3f
    jr c, jr_0ea_6c03                             ; $6baa: $38 $57

    ld [hl], a                                    ; $6bac: $77
    ld e, d                                       ; $6bad: $5a
    ld a, d                                       ; $6bae: $7a
    cp l                                          ; $6baf: $bd
    db $fd                                        ; $6bb0: $fd
    sbc d                                         ; $6bb1: $9a
    rst $38                                       ; $6bb2: $ff
    cp l                                          ; $6bb3: $bd
    rst $38                                       ; $6bb4: $ff
    ld [bc], a                                    ; $6bb5: $02
    inc d                                         ; $6bb6: $14
    ld [bc], a                                    ; $6bb7: $02
    inc e                                         ; $6bb8: $1c
    add e                                         ; $6bb9: $83
    ld a, [de]                                    ; $6bba: $1a
    ld e, $1a                                     ; $6bbb: $1e $1a
    ld [bc], a                                    ; $6bbd: $02
    ld e, $81                                     ; $6bbe: $1e $81
    ld c, $02                                     ; $6bc0: $0e $02
    inc e                                         ; $6bc2: $1c
    add h                                         ; $6bc3: $84
    ld e, $0e                                     ; $6bc4: $1e $0e
    ld e, $0a                                     ; $6bc6: $1e $0a
    ld [bc], a                                    ; $6bc8: $02

jr_0ea_6bc9:
    inc e                                         ; $6bc9: $1c
    add d                                         ; $6bca: $82
    jr jr_0ea_6bd5                                ; $6bcb: $18 $08

    ld [bc], a                                    ; $6bcd: $02
    inc e                                         ; $6bce: $1c
    adc b                                         ; $6bcf: $88
    ld a, [bc]                                    ; $6bd0: $0a
    ld c, $1a                                     ; $6bd1: $0e $1a
    ld e, $1d                                     ; $6bd3: $1e $1d

jr_0ea_6bd5:
    rra                                           ; $6bd5: $1f
    jr @+$20                                      ; $6bd6: $18 $1e

    ld [bc], a                                    ; $6bd8: $02
    dec e                                         ; $6bd9: $1d
    adc c                                         ; $6bda: $89
    cp $9f                                        ; $6bdb: $fe $9f
    ld a, [hl]                                    ; $6bdd: $7e
    ld e, a                                       ; $6bde: $5f
    dec a                                         ; $6bdf: $3d
    ccf                                           ; $6be0: $3f
    dec e                                         ; $6be1: $1d
    rra                                           ; $6be2: $1f
    dec sp                                        ; $6be3: $3b
    inc bc                                        ; $6be4: $03
    ccf                                           ; $6be5: $3f
    add d                                         ; $6be6: $82
    ld [de], a                                    ; $6be7: $12
    ld e, $02                                     ; $6be8: $1e $02
    inc c                                         ; $6bea: $0c
    stop                                          ; $6beb: $10 $00
    add d                                         ; $6bed: $82
    ld a, l                                       ; $6bee: $7d
    ld a, c                                       ; $6bef: $79
    ld [bc], a                                    ; $6bf0: $02
    ld a, d                                       ; $6bf1: $7a
    add [hl]                                      ; $6bf2: $86
    inc [hl]                                      ; $6bf3: $34
    ld [hl], h                                    ; $6bf4: $74
    jr z, @+$6a                                   ; $6bf5: $28 $68

    ld d, h                                       ; $6bf7: $54
    ld e, h                                       ; $6bf8: $5c
    ld [bc], a                                    ; $6bf9: $02
    inc a                                         ; $6bfa: $3c
    add d                                         ; $6bfb: $82
    ld c, b                                       ; $6bfc: $48
    ld e, b                                       ; $6bfd: $58
    ld [bc], a                                    ; $6bfe: $02
    jr nc, jr_0ea_6c11                            ; $6bff: $30 $10

    nop                                           ; $6c01: $00
    rst $38                                       ; $6c02: $ff

jr_0ea_6c03:
    rlca                                          ; $6c03: $07
    ld bc, $07f8                                  ; $6c04: $01 $f8 $07
    ld a, [c]                                     ; $6c07: $f2
    ld bc, $fbf5                                  ; $6c08: $01 $f5 $fb
    add l                                         ; $6c0b: $85
    ld de, $0a00                                  ; $6c0c: $11 $00 $0a
    nop                                           ; $6c0f: $00
    inc b                                         ; $6c10: $04

jr_0ea_6c11:
    dec de                                        ; $6c11: $1b
    nop                                           ; $6c12: $00
    rst $38                                       ; $6c13: $ff
    dec c                                         ; $6c14: $0d
    inc b                                         ; $6c15: $04
    ld hl, sp+$07                                 ; $6c16: $f8 $07
    ld a, [c]                                     ; $6c18: $f2
    ld bc, $f9ea                                  ; $6c19: $01 $ea $f9
    ld [$faff], a                                 ; $6c1c: $ea $ff $fa
    ei                                            ; $6c1f: $fb
    ld a, [$0200]                                 ; $6c20: $fa $00 $02
    inc bc                                        ; $6c23: $03
    add e                                         ; $6c24: $83
    ld c, $0f                                     ; $6c25: $0e $0f
    dec de                                        ; $6c27: $1b
    inc bc                                        ; $6c28: $03
    rra                                           ; $6c29: $1f
    sbc b                                         ; $6c2a: $98
    ccf                                           ; $6c2b: $3f
    ld a, [hl-]                                   ; $6c2c: $3a
    rra                                           ; $6c2d: $1f
    ld e, $3f                                     ; $6c2e: $1e $3f
    add hl, sp                                    ; $6c30: $39
    ccf                                           ; $6c31: $3f
    add hl, hl                                    ; $6c32: $29
    rra                                           ; $6c33: $1f
    ld e, $0f                                     ; $6c34: $1e $0f
    add hl, bc                                    ; $6c36: $09
    rra                                           ; $6c37: $1f
    inc e                                         ; $6c38: $1c
    dec hl                                        ; $6c39: $2b
    dec sp                                        ; $6c3a: $3b
    ld e, l                                       ; $6c3b: $5d
    ld a, l                                       ; $6c3c: $7d
    cp [hl]                                       ; $6c3d: $be
    cp $cd                                        ; $6c3e: $fe $cd
    rst $38                                       ; $6c40: $ff
    ld e, [hl]                                    ; $6c41: $5e
    ld [hl], a                                    ; $6c42: $77
    ld [bc], a                                    ; $6c43: $02
    inc [hl]                                      ; $6c44: $34
    ld [bc], a                                    ; $6c45: $02
    inc a                                         ; $6c46: $3c
    add e                                         ; $6c47: $83
    ld a, [hl-]                                   ; $6c48: $3a
    ld a, $3a                                     ; $6c49: $3e $3a
    ld [bc], a                                    ; $6c4b: $02
    ld a, $81                                     ; $6c4c: $3e $81
    ld l, $02                                     ; $6c4e: $2e $02
    inc a                                         ; $6c50: $3c
    add h                                         ; $6c51: $84
    ld a, $0e                                     ; $6c52: $3e $0e
    ld a, $0a                                     ; $6c54: $3e $0a
    ld [bc], a                                    ; $6c56: $02
    inc a                                         ; $6c57: $3c
    adc h                                         ; $6c58: $8c
    jr c, jr_0ea_6c83                             ; $6c59: $38 $28

    inc a                                         ; $6c5b: $3c
    inc e                                         ; $6c5c: $1c
    ld a, [hl+]                                   ; $6c5d: $2a
    ld l, $1a                                     ; $6c5e: $2e $1a
    ld e, $3d                                     ; $6c60: $1e $3d
    ccf                                           ; $6c62: $3f
    jr jr_0ea_6ca3                                ; $6c63: $18 $3e

    ld [bc], a                                    ; $6c65: $02
    dec a                                         ; $6c66: $3d
    adc d                                         ; $6c67: $8a
    ei                                            ; $6c68: $fb
    cp a                                          ; $6c69: $bf
    ei                                            ; $6c6a: $fb
    rst $38                                       ; $6c6b: $ff
    ld [hl], l                                    ; $6c6c: $75
    ld a, a                                       ; $6c6d: $7f
    ld [hl], l                                    ; $6c6e: $75
    ld a, a                                       ; $6c6f: $7f
    xor $fe                                       ; $6c70: $ee $fe
    ld [bc], a                                    ; $6c72: $02
    db $fd                                        ; $6c73: $fd
    add d                                         ; $6c74: $82
    ld c, d                                       ; $6c75: $4a
    ld a, d                                       ; $6c76: $7a
    ld [bc], a                                    ; $6c77: $02
    ld sp, $0010                                  ; $6c78: $31 $10 $00
    add d                                         ; $6c7b: $82
    dec e                                         ; $6c7c: $1d
    add hl, de                                    ; $6c7d: $19
    ld [bc], a                                    ; $6c7e: $02
    ld a, [de]                                    ; $6c7f: $1a
    ld [bc], a                                    ; $6c80: $02
    inc d                                         ; $6c81: $14
    ld [bc], a                                    ; $6c82: $02

jr_0ea_6c83:
    ld [$1481], sp                                ; $6c83: $08 $81 $14
    inc bc                                        ; $6c86: $03
    inc e                                         ; $6c87: $1c
    add d                                         ; $6c88: $82
    ld [$0218], sp                                ; $6c89: $08 $18 $02
    db $10                                        ; $6c8c: $10
    stop                                          ; $6c8d: $10 $00
    rst $38                                       ; $6c8f: $ff
    rlca                                          ; $6c90: $07
    ld bc, $07f8                                  ; $6c91: $01 $f8 $07
    ld a, [c]                                     ; $6c94: $f2
    ld bc, $fbf5                                  ; $6c95: $01 $f5 $fb
    add l                                         ; $6c98: $85
    ld de, $0a00                                  ; $6c99: $11 $00 $0a
    nop                                           ; $6c9c: $00
    inc b                                         ; $6c9d: $04
    dec de                                        ; $6c9e: $1b
    nop                                           ; $6c9f: $00
    rst $38                                       ; $6ca0: $ff
    dec c                                         ; $6ca1: $0d
    inc b                                         ; $6ca2: $04

jr_0ea_6ca3:
    ld hl, sp+$07                                 ; $6ca3: $f8 $07
    ld a, [c]                                     ; $6ca5: $f2
    ld bc, $faea                                  ; $6ca6: $01 $ea $fa
    ld [$faff], a                                 ; $6ca9: $ea $ff $fa
    ei                                            ; $6cac: $fb
    ld a, [$0200]                                 ; $6cad: $fa $00 $02
    rlca                                          ; $6cb0: $07
    add e                                         ; $6cb1: $83
    dec e                                         ; $6cb2: $1d
    rra                                           ; $6cb3: $1f
    scf                                           ; $6cb4: $37
    inc bc                                        ; $6cb5: $03
    ccf                                           ; $6cb6: $3f
    sub d                                         ; $6cb7: $92
    ld a, a                                       ; $6cb8: $7f
    ld [hl], l                                    ; $6cb9: $75
    ccf                                           ; $6cba: $3f
    dec a                                         ; $6cbb: $3d
    ld a, a                                       ; $6cbc: $7f
    ld [hl], d                                    ; $6cbd: $72
    ld a, a                                       ; $6cbe: $7f
    ld d, d                                       ; $6cbf: $52
    ccf                                           ; $6cc0: $3f
    dec a                                         ; $6cc1: $3d
    rra                                           ; $6cc2: $1f
    inc de                                        ; $6cc3: $13
    ccf                                           ; $6cc4: $3f
    jr c, jr_0ea_6d1e                             ; $6cc5: $38 $57

    ld [hl], a                                    ; $6cc7: $77
    ld e, d                                       ; $6cc8: $5a
    ld a, d                                       ; $6cc9: $7a
    ld [bc], a                                    ; $6cca: $02
    db $fd                                        ; $6ccb: $fd
    add h                                         ; $6ccc: $84
    sbc d                                         ; $6ccd: $9a
    rst $38                                       ; $6cce: $ff
    adc l                                         ; $6ccf: $8d
    rst $38                                       ; $6cd0: $ff
    ld [bc], a                                    ; $6cd1: $02
    inc d                                         ; $6cd2: $14
    ld [bc], a                                    ; $6cd3: $02
    inc e                                         ; $6cd4: $1c
    add e                                         ; $6cd5: $83
    ld a, [de]                                    ; $6cd6: $1a
    ld e, $1a                                     ; $6cd7: $1e $1a
    ld [bc], a                                    ; $6cd9: $02
    ld e, $81                                     ; $6cda: $1e $81
    ld c, $02                                     ; $6cdc: $0e $02
    inc e                                         ; $6cde: $1c
    add h                                         ; $6cdf: $84
    ld e, $0e                                     ; $6ce0: $1e $0e
    ld e, $0a                                     ; $6ce2: $1e $0a
    ld [bc], a                                    ; $6ce4: $02
    inc e                                         ; $6ce5: $1c
    add d                                         ; $6ce6: $82
    jr jr_0ea_6cf1                                ; $6ce7: $18 $08

    ld [bc], a                                    ; $6ce9: $02
    inc e                                         ; $6cea: $1c
    adc b                                         ; $6ceb: $88
    ld a, [bc]                                    ; $6cec: $0a
    ld c, $1a                                     ; $6ced: $0e $1a
    ld e, $1d                                     ; $6cef: $1e $1d

jr_0ea_6cf1:
    rra                                           ; $6cf1: $1f
    jr jr_0ea_6d12                                ; $6cf2: $18 $1e

    ld [bc], a                                    ; $6cf4: $02
    dec e                                         ; $6cf5: $1d
    adc d                                         ; $6cf6: $8a
    cp e                                          ; $6cf7: $bb
    rst $18                                       ; $6cf8: $df
    ei                                            ; $6cf9: $fb
    rst $38                                       ; $6cfa: $ff
    push af                                       ; $6cfb: $f5
    rst $38                                       ; $6cfc: $ff
    ld [hl], l                                    ; $6cfd: $75
    ld a, a                                       ; $6cfe: $7f
    xor $fe                                       ; $6cff: $ee $fe
    ld [bc], a                                    ; $6d01: $02
    db $fd                                        ; $6d02: $fd
    add d                                         ; $6d03: $82
    ld c, d                                       ; $6d04: $4a
    ld a, d                                       ; $6d05: $7a
    ld [bc], a                                    ; $6d06: $02
    ld sp, $0010                                  ; $6d07: $31 $10 $00
    add d                                         ; $6d0a: $82
    dec e                                         ; $6d0b: $1d
    add hl, de                                    ; $6d0c: $19
    ld [bc], a                                    ; $6d0d: $02
    ld a, [de]                                    ; $6d0e: $1a
    ld [bc], a                                    ; $6d0f: $02
    inc d                                         ; $6d10: $14
    ld [bc], a                                    ; $6d11: $02

jr_0ea_6d12:
    ld [$1481], sp                                ; $6d12: $08 $81 $14
    inc bc                                        ; $6d15: $03
    inc e                                         ; $6d16: $1c
    add d                                         ; $6d17: $82
    ld [$0218], sp                                ; $6d18: $08 $18 $02
    db $10                                        ; $6d1b: $10
    stop                                          ; $6d1c: $10 $00

jr_0ea_6d1e:
    rst $38                                       ; $6d1e: $ff
    rlca                                          ; $6d1f: $07
    ld bc, $07f8                                  ; $6d20: $01 $f8 $07

jr_0ea_6d23:
    ld a, [c]                                     ; $6d23: $f2
    ld bc, $fbf5                                  ; $6d24: $01 $f5 $fb
    add l                                         ; $6d27: $85
    ld de, $0a00                                  ; $6d28: $11 $00 $0a
    nop                                           ; $6d2b: $00
    inc b                                         ; $6d2c: $04
    dec de                                        ; $6d2d: $1b
    nop                                           ; $6d2e: $00
    rst $38                                       ; $6d2f: $ff
    dec c                                         ; $6d30: $0d
    inc b                                         ; $6d31: $04
    ld hl, sp+$07                                 ; $6d32: $f8 $07
    ld a, [c]                                     ; $6d34: $f2
    ld bc, $f9ea                                  ; $6d35: $01 $ea $f9
    ld [$faff], a                                 ; $6d38: $ea $ff $fa
    ld a, [$00fa]                                 ; $6d3b: $fa $fa $00
    ld [bc], a                                    ; $6d3e: $02
    inc bc                                        ; $6d3f: $03
    add e                                         ; $6d40: $83
    ld c, $0f                                     ; $6d41: $0e $0f
    dec de                                        ; $6d43: $1b
    inc bc                                        ; $6d44: $03
    rra                                           ; $6d45: $1f
    sbc b                                         ; $6d46: $98
    ccf                                           ; $6d47: $3f
    ld a, [hl-]                                   ; $6d48: $3a
    rra                                           ; $6d49: $1f
    ld e, $3f                                     ; $6d4a: $1e $3f
    add hl, sp                                    ; $6d4c: $39
    ccf                                           ; $6d4d: $3f
    add hl, hl                                    ; $6d4e: $29
    rra                                           ; $6d4f: $1f
    ld e, $0f                                     ; $6d50: $1e $0f
    add hl, bc                                    ; $6d52: $09
    rra                                           ; $6d53: $1f
    inc e                                         ; $6d54: $1c
    dec hl                                        ; $6d55: $2b
    dec sp                                        ; $6d56: $3b
    ld l, l                                       ; $6d57: $6d
    ld a, l                                       ; $6d58: $7d
    sbc [hl]                                      ; $6d59: $9e
    cp $bd                                        ; $6d5a: $fe $bd
    rst $08                                       ; $6d5c: $cf
    cp [hl]                                       ; $6d5d: $be
    rst $08                                       ; $6d5e: $cf
    ld [bc], a                                    ; $6d5f: $02
    inc [hl]                                      ; $6d60: $34
    ld [bc], a                                    ; $6d61: $02
    inc a                                         ; $6d62: $3c
    add e                                         ; $6d63: $83
    ld a, [hl-]                                   ; $6d64: $3a
    ld a, $3a                                     ; $6d65: $3e $3a
    ld [bc], a                                    ; $6d67: $02
    ld a, $81                                     ; $6d68: $3e $81
    ld l, $02                                     ; $6d6a: $2e $02
    inc a                                         ; $6d6c: $3c
    add h                                         ; $6d6d: $84
    ld a, $0e                                     ; $6d6e: $3e $0e
    ld a, $0a                                     ; $6d70: $3e $0a
    ld [bc], a                                    ; $6d72: $02
    inc a                                         ; $6d73: $3c
    adc h                                         ; $6d74: $8c
    jr c, jr_0ea_6d9f                             ; $6d75: $38 $28

    inc a                                         ; $6d77: $3c
    inc e                                         ; $6d78: $1c
    ld a, [hl+]                                   ; $6d79: $2a
    ld l, $1a                                     ; $6d7a: $2e $1a
    ld e, $3d                                     ; $6d7c: $1e $3d
    ccf                                           ; $6d7e: $3f
    jr jr_0ea_6dbf                                ; $6d7f: $18 $3e

    ld [bc], a                                    ; $6d81: $02
    dec a                                         ; $6d82: $3d
    adc d                                         ; $6d83: $8a
    push af                                       ; $6d84: $f5
    rst $38                                       ; $6d85: $ff
    ld l, l                                       ; $6d86: $6d
    ld a, a                                       ; $6d87: $7f
    ld a, [hl-]                                   ; $6d88: $3a
    ccf                                           ; $6d89: $3f
    ld a, [hl-]                                   ; $6d8a: $3a
    ccf                                           ; $6d8b: $3f
    ld [hl], a                                    ; $6d8c: $77
    ld a, a                                       ; $6d8d: $7f
    ld [bc], a                                    ; $6d8e: $02
    ld a, [hl]                                    ; $6d8f: $7e
    add d                                         ; $6d90: $82
    dec h                                         ; $6d91: $25
    dec a                                         ; $6d92: $3d
    ld [bc], a                                    ; $6d93: $02
    jr jr_0ea_6da6                                ; $6d94: $18 $10

    nop                                           ; $6d96: $00
    add d                                         ; $6d97: $82
    dec a                                         ; $6d98: $3d
    add hl, sp                                    ; $6d99: $39
    ld [bc], a                                    ; $6d9a: $02
    ld a, [hl-]                                   ; $6d9b: $3a
    ld [bc], a                                    ; $6d9c: $02
    inc [hl]                                      ; $6d9d: $34
    ld [bc], a                                    ; $6d9e: $02

jr_0ea_6d9f:
    jr z, jr_0ea_6d23                             ; $6d9f: $28 $82

    inc d                                         ; $6da1: $14
    inc e                                         ; $6da2: $1c
    ld [bc], a                                    ; $6da3: $02
    inc a                                         ; $6da4: $3c
    add d                                         ; $6da5: $82

jr_0ea_6da6:
    ld [$0218], sp                                ; $6da6: $08 $18 $02
    jr nc, jr_0ea_6dbb                            ; $6da9: $30 $10

    nop                                           ; $6dab: $00
    rst $38                                       ; $6dac: $ff
    rlca                                          ; $6dad: $07
    ld bc, $07f8                                  ; $6dae: $01 $f8 $07
    ld a, [c]                                     ; $6db1: $f2
    ld bc, $fbf5                                  ; $6db2: $01 $f5 $fb
    add l                                         ; $6db5: $85
    ld de, $0a00                                  ; $6db6: $11 $00 $0a
    nop                                           ; $6db9: $00
    inc b                                         ; $6dba: $04

jr_0ea_6dbb:
    dec de                                        ; $6dbb: $1b
    nop                                           ; $6dbc: $00
    rst $38                                       ; $6dbd: $ff
    dec c                                         ; $6dbe: $0d

jr_0ea_6dbf:
    inc b                                         ; $6dbf: $04
    ld hl, sp+$07                                 ; $6dc0: $f8 $07
    ld a, [c]                                     ; $6dc2: $f2
    ld bc, $f8ea                                  ; $6dc3: $01 $ea $f8
    ld [$faff], a                                 ; $6dc6: $ea $ff $fa
    ei                                            ; $6dc9: $fb
    ld a, [$0200]                                 ; $6dca: $fa $00 $02
    ld bc, $0702                                  ; $6dcd: $01 $02 $07
    add c                                         ; $6dd0: $81
    dec c                                         ; $6dd1: $0d
    inc bc                                        ; $6dd2: $03
    rrca                                          ; $6dd3: $0f
    add d                                         ; $6dd4: $82
    rra                                           ; $6dd5: $1f
    dec e                                         ; $6dd6: $1d
    ld [bc], a                                    ; $6dd7: $02
    rrca                                          ; $6dd8: $0f
    sub d                                         ; $6dd9: $92
    rra                                           ; $6dda: $1f
    inc e                                         ; $6ddb: $1c
    ccf                                           ; $6ddc: $3f
    inc [hl]                                      ; $6ddd: $34
    ld a, a                                       ; $6dde: $7f
    ld c, a                                       ; $6ddf: $4f
    rst $28                                       ; $6de0: $ef
    xor h                                         ; $6de1: $ac
    rst $00                                       ; $6de2: $c7
    add $ed                                       ; $6de3: $c6 $ed
    adc l                                         ; $6de5: $8d
    halt                                          ; $6de6: $76
    ld a, [hl]                                    ; $6de7: $7e
    ld c, a                                       ; $6de8: $4f
    ld a, a                                       ; $6de9: $7f
    ld a, $3f                                     ; $6dea: $3e $3f
    ld [bc], a                                    ; $6dec: $02
    rrca                                          ; $6ded: $0f
    ld [bc], a                                    ; $6dee: $02
    ld [hl], h                                    ; $6def: $74
    add l                                         ; $6df0: $85
    inc a                                         ; $6df1: $3c
    ld a, h                                       ; $6df2: $7c
    ld a, d                                       ; $6df3: $7a
    ld a, [hl]                                    ; $6df4: $7e
    ld a, d                                       ; $6df5: $7a
    ld [bc], a                                    ; $6df6: $02
    ld a, [hl]                                    ; $6df7: $7e
    and c                                         ; $6df8: $a1
    ld l, $7c                                     ; $6df9: $2e $7c
    inc a                                         ; $6dfb: $3c
    ld a, [hl]                                    ; $6dfc: $7e
    ld c, [hl]                                    ; $6dfd: $4e
    ld a, [hl]                                    ; $6dfe: $7e
    ld c, d                                       ; $6dff: $4a
    ld a, h                                       ; $6e00: $7c
    inc a                                         ; $6e01: $3c
    ld a, b                                       ; $6e02: $78
    ld l, b                                       ; $6e03: $68
    ld a, h                                       ; $6e04: $7c
    inc e                                         ; $6e05: $1c
    ld l, d                                       ; $6e06: $6a
    ld l, [hl]                                    ; $6e07: $6e
    ld e, d                                       ; $6e08: $5a
    ld e, [hl]                                    ; $6e09: $5e
    dec a                                         ; $6e0a: $3d
    ccf                                           ; $6e0b: $3f
    ld e, b                                       ; $6e0c: $58
    ld a, [hl]                                    ; $6e0d: $7e
    dec a                                         ; $6e0e: $3d
    ld a, l                                       ; $6e0f: $7d
    ld a, e                                       ; $6e10: $7b
    ld a, a                                       ; $6e11: $7f
    ld e, e                                       ; $6e12: $5b
    ld a, a                                       ; $6e13: $7f
    ld [hl], l                                    ; $6e14: $75
    ld a, a                                       ; $6e15: $7f
    ld [hl], l                                    ; $6e16: $75
    ld a, a                                       ; $6e17: $7f
    xor $fe                                       ; $6e18: $ee $fe
    ld [bc], a                                    ; $6e1a: $02
    db $fd                                        ; $6e1b: $fd
    add d                                         ; $6e1c: $82
    ld c, d                                       ; $6e1d: $4a
    ld a, d                                       ; $6e1e: $7a
    ld [bc], a                                    ; $6e1f: $02
    ld sp, $0010                                  ; $6e20: $31 $10 $00
    add d                                         ; $6e23: $82
    dec e                                         ; $6e24: $1d
    add hl, de                                    ; $6e25: $19
    ld [bc], a                                    ; $6e26: $02
    ld a, [de]                                    ; $6e27: $1a
    ld [bc], a                                    ; $6e28: $02
    inc d                                         ; $6e29: $14
    ld [bc], a                                    ; $6e2a: $02
    ld [$1481], sp                                ; $6e2b: $08 $81 $14
    inc bc                                        ; $6e2e: $03
    inc e                                         ; $6e2f: $1c
    add d                                         ; $6e30: $82
    ld [$0218], sp                                ; $6e31: $08 $18 $02
    db $10                                        ; $6e34: $10
    stop                                          ; $6e35: $10 $00
    rst $38                                       ; $6e37: $ff
    add hl, bc                                    ; $6e38: $09
    ld [bc], a                                    ; $6e39: $02
    ld hl, sp+$07                                 ; $6e3a: $f8 $07
    ld a, [c]                                     ; $6e3c: $f2
    ld bc, $faf3                                  ; $6e3d: $01 $f3 $fa
    di                                            ; $6e40: $f3
    ei                                            ; $6e41: $fb
    adc c                                         ; $6e42: $89
    ld b, b                                       ; $6e43: $40
    nop                                           ; $6e44: $00
    ldh [rP1], a                                  ; $6e45: $e0 $00
    ld c, b                                       ; $6e47: $48
    nop                                           ; $6e48: $00
    dec b                                         ; $6e49: $05
    nop                                           ; $6e4a: $00
    ld [bc], a                                    ; $6e4b: $02
    dec de                                        ; $6e4c: $1b
    nop                                           ; $6e4d: $00
    add c                                         ; $6e4e: $81
    ld bc, $001b                                  ; $6e4f: $01 $1b $00
    rst $38                                       ; $6e52: $ff
    dec c                                         ; $6e53: $0d
    inc b                                         ; $6e54: $04
    ld hl, sp+$07                                 ; $6e55: $f8 $07
    ld a, [c]                                     ; $6e57: $f2
    ld bc, $f8ea                                  ; $6e58: $01 $ea $f8
    ld [$faff], a                                 ; $6e5b: $ea $ff $fa
    ei                                            ; $6e5e: $fb
    ld a, [$0200]                                 ; $6e5f: $fa $00 $02
    inc bc                                        ; $6e62: $03
    add e                                         ; $6e63: $83
    ld b, $07                                     ; $6e64: $06 $07
    dec bc                                        ; $6e66: $0b
    ld [bc], a                                    ; $6e67: $02
    rrca                                          ; $6e68: $0f
    add c                                         ; $6e69: $81
    dec c                                         ; $6e6a: $0d
    ld [bc], a                                    ; $6e6b: $02
    rra                                           ; $6e6c: $1f
    sub b                                         ; $6e6d: $90
    rrca                                          ; $6e6e: $0f
    inc c                                         ; $6e6f: $0c
    ccf                                           ; $6e70: $3f
    inc a                                         ; $6e71: $3c
    ld a, a                                       ; $6e72: $7f
    ld d, a                                       ; $6e73: $57
    rst $28                                       ; $6e74: $ef
    xor h                                         ; $6e75: $ac
    rst $00                                       ; $6e76: $c7
    push bc                                       ; $6e77: $c5
    rst $28                                       ; $6e78: $ef
    adc [hl]                                      ; $6e79: $8e
    push af                                       ; $6e7a: $f5
    db $fd                                        ; $6e7b: $fd
    ld b, [hl]                                    ; $6e7c: $46
    ld a, [hl]                                    ; $6e7d: $7e
    ld [bc], a                                    ; $6e7e: $02
    ccf                                           ; $6e7f: $3f
    add c                                         ; $6e80: $81
    ld c, $03                                     ; $6e81: $0e $03
    rrca                                          ; $6e83: $0f
    ld [bc], a                                    ; $6e84: $02
    ld [hl], h                                    ; $6e85: $74
    xor b                                         ; $6e86: $a8
    inc a                                         ; $6e87: $3c
    ld a, h                                       ; $6e88: $7c
    ld a, d                                       ; $6e89: $7a
    ld a, [hl]                                    ; $6e8a: $7e
    ld a, d                                       ; $6e8b: $7a
    ld l, $7e                                     ; $6e8c: $2e $7e
    ld a, $7c                                     ; $6e8e: $3e $7c
    ld c, h                                       ; $6e90: $4c
    ld a, [hl]                                    ; $6e91: $7e
    ld c, [hl]                                    ; $6e92: $4e
    ld a, [hl]                                    ; $6e93: $7e
    ld a, [hl-]                                   ; $6e94: $3a
    ld a, h                                       ; $6e95: $7c
    ld l, h                                       ; $6e96: $6c
    ld a, b                                       ; $6e97: $78
    jr z, jr_0ea_6f16                             ; $6e98: $28 $7c

    ld e, h                                       ; $6e9a: $5c
    ld l, d                                       ; $6e9b: $6a
    ld l, [hl]                                    ; $6e9c: $6e
    ld e, d                                       ; $6e9d: $5a
    ld e, [hl]                                    ; $6e9e: $5e
    dec a                                         ; $6e9f: $3d
    ccf                                           ; $6ea0: $3f
    ld e, b                                       ; $6ea1: $58
    ld a, [hl]                                    ; $6ea2: $7e
    dec a                                         ; $6ea3: $3d
    ld a, l                                       ; $6ea4: $7d
    ld a, e                                       ; $6ea5: $7b
    ld a, a                                       ; $6ea6: $7f
    ld a, e                                       ; $6ea7: $7b
    ld a, a                                       ; $6ea8: $7f
    ld [hl], l                                    ; $6ea9: $75
    ld a, a                                       ; $6eaa: $7f
    ld [hl], l                                    ; $6eab: $75
    ld a, a                                       ; $6eac: $7f
    xor $fe                                       ; $6ead: $ee $fe
    ld [bc], a                                    ; $6eaf: $02
    db $fd                                        ; $6eb0: $fd
    add d                                         ; $6eb1: $82
    ld c, d                                       ; $6eb2: $4a
    ld a, d                                       ; $6eb3: $7a
    ld [bc], a                                    ; $6eb4: $02
    ld sp, $0010                                  ; $6eb5: $31 $10 $00
    add d                                         ; $6eb8: $82
    dec e                                         ; $6eb9: $1d
    add hl, de                                    ; $6eba: $19
    ld [bc], a                                    ; $6ebb: $02
    ld a, [de]                                    ; $6ebc: $1a
    ld [bc], a                                    ; $6ebd: $02
    inc d                                         ; $6ebe: $14
    ld [bc], a                                    ; $6ebf: $02
    ld [$1481], sp                                ; $6ec0: $08 $81 $14
    inc bc                                        ; $6ec3: $03
    inc e                                         ; $6ec4: $1c
    add d                                         ; $6ec5: $82
    ld [$0218], sp                                ; $6ec6: $08 $18 $02
    db $10                                        ; $6ec9: $10
    stop                                          ; $6eca: $10 $00
    rst $38                                       ; $6ecc: $ff
    add hl, bc                                    ; $6ecd: $09
    ld [bc], a                                    ; $6ece: $02
    ld hl, sp+$07                                 ; $6ecf: $f8 $07
    ld a, [c]                                     ; $6ed1: $f2
    ld bc, $faf2                                  ; $6ed2: $01 $f2 $fa
    ld a, [c]                                     ; $6ed5: $f2
    ei                                            ; $6ed6: $fb
    adc e                                         ; $6ed7: $8b
    ld b, b                                       ; $6ed8: $40
    nop                                           ; $6ed9: $00
    ldh [rP1], a                                  ; $6eda: $e0 $00
    ld b, b                                       ; $6edc: $40
    nop                                           ; $6edd: $00
    ld [$0500], sp                                ; $6ede: $08 $00 $05
    nop                                           ; $6ee1: $00
    ld [bc], a                                    ; $6ee2: $02
    dec de                                        ; $6ee3: $1b
    nop                                           ; $6ee4: $00
    add c                                         ; $6ee5: $81
    ld bc, $0019                                  ; $6ee6: $01 $19 $00
    rst $38                                       ; $6ee9: $ff
    dec c                                         ; $6eea: $0d
    inc b                                         ; $6eeb: $04
    ld hl, sp+$07                                 ; $6eec: $f8 $07
    ld a, [c]                                     ; $6eee: $f2
    ld bc, $f8ea                                  ; $6eef: $01 $ea $f8
    ld [$faff], a                                 ; $6ef2: $ea $ff $fa
    ei                                            ; $6ef5: $fb
    ld a, [$0200]                                 ; $6ef6: $fa $00 $02
    inc bc                                        ; $6ef9: $03
    add e                                         ; $6efa: $83
    ld b, $07                                     ; $6efb: $06 $07
    dec bc                                        ; $6efd: $0b
    ld [bc], a                                    ; $6efe: $02
    rrca                                          ; $6eff: $0f
    add c                                         ; $6f00: $81
    dec c                                         ; $6f01: $0d
    ld [bc], a                                    ; $6f02: $02
    rra                                           ; $6f03: $1f
    sub b                                         ; $6f04: $90
    rrca                                          ; $6f05: $0f
    inc c                                         ; $6f06: $0c
    ccf                                           ; $6f07: $3f
    inc a                                         ; $6f08: $3c
    ld a, a                                       ; $6f09: $7f
    ld d, a                                       ; $6f0a: $57
    rst $28                                       ; $6f0b: $ef
    xor h                                         ; $6f0c: $ac
    rst $00                                       ; $6f0d: $c7
    push bc                                       ; $6f0e: $c5
    rst $28                                       ; $6f0f: $ef
    adc [hl]                                      ; $6f10: $8e
    push af                                       ; $6f11: $f5
    db $fd                                        ; $6f12: $fd
    ld b, [hl]                                    ; $6f13: $46
    ld a, [hl]                                    ; $6f14: $7e
    ld [bc], a                                    ; $6f15: $02

jr_0ea_6f16:
    ccf                                           ; $6f16: $3f
    add c                                         ; $6f17: $81
    ld c, $03                                     ; $6f18: $0e $03
    rrca                                          ; $6f1a: $0f
    ld [bc], a                                    ; $6f1b: $02
    ld [hl], h                                    ; $6f1c: $74
    adc b                                         ; $6f1d: $88
    inc a                                         ; $6f1e: $3c
    ld a, h                                       ; $6f1f: $7c
    ld a, d                                       ; $6f20: $7a
    ld a, [hl]                                    ; $6f21: $7e
    ld a, d                                       ; $6f22: $7a
    ld l, $7e                                     ; $6f23: $2e $7e
    ld e, $02                                     ; $6f25: $1e $02
    ld a, h                                       ; $6f27: $7c
    sbc [hl]                                      ; $6f28: $9e
    ld a, [hl]                                    ; $6f29: $7e
    ld c, [hl]                                    ; $6f2a: $4e
    ld a, [hl]                                    ; $6f2b: $7e
    ld [hl-], a                                   ; $6f2c: $32
    ld a, h                                       ; $6f2d: $7c
    ld c, h                                       ; $6f2e: $4c
    ld a, b                                       ; $6f2f: $78
    jr z, jr_0ea_6fae                             ; $6f30: $28 $7c

    ld e, h                                       ; $6f32: $5c
    ld l, d                                       ; $6f33: $6a
    ld l, [hl]                                    ; $6f34: $6e
    ld e, d                                       ; $6f35: $5a
    ld e, [hl]                                    ; $6f36: $5e
    dec a                                         ; $6f37: $3d
    ccf                                           ; $6f38: $3f
    ld e, b                                       ; $6f39: $58
    ld a, [hl]                                    ; $6f3a: $7e
    dec a                                         ; $6f3b: $3d
    ld a, l                                       ; $6f3c: $7d
    ld a, e                                       ; $6f3d: $7b
    ld a, a                                       ; $6f3e: $7f
    ld a, e                                       ; $6f3f: $7b
    ld a, a                                       ; $6f40: $7f
    ld [hl], l                                    ; $6f41: $75
    ld a, a                                       ; $6f42: $7f
    ld [hl], l                                    ; $6f43: $75
    ld a, a                                       ; $6f44: $7f
    xor $fe                                       ; $6f45: $ee $fe
    ld [bc], a                                    ; $6f47: $02
    db $fd                                        ; $6f48: $fd
    add d                                         ; $6f49: $82
    ld c, d                                       ; $6f4a: $4a
    ld a, d                                       ; $6f4b: $7a
    ld [bc], a                                    ; $6f4c: $02
    ld sp, $0010                                  ; $6f4d: $31 $10 $00
    add d                                         ; $6f50: $82
    dec e                                         ; $6f51: $1d
    add hl, de                                    ; $6f52: $19
    ld [bc], a                                    ; $6f53: $02
    ld a, [de]                                    ; $6f54: $1a
    ld [bc], a                                    ; $6f55: $02
    inc d                                         ; $6f56: $14
    ld [bc], a                                    ; $6f57: $02
    ld [$1481], sp                                ; $6f58: $08 $81 $14
    inc bc                                        ; $6f5b: $03
    inc e                                         ; $6f5c: $1c
    add d                                         ; $6f5d: $82
    ld [$0218], sp                                ; $6f5e: $08 $18 $02
    db $10                                        ; $6f61: $10
    stop                                          ; $6f62: $10 $00
    rst $38                                       ; $6f64: $ff
    add hl, bc                                    ; $6f65: $09
    ld [bc], a                                    ; $6f66: $02
    ld hl, sp+$07                                 ; $6f67: $f8 $07
    ld a, [c]                                     ; $6f69: $f2
    ld bc, $faf2                                  ; $6f6a: $01 $f2 $fa
    ld a, [c]                                     ; $6f6d: $f2
    ei                                            ; $6f6e: $fb
    adc e                                         ; $6f6f: $8b
    ld b, b                                       ; $6f70: $40
    nop                                           ; $6f71: $00
    ldh [rP1], a                                  ; $6f72: $e0 $00
    ld b, b                                       ; $6f74: $40
    nop                                           ; $6f75: $00
    ld [$0500], sp                                ; $6f76: $08 $00 $05
    nop                                           ; $6f79: $00
    ld [bc], a                                    ; $6f7a: $02
    dec de                                        ; $6f7b: $1b
    nop                                           ; $6f7c: $00
    add c                                         ; $6f7d: $81
    ld bc, $0019                                  ; $6f7e: $01 $19 $00
    rst $38                                       ; $6f81: $ff
    rrca                                          ; $6f82: $0f
    dec b                                         ; $6f83: $05
    db $f4                                        ; $6f84: $f4
    dec bc                                        ; $6f85: $0b
    ld a, [$f301]                                 ; $6f86: $fa $01 $f3
    db $f4                                        ; $6f89: $f4
    rst $28                                       ; $6f8a: $ef
    db $fc                                        ; $6f8b: $fc
    ldh a, [rDIV]                                 ; $6f8c: $f0 $04
    rst $38                                       ; $6f8e: $ff
    db $fc                                        ; $6f8f: $fc
    rst $38                                       ; $6f90: $ff
    inc b                                         ; $6f91: $04
    sbc [hl]                                      ; $6f92: $9e
    jr nc, jr_0ea_6f95                            ; $6f93: $30 $00

jr_0ea_6f95:
    or b                                          ; $6f95: $b0
    nop                                           ; $6f96: $00
    and b                                         ; $6f97: $a0
    nop                                           ; $6f98: $00
    xor c                                         ; $6f99: $a9
    nop                                           ; $6f9a: $00
    ld [hl], $09                                  ; $6f9b: $36 $09
    ld e, l                                       ; $6f9d: $5d
    ld [hl+], a                                   ; $6f9e: $22
    ld d, e                                       ; $6f9f: $53
    ld hl, $0327                                  ; $6fa0: $21 $27 $03
    add e                                         ; $6fa3: $83
    rlca                                          ; $6fa4: $07
    inc bc                                        ; $6fa5: $03
    ld [hl], a                                    ; $6fa6: $77
    ld [hl], e                                    ; $6fa7: $73
    rst $38                                       ; $6fa8: $ff
    ei                                            ; $6fa9: $fb
    rst $38                                       ; $6faa: $ff
    rst $30                                       ; $6fab: $f7
    rst $38                                       ; $6fac: $ff
    ld a, [hl]                                    ; $6fad: $7e

jr_0ea_6fae:
    rst $38                                       ; $6fae: $ff
    add c                                         ; $6faf: $81
    ld a, [hl]                                    ; $6fb0: $7e
    ld [bc], a                                    ; $6fb1: $02
    nop                                           ; $6fb2: $00
    sbc c                                         ; $6fb3: $99
    add b                                         ; $6fb4: $80
    nop                                           ; $6fb5: $00
    add $00                                       ; $6fb6: $c6 $00
    dec b                                         ; $6fb8: $05
    ld [bc], a                                    ; $6fb9: $02
    add hl, bc                                    ; $6fba: $09
    ld b, $0b                                     ; $6fbb: $06 $0b
    ld b, $0e                                     ; $6fbd: $06 $0e
    inc b                                         ; $6fbf: $04
    ld b, $00                                     ; $6fc0: $06 $00
    ld c, d                                       ; $6fc2: $4a
    add l                                         ; $6fc3: $85
    and $01                                       ; $6fc4: $e6 $01
    ld d, c                                       ; $6fc6: $51
    ldh [$f0], a                                  ; $6fc7: $e0 $f0
    ldh [$f8], a                                  ; $6fc9: $e0 $f8
    ldh a, [$f4]                                  ; $6fcb: $f0 $f4
    ld [bc], a                                    ; $6fcd: $02
    ld sp, hl                                     ; $6fce: $f9
    adc b                                         ; $6fcf: $88
    rst $38                                       ; $6fd0: $ff
    ld sp, hl                                     ; $6fd1: $f9
    rst $38                                       ; $6fd2: $ff
    ld hl, sp-$01                                 ; $6fd3: $f8 $ff
    ret nz                                        ; $6fd5: $c0

    nop                                           ; $6fd6: $00
    ret nz                                        ; $6fd7: $c0

    rlca                                          ; $6fd8: $07
    nop                                           ; $6fd9: $00
    sub e                                         ; $6fda: $93
    ret nz                                        ; $6fdb: $c0

    nop                                           ; $6fdc: $00
    ld d, b                                       ; $6fdd: $50
    ldh [$e8], a                                  ; $6fde: $e0 $e8
    ldh a, [rBCPD]                                ; $6fe0: $f0 $69
    ldh a, [$e9]                                  ; $6fe2: $f0 $e9
    ld [hl], b                                    ; $6fe4: $70
    ld [hl], e                                    ; $6fe5: $73
    ld hl, $2743                                  ; $6fe6: $21 $43 $27
    ld [hl], c                                    ; $6fe9: $71
    add e                                         ; $6fea: $83
    ld a, [hl]                                    ; $6feb: $7e
    add c                                         ; $6fec: $81
    adc l                                         ; $6fed: $8d
    ld [bc], a                                    ; $6fee: $02
    ld [hl], d                                    ; $6fef: $72
    add a                                         ; $6ff0: $87
    rst $38                                       ; $6ff1: $ff
    ld a, [$f4ff]                                 ; $6ff2: $fa $ff $f4
    ei                                            ; $6ff5: $fb
    dec bc                                        ; $6ff6: $0b
    ldh a, [rNR32]                                ; $6ff7: $f0 $1c
    nop                                           ; $6ff9: $00
    add h                                         ; $6ffa: $84
    cp $ff                                        ; $6ffb: $fe $ff
    ld bc, $1afe                                  ; $6ffd: $01 $fe $1a
    nop                                           ; $7000: $00
    rst $38                                       ; $7001: $ff
    rrca                                          ; $7002: $0f
    dec b                                         ; $7003: $05
    db $f4                                        ; $7004: $f4
    dec bc                                        ; $7005: $0b
    ld a, [$f201]                                 ; $7006: $fa $01 $f2
    db $f4                                        ; $7009: $f4
    xor $fc                                       ; $700a: $ee $fc
    rst $28                                       ; $700c: $ef
    inc b                                         ; $700d: $04
    cp $fc                                        ; $700e: $fe $fc
    cp $04                                        ; $7010: $fe $04
    add l                                         ; $7012: $85
    stop                                          ; $7013: $10 $00
    adc b                                         ; $7015: $88
    nop                                           ; $7016: $00
    add b                                         ; $7017: $80
    inc bc                                        ; $7018: $03
    nop                                           ; $7019: $00
    sbc l                                         ; $701a: $9d
    ld bc, $0200                                  ; $701b: $01 $00 $02
    ld bc, $0183                                  ; $701e: $01 $83 $01
    add l                                         ; $7021: $85
    inc bc                                        ; $7022: $03
    rst $30                                       ; $7023: $f7
    inc bc                                        ; $7024: $03
    or e                                          ; $7025: $b3
    ld a, a                                       ; $7026: $7f
    ld a, e                                       ; $7027: $7b
    rst $38                                       ; $7028: $ff
    ld sp, hl                                     ; $7029: $f9
    rst $38                                       ; $702a: $ff
    db $fd                                        ; $702b: $fd
    rst $38                                       ; $702c: $ff
    ld hl, sp-$01                                 ; $702d: $f8 $ff
    ld a, [hl]                                    ; $702f: $7e
    rst $38                                       ; $7030: $ff
    add c                                         ; $7031: $81
    ld a, [hl]                                    ; $7032: $7e
    ld b, $00                                     ; $7033: $06 $00
    inc b                                         ; $7035: $04
    ld [bc], a                                    ; $7036: $02
    inc b                                         ; $7037: $04
    ld [bc], a                                    ; $7038: $02
    ld [bc], a                                    ; $7039: $02
    sub [hl]                                      ; $703a: $96
    nop                                           ; $703b: $00
    ld [$0500], sp                                ; $703c: $08 $00 $05
    nop                                           ; $703f: $00
    ld bc, $0100                                  ; $7040: $01 $00 $01
    nop                                           ; $7043: $00
    ld de, $f8e0                                  ; $7044: $11 $e0 $f8
    ldh [$d4], a                                  ; $7047: $e0 $d4
    add sp, -$2e                                  ; $7049: $e8 $d2
    db $ec                                        ; $704b: $ec
    cp $ec                                        ; $704c: $fe $ec
    ld [$f1fd], a                                 ; $704e: $ea $fd $f1
    ld [bc], a                                    ; $7051: $02
    cp $84                                        ; $7052: $fe $84
    rst $38                                       ; $7054: $ff
    ret nz                                        ; $7055: $c0

    nop                                           ; $7056: $00
    ld b, b                                       ; $7057: $40
    inc bc                                        ; $7058: $03
    nop                                           ; $7059: $00
    sub a                                         ; $705a: $97
    add b                                         ; $705b: $80
    nop                                           ; $705c: $00
    ret nz                                        ; $705d: $c0

    nop                                           ; $705e: $00
    ld b, b                                       ; $705f: $40
    add b                                         ; $7060: $80
    and b                                         ; $7061: $a0
    ret nz                                        ; $7062: $c0

    ld d, b                                       ; $7063: $50
    ldh [$a0], a                                  ; $7064: $e0 $a0
    ld b, b                                       ; $7066: $40
    ld b, e                                       ; $7067: $43
    nop                                           ; $7068: $00
    inc b                                         ; $7069: $04
    inc bc                                        ; $706a: $03
    add e                                         ; $706b: $83
    ld bc, $cf80                                  ; $706c: $01 $80 $cf
    ld l, [hl]                                    ; $706f: $6e
    sbc a                                         ; $7070: $9f
    rst $18                                       ; $7071: $df
    ld [bc], a                                    ; $7072: $02
    ccf                                           ; $7073: $3f
    inc bc                                        ; $7074: $03
    rst $38                                       ; $7075: $ff
    add [hl]                                      ; $7076: $86
    rst $28                                       ; $7077: $ef
    rst $38                                       ; $7078: $ff
    rrca                                          ; $7079: $0f
    rst $38                                       ; $707a: $ff
    db $10                                        ; $707b: $10
    rrca                                          ; $707c: $0f
    ld a, [de]                                    ; $707d: $1a
    nop                                           ; $707e: $00
    add [hl]                                      ; $707f: $86
    ld a, a                                       ; $7080: $7f
    rst $38                                       ; $7081: $ff
    ld l, [hl]                                    ; $7082: $6e
    rst $38                                       ; $7083: $ff
    sub c                                         ; $7084: $91
    ld l, [hl]                                    ; $7085: $6e
    jr jr_0ea_7088                                ; $7086: $18 $00

jr_0ea_7088:
    rst $38                                       ; $7088: $ff
    rrca                                          ; $7089: $0f
    dec b                                         ; $708a: $05
    db $f4                                        ; $708b: $f4
    dec bc                                        ; $708c: $0b
    ld a, [$f201]                                 ; $708d: $fa $01 $f2
    db $f4                                        ; $7090: $f4
    db $ed                                        ; $7091: $ed
    db $fc                                        ; $7092: $fc
    xor $04                                       ; $7093: $ee $04
    db $fd                                        ; $7095: $fd
    db $fc                                        ; $7096: $fc
    db $fd                                        ; $7097: $fd
    inc b                                         ; $7098: $04
    add c                                         ; $7099: $81
    add b                                         ; $709a: $80
    dec b                                         ; $709b: $05
    nop                                           ; $709c: $00
    sbc e                                         ; $709d: $9b
    ld bc, $8200                                  ; $709e: $01 $00 $82
    ld bc, $0381                                  ; $70a1: $01 $81 $03
    ld de, $2803                                  ; $70a4: $11 $03 $28
    ld de, $387c                                  ; $70a7: $11 $7c $38
    inc a                                         ; $70aa: $3c
    ld a, [hl]                                    ; $70ab: $7e
    cp h                                          ; $70ac: $bc
    ld a, [hl]                                    ; $70ad: $7e
    cp h                                          ; $70ae: $bc
    ld a, a                                       ; $70af: $7f
    ld a, c                                       ; $70b0: $79
    rst $38                                       ; $70b1: $ff
    ld [hl], e                                    ; $70b2: $73
    rst $38                                       ; $70b3: $ff
    xor e                                         ; $70b4: $ab
    ld [hl], a                                    ; $70b5: $77
    call nc, Call_000_0623                        ; $70b6: $d4 $23 $06
    rlca                                          ; $70b9: $07
    nop                                           ; $70ba: $00
    sbc c                                         ; $70bb: $99
    dec b                                         ; $70bc: $05
    nop                                           ; $70bd: $00
    ld h, b                                       ; $70be: $60
    ld bc, $00e1                                  ; $70bf: $01 $e1 $00
    sub b                                         ; $70c2: $90
    ld h, b                                       ; $70c3: $60
    ld [hl], b                                    ; $70c4: $70
    ldh [$fa], a                                  ; $70c5: $e0 $fa
    db $f4                                        ; $70c7: $f4
    ld sp, hl                                     ; $70c8: $f9
    or $f2                                        ; $70c9: $f6 $f2
    db $ec                                        ; $70cb: $ec
    rst $30                                       ; $70cc: $f7
    cp $1f                                        ; $70cd: $fe $1f
    rst $38                                       ; $70cf: $ff
    rra                                           ; $70d0: $1f
    ccf                                           ; $70d1: $3f
    rra                                           ; $70d2: $1f
    ccf                                           ; $70d3: $3f
    ld b, b                                       ; $70d4: $40
    inc bc                                        ; $70d5: $03
    nop                                           ; $70d6: $00
    add a                                         ; $70d7: $87
    add b                                         ; $70d8: $80
    nop                                           ; $70d9: $00
    ld b, b                                       ; $70da: $40
    add b                                         ; $70db: $80
    nop                                           ; $70dc: $00
    add b                                         ; $70dd: $80
    nop                                           ; $70de: $00
    ld [bc], a                                    ; $70df: $02
    add b                                         ; $70e0: $80
    dec b                                         ; $70e1: $05
    nop                                           ; $70e2: $00
    add a                                         ; $70e3: $87
    ld bc, $1e00                                  ; $70e4: $01 $00 $1e
    ld bc, $1ca3                                  ; $70e7: $01 $a3 $1c
    rst $38                                       ; $70ea: $ff
    ld [bc], a                                    ; $70eb: $02
    ld a, $8f                                     ; $70ec: $3e $8f
    rst $38                                       ; $70ee: $ff
    sbc [hl]                                      ; $70ef: $9e
    rst $38                                       ; $70f0: $ff
    sbc [hl]                                      ; $70f1: $9e
    rst $38                                       ; $70f2: $ff
    rra                                           ; $70f3: $1f
    ccf                                           ; $70f4: $3f
    ld e, a                                       ; $70f5: $5f
    cp a                                          ; $70f6: $bf

jr_0ea_70f7:
    sbc a                                         ; $70f7: $9f
    rst $38                                       ; $70f8: $ff
    ld l, a                                       ; $70f9: $6f
    sbc a                                         ; $70fa: $9f
    sub b                                         ; $70fb: $90
    rrca                                          ; $70fc: $0f
    jr jr_0ea_70ff                                ; $70fd: $18 $00

jr_0ea_70ff:
    adc b                                         ; $70ff: $88
    xor l                                         ; $7100: $ad
    cp $b3                                        ; $7101: $fe $b3
    db $fc                                        ; $7103: $fc
    ld [hl], a                                    ; $7104: $77
    ld hl, sp-$73                                 ; $7105: $f8 $8d
    ld [hl], b                                    ; $7107: $70
    ld d, $00                                     ; $7108: $16 $00
    rst $38                                       ; $710a: $ff
    rrca                                          ; $710b: $0f
    dec b                                         ; $710c: $05
    db $f4                                        ; $710d: $f4
    dec bc                                        ; $710e: $0b
    ld a, [$f401]                                 ; $710f: $fa $01 $f4
    db $f4                                        ; $7112: $f4
    ldh a, [$fc]                                  ; $7113: $f0 $fc
    rst $28                                       ; $7115: $ef
    inc b                                         ; $7116: $04
    rst $38                                       ; $7117: $ff
    db $fc                                        ; $7118: $fc
    rst $38                                       ; $7119: $ff
    inc b                                         ; $711a: $04
    add e                                         ; $711b: $83
    ld b, b                                       ; $711c: $40
    nop                                           ; $711d: $00
    add c                                         ; $711e: $81
    ld [bc], a                                    ; $711f: $02
    nop                                           ; $7120: $00
    sub a                                         ; $7121: $97
    ld bc, $0172                                  ; $7122: $01 $72 $01
    xor c                                         ; $7125: $a9
    ld [hl], b                                    ; $7126: $70
    ld d, h                                       ; $7127: $54
    jr c, jr_0ea_71a9                             ; $7128: $38 $7f

    inc a                                         ; $712a: $3c
    dec e                                         ; $712b: $1d
    ld a, $3a                                     ; $712c: $3e $3a
    ld a, l                                       ; $712e: $7d
    reti                                          ; $712f: $d9


    ccf                                           ; $7130: $3f
    push de                                       ; $7131: $d5
    dec sp                                        ; $7132: $3b
    db $ed                                        ; $7133: $ed
    inc de                                        ; $7134: $13
    ld a, [$cd07]                                 ; $7135: $fa $07 $cd
    ld [bc], a                                    ; $7138: $02
    inc b                                         ; $7139: $04
    nop                                           ; $713a: $00
    add l                                         ; $713b: $85
    ld h, b                                       ; $713c: $60
    nop                                           ; $713d: $00
    ld d, b                                       ; $713e: $50
    jr nz, jr_0ea_7171                            ; $713f: $20 $30

    ld [bc], a                                    ; $7141: $02
    ld h, b                                       ; $7142: $60
    sbc h                                         ; $7143: $9c
    nop                                           ; $7144: $00
    ld d, h                                       ; $7145: $54
    ldh [$f4], a                                  ; $7146: $e0 $f4
    ldh [$c4], a                                  ; $7148: $e0 $c4
    ldh [$ec], a                                  ; $714a: $e0 $ec
    ret nz                                        ; $714c: $c0

    ld a, [bc]                                    ; $714d: $0a
    db $fc                                        ; $714e: $fc
    sbc [hl]                                      ; $714f: $9e
    ld a, h                                       ; $7150: $7c
    ld a, a                                       ; $7151: $7f
    ld e, $9e                                     ; $7152: $1e $9e
    ccf                                           ; $7154: $3f
    rst $18                                       ; $7155: $df
    ccf                                           ; $7156: $3f
    ld e, a                                       ; $7157: $5f
    cp a                                          ; $7158: $bf
    xor a                                         ; $7159: $af
    rst $18                                       ; $715a: $df
    rst $08                                       ; $715b: $cf
    rst $38                                       ; $715c: $ff
    ret nz                                        ; $715d: $c0

    nop                                           ; $715e: $00
    ret nz                                        ; $715f: $c0

    add hl, bc                                    ; $7160: $09
    nop                                           ; $7161: $00
    sub h                                         ; $7162: $94
    ld bc, $3100                                  ; $7163: $01 $00 $31
    nop                                           ; $7166: $00
    or h                                          ; $7167: $b4
    ld a, b                                       ; $7168: $78
    db $fc                                        ; $7169: $fc
    ld a, b                                       ; $716a: $78
    jp z, $fd3c                                   ; $716b: $ca $3c $fd

    jr jr_0ea_70f7                                ; $716e: $18 $87

    ld a, b                                       ; $7170: $78

jr_0ea_7171:
    ld [hl], a                                    ; $7171: $77
    ld hl, sp-$05                                 ; $7172: $f8 $fb
    db $fc                                        ; $7174: $fc
    ei                                            ; $7175: $fb
    db $fc                                        ; $7176: $fc
    ld [bc], a                                    ; $7177: $02
    nop                                           ; $7178: $00
    add h                                         ; $7179: $84
    sub $ef                                       ; $717a: $d6 $ef
    add hl, hl                                    ; $717c: $29
    add $1a                                       ; $717d: $c6 $1a
    nop                                           ; $717f: $00
    add [hl]                                      ; $7180: $86
    ei                                            ; $7181: $fb
    db $fc                                        ; $7182: $fc
    halt                                          ; $7183: $76

jr_0ea_7184:
    rst $38                                       ; $7184: $ff
    adc c                                         ; $7185: $89
    halt                                          ; $7186: $76
    ld a, [de]                                    ; $7187: $1a
    nop                                           ; $7188: $00
    rst $38                                       ; $7189: $ff
    dec c                                         ; $718a: $0d
    inc b                                         ; $718b: $04
    db $f4                                        ; $718c: $f4
    dec bc                                        ; $718d: $0b
    ld a, [$f301]                                 ; $718e: $fa $01 $f3
    db $f4                                        ; $7191: $f4
    xor $fc                                       ; $7192: $ee $fc
    db $f4                                        ; $7194: $f4
    inc b                                         ; $7195: $04
    cp $fc                                        ; $7196: $fe $fc
    add c                                         ; $7198: $81
    add c                                         ; $7199: $81
    ld [bc], a                                    ; $719a: $02
    nop                                           ; $719b: $00
    sbc e                                         ; $719c: $9b
    ld bc, $0100                                  ; $719d: $01 $00 $01
    ld h, c                                       ; $71a0: $61
    nop                                           ; $71a1: $00
    jr nc, jr_0ea_7184                            ; $71a2: $30 $e0

    xor b                                         ; $71a4: $a8
    ld [hl], b                                    ; $71a5: $70
    ld b, h                                       ; $71a6: $44
    jr c, @-$42                                   ; $71a7: $38 $bc

jr_0ea_71a9:
    jr @+$32                                      ; $71a9: $18 $30

    ld a, e                                       ; $71ab: $7b
    inc de                                        ; $71ac: $13
    ccf                                           ; $71ad: $3f
    adc e                                         ; $71ae: $8b
    rla                                           ; $71af: $17
    push hl                                       ; $71b0: $e5
    dec de                                        ; $71b1: $1b
    jp c, $bc3d                                   ; $71b2: $da $3d $bc

    ld a, a                                       ; $71b5: $7f
    jp $023c                                      ; $71b6: $c3 $3c $02


    nop                                           ; $71b9: $00
    add e                                         ; $71ba: $83
    ld h, b                                       ; $71bb: $60
    nop                                           ; $71bc: $00
    db $10                                        ; $71bd: $10
    ld [bc], a                                    ; $71be: $02
    jr nz, jr_0ea_71c3                            ; $71bf: $20 $02

    db $10                                        ; $71c1: $10
    or l                                          ; $71c2: $b5

jr_0ea_71c3:
    nop                                           ; $71c3: $00
    sub h                                         ; $71c4: $94
    nop                                           ; $71c5: $00
    ld [bc], a                                    ; $71c6: $02
    ret nz                                        ; $71c7: $c0

jr_0ea_71c8:
    call z, $80c0                                 ; $71c8: $cc $c0 $80
    call z, $9c00                                 ; $71cb: $cc $00 $9c
    xor l                                         ; $71ce: $ad
    ld e, $5d                                     ; $71cf: $1e $5d
    ld a, $5d                                     ; $71d1: $3e $5d
    ld a, $3f                                     ; $71d3: $3e $3f
    inc e                                         ; $71d5: $1c
    dec e                                         ; $71d6: $1d
    ccf                                           ; $71d7: $3f
    dec c                                         ; $71d8: $0d
    sbc a                                         ; $71d9: $9f
    ld de, $61cf                                  ; $71da: $11 $cf $61
    nop                                           ; $71dd: $00
    and d                                         ; $71de: $a2
    ld h, b                                       ; $71df: $60
    ldh a, [$60]                                  ; $71e0: $f0 $60
    xor b                                         ; $71e2: $a8
    ld [hl], b                                    ; $71e3: $70
    ld d, c                                       ; $71e4: $51
    jr nz, jr_0ea_71c8                            ; $71e5: $20 $e1

    nop                                           ; $71e7: $00
    ldh a, [$e0]                                  ; $71e8: $f0 $e0
    db $f4                                        ; $71ea: $f4
    ld hl, sp-$09                                 ; $71eb: $f8 $f7
    ld hl, sp-$01                                 ; $71ed: $f8 $ff
    ld hl, sp-$09                                 ; $71ef: $f8 $f7
    ld hl, sp-$0a                                 ; $71f1: $f8 $f6
    rst $38                                       ; $71f3: $ff
    halt                                          ; $71f4: $76
    rst $38                                       ; $71f5: $ff
    add hl, bc                                    ; $71f6: $09
    halt                                          ; $71f7: $76
    inc b                                         ; $71f8: $04
    nop                                           ; $71f9: $00
    adc b                                         ; $71fa: $88
    ld e, h                                       ; $71fb: $5c
    db $e3                                        ; $71fc: $e3
    ld l, d                                       ; $71fd: $6a
    rst $30                                       ; $71fe: $f7
    and $ff                                       ; $71ff: $e6 $ff
    add hl, de                                    ; $7201: $19
    and $18                                       ; $7202: $e6 $18
    nop                                           ; $7204: $00
    rst $38                                       ; $7205: $ff
    dec c                                         ; $7206: $0d
    inc b                                         ; $7207: $04
    db $f4                                        ; $7208: $f4
    dec bc                                        ; $7209: $0b
    ld a, [$f201]                                 ; $720a: $fa $01 $f2
    db $f4                                        ; $720d: $f4
    db $ed                                        ; $720e: $ed
    db $fc                                        ; $720f: $fc
    ld a, [c]                                     ; $7210: $f2
    inc b                                         ; $7211: $04
    db $fd                                        ; $7212: $fd
    db $fc                                        ; $7213: $fc
    ld [$0001], a                                 ; $7214: $ea $01 $00
    jr nz, jr_0ea_721a                            ; $7217: $20 $01

    ld d, b                                       ; $7219: $50

jr_0ea_721a:
    jr nz, jr_0ea_722c                            ; $721a: $20 $10

    ld h, b                                       ; $721c: $60
    sub b                                         ; $721d: $90
    ld h, b                                       ; $721e: $60
    adc b                                         ; $721f: $88
    ld [hl], b                                    ; $7220: $70
    ld [hl], l                                    ; $7221: $75
    ld [$01ba], sp                                ; $7222: $08 $ba $01
    ld a, a                                       ; $7225: $7f
    inc sp                                        ; $7226: $33
    inc hl                                        ; $7227: $23
    ld [hl], a                                    ; $7228: $77
    add d                                         ; $7229: $82
    daa                                           ; $722a: $27
    add d                                         ; $722b: $82

jr_0ea_722c:
    scf                                           ; $722c: $37
    inc [hl]                                      ; $722d: $34
    ld a, e                                       ; $722e: $7b
    ld a, b                                       ; $722f: $78
    rst $38                                       ; $7230: $ff
    halt                                          ; $7231: $76
    rst $38                                       ; $7232: $ff
    adc b                                         ; $7233: $88

jr_0ea_7234:
    halt                                          ; $7234: $76
    ld h, b                                       ; $7235: $60
    nop                                           ; $7236: $00
    ld [hl], b                                    ; $7237: $70
    nop                                           ; $7238: $00
    stop                                          ; $7239: $10 $00
    ld [bc], a                                    ; $723b: $02
    nop                                           ; $723c: $00
    add b                                         ; $723d: $80
    nop                                           ; $723e: $00
    ld b, h                                       ; $723f: $44
    add b                                         ; $7240: $80
    ld c, $c0                                     ; $7241: $0e $c0
    ld a, [bc]                                    ; $7243: $0a
    add h                                         ; $7244: $84
    db $10                                        ; $7245: $10
    ld c, $2d                                     ; $7246: $0e $2d
    ld e, $2d                                     ; $7248: $1e $2d
    ld e, $24                                     ; $724a: $1e $24
    rra                                           ; $724c: $1f
    sub d                                         ; $724d: $92
    dec c                                         ; $724e: $0d
    db $ed                                        ; $724f: $ed
    nop                                           ; $7250: $00
    ld h, b                                       ; $7251: $60
    pop af                                        ; $7252: $f1
    ld [hl], b                                    ; $7253: $70
    ld a, [$0040]                                 ; $7254: $fa $40 $00
    and c                                         ; $7257: $a1
    ld b, b                                       ; $7258: $40
    and b                                         ; $7259: $a0
    ld b, b                                       ; $725a: $40
    ld h, b                                       ; $725b: $60
    nop                                           ; $725c: $00
    ldh [rP1], a                                  ; $725d: $e0 $00
    ld d, c                                       ; $725f: $51
    ldh [$e8], a                                  ; $7260: $e0 $e8
    ldh a, [$e9]                                  ; $7262: $f0 $e9
    ldh a, [$f9]                                  ; $7264: $f0 $f9
    ldh a, [$f2]                                  ; $7266: $f0 $f2
    ld hl, sp+$77                                 ; $7268: $f8 $77
    ld a, [$7f37]                                 ; $726a: $fa $37 $7f
    ld b, $3f                                     ; $726d: $06 $3f
    dec c                                         ; $726f: $0d
    ld [hl], d                                    ; $7270: $72
    ld [hl], a                                    ; $7271: $77
    ld hl, sp-$77                                 ; $7272: $f8 $89
    ld [hl], b                                    ; $7274: $70
    ld a, [c]                                     ; $7275: $f2
    rst $38                                       ; $7276: $ff
    ld a, [c]                                     ; $7277: $f2
    rst $38                                       ; $7278: $ff
    or $ff                                        ; $7279: $f6 $ff
    halt                                          ; $727b: $76
    rst $38                                       ; $727c: $ff
    adc c                                         ; $727d: $89
    halt                                          ; $727e: $76
    ld d, $00                                     ; $727f: $16 $00
    rst $38                                       ; $7281: $ff
    add hl, bc                                    ; $7282: $09
    ld [bc], a                                    ; $7283: $02
    ld hl, sp+$07                                 ; $7284: $f8 $07
    db $f4                                        ; $7286: $f4
    inc bc                                        ; $7287: $03
    push af                                       ; $7288: $f5
    ld sp, hl                                     ; $7289: $f9
    push af                                       ; $728a: $f5
    rst $38                                       ; $728b: $ff
    ld [bc], a                                    ; $728c: $02
    inc bc                                        ; $728d: $03
    sbc b                                         ; $728e: $98
    ld b, $07                                     ; $728f: $06 $07
    inc b                                         ; $7291: $04
    rlca                                          ; $7292: $07
    add hl, bc                                    ; $7293: $09
    rrca                                          ; $7294: $0f
    inc c                                         ; $7295: $0c
    rrca                                          ; $7296: $0f
    ld c, $0f                                     ; $7297: $0e $0f
    inc e                                         ; $7299: $1c
    rra                                           ; $729a: $1f
    jr jr_0ea_72bc                                ; $729b: $18 $1f

    inc a                                         ; $729d: $3c
    ccf                                           ; $729e: $3f
    ld [hl], d                                    ; $729f: $72
    ld a, a                                       ; $72a0: $7f
    cp b                                          ; $72a1: $b8
    rst $38                                       ; $72a2: $ff
    cp a                                          ; $72a3: $bf
    rst $38                                       ; $72a4: $ff
    ld l, h                                       ; $72a5: $6c
    ld a, a                                       ; $72a6: $7f
    ld [bc], a                                    ; $72a7: $02
    dec sp                                        ; $72a8: $3b
    ld [bc], a                                    ; $72a9: $02
    ld [bc], a                                    ; $72aa: $02
    inc b                                         ; $72ab: $04
    nop                                           ; $72ac: $00
    ld [bc], a                                    ; $72ad: $02
    jr nz, jr_0ea_7234                            ; $72ae: $20 $84

    db $10                                        ; $72b0: $10
    jr nc, jr_0ea_72db                            ; $72b1: $30 $28

    jr c, jr_0ea_72b7                             ; $72b3: $38 $02

    jr nc, @-$6c                                  ; $72b5: $30 $92

jr_0ea_72b7:
    jr jr_0ea_72f1                                ; $72b7: $18 $38

    ld [$0838], sp                                ; $72b9: $08 $38 $08

jr_0ea_72bc:
    jr c, @+$20                                   ; $72bc: $38 $1e

    ld a, $26                                     ; $72be: $3e $26
    ld a, $0d                                     ; $72c0: $3e $0d
    ccf                                           ; $72c2: $3f
    add hl, sp                                    ; $72c3: $39

jr_0ea_72c4:
    ccf                                           ; $72c4: $3f
    ld b, $3e                                     ; $72c5: $06 $3e
    inc l                                         ; $72c7: $2c
    inc a                                         ; $72c8: $3c
    inc b                                         ; $72c9: $04
    nop                                           ; $72ca: $00
    rst $38                                       ; $72cb: $ff
    add hl, bc                                    ; $72cc: $09
    ld [bc], a                                    ; $72cd: $02
    ld hl, sp+$07                                 ; $72ce: $f8 $07
    db $f4                                        ; $72d0: $f4
    inc bc                                        ; $72d1: $03
    push af                                       ; $72d2: $f5
    ld sp, hl                                     ; $72d3: $f9
    push af                                       ; $72d4: $f5
    rst $38                                       ; $72d5: $ff
    ld [bc], a                                    ; $72d6: $02
    ld [bc], a                                    ; $72d7: $02
    ld [bc], a                                    ; $72d8: $02

jr_0ea_72d9:
    rlca                                          ; $72d9: $07
    add e                                         ; $72da: $83

jr_0ea_72db:
    ld [$090f], sp                                ; $72db: $08 $0f $09
    inc bc                                        ; $72de: $03
    rrca                                          ; $72df: $0f
    sub d                                         ; $72e0: $92
    inc c                                         ; $72e1: $0c
    rrca                                          ; $72e2: $0f
    jr @+$21                                      ; $72e3: $18 $1f

    inc e                                         ; $72e5: $1c
    rra                                           ; $72e6: $1f
    ld a, [hl-]                                   ; $72e7: $3a
    ccf                                           ; $72e8: $3f
    ld [hl], b                                    ; $72e9: $70
    ld a, a                                       ; $72ea: $7f
    cp a                                          ; $72eb: $bf
    rst $38                                       ; $72ec: $ff
    cp a                                          ; $72ed: $bf
    rst $38                                       ; $72ee: $ff
    ld b, a                                       ; $72ef: $47
    ld a, a                                       ; $72f0: $7f

jr_0ea_72f1:
    inc a                                         ; $72f1: $3c
    ccf                                           ; $72f2: $3f
    ld [bc], a                                    ; $72f3: $02
    dec bc                                        ; $72f4: $0b
    ld [bc], a                                    ; $72f5: $02
    ld [bc], a                                    ; $72f6: $02
    inc b                                         ; $72f7: $04
    nop                                           ; $72f8: $00
    ld [bc], a                                    ; $72f9: $02
    jr nz, @+$06                                  ; $72fa: $20 $04

    jr nc, @-$6c                                  ; $72fc: $30 $92

    db $10                                        ; $72fe: $10
    jr nc, jr_0ea_7309                            ; $72ff: $30 $08

    jr c, jr_0ea_731b                             ; $7301: $38 $18

    jr c, jr_0ea_7333                             ; $7303: $38 $2e

    ld a, $06                                     ; $7305: $3e $06
    ld a, $2d                                     ; $7307: $3e $2d

jr_0ea_7309:
    ccf                                           ; $7309: $3f
    inc sp                                        ; $730a: $33
    ccf                                           ; $730b: $3f

jr_0ea_730c:
    ld h, $3e                                     ; $730c: $26 $3e
    inc c                                         ; $730e: $0c
    inc a                                         ; $730f: $3c
    ld [bc], a                                    ; $7310: $02
    jr nc, jr_0ea_7315                            ; $7311: $30 $02

    nop                                           ; $7313: $00
    rst $38                                       ; $7314: $ff

jr_0ea_7315:
    add hl, bc                                    ; $7315: $09
    ld [bc], a                                    ; $7316: $02
    ld hl, sp+$07                                 ; $7317: $f8 $07
    db $f4                                        ; $7319: $f4
    inc bc                                        ; $731a: $03

jr_0ea_731b:
    push af                                       ; $731b: $f5
    ld sp, hl                                     ; $731c: $f9

jr_0ea_731d:
    push af                                       ; $731d: $f5
    rst $38                                       ; $731e: $ff
    ld [bc], a                                    ; $731f: $02
    inc bc                                        ; $7320: $03
    add a                                         ; $7321: $87
    ld b, $07                                     ; $7322: $06 $07
    inc c                                         ; $7324: $0c
    rrca                                          ; $7325: $0f
    add hl, bc                                    ; $7326: $09
    rrca                                          ; $7327: $0f
    inc c                                         ; $7328: $0c
    inc bc                                        ; $7329: $03
    rrca                                          ; $732a: $0f
    sub b                                         ; $732b: $90
    jr @+$21                                      ; $732c: $18 $1f

    inc e                                         ; $732e: $1c
    rra                                           ; $732f: $1f
    ld a, [hl-]                                   ; $7330: $3a
    ccf                                           ; $7331: $3f
    ld a, b                                       ; $7332: $78

jr_0ea_7333:
    ld a, a                                       ; $7333: $7f
    cp l                                          ; $7334: $bd
    rst $38                                       ; $7335: $ff
    cp a                                          ; $7336: $bf
    rst $38                                       ; $7337: $ff
    ld l, h                                       ; $7338: $6c
    ld a, a                                       ; $7339: $7f
    dec a                                         ; $733a: $3d
    ccf                                           ; $733b: $3f
    ld [bc], a                                    ; $733c: $02
    ld [bc], a                                    ; $733d: $02
    inc b                                         ; $733e: $04
    nop                                           ; $733f: $00
    ld [bc], a                                    ; $7340: $02
    jr nz, jr_0ea_72c4                            ; $7341: $20 $81

    db $10                                        ; $7343: $10
    dec b                                         ; $7344: $05
    jr nc, jr_0ea_72d9                            ; $7345: $30 $92

    jr jr_0ea_7381                                ; $7347: $18 $38

    ld [$1838], sp                                ; $7349: $08 $38 $18
    jr c, jr_0ea_737c                             ; $734c: $38 $2e

    ld a, $0e                                     ; $734e: $3e $0e
    ld a, $2d                                     ; $7350: $3e $2d
    ccf                                           ; $7352: $3f
    ld de, $063f                                  ; $7353: $11 $3f $06
    ld a, $2c                                     ; $7356: $3e $2c
    inc a                                         ; $7358: $3c
    inc b                                         ; $7359: $04
    nop                                           ; $735a: $00
    rst $38                                       ; $735b: $ff
    add hl, bc                                    ; $735c: $09
    ld [bc], a                                    ; $735d: $02
    ld hl, sp+$07                                 ; $735e: $f8 $07
    db $f4                                        ; $7360: $f4
    inc bc                                        ; $7361: $03
    push af                                       ; $7362: $f5
    ld sp, hl                                     ; $7363: $f9
    push af                                       ; $7364: $f5
    rst $38                                       ; $7365: $ff

jr_0ea_7366:
    ld [bc], a                                    ; $7366: $02
    inc bc                                        ; $7367: $03
    sub [hl]                                      ; $7368: $96
    ld b, $07                                     ; $7369: $06 $07
    inc b                                         ; $736b: $04
    rlca                                          ; $736c: $07
    add hl, bc                                    ; $736d: $09
    rrca                                          ; $736e: $0f
    inc c                                         ; $736f: $0c
    rrca                                          ; $7370: $0f
    ld c, $0f                                     ; $7371: $0e $0f
    jr jr_0ea_7394                                ; $7373: $18 $1f

    inc e                                         ; $7375: $1c
    rra                                           ; $7376: $1f
    ld a, [hl-]                                   ; $7377: $3a
    ccf                                           ; $7378: $3f
    ld [hl], b                                    ; $7379: $70
    ld a, a                                       ; $737a: $7f
    cp a                                          ; $737b: $bf

jr_0ea_737c:
    rst $38                                       ; $737c: $ff
    call z, Call_000_02ff                         ; $737d: $cc $ff $02
    ld a, e                                       ; $7380: $7b

jr_0ea_7381:
    ld [bc], a                                    ; $7381: $02
    ld [bc], a                                    ; $7382: $02
    ld b, $00                                     ; $7383: $06 $00
    ld [bc], a                                    ; $7385: $02
    jr nz, jr_0ea_730c                            ; $7386: $20 $84

    db $10                                        ; $7388: $10
    jr nc, jr_0ea_73b3                            ; $7389: $30 $28

    jr c, jr_0ea_738f                             ; $738b: $38 $02

    jr nc, jr_0ea_731d                            ; $738d: $30 $8e

jr_0ea_738f:
    jr jr_0ea_73c9                                ; $738f: $18 $38

    ld [$1838], sp                                ; $7391: $08 $38 $18

jr_0ea_7394:
    jr c, jr_0ea_73c4                             ; $7394: $38 $2e

    ld a, $06                                     ; $7396: $3e $06
    ld a, $3d                                     ; $7398: $3e $3d
    ccf                                           ; $739a: $3f

jr_0ea_739b:
    inc bc                                        ; $739b: $03
    ccf                                           ; $739c: $3f
    ld [bc], a                                    ; $739d: $02
    ld a, $06                                     ; $739e: $3e $06
    nop                                           ; $73a0: $00
    rst $38                                       ; $73a1: $ff
    add hl, bc                                    ; $73a2: $09
    ld [bc], a                                    ; $73a3: $02
    ld hl, sp+$07                                 ; $73a4: $f8 $07
    db $f4                                        ; $73a6: $f4
    inc bc                                        ; $73a7: $03
    push af                                       ; $73a8: $f5
    ld sp, hl                                     ; $73a9: $f9
    push af                                       ; $73aa: $f5
    rst $38                                       ; $73ab: $ff
    ld [bc], a                                    ; $73ac: $02
    inc bc                                        ; $73ad: $03
    add a                                         ; $73ae: $87
    ld b, $07                                     ; $73af: $06 $07
    inc c                                         ; $73b1: $0c
    rrca                                          ; $73b2: $0f

jr_0ea_73b3:
    add hl, bc                                    ; $73b3: $09
    rrca                                          ; $73b4: $0f
    inc c                                         ; $73b5: $0c
    inc bc                                        ; $73b6: $03
    rrca                                          ; $73b7: $0f
    sub b                                         ; $73b8: $90
    jr @+$21                                      ; $73b9: $18 $1f

    inc e                                         ; $73bb: $1c
    rra                                           ; $73bc: $1f
    ld a, [hl-]                                   ; $73bd: $3a
    ccf                                           ; $73be: $3f
    ld a, b                                       ; $73bf: $78
    ld a, a                                       ; $73c0: $7f
    cp l                                          ; $73c1: $bd
    rst $38                                       ; $73c2: $ff
    cp a                                          ; $73c3: $bf

jr_0ea_73c4:
    rst $38                                       ; $73c4: $ff
    ld l, h                                       ; $73c5: $6c
    ld a, a                                       ; $73c6: $7f
    dec a                                         ; $73c7: $3d
    ccf                                           ; $73c8: $3f

jr_0ea_73c9:
    ld [bc], a                                    ; $73c9: $02
    ld [bc], a                                    ; $73ca: $02
    inc b                                         ; $73cb: $04
    nop                                           ; $73cc: $00
    ld [bc], a                                    ; $73cd: $02
    jr nz, @-$7d                                  ; $73ce: $20 $81

    db $10                                        ; $73d0: $10
    dec b                                         ; $73d1: $05
    jr nc, jr_0ea_7366                            ; $73d2: $30 $92

    jr jr_0ea_740e                                ; $73d4: $18 $38

    ld [$1838], sp                                ; $73d6: $08 $38 $18
    jr c, jr_0ea_7409                             ; $73d9: $38 $2e

    ld a, $0e                                     ; $73db: $3e $0e
    ld a, $2d                                     ; $73dd: $3e $2d
    ccf                                           ; $73df: $3f
    ld de, $063f                                  ; $73e0: $11 $3f $06
    ld a, $2c                                     ; $73e3: $3e $2c
    inc a                                         ; $73e5: $3c
    inc b                                         ; $73e6: $04
    nop                                           ; $73e7: $00
    rst $38                                       ; $73e8: $ff
    add hl, bc                                    ; $73e9: $09
    ld [bc], a                                    ; $73ea: $02
    ld hl, sp+$07                                 ; $73eb: $f8 $07
    db $f4                                        ; $73ed: $f4
    inc bc                                        ; $73ee: $03
    push af                                       ; $73ef: $f5
    ld sp, hl                                     ; $73f0: $f9
    push af                                       ; $73f1: $f5
    rst $38                                       ; $73f2: $ff
    ld [bc], a                                    ; $73f3: $02
    inc bc                                        ; $73f4: $03
    sbc b                                         ; $73f5: $98
    ld b, $07                                     ; $73f6: $06 $07
    inc b                                         ; $73f8: $04
    rlca                                          ; $73f9: $07
    add hl, bc                                    ; $73fa: $09
    rrca                                          ; $73fb: $0f
    inc c                                         ; $73fc: $0c
    rrca                                          ; $73fd: $0f
    ld c, $0f                                     ; $73fe: $0e $0f
    inc e                                         ; $7400: $1c
    rra                                           ; $7401: $1f
    jr jr_0ea_7423                                ; $7402: $18 $1f

    inc a                                         ; $7404: $3c
    ccf                                           ; $7405: $3f
    ld [hl], d                                    ; $7406: $72
    ld a, a                                       ; $7407: $7f
    cp b                                          ; $7408: $b8

jr_0ea_7409:
    rst $38                                       ; $7409: $ff
    cp a                                          ; $740a: $bf
    rst $38                                       ; $740b: $ff
    ld l, h                                       ; $740c: $6c
    ld a, a                                       ; $740d: $7f

jr_0ea_740e:
    ld [bc], a                                    ; $740e: $02
    dec sp                                        ; $740f: $3b
    ld [bc], a                                    ; $7410: $02
    ld [bc], a                                    ; $7411: $02
    inc b                                         ; $7412: $04
    nop                                           ; $7413: $00
    ld [bc], a                                    ; $7414: $02
    jr nz, jr_0ea_739b                            ; $7415: $20 $84

    db $10                                        ; $7417: $10
    jr nc, jr_0ea_7442                            ; $7418: $30 $28

    jr c, jr_0ea_741e                             ; $741a: $38 $02

    jr nc, @-$6c                                  ; $741c: $30 $92

jr_0ea_741e:
    jr jr_0ea_7458                                ; $741e: $18 $38

    ld [$0838], sp                                ; $7420: $08 $38 $08

jr_0ea_7423:
    jr c, @+$20                                   ; $7423: $38 $1e

    ld a, $26                                     ; $7425: $3e $26
    ld a, $0d                                     ; $7427: $3e $0d
    ccf                                           ; $7429: $3f
    add hl, sp                                    ; $742a: $39

jr_0ea_742b:
    ccf                                           ; $742b: $3f
    ld b, $3e                                     ; $742c: $06 $3e
    inc l                                         ; $742e: $2c
    inc a                                         ; $742f: $3c
    inc b                                         ; $7430: $04
    nop                                           ; $7431: $00
    rst $38                                       ; $7432: $ff
    add hl, bc                                    ; $7433: $09
    ld [bc], a                                    ; $7434: $02
    ld hl, sp+$07                                 ; $7435: $f8 $07
    db $f4                                        ; $7437: $f4
    inc bc                                        ; $7438: $03
    push af                                       ; $7439: $f5
    ld sp, hl                                     ; $743a: $f9
    push af                                       ; $743b: $f5
    rst $38                                       ; $743c: $ff
    ld [bc], a                                    ; $743d: $02
    ld [bc], a                                    ; $743e: $02
    ld [bc], a                                    ; $743f: $02

jr_0ea_7440:
    rlca                                          ; $7440: $07
    add e                                         ; $7441: $83

jr_0ea_7442:
    ld [$090f], sp                                ; $7442: $08 $0f $09
    inc bc                                        ; $7445: $03
    rrca                                          ; $7446: $0f
    sub d                                         ; $7447: $92
    inc c                                         ; $7448: $0c
    rrca                                          ; $7449: $0f
    jr @+$21                                      ; $744a: $18 $1f

    inc e                                         ; $744c: $1c
    rra                                           ; $744d: $1f
    ld a, [hl-]                                   ; $744e: $3a
    ccf                                           ; $744f: $3f
    ld a, b                                       ; $7450: $78
    ld a, a                                       ; $7451: $7f
    cp e                                          ; $7452: $bb
    rst $38                                       ; $7453: $ff
    cp a                                          ; $7454: $bf
    rst $38                                       ; $7455: $ff
    ld d, e                                       ; $7456: $53
    ld a, a                                       ; $7457: $7f

jr_0ea_7458:
    inc a                                         ; $7458: $3c
    ccf                                           ; $7459: $3f
    ld [bc], a                                    ; $745a: $02
    dec bc                                        ; $745b: $0b
    ld [bc], a                                    ; $745c: $02
    ld [bc], a                                    ; $745d: $02
    inc b                                         ; $745e: $04
    nop                                           ; $745f: $00
    ld [bc], a                                    ; $7460: $02
    jr nz, @+$06                                  ; $7461: $20 $04

    jr nc, @-$6c                                  ; $7463: $30 $92

    db $10                                        ; $7465: $10
    jr nc, jr_0ea_7470                            ; $7466: $30 $08

    jr c, jr_0ea_7482                             ; $7468: $38 $18

    jr c, jr_0ea_749a                             ; $746a: $38 $2e

    ld a, $0e                                     ; $746c: $3e $0e
    ld a, $2d                                     ; $746e: $3e $2d

jr_0ea_7470:
    ccf                                           ; $7470: $3f
    inc sp                                        ; $7471: $33
    ccf                                           ; $7472: $3f
    ld b, $3e                                     ; $7473: $06 $3e
    jr @+$3a                                      ; $7475: $18 $38

    ld [bc], a                                    ; $7477: $02
    jr nc, jr_0ea_747c                            ; $7478: $30 $02

    nop                                           ; $747a: $00
    rst $38                                       ; $747b: $ff

jr_0ea_747c:
    add hl, bc                                    ; $747c: $09
    ld [bc], a                                    ; $747d: $02
    ld hl, sp+$07                                 ; $747e: $f8 $07
    db $f4                                        ; $7480: $f4
    inc bc                                        ; $7481: $03

jr_0ea_7482:
    push af                                       ; $7482: $f5
    ld sp, hl                                     ; $7483: $f9
    push af                                       ; $7484: $f5
    rst $38                                       ; $7485: $ff
    ld [bc], a                                    ; $7486: $02
    inc bc                                        ; $7487: $03
    add a                                         ; $7488: $87
    ld b, $07                                     ; $7489: $06 $07
    inc c                                         ; $748b: $0c
    rrca                                          ; $748c: $0f
    add hl, bc                                    ; $748d: $09
    rrca                                          ; $748e: $0f
    inc c                                         ; $748f: $0c
    inc bc                                        ; $7490: $03
    rrca                                          ; $7491: $0f
    sub b                                         ; $7492: $90
    jr @+$21                                      ; $7493: $18 $1f

    inc e                                         ; $7495: $1c
    rra                                           ; $7496: $1f
    ld a, [hl-]                                   ; $7497: $3a
    ccf                                           ; $7498: $3f
    ld a, b                                       ; $7499: $78

jr_0ea_749a:
    ld a, a                                       ; $749a: $7f
    cp l                                          ; $749b: $bd
    rst $38                                       ; $749c: $ff
    cp a                                          ; $749d: $bf
    rst $38                                       ; $749e: $ff
    ld l, h                                       ; $749f: $6c
    ld a, a                                       ; $74a0: $7f
    dec a                                         ; $74a1: $3d
    ccf                                           ; $74a2: $3f
    ld [bc], a                                    ; $74a3: $02
    ld [bc], a                                    ; $74a4: $02
    inc b                                         ; $74a5: $04
    nop                                           ; $74a6: $00
    ld [bc], a                                    ; $74a7: $02
    jr nz, jr_0ea_742b                            ; $74a8: $20 $81

    db $10                                        ; $74aa: $10
    dec b                                         ; $74ab: $05
    jr nc, jr_0ea_7440                            ; $74ac: $30 $92

    jr jr_0ea_74e8                                ; $74ae: $18 $38

    ld [$1838], sp                                ; $74b0: $08 $38 $18
    jr c, jr_0ea_74e3                             ; $74b3: $38 $2e

    ld a, $0e                                     ; $74b5: $3e $0e
    ld a, $2d                                     ; $74b7: $3e $2d
    ccf                                           ; $74b9: $3f
    ld de, $063f                                  ; $74ba: $11 $3f $06
    ld a, $2c                                     ; $74bd: $3e $2c
    inc a                                         ; $74bf: $3c
    inc b                                         ; $74c0: $04
    nop                                           ; $74c1: $00
    rst $38                                       ; $74c2: $ff
    add hl, bc                                    ; $74c3: $09
    ld [bc], a                                    ; $74c4: $02
    ei                                            ; $74c5: $fb
    dec b                                         ; $74c6: $05
    push af                                       ; $74c7: $f5
    ld bc, $fbf5                                  ; $74c8: $01 $f5 $fb
    push af                                       ; $74cb: $f5
    cp $02                                        ; $74cc: $fe $02
    ld c, $92                                     ; $74ce: $0e $92
    rra                                           ; $74d0: $1f
    ld de, $111f                                  ; $74d1: $11 $1f $11
    ccf                                           ; $74d4: $3f
    ld sp, $5f7f                                  ; $74d5: $31 $7f $5f
    rst $38                                       ; $74d8: $ff
    sub c                                         ; $74d9: $91
    rst $38                                       ; $74da: $ff
    and h                                         ; $74db: $a4
    ld a, a                                       ; $74dc: $7f
    ld l, d                                       ; $74dd: $6a
    ld a, a                                       ; $74de: $7f
    ld d, l                                       ; $74df: $55
    ccf                                           ; $74e0: $3f
    ld a, [hl+]                                   ; $74e1: $2a
    ld [bc], a                                    ; $74e2: $02

jr_0ea_74e3:
    rra                                           ; $74e3: $1f
    ld [bc], a                                    ; $74e4: $02
    ld de, $2a02                                  ; $74e5: $11 $02 $2a

jr_0ea_74e8:
    inc c                                         ; $74e8: $0c
    nop                                           ; $74e9: $00
    ld [bc], a                                    ; $74ea: $02
    inc b                                         ; $74eb: $04
    add [hl]                                      ; $74ec: $86
    ld b, $02                                     ; $74ed: $06 $02
    rlca                                          ; $74ef: $07
    ld bc, $0507                                  ; $74f0: $01 $07 $05
    inc bc                                        ; $74f3: $03
    ld b, $81                                     ; $74f4: $06 $81
    ld [bc], a                                    ; $74f6: $02
    ld [bc], a                                    ; $74f7: $02
    inc b                                         ; $74f8: $04
    inc b                                         ; $74f9: $04
    nop                                           ; $74fa: $00
    ld [bc], a                                    ; $74fb: $02
    inc b                                         ; $74fc: $04
    ld b, $00                                     ; $74fd: $06 $00
    rst $38                                       ; $74ff: $ff
    add hl, bc                                    ; $7500: $09
    ld [bc], a                                    ; $7501: $02
    ei                                            ; $7502: $fb
    dec b                                         ; $7503: $05
    push af                                       ; $7504: $f5
    ld bc, $fbf6                                  ; $7505: $01 $f6 $fb
    or $fe                                        ; $7508: $f6 $fe
    ld [bc], a                                    ; $750a: $02
    ld c, $90                                     ; $750b: $0e $90
    rra                                           ; $750d: $1f
    ld de, $313f                                  ; $750e: $11 $3f $31
    ld a, a                                       ; $7511: $7f
    ld e, a                                       ; $7512: $5f
    rst $38                                       ; $7513: $ff
    sub c                                         ; $7514: $91
    rst $38                                       ; $7515: $ff
    and h                                         ; $7516: $a4
    ld a, a                                       ; $7517: $7f
    ld l, d                                       ; $7518: $6a
    ld a, a                                       ; $7519: $7f
    ld d, l                                       ; $751a: $55
    ccf                                           ; $751b: $3f
    ld a, [hl+]                                   ; $751c: $2a
    ld [bc], a                                    ; $751d: $02
    rra                                           ; $751e: $1f
    ld [bc], a                                    ; $751f: $02
    inc de                                        ; $7520: $13
    ld [bc], a                                    ; $7521: $02
    jr z, @+$0e                                   ; $7522: $28 $0c

    nop                                           ; $7524: $00
    ld [bc], a                                    ; $7525: $02
    inc b                                         ; $7526: $04
    add [hl]                                      ; $7527: $86
    ld b, $02                                     ; $7528: $06 $02
    rlca                                          ; $752a: $07
    ld bc, $0507                                  ; $752b: $01 $07 $05
    inc bc                                        ; $752e: $03
    ld b, $81                                     ; $752f: $06 $81
    ld [bc], a                                    ; $7531: $02
    ld [bc], a                                    ; $7532: $02
    inc b                                         ; $7533: $04
    ld c, $00                                     ; $7534: $0e $00
    rst $38                                       ; $7536: $ff
    add hl, bc                                    ; $7537: $09
    ld [bc], a                                    ; $7538: $02
    ei                                            ; $7539: $fb
    dec b                                         ; $753a: $05
    push af                                       ; $753b: $f5
    ld bc, $fbf4                                  ; $753c: $01 $f4 $fb
    db $f4                                        ; $753f: $f4
    cp $02                                        ; $7540: $fe $02
    ld c, $92                                     ; $7542: $0e $92
    rra                                           ; $7544: $1f
    ld de, $111f                                  ; $7545: $11 $1f $11
    ccf                                           ; $7548: $3f
    ld sp, $5f7f                                  ; $7549: $31 $7f $5f
    rst $38                                       ; $754c: $ff
    or c                                          ; $754d: $b1
    rst $38                                       ; $754e: $ff
    xor d                                         ; $754f: $aa
    rst $38                                       ; $7550: $ff
    push de                                       ; $7551: $d5
    ld a, a                                       ; $7552: $7f
    ld c, d                                       ; $7553: $4a
    ccf                                           ; $7554: $3f
    dec [hl]                                      ; $7555: $35
    ld [bc], a                                    ; $7556: $02
    rra                                           ; $7557: $1f
    ld [bc], a                                    ; $7558: $02
    add hl, de                                    ; $7559: $19
    ld [bc], a                                    ; $755a: $02
    ld [de], a                                    ; $755b: $12
    inc c                                         ; $755c: $0c
    nop                                           ; $755d: $00
    ld [bc], a                                    ; $755e: $02
    inc b                                         ; $755f: $04
    adc d                                         ; $7560: $8a
    ld b, $02                                     ; $7561: $06 $02
    rlca                                          ; $7563: $07
    dec b                                         ; $7564: $05
    rlca                                          ; $7565: $07
    dec b                                         ; $7566: $05
    rlca                                          ; $7567: $07
    inc bc                                        ; $7568: $03
    ld b, $02                                     ; $7569: $06 $02
    ld [bc], a                                    ; $756b: $02
    inc b                                         ; $756c: $04
    inc b                                         ; $756d: $04
    nop                                           ; $756e: $00
    ld [bc], a                                    ; $756f: $02
    inc b                                         ; $7570: $04
    ld b, $00                                     ; $7571: $06 $00
    rst $38                                       ; $7573: $ff
    add hl, bc                                    ; $7574: $09
    ld [bc], a                                    ; $7575: $02
    ei                                            ; $7576: $fb
    dec b                                         ; $7577: $05
    push af                                       ; $7578: $f5
    ld bc, $fbf5                                  ; $7579: $01 $f5 $fb
    push af                                       ; $757c: $f5
    cp $02                                        ; $757d: $fe $02
    ld c, $92                                     ; $757f: $0e $92
    rra                                           ; $7581: $1f
    ld de, $111f                                  ; $7582: $11 $1f $11
    ccf                                           ; $7585: $3f
    ld sp, $5f7f                                  ; $7586: $31 $7f $5f
    rst $38                                       ; $7589: $ff
    sub c                                         ; $758a: $91
    rst $38                                       ; $758b: $ff
    and h                                         ; $758c: $a4
    ld a, a                                       ; $758d: $7f
    ld l, d                                       ; $758e: $6a
    ld a, a                                       ; $758f: $7f
    ld d, l                                       ; $7590: $55
    ccf                                           ; $7591: $3f
    ld a, [hl+]                                   ; $7592: $2a
    ld [bc], a                                    ; $7593: $02
    rra                                           ; $7594: $1f
    ld [bc], a                                    ; $7595: $02
    add hl, de                                    ; $7596: $19
    ld [bc], a                                    ; $7597: $02
    ld [bc], a                                    ; $7598: $02
    inc c                                         ; $7599: $0c
    nop                                           ; $759a: $00
    ld [bc], a                                    ; $759b: $02
    inc b                                         ; $759c: $04
    add [hl]                                      ; $759d: $86
    ld b, $02                                     ; $759e: $06 $02
    rlca                                          ; $75a0: $07
    ld bc, $0507                                  ; $75a1: $01 $07 $05
    inc bc                                        ; $75a4: $03
    ld b, $81                                     ; $75a5: $06 $81
    ld [bc], a                                    ; $75a7: $02
    ld [bc], a                                    ; $75a8: $02
    inc b                                         ; $75a9: $04
    inc b                                         ; $75aa: $04
    nop                                           ; $75ab: $00
    ld [bc], a                                    ; $75ac: $02
    inc b                                         ; $75ad: $04
    ld b, $00                                     ; $75ae: $06 $00
    rst $38                                       ; $75b0: $ff
    add hl, bc                                    ; $75b1: $09
    ld [bc], a                                    ; $75b2: $02
    ei                                            ; $75b3: $fb
    dec b                                         ; $75b4: $05
    push af                                       ; $75b5: $f5
    ld bc, $fbf5                                  ; $75b6: $01 $f5 $fb
    push af                                       ; $75b9: $f5
    cp $02                                        ; $75ba: $fe $02
    ld c, $90                                     ; $75bc: $0e $90
    rra                                           ; $75be: $1f
    ld de, $313f                                  ; $75bf: $11 $3f $31
    ld a, a                                       ; $75c2: $7f
    ld e, a                                       ; $75c3: $5f
    rst $38                                       ; $75c4: $ff
    or c                                          ; $75c5: $b1
    rst $38                                       ; $75c6: $ff
    xor d                                         ; $75c7: $aa
    rst $38                                       ; $75c8: $ff
    push de                                       ; $75c9: $d5
    ld a, a                                       ; $75ca: $7f
    ld c, d                                       ; $75cb: $4a
    ccf                                           ; $75cc: $3f
    dec [hl]                                      ; $75cd: $35
    ld [bc], a                                    ; $75ce: $02
    rra                                           ; $75cf: $1f
    ld [bc], a                                    ; $75d0: $02
    inc de                                        ; $75d1: $13
    ld [bc], a                                    ; $75d2: $02
    add hl, hl                                    ; $75d3: $29
    inc c                                         ; $75d4: $0c
    nop                                           ; $75d5: $00
    ld [bc], a                                    ; $75d6: $02
    inc b                                         ; $75d7: $04
    adc d                                         ; $75d8: $8a
    ld b, $02                                     ; $75d9: $06 $02
    rlca                                          ; $75db: $07
    dec b                                         ; $75dc: $05
    rlca                                          ; $75dd: $07
    dec b                                         ; $75de: $05
    rlca                                          ; $75df: $07
    inc bc                                        ; $75e0: $03
    ld b, $02                                     ; $75e1: $06 $02
    ld [bc], a                                    ; $75e3: $02
    inc b                                         ; $75e4: $04
    ld c, $00                                     ; $75e5: $0e $00
    rst $38                                       ; $75e7: $ff
    add hl, bc                                    ; $75e8: $09
    ld [bc], a                                    ; $75e9: $02
    ei                                            ; $75ea: $fb
    dec b                                         ; $75eb: $05
    push af                                       ; $75ec: $f5
    ld bc, $fbf6                                  ; $75ed: $01 $f6 $fb
    or $fe                                        ; $75f0: $f6 $fe
    ld [bc], a                                    ; $75f2: $02
    ld c, $90                                     ; $75f3: $0e $90
    ccf                                           ; $75f5: $3f
    ld sp, $557f                                  ; $75f6: $31 $7f $55
    ei                                            ; $75f9: $fb
    cp a                                          ; $75fa: $bf
    push af                                       ; $75fb: $f5
    rst $18                                       ; $75fc: $df
    rst $38                                       ; $75fd: $ff
    xor d                                         ; $75fe: $aa
    rst $38                                       ; $75ff: $ff
    and b                                         ; $7600: $a0
    ld a, a                                       ; $7601: $7f
    ld b, b                                       ; $7602: $40
    ccf                                           ; $7603: $3f
    jr nz, jr_0ea_7608                            ; $7604: $20 $02

    rra                                           ; $7606: $1f
    ld [bc], a                                    ; $7607: $02

jr_0ea_7608:
    ld de, $2a02                                  ; $7608: $11 $02 $2a
    ld a, [bc]                                    ; $760b: $0a
    nop                                           ; $760c: $00
    ld [bc], a                                    ; $760d: $02
    inc b                                         ; $760e: $04
    adc h                                         ; $760f: $8c
    ld b, $02                                     ; $7610: $06 $02
    rlca                                          ; $7612: $07
    dec b                                         ; $7613: $05
    rlca                                          ; $7614: $07
    inc bc                                        ; $7615: $03
    rlca                                          ; $7616: $07
    dec b                                         ; $7617: $05
    rlca                                          ; $7618: $07
    dec b                                         ; $7619: $05
    ld b, $02                                     ; $761a: $06 $02
    ld [bc], a                                    ; $761c: $02
    inc b                                         ; $761d: $04
    inc b                                         ; $761e: $04
    nop                                           ; $761f: $00
    ld [bc], a                                    ; $7620: $02
    inc b                                         ; $7621: $04
    ld [$ff00], sp                                ; $7622: $08 $00 $ff
    add hl, bc                                    ; $7625: $09
    ld [bc], a                                    ; $7626: $02
    ei                                            ; $7627: $fb
    dec b                                         ; $7628: $05
    push af                                       ; $7629: $f5
    ld bc, $fbf6                                  ; $762a: $01 $f6 $fb
    or $fe                                        ; $762d: $f6 $fe
    ld [bc], a                                    ; $762f: $02
    rla                                           ; $7630: $17
    sub b                                         ; $7631: $90
    ccf                                           ; $7632: $3f
    ld l, $7f                                     ; $7633: $2e $7f
    ld d, c                                       ; $7635: $51
    rst $38                                       ; $7636: $ff
    or l                                          ; $7637: $b5
    ei                                            ; $7638: $fb
    rst $18                                       ; $7639: $df
    push af                                       ; $763a: $f5
    cp a                                          ; $763b: $bf
    rst $38                                       ; $763c: $ff
    xor d                                         ; $763d: $aa
    ld a, a                                       ; $763e: $7f
    ld b, b                                       ; $763f: $40
    ccf                                           ; $7640: $3f
    jr nz, jr_0ea_7645                            ; $7641: $20 $02

    rra                                           ; $7643: $1f
    ld [bc], a                                    ; $7644: $02

jr_0ea_7645:
    inc de                                        ; $7645: $13
    ld [bc], a                                    ; $7646: $02
    jr z, jr_0ea_7653                             ; $7647: $28 $0a

    nop                                           ; $7649: $00
    ld [bc], a                                    ; $764a: $02
    inc b                                         ; $764b: $04
    adc h                                         ; $764c: $8c
    ld b, $02                                     ; $764d: $06 $02
    rlca                                          ; $764f: $07
    dec b                                         ; $7650: $05
    rlca                                          ; $7651: $07
    inc bc                                        ; $7652: $03

jr_0ea_7653:
    rlca                                          ; $7653: $07
    dec b                                         ; $7654: $05
    rlca                                          ; $7655: $07
    dec b                                         ; $7656: $05
    ld b, $02                                     ; $7657: $06 $02
    ld [bc], a                                    ; $7659: $02
    inc b                                         ; $765a: $04
    ld c, $00                                     ; $765b: $0e $00
    rst $38                                       ; $765d: $ff
    add hl, bc                                    ; $765e: $09
    ld [bc], a                                    ; $765f: $02
    ei                                            ; $7660: $fb
    dec b                                         ; $7661: $05
    push af                                       ; $7662: $f5
    ld bc, $fbf5                                  ; $7663: $01 $f5 $fb
    push af                                       ; $7666: $f5
    cp $02                                        ; $7667: $fe $02
    ld c, $90                                     ; $7669: $0e $90
    ccf                                           ; $766b: $3f
    ld sp, $557f                                  ; $766c: $31 $7f $55
    ei                                            ; $766f: $fb
    cp a                                          ; $7670: $bf
    push af                                       ; $7671: $f5
    rst $18                                       ; $7672: $df
    rst $38                                       ; $7673: $ff
    xor d                                         ; $7674: $aa
    rst $38                                       ; $7675: $ff
    and b                                         ; $7676: $a0
    rst $38                                       ; $7677: $ff
    ret nz                                        ; $7678: $c0

    ccf                                           ; $7679: $3f
    jr nz, jr_0ea_767e                            ; $767a: $20 $02

    rra                                           ; $767c: $1f
    ld [bc], a                                    ; $767d: $02

jr_0ea_767e:
    ld de, $2b02                                  ; $767e: $11 $02 $2b
    ld a, [bc]                                    ; $7681: $0a
    nop                                           ; $7682: $00
    ld [bc], a                                    ; $7683: $02
    inc b                                         ; $7684: $04
    adc h                                         ; $7685: $8c
    ld b, $02                                     ; $7686: $06 $02
    rlca                                          ; $7688: $07
    dec b                                         ; $7689: $05
    rlca                                          ; $768a: $07
    inc bc                                        ; $768b: $03
    rlca                                          ; $768c: $07
    dec b                                         ; $768d: $05
    rlca                                          ; $768e: $07
    dec b                                         ; $768f: $05
    rlca                                          ; $7690: $07
    inc bc                                        ; $7691: $03
    ld [bc], a                                    ; $7692: $02
    inc b                                         ; $7693: $04
    ld c, $00                                     ; $7694: $0e $00
    rst $38                                       ; $7696: $ff
    add hl, bc                                    ; $7697: $09
    ld [bc], a                                    ; $7698: $02
    ei                                            ; $7699: $fb
    dec b                                         ; $769a: $05
    push af                                       ; $769b: $f5
    ld bc, $fbf6                                  ; $769c: $01 $f6 $fb
    or $fe                                        ; $769f: $f6 $fe
    ld [bc], a                                    ; $76a1: $02
    ld c, $90                                     ; $76a2: $0e $90
    ccf                                           ; $76a4: $3f
    ld sp, $557f                                  ; $76a5: $31 $7f $55
    ei                                            ; $76a8: $fb
    cp a                                          ; $76a9: $bf
    push af                                       ; $76aa: $f5
    rst $18                                       ; $76ab: $df
    rst $38                                       ; $76ac: $ff
    xor d                                         ; $76ad: $aa
    rst $38                                       ; $76ae: $ff
    and b                                         ; $76af: $a0
    ld a, a                                       ; $76b0: $7f
    ld b, b                                       ; $76b1: $40
    ccf                                           ; $76b2: $3f
    jr nz, jr_0ea_76b7                            ; $76b3: $20 $02

    rra                                           ; $76b5: $1f
    ld [bc], a                                    ; $76b6: $02

jr_0ea_76b7:
    add hl, de                                    ; $76b7: $19
    ld [bc], a                                    ; $76b8: $02
    ld [bc], a                                    ; $76b9: $02
    ld a, [bc]                                    ; $76ba: $0a
    nop                                           ; $76bb: $00
    ld [bc], a                                    ; $76bc: $02
    inc b                                         ; $76bd: $04
    adc h                                         ; $76be: $8c
    ld b, $02                                     ; $76bf: $06 $02
    rlca                                          ; $76c1: $07
    dec b                                         ; $76c2: $05
    rlca                                          ; $76c3: $07
    inc bc                                        ; $76c4: $03
    rlca                                          ; $76c5: $07
    dec b                                         ; $76c6: $05
    rlca                                          ; $76c7: $07
    dec b                                         ; $76c8: $05
    ld b, $02                                     ; $76c9: $06 $02
    ld [bc], a                                    ; $76cb: $02
    inc b                                         ; $76cc: $04
    inc b                                         ; $76cd: $04
    nop                                           ; $76ce: $00
    ld [bc], a                                    ; $76cf: $02
    inc b                                         ; $76d0: $04
    ld [$ff00], sp                                ; $76d1: $08 $00 $ff
    add hl, bc                                    ; $76d4: $09
    ld [bc], a                                    ; $76d5: $02
    ei                                            ; $76d6: $fb
    dec b                                         ; $76d7: $05
    push af                                       ; $76d8: $f5
    ld bc, $fbf5                                  ; $76d9: $01 $f5 $fb
    push af                                       ; $76dc: $f5
    cp $02                                        ; $76dd: $fe $02
    rla                                           ; $76df: $17
    sub b                                         ; $76e0: $90
    ccf                                           ; $76e1: $3f
    jr z, jr_0ea_7763                             ; $76e2: $28 $7f

    ld c, [hl]                                    ; $76e4: $4e
    rst $38                                       ; $76e5: $ff
    or c                                          ; $76e6: $b1
    rst $38                                       ; $76e7: $ff
    push de                                       ; $76e8: $d5
    ei                                            ; $76e9: $fb
    cp a                                          ; $76ea: $bf
    push af                                       ; $76eb: $f5
    cp a                                          ; $76ec: $bf
    rst $38                                       ; $76ed: $ff
    jp z, Jump_000_203f                           ; $76ee: $ca $3f $20

    ld [bc], a                                    ; $76f1: $02
    rra                                           ; $76f2: $1f
    ld [bc], a                                    ; $76f3: $02
    ld de, $1a02                                  ; $76f4: $11 $02 $1a
    ld a, [bc]                                    ; $76f7: $0a
    nop                                           ; $76f8: $00
    ld [bc], a                                    ; $76f9: $02
    inc b                                         ; $76fa: $04
    adc h                                         ; $76fb: $8c
    ld b, $02                                     ; $76fc: $06 $02
    rlca                                          ; $76fe: $07
    dec b                                         ; $76ff: $05
    rlca                                          ; $7700: $07
    inc bc                                        ; $7701: $03
    rlca                                          ; $7702: $07
    dec b                                         ; $7703: $05
    rlca                                          ; $7704: $07
    dec b                                         ; $7705: $05
    rlca                                          ; $7706: $07
    inc bc                                        ; $7707: $03
    ld [bc], a                                    ; $7708: $02
    inc b                                         ; $7709: $04
    inc b                                         ; $770a: $04
    nop                                           ; $770b: $00
    ld [bc], a                                    ; $770c: $02
    inc b                                         ; $770d: $04
    ld [$ff00], sp                                ; $770e: $08 $00 $ff
    add hl, bc                                    ; $7711: $09
    ld [bc], a                                    ; $7712: $02
    ld sp, hl                                     ; $7713: $f9
    ld [$01f5], sp                                ; $7714: $08 $f5 $01
    or $f9                                        ; $7717: $f6 $f9
    or $ff                                        ; $7719: $f6 $ff
    ld [bc], a                                    ; $771b: $02
    nop                                           ; $771c: $00
    ld [bc], a                                    ; $771d: $02
    ld d, b                                       ; $771e: $50
    adc [hl]                                      ; $771f: $8e
    rst $38                                       ; $7720: $ff
    xor a                                         ; $7721: $af
    ld a, a                                       ; $7722: $7f
    ld c, c                                       ; $7723: $49
    rst $38                                       ; $7724: $ff
    or h                                          ; $7725: $b4
    rst $38                                       ; $7726: $ff
    and b                                         ; $7727: $a0
    ld a, a                                       ; $7728: $7f
    ld d, b                                       ; $7729: $50
    ccf                                           ; $772a: $3f
    cpl                                           ; $772b: $2f
    rra                                           ; $772c: $1f
    add hl, de                                    ; $772d: $19
    ld [bc], a                                    ; $772e: $02
    rrca                                          ; $772f: $0f
    ld [bc], a                                    ; $7730: $02
    dec b                                         ; $7731: $05
    ld [bc], a                                    ; $7732: $02
    ld a, [bc]                                    ; $7733: $0a
    ld [$0200], sp                                ; $7734: $08 $00 $02
    inc e                                         ; $7737: $1c
    sub b                                         ; $7738: $90
    ld a, $26                                     ; $7739: $3e $26
    dec a                                         ; $773b: $3d
    rlca                                          ; $773c: $07
    ld a, [hl-]                                   ; $773d: $3a
    ld c, $3a                                     ; $773e: $0e $3a
    ld l, $3c                                     ; $7740: $2e $3c
    inc h                                         ; $7742: $24
    inc a                                         ; $7743: $3c
    inc h                                         ; $7744: $24
    inc a                                         ; $7745: $3c
    inc b                                         ; $7746: $04
    jr c, jr_0ea_7751                             ; $7747: $38 $08

    ld [bc], a                                    ; $7749: $02
    jr nc, jr_0ea_774e                            ; $774a: $30 $02

    nop                                           ; $774c: $00
    ld [bc], a                                    ; $774d: $02

jr_0ea_774e:
    jr nz, jr_0ea_7758                            ; $774e: $20 $08

    nop                                           ; $7750: $00

jr_0ea_7751:
    rst $38                                       ; $7751: $ff
    add hl, bc                                    ; $7752: $09
    ld [bc], a                                    ; $7753: $02
    ld sp, hl                                     ; $7754: $f9
    ld [$01f5], sp                                ; $7755: $08 $f5 $01

jr_0ea_7758:
    or $f9                                        ; $7758: $f6 $f9
    or $00                                        ; $775a: $f6 $00
    ld [bc], a                                    ; $775c: $02
    nop                                           ; $775d: $00
    ld [bc], a                                    ; $775e: $02
    ld d, b                                       ; $775f: $50
    adc [hl]                                      ; $7760: $8e
    rst $38                                       ; $7761: $ff
    xor a                                         ; $7762: $af

jr_0ea_7763:
    ld a, a                                       ; $7763: $7f
    ld c, c                                       ; $7764: $49
    rst $38                                       ; $7765: $ff
    or h                                          ; $7766: $b4
    rst $38                                       ; $7767: $ff
    and b                                         ; $7768: $a0
    ld a, a                                       ; $7769: $7f
    ld d, b                                       ; $776a: $50
    ccf                                           ; $776b: $3f
    cpl                                           ; $776c: $2f
    rra                                           ; $776d: $1f
    jr jr_0ea_7772                                ; $776e: $18 $02

    rrca                                          ; $7770: $0f
    ld [bc], a                                    ; $7771: $02

jr_0ea_7772:
    ld [$1502], sp                                ; $7772: $08 $02 $15
    ld [$0200], sp                                ; $7775: $08 $00 $02
    inc e                                         ; $7778: $1c
    sub b                                         ; $7779: $90
    ld a, [hl]                                    ; $777a: $7e
    ld h, [hl]                                    ; $777b: $66
    ld a, l                                       ; $777c: $7d
    ld b, a                                       ; $777d: $47
    ld a, d                                       ; $777e: $7a
    ld c, $7a                                     ; $777f: $0e $7a
    ld c, [hl]                                    ; $7781: $4e
    ld a, h                                       ; $7782: $7c
    ld b, h                                       ; $7783: $44
    ld a, b                                       ; $7784: $78
    ld c, b                                       ; $7785: $48
    ld a, b                                       ; $7786: $78
    ld c, b                                       ; $7787: $48
    ld [hl], b                                    ; $7788: $70
    ld d, b                                       ; $7789: $50
    ld [bc], a                                    ; $778a: $02
    ld h, b                                       ; $778b: $60
    ld [bc], a                                    ; $778c: $02
    ld b, b                                       ; $778d: $40
    ld [bc], a                                    ; $778e: $02
    jr nz, jr_0ea_7799                            ; $778f: $20 $08

    nop                                           ; $7791: $00
    rst $38                                       ; $7792: $ff
    add hl, bc                                    ; $7793: $09
    ld [bc], a                                    ; $7794: $02
    ld sp, hl                                     ; $7795: $f9
    ld [$01f5], sp                                ; $7796: $08 $f5 $01

jr_0ea_7799:
    push af                                       ; $7799: $f5
    ld sp, hl                                     ; $779a: $f9
    push af                                       ; $779b: $f5
    rst $38                                       ; $779c: $ff
    ld [bc], a                                    ; $779d: $02
    nop                                           ; $779e: $00
    ld [bc], a                                    ; $779f: $02
    ld d, b                                       ; $77a0: $50
    adc [hl]                                      ; $77a1: $8e
    rst $38                                       ; $77a2: $ff
    xor a                                         ; $77a3: $af
    rst $38                                       ; $77a4: $ff
    sub l                                         ; $77a5: $95
    ld a, a                                       ; $77a6: $7f
    ld e, b                                       ; $77a7: $58
    rst $38                                       ; $77a8: $ff
    and b                                         ; $77a9: $a0
    ld a, a                                       ; $77aa: $7f
    ld e, c                                       ; $77ab: $59
    ccf                                           ; $77ac: $3f
    daa                                           ; $77ad: $27
    rra                                           ; $77ae: $1f
    add hl, de                                    ; $77af: $19
    ld [bc], a                                    ; $77b0: $02
    rrca                                          ; $77b1: $0f
    ld [bc], a                                    ; $77b2: $02
    rlca                                          ; $77b3: $07
    ld [bc], a                                    ; $77b4: $02
    ld b, $02                                     ; $77b5: $06 $02
    ld a, [bc]                                    ; $77b7: $0a
    ld b, $00                                     ; $77b8: $06 $00
    ld [bc], a                                    ; $77ba: $02
    inc e                                         ; $77bb: $1c
    sub b                                         ; $77bc: $90
    ld a, $26                                     ; $77bd: $3e $26
    dec a                                         ; $77bf: $3d
    daa                                           ; $77c0: $27
    ld a, [hl-]                                   ; $77c1: $3a
    ld c, $3a                                     ; $77c2: $0e $3a
    ld l, $3c                                     ; $77c4: $2e $3c
    inc h                                         ; $77c6: $24
    inc a                                         ; $77c7: $3c
    inc h                                         ; $77c8: $24
    inc a                                         ; $77c9: $3c
    inc b                                         ; $77ca: $04
    jr c, jr_0ea_77d5                             ; $77cb: $38 $08

    ld [bc], a                                    ; $77cd: $02
    jr nc, jr_0ea_77dc                            ; $77ce: $30 $0c

    nop                                           ; $77d0: $00
    rst $38                                       ; $77d1: $ff
    add hl, bc                                    ; $77d2: $09
    ld [bc], a                                    ; $77d3: $02
    ld sp, hl                                     ; $77d4: $f9

jr_0ea_77d5:
    ld [$01f5], sp                                ; $77d5: $08 $f5 $01
    or $f9                                        ; $77d8: $f6 $f9
    or $ff                                        ; $77da: $f6 $ff

jr_0ea_77dc:
    ld [bc], a                                    ; $77dc: $02
    nop                                           ; $77dd: $00
    ld [bc], a                                    ; $77de: $02
    ld d, b                                       ; $77df: $50
    adc [hl]                                      ; $77e0: $8e
    rst $38                                       ; $77e1: $ff
    xor a                                         ; $77e2: $af
    ld a, a                                       ; $77e3: $7f
    ld c, c                                       ; $77e4: $49
    rst $38                                       ; $77e5: $ff
    or h                                          ; $77e6: $b4
    rst $38                                       ; $77e7: $ff
    and b                                         ; $77e8: $a0
    ld a, a                                       ; $77e9: $7f
    ld d, b                                       ; $77ea: $50
    ccf                                           ; $77eb: $3f
    cpl                                           ; $77ec: $2f
    rra                                           ; $77ed: $1f
    inc de                                        ; $77ee: $13
    ld [bc], a                                    ; $77ef: $02
    rrca                                          ; $77f0: $0f
    ld [bc], a                                    ; $77f1: $02
    ld [$1502], sp                                ; $77f2: $08 $02 $15
    ld [$0200], sp                                ; $77f5: $08 $00 $02
    inc e                                         ; $77f8: $1c
    sub b                                         ; $77f9: $90
    ld a, $26                                     ; $77fa: $3e $26
    dec a                                         ; $77fc: $3d
    rlca                                          ; $77fd: $07
    ld a, [hl-]                                   ; $77fe: $3a
    ld c, $3a                                     ; $77ff: $0e $3a
    ld l, $3c                                     ; $7801: $2e $3c
    inc h                                         ; $7803: $24
    inc a                                         ; $7804: $3c
    inc h                                         ; $7805: $24
    inc a                                         ; $7806: $3c
    inc b                                         ; $7807: $04
    jr c, @+$0a                                   ; $7808: $38 $08

    ld [bc], a                                    ; $780a: $02
    jr nc, jr_0ea_780f                            ; $780b: $30 $02

    jr nz, @+$04                                  ; $780d: $20 $02

jr_0ea_780f:
    db $10                                        ; $780f: $10
    ld [$ff00], sp                                ; $7810: $08 $00 $ff
    add hl, bc                                    ; $7813: $09
    ld [bc], a                                    ; $7814: $02
    ld sp, hl                                     ; $7815: $f9
    ld [$01f5], sp                                ; $7816: $08 $f5 $01
    push af                                       ; $7819: $f5
    ld sp, hl                                     ; $781a: $f9
    push af                                       ; $781b: $f5
    ld bc, $0002                                  ; $781c: $01 $02 $00
    ld [bc], a                                    ; $781f: $02
    ld d, b                                       ; $7820: $50
    adc [hl]                                      ; $7821: $8e
    rst $38                                       ; $7822: $ff
    xor a                                         ; $7823: $af
    rst $38                                       ; $7824: $ff
    sub l                                         ; $7825: $95
    ld a, a                                       ; $7826: $7f
    ld e, b                                       ; $7827: $58
    rst $38                                       ; $7828: $ff
    and b                                         ; $7829: $a0
    ld a, a                                       ; $782a: $7f
    ld e, c                                       ; $782b: $59
    ccf                                           ; $782c: $3f
    daa                                           ; $782d: $27
    rra                                           ; $782e: $1f
    add hl, de                                    ; $782f: $19
    ld [bc], a                                    ; $7830: $02
    rrca                                          ; $7831: $0f
    ld [bc], a                                    ; $7832: $02
    rlca                                          ; $7833: $07
    ld [bc], a                                    ; $7834: $02
    inc bc                                        ; $7835: $03
    ld [bc], a                                    ; $7836: $02
    ld [bc], a                                    ; $7837: $02
    ld b, $00                                     ; $7838: $06 $00
    ld [bc], a                                    ; $783a: $02
    inc e                                         ; $783b: $1c
    sub b                                         ; $783c: $90
    ld a, [hl]                                    ; $783d: $7e
    ld h, [hl]                                    ; $783e: $66
    db $fd                                        ; $783f: $fd
    add a                                         ; $7840: $87
    ld a, [$f40e]                                 ; $7841: $fa $0e $f4
    sbc h                                         ; $7844: $9c
    ld hl, sp-$78                                 ; $7845: $f8 $88
    ldh a, [$90]                                  ; $7847: $f0 $90
    ldh a, [rNR10]                                ; $7849: $f0 $10
    ldh [$60], a                                  ; $784b: $e0 $60
    ld [bc], a                                    ; $784d: $02
    add b                                         ; $784e: $80
    inc b                                         ; $784f: $04
    nop                                           ; $7850: $00
    ld [bc], a                                    ; $7851: $02
    add b                                         ; $7852: $80
    ld b, $00                                     ; $7853: $06 $00
    rst $38                                       ; $7855: $ff
    dec d                                         ; $7856: $15
    ld [$10f1], sp                                ; $7857: $08 $f1 $10
    ld a, [c]                                     ; $785a: $f2
    ld de, $f1f2                                  ; $785b: $11 $f2 $f1
    ld a, [c]                                     ; $785e: $f2
    ld sp, hl                                     ; $785f: $f9
    ld a, [c]                                     ; $7860: $f2
    ld bc, $09f2                                  ; $7861: $01 $f2 $09
    ld [bc], a                                    ; $7864: $02
    di                                            ; $7865: $f3
    ld [bc], a                                    ; $7866: $02
    ei                                            ; $7867: $fb
    ld [bc], a                                    ; $7868: $02
    inc bc                                        ; $7869: $03
    ld [bc], a                                    ; $786a: $02
    add hl, bc                                    ; $786b: $09
    add c                                         ; $786c: $81
    rst $38                                       ; $786d: $ff
    ld [bc], a                                    ; $786e: $02
    nop                                           ; $786f: $00
    sbc [hl]                                      ; $7870: $9e
    rst $38                                       ; $7871: $ff
    ld a, a                                       ; $7872: $7f
    rst $38                                       ; $7873: $ff
    ld a, a                                       ; $7874: $7f
    rst $38                                       ; $7875: $ff
    ld a, a                                       ; $7876: $7f
    rst $38                                       ; $7877: $ff
    ld a, a                                       ; $7878: $7f
    rst $38                                       ; $7879: $ff
    cp a                                          ; $787a: $bf
    ld a, a                                       ; $787b: $7f
    ccf                                           ; $787c: $3f
    ld a, a                                       ; $787d: $7f
    ccf                                           ; $787e: $3f
    ld a, a                                       ; $787f: $7f
    ccf                                           ; $7880: $3f
    ld a, a                                       ; $7881: $7f
    ccf                                           ; $7882: $3f
    ld a, a                                       ; $7883: $7f
    ccf                                           ; $7884: $3f
    ld a, a                                       ; $7885: $7f
    ccf                                           ; $7886: $3f
    ld a, a                                       ; $7887: $7f
    ccf                                           ; $7888: $3f
    ld a, a                                       ; $7889: $7f
    ccf                                           ; $788a: $3f
    ld a, a                                       ; $788b: $7f
    inc bc                                        ; $788c: $03
    ccf                                           ; $788d: $3f
    rst $38                                       ; $788e: $ff
    ld [bc], a                                    ; $788f: $02
    nop                                           ; $7890: $00
    add hl, de                                    ; $7891: $19
    rst $38                                       ; $7892: $ff
    add l                                         ; $7893: $85
    ldh a, [rIE]                                  ; $7894: $f0 $ff
    rst $28                                       ; $7896: $ef
    ldh a, [rIE]                                  ; $7897: $f0 $ff
    ld [bc], a                                    ; $7899: $02
    nop                                           ; $789a: $00
    add hl, de                                    ; $789b: $19
    rst $38                                       ; $789c: $ff
    or a                                          ; $789d: $b7
    ld a, a                                       ; $789e: $7f
    rst $38                                       ; $789f: $ff
    ld a, a                                       ; $78a0: $7f
    rst $38                                       ; $78a1: $ff
    cp $01                                        ; $78a2: $fe $01
    nop                                           ; $78a4: $00
    rst $38                                       ; $78a5: $ff
    cp $ff                                        ; $78a6: $fe $ff
    cp $ff                                        ; $78a8: $fe $ff
    cp $ff                                        ; $78aa: $fe $ff
    cp $ff                                        ; $78ac: $fe $ff
    cp $ff                                        ; $78ae: $fe $ff
    cp $ff                                        ; $78b0: $fe $ff
    cp $ff                                        ; $78b2: $fe $ff
    cp $ff                                        ; $78b4: $fe $ff
    cp $ff                                        ; $78b6: $fe $ff
    cp $ff                                        ; $78b8: $fe $ff
    cp $ff                                        ; $78ba: $fe $ff
    cp $ff                                        ; $78bc: $fe $ff
    cp $ff                                        ; $78be: $fe $ff
    cp $ff                                        ; $78c0: $fe $ff
    ldh a, [rIF]                                  ; $78c2: $f0 $0f
    ld a, a                                       ; $78c4: $7f
    nop                                           ; $78c5: $00
    ld a, a                                       ; $78c6: $7f
    nop                                           ; $78c7: $00
    ccf                                           ; $78c8: $3f
    nop                                           ; $78c9: $00
    rra                                           ; $78ca: $1f
    nop                                           ; $78cb: $00
    rra                                           ; $78cc: $1f
    nop                                           ; $78cd: $00
    rrca                                          ; $78ce: $0f
    nop                                           ; $78cf: $00
    rrca                                          ; $78d0: $0f
    nop                                           ; $78d1: $00
    rlca                                          ; $78d2: $07
    nop                                           ; $78d3: $00
    ld bc, $000d                                  ; $78d4: $01 $0d $00
    sbc h                                         ; $78d7: $9c
    ld a, l                                       ; $78d8: $7d
    add e                                         ; $78d9: $83
    db $fd                                        ; $78da: $fd
    inc bc                                        ; $78db: $03
    db $fd                                        ; $78dc: $fd
    inc bc                                        ; $78dd: $03
    db $fd                                        ; $78de: $fd
    inc bc                                        ; $78df: $03
    db $fd                                        ; $78e0: $fd
    inc bc                                        ; $78e1: $03
    db $fd                                        ; $78e2: $fd
    inc bc                                        ; $78e3: $03
    db $fd                                        ; $78e4: $fd
    inc bc                                        ; $78e5: $03
    db $fd                                        ; $78e6: $fd
    inc bc                                        ; $78e7: $03
    db $fd                                        ; $78e8: $fd
    inc bc                                        ; $78e9: $03
    db $fd                                        ; $78ea: $fd
    inc bc                                        ; $78eb: $03
    cp $01                                        ; $78ec: $fe $01
    ld a, $01                                     ; $78ee: $3e $01
    ld e, $01                                     ; $78f0: $1e $01
    ld b, $01                                     ; $78f2: $06 $01
    inc b                                         ; $78f4: $04
    nop                                           ; $78f5: $00
    ld a, [de]                                    ; $78f6: $1a
    rst $38                                       ; $78f7: $ff
    add e                                         ; $78f8: $83
    rlca                                          ; $78f9: $07
    rst $38                                       ; $78fa: $ff
    ld hl, sp+$02                                 ; $78fb: $f8 $02
    rlca                                          ; $78fd: $07
    sbc [hl]                                      ; $78fe: $9e
    nop                                           ; $78ff: $00
    ld a, $3f                                     ; $7900: $3e $3f
    ld a, $3f                                     ; $7902: $3e $3f
    ld a, $3f                                     ; $7904: $3e $3f
    ld a, $3f                                     ; $7906: $3e $3f
    ld a, $3f                                     ; $7908: $3e $3f
    ld a, $3f                                     ; $790a: $3e $3f
    ld a, $3f                                     ; $790c: $3e $3f
    ld a, $3f                                     ; $790e: $3e $3f
    ld a, $3f                                     ; $7910: $3e $3f
    ld a, $3f                                     ; $7912: $3e $3f
    ld a, $3f                                     ; $7914: $3e $3f
    ld a, $3f                                     ; $7916: $3e $3f
    ld a, $3f                                     ; $7918: $3e $3f
    ld a, $3f                                     ; $791a: $3e $3f
    nop                                           ; $791c: $00
    ld [bc], a                                    ; $791d: $02
    ccf                                           ; $791e: $3f
    add c                                         ; $791f: $81
    nop                                           ; $7920: $00
    rst $38                                       ; $7921: $ff
    dec d                                         ; $7922: $15
    ld [$10f1], sp                                ; $7923: $08 $f1 $10
    ld a, [c]                                     ; $7926: $f2
    ld de, $f1f2                                  ; $7927: $11 $f2 $f1
    ld a, [c]                                     ; $792a: $f2
    ld sp, hl                                     ; $792b: $f9
    ld a, [c]                                     ; $792c: $f2
    ld bc, $09f2                                  ; $792d: $01 $f2 $09
    ld [bc], a                                    ; $7930: $02
    or $02                                        ; $7931: $f6 $02
    cp $02                                        ; $7933: $fe $02
    ld b, $02                                     ; $7935: $06 $02
    add hl, bc                                    ; $7937: $09
    add c                                         ; $7938: $81
    rst $38                                       ; $7939: $ff
    ld [bc], a                                    ; $793a: $02
    nop                                           ; $793b: $00
    sub b                                         ; $793c: $90
    rst $38                                       ; $793d: $ff
    ld a, a                                       ; $793e: $7f
    rst $38                                       ; $793f: $ff
    ld a, a                                       ; $7940: $7f
    rst $38                                       ; $7941: $ff
    cp a                                          ; $7942: $bf
    ld a, a                                       ; $7943: $7f
    cp a                                          ; $7944: $bf
    ld a, a                                       ; $7945: $7f
    ccf                                           ; $7946: $3f
    ld a, a                                       ; $7947: $7f
    ld e, a                                       ; $7948: $5f
    ccf                                           ; $7949: $3f
    ld e, a                                       ; $794a: $5f
    ccf                                           ; $794b: $3f
    ld e, a                                       ; $794c: $5f
    ld [bc], a                                    ; $794d: $02
    inc hl                                        ; $794e: $23
    adc h                                         ; $794f: $8c
    inc e                                         ; $7950: $1c
    inc [hl]                                      ; $7951: $34
    dec bc                                        ; $7952: $0b
    add hl, de                                    ; $7953: $19
    ld b, $1f                                     ; $7954: $06 $1f
    nop                                           ; $7956: $00
    ld c, $01                                     ; $7957: $0e $01
    rrca                                          ; $7959: $0f
    nop                                           ; $795a: $00
    rst $38                                       ; $795b: $ff
    ld [bc], a                                    ; $795c: $02
    nop                                           ; $795d: $00
    ld [de], a                                    ; $795e: $12
    rst $38                                       ; $795f: $ff
    ld [bc], a                                    ; $7960: $02
    nop                                           ; $7961: $00
    adc d                                         ; $7962: $8a
    rst $38                                       ; $7963: $ff
    add [hl]                                      ; $7964: $86
    ld a, c                                       ; $7965: $79
    ld e, b                                       ; $7966: $58
    and a                                         ; $7967: $a7
    di                                            ; $7968: $f3
    inc c                                         ; $7969: $0c
    rst $20                                       ; $796a: $e7
    jr @+$01                                      ; $796b: $18 $ff

    ld [bc], a                                    ; $796d: $02
    nop                                           ; $796e: $00
    ld c, $ff                                     ; $796f: $0e $ff
    ret nz                                        ; $7971: $c0

    db $e3                                        ; $7972: $e3
    rst $20                                       ; $7973: $e7
    sbc e                                         ; $7974: $9b
    add a                                         ; $7975: $87
    ld a, e                                       ; $7976: $7b
    rlca                                          ; $7977: $07
    ei                                            ; $7978: $fb
    ld h, a                                       ; $7979: $67
    sbc e                                         ; $797a: $9b
    rst $00                                       ; $797b: $c7
    dec sp                                        ; $797c: $3b
    adc a                                         ; $797d: $8f
    ld [hl], a                                    ; $797e: $77
    cpl                                           ; $797f: $2f
    rst $10                                       ; $7980: $d7
    cp $01                                        ; $7981: $fe $01
    nop                                           ; $7983: $00
    rst $38                                       ; $7984: $ff
    cp $ff                                        ; $7985: $fe $ff
    cp $ff                                        ; $7987: $fe $ff
    cp $ff                                        ; $7989: $fe $ff
    cp $ff                                        ; $798b: $fe $ff
    cp $ff                                        ; $798d: $fe $ff
    cp $ff                                        ; $798f: $fe $ff
    cp $ff                                        ; $7991: $fe $ff
    cp $ff                                        ; $7993: $fe $ff
    cp $ff                                        ; $7995: $fe $ff
    cp $ff                                        ; $7997: $fe $ff
    cp $ff                                        ; $7999: $fe $ff
    cp $ff                                        ; $799b: $fe $ff
    cp $ff                                        ; $799d: $fe $ff
    cp $ff                                        ; $799f: $fe $ff
    db $fd                                        ; $79a1: $fd
    ld [bc], a                                    ; $79a2: $02
    ei                                            ; $79a3: $fb
    inc b                                         ; $79a4: $04
    ld a, a                                       ; $79a5: $7f
    nop                                           ; $79a6: $00
    ld a, a                                       ; $79a7: $7f
    nop                                           ; $79a8: $00
    ccf                                           ; $79a9: $3f
    nop                                           ; $79aa: $00
    rra                                           ; $79ab: $1f
    nop                                           ; $79ac: $00
    rlca                                          ; $79ad: $07
    nop                                           ; $79ae: $00
    inc bc                                        ; $79af: $03
    nop                                           ; $79b0: $00
    ld bc, $000f                                  ; $79b1: $01 $0f $00
    sbc c                                         ; $79b4: $99
    call $b932                                    ; $79b5: $cd $32 $b9
    ld b, [hl]                                    ; $79b8: $46
    pop af                                        ; $79b9: $f1
    ld c, $e5                                     ; $79ba: $0e $e5
    ld a, [de]                                    ; $79bc: $1a
    db $ed                                        ; $79bd: $ed
    ld [de], a                                    ; $79be: $12
    reti                                          ; $79bf: $d9


    ld h, $f1                                     ; $79c0: $26 $f1
    ld c, $f4                                     ; $79c2: $0e $f4
    dec bc                                        ; $79c4: $0b
    db $fc                                        ; $79c5: $fc
    inc bc                                        ; $79c6: $03
    ld a, b                                       ; $79c7: $78
    rlca                                          ; $79c8: $07
    ld a, $01                                     ; $79c9: $3e $01
    rrca                                          ; $79cb: $0f
    nop                                           ; $79cc: $00
    inc bc                                        ; $79cd: $03
    rlca                                          ; $79ce: $07
    nop                                           ; $79cf: $00
    rrca                                          ; $79d0: $0f
    rst $38                                       ; $79d1: $ff
    add [hl]                                      ; $79d2: $86
    ld a, a                                       ; $79d3: $7f
    rst $38                                       ; $79d4: $ff
    ld a, a                                       ; $79d5: $7f
    rst $38                                       ; $79d6: $ff
    ld a, a                                       ; $79d7: $7f
    rst $38                                       ; $79d8: $ff
    ld [bc], a                                    ; $79d9: $02
    ld a, a                                       ; $79da: $7f
    add [hl]                                      ; $79db: $86
    cp a                                          ; $79dc: $bf
    ld a, a                                       ; $79dd: $7f
    cp a                                          ; $79de: $bf
    add b                                         ; $79df: $80
    ld a, a                                       ; $79e0: $7f
    ccf                                           ; $79e1: $3f
    inc bc                                        ; $79e2: $03
    nop                                           ; $79e3: $00
    sbc e                                         ; $79e4: $9b
    ld b, $07                                     ; $79e5: $06 $07
    ld b, $07                                     ; $79e7: $06 $07
    ld b, $07                                     ; $79e9: $06 $07
    ld b, $07                                     ; $79eb: $06 $07
    ld b, $07                                     ; $79ed: $06 $07
    ld b, $07                                     ; $79ef: $06 $07
    ld b, $07                                     ; $79f1: $06 $07
    ld b, $07                                     ; $79f3: $06 $07
    ld b, $07                                     ; $79f5: $06 $07
    ld b, $07                                     ; $79f7: $06 $07
    ld b, $07                                     ; $79f9: $06 $07
    ld b, $07                                     ; $79fb: $06 $07
    ld b, $07                                     ; $79fd: $06 $07
    nop                                           ; $79ff: $00
    ld [bc], a                                    ; $7a00: $02
    rlca                                          ; $7a01: $07
    inc bc                                        ; $7a02: $03
    nop                                           ; $7a03: $00
    rst $38                                       ; $7a04: $ff
    inc de                                        ; $7a05: $13
    rlca                                          ; $7a06: $07
    pop af                                        ; $7a07: $f1
    db $10                                        ; $7a08: $10
    ld a, [c]                                     ; $7a09: $f2
    ld de, $f2f2                                  ; $7a0a: $11 $f2 $f2
    ld a, [c]                                     ; $7a0d: $f2
    ld a, [$02f2]                                 ; $7a0e: $fa $f2 $02
    ld a, [c]                                     ; $7a11: $f2
    add hl, bc                                    ; $7a12: $09
    ld [bc], a                                    ; $7a13: $02
    ld sp, hl                                     ; $7a14: $f9
    ld [bc], a                                    ; $7a15: $02
    ld bc, $0902                                  ; $7a16: $01 $02 $09
    add e                                         ; $7a19: $83
    rst $38                                       ; $7a1a: $ff
    nop                                           ; $7a1b: $00
    add b                                         ; $7a1c: $80
    ld [bc], a                                    ; $7a1d: $02
    ld a, a                                       ; $7a1e: $7f
    sbc h                                         ; $7a1f: $9c
    ccf                                           ; $7a20: $3f
    ld a, a                                       ; $7a21: $7f
    rra                                           ; $7a22: $1f
    ld a, a                                       ; $7a23: $7f
    rlca                                          ; $7a24: $07
    ld l, a                                       ; $7a25: $6f
    db $10                                        ; $7a26: $10
    ld [hl], b                                    ; $7a27: $70
    rrca                                          ; $7a28: $0f
    ld a, $01                                     ; $7a29: $3e $01
    dec a                                         ; $7a2b: $3d
    ld [bc], a                                    ; $7a2c: $02
    rra                                           ; $7a2d: $1f
    nop                                           ; $7a2e: $00
    rra                                           ; $7a2f: $1f
    nop                                           ; $7a30: $00
    rrca                                          ; $7a31: $0f
    nop                                           ; $7a32: $00
    rrca                                          ; $7a33: $0f
    nop                                           ; $7a34: $00
    rlca                                          ; $7a35: $07
    nop                                           ; $7a36: $00
    inc bc                                        ; $7a37: $03
    nop                                           ; $7a38: $00
    inc bc                                        ; $7a39: $03
    nop                                           ; $7a3a: $00
    rst $38                                       ; $7a3b: $ff
    ld [bc], a                                    ; $7a3c: $02
    nop                                           ; $7a3d: $00
    ld a, [bc]                                    ; $7a3e: $0a
    rst $38                                       ; $7a3f: $ff
    ld [bc], a                                    ; $7a40: $02
    nop                                           ; $7a41: $00
    sub d                                         ; $7a42: $92
    rst $38                                       ; $7a43: $ff
    sbc b                                         ; $7a44: $98
    ld h, a                                       ; $7a45: $67
    ld h, e                                       ; $7a46: $63
    sbc h                                         ; $7a47: $9c
    xor $11                                       ; $7a48: $ee $11
    sbc $21                                       ; $7a4a: $de $21
    db $fc                                        ; $7a4c: $fc
    inc bc                                        ; $7a4d: $03
    ei                                            ; $7a4e: $fb
    inc b                                         ; $7a4f: $04
    rst $38                                       ; $7a50: $ff
    nop                                           ; $7a51: $00
    rst $38                                       ; $7a52: $ff
    nop                                           ; $7a53: $00
    rst $38                                       ; $7a54: $ff
    ld [bc], a                                    ; $7a55: $02
    nop                                           ; $7a56: $00
    ld [$02ff], sp                                ; $7a57: $08 $ff $02
    ldh a, [$c0]                                  ; $7a5a: $f0 $c0
    rrca                                          ; $7a5c: $0f
    db $10                                        ; $7a5d: $10
    rst $28                                       ; $7a5e: $ef
    and d                                         ; $7a5f: $a2
    ld e, l                                       ; $7a60: $5d
    call z, $9833                                 ; $7a61: $cc $33 $98
    ld h, a                                       ; $7a64: $67
    ld [hl-], a                                   ; $7a65: $32
    call Call_000_1be4                            ; $7a66: $cd $e4 $1b
    ret z                                         ; $7a69: $c8

    scf                                           ; $7a6a: $37
    sbc h                                         ; $7a6b: $9c
    ld h, e                                       ; $7a6c: $63
    or d                                          ; $7a6d: $b2
    ld c, l                                       ; $7a6e: $4d
    ld a, [hl]                                    ; $7a6f: $7e
    ld bc, $7f00                                  ; $7a70: $01 $00 $7f
    ld a, [hl]                                    ; $7a73: $7e
    ld a, a                                       ; $7a74: $7f
    ld a, [hl]                                    ; $7a75: $7e
    ld a, a                                       ; $7a76: $7f
    ld a, [hl]                                    ; $7a77: $7e
    rrca                                          ; $7a78: $0f
    ld e, $6f                                     ; $7a79: $1e $6f
    ld e, $6f                                     ; $7a7b: $1e $6f
    ld e, $6f                                     ; $7a7d: $1e $6f
    ld e, $6f                                     ; $7a7f: $1e $6f
    ld a, $5f                                     ; $7a81: $3e $5f
    ld a, [hl]                                    ; $7a83: $7e
    ccf                                           ; $7a84: $3f
    ld a, [hl]                                    ; $7a85: $7e
    ccf                                           ; $7a86: $3f
    ld a, [hl]                                    ; $7a87: $7e
    ccf                                           ; $7a88: $3f
    ld a, [hl]                                    ; $7a89: $7e
    ccf                                           ; $7a8a: $3f
    ld a, [hl]                                    ; $7a8b: $7e
    ccf                                           ; $7a8c: $3f
    ld a, [hl]                                    ; $7a8d: $7e
    ccf                                           ; $7a8e: $3f
    rst $38                                       ; $7a8f: $ff
    nop                                           ; $7a90: $00
    ld a, a                                       ; $7a91: $7f
    nop                                           ; $7a92: $00
    ccf                                           ; $7a93: $3f
    nop                                           ; $7a94: $00
    rra                                           ; $7a95: $1f
    nop                                           ; $7a96: $00
    rrca                                          ; $7a97: $0f
    nop                                           ; $7a98: $00
    rlca                                          ; $7a99: $07
    nop                                           ; $7a9a: $00
    ld bc, $0013                                  ; $7a9b: $01 $13 $00
    sub l                                         ; $7a9e: $95
    ld a, [c]                                     ; $7a9f: $f2
    dec c                                         ; $7aa0: $0d
    or $09                                        ; $7aa1: $f6 $09
    db $ed                                        ; $7aa3: $ed
    ld [de], a                                    ; $7aa4: $12
    db $fc                                        ; $7aa5: $fc
    inc bc                                        ; $7aa6: $03
    db $fd                                        ; $7aa7: $fd
    ld [bc], a                                    ; $7aa8: $02
    ei                                            ; $7aa9: $fb
    inc b                                         ; $7aaa: $04
    cp $01                                        ; $7aab: $fe $01
    db $fd                                        ; $7aad: $fd
    ld [bc], a                                    ; $7aae: $02
    ccf                                           ; $7aaf: $3f
    nop                                           ; $7ab0: $00
    rrca                                          ; $7ab1: $0f
    nop                                           ; $7ab2: $00
    inc bc                                        ; $7ab3: $03
    dec bc                                        ; $7ab4: $0b
    nop                                           ; $7ab5: $00
    sbc d                                         ; $7ab6: $9a
    ld a, $df                                     ; $7ab7: $3e $df
    cp [hl]                                       ; $7ab9: $be
    ld e, a                                       ; $7aba: $5f
    ld a, $df                                     ; $7abb: $3e $df
    cp [hl]                                       ; $7abd: $be
    ld e, a                                       ; $7abe: $5f
    cp [hl]                                       ; $7abf: $be
    ld e, a                                       ; $7ac0: $5f
    ld a, $df                                     ; $7ac1: $3e $df
    cp [hl]                                       ; $7ac3: $be
    ld e, a                                       ; $7ac4: $5f
    sbc [hl]                                      ; $7ac5: $9e
    ld l, a                                       ; $7ac6: $6f
    ld e, $ef                                     ; $7ac7: $1e $ef
    xor [hl]                                      ; $7ac9: $ae
    ld d, a                                       ; $7aca: $57
    xor $13                                       ; $7acb: $ee $13
    ldh a, [rIF]                                  ; $7acd: $f0 $0f
    inc a                                         ; $7acf: $3c
    inc bc                                        ; $7ad0: $03
    ld b, $00                                     ; $7ad1: $06 $00
    rst $38                                       ; $7ad3: $ff
    inc de                                        ; $7ad4: $13
    rlca                                          ; $7ad5: $07
    pop af                                        ; $7ad6: $f1
    db $10                                        ; $7ad7: $10
    ld a, [c]                                     ; $7ad8: $f2
    ld de, $fee7                                  ; $7ad9: $11 $e7 $fe
    db $eb                                        ; $7adc: $eb
    ld b, $e9                                     ; $7add: $06 $e9
    ld c, $e9                                     ; $7adf: $0e $e9
    db $10                                        ; $7ae1: $10
    rst $30                                       ; $7ae2: $f7
    dec b                                         ; $7ae3: $05
    rst $30                                       ; $7ae4: $f7
    dec c                                         ; $7ae5: $0d
    rst $30                                       ; $7ae6: $f7
    ld [de], a                                    ; $7ae7: $12
    add c                                         ; $7ae8: $81
    nop                                           ; $7ae9: $00
    ld [bc], a                                    ; $7aea: $02
    add b                                         ; $7aeb: $80
    sbc [hl]                                      ; $7aec: $9e
    ld b, b                                       ; $7aed: $40
    sub b                                         ; $7aee: $90
    ld h, b                                       ; $7aef: $60
    ld b, a                                       ; $7af0: $47
    jr c, jr_0ea_7b33                             ; $7af1: $38 $40

    ccf                                           ; $7af3: $3f
    jr z, jr_0ea_7b0d                             ; $7af4: $28 $17

    inc sp                                        ; $7af6: $33
    inc c                                         ; $7af7: $0c
    ld d, $09                                     ; $7af8: $16 $09
    rra                                           ; $7afa: $1f
    nop                                           ; $7afb: $00
    rra                                           ; $7afc: $1f
    nop                                           ; $7afd: $00
    ld c, $01                                     ; $7afe: $0e $01
    rrca                                          ; $7b00: $0f
    nop                                           ; $7b01: $00
    rrca                                          ; $7b02: $0f
    nop                                           ; $7b03: $00
    rlca                                          ; $7b04: $07
    nop                                           ; $7b05: $00
    inc bc                                        ; $7b06: $03
    nop                                           ; $7b07: $00
    inc bc                                        ; $7b08: $03
    nop                                           ; $7b09: $00
    rst $38                                       ; $7b0a: $ff
    ld [bc], a                                    ; $7b0b: $02
    nop                                           ; $7b0c: $00

jr_0ea_7b0d:
    add $ff                                       ; $7b0d: $c6 $ff
    add b                                         ; $7b0f: $80
    ld a, a                                       ; $7b10: $7f
    inc e                                         ; $7b11: $1c
    db $e3                                        ; $7b12: $e3
    inc [hl]                                      ; $7b13: $34
    bit 7, c                                      ; $7b14: $cb $79
    add [hl]                                      ; $7b16: $86
    ei                                            ; $7b17: $fb
    inc b                                         ; $7b18: $04
    rst $30                                       ; $7b19: $f7
    ld [$00ff], sp                                ; $7b1a: $08 $ff $00
    rst $38                                       ; $7b1d: $ff
    nop                                           ; $7b1e: $00
    rst $38                                       ; $7b1f: $ff
    nop                                           ; $7b20: $00
    rst $38                                       ; $7b21: $ff
    nop                                           ; $7b22: $00
    rst $38                                       ; $7b23: $ff
    nop                                           ; $7b24: $00
    rst $38                                       ; $7b25: $ff
    nop                                           ; $7b26: $00
    ld a, a                                       ; $7b27: $7f
    nop                                           ; $7b28: $00
    rra                                           ; $7b29: $1f
    nop                                           ; $7b2a: $00
    ld bc, $1e00                                  ; $7b2b: $01 $00 $1e
    ld bc, $1fe0                                  ; $7b2e: $01 $e0 $1f
    nop                                           ; $7b31: $00
    rst $38                                       ; $7b32: $ff

jr_0ea_7b33:
    nop                                           ; $7b33: $00
    rst $38                                       ; $7b34: $ff
    add b                                         ; $7b35: $80
    ld a, a                                       ; $7b36: $7f
    ld c, c                                       ; $7b37: $49
    or [hl]                                       ; $7b38: $b6
    pop bc                                        ; $7b39: $c1
    ld a, $a9                                     ; $7b3a: $3e $a9
    ld d, [hl]                                    ; $7b3c: $56
    ld b, c                                       ; $7b3d: $41
    cp [hl]                                       ; $7b3e: $be
    add l                                         ; $7b3f: $85
    ld a, d                                       ; $7b40: $7a
    cp c                                          ; $7b41: $b9
    ld b, [hl]                                    ; $7b42: $46
    ld a, b                                       ; $7b43: $78
    add a                                         ; $7b44: $87
    ldh [$1f], a                                  ; $7b45: $e0 $1f
    ldh [$1f], a                                  ; $7b47: $e0 $1f
    add sp, $17                                   ; $7b49: $e8 $17
    inc bc                                        ; $7b4b: $03
    nop                                           ; $7b4c: $00
    ld bc, $0102                                  ; $7b4d: $01 $02 $01
    ld [bc], a                                    ; $7b50: $02
    ld bc, $0102                                  ; $7b51: $01 $02 $01
    ld [bc], a                                    ; $7b54: $02
    ld [bc], a                                    ; $7b55: $02
    dec c                                         ; $7b56: $0d
    nop                                           ; $7b57: $00
    adc c                                         ; $7b58: $89
    ld [bc], a                                    ; $7b59: $02
    nop                                           ; $7b5a: $00
    ld [bc], a                                    ; $7b5b: $02
    nop                                           ; $7b5c: $00
    ld [bc], a                                    ; $7b5d: $02
    nop                                           ; $7b5e: $00
    ld [bc], a                                    ; $7b5f: $02
    nop                                           ; $7b60: $00
    add b                                         ; $7b61: $80
    rlca                                          ; $7b62: $07
    nop                                           ; $7b63: $00
    add e                                         ; $7b64: $83
    rlca                                          ; $7b65: $07
    nop                                           ; $7b66: $00
    ld bc, $0019                                  ; $7b67: $01 $19 $00
    adc e                                         ; $7b6a: $8b
    ld e, [hl]                                    ; $7b6b: $5e
    ld hl, $037c                                  ; $7b6c: $21 $7c $03
    ld a, [$fe05]                                 ; $7b6f: $fa $05 $fe
    ld bc, $007f                                  ; $7b72: $01 $7f $00
    inc bc                                        ; $7b75: $03
    dec d                                         ; $7b76: $15
    nop                                           ; $7b77: $00
    sub b                                         ; $7b78: $90
    ld [$0810], sp                                ; $7b79: $08 $10 $08
    stop                                          ; $7b7c: $10 $00
    jr jr_0ea_7b90                                ; $7b7e: $18 $10

    inc c                                         ; $7b80: $0c

jr_0ea_7b81:
    db $10                                        ; $7b81: $10
    inc c                                         ; $7b82: $0c

jr_0ea_7b83:
    inc d                                         ; $7b83: $14
    ld a, [bc]                                    ; $7b84: $0a

jr_0ea_7b85:
    ld e, $01                                     ; $7b85: $1e $01
    ld [bc], a                                    ; $7b87: $02
    ld bc, $000c                                  ; $7b88: $01 $0c $00
    rst $38                                       ; $7b8b: $ff
    dec d                                         ; $7b8c: $15
    ld [$10f1], sp                                ; $7b8d: $08 $f1 $10

jr_0ea_7b90:
    ld a, [c]                                     ; $7b90: $f2
    ld de, $17d4                                  ; $7b91: $11 $d4 $17
    call nc, $d51f                                ; $7b94: $d4 $1f $d5
    daa                                           ; $7b97: $27
    sub $2b                                       ; $7b98: $d6 $2b
    db $e4                                        ; $7b9a: $e4
    jr jr_0ea_7b81                                ; $7b9b: $18 $e4

    jr nz, jr_0ea_7b83                            ; $7b9d: $20 $e4

    jr z, jr_0ea_7b85                             ; $7b9f: $28 $e4

    dec hl                                        ; $7ba1: $2b
    cp $03                                        ; $7ba2: $fe $03
    nop                                           ; $7ba4: $00
    db $fc                                        ; $7ba5: $fc
    inc bc                                        ; $7ba6: $03
    ei                                            ; $7ba7: $fb
    inc b                                         ; $7ba8: $04
    or $09                                        ; $7ba9: $f6 $09
    db $fd                                        ; $7bab: $fd
    ld [bc], a                                    ; $7bac: $02
    rst $38                                       ; $7bad: $ff
    nop                                           ; $7bae: $00
    ld a, a                                       ; $7baf: $7f
    nop                                           ; $7bb0: $00
    ld a, a                                       ; $7bb1: $7f
    nop                                           ; $7bb2: $00
    ld a, a                                       ; $7bb3: $7f
    nop                                           ; $7bb4: $00
    ld a, a                                       ; $7bb5: $7f
    nop                                           ; $7bb6: $00
    ld a, a                                       ; $7bb7: $7f
    nop                                           ; $7bb8: $00
    ld a, a                                       ; $7bb9: $7f
    nop                                           ; $7bba: $00
    ld a, a                                       ; $7bbb: $7f
    nop                                           ; $7bbc: $00
    ccf                                           ; $7bbd: $3f

jr_0ea_7bbe:
    nop                                           ; $7bbe: $00
    ccf                                           ; $7bbf: $3f
    nop                                           ; $7bc0: $00
    ccf                                           ; $7bc1: $3f
    nop                                           ; $7bc2: $00
    ld hl, sp+$00                                 ; $7bc3: $f8 $00
    rlca                                          ; $7bc5: $07
    ld hl, sp+$00                                 ; $7bc6: $f8 $00
    rst $38                                       ; $7bc8: $ff
    ld h, b                                       ; $7bc9: $60
    sbc a                                         ; $7bca: $9f
    call z, $b933                                 ; $7bcb: $cc $33 $b9
    ld b, [hl]                                    ; $7bce: $46
    di                                            ; $7bcf: $f3
    inc c                                         ; $7bd0: $0c
    db $ec                                        ; $7bd1: $ec
    inc de                                        ; $7bd2: $13
    ld sp, hl                                     ; $7bd3: $f9
    ld b, $f7                                     ; $7bd4: $06 $f7
    ld [$10ef], sp                                ; $7bd6: $08 $ef $10
    rst $38                                       ; $7bd9: $ff
    nop                                           ; $7bda: $00
    db $fc                                        ; $7bdb: $fc
    inc bc                                        ; $7bdc: $03
    ld a, [$fb05]                                 ; $7bdd: $fa $05 $fb
    inc b                                         ; $7be0: $04
    rst $30                                       ; $7be1: $f7
    ld [$00f0], sp                                ; $7be2: $08 $f0 $00
    rrca                                          ; $7be5: $0f
    ldh a, [rP1]                                  ; $7be6: $f0 $00
    rst $38                                       ; $7be8: $ff
    ret nz                                        ; $7be9: $c0

    ccf                                           ; $7bea: $3f
    add b                                         ; $7beb: $80
    ld a, a                                       ; $7bec: $7f
    jr nc, jr_0ea_7bbe                            ; $7bed: $30 $cf

    ld h, b                                       ; $7bef: $60
    sbc a                                         ; $7bf0: $9f
    ldh [$1f], a                                  ; $7bf1: $e0 $1f
    ret z                                         ; $7bf3: $c8

    scf                                           ; $7bf4: $37
    ld [de], a                                    ; $7bf5: $12
    db $ed                                        ; $7bf6: $ed
    inc h                                         ; $7bf7: $24
    db $db                                        ; $7bf8: $db
    ld a, b                                       ; $7bf9: $78
    add a                                         ; $7bfa: $87
    ld a, [c]                                     ; $7bfb: $f2
    dec c                                         ; $7bfc: $0d
    and $19                                       ; $7bfd: $e6 $19
    call z, $bb33                                 ; $7bff: $cc $33 $bb
    ld b, h                                       ; $7c02: $44
    inc c                                         ; $7c03: $0c
    nop                                           ; $7c04: $00
    inc b                                         ; $7c05: $04
    ld [$0804], sp                                ; $7c06: $08 $04 $08
    ld [bc], a                                    ; $7c09: $02
    inc c                                         ; $7c0a: $0c
    ld [bc], a                                    ; $7c0b: $02
    inc c                                         ; $7c0c: $0c
    ld [bc], a                                    ; $7c0d: $02
    inc c                                         ; $7c0e: $0c
    ld [bc], a                                    ; $7c0f: $02
    inc c                                         ; $7c10: $0c
    ld [bc], a                                    ; $7c11: $02
    inc c                                         ; $7c12: $0c
    ld [bc], a                                    ; $7c13: $02
    inc c                                         ; $7c14: $0c
    ld [bc], a                                    ; $7c15: $02
    inc c                                         ; $7c16: $0c
    ld bc, $010e                                  ; $7c17: $01 $0e $01
    ld c, $01                                     ; $7c1a: $0e $01
    ld c, $01                                     ; $7c1c: $0e $01
    ld c, $01                                     ; $7c1e: $0e $01
    ld c, $99                                     ; $7c20: $0e $99
    ld h, c                                       ; $7c22: $61
    sbc [hl]                                      ; $7c23: $9e
    ld a, a                                       ; $7c24: $7f
    nop                                           ; $7c25: $00
    ld a, a                                       ; $7c26: $7f
    nop                                           ; $7c27: $00
    ld a, a                                       ; $7c28: $7f
    nop                                           ; $7c29: $00
    ld a, a                                       ; $7c2a: $7f
    nop                                           ; $7c2b: $00
    ld a, a                                       ; $7c2c: $7f
    nop                                           ; $7c2d: $00
    ld a, a                                       ; $7c2e: $7f
    nop                                           ; $7c2f: $00
    ld a, a                                       ; $7c30: $7f
    nop                                           ; $7c31: $00
    rst $38                                       ; $7c32: $ff
    nop                                           ; $7c33: $00
    rst $38                                       ; $7c34: $ff
    nop                                           ; $7c35: $00
    rst $38                                       ; $7c36: $ff
    nop                                           ; $7c37: $00
    rst $38                                       ; $7c38: $ff
    nop                                           ; $7c39: $00
    inc bc                                        ; $7c3a: $03
    add hl, bc                                    ; $7c3b: $09
    nop                                           ; $7c3c: $00
    sub a                                         ; $7c3d: $97
    cp $00                                        ; $7c3e: $fe $00
    rst $38                                       ; $7c40: $ff
    nop                                           ; $7c41: $00
    rst $38                                       ; $7c42: $ff
    nop                                           ; $7c43: $00
    rst $38                                       ; $7c44: $ff
    nop                                           ; $7c45: $00
    rst $38                                       ; $7c46: $ff
    nop                                           ; $7c47: $00
    rst $38                                       ; $7c48: $ff
    nop                                           ; $7c49: $00
    rst $38                                       ; $7c4a: $ff
    nop                                           ; $7c4b: $00
    rst $38                                       ; $7c4c: $ff
    nop                                           ; $7c4d: $00
    rst $38                                       ; $7c4e: $ff
    nop                                           ; $7c4f: $00
    rst $38                                       ; $7c50: $ff
    nop                                           ; $7c51: $00
    rst $38                                       ; $7c52: $ff
    nop                                           ; $7c53: $00
    ld hl, sp+$0b                                 ; $7c54: $f8 $0b
    nop                                           ; $7c56: $00
    sub e                                         ; $7c57: $93
    ldh [rP1], a                                  ; $7c58: $e0 $00
    cp $01                                        ; $7c5a: $fe $01
    db $fc                                        ; $7c5c: $fc
    inc bc                                        ; $7c5d: $03
    ld sp, hl                                     ; $7c5e: $f9
    ld b, $ea                                     ; $7c5f: $06 $ea
    dec d                                         ; $7c61: $15
    cp $01                                        ; $7c62: $fe $01
    db $fd                                        ; $7c64: $fd
    ld [bc], a                                    ; $7c65: $02
    rst $38                                       ; $7c66: $ff
    nop                                           ; $7c67: $00
    rst $38                                       ; $7c68: $ff
    nop                                           ; $7c69: $00
    ldh a, [rIF]                                  ; $7c6a: $f0 $0f
    nop                                           ; $7c6c: $00
    adc c                                         ; $7c6d: $89
    ld bc, $0106                                  ; $7c6e: $01 $06 $01
    ld b, $05                                     ; $7c71: $06 $05
    ld [bc], a                                    ; $7c73: $02
    dec b                                         ; $7c74: $05
    ld [bc], a                                    ; $7c75: $02
    dec b                                         ; $7c76: $05
    ld [bc], a                                    ; $7c77: $02
    ld [bc], a                                    ; $7c78: $02
    add h                                         ; $7c79: $84
    inc b                                         ; $7c7a: $04
    ld b, $00                                     ; $7c7b: $06 $00
    ld b, $0d                                     ; $7c7d: $06 $0d
    nop                                           ; $7c7f: $00
    rst $38                                       ; $7c80: $ff
    dec d                                         ; $7c81: $15
    ld [$10f1], sp                                ; $7c82: $08 $f1 $10
    ld a, [c]                                     ; $7c85: $f2
    ld de, $1ec8                                  ; $7c86: $11 $c8 $1e
    ret z                                         ; $7c89: $c8

    inc h                                         ; $7c8a: $24
    swap b                                        ; $7c8b: $cb $30
    call z, $d935                                 ; $7c8d: $cc $35 $d9
    ld [hl+], a                                   ; $7c90: $22
    jp c, $dc27                                   ; $7c91: $da $27 $dc

    ld [hl-], a                                   ; $7c94: $32
    call c, $9b38                                 ; $7c95: $dc $38 $9b
    inc bc                                        ; $7c98: $03
    nop                                           ; $7c99: $00
    db $fc                                        ; $7c9a: $fc
    inc bc                                        ; $7c9b: $03
    ei                                            ; $7c9c: $fb
    inc b                                         ; $7c9d: $04
    or $09                                        ; $7c9e: $f6 $09
    db $fd                                        ; $7ca0: $fd
    ld [bc], a                                    ; $7ca1: $02
    rst $38                                       ; $7ca2: $ff
    nop                                           ; $7ca3: $00
    ld a, a                                       ; $7ca4: $7f
    nop                                           ; $7ca5: $00
    ld a, a                                       ; $7ca6: $7f
    nop                                           ; $7ca7: $00

jr_0ea_7ca8:
    ld a, a                                       ; $7ca8: $7f
    nop                                           ; $7ca9: $00
    ld a, l                                       ; $7caa: $7d
    nop                                           ; $7cab: $00
    dec h                                         ; $7cac: $25
    nop                                           ; $7cad: $00
    ld [hl], $00                                  ; $7cae: $36 $00
    ld [$0800], sp                                ; $7cb0: $08 $00 $08
    dec b                                         ; $7cb3: $05
    nop                                           ; $7cb4: $00
    add c                                         ; $7cb5: $81
    inc a                                         ; $7cb6: $3c
    ld [bc], a                                    ; $7cb7: $02
    nop                                           ; $7cb8: $00
    sub h                                         ; $7cb9: $94
    ld a, $06                                     ; $7cba: $3e $06
    jr c, jr_0ea_7cd6                             ; $7cbc: $38 $18

    ld h, $30                                     ; $7cbe: $26 $30
    inc c                                         ; $7cc0: $0c
    inc l                                         ; $7cc1: $2c
    db $10                                        ; $7cc2: $10
    inc a                                         ; $7cc3: $3c
    ld [bc], a                                    ; $7cc4: $02
    inc sp                                        ; $7cc5: $33
    inc b                                         ; $7cc6: $04
    jr c, jr_0ea_7cc9                             ; $7cc7: $38 $00

jr_0ea_7cc9:
    jr c, jr_0ea_7ccd                             ; $7cc9: $38 $02

    ld a, [bc]                                    ; $7ccb: $0a
    nop                                           ; $7ccc: $00

jr_0ea_7ccd:
    inc l                                         ; $7ccd: $2c
    add hl, bc                                    ; $7cce: $09
    nop                                           ; $7ccf: $00
    sub a                                         ; $7cd0: $97
    ld a, h                                       ; $7cd1: $7c
    nop                                           ; $7cd2: $00
    inc bc                                        ; $7cd3: $03
    ld a, h                                       ; $7cd4: $7c
    nop                                           ; $7cd5: $00

jr_0ea_7cd6:
    rst $38                                       ; $7cd6: $ff
    jr nc, jr_0ea_7ca8                            ; $7cd7: $30 $cf

    jr nz, jr_0ea_7cfa                            ; $7cd9: $20 $1f

    adc h                                         ; $7cdb: $8c
    inc sp                                        ; $7cdc: $33
    jr jr_0ea_7d46                                ; $7cdd: $18 $67

    jr z, jr_0ea_7ce8                             ; $7cdf: $28 $07

    ld [hl-], a                                   ; $7ce1: $32
    dec c                                         ; $7ce2: $0d
    ld b, h                                       ; $7ce3: $44
    dec bc                                        ; $7ce4: $0b
    nop                                           ; $7ce5: $00
    ld [hl-], a                                   ; $7ce6: $32
    inc b                                         ; $7ce7: $04

jr_0ea_7ce8:
    add hl, bc                                    ; $7ce8: $09
    nop                                           ; $7ce9: $00
    sub [hl]                                      ; $7cea: $96
    ld e, $00                                     ; $7ceb: $1e $00
    ld [bc], a                                    ; $7ced: $02
    inc e                                         ; $7cee: $1c
    ld [bc], a                                    ; $7cef: $02
    inc e                                         ; $7cf0: $1c
    ld bc, $011e                                  ; $7cf1: $01 $1e $01
    ld e, $01                                     ; $7cf4: $1e $01
    ld e, $01                                     ; $7cf6: $1e $01
    ld e, $01                                     ; $7cf8: $1e $01

jr_0ea_7cfa:
    ld e, $11                                     ; $7cfa: $1e $11
    ld c, $01                                     ; $7cfc: $0e $01
    ld e, $00                                     ; $7cfe: $1e $00
    ld d, $0a                                     ; $7d00: $16 $0a
    nop                                           ; $7d02: $00
    sbc e                                         ; $7d03: $9b
    ld c, b                                       ; $7d04: $48
    nop                                           ; $7d05: $00
    dec l                                         ; $7d06: $2d
    nop                                           ; $7d07: $00
    ld [hl], d                                    ; $7d08: $72
    nop                                           ; $7d09: $00
    ld a, [hl]                                    ; $7d0a: $7e
    nop                                           ; $7d0b: $00
    ld a, a                                       ; $7d0c: $7f
    nop                                           ; $7d0d: $00
    ld a, a                                       ; $7d0e: $7f
    nop                                           ; $7d0f: $00
    ld a, a                                       ; $7d10: $7f
    nop                                           ; $7d11: $00
    ld a, a                                       ; $7d12: $7f
    nop                                           ; $7d13: $00
    ld a, a                                       ; $7d14: $7f
    nop                                           ; $7d15: $00
    rst $38                                       ; $7d16: $ff
    nop                                           ; $7d17: $00
    rst $38                                       ; $7d18: $ff
    nop                                           ; $7d19: $00
    rst $38                                       ; $7d1a: $ff
    nop                                           ; $7d1b: $00
    rst $38                                       ; $7d1c: $ff
    nop                                           ; $7d1d: $00
    inc bc                                        ; $7d1e: $03
    dec b                                         ; $7d1f: $05
    nop                                           ; $7d20: $00
    add c                                         ; $7d21: $81
    ld [$0003], sp                                ; $7d22: $08 $03 $00
    sub l                                         ; $7d25: $95
    ld [$0c00], sp                                ; $7d26: $08 $00 $0c
    nop                                           ; $7d29: $00
    jr jr_0ea_7d2c                                ; $7d2a: $18 $00

jr_0ea_7d2c:
    inc d                                         ; $7d2c: $14
    nop                                           ; $7d2d: $00
    ld d, $00                                     ; $7d2e: $16 $00
    ld e, $00                                     ; $7d30: $1e $00
    inc e                                         ; $7d32: $1c
    nop                                           ; $7d33: $00
    inc e                                         ; $7d34: $1c
    nop                                           ; $7d35: $00
    ld e, $00                                     ; $7d36: $1e $00
    rra                                           ; $7d38: $1f
    nop                                           ; $7d39: $00
    ld e, $07                                     ; $7d3a: $1e $07
    nop                                           ; $7d3c: $00
    sbc c                                         ; $7d3d: $99
    ld de, $0100                                  ; $7d3e: $11 $00 $01
    inc c                                         ; $7d41: $0c
    adc [hl]                                      ; $7d42: $8e
    db $10                                        ; $7d43: $10
    ld d, h                                       ; $7d44: $54
    ld [bc], a                                    ; $7d45: $02

jr_0ea_7d46:
    ld h, a                                       ; $7d46: $67
    nop                                           ; $7d47: $00
    cp a                                          ; $7d48: $bf
    nop                                           ; $7d49: $00
    ld e, a                                       ; $7d4a: $5f
    nop                                           ; $7d4b: $00
    ld a, l                                       ; $7d4c: $7d
    ld [bc], a                                    ; $7d4d: $02
    ccf                                           ; $7d4e: $3f
    nop                                           ; $7d4f: $00
    cp a                                          ; $7d50: $bf
    nop                                           ; $7d51: $00
    rst $38                                       ; $7d52: $ff
    nop                                           ; $7d53: $00
    ld a, a                                       ; $7d54: $7f
    nop                                           ; $7d55: $00
    ld a, [hl]                                    ; $7d56: $7e
    ld [$9600], sp                                ; $7d57: $08 $00 $96
    inc d                                         ; $7d5a: $14
    ld bc, $113e                                  ; $7d5b: $01 $3e $11
    ld c, $21                                     ; $7d5e: $0e $21
    ld e, $31                                     ; $7d60: $1e $31
    ld c, $21                                     ; $7d62: $0e $21
    ld e, $0d                                     ; $7d64: $1e $0d
    ld [hl-], a                                   ; $7d66: $32
    dec d                                         ; $7d67: $15
    ld a, [hl+]                                   ; $7d68: $2a
    dec [hl]                                      ; $7d69: $35
    ld a, [bc]                                    ; $7d6a: $0a
    ld a, [hl+]                                   ; $7d6b: $2a
    inc d                                         ; $7d6c: $14
    ld a, $00                                     ; $7d6d: $3e $00
    ld a, $09                                     ; $7d6f: $3e $09
    nop                                           ; $7d71: $00
    rst $38                                       ; $7d72: $ff
    dec c                                         ; $7d73: $0d
    inc b                                         ; $7d74: $04
    pop af                                        ; $7d75: $f1
    db $10                                        ; $7d76: $10
    ld a, [c]                                     ; $7d77: $f2
    ld de, $1ac6                                  ; $7d78: $11 $c6 $1a
    push de                                       ; $7d7b: $d5
    add hl, hl                                    ; $7d7c: $29
    rst $00                                       ; $7d7d: $c7
    ld a, [hl-]                                   ; $7d7e: $3a
    pop hl                                        ; $7d7f: $e1
    add hl, sp                                    ; $7d80: $39
    sub e                                         ; $7d81: $93
    ld c, $00                                     ; $7d82: $0e $00
    ldh a, [rIF]                                  ; $7d84: $f0 $0f
    sub $29                                       ; $7d86: $d6 $29
    db $fc                                        ; $7d88: $fc
    ld [bc], a                                    ; $7d89: $02
    ld a, [$7d04]                                 ; $7d8a: $fa $04 $7d
    nop                                           ; $7d8d: $00
    ld a, [hl]                                    ; $7d8e: $7e
    nop                                           ; $7d8f: $00
    ld a, [hl]                                    ; $7d90: $7e
    ld bc, $0052                                  ; $7d91: $01 $52 $00
    jr nz, jr_0ea_7da3                            ; $7d94: $20 $0d

    nop                                           ; $7d96: $00
    adc e                                         ; $7d97: $8b
    dec c                                         ; $7d98: $0d
    nop                                           ; $7d99: $00
    rrca                                          ; $7d9a: $0f
    nop                                           ; $7d9b: $00
    ld c, $00                                     ; $7d9c: $0e $00
    rrca                                          ; $7d9e: $0f
    nop                                           ; $7d9f: $00
    rra                                           ; $7da0: $1f
    nop                                           ; $7da1: $00
    inc bc                                        ; $7da2: $03

jr_0ea_7da3:
    dec d                                         ; $7da3: $15
    nop                                           ; $7da4: $00
    adc [hl]                                      ; $7da5: $8e
    ld [hl], b                                    ; $7da6: $70
    nop                                           ; $7da7: $00
    ld [bc], a                                    ; $7da8: $02
    db $fc                                        ; $7da9: $fc
    ld b, c                                       ; $7daa: $41
    ld a, $b1                                     ; $7dab: $3e $b1
    ld c, [hl]                                    ; $7dad: $4e
    ld h, c                                       ; $7dae: $61
    ld e, $11                                     ; $7daf: $1e $11
    ld l, $01                                     ; $7db1: $2e $01
    ld b, [hl]                                    ; $7db3: $46
    ld [de], a                                    ; $7db4: $12
    nop                                           ; $7db5: $00
    sub c                                         ; $7db6: $91
    jr z, jr_0ea_7dbf                             ; $7db7: $28 $06

    dec d                                         ; $7db9: $15
    ld [hl+], a                                   ; $7dba: $22
    ld [hl], c                                    ; $7dbb: $71
    ld b, $5d                                     ; $7dbc: $06 $5d
    ld [bc], a                                    ; $7dbe: $02

jr_0ea_7dbf:
    ld a, e                                       ; $7dbf: $7b
    inc b                                         ; $7dc0: $04
    ld a, a                                       ; $7dc1: $7f
    nop                                           ; $7dc2: $00
    jr c, jr_0ea_7dcb                             ; $7dc3: $38 $06

jr_0ea_7dc5:
    ld a, [hl]                                    ; $7dc5: $7e
    nop                                           ; $7dc6: $00
    ld a, [hl]                                    ; $7dc7: $7e
    rrca                                          ; $7dc8: $0f
    nop                                           ; $7dc9: $00
    rst $38                                       ; $7dca: $ff

jr_0ea_7dcb:
    dec c                                         ; $7dcb: $0d
    inc b                                         ; $7dcc: $04
    pop af                                        ; $7dcd: $f1
    db $10                                        ; $7dce: $10
    ld a, [c]                                     ; $7dcf: $f2
    ld de, $14c6                                  ; $7dd0: $11 $c6 $14
    db $d3                                        ; $7dd3: $d3
    dec hl                                        ; $7dd4: $2b
    rst $00                                       ; $7dd5: $c7
    ld b, d                                       ; $7dd6: $42
    and $3d                                       ; $7dd7: $e6 $3d
    adc c                                         ; $7dd9: $89
    stop                                          ; $7dda: $10 $00
    stop                                          ; $7ddc: $10 $00
    jr z, jr_0ea_7df0                             ; $7dde: $28 $10

    sub $38                                       ; $7de0: $d6 $38
    jr z, jr_0ea_7de6                             ; $7de2: $28 $02

    db $10                                        ; $7de4: $10
    add d                                         ; $7de5: $82

jr_0ea_7de6:
    nop                                           ; $7de6: $00
    db $10                                        ; $7de7: $10
    inc de                                        ; $7de8: $13
    nop                                           ; $7de9: $00
    adc c                                         ; $7dea: $89
    ld [$0800], sp                                ; $7deb: $08 $00 $08
    nop                                           ; $7dee: $00
    inc d                                         ; $7def: $14

jr_0ea_7df0:
    ld [$1c6b], sp                                ; $7df0: $08 $6b $1c
    inc d                                         ; $7df3: $14
    ld [bc], a                                    ; $7df4: $02
    ld [$0082], sp                                ; $7df5: $08 $82 $00
    ld [$0013], sp                                ; $7df8: $08 $13 $00
    adc c                                         ; $7dfb: $89
    ld [$0800], sp                                ; $7dfc: $08 $00 $08
    nop                                           ; $7dff: $00
    inc d                                         ; $7e00: $14
    ld [$1c6b], sp                                ; $7e01: $08 $6b $1c
    inc d                                         ; $7e04: $14
    ld [bc], a                                    ; $7e05: $02
    ld [$0082], sp                                ; $7e06: $08 $82 $00
    ld [$0015], sp                                ; $7e09: $08 $15 $00
    adc c                                         ; $7e0c: $89
    ld [$0800], sp                                ; $7e0d: $08 $00 $08
    nop                                           ; $7e10: $00
    inc d                                         ; $7e11: $14
    ld [$1c6b], sp                                ; $7e12: $08 $6b $1c
    inc d                                         ; $7e15: $14
    ld [bc], a                                    ; $7e16: $02
    ld [$0082], sp                                ; $7e17: $08 $82 $00

jr_0ea_7e1a:
    ld [$0011], sp                                ; $7e1a: $08 $11 $00
    rst $38                                       ; $7e1d: $ff
    inc de                                        ; $7e1e: $13
    rlca                                          ; $7e1f: $07
    pop af                                        ; $7e20: $f1
    db $10                                        ; $7e21: $10
    ld a, [c]                                     ; $7e22: $f2
    ld de, $14cb                                  ; $7e23: $11 $cb $14
    ret                                           ; $7e26: $c9


    ld e, $d8                                     ; $7e27: $1e $d8
    ld a, [hl+]                                   ; $7e29: $2a
    bit 0, d                                      ; $7e2a: $cb $42
    db $e3                                        ; $7e2c: $e3
    inc e                                         ; $7e2d: $1c
    db $db                                        ; $7e2e: $db
    jr c, jr_0ea_7e1a                             ; $7e2f: $38 $e9

    dec a                                         ; $7e31: $3d
    add e                                         ; $7e32: $83
    adc b                                         ; $7e33: $88
    nop                                           ; $7e34: $00
    ld d, b                                       ; $7e35: $50
    ld [bc], a                                    ; $7e36: $02
    jr nz, @-$7a                                  ; $7e37: $20 $84

    ld [hl], b                                    ; $7e39: $70
    ld d, b                                       ; $7e3a: $50
    jr nz, jr_0ea_7dc5                            ; $7e3b: $20 $88

    rla                                           ; $7e3d: $17
    nop                                           ; $7e3e: $00
    add c                                         ; $7e3f: $81
    inc bc                                        ; $7e40: $03
    rra                                           ; $7e41: $1f
    nop                                           ; $7e42: $00
    add e                                         ; $7e43: $83
    ld de, $0a00                                  ; $7e44: $11 $00 $0a
    ld [bc], a                                    ; $7e47: $02
    inc b                                         ; $7e48: $04
    add h                                         ; $7e49: $84
    ld c, $0a                                     ; $7e4a: $0e $0a
    inc b                                         ; $7e4c: $04
    ld de, $0017                                  ; $7e4d: $11 $17 $00
    add e                                         ; $7e50: $83
    ld de, $0a00                                  ; $7e51: $11 $00 $0a
    ld [bc], a                                    ; $7e54: $02
    inc b                                         ; $7e55: $04
    add h                                         ; $7e56: $84
    ld c, $0a                                     ; $7e57: $0e $0a
    inc b                                         ; $7e59: $04
    ld de, $0017                                  ; $7e5a: $11 $17 $00
    add e                                         ; $7e5d: $83
    ld bc, $0100                                  ; $7e5e: $01 $00 $01
    dec e                                         ; $7e61: $1d
    nop                                           ; $7e62: $00
    add e                                         ; $7e63: $83
    ld bc, $0100                                  ; $7e64: $01 $00 $01
    ld hl, $8300                                  ; $7e67: $21 $00 $83
    ld de, $0a00                                  ; $7e6a: $11 $00 $0a
    ld [bc], a                                    ; $7e6d: $02
    inc b                                         ; $7e6e: $04
    add h                                         ; $7e6f: $84
    ld c, $0a                                     ; $7e70: $0e $0a
    inc b                                         ; $7e72: $04
    ld de, $0013                                  ; $7e73: $11 $13 $00
    rst $38                                       ; $7e76: $ff
    inc de                                        ; $7e77: $13
    rlca                                          ; $7e78: $07
    pop af                                        ; $7e79: $f1
    db $10                                        ; $7e7a: $10
    ld a, [c]                                     ; $7e7b: $f2
    ld de, $11cd                                  ; $7e7c: $11 $cd $11

jr_0ea_7e7f:
    call z, $da1b                                 ; $7e7f: $cc $1b $da
    dec hl                                        ; $7e82: $2b
    adc $43                                       ; $7e83: $ce $43
    rst $20                                       ; $7e85: $e7
    inc e                                         ; $7e86: $1c

jr_0ea_7e87:
    rst $18                                       ; $7e87: $df
    dec sp                                        ; $7e88: $3b
    db $ec                                        ; $7e89: $ec
    ld a, $89                                     ; $7e8a: $3e $89
    stop                                          ; $7e8c: $10 $00
    stop                                          ; $7e8e: $10 $00
    jr z, jr_0ea_7ea2                             ; $7e90: $28 $10

    sub $38                                       ; $7e92: $d6 $38
    jr z, jr_0ea_7e98                             ; $7e94: $28 $02

    db $10                                        ; $7e96: $10
    add d                                         ; $7e97: $82

jr_0ea_7e98:
    nop                                           ; $7e98: $00
    db $10                                        ; $7e99: $10
    inc d                                         ; $7e9a: $14
    nop                                           ; $7e9b: $00
    add e                                         ; $7e9c: $83
    ld bc, $0100                                  ; $7e9d: $01 $00 $01
    inc e                                         ; $7ea0: $1c
    nop                                           ; $7ea1: $00

jr_0ea_7ea2:
    adc c                                         ; $7ea2: $89
    ld [$0800], sp                                ; $7ea3: $08 $00 $08
    nop                                           ; $7ea6: $00
    inc d                                         ; $7ea7: $14
    ld [$1c6b], sp                                ; $7ea8: $08 $6b $1c
    inc d                                         ; $7eab: $14
    ld [bc], a                                    ; $7eac: $02
    ld [$0082], sp                                ; $7ead: $08 $82 $00
    ld [$0013], sp                                ; $7eb0: $08 $13 $00
    adc c                                         ; $7eb3: $89
    ld [$0800], sp                                ; $7eb4: $08 $00 $08
    nop                                           ; $7eb7: $00
    inc d                                         ; $7eb8: $14
    ld [$1c6b], sp                                ; $7eb9: $08 $6b $1c
    inc d                                         ; $7ebc: $14
    ld [bc], a                                    ; $7ebd: $02
    ld [$0082], sp                                ; $7ebe: $08 $82 $00
    ld [$0014], sp                                ; $7ec1: $08 $14 $00
    add c                                         ; $7ec4: $81
    inc bc                                        ; $7ec5: $03
    rra                                           ; $7ec6: $1f
    nop                                           ; $7ec7: $00
    add c                                         ; $7ec8: $81
    inc bc                                        ; $7ec9: $03
    inc e                                         ; $7eca: $1c
    nop                                           ; $7ecb: $00
    add c                                         ; $7ecc: $81
    ld bc, $0007                                  ; $7ecd: $01 $07 $00
    add a                                         ; $7ed0: $87
    ld [$1400], sp                                ; $7ed1: $08 $00 $14
    ld [$1c6b], sp                                ; $7ed4: $08 $6b $1c
    inc d                                         ; $7ed7: $14
    ld [bc], a                                    ; $7ed8: $02
    ld [$0082], sp                                ; $7ed9: $08 $82 $00
    ld [$000f], sp                                ; $7edc: $08 $0f $00
    rst $38                                       ; $7edf: $ff
    inc de                                        ; $7ee0: $13
    rlca                                          ; $7ee1: $07
    pop af                                        ; $7ee2: $f1
    db $10                                        ; $7ee3: $10
    ld a, [c]                                     ; $7ee4: $f2
    ld de, $10d0                                  ; $7ee5: $11 $d0 $10
    rst $08                                       ; $7ee8: $cf
    ld a, [de]                                    ; $7ee9: $1a
    db $d3                                        ; $7eea: $d3
    ld b, d                                       ; $7eeb: $42
    db $eb                                        ; $7eec: $eb
    ld a, [de]                                    ; $7eed: $1a
    pop hl                                        ; $7eee: $e1
    ld a, [hl+]                                   ; $7eef: $2a
    db $e3                                        ; $7ef0: $e3
    inc a                                         ; $7ef1: $3c
    rst $28                                       ; $7ef2: $ef
    dec a                                         ; $7ef3: $3d
    add e                                         ; $7ef4: $83
    adc b                                         ; $7ef5: $88
    nop                                           ; $7ef6: $00
    ld d, b                                       ; $7ef7: $50
    ld [bc], a                                    ; $7ef8: $02
    jr nz, jr_0ea_7e7f                            ; $7ef9: $20 $84

    ld [hl], b                                    ; $7efb: $70
    ld d, b                                       ; $7efc: $50
    jr nz, jr_0ea_7e87                            ; $7efd: $20 $88

    rla                                           ; $7eff: $17
    nop                                           ; $7f00: $00
    add c                                         ; $7f01: $81
    inc bc                                        ; $7f02: $03
    rra                                           ; $7f03: $1f
    nop                                           ; $7f04: $00
    add e                                         ; $7f05: $83
    ld de, $0a00                                  ; $7f06: $11 $00 $0a
    ld [bc], a                                    ; $7f09: $02
    inc b                                         ; $7f0a: $04
    add h                                         ; $7f0b: $84
    ld c, $0a                                     ; $7f0c: $0e $0a
    inc b                                         ; $7f0e: $04
    ld de, $0015                                  ; $7f0f: $11 $15 $00
    add l                                         ; $7f12: $85
    ld b, b                                       ; $7f13: $40
    nop                                           ; $7f14: $00
    ld bc, $0100                                  ; $7f15: $01 $00 $01
    dec e                                         ; $7f18: $1d
    nop                                           ; $7f19: $00
    add e                                         ; $7f1a: $83
    ld de, $0a00                                  ; $7f1b: $11 $00 $0a
    ld [bc], a                                    ; $7f1e: $02
    inc b                                         ; $7f1f: $04
    add h                                         ; $7f20: $84
    ld c, $0a                                     ; $7f21: $0e $0a
    inc b                                         ; $7f23: $04
    ld de, $0017                                  ; $7f24: $11 $17 $00
    add c                                         ; $7f27: $81
    ld bc, $002d                                  ; $7f28: $01 $2d $00
    add e                                         ; $7f2b: $83
    ld de, $0a00                                  ; $7f2c: $11 $00 $0a
    ld [bc], a                                    ; $7f2f: $02
    inc b                                         ; $7f30: $04
    add h                                         ; $7f31: $84
    ld c, $0a                                     ; $7f32: $0e $0a
    inc b                                         ; $7f34: $04
    ld de, $0009                                  ; $7f35: $11 $09 $00
    rst $38                                       ; $7f38: $ff
    inc de                                        ; $7f39: $13
    rlca                                          ; $7f3a: $07
    pop af                                        ; $7f3b: $f1
    db $10                                        ; $7f3c: $10
    ld a, [c]                                     ; $7f3d: $f2
    ld de, $0ed5                                  ; $7f3e: $11 $d5 $0e
    pop de                                        ; $7f41: $d1
    add hl, de                                    ; $7f42: $19
    rst $10                                       ; $7f43: $d7
    ld b, h                                       ; $7f44: $44
    xor $1b                                       ; $7f45: $ee $1b
    and $2c                                       ; $7f47: $e6 $2c
    push hl                                       ; $7f49: $e5
    inc a                                         ; $7f4a: $3c
    ei                                            ; $7f4b: $fb
    ccf                                           ; $7f4c: $3f
    adc c                                         ; $7f4d: $89
    stop                                          ; $7f4e: $10 $00
    stop                                          ; $7f50: $10 $00
    jr z, @+$12                                   ; $7f52: $28 $10

    sub $38                                       ; $7f54: $d6 $38
    jr z, jr_0ea_7f5a                             ; $7f56: $28 $02

    db $10                                        ; $7f58: $10
    add d                                         ; $7f59: $82

jr_0ea_7f5a:
    nop                                           ; $7f5a: $00
    db $10                                        ; $7f5b: $10
    inc de                                        ; $7f5c: $13
    nop                                           ; $7f5d: $00
    add c                                         ; $7f5e: $81
    ld bc, $0002                                  ; $7f5f: $01 $02 $00
    add c                                         ; $7f62: $81
    ld bc, $001c                                  ; $7f63: $01 $1c $00
    adc c                                         ; $7f66: $89
    ld [$0800], sp                                ; $7f67: $08 $00 $08
    nop                                           ; $7f6a: $00
    inc d                                         ; $7f6b: $14
    ld [$1c6b], sp                                ; $7f6c: $08 $6b $1c
    inc d                                         ; $7f6f: $14
    ld [bc], a                                    ; $7f70: $02
    ld [$0082], sp                                ; $7f71: $08 $82 $00
    ld [$000f], sp                                ; $7f74: $08 $0f $00
    add c                                         ; $7f77: $81
    add b                                         ; $7f78: $80
    inc bc                                        ; $7f79: $03
    nop                                           ; $7f7a: $00
    add c                                         ; $7f7b: $81
    inc bc                                        ; $7f7c: $03
    rra                                           ; $7f7d: $1f
    nop                                           ; $7f7e: $00
    adc c                                         ; $7f7f: $89
    ld [$0800], sp                                ; $7f80: $08 $00 $08
    nop                                           ; $7f83: $00
    inc d                                         ; $7f84: $14
    ld [$1c6b], sp                                ; $7f85: $08 $6b $1c
    inc d                                         ; $7f88: $14
    ld [bc], a                                    ; $7f89: $02
    ld [$0082], sp                                ; $7f8a: $08 $82 $00
    ld [$0013], sp                                ; $7f8d: $08 $13 $00
    add c                                         ; $7f90: $81
    ld bc, $001f                                  ; $7f91: $01 $1f $00
    adc c                                         ; $7f94: $89
    ld [$0800], sp                                ; $7f95: $08 $00 $08
    nop                                           ; $7f98: $00
    inc d                                         ; $7f99: $14
    ld [$1c6b], sp                                ; $7f9a: $08 $6b $1c
    inc d                                         ; $7f9d: $14
    ld [bc], a                                    ; $7f9e: $02
    ld [$0082], sp                                ; $7f9f: $08 $82 $00
    ld [$0013], sp                                ; $7fa2: $08 $13 $00
    rst $38                                       ; $7fa5: $ff

    db $09, $02, $fa, $07, $fd, $04, $fc, $fa, $fc, $00, $8e, $2f, $0d, $72, $0f, $60
    db $5f, $80, $ff, $91, $fe, $d7, $fc, $fd, $fe, $02, $ff, $02, $6f, $02, $03, $0e
    db $00, $02, $30, $8a, $0e, $3e, $01, $3f, $03, $3d, $2a, $1e, $0f, $3f, $02, $3e
    db $02, $3c, $02, $38, $0c, $00, $ff

    rlca                                          ; $7fdd: $07
    ld bc, $08f9                                  ; $7fde: $01 $f9 $08
    db $f4                                        ; $7fe1: $f4
    inc bc                                        ; $7fe2: $03
    ld a, [$83fa]                                 ; $7fe3: $fa $fa $83
    dec c                                         ; $7fe6: $0d
    nop                                           ; $7fe7: $00
    ld [bc], a                                    ; $7fe8: $02
    dec e                                         ; $7fe9: $1d
    nop                                           ; $7fea: $00
    rst $38                                       ; $7feb: $ff
    rlca                                          ; $7fec: $07
    ld bc, $08f9                                  ; $7fed: $01 $f9 $08
    db $f4                                        ; $7ff0: $f4
    inc bc                                        ; $7ff1: $03
    ld a, [$83fa]                                 ; $7ff2: $fa $fa $83
    dec c                                         ; $7ff5: $0d
    nop                                           ; $7ff6: $00
    ld [bc], a                                    ; $7ff7: $02
    dec e                                         ; $7ff8: $1d
    nop                                           ; $7ff9: $00
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
