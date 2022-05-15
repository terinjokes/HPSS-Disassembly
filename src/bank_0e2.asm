; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e2", ROMX[$4000], BANK[$e2]

    ld [c], a                                     ; $4000: $e2
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ei                                            ; $4003: $fb
    dec b                                         ; $4004: $05
    rst $30                                       ; $4005: $f7
    cp $eb                                        ; $4006: $fe $eb
    ld a, [$ffeb]                                 ; $4008: $fa $eb $ff
    ei                                            ; $400b: $fb
    ld a, [$fffb]                                 ; $400c: $fa $fb $ff
    ld [bc], a                                    ; $400f: $02
    dec bc                                        ; $4010: $0b
    add d                                         ; $4011: $82
    ld d, $1f                                     ; $4012: $16 $1f
    ld [bc], a                                    ; $4014: $02
    ccf                                           ; $4015: $3f
    adc [hl]                                      ; $4016: $8e
    cpl                                           ; $4017: $2f
    add hl, sp                                    ; $4018: $39
    ccf                                           ; $4019: $3f
    jr nc, jr_0e2_405b                            ; $401a: $30 $3f

    dec [hl]                                      ; $401c: $35
    ccf                                           ; $401d: $3f
    jr nz, jr_0e2_403f                            ; $401e: $20 $1f

    ld [de], a                                    ; $4020: $12
    rra                                           ; $4021: $1f
    rla                                           ; $4022: $17
    rrca                                          ; $4023: $0f
    ld [$1f02], sp                                ; $4024: $08 $02 $1f
    adc d                                         ; $4027: $8a
    ld a, [hl-]                                   ; $4028: $3a
    ccf                                           ; $4029: $3f
    ld e, l                                       ; $402a: $5d
    ld a, a                                       ; $402b: $7f
    ld e, d                                       ; $402c: $5a
    ld a, a                                       ; $402d: $7f
    sbc l                                         ; $402e: $9d
    rst $38                                       ; $402f: $ff
    cp l                                          ; $4030: $bd
    rst $38                                       ; $4031: $ff
    ld [bc], a                                    ; $4032: $02
    ld [$1802], sp                                ; $4033: $08 $02 $18
    add c                                         ; $4036: $81
    inc d                                         ; $4037: $14
    ld [bc], a                                    ; $4038: $02
    inc e                                         ; $4039: $1c
    adc e                                         ; $403a: $8b
    inc c                                         ; $403b: $0c
    inc e                                         ; $403c: $1c
    inc c                                         ; $403d: $0c
    inc e                                         ; $403e: $1c

jr_0e2_403f:
    inc c                                         ; $403f: $0c
    inc e                                         ; $4040: $1c
    inc b                                         ; $4041: $04
    jr jr_0e2_404c                                ; $4042: $18 $08

    jr jr_0e2_404e                                ; $4044: $18 $08

    ld [bc], a                                    ; $4046: $02
    db $10                                        ; $4047: $10
    ld [bc], a                                    ; $4048: $02
    db $18, $92                                   ; $4049: $18 $92
    inc d                                         ; $404b: $14

jr_0e2_404c:
    inc e                                         ; $404c: $1c
    ld a, [de]                                    ; $404d: $1a

jr_0e2_404e:
    ld e, $1a                                     ; $404e: $1e $1a
    ld e, $19                                     ; $4050: $1e $19
    rra                                           ; $4052: $1f
    dec e                                         ; $4053: $1d
    rra                                           ; $4054: $1f
    db $dd                                        ; $4055: $dd
    rst $38                                       ; $4056: $ff
    ld sp, hl                                     ; $4057: $f9
    cp a                                          ; $4058: $bf
    ld a, d                                       ; $4059: $7a
    ld e, a                                       ; $405a: $5f

jr_0e2_405b:
    halt                                          ; $405b: $76
    ld l, a                                       ; $405c: $6f
    ld [bc], a                                    ; $405d: $02
    ccf                                           ; $405e: $3f
    add d                                         ; $405f: $82
    dec d                                         ; $4060: $15
    dec e                                         ; $4061: $1d
    ld [bc], a                                    ; $4062: $02
    ld [$0012], sp                                ; $4063: $08 $12 $00
    add c                                         ; $4066: $81
    dec de                                        ; $4067: $1b
    ld [bc], a                                    ; $4068: $02
    rra                                           ; $4069: $1f
    add c                                         ; $406a: $81
    dec e                                         ; $406b: $1d
    ld [bc], a                                    ; $406c: $02
    ld a, [de]                                    ; $406d: $1a
    add h                                         ; $406e: $84
    ld c, $1e                                     ; $406f: $0e $1e
    inc c                                         ; $4071: $0c
    inc e                                         ; $4072: $1c
    ld [bc], a                                    ; $4073: $02
    jr jr_0e2_408a                                ; $4074: $18 $14

    nop                                           ; $4076: $00
    rst $38                                       ; $4077: $ff
    dec c                                         ; $4078: $0d
    inc b                                         ; $4079: $04
    ei                                            ; $407a: $fb
    dec b                                         ; $407b: $05
    rst $30                                       ; $407c: $f7
    cp $ea                                        ; $407d: $fe $ea
    ei                                            ; $407f: $fb
    db $eb                                        ; $4080: $eb
    db $fd                                        ; $4081: $fd
    ld a, [$fafb]                                 ; $4082: $fa $fb $fa
    cp $02                                        ; $4085: $fe $02
    dec de                                        ; $4087: $1b
    add e                                         ; $4088: $83
    ld a, l                                       ; $4089: $7d

jr_0e2_408a:
    ld a, a                                       ; $408a: $7f
    or a                                          ; $408b: $b7
    ld [bc], a                                    ; $408c: $02
    rst $38                                       ; $408d: $ff
    adc l                                         ; $408e: $8d
    ld a, [$f8ff]                                 ; $408f: $fa $ff $f8
    cp a                                          ; $4092: $bf
    ld a, [$785f]                                 ; $4093: $fa $5f $78
    ld a, a                                       ; $4096: $7f
    ld [hl], b                                    ; $4097: $70
    ccf                                           ; $4098: $3f
    ld sp, $181f                                  ; $4099: $31 $1f $18
    ld [bc], a                                    ; $409c: $02
    rra                                           ; $409d: $1f
    adc d                                         ; $409e: $8a
    dec a                                         ; $409f: $3d
    ccf                                           ; $40a0: $3f
    ld d, [hl]                                    ; $40a1: $56
    ld a, a                                       ; $40a2: $7f
    dec [hl]                                      ; $40a3: $35
    ccf                                           ; $40a4: $3f
    ld [hl], $3f                                  ; $40a5: $36 $3f
    ld [hl+], a                                   ; $40a7: $22
    ccf                                           ; $40a8: $3f
    ld [bc], a                                    ; $40a9: $02
    inc bc                                        ; $40aa: $03
    ld [$8202], sp                                ; $40ab: $08 $02 $82
    inc bc                                        ; $40ae: $03
    ld bc, $0206                                  ; $40af: $01 $06 $02
    inc b                                         ; $40b2: $04
    nop                                           ; $40b3: $00
    ld [$8202], sp                                ; $40b4: $08 $02 $82
    adc $fe                                       ; $40b7: $ce $fe
    ld [bc], a                                    ; $40b9: $02
    nop                                           ; $40ba: $00
    add e                                         ; $40bb: $83
    ld [hl], a                                    ; $40bc: $77
    ld a, h                                       ; $40bd: $7c
    ld a, a                                       ; $40be: $7f
    ld [bc], a                                    ; $40bf: $02
    ld a, e                                       ; $40c0: $7b
    add a                                         ; $40c1: $87
    ld a, a                                       ; $40c2: $7f
    or a                                          ; $40c3: $b7
    rst $38                                       ; $40c4: $ff
    cp a                                          ; $40c5: $bf
    rst $38                                       ; $40c6: $ff
    rst $30                                       ; $40c7: $f7
    rst $38                                       ; $40c8: $ff
    ld [bc], a                                    ; $40c9: $02
    ld a, [hl]                                    ; $40ca: $7e
    ld [de], a                                    ; $40cb: $12
    nop                                           ; $40cc: $00
    add c                                         ; $40cd: $81
    ld b, $02                                     ; $40ce: $06 $02
    ld [bc], a                                    ; $40d0: $02
    inc bc                                        ; $40d1: $03
    ld b, $82                                     ; $40d2: $06 $82
    ld bc, $0207                                  ; $40d4: $01 $07 $02
    ld b, $14                                     ; $40d7: $06 $14
    nop                                           ; $40d9: $00
    rst $38                                       ; $40da: $ff
    dec c                                         ; $40db: $0d
    inc b                                         ; $40dc: $04
    ei                                            ; $40dd: $fb
    dec b                                         ; $40de: $05
    rst $30                                       ; $40df: $f7
    cp $eb                                        ; $40e0: $fe $eb
    ei                                            ; $40e2: $fb
    db $ec                                        ; $40e3: $ec
    db $fd                                        ; $40e4: $fd
    ei                                            ; $40e5: $fb
    ei                                            ; $40e6: $fb
    ei                                            ; $40e7: $fb
    db $fd                                        ; $40e8: $fd
    ld [bc], a                                    ; $40e9: $02
    dec de                                        ; $40ea: $1b
    add e                                         ; $40eb: $83
    ld a, l                                       ; $40ec: $7d
    ld a, a                                       ; $40ed: $7f
    or a                                          ; $40ee: $b7
    ld [bc], a                                    ; $40ef: $02
    rst $38                                       ; $40f0: $ff
    sbc c                                         ; $40f1: $99
    ld a, [$f8ff]                                 ; $40f2: $fa $ff $f8
    cp a                                          ; $40f5: $bf
    ld a, [$785f]                                 ; $40f6: $fa $5f $78
    ld a, a                                       ; $40f9: $7f
    ld [hl], b                                    ; $40fa: $70
    ccf                                           ; $40fb: $3f
    ld sp, $181f                                  ; $40fc: $31 $1f $18
    ld l, a                                       ; $40ff: $6f
    ld a, a                                       ; $4100: $7f
    ld e, l                                       ; $4101: $5d
    ld a, a                                       ; $4102: $7f
    ld [hl], $3f                                  ; $4103: $36 $3f
    dec l                                         ; $4105: $2d
    ccf                                           ; $4106: $3f
    ld l, $3f                                     ; $4107: $2e $3f
    ld h, [hl]                                    ; $4109: $66
    ld a, a                                       ; $410a: $7f
    ld [bc], a                                    ; $410b: $02
    inc bc                                        ; $410c: $03
    ld [$8202], sp                                ; $410d: $08 $02 $82
    inc bc                                        ; $4110: $03
    ld bc, $0206                                  ; $4111: $01 $06 $02
    inc b                                         ; $4114: $04
    nop                                           ; $4115: $00
    ld [$8202], sp                                ; $4116: $08 $02 $82
    ld a, [hl-]                                   ; $4119: $3a
    cp $02                                        ; $411a: $fe $02
    ld b, b                                       ; $411c: $40
    adc d                                         ; $411d: $8a
    ld e, [hl]                                    ; $411e: $5e
    ld h, a                                       ; $411f: $67
    ccf                                           ; $4120: $3f
    dec sp                                        ; $4121: $3b
    ld a, [hl]                                    ; $4122: $7e
    ld a, l                                       ; $4123: $7d
    cp h                                          ; $4124: $bc
    rst $38                                       ; $4125: $ff
    ld e, a                                       ; $4126: $5f
    ld a, a                                       ; $4127: $7f
    ld [bc], a                                    ; $4128: $02
    jr c, @+$16                                   ; $4129: $38 $14

    nop                                           ; $412b: $00
    ld [bc], a                                    ; $412c: $02
    ld [bc], a                                    ; $412d: $02
    add c                                         ; $412e: $81
    ld bc, $0303                                  ; $412f: $01 $03 $03
    ld [bc], a                                    ; $4132: $02
    ld [bc], a                                    ; $4133: $02
    ld [bc], a                                    ; $4134: $02
    inc bc                                        ; $4135: $03
    inc d                                         ; $4136: $14
    nop                                           ; $4137: $00
    rst $38                                       ; $4138: $ff
    dec c                                         ; $4139: $0d
    inc b                                         ; $413a: $04
    ei                                            ; $413b: $fb
    dec b                                         ; $413c: $05
    rst $30                                       ; $413d: $f7
    cp $ea                                        ; $413e: $fe $ea
    ei                                            ; $4140: $fb
    db $eb                                        ; $4141: $eb
    db $fd                                        ; $4142: $fd
    ld a, [$fafb]                                 ; $4143: $fa $fb $fa
    rst $38                                       ; $4146: $ff
    ld [bc], a                                    ; $4147: $02
    dec de                                        ; $4148: $1b
    add e                                         ; $4149: $83
    ld a, l                                       ; $414a: $7d
    ld a, a                                       ; $414b: $7f
    or a                                          ; $414c: $b7
    ld [bc], a                                    ; $414d: $02
    rst $38                                       ; $414e: $ff
    adc l                                         ; $414f: $8d
    ld a, [$f8ff]                                 ; $4150: $fa $ff $f8
    cp a                                          ; $4153: $bf
    ld a, [$785f]                                 ; $4154: $fa $5f $78
    ld a, a                                       ; $4157: $7f
    ld [hl], b                                    ; $4158: $70
    ccf                                           ; $4159: $3f
    ld sp, $181f                                  ; $415a: $31 $1f $18
    ld [bc], a                                    ; $415d: $02
    rra                                           ; $415e: $1f
    adc d                                         ; $415f: $8a
    dec [hl]                                      ; $4160: $35
    ccf                                           ; $4161: $3f
    ld d, [hl]                                    ; $4162: $56
    ld a, a                                       ; $4163: $7f
    dec l                                         ; $4164: $2d
    ccf                                           ; $4165: $3f
    ld l, $3f                                     ; $4166: $2e $3f
    ld c, [hl]                                    ; $4168: $4e
    ld a, a                                       ; $4169: $7f
    ld [bc], a                                    ; $416a: $02
    inc bc                                        ; $416b: $03
    ld [$8202], sp                                ; $416c: $08 $02 $82
    inc bc                                        ; $416f: $03
    ld bc, $0206                                  ; $4170: $01 $06 $02
    inc b                                         ; $4173: $04
    nop                                           ; $4174: $00
    ld [$8202], sp                                ; $4175: $08 $02 $82
    ld a, [hl-]                                   ; $4178: $3a
    cp $02                                        ; $4179: $fe $02
    ld b, b                                       ; $417b: $40
    adc h                                         ; $417c: $8c
    cp [hl]                                       ; $417d: $be
    rst $28                                       ; $417e: $ef
    ld a, [hl]                                    ; $417f: $7e
    ld [hl], a                                    ; $4180: $77
    ld a, $3b                                     ; $4181: $3e $3b
    ld a, l                                       ; $4183: $7d
    ld a, a                                       ; $4184: $7f
    cp a                                          ; $4185: $bf
    rst $38                                       ; $4186: $ff
    ld c, a                                       ; $4187: $4f
    ld a, a                                       ; $4188: $7f
    ld [bc], a                                    ; $4189: $02
    add hl, sp                                    ; $418a: $39
    ld [de], a                                    ; $418b: $12
    nop                                           ; $418c: $00
    inc b                                         ; $418d: $04
    ld [$0481], sp                                ; $418e: $08 $81 $04
    inc bc                                        ; $4191: $03
    inc c                                         ; $4192: $0c
    add d                                         ; $4193: $82
    inc bc                                        ; $4194: $03
    rrca                                          ; $4195: $0f
    ld [bc], a                                    ; $4196: $02
    ld c, $12                                     ; $4197: $0e $12
    nop                                           ; $4199: $00
    rst $38                                       ; $419a: $ff
    dec c                                         ; $419b: $0d
    inc b                                         ; $419c: $04
    ei                                            ; $419d: $fb
    dec b                                         ; $419e: $05
    rst $30                                       ; $419f: $f7
    cp $eb                                        ; $41a0: $fe $eb
    ei                                            ; $41a2: $fb
    db $ec                                        ; $41a3: $ec
    db $fd                                        ; $41a4: $fd
    ei                                            ; $41a5: $fb
    ei                                            ; $41a6: $fb
    ei                                            ; $41a7: $fb
    db $fd                                        ; $41a8: $fd
    ld [bc], a                                    ; $41a9: $02
    dec de                                        ; $41aa: $1b
    add e                                         ; $41ab: $83
    ld a, l                                       ; $41ac: $7d
    ld a, a                                       ; $41ad: $7f
    or a                                          ; $41ae: $b7
    ld [bc], a                                    ; $41af: $02
    rst $38                                       ; $41b0: $ff
    sbc c                                         ; $41b1: $99
    ld a, [$f8ff]                                 ; $41b2: $fa $ff $f8
    cp a                                          ; $41b5: $bf
    ld a, [$785f]                                 ; $41b6: $fa $5f $78
    ld a, a                                       ; $41b9: $7f
    ld [hl], b                                    ; $41ba: $70
    ccf                                           ; $41bb: $3f
    ld sp, $181f                                  ; $41bc: $31 $1f $18
    ld l, a                                       ; $41bf: $6f
    ld a, a                                       ; $41c0: $7f
    ld e, l                                       ; $41c1: $5d
    ld a, a                                       ; $41c2: $7f
    ld [hl], $3f                                  ; $41c3: $36 $3f
    dec [hl]                                      ; $41c5: $35
    ccf                                           ; $41c6: $3f
    ld [hl], $3f                                  ; $41c7: $36 $3f
    ld [hl+], a                                   ; $41c9: $22
    ccf                                           ; $41ca: $3f
    ld [bc], a                                    ; $41cb: $02
    inc bc                                        ; $41cc: $03
    ld [$8202], sp                                ; $41cd: $08 $02 $82
    inc bc                                        ; $41d0: $03
    ld bc, $0206                                  ; $41d1: $01 $06 $02
    inc b                                         ; $41d4: $04
    nop                                           ; $41d5: $00
    ld [$8202], sp                                ; $41d6: $08 $02 $82
    sbc d                                         ; $41d9: $9a
    cp $02                                        ; $41da: $fe $02
    nop                                           ; $41dc: $00
    adc d                                         ; $41dd: $8a
    ccf                                           ; $41de: $3f
    jr c, jr_0e2_4260                             ; $41df: $38 $7f

    ld [hl], a                                    ; $41e1: $77
    ei                                            ; $41e2: $fb
    rst $38                                       ; $41e3: $ff
    cp a                                          ; $41e4: $bf
    rst $38                                       ; $41e5: $ff
    ld e, l                                       ; $41e6: $5d
    ld a, a                                       ; $41e7: $7f
    ld [bc], a                                    ; $41e8: $02
    ccf                                           ; $41e9: $3f
    inc d                                         ; $41ea: $14
    nop                                           ; $41eb: $00
    add h                                         ; $41ec: $84
    ld bc, $0103                                  ; $41ed: $01 $03 $01
    inc bc                                        ; $41f0: $03
    ld [bc], a                                    ; $41f1: $02
    ld [bc], a                                    ; $41f2: $02
    ld [bc], a                                    ; $41f3: $02
    inc bc                                        ; $41f4: $03
    ld [bc], a                                    ; $41f5: $02
    nop                                           ; $41f6: $00
    ld [bc], a                                    ; $41f7: $02
    ld [bc], a                                    ; $41f8: $02
    ld [de], a                                    ; $41f9: $12
    nop                                           ; $41fa: $00
    rst $38                                       ; $41fb: $ff
    dec c                                         ; $41fc: $0d
    inc b                                         ; $41fd: $04
    ei                                            ; $41fe: $fb
    dec b                                         ; $41ff: $05
    rst $30                                       ; $4200: $f7
    cp $ea                                        ; $4201: $fe $ea
    ld a, [$ffeb]                                 ; $4203: $fa $eb $ff
    ld a, [$fafa]                                 ; $4206: $fa $fa $fa
    rst $38                                       ; $4209: $ff
    ld [bc], a                                    ; $420a: $02
    ld bc, $1702                                  ; $420b: $01 $02 $17
    ld [bc], a                                    ; $420e: $02
    rra                                           ; $420f: $1f
    ld b, $3f                                     ; $4210: $06 $3f
    ld [bc], a                                    ; $4212: $02
    rra                                           ; $4213: $1f
    add [hl]                                      ; $4214: $86
    ccf                                           ; $4215: $3f
    cpl                                           ; $4216: $2f
    rra                                           ; $4217: $1f
    ld a, [de]                                    ; $4218: $1a
    rra                                           ; $4219: $1f
    jr jr_0e2_421e                                ; $421a: $18 $02

    rra                                           ; $421c: $1f
    adc d                                         ; $421d: $8a

jr_0e2_421e:
    jr z, jr_0e2_425f                             ; $421e: $28 $3f

    ld d, a                                       ; $4220: $57
    ld a, a                                       ; $4221: $7f
    ld e, b                                       ; $4222: $58
    ld a, a                                       ; $4223: $7f
    ld e, l                                       ; $4224: $5d
    ld a, a                                       ; $4225: $7f
    sbc a                                         ; $4226: $9f

jr_0e2_4227:
    rst $38                                       ; $4227: $ff
    ld [bc], a                                    ; $4228: $02
    db $10                                        ; $4229: $10
    ld [bc], a                                    ; $422a: $02
    jr jr_0e2_422f                                ; $422b: $18 $02

    inc e                                         ; $422d: $1c
    ld [bc], a                                    ; $422e: $02

jr_0e2_422f:
    jr jr_0e2_4233                                ; $422f: $18 $02

    inc e                                         ; $4231: $1c
    ld [bc], a                                    ; $4232: $02

jr_0e2_4233:
    jr @-$7c                                      ; $4233: $18 $82

    inc e                                         ; $4235: $1c
    inc d                                         ; $4236: $14
    ld b, $18                                     ; $4237: $06 $18
    sub b                                         ; $4239: $90
    inc d                                         ; $423a: $14
    inc e                                         ; $423b: $1c
    ld a, [bc]                                    ; $423c: $0a
    ld e, $1a                                     ; $423d: $1e $1a
    ld e, $0a                                     ; $423f: $1e $0a
    ld e, $09                                     ; $4241: $1e $09
    rra                                           ; $4243: $1f
    ld sp, hl                                     ; $4244: $f9
    rst $38                                       ; $4245: $ff
    sbc b                                         ; $4246: $98
    ld hl, sp-$41                                 ; $4247: $f8 $bf
    rst $38                                       ; $4249: $ff
    ld [bc], a                                    ; $424a: $02
    ld e, a                                       ; $424b: $5f
    ld [bc], a                                    ; $424c: $02
    ccf                                           ; $424d: $3f
    ld [bc], a                                    ; $424e: $02
    ld a, a                                       ; $424f: $7f
    add h                                         ; $4250: $84
    ld l, a                                       ; $4251: $6f
    ld a, a                                       ; $4252: $7f
    ld a, b                                       ; $4253: $78
    ld a, a                                       ; $4254: $7f
    ld [bc], a                                    ; $4255: $02
    ccf                                           ; $4256: $3f
    ld [de], a                                    ; $4257: $12
    nop                                           ; $4258: $00
    add d                                         ; $4259: $82
    dec c                                         ; $425a: $0d
    rra                                           ; $425b: $1f
    ld [bc], a                                    ; $425c: $02
    ld a, [de]                                    ; $425d: $1a
    adc b                                         ; $425e: $88

jr_0e2_425f:
    inc d                                         ; $425f: $14

jr_0e2_4260:
    inc e                                         ; $4260: $1c
    ld a, [de]                                    ; $4261: $1a
    ld e, $16                                     ; $4262: $1e $16
    ld e, $0e                                     ; $4264: $1e $0e
    ld e, $02                                     ; $4266: $1e $02
    inc e                                         ; $4268: $1c
    stop                                          ; $4269: $10 $00
    rst $38                                       ; $426b: $ff
    dec c                                         ; $426c: $0d
    inc b                                         ; $426d: $04
    ei                                            ; $426e: $fb
    dec b                                         ; $426f: $05
    rst $30                                       ; $4270: $f7
    cp $ea                                        ; $4271: $fe $ea
    ld a, [$ffeb]                                 ; $4273: $fa $eb $ff
    ld a, [$fafa]                                 ; $4276: $fa $fa $fa
    cp $02                                        ; $4279: $fe $02
    ld bc, $1702                                  ; $427b: $01 $02 $17
    ld [bc], a                                    ; $427e: $02
    rra                                           ; $427f: $1f
    ld b, $3f                                     ; $4280: $06 $3f
    ld [bc], a                                    ; $4282: $02
    rra                                           ; $4283: $1f
    add [hl]                                      ; $4284: $86
    ccf                                           ; $4285: $3f
    cpl                                           ; $4286: $2f
    rra                                           ; $4287: $1f
    ld a, [de]                                    ; $4288: $1a
    rra                                           ; $4289: $1f
    jr jr_0e2_428e                                ; $428a: $18 $02

    rra                                           ; $428c: $1f
    adc d                                         ; $428d: $8a

jr_0e2_428e:
    jr z, jr_0e2_42cf                             ; $428e: $28 $3f

    ld d, a                                       ; $4290: $57
    ld a, a                                       ; $4291: $7f
    ld e, b                                       ; $4292: $58
    ld a, a                                       ; $4293: $7f

jr_0e2_4294:
    sbc l                                         ; $4294: $9d
    rst $38                                       ; $4295: $ff
    sbc a                                         ; $4296: $9f
    rst $38                                       ; $4297: $ff
    ld [bc], a                                    ; $4298: $02
    db $10                                        ; $4299: $10
    ld [bc], a                                    ; $429a: $02
    jr jr_0e2_429f                                ; $429b: $18 $02

    inc e                                         ; $429d: $1c
    ld [bc], a                                    ; $429e: $02

jr_0e2_429f:
    jr jr_0e2_42a3                                ; $429f: $18 $02

    inc e                                         ; $42a1: $1c
    ld [bc], a                                    ; $42a2: $02

jr_0e2_42a3:
    jr jr_0e2_4227                                ; $42a3: $18 $82

    inc e                                         ; $42a5: $1c
    inc d                                         ; $42a6: $14
    ld b, $18                                     ; $42a7: $06 $18
    sub d                                         ; $42a9: $92
    ld d, $1e                                     ; $42aa: $16 $1e
    ld a, [bc]                                    ; $42ac: $0a
    ld e, $1a                                     ; $42ad: $1e $1a
    ld e, $09                                     ; $42af: $1e $09
    rra                                           ; $42b1: $1f
    add hl, bc                                    ; $42b2: $09
    rra                                           ; $42b3: $1f
    db $fd                                        ; $42b4: $fd
    rst $38                                       ; $42b5: $ff
    cp b                                          ; $42b6: $b8
    ld hl, sp-$41                                 ; $42b7: $f8 $bf
    rst $38                                       ; $42b9: $ff
    cp a                                          ; $42ba: $bf
    rst $38                                       ; $42bb: $ff
    ld [bc], a                                    ; $42bc: $02
    ld a, a                                       ; $42bd: $7f
    inc b                                         ; $42be: $04
    ccf                                           ; $42bf: $3f
    add d                                         ; $42c0: $82
    ld a, $3f                                     ; $42c1: $3e $3f
    ld [bc], a                                    ; $42c3: $02
    rrca                                          ; $42c4: $0f
    ld [de], a                                    ; $42c5: $12
    nop                                           ; $42c6: $00
    adc h                                         ; $42c7: $8c
    rlca                                          ; $42c8: $07
    rrca                                          ; $42c9: $0f
    ld a, [bc]                                    ; $42ca: $0a
    ld c, $0a                                     ; $42cb: $0e $0a
    ld c, $0d                                     ; $42cd: $0e $0d

jr_0e2_42cf:
    rrca                                          ; $42cf: $0f
    dec bc                                        ; $42d0: $0b
    rrca                                          ; $42d1: $0f
    rlca                                          ; $42d2: $07
    rrca                                          ; $42d3: $0f
    ld [bc], a                                    ; $42d4: $02
    ld c, $10                                     ; $42d5: $0e $10
    nop                                           ; $42d7: $00
    rst $38                                       ; $42d8: $ff
    dec c                                         ; $42d9: $0d
    inc b                                         ; $42da: $04
    ei                                            ; $42db: $fb
    dec b                                         ; $42dc: $05
    rst $30                                       ; $42dd: $f7
    cp $eb                                        ; $42de: $fe $eb
    ld a, [$ffec]                                 ; $42e0: $fa $ec $ff
    ei                                            ; $42e3: $fb
    ld a, [$fffb]                                 ; $42e4: $fa $fb $ff
    ld [bc], a                                    ; $42e7: $02
    ld bc, $1702                                  ; $42e8: $01 $02 $17
    ld [bc], a                                    ; $42eb: $02
    rra                                           ; $42ec: $1f
    ld b, $3f                                     ; $42ed: $06 $3f
    ld [bc], a                                    ; $42ef: $02
    rra                                           ; $42f0: $1f
    add [hl]                                      ; $42f1: $86
    ccf                                           ; $42f2: $3f
    cpl                                           ; $42f3: $2f
    rra                                           ; $42f4: $1f
    ld a, [de]                                    ; $42f5: $1a
    rra                                           ; $42f6: $1f
    jr jr_0e2_42fb                                ; $42f7: $18 $02

    rra                                           ; $42f9: $1f
    adc d                                         ; $42fa: $8a

jr_0e2_42fb:
    ld [hl], b                                    ; $42fb: $70
    ld a, a                                       ; $42fc: $7f
    ld e, b                                       ; $42fd: $58
    ld a, a                                       ; $42fe: $7f
    ld e, a                                       ; $42ff: $5f
    ld a, a                                       ; $4300: $7f
    sbc a                                         ; $4301: $9f
    rst $38                                       ; $4302: $ff
    sbc a                                         ; $4303: $9f
    rst $38                                       ; $4304: $ff
    ld [bc], a                                    ; $4305: $02
    db $10                                        ; $4306: $10
    ld [bc], a                                    ; $4307: $02
    jr jr_0e2_430c                                ; $4308: $18 $02

    inc e                                         ; $430a: $1c
    ld [bc], a                                    ; $430b: $02

jr_0e2_430c:
    jr jr_0e2_4310                                ; $430c: $18 $02

    inc e                                         ; $430e: $1c
    ld [bc], a                                    ; $430f: $02

jr_0e2_4310:
    jr jr_0e2_4294                                ; $4310: $18 $82

    inc e                                         ; $4312: $1c
    inc d                                         ; $4313: $14
    ld b, $18                                     ; $4314: $06 $18
    sub b                                         ; $4316: $90
    inc b                                         ; $4317: $04
    inc e                                         ; $4318: $1c
    ld a, [de]                                    ; $4319: $1a
    ld e, $1a                                     ; $431a: $1e $1a
    ld e, $0a                                     ; $431c: $1e $0a
    ld e, $09                                     ; $431e: $1e $09
    rra                                           ; $4320: $1f
    ld sp, hl                                     ; $4321: $f9
    rst $38                                       ; $4322: $ff
    cp b                                          ; $4323: $b8
    ld hl, sp-$41                                 ; $4324: $f8 $bf
    rst $38                                       ; $4326: $ff
    ld [bc], a                                    ; $4327: $02
    ld a, a                                       ; $4328: $7f
    add c                                         ; $4329: $81
    ld a, e                                       ; $432a: $7b
    inc bc                                        ; $432b: $03
    ld a, a                                       ; $432c: $7f
    ld [bc], a                                    ; $432d: $02
    ccf                                           ; $432e: $3f
    ld [bc], a                                    ; $432f: $02
    rrca                                          ; $4330: $0f
    inc d                                         ; $4331: $14
    nop                                           ; $4332: $00
    add l                                         ; $4333: $85
    dec c                                         ; $4334: $0d
    rra                                           ; $4335: $1f
    ld d, $1e                                     ; $4336: $16 $1e
    inc d                                         ; $4338: $14
    dec b                                         ; $4339: $05
    inc e                                         ; $433a: $1c
    ld [bc], a                                    ; $433b: $02
    jr @+$14                                      ; $433c: $18 $12

    nop                                           ; $433e: $00
    rst $38                                       ; $433f: $ff
    dec c                                         ; $4340: $0d
    inc b                                         ; $4341: $04
    ei                                            ; $4342: $fb
    dec b                                         ; $4343: $05
    rst $30                                       ; $4344: $f7
    cp $ea                                        ; $4345: $fe $ea
    ld a, [$ffeb]                                 ; $4347: $fa $eb $ff
    ld a, [$fafa]                                 ; $434a: $fa $fa $fa
    rst $38                                       ; $434d: $ff
    ld [bc], a                                    ; $434e: $02
    ld bc, $1702                                  ; $434f: $01 $02 $17
    ld [bc], a                                    ; $4352: $02
    rra                                           ; $4353: $1f
    ld b, $3f                                     ; $4354: $06 $3f
    ld [bc], a                                    ; $4356: $02
    rra                                           ; $4357: $1f
    add [hl]                                      ; $4358: $86
    ccf                                           ; $4359: $3f
    cpl                                           ; $435a: $2f
    rra                                           ; $435b: $1f
    ld a, [de]                                    ; $435c: $1a
    rra                                           ; $435d: $1f
    jr jr_0e2_4362                                ; $435e: $18 $02

    rra                                           ; $4360: $1f
    adc d                                         ; $4361: $8a

jr_0e2_4362:
    ld l, b                                       ; $4362: $68
    ld a, a                                       ; $4363: $7f
    ld d, a                                       ; $4364: $57
    ld a, a                                       ; $4365: $7f

jr_0e2_4366:
    ld e, b                                       ; $4366: $58
    ld a, a                                       ; $4367: $7f
    sbc l                                         ; $4368: $9d
    rst $38                                       ; $4369: $ff
    sbc a                                         ; $436a: $9f
    rst $38                                       ; $436b: $ff
    ld [bc], a                                    ; $436c: $02
    db $10                                        ; $436d: $10
    ld [bc], a                                    ; $436e: $02
    jr jr_0e2_4373                                ; $436f: $18 $02

    inc e                                         ; $4371: $1c
    ld [bc], a                                    ; $4372: $02

jr_0e2_4373:
    jr jr_0e2_4377                                ; $4373: $18 $02

    inc e                                         ; $4375: $1c
    ld [bc], a                                    ; $4376: $02

jr_0e2_4377:
    jr jr_0e2_42fb                                ; $4377: $18 $82

    inc e                                         ; $4379: $1c
    inc d                                         ; $437a: $14
    ld b, $18                                     ; $437b: $06 $18
    adc [hl]                                      ; $437d: $8e
    inc d                                         ; $437e: $14
    inc e                                         ; $437f: $1c
    ld a, [bc]                                    ; $4380: $0a
    ld e, $1a                                     ; $4381: $1e $1a
    ld e, $09                                     ; $4383: $1e $09
    rra                                           ; $4385: $1f
    add hl, bc                                    ; $4386: $09
    rra                                           ; $4387: $1f
    db $fd                                        ; $4388: $fd
    rst $38                                       ; $4389: $ff
    cp b                                          ; $438a: $b8
    ld hl, sp+$02                                 ; $438b: $f8 $02
    ld a, a                                       ; $438d: $7f
    ld [bc], a                                    ; $438e: $02
    ccf                                           ; $438f: $3f
    add e                                         ; $4390: $83
    dec sp                                        ; $4391: $3b
    ccf                                           ; $4392: $3f
    ld a, e                                       ; $4393: $7b
    inc bc                                        ; $4394: $03
    ld a, a                                       ; $4395: $7f
    add d                                         ; $4396: $82
    ld [hl], e                                    ; $4397: $73
    ld a, a                                       ; $4398: $7f
    ld [bc], a                                    ; $4399: $02
    ccf                                           ; $439a: $3f
    ld [de], a                                    ; $439b: $12
    nop                                           ; $439c: $00
    add [hl]                                      ; $439d: $86
    dec c                                         ; $439e: $0d
    rra                                           ; $439f: $1f
    dec e                                         ; $43a0: $1d
    rra                                           ; $43a1: $1f
    ld d, $1e                                     ; $43a2: $16 $1e
    ld b, $1c                                     ; $43a4: $06 $1c
    ld [bc], a                                    ; $43a6: $02
    db $10                                        ; $43a7: $10
    stop                                          ; $43a8: $10 $00
    rst $38                                       ; $43aa: $ff
    dec c                                         ; $43ab: $0d
    inc b                                         ; $43ac: $04
    ei                                            ; $43ad: $fb
    dec b                                         ; $43ae: $05
    rst $30                                       ; $43af: $f7
    cp $eb                                        ; $43b0: $fe $eb
    ld a, [$ffec]                                 ; $43b2: $fa $ec $ff
    ei                                            ; $43b5: $fb
    ld a, [$fffb]                                 ; $43b6: $fa $fb $ff
    ld [bc], a                                    ; $43b9: $02
    ld bc, $1702                                  ; $43ba: $01 $02 $17
    ld [bc], a                                    ; $43bd: $02
    rra                                           ; $43be: $1f
    ld b, $3f                                     ; $43bf: $06 $3f
    ld [bc], a                                    ; $43c1: $02
    rra                                           ; $43c2: $1f
    add [hl]                                      ; $43c3: $86
    ccf                                           ; $43c4: $3f
    cpl                                           ; $43c5: $2f
    rra                                           ; $43c6: $1f
    ld a, [de]                                    ; $43c7: $1a
    rra                                           ; $43c8: $1f
    jr jr_0e2_43cd                                ; $43c9: $18 $02

    rra                                           ; $43cb: $1f
    adc d                                         ; $43cc: $8a

jr_0e2_43cd:
    jr nc, jr_0e2_440e                            ; $43cd: $30 $3f

    ld e, b                                       ; $43cf: $58

jr_0e2_43d0:
    ld a, a                                       ; $43d0: $7f
    ld e, a                                       ; $43d1: $5f
    ld a, a                                       ; $43d2: $7f
    ld e, a                                       ; $43d3: $5f
    ld a, a                                       ; $43d4: $7f
    sbc a                                         ; $43d5: $9f
    rst $38                                       ; $43d6: $ff
    ld [bc], a                                    ; $43d7: $02
    db $10                                        ; $43d8: $10
    ld [bc], a                                    ; $43d9: $02
    jr jr_0e2_43de                                ; $43da: $18 $02

    inc e                                         ; $43dc: $1c
    ld [bc], a                                    ; $43dd: $02

jr_0e2_43de:
    jr jr_0e2_43e2                                ; $43de: $18 $02

    inc e                                         ; $43e0: $1c
    ld [bc], a                                    ; $43e1: $02

jr_0e2_43e2:
    jr jr_0e2_4366                                ; $43e2: $18 $82

    inc e                                         ; $43e4: $1c
    inc d                                         ; $43e5: $14
    ld b, $18                                     ; $43e6: $06 $18
    sub b                                         ; $43e8: $90

jr_0e2_43e9:
    ld b, $1e                                     ; $43e9: $06 $1e
    ld a, [de]                                    ; $43eb: $1a
    ld e, $1a                                     ; $43ec: $1e $1a
    ld e, $09                                     ; $43ee: $1e $09
    rra                                           ; $43f0: $1f
    add hl, bc                                    ; $43f1: $09
    rra                                           ; $43f2: $1f
    db $fd                                        ; $43f3: $fd
    rst $38                                       ; $43f4: $ff
    sbc b                                         ; $43f5: $98
    ld hl, sp-$41                                 ; $43f6: $f8 $bf
    rst $38                                       ; $43f8: $ff
    ld [bc], a                                    ; $43f9: $02
    ld a, a                                       ; $43fa: $7f
    ld b, $3f                                     ; $43fb: $06 $3f
    ld [bc], a                                    ; $43fd: $02
    rra                                           ; $43fe: $1f
    inc d                                         ; $43ff: $14
    nop                                           ; $4400: $00
    add l                                         ; $4401: $85
    dec c                                         ; $4402: $0d
    rra                                           ; $4403: $1f
    ld d, $1e                                     ; $4404: $16 $1e
    ld a, [de]                                    ; $4406: $1a
    inc bc                                        ; $4407: $03
    ld e, $02                                     ; $4408: $1e $02
    inc e                                         ; $440a: $1c
    ld [bc], a                                    ; $440b: $02
    db $10                                        ; $440c: $10
    ld [de], a                                    ; $440d: $12

jr_0e2_440e:
    nop                                           ; $440e: $00
    rst $38                                       ; $440f: $ff
    dec c                                         ; $4410: $0d
    inc b                                         ; $4411: $04
    ei                                            ; $4412: $fb
    dec b                                         ; $4413: $05
    rst $30                                       ; $4414: $f7
    cp $ea                                        ; $4415: $fe $ea
    ld a, [$ffeb]                                 ; $4417: $fa $eb $ff
    ld a, [$fafa]                                 ; $441a: $fa $fa $fa
    rst $38                                       ; $441d: $ff
    ld [bc], a                                    ; $441e: $02
    add hl, bc                                    ; $441f: $09
    ld [bc], a                                    ; $4420: $02
    rra                                           ; $4421: $1f
    inc b                                         ; $4422: $04
    ccf                                           ; $4423: $3f
    sbc b                                         ; $4424: $98
    ld a, a                                       ; $4425: $7f
    ld [hl], h                                    ; $4426: $74
    ccf                                           ; $4427: $3f
    jr nc, @+$21                                  ; $4428: $30 $1f

    dec d                                         ; $442a: $15
    ccf                                           ; $442b: $3f
    jr nz, @+$21                                  ; $442c: $20 $1f

    ld [de], a                                    ; $442e: $12
    rra                                           ; $442f: $1f
    dec d                                         ; $4430: $15
    rra                                           ; $4431: $1f
    ld a, [de]                                    ; $4432: $1a
    cpl                                           ; $4433: $2f
    ccf                                           ; $4434: $3f
    ld e, d                                       ; $4435: $5a
    ld a, a                                       ; $4436: $7f
    ld e, l                                       ; $4437: $5d
    ld a, a                                       ; $4438: $7f
    ld e, d                                       ; $4439: $5a
    ld a, a                                       ; $443a: $7f
    cp l                                          ; $443b: $bd
    rst $38                                       ; $443c: $ff
    ld [bc], a                                    ; $443d: $02
    inc c                                         ; $443e: $0c
    ld [bc], a                                    ; $443f: $02
    jr jr_0e2_4444                                ; $4440: $18 $02

    inc e                                         ; $4442: $1c
    ld [bc], a                                    ; $4443: $02

jr_0e2_4444:
    jr jr_0e2_43d0                                ; $4444: $18 $8a

    inc e                                         ; $4446: $1c
    inc c                                         ; $4447: $0c
    jr @+$0a                                      ; $4448: $18 $08

    inc e                                         ; $444a: $1c
    inc b                                         ; $444b: $04
    jr jr_0e2_4456                                ; $444c: $18 $08

    jr jr_0e2_4458                                ; $444e: $18 $08

    ld [bc], a                                    ; $4450: $02
    jr jr_0e2_43e9                                ; $4451: $18 $96

    inc d                                         ; $4453: $14
    inc e                                         ; $4454: $1c
    ld a, [de]                                    ; $4455: $1a

jr_0e2_4456:
    ld e, $1a                                     ; $4456: $1e $1a

jr_0e2_4458:
    ld e, $1a                                     ; $4458: $1e $1a
    ld e, $1d                                     ; $445a: $1e $1d

jr_0e2_445c:
    rra                                           ; $445c: $1f
    cp e                                          ; $445d: $bb
    rst $38                                       ; $445e: $ff
    ret c                                         ; $445f: $d8

    ld hl, sp-$06                                 ; $4460: $f8 $fa
    cp a                                          ; $4462: $bf
    ld a, d                                       ; $4463: $7a
    ld e, a                                       ; $4464: $5f
    ld a, [hl-]                                   ; $4465: $3a
    cpl                                           ; $4466: $2f
    ld [hl], a                                    ; $4467: $77
    ld a, a                                       ; $4468: $7f
    ld [bc], a                                    ; $4469: $02
    ccf                                           ; $446a: $3f
    add c                                         ; $446b: $81
    dec d                                         ; $446c: $15
    inc bc                                        ; $446d: $03
    dec e                                         ; $446e: $1d
    ld [de], a                                    ; $446f: $12
    nop                                           ; $4470: $00
    add d                                         ; $4471: $82
    rra                                           ; $4472: $1f
    dec e                                         ; $4473: $1d
    ld [bc], a                                    ; $4474: $02
    ld a, [de]                                    ; $4475: $1a
    ld [bc], a                                    ; $4476: $02
    inc e                                         ; $4477: $1c
    add d                                         ; $4478: $82
    ld a, [bc]                                    ; $4479: $0a
    ld e, $02                                     ; $447a: $1e $02
    inc e                                         ; $447c: $1c
    add c                                         ; $447d: $81
    ld [$1803], sp                                ; $447e: $08 $03 $18
    stop                                          ; $4481: $10 $00
    rst $38                                       ; $4483: $ff
    dec c                                         ; $4484: $0d
    inc b                                         ; $4485: $04
    ei                                            ; $4486: $fb
    dec b                                         ; $4487: $05
    rst $30                                       ; $4488: $f7
    cp $ea                                        ; $4489: $fe $ea
    ld a, [$ffeb]                                 ; $448b: $fa $eb $ff
    ld a, [$fafa]                                 ; $448e: $fa $fa $fa
    cp $02                                        ; $4491: $fe $02
    add hl, bc                                    ; $4493: $09
    ld [bc], a                                    ; $4494: $02
    rra                                           ; $4495: $1f
    inc b                                         ; $4496: $04
    ccf                                           ; $4497: $3f
    adc [hl]                                      ; $4498: $8e
    ld a, a                                       ; $4499: $7f
    ld [hl], h                                    ; $449a: $74
    ccf                                           ; $449b: $3f
    jr nc, jr_0e2_44bd                            ; $449c: $30 $1f

    dec d                                         ; $449e: $15
    ccf                                           ; $449f: $3f
    jr nz, jr_0e2_44c1                            ; $44a0: $20 $1f

    ld [de], a                                    ; $44a2: $12
    rra                                           ; $44a3: $1f
    dec d                                         ; $44a4: $15
    rra                                           ; $44a5: $1f
    ld a, [de]                                    ; $44a6: $1a
    ld [bc], a                                    ; $44a7: $02
    ccf                                           ; $44a8: $3f
    adc b                                         ; $44a9: $88
    ld e, d                                       ; $44aa: $5a
    ld a, a                                       ; $44ab: $7f
    ld e, l                                       ; $44ac: $5d
    ld a, a                                       ; $44ad: $7f
    ld a, d                                       ; $44ae: $7a
    ld a, a                                       ; $44af: $7f
    sbc l                                         ; $44b0: $9d
    rst $38                                       ; $44b1: $ff
    ld [bc], a                                    ; $44b2: $02
    inc c                                         ; $44b3: $0c
    ld [bc], a                                    ; $44b4: $02
    jr jr_0e2_44b9                                ; $44b5: $18 $02

    inc e                                         ; $44b7: $1c
    ld [bc], a                                    ; $44b8: $02

jr_0e2_44b9:
    jr @-$74                                      ; $44b9: $18 $8a

    inc e                                         ; $44bb: $1c
    inc c                                         ; $44bc: $0c

jr_0e2_44bd:
    jr @+$0a                                      ; $44bd: $18 $08

    inc e                                         ; $44bf: $1c
    inc b                                         ; $44c0: $04

jr_0e2_44c1:
    jr jr_0e2_44cb                                ; $44c1: $18 $08

    jr jr_0e2_44cd                                ; $44c3: $18 $08

    ld [bc], a                                    ; $44c5: $02
    jr jr_0e2_445c                                ; $44c6: $18 $94

    inc d                                         ; $44c8: $14
    inc e                                         ; $44c9: $1c
    ld a, [de]                                    ; $44ca: $1a

jr_0e2_44cb:
    ld e, $1a                                     ; $44cb: $1e $1a

jr_0e2_44cd:
    ld e, $1d                                     ; $44cd: $1e $1d
    rra                                           ; $44cf: $1f
    add hl, de                                    ; $44d0: $19
    rra                                           ; $44d1: $1f
    ccf                                           ; $44d2: $3f
    db $fd                                        ; $44d3: $fd
    cp b                                          ; $44d4: $b8
    ret c                                         ; $44d5: $d8

    ld a, [$76c7]                                 ; $44d6: $fa $c7 $76
    ld a, a                                       ; $44d9: $7f
    scf                                           ; $44da: $37
    ccf                                           ; $44db: $3f
    ld [bc], a                                    ; $44dc: $02
    ld a, a                                       ; $44dd: $7f
    ld [bc], a                                    ; $44de: $02
    ccf                                           ; $44df: $3f
    ld [bc], a                                    ; $44e0: $02
    dec de                                        ; $44e1: $1b
    ld [bc], a                                    ; $44e2: $02
    ld bc, $0012                                  ; $44e3: $01 $12 $00
    ld [bc], a                                    ; $44e6: $02
    dec c                                         ; $44e7: $0d
    ld [bc], a                                    ; $44e8: $02
    inc c                                         ; $44e9: $0c
    add d                                         ; $44ea: $82
    inc b                                         ; $44eb: $04
    inc c                                         ; $44ec: $0c
    ld [bc], a                                    ; $44ed: $02
    ld c, $82                                     ; $44ee: $0e $82
    ld b, $0e                                     ; $44f0: $06 $0e
    ld [bc], a                                    ; $44f2: $02
    inc c                                         ; $44f3: $0c
    ld [bc], a                                    ; $44f4: $02
    ld [$0010], sp                                ; $44f5: $08 $10 $00
    rst $38                                       ; $44f8: $ff
    dec c                                         ; $44f9: $0d
    inc b                                         ; $44fa: $04
    ei                                            ; $44fb: $fb
    dec b                                         ; $44fc: $05
    rst $30                                       ; $44fd: $f7
    cp $eb                                        ; $44fe: $fe $eb
    ld a, [$ffec]                                 ; $4500: $fa $ec $ff
    ei                                            ; $4503: $fb
    ld a, [$fffb]                                 ; $4504: $fa $fb $ff
    ld [bc], a                                    ; $4507: $02
    add hl, bc                                    ; $4508: $09
    ld [bc], a                                    ; $4509: $02
    rra                                           ; $450a: $1f
    inc b                                         ; $450b: $04
    ccf                                           ; $450c: $3f
    sbc b                                         ; $450d: $98
    ld a, a                                       ; $450e: $7f
    ld [hl], h                                    ; $450f: $74
    ccf                                           ; $4510: $3f
    jr nc, @+$21                                  ; $4511: $30 $1f

    dec d                                         ; $4513: $15
    ccf                                           ; $4514: $3f
    jr nz, @+$21                                  ; $4515: $20 $1f

    ld [de], a                                    ; $4517: $12
    rra                                           ; $4518: $1f
    dec d                                         ; $4519: $15
    rra                                           ; $451a: $1f
    ld a, [de]                                    ; $451b: $1a
    cpl                                           ; $451c: $2f
    ccf                                           ; $451d: $3f
    ld e, d                                       ; $451e: $5a
    ld a, a                                       ; $451f: $7f
    ld e, l                                       ; $4520: $5d
    ld a, a                                       ; $4521: $7f
    sbc d                                         ; $4522: $9a
    rst $38                                       ; $4523: $ff
    cp l                                          ; $4524: $bd
    rst $38                                       ; $4525: $ff
    ld [bc], a                                    ; $4526: $02
    inc c                                         ; $4527: $0c

jr_0e2_4528:
    ld [bc], a                                    ; $4528: $02
    jr jr_0e2_452d                                ; $4529: $18 $02

    inc e                                         ; $452b: $1c
    ld [bc], a                                    ; $452c: $02

jr_0e2_452d:
    jr jr_0e2_44b9                                ; $452d: $18 $8a

    inc e                                         ; $452f: $1c
    inc c                                         ; $4530: $0c
    jr @+$0a                                      ; $4531: $18 $08

    inc e                                         ; $4533: $1c
    inc b                                         ; $4534: $04
    jr jr_0e2_453f                                ; $4535: $18 $08

    jr jr_0e2_4541                                ; $4537: $18 $08

    ld [bc], a                                    ; $4539: $02
    jr jr_0e2_453e                                ; $453a: $18 $02

    inc e                                         ; $453c: $1c
    sub h                                         ; $453d: $94

jr_0e2_453e:
    ld a, [de]                                    ; $453e: $1a

jr_0e2_453f:
    ld e, $1a                                     ; $453f: $1e $1a

jr_0e2_4541:
    ld e, $19                                     ; $4541: $1e $19
    rra                                           ; $4543: $1f
    dec e                                         ; $4544: $1d
    rra                                           ; $4545: $1f
    cp e                                          ; $4546: $bb
    rst $38                                       ; $4547: $ff
    ret c                                         ; $4548: $d8

    ld hl, sp-$04                                 ; $4549: $f8 $fc
    cp a                                          ; $454b: $bf
    ld a, d                                       ; $454c: $7a
    ld e, a                                       ; $454d: $5f
    ld [hl], e                                    ; $454e: $73
    ld l, a                                       ; $454f: $6f
    scf                                           ; $4550: $37
    ccf                                           ; $4551: $3f
    ld [bc], a                                    ; $4552: $02
    dec e                                         ; $4553: $1d
    ld d, $00                                     ; $4554: $16 $00
    add d                                         ; $4556: $82
    rra                                           ; $4557: $1f
    dec e                                         ; $4558: $1d
    ld [bc], a                                    ; $4559: $02
    ld a, [de]                                    ; $455a: $1a
    add d                                         ; $455b: $82
    ld c, $1e                                     ; $455c: $0e $1e
    ld [bc], a                                    ; $455e: $02
    inc e                                         ; $455f: $1c
    add d                                         ; $4560: $82
    ld [$0218], sp                                ; $4561: $08 $18 $02
    db $10                                        ; $4564: $10
    ld [de], a                                    ; $4565: $12
    nop                                           ; $4566: $00
    rst $38                                       ; $4567: $ff
    dec c                                         ; $4568: $0d
    inc b                                         ; $4569: $04
    ei                                            ; $456a: $fb
    dec b                                         ; $456b: $05
    rst $30                                       ; $456c: $f7
    ld bc, $faea                                  ; $456d: $01 $ea $fa
    db $eb                                        ; $4570: $eb
    rst $38                                       ; $4571: $ff
    ld a, [$fafa]                                 ; $4572: $fa $fa $fa
    rst $38                                       ; $4575: $ff
    ld [bc], a                                    ; $4576: $02
    add hl, bc                                    ; $4577: $09
    ld [bc], a                                    ; $4578: $02
    rra                                           ; $4579: $1f
    inc b                                         ; $457a: $04
    ccf                                           ; $457b: $3f
    sbc b                                         ; $457c: $98
    ld a, a                                       ; $457d: $7f
    ld [hl], h                                    ; $457e: $74
    ccf                                           ; $457f: $3f
    jr nc, @+$21                                  ; $4580: $30 $1f

    dec d                                         ; $4582: $15
    ccf                                           ; $4583: $3f
    jr nz, @+$21                                  ; $4584: $20 $1f

    ld [de], a                                    ; $4586: $12
    rra                                           ; $4587: $1f
    dec d                                         ; $4588: $15
    rra                                           ; $4589: $1f
    ld a, [de]                                    ; $458a: $1a
    cpl                                           ; $458b: $2f
    ccf                                           ; $458c: $3f
    ld e, d                                       ; $458d: $5a
    ld a, a                                       ; $458e: $7f
    ld e, l                                       ; $458f: $5d
    ld a, a                                       ; $4590: $7f
    cp d                                          ; $4591: $ba
    rst $38                                       ; $4592: $ff
    sbc l                                         ; $4593: $9d
    rst $38                                       ; $4594: $ff
    ld [bc], a                                    ; $4595: $02
    inc c                                         ; $4596: $0c
    ld [bc], a                                    ; $4597: $02
    jr jr_0e2_459c                                ; $4598: $18 $02

    inc e                                         ; $459a: $1c
    ld [bc], a                                    ; $459b: $02

jr_0e2_459c:
    jr jr_0e2_4528                                ; $459c: $18 $8a

    inc e                                         ; $459e: $1c
    inc c                                         ; $459f: $0c
    jr @+$0a                                      ; $45a0: $18 $08

    inc e                                         ; $45a2: $1c
    inc b                                         ; $45a3: $04
    jr jr_0e2_45ae                                ; $45a4: $18 $08

    jr jr_0e2_45b0                                ; $45a6: $18 $08

    ld [bc], a                                    ; $45a8: $02
    jr jr_0e2_45ad                                ; $45a9: $18 $02

    inc e                                         ; $45ab: $1c
    add e                                         ; $45ac: $83

jr_0e2_45ad:
    ld a, [de]                                    ; $45ad: $1a

jr_0e2_45ae:
    ld e, $1a                                     ; $45ae: $1e $1a

jr_0e2_45b0:
    inc bc                                        ; $45b0: $03
    ld e, $84                                     ; $45b1: $1e $84

jr_0e2_45b3:
    add hl, de                                    ; $45b3: $19
    rra                                           ; $45b4: $1f
    sbc l                                         ; $45b5: $9d
    ei                                            ; $45b6: $fb
    ld [bc], a                                    ; $45b7: $02
    ld hl, sp-$7a                                 ; $45b8: $f8 $86
    ld a, [$fbbf]                                 ; $45ba: $fa $bf $fb
    cp a                                          ; $45bd: $bf
    ld d, a                                       ; $45be: $57
    ld e, a                                       ; $45bf: $5f
    ld [bc], a                                    ; $45c0: $02
    ccf                                           ; $45c1: $3f
    add d                                         ; $45c2: $82
    scf                                           ; $45c3: $37
    ccf                                           ; $45c4: $3f
    ld [bc], a                                    ; $45c5: $02
    ld e, $02                                     ; $45c6: $1e $02
    inc c                                         ; $45c8: $0c
    ld [de], a                                    ; $45c9: $12
    nop                                           ; $45ca: $00
    add [hl]                                      ; $45cb: $86
    rra                                           ; $45cc: $1f
    dec de                                        ; $45cd: $1b
    ld c, $1e                                     ; $45ce: $0e $1e
    inc c                                         ; $45d0: $0c
    inc e                                         ; $45d1: $1c
    ld [bc], a                                    ; $45d2: $02
    ld e, $02                                     ; $45d3: $1e $02
    inc e                                         ; $45d5: $1c
    ld [bc], a                                    ; $45d6: $02
    jr jr_0e2_45eb                                ; $45d7: $18 $12

    nop                                           ; $45d9: $00
    rst $38                                       ; $45da: $ff
    dec c                                         ; $45db: $0d
    inc b                                         ; $45dc: $04
    ei                                            ; $45dd: $fb
    dec b                                         ; $45de: $05
    rst $30                                       ; $45df: $f7
    cp $eb                                        ; $45e0: $fe $eb
    ld a, [$ffec]                                 ; $45e2: $fa $ec $ff
    ei                                            ; $45e5: $fb
    ld a, [$fffb]                                 ; $45e6: $fa $fb $ff
    ld [bc], a                                    ; $45e9: $02
    add hl, bc                                    ; $45ea: $09

jr_0e2_45eb:
    ld [bc], a                                    ; $45eb: $02
    rra                                           ; $45ec: $1f
    inc b                                         ; $45ed: $04
    ccf                                           ; $45ee: $3f
    adc [hl]                                      ; $45ef: $8e
    ld a, a                                       ; $45f0: $7f
    ld [hl], h                                    ; $45f1: $74
    ccf                                           ; $45f2: $3f
    jr nc, jr_0e2_4614                            ; $45f3: $30 $1f

    dec d                                         ; $45f5: $15
    ccf                                           ; $45f6: $3f
    jr nz, jr_0e2_4618                            ; $45f7: $20 $1f

    ld [de], a                                    ; $45f9: $12
    rra                                           ; $45fa: $1f
    dec d                                         ; $45fb: $15
    rra                                           ; $45fc: $1f
    ld a, [de]                                    ; $45fd: $1a
    ld [bc], a                                    ; $45fe: $02
    ccf                                           ; $45ff: $3f
    adc b                                         ; $4600: $88
    ld e, d                                       ; $4601: $5a
    ld a, a                                       ; $4602: $7f
    ld e, l                                       ; $4603: $5d
    ld a, a                                       ; $4604: $7f
    sbc d                                         ; $4605: $9a
    rst $38                                       ; $4606: $ff
    cp l                                          ; $4607: $bd
    rst $38                                       ; $4608: $ff
    ld [bc], a                                    ; $4609: $02
    inc c                                         ; $460a: $0c
    ld [bc], a                                    ; $460b: $02
    jr jr_0e2_4610                                ; $460c: $18 $02

    inc e                                         ; $460e: $1c
    ld [bc], a                                    ; $460f: $02

jr_0e2_4610:
    jr jr_0e2_459c                                ; $4610: $18 $8a

    inc e                                         ; $4612: $1c
    inc c                                         ; $4613: $0c

jr_0e2_4614:
    jr @+$0a                                      ; $4614: $18 $08

    inc e                                         ; $4616: $1c
    inc b                                         ; $4617: $04

jr_0e2_4618:
    jr jr_0e2_4622                                ; $4618: $18 $08

    jr jr_0e2_4624                                ; $461a: $18 $08

    ld [bc], a                                    ; $461c: $02
    jr jr_0e2_45b3                                ; $461d: $18 $94

    inc d                                         ; $461f: $14
    inc e                                         ; $4620: $1c
    ld a, [de]                                    ; $4621: $1a

jr_0e2_4622:
    ld e, $1a                                     ; $4622: $1e $1a

jr_0e2_4624:
    ld e, $19                                     ; $4624: $1e $19
    rra                                           ; $4626: $1f
    dec e                                         ; $4627: $1d
    rra                                           ; $4628: $1f
    cp e                                          ; $4629: $bb
    rst $38                                       ; $462a: $ff
    ret c                                         ; $462b: $d8

    ld hl, sp-$07                                 ; $462c: $f8 $f9
    cp a                                          ; $462e: $bf
    ld a, d                                       ; $462f: $7a
    ld e, a                                       ; $4630: $5f
    halt                                          ; $4631: $76
    ld l, a                                       ; $4632: $6f
    ld [bc], a                                    ; $4633: $02
    ccf                                           ; $4634: $3f
    add d                                         ; $4635: $82
    dec d                                         ; $4636: $15
    dec e                                         ; $4637: $1d
    ld [bc], a                                    ; $4638: $02
    ld [$0014], sp                                ; $4639: $08 $14 $00
    add d                                         ; $463c: $82
    rra                                           ; $463d: $1f
    dec e                                         ; $463e: $1d
    ld [bc], a                                    ; $463f: $02
    ld a, [de]                                    ; $4640: $1a
    add h                                         ; $4641: $84
    ld c, $1e                                     ; $4642: $0e $1e
    inc c                                         ; $4644: $0c
    inc e                                         ; $4645: $1c
    ld [bc], a                                    ; $4646: $02
    jr jr_0e2_465d                                ; $4647: $18 $14

    nop                                           ; $4649: $00
    rst $38                                       ; $464a: $ff
    dec c                                         ; $464b: $0d
    inc b                                         ; $464c: $04
    ei                                            ; $464d: $fb
    dec b                                         ; $464e: $05
    rst $30                                       ; $464f: $f7
    cp $ea                                        ; $4650: $fe $ea
    db $fc                                        ; $4652: $fc
    db $eb                                        ; $4653: $eb
    cp $fa                                        ; $4654: $fe $fa
    ei                                            ; $4656: $fb
    ld a, [$02fd]                                 ; $4657: $fa $fd $02
    inc b                                         ; $465a: $04
    ld [bc], a                                    ; $465b: $02
    ld e, [hl]                                    ; $465c: $5e

jr_0e2_465d:
    ld [bc], a                                    ; $465d: $02
    ccf                                           ; $465e: $3f
    inc bc                                        ; $465f: $03
    ld a, a                                       ; $4660: $7f
    sub a                                         ; $4661: $97
    ld a, d                                       ; $4662: $7a
    rst $38                                       ; $4663: $ff
    ld hl, sp+$7f                                 ; $4664: $f8 $7f
    ld [hl], d                                    ; $4666: $72
    ld a, a                                       ; $4667: $7f

jr_0e2_4668:
    ld d, b                                       ; $4668: $50
    ccf                                           ; $4669: $3f
    jr nc, @+$21                                  ; $466a: $30 $1f

    ld [de], a                                    ; $466c: $12
    ccf                                           ; $466d: $3f
    add hl, sp                                    ; $466e: $39
    ld l, [hl]                                    ; $466f: $6e
    ld a, [hl]                                    ; $4670: $7e
    xor e                                         ; $4671: $ab
    rst $38                                       ; $4672: $ff
    ld l, l                                       ; $4673: $6d
    ld a, a                                       ; $4674: $7f
    ld e, e                                       ; $4675: $5b
    ld a, a                                       ; $4676: $7f
    ld c, l                                       ; $4677: $4d
    ld a, a                                       ; $4678: $7f
    ld [bc], a                                    ; $4679: $02
    ld [bc], a                                    ; $467a: $02
    ld [bc], a                                    ; $467b: $02
    inc bc                                        ; $467c: $03
    ld [$8202], sp                                ; $467d: $08 $02 $82
    inc bc                                        ; $4680: $03
    ld bc, $0204                                  ; $4681: $01 $04 $02
    inc c                                         ; $4684: $0c
    nop                                           ; $4685: $00
    add d                                         ; $4686: $82
    ld [hl], h                                    ; $4687: $74
    db $fc                                        ; $4688: $fc
    ld [bc], a                                    ; $4689: $02
    jr nz, jr_0e2_4618                            ; $468a: $20 $8c

    ld e, [hl]                                    ; $468c: $5e
    ld [hl], e                                    ; $468d: $73
    ld a, a                                       ; $468e: $7f
    ld a, h                                       ; $468f: $7c
    ld a, $3f                                     ; $4690: $3e $3f
    ld a, l                                       ; $4692: $7d
    ld a, a                                       ; $4693: $7f
    cp e                                          ; $4694: $bb
    rst $38                                       ; $4695: $ff
    ld e, h                                       ; $4696: $5c
    ld a, a                                       ; $4697: $7f
    ld [bc], a                                    ; $4698: $02
    ccf                                           ; $4699: $3f
    ld [de], a                                    ; $469a: $12
    nop                                           ; $469b: $00
    inc c                                         ; $469c: $0c
    ld [bc], a                                    ; $469d: $02
    ld [bc], a                                    ; $469e: $02
    inc bc                                        ; $469f: $03
    stop                                          ; $46a0: $10 $00
    rst $38                                       ; $46a2: $ff
    dec c                                         ; $46a3: $0d
    inc b                                         ; $46a4: $04
    ei                                            ; $46a5: $fb
    dec b                                         ; $46a6: $05
    rst $30                                       ; $46a7: $f7
    cp $ea                                        ; $46a8: $fe $ea
    db $fc                                        ; $46aa: $fc
    db $eb                                        ; $46ab: $eb
    cp $fa                                        ; $46ac: $fe $fa
    ei                                            ; $46ae: $fb
    ld a, [$02fe]                                 ; $46af: $fa $fe $02
    inc b                                         ; $46b2: $04
    ld [bc], a                                    ; $46b3: $02
    ld e, [hl]                                    ; $46b4: $5e
    ld [bc], a                                    ; $46b5: $02
    ccf                                           ; $46b6: $3f
    inc bc                                        ; $46b7: $03
    ld a, a                                       ; $46b8: $7f
    adc l                                         ; $46b9: $8d
    ld a, d                                       ; $46ba: $7a
    rst $38                                       ; $46bb: $ff
    ld hl, sp+$7f                                 ; $46bc: $f8 $7f
    ld [hl], d                                    ; $46be: $72
    ld a, a                                       ; $46bf: $7f
    ld d, b                                       ; $46c0: $50
    ccf                                           ; $46c1: $3f
    jr nc, jr_0e2_46e3                            ; $46c2: $30 $1f

    ld [de], a                                    ; $46c4: $12
    ccf                                           ; $46c5: $3f
    add hl, sp                                    ; $46c6: $39
    ld [bc], a                                    ; $46c7: $02
    ld a, [hl]                                    ; $46c8: $7e
    adc b                                         ; $46c9: $88
    xor d                                         ; $46ca: $aa
    cp $6d                                        ; $46cb: $fe $6d
    ld a, a                                       ; $46cd: $7f
    ld l, e                                       ; $46ce: $6b
    ld a, a                                       ; $46cf: $7f
    ld b, l                                       ; $46d0: $45
    ld a, a                                       ; $46d1: $7f
    ld [bc], a                                    ; $46d2: $02
    ld [bc], a                                    ; $46d3: $02
    ld [bc], a                                    ; $46d4: $02
    inc bc                                        ; $46d5: $03
    ld [$8202], sp                                ; $46d6: $08 $02 $82
    inc bc                                        ; $46d9: $03
    ld bc, $0204                                  ; $46da: $01 $04 $02
    inc c                                         ; $46dd: $0c
    nop                                           ; $46de: $00
    add d                                         ; $46df: $82
    sbc h                                         ; $46e0: $9c
    db $fc                                        ; $46e1: $fc
    ld [bc], a                                    ; $46e2: $02

jr_0e2_46e3:
    jr nz, jr_0e2_4668                            ; $46e3: $20 $83

    ld [hl], a                                    ; $46e5: $77
    ld a, h                                       ; $46e6: $7c
    ld a, a                                       ; $46e7: $7f
    ld [bc], a                                    ; $46e8: $02
    ld a, e                                       ; $46e9: $7b
    add a                                         ; $46ea: $87
    ld a, a                                       ; $46eb: $7f
    or a                                          ; $46ec: $b7
    rst $38                                       ; $46ed: $ff
    cp a                                          ; $46ee: $bf
    rst $38                                       ; $46ef: $ff
    rst $30                                       ; $46f0: $f7
    rst $38                                       ; $46f1: $ff
    ld [bc], a                                    ; $46f2: $02
    ld a, [hl]                                    ; $46f3: $7e
    ld [de], a                                    ; $46f4: $12
    nop                                           ; $46f5: $00
    add c                                         ; $46f6: $81
    ld b, $02                                     ; $46f7: $06 $02
    ld [bc], a                                    ; $46f9: $02
    inc bc                                        ; $46fa: $03
    ld b, $82                                     ; $46fb: $06 $82
    ld bc, $0207                                  ; $46fd: $01 $07 $02
    ld b, $14                                     ; $4700: $06 $14
    nop                                           ; $4702: $00
    rst $38                                       ; $4703: $ff
    dec c                                         ; $4704: $0d
    inc b                                         ; $4705: $04
    ei                                            ; $4706: $fb
    dec b                                         ; $4707: $05
    rst $30                                       ; $4708: $f7
    cp $eb                                        ; $4709: $fe $eb
    db $fc                                        ; $470b: $fc
    db $ec                                        ; $470c: $ec
    cp $fb                                        ; $470d: $fe $fb
    ei                                            ; $470f: $fb
    ei                                            ; $4710: $fb
    db $fd                                        ; $4711: $fd
    ld [bc], a                                    ; $4712: $02
    inc b                                         ; $4713: $04
    ld [bc], a                                    ; $4714: $02
    ld e, [hl]                                    ; $4715: $5e
    ld [bc], a                                    ; $4716: $02
    ccf                                           ; $4717: $3f
    inc bc                                        ; $4718: $03
    ld a, a                                       ; $4719: $7f
    sub a                                         ; $471a: $97
    ld a, d                                       ; $471b: $7a
    rst $38                                       ; $471c: $ff
    ld hl, sp+$7f                                 ; $471d: $f8 $7f
    ld [hl], d                                    ; $471f: $72
    ld a, a                                       ; $4720: $7f
    ld d, b                                       ; $4721: $50
    ccf                                           ; $4722: $3f
    jr nc, jr_0e2_4764                            ; $4723: $30 $3f

    ld [hl-], a                                   ; $4725: $32
    rst $18                                       ; $4726: $df
    ld sp, hl                                     ; $4727: $f9
    cp [hl]                                       ; $4728: $be
    cp $6b                                        ; $4729: $fe $6b
    ld a, a                                       ; $472b: $7f
    ld e, l                                       ; $472c: $5d
    ld a, a                                       ; $472d: $7f
    ld e, e                                       ; $472e: $5b
    ld a, a                                       ; $472f: $7f
    call Call_000_02ff                            ; $4730: $cd $ff $02
    ld [bc], a                                    ; $4733: $02
    ld [bc], a                                    ; $4734: $02
    inc bc                                        ; $4735: $03
    ld [$8202], sp                                ; $4736: $08 $02 $82
    inc bc                                        ; $4739: $03
    ld bc, $0204                                  ; $473a: $01 $04 $02
    inc c                                         ; $473d: $0c
    nop                                           ; $473e: $00
    adc [hl]                                      ; $473f: $8e
    ld [hl], h                                    ; $4740: $74
    db $fc                                        ; $4741: $fc
    ld b, b                                       ; $4742: $40
    ld h, b                                       ; $4743: $60
    ld e, [hl]                                    ; $4744: $5e
    ld h, a                                       ; $4745: $67
    ccf                                           ; $4746: $3f
    dec sp                                        ; $4747: $3b
    ld a, [hl]                                    ; $4748: $7e
    ld a, l                                       ; $4749: $7d
    cp h                                          ; $474a: $bc
    rst $38                                       ; $474b: $ff
    ld e, a                                       ; $474c: $5f
    ld a, a                                       ; $474d: $7f
    ld [bc], a                                    ; $474e: $02
    jr c, @+$16                                   ; $474f: $38 $14

    nop                                           ; $4751: $00
    ld [bc], a                                    ; $4752: $02
    ld [bc], a                                    ; $4753: $02
    add c                                         ; $4754: $81
    ld bc, $0303                                  ; $4755: $01 $03 $03
    ld [bc], a                                    ; $4758: $02
    ld [bc], a                                    ; $4759: $02
    ld [bc], a                                    ; $475a: $02
    inc bc                                        ; $475b: $03
    inc d                                         ; $475c: $14
    nop                                           ; $475d: $00
    rst $38                                       ; $475e: $ff
    dec c                                         ; $475f: $0d
    inc b                                         ; $4760: $04
    ei                                            ; $4761: $fb
    dec b                                         ; $4762: $05
    rst $30                                       ; $4763: $f7

jr_0e2_4764:
    cp $ea                                        ; $4764: $fe $ea
    db $fc                                        ; $4766: $fc
    db $eb                                        ; $4767: $eb
    cp $fa                                        ; $4768: $fe $fa
    ei                                            ; $476a: $fb
    ld a, [$02ff]                                 ; $476b: $fa $ff $02
    inc b                                         ; $476e: $04
    ld [bc], a                                    ; $476f: $02
    ld e, [hl]                                    ; $4770: $5e
    ld [bc], a                                    ; $4771: $02
    ccf                                           ; $4772: $3f
    inc bc                                        ; $4773: $03
    ld a, a                                       ; $4774: $7f
    sub a                                         ; $4775: $97
    ld a, d                                       ; $4776: $7a
    rst $38                                       ; $4777: $ff
    ld hl, sp+$7f                                 ; $4778: $f8 $7f
    ld [hl], d                                    ; $477a: $72
    ld a, a                                       ; $477b: $7f
    ld d, b                                       ; $477c: $50
    ccf                                           ; $477d: $3f
    jr nc, jr_0e2_479f                            ; $477e: $30 $1f

    ld [de], a                                    ; $4780: $12
    ccf                                           ; $4781: $3f
    add hl, sp                                    ; $4782: $39
    ld l, [hl]                                    ; $4783: $6e
    ld a, [hl]                                    ; $4784: $7e
    xor d                                         ; $4785: $aa
    cp $5d                                        ; $4786: $fe $5d

jr_0e2_4788:
    ld a, a                                       ; $4788: $7f
    ld e, e                                       ; $4789: $5b
    ld a, a                                       ; $478a: $7f
    sbc l                                         ; $478b: $9d
    rst $38                                       ; $478c: $ff
    ld [bc], a                                    ; $478d: $02
    ld [bc], a                                    ; $478e: $02
    ld [bc], a                                    ; $478f: $02
    inc bc                                        ; $4790: $03
    ld [$8202], sp                                ; $4791: $08 $02 $82
    inc bc                                        ; $4794: $03
    ld bc, $0204                                  ; $4795: $01 $04 $02
    inc c                                         ; $4798: $0c
    nop                                           ; $4799: $00
    sub b                                         ; $479a: $90
    ld [hl], h                                    ; $479b: $74
    db $fc                                        ; $479c: $fc
    ld b, b                                       ; $479d: $40
    ld h, b                                       ; $479e: $60

jr_0e2_479f:
    cp [hl]                                       ; $479f: $be
    rst $28                                       ; $47a0: $ef
    ld a, [hl]                                    ; $47a1: $7e
    ld [hl], a                                    ; $47a2: $77
    ld a, $3b                                     ; $47a3: $3e $3b
    ld a, l                                       ; $47a5: $7d
    ld a, a                                       ; $47a6: $7f
    cp a                                          ; $47a7: $bf
    rst $38                                       ; $47a8: $ff
    ld c, a                                       ; $47a9: $4f
    ld a, a                                       ; $47aa: $7f
    ld [bc], a                                    ; $47ab: $02
    add hl, sp                                    ; $47ac: $39
    ld [de], a                                    ; $47ad: $12
    nop                                           ; $47ae: $00
    inc b                                         ; $47af: $04
    ld [$0481], sp                                ; $47b0: $08 $81 $04
    inc bc                                        ; $47b3: $03
    inc c                                         ; $47b4: $0c
    add d                                         ; $47b5: $82
    inc bc                                        ; $47b6: $03
    rrca                                          ; $47b7: $0f
    ld [bc], a                                    ; $47b8: $02
    ld c, $12                                     ; $47b9: $0e $12
    nop                                           ; $47bb: $00
    rst $38                                       ; $47bc: $ff
    dec c                                         ; $47bd: $0d
    inc b                                         ; $47be: $04
    ei                                            ; $47bf: $fb
    dec b                                         ; $47c0: $05
    rst $30                                       ; $47c1: $f7
    cp $eb                                        ; $47c2: $fe $eb
    db $fc                                        ; $47c4: $fc
    db $ec                                        ; $47c5: $ec
    cp $fb                                        ; $47c6: $fe $fb
    ei                                            ; $47c8: $fb
    ei                                            ; $47c9: $fb
    db $fd                                        ; $47ca: $fd
    ld [bc], a                                    ; $47cb: $02
    inc b                                         ; $47cc: $04
    ld [bc], a                                    ; $47cd: $02
    ld e, [hl]                                    ; $47ce: $5e
    ld [bc], a                                    ; $47cf: $02
    ccf                                           ; $47d0: $3f
    inc bc                                        ; $47d1: $03
    ld a, a                                       ; $47d2: $7f

jr_0e2_47d3:
    sub a                                         ; $47d3: $97
    ld a, d                                       ; $47d4: $7a
    rst $38                                       ; $47d5: $ff
    ld hl, sp+$7f                                 ; $47d6: $f8 $7f
    ld [hl], d                                    ; $47d8: $72
    ld a, a                                       ; $47d9: $7f
    ld d, b                                       ; $47da: $50
    ccf                                           ; $47db: $3f
    jr nc, jr_0e2_481d                            ; $47dc: $30 $3f

    ld [hl-], a                                   ; $47de: $32
    rst $18                                       ; $47df: $df
    ld sp, hl                                     ; $47e0: $f9
    cp [hl]                                       ; $47e1: $be
    cp $6b                                        ; $47e2: $fe $6b
    ld a, a                                       ; $47e4: $7f
    ld l, l                                       ; $47e5: $6d
    ld a, a                                       ; $47e6: $7f
    ld l, e                                       ; $47e7: $6b
    ld a, a                                       ; $47e8: $7f
    ld b, l                                       ; $47e9: $45
    ld a, a                                       ; $47ea: $7f
    ld [bc], a                                    ; $47eb: $02
    ld [bc], a                                    ; $47ec: $02
    ld [bc], a                                    ; $47ed: $02
    inc bc                                        ; $47ee: $03
    ld [$8202], sp                                ; $47ef: $08 $02 $82
    inc bc                                        ; $47f2: $03
    ld bc, $0204                                  ; $47f3: $01 $04 $02
    inc c                                         ; $47f6: $0c
    nop                                           ; $47f7: $00
    add d                                         ; $47f8: $82
    inc [hl]                                      ; $47f9: $34
    db $fc                                        ; $47fa: $fc
    ld [bc], a                                    ; $47fb: $02
    jr nz, jr_0e2_4788                            ; $47fc: $20 $8a

    ccf                                           ; $47fe: $3f
    jr c, jr_0e2_4880                             ; $47ff: $38 $7f

    ld [hl], a                                    ; $4801: $77
    ei                                            ; $4802: $fb
    rst $38                                       ; $4803: $ff
    cp a                                          ; $4804: $bf
    rst $38                                       ; $4805: $ff
    ld e, l                                       ; $4806: $5d
    ld a, a                                       ; $4807: $7f
    ld [bc], a                                    ; $4808: $02
    ccf                                           ; $4809: $3f
    inc d                                         ; $480a: $14
    nop                                           ; $480b: $00
    add h                                         ; $480c: $84
    ld bc, $0103                                  ; $480d: $01 $03 $01
    inc bc                                        ; $4810: $03
    ld [bc], a                                    ; $4811: $02
    ld [bc], a                                    ; $4812: $02
    ld [bc], a                                    ; $4813: $02
    inc bc                                        ; $4814: $03
    ld [bc], a                                    ; $4815: $02
    nop                                           ; $4816: $00
    ld [bc], a                                    ; $4817: $02
    ld [bc], a                                    ; $4818: $02
    ld [de], a                                    ; $4819: $12
    nop                                           ; $481a: $00
    rst $38                                       ; $481b: $ff
    dec c                                         ; $481c: $0d

jr_0e2_481d:
    inc b                                         ; $481d: $04
    ei                                            ; $481e: $fb
    dec b                                         ; $481f: $05
    rst $30                                       ; $4820: $f7
    cp $ea                                        ; $4821: $fe $ea
    ld a, [$ffea]                                 ; $4823: $fa $ea $ff
    ld a, [$fafa]                                 ; $4826: $fa $fa $fa
    rst $38                                       ; $4829: $ff
    ld [bc], a                                    ; $482a: $02
    dec bc                                        ; $482b: $0b
    ld [bc], a                                    ; $482c: $02
    rra                                           ; $482d: $1f
    ld b, $3f                                     ; $482e: $06 $3f
    ld [bc], a                                    ; $4830: $02
    rra                                           ; $4831: $1f
    add d                                         ; $4832: $82
    ccf                                           ; $4833: $3f
    cpl                                           ; $4834: $2f
    inc bc                                        ; $4835: $03
    rra                                           ; $4836: $1f
    add c                                         ; $4837: $81
    db $10                                        ; $4838: $10
    ld [bc], a                                    ; $4839: $02
    rra                                           ; $483a: $1f
    adc h                                         ; $483b: $8c
    jr c, jr_0e2_487d                             ; $483c: $38 $3f

    ld d, a                                       ; $483e: $57
    ld a, a                                       ; $483f: $7f
    ld e, b                                       ; $4840: $58
    ld a, a                                       ; $4841: $7f
    ld e, h                                       ; $4842: $5c
    ld a, a                                       ; $4843: $7f

jr_0e2_4844:
    sbc a                                         ; $4844: $9f
    rst $38                                       ; $4845: $ff
    cp a                                          ; $4846: $bf
    rst $38                                       ; $4847: $ff

jr_0e2_4848:
    ld [bc], a                                    ; $4848: $02
    db $10                                        ; $4849: $10
    ld [bc], a                                    ; $484a: $02
    jr jr_0e2_4853                                ; $484b: $18 $06

    inc e                                         ; $484d: $1c
    ld [bc], a                                    ; $484e: $02
    jr jr_0e2_47d3                                ; $484f: $18 $82

    inc e                                         ; $4851: $1c
    inc d                                         ; $4852: $14

jr_0e2_4853:
    inc bc                                        ; $4853: $03
    jr @-$7d                                      ; $4854: $18 $81

    ld [$1802], sp                                ; $4856: $08 $02 $18
    ld [bc], a                                    ; $4859: $02
    inc e                                         ; $485a: $1c
    adc d                                         ; $485b: $8a
    ld a, [bc]                                    ; $485c: $0a
    ld e, $0a                                     ; $485d: $1e $0a
    ld e, $1a                                     ; $485f: $1e $1a
    ld e, $19                                     ; $4861: $1e $19
    rra                                           ; $4863: $1f
    dec e                                         ; $4864: $1d
    rra                                           ; $4865: $1f
    inc bc                                        ; $4866: $03
    rst $38                                       ; $4867: $ff
    add c                                         ; $4868: $81
    cp a                                          ; $4869: $bf
    ld [bc], a                                    ; $486a: $02
    ld a, a                                       ; $486b: $7f
    ld [bc], a                                    ; $486c: $02
    ccf                                           ; $486d: $3f
    inc b                                         ; $486e: $04
    ld a, a                                       ; $486f: $7f
    add d                                         ; $4870: $82
    jr c, jr_0e2_48b2                             ; $4871: $38 $3f

    ld [bc], a                                    ; $4873: $02
    rra                                           ; $4874: $1f
    stop                                          ; $4875: $10 $00
    add c                                         ; $4877: $81
    rrca                                          ; $4878: $0f
    ld [bc], a                                    ; $4879: $02
    rra                                           ; $487a: $1f
    add l                                         ; $487b: $85
    dec e                                         ; $487c: $1d

jr_0e2_487d:
    ld c, $1e                                     ; $487d: $0e $1e
    inc c                                         ; $487f: $0c

jr_0e2_4880:
    inc e                                         ; $4880: $1c
    ld [bc], a                                    ; $4881: $02
    ld e, $84                                     ; $4882: $1e $84
    ld b, $1e                                     ; $4884: $06 $1e
    inc c                                         ; $4886: $0c
    inc e                                         ; $4887: $1c
    ld [bc], a                                    ; $4888: $02
    jr @+$12                                      ; $4889: $18 $10

    nop                                           ; $488b: $00
    rst $38                                       ; $488c: $ff
    dec c                                         ; $488d: $0d
    inc b                                         ; $488e: $04
    ei                                            ; $488f: $fb
    dec b                                         ; $4890: $05
    rst $30                                       ; $4891: $f7
    cp $ea                                        ; $4892: $fe $ea
    ld a, [$ffea]                                 ; $4894: $fa $ea $ff
    ld a, [$fafa]                                 ; $4897: $fa $fa $fa
    cp $02                                        ; $489a: $fe $02
    dec bc                                        ; $489c: $0b
    ld [bc], a                                    ; $489d: $02
    rra                                           ; $489e: $1f
    ld b, $3f                                     ; $489f: $06 $3f
    ld [bc], a                                    ; $48a1: $02
    rra                                           ; $48a2: $1f
    add d                                         ; $48a3: $82
    ccf                                           ; $48a4: $3f
    cpl                                           ; $48a5: $2f
    inc bc                                        ; $48a6: $03
    rra                                           ; $48a7: $1f
    add c                                         ; $48a8: $81
    db $10                                        ; $48a9: $10
    ld [bc], a                                    ; $48aa: $02
    rra                                           ; $48ab: $1f
    adc h                                         ; $48ac: $8c
    add hl, sp                                    ; $48ad: $39
    ccf                                           ; $48ae: $3f
    ld d, a                                       ; $48af: $57
    ld a, a                                       ; $48b0: $7f
    ld e, b                                       ; $48b1: $58

jr_0e2_48b2:
    ld a, a                                       ; $48b2: $7f
    sbc h                                         ; $48b3: $9c
    rst $38                                       ; $48b4: $ff

jr_0e2_48b5:
    cp a                                          ; $48b5: $bf
    rst $38                                       ; $48b6: $ff
    sbc a                                         ; $48b7: $9f
    rst $38                                       ; $48b8: $ff

jr_0e2_48b9:
    ld [bc], a                                    ; $48b9: $02
    db $10                                        ; $48ba: $10
    ld [bc], a                                    ; $48bb: $02
    jr jr_0e2_48c4                                ; $48bc: $18 $06

    inc e                                         ; $48be: $1c
    ld [bc], a                                    ; $48bf: $02
    jr jr_0e2_4844                                ; $48c0: $18 $82

    inc e                                         ; $48c2: $1c
    inc d                                         ; $48c3: $14

jr_0e2_48c4:
    inc bc                                        ; $48c4: $03
    jr jr_0e2_4848                                ; $48c5: $18 $81

    ld [$1802], sp                                ; $48c7: $08 $02 $18
    ld [bc], a                                    ; $48ca: $02
    ld e, $8a                                     ; $48cb: $1e $8a
    ld a, [bc]                                    ; $48cd: $0a
    ld e, $0b                                     ; $48ce: $1e $0b
    rra                                           ; $48d0: $1f
    dec e                                         ; $48d1: $1d
    rra                                           ; $48d2: $1f
    dec e                                         ; $48d3: $1d
    rra                                           ; $48d4: $1f
    add hl, de                                    ; $48d5: $19
    rra                                           ; $48d6: $1f
    inc bc                                        ; $48d7: $03
    rst $38                                       ; $48d8: $ff
    add e                                         ; $48d9: $83
    sbc a                                         ; $48da: $9f
    rst $38                                       ; $48db: $ff
    cp a                                          ; $48dc: $bf
    ld [bc], a                                    ; $48dd: $02
    ld a, a                                       ; $48de: $7f
    ld [bc], a                                    ; $48df: $02
    ccf                                           ; $48e0: $3f
    add h                                         ; $48e1: $84
    ld a, $3f                                     ; $48e2: $3e $3f
    dec sp                                        ; $48e4: $3b
    ccf                                           ; $48e5: $3f
    ld [bc], a                                    ; $48e6: $02
    rrca                                          ; $48e7: $0f
    stop                                          ; $48e8: $10 $00
    add h                                         ; $48ea: $84
    rlca                                          ; $48eb: $07
    rrca                                          ; $48ec: $0f
    rlca                                          ; $48ed: $07
    dec c                                         ; $48ee: $0d
    ld [bc], a                                    ; $48ef: $02
    ld c, $85                                     ; $48f0: $0e $85
    ld b, $0e                                     ; $48f2: $06 $0e
    inc bc                                        ; $48f4: $03
    rrca                                          ; $48f5: $0f
    inc bc                                        ; $48f6: $03
    inc bc                                        ; $48f7: $03
    rrca                                          ; $48f8: $0f
    ld [bc], a                                    ; $48f9: $02
    ld c, $10                                     ; $48fa: $0e $10
    nop                                           ; $48fc: $00
    rst $38                                       ; $48fd: $ff
    dec c                                         ; $48fe: $0d
    inc b                                         ; $48ff: $04
    ei                                            ; $4900: $fb
    dec b                                         ; $4901: $05
    rst $30                                       ; $4902: $f7
    cp $eb                                        ; $4903: $fe $eb
    ld a, [$ffeb]                                 ; $4905: $fa $eb $ff
    ei                                            ; $4908: $fb
    ld a, [$fffb]                                 ; $4909: $fa $fb $ff
    ld [bc], a                                    ; $490c: $02
    dec bc                                        ; $490d: $0b
    ld [bc], a                                    ; $490e: $02
    rra                                           ; $490f: $1f
    ld b, $3f                                     ; $4910: $06 $3f
    ld [bc], a                                    ; $4912: $02
    rra                                           ; $4913: $1f
    add d                                         ; $4914: $82
    ccf                                           ; $4915: $3f
    cpl                                           ; $4916: $2f
    inc bc                                        ; $4917: $03
    rra                                           ; $4918: $1f
    add c                                         ; $4919: $81

jr_0e2_491a:
    db $10                                        ; $491a: $10
    ld [bc], a                                    ; $491b: $02
    rra                                           ; $491c: $1f
    adc h                                         ; $491d: $8c

jr_0e2_491e:
    jr c, jr_0e2_495f                             ; $491e: $38 $3f

    ld d, a                                       ; $4920: $57
    ld a, a                                       ; $4921: $7f
    ld e, b                                       ; $4922: $58
    ld a, a                                       ; $4923: $7f
    call c, $bfff                                 ; $4924: $dc $ff $bf
    rst $38                                       ; $4927: $ff
    cp a                                          ; $4928: $bf
    rst $38                                       ; $4929: $ff
    ld [bc], a                                    ; $492a: $02
    db $10                                        ; $492b: $10
    ld [bc], a                                    ; $492c: $02
    jr jr_0e2_4935                                ; $492d: $18 $06

    inc e                                         ; $492f: $1c
    ld [bc], a                                    ; $4930: $02
    jr jr_0e2_48b5                                ; $4931: $18 $82

    inc e                                         ; $4933: $1c
    inc d                                         ; $4934: $14

jr_0e2_4935:
    inc bc                                        ; $4935: $03
    jr jr_0e2_48b9                                ; $4936: $18 $81

    ld [$1802], sp                                ; $4938: $08 $02 $18
    ld [bc], a                                    ; $493b: $02
    inc e                                         ; $493c: $1c
    adc d                                         ; $493d: $8a
    ld a, [bc]                                    ; $493e: $0a
    ld e, $0a                                     ; $493f: $1e $0a
    ld e, $1a                                     ; $4941: $1e $1a
    ld e, $19                                     ; $4943: $1e $19
    rra                                           ; $4945: $1f
    dec e                                         ; $4946: $1d
    rra                                           ; $4947: $1f
    inc bc                                        ; $4948: $03
    rst $38                                       ; $4949: $ff
    add c                                         ; $494a: $81
    cp a                                          ; $494b: $bf
    ld b, $7f                                     ; $494c: $06 $7f
    add d                                         ; $494e: $82
    ld h, a                                       ; $494f: $67
    ld a, a                                       ; $4950: $7f
    ld [bc], a                                    ; $4951: $02
    ld a, $12                                     ; $4952: $3e $12
    nop                                           ; $4954: $00
    inc bc                                        ; $4955: $03
    rra                                           ; $4956: $1f
    add h                                         ; $4957: $84
    dec e                                         ; $4958: $1d
    ld d, $1e                                     ; $4959: $16 $1e
    inc d                                         ; $495b: $14
    inc bc                                        ; $495c: $03
    inc e                                         ; $495d: $1c
    ld [bc], a                                    ; $495e: $02

jr_0e2_495f:
    jr jr_0e2_4975                                ; $495f: $18 $14

    nop                                           ; $4961: $00
    rst $38                                       ; $4962: $ff
    dec c                                         ; $4963: $0d
    inc b                                         ; $4964: $04
    ei                                            ; $4965: $fb
    dec b                                         ; $4966: $05
    rst $30                                       ; $4967: $f7
    cp $ea                                        ; $4968: $fe $ea
    ld a, [$ffea]                                 ; $496a: $fa $ea $ff
    ld a, [$fafb]                                 ; $496d: $fa $fb $fa
    rst $38                                       ; $4970: $ff
    ld [bc], a                                    ; $4971: $02
    dec bc                                        ; $4972: $0b
    ld [bc], a                                    ; $4973: $02
    rra                                           ; $4974: $1f

jr_0e2_4975:
    ld b, $3f                                     ; $4975: $06 $3f
    ld [bc], a                                    ; $4977: $02
    rra                                           ; $4978: $1f
    add d                                         ; $4979: $82
    ccf                                           ; $497a: $3f
    cpl                                           ; $497b: $2f
    inc bc                                        ; $497c: $03
    rra                                           ; $497d: $1f
    add c                                         ; $497e: $81
    db $10                                        ; $497f: $10
    ld [bc], a                                    ; $4980: $02
    rra                                           ; $4981: $1f
    adc h                                         ; $4982: $8c
    ld a, h                                       ; $4983: $7c
    ld a, a                                       ; $4984: $7f
    ld d, a                                       ; $4985: $57

jr_0e2_4986:
    ld a, a                                       ; $4986: $7f
    ret c                                         ; $4987: $d8

    rst $38                                       ; $4988: $ff
    cp h                                          ; $4989: $bc

jr_0e2_498a:
    rst $38                                       ; $498a: $ff
    cp a                                          ; $498b: $bf
    rst $38                                       ; $498c: $ff
    sbc a                                         ; $498d: $9f
    rst $38                                       ; $498e: $ff
    ld [bc], a                                    ; $498f: $02
    db $10                                        ; $4990: $10
    ld [bc], a                                    ; $4991: $02
    jr jr_0e2_499a                                ; $4992: $18 $06

    inc e                                         ; $4994: $1c
    ld [bc], a                                    ; $4995: $02
    jr jr_0e2_491a                                ; $4996: $18 $82

    inc e                                         ; $4998: $1c
    inc d                                         ; $4999: $14

jr_0e2_499a:
    inc bc                                        ; $499a: $03
    jr jr_0e2_491e                                ; $499b: $18 $81

    ld [$1802], sp                                ; $499d: $08 $02 $18
    ld [bc], a                                    ; $49a0: $02
    inc e                                         ; $49a1: $1c
    adc e                                         ; $49a2: $8b
    ld a, [bc]                                    ; $49a3: $0a
    ld e, $0a                                     ; $49a4: $1e $0a
    ld e, $19                                     ; $49a6: $1e $19
    rra                                           ; $49a8: $1f
    dec e                                         ; $49a9: $1d
    rra                                           ; $49aa: $1f
    add hl, de                                    ; $49ab: $19
    rra                                           ; $49ac: $1f
    rst $28                                       ; $49ad: $ef
    ld [bc], a                                    ; $49ae: $02
    rst $38                                       ; $49af: $ff
    add c                                         ; $49b0: $81
    cp a                                          ; $49b1: $bf
    ld [bc], a                                    ; $49b2: $02
    ld a, a                                       ; $49b3: $7f
    add d                                         ; $49b4: $82
    ld l, a                                       ; $49b5: $6f
    ld a, a                                       ; $49b6: $7f
    ld [bc], a                                    ; $49b7: $02
    rst $38                                       ; $49b8: $ff
    add h                                         ; $49b9: $84
    rst $00                                       ; $49ba: $c7
    rst $38                                       ; $49bb: $ff
    db $fd                                        ; $49bc: $fd
    rst $38                                       ; $49bd: $ff
    ld [bc], a                                    ; $49be: $02
    ld a, a                                       ; $49bf: $7f
    stop                                          ; $49c0: $10 $00
    inc bc                                        ; $49c2: $03
    rrca                                          ; $49c3: $0f
    add e                                         ; $49c4: $83
    add hl, bc                                    ; $49c5: $09
    rrca                                          ; $49c6: $0f
    dec c                                         ; $49c7: $0d
    ld [bc], a                                    ; $49c8: $02
    ld c, $06                                     ; $49c9: $0e $06
    inc c                                         ; $49cb: $0c
    ld [de], a                                    ; $49cc: $12
    nop                                           ; $49cd: $00
    rst $38                                       ; $49ce: $ff
    dec c                                         ; $49cf: $0d
    inc b                                         ; $49d0: $04
    ei                                            ; $49d1: $fb
    dec b                                         ; $49d2: $05
    rst $30                                       ; $49d3: $f7
    cp $eb                                        ; $49d4: $fe $eb
    ld a, [$ffeb]                                 ; $49d6: $fa $eb $ff
    ei                                            ; $49d9: $fb
    ld a, [$fffb]                                 ; $49da: $fa $fb $ff
    ld [bc], a                                    ; $49dd: $02
    dec bc                                        ; $49de: $0b
    ld [bc], a                                    ; $49df: $02
    rra                                           ; $49e0: $1f
    ld b, $3f                                     ; $49e1: $06 $3f
    ld [bc], a                                    ; $49e3: $02
    rra                                           ; $49e4: $1f
    add d                                         ; $49e5: $82
    ccf                                           ; $49e6: $3f
    cpl                                           ; $49e7: $2f
    inc bc                                        ; $49e8: $03
    rra                                           ; $49e9: $1f
    add c                                         ; $49ea: $81
    db $10                                        ; $49eb: $10
    ld [bc], a                                    ; $49ec: $02
    rra                                           ; $49ed: $1f
    adc h                                         ; $49ee: $8c
    jr c, @+$41                                   ; $49ef: $38 $3f

    ld d, a                                       ; $49f1: $57
    ld a, a                                       ; $49f2: $7f
    ld e, b                                       ; $49f3: $58
    ld a, a                                       ; $49f4: $7f
    ld e, h                                       ; $49f5: $5c
    ld a, a                                       ; $49f6: $7f
    sbc a                                         ; $49f7: $9f

jr_0e2_49f8:
    rst $38                                       ; $49f8: $ff
    cp a                                          ; $49f9: $bf
    rst $38                                       ; $49fa: $ff
    ld [bc], a                                    ; $49fb: $02
    db $10                                        ; $49fc: $10
    ld [bc], a                                    ; $49fd: $02
    jr jr_0e2_4a06                                ; $49fe: $18 $06

    inc e                                         ; $4a00: $1c
    ld [bc], a                                    ; $4a01: $02
    jr jr_0e2_4986                                ; $4a02: $18 $82

    inc e                                         ; $4a04: $1c
    inc d                                         ; $4a05: $14

jr_0e2_4a06:
    inc bc                                        ; $4a06: $03
    jr jr_0e2_498a                                ; $4a07: $18 $81

    ld [$1802], sp                                ; $4a09: $08 $02 $18
    ld [bc], a                                    ; $4a0c: $02
    inc e                                         ; $4a0d: $1c
    adc d                                         ; $4a0e: $8a
    ld a, [bc]                                    ; $4a0f: $0a
    ld e, $0a                                     ; $4a10: $1e $0a
    ld e, $1b                                     ; $4a12: $1e $1b
    rra                                           ; $4a14: $1f
    dec e                                         ; $4a15: $1d
    rra                                           ; $4a16: $1f
    dec e                                         ; $4a17: $1d
    rra                                           ; $4a18: $1f
    inc bc                                        ; $4a19: $03
    rst $38                                       ; $4a1a: $ff
    add h                                         ; $4a1b: $84
    cp a                                          ; $4a1c: $bf
    ld l, a                                       ; $4a1d: $6f
    ld a, a                                       ; $4a1e: $7f
    cpl                                           ; $4a1f: $2f
    inc bc                                        ; $4a20: $03
    ccf                                           ; $4a21: $3f
    ld [bc], a                                    ; $4a22: $02
    rra                                           ; $4a23: $1f
    ld [bc], a                                    ; $4a24: $02
    inc bc                                        ; $4a25: $03
    ld [de], a                                    ; $4a26: $12
    nop                                           ; $4a27: $00
    inc bc                                        ; $4a28: $03
    rra                                           ; $4a29: $1f
    add c                                         ; $4a2a: $81
    dec e                                         ; $4a2b: $1d
    ld b, $1e                                     ; $4a2c: $06 $1e
    add d                                         ; $4a2e: $82
    ld b, $1e                                     ; $4a2f: $06 $1e
    ld [bc], a                                    ; $4a31: $02
    inc e                                         ; $4a32: $1c
    ld [de], a                                    ; $4a33: $12
    nop                                           ; $4a34: $00
    rst $38                                       ; $4a35: $ff
    dec c                                         ; $4a36: $0d
    inc b                                         ; $4a37: $04
    ei                                            ; $4a38: $fb
    dec b                                         ; $4a39: $05
    rst $30                                       ; $4a3a: $f7
    cp $ea                                        ; $4a3b: $fe $ea
    ld a, [$ffea]                                 ; $4a3d: $fa $ea $ff
    ld a, [$fafa]                                 ; $4a40: $fa $fa $fa
    rst $38                                       ; $4a43: $ff
    ld [bc], a                                    ; $4a44: $02
    rrca                                          ; $4a45: $0f
    ld [bc], a                                    ; $4a46: $02
    rra                                           ; $4a47: $1f
    inc bc                                        ; $4a48: $03
    ccf                                           ; $4a49: $3f
    adc l                                         ; $4a4a: $8d
    add hl, sp                                    ; $4a4b: $39
    ccf                                           ; $4a4c: $3f
    jr nc, jr_0e2_4a6e                            ; $4a4d: $30 $1f

    dec e                                         ; $4a4f: $1d
    ccf                                           ; $4a50: $3f
    inc h                                         ; $4a51: $24
    rra                                           ; $4a52: $1f
    ld [de], a                                    ; $4a53: $12
    rra                                           ; $4a54: $1f
    inc de                                        ; $4a55: $13
    rrca                                          ; $4a56: $0f
    ld [$3f02], sp                                ; $4a57: $08 $02 $3f
    adc d                                         ; $4a5a: $8a
    ld e, d                                       ; $4a5b: $5a
    ld a, a                                       ; $4a5c: $7f
    ld e, l                                       ; $4a5d: $5d
    ld a, a                                       ; $4a5e: $7f
    ld e, d                                       ; $4a5f: $5a
    ld a, a                                       ; $4a60: $7f
    cp l                                          ; $4a61: $bd
    rst $38                                       ; $4a62: $ff
    db $dd                                        ; $4a63: $dd
    rst $38                                       ; $4a64: $ff
    ld [bc], a                                    ; $4a65: $02
    ld [$1802], sp                                ; $4a66: $08 $02 $18
    inc bc                                        ; $4a69: $03
    inc e                                         ; $4a6a: $1c
    add e                                         ; $4a6b: $83
    inc c                                         ; $4a6c: $0c
    inc e                                         ; $4a6d: $1c

jr_0e2_4a6e:
    inc c                                         ; $4a6e: $0c

jr_0e2_4a6f:
    ld [bc], a                                    ; $4a6f: $02
    jr jr_0e2_49f8                                ; $4a70: $18 $86

    inc e                                         ; $4a72: $1c
    inc b                                         ; $4a73: $04
    jr jr_0e2_4a7e                                ; $4a74: $18 $08

    jr jr_0e2_4a80                                ; $4a76: $18 $08

    ld [bc], a                                    ; $4a78: $02
    db $10                                        ; $4a79: $10
    ld [bc], a                                    ; $4a7a: $02
    inc e                                         ; $4a7b: $1c
    sub e                                         ; $4a7c: $93
    ld a, [de]                                    ; $4a7d: $1a

jr_0e2_4a7e:
    ld e, $1a                                     ; $4a7e: $1e $1a

jr_0e2_4a80:
    ld e, $1a                                     ; $4a80: $1e $1a
    ld e, $1d                                     ; $4a82: $1e $1d
    rra                                           ; $4a84: $1f
    dec de                                        ; $4a85: $1b
    rra                                           ; $4a86: $1f
    db $fd                                        ; $4a87: $fd
    cp a                                          ; $4a88: $bf
    ld a, [$7a9f]                                 ; $4a89: $fa $9f $7a
    ld l, a                                       ; $4a8c: $6f
    ld a, [hl-]                                   ; $4a8d: $3a
    ccf                                           ; $4a8e: $3f
    ld [hl], a                                    ; $4a8f: $77
    inc bc                                        ; $4a90: $03
    ld a, a                                       ; $4a91: $7f
    add d                                         ; $4a92: $82
    daa                                           ; $4a93: $27
    ccf                                           ; $4a94: $3f
    ld [bc], a                                    ; $4a95: $02
    jr c, jr_0e2_4aa8                             ; $4a96: $38 $10

    nop                                           ; $4a98: $00
    add h                                         ; $4a99: $84
    rra                                           ; $4a9a: $1f
    dec e                                         ; $4a9b: $1d
    rra                                           ; $4a9c: $1f
    dec e                                         ; $4a9d: $1d
    ld [bc], a                                    ; $4a9e: $02
    ld e, $02                                     ; $4a9f: $1e $02
    inc e                                         ; $4aa1: $1c
    add c                                         ; $4aa2: $81
    ld c, $03                                     ; $4aa3: $0e $03
    ld e, $81                                     ; $4aa5: $1e $81
    inc b                                         ; $4aa7: $04

jr_0e2_4aa8:
    inc bc                                        ; $4aa8: $03
    inc e                                         ; $4aa9: $1c
    stop                                          ; $4aaa: $10 $00
    rst $38                                       ; $4aac: $ff
    dec c                                         ; $4aad: $0d
    inc b                                         ; $4aae: $04
    ei                                            ; $4aaf: $fb
    dec b                                         ; $4ab0: $05
    rst $30                                       ; $4ab1: $f7
    cp $ea                                        ; $4ab2: $fe $ea
    ld a, [$ffea]                                 ; $4ab4: $fa $ea $ff
    ld a, [$fafb]                                 ; $4ab7: $fa $fb $fa
    rst $38                                       ; $4aba: $ff
    ld [bc], a                                    ; $4abb: $02
    rrca                                          ; $4abc: $0f
    ld [bc], a                                    ; $4abd: $02
    rra                                           ; $4abe: $1f
    inc bc                                        ; $4abf: $03
    ccf                                           ; $4ac0: $3f
    adc l                                         ; $4ac1: $8d
    add hl, sp                                    ; $4ac2: $39
    ccf                                           ; $4ac3: $3f
    jr nc, jr_0e2_4ae5                            ; $4ac4: $30 $1f

    dec e                                         ; $4ac6: $1d
    ccf                                           ; $4ac7: $3f
    inc h                                         ; $4ac8: $24
    rra                                           ; $4ac9: $1f
    ld [de], a                                    ; $4aca: $12
    rra                                           ; $4acb: $1f
    inc de                                        ; $4acc: $13
    rrca                                          ; $4acd: $0f
    ld [$3f02], sp                                ; $4ace: $08 $02 $3f
    adc d                                         ; $4ad1: $8a
    ld e, d                                       ; $4ad2: $5a
    ld a, a                                       ; $4ad3: $7f
    ld e, l                                       ; $4ad4: $5d
    ld a, a                                       ; $4ad5: $7f
    cp d                                          ; $4ad6: $ba
    rst $38                                       ; $4ad7: $ff
    sbc l                                         ; $4ad8: $9d
    rst $38                                       ; $4ad9: $ff
    cp l                                          ; $4ada: $bd
    rst $38                                       ; $4adb: $ff
    ld [bc], a                                    ; $4adc: $02
    ld [$1802], sp                                ; $4add: $08 $02 $18
    inc bc                                        ; $4ae0: $03
    inc e                                         ; $4ae1: $1c
    add e                                         ; $4ae2: $83
    inc c                                         ; $4ae3: $0c
    inc e                                         ; $4ae4: $1c

jr_0e2_4ae5:
    inc c                                         ; $4ae5: $0c
    ld [bc], a                                    ; $4ae6: $02

jr_0e2_4ae7:
    jr jr_0e2_4a6f                                ; $4ae7: $18 $86

    inc e                                         ; $4ae9: $1c
    inc b                                         ; $4aea: $04
    jr jr_0e2_4af5                                ; $4aeb: $18 $08

    jr jr_0e2_4af7                                ; $4aed: $18 $08

    ld [bc], a                                    ; $4aef: $02
    db $10                                        ; $4af0: $10
    ld [bc], a                                    ; $4af1: $02
    inc e                                         ; $4af2: $1c
    add a                                         ; $4af3: $87
    ld a, [de]                                    ; $4af4: $1a

jr_0e2_4af5:
    ld e, $1a                                     ; $4af5: $1e $1a

jr_0e2_4af7:
    ld e, $1d                                     ; $4af7: $1e $1d
    rra                                           ; $4af9: $1f
    dec e                                         ; $4afa: $1d
    inc bc                                        ; $4afb: $03
    rra                                           ; $4afc: $1f
    adc h                                         ; $4afd: $8c
    rst $38                                       ; $4afe: $ff
    and a                                         ; $4aff: $a7
    ld sp, hl                                     ; $4b00: $f9
    cp a                                          ; $4b01: $bf
    halt                                          ; $4b02: $76
    ld a, a                                       ; $4b03: $7f
    rst $30                                       ; $4b04: $f7
    rst $38                                       ; $4b05: $ff
    rst $30                                       ; $4b06: $f7
    rst $38                                       ; $4b07: $ff
    ld e, [hl]                                    ; $4b08: $5e
    ld a, a                                       ; $4b09: $7f
    ld [bc], a                                    ; $4b0a: $02
    dec sp                                        ; $4b0b: $3b
    ld [bc], a                                    ; $4b0c: $02
    inc bc                                        ; $4b0d: $03
    stop                                          ; $4b0e: $10 $00
    add d                                         ; $4b10: $82
    rrca                                          ; $4b11: $0f
    dec c                                         ; $4b12: $0d
    ld [bc], a                                    ; $4b13: $02
    ld c, $02                                     ; $4b14: $0e $02
    inc c                                         ; $4b16: $0c
    add d                                         ; $4b17: $82
    inc b                                         ; $4b18: $04
    inc c                                         ; $4b19: $0c
    ld [bc], a                                    ; $4b1a: $02
    ld c, $81                                     ; $4b1b: $0e $81
    inc b                                         ; $4b1d: $04
    inc bc                                        ; $4b1e: $03
    inc c                                         ; $4b1f: $0c
    ld [bc], a                                    ; $4b20: $02
    ld [$0010], sp                                ; $4b21: $08 $10 $00
    rst $38                                       ; $4b24: $ff
    dec c                                         ; $4b25: $0d
    inc b                                         ; $4b26: $04
    ei                                            ; $4b27: $fb
    dec b                                         ; $4b28: $05
    rst $30                                       ; $4b29: $f7
    cp $eb                                        ; $4b2a: $fe $eb
    ld a, [$ffeb]                                 ; $4b2c: $fa $eb $ff
    ei                                            ; $4b2f: $fb
    ld a, [$fffb]                                 ; $4b30: $fa $fb $ff
    ld [bc], a                                    ; $4b33: $02
    rrca                                          ; $4b34: $0f
    ld [bc], a                                    ; $4b35: $02
    rra                                           ; $4b36: $1f
    inc bc                                        ; $4b37: $03
    ccf                                           ; $4b38: $3f
    adc l                                         ; $4b39: $8d
    add hl, sp                                    ; $4b3a: $39
    ccf                                           ; $4b3b: $3f
    jr nc, jr_0e2_4b5d                            ; $4b3c: $30 $1f

    dec e                                         ; $4b3e: $1d
    ccf                                           ; $4b3f: $3f
    inc h                                         ; $4b40: $24
    rra                                           ; $4b41: $1f
    ld [de], a                                    ; $4b42: $12
    rra                                           ; $4b43: $1f
    inc de                                        ; $4b44: $13
    rrca                                          ; $4b45: $0f
    ld [$3f02], sp                                ; $4b46: $08 $02 $3f
    adc d                                         ; $4b49: $8a
    ld e, d                                       ; $4b4a: $5a
    ld a, a                                       ; $4b4b: $7f
    ld e, l                                       ; $4b4c: $5d
    ld a, a                                       ; $4b4d: $7f
    ld e, d                                       ; $4b4e: $5a
    ld a, a                                       ; $4b4f: $7f
    cp l                                          ; $4b50: $bd
    rst $38                                       ; $4b51: $ff
    db $dd                                        ; $4b52: $dd
    rst $38                                       ; $4b53: $ff
    ld [bc], a                                    ; $4b54: $02
    ld [$1802], sp                                ; $4b55: $08 $02 $18
    inc bc                                        ; $4b58: $03
    inc e                                         ; $4b59: $1c
    add e                                         ; $4b5a: $83
    inc c                                         ; $4b5b: $0c
    inc e                                         ; $4b5c: $1c

jr_0e2_4b5d:
    inc c                                         ; $4b5d: $0c
    ld [bc], a                                    ; $4b5e: $02
    jr jr_0e2_4ae7                                ; $4b5f: $18 $86

    inc e                                         ; $4b61: $1c
    inc b                                         ; $4b62: $04
    jr jr_0e2_4b6d                                ; $4b63: $18 $08

    jr jr_0e2_4b6f                                ; $4b65: $18 $08

    ld [bc], a                                    ; $4b67: $02
    db $10                                        ; $4b68: $10
    ld [bc], a                                    ; $4b69: $02
    inc e                                         ; $4b6a: $1c
    sub b                                         ; $4b6b: $90
    ld a, [de]                                    ; $4b6c: $1a

jr_0e2_4b6d:
    ld e, $1a                                     ; $4b6d: $1e $1a

jr_0e2_4b6f:
    ld e, $1a                                     ; $4b6f: $1e $1a
    ld e, $1d                                     ; $4b71: $1e $1d
    rra                                           ; $4b73: $1f
    dec de                                        ; $4b74: $1b
    rra                                           ; $4b75: $1f
    db $fd                                        ; $4b76: $fd
    cp a                                          ; $4b77: $bf
    ei                                            ; $4b78: $fb
    cp a                                          ; $4b79: $bf
    halt                                          ; $4b7a: $76
    ld e, a                                       ; $4b7b: $5f
    ld [bc], a                                    ; $4b7c: $02
    ld a, a                                       ; $4b7d: $7f
    add d                                         ; $4b7e: $82
    dec [hl]                                      ; $4b7f: $35
    dec a                                         ; $4b80: $3d
    ld [bc], a                                    ; $4b81: $02
    add hl, de                                    ; $4b82: $19
    inc d                                         ; $4b83: $14
    nop                                           ; $4b84: $00
    add h                                         ; $4b85: $84
    rra                                           ; $4b86: $1f
    dec e                                         ; $4b87: $1d
    rra                                           ; $4b88: $1f
    dec e                                         ; $4b89: $1d
    ld [bc], a                                    ; $4b8a: $02
    ld e, $83                                     ; $4b8b: $1e $83
    ld c, $1e                                     ; $4b8d: $0e $1e
    inc b                                         ; $4b8f: $04
    inc bc                                        ; $4b90: $03
    inc e                                         ; $4b91: $1c
    inc d                                         ; $4b92: $14
    nop                                           ; $4b93: $00
    rst $38                                       ; $4b94: $ff
    dec c                                         ; $4b95: $0d
    inc b                                         ; $4b96: $04
    ei                                            ; $4b97: $fb
    dec b                                         ; $4b98: $05
    rst $30                                       ; $4b99: $f7
    cp $ea                                        ; $4b9a: $fe $ea
    ld a, [$ffea]                                 ; $4b9c: $fa $ea $ff
    ld a, [$fafa]                                 ; $4b9f: $fa $fa $fa
    cp $02                                        ; $4ba2: $fe $02
    rrca                                          ; $4ba4: $0f
    ld [bc], a                                    ; $4ba5: $02
    rra                                           ; $4ba6: $1f
    inc bc                                        ; $4ba7: $03
    ccf                                           ; $4ba8: $3f
    adc l                                         ; $4ba9: $8d
    add hl, sp                                    ; $4baa: $39
    ccf                                           ; $4bab: $3f
    jr nc, jr_0e2_4bcd                            ; $4bac: $30 $1f

    dec e                                         ; $4bae: $1d
    ccf                                           ; $4baf: $3f
    inc h                                         ; $4bb0: $24
    rra                                           ; $4bb1: $1f
    ld [de], a                                    ; $4bb2: $12
    rra                                           ; $4bb3: $1f
    inc de                                        ; $4bb4: $13
    rrca                                          ; $4bb5: $0f
    ld [$3f02], sp                                ; $4bb6: $08 $02 $3f
    adc d                                         ; $4bb9: $8a
    ld e, d                                       ; $4bba: $5a
    ld a, a                                       ; $4bbb: $7f
    ld e, l                                       ; $4bbc: $5d
    ld a, a                                       ; $4bbd: $7f
    cp d                                          ; $4bbe: $ba
    rst $38                                       ; $4bbf: $ff
    cp l                                          ; $4bc0: $bd
    rst $38                                       ; $4bc1: $ff
    db $fd                                        ; $4bc2: $fd
    rst $38                                       ; $4bc3: $ff
    ld [bc], a                                    ; $4bc4: $02
    ld [$1802], sp                                ; $4bc5: $08 $02 $18
    inc bc                                        ; $4bc8: $03
    inc e                                         ; $4bc9: $1c
    add e                                         ; $4bca: $83

jr_0e2_4bcb:
    inc c                                         ; $4bcb: $0c
    inc e                                         ; $4bcc: $1c

jr_0e2_4bcd:
    inc c                                         ; $4bcd: $0c
    ld [bc], a                                    ; $4bce: $02
    jr @-$78                                      ; $4bcf: $18 $86

    inc e                                         ; $4bd1: $1c
    inc b                                         ; $4bd2: $04
    jr jr_0e2_4bdd                                ; $4bd3: $18 $08

    jr jr_0e2_4bdf                                ; $4bd5: $18 $08

    ld [bc], a                                    ; $4bd7: $02
    db $10                                        ; $4bd8: $10
    ld [bc], a                                    ; $4bd9: $02
    inc e                                         ; $4bda: $1c
    sub [hl]                                      ; $4bdb: $96
    ld a, [de]                                    ; $4bdc: $1a

jr_0e2_4bdd:
    ld e, $1a                                     ; $4bdd: $1e $1a

jr_0e2_4bdf:
    ld e, $1d                                     ; $4bdf: $1e $1d
    rra                                           ; $4be1: $1f
    add hl, de                                    ; $4be2: $19
    rra                                           ; $4be3: $1f
    dec e                                         ; $4be4: $1d
    rra                                           ; $4be5: $1f
    db $fd                                        ; $4be6: $fd
    cp a                                          ; $4be7: $bf
    ld sp, hl                                     ; $4be8: $f9
    cp a                                          ; $4be9: $bf
    halt                                          ; $4bea: $76
    ld a, a                                       ; $4beb: $7f
    ld l, $3f                                     ; $4bec: $2e $3f
    ld a, [hl]                                    ; $4bee: $7e
    ld a, a                                       ; $4bef: $7f
    daa                                           ; $4bf0: $27
    ccf                                           ; $4bf1: $3f
    ld [bc], a                                    ; $4bf2: $02
    dec a                                         ; $4bf3: $3d
    ld [bc], a                                    ; $4bf4: $02
    inc e                                         ; $4bf5: $1c
    stop                                          ; $4bf6: $10 $00
    add h                                         ; $4bf8: $84
    rrca                                          ; $4bf9: $0f
    add hl, bc                                    ; $4bfa: $09
    rrca                                          ; $4bfb: $0f
    dec c                                         ; $4bfc: $0d
    ld [bc], a                                    ; $4bfd: $02
    ld c, $04                                     ; $4bfe: $0e $04
    rrca                                          ; $4c00: $0f
    add d                                         ; $4c01: $82
    ld a, [bc]                                    ; $4c02: $0a
    ld c, $02                                     ; $4c03: $0e $02
    inc c                                         ; $4c05: $0c
    ld [de], a                                    ; $4c06: $12
    nop                                           ; $4c07: $00
    rst $38                                       ; $4c08: $ff
    dec c                                         ; $4c09: $0d
    inc b                                         ; $4c0a: $04
    ei                                            ; $4c0b: $fb
    dec b                                         ; $4c0c: $05
    rst $30                                       ; $4c0d: $f7
    cp $eb                                        ; $4c0e: $fe $eb
    ld a, [$ffeb]                                 ; $4c10: $fa $eb $ff
    ei                                            ; $4c13: $fb
    ld a, [$fffb]                                 ; $4c14: $fa $fb $ff
    ld [bc], a                                    ; $4c17: $02
    rrca                                          ; $4c18: $0f
    ld [bc], a                                    ; $4c19: $02
    rra                                           ; $4c1a: $1f
    inc bc                                        ; $4c1b: $03
    ccf                                           ; $4c1c: $3f
    adc l                                         ; $4c1d: $8d
    add hl, sp                                    ; $4c1e: $39
    ccf                                           ; $4c1f: $3f
    jr nc, jr_0e2_4c41                            ; $4c20: $30 $1f

    dec e                                         ; $4c22: $1d
    ccf                                           ; $4c23: $3f
    inc h                                         ; $4c24: $24
    rra                                           ; $4c25: $1f
    ld [de], a                                    ; $4c26: $12
    rra                                           ; $4c27: $1f
    inc de                                        ; $4c28: $13
    rrca                                          ; $4c29: $0f
    ld [$3f02], sp                                ; $4c2a: $08 $02 $3f
    adc d                                         ; $4c2d: $8a
    ld e, d                                       ; $4c2e: $5a
    ld a, a                                       ; $4c2f: $7f
    ld e, l                                       ; $4c30: $5d
    ld a, a                                       ; $4c31: $7f
    ld e, d                                       ; $4c32: $5a
    ld a, a                                       ; $4c33: $7f
    cp l                                          ; $4c34: $bd
    rst $38                                       ; $4c35: $ff
    db $dd                                        ; $4c36: $dd
    rst $38                                       ; $4c37: $ff
    ld [bc], a                                    ; $4c38: $02
    ld [$1802], sp                                ; $4c39: $08 $02 $18
    inc bc                                        ; $4c3c: $03
    inc e                                         ; $4c3d: $1c
    add e                                         ; $4c3e: $83
    inc c                                         ; $4c3f: $0c
    inc e                                         ; $4c40: $1c

jr_0e2_4c41:
    inc c                                         ; $4c41: $0c
    ld [bc], a                                    ; $4c42: $02
    jr jr_0e2_4bcb                                ; $4c43: $18 $86

    inc e                                         ; $4c45: $1c
    inc b                                         ; $4c46: $04
    jr jr_0e2_4c51                                ; $4c47: $18 $08

jr_0e2_4c49:
    jr jr_0e2_4c53                                ; $4c49: $18 $08

    ld [bc], a                                    ; $4c4b: $02
    db $10                                        ; $4c4c: $10
    ld [bc], a                                    ; $4c4d: $02
    inc e                                         ; $4c4e: $1c
    sub h                                         ; $4c4f: $94
    ld a, [de]                                    ; $4c50: $1a

jr_0e2_4c51:
    ld e, $1a                                     ; $4c51: $1e $1a

jr_0e2_4c53:
    ld e, $1a                                     ; $4c53: $1e $1a
    ld e, $1d                                     ; $4c55: $1e $1d
    rra                                           ; $4c57: $1f
    dec de                                        ; $4c58: $1b
    rra                                           ; $4c59: $1f
    db $fd                                        ; $4c5a: $fd
    cp a                                          ; $4c5b: $bf
    cp $bf                                        ; $4c5c: $fe $bf
    ld a, e                                       ; $4c5e: $7b
    ld e, a                                       ; $4c5f: $5f
    ld [hl], a                                    ; $4c60: $77
    ld a, a                                       ; $4c61: $7f
    dec h                                         ; $4c62: $25
    dec a                                         ; $4c63: $3d
    ld [bc], a                                    ; $4c64: $02
    inc a                                         ; $4c65: $3c
    inc d                                         ; $4c66: $14
    nop                                           ; $4c67: $00
    add l                                         ; $4c68: $85
    rra                                           ; $4c69: $1f
    dec e                                         ; $4c6a: $1d
    rra                                           ; $4c6b: $1f
    dec e                                         ; $4c6c: $1d
    ld c, $03                                     ; $4c6d: $0e $03
    ld e, $82                                     ; $4c6f: $1e $82
    inc c                                         ; $4c71: $0c
    inc e                                         ; $4c72: $1c
    ld [bc], a                                    ; $4c73: $02
    jr jr_0e2_4c8a                                ; $4c74: $18 $14

    nop                                           ; $4c76: $00
    rst $38                                       ; $4c77: $ff
    dec c                                         ; $4c78: $0d
    inc b                                         ; $4c79: $04
    ei                                            ; $4c7a: $fb
    dec b                                         ; $4c7b: $05
    rst $30                                       ; $4c7c: $f7
    cp $ea                                        ; $4c7d: $fe $ea
    db $fc                                        ; $4c7f: $fc
    db $eb                                        ; $4c80: $eb
    cp $fa                                        ; $4c81: $fe $fa
    ei                                            ; $4c83: $fb
    ld a, [$02fd]                                 ; $4c84: $fa $fd $02
    ld e, [hl]                                    ; $4c87: $5e
    ld [bc], a                                    ; $4c88: $02
    cp a                                          ; $4c89: $bf

jr_0e2_4c8a:
    ld [bc], a                                    ; $4c8a: $02
    ld a, a                                       ; $4c8b: $7f
    adc [hl]                                      ; $4c8c: $8e
    rst $38                                       ; $4c8d: $ff
    ld a, [$f0ff]                                 ; $4c8e: $fa $ff $f0
    rst $38                                       ; $4c91: $ff
    or $7f                                        ; $4c92: $f6 $7f
    ld d, b                                       ; $4c94: $50
    ccf                                           ; $4c95: $3f
    jr nc, @+$21                                  ; $4c96: $30 $1f

    ld de, $383f                                  ; $4c98: $11 $3f $38
    ld [bc], a                                    ; $4c9b: $02
    ld a, a                                       ; $4c9c: $7f
    adc d                                         ; $4c9d: $8a
    or l                                          ; $4c9e: $b5
    rst $38                                       ; $4c9f: $ff
    xor [hl]                                      ; $4ca0: $ae
    rst $38                                       ; $4ca1: $ff
    ld l, l                                       ; $4ca2: $6d
    ld a, a                                       ; $4ca3: $7f
    ld l, $3f                                     ; $4ca4: $2e $3f
    ld b, [hl]                                    ; $4ca6: $46
    ld a, a                                       ; $4ca7: $7f
    ld [bc], a                                    ; $4ca8: $02
    ld [bc], a                                    ; $4ca9: $02
    ld [bc], a                                    ; $4caa: $02
    inc bc                                        ; $4cab: $03
    ld b, $02                                     ; $4cac: $06 $02
    add d                                         ; $4cae: $82
    inc bc                                        ; $4caf: $03
    ld bc, $0206                                  ; $4cb0: $01 $06 $02
    inc b                                         ; $4cb3: $04
    nop                                           ; $4cb4: $00
    ld [$8202], sp                                ; $4cb5: $08 $02 $82
    ld a, [hl-]                                   ; $4cb8: $3a
    cp $02                                        ; $4cb9: $fe $02
    jr nz, jr_0e2_4c49                            ; $4cbb: $20 $8c

    ccf                                           ; $4cbd: $3f
    add hl, sp                                    ; $4cbe: $39
    ccf                                           ; $4cbf: $3f
    ld a, [hl-]                                   ; $4cc0: $3a
    ld a, [hl]                                    ; $4cc1: $7e
    ld a, a                                       ; $4cc2: $7f
    ld a, l                                       ; $4cc3: $7d
    ld a, a                                       ; $4cc4: $7f
    cp a                                          ; $4cc5: $bf
    rst $38                                       ; $4cc6: $ff
    call c, Call_000_02ff                         ; $4cc7: $dc $ff $02
    ccf                                           ; $4cca: $3f
    ld [de], a                                    ; $4ccb: $12
    nop                                           ; $4ccc: $00
    inc bc                                        ; $4ccd: $03
    inc bc                                        ; $4cce: $03
    add c                                         ; $4ccf: $81
    ld bc, $020a                                  ; $4cd0: $01 $0a $02
    stop                                          ; $4cd3: $10 $00
    rst $38                                       ; $4cd5: $ff
    dec c                                         ; $4cd6: $0d
    inc b                                         ; $4cd7: $04
    ei                                            ; $4cd8: $fb
    dec b                                         ; $4cd9: $05
    rst $30                                       ; $4cda: $f7
    cp $ea                                        ; $4cdb: $fe $ea
    db $fc                                        ; $4cdd: $fc
    db $eb                                        ; $4cde: $eb
    rst $38                                       ; $4cdf: $ff
    ld a, [$fafb]                                 ; $4ce0: $fa $fb $fa
    ld bc, $5e02                                  ; $4ce3: $01 $02 $5e
    ld [bc], a                                    ; $4ce6: $02
    cp a                                          ; $4ce7: $bf
    ld [bc], a                                    ; $4ce8: $02
    ld a, a                                       ; $4ce9: $7f
    sbc d                                         ; $4cea: $9a
    rst $38                                       ; $4ceb: $ff
    ld a, [$f0ff]                                 ; $4cec: $fa $ff $f0
    rst $38                                       ; $4cef: $ff
    or $7f                                        ; $4cf0: $f6 $7f
    ld d, b                                       ; $4cf2: $50
    ccf                                           ; $4cf3: $3f
    jr nc, jr_0e2_4d15                            ; $4cf4: $30 $1f

    ld de, $383f                                  ; $4cf6: $11 $3f $38
    ld e, a                                       ; $4cf9: $5f
    ld a, a                                       ; $4cfa: $7f
    or l                                          ; $4cfb: $b5
    rst $38                                       ; $4cfc: $ff
    halt                                          ; $4cfd: $76
    ld a, a                                       ; $4cfe: $7f
    inc hl                                        ; $4cff: $23
    ccf                                           ; $4d00: $3f
    halt                                          ; $4d01: $76
    ld a, a                                       ; $4d02: $7f
    ld a, c                                       ; $4d03: $79
    ld a, a                                       ; $4d04: $7f
    ld [bc], a                                    ; $4d05: $02
    inc b                                         ; $4d06: $04
    ld [bc], a                                    ; $4d07: $02
    ld b, $06                                     ; $4d08: $06 $06
    inc b                                         ; $4d0a: $04
    add d                                         ; $4d0b: $82
    ld b, $02                                     ; $4d0c: $06 $02
    ld b, $04                                     ; $4d0e: $06 $04
    inc b                                         ; $4d10: $04
    nop                                           ; $4d11: $00
    inc b                                         ; $4d12: $04
    inc b                                         ; $4d13: $04
    ld [bc], a                                    ; $4d14: $02

jr_0e2_4d15:
    ld b, $84                                     ; $4d15: $06 $84
    rlca                                          ; $4d17: $07
    dec b                                         ; $4d18: $05
    sbc $f2                                       ; $4d19: $de $f2
    ld [bc], a                                    ; $4d1b: $02
    jr nc, jr_0e2_4d20                            ; $4d1c: $30 $02

    ccf                                           ; $4d1e: $3f
    adc d                                         ; $4d1f: $8a

jr_0e2_4d20:
    ld a, [hl]                                    ; $4d20: $7e
    ld a, a                                       ; $4d21: $7f
    ld a, l                                       ; $4d22: $7d
    ld a, a                                       ; $4d23: $7f
    cp e                                          ; $4d24: $bb
    rst $38                                       ; $4d25: $ff
    cp a                                          ; $4d26: $bf
    rst $38                                       ; $4d27: $ff
    ld [hl], d                                    ; $4d28: $72
    ld a, [hl]                                    ; $4d29: $7e
    ld [bc], a                                    ; $4d2a: $02
    ld c, $12                                     ; $4d2b: $0e $12
    nop                                           ; $4d2d: $00
    add d                                         ; $4d2e: $82
    jr c, @+$1a                                   ; $4d2f: $38 $18

    ld [bc], a                                    ; $4d31: $02
    jr c, jr_0e2_4d36                             ; $4d32: $38 $02

    ld a, $84                                     ; $4d34: $3e $84

jr_0e2_4d36:
    add hl, sp                                    ; $4d36: $39
    ccf                                           ; $4d37: $3f
    ld [hl], $3e                                  ; $4d38: $36 $3e
    ld [bc], a                                    ; $4d3a: $02
    jr c, jr_0e2_4d4f                             ; $4d3b: $38 $12

    nop                                           ; $4d3d: $00
    rst $38                                       ; $4d3e: $ff
    dec c                                         ; $4d3f: $0d
    inc b                                         ; $4d40: $04
    ei                                            ; $4d41: $fb
    dec b                                         ; $4d42: $05
    rst $30                                       ; $4d43: $f7
    cp $eb                                        ; $4d44: $fe $eb
    db $fc                                        ; $4d46: $fc
    db $ec                                        ; $4d47: $ec
    cp $fb                                        ; $4d48: $fe $fb
    db $fc                                        ; $4d4a: $fc
    ei                                            ; $4d4b: $fb
    cp $02                                        ; $4d4c: $fe $02
    ld e, [hl]                                    ; $4d4e: $5e

jr_0e2_4d4f:
    ld [bc], a                                    ; $4d4f: $02
    cp a                                          ; $4d50: $bf
    ld [bc], a                                    ; $4d51: $02
    ld a, a                                       ; $4d52: $7f
    sbc d                                         ; $4d53: $9a
    rst $38                                       ; $4d54: $ff
    ld a, [$f0ff]                                 ; $4d55: $fa $ff $f0
    rst $38                                       ; $4d58: $ff
    or $7f                                        ; $4d59: $f6 $7f
    ld d, b                                       ; $4d5b: $50
    ccf                                           ; $4d5c: $3f
    jr nc, jr_0e2_4d7e                            ; $4d5d: $30 $1f

    ld de, $f8ff                                  ; $4d5f: $11 $ff $f8
    sbc a                                         ; $4d62: $9f
    rst $38                                       ; $4d63: $ff
    ld [hl], l                                    ; $4d64: $75
    ld a, a                                       ; $4d65: $7f
    ld h, $3f                                     ; $4d66: $26 $3f
    dec h                                         ; $4d68: $25
    ccf                                           ; $4d69: $3f
    ld l, $3f                                     ; $4d6a: $2e $3f
    ld h, $3f                                     ; $4d6c: $26 $3f
    ld [bc], a                                    ; $4d6e: $02
    ld [bc], a                                    ; $4d6f: $02
    ld [bc], a                                    ; $4d70: $02
    inc bc                                        ; $4d71: $03
    ld b, $02                                     ; $4d72: $06 $02
    add d                                         ; $4d74: $82
    inc bc                                        ; $4d75: $03
    ld bc, $0206                                  ; $4d76: $01 $06 $02
    inc b                                         ; $4d79: $04
    nop                                           ; $4d7a: $00
    ld [$8202], sp                                ; $4d7b: $08 $02 $82

jr_0e2_4d7e:
    cp d                                          ; $4d7e: $ba
    cp $02                                        ; $4d7f: $fe $02
    nop                                           ; $4d81: $00
    add h                                         ; $4d82: $84
    ld a, a                                       ; $4d83: $7f
    ld [hl], e                                    ; $4d84: $73
    ld a, a                                       ; $4d85: $7f
    ld [hl], h                                    ; $4d86: $74
    ld [bc], a                                    ; $4d87: $02
    rst $38                                       ; $4d88: $ff
    add h                                         ; $4d89: $84
    cp [hl]                                       ; $4d8a: $be
    rst $38                                       ; $4d8b: $ff
    ld e, a                                       ; $4d8c: $5f
    ld a, a                                       ; $4d8d: $7f
    ld [bc], a                                    ; $4d8e: $02
    jr c, jr_0e2_4da5                             ; $4d8f: $38 $14

    nop                                           ; $4d91: $00
    add h                                         ; $4d92: $84
    ld bc, $0103                                  ; $4d93: $01 $03 $01
    inc bc                                        ; $4d96: $03
    ld [bc], a                                    ; $4d97: $02
    ld [bc], a                                    ; $4d98: $02
    ld [bc], a                                    ; $4d99: $02
    inc bc                                        ; $4d9a: $03
    ld [bc], a                                    ; $4d9b: $02
    ld [bc], a                                    ; $4d9c: $02
    inc d                                         ; $4d9d: $14
    nop                                           ; $4d9e: $00
    rst $38                                       ; $4d9f: $ff
    dec c                                         ; $4da0: $0d
    inc b                                         ; $4da1: $04
    ei                                            ; $4da2: $fb
    dec b                                         ; $4da3: $05
    rst $30                                       ; $4da4: $f7

jr_0e2_4da5:
    cp $ea                                        ; $4da5: $fe $ea
    db $fc                                        ; $4da7: $fc
    db $eb                                        ; $4da8: $eb
    cp $fa                                        ; $4da9: $fe $fa
    db $fc                                        ; $4dab: $fc
    ld a, [$0201]                                 ; $4dac: $fa $01 $02
    ld e, [hl]                                    ; $4daf: $5e
    ld [bc], a                                    ; $4db0: $02
    cp a                                          ; $4db1: $bf
    ld [bc], a                                    ; $4db2: $02
    ld a, a                                       ; $4db3: $7f
    sbc d                                         ; $4db4: $9a
    rst $38                                       ; $4db5: $ff
    ld a, [$f0ff]                                 ; $4db6: $fa $ff $f0
    rst $38                                       ; $4db9: $ff
    or $7f                                        ; $4dba: $f6 $7f
    ld d, b                                       ; $4dbc: $50
    ccf                                           ; $4dbd: $3f
    jr nc, jr_0e2_4ddf                            ; $4dbe: $30 $1f

    ld de, $383f                                  ; $4dc0: $11 $3f $38
    ld e, a                                       ; $4dc3: $5f
    ld a, a                                       ; $4dc4: $7f
    or l                                          ; $4dc5: $b5
    rst $38                                       ; $4dc6: $ff
    ld l, [hl]                                    ; $4dc7: $6e
    ld a, a                                       ; $4dc8: $7f
    ld c, l                                       ; $4dc9: $4d
    ld a, a                                       ; $4dca: $7f
    ld e, [hl]                                    ; $4dcb: $5e
    ld a, a                                       ; $4dcc: $7f
    ld c, [hl]                                    ; $4dcd: $4e
    ld a, a                                       ; $4dce: $7f
    ld [bc], a                                    ; $4dcf: $02
    ld [bc], a                                    ; $4dd0: $02
    ld [bc], a                                    ; $4dd1: $02
    inc bc                                        ; $4dd2: $03
    ld b, $02                                     ; $4dd3: $06 $02

jr_0e2_4dd5:
    add d                                         ; $4dd5: $82
    inc bc                                        ; $4dd6: $03
    ld bc, $0206                                  ; $4dd7: $01 $06 $02
    inc b                                         ; $4dda: $04
    nop                                           ; $4ddb: $00
    ld [$8202], sp                                ; $4ddc: $08 $02 $82

jr_0e2_4ddf:
    ei                                            ; $4ddf: $fb
    rst $38                                       ; $4de0: $ff
    ld [bc], a                                    ; $4de1: $02
    ld b, b                                       ; $4de2: $40
    adc h                                         ; $4de3: $8c
    ld a, [hl]                                    ; $4de4: $7e
    ld c, a                                       ; $4de5: $4f
    ld a, [hl]                                    ; $4de6: $7e
    ld d, a                                       ; $4de7: $57
    db $fd                                        ; $4de8: $fd
    ei                                            ; $4de9: $fb
    cp l                                          ; $4dea: $bd
    rst $38                                       ; $4deb: $ff
    cp e                                          ; $4dec: $bb
    rst $38                                       ; $4ded: $ff
    rst $18                                       ; $4dee: $df
    rst $38                                       ; $4def: $ff
    ld [bc], a                                    ; $4df0: $02
    dec a                                         ; $4df1: $3d
    ld [de], a                                    ; $4df2: $12
    nop                                           ; $4df3: $00
    ld [bc], a                                    ; $4df4: $02
    jr jr_0e2_4df9                                ; $4df5: $18 $02

    db $10                                        ; $4df7: $10
    add d                                         ; $4df8: $82

jr_0e2_4df9:
    ld [$0218], sp                                ; $4df9: $08 $18 $02
    ld e, $82                                     ; $4dfc: $1e $82
    add hl, de                                    ; $4dfe: $19
    rra                                           ; $4dff: $1f
    ld [bc], a                                    ; $4e00: $02
    ld e, $02                                     ; $4e01: $1e $02
    jr @+$12                                      ; $4e03: $18 $10

    nop                                           ; $4e05: $00
    rst $38                                       ; $4e06: $ff
    dec c                                         ; $4e07: $0d
    inc b                                         ; $4e08: $04
    ei                                            ; $4e09: $fb
    dec b                                         ; $4e0a: $05
    rst $30                                       ; $4e0b: $f7
    cp $eb                                        ; $4e0c: $fe $eb
    db $fc                                        ; $4e0e: $fc
    db $ec                                        ; $4e0f: $ec
    cp $fb                                        ; $4e10: $fe $fb
    ei                                            ; $4e12: $fb
    ei                                            ; $4e13: $fb
    cp $02                                        ; $4e14: $fe $02
    ld e, [hl]                                    ; $4e16: $5e
    ld [bc], a                                    ; $4e17: $02
    cp a                                          ; $4e18: $bf
    ld [bc], a                                    ; $4e19: $02
    ld a, a                                       ; $4e1a: $7f
    sbc d                                         ; $4e1b: $9a
    rst $38                                       ; $4e1c: $ff
    ld a, [$f0ff]                                 ; $4e1d: $fa $ff $f0
    rst $38                                       ; $4e20: $ff
    or $7f                                        ; $4e21: $f6 $7f
    ld d, b                                       ; $4e23: $50
    ccf                                           ; $4e24: $3f
    jr nc, jr_0e2_4e46                            ; $4e25: $30 $1f

    ld de, $f8ff                                  ; $4e27: $11 $ff $f8
    sbc a                                         ; $4e2a: $9f
    rst $38                                       ; $4e2b: $ff
    ld [hl], l                                    ; $4e2c: $75
    ld a, a                                       ; $4e2d: $7f
    ld h, $3f                                     ; $4e2e: $26 $3f
    dec h                                         ; $4e30: $25
    ccf                                           ; $4e31: $3f
    ld l, $3f                                     ; $4e32: $2e $3f
    ld [hl], $3f                                  ; $4e34: $36 $3f
    ld [bc], a                                    ; $4e36: $02
    ld [bc], a                                    ; $4e37: $02
    ld [bc], a                                    ; $4e38: $02
    inc bc                                        ; $4e39: $03
    ld b, $02                                     ; $4e3a: $06 $02
    add d                                         ; $4e3c: $82
    inc bc                                        ; $4e3d: $03
    ld bc, $0206                                  ; $4e3e: $01 $06 $02
    inc b                                         ; $4e41: $04
    nop                                           ; $4e42: $00
    ld [$8202], sp                                ; $4e43: $08 $02 $82

jr_0e2_4e46:
    jp z, $02fe                                   ; $4e46: $ca $fe $02

    jr nz, jr_0e2_4dd5                            ; $4e49: $20 $8a

    ccf                                           ; $4e4b: $3f
    ld a, $7f                                     ; $4e4c: $3e $7f
    ld a, l                                       ; $4e4e: $7d
    cp l                                          ; $4e4f: $bd
    rst $38                                       ; $4e50: $ff
    cp a                                          ; $4e51: $bf
    rst $38                                       ; $4e52: $ff
    ld a, h                                       ; $4e53: $7c
    ld a, a                                       ; $4e54: $7f
    ld [bc], a                                    ; $4e55: $02
    rra                                           ; $4e56: $1f
    inc d                                         ; $4e57: $14
    nop                                           ; $4e58: $00
    add d                                         ; $4e59: $82
    rlca                                          ; $4e5a: $07
    ld bc, $0702                                  ; $4e5b: $01 $02 $07
    add c                                         ; $4e5e: $81
    ld [bc], a                                    ; $4e5f: $02
    inc bc                                        ; $4e60: $03
    ld b, $81                                     ; $4e61: $06 $81
    ld [bc], a                                    ; $4e63: $02
    inc bc                                        ; $4e64: $03
    ld b, $12                                     ; $4e65: $06 $12
    nop                                           ; $4e67: $00
    rst $38                                       ; $4e68: $ff
    dec c                                         ; $4e69: $0d
    inc b                                         ; $4e6a: $04
    db $fc                                        ; $4e6b: $fc
    inc b                                         ; $4e6c: $04
    rst $30                                       ; $4e6d: $f7
    cp $ec                                        ; $4e6e: $fe $ec
    ld a, [$ffec]                                 ; $4e70: $fa $ec $ff
    db $fc                                        ; $4e73: $fc
    ei                                            ; $4e74: $fb
    db $fc                                        ; $4e75: $fc
    cp $02                                        ; $4e76: $fe $02
    rrca                                          ; $4e78: $0f
    adc b                                         ; $4e79: $88
    rra                                           ; $4e7a: $1f
    inc de                                        ; $4e7b: $13
    ccf                                           ; $4e7c: $3f
    jr nz, jr_0e2_4ebe                            ; $4e7d: $20 $3f

    jr nc, jr_0e2_4ec0                            ; $4e7f: $30 $3f

    ld a, [hl+]                                   ; $4e81: $2a
    ld [bc], a                                    ; $4e82: $02
    ccf                                           ; $4e83: $3f
    sub h                                         ; $4e84: $94
    rra                                           ; $4e85: $1f
    dec e                                         ; $4e86: $1d
    rra                                           ; $4e87: $1f
    dec e                                         ; $4e88: $1d
    rra                                           ; $4e89: $1f
    jr jr_0e2_4ebb                                ; $4e8a: $18 $2f

    jr c, jr_0e2_4eed                             ; $4e8c: $38 $5f

    ld a, b                                       ; $4e8e: $78
    ld e, a                                       ; $4e8f: $5f
    ld a, c                                       ; $4e90: $79
    ld e, a                                       ; $4e91: $5f
    ld a, a                                       ; $4e92: $7f
    sbc a                                         ; $4e93: $9f
    rst $38                                       ; $4e94: $ff
    sbc a                                         ; $4e95: $9f
    rst $38                                       ; $4e96: $ff
    cp a                                          ; $4e97: $bf
    rst $38                                       ; $4e98: $ff
    ld [bc], a                                    ; $4e99: $02
    db $10                                        ; $4e9a: $10
    adc d                                         ; $4e9b: $8a
    jr jr_0e2_4ea6                                ; $4e9c: $18 $08

    inc e                                         ; $4e9e: $1c
    inc b                                         ; $4e9f: $04
    inc e                                         ; $4ea0: $1c
    inc c                                         ; $4ea1: $0c
    inc e                                         ; $4ea2: $1c
    inc d                                         ; $4ea3: $14
    inc e                                         ; $4ea4: $1c
    inc c                                         ; $4ea5: $0c

jr_0e2_4ea6:
    ld b, $18                                     ; $4ea6: $06 $18
    adc [hl]                                      ; $4ea8: $8e
    inc d                                         ; $4ea9: $14
    inc e                                         ; $4eaa: $1c
    ld a, [de]                                    ; $4eab: $1a
    ld e, $1a                                     ; $4eac: $1e $1a
    ld e, $0a                                     ; $4eae: $1e $0a
    ld e, $09                                     ; $4eb0: $1e $09
    rra                                           ; $4eb2: $1f
    add hl, de                                    ; $4eb3: $19
    rra                                           ; $4eb4: $1f
    dec c                                         ; $4eb5: $0d
    rra                                           ; $4eb6: $1f
    ld [bc], a                                    ; $4eb7: $02
    cp a                                          ; $4eb8: $bf
    ld [bc], a                                    ; $4eb9: $02
    ld a, a                                       ; $4eba: $7f

jr_0e2_4ebb:
    ld [bc], a                                    ; $4ebb: $02
    rst $38                                       ; $4ebc: $ff
    add h                                         ; $4ebd: $84

jr_0e2_4ebe:
    rst $18                                       ; $4ebe: $df
    rst $38                                       ; $4ebf: $ff

jr_0e2_4ec0:
    ldh a, [rIE]                                  ; $4ec0: $f0 $ff
    ld [bc], a                                    ; $4ec2: $02
    ld a, a                                       ; $4ec3: $7f
    inc d                                         ; $4ec4: $14
    nop                                           ; $4ec5: $00
    ld [bc], a                                    ; $4ec6: $02
    dec b                                         ; $4ec7: $05
    add l                                         ; $4ec8: $85
    ld [bc], a                                    ; $4ec9: $02
    ld b, $05                                     ; $4eca: $06 $05
    rlca                                          ; $4ecc: $07
    inc bc                                        ; $4ecd: $03
    inc bc                                        ; $4ece: $03
    rlca                                          ; $4ecf: $07
    ld [bc], a                                    ; $4ed0: $02
    ld b, $14                                     ; $4ed1: $06 $14
    nop                                           ; $4ed3: $00
    rst $38                                       ; $4ed4: $ff
    dec c                                         ; $4ed5: $0d
    inc b                                         ; $4ed6: $04
    db $fc                                        ; $4ed7: $fc
    inc b                                         ; $4ed8: $04
    rst $30                                       ; $4ed9: $f7
    cp $ec                                        ; $4eda: $fe $ec
    ld a, [$ffec]                                 ; $4edc: $fa $ec $ff
    db $fc                                        ; $4edf: $fc
    ld a, [$fefc]                                 ; $4ee0: $fa $fc $fe
    ld [bc], a                                    ; $4ee3: $02
    rrca                                          ; $4ee4: $0f
    adc b                                         ; $4ee5: $88
    rra                                           ; $4ee6: $1f
    inc de                                        ; $4ee7: $13
    ccf                                           ; $4ee8: $3f
    jr nz, jr_0e2_4f2a                            ; $4ee9: $20 $3f

    jr nc, jr_0e2_4f2c                            ; $4eeb: $30 $3f

jr_0e2_4eed:
    ld a, [hl+]                                   ; $4eed: $2a
    ld [bc], a                                    ; $4eee: $02
    ccf                                           ; $4eef: $3f
    sub h                                         ; $4ef0: $94
    rra                                           ; $4ef1: $1f
    dec e                                         ; $4ef2: $1d
    rra                                           ; $4ef3: $1f
    dec e                                         ; $4ef4: $1d
    rra                                           ; $4ef5: $1f
    jr jr_0e2_4f37                                ; $4ef6: $18 $3f

    jr c, jr_0e2_4f59                             ; $4ef8: $38 $5f

    ld a, b                                       ; $4efa: $78
    ld e, a                                       ; $4efb: $5f
    ld a, l                                       ; $4efc: $7d
    sbc a                                         ; $4efd: $9f
    rst $38                                       ; $4efe: $ff
    sbc a                                         ; $4eff: $9f
    rst $38                                       ; $4f00: $ff
    cp a                                          ; $4f01: $bf
    rst $38                                       ; $4f02: $ff
    cp a                                          ; $4f03: $bf
    rst $38                                       ; $4f04: $ff
    ld [bc], a                                    ; $4f05: $02
    db $10                                        ; $4f06: $10
    adc d                                         ; $4f07: $8a
    jr jr_0e2_4f12                                ; $4f08: $18 $08

    inc e                                         ; $4f0a: $1c
    inc b                                         ; $4f0b: $04
    inc e                                         ; $4f0c: $1c
    inc c                                         ; $4f0d: $0c
    inc e                                         ; $4f0e: $1c
    inc d                                         ; $4f0f: $14
    inc e                                         ; $4f10: $1c
    inc c                                         ; $4f11: $0c

jr_0e2_4f12:
    ld b, $18                                     ; $4f12: $06 $18
    sub b                                         ; $4f14: $90
    inc d                                         ; $4f15: $14
    inc e                                         ; $4f16: $1c
    ld a, [de]                                    ; $4f17: $1a
    ld e, $1a                                     ; $4f18: $1e $1a
    ld e, $09                                     ; $4f1a: $1e $09
    rra                                           ; $4f1c: $1f
    add hl, bc                                    ; $4f1d: $09
    rra                                           ; $4f1e: $1f
    dec e                                         ; $4f1f: $1d
    rra                                           ; $4f20: $1f
    ld c, $1e                                     ; $4f21: $0e $1e
    cp a                                          ; $4f23: $bf
    rst $38                                       ; $4f24: $ff
    ld [bc], a                                    ; $4f25: $02
    ld a, a                                       ; $4f26: $7f
    inc b                                         ; $4f27: $04
    ccf                                           ; $4f28: $3f
    add d                                         ; $4f29: $82

jr_0e2_4f2a:
    ld a, $3f                                     ; $4f2a: $3e $3f

jr_0e2_4f2c:
    ld [bc], a                                    ; $4f2c: $02
    rrca                                          ; $4f2d: $0f
    inc d                                         ; $4f2e: $14
    nop                                           ; $4f2f: $00
    adc d                                         ; $4f30: $8a
    ld a, [bc]                                    ; $4f31: $0a
    ld c, $0a                                     ; $4f32: $0e $0a
    ld c, $0d                                     ; $4f34: $0e $0d
    rrca                                          ; $4f36: $0f

jr_0e2_4f37:
    dec bc                                        ; $4f37: $0b
    rrca                                          ; $4f38: $0f
    rlca                                          ; $4f39: $07
    rrca                                          ; $4f3a: $0f
    ld [bc], a                                    ; $4f3b: $02
    ld c, $14                                     ; $4f3c: $0e $14
    nop                                           ; $4f3e: $00
    rst $38                                       ; $4f3f: $ff
    dec c                                         ; $4f40: $0d
    inc b                                         ; $4f41: $04
    db $fc                                        ; $4f42: $fc
    inc b                                         ; $4f43: $04
    rst $30                                       ; $4f44: $f7
    cp $ed                                        ; $4f45: $fe $ed
    ld a, [$ffed]                                 ; $4f47: $fa $ed $ff
    db $fd                                        ; $4f4a: $fd
    ei                                            ; $4f4b: $fb
    db $fd                                        ; $4f4c: $fd
    cp $02                                        ; $4f4d: $fe $02
    rrca                                          ; $4f4f: $0f
    adc b                                         ; $4f50: $88
    rra                                           ; $4f51: $1f
    inc de                                        ; $4f52: $13
    ccf                                           ; $4f53: $3f
    jr nz, jr_0e2_4f95                            ; $4f54: $20 $3f

    jr nc, jr_0e2_4f97                            ; $4f56: $30 $3f

    ld a, [hl+]                                   ; $4f58: $2a

jr_0e2_4f59:
    ld [bc], a                                    ; $4f59: $02
    ccf                                           ; $4f5a: $3f
    sub h                                         ; $4f5b: $94
    rra                                           ; $4f5c: $1f
    dec e                                         ; $4f5d: $1d
    rra                                           ; $4f5e: $1f
    add hl, de                                    ; $4f5f: $19
    rra                                           ; $4f60: $1f
    jr jr_0e2_4fa2                                ; $4f61: $18 $3f

    jr c, jr_0e2_4fc4                             ; $4f63: $38 $5f

    ld a, c                                       ; $4f65: $79
    ld e, a                                       ; $4f66: $5f
    ld a, a                                       ; $4f67: $7f
    sbc a                                         ; $4f68: $9f
    rst $38                                       ; $4f69: $ff
    sbc a                                         ; $4f6a: $9f
    rst $38                                       ; $4f6b: $ff
    cp a                                          ; $4f6c: $bf
    rst $38                                       ; $4f6d: $ff
    cp a                                          ; $4f6e: $bf
    rst $38                                       ; $4f6f: $ff
    ld [bc], a                                    ; $4f70: $02
    db $10                                        ; $4f71: $10
    adc d                                         ; $4f72: $8a
    jr jr_0e2_4f7d                                ; $4f73: $18 $08

    inc e                                         ; $4f75: $1c
    inc b                                         ; $4f76: $04
    inc e                                         ; $4f77: $1c
    inc c                                         ; $4f78: $0c
    inc e                                         ; $4f79: $1c
    inc d                                         ; $4f7a: $14
    inc e                                         ; $4f7b: $1c
    inc c                                         ; $4f7c: $0c

jr_0e2_4f7d:
    ld b, $18                                     ; $4f7d: $06 $18
    adc [hl]                                      ; $4f7f: $8e
    inc d                                         ; $4f80: $14
    inc e                                         ; $4f81: $1c
    ld a, [de]                                    ; $4f82: $1a
    ld e, $1a                                     ; $4f83: $1e $1a
    ld e, $0a                                     ; $4f85: $1e $0a
    ld e, $09                                     ; $4f87: $1e $09
    rra                                           ; $4f89: $1f
    add hl, de                                    ; $4f8a: $19
    rra                                           ; $4f8b: $1f
    dec c                                         ; $4f8c: $0d
    rra                                           ; $4f8d: $1f
    ld [bc], a                                    ; $4f8e: $02
    rst $38                                       ; $4f8f: $ff
    add c                                         ; $4f90: $81
    rst $30                                       ; $4f91: $f7
    inc bc                                        ; $4f92: $03
    rst $38                                       ; $4f93: $ff
    ld [bc], a                                    ; $4f94: $02

jr_0e2_4f95:
    ld a, a                                       ; $4f95: $7f
    ld [bc], a                                    ; $4f96: $02

jr_0e2_4f97:
    rra                                           ; $4f97: $1f
    ld d, $00                                     ; $4f98: $16 $00
    add e                                         ; $4f9a: $83
    inc bc                                        ; $4f9b: $03
    rlca                                          ; $4f9c: $07
    ld [bc], a                                    ; $4f9d: $02
    dec b                                         ; $4f9e: $05
    ld b, $02                                     ; $4f9f: $06 $02
    inc b                                         ; $4fa1: $04

jr_0e2_4fa2:
    ld d, $00                                     ; $4fa2: $16 $00
    rst $38                                       ; $4fa4: $ff
    dec c                                         ; $4fa5: $0d
    inc b                                         ; $4fa6: $04
    db $fc                                        ; $4fa7: $fc
    inc b                                         ; $4fa8: $04
    rst $30                                       ; $4fa9: $f7
    cp $ec                                        ; $4faa: $fe $ec
    ld a, [$ffec]                                 ; $4fac: $fa $ec $ff
    db $fc                                        ; $4faf: $fc
    ei                                            ; $4fb0: $fb
    db $fc                                        ; $4fb1: $fc
    rst $38                                       ; $4fb2: $ff
    ld [bc], a                                    ; $4fb3: $02
    rrca                                          ; $4fb4: $0f
    adc b                                         ; $4fb5: $88
    rra                                           ; $4fb6: $1f
    inc de                                        ; $4fb7: $13
    ccf                                           ; $4fb8: $3f
    jr nz, jr_0e2_4ffa                            ; $4fb9: $20 $3f

    jr nc, jr_0e2_4ffc                            ; $4fbb: $30 $3f

    ld a, [hl+]                                   ; $4fbd: $2a
    ld [bc], a                                    ; $4fbe: $02
    ccf                                           ; $4fbf: $3f
    sub d                                         ; $4fc0: $92
    rra                                           ; $4fc1: $1f
    dec e                                         ; $4fc2: $1d
    rra                                           ; $4fc3: $1f

jr_0e2_4fc4:
    dec e                                         ; $4fc4: $1d
    rra                                           ; $4fc5: $1f
    jr jr_0e2_5007                                ; $4fc6: $18 $3f

    jr c, jr_0e2_5029                             ; $4fc8: $38 $5f

    ld a, b                                       ; $4fca: $78
    ld e, a                                       ; $4fcb: $5f
    ld a, l                                       ; $4fcc: $7d
    sbc a                                         ; $4fcd: $9f
    rst $38                                       ; $4fce: $ff
    sbc a                                         ; $4fcf: $9f
    rst $38                                       ; $4fd0: $ff
    cp a                                          ; $4fd1: $bf
    rst $38                                       ; $4fd2: $ff
    ld [bc], a                                    ; $4fd3: $02
    ld a, a                                       ; $4fd4: $7f
    ld [bc], a                                    ; $4fd5: $02
    db $10                                        ; $4fd6: $10
    adc d                                         ; $4fd7: $8a
    jr jr_0e2_4fe2                                ; $4fd8: $18 $08

    inc e                                         ; $4fda: $1c
    inc b                                         ; $4fdb: $04
    inc e                                         ; $4fdc: $1c
    inc c                                         ; $4fdd: $0c
    inc e                                         ; $4fde: $1c
    inc d                                         ; $4fdf: $14
    inc e                                         ; $4fe0: $1c
    inc c                                         ; $4fe1: $0c

jr_0e2_4fe2:
    ld b, $18                                     ; $4fe2: $06 $18
    adc [hl]                                      ; $4fe4: $8e
    inc d                                         ; $4fe5: $14
    inc e                                         ; $4fe6: $1c
    ld a, [de]                                    ; $4fe7: $1a
    ld e, $1a                                     ; $4fe8: $1e $1a
    ld e, $09                                     ; $4fea: $1e $09
    rra                                           ; $4fec: $1f
    add hl, bc                                    ; $4fed: $09
    rra                                           ; $4fee: $1f
    dec e                                         ; $4fef: $1d
    rra                                           ; $4ff0: $1f
    dec c                                         ; $4ff1: $0d
    rra                                           ; $4ff2: $1f
    ld [bc], a                                    ; $4ff3: $02
    ld a, a                                       ; $4ff4: $7f
    add e                                         ; $4ff5: $83
    ld [hl], a                                    ; $4ff6: $77
    ld a, a                                       ; $4ff7: $7f
    rst $30                                       ; $4ff8: $f7
    inc bc                                        ; $4ff9: $03

jr_0e2_4ffa:
    rst $38                                       ; $4ffa: $ff
    add d                                         ; $4ffb: $82

jr_0e2_4ffc:
    rst $20                                       ; $4ffc: $e7
    rst $38                                       ; $4ffd: $ff
    ld [bc], a                                    ; $4ffe: $02
    ld a, a                                       ; $4fff: $7f
    inc d                                         ; $5000: $14
    nop                                           ; $5001: $00
    add h                                         ; $5002: $84
    dec c                                         ; $5003: $0d
    rrca                                          ; $5004: $0f
    ld b, $0e                                     ; $5005: $06 $0e

jr_0e2_5007:
    ld b, $0c                                     ; $5007: $06 $0c
    ld d, $00                                     ; $5009: $16 $00
    rst $38                                       ; $500b: $ff
    dec c                                         ; $500c: $0d
    inc b                                         ; $500d: $04
    db $fc                                        ; $500e: $fc
    inc b                                         ; $500f: $04
    rst $30                                       ; $5010: $f7
    cp $ed                                        ; $5011: $fe $ed
    ld a, [$ffed]                                 ; $5013: $fa $ed $ff
    db $fd                                        ; $5016: $fd
    ei                                            ; $5017: $fb
    db $fd                                        ; $5018: $fd
    cp $02                                        ; $5019: $fe $02
    rrca                                          ; $501b: $0f
    adc b                                         ; $501c: $88
    rra                                           ; $501d: $1f
    inc de                                        ; $501e: $13
    ccf                                           ; $501f: $3f
    jr nz, @+$41                                  ; $5020: $20 $3f

    jr nc, jr_0e2_5063                            ; $5022: $30 $3f

    ld a, [hl+]                                   ; $5024: $2a
    ld [bc], a                                    ; $5025: $02
    ccf                                           ; $5026: $3f
    sub h                                         ; $5027: $94
    rra                                           ; $5028: $1f

jr_0e2_5029:
    dec e                                         ; $5029: $1d
    rra                                           ; $502a: $1f
    inc e                                         ; $502b: $1c
    rra                                           ; $502c: $1f
    jr jr_0e2_506e                                ; $502d: $18 $3f

    jr c, jr_0e2_5090                             ; $502f: $38 $5f

    ld a, h                                       ; $5031: $7c
    ld e, a                                       ; $5032: $5f
    ld a, a                                       ; $5033: $7f
    ld e, a                                       ; $5034: $5f
    ld a, a                                       ; $5035: $7f
    sbc a                                         ; $5036: $9f
    rst $38                                       ; $5037: $ff
    sbc a                                         ; $5038: $9f
    rst $38                                       ; $5039: $ff
    cp a                                          ; $503a: $bf
    rst $38                                       ; $503b: $ff

jr_0e2_503c:
    ld [bc], a                                    ; $503c: $02
    db $10                                        ; $503d: $10
    adc d                                         ; $503e: $8a
    jr jr_0e2_5049                                ; $503f: $18 $08

    inc e                                         ; $5041: $1c
    inc b                                         ; $5042: $04
    inc e                                         ; $5043: $1c
    inc c                                         ; $5044: $0c
    inc e                                         ; $5045: $1c
    inc d                                         ; $5046: $14
    inc e                                         ; $5047: $1c
    inc c                                         ; $5048: $0c

jr_0e2_5049:
    ld b, $18                                     ; $5049: $06 $18
    adc [hl]                                      ; $504b: $8e
    inc d                                         ; $504c: $14
    inc e                                         ; $504d: $1c
    ld a, [de]                                    ; $504e: $1a
    ld e, $1a                                     ; $504f: $1e $1a
    ld e, $09                                     ; $5051: $1e $09
    rra                                           ; $5053: $1f
    add hl, bc                                    ; $5054: $09
    rra                                           ; $5055: $1f
    dec e                                         ; $5056: $1d
    rra                                           ; $5057: $1f
    dec c                                         ; $5058: $0d
    rra                                           ; $5059: $1f
    ld [bc], a                                    ; $505a: $02
    rst $38                                       ; $505b: $ff
    ld b, $7f                                     ; $505c: $06 $7f
    ld [bc], a                                    ; $505e: $02
    ccf                                           ; $505f: $3f
    ld d, $00                                     ; $5060: $16 $00
    add e                                         ; $5062: $83

jr_0e2_5063:
    inc bc                                        ; $5063: $03
    rlca                                          ; $5064: $07
    dec b                                         ; $5065: $05
    inc bc                                        ; $5066: $03
    rlca                                          ; $5067: $07
    ld [bc], a                                    ; $5068: $02
    ld b, $18                                     ; $5069: $06 $18
    nop                                           ; $506b: $00
    rst $38                                       ; $506c: $ff
    dec c                                         ; $506d: $0d

jr_0e2_506e:
    inc b                                         ; $506e: $04
    db $fc                                        ; $506f: $fc
    inc b                                         ; $5070: $04
    rst $30                                       ; $5071: $f7
    cp $ec                                        ; $5072: $fe $ec
    ld a, [$ffec]                                 ; $5074: $fa $ec $ff
    db $fc                                        ; $5077: $fc
    ei                                            ; $5078: $fb
    db $fc                                        ; $5079: $fc
    cp $02                                        ; $507a: $fe $02
    rrca                                          ; $507c: $0f
    adc [hl]                                      ; $507d: $8e
    rra                                           ; $507e: $1f
    inc de                                        ; $507f: $13
    ccf                                           ; $5080: $3f
    jr z, jr_0e2_50c2                             ; $5081: $28 $3f

    dec a                                         ; $5083: $3d
    ccf                                           ; $5084: $3f
    jr nc, jr_0e2_50c6                            ; $5085: $30 $3f

    ld [hl+], a                                   ; $5087: $22
    rra                                           ; $5088: $1f
    dec d                                         ; $5089: $15
    rrca                                          ; $508a: $0f
    ld a, [bc]                                    ; $508b: $0a
    ld [bc], a                                    ; $508c: $02
    rra                                           ; $508d: $1f
    adc [hl]                                      ; $508e: $8e
    ld a, [hl+]                                   ; $508f: $2a

jr_0e2_5090:
    ccf                                           ; $5090: $3f
    ld e, l                                       ; $5091: $5d
    ld a, a                                       ; $5092: $7f
    ld e, d                                       ; $5093: $5a
    ld a, a                                       ; $5094: $7f
    ld e, l                                       ; $5095: $5d
    ld a, a                                       ; $5096: $7f
    cp l                                          ; $5097: $bd
    rst $38                                       ; $5098: $ff
    jp c, $faff                                   ; $5099: $da $ff $fa

    cp a                                          ; $509c: $bf
    ld [bc], a                                    ; $509d: $02
    db $10                                        ; $509e: $10
    add h                                         ; $509f: $84
    jr jr_0e2_50aa                                ; $50a0: $18 $08

    inc e                                         ; $50a2: $1c
    inc d                                         ; $50a3: $14
    inc bc                                        ; $50a4: $03
    inc e                                         ; $50a5: $1c
    add l                                         ; $50a6: $85
    inc c                                         ; $50a7: $0c
    inc e                                         ; $50a8: $1c
    inc b                                         ; $50a9: $04

jr_0e2_50aa:
    jr jr_0e2_50b4                                ; $50aa: $18 $08

    ld [bc], a                                    ; $50ac: $02
    db $10                                        ; $50ad: $10
    ld [bc], a                                    ; $50ae: $02
    jr jr_0e2_503c                                ; $50af: $18 $8b

    inc d                                         ; $50b1: $14
    inc e                                         ; $50b2: $1c
    ld a, [de]                                    ; $50b3: $1a

jr_0e2_50b4:
    ld e, $1a                                     ; $50b4: $1e $1a
    ld e, $1a                                     ; $50b6: $1e $1a
    ld e, $1d                                     ; $50b8: $1e $1d
    rra                                           ; $50ba: $1f
    dec de                                        ; $50bb: $1b
    ld [bc], a                                    ; $50bc: $02
    rra                                           ; $50bd: $1f
    add a                                         ; $50be: $87
    dec e                                         ; $50bf: $1d
    push af                                       ; $50c0: $f5
    cp a                                          ; $50c1: $bf

jr_0e2_50c2:
    ld [hl], l                                    ; $50c2: $75
    ld e, a                                       ; $50c3: $5f
    xor $ff                                       ; $50c4: $ee $ff

jr_0e2_50c6:
    ld [bc], a                                    ; $50c6: $02
    ld a, a                                       ; $50c7: $7f
    add d                                         ; $50c8: $82
    ld a, [hl+]                                   ; $50c9: $2a
    dec sp                                        ; $50ca: $3b
    ld [bc], a                                    ; $50cb: $02
    ld sp, $0014                                  ; $50cc: $31 $14 $00
    ld [bc], a                                    ; $50cf: $02
    dec b                                         ; $50d0: $05
    ld [bc], a                                    ; $50d1: $02
    ld b, $82                                     ; $50d2: $06 $82
    dec b                                         ; $50d4: $05
    rlca                                          ; $50d5: $07
    ld [bc], a                                    ; $50d6: $02
    ld b, $04                                     ; $50d7: $06 $04
    inc b                                         ; $50d9: $04
    inc d                                         ; $50da: $14
    nop                                           ; $50db: $00
    rst $38                                       ; $50dc: $ff
    dec c                                         ; $50dd: $0d
    inc b                                         ; $50de: $04
    db $fc                                        ; $50df: $fc
    inc b                                         ; $50e0: $04
    rst $30                                       ; $50e1: $f7
    cp $ec                                        ; $50e2: $fe $ec
    ld a, [$ffec]                                 ; $50e4: $fa $ec $ff
    db $fc                                        ; $50e7: $fc
    ei                                            ; $50e8: $fb
    db $fc                                        ; $50e9: $fc
    db $fd                                        ; $50ea: $fd
    ld [bc], a                                    ; $50eb: $02
    rrca                                          ; $50ec: $0f
    adc [hl]                                      ; $50ed: $8e
    rra                                           ; $50ee: $1f
    inc de                                        ; $50ef: $13
    ccf                                           ; $50f0: $3f
    jr z, jr_0e2_5132                             ; $50f1: $28 $3f

    dec a                                         ; $50f3: $3d
    ccf                                           ; $50f4: $3f
    jr nc, jr_0e2_5136                            ; $50f5: $30 $3f

    ld [hl+], a                                   ; $50f7: $22
    rra                                           ; $50f8: $1f
    dec d                                         ; $50f9: $15
    rrca                                          ; $50fa: $0f
    ld a, [bc]                                    ; $50fb: $0a
    ld [bc], a                                    ; $50fc: $02
    rra                                           ; $50fd: $1f
    adc [hl]                                      ; $50fe: $8e
    ld a, [hl-]                                   ; $50ff: $3a
    ccf                                           ; $5100: $3f
    ld e, l                                       ; $5101: $5d
    ld a, a                                       ; $5102: $7f
    ld e, d                                       ; $5103: $5a
    ld a, a                                       ; $5104: $7f
    ld a, l                                       ; $5105: $7d
    ld a, a                                       ; $5106: $7f
    sbc l                                         ; $5107: $9d
    rst $38                                       ; $5108: $ff
    cp c                                          ; $5109: $b9
    rst $18                                       ; $510a: $df
    ld a, [$02c7]                                 ; $510b: $fa $c7 $02
    db $10                                        ; $510e: $10
    add h                                         ; $510f: $84
    jr jr_0e2_511a                                ; $5110: $18 $08

    inc e                                         ; $5112: $1c
    inc d                                         ; $5113: $14
    inc bc                                        ; $5114: $03
    inc e                                         ; $5115: $1c
    add l                                         ; $5116: $85
    inc c                                         ; $5117: $0c
    inc e                                         ; $5118: $1c
    inc b                                         ; $5119: $04

jr_0e2_511a:
    jr jr_0e2_5124                                ; $511a: $18 $08

    ld [bc], a                                    ; $511c: $02
    db $10                                        ; $511d: $10
    ld [bc], a                                    ; $511e: $02
    jr jr_0e2_50aa                                ; $511f: $18 $89

    inc d                                         ; $5121: $14
    inc e                                         ; $5122: $1c
    ld a, [de]                                    ; $5123: $1a

jr_0e2_5124:
    ld e, $1a                                     ; $5124: $1e $1a
    ld e, $1d                                     ; $5126: $1e $1d
    rra                                           ; $5128: $1f
    add hl, de                                    ; $5129: $19
    ld [bc], a                                    ; $512a: $02
    rra                                           ; $512b: $1f
    add c                                         ; $512c: $81
    dec e                                         ; $512d: $1d
    ld [bc], a                                    ; $512e: $02
    ld a, [de]                                    ; $512f: $1a
    add h                                         ; $5130: $84
    db $ed                                        ; $5131: $ed

jr_0e2_5132:
    rst $38                                       ; $5132: $ff
    ld l, [hl]                                    ; $5133: $6e
    ld a, a                                       ; $5134: $7f
    ld [bc], a                                    ; $5135: $02

jr_0e2_5136:
    rst $38                                       ; $5136: $ff
    add d                                         ; $5137: $82
    ld a, [hl]                                    ; $5138: $7e
    ld a, a                                       ; $5139: $7f
    ld [bc], a                                    ; $513a: $02
    scf                                           ; $513b: $37
    ld [bc], a                                    ; $513c: $02
    inc bc                                        ; $513d: $03
    inc d                                         ; $513e: $14
    nop                                           ; $513f: $00
    inc b                                         ; $5140: $04
    ld [bc], a                                    ; $5141: $02
    inc b                                         ; $5142: $04
    inc bc                                        ; $5143: $03
    ld [bc], a                                    ; $5144: $02
    ld [bc], a                                    ; $5145: $02
    ld d, $00                                     ; $5146: $16 $00
    rst $38                                       ; $5148: $ff
    dec c                                         ; $5149: $0d
    inc b                                         ; $514a: $04
    db $fc                                        ; $514b: $fc
    inc b                                         ; $514c: $04
    rst $30                                       ; $514d: $f7
    cp $ed                                        ; $514e: $fe $ed
    ld a, [$ffed]                                 ; $5150: $fa $ed $ff
    db $fd                                        ; $5153: $fd
    ei                                            ; $5154: $fb
    db $fd                                        ; $5155: $fd
    cp $02                                        ; $5156: $fe $02
    rrca                                          ; $5158: $0f
    adc [hl]                                      ; $5159: $8e
    rra                                           ; $515a: $1f
    inc de                                        ; $515b: $13
    ccf                                           ; $515c: $3f
    jr z, jr_0e2_519e                             ; $515d: $28 $3f

    dec a                                         ; $515f: $3d
    ccf                                           ; $5160: $3f
    jr nc, jr_0e2_51a2                            ; $5161: $30 $3f

    ld [hl+], a                                   ; $5163: $22
    rra                                           ; $5164: $1f
    dec d                                         ; $5165: $15
    rrca                                          ; $5166: $0f
    ld a, [bc]                                    ; $5167: $0a
    ld [bc], a                                    ; $5168: $02
    rra                                           ; $5169: $1f
    adc [hl]                                      ; $516a: $8e
    ld a, [hl+]                                   ; $516b: $2a
    ccf                                           ; $516c: $3f
    ld e, l                                       ; $516d: $5d
    ld a, a                                       ; $516e: $7f
    ld e, d                                       ; $516f: $5a
    ld a, a                                       ; $5170: $7f
    sbc l                                         ; $5171: $9d
    rst $38                                       ; $5172: $ff
    cp l                                          ; $5173: $bd
    rst $38                                       ; $5174: $ff
    db $dd                                        ; $5175: $dd
    rst $38                                       ; $5176: $ff
    db $fc                                        ; $5177: $fc
    cp a                                          ; $5178: $bf
    ld [bc], a                                    ; $5179: $02
    db $10                                        ; $517a: $10
    add h                                         ; $517b: $84
    jr jr_0e2_5186                                ; $517c: $18 $08

    inc e                                         ; $517e: $1c
    inc d                                         ; $517f: $14
    inc bc                                        ; $5180: $03
    inc e                                         ; $5181: $1c
    add l                                         ; $5182: $85
    inc c                                         ; $5183: $0c
    inc e                                         ; $5184: $1c
    inc b                                         ; $5185: $04

jr_0e2_5186:
    jr jr_0e2_5190                                ; $5186: $18 $08

    ld [bc], a                                    ; $5188: $02
    db $10                                        ; $5189: $10
    ld [bc], a                                    ; $518a: $02
    jr jr_0e2_518f                                ; $518b: $18 $02

    inc e                                         ; $518d: $1c
    adc c                                         ; $518e: $89

jr_0e2_518f:
    ld a, [de]                                    ; $518f: $1a

jr_0e2_5190:
    ld e, $1a                                     ; $5190: $1e $1a
    ld e, $19                                     ; $5192: $1e $19
    rra                                           ; $5194: $1f
    dec e                                         ; $5195: $1d
    rra                                           ; $5196: $1f
    dec de                                        ; $5197: $1b
    ld [bc], a                                    ; $5198: $02
    rra                                           ; $5199: $1f
    adc c                                         ; $519a: $89
    dec e                                         ; $519b: $1d
    push af                                       ; $519c: $f5
    cp a                                          ; $519d: $bf

jr_0e2_519e:
    and $df                                       ; $519e: $e6 $df
    ld l, a                                       ; $51a0: $6f
    ld a, a                                       ; $51a1: $7f

jr_0e2_51a2:
    ld a, [hl-]                                   ; $51a2: $3a
    dec sp                                        ; $51a3: $3b
    ld [bc], a                                    ; $51a4: $02
    ld bc, $0016                                  ; $51a5: $01 $16 $00
    ld [bc], a                                    ; $51a8: $02
    dec b                                         ; $51a9: $05
    ld [bc], a                                    ; $51aa: $02
    rlca                                          ; $51ab: $07
    ld [bc], a                                    ; $51ac: $02
    ld b, $02                                     ; $51ad: $06 $02
    inc b                                         ; $51af: $04
    jr jr_0e2_51b2                                ; $51b0: $18 $00

jr_0e2_51b2:
    rst $38                                       ; $51b2: $ff
    dec c                                         ; $51b3: $0d
    inc b                                         ; $51b4: $04
    db $fc                                        ; $51b5: $fc
    inc b                                         ; $51b6: $04
    rst $30                                       ; $51b7: $f7
    cp $ec                                        ; $51b8: $fe $ec
    ld a, [$ffec]                                 ; $51ba: $fa $ec $ff
    db $fc                                        ; $51bd: $fc
    ld a, [$fefc]                                 ; $51be: $fa $fc $fe
    ld [bc], a                                    ; $51c1: $02
    rrca                                          ; $51c2: $0f
    adc [hl]                                      ; $51c3: $8e
    rra                                           ; $51c4: $1f
    inc de                                        ; $51c5: $13
    ccf                                           ; $51c6: $3f
    jr z, jr_0e2_5208                             ; $51c7: $28 $3f

    dec a                                         ; $51c9: $3d
    ccf                                           ; $51ca: $3f
    jr nc, jr_0e2_520c                            ; $51cb: $30 $3f

    ld [hl+], a                                   ; $51cd: $22
    rra                                           ; $51ce: $1f
    dec d                                         ; $51cf: $15
    rrca                                          ; $51d0: $0f
    ld a, [bc]                                    ; $51d1: $0a
    ld [bc], a                                    ; $51d2: $02
    rra                                           ; $51d3: $1f
    adc [hl]                                      ; $51d4: $8e
    ld a, [hl+]                                   ; $51d5: $2a
    ccf                                           ; $51d6: $3f
    ld e, l                                       ; $51d7: $5d
    ld a, a                                       ; $51d8: $7f
    ld e, d                                       ; $51d9: $5a
    ld a, a                                       ; $51da: $7f
    cp l                                          ; $51db: $bd
    rst $38                                       ; $51dc: $ff
    sbc l                                         ; $51dd: $9d
    rst $38                                       ; $51de: $ff
    db $fc                                        ; $51df: $fc
    rst $38                                       ; $51e0: $ff
    ld a, [$02bf]                                 ; $51e1: $fa $bf $02
    db $10                                        ; $51e4: $10
    add h                                         ; $51e5: $84
    jr jr_0e2_51f0                                ; $51e6: $18 $08

    inc e                                         ; $51e8: $1c
    inc d                                         ; $51e9: $14
    inc bc                                        ; $51ea: $03
    inc e                                         ; $51eb: $1c
    add l                                         ; $51ec: $85
    inc c                                         ; $51ed: $0c
    inc e                                         ; $51ee: $1c
    inc b                                         ; $51ef: $04

jr_0e2_51f0:
    jr jr_0e2_51fa                                ; $51f0: $18 $08

    ld [bc], a                                    ; $51f2: $02
    db $10                                        ; $51f3: $10
    ld [bc], a                                    ; $51f4: $02
    jr jr_0e2_51f9                                ; $51f5: $18 $02

    inc e                                         ; $51f7: $1c
    add e                                         ; $51f8: $83

jr_0e2_51f9:
    ld a, [de]                                    ; $51f9: $1a

jr_0e2_51fa:
    ld e, $1a                                     ; $51fa: $1e $1a
    inc bc                                        ; $51fc: $03
    ld e, $8a                                     ; $51fd: $1e $8a
    add hl, de                                    ; $51ff: $19
    rra                                           ; $5200: $1f
    dec e                                         ; $5201: $1d
    dec de                                        ; $5202: $1b
    rra                                           ; $5203: $1f
    dec de                                        ; $5204: $1b
    ei                                            ; $5205: $fb
    cp a                                          ; $5206: $bf
    ld d, a                                       ; $5207: $57

jr_0e2_5208:
    ld e, a                                       ; $5208: $5f
    ld [bc], a                                    ; $5209: $02
    ccf                                           ; $520a: $3f
    add d                                         ; $520b: $82

jr_0e2_520c:
    scf                                           ; $520c: $37
    ccf                                           ; $520d: $3f
    ld [bc], a                                    ; $520e: $02
    ld e, $02                                     ; $520f: $1e $02
    inc c                                         ; $5211: $0c
    inc d                                         ; $5212: $14
    nop                                           ; $5213: $00
    add h                                         ; $5214: $84
    rlca                                          ; $5215: $07
    rrca                                          ; $5216: $0f
    ld b, $0e                                     ; $5217: $06 $0e
    ld [bc], a                                    ; $5219: $02
    rrca                                          ; $521a: $0f
    ld [bc], a                                    ; $521b: $02
    ld c, $02                                     ; $521c: $0e $02
    inc c                                         ; $521e: $0c
    ld d, $00                                     ; $521f: $16 $00
    rst $38                                       ; $5221: $ff
    dec c                                         ; $5222: $0d
    inc b                                         ; $5223: $04
    ld sp, hl                                     ; $5224: $f9
    inc b                                         ; $5225: $04
    rst $30                                       ; $5226: $f7
    cp $ed                                        ; $5227: $fe $ed
    ld a, [$ffed]                                 ; $5229: $fa $ed $ff
    db $fd                                        ; $522c: $fd
    ei                                            ; $522d: $fb
    db $fd                                        ; $522e: $fd
    cp $02                                        ; $522f: $fe $02
    rrca                                          ; $5231: $0f
    adc [hl]                                      ; $5232: $8e
    rra                                           ; $5233: $1f
    inc de                                        ; $5234: $13
    ccf                                           ; $5235: $3f
    jr z, jr_0e2_5277                             ; $5236: $28 $3f

    dec a                                         ; $5238: $3d
    ccf                                           ; $5239: $3f
    jr nc, jr_0e2_527b                            ; $523a: $30 $3f

    ld [hl+], a                                   ; $523c: $22
    rra                                           ; $523d: $1f
    dec d                                         ; $523e: $15
    rrca                                          ; $523f: $0f
    ld a, [bc]                                    ; $5240: $0a
    ld [bc], a                                    ; $5241: $02
    rra                                           ; $5242: $1f
    adc [hl]                                      ; $5243: $8e
    ld a, [hl-]                                   ; $5244: $3a
    ccf                                           ; $5245: $3f
    ld e, l                                       ; $5246: $5d
    ld a, a                                       ; $5247: $7f
    ld e, d                                       ; $5248: $5a
    ld a, a                                       ; $5249: $7f
    sbc l                                         ; $524a: $9d
    rst $38                                       ; $524b: $ff
    cp l                                          ; $524c: $bd
    rst $38                                       ; $524d: $ff
    db $dd                                        ; $524e: $dd
    rst $38                                       ; $524f: $ff
    ld sp, hl                                     ; $5250: $f9
    cp a                                          ; $5251: $bf
    ld [bc], a                                    ; $5252: $02
    db $10                                        ; $5253: $10
    add h                                         ; $5254: $84
    jr jr_0e2_525f                                ; $5255: $18 $08

    inc e                                         ; $5257: $1c
    inc d                                         ; $5258: $14
    inc bc                                        ; $5259: $03
    inc e                                         ; $525a: $1c
    add l                                         ; $525b: $85
    inc c                                         ; $525c: $0c
    inc e                                         ; $525d: $1c
    inc b                                         ; $525e: $04

jr_0e2_525f:
    jr jr_0e2_5269                                ; $525f: $18 $08

    ld [bc], a                                    ; $5261: $02
    db $10                                        ; $5262: $10
    ld [bc], a                                    ; $5263: $02
    jr @-$73                                      ; $5264: $18 $8b

    inc d                                         ; $5266: $14
    inc e                                         ; $5267: $1c
    ld a, [de]                                    ; $5268: $1a

jr_0e2_5269:
    ld e, $1a                                     ; $5269: $1e $1a
    ld e, $19                                     ; $526b: $1e $19
    rra                                           ; $526d: $1f
    dec e                                         ; $526e: $1d
    rra                                           ; $526f: $1f
    dec de                                        ; $5270: $1b
    ld [bc], a                                    ; $5271: $02
    rra                                           ; $5272: $1f
    adc c                                         ; $5273: $89
    dec e                                         ; $5274: $1d
    push af                                       ; $5275: $f5
    cp a                                          ; $5276: $bf

jr_0e2_5277:
    db $ec                                        ; $5277: $ec
    rst $18                                       ; $5278: $df
    ld a, [hl]                                    ; $5279: $7e
    ld a, a                                       ; $527a: $7f

jr_0e2_527b:
    dec hl                                        ; $527b: $2b
    dec sp                                        ; $527c: $3b
    ld [bc], a                                    ; $527d: $02
    db $10                                        ; $527e: $10
    ld d, $00                                     ; $527f: $16 $00
    ld [bc], a                                    ; $5281: $02
    dec b                                         ; $5282: $05
    ld [bc], a                                    ; $5283: $02
    rlca                                          ; $5284: $07
    ld [bc], a                                    ; $5285: $02
    ld b, $02                                     ; $5286: $06 $02
    inc b                                         ; $5288: $04
    jr jr_0e2_528b                                ; $5289: $18 $00

jr_0e2_528b:
    rst $38                                       ; $528b: $ff
    dec c                                         ; $528c: $0d
    inc b                                         ; $528d: $04
    db $fc                                        ; $528e: $fc
    inc b                                         ; $528f: $04
    rst $30                                       ; $5290: $f7
    cp $ec                                        ; $5291: $fe $ec
    ei                                            ; $5293: $fb
    db $ec                                        ; $5294: $ec
    cp $fc                                        ; $5295: $fe $fc
    ei                                            ; $5297: $fb
    db $fc                                        ; $5298: $fc
    db $fd                                        ; $5299: $fd
    ld [bc], a                                    ; $529a: $02
    rra                                           ; $529b: $1f
    sbc [hl]                                      ; $529c: $9e
    ccf                                           ; $529d: $3f
    dec h                                         ; $529e: $25
    ld a, a                                       ; $529f: $7f
    ld c, h                                       ; $52a0: $4c
    ld a, a                                       ; $52a1: $7f
    ld a, e                                       ; $52a2: $7b
    ld a, a                                       ; $52a3: $7f
    ld e, b                                       ; $52a4: $58
    ld a, a                                       ; $52a5: $7f
    ld [hl], h                                    ; $52a6: $74
    ld a, a                                       ; $52a7: $7f
    ld a, c                                       ; $52a8: $79
    ld a, a                                       ; $52a9: $7f
    ld e, h                                       ; $52aa: $5c
    rst $38                                       ; $52ab: $ff
    sbc e                                         ; $52ac: $9b
    push af                                       ; $52ad: $f5
    sbc a                                         ; $52ae: $9f
    or $bf                                        ; $52af: $f6 $bf
    push af                                       ; $52b1: $f5
    cp a                                          ; $52b2: $bf
    ld l, [hl]                                    ; $52b3: $6e
    ld a, a                                       ; $52b4: $7f
    ld h, $3f                                     ; $52b5: $26 $3f
    ld l, $3f                                     ; $52b7: $2e $3f
    ld e, [hl]                                    ; $52b9: $5e
    ld [hl], e                                    ; $52ba: $73
    ld [bc], a                                    ; $52bb: $02
    ld [bc], a                                    ; $52bc: $02
    inc b                                         ; $52bd: $04
    inc b                                         ; $52be: $04
    adc b                                         ; $52bf: $88
    ld b, $02                                     ; $52c0: $06 $02
    rlca                                          ; $52c2: $07
    ld bc, $0206                                  ; $52c3: $01 $06 $02
    ld b, $02                                     ; $52c6: $06 $02
    ld [bc], a                                    ; $52c8: $02
    inc b                                         ; $52c9: $04
    inc b                                         ; $52ca: $04
    nop                                           ; $52cb: $00
    inc c                                         ; $52cc: $0c
    inc b                                         ; $52cd: $04
    adc d                                         ; $52ce: $8a
    ld a, a                                       ; $52cf: $7f
    ld a, h                                       ; $52d0: $7c
    ld a, $3f                                     ; $52d1: $3e $3f
    ld a, l                                       ; $52d3: $7d
    ld a, a                                       ; $52d4: $7f
    cp e                                          ; $52d5: $bb
    rst $38                                       ; $52d6: $ff
    ld e, h                                       ; $52d7: $5c
    ld a, a                                       ; $52d8: $7f
    ld [bc], a                                    ; $52d9: $02
    ccf                                           ; $52da: $3f
    inc d                                         ; $52db: $14
    nop                                           ; $52dc: $00
    ld a, [bc]                                    ; $52dd: $0a
    ld [bc], a                                    ; $52de: $02
    ld [bc], a                                    ; $52df: $02
    inc bc                                        ; $52e0: $03
    inc d                                         ; $52e1: $14
    nop                                           ; $52e2: $00
    rst $38                                       ; $52e3: $ff
    dec c                                         ; $52e4: $0d
    inc b                                         ; $52e5: $04
    db $fc                                        ; $52e6: $fc
    inc b                                         ; $52e7: $04
    rst $30                                       ; $52e8: $f7
    cp $ec                                        ; $52e9: $fe $ec
    ei                                            ; $52eb: $fb
    db $ec                                        ; $52ec: $ec
    cp $fc                                        ; $52ed: $fe $fc
    ei                                            ; $52ef: $fb
    db $fc                                        ; $52f0: $fc
    cp $02                                        ; $52f1: $fe $02
    rra                                           ; $52f3: $1f
    sbc [hl]                                      ; $52f4: $9e
    ccf                                           ; $52f5: $3f
    dec h                                         ; $52f6: $25
    ld a, a                                       ; $52f7: $7f
    ld c, h                                       ; $52f8: $4c
    ld a, a                                       ; $52f9: $7f
    ld a, e                                       ; $52fa: $7b
    ld a, a                                       ; $52fb: $7f
    ld e, b                                       ; $52fc: $58
    ld a, a                                       ; $52fd: $7f
    ld [hl], h                                    ; $52fe: $74
    ld a, a                                       ; $52ff: $7f
    ld a, c                                       ; $5300: $79
    ld a, a                                       ; $5301: $7f
    ld e, h                                       ; $5302: $5c
    rst $38                                       ; $5303: $ff
    sbc e                                         ; $5304: $9b
    db $fd                                        ; $5305: $fd
    sbc a                                         ; $5306: $9f
    or $bf                                        ; $5307: $f6 $bf
    push af                                       ; $5309: $f5
    cp a                                          ; $530a: $bf
    halt                                          ; $530b: $76
    ld a, a                                       ; $530c: $7f
    ld [hl+], a                                   ; $530d: $22
    ccf                                           ; $530e: $3f
    inc sp                                        ; $530f: $33
    ccf                                           ; $5310: $3f
    ld [hl], a                                    ; $5311: $77
    ld a, h                                       ; $5312: $7c
    ld [bc], a                                    ; $5313: $02
    ld [bc], a                                    ; $5314: $02
    inc b                                         ; $5315: $04
    inc b                                         ; $5316: $04
    adc b                                         ; $5317: $88
    ld b, $02                                     ; $5318: $06 $02
    rlca                                          ; $531a: $07
    ld bc, $0206                                  ; $531b: $01 $06 $02
    ld b, $02                                     ; $531e: $06 $02
    ld [bc], a                                    ; $5320: $02
    inc b                                         ; $5321: $04
    inc b                                         ; $5322: $04
    nop                                           ; $5323: $00
    ld a, [bc]                                    ; $5324: $0a
    inc b                                         ; $5325: $04
    add e                                         ; $5326: $83
    ld b, $02                                     ; $5327: $06 $02
    ld a, a                                       ; $5329: $7f
    ld [bc], a                                    ; $532a: $02
    ld a, e                                       ; $532b: $7b
    add a                                         ; $532c: $87
    ld a, a                                       ; $532d: $7f
    or a                                          ; $532e: $b7
    rst $38                                       ; $532f: $ff
    cp a                                          ; $5330: $bf
    rst $38                                       ; $5331: $ff
    rst $30                                       ; $5332: $f7
    rst $38                                       ; $5333: $ff
    ld [bc], a                                    ; $5334: $02
    ld a, [hl]                                    ; $5335: $7e
    inc d                                         ; $5336: $14
    nop                                           ; $5337: $00
    add c                                         ; $5338: $81
    ld [bc], a                                    ; $5339: $02
    inc bc                                        ; $533a: $03
    ld b, $82                                     ; $533b: $06 $82
    ld bc, $0207                                  ; $533d: $01 $07 $02
    ld b, $18                                     ; $5340: $06 $18
    nop                                           ; $5342: $00
    rst $38                                       ; $5343: $ff
    dec c                                         ; $5344: $0d
    inc b                                         ; $5345: $04
    db $fc                                        ; $5346: $fc
    inc b                                         ; $5347: $04
    rst $30                                       ; $5348: $f7
    cp $ed                                        ; $5349: $fe $ed
    ei                                            ; $534b: $fb
    db $ed                                        ; $534c: $ed
    cp $fd                                        ; $534d: $fe $fd
    ei                                            ; $534f: $fb
    db $fd                                        ; $5350: $fd
    db $fd                                        ; $5351: $fd
    ld [bc], a                                    ; $5352: $02
    rra                                           ; $5353: $1f
    sbc [hl]                                      ; $5354: $9e
    ccf                                           ; $5355: $3f
    dec h                                         ; $5356: $25
    ld a, a                                       ; $5357: $7f
    ld c, h                                       ; $5358: $4c
    ld a, a                                       ; $5359: $7f
    ld a, e                                       ; $535a: $7b
    ld a, a                                       ; $535b: $7f
    ld e, b                                       ; $535c: $58
    ld a, a                                       ; $535d: $7f
    ld [hl], h                                    ; $535e: $74
    ld a, a                                       ; $535f: $7f
    ld a, c                                       ; $5360: $79
    rst $38                                       ; $5361: $ff
    sbc h                                         ; $5362: $9c
    rst $38                                       ; $5363: $ff
    sbc e                                         ; $5364: $9b
    db $fd                                        ; $5365: $fd
    sbc a                                         ; $5366: $9f
    or $bf                                        ; $5367: $f6 $bf
    ld l, l                                       ; $5369: $6d
    ld a, a                                       ; $536a: $7f
    ld l, [hl]                                    ; $536b: $6e
    ld a, a                                       ; $536c: $7f
    ld h, [hl]                                    ; $536d: $66
    ld a, a                                       ; $536e: $7f
    ld c, [hl]                                    ; $536f: $4e
    ld a, a                                       ; $5370: $7f
    ld e, [hl]                                    ; $5371: $5e
    ld h, a                                       ; $5372: $67
    ld [bc], a                                    ; $5373: $02
    ld [bc], a                                    ; $5374: $02
    inc b                                         ; $5375: $04
    inc b                                         ; $5376: $04
    adc b                                         ; $5377: $88
    ld b, $02                                     ; $5378: $06 $02
    rlca                                          ; $537a: $07
    ld bc, $0206                                  ; $537b: $01 $06 $02
    ld b, $02                                     ; $537e: $06 $02
    ld [bc], a                                    ; $5380: $02
    inc b                                         ; $5381: $04
    inc b                                         ; $5382: $04
    nop                                           ; $5383: $00
    inc c                                         ; $5384: $0c
    inc b                                         ; $5385: $04
    adc b                                         ; $5386: $88
    ccf                                           ; $5387: $3f
    dec sp                                        ; $5388: $3b
    ld a, [hl]                                    ; $5389: $7e
    ld a, l                                       ; $538a: $7d
    cp h                                          ; $538b: $bc
    rst $38                                       ; $538c: $ff
    ld e, a                                       ; $538d: $5f
    ld a, a                                       ; $538e: $7f
    ld [bc], a                                    ; $538f: $02
    jr c, @+$18                                   ; $5390: $38 $16

    nop                                           ; $5392: $00
    add c                                         ; $5393: $81
    ld bc, $0303                                  ; $5394: $01 $03 $03
    ld [bc], a                                    ; $5397: $02
    ld [bc], a                                    ; $5398: $02
    ld [bc], a                                    ; $5399: $02
    inc bc                                        ; $539a: $03
    jr jr_0e2_539d                                ; $539b: $18 $00

jr_0e2_539d:
    rst $38                                       ; $539d: $ff
    dec c                                         ; $539e: $0d
    inc b                                         ; $539f: $04
    db $fc                                        ; $53a0: $fc
    inc b                                         ; $53a1: $04
    rst $30                                       ; $53a2: $f7
    cp $ec                                        ; $53a3: $fe $ec
    ei                                            ; $53a5: $fb
    db $ec                                        ; $53a6: $ec
    cp $fc                                        ; $53a7: $fe $fc
    ei                                            ; $53a9: $fb
    db $fc                                        ; $53aa: $fc
    rst $38                                       ; $53ab: $ff
    ld [bc], a                                    ; $53ac: $02
    rra                                           ; $53ad: $1f
    sbc [hl]                                      ; $53ae: $9e
    ccf                                           ; $53af: $3f
    dec h                                         ; $53b0: $25
    ld a, a                                       ; $53b1: $7f
    ld c, h                                       ; $53b2: $4c
    ld a, a                                       ; $53b3: $7f
    ld a, e                                       ; $53b4: $7b
    ld a, a                                       ; $53b5: $7f
    ld e, b                                       ; $53b6: $58
    ld a, a                                       ; $53b7: $7f
    ld [hl], h                                    ; $53b8: $74
    ld a, a                                       ; $53b9: $7f
    ld a, c                                       ; $53ba: $79
    ld a, a                                       ; $53bb: $7f
    ld e, h                                       ; $53bc: $5c
    rst $38                                       ; $53bd: $ff
    sbc e                                         ; $53be: $9b
    push af                                       ; $53bf: $f5
    sbc a                                         ; $53c0: $9f
    or $bf                                        ; $53c1: $f6 $bf
    db $ed                                        ; $53c3: $ed
    cp a                                          ; $53c4: $bf
    ld l, [hl]                                    ; $53c5: $6e
    ld a, a                                       ; $53c6: $7f
    ld c, [hl]                                    ; $53c7: $4e
    ld a, a                                       ; $53c8: $7f
    ld c, [hl]                                    ; $53c9: $4e
    ld a, a                                       ; $53ca: $7f
    cp [hl]                                       ; $53cb: $be
    rst $28                                       ; $53cc: $ef
    ld [bc], a                                    ; $53cd: $02
    ld [bc], a                                    ; $53ce: $02
    inc b                                         ; $53cf: $04
    inc b                                         ; $53d0: $04
    adc b                                         ; $53d1: $88
    ld b, $02                                     ; $53d2: $06 $02
    rlca                                          ; $53d4: $07
    ld bc, $0206                                  ; $53d5: $01 $06 $02
    ld b, $02                                     ; $53d8: $06 $02
    ld [bc], a                                    ; $53da: $02
    inc b                                         ; $53db: $04
    inc b                                         ; $53dc: $04
    nop                                           ; $53dd: $00
    inc c                                         ; $53de: $0c
    inc b                                         ; $53df: $04
    adc d                                         ; $53e0: $8a
    ld a, [hl]                                    ; $53e1: $7e
    ld [hl], a                                    ; $53e2: $77
    ld a, $3b                                     ; $53e3: $3e $3b
    ld a, l                                       ; $53e5: $7d
    ld a, a                                       ; $53e6: $7f
    cp a                                          ; $53e7: $bf
    rst $38                                       ; $53e8: $ff
    ld c, a                                       ; $53e9: $4f
    ld a, a                                       ; $53ea: $7f
    ld [bc], a                                    ; $53eb: $02
    add hl, sp                                    ; $53ec: $39
    inc d                                         ; $53ed: $14
    nop                                           ; $53ee: $00
    ld [bc], a                                    ; $53ef: $02
    ld [$0481], sp                                ; $53f0: $08 $81 $04
    inc bc                                        ; $53f3: $03
    inc c                                         ; $53f4: $0c
    add d                                         ; $53f5: $82
    inc bc                                        ; $53f6: $03
    rrca                                          ; $53f7: $0f
    ld [bc], a                                    ; $53f8: $02
    ld c, $16                                     ; $53f9: $0e $16
    nop                                           ; $53fb: $00
    rst $38                                       ; $53fc: $ff
    dec c                                         ; $53fd: $0d
    inc b                                         ; $53fe: $04
    db $fc                                        ; $53ff: $fc
    inc b                                         ; $5400: $04
    rst $30                                       ; $5401: $f7
    cp $ed                                        ; $5402: $fe $ed
    ei                                            ; $5404: $fb
    db $ed                                        ; $5405: $ed
    cp $fd                                        ; $5406: $fe $fd
    ei                                            ; $5408: $fb
    db $fd                                        ; $5409: $fd
    db $fd                                        ; $540a: $fd
    ld [bc], a                                    ; $540b: $02
    rra                                           ; $540c: $1f
    sbc e                                         ; $540d: $9b
    ccf                                           ; $540e: $3f
    dec h                                         ; $540f: $25
    ld a, a                                       ; $5410: $7f
    ld c, h                                       ; $5411: $4c
    ld a, a                                       ; $5412: $7f
    ld a, e                                       ; $5413: $7b
    ld a, a                                       ; $5414: $7f
    ld e, b                                       ; $5415: $58
    ld a, a                                       ; $5416: $7f
    ld [hl], h                                    ; $5417: $74
    ld a, a                                       ; $5418: $7f
    ld a, c                                       ; $5419: $79
    rst $38                                       ; $541a: $ff
    sbc h                                         ; $541b: $9c
    rst $38                                       ; $541c: $ff
    sbc e                                         ; $541d: $9b
    db $fd                                        ; $541e: $fd
    sbc a                                         ; $541f: $9f
    or $bf                                        ; $5420: $f6 $bf
    ld [hl], l                                    ; $5422: $75
    ld a, a                                       ; $5423: $7f
    ld [hl], $3f                                  ; $5424: $36 $3f
    ld [hl+], a                                   ; $5426: $22
    ccf                                           ; $5427: $3f
    ld h, $02                                     ; $5428: $26 $02
    ccf                                           ; $542a: $3f
    add c                                         ; $542b: $81
    jr c, jr_0e2_5430                             ; $542c: $38 $02

    ld [bc], a                                    ; $542e: $02
    inc b                                         ; $542f: $04

jr_0e2_5430:
    inc b                                         ; $5430: $04
    adc b                                         ; $5431: $88
    ld b, $02                                     ; $5432: $06 $02
    rlca                                          ; $5434: $07
    ld bc, $0206                                  ; $5435: $01 $06 $02
    ld b, $02                                     ; $5438: $06 $02
    ld [bc], a                                    ; $543a: $02
    inc b                                         ; $543b: $04
    inc b                                         ; $543c: $04
    nop                                           ; $543d: $00
    ld a, [bc]                                    ; $543e: $0a
    inc b                                         ; $543f: $04
    adc d                                         ; $5440: $8a
    ld [bc], a                                    ; $5441: $02
    ld b, $7f                                     ; $5442: $06 $7f
    ld [hl], a                                    ; $5444: $77
    ei                                            ; $5445: $fb
    rst $38                                       ; $5446: $ff
    cp a                                          ; $5447: $bf
    rst $38                                       ; $5448: $ff
    ld e, l                                       ; $5449: $5d
    ld a, a                                       ; $544a: $7f
    ld [bc], a                                    ; $544b: $02
    ccf                                           ; $544c: $3f
    ld d, $00                                     ; $544d: $16 $00
    add d                                         ; $544f: $82
    ld bc, $0203                                  ; $5450: $01 $03 $02
    ld [bc], a                                    ; $5453: $02
    ld [bc], a                                    ; $5454: $02
    inc bc                                        ; $5455: $03
    ld [bc], a                                    ; $5456: $02
    nop                                           ; $5457: $00
    ld [bc], a                                    ; $5458: $02
    ld [bc], a                                    ; $5459: $02
    ld d, $00                                     ; $545a: $16 $00
    rst $38                                       ; $545c: $ff
    dec c                                         ; $545d: $0d
    inc b                                         ; $545e: $04
    db $fc                                        ; $545f: $fc
    inc b                                         ; $5460: $04
    rst $30                                       ; $5461: $f7
    cp $ea                                        ; $5462: $fe $ea
    ld a, [$ffea]                                 ; $5464: $fa $ea $ff
    ld a, [$fafa]                                 ; $5467: $fa $fa $fa
    rst $38                                       ; $546a: $ff
    ld [bc], a                                    ; $546b: $02
    dec bc                                        ; $546c: $0b
    sbc [hl]                                      ; $546d: $9e
    rra                                           ; $546e: $1f
    dec d                                         ; $546f: $15
    ccf                                           ; $5470: $3f
    jr z, jr_0e2_54b2                             ; $5471: $28 $3f

    ld hl, $547f                                  ; $5473: $21 $7f $54
    ld a, a                                       ; $5476: $7f
    ld [hl], d                                    ; $5477: $72
    rst $38                                       ; $5478: $ff
    xor c                                         ; $5479: $a9
    rst $38                                       ; $547a: $ff
    and b                                         ; $547b: $a0
    ld a, a                                       ; $547c: $7f
    ld d, l                                       ; $547d: $55
    rst $38                                       ; $547e: $ff
    and d                                         ; $547f: $a2
    rst $38                                       ; $5480: $ff
    sub e                                         ; $5481: $93
    ld a, a                                       ; $5482: $7f
    ld l, d                                       ; $5483: $6a
    ld a, a                                       ; $5484: $7f
    ld a, l                                       ; $5485: $7d
    ld e, a                                       ; $5486: $5f
    halt                                          ; $5487: $76
    ld e, a                                       ; $5488: $5f
    ld a, a                                       ; $5489: $7f
    sbc a                                         ; $548a: $9f
    rst $38                                       ; $548b: $ff
    ld [bc], a                                    ; $548c: $02
    db $10                                        ; $548d: $10
    and d                                         ; $548e: $a2
    jr jr_0e2_5499                                ; $548f: $18 $08

    inc e                                         ; $5491: $1c
    inc d                                         ; $5492: $14
    inc e                                         ; $5493: $1c
    inc b                                         ; $5494: $04
    ld e, $16                                     ; $5495: $1e $16
    rra                                           ; $5497: $1f
    dec c                                         ; $5498: $0d

jr_0e2_5499:
    ld e, $12                                     ; $5499: $1e $12
    rra                                           ; $549b: $1f
    dec d                                         ; $549c: $15
    rra                                           ; $549d: $1f
    dec b                                         ; $549e: $05
    ld e, $12                                     ; $549f: $1e $12
    rra                                           ; $54a1: $1f
    dec b                                         ; $54a2: $05
    ld e, $1a                                     ; $54a3: $1e $1a
    ld e, $0e                                     ; $54a5: $1e $0e
    ld a, [de]                                    ; $54a7: $1a
    ld e, $0a                                     ; $54a8: $1e $0a
    ld e, $09                                     ; $54aa: $1e $09
    rra                                           ; $54ac: $1f
    sbc a                                         ; $54ad: $9f
    rst $38                                       ; $54ae: $ff
    cp a                                          ; $54af: $bf
    rst $38                                       ; $54b0: $ff
    ld [bc], a                                    ; $54b1: $02

jr_0e2_54b2:
    ld e, a                                       ; $54b2: $5f
    ld [bc], a                                    ; $54b3: $02
    ccf                                           ; $54b4: $3f
    ld [bc], a                                    ; $54b5: $02
    ld a, a                                       ; $54b6: $7f
    add h                                         ; $54b7: $84
    ld l, a                                       ; $54b8: $6f
    ld a, a                                       ; $54b9: $7f
    ld a, b                                       ; $54ba: $78
    ld a, a                                       ; $54bb: $7f
    ld [bc], a                                    ; $54bc: $02
    ccf                                           ; $54bd: $3f
    stop                                          ; $54be: $10 $00
    add h                                         ; $54c0: $84
    add hl, de                                    ; $54c1: $19
    rra                                           ; $54c2: $1f
    dec c                                         ; $54c3: $0d
    rra                                           ; $54c4: $1f
    ld [bc], a                                    ; $54c5: $02
    ld a, [de]                                    ; $54c6: $1a
    adc b                                         ; $54c7: $88
    inc d                                         ; $54c8: $14
    inc e                                         ; $54c9: $1c
    ld a, [de]                                    ; $54ca: $1a
    ld e, $16                                     ; $54cb: $1e $16
    ld e, $0e                                     ; $54cd: $1e $0e
    ld e, $02                                     ; $54cf: $1e $02
    inc e                                         ; $54d1: $1c
    stop                                          ; $54d2: $10 $00
    rst $38                                       ; $54d4: $ff
    dec c                                         ; $54d5: $0d
    inc b                                         ; $54d6: $04
    db $fc                                        ; $54d7: $fc
    inc b                                         ; $54d8: $04
    rst $30                                       ; $54d9: $f7
    cp $ea                                        ; $54da: $fe $ea
    ld a, [$ffea]                                 ; $54dc: $fa $ea $ff
    ld a, [$fafa]                                 ; $54df: $fa $fa $fa
    rst $38                                       ; $54e2: $ff
    ld [bc], a                                    ; $54e3: $02
    dec bc                                        ; $54e4: $0b
    sbc [hl]                                      ; $54e5: $9e
    rra                                           ; $54e6: $1f
    dec d                                         ; $54e7: $15
    ccf                                           ; $54e8: $3f
    jr z, jr_0e2_552a                             ; $54e9: $28 $3f

    ld hl, $547f                                  ; $54eb: $21 $7f $54
    ld a, a                                       ; $54ee: $7f
    ld [hl], d                                    ; $54ef: $72
    rst $38                                       ; $54f0: $ff
    xor c                                         ; $54f1: $a9
    rst $38                                       ; $54f2: $ff
    and b                                         ; $54f3: $a0
    ld a, a                                       ; $54f4: $7f
    ld d, l                                       ; $54f5: $55
    rst $38                                       ; $54f6: $ff
    and d                                         ; $54f7: $a2
    rst $38                                       ; $54f8: $ff
    sub e                                         ; $54f9: $93
    ld a, a                                       ; $54fa: $7f
    ld l, d                                       ; $54fb: $6a
    ld a, a                                       ; $54fc: $7f
    ld a, l                                       ; $54fd: $7d
    ld e, a                                       ; $54fe: $5f
    halt                                          ; $54ff: $76
    sbc l                                         ; $5500: $9d
    rst $38                                       ; $5501: $ff
    sbc a                                         ; $5502: $9f
    rst $38                                       ; $5503: $ff
    ld [bc], a                                    ; $5504: $02
    db $10                                        ; $5505: $10
    and h                                         ; $5506: $a4
    jr jr_0e2_5511                                ; $5507: $18 $08

    inc e                                         ; $5509: $1c
    inc d                                         ; $550a: $14
    inc e                                         ; $550b: $1c
    inc b                                         ; $550c: $04
    ld e, $16                                     ; $550d: $1e $16
    rra                                           ; $550f: $1f
    dec c                                         ; $5510: $0d

jr_0e2_5511:
    ld e, $12                                     ; $5511: $1e $12
    rra                                           ; $5513: $1f
    dec d                                         ; $5514: $15
    rra                                           ; $5515: $1f
    dec b                                         ; $5516: $05
    ld e, $12                                     ; $5517: $1e $12
    rra                                           ; $5519: $1f
    dec b                                         ; $551a: $05
    ld e, $1a                                     ; $551b: $1e $1a
    ld e, $0e                                     ; $551d: $1e $0e
    ld a, [de]                                    ; $551f: $1a
    ld e, $09                                     ; $5520: $1e $09
    rra                                           ; $5522: $1f
    add hl, bc                                    ; $5523: $09
    rra                                           ; $5524: $1f
    cp a                                          ; $5525: $bf
    rst $38                                       ; $5526: $ff
    cp a                                          ; $5527: $bf
    rst $38                                       ; $5528: $ff
    cp a                                          ; $5529: $bf

jr_0e2_552a:
    rst $38                                       ; $552a: $ff
    ld [bc], a                                    ; $552b: $02
    ld a, a                                       ; $552c: $7f
    inc b                                         ; $552d: $04
    ccf                                           ; $552e: $3f
    add d                                         ; $552f: $82
    ld a, $3f                                     ; $5530: $3e $3f
    ld [bc], a                                    ; $5532: $02
    rrca                                          ; $5533: $0f
    stop                                          ; $5534: $10 $00
    adc [hl]                                      ; $5536: $8e
    dec e                                         ; $5537: $1d
    rra                                           ; $5538: $1f
    ld c, $1e                                     ; $5539: $0e $1e
    inc d                                         ; $553b: $14
    inc e                                         ; $553c: $1c
    inc d                                         ; $553d: $14
    inc e                                         ; $553e: $1c
    ld a, [de]                                    ; $553f: $1a
    ld e, $16                                     ; $5540: $1e $16
    ld e, $0e                                     ; $5542: $1e $0e
    ld e, $02                                     ; $5544: $1e $02
    inc e                                         ; $5546: $1c
    stop                                          ; $5547: $10 $00
    rst $38                                       ; $5549: $ff
    dec c                                         ; $554a: $0d
    inc b                                         ; $554b: $04
    db $fc                                        ; $554c: $fc
    inc b                                         ; $554d: $04
    rst $30                                       ; $554e: $f7
    cp $eb                                        ; $554f: $fe $eb
    ld a, [$ffeb]                                 ; $5551: $fa $eb $ff
    ei                                            ; $5554: $fb
    ld a, [$fffb]                                 ; $5555: $fa $fb $ff
    ld [bc], a                                    ; $5558: $02
    dec bc                                        ; $5559: $0b
    sbc [hl]                                      ; $555a: $9e
    rra                                           ; $555b: $1f
    dec d                                         ; $555c: $15
    ccf                                           ; $555d: $3f
    jr z, jr_0e2_559f                             ; $555e: $28 $3f

    ld hl, $567f                                  ; $5560: $21 $7f $56
    rst $38                                       ; $5563: $ff
    or c                                          ; $5564: $b1
    rst $38                                       ; $5565: $ff
    xor b                                         ; $5566: $a8
    rst $38                                       ; $5567: $ff
    db $e4                                        ; $5568: $e4
    ld a, a                                       ; $5569: $7f
    ld d, c                                       ; $556a: $51
    rst $38                                       ; $556b: $ff
    and d                                         ; $556c: $a2
    ld a, a                                       ; $556d: $7f
    ld c, d                                       ; $556e: $4a
    ld a, a                                       ; $556f: $7f
    ld [hl], l                                    ; $5570: $75
    ld a, a                                       ; $5571: $7f
    ld l, d                                       ; $5572: $6a
    ld e, a                                       ; $5573: $5f
    ld a, e                                       ; $5574: $7b
    sbc a                                         ; $5575: $9f
    rst $38                                       ; $5576: $ff
    sbc a                                         ; $5577: $9f
    rst $38                                       ; $5578: $ff
    ld [bc], a                                    ; $5579: $02
    db $10                                        ; $557a: $10
    sub [hl]                                      ; $557b: $96
    jr jr_0e2_5586                                ; $557c: $18 $08

    inc e                                         ; $557e: $1c
    inc d                                         ; $557f: $14
    inc e                                         ; $5580: $1c
    inc b                                         ; $5581: $04
    ld e, $16                                     ; $5582: $1e $16
    rra                                           ; $5584: $1f
    dec c                                         ; $5585: $0d

jr_0e2_5586:
    rra                                           ; $5586: $1f
    rla                                           ; $5587: $17
    rra                                           ; $5588: $1f
    dec d                                         ; $5589: $15
    ld e, $12                                     ; $558a: $1e $12
    rra                                           ; $558c: $1f
    inc de                                        ; $558d: $13
    rra                                           ; $558e: $1f
    dec c                                         ; $558f: $0d
    ld e, $0a                                     ; $5590: $1e $0a
    ld [bc], a                                    ; $5592: $02
    ld e, $8a                                     ; $5593: $1e $8a
    ld a, [de]                                    ; $5595: $1a
    ld e, $0a                                     ; $5596: $1e $0a
    ld e, $09                                     ; $5598: $1e $09
    rra                                           ; $559a: $1f
    cp a                                          ; $559b: $bf
    rst $38                                       ; $559c: $ff
    cp a                                          ; $559d: $bf
    rst $38                                       ; $559e: $ff

jr_0e2_559f:
    ld [bc], a                                    ; $559f: $02
    ld a, a                                       ; $55a0: $7f
    add c                                         ; $55a1: $81
    ld a, e                                       ; $55a2: $7b
    inc bc                                        ; $55a3: $03
    ld a, a                                       ; $55a4: $7f
    ld [bc], a                                    ; $55a5: $02
    ccf                                           ; $55a6: $3f
    ld [bc], a                                    ; $55a7: $02
    rrca                                          ; $55a8: $0f
    ld [de], a                                    ; $55a9: $12
    nop                                           ; $55aa: $00
    add a                                         ; $55ab: $87
    add hl, de                                    ; $55ac: $19
    rra                                           ; $55ad: $1f
    dec c                                         ; $55ae: $0d
    rra                                           ; $55af: $1f
    ld d, $1e                                     ; $55b0: $16 $1e
    inc d                                         ; $55b2: $14
    dec b                                         ; $55b3: $05
    inc e                                         ; $55b4: $1c
    ld [bc], a                                    ; $55b5: $02
    jr jr_0e2_55ca                                ; $55b6: $18 $12

    nop                                           ; $55b8: $00
    rst $38                                       ; $55b9: $ff
    dec c                                         ; $55ba: $0d
    inc b                                         ; $55bb: $04
    db $fc                                        ; $55bc: $fc
    inc b                                         ; $55bd: $04
    rst $30                                       ; $55be: $f7
    cp $ea                                        ; $55bf: $fe $ea
    ld a, [$ffea]                                 ; $55c1: $fa $ea $ff
    ld a, [$fafa]                                 ; $55c4: $fa $fa $fa
    rst $38                                       ; $55c7: $ff
    ld [bc], a                                    ; $55c8: $02
    dec bc                                        ; $55c9: $0b

jr_0e2_55ca:
    sbc [hl]                                      ; $55ca: $9e
    rra                                           ; $55cb: $1f
    dec d                                         ; $55cc: $15
    ccf                                           ; $55cd: $3f
    jr z, jr_0e2_560f                             ; $55ce: $28 $3f

    ld hl, $547f                                  ; $55d0: $21 $7f $54
    ld a, a                                       ; $55d3: $7f
    ld [hl], d                                    ; $55d4: $72
    rst $38                                       ; $55d5: $ff
    xor c                                         ; $55d6: $a9
    rst $38                                       ; $55d7: $ff
    and b                                         ; $55d8: $a0
    ld a, a                                       ; $55d9: $7f
    ld d, l                                       ; $55da: $55
    rst $38                                       ; $55db: $ff
    and d                                         ; $55dc: $a2
    rst $38                                       ; $55dd: $ff
    sub e                                         ; $55de: $93
    ld a, a                                       ; $55df: $7f
    ld l, d                                       ; $55e0: $6a
    ld a, a                                       ; $55e1: $7f
    ld a, l                                       ; $55e2: $7d
    ld e, a                                       ; $55e3: $5f
    halt                                          ; $55e4: $76
    sbc l                                         ; $55e5: $9d
    rst $38                                       ; $55e6: $ff
    sbc a                                         ; $55e7: $9f
    rst $38                                       ; $55e8: $ff
    ld [bc], a                                    ; $55e9: $02
    db $10                                        ; $55ea: $10
    and b                                         ; $55eb: $a0
    jr jr_0e2_55f6                                ; $55ec: $18 $08

    inc e                                         ; $55ee: $1c
    inc d                                         ; $55ef: $14
    inc e                                         ; $55f0: $1c
    inc b                                         ; $55f1: $04
    ld e, $16                                     ; $55f2: $1e $16
    rra                                           ; $55f4: $1f
    dec c                                         ; $55f5: $0d

jr_0e2_55f6:
    ld e, $12                                     ; $55f6: $1e $12
    rra                                           ; $55f8: $1f
    dec d                                         ; $55f9: $15
    rra                                           ; $55fa: $1f
    dec b                                         ; $55fb: $05
    ld e, $12                                     ; $55fc: $1e $12
    rra                                           ; $55fe: $1f
    dec b                                         ; $55ff: $05
    ld e, $1a                                     ; $5600: $1e $1a
    ld e, $0e                                     ; $5602: $1e $0e
    ld a, [de]                                    ; $5604: $1a
    ld e, $09                                     ; $5605: $1e $09
    rra                                           ; $5607: $1f
    add hl, bc                                    ; $5608: $09
    rra                                           ; $5609: $1f
    cp a                                          ; $560a: $bf
    rst $38                                       ; $560b: $ff
    ld [bc], a                                    ; $560c: $02
    ld a, a                                       ; $560d: $7f
    ld [bc], a                                    ; $560e: $02

jr_0e2_560f:
    ccf                                           ; $560f: $3f
    add e                                         ; $5610: $83
    dec sp                                        ; $5611: $3b
    ccf                                           ; $5612: $3f
    ld a, e                                       ; $5613: $7b
    inc bc                                        ; $5614: $03
    ld a, a                                       ; $5615: $7f
    add d                                         ; $5616: $82
    ld [hl], e                                    ; $5617: $73
    ld a, a                                       ; $5618: $7f
    ld [bc], a                                    ; $5619: $02
    ccf                                           ; $561a: $3f
    stop                                          ; $561b: $10 $00
    adc b                                         ; $561d: $88
    dec e                                         ; $561e: $1d
    rra                                           ; $561f: $1f
    dec c                                         ; $5620: $0d
    rra                                           ; $5621: $1f
    dec e                                         ; $5622: $1d
    rra                                           ; $5623: $1f
    ld d, $1e                                     ; $5624: $16 $1e
    ld b, $1c                                     ; $5626: $06 $1c
    ld [bc], a                                    ; $5628: $02
    db $10                                        ; $5629: $10
    stop                                          ; $562a: $10 $00
    rst $38                                       ; $562c: $ff
    dec c                                         ; $562d: $0d
    inc b                                         ; $562e: $04
    db $fc                                        ; $562f: $fc
    inc b                                         ; $5630: $04
    rst $30                                       ; $5631: $f7
    cp $eb                                        ; $5632: $fe $eb
    ld a, [$ffeb]                                 ; $5634: $fa $eb $ff
    ei                                            ; $5637: $fb
    ld a, [$fffb]                                 ; $5638: $fa $fb $ff
    ld [bc], a                                    ; $563b: $02
    dec bc                                        ; $563c: $0b
    sbc [hl]                                      ; $563d: $9e
    rra                                           ; $563e: $1f
    dec d                                         ; $563f: $15
    ccf                                           ; $5640: $3f
    jr z, jr_0e2_5682                             ; $5641: $28 $3f

    ld hl, $567f                                  ; $5643: $21 $7f $56
    rst $38                                       ; $5646: $ff
    or c                                          ; $5647: $b1
    rst $38                                       ; $5648: $ff
    xor b                                         ; $5649: $a8
    rst $38                                       ; $564a: $ff
    db $e4                                        ; $564b: $e4
    ld a, a                                       ; $564c: $7f
    ld d, c                                       ; $564d: $51
    rst $38                                       ; $564e: $ff
    and d                                         ; $564f: $a2
    ld a, a                                       ; $5650: $7f
    ld c, d                                       ; $5651: $4a
    ld a, a                                       ; $5652: $7f
    ld [hl], l                                    ; $5653: $75
    ld a, a                                       ; $5654: $7f
    ld l, d                                       ; $5655: $6a
    ld e, a                                       ; $5656: $5f
    ld a, e                                       ; $5657: $7b
    ld e, a                                       ; $5658: $5f
    ld a, a                                       ; $5659: $7f
    sbc a                                         ; $565a: $9f
    rst $38                                       ; $565b: $ff
    ld [bc], a                                    ; $565c: $02
    db $10                                        ; $565d: $10
    sub [hl]                                      ; $565e: $96
    jr jr_0e2_5669                                ; $565f: $18 $08

    inc e                                         ; $5661: $1c
    inc d                                         ; $5662: $14
    inc e                                         ; $5663: $1c
    inc b                                         ; $5664: $04
    ld e, $16                                     ; $5665: $1e $16
    rra                                           ; $5667: $1f
    dec c                                         ; $5668: $0d

jr_0e2_5669:
    rra                                           ; $5669: $1f
    rla                                           ; $566a: $17
    rra                                           ; $566b: $1f
    dec d                                         ; $566c: $15
    ld e, $12                                     ; $566d: $1e $12
    rra                                           ; $566f: $1f
    inc de                                        ; $5670: $13
    rra                                           ; $5671: $1f
    dec c                                         ; $5672: $0d
    ld e, $0a                                     ; $5673: $1e $0a
    ld [bc], a                                    ; $5675: $02
    ld e, $8a                                     ; $5676: $1e $8a
    ld a, [de]                                    ; $5678: $1a
    ld e, $09                                     ; $5679: $1e $09
    rra                                           ; $567b: $1f
    add hl, bc                                    ; $567c: $09
    rra                                           ; $567d: $1f
    sbc a                                         ; $567e: $9f
    rst $38                                       ; $567f: $ff
    cp a                                          ; $5680: $bf
    rst $38                                       ; $5681: $ff

jr_0e2_5682:
    ld [bc], a                                    ; $5682: $02
    ld a, a                                       ; $5683: $7f
    ld b, $3f                                     ; $5684: $06 $3f
    ld [bc], a                                    ; $5686: $02
    rra                                           ; $5687: $1f
    ld [de], a                                    ; $5688: $12
    nop                                           ; $5689: $00
    add a                                         ; $568a: $87
    dec e                                         ; $568b: $1d
    rra                                           ; $568c: $1f
    dec c                                         ; $568d: $0d
    rra                                           ; $568e: $1f
    ld d, $1e                                     ; $568f: $16 $1e
    ld a, [de]                                    ; $5691: $1a
    inc bc                                        ; $5692: $03
    ld e, $02                                     ; $5693: $1e $02
    inc e                                         ; $5695: $1c
    ld [bc], a                                    ; $5696: $02
    db $10                                        ; $5697: $10
    ld [de], a                                    ; $5698: $12
    nop                                           ; $5699: $00
    rst $38                                       ; $569a: $ff
    dec c                                         ; $569b: $0d
    inc b                                         ; $569c: $04
    db $fc                                        ; $569d: $fc
    inc b                                         ; $569e: $04
    rst $30                                       ; $569f: $f7
    cp $ea                                        ; $56a0: $fe $ea
    ld a, [$ffea]                                 ; $56a2: $fa $ea $ff
    ld a, [$fafa]                                 ; $56a5: $fa $fa $fa
    rst $38                                       ; $56a8: $ff
    ld [bc], a                                    ; $56a9: $02
    ld c, $9e                                     ; $56aa: $0e $9e
    rra                                           ; $56ac: $1f
    ld de, $2a3f                                  ; $56ad: $11 $3f $2a
    ccf                                           ; $56b0: $3f
    scf                                           ; $56b1: $37
    ld a, a                                       ; $56b2: $7f
    ld l, h                                       ; $56b3: $6c
    rst $38                                       ; $56b4: $ff
    or b                                          ; $56b5: $b0
    ld a, a                                       ; $56b6: $7f
    ld e, l                                       ; $56b7: $5d
    rst $38                                       ; $56b8: $ff
    or b                                          ; $56b9: $b0
    rst $38                                       ; $56ba: $ff
    or h                                          ; $56bb: $b4
    ld a, a                                       ; $56bc: $7f
    ld d, e                                       ; $56bd: $53
    rst $38                                       ; $56be: $ff
    cp b                                          ; $56bf: $b8
    ld a, d                                       ; $56c0: $7a
    ld e, a                                       ; $56c1: $5f
    ld a, l                                       ; $56c2: $7d
    ld a, a                                       ; $56c3: $7f
    ld e, d                                       ; $56c4: $5a
    ld a, a                                       ; $56c5: $7f
    ld e, l                                       ; $56c6: $5d
    ld a, a                                       ; $56c7: $7f
    cp l                                          ; $56c8: $bd
    rst $38                                       ; $56c9: $ff
    ld [bc], a                                    ; $56ca: $02
    db $10                                        ; $56cb: $10
    sub [hl]                                      ; $56cc: $96
    jr jr_0e2_56d7                                ; $56cd: $18 $08

    inc e                                         ; $56cf: $1c
    inc d                                         ; $56d0: $14
    inc e                                         ; $56d1: $1c
    inc c                                         ; $56d2: $0c
    ld e, $12                                     ; $56d3: $1e $12
    ld e, $0e                                     ; $56d5: $1e $0e

jr_0e2_56d7:
    rra                                           ; $56d7: $1f
    dec e                                         ; $56d8: $1d
    rra                                           ; $56d9: $1f
    rrca                                          ; $56da: $0f
    ld e, $0a                                     ; $56db: $1e $0a
    rra                                           ; $56dd: $1f
    dec c                                         ; $56de: $0d
    rra                                           ; $56df: $1f
    dec e                                         ; $56e0: $1d
    ld e, $1a                                     ; $56e1: $1e $1a
    ld [bc], a                                    ; $56e3: $02
    ld e, $90                                     ; $56e4: $1e $90
    ld a, [de]                                    ; $56e6: $1a
    ld e, $1a                                     ; $56e7: $1e $1a
    ld e, $1d                                     ; $56e9: $1e $1d
    rra                                           ; $56eb: $1f
    jp c, $faff                                   ; $56ec: $da $ff $fa

    cp a                                          ; $56ef: $bf
    ld a, d                                       ; $56f0: $7a
    ld e, a                                       ; $56f1: $5f
    ld a, [hl-]                                   ; $56f2: $3a
    cpl                                           ; $56f3: $2f
    ld [hl], a                                    ; $56f4: $77
    ld a, a                                       ; $56f5: $7f
    ld [bc], a                                    ; $56f6: $02
    ccf                                           ; $56f7: $3f
    add d                                         ; $56f8: $82
    dec d                                         ; $56f9: $15
    dec e                                         ; $56fa: $1d
    ld [bc], a                                    ; $56fb: $02
    jr jr_0e2_570e                                ; $56fc: $18 $10

    nop                                           ; $56fe: $00
    add c                                         ; $56ff: $81
    dec de                                        ; $5700: $1b
    ld [bc], a                                    ; $5701: $02

jr_0e2_5702:
    rra                                           ; $5702: $1f
    add c                                         ; $5703: $81
    dec e                                         ; $5704: $1d
    ld [bc], a                                    ; $5705: $02
    ld a, [de]                                    ; $5706: $1a
    ld [bc], a                                    ; $5707: $02
    inc e                                         ; $5708: $1c
    add d                                         ; $5709: $82
    ld a, [bc]                                    ; $570a: $0a
    ld e, $02                                     ; $570b: $1e $02
    inc e                                         ; $570d: $1c

jr_0e2_570e:
    add c                                         ; $570e: $81
    ld [$1803], sp                                ; $570f: $08 $03 $18
    stop                                          ; $5712: $10 $00
    rst $38                                       ; $5714: $ff
    dec c                                         ; $5715: $0d
    inc b                                         ; $5716: $04
    db $fc                                        ; $5717: $fc
    inc b                                         ; $5718: $04
    rst $30                                       ; $5719: $f7
    cp $ea                                        ; $571a: $fe $ea
    ld a, [$ffea]                                 ; $571c: $fa $ea $ff
    ld a, [$fafa]                                 ; $571f: $fa $fa $fa
    rst $38                                       ; $5722: $ff
    ld [bc], a                                    ; $5723: $02
    ld c, $9e                                     ; $5724: $0e $9e
    rra                                           ; $5726: $1f
    ld de, $2a3f                                  ; $5727: $11 $3f $2a
    ccf                                           ; $572a: $3f
    scf                                           ; $572b: $37
    ld a, a                                       ; $572c: $7f
    ld l, h                                       ; $572d: $6c
    rst $38                                       ; $572e: $ff
    or b                                          ; $572f: $b0
    ld a, a                                       ; $5730: $7f
    ld e, l                                       ; $5731: $5d
    rst $38                                       ; $5732: $ff
    or b                                          ; $5733: $b0
    rst $38                                       ; $5734: $ff
    or h                                          ; $5735: $b4
    ld a, a                                       ; $5736: $7f
    ld d, e                                       ; $5737: $53
    rst $38                                       ; $5738: $ff
    cp b                                          ; $5739: $b8
    ld a, d                                       ; $573a: $7a
    ld e, a                                       ; $573b: $5f
    ld a, l                                       ; $573c: $7d
    ld a, a                                       ; $573d: $7f
    ld e, d                                       ; $573e: $5a
    ld a, a                                       ; $573f: $7f
    ld a, l                                       ; $5740: $7d
    ld a, a                                       ; $5741: $7f
    sbc l                                         ; $5742: $9d
    rst $38                                       ; $5743: $ff
    ld [bc], a                                    ; $5744: $02
    db $10                                        ; $5745: $10
    sub [hl]                                      ; $5746: $96
    jr jr_0e2_5751                                ; $5747: $18 $08

    inc e                                         ; $5749: $1c
    inc d                                         ; $574a: $14
    inc e                                         ; $574b: $1c
    inc c                                         ; $574c: $0c
    ld e, $12                                     ; $574d: $1e $12
    ld e, $0e                                     ; $574f: $1e $0e

jr_0e2_5751:
    rra                                           ; $5751: $1f
    dec e                                         ; $5752: $1d
    rra                                           ; $5753: $1f
    rrca                                          ; $5754: $0f
    ld e, $0a                                     ; $5755: $1e $0a
    rra                                           ; $5757: $1f
    dec c                                         ; $5758: $0d
    rra                                           ; $5759: $1f
    dec e                                         ; $575a: $1d
    ld e, $1a                                     ; $575b: $1e $1a
    ld [bc], a                                    ; $575d: $02
    ld e, $8e                                     ; $575e: $1e $8e
    ld a, [de]                                    ; $5760: $1a
    ld e, $1d                                     ; $5761: $1e $1d
    rra                                           ; $5763: $1f
    add hl, de                                    ; $5764: $19
    rra                                           ; $5765: $1f
    cp c                                          ; $5766: $b9
    rst $18                                       ; $5767: $df
    ld a, [$76c7]                                 ; $5768: $fa $c7 $76
    ld a, a                                       ; $576b: $7f
    scf                                           ; $576c: $37
    ccf                                           ; $576d: $3f
    ld [bc], a                                    ; $576e: $02
    ld a, a                                       ; $576f: $7f
    ld [bc], a                                    ; $5770: $02
    ccf                                           ; $5771: $3f
    ld [bc], a                                    ; $5772: $02
    dec de                                        ; $5773: $1b
    ld [bc], a                                    ; $5774: $02
    ld bc, $0010                                  ; $5775: $01 $10 $00
    add d                                         ; $5778: $82
    rra                                           ; $5779: $1f
    dec e                                         ; $577a: $1d
    ld [bc], a                                    ; $577b: $02
    ld a, [de]                                    ; $577c: $1a
    ld [bc], a                                    ; $577d: $02
    jr jr_0e2_5702                                ; $577e: $18 $82

    ld [$0218], sp                                ; $5780: $08 $18 $02
    inc e                                         ; $5783: $1c
    add d                                         ; $5784: $82
    inc c                                         ; $5785: $0c
    inc e                                         ; $5786: $1c
    ld [bc], a                                    ; $5787: $02
    jr @+$04                                      ; $5788: $18 $02

    db $10                                        ; $578a: $10
    stop                                          ; $578b: $10 $00
    rst $38                                       ; $578d: $ff
    dec c                                         ; $578e: $0d
    inc b                                         ; $578f: $04
    db $fc                                        ; $5790: $fc
    inc b                                         ; $5791: $04
    rst $30                                       ; $5792: $f7
    cp $eb                                        ; $5793: $fe $eb
    ld a, [$ffeb]                                 ; $5795: $fa $eb $ff
    ei                                            ; $5798: $fb
    ld a, [$fffb]                                 ; $5799: $fa $fb $ff
    ld [bc], a                                    ; $579c: $02
    ld c, $84                                     ; $579d: $0e $84
    rra                                           ; $579f: $1f
    dec d                                         ; $57a0: $15
    ccf                                           ; $57a1: $3f
    ld [hl+], a                                   ; $57a2: $22
    ld [bc], a                                    ; $57a3: $02
    ccf                                           ; $57a4: $3f
    sbc b                                         ; $57a5: $98
    ld a, a                                       ; $57a6: $7f
    ld l, b                                       ; $57a7: $68
    rst $38                                       ; $57a8: $ff
    or b                                          ; $57a9: $b0
    ld a, a                                       ; $57aa: $7f
    ld e, l                                       ; $57ab: $5d
    rst $38                                       ; $57ac: $ff
    ret nc                                        ; $57ad: $d0

    rst $38                                       ; $57ae: $ff
    or h                                          ; $57af: $b4
    ld a, a                                       ; $57b0: $7f
    ld d, e                                       ; $57b1: $53
    rst $38                                       ; $57b2: $ff
    cp b                                          ; $57b3: $b8
    ld a, d                                       ; $57b4: $7a
    ld e, a                                       ; $57b5: $5f
    dec a                                         ; $57b6: $3d
    ccf                                           ; $57b7: $3f
    ld e, d                                       ; $57b8: $5a
    ld a, a                                       ; $57b9: $7f
    sbc l                                         ; $57ba: $9d
    rst $38                                       ; $57bb: $ff
    cp l                                          ; $57bc: $bd
    rst $38                                       ; $57bd: $ff
    ld [bc], a                                    ; $57be: $02
    db $10                                        ; $57bf: $10
    sub [hl]                                      ; $57c0: $96
    jr jr_0e2_57cb                                ; $57c1: $18 $08

    inc e                                         ; $57c3: $1c
    inc d                                         ; $57c4: $14
    inc e                                         ; $57c5: $1c
    inc c                                         ; $57c6: $0c
    ld e, $12                                     ; $57c7: $1e $12
    rra                                           ; $57c9: $1f
    dec c                                         ; $57ca: $0d

jr_0e2_57cb:
    rra                                           ; $57cb: $1f
    dec e                                         ; $57cc: $1d
    rra                                           ; $57cd: $1f
    dec bc                                        ; $57ce: $0b
    ld e, $0a                                     ; $57cf: $1e $0a
    rra                                           ; $57d1: $1f
    dec c                                         ; $57d2: $0d
    ld e, $1a                                     ; $57d3: $1e $1a
    ld e, $1a                                     ; $57d5: $1e $1a
    ld [bc], a                                    ; $57d7: $02
    ld e, $90                                     ; $57d8: $1e $90
    ld a, [de]                                    ; $57da: $1a
    ld e, $19                                     ; $57db: $1e $19
    rra                                           ; $57dd: $1f
    dec e                                         ; $57de: $1d
    rra                                           ; $57df: $1f
    db $dd                                        ; $57e0: $dd
    rst $38                                       ; $57e1: $ff
    db $fc                                        ; $57e2: $fc
    cp a                                          ; $57e3: $bf
    ld a, d                                       ; $57e4: $7a
    ld e, a                                       ; $57e5: $5f
    ld [hl], e                                    ; $57e6: $73
    ld l, a                                       ; $57e7: $6f
    scf                                           ; $57e8: $37
    ccf                                           ; $57e9: $3f
    ld [bc], a                                    ; $57ea: $02
    dec e                                         ; $57eb: $1d
    inc d                                         ; $57ec: $14
    nop                                           ; $57ed: $00
    add c                                         ; $57ee: $81
    dec de                                        ; $57ef: $1b
    ld [bc], a                                    ; $57f0: $02
    rra                                           ; $57f1: $1f
    add c                                         ; $57f2: $81
    dec e                                         ; $57f3: $1d
    ld [bc], a                                    ; $57f4: $02
    ld a, [de]                                    ; $57f5: $1a
    add d                                         ; $57f6: $82
    ld c, $1e                                     ; $57f7: $0e $1e
    ld [bc], a                                    ; $57f9: $02
    inc e                                         ; $57fa: $1c
    add d                                         ; $57fb: $82
    ld [$0218], sp                                ; $57fc: $08 $18 $02
    db $10                                        ; $57ff: $10
    ld [de], a                                    ; $5800: $12
    nop                                           ; $5801: $00
    rst $38                                       ; $5802: $ff
    dec c                                         ; $5803: $0d
    inc b                                         ; $5804: $04
    db $fc                                        ; $5805: $fc
    inc b                                         ; $5806: $04
    rst $30                                       ; $5807: $f7
    cp $ea                                        ; $5808: $fe $ea
    ld a, [$ffea]                                 ; $580a: $fa $ea $ff
    ld a, [$fafa]                                 ; $580d: $fa $fa $fa
    rst $38                                       ; $5810: $ff
    ld [bc], a                                    ; $5811: $02
    ld c, $9e                                     ; $5812: $0e $9e
    rra                                           ; $5814: $1f
    ld de, $2a3f                                  ; $5815: $11 $3f $2a
    ccf                                           ; $5818: $3f
    scf                                           ; $5819: $37
    ld a, a                                       ; $581a: $7f
    ld l, h                                       ; $581b: $6c
    rst $38                                       ; $581c: $ff
    or b                                          ; $581d: $b0
    ld a, a                                       ; $581e: $7f
    ld e, l                                       ; $581f: $5d
    rst $38                                       ; $5820: $ff
    or b                                          ; $5821: $b0
    rst $38                                       ; $5822: $ff
    or h                                          ; $5823: $b4
    ld a, a                                       ; $5824: $7f
    ld d, e                                       ; $5825: $53
    rst $38                                       ; $5826: $ff
    cp b                                          ; $5827: $b8
    ld a, d                                       ; $5828: $7a
    ld e, a                                       ; $5829: $5f
    ld a, l                                       ; $582a: $7d
    ld a, a                                       ; $582b: $7f
    ld e, d                                       ; $582c: $5a
    ld a, a                                       ; $582d: $7f
    cp l                                          ; $582e: $bd
    rst $38                                       ; $582f: $ff
    sbc l                                         ; $5830: $9d
    rst $38                                       ; $5831: $ff
    ld [bc], a                                    ; $5832: $02
    db $10                                        ; $5833: $10
    sub [hl]                                      ; $5834: $96
    jr jr_0e2_583f                                ; $5835: $18 $08

    inc e                                         ; $5837: $1c
    inc d                                         ; $5838: $14
    inc e                                         ; $5839: $1c
    inc c                                         ; $583a: $0c
    ld e, $12                                     ; $583b: $1e $12
    ld e, $0e                                     ; $583d: $1e $0e

jr_0e2_583f:
    rra                                           ; $583f: $1f
    dec e                                         ; $5840: $1d
    rra                                           ; $5841: $1f
    rrca                                          ; $5842: $0f
    ld e, $0a                                     ; $5843: $1e $0a
    rra                                           ; $5845: $1f
    dec c                                         ; $5846: $0d
    rra                                           ; $5847: $1f
    dec e                                         ; $5848: $1d
    ld e, $1a                                     ; $5849: $1e $1a
    ld [bc], a                                    ; $584b: $02
    ld e, $81                                     ; $584c: $1e $81
    ld a, [de]                                    ; $584e: $1a
    inc bc                                        ; $584f: $03
    ld e, $8a                                     ; $5850: $1e $8a
    add hl, de                                    ; $5852: $19
    rra                                           ; $5853: $1f
    db $fc                                        ; $5854: $fc
    rst $38                                       ; $5855: $ff
    ld a, [$fbbf]                                 ; $5856: $fa $bf $fb
    cp a                                          ; $5859: $bf
    ld d, a                                       ; $585a: $57
    ld e, a                                       ; $585b: $5f
    ld [bc], a                                    ; $585c: $02
    ccf                                           ; $585d: $3f
    add d                                         ; $585e: $82
    scf                                           ; $585f: $37
    ccf                                           ; $5860: $3f
    ld [bc], a                                    ; $5861: $02
    ld e, $02                                     ; $5862: $1e $02
    inc c                                         ; $5864: $0c
    stop                                          ; $5865: $10 $00
    adc b                                         ; $5867: $88
    dec e                                         ; $5868: $1d
    dec de                                        ; $5869: $1b
    rra                                           ; $586a: $1f
    dec de                                        ; $586b: $1b
    ld c, $1e                                     ; $586c: $0e $1e
    inc c                                         ; $586e: $0c
    inc e                                         ; $586f: $1c
    ld [bc], a                                    ; $5870: $02
    ld e, $02                                     ; $5871: $1e $02
    inc e                                         ; $5873: $1c
    ld [bc], a                                    ; $5874: $02
    jr @+$14                                      ; $5875: $18 $12

    nop                                           ; $5877: $00
    rst $38                                       ; $5878: $ff
    dec c                                         ; $5879: $0d
    inc b                                         ; $587a: $04
    db $fc                                        ; $587b: $fc
    inc b                                         ; $587c: $04
    rst $30                                       ; $587d: $f7
    cp $eb                                        ; $587e: $fe $eb
    ld a, [$ffeb]                                 ; $5880: $fa $eb $ff
    ei                                            ; $5883: $fb
    ld a, [$fffb]                                 ; $5884: $fa $fb $ff
    ld [bc], a                                    ; $5887: $02
    ld c, $84                                     ; $5888: $0e $84
    rra                                           ; $588a: $1f
    dec d                                         ; $588b: $15
    ccf                                           ; $588c: $3f
    ld [hl+], a                                   ; $588d: $22
    ld [bc], a                                    ; $588e: $02
    ccf                                           ; $588f: $3f
    sbc b                                         ; $5890: $98
    ld a, a                                       ; $5891: $7f
    ld l, b                                       ; $5892: $68
    rst $38                                       ; $5893: $ff
    or b                                          ; $5894: $b0
    ld a, a                                       ; $5895: $7f
    ld e, l                                       ; $5896: $5d
    rst $38                                       ; $5897: $ff
    ret nc                                        ; $5898: $d0

    rst $38                                       ; $5899: $ff
    or h                                          ; $589a: $b4
    ld a, a                                       ; $589b: $7f
    ld d, e                                       ; $589c: $53
    rst $38                                       ; $589d: $ff
    cp b                                          ; $589e: $b8
    ld a, d                                       ; $589f: $7a
    ld e, a                                       ; $58a0: $5f
    ld a, l                                       ; $58a1: $7d
    ld a, a                                       ; $58a2: $7f
    ld e, d                                       ; $58a3: $5a
    ld a, a                                       ; $58a4: $7f
    sbc l                                         ; $58a5: $9d
    rst $38                                       ; $58a6: $ff
    cp l                                          ; $58a7: $bd
    rst $38                                       ; $58a8: $ff
    ld [bc], a                                    ; $58a9: $02
    db $10                                        ; $58aa: $10
    sub [hl]                                      ; $58ab: $96
    jr jr_0e2_58b6                                ; $58ac: $18 $08

    inc e                                         ; $58ae: $1c
    inc d                                         ; $58af: $14
    inc e                                         ; $58b0: $1c
    inc c                                         ; $58b1: $0c
    ld e, $12                                     ; $58b2: $1e $12
    rra                                           ; $58b4: $1f
    dec c                                         ; $58b5: $0d

jr_0e2_58b6:
    rra                                           ; $58b6: $1f
    dec e                                         ; $58b7: $1d
    rra                                           ; $58b8: $1f
    dec bc                                        ; $58b9: $0b
    ld e, $0a                                     ; $58ba: $1e $0a
    rra                                           ; $58bc: $1f
    dec c                                         ; $58bd: $0d
    ld e, $1a                                     ; $58be: $1e $1a
    ld e, $1a                                     ; $58c0: $1e $1a
    ld [bc], a                                    ; $58c2: $02
    ld e, $8e                                     ; $58c3: $1e $8e
    ld a, [de]                                    ; $58c5: $1a
    ld e, $19                                     ; $58c6: $1e $19
    rra                                           ; $58c8: $1f
    dec e                                         ; $58c9: $1d
    rra                                           ; $58ca: $1f
    db $dd                                        ; $58cb: $dd
    rst $38                                       ; $58cc: $ff
    ld sp, hl                                     ; $58cd: $f9
    cp a                                          ; $58ce: $bf
    ld a, d                                       ; $58cf: $7a
    ld e, a                                       ; $58d0: $5f
    halt                                          ; $58d1: $76
    ld l, a                                       ; $58d2: $6f
    ld [bc], a                                    ; $58d3: $02
    ccf                                           ; $58d4: $3f
    add d                                         ; $58d5: $82
    dec d                                         ; $58d6: $15
    dec e                                         ; $58d7: $1d
    ld [bc], a                                    ; $58d8: $02
    ld [$0012], sp                                ; $58d9: $08 $12 $00
    add c                                         ; $58dc: $81
    dec de                                        ; $58dd: $1b
    ld [bc], a                                    ; $58de: $02
    rra                                           ; $58df: $1f
    add c                                         ; $58e0: $81
    dec e                                         ; $58e1: $1d
    ld [bc], a                                    ; $58e2: $02
    ld a, [de]                                    ; $58e3: $1a
    add h                                         ; $58e4: $84
    ld c, $1e                                     ; $58e5: $0e $1e
    inc c                                         ; $58e7: $0c
    inc e                                         ; $58e8: $1c
    ld [bc], a                                    ; $58e9: $02
    jr jr_0e2_5900                                ; $58ea: $18 $14

    nop                                           ; $58ec: $00
    rst $38                                       ; $58ed: $ff
    dec c                                         ; $58ee: $0d
    inc b                                         ; $58ef: $04
    db $fc                                        ; $58f0: $fc
    inc b                                         ; $58f1: $04
    rst $30                                       ; $58f2: $f7
    cp $ea                                        ; $58f3: $fe $ea
    ei                                            ; $58f5: $fb
    ld [$fafe], a                                 ; $58f6: $ea $fe $fa
    ei                                            ; $58f9: $fb
    ld a, [$02fd]                                 ; $58fa: $fa $fd $02
    ld b, $9e                                     ; $58fd: $06 $9e
    rra                                           ; $58ff: $1f

jr_0e2_5900:
    add hl, de                                    ; $5900: $19
    ccf                                           ; $5901: $3f
    ld [hl-], a                                   ; $5902: $32
    ccf                                           ; $5903: $3f
    dec l                                         ; $5904: $2d
    ld a, a                                       ; $5905: $7f
    ld b, a                                       ; $5906: $47
    ld a, a                                       ; $5907: $7f
    ld l, h                                       ; $5908: $6c
    rst $38                                       ; $5909: $ff
    sbc a                                         ; $590a: $9f
    rst $38                                       ; $590b: $ff
    xor b                                         ; $590c: $a8
    ld a, a                                       ; $590d: $7f
    ld e, h                                       ; $590e: $5c
    rst $38                                       ; $590f: $ff
    cp c                                          ; $5910: $b9
    ld a, a                                       ; $5911: $7f
    ld e, h                                       ; $5912: $5c
    db $fd                                        ; $5913: $fd
    xor a                                         ; $5914: $af
    ld a, [hl]                                    ; $5915: $7e
    ld l, a                                       ; $5916: $6f
    dec [hl]                                      ; $5917: $35
    ccf                                           ; $5918: $3f
    ld l, $3f                                     ; $5919: $2e $3f
    ld h, $3f                                     ; $591b: $26 $3f
    ld [bc], a                                    ; $591d: $02
    inc b                                         ; $591e: $04
    sub d                                         ; $591f: $92
    ld b, $02                                     ; $5920: $06 $02
    rlca                                          ; $5922: $07
    inc bc                                        ; $5923: $03
    rlca                                          ; $5924: $07
    dec b                                         ; $5925: $05
    rlca                                          ; $5926: $07
    inc bc                                        ; $5927: $03
    ld b, $02                                     ; $5928: $06 $02
    rlca                                          ; $592a: $07
    inc bc                                        ; $592b: $03
    ld b, $02                                     ; $592c: $06 $02
    rlca                                          ; $592e: $07
    ld bc, $0206                                  ; $592f: $01 $06 $02
    ld [bc], a                                    ; $5932: $02
    inc b                                         ; $5933: $04
    ld [bc], a                                    ; $5934: $02
    nop                                           ; $5935: $00
    ld [$8e04], sp                                ; $5936: $08 $04 $8e
    ld l, $3f                                     ; $5939: $2e $3f
    ld e, [hl]                                    ; $593b: $5e
    ld [hl], e                                    ; $593c: $73
    ld a, a                                       ; $593d: $7f
    ld a, h                                       ; $593e: $7c
    ld a, $3f                                     ; $593f: $3e $3f
    ld a, l                                       ; $5941: $7d
    ld a, a                                       ; $5942: $7f
    cp e                                          ; $5943: $bb
    rst $38                                       ; $5944: $ff
    ld e, h                                       ; $5945: $5c
    ld a, a                                       ; $5946: $7f
    ld [bc], a                                    ; $5947: $02
    ccf                                           ; $5948: $3f
    stop                                          ; $5949: $10 $00
    ld c, $02                                     ; $594b: $0e $02
    ld [bc], a                                    ; $594d: $02
    inc bc                                        ; $594e: $03
    stop                                          ; $594f: $10 $00
    rst $38                                       ; $5951: $ff
    dec c                                         ; $5952: $0d
    inc b                                         ; $5953: $04
    db $fc                                        ; $5954: $fc
    inc b                                         ; $5955: $04
    rst $30                                       ; $5956: $f7
    cp $ea                                        ; $5957: $fe $ea
    ei                                            ; $5959: $fb
    ld [$fafe], a                                 ; $595a: $ea $fe $fa
    ei                                            ; $595d: $fb
    ld a, [$02fe]                                 ; $595e: $fa $fe $02
    ld b, $9e                                     ; $5961: $06 $9e
    rra                                           ; $5963: $1f
    add hl, de                                    ; $5964: $19
    ccf                                           ; $5965: $3f
    ld [hl-], a                                   ; $5966: $32
    ccf                                           ; $5967: $3f
    dec l                                         ; $5968: $2d
    ld a, a                                       ; $5969: $7f
    ld b, a                                       ; $596a: $47
    ld a, a                                       ; $596b: $7f
    ld l, h                                       ; $596c: $6c
    rst $38                                       ; $596d: $ff
    sbc a                                         ; $596e: $9f
    rst $38                                       ; $596f: $ff
    xor b                                         ; $5970: $a8
    ld a, a                                       ; $5971: $7f
    ld e, h                                       ; $5972: $5c
    rst $38                                       ; $5973: $ff
    cp c                                          ; $5974: $b9
    ld a, a                                       ; $5975: $7f
    ld e, h                                       ; $5976: $5c
    db $fd                                        ; $5977: $fd
    xor a                                         ; $5978: $af
    ld a, [hl]                                    ; $5979: $7e
    ld l, a                                       ; $597a: $6f
    dec [hl]                                      ; $597b: $35
    ccf                                           ; $597c: $3f
    ld [hl], $3f                                  ; $597d: $36 $3f
    ld [hl+], a                                   ; $597f: $22
    ccf                                           ; $5980: $3f
    ld [bc], a                                    ; $5981: $02
    inc b                                         ; $5982: $04
    sub d                                         ; $5983: $92
    ld b, $02                                     ; $5984: $06 $02
    rlca                                          ; $5986: $07
    inc bc                                        ; $5987: $03
    rlca                                          ; $5988: $07
    dec b                                         ; $5989: $05
    rlca                                          ; $598a: $07
    inc bc                                        ; $598b: $03
    ld b, $02                                     ; $598c: $06 $02
    rlca                                          ; $598e: $07
    inc bc                                        ; $598f: $03
    ld b, $02                                     ; $5990: $06 $02
    rlca                                          ; $5992: $07
    ld bc, $0206                                  ; $5993: $01 $06 $02
    ld [bc], a                                    ; $5996: $02
    inc b                                         ; $5997: $04
    ld [bc], a                                    ; $5998: $02
    nop                                           ; $5999: $00
    ld [$8504], sp                                ; $599a: $08 $04 $85
    inc sp                                        ; $599d: $33
    ccf                                           ; $599e: $3f
    ld [hl], a                                    ; $599f: $77
    ld a, h                                       ; $59a0: $7c
    ld a, a                                       ; $59a1: $7f
    ld [bc], a                                    ; $59a2: $02
    ld a, e                                       ; $59a3: $7b
    add a                                         ; $59a4: $87
    ld a, a                                       ; $59a5: $7f
    or a                                          ; $59a6: $b7
    rst $38                                       ; $59a7: $ff
    cp a                                          ; $59a8: $bf
    rst $38                                       ; $59a9: $ff
    rst $30                                       ; $59aa: $f7
    rst $38                                       ; $59ab: $ff
    ld [bc], a                                    ; $59ac: $02
    ld a, [hl]                                    ; $59ad: $7e
    stop                                          ; $59ae: $10 $00
    ld [bc], a                                    ; $59b0: $02
    inc b                                         ; $59b1: $04
    add c                                         ; $59b2: $81
    ld b, $02                                     ; $59b3: $06 $02
    ld [bc], a                                    ; $59b5: $02
    inc bc                                        ; $59b6: $03
    ld b, $82                                     ; $59b7: $06 $82
    ld bc, $0207                                  ; $59b9: $01 $07 $02
    ld b, $14                                     ; $59bc: $06 $14
    nop                                           ; $59be: $00
    rst $38                                       ; $59bf: $ff
    dec c                                         ; $59c0: $0d
    inc b                                         ; $59c1: $04
    db $fc                                        ; $59c2: $fc
    inc b                                         ; $59c3: $04
    rst $30                                       ; $59c4: $f7
    cp $eb                                        ; $59c5: $fe $eb
    ei                                            ; $59c7: $fb
    db $eb                                        ; $59c8: $eb
    cp $fb                                        ; $59c9: $fe $fb
    ei                                            ; $59cb: $fb
    ei                                            ; $59cc: $fb
    db $fd                                        ; $59cd: $fd
    ld [bc], a                                    ; $59ce: $02
    ld b, $9e                                     ; $59cf: $06 $9e
    rra                                           ; $59d1: $1f
    add hl, de                                    ; $59d2: $19
    ccf                                           ; $59d3: $3f
    ld [hl-], a                                   ; $59d4: $32
    ccf                                           ; $59d5: $3f
    inc l                                         ; $59d6: $2c
    ld a, a                                       ; $59d7: $7f
    ld b, a                                       ; $59d8: $47
    rst $38                                       ; $59d9: $ff
    xor h                                         ; $59da: $ac
    rst $38                                       ; $59db: $ff
    xor a                                         ; $59dc: $af
    ld a, a                                       ; $59dd: $7f
    ld e, b                                       ; $59de: $58
    rst $38                                       ; $59df: $ff
    xor h                                         ; $59e0: $ac
    ld a, a                                       ; $59e1: $7f
    ld e, c                                       ; $59e2: $59
    rst $38                                       ; $59e3: $ff
    sbc h                                         ; $59e4: $9c
    ld a, l                                       ; $59e5: $7d
    ld l, a                                       ; $59e6: $6f
    ld a, [hl]                                    ; $59e7: $7e
    ld a, a                                       ; $59e8: $7f
    dec a                                         ; $59e9: $3d
    ccf                                           ; $59ea: $3f
    ld l, $3f                                     ; $59eb: $2e $3f
    ld h, [hl]                                    ; $59ed: $66
    ld a, a                                       ; $59ee: $7f
    ld [bc], a                                    ; $59ef: $02
    inc b                                         ; $59f0: $04
    add d                                         ; $59f1: $82
    ld b, $02                                     ; $59f2: $06 $02
    inc bc                                        ; $59f4: $03
    rlca                                          ; $59f5: $07
    adc l                                         ; $59f6: $8d
    dec b                                         ; $59f7: $05
    rlca                                          ; $59f8: $07
    inc bc                                        ; $59f9: $03
    ld b, $02                                     ; $59fa: $06 $02
    rlca                                          ; $59fc: $07
    inc bc                                        ; $59fd: $03
    ld b, $02                                     ; $59fe: $06 $02
    rlca                                          ; $5a00: $07
    ld bc, $0206                                  ; $5a01: $01 $06 $02
    ld [bc], a                                    ; $5a04: $02
    inc b                                         ; $5a05: $04
    ld [bc], a                                    ; $5a06: $02
    nop                                           ; $5a07: $00
    ld [$8c04], sp                                ; $5a08: $08 $04 $8c
    ld c, [hl]                                    ; $5a0b: $4e
    ld a, a                                       ; $5a0c: $7f
    ld e, [hl]                                    ; $5a0d: $5e
    ld h, a                                       ; $5a0e: $67
    ccf                                           ; $5a0f: $3f
    dec sp                                        ; $5a10: $3b
    ld a, [hl]                                    ; $5a11: $7e
    ld a, l                                       ; $5a12: $7d
    cp h                                          ; $5a13: $bc
    rst $38                                       ; $5a14: $ff
    ld e, a                                       ; $5a15: $5f
    ld a, a                                       ; $5a16: $7f
    ld [bc], a                                    ; $5a17: $02
    jr c, jr_0e2_5a2c                             ; $5a18: $38 $12

    nop                                           ; $5a1a: $00
    inc b                                         ; $5a1b: $04
    ld [bc], a                                    ; $5a1c: $02
    add c                                         ; $5a1d: $81
    ld bc, $0303                                  ; $5a1e: $01 $03 $03
    ld [bc], a                                    ; $5a21: $02
    ld [bc], a                                    ; $5a22: $02
    ld [bc], a                                    ; $5a23: $02
    inc bc                                        ; $5a24: $03
    inc d                                         ; $5a25: $14
    nop                                           ; $5a26: $00
    rst $38                                       ; $5a27: $ff
    dec c                                         ; $5a28: $0d
    inc b                                         ; $5a29: $04
    db $fc                                        ; $5a2a: $fc
    inc b                                         ; $5a2b: $04

jr_0e2_5a2c:
    rst $30                                       ; $5a2c: $f7
    cp $ea                                        ; $5a2d: $fe $ea
    ei                                            ; $5a2f: $fb
    ld [$fafe], a                                 ; $5a30: $ea $fe $fa
    ei                                            ; $5a33: $fb
    ld a, [$02ff]                                 ; $5a34: $fa $ff $02
    ld b, $9e                                     ; $5a37: $06 $9e
    rra                                           ; $5a39: $1f
    add hl, de                                    ; $5a3a: $19
    ccf                                           ; $5a3b: $3f
    ld [hl-], a                                   ; $5a3c: $32
    ccf                                           ; $5a3d: $3f
    dec l                                         ; $5a3e: $2d
    ld a, a                                       ; $5a3f: $7f
    ld b, a                                       ; $5a40: $47
    ld a, a                                       ; $5a41: $7f
    ld l, h                                       ; $5a42: $6c
    rst $38                                       ; $5a43: $ff
    sbc a                                         ; $5a44: $9f
    rst $38                                       ; $5a45: $ff
    xor b                                         ; $5a46: $a8
    ld a, a                                       ; $5a47: $7f
    ld e, h                                       ; $5a48: $5c
    rst $38                                       ; $5a49: $ff
    cp c                                          ; $5a4a: $b9
    ld a, a                                       ; $5a4b: $7f
    ld e, h                                       ; $5a4c: $5c
    db $fd                                        ; $5a4d: $fd
    xor a                                         ; $5a4e: $af
    ld a, [hl]                                    ; $5a4f: $7e
    ld l, a                                       ; $5a50: $6f
    dec a                                         ; $5a51: $3d
    ccf                                           ; $5a52: $3f
    ld l, $3f                                     ; $5a53: $2e $3f
    ld c, [hl]                                    ; $5a55: $4e
    ld a, a                                       ; $5a56: $7f
    ld [bc], a                                    ; $5a57: $02
    inc b                                         ; $5a58: $04
    sub d                                         ; $5a59: $92
    ld b, $02                                     ; $5a5a: $06 $02
    rlca                                          ; $5a5c: $07
    inc bc                                        ; $5a5d: $03
    rlca                                          ; $5a5e: $07
    dec b                                         ; $5a5f: $05
    rlca                                          ; $5a60: $07
    inc bc                                        ; $5a61: $03
    ld b, $02                                     ; $5a62: $06 $02
    rlca                                          ; $5a64: $07
    inc bc                                        ; $5a65: $03
    ld b, $02                                     ; $5a66: $06 $02
    rlca                                          ; $5a68: $07
    ld bc, $0206                                  ; $5a69: $01 $06 $02
    ld [bc], a                                    ; $5a6c: $02
    inc b                                         ; $5a6d: $04
    ld [bc], a                                    ; $5a6e: $02
    nop                                           ; $5a6f: $00
    ld [$8e04], sp                                ; $5a70: $08 $04 $8e
    ld c, [hl]                                    ; $5a73: $4e
    ld a, a                                       ; $5a74: $7f
    cp [hl]                                       ; $5a75: $be
    rst $28                                       ; $5a76: $ef
    ld a, [hl]                                    ; $5a77: $7e
    ld [hl], a                                    ; $5a78: $77
    ld a, $3b                                     ; $5a79: $3e $3b
    ld a, l                                       ; $5a7b: $7d
    ld a, a                                       ; $5a7c: $7f
    cp a                                          ; $5a7d: $bf
    rst $38                                       ; $5a7e: $ff
    ld c, a                                       ; $5a7f: $4f
    ld a, a                                       ; $5a80: $7f
    ld [bc], a                                    ; $5a81: $02
    add hl, sp                                    ; $5a82: $39
    stop                                          ; $5a83: $10 $00
    ld b, $08                                     ; $5a85: $06 $08
    add c                                         ; $5a87: $81
    inc b                                         ; $5a88: $04
    inc bc                                        ; $5a89: $03
    inc c                                         ; $5a8a: $0c
    add d                                         ; $5a8b: $82
    inc bc                                        ; $5a8c: $03
    rrca                                          ; $5a8d: $0f
    ld [bc], a                                    ; $5a8e: $02
    ld c, $12                                     ; $5a8f: $0e $12
    nop                                           ; $5a91: $00
    rst $38                                       ; $5a92: $ff
    dec c                                         ; $5a93: $0d
    inc b                                         ; $5a94: $04
    db $fc                                        ; $5a95: $fc
    inc b                                         ; $5a96: $04
    rst $30                                       ; $5a97: $f7
    cp $eb                                        ; $5a98: $fe $eb
    ei                                            ; $5a9a: $fb
    db $eb                                        ; $5a9b: $eb
    cp $fb                                        ; $5a9c: $fe $fb
    ei                                            ; $5a9e: $fb
    ei                                            ; $5a9f: $fb
    db $fd                                        ; $5aa0: $fd
    ld [bc], a                                    ; $5aa1: $02
    ld b, $9e                                     ; $5aa2: $06 $9e
    rra                                           ; $5aa4: $1f
    add hl, de                                    ; $5aa5: $19
    ccf                                           ; $5aa6: $3f
    ld [hl-], a                                   ; $5aa7: $32
    ccf                                           ; $5aa8: $3f
    inc l                                         ; $5aa9: $2c
    ld a, a                                       ; $5aaa: $7f
    ld b, a                                       ; $5aab: $47
    rst $38                                       ; $5aac: $ff
    xor h                                         ; $5aad: $ac
    rst $38                                       ; $5aae: $ff
    xor a                                         ; $5aaf: $af
    ld a, a                                       ; $5ab0: $7f
    ld e, b                                       ; $5ab1: $58
    rst $38                                       ; $5ab2: $ff
    xor h                                         ; $5ab3: $ac
    ld a, a                                       ; $5ab4: $7f
    ld e, c                                       ; $5ab5: $59
    rst $38                                       ; $5ab6: $ff
    sbc h                                         ; $5ab7: $9c
    ld a, l                                       ; $5ab8: $7d
    ld l, a                                       ; $5ab9: $6f
    ld a, [hl]                                    ; $5aba: $7e
    ld a, a                                       ; $5abb: $7f
    dec [hl]                                      ; $5abc: $35
    ccf                                           ; $5abd: $3f
    ld [hl], $3f                                  ; $5abe: $36 $3f
    ld [hl+], a                                   ; $5ac0: $22
    ccf                                           ; $5ac1: $3f
    ld [bc], a                                    ; $5ac2: $02
    inc b                                         ; $5ac3: $04
    add d                                         ; $5ac4: $82
    ld b, $02                                     ; $5ac5: $06 $02
    inc bc                                        ; $5ac7: $03
    rlca                                          ; $5ac8: $07
    adc l                                         ; $5ac9: $8d
    dec b                                         ; $5aca: $05
    rlca                                          ; $5acb: $07
    inc bc                                        ; $5acc: $03
    ld b, $02                                     ; $5acd: $06 $02
    rlca                                          ; $5acf: $07
    inc bc                                        ; $5ad0: $03
    ld b, $02                                     ; $5ad1: $06 $02
    rlca                                          ; $5ad3: $07
    ld bc, $0206                                  ; $5ad4: $01 $06 $02
    ld [bc], a                                    ; $5ad7: $02
    inc b                                         ; $5ad8: $04
    ld [bc], a                                    ; $5ad9: $02
    nop                                           ; $5ada: $00
    ld [$8104], sp                                ; $5adb: $08 $04 $81
    ld h, $02                                     ; $5ade: $26 $02
    ccf                                           ; $5ae0: $3f
    adc c                                         ; $5ae1: $89
    jr c, jr_0e2_5b63                             ; $5ae2: $38 $7f

    ld [hl], a                                    ; $5ae4: $77
    ei                                            ; $5ae5: $fb
    rst $38                                       ; $5ae6: $ff
    cp a                                          ; $5ae7: $bf
    rst $38                                       ; $5ae8: $ff
    ld e, l                                       ; $5ae9: $5d
    ld a, a                                       ; $5aea: $7f
    ld [bc], a                                    ; $5aeb: $02
    ccf                                           ; $5aec: $3f
    ld [de], a                                    ; $5aed: $12
    nop                                           ; $5aee: $00
    ld [bc], a                                    ; $5aef: $02
    ld [bc], a                                    ; $5af0: $02
    add h                                         ; $5af1: $84
    ld bc, $0103                                  ; $5af2: $01 $03 $01
    inc bc                                        ; $5af5: $03
    ld [bc], a                                    ; $5af6: $02
    ld [bc], a                                    ; $5af7: $02
    ld [bc], a                                    ; $5af8: $02
    inc bc                                        ; $5af9: $03
    ld [bc], a                                    ; $5afa: $02
    nop                                           ; $5afb: $00
    ld [bc], a                                    ; $5afc: $02
    ld [bc], a                                    ; $5afd: $02
    ld [de], a                                    ; $5afe: $12
    nop                                           ; $5aff: $00
    rst $38                                       ; $5b00: $ff
    dec c                                         ; $5b01: $0d
    inc b                                         ; $5b02: $04
    db $fc                                        ; $5b03: $fc
    inc b                                         ; $5b04: $04
    rst $30                                       ; $5b05: $f7
    cp $eb                                        ; $5b06: $fe $eb
    ld a, [$ffeb]                                 ; $5b08: $fa $eb $ff
    ei                                            ; $5b0b: $fb
    ld a, [$fffb]                                 ; $5b0c: $fa $fb $ff
    ld [bc], a                                    ; $5b0f: $02
    rrca                                          ; $5b10: $0f
    add l                                         ; $5b11: $85
    ld d, $1f                                     ; $5b12: $16 $1f
    add hl, sp                                    ; $5b14: $39
    ccf                                           ; $5b15: $3f
    dec a                                         ; $5b16: $3d
    add hl, bc                                    ; $5b17: $09
    ccf                                           ; $5b18: $3f
    adc l                                         ; $5b19: $8d
    dec hl                                        ; $5b1a: $2b
    ccf                                           ; $5b1b: $3f
    jr c, jr_0e2_5b5d                             ; $5b1c: $38 $3f

    ld e, a                                       ; $5b1e: $5f
    ld a, a                                       ; $5b1f: $7f
    ld e, b                                       ; $5b20: $58
    ld a, a                                       ; $5b21: $7f
    ld e, h                                       ; $5b22: $5c
    ld a, a                                       ; $5b23: $7f
    sbc a                                         ; $5b24: $9f
    rst $38                                       ; $5b25: $ff
    cp a                                          ; $5b26: $bf
    inc bc                                        ; $5b27: $03
    rst $38                                       ; $5b28: $ff
    ld [bc], a                                    ; $5b29: $02
    db $10                                        ; $5b2a: $10
    add e                                         ; $5b2b: $83
    ld [$0c18], sp                                ; $5b2c: $08 $18 $0c
    inc bc                                        ; $5b2f: $03
    inc e                                         ; $5b30: $1c
    add c                                         ; $5b31: $81
    inc d                                         ; $5b32: $14
    dec b                                         ; $5b33: $05
    inc e                                         ; $5b34: $1c
    add e                                         ; $5b35: $83
    inc d                                         ; $5b36: $14
    inc e                                         ; $5b37: $1c
    inc d                                         ; $5b38: $14
    inc bc                                        ; $5b39: $03
    inc e                                         ; $5b3a: $1c
    adc [hl]                                      ; $5b3b: $8e
    ld a, [de]                                    ; $5b3c: $1a
    ld e, $0a                                     ; $5b3d: $1e $0a
    ld e, $1a                                     ; $5b3f: $1e $1a
    ld e, $19                                     ; $5b41: $1e $19
    rra                                           ; $5b43: $1f
    dec e                                         ; $5b44: $1d
    rra                                           ; $5b45: $1f
    rrca                                          ; $5b46: $0f
    rra                                           ; $5b47: $1f
    rst $38                                       ; $5b48: $ff
    cp a                                          ; $5b49: $bf
    ld [bc], a                                    ; $5b4a: $02
    ld a, a                                       ; $5b4b: $7f
    ld [bc], a                                    ; $5b4c: $02
    ccf                                           ; $5b4d: $3f
    inc b                                         ; $5b4e: $04
    ld a, a                                       ; $5b4f: $7f
    add d                                         ; $5b50: $82
    jr c, jr_0e2_5b92                             ; $5b51: $38 $3f

    ld [bc], a                                    ; $5b53: $02
    rra                                           ; $5b54: $1f
    ld [de], a                                    ; $5b55: $12
    nop                                           ; $5b56: $00
    add [hl]                                      ; $5b57: $86
    rra                                           ; $5b58: $1f
    dec e                                         ; $5b59: $1d
    ld c, $1e                                     ; $5b5a: $0e $1e
    inc c                                         ; $5b5c: $0c

jr_0e2_5b5d:
    inc e                                         ; $5b5d: $1c
    ld [bc], a                                    ; $5b5e: $02
    ld e, $84                                     ; $5b5f: $1e $84
    ld b, $1e                                     ; $5b61: $06 $1e

jr_0e2_5b63:
    inc c                                         ; $5b63: $0c
    inc e                                         ; $5b64: $1c
    ld [bc], a                                    ; $5b65: $02
    jr jr_0e2_5b7a                                ; $5b66: $18 $12

    nop                                           ; $5b68: $00
    rst $38                                       ; $5b69: $ff
    dec c                                         ; $5b6a: $0d
    inc b                                         ; $5b6b: $04
    db $fc                                        ; $5b6c: $fc
    inc b                                         ; $5b6d: $04
    rst $30                                       ; $5b6e: $f7
    cp $eb                                        ; $5b6f: $fe $eb
    ld a, [$ffeb]                                 ; $5b71: $fa $eb $ff
    ei                                            ; $5b74: $fb
    ld a, [$fefb]                                 ; $5b75: $fa $fb $fe
    ld [bc], a                                    ; $5b78: $02
    rrca                                          ; $5b79: $0f

jr_0e2_5b7a:
    add l                                         ; $5b7a: $85
    ld d, $1f                                     ; $5b7b: $16 $1f
    add hl, sp                                    ; $5b7d: $39
    ccf                                           ; $5b7e: $3f
    dec a                                         ; $5b7f: $3d
    add hl, bc                                    ; $5b80: $09
    ccf                                           ; $5b81: $3f
    sub b                                         ; $5b82: $90
    dec hl                                        ; $5b83: $2b
    ccf                                           ; $5b84: $3f
    jr c, jr_0e2_5bc6                             ; $5b85: $38 $3f

    ld e, a                                       ; $5b87: $5f
    ld a, a                                       ; $5b88: $7f
    ld e, b                                       ; $5b89: $58
    ld a, a                                       ; $5b8a: $7f
    sbc h                                         ; $5b8b: $9c
    rst $38                                       ; $5b8c: $ff
    cp a                                          ; $5b8d: $bf
    rst $38                                       ; $5b8e: $ff
    sbc a                                         ; $5b8f: $9f
    rst $38                                       ; $5b90: $ff
    rst $18                                       ; $5b91: $df

jr_0e2_5b92:
    rst $38                                       ; $5b92: $ff
    ld [bc], a                                    ; $5b93: $02
    db $10                                        ; $5b94: $10
    add e                                         ; $5b95: $83
    ld [$0c18], sp                                ; $5b96: $08 $18 $0c
    inc bc                                        ; $5b99: $03
    inc e                                         ; $5b9a: $1c
    add c                                         ; $5b9b: $81
    inc d                                         ; $5b9c: $14
    dec b                                         ; $5b9d: $05
    inc e                                         ; $5b9e: $1c
    add h                                         ; $5b9f: $84
    inc d                                         ; $5ba0: $14
    inc e                                         ; $5ba1: $1c
    inc d                                         ; $5ba2: $14
    inc e                                         ; $5ba3: $1c
    ld [bc], a                                    ; $5ba4: $02
    ld e, $90                                     ; $5ba5: $1e $90
    ld a, [de]                                    ; $5ba7: $1a
    ld e, $0a                                     ; $5ba8: $1e $0a
    ld e, $19                                     ; $5baa: $1e $19
    rra                                           ; $5bac: $1f
    dec e                                         ; $5bad: $1d
    rra                                           ; $5bae: $1f
    dec e                                         ; $5baf: $1d
    rra                                           ; $5bb0: $1f
    ld c, $1e                                     ; $5bb1: $0e $1e
    rst $38                                       ; $5bb3: $ff
    cp a                                          ; $5bb4: $bf
    rst $38                                       ; $5bb5: $ff
    sbc a                                         ; $5bb6: $9f
    ld [bc], a                                    ; $5bb7: $02
    ld a, a                                       ; $5bb8: $7f
    ld [bc], a                                    ; $5bb9: $02
    ccf                                           ; $5bba: $3f
    add h                                         ; $5bbb: $84
    ld a, $3f                                     ; $5bbc: $3e $3f
    dec sp                                        ; $5bbe: $3b
    ccf                                           ; $5bbf: $3f
    ld [bc], a                                    ; $5bc0: $02
    rrca                                          ; $5bc1: $0f
    ld [de], a                                    ; $5bc2: $12
    nop                                           ; $5bc3: $00
    add d                                         ; $5bc4: $82
    rlca                                          ; $5bc5: $07

jr_0e2_5bc6:
    dec c                                         ; $5bc6: $0d
    ld [bc], a                                    ; $5bc7: $02
    ld c, $85                                     ; $5bc8: $0e $85
    ld b, $0e                                     ; $5bca: $06 $0e
    inc bc                                        ; $5bcc: $03
    rrca                                          ; $5bcd: $0f
    inc bc                                        ; $5bce: $03
    inc bc                                        ; $5bcf: $03
    rrca                                          ; $5bd0: $0f
    ld [bc], a                                    ; $5bd1: $02
    ld c, $12                                     ; $5bd2: $0e $12
    nop                                           ; $5bd4: $00
    rst $38                                       ; $5bd5: $ff
    dec c                                         ; $5bd6: $0d
    inc b                                         ; $5bd7: $04
    db $fc                                        ; $5bd8: $fc
    inc b                                         ; $5bd9: $04
    rst $30                                       ; $5bda: $f7
    cp $ec                                        ; $5bdb: $fe $ec
    ld a, [$ffec]                                 ; $5bdd: $fa $ec $ff
    db $fc                                        ; $5be0: $fc
    ld a, [$fffc]                                 ; $5be1: $fa $fc $ff
    ld [bc], a                                    ; $5be4: $02
    rrca                                          ; $5be5: $0f
    add l                                         ; $5be6: $85
    ld d, $1f                                     ; $5be7: $16 $1f
    add hl, sp                                    ; $5be9: $39
    ccf                                           ; $5bea: $3f
    dec a                                         ; $5beb: $3d
    add hl, bc                                    ; $5bec: $09
    ccf                                           ; $5bed: $3f
    adc l                                         ; $5bee: $8d
    dec hl                                        ; $5bef: $2b
    ccf                                           ; $5bf0: $3f
    jr c, @+$41                                   ; $5bf1: $38 $3f

    ld e, a                                       ; $5bf3: $5f
    ld a, a                                       ; $5bf4: $7f
    ld e, b                                       ; $5bf5: $58
    ld a, a                                       ; $5bf6: $7f
    call c, $bfff                                 ; $5bf7: $dc $ff $bf
    rst $38                                       ; $5bfa: $ff
    cp a                                          ; $5bfb: $bf
    inc bc                                        ; $5bfc: $03
    rst $38                                       ; $5bfd: $ff
    ld [bc], a                                    ; $5bfe: $02
    db $10                                        ; $5bff: $10
    add e                                         ; $5c00: $83
    ld [$0c18], sp                                ; $5c01: $08 $18 $0c
    inc bc                                        ; $5c04: $03
    inc e                                         ; $5c05: $1c
    add c                                         ; $5c06: $81
    inc d                                         ; $5c07: $14
    dec b                                         ; $5c08: $05
    inc e                                         ; $5c09: $1c
    add e                                         ; $5c0a: $83
    inc d                                         ; $5c0b: $14
    inc e                                         ; $5c0c: $1c
    inc d                                         ; $5c0d: $14
    inc bc                                        ; $5c0e: $03
    inc e                                         ; $5c0f: $1c
    adc c                                         ; $5c10: $89
    ld a, [de]                                    ; $5c11: $1a
    ld e, $0a                                     ; $5c12: $1e $0a
    ld e, $1a                                     ; $5c14: $1e $1a
    ld e, $19                                     ; $5c16: $1e $19
    rra                                           ; $5c18: $1f
    dec e                                         ; $5c19: $1d
    inc bc                                        ; $5c1a: $03
    rra                                           ; $5c1b: $1f
    add d                                         ; $5c1c: $82
    rst $38                                       ; $5c1d: $ff
    cp a                                          ; $5c1e: $bf
    ld b, $7f                                     ; $5c1f: $06 $7f
    add d                                         ; $5c21: $82
    ld h, a                                       ; $5c22: $67
    ld a, a                                       ; $5c23: $7f
    ld [bc], a                                    ; $5c24: $02
    ld a, $14                                     ; $5c25: $3e $14
    nop                                           ; $5c27: $00
    add l                                         ; $5c28: $85
    rra                                           ; $5c29: $1f
    dec e                                         ; $5c2a: $1d
    ld d, $1e                                     ; $5c2b: $16 $1e
    inc d                                         ; $5c2d: $14
    inc bc                                        ; $5c2e: $03
    inc e                                         ; $5c2f: $1c
    ld [bc], a                                    ; $5c30: $02
    jr jr_0e2_5c49                                ; $5c31: $18 $16

    nop                                           ; $5c33: $00
    rst $38                                       ; $5c34: $ff
    dec c                                         ; $5c35: $0d
    inc b                                         ; $5c36: $04
    db $fc                                        ; $5c37: $fc
    inc b                                         ; $5c38: $04
    rst $30                                       ; $5c39: $f7
    cp $eb                                        ; $5c3a: $fe $eb
    ld a, [$ffeb]                                 ; $5c3c: $fa $eb $ff
    ei                                            ; $5c3f: $fb
    ei                                            ; $5c40: $fb
    ei                                            ; $5c41: $fb
    rst $38                                       ; $5c42: $ff
    ld [bc], a                                    ; $5c43: $02
    rrca                                          ; $5c44: $0f
    add l                                         ; $5c45: $85
    ld d, $1f                                     ; $5c46: $16 $1f
    add hl, sp                                    ; $5c48: $39

jr_0e2_5c49:
    ccf                                           ; $5c49: $3f
    dec a                                         ; $5c4a: $3d
    add hl, bc                                    ; $5c4b: $09
    ccf                                           ; $5c4c: $3f
    sub b                                         ; $5c4d: $90
    dec hl                                        ; $5c4e: $2b
    ccf                                           ; $5c4f: $3f
    ld a, b                                       ; $5c50: $78
    ld a, a                                       ; $5c51: $7f
    ld e, a                                       ; $5c52: $5f
    ld a, a                                       ; $5c53: $7f
    ld e, b                                       ; $5c54: $58
    ld a, a                                       ; $5c55: $7f
    sbc h                                         ; $5c56: $9c
    rst $38                                       ; $5c57: $ff
    cp a                                          ; $5c58: $bf
    rst $38                                       ; $5c59: $ff
    cp a                                          ; $5c5a: $bf
    rst $38                                       ; $5c5b: $ff
    rst $30                                       ; $5c5c: $f7
    rst $38                                       ; $5c5d: $ff
    ld [bc], a                                    ; $5c5e: $02
    db $10                                        ; $5c5f: $10
    add e                                         ; $5c60: $83
    ld [$0c18], sp                                ; $5c61: $08 $18 $0c
    inc bc                                        ; $5c64: $03
    inc e                                         ; $5c65: $1c
    add c                                         ; $5c66: $81
    inc d                                         ; $5c67: $14
    dec b                                         ; $5c68: $05
    inc e                                         ; $5c69: $1c
    add e                                         ; $5c6a: $83
    inc d                                         ; $5c6b: $14
    inc e                                         ; $5c6c: $1c
    inc d                                         ; $5c6d: $14
    inc bc                                        ; $5c6e: $03
    inc e                                         ; $5c6f: $1c
    adc [hl]                                      ; $5c70: $8e
    ld a, [de]                                    ; $5c71: $1a
    ld e, $0a                                     ; $5c72: $1e $0a
    ld e, $19                                     ; $5c74: $1e $19
    rra                                           ; $5c76: $1f
    dec e                                         ; $5c77: $1d
    rra                                           ; $5c78: $1f
    add hl, de                                    ; $5c79: $19
    rra                                           ; $5c7a: $1f
    dec de                                        ; $5c7b: $1b
    rra                                           ; $5c7c: $1f
    rst $38                                       ; $5c7d: $ff
    cp a                                          ; $5c7e: $bf
    ld [bc], a                                    ; $5c7f: $02
    ld a, a                                       ; $5c80: $7f
    add d                                         ; $5c81: $82
    ld l, a                                       ; $5c82: $6f
    ld a, a                                       ; $5c83: $7f
    ld [bc], a                                    ; $5c84: $02
    rst $38                                       ; $5c85: $ff
    add h                                         ; $5c86: $84
    rst $00                                       ; $5c87: $c7
    rst $38                                       ; $5c88: $ff
    db $fd                                        ; $5c89: $fd
    rst $38                                       ; $5c8a: $ff
    ld [bc], a                                    ; $5c8b: $02
    ld a, a                                       ; $5c8c: $7f
    ld [de], a                                    ; $5c8d: $12
    nop                                           ; $5c8e: $00
    add h                                         ; $5c8f: $84
    rrca                                          ; $5c90: $0f
    dec c                                         ; $5c91: $0d
    rrca                                          ; $5c92: $0f
    add hl, bc                                    ; $5c93: $09
    ld [bc], a                                    ; $5c94: $02
    ld c, $06                                     ; $5c95: $0e $06
    inc c                                         ; $5c97: $0c
    inc d                                         ; $5c98: $14
    nop                                           ; $5c99: $00
    rst $38                                       ; $5c9a: $ff
    dec c                                         ; $5c9b: $0d
    inc b                                         ; $5c9c: $04
    db $fc                                        ; $5c9d: $fc
    inc b                                         ; $5c9e: $04
    rst $30                                       ; $5c9f: $f7
    cp $ec                                        ; $5ca0: $fe $ec
    ld a, [$ffec]                                 ; $5ca2: $fa $ec $ff
    db $fc                                        ; $5ca5: $fc
    ld a, [$fffc]                                 ; $5ca6: $fa $fc $ff
    ld [bc], a                                    ; $5ca9: $02
    rrca                                          ; $5caa: $0f
    add l                                         ; $5cab: $85
    ld d, $1f                                     ; $5cac: $16 $1f
    add hl, sp                                    ; $5cae: $39
    ccf                                           ; $5caf: $3f
    dec a                                         ; $5cb0: $3d
    add hl, bc                                    ; $5cb1: $09
    ccf                                           ; $5cb2: $3f
    adc l                                         ; $5cb3: $8d
    dec hl                                        ; $5cb4: $2b
    ccf                                           ; $5cb5: $3f
    jr c, jr_0e2_5cf7                             ; $5cb6: $38 $3f

    ld e, a                                       ; $5cb8: $5f
    ld a, a                                       ; $5cb9: $7f
    ld e, b                                       ; $5cba: $58
    ld a, a                                       ; $5cbb: $7f
    ld e, h                                       ; $5cbc: $5c
    ld a, a                                       ; $5cbd: $7f
    sbc a                                         ; $5cbe: $9f
    rst $38                                       ; $5cbf: $ff
    cp a                                          ; $5cc0: $bf
    inc bc                                        ; $5cc1: $03
    rst $38                                       ; $5cc2: $ff
    ld [bc], a                                    ; $5cc3: $02
    db $10                                        ; $5cc4: $10
    add e                                         ; $5cc5: $83
    ld [$0c18], sp                                ; $5cc6: $08 $18 $0c
    inc bc                                        ; $5cc9: $03
    inc e                                         ; $5cca: $1c
    add c                                         ; $5ccb: $81
    inc d                                         ; $5ccc: $14
    dec b                                         ; $5ccd: $05
    inc e                                         ; $5cce: $1c
    add e                                         ; $5ccf: $83
    inc d                                         ; $5cd0: $14
    inc e                                         ; $5cd1: $1c
    inc d                                         ; $5cd2: $14
    inc bc                                        ; $5cd3: $03
    inc e                                         ; $5cd4: $1c
    adc c                                         ; $5cd5: $89
    ld a, [de]                                    ; $5cd6: $1a
    ld e, $0a                                     ; $5cd7: $1e $0a
    ld e, $1b                                     ; $5cd9: $1e $1b
    rra                                           ; $5cdb: $1f
    dec e                                         ; $5cdc: $1d
    rra                                           ; $5cdd: $1f
    dec e                                         ; $5cde: $1d
    inc bc                                        ; $5cdf: $03
    rra                                           ; $5ce0: $1f
    add l                                         ; $5ce1: $85
    rst $38                                       ; $5ce2: $ff
    cp a                                          ; $5ce3: $bf
    ld l, a                                       ; $5ce4: $6f
    ld a, a                                       ; $5ce5: $7f
    cpl                                           ; $5ce6: $2f
    inc bc                                        ; $5ce7: $03
    ccf                                           ; $5ce8: $3f
    ld [bc], a                                    ; $5ce9: $02
    rra                                           ; $5cea: $1f
    ld [bc], a                                    ; $5ceb: $02
    inc bc                                        ; $5cec: $03
    inc d                                         ; $5ced: $14
    nop                                           ; $5cee: $00
    add d                                         ; $5cef: $82
    rra                                           ; $5cf0: $1f
    dec e                                         ; $5cf1: $1d
    ld b, $1e                                     ; $5cf2: $06 $1e
    add d                                         ; $5cf4: $82
    ld b, $1e                                     ; $5cf5: $06 $1e

jr_0e2_5cf7:
    ld [bc], a                                    ; $5cf7: $02
    inc e                                         ; $5cf8: $1c
    inc d                                         ; $5cf9: $14
    nop                                           ; $5cfa: $00
    rst $38                                       ; $5cfb: $ff
    dec c                                         ; $5cfc: $0d
    inc b                                         ; $5cfd: $04
    db $fc                                        ; $5cfe: $fc
    inc b                                         ; $5cff: $04
    rst $30                                       ; $5d00: $f7
    cp $eb                                        ; $5d01: $fe $eb
    ld a, [$ffeb]                                 ; $5d03: $fa $eb $ff
    ei                                            ; $5d06: $fb
    ld a, [$fffb]                                 ; $5d07: $fa $fb $ff
    ld [bc], a                                    ; $5d0a: $02
    rrca                                          ; $5d0b: $0f
    add e                                         ; $5d0c: $83
    rla                                           ; $5d0d: $17
    rra                                           ; $5d0e: $1f
    inc a                                         ; $5d0f: $3c
    ld [bc], a                                    ; $5d10: $02
    ccf                                           ; $5d11: $3f
    adc e                                         ; $5d12: $8b
    dec sp                                        ; $5d13: $3b
    ccf                                           ; $5d14: $3f
    dec l                                         ; $5d15: $2d
    ccf                                           ; $5d16: $3f
    ld hl, $323f                                  ; $5d17: $21 $3f $32
    ccf                                           ; $5d1a: $3f
    inc sp                                        ; $5d1b: $33
    ccf                                           ; $5d1c: $3f
    jr c, jr_0e2_5d21                             ; $5d1d: $38 $02

    ccf                                           ; $5d1f: $3f
    adc h                                         ; $5d20: $8c

jr_0e2_5d21:
    ld e, d                                       ; $5d21: $5a
    ld a, a                                       ; $5d22: $7f
    ld e, l                                       ; $5d23: $5d
    ld a, a                                       ; $5d24: $7f
    ld e, d                                       ; $5d25: $5a
    ld a, a                                       ; $5d26: $7f
    cp l                                          ; $5d27: $bd
    rst $38                                       ; $5d28: $ff
    db $dd                                        ; $5d29: $dd
    rst $38                                       ; $5d2a: $ff
    db $fd                                        ; $5d2b: $fd
    cp a                                          ; $5d2c: $bf
    ld [bc], a                                    ; $5d2d: $02
    db $10                                        ; $5d2e: $10
    add e                                         ; $5d2f: $83
    ld [$1418], sp                                ; $5d30: $08 $18 $14
    ld [bc], a                                    ; $5d33: $02
    inc e                                         ; $5d34: $1c
    add c                                         ; $5d35: $81
    inc c                                         ; $5d36: $0c
    inc bc                                        ; $5d37: $03
    inc e                                         ; $5d38: $1c
    add [hl]                                      ; $5d39: $86
    inc b                                         ; $5d3a: $04
    inc e                                         ; $5d3b: $1c
    inc c                                         ; $5d3c: $0c
    inc e                                         ; $5d3d: $1c
    inc c                                         ; $5d3e: $0c
    inc d                                         ; $5d3f: $14
    inc bc                                        ; $5d40: $03
    inc e                                         ; $5d41: $1c
    adc c                                         ; $5d42: $89
    ld a, [de]                                    ; $5d43: $1a
    ld e, $1a                                     ; $5d44: $1e $1a
    ld e, $1a                                     ; $5d46: $1e $1a
    ld e, $1d                                     ; $5d48: $1e $1d
    rra                                           ; $5d4a: $1f
    dec de                                        ; $5d4b: $1b
    ld [bc], a                                    ; $5d4c: $02
    rra                                           ; $5d4d: $1f
    adc b                                         ; $5d4e: $88
    dec e                                         ; $5d4f: $1d
    ld a, [$7a9f]                                 ; $5d50: $fa $9f $7a
    ld l, a                                       ; $5d53: $6f
    ld a, [hl-]                                   ; $5d54: $3a
    ccf                                           ; $5d55: $3f
    ld [hl], a                                    ; $5d56: $77
    inc bc                                        ; $5d57: $03
    ld a, a                                       ; $5d58: $7f
    add d                                         ; $5d59: $82
    daa                                           ; $5d5a: $27
    ccf                                           ; $5d5b: $3f
    ld [bc], a                                    ; $5d5c: $02
    jr c, jr_0e2_5d71                             ; $5d5d: $38 $12

    nop                                           ; $5d5f: $00
    add d                                         ; $5d60: $82
    rra                                           ; $5d61: $1f
    dec e                                         ; $5d62: $1d
    ld [bc], a                                    ; $5d63: $02
    ld e, $02                                     ; $5d64: $1e $02
    inc e                                         ; $5d66: $1c
    add c                                         ; $5d67: $81
    ld c, $03                                     ; $5d68: $0e $03
    ld e, $81                                     ; $5d6a: $1e $81
    inc b                                         ; $5d6c: $04
    inc bc                                        ; $5d6d: $03
    inc e                                         ; $5d6e: $1c
    ld [de], a                                    ; $5d6f: $12
    nop                                           ; $5d70: $00

jr_0e2_5d71:
    rst $38                                       ; $5d71: $ff
    dec c                                         ; $5d72: $0d
    inc b                                         ; $5d73: $04
    db $fc                                        ; $5d74: $fc
    inc b                                         ; $5d75: $04
    rst $30                                       ; $5d76: $f7
    cp $eb                                        ; $5d77: $fe $eb
    ld a, [$ffeb]                                 ; $5d79: $fa $eb $ff
    ei                                            ; $5d7c: $fb
    ld a, [$fefb]                                 ; $5d7d: $fa $fb $fe
    ld [bc], a                                    ; $5d80: $02
    rrca                                          ; $5d81: $0f
    add e                                         ; $5d82: $83
    rla                                           ; $5d83: $17
    rra                                           ; $5d84: $1f
    inc a                                         ; $5d85: $3c
    ld [bc], a                                    ; $5d86: $02
    ccf                                           ; $5d87: $3f
    adc e                                         ; $5d88: $8b
    dec sp                                        ; $5d89: $3b
    ccf                                           ; $5d8a: $3f
    dec l                                         ; $5d8b: $2d
    ccf                                           ; $5d8c: $3f
    ld hl, $323f                                  ; $5d8d: $21 $3f $32
    ccf                                           ; $5d90: $3f
    inc sp                                        ; $5d91: $33
    ccf                                           ; $5d92: $3f
    jr c, jr_0e2_5d97                             ; $5d93: $38 $02

    ccf                                           ; $5d95: $3f
    adc c                                         ; $5d96: $89

jr_0e2_5d97:
    ld e, d                                       ; $5d97: $5a
    ld a, a                                       ; $5d98: $7f
    ld e, l                                       ; $5d99: $5d
    ld a, a                                       ; $5d9a: $7f
    cp d                                          ; $5d9b: $ba
    rst $38                                       ; $5d9c: $ff
    sbc l                                         ; $5d9d: $9d
    rst $38                                       ; $5d9e: $ff
    cp l                                          ; $5d9f: $bd
    ld [bc], a                                    ; $5da0: $02
    rst $38                                       ; $5da1: $ff
    add c                                         ; $5da2: $81
    db $d3                                        ; $5da3: $d3
    ld [bc], a                                    ; $5da4: $02
    db $10                                        ; $5da5: $10
    add e                                         ; $5da6: $83
    ld [$1418], sp                                ; $5da7: $08 $18 $14
    ld [bc], a                                    ; $5daa: $02
    inc e                                         ; $5dab: $1c
    add c                                         ; $5dac: $81
    inc c                                         ; $5dad: $0c
    inc bc                                        ; $5dae: $03
    inc e                                         ; $5daf: $1c
    add [hl]                                      ; $5db0: $86
    inc b                                         ; $5db1: $04
    inc e                                         ; $5db2: $1c
    inc c                                         ; $5db3: $0c
    inc e                                         ; $5db4: $1c
    inc c                                         ; $5db5: $0c
    inc d                                         ; $5db6: $14
    inc bc                                        ; $5db7: $03
    inc e                                         ; $5db8: $1c
    add a                                         ; $5db9: $87
    ld a, [de]                                    ; $5dba: $1a
    ld e, $1a                                     ; $5dbb: $1e $1a
    ld e, $1d                                     ; $5dbd: $1e $1d
    rra                                           ; $5dbf: $1f
    dec e                                         ; $5dc0: $1d
    inc b                                         ; $5dc1: $04
    rra                                           ; $5dc2: $1f
    adc e                                         ; $5dc3: $8b
    dec e                                         ; $5dc4: $1d
    db $fc                                        ; $5dc5: $fc
    cp a                                          ; $5dc6: $bf
    ld a, e                                       ; $5dc7: $7b
    ld a, a                                       ; $5dc8: $7f
    ld a, e                                       ; $5dc9: $7b
    ld a, a                                       ; $5dca: $7f
    ld a, e                                       ; $5dcb: $7b
    ld a, a                                       ; $5dcc: $7f
    cpl                                           ; $5dcd: $2f
    ccf                                           ; $5dce: $3f
    ld [bc], a                                    ; $5dcf: $02
    dec e                                         ; $5dd0: $1d
    ld [bc], a                                    ; $5dd1: $02
    ld bc, $0012                                  ; $5dd2: $01 $12 $00
    ld [bc], a                                    ; $5dd5: $02
    rrca                                          ; $5dd6: $0f
    add h                                         ; $5dd7: $84
    ld b, $0e                                     ; $5dd8: $06 $0e
    ld a, [bc]                                    ; $5dda: $0a
    ld c, $02                                     ; $5ddb: $0e $02
    rrca                                          ; $5ddd: $0f
    add c                                         ; $5dde: $81
    ld [bc], a                                    ; $5ddf: $02
    inc bc                                        ; $5de0: $03
    ld c, $02                                     ; $5de1: $0e $02
    inc c                                         ; $5de3: $0c
    ld [de], a                                    ; $5de4: $12
    nop                                           ; $5de5: $00
    rst $38                                       ; $5de6: $ff
    dec c                                         ; $5de7: $0d
    inc b                                         ; $5de8: $04
    db $fc                                        ; $5de9: $fc
    inc b                                         ; $5dea: $04
    rst $30                                       ; $5deb: $f7
    cp $ec                                        ; $5dec: $fe $ec
    ld a, [$ffec]                                 ; $5dee: $fa $ec $ff
    db $fc                                        ; $5df1: $fc
    ld a, [$fffc]                                 ; $5df2: $fa $fc $ff
    ld [bc], a                                    ; $5df5: $02
    rrca                                          ; $5df6: $0f
    add e                                         ; $5df7: $83
    rla                                           ; $5df8: $17
    rra                                           ; $5df9: $1f
    inc a                                         ; $5dfa: $3c
    ld [bc], a                                    ; $5dfb: $02
    ccf                                           ; $5dfc: $3f
    adc e                                         ; $5dfd: $8b
    dec sp                                        ; $5dfe: $3b
    ccf                                           ; $5dff: $3f
    dec l                                         ; $5e00: $2d
    ccf                                           ; $5e01: $3f
    ld hl, $323f                                  ; $5e02: $21 $3f $32
    ccf                                           ; $5e05: $3f
    inc sp                                        ; $5e06: $33
    ccf                                           ; $5e07: $3f
    jr c, jr_0e2_5e0c                             ; $5e08: $38 $02

    ccf                                           ; $5e0a: $3f
    adc h                                         ; $5e0b: $8c

jr_0e2_5e0c:
    ld e, d                                       ; $5e0c: $5a
    ld a, a                                       ; $5e0d: $7f
    ld e, l                                       ; $5e0e: $5d
    ld a, a                                       ; $5e0f: $7f
    ld e, d                                       ; $5e10: $5a
    ld a, a                                       ; $5e11: $7f
    cp l                                          ; $5e12: $bd
    rst $38                                       ; $5e13: $ff
    db $dd                                        ; $5e14: $dd
    rst $38                                       ; $5e15: $ff
    db $fd                                        ; $5e16: $fd
    cp a                                          ; $5e17: $bf
    ld [bc], a                                    ; $5e18: $02
    db $10                                        ; $5e19: $10
    add e                                         ; $5e1a: $83
    ld [$1418], sp                                ; $5e1b: $08 $18 $14
    ld [bc], a                                    ; $5e1e: $02
    inc e                                         ; $5e1f: $1c
    add c                                         ; $5e20: $81
    inc c                                         ; $5e21: $0c
    inc bc                                        ; $5e22: $03
    inc e                                         ; $5e23: $1c
    add [hl]                                      ; $5e24: $86
    inc b                                         ; $5e25: $04
    inc e                                         ; $5e26: $1c
    inc c                                         ; $5e27: $0c
    inc e                                         ; $5e28: $1c
    inc c                                         ; $5e29: $0c
    inc d                                         ; $5e2a: $14
    inc bc                                        ; $5e2b: $03
    inc e                                         ; $5e2c: $1c
    adc c                                         ; $5e2d: $89
    ld a, [de]                                    ; $5e2e: $1a
    ld e, $1a                                     ; $5e2f: $1e $1a
    ld e, $1a                                     ; $5e31: $1e $1a
    ld e, $1d                                     ; $5e33: $1e $1d
    rra                                           ; $5e35: $1f
    dec de                                        ; $5e36: $1b
    ld [bc], a                                    ; $5e37: $02
    rra                                           ; $5e38: $1f
    add l                                         ; $5e39: $85
    dec e                                         ; $5e3a: $1d
    ei                                            ; $5e3b: $fb
    cp a                                          ; $5e3c: $bf
    halt                                          ; $5e3d: $76
    ld e, a                                       ; $5e3e: $5f
    ld [bc], a                                    ; $5e3f: $02
    ld a, a                                       ; $5e40: $7f
    add d                                         ; $5e41: $82
    dec [hl]                                      ; $5e42: $35
    dec a                                         ; $5e43: $3d
    ld [bc], a                                    ; $5e44: $02
    add hl, de                                    ; $5e45: $19
    ld d, $00                                     ; $5e46: $16 $00
    add d                                         ; $5e48: $82
    rra                                           ; $5e49: $1f
    dec e                                         ; $5e4a: $1d
    ld [bc], a                                    ; $5e4b: $02
    ld e, $83                                     ; $5e4c: $1e $83
    ld c, $1e                                     ; $5e4e: $0e $1e
    inc b                                         ; $5e50: $04
    inc bc                                        ; $5e51: $03
    inc e                                         ; $5e52: $1c
    ld d, $00                                     ; $5e53: $16 $00
    rst $38                                       ; $5e55: $ff
    dec c                                         ; $5e56: $0d
    inc b                                         ; $5e57: $04
    db $fc                                        ; $5e58: $fc
    inc b                                         ; $5e59: $04
    rst $30                                       ; $5e5a: $f7
    cp $eb                                        ; $5e5b: $fe $eb
    ld a, [$ffeb]                                 ; $5e5d: $fa $eb $ff
    ei                                            ; $5e60: $fb
    ld a, [$fffb]                                 ; $5e61: $fa $fb $ff
    ld [bc], a                                    ; $5e64: $02
    rrca                                          ; $5e65: $0f
    add e                                         ; $5e66: $83
    rla                                           ; $5e67: $17
    rra                                           ; $5e68: $1f
    inc a                                         ; $5e69: $3c
    ld [bc], a                                    ; $5e6a: $02
    ccf                                           ; $5e6b: $3f
    adc e                                         ; $5e6c: $8b
    dec sp                                        ; $5e6d: $3b
    ccf                                           ; $5e6e: $3f
    dec l                                         ; $5e6f: $2d
    ccf                                           ; $5e70: $3f
    ld hl, $323f                                  ; $5e71: $21 $3f $32
    ccf                                           ; $5e74: $3f
    inc sp                                        ; $5e75: $33
    ccf                                           ; $5e76: $3f
    jr c, jr_0e2_5e7b                             ; $5e77: $38 $02

    ccf                                           ; $5e79: $3f
    adc h                                         ; $5e7a: $8c

jr_0e2_5e7b:
    ld e, d                                       ; $5e7b: $5a
    ld a, a                                       ; $5e7c: $7f
    ld e, l                                       ; $5e7d: $5d
    ld a, a                                       ; $5e7e: $7f
    cp d                                          ; $5e7f: $ba
    rst $38                                       ; $5e80: $ff
    cp l                                          ; $5e81: $bd
    rst $38                                       ; $5e82: $ff
    db $fd                                        ; $5e83: $fd
    rst $38                                       ; $5e84: $ff
    db $fd                                        ; $5e85: $fd
    cp a                                          ; $5e86: $bf
    ld [bc], a                                    ; $5e87: $02
    db $10                                        ; $5e88: $10
    add e                                         ; $5e89: $83
    ld [$1418], sp                                ; $5e8a: $08 $18 $14
    ld [bc], a                                    ; $5e8d: $02
    inc e                                         ; $5e8e: $1c
    add c                                         ; $5e8f: $81
    inc c                                         ; $5e90: $0c
    inc bc                                        ; $5e91: $03
    inc e                                         ; $5e92: $1c
    add [hl]                                      ; $5e93: $86
    inc b                                         ; $5e94: $04
    inc e                                         ; $5e95: $1c
    inc c                                         ; $5e96: $0c
    inc e                                         ; $5e97: $1c
    inc c                                         ; $5e98: $0c
    inc d                                         ; $5e99: $14
    inc bc                                        ; $5e9a: $03
    inc e                                         ; $5e9b: $1c
    adc c                                         ; $5e9c: $89
    ld a, [de]                                    ; $5e9d: $1a
    ld e, $1a                                     ; $5e9e: $1e $1a
    ld e, $1d                                     ; $5ea0: $1e $1d
    rra                                           ; $5ea2: $1f
    add hl, de                                    ; $5ea3: $19
    rra                                           ; $5ea4: $1f
    dec e                                         ; $5ea5: $1d
    ld [bc], a                                    ; $5ea6: $02
    rra                                           ; $5ea7: $1f
    adc e                                         ; $5ea8: $8b
    dec de                                        ; $5ea9: $1b
    ld sp, hl                                     ; $5eaa: $f9
    cp a                                          ; $5eab: $bf
    halt                                          ; $5eac: $76
    ld a, a                                       ; $5ead: $7f
    ld l, $3f                                     ; $5eae: $2e $3f
    ld a, [hl]                                    ; $5eb0: $7e
    ld a, a                                       ; $5eb1: $7f
    daa                                           ; $5eb2: $27
    ccf                                           ; $5eb3: $3f
    ld [bc], a                                    ; $5eb4: $02
    dec a                                         ; $5eb5: $3d
    ld [bc], a                                    ; $5eb6: $02
    inc e                                         ; $5eb7: $1c
    ld [de], a                                    ; $5eb8: $12
    nop                                           ; $5eb9: $00
    add d                                         ; $5eba: $82
    rra                                           ; $5ebb: $1f
    dec e                                         ; $5ebc: $1d
    ld b, $1e                                     ; $5ebd: $06 $1e
    add d                                         ; $5ebf: $82
    inc d                                         ; $5ec0: $14
    inc e                                         ; $5ec1: $1c
    ld [bc], a                                    ; $5ec2: $02
    jr jr_0e2_5ed9                                ; $5ec3: $18 $14

    nop                                           ; $5ec5: $00
    rst $38                                       ; $5ec6: $ff
    dec c                                         ; $5ec7: $0d
    inc b                                         ; $5ec8: $04
    db $fc                                        ; $5ec9: $fc
    inc b                                         ; $5eca: $04
    rst $30                                       ; $5ecb: $f7
    cp $ec                                        ; $5ecc: $fe $ec
    ld a, [$ffec]                                 ; $5ece: $fa $ec $ff
    db $fc                                        ; $5ed1: $fc
    ld a, [$fffc]                                 ; $5ed2: $fa $fc $ff
    ld [bc], a                                    ; $5ed5: $02
    rrca                                          ; $5ed6: $0f
    add e                                         ; $5ed7: $83
    rla                                           ; $5ed8: $17

jr_0e2_5ed9:
    rra                                           ; $5ed9: $1f
    inc a                                         ; $5eda: $3c
    ld [bc], a                                    ; $5edb: $02
    ccf                                           ; $5edc: $3f
    adc e                                         ; $5edd: $8b
    dec sp                                        ; $5ede: $3b
    ccf                                           ; $5edf: $3f
    dec l                                         ; $5ee0: $2d
    ccf                                           ; $5ee1: $3f
    ld hl, $323f                                  ; $5ee2: $21 $3f $32
    ccf                                           ; $5ee5: $3f
    inc sp                                        ; $5ee6: $33
    ccf                                           ; $5ee7: $3f
    jr c, jr_0e2_5eec                             ; $5ee8: $38 $02

    ccf                                           ; $5eea: $3f
    adc h                                         ; $5eeb: $8c

jr_0e2_5eec:
    ld e, d                                       ; $5eec: $5a
    ld a, a                                       ; $5eed: $7f
    ld e, l                                       ; $5eee: $5d
    ld a, a                                       ; $5eef: $7f
    ld e, d                                       ; $5ef0: $5a
    ld a, a                                       ; $5ef1: $7f
    cp l                                          ; $5ef2: $bd
    rst $38                                       ; $5ef3: $ff
    db $dd                                        ; $5ef4: $dd
    rst $38                                       ; $5ef5: $ff
    db $fd                                        ; $5ef6: $fd
    cp a                                          ; $5ef7: $bf
    ld [bc], a                                    ; $5ef8: $02
    db $10                                        ; $5ef9: $10
    add e                                         ; $5efa: $83
    ld [$1418], sp                                ; $5efb: $08 $18 $14
    ld [bc], a                                    ; $5efe: $02
    inc e                                         ; $5eff: $1c

jr_0e2_5f00:
    add c                                         ; $5f00: $81
    inc c                                         ; $5f01: $0c
    inc bc                                        ; $5f02: $03
    inc e                                         ; $5f03: $1c
    add [hl]                                      ; $5f04: $86
    inc b                                         ; $5f05: $04
    inc e                                         ; $5f06: $1c
    inc c                                         ; $5f07: $0c
    inc e                                         ; $5f08: $1c
    inc c                                         ; $5f09: $0c
    inc d                                         ; $5f0a: $14
    inc bc                                        ; $5f0b: $03
    inc e                                         ; $5f0c: $1c
    adc c                                         ; $5f0d: $89
    ld a, [de]                                    ; $5f0e: $1a
    ld e, $1a                                     ; $5f0f: $1e $1a
    ld e, $1a                                     ; $5f11: $1e $1a
    ld e, $1d                                     ; $5f13: $1e $1d
    rra                                           ; $5f15: $1f
    dec de                                        ; $5f16: $1b
    ld [bc], a                                    ; $5f17: $02
    rra                                           ; $5f18: $1f
    adc c                                         ; $5f19: $89
    dec e                                         ; $5f1a: $1d
    cp $bf                                        ; $5f1b: $fe $bf
    ld a, e                                       ; $5f1d: $7b
    ld e, a                                       ; $5f1e: $5f
    ld [hl], a                                    ; $5f1f: $77
    ld a, a                                       ; $5f20: $7f
    dec h                                         ; $5f21: $25
    dec a                                         ; $5f22: $3d
    ld [bc], a                                    ; $5f23: $02
    inc a                                         ; $5f24: $3c
    ld d, $00                                     ; $5f25: $16 $00
    add e                                         ; $5f27: $83
    rra                                           ; $5f28: $1f
    dec e                                         ; $5f29: $1d
    ld c, $03                                     ; $5f2a: $0e $03
    ld e, $82                                     ; $5f2c: $1e $82
    inc c                                         ; $5f2e: $0c
    inc e                                         ; $5f2f: $1c
    ld [bc], a                                    ; $5f30: $02
    jr jr_0e2_5f49                                ; $5f31: $18 $16

    nop                                           ; $5f33: $00
    rst $38                                       ; $5f34: $ff
    dec c                                         ; $5f35: $0d
    inc b                                         ; $5f36: $04
    db $fc                                        ; $5f37: $fc
    inc b                                         ; $5f38: $04
    rst $30                                       ; $5f39: $f7
    cp $eb                                        ; $5f3a: $fe $eb
    db $fc                                        ; $5f3c: $fc
    db $ec                                        ; $5f3d: $ec
    cp $fb                                        ; $5f3e: $fe $fb
    ei                                            ; $5f40: $fb
    ei                                            ; $5f41: $fb
    db $fd                                        ; $5f42: $fd
    ld [bc], a                                    ; $5f43: $02
    dec a                                         ; $5f44: $3d
    sub b                                         ; $5f45: $90
    halt                                          ; $5f46: $76
    ld a, a                                       ; $5f47: $7f
    ei                                            ; $5f48: $fb

jr_0e2_5f49:
    rst $38                                       ; $5f49: $ff
    cp a                                          ; $5f4a: $bf
    db $fd                                        ; $5f4b: $fd
    rst $18                                       ; $5f4c: $df
    or $ff                                        ; $5f4d: $f6 $ff
    ldh a, [rIE]                                  ; $5f4f: $f0 $ff
    ldh a, [rIE]                                  ; $5f51: $f0 $ff
    di                                            ; $5f53: $f3
    rst $38                                       ; $5f54: $ff
    ld sp, hl                                     ; $5f55: $f9
    ld [bc], a                                    ; $5f56: $02
    ld a, a                                       ; $5f57: $7f
    adc h                                         ; $5f58: $8c
    or l                                          ; $5f59: $b5
    rst $38                                       ; $5f5a: $ff
    xor [hl]                                      ; $5f5b: $ae
    rst $38                                       ; $5f5c: $ff

jr_0e2_5f5d:
    ld l, l                                       ; $5f5d: $6d
    ld a, a                                       ; $5f5e: $7f
    ld l, $3f                                     ; $5f5f: $2e $3f
    ld b, [hl]                                    ; $5f61: $46
    ld a, a                                       ; $5f62: $7f
    ld c, [hl]                                    ; $5f63: $4e
    ld a, a                                       ; $5f64: $7f
    ld [$8202], sp                                ; $5f65: $08 $02 $82
    inc bc                                        ; $5f68: $03
    ld bc, $0204                                  ; $5f69: $01 $04 $02
    ld b, $00                                     ; $5f6c: $06 $00
    ld a, [bc]                                    ; $5f6e: $0a
    ld [bc], a                                    ; $5f6f: $02
    add d                                         ; $5f70: $82
    cp $ce                                        ; $5f71: $fe $ce
    ld [bc], a                                    ; $5f73: $02
    jr nz, jr_0e2_5f00                            ; $5f74: $20 $8a

    ccf                                           ; $5f76: $3f
    ld a, [hl-]                                   ; $5f77: $3a
    ld a, [hl]                                    ; $5f78: $7e
    ld a, a                                       ; $5f79: $7f
    ld a, l                                       ; $5f7a: $7d
    ld a, a                                       ; $5f7b: $7f
    cp a                                          ; $5f7c: $bf
    rst $38                                       ; $5f7d: $ff
    call c, Call_000_02ff                         ; $5f7e: $dc $ff $02
    ccf                                           ; $5f81: $3f
    inc d                                         ; $5f82: $14
    nop                                           ; $5f83: $00
    add d                                         ; $5f84: $82
    inc bc                                        ; $5f85: $03
    ld bc, $020a                                  ; $5f86: $01 $0a $02
    ld [de], a                                    ; $5f89: $12
    nop                                           ; $5f8a: $00
    rst $38                                       ; $5f8b: $ff
    dec c                                         ; $5f8c: $0d
    inc b                                         ; $5f8d: $04
    db $fc                                        ; $5f8e: $fc
    inc b                                         ; $5f8f: $04
    rst $30                                       ; $5f90: $f7
    cp $eb                                        ; $5f91: $fe $eb
    db $fc                                        ; $5f93: $fc
    db $ec                                        ; $5f94: $ec
    rst $38                                       ; $5f95: $ff
    ei                                            ; $5f96: $fb
    ei                                            ; $5f97: $fb
    ei                                            ; $5f98: $fb
    ld bc, $3d02                                  ; $5f99: $01 $02 $3d
    sub b                                         ; $5f9c: $90
    halt                                          ; $5f9d: $76
    ld a, a                                       ; $5f9e: $7f
    ei                                            ; $5f9f: $fb
    rst $38                                       ; $5fa0: $ff
    cp a                                          ; $5fa1: $bf
    db $fd                                        ; $5fa2: $fd
    rst $18                                       ; $5fa3: $df
    or $ff                                        ; $5fa4: $f6 $ff
    ldh a, [rIE]                                  ; $5fa6: $f0 $ff
    ldh a, [rIE]                                  ; $5fa8: $f0 $ff
    di                                            ; $5faa: $f3
    rst $38                                       ; $5fab: $ff
    ld sp, hl                                     ; $5fac: $f9
    ld [bc], a                                    ; $5fad: $02
    ld a, a                                       ; $5fae: $7f
    adc h                                         ; $5faf: $8c
    or l                                          ; $5fb0: $b5
    rst $38                                       ; $5fb1: $ff
    halt                                          ; $5fb2: $76
    ld a, a                                       ; $5fb3: $7f
    inc hl                                        ; $5fb4: $23
    ccf                                           ; $5fb5: $3f
    halt                                          ; $5fb6: $76
    ld a, a                                       ; $5fb7: $7f
    ld a, c                                       ; $5fb8: $79
    ld a, a                                       ; $5fb9: $7f
    ld a, e                                       ; $5fba: $7b
    ld a, [hl]                                    ; $5fbb: $7e
    ld [$8204], sp                                ; $5fbc: $08 $04 $82
    ld b, $02                                     ; $5fbf: $06 $02
    inc b                                         ; $5fc1: $04
    inc b                                         ; $5fc2: $04
    ld b, $00                                     ; $5fc3: $06 $00
    inc b                                         ; $5fc5: $04
    inc b                                         ; $5fc6: $04
    ld [bc], a                                    ; $5fc7: $02
    ld b, $86                                     ; $5fc8: $06 $86
    rlca                                          ; $5fca: $07
    dec b                                         ; $5fcb: $05
    ld b, $02                                     ; $5fcc: $06 $02
    cp $f6                                        ; $5fce: $fe $f6
    ld [bc], a                                    ; $5fd0: $02
    jr nc, jr_0e2_5f5d                            ; $5fd1: $30 $8a

    ld a, [hl]                                    ; $5fd3: $7e
    ld a, a                                       ; $5fd4: $7f
    ld a, l                                       ; $5fd5: $7d
    ld a, a                                       ; $5fd6: $7f
    cp e                                          ; $5fd7: $bb
    rst $38                                       ; $5fd8: $ff
    cp a                                          ; $5fd9: $bf
    rst $38                                       ; $5fda: $ff
    ld [hl], d                                    ; $5fdb: $72
    ld a, [hl]                                    ; $5fdc: $7e
    ld [bc], a                                    ; $5fdd: $02
    ld c, $14                                     ; $5fde: $0e $14
    nop                                           ; $5fe0: $00
    ld [bc], a                                    ; $5fe1: $02
    jr c, jr_0e2_5fe6                             ; $5fe2: $38 $02

    ld a, $84                                     ; $5fe4: $3e $84

jr_0e2_5fe6:
    add hl, sp                                    ; $5fe6: $39
    ccf                                           ; $5fe7: $3f
    ld [hl], $3e                                  ; $5fe8: $36 $3e
    ld [bc], a                                    ; $5fea: $02
    jr c, jr_0e2_6001                             ; $5feb: $38 $14

    nop                                           ; $5fed: $00
    rst $38                                       ; $5fee: $ff
    dec c                                         ; $5fef: $0d
    inc b                                         ; $5ff0: $04
    db $fc                                        ; $5ff1: $fc
    inc b                                         ; $5ff2: $04
    rst $30                                       ; $5ff3: $f7
    cp $ec                                        ; $5ff4: $fe $ec
    db $fc                                        ; $5ff6: $fc
    db $ed                                        ; $5ff7: $ed
    cp $fc                                        ; $5ff8: $fe $fc
    db $fc                                        ; $5ffa: $fc
    db $fc                                        ; $5ffb: $fc
    cp $02                                        ; $5ffc: $fe $02
    dec a                                         ; $5ffe: $3d
    sub b                                         ; $5fff: $90
    halt                                          ; $6000: $76

jr_0e2_6001:
    ld a, a                                       ; $6001: $7f
    ei                                            ; $6002: $fb
    rst $38                                       ; $6003: $ff
    cp a                                          ; $6004: $bf
    db $fd                                        ; $6005: $fd
    rst $18                                       ; $6006: $df
    or $ff                                        ; $6007: $f6 $ff
    ldh a, [rIE]                                  ; $6009: $f0 $ff
    ldh a, [rIE]                                  ; $600b: $f0 $ff
    di                                            ; $600d: $f3
    rst $38                                       ; $600e: $ff
    ld sp, hl                                     ; $600f: $f9
    ld [bc], a                                    ; $6010: $02
    rst $38                                       ; $6011: $ff
    adc h                                         ; $6012: $8c
    ld [hl], l                                    ; $6013: $75
    ld a, a                                       ; $6014: $7f
    ld h, $3f                                     ; $6015: $26 $3f
    dec h                                         ; $6017: $25
    ccf                                           ; $6018: $3f
    ld l, $3f                                     ; $6019: $2e $3f
    ld h, $3f                                     ; $601b: $26 $3f
    ld l, $3f                                     ; $601d: $2e $3f
    ld [$8202], sp                                ; $601f: $08 $02 $82
    inc bc                                        ; $6022: $03
    ld bc, $0204                                  ; $6023: $01 $04 $02
    ld b, $00                                     ; $6026: $06 $00
    ld a, [bc]                                    ; $6028: $0a
    ld [bc], a                                    ; $6029: $02
    add d                                         ; $602a: $82
    db $fd                                        ; $602b: $fd
    rst $08                                       ; $602c: $cf
    ld [bc], a                                    ; $602d: $02
    ld b, b                                       ; $602e: $40
    add d                                         ; $602f: $82
    ld a, a                                       ; $6030: $7f
    ld [hl], h                                    ; $6031: $74
    ld [bc], a                                    ; $6032: $02
    rst $38                                       ; $6033: $ff
    add h                                         ; $6034: $84
    cp [hl]                                       ; $6035: $be
    rst $38                                       ; $6036: $ff
    ld e, a                                       ; $6037: $5f
    ld a, a                                       ; $6038: $7f
    ld [bc], a                                    ; $6039: $02
    jr c, jr_0e2_6052                             ; $603a: $38 $16

    nop                                           ; $603c: $00
    add d                                         ; $603d: $82
    ld bc, $0203                                  ; $603e: $01 $03 $02
    ld [bc], a                                    ; $6041: $02
    ld [bc], a                                    ; $6042: $02
    inc bc                                        ; $6043: $03
    ld [bc], a                                    ; $6044: $02
    ld [bc], a                                    ; $6045: $02
    ld d, $00                                     ; $6046: $16 $00
    rst $38                                       ; $6048: $ff
    dec c                                         ; $6049: $0d
    inc b                                         ; $604a: $04
    db $fc                                        ; $604b: $fc
    inc b                                         ; $604c: $04
    rst $30                                       ; $604d: $f7
    cp $eb                                        ; $604e: $fe $eb
    db $fc                                        ; $6050: $fc
    db $ec                                        ; $6051: $ec

jr_0e2_6052:
    cp $fb                                        ; $6052: $fe $fb
    db $fc                                        ; $6054: $fc
    ei                                            ; $6055: $fb
    ld bc, $3d02                                  ; $6056: $01 $02 $3d
    sub b                                         ; $6059: $90
    halt                                          ; $605a: $76
    ld a, a                                       ; $605b: $7f
    ei                                            ; $605c: $fb
    rst $38                                       ; $605d: $ff
    cp a                                          ; $605e: $bf
    db $fd                                        ; $605f: $fd
    rst $18                                       ; $6060: $df
    or $ff                                        ; $6061: $f6 $ff
    ldh a, [rIE]                                  ; $6063: $f0 $ff
    ldh a, [rIE]                                  ; $6065: $f0 $ff
    di                                            ; $6067: $f3
    rst $38                                       ; $6068: $ff
    ld sp, hl                                     ; $6069: $f9
    ld [bc], a                                    ; $606a: $02
    ld a, a                                       ; $606b: $7f
    adc h                                         ; $606c: $8c
    or l                                          ; $606d: $b5
    rst $38                                       ; $606e: $ff
    ld l, [hl]                                    ; $606f: $6e
    ld a, a                                       ; $6070: $7f
    ld c, l                                       ; $6071: $4d
    ld a, a                                       ; $6072: $7f
    ld e, [hl]                                    ; $6073: $5e

jr_0e2_6074:
    ld a, a                                       ; $6074: $7f
    ld c, [hl]                                    ; $6075: $4e
    ld a, a                                       ; $6076: $7f
    ld a, [hl]                                    ; $6077: $7e
    ld a, a                                       ; $6078: $7f
    ld [$8202], sp                                ; $6079: $08 $02 $82
    inc bc                                        ; $607c: $03
    ld bc, $0204                                  ; $607d: $01 $04 $02
    ld b, $00                                     ; $6080: $06 $00
    ld [$0202], sp                                ; $6082: $08 $02 $02
    inc bc                                        ; $6085: $03
    add d                                         ; $6086: $82
    ei                                            ; $6087: $fb
    ccf                                           ; $6088: $3f
    ld [bc], a                                    ; $6089: $02
    ld b, b                                       ; $608a: $40
    adc d                                         ; $608b: $8a
    ld a, [hl]                                    ; $608c: $7e
    ld d, a                                       ; $608d: $57
    db $fd                                        ; $608e: $fd
    ei                                            ; $608f: $fb
    cp l                                          ; $6090: $bd
    rst $38                                       ; $6091: $ff
    cp e                                          ; $6092: $bb
    rst $38                                       ; $6093: $ff
    rst $18                                       ; $6094: $df
    rst $38                                       ; $6095: $ff
    ld [bc], a                                    ; $6096: $02
    dec a                                         ; $6097: $3d
    inc d                                         ; $6098: $14
    nop                                           ; $6099: $00
    ld [bc], a                                    ; $609a: $02
    db $10                                        ; $609b: $10
    add d                                         ; $609c: $82
    ld [$0218], sp                                ; $609d: $08 $18 $02
    ld e, $82                                     ; $60a0: $1e $82
    add hl, de                                    ; $60a2: $19
    rra                                           ; $60a3: $1f
    ld [bc], a                                    ; $60a4: $02
    ld e, $02                                     ; $60a5: $1e $02
    jr jr_0e2_60bb                                ; $60a7: $18 $12

    nop                                           ; $60a9: $00
    rst $38                                       ; $60aa: $ff
    dec c                                         ; $60ab: $0d
    inc b                                         ; $60ac: $04
    db $fc                                        ; $60ad: $fc
    inc b                                         ; $60ae: $04
    rst $30                                       ; $60af: $f7
    cp $ec                                        ; $60b0: $fe $ec
    db $fc                                        ; $60b2: $fc
    db $ed                                        ; $60b3: $ed
    cp $fc                                        ; $60b4: $fe $fc
    ei                                            ; $60b6: $fb
    db $fc                                        ; $60b7: $fc
    cp $02                                        ; $60b8: $fe $02
    dec a                                         ; $60ba: $3d

jr_0e2_60bb:
    sub b                                         ; $60bb: $90
    halt                                          ; $60bc: $76
    ld a, a                                       ; $60bd: $7f
    ei                                            ; $60be: $fb
    rst $38                                       ; $60bf: $ff
    cp a                                          ; $60c0: $bf
    db $fd                                        ; $60c1: $fd
    rst $18                                       ; $60c2: $df
    or $ff                                        ; $60c3: $f6 $ff
    ldh a, [rIE]                                  ; $60c5: $f0 $ff
    ldh a, [rIE]                                  ; $60c7: $f0 $ff
    di                                            ; $60c9: $f3
    rst $38                                       ; $60ca: $ff
    ld sp, hl                                     ; $60cb: $f9
    ld [bc], a                                    ; $60cc: $02
    rst $38                                       ; $60cd: $ff
    adc h                                         ; $60ce: $8c
    ld [hl], l                                    ; $60cf: $75
    ld a, a                                       ; $60d0: $7f
    ld h, $3f                                     ; $60d1: $26 $3f
    dec h                                         ; $60d3: $25
    ccf                                           ; $60d4: $3f
    ld l, $3f                                     ; $60d5: $2e $3f
    ld [hl], $3f                                  ; $60d7: $36 $3f
    ld [hl], d                                    ; $60d9: $72
    ld a, a                                       ; $60da: $7f
    ld [$8202], sp                                ; $60db: $08 $02 $82
    inc bc                                        ; $60de: $03
    ld bc, $0204                                  ; $60df: $01 $04 $02
    ld b, $00                                     ; $60e2: $06 $00
    ld a, [bc]                                    ; $60e4: $0a
    ld [bc], a                                    ; $60e5: $02
    add d                                         ; $60e6: $82
    rst $38                                       ; $60e7: $ff
    pop af                                        ; $60e8: $f1
    ld [bc], a                                    ; $60e9: $02
    jr nz, jr_0e2_6074                            ; $60ea: $20 $88

    ld a, a                                       ; $60ec: $7f
    ld a, l                                       ; $60ed: $7d
    cp l                                          ; $60ee: $bd
    rst $38                                       ; $60ef: $ff
    cp a                                          ; $60f0: $bf
    rst $38                                       ; $60f1: $ff
    ld a, h                                       ; $60f2: $7c
    ld a, a                                       ; $60f3: $7f
    ld [bc], a                                    ; $60f4: $02
    rra                                           ; $60f5: $1f
    ld d, $00                                     ; $60f6: $16 $00
    ld [bc], a                                    ; $60f8: $02
    rlca                                          ; $60f9: $07
    add c                                         ; $60fa: $81
    ld [bc], a                                    ; $60fb: $02
    inc bc                                        ; $60fc: $03
    ld b, $81                                     ; $60fd: $06 $81
    ld [bc], a                                    ; $60ff: $02
    inc bc                                        ; $6100: $03
    ld b, $14                                     ; $6101: $06 $14
    nop                                           ; $6103: $00
    rst $38                                       ; $6104: $ff
    dec c                                         ; $6105: $0d
    inc b                                         ; $6106: $04
    db $fc                                        ; $6107: $fc
    inc b                                         ; $6108: $04
    rst $30                                       ; $6109: $f7
    cp $ea                                        ; $610a: $fe $ea
    ld a, [$ffea]                                 ; $610c: $fa $ea $ff
    ld a, [$fafa]                                 ; $610f: $fa $fa $fa
    rst $38                                       ; $6112: $ff
    ld [bc], a                                    ; $6113: $02
    dec c                                         ; $6114: $0d
    add l                                         ; $6115: $85
    rla                                           ; $6116: $17
    dec de                                        ; $6117: $1b
    ld [hl], $39                                  ; $6118: $36 $39
    dec a                                         ; $611a: $3d
    ld [bc], a                                    ; $611b: $02
    ld a, $03                                     ; $611c: $3e $03
    ccf                                           ; $611e: $3f
    inc b                                         ; $611f: $04
    ld a, a                                       ; $6120: $7f
    add [hl]                                      ; $6121: $86
    dec hl                                        ; $6122: $2b
    scf                                           ; $6123: $37
    ld [hl], a                                    ; $6124: $77
    ld a, b                                       ; $6125: $78
    ld a, [hl-]                                   ; $6126: $3a
    ccf                                           ; $6127: $3f
    ld [bc], a                                    ; $6128: $02
    ld a, a                                       ; $6129: $7f
    adc b                                         ; $612a: $88
    ld e, [hl]                                    ; $612b: $5e
    ld a, a                                       ; $612c: $7f
    ld e, a                                       ; $612d: $5f
    ld a, a                                       ; $612e: $7f
    ld e, a                                       ; $612f: $5f
    ld a, a                                       ; $6130: $7f
    sbc a                                         ; $6131: $9f
    rst $38                                       ; $6132: $ff
    ld [bc], a                                    ; $6133: $02
    db $10                                        ; $6134: $10
    add l                                         ; $6135: $85
    jr @+$0a                                      ; $6136: $18 $08

    jr jr_0e2_6142                                ; $6138: $18 $08

    inc c                                         ; $613a: $0c
    ld [bc], a                                    ; $613b: $02
    inc e                                         ; $613c: $1c
    add l                                         ; $613d: $85
    inc d                                         ; $613e: $14
    ld d, $0e                                     ; $613f: $16 $0e
    inc c                                         ; $6141: $0c

jr_0e2_6142:
    inc e                                         ; $6142: $1c
    ld [bc], a                                    ; $6143: $02
    ld e, $94                                     ; $6144: $1e $94
    ld c, $16                                     ; $6146: $0e $16
    inc d                                         ; $6148: $14
    inc c                                         ; $6149: $0c
    ld d, $1e                                     ; $614a: $16 $1e
    ld c, $1e                                     ; $614c: $0e $1e
    ld a, [de]                                    ; $614e: $1a
    ld e, $1a                                     ; $614f: $1e $1a
    ld e, $0a                                     ; $6151: $1e $0a
    ld e, $09                                     ; $6153: $1e $09
    rra                                           ; $6155: $1f
    sbc a                                         ; $6156: $9f
    rst $38                                       ; $6157: $ff
    cp a                                          ; $6158: $bf
    rst $38                                       ; $6159: $ff
    ld [bc], a                                    ; $615a: $02
    ld e, a                                       ; $615b: $5f
    ld [bc], a                                    ; $615c: $02
    ccf                                           ; $615d: $3f
    ld [bc], a                                    ; $615e: $02
    ld a, a                                       ; $615f: $7f
    add h                                         ; $6160: $84
    ld l, a                                       ; $6161: $6f
    ld a, a                                       ; $6162: $7f
    ld a, b                                       ; $6163: $78
    ld a, a                                       ; $6164: $7f
    ld [bc], a                                    ; $6165: $02
    ccf                                           ; $6166: $3f
    stop                                          ; $6167: $10 $00
    add h                                         ; $6169: $84
    add hl, de                                    ; $616a: $19
    rra                                           ; $616b: $1f
    dec c                                         ; $616c: $0d
    rra                                           ; $616d: $1f
    ld [bc], a                                    ; $616e: $02
    ld a, [de]                                    ; $616f: $1a
    adc b                                         ; $6170: $88
    inc d                                         ; $6171: $14
    inc e                                         ; $6172: $1c
    ld a, [de]                                    ; $6173: $1a
    ld e, $16                                     ; $6174: $1e $16
    ld e, $0e                                     ; $6176: $1e $0e
    ld e, $02                                     ; $6178: $1e $02
    inc e                                         ; $617a: $1c
    stop                                          ; $617b: $10 $00
    rst $38                                       ; $617d: $ff
    dec c                                         ; $617e: $0d
    inc b                                         ; $617f: $04
    db $fc                                        ; $6180: $fc
    inc b                                         ; $6181: $04
    rst $30                                       ; $6182: $f7
    cp $ea                                        ; $6183: $fe $ea
    ld a, [$ffea]                                 ; $6185: $fa $ea $ff
    ld a, [$fafa]                                 ; $6188: $fa $fa $fa
    rst $38                                       ; $618b: $ff
    ld [bc], a                                    ; $618c: $02
    dec c                                         ; $618d: $0d
    add l                                         ; $618e: $85
    rla                                           ; $618f: $17
    dec de                                        ; $6190: $1b
    ld [hl], $39                                  ; $6191: $36 $39
    dec a                                         ; $6193: $3d
    ld [bc], a                                    ; $6194: $02
    ld a, $03                                     ; $6195: $3e $03
    ccf                                           ; $6197: $3f
    inc b                                         ; $6198: $04
    ld a, a                                       ; $6199: $7f
    add [hl]                                      ; $619a: $86
    dec hl                                        ; $619b: $2b
    scf                                           ; $619c: $37
    ld [hl], a                                    ; $619d: $77
    ld a, b                                       ; $619e: $78
    ld a, [hl-]                                   ; $619f: $3a
    ccf                                           ; $61a0: $3f
    ld [bc], a                                    ; $61a1: $02
    ld a, a                                       ; $61a2: $7f
    adc b                                         ; $61a3: $88
    ld e, [hl]                                    ; $61a4: $5e
    ld a, a                                       ; $61a5: $7f
    ld e, e                                       ; $61a6: $5b
    ld a, a                                       ; $61a7: $7f
    sbc l                                         ; $61a8: $9d
    rst $38                                       ; $61a9: $ff
    sbc a                                         ; $61aa: $9f
    rst $38                                       ; $61ab: $ff
    ld [bc], a                                    ; $61ac: $02
    db $10                                        ; $61ad: $10
    add l                                         ; $61ae: $85
    jr @+$0a                                      ; $61af: $18 $08

    jr jr_0e2_61bb                                ; $61b1: $18 $08

    inc c                                         ; $61b3: $0c
    ld [bc], a                                    ; $61b4: $02
    inc e                                         ; $61b5: $1c
    add l                                         ; $61b6: $85
    inc d                                         ; $61b7: $14
    ld d, $0e                                     ; $61b8: $16 $0e
    inc c                                         ; $61ba: $0c

jr_0e2_61bb:
    inc e                                         ; $61bb: $1c
    ld [bc], a                                    ; $61bc: $02
    ld e, $96                                     ; $61bd: $1e $96
    ld c, $16                                     ; $61bf: $0e $16
    inc d                                         ; $61c1: $14
    inc c                                         ; $61c2: $0c
    ld d, $1e                                     ; $61c3: $16 $1e
    ld c, $1e                                     ; $61c5: $0e $1e
    ld a, [de]                                    ; $61c7: $1a
    ld e, $1a                                     ; $61c8: $1e $1a
    ld e, $09                                     ; $61ca: $1e $09
    rra                                           ; $61cc: $1f
    add hl, bc                                    ; $61cd: $09
    rra                                           ; $61ce: $1f
    cp a                                          ; $61cf: $bf
    rst $38                                       ; $61d0: $ff
    cp a                                          ; $61d1: $bf
    rst $38                                       ; $61d2: $ff
    cp a                                          ; $61d3: $bf
    rst $38                                       ; $61d4: $ff
    ld [bc], a                                    ; $61d5: $02
    ld a, a                                       ; $61d6: $7f
    inc b                                         ; $61d7: $04
    ccf                                           ; $61d8: $3f
    add d                                         ; $61d9: $82
    ld a, $3f                                     ; $61da: $3e $3f
    ld [bc], a                                    ; $61dc: $02
    rrca                                          ; $61dd: $0f
    stop                                          ; $61de: $10 $00
    adc [hl]                                      ; $61e0: $8e
    dec e                                         ; $61e1: $1d
    rra                                           ; $61e2: $1f
    ld c, $1e                                     ; $61e3: $0e $1e
    inc d                                         ; $61e5: $14
    inc e                                         ; $61e6: $1c
    inc d                                         ; $61e7: $14
    inc e                                         ; $61e8: $1c
    ld a, [de]                                    ; $61e9: $1a
    ld e, $16                                     ; $61ea: $1e $16
    ld e, $0e                                     ; $61ec: $1e $0e
    ld e, $02                                     ; $61ee: $1e $02
    inc e                                         ; $61f0: $1c
    stop                                          ; $61f1: $10 $00
    rst $38                                       ; $61f3: $ff
    dec c                                         ; $61f4: $0d
    inc b                                         ; $61f5: $04
    db $fc                                        ; $61f6: $fc
    inc b                                         ; $61f7: $04
    rst $30                                       ; $61f8: $f7
    cp $eb                                        ; $61f9: $fe $eb
    ld a, [$ffeb]                                 ; $61fb: $fa $eb $ff
    ei                                            ; $61fe: $fb
    ld a, [$fffb]                                 ; $61ff: $fa $fb $ff
    ld [bc], a                                    ; $6202: $02
    dec c                                         ; $6203: $0d
    add [hl]                                      ; $6204: $86
    rla                                           ; $6205: $17
    dec de                                        ; $6206: $1b
    ld h, $39                                     ; $6207: $26 $39
    dec a                                         ; $6209: $3d
    ld a, $02                                     ; $620a: $3e $02
    ccf                                           ; $620c: $3f
    add c                                         ; $620d: $81
    ld a, [hl]                                    ; $620e: $7e
    inc bc                                        ; $620f: $03
    ld a, a                                       ; $6210: $7f
    sub d                                         ; $6211: $92
    scf                                           ; $6212: $37
    ccf                                           ; $6213: $3f
    jr z, jr_0e2_624d                             ; $6214: $28 $37

    ld [hl], d                                    ; $6216: $72
    ld a, l                                       ; $6217: $7d
    dec a                                         ; $6218: $3d
    ccf                                           ; $6219: $3f
    ld a, [hl]                                    ; $621a: $7e
    ld a, a                                       ; $621b: $7f
    ld e, [hl]                                    ; $621c: $5e
    ld a, a                                       ; $621d: $7f
    ld e, a                                       ; $621e: $5f
    ld a, a                                       ; $621f: $7f
    sbc a                                         ; $6220: $9f
    rst $38                                       ; $6221: $ff
    sbc a                                         ; $6222: $9f
    rst $38                                       ; $6223: $ff
    ld [bc], a                                    ; $6224: $02
    db $10                                        ; $6225: $10
    add l                                         ; $6226: $85
    jr @+$0a                                      ; $6227: $18 $08

    jr jr_0e2_6233                                ; $6229: $18 $08

    inc c                                         ; $622b: $0c
    ld [bc], a                                    ; $622c: $02
    inc e                                         ; $622d: $1c
    add e                                         ; $622e: $83
    inc d                                         ; $622f: $14
    ld d, $0e                                     ; $6230: $16 $0e
    ld [bc], a                                    ; $6232: $02

jr_0e2_6233:
    inc e                                         ; $6233: $1c
    add e                                         ; $6234: $83
    ld d, $1e                                     ; $6235: $16 $1e
    inc c                                         ; $6237: $0c
    ld [bc], a                                    ; $6238: $02
    inc d                                         ; $6239: $14
    sub c                                         ; $623a: $91
    inc c                                         ; $623b: $0c
    ld c, $1e                                     ; $623c: $0e $1e
    inc c                                         ; $623e: $0c
    inc e                                         ; $623f: $1c
    ld a, [de]                                    ; $6240: $1a
    ld e, $1a                                     ; $6241: $1e $1a
    ld e, $0a                                     ; $6243: $1e $0a
    ld e, $09                                     ; $6245: $1e $09
    rra                                           ; $6247: $1f
    cp a                                          ; $6248: $bf
    rst $38                                       ; $6249: $ff
    cp a                                          ; $624a: $bf
    rst $38                                       ; $624b: $ff
    ld [bc], a                                    ; $624c: $02

jr_0e2_624d:
    ld a, a                                       ; $624d: $7f
    add c                                         ; $624e: $81
    ld a, e                                       ; $624f: $7b
    inc bc                                        ; $6250: $03
    ld a, a                                       ; $6251: $7f
    ld [bc], a                                    ; $6252: $02
    ccf                                           ; $6253: $3f
    ld [bc], a                                    ; $6254: $02
    rrca                                          ; $6255: $0f
    ld [de], a                                    ; $6256: $12
    nop                                           ; $6257: $00
    add a                                         ; $6258: $87
    add hl, de                                    ; $6259: $19
    rra                                           ; $625a: $1f
    dec c                                         ; $625b: $0d
    rra                                           ; $625c: $1f
    ld d, $1e                                     ; $625d: $16 $1e
    inc d                                         ; $625f: $14
    dec b                                         ; $6260: $05
    inc e                                         ; $6261: $1c
    ld [bc], a                                    ; $6262: $02
    jr jr_0e2_6277                                ; $6263: $18 $12

    nop                                           ; $6265: $00
    rst $38                                       ; $6266: $ff
    dec c                                         ; $6267: $0d
    inc b                                         ; $6268: $04
    db $fc                                        ; $6269: $fc
    inc b                                         ; $626a: $04
    rst $30                                       ; $626b: $f7
    cp $ea                                        ; $626c: $fe $ea
    ld a, [$ffea]                                 ; $626e: $fa $ea $ff
    ld a, [$fafa]                                 ; $6271: $fa $fa $fa
    rst $38                                       ; $6274: $ff
    ld [bc], a                                    ; $6275: $02
    dec c                                         ; $6276: $0d

jr_0e2_6277:
    add l                                         ; $6277: $85
    rla                                           ; $6278: $17
    dec de                                        ; $6279: $1b
    ld [hl], $39                                  ; $627a: $36 $39
    dec a                                         ; $627c: $3d
    ld [bc], a                                    ; $627d: $02
    ld a, $03                                     ; $627e: $3e $03
    ccf                                           ; $6280: $3f
    inc b                                         ; $6281: $04
    ld a, a                                       ; $6282: $7f
    add [hl]                                      ; $6283: $86
    dec hl                                        ; $6284: $2b
    scf                                           ; $6285: $37
    ld [hl], a                                    ; $6286: $77
    ld a, b                                       ; $6287: $78
    ld a, [hl-]                                   ; $6288: $3a
    ccf                                           ; $6289: $3f
    ld [bc], a                                    ; $628a: $02
    ld a, a                                       ; $628b: $7f
    adc b                                         ; $628c: $88
    ld e, [hl]                                    ; $628d: $5e
    ld a, a                                       ; $628e: $7f
    ld e, e                                       ; $628f: $5b
    ld a, a                                       ; $6290: $7f
    sbc l                                         ; $6291: $9d
    rst $38                                       ; $6292: $ff
    sbc a                                         ; $6293: $9f
    rst $38                                       ; $6294: $ff
    ld [bc], a                                    ; $6295: $02
    db $10                                        ; $6296: $10
    add l                                         ; $6297: $85
    jr @+$0a                                      ; $6298: $18 $08

    jr jr_0e2_62a4                                ; $629a: $18 $08

    inc c                                         ; $629c: $0c
    ld [bc], a                                    ; $629d: $02
    inc e                                         ; $629e: $1c
    add l                                         ; $629f: $85
    inc d                                         ; $62a0: $14
    ld d, $0e                                     ; $62a1: $16 $0e
    inc c                                         ; $62a3: $0c

jr_0e2_62a4:
    inc e                                         ; $62a4: $1c
    ld [bc], a                                    ; $62a5: $02
    ld e, $92                                     ; $62a6: $1e $92
    ld c, $16                                     ; $62a8: $0e $16
    inc d                                         ; $62aa: $14
    inc c                                         ; $62ab: $0c
    ld d, $1e                                     ; $62ac: $16 $1e
    inc c                                         ; $62ae: $0c
    inc e                                         ; $62af: $1c
    ld a, [de]                                    ; $62b0: $1a
    ld e, $1a                                     ; $62b1: $1e $1a
    ld e, $09                                     ; $62b3: $1e $09
    rra                                           ; $62b5: $1f
    add hl, bc                                    ; $62b6: $09
    rra                                           ; $62b7: $1f
    cp a                                          ; $62b8: $bf
    rst $38                                       ; $62b9: $ff
    ld [bc], a                                    ; $62ba: $02
    ld a, a                                       ; $62bb: $7f
    ld [bc], a                                    ; $62bc: $02
    ccf                                           ; $62bd: $3f
    add e                                         ; $62be: $83
    dec sp                                        ; $62bf: $3b
    ccf                                           ; $62c0: $3f
    ld a, e                                       ; $62c1: $7b
    inc bc                                        ; $62c2: $03
    ld a, a                                       ; $62c3: $7f
    add d                                         ; $62c4: $82
    ld [hl], e                                    ; $62c5: $73
    ld a, a                                       ; $62c6: $7f
    ld [bc], a                                    ; $62c7: $02
    ccf                                           ; $62c8: $3f
    stop                                          ; $62c9: $10 $00
    adc b                                         ; $62cb: $88
    dec e                                         ; $62cc: $1d
    rra                                           ; $62cd: $1f
    dec c                                         ; $62ce: $0d
    rra                                           ; $62cf: $1f
    dec e                                         ; $62d0: $1d
    rra                                           ; $62d1: $1f
    ld d, $1e                                     ; $62d2: $16 $1e
    ld b, $1c                                     ; $62d4: $06 $1c
    ld [bc], a                                    ; $62d6: $02
    db $10                                        ; $62d7: $10
    stop                                          ; $62d8: $10 $00
    rst $38                                       ; $62da: $ff
    dec c                                         ; $62db: $0d
    inc b                                         ; $62dc: $04
    db $fc                                        ; $62dd: $fc
    inc b                                         ; $62de: $04
    rst $30                                       ; $62df: $f7
    cp $eb                                        ; $62e0: $fe $eb
    ld a, [$ffeb]                                 ; $62e2: $fa $eb $ff
    ei                                            ; $62e5: $fb
    ld a, [$fffb]                                 ; $62e6: $fa $fb $ff
    ld [bc], a                                    ; $62e9: $02
    dec c                                         ; $62ea: $0d
    add [hl]                                      ; $62eb: $86
    rla                                           ; $62ec: $17
    dec de                                        ; $62ed: $1b
    ld h, $39                                     ; $62ee: $26 $39
    dec a                                         ; $62f0: $3d
    ld a, $02                                     ; $62f1: $3e $02
    ccf                                           ; $62f3: $3f
    add c                                         ; $62f4: $81
    ld a, [hl]                                    ; $62f5: $7e
    inc bc                                        ; $62f6: $03
    ld a, a                                       ; $62f7: $7f
    sub d                                         ; $62f8: $92
    scf                                           ; $62f9: $37
    ccf                                           ; $62fa: $3f
    jr z, jr_0e2_6334                             ; $62fb: $28 $37

    ld [hl], d                                    ; $62fd: $72
    ld a, l                                       ; $62fe: $7d
    dec a                                         ; $62ff: $3d
    ccf                                           ; $6300: $3f
    ld a, $3f                                     ; $6301: $3e $3f
    ld e, a                                       ; $6303: $5f
    ld a, a                                       ; $6304: $7f
    ld e, a                                       ; $6305: $5f
    ld a, a                                       ; $6306: $7f
    ld e, a                                       ; $6307: $5f
    ld a, a                                       ; $6308: $7f
    sbc a                                         ; $6309: $9f
    rst $38                                       ; $630a: $ff
    ld [bc], a                                    ; $630b: $02
    db $10                                        ; $630c: $10
    add l                                         ; $630d: $85
    jr @+$0a                                      ; $630e: $18 $08

    jr jr_0e2_631a                                ; $6310: $18 $08

    inc c                                         ; $6312: $0c
    ld [bc], a                                    ; $6313: $02
    inc e                                         ; $6314: $1c
    add e                                         ; $6315: $83
    inc d                                         ; $6316: $14
    ld d, $0e                                     ; $6317: $16 $0e
    ld [bc], a                                    ; $6319: $02

jr_0e2_631a:
    inc e                                         ; $631a: $1c
    add e                                         ; $631b: $83
    ld d, $1e                                     ; $631c: $16 $1e
    inc c                                         ; $631e: $0c
    ld [bc], a                                    ; $631f: $02
    inc d                                         ; $6320: $14
    sub c                                         ; $6321: $91
    inc c                                         ; $6322: $0c
    ld c, $1e                                     ; $6323: $0e $1e
    ld c, $1e                                     ; $6325: $0e $1e
    ld a, [de]                                    ; $6327: $1a
    ld e, $1a                                     ; $6328: $1e $1a
    ld e, $09                                     ; $632a: $1e $09
    rra                                           ; $632c: $1f
    add hl, bc                                    ; $632d: $09
    rra                                           ; $632e: $1f
    sbc a                                         ; $632f: $9f
    rst $38                                       ; $6330: $ff
    cp a                                          ; $6331: $bf
    rst $38                                       ; $6332: $ff
    ld [bc], a                                    ; $6333: $02

jr_0e2_6334:
    ld a, a                                       ; $6334: $7f
    ld b, $3f                                     ; $6335: $06 $3f
    ld [bc], a                                    ; $6337: $02
    rra                                           ; $6338: $1f
    ld [de], a                                    ; $6339: $12
    nop                                           ; $633a: $00
    add a                                         ; $633b: $87
    dec e                                         ; $633c: $1d
    rra                                           ; $633d: $1f
    dec c                                         ; $633e: $0d
    rra                                           ; $633f: $1f
    ld d, $1e                                     ; $6340: $16 $1e
    ld a, [de]                                    ; $6342: $1a
    inc bc                                        ; $6343: $03
    ld e, $02                                     ; $6344: $1e $02
    inc e                                         ; $6346: $1c
    ld [bc], a                                    ; $6347: $02
    db $10                                        ; $6348: $10
    ld [de], a                                    ; $6349: $12
    nop                                           ; $634a: $00
    rst $38                                       ; $634b: $ff
    dec c                                         ; $634c: $0d
    inc b                                         ; $634d: $04
    db $fc                                        ; $634e: $fc
    inc b                                         ; $634f: $04
    rst $30                                       ; $6350: $f7
    cp $ea                                        ; $6351: $fe $ea
    ld a, [$ffea]                                 ; $6353: $fa $ea $ff
    ld a, [$fafa]                                 ; $6356: $fa $fa $fa
    rst $38                                       ; $6359: $ff
    ld [bc], a                                    ; $635a: $02
    dec c                                         ; $635b: $0d
    sub d                                         ; $635c: $92
    dec de                                        ; $635d: $1b
    rla                                           ; $635e: $17
    rra                                           ; $635f: $1f
    inc de                                        ; $6360: $13
    cpl                                           ; $6361: $2f
    inc a                                         ; $6362: $3c
    ccf                                           ; $6363: $3f
    jr nc, jr_0e2_63d5                            ; $6364: $30 $6f

    ld a, l                                       ; $6366: $7d
    ccf                                           ; $6367: $3f
    jr nz, jr_0e2_63c9                            ; $6368: $20 $5f

    ld [hl], h                                    ; $636a: $74
    ld a, a                                       ; $636b: $7f
    ld [hl], e                                    ; $636c: $73
    ccf                                           ; $636d: $3f
    jr c, jr_0e2_6372                             ; $636e: $38 $02

    ld a, a                                       ; $6370: $7f
    adc d                                         ; $6371: $8a

jr_0e2_6372:
    ld a, [hl+]                                   ; $6372: $2a
    ccf                                           ; $6373: $3f
    ld e, l                                       ; $6374: $5d
    ld a, a                                       ; $6375: $7f
    ld e, d                                       ; $6376: $5a
    ld a, a                                       ; $6377: $7f
    ld e, l                                       ; $6378: $5d
    ld a, a                                       ; $6379: $7f
    cp l                                          ; $637a: $bd
    rst $38                                       ; $637b: $ff
    ld [bc], a                                    ; $637c: $02
    db $10                                        ; $637d: $10
    add l                                         ; $637e: $85
    ld [$1c18], sp                                ; $637f: $08 $18 $1c
    inc b                                         ; $6382: $04
    inc d                                         ; $6383: $14
    ld [bc], a                                    ; $6384: $02
    inc e                                         ; $6385: $1c
    adc c                                         ; $6386: $89
    inc c                                         ; $6387: $0c
    inc d                                         ; $6388: $14
    inc e                                         ; $6389: $1c
    ld a, [de]                                    ; $638a: $1a
    ld b, $1e                                     ; $638b: $06 $1e
    ld a, [bc]                                    ; $638d: $0a
    inc e                                         ; $638e: $1c
    inc c                                         ; $638f: $0c
    ld [bc], a                                    ; $6390: $02
    ld e, $02                                     ; $6391: $1e $02
    inc e                                         ; $6393: $1c
    sub h                                         ; $6394: $94
    inc d                                         ; $6395: $14
    inc e                                         ; $6396: $1c
    ld a, [de]                                    ; $6397: $1a
    ld e, $1a                                     ; $6398: $1e $1a
    ld e, $1a                                     ; $639a: $1e $1a
    ld e, $1d                                     ; $639c: $1e $1d
    rra                                           ; $639e: $1f
    jp c, $faff                                   ; $639f: $da $ff $fa

    cp a                                          ; $63a2: $bf
    ld a, d                                       ; $63a3: $7a
    ld e, a                                       ; $63a4: $5f
    ld a, [hl-]                                   ; $63a5: $3a
    cpl                                           ; $63a6: $2f
    ld [hl], a                                    ; $63a7: $77
    ld a, a                                       ; $63a8: $7f
    ld [bc], a                                    ; $63a9: $02
    ccf                                           ; $63aa: $3f
    add d                                         ; $63ab: $82
    dec d                                         ; $63ac: $15
    dec e                                         ; $63ad: $1d
    ld [bc], a                                    ; $63ae: $02
    jr jr_0e2_63c1                                ; $63af: $18 $10

    nop                                           ; $63b1: $00
    add c                                         ; $63b2: $81
    dec de                                        ; $63b3: $1b
    ld [bc], a                                    ; $63b4: $02
    rra                                           ; $63b5: $1f
    add c                                         ; $63b6: $81

jr_0e2_63b7:
    dec e                                         ; $63b7: $1d
    ld [bc], a                                    ; $63b8: $02
    ld a, [de]                                    ; $63b9: $1a
    ld [bc], a                                    ; $63ba: $02
    inc e                                         ; $63bb: $1c
    add d                                         ; $63bc: $82
    ld a, [bc]                                    ; $63bd: $0a
    ld e, $02                                     ; $63be: $1e $02
    inc e                                         ; $63c0: $1c

jr_0e2_63c1:
    add c                                         ; $63c1: $81
    ld [$1803], sp                                ; $63c2: $08 $03 $18
    stop                                          ; $63c5: $10 $00
    rst $38                                       ; $63c7: $ff
    dec c                                         ; $63c8: $0d

jr_0e2_63c9:
    inc b                                         ; $63c9: $04
    db $fc                                        ; $63ca: $fc
    inc b                                         ; $63cb: $04
    rst $30                                       ; $63cc: $f7
    cp $ea                                        ; $63cd: $fe $ea
    ld a, [$ffea]                                 ; $63cf: $fa $ea $ff
    ld a, [$fafa]                                 ; $63d2: $fa $fa $fa

jr_0e2_63d5:
    rst $38                                       ; $63d5: $ff
    ld [bc], a                                    ; $63d6: $02
    dec c                                         ; $63d7: $0d
    sub d                                         ; $63d8: $92
    dec de                                        ; $63d9: $1b
    rla                                           ; $63da: $17
    rra                                           ; $63db: $1f
    inc de                                        ; $63dc: $13
    cpl                                           ; $63dd: $2f
    inc a                                         ; $63de: $3c
    ccf                                           ; $63df: $3f
    jr nc, jr_0e2_6451                            ; $63e0: $30 $6f

    ld a, l                                       ; $63e2: $7d
    ccf                                           ; $63e3: $3f
    jr nz, jr_0e2_6445                            ; $63e4: $20 $5f

    ld [hl], h                                    ; $63e6: $74
    ld a, a                                       ; $63e7: $7f
    ld [hl], e                                    ; $63e8: $73
    ccf                                           ; $63e9: $3f
    jr c, jr_0e2_63ee                             ; $63ea: $38 $02

    ld a, a                                       ; $63ec: $7f
    adc d                                         ; $63ed: $8a

jr_0e2_63ee:
    ld a, [hl-]                                   ; $63ee: $3a
    ccf                                           ; $63ef: $3f
    ld e, l                                       ; $63f0: $5d
    ld a, a                                       ; $63f1: $7f
    ld e, d                                       ; $63f2: $5a
    ld a, a                                       ; $63f3: $7f
    ld a, l                                       ; $63f4: $7d
    ld a, a                                       ; $63f5: $7f
    sbc l                                         ; $63f6: $9d
    rst $38                                       ; $63f7: $ff
    ld [bc], a                                    ; $63f8: $02
    db $10                                        ; $63f9: $10
    add l                                         ; $63fa: $85
    ld [$1c18], sp                                ; $63fb: $08 $18 $1c
    inc b                                         ; $63fe: $04
    inc d                                         ; $63ff: $14
    ld [bc], a                                    ; $6400: $02
    inc e                                         ; $6401: $1c
    adc c                                         ; $6402: $89
    inc c                                         ; $6403: $0c
    inc d                                         ; $6404: $14
    inc e                                         ; $6405: $1c
    ld a, [de]                                    ; $6406: $1a
    ld b, $1e                                     ; $6407: $06 $1e
    ld a, [bc]                                    ; $6409: $0a
    inc e                                         ; $640a: $1c
    inc c                                         ; $640b: $0c
    ld [bc], a                                    ; $640c: $02
    ld e, $02                                     ; $640d: $1e $02
    inc e                                         ; $640f: $1c
    sub d                                         ; $6410: $92
    inc d                                         ; $6411: $14
    inc e                                         ; $6412: $1c
    ld a, [de]                                    ; $6413: $1a
    ld e, $1a                                     ; $6414: $1e $1a
    ld e, $1d                                     ; $6416: $1e $1d
    rra                                           ; $6418: $1f
    add hl, de                                    ; $6419: $19
    rra                                           ; $641a: $1f
    cp c                                          ; $641b: $b9
    rst $18                                       ; $641c: $df
    ld a, [$76c7]                                 ; $641d: $fa $c7 $76
    ld a, a                                       ; $6420: $7f
    scf                                           ; $6421: $37
    ccf                                           ; $6422: $3f
    ld [bc], a                                    ; $6423: $02
    ld a, a                                       ; $6424: $7f
    ld [bc], a                                    ; $6425: $02
    ccf                                           ; $6426: $3f
    ld [bc], a                                    ; $6427: $02
    dec de                                        ; $6428: $1b
    ld [bc], a                                    ; $6429: $02
    ld bc, $0010                                  ; $642a: $01 $10 $00
    add d                                         ; $642d: $82
    rra                                           ; $642e: $1f
    dec e                                         ; $642f: $1d
    ld [bc], a                                    ; $6430: $02
    ld a, [de]                                    ; $6431: $1a
    ld [bc], a                                    ; $6432: $02
    jr jr_0e2_63b7                                ; $6433: $18 $82

    ld [$0218], sp                                ; $6435: $08 $18 $02
    inc e                                         ; $6438: $1c
    add d                                         ; $6439: $82
    inc c                                         ; $643a: $0c
    inc e                                         ; $643b: $1c
    ld [bc], a                                    ; $643c: $02
    jr @+$04                                      ; $643d: $18 $02

    db $10                                        ; $643f: $10
    stop                                          ; $6440: $10 $00
    rst $38                                       ; $6442: $ff
    dec c                                         ; $6443: $0d
    inc b                                         ; $6444: $04

jr_0e2_6445:
    db $fc                                        ; $6445: $fc
    inc b                                         ; $6446: $04
    rst $30                                       ; $6447: $f7
    cp $eb                                        ; $6448: $fe $eb
    ld a, [$ffeb]                                 ; $644a: $fa $eb $ff
    ei                                            ; $644d: $fb
    ld a, [$fffb]                                 ; $644e: $fa $fb $ff

jr_0e2_6451:
    ld [bc], a                                    ; $6451: $02
    dec c                                         ; $6452: $0d
    sub d                                         ; $6453: $92
    ld a, [de]                                    ; $6454: $1a
    rla                                           ; $6455: $17
    rra                                           ; $6456: $1f
    inc de                                        ; $6457: $13
    cpl                                           ; $6458: $2f
    inc a                                         ; $6459: $3c
    ld a, a                                       ; $645a: $7f
    ld [hl], b                                    ; $645b: $70
    cpl                                           ; $645c: $2f
    dec a                                         ; $645d: $3d
    ld a, a                                       ; $645e: $7f
    ld h, b                                       ; $645f: $60
    ld e, a                                       ; $6460: $5f
    ld [hl], h                                    ; $6461: $74
    ld a, a                                       ; $6462: $7f
    ld [hl], e                                    ; $6463: $73
    ccf                                           ; $6464: $3f
    jr c, jr_0e2_6469                             ; $6465: $38 $02

    ld a, a                                       ; $6467: $7f
    adc d                                         ; $6468: $8a

jr_0e2_6469:
    ld a, [hl+]                                   ; $6469: $2a
    ccf                                           ; $646a: $3f
    ld e, l                                       ; $646b: $5d
    ld a, a                                       ; $646c: $7f
    ld e, d                                       ; $646d: $5a
    ld a, a                                       ; $646e: $7f
    sbc l                                         ; $646f: $9d
    rst $38                                       ; $6470: $ff
    cp l                                          ; $6471: $bd
    rst $38                                       ; $6472: $ff
    ld [bc], a                                    ; $6473: $02
    db $10                                        ; $6474: $10
    add l                                         ; $6475: $85
    ld [$1c18], sp                                ; $6476: $08 $18 $1c
    inc b                                         ; $6479: $04
    inc d                                         ; $647a: $14
    ld [bc], a                                    ; $647b: $02
    inc e                                         ; $647c: $1c
    adc c                                         ; $647d: $89
    inc c                                         ; $647e: $0c
    ld [de], a                                    ; $647f: $12
    ld e, $1a                                     ; $6480: $1e $1a
    ld b, $1e                                     ; $6482: $06 $1e
    ld a, [bc]                                    ; $6484: $0a
    inc e                                         ; $6485: $1c
    inc c                                         ; $6486: $0c
    ld [bc], a                                    ; $6487: $02
    ld e, $04                                     ; $6488: $1e $04
    inc e                                         ; $648a: $1c
    sub d                                         ; $648b: $92
    ld a, [de]                                    ; $648c: $1a
    ld e, $1a                                     ; $648d: $1e $1a
    ld e, $19                                     ; $648f: $1e $19
    rra                                           ; $6491: $1f
    dec e                                         ; $6492: $1d
    rra                                           ; $6493: $1f
    db $dd                                        ; $6494: $dd
    rst $38                                       ; $6495: $ff
    db $fc                                        ; $6496: $fc
    cp a                                          ; $6497: $bf
    ld a, d                                       ; $6498: $7a
    ld e, a                                       ; $6499: $5f
    ld [hl], e                                    ; $649a: $73
    ld l, a                                       ; $649b: $6f
    scf                                           ; $649c: $37
    ccf                                           ; $649d: $3f
    ld [bc], a                                    ; $649e: $02
    dec e                                         ; $649f: $1d
    inc d                                         ; $64a0: $14
    nop                                           ; $64a1: $00
    add c                                         ; $64a2: $81
    dec de                                        ; $64a3: $1b
    ld [bc], a                                    ; $64a4: $02
    rra                                           ; $64a5: $1f
    add c                                         ; $64a6: $81
    dec e                                         ; $64a7: $1d
    ld [bc], a                                    ; $64a8: $02
    ld a, [de]                                    ; $64a9: $1a
    add d                                         ; $64aa: $82
    ld c, $1e                                     ; $64ab: $0e $1e
    ld [bc], a                                    ; $64ad: $02
    inc e                                         ; $64ae: $1c
    add d                                         ; $64af: $82
    ld [$0218], sp                                ; $64b0: $08 $18 $02
    db $10                                        ; $64b3: $10
    ld [de], a                                    ; $64b4: $12
    nop                                           ; $64b5: $00
    rst $38                                       ; $64b6: $ff
    dec c                                         ; $64b7: $0d
    inc b                                         ; $64b8: $04
    db $fc                                        ; $64b9: $fc
    inc b                                         ; $64ba: $04
    rst $30                                       ; $64bb: $f7
    cp $ea                                        ; $64bc: $fe $ea
    ld a, [$ffea]                                 ; $64be: $fa $ea $ff
    ld a, [$fafa]                                 ; $64c1: $fa $fa $fa
    rst $38                                       ; $64c4: $ff
    ld [bc], a                                    ; $64c5: $02
    dec c                                         ; $64c6: $0d
    sub d                                         ; $64c7: $92
    dec de                                        ; $64c8: $1b
    rla                                           ; $64c9: $17
    rra                                           ; $64ca: $1f
    inc de                                        ; $64cb: $13
    cpl                                           ; $64cc: $2f
    inc a                                         ; $64cd: $3c
    ccf                                           ; $64ce: $3f
    jr nc, jr_0e2_6540                            ; $64cf: $30 $6f

    ld a, l                                       ; $64d1: $7d
    ccf                                           ; $64d2: $3f
    jr nz, jr_0e2_6534                            ; $64d3: $20 $5f

    ld [hl], h                                    ; $64d5: $74
    ld a, a                                       ; $64d6: $7f
    ld [hl], e                                    ; $64d7: $73
    ccf                                           ; $64d8: $3f
    jr c, jr_0e2_64dd                             ; $64d9: $38 $02

    ld a, a                                       ; $64db: $7f
    adc d                                         ; $64dc: $8a

jr_0e2_64dd:
    ld a, [hl+]                                   ; $64dd: $2a
    ccf                                           ; $64de: $3f
    ld e, l                                       ; $64df: $5d
    ld a, a                                       ; $64e0: $7f
    ld e, d                                       ; $64e1: $5a
    ld a, a                                       ; $64e2: $7f
    cp l                                          ; $64e3: $bd
    rst $38                                       ; $64e4: $ff
    sbc l                                         ; $64e5: $9d
    rst $38                                       ; $64e6: $ff
    ld [bc], a                                    ; $64e7: $02
    db $10                                        ; $64e8: $10
    add l                                         ; $64e9: $85
    ld [$1c18], sp                                ; $64ea: $08 $18 $1c
    inc b                                         ; $64ed: $04
    inc d                                         ; $64ee: $14
    ld [bc], a                                    ; $64ef: $02
    inc e                                         ; $64f0: $1c
    adc c                                         ; $64f1: $89
    inc c                                         ; $64f2: $0c
    inc d                                         ; $64f3: $14
    inc e                                         ; $64f4: $1c
    ld a, [de]                                    ; $64f5: $1a
    ld b, $1e                                     ; $64f6: $06 $1e
    ld a, [bc]                                    ; $64f8: $0a
    inc e                                         ; $64f9: $1c
    inc c                                         ; $64fa: $0c
    ld [bc], a                                    ; $64fb: $02
    ld e, $04                                     ; $64fc: $1e $04
    inc e                                         ; $64fe: $1c
    add e                                         ; $64ff: $83
    ld a, [de]                                    ; $6500: $1a
    ld e, $1a                                     ; $6501: $1e $1a
    inc bc                                        ; $6503: $03
    ld e, $8a                                     ; $6504: $1e $8a
    add hl, de                                    ; $6506: $19
    rra                                           ; $6507: $1f
    db $fc                                        ; $6508: $fc
    rst $38                                       ; $6509: $ff
    ld a, [$fbbf]                                 ; $650a: $fa $bf $fb
    cp a                                          ; $650d: $bf
    ld d, a                                       ; $650e: $57
    ld e, a                                       ; $650f: $5f
    ld [bc], a                                    ; $6510: $02
    ccf                                           ; $6511: $3f
    add d                                         ; $6512: $82
    scf                                           ; $6513: $37
    ccf                                           ; $6514: $3f
    ld [bc], a                                    ; $6515: $02
    ld e, $02                                     ; $6516: $1e $02
    inc c                                         ; $6518: $0c
    stop                                          ; $6519: $10 $00
    adc b                                         ; $651b: $88
    dec e                                         ; $651c: $1d
    dec de                                        ; $651d: $1b
    rra                                           ; $651e: $1f
    dec de                                        ; $651f: $1b
    ld c, $1e                                     ; $6520: $0e $1e
    inc c                                         ; $6522: $0c
    inc e                                         ; $6523: $1c
    ld [bc], a                                    ; $6524: $02
    ld e, $02                                     ; $6525: $1e $02
    inc e                                         ; $6527: $1c
    ld [bc], a                                    ; $6528: $02
    jr jr_0e2_653d                                ; $6529: $18 $12

    nop                                           ; $652b: $00
    rst $38                                       ; $652c: $ff
    dec c                                         ; $652d: $0d
    inc b                                         ; $652e: $04
    db $fc                                        ; $652f: $fc
    inc b                                         ; $6530: $04
    rst $30                                       ; $6531: $f7
    cp $eb                                        ; $6532: $fe $eb

jr_0e2_6534:
    ld a, [$ffeb]                                 ; $6534: $fa $eb $ff
    ei                                            ; $6537: $fb
    ld a, [$fffb]                                 ; $6538: $fa $fb $ff
    ld [bc], a                                    ; $653b: $02
    dec c                                         ; $653c: $0d

jr_0e2_653d:
    sub d                                         ; $653d: $92
    ld a, [de]                                    ; $653e: $1a
    rla                                           ; $653f: $17

jr_0e2_6540:
    rra                                           ; $6540: $1f
    inc de                                        ; $6541: $13
    cpl                                           ; $6542: $2f
    inc a                                         ; $6543: $3c
    ld a, a                                       ; $6544: $7f
    ld [hl], b                                    ; $6545: $70
    cpl                                           ; $6546: $2f
    dec a                                         ; $6547: $3d
    ld a, a                                       ; $6548: $7f
    ld h, b                                       ; $6549: $60
    ld e, a                                       ; $654a: $5f
    ld [hl], h                                    ; $654b: $74
    ld a, a                                       ; $654c: $7f
    ld [hl], e                                    ; $654d: $73
    ccf                                           ; $654e: $3f
    jr c, jr_0e2_6553                             ; $654f: $38 $02

    ld a, a                                       ; $6551: $7f
    adc d                                         ; $6552: $8a

jr_0e2_6553:
    ld a, [hl-]                                   ; $6553: $3a
    ccf                                           ; $6554: $3f
    ld e, l                                       ; $6555: $5d
    ld a, a                                       ; $6556: $7f
    ld e, d                                       ; $6557: $5a
    ld a, a                                       ; $6558: $7f
    sbc l                                         ; $6559: $9d
    rst $38                                       ; $655a: $ff
    cp l                                          ; $655b: $bd
    rst $38                                       ; $655c: $ff
    ld [bc], a                                    ; $655d: $02
    db $10                                        ; $655e: $10
    add l                                         ; $655f: $85
    ld [$1c18], sp                                ; $6560: $08 $18 $1c
    inc b                                         ; $6563: $04
    inc d                                         ; $6564: $14
    ld [bc], a                                    ; $6565: $02
    inc e                                         ; $6566: $1c
    adc c                                         ; $6567: $89
    inc c                                         ; $6568: $0c
    ld [de], a                                    ; $6569: $12
    ld e, $1a                                     ; $656a: $1e $1a
    ld b, $1e                                     ; $656c: $06 $1e
    ld a, [bc]                                    ; $656e: $0a
    inc e                                         ; $656f: $1c
    inc c                                         ; $6570: $0c
    ld [bc], a                                    ; $6571: $02
    ld e, $02                                     ; $6572: $1e $02
    inc e                                         ; $6574: $1c
    sub d                                         ; $6575: $92
    inc d                                         ; $6576: $14
    inc e                                         ; $6577: $1c
    ld a, [de]                                    ; $6578: $1a
    ld e, $1a                                     ; $6579: $1e $1a
    ld e, $19                                     ; $657b: $1e $19
    rra                                           ; $657d: $1f
    dec e                                         ; $657e: $1d
    rra                                           ; $657f: $1f
    db $dd                                        ; $6580: $dd
    rst $38                                       ; $6581: $ff
    ld sp, hl                                     ; $6582: $f9
    cp a                                          ; $6583: $bf
    ld a, d                                       ; $6584: $7a
    ld e, a                                       ; $6585: $5f
    halt                                          ; $6586: $76
    ld l, a                                       ; $6587: $6f
    ld [bc], a                                    ; $6588: $02
    ccf                                           ; $6589: $3f
    add d                                         ; $658a: $82
    dec d                                         ; $658b: $15
    dec e                                         ; $658c: $1d
    ld [bc], a                                    ; $658d: $02
    ld [$0012], sp                                ; $658e: $08 $12 $00
    add c                                         ; $6591: $81
    dec de                                        ; $6592: $1b
    ld [bc], a                                    ; $6593: $02
    rra                                           ; $6594: $1f
    add c                                         ; $6595: $81
    dec e                                         ; $6596: $1d
    ld [bc], a                                    ; $6597: $02
    ld a, [de]                                    ; $6598: $1a
    add h                                         ; $6599: $84
    ld c, $1e                                     ; $659a: $0e $1e
    inc c                                         ; $659c: $0c
    inc e                                         ; $659d: $1c
    ld [bc], a                                    ; $659e: $02
    jr jr_0e2_65b5                                ; $659f: $18 $14

    nop                                           ; $65a1: $00
    rst $38                                       ; $65a2: $ff
    dec c                                         ; $65a3: $0d
    inc b                                         ; $65a4: $04
    db $fc                                        ; $65a5: $fc
    inc b                                         ; $65a6: $04
    rst $30                                       ; $65a7: $f7
    cp $ea                                        ; $65a8: $fe $ea
    ei                                            ; $65aa: $fb
    ld [$fafe], a                                 ; $65ab: $ea $fe $fa
    ei                                            ; $65ae: $fb
    ld a, [$02fd]                                 ; $65af: $fa $fd $02
    rlca                                          ; $65b2: $07
    adc b                                         ; $65b3: $88
    dec e                                         ; $65b4: $1d

jr_0e2_65b5:
    dec de                                        ; $65b5: $1b
    scf                                           ; $65b6: $37
    add hl, sp                                    ; $65b7: $39
    ccf                                           ; $65b8: $3f
    ld a, $3f                                     ; $65b9: $3e $3f
    inc a                                         ; $65bb: $3c
    ld [bc], a                                    ; $65bc: $02
    ccf                                           ; $65bd: $3f
    adc b                                         ; $65be: $88
    ld a, a                                       ; $65bf: $7f
    ld e, b                                       ; $65c0: $58
    ld l, a                                       ; $65c1: $6f
    ld e, h                                       ; $65c2: $5c
    ld e, a                                       ; $65c3: $5f
    ld l, c                                       ; $65c4: $69
    ld l, a                                       ; $65c5: $6f
    ld a, h                                       ; $65c6: $7c
    ld [bc], a                                    ; $65c7: $02
    rst $38                                       ; $65c8: $ff
    adc d                                         ; $65c9: $8a
    ld [hl], l                                    ; $65ca: $75
    ld a, a                                       ; $65cb: $7f
    sub $ff                                       ; $65cc: $d6 $ff
    dec [hl]                                      ; $65ce: $35
    ccf                                           ; $65cf: $3f
    ld l, $3f                                     ; $65d0: $2e $3f
    ld h, $3f                                     ; $65d2: $26 $3f
    ld [bc], a                                    ; $65d4: $02
    ld [bc], a                                    ; $65d5: $02
    add c                                         ; $65d6: $81
    rlca                                          ; $65d7: $07
    ld [bc], a                                    ; $65d8: $02
    dec b                                         ; $65d9: $05
    adc l                                         ; $65da: $8d
    rlca                                          ; $65db: $07
    inc bc                                        ; $65dc: $03
    rlca                                          ; $65dd: $07
    ld b, $02                                     ; $65de: $06 $02
    rlca                                          ; $65e0: $07
    inc bc                                        ; $65e1: $03
    ld b, $02                                     ; $65e2: $06 $02
    rlca                                          ; $65e4: $07
    ld bc, $0206                                  ; $65e5: $01 $06 $02
    ld [bc], a                                    ; $65e8: $02
    inc b                                         ; $65e9: $04
    inc b                                         ; $65ea: $04
    nop                                           ; $65eb: $00
    ld [$8e04], sp                                ; $65ec: $08 $04 $8e
    ld l, $3f                                     ; $65ef: $2e $3f
    ld e, [hl]                                    ; $65f1: $5e
    ld [hl], e                                    ; $65f2: $73
    ld a, a                                       ; $65f3: $7f
    ld a, h                                       ; $65f4: $7c
    ld a, $3f                                     ; $65f5: $3e $3f
    ld a, l                                       ; $65f7: $7d
    ld a, a                                       ; $65f8: $7f
    cp e                                          ; $65f9: $bb
    rst $38                                       ; $65fa: $ff
    ld e, h                                       ; $65fb: $5c
    ld a, a                                       ; $65fc: $7f
    ld [bc], a                                    ; $65fd: $02
    ccf                                           ; $65fe: $3f
    stop                                          ; $65ff: $10 $00
    ld c, $02                                     ; $6601: $0e $02
    ld [bc], a                                    ; $6603: $02
    inc bc                                        ; $6604: $03
    stop                                          ; $6605: $10 $00
    rst $38                                       ; $6607: $ff
    dec c                                         ; $6608: $0d
    inc b                                         ; $6609: $04
    db $fc                                        ; $660a: $fc
    inc b                                         ; $660b: $04
    rst $30                                       ; $660c: $f7
    cp $ea                                        ; $660d: $fe $ea
    ei                                            ; $660f: $fb
    ld [$fafe], a                                 ; $6610: $ea $fe $fa
    ei                                            ; $6613: $fb
    ld a, [$02fe]                                 ; $6614: $fa $fe $02
    rlca                                          ; $6617: $07
    adc b                                         ; $6618: $88
    dec e                                         ; $6619: $1d
    dec de                                        ; $661a: $1b
    scf                                           ; $661b: $37
    add hl, sp                                    ; $661c: $39
    ccf                                           ; $661d: $3f
    ld a, $3f                                     ; $661e: $3e $3f
    inc a                                         ; $6620: $3c
    ld [bc], a                                    ; $6621: $02
    ccf                                           ; $6622: $3f
    adc b                                         ; $6623: $88
    ld a, a                                       ; $6624: $7f
    ld e, b                                       ; $6625: $58
    ld l, a                                       ; $6626: $6f
    ld e, h                                       ; $6627: $5c
    ld e, a                                       ; $6628: $5f
    ld l, c                                       ; $6629: $69
    ld l, a                                       ; $662a: $6f
    ld a, h                                       ; $662b: $7c
    ld [bc], a                                    ; $662c: $02
    rst $38                                       ; $662d: $ff
    adc d                                         ; $662e: $8a
    ld a, l                                       ; $662f: $7d
    ld a, a                                       ; $6630: $7f
    sub $ff                                       ; $6631: $d6 $ff
    dec [hl]                                      ; $6633: $35
    ccf                                           ; $6634: $3f
    ld [hl], $3f                                  ; $6635: $36 $3f
    ld [hl+], a                                   ; $6637: $22
    ccf                                           ; $6638: $3f
    ld [bc], a                                    ; $6639: $02
    ld [bc], a                                    ; $663a: $02
    add c                                         ; $663b: $81
    rlca                                          ; $663c: $07
    ld [bc], a                                    ; $663d: $02
    dec b                                         ; $663e: $05
    adc l                                         ; $663f: $8d
    rlca                                          ; $6640: $07
    inc bc                                        ; $6641: $03
    rlca                                          ; $6642: $07
    ld b, $02                                     ; $6643: $06 $02
    rlca                                          ; $6645: $07
    inc bc                                        ; $6646: $03
    ld b, $02                                     ; $6647: $06 $02
    rlca                                          ; $6649: $07
    ld bc, $0206                                  ; $664a: $01 $06 $02
    ld [bc], a                                    ; $664d: $02
    inc b                                         ; $664e: $04
    inc b                                         ; $664f: $04
    nop                                           ; $6650: $00
    ld [$8504], sp                                ; $6651: $08 $04 $85
    inc sp                                        ; $6654: $33
    ccf                                           ; $6655: $3f
    ld [hl], a                                    ; $6656: $77
    ld a, h                                       ; $6657: $7c
    ld a, a                                       ; $6658: $7f
    ld [bc], a                                    ; $6659: $02
    ld a, e                                       ; $665a: $7b
    add a                                         ; $665b: $87
    ld a, a                                       ; $665c: $7f
    or a                                          ; $665d: $b7
    rst $38                                       ; $665e: $ff
    cp a                                          ; $665f: $bf
    rst $38                                       ; $6660: $ff
    rst $30                                       ; $6661: $f7
    rst $38                                       ; $6662: $ff
    ld [bc], a                                    ; $6663: $02
    ld a, [hl]                                    ; $6664: $7e
    stop                                          ; $6665: $10 $00
    ld [bc], a                                    ; $6667: $02
    inc b                                         ; $6668: $04
    add c                                         ; $6669: $81
    ld b, $02                                     ; $666a: $06 $02
    ld [bc], a                                    ; $666c: $02
    inc bc                                        ; $666d: $03
    ld b, $82                                     ; $666e: $06 $82
    ld bc, $0207                                  ; $6670: $01 $07 $02
    ld b, $14                                     ; $6673: $06 $14
    nop                                           ; $6675: $00
    rst $38                                       ; $6676: $ff
    dec c                                         ; $6677: $0d
    inc b                                         ; $6678: $04
    db $fc                                        ; $6679: $fc
    inc b                                         ; $667a: $04
    rst $30                                       ; $667b: $f7
    cp $eb                                        ; $667c: $fe $eb
    ei                                            ; $667e: $fb
    db $eb                                        ; $667f: $eb
    cp $fb                                        ; $6680: $fe $fb
    ei                                            ; $6682: $fb
    ei                                            ; $6683: $fb
    db $fd                                        ; $6684: $fd
    ld [bc], a                                    ; $6685: $02
    rlca                                          ; $6686: $07
    sub d                                         ; $6687: $92
    inc e                                         ; $6688: $1c
    dec de                                        ; $6689: $1b
    scf                                           ; $668a: $37
    add hl, sp                                    ; $668b: $39
    ccf                                           ; $668c: $3f
    ld a, $3f                                     ; $668d: $3e $3f
    inc a                                         ; $668f: $3c
    ld e, a                                       ; $6690: $5f
    ld a, a                                       ; $6691: $7f
    ld l, a                                       ; $6692: $6f
    ld e, b                                       ; $6693: $58
    ld b, a                                       ; $6694: $47
    ld a, h                                       ; $6695: $7c
    ld a, a                                       ; $6696: $7f
    ld l, c                                       ; $6697: $69
    rst $38                                       ; $6698: $ff
    db $fc                                        ; $6699: $fc
    ld [bc], a                                    ; $669a: $02
    ld a, a                                       ; $669b: $7f
    adc d                                         ; $669c: $8a
    ld a, l                                       ; $669d: $7d
    ld a, a                                       ; $669e: $7f
    or [hl]                                       ; $669f: $b6
    cp a                                          ; $66a0: $bf
    dec l                                         ; $66a1: $2d
    ccf                                           ; $66a2: $3f
    ld l, $3f                                     ; $66a3: $2e $3f
    ld h, [hl]                                    ; $66a5: $66
    ld a, a                                       ; $66a6: $7f
    ld [bc], a                                    ; $66a7: $02
    ld [bc], a                                    ; $66a8: $02
    add c                                         ; $66a9: $81
    rlca                                          ; $66aa: $07
    ld [bc], a                                    ; $66ab: $02
    dec b                                         ; $66ac: $05
    adc l                                         ; $66ad: $8d
    rlca                                          ; $66ae: $07
    inc bc                                        ; $66af: $03
    rlca                                          ; $66b0: $07
    ld b, $02                                     ; $66b1: $06 $02
    rlca                                          ; $66b3: $07
    inc bc                                        ; $66b4: $03
    ld b, $02                                     ; $66b5: $06 $02
    rlca                                          ; $66b7: $07
    ld bc, $0206                                  ; $66b8: $01 $06 $02
    ld [bc], a                                    ; $66bb: $02
    inc b                                         ; $66bc: $04
    inc b                                         ; $66bd: $04
    nop                                           ; $66be: $00
    ld [$8c04], sp                                ; $66bf: $08 $04 $8c
    ld c, [hl]                                    ; $66c2: $4e
    ld a, a                                       ; $66c3: $7f
    ld e, [hl]                                    ; $66c4: $5e
    ld h, a                                       ; $66c5: $67
    ccf                                           ; $66c6: $3f
    dec sp                                        ; $66c7: $3b
    ld a, [hl]                                    ; $66c8: $7e
    ld a, l                                       ; $66c9: $7d
    cp h                                          ; $66ca: $bc
    rst $38                                       ; $66cb: $ff
    ld e, a                                       ; $66cc: $5f
    ld a, a                                       ; $66cd: $7f
    ld [bc], a                                    ; $66ce: $02
    jr c, jr_0e2_66e3                             ; $66cf: $38 $12

    nop                                           ; $66d1: $00
    inc b                                         ; $66d2: $04
    ld [bc], a                                    ; $66d3: $02
    add c                                         ; $66d4: $81
    ld bc, $0303                                  ; $66d5: $01 $03 $03
    ld [bc], a                                    ; $66d8: $02
    ld [bc], a                                    ; $66d9: $02
    ld [bc], a                                    ; $66da: $02
    inc bc                                        ; $66db: $03
    inc d                                         ; $66dc: $14
    nop                                           ; $66dd: $00
    rst $38                                       ; $66de: $ff
    dec c                                         ; $66df: $0d
    inc b                                         ; $66e0: $04
    db $fc                                        ; $66e1: $fc
    inc b                                         ; $66e2: $04

jr_0e2_66e3:
    rst $30                                       ; $66e3: $f7
    cp $ea                                        ; $66e4: $fe $ea
    ei                                            ; $66e6: $fb
    ld [$fafe], a                                 ; $66e7: $ea $fe $fa
    ei                                            ; $66ea: $fb
    ld a, [$02ff]                                 ; $66eb: $fa $ff $02
    rlca                                          ; $66ee: $07
    adc b                                         ; $66ef: $88
    dec e                                         ; $66f0: $1d
    dec de                                        ; $66f1: $1b
    scf                                           ; $66f2: $37
    add hl, sp                                    ; $66f3: $39
    ccf                                           ; $66f4: $3f
    ld a, $3f                                     ; $66f5: $3e $3f
    inc a                                         ; $66f7: $3c
    ld [bc], a                                    ; $66f8: $02
    ccf                                           ; $66f9: $3f
    adc b                                         ; $66fa: $88
    ld a, a                                       ; $66fb: $7f
    ld e, b                                       ; $66fc: $58
    ld l, a                                       ; $66fd: $6f
    ld e, h                                       ; $66fe: $5c
    ld e, a                                       ; $66ff: $5f
    ld l, c                                       ; $6700: $69
    ld l, a                                       ; $6701: $6f
    ld a, h                                       ; $6702: $7c
    ld [bc], a                                    ; $6703: $02
    rst $38                                       ; $6704: $ff
    adc d                                         ; $6705: $8a
    ld [hl], l                                    ; $6706: $75
    ld a, a                                       ; $6707: $7f
    sub $ff                                       ; $6708: $d6 $ff
    dec l                                         ; $670a: $2d
    ccf                                           ; $670b: $3f
    ld l, $3f                                     ; $670c: $2e $3f
    ld c, [hl]                                    ; $670e: $4e
    ld a, a                                       ; $670f: $7f
    ld [bc], a                                    ; $6710: $02
    ld [bc], a                                    ; $6711: $02
    add c                                         ; $6712: $81
    rlca                                          ; $6713: $07
    ld [bc], a                                    ; $6714: $02
    dec b                                         ; $6715: $05
    adc l                                         ; $6716: $8d
    rlca                                          ; $6717: $07
    inc bc                                        ; $6718: $03
    rlca                                          ; $6719: $07
    ld b, $02                                     ; $671a: $06 $02
    rlca                                          ; $671c: $07
    inc bc                                        ; $671d: $03
    ld b, $02                                     ; $671e: $06 $02
    rlca                                          ; $6720: $07
    ld bc, $0206                                  ; $6721: $01 $06 $02
    ld [bc], a                                    ; $6724: $02
    inc b                                         ; $6725: $04
    inc b                                         ; $6726: $04
    nop                                           ; $6727: $00
    ld [$8e04], sp                                ; $6728: $08 $04 $8e
    ld c, [hl]                                    ; $672b: $4e
    ld a, a                                       ; $672c: $7f
    cp [hl]                                       ; $672d: $be
    rst $28                                       ; $672e: $ef
    ld a, [hl]                                    ; $672f: $7e
    ld [hl], a                                    ; $6730: $77
    ld a, $3b                                     ; $6731: $3e $3b
    ld a, l                                       ; $6733: $7d
    ld a, a                                       ; $6734: $7f
    cp a                                          ; $6735: $bf
    rst $38                                       ; $6736: $ff
    ld c, a                                       ; $6737: $4f
    ld a, a                                       ; $6738: $7f
    ld [bc], a                                    ; $6739: $02
    add hl, sp                                    ; $673a: $39
    stop                                          ; $673b: $10 $00
    ld b, $08                                     ; $673d: $06 $08
    add c                                         ; $673f: $81
    inc b                                         ; $6740: $04
    inc bc                                        ; $6741: $03
    inc c                                         ; $6742: $0c
    add d                                         ; $6743: $82
    inc bc                                        ; $6744: $03
    rrca                                          ; $6745: $0f
    ld [bc], a                                    ; $6746: $02
    ld c, $12                                     ; $6747: $0e $12
    nop                                           ; $6749: $00
    rst $38                                       ; $674a: $ff
    dec c                                         ; $674b: $0d
    inc b                                         ; $674c: $04
    db $fc                                        ; $674d: $fc
    inc b                                         ; $674e: $04
    rst $30                                       ; $674f: $f7
    cp $eb                                        ; $6750: $fe $eb
    ei                                            ; $6752: $fb
    db $eb                                        ; $6753: $eb
    cp $fb                                        ; $6754: $fe $fb
    ei                                            ; $6756: $fb
    ei                                            ; $6757: $fb
    db $fd                                        ; $6758: $fd
    ld [bc], a                                    ; $6759: $02
    rlca                                          ; $675a: $07
    sub d                                         ; $675b: $92
    inc e                                         ; $675c: $1c
    dec de                                        ; $675d: $1b
    scf                                           ; $675e: $37
    add hl, sp                                    ; $675f: $39
    ccf                                           ; $6760: $3f
    ld a, $3f                                     ; $6761: $3e $3f
    inc a                                         ; $6763: $3c
    ld e, a                                       ; $6764: $5f
    ld a, a                                       ; $6765: $7f
    ld l, a                                       ; $6766: $6f
    ld e, b                                       ; $6767: $58
    ld b, a                                       ; $6768: $47
    ld a, h                                       ; $6769: $7c
    ld a, a                                       ; $676a: $7f
    ld l, c                                       ; $676b: $69
    rst $38                                       ; $676c: $ff
    db $fc                                        ; $676d: $fc
    ld [bc], a                                    ; $676e: $02

jr_0e2_676f:
    ld a, a                                       ; $676f: $7f
    adc d                                         ; $6770: $8a
    ld a, l                                       ; $6771: $7d
    ld a, a                                       ; $6772: $7f
    or [hl]                                       ; $6773: $b6
    cp a                                          ; $6774: $bf
    dec [hl]                                      ; $6775: $35
    ccf                                           ; $6776: $3f
    ld [hl], $3f                                  ; $6777: $36 $3f
    ld [hl+], a                                   ; $6779: $22
    ccf                                           ; $677a: $3f
    ld [bc], a                                    ; $677b: $02
    ld [bc], a                                    ; $677c: $02
    add c                                         ; $677d: $81
    rlca                                          ; $677e: $07
    ld [bc], a                                    ; $677f: $02
    dec b                                         ; $6780: $05
    adc l                                         ; $6781: $8d
    rlca                                          ; $6782: $07
    inc bc                                        ; $6783: $03
    rlca                                          ; $6784: $07
    ld b, $02                                     ; $6785: $06 $02
    rlca                                          ; $6787: $07
    inc bc                                        ; $6788: $03
    ld b, $02                                     ; $6789: $06 $02
    rlca                                          ; $678b: $07
    ld bc, $0206                                  ; $678c: $01 $06 $02
    ld [bc], a                                    ; $678f: $02
    inc b                                         ; $6790: $04
    inc b                                         ; $6791: $04
    nop                                           ; $6792: $00
    ld [$8104], sp                                ; $6793: $08 $04 $81
    ld h, $02                                     ; $6796: $26 $02
    ccf                                           ; $6798: $3f
    adc c                                         ; $6799: $89
    jr c, jr_0e2_681b                             ; $679a: $38 $7f

    ld [hl], a                                    ; $679c: $77
    ei                                            ; $679d: $fb
    rst $38                                       ; $679e: $ff
    cp a                                          ; $679f: $bf
    rst $38                                       ; $67a0: $ff
    ld e, l                                       ; $67a1: $5d
    ld a, a                                       ; $67a2: $7f
    ld [bc], a                                    ; $67a3: $02
    ccf                                           ; $67a4: $3f
    ld [de], a                                    ; $67a5: $12
    nop                                           ; $67a6: $00
    ld [bc], a                                    ; $67a7: $02
    ld [bc], a                                    ; $67a8: $02
    add h                                         ; $67a9: $84
    ld bc, $0103                                  ; $67aa: $01 $03 $01
    inc bc                                        ; $67ad: $03
    ld [bc], a                                    ; $67ae: $02
    ld [bc], a                                    ; $67af: $02
    ld [bc], a                                    ; $67b0: $02
    inc bc                                        ; $67b1: $03
    ld [bc], a                                    ; $67b2: $02
    nop                                           ; $67b3: $00
    ld [bc], a                                    ; $67b4: $02
    ld [bc], a                                    ; $67b5: $02
    ld [de], a                                    ; $67b6: $12
    nop                                           ; $67b7: $00
    rst $38                                       ; $67b8: $ff
    dec c                                         ; $67b9: $0d
    inc b                                         ; $67ba: $04
    db $fc                                        ; $67bb: $fc
    inc b                                         ; $67bc: $04
    rst $30                                       ; $67bd: $f7
    cp $ea                                        ; $67be: $fe $ea
    ld a, [$ffea]                                 ; $67c0: $fa $ea $ff
    ld a, [$fafa]                                 ; $67c3: $fa $fa $fa
    rst $38                                       ; $67c6: $ff
    ld [bc], a                                    ; $67c7: $02
    ld [bc], a                                    ; $67c8: $02
    ld [bc], a                                    ; $67c9: $02
    rrca                                          ; $67ca: $0f
    ld [bc], a                                    ; $67cb: $02
    rra                                           ; $67cc: $1f
    add d                                         ; $67cd: $82
    ccf                                           ; $67ce: $3f
    cpl                                           ; $67cf: $2f
    ld b, $3f                                     ; $67d0: $06 $3f
    add h                                         ; $67d2: $84
    dec a                                         ; $67d3: $3d
    ccf                                           ; $67d4: $3f
    ld a, [de]                                    ; $67d5: $1a
    rra                                           ; $67d6: $1f
    ld [bc], a                                    ; $67d7: $02
    rrca                                          ; $67d8: $0f
    ld [bc], a                                    ; $67d9: $02
    rra                                           ; $67da: $1f
    adc d                                         ; $67db: $8a
    cpl                                           ; $67dc: $2f
    ccf                                           ; $67dd: $3f
    ld e, a                                       ; $67de: $5f
    ld a, a                                       ; $67df: $7f

jr_0e2_67e0:
    ld e, a                                       ; $67e0: $5f
    ld a, a                                       ; $67e1: $7f
    ld e, a                                       ; $67e2: $5f
    ld a, a                                       ; $67e3: $7f
    sbc a                                         ; $67e4: $9f
    rst $38                                       ; $67e5: $ff
    ld [bc], a                                    ; $67e6: $02
    db $10                                        ; $67e7: $10
    ld [bc], a                                    ; $67e8: $02
    inc e                                         ; $67e9: $1c
    ld [bc], a                                    ; $67ea: $02
    jr jr_0e2_676f                                ; $67eb: $18 $82

    inc e                                         ; $67ed: $1c
    inc d                                         ; $67ee: $14
    ld [$021c], sp                                ; $67ef: $08 $1c $02
    jr jr_0e2_67f6                                ; $67f2: $18 $02

    db $10                                        ; $67f4: $10
    ld [bc], a                                    ; $67f5: $02

jr_0e2_67f6:
    jr @-$70                                      ; $67f6: $18 $8e

    inc d                                         ; $67f8: $14

jr_0e2_67f9:
    inc e                                         ; $67f9: $1c
    ld a, [de]                                    ; $67fa: $1a
    ld e, $1a                                     ; $67fb: $1e $1a
    ld e, $0a                                     ; $67fd: $1e $0a
    ld e, $09                                     ; $67ff: $1e $09
    rra                                           ; $6801: $1f
    sbc a                                         ; $6802: $9f
    rst $38                                       ; $6803: $ff
    cp a                                          ; $6804: $bf
    rst $38                                       ; $6805: $ff
    ld [bc], a                                    ; $6806: $02
    ld e, a                                       ; $6807: $5f
    ld [bc], a                                    ; $6808: $02
    ccf                                           ; $6809: $3f
    ld [bc], a                                    ; $680a: $02
    ld a, a                                       ; $680b: $7f
    add h                                         ; $680c: $84
    ld l, a                                       ; $680d: $6f
    ld a, a                                       ; $680e: $7f
    ld a, b                                       ; $680f: $78
    ld a, a                                       ; $6810: $7f
    ld [bc], a                                    ; $6811: $02
    ccf                                           ; $6812: $3f
    stop                                          ; $6813: $10 $00
    add h                                         ; $6815: $84
    add hl, de                                    ; $6816: $19
    rra                                           ; $6817: $1f
    dec c                                         ; $6818: $0d
    rra                                           ; $6819: $1f
    ld [bc], a                                    ; $681a: $02

jr_0e2_681b:
    ld a, [de]                                    ; $681b: $1a
    adc b                                         ; $681c: $88
    inc d                                         ; $681d: $14
    inc e                                         ; $681e: $1c
    ld a, [de]                                    ; $681f: $1a
    ld e, $16                                     ; $6820: $1e $16
    ld e, $0e                                     ; $6822: $1e $0e
    ld e, $02                                     ; $6824: $1e $02
    inc e                                         ; $6826: $1c
    stop                                          ; $6827: $10 $00
    rst $38                                       ; $6829: $ff
    dec c                                         ; $682a: $0d
    inc b                                         ; $682b: $04
    db $fc                                        ; $682c: $fc
    inc b                                         ; $682d: $04
    rst $30                                       ; $682e: $f7
    cp $ea                                        ; $682f: $fe $ea
    ld a, [$ffea]                                 ; $6831: $fa $ea $ff
    ld a, [$fafa]                                 ; $6834: $fa $fa $fa
    rst $38                                       ; $6837: $ff
    ld [bc], a                                    ; $6838: $02
    ld [bc], a                                    ; $6839: $02
    ld [bc], a                                    ; $683a: $02
    rrca                                          ; $683b: $0f
    ld [bc], a                                    ; $683c: $02
    rra                                           ; $683d: $1f
    add d                                         ; $683e: $82
    ccf                                           ; $683f: $3f
    cpl                                           ; $6840: $2f
    ld b, $3f                                     ; $6841: $06 $3f
    add h                                         ; $6843: $84
    dec a                                         ; $6844: $3d
    ccf                                           ; $6845: $3f
    ld a, [de]                                    ; $6846: $1a
    rra                                           ; $6847: $1f
    ld [bc], a                                    ; $6848: $02
    rrca                                          ; $6849: $0f
    ld [bc], a                                    ; $684a: $02
    rra                                           ; $684b: $1f
    adc d                                         ; $684c: $8a
    cpl                                           ; $684d: $2f

jr_0e2_684e:
    ccf                                           ; $684e: $3f
    ld e, a                                       ; $684f: $5f
    ld a, a                                       ; $6850: $7f
    ld e, a                                       ; $6851: $5f
    ld a, a                                       ; $6852: $7f
    sbc a                                         ; $6853: $9f
    rst $38                                       ; $6854: $ff
    sbc a                                         ; $6855: $9f
    rst $38                                       ; $6856: $ff
    ld [bc], a                                    ; $6857: $02
    db $10                                        ; $6858: $10
    ld [bc], a                                    ; $6859: $02
    inc e                                         ; $685a: $1c
    ld [bc], a                                    ; $685b: $02
    jr jr_0e2_67e0                                ; $685c: $18 $82

    inc e                                         ; $685e: $1c
    inc d                                         ; $685f: $14
    ld [$021c], sp                                ; $6860: $08 $1c $02
    jr jr_0e2_6867                                ; $6863: $18 $02

jr_0e2_6865:
    db $10                                        ; $6865: $10
    ld [bc], a                                    ; $6866: $02

jr_0e2_6867:
    jr jr_0e2_67f9                                ; $6867: $18 $90

    ld d, $1e                                     ; $6869: $16 $1e
    ld a, [de]                                    ; $686b: $1a
    ld e, $1a                                     ; $686c: $1e $1a
    ld e, $09                                     ; $686e: $1e $09
    rra                                           ; $6870: $1f
    add hl, bc                                    ; $6871: $09
    rra                                           ; $6872: $1f
    cp a                                          ; $6873: $bf
    rst $38                                       ; $6874: $ff
    cp a                                          ; $6875: $bf
    rst $38                                       ; $6876: $ff
    cp a                                          ; $6877: $bf
    rst $38                                       ; $6878: $ff
    ld [bc], a                                    ; $6879: $02
    ld a, a                                       ; $687a: $7f
    inc b                                         ; $687b: $04
    ccf                                           ; $687c: $3f
    add d                                         ; $687d: $82
    ld a, $3f                                     ; $687e: $3e $3f
    ld [bc], a                                    ; $6880: $02
    rrca                                          ; $6881: $0f
    stop                                          ; $6882: $10 $00
    adc [hl]                                      ; $6884: $8e
    dec e                                         ; $6885: $1d
    rra                                           ; $6886: $1f
    ld c, $1e                                     ; $6887: $0e $1e
    inc d                                         ; $6889: $14
    inc e                                         ; $688a: $1c
    inc d                                         ; $688b: $14
    inc e                                         ; $688c: $1c
    ld a, [de]                                    ; $688d: $1a
    ld e, $16                                     ; $688e: $1e $16
    ld e, $0e                                     ; $6890: $1e $0e
    ld e, $02                                     ; $6892: $1e $02
    inc e                                         ; $6894: $1c
    stop                                          ; $6895: $10 $00
    rst $38                                       ; $6897: $ff
    dec c                                         ; $6898: $0d
    inc b                                         ; $6899: $04
    db $fc                                        ; $689a: $fc
    inc b                                         ; $689b: $04
    rst $30                                       ; $689c: $f7
    cp $eb                                        ; $689d: $fe $eb
    ld a, [$ffeb]                                 ; $689f: $fa $eb $ff
    ei                                            ; $68a2: $fb
    ld a, [$fffb]                                 ; $68a3: $fa $fb $ff
    ld [bc], a                                    ; $68a6: $02
    ld [bc], a                                    ; $68a7: $02
    ld [bc], a                                    ; $68a8: $02
    rrca                                          ; $68a9: $0f
    ld [bc], a                                    ; $68aa: $02
    rra                                           ; $68ab: $1f
    add d                                         ; $68ac: $82
    ccf                                           ; $68ad: $3f
    cpl                                           ; $68ae: $2f
    ld b, $3f                                     ; $68af: $06 $3f
    add h                                         ; $68b1: $84
    dec a                                         ; $68b2: $3d
    ccf                                           ; $68b3: $3f
    ld a, [de]                                    ; $68b4: $1a
    rra                                           ; $68b5: $1f

jr_0e2_68b6:
    ld [bc], a                                    ; $68b6: $02
    rrca                                          ; $68b7: $0f
    ld [bc], a                                    ; $68b8: $02
    rra                                           ; $68b9: $1f
    ld [bc], a                                    ; $68ba: $02
    ld a, a                                       ; $68bb: $7f
    adc b                                         ; $68bc: $88
    ld e, a                                       ; $68bd: $5f
    ld a, a                                       ; $68be: $7f
    ld e, a                                       ; $68bf: $5f
    ld a, a                                       ; $68c0: $7f
    sbc a                                         ; $68c1: $9f
    rst $38                                       ; $68c2: $ff
    sbc a                                         ; $68c3: $9f
    rst $38                                       ; $68c4: $ff
    ld [bc], a                                    ; $68c5: $02
    db $10                                        ; $68c6: $10
    ld [bc], a                                    ; $68c7: $02
    inc e                                         ; $68c8: $1c
    ld [bc], a                                    ; $68c9: $02
    jr jr_0e2_684e                                ; $68ca: $18 $82

    inc e                                         ; $68cc: $1c
    inc d                                         ; $68cd: $14
    ld [$021c], sp                                ; $68ce: $08 $1c $02
    jr jr_0e2_68d5                                ; $68d1: $18 $02

    db $10                                        ; $68d3: $10
    ld [bc], a                                    ; $68d4: $02

jr_0e2_68d5:
    jr jr_0e2_6865                                ; $68d5: $18 $8e

    inc d                                         ; $68d7: $14
    inc e                                         ; $68d8: $1c
    ld a, [de]                                    ; $68d9: $1a
    ld e, $1a                                     ; $68da: $1e $1a
    ld e, $0a                                     ; $68dc: $1e $0a
    ld e, $09                                     ; $68de: $1e $09
    rra                                           ; $68e0: $1f
    cp a                                          ; $68e1: $bf
    rst $38                                       ; $68e2: $ff
    cp a                                          ; $68e3: $bf
    rst $38                                       ; $68e4: $ff
    ld [bc], a                                    ; $68e5: $02
    ld a, a                                       ; $68e6: $7f
    add c                                         ; $68e7: $81
    ld a, e                                       ; $68e8: $7b
    inc bc                                        ; $68e9: $03
    ld a, a                                       ; $68ea: $7f
    ld [bc], a                                    ; $68eb: $02
    ccf                                           ; $68ec: $3f
    ld [bc], a                                    ; $68ed: $02
    rrca                                          ; $68ee: $0f
    ld [de], a                                    ; $68ef: $12
    nop                                           ; $68f0: $00
    add a                                         ; $68f1: $87
    add hl, de                                    ; $68f2: $19
    rra                                           ; $68f3: $1f
    dec c                                         ; $68f4: $0d
    rra                                           ; $68f5: $1f
    ld d, $1e                                     ; $68f6: $16 $1e
    inc d                                         ; $68f8: $14
    dec b                                         ; $68f9: $05
    inc e                                         ; $68fa: $1c
    ld [bc], a                                    ; $68fb: $02
    jr jr_0e2_6910                                ; $68fc: $18 $12

    nop                                           ; $68fe: $00
    rst $38                                       ; $68ff: $ff
    dec c                                         ; $6900: $0d
    inc b                                         ; $6901: $04
    db $fc                                        ; $6902: $fc
    inc b                                         ; $6903: $04
    rst $30                                       ; $6904: $f7
    cp $ea                                        ; $6905: $fe $ea
    ld a, [$ffea]                                 ; $6907: $fa $ea $ff
    ld a, [$fafa]                                 ; $690a: $fa $fa $fa
    rst $38                                       ; $690d: $ff
    ld [bc], a                                    ; $690e: $02
    ld [bc], a                                    ; $690f: $02

jr_0e2_6910:
    ld [bc], a                                    ; $6910: $02
    rrca                                          ; $6911: $0f
    ld [bc], a                                    ; $6912: $02
    rra                                           ; $6913: $1f
    add d                                         ; $6914: $82
    ccf                                           ; $6915: $3f
    cpl                                           ; $6916: $2f
    ld b, $3f                                     ; $6917: $06 $3f
    add h                                         ; $6919: $84
    dec a                                         ; $691a: $3d
    ccf                                           ; $691b: $3f
    ld a, [de]                                    ; $691c: $1a
    rra                                           ; $691d: $1f
    ld [bc], a                                    ; $691e: $02
    rrca                                          ; $691f: $0f
    ld [bc], a                                    ; $6920: $02
    rra                                           ; $6921: $1f

jr_0e2_6922:
    adc d                                         ; $6922: $8a
    ld l, a                                       ; $6923: $6f
    ld a, a                                       ; $6924: $7f
    ld e, a                                       ; $6925: $5f
    ld a, a                                       ; $6926: $7f
    ld e, a                                       ; $6927: $5f
    ld a, a                                       ; $6928: $7f
    sbc a                                         ; $6929: $9f
    rst $38                                       ; $692a: $ff
    sbc a                                         ; $692b: $9f
    rst $38                                       ; $692c: $ff
    ld [bc], a                                    ; $692d: $02
    db $10                                        ; $692e: $10
    ld [bc], a                                    ; $692f: $02
    inc e                                         ; $6930: $1c
    ld [bc], a                                    ; $6931: $02
    jr jr_0e2_68b6                                ; $6932: $18 $82

    inc e                                         ; $6934: $1c
    inc d                                         ; $6935: $14
    ld [$021c], sp                                ; $6936: $08 $1c $02

jr_0e2_6939:
    jr jr_0e2_693d                                ; $6939: $18 $02

    db $10                                        ; $693b: $10
    ld [bc], a                                    ; $693c: $02

jr_0e2_693d:
    jr @-$72                                      ; $693d: $18 $8c

    inc d                                         ; $693f: $14
    inc e                                         ; $6940: $1c
    ld a, [de]                                    ; $6941: $1a
    ld e, $1a                                     ; $6942: $1e $1a
    ld e, $09                                     ; $6944: $1e $09
    rra                                           ; $6946: $1f
    add hl, bc                                    ; $6947: $09
    rra                                           ; $6948: $1f
    cp a                                          ; $6949: $bf
    rst $38                                       ; $694a: $ff
    ld [bc], a                                    ; $694b: $02
    ld a, a                                       ; $694c: $7f
    ld [bc], a                                    ; $694d: $02
    ccf                                           ; $694e: $3f
    add e                                         ; $694f: $83
    dec sp                                        ; $6950: $3b
    ccf                                           ; $6951: $3f
    ld a, e                                       ; $6952: $7b
    inc bc                                        ; $6953: $03
    ld a, a                                       ; $6954: $7f
    add d                                         ; $6955: $82
    ld [hl], e                                    ; $6956: $73
    ld a, a                                       ; $6957: $7f
    ld [bc], a                                    ; $6958: $02
    ccf                                           ; $6959: $3f
    stop                                          ; $695a: $10 $00
    adc b                                         ; $695c: $88
    dec e                                         ; $695d: $1d
    rra                                           ; $695e: $1f
    dec c                                         ; $695f: $0d
    rra                                           ; $6960: $1f
    dec e                                         ; $6961: $1d
    rra                                           ; $6962: $1f
    ld d, $1e                                     ; $6963: $16 $1e
    ld b, $1c                                     ; $6965: $06 $1c
    ld [bc], a                                    ; $6967: $02
    db $10                                        ; $6968: $10
    stop                                          ; $6969: $10 $00
    rst $38                                       ; $696b: $ff
    dec c                                         ; $696c: $0d
    inc b                                         ; $696d: $04
    db $fc                                        ; $696e: $fc
    inc b                                         ; $696f: $04
    rst $30                                       ; $6970: $f7
    cp $eb                                        ; $6971: $fe $eb
    ld a, [$ffeb]                                 ; $6973: $fa $eb $ff
    ei                                            ; $6976: $fb
    ld a, [$fffb]                                 ; $6977: $fa $fb $ff
    ld [bc], a                                    ; $697a: $02
    ld [bc], a                                    ; $697b: $02
    ld [bc], a                                    ; $697c: $02
    rrca                                          ; $697d: $0f
    ld [bc], a                                    ; $697e: $02
    rra                                           ; $697f: $1f
    add d                                         ; $6980: $82
    ccf                                           ; $6981: $3f
    cpl                                           ; $6982: $2f
    ld b, $3f                                     ; $6983: $06 $3f
    add h                                         ; $6985: $84
    dec a                                         ; $6986: $3d
    ccf                                           ; $6987: $3f
    ld a, [de]                                    ; $6988: $1a
    rra                                           ; $6989: $1f
    ld [bc], a                                    ; $698a: $02
    rrca                                          ; $698b: $0f
    ld [bc], a                                    ; $698c: $02
    rra                                           ; $698d: $1f
    ld [bc], a                                    ; $698e: $02
    ccf                                           ; $698f: $3f
    adc b                                         ; $6990: $88
    ld e, a                                       ; $6991: $5f
    ld a, a                                       ; $6992: $7f
    ld e, a                                       ; $6993: $5f
    ld a, a                                       ; $6994: $7f
    ld e, a                                       ; $6995: $5f
    ld a, a                                       ; $6996: $7f
    sbc a                                         ; $6997: $9f
    rst $38                                       ; $6998: $ff
    ld [bc], a                                    ; $6999: $02
    db $10                                        ; $699a: $10
    ld [bc], a                                    ; $699b: $02
    inc e                                         ; $699c: $1c
    ld [bc], a                                    ; $699d: $02
    jr jr_0e2_6922                                ; $699e: $18 $82

    inc e                                         ; $69a0: $1c
    inc d                                         ; $69a1: $14
    ld [$021c], sp                                ; $69a2: $08 $1c $02
    jr jr_0e2_69a9                                ; $69a5: $18 $02

    db $10                                        ; $69a7: $10
    ld [bc], a                                    ; $69a8: $02

jr_0e2_69a9:
    jr jr_0e2_6939                                ; $69a9: $18 $8e

    ld d, $1e                                     ; $69ab: $16 $1e

jr_0e2_69ad:
    ld a, [de]                                    ; $69ad: $1a
    ld e, $1a                                     ; $69ae: $1e $1a
    ld e, $09                                     ; $69b0: $1e $09
    rra                                           ; $69b2: $1f
    add hl, bc                                    ; $69b3: $09
    rra                                           ; $69b4: $1f
    sbc a                                         ; $69b5: $9f
    rst $38                                       ; $69b6: $ff
    cp a                                          ; $69b7: $bf
    rst $38                                       ; $69b8: $ff
    ld [bc], a                                    ; $69b9: $02
    ld a, a                                       ; $69ba: $7f
    ld b, $3f                                     ; $69bb: $06 $3f
    ld [bc], a                                    ; $69bd: $02
    rra                                           ; $69be: $1f
    ld [de], a                                    ; $69bf: $12
    nop                                           ; $69c0: $00
    add a                                         ; $69c1: $87
    dec e                                         ; $69c2: $1d
    rra                                           ; $69c3: $1f
    dec c                                         ; $69c4: $0d
    rra                                           ; $69c5: $1f
    ld d, $1e                                     ; $69c6: $16 $1e
    ld a, [de]                                    ; $69c8: $1a
    inc bc                                        ; $69c9: $03
    ld e, $02                                     ; $69ca: $1e $02
    inc e                                         ; $69cc: $1c
    ld [bc], a                                    ; $69cd: $02
    db $10                                        ; $69ce: $10
    ld [de], a                                    ; $69cf: $12
    nop                                           ; $69d0: $00
    rst $38                                       ; $69d1: $ff
    dec c                                         ; $69d2: $0d
    inc b                                         ; $69d3: $04
    db $fc                                        ; $69d4: $fc
    inc b                                         ; $69d5: $04
    rst $30                                       ; $69d6: $f7
    cp $ea                                        ; $69d7: $fe $ea
    ld a, [$ffeb]                                 ; $69d9: $fa $eb $ff
    ld a, [$fafa]                                 ; $69dc: $fa $fa $fa
    rst $38                                       ; $69df: $ff
    ld [bc], a                                    ; $69e0: $02
    inc d                                         ; $69e1: $14
    ld [bc], a                                    ; $69e2: $02
    cpl                                           ; $69e3: $2f
    ld [bc], a                                    ; $69e4: $02
    rra                                           ; $69e5: $1f
    adc [hl]                                      ; $69e6: $8e
    ccf                                           ; $69e7: $3f
    jr c, jr_0e2_6a29                             ; $69e8: $38 $3f

    jr nc, jr_0e2_6a2b                            ; $69ea: $30 $3f

    dec l                                         ; $69ec: $2d
    ccf                                           ; $69ed: $3f
    jr nz, jr_0e2_6a2f                            ; $69ee: $20 $3f

    inc [hl]                                      ; $69f0: $34
    rra                                           ; $69f1: $1f
    inc de                                        ; $69f2: $13
    rrca                                          ; $69f3: $0f
    ld [$1f02], sp                                ; $69f4: $08 $02 $1f
    adc d                                         ; $69f7: $8a
    ld a, [hl+]                                   ; $69f8: $2a
    ccf                                           ; $69f9: $3f
    ld e, l                                       ; $69fa: $5d
    ld a, a                                       ; $69fb: $7f
    ld e, d                                       ; $69fc: $5a
    ld a, a                                       ; $69fd: $7f
    ld e, l                                       ; $69fe: $5d
    ld a, a                                       ; $69ff: $7f
    cp l                                          ; $6a00: $bd
    rst $38                                       ; $6a01: $ff
    ld [bc], a                                    ; $6a02: $02
    db $10                                        ; $6a03: $10
    ld [bc], a                                    ; $6a04: $02
    jr jr_0e2_6a0a                                ; $6a05: $18 $03

    inc e                                         ; $6a07: $1c
    adc c                                         ; $6a08: $89
    inc c                                         ; $6a09: $0c

jr_0e2_6a0a:
    inc e                                         ; $6a0a: $1c
    inc d                                         ; $6a0b: $14
    inc e                                         ; $6a0c: $1c
    inc b                                         ; $6a0d: $04
    inc e                                         ; $6a0e: $1c
    inc c                                         ; $6a0f: $0c
    jr jr_0e2_6a1a                                ; $6a10: $18 $08

    ld [bc], a                                    ; $6a12: $02
    db $10                                        ; $6a13: $10
    ld [bc], a                                    ; $6a14: $02
    jr jr_0e2_69ad                                ; $6a15: $18 $96

    inc d                                         ; $6a17: $14
    inc e                                         ; $6a18: $1c
    ld a, [de]                                    ; $6a19: $1a

jr_0e2_6a1a:
    ld e, $1a                                     ; $6a1a: $1e $1a
    ld e, $1a                                     ; $6a1c: $1e $1a
    ld e, $1d                                     ; $6a1e: $1e $1d
    rra                                           ; $6a20: $1f
    ld e, e                                       ; $6a21: $5b

jr_0e2_6a22:
    rst $38                                       ; $6a22: $ff
    ret c                                         ; $6a23: $d8

    ld hl, sp-$06                                 ; $6a24: $f8 $fa
    cp a                                          ; $6a26: $bf
    ld a, d                                       ; $6a27: $7a
    ld e, a                                       ; $6a28: $5f

jr_0e2_6a29:
    ld a, [hl-]                                   ; $6a29: $3a
    cpl                                           ; $6a2a: $2f

jr_0e2_6a2b:
    ld [hl], a                                    ; $6a2b: $77
    ld a, a                                       ; $6a2c: $7f
    ld [bc], a                                    ; $6a2d: $02
    ccf                                           ; $6a2e: $3f

jr_0e2_6a2f:
    add d                                         ; $6a2f: $82
    dec d                                         ; $6a30: $15
    dec e                                         ; $6a31: $1d
    ld [bc], a                                    ; $6a32: $02
    jr @+$14                                      ; $6a33: $18 $12

    nop                                           ; $6a35: $00
    add d                                         ; $6a36: $82
    rra                                           ; $6a37: $1f
    dec e                                         ; $6a38: $1d
    ld [bc], a                                    ; $6a39: $02
    ld a, [de]                                    ; $6a3a: $1a
    ld [bc], a                                    ; $6a3b: $02
    inc e                                         ; $6a3c: $1c
    add d                                         ; $6a3d: $82
    ld a, [bc]                                    ; $6a3e: $0a
    ld e, $02                                     ; $6a3f: $1e $02
    inc e                                         ; $6a41: $1c
    add c                                         ; $6a42: $81
    ld [$1803], sp                                ; $6a43: $08 $03 $18
    stop                                          ; $6a46: $10 $00
    rst $38                                       ; $6a48: $ff
    dec c                                         ; $6a49: $0d
    inc b                                         ; $6a4a: $04
    db $fc                                        ; $6a4b: $fc
    inc b                                         ; $6a4c: $04
    rst $30                                       ; $6a4d: $f7
    cp $ea                                        ; $6a4e: $fe $ea
    ld a, [$ffeb]                                 ; $6a50: $fa $eb $ff
    ld a, [$fafa]                                 ; $6a53: $fa $fa $fa
    cp $02                                        ; $6a56: $fe $02
    inc d                                         ; $6a58: $14
    ld [bc], a                                    ; $6a59: $02
    cpl                                           ; $6a5a: $2f
    ld [bc], a                                    ; $6a5b: $02
    rra                                           ; $6a5c: $1f
    adc [hl]                                      ; $6a5d: $8e
    ccf                                           ; $6a5e: $3f
    jr c, jr_0e2_6aa0                             ; $6a5f: $38 $3f

    jr nc, jr_0e2_6aa2                            ; $6a61: $30 $3f

    dec l                                         ; $6a63: $2d
    ccf                                           ; $6a64: $3f
    jr nz, jr_0e2_6aa6                            ; $6a65: $20 $3f

    inc [hl]                                      ; $6a67: $34
    rra                                           ; $6a68: $1f
    inc de                                        ; $6a69: $13
    rrca                                          ; $6a6a: $0f
    ld [$1f02], sp                                ; $6a6b: $08 $02 $1f
    adc d                                         ; $6a6e: $8a
    ld a, [hl-]                                   ; $6a6f: $3a
    ccf                                           ; $6a70: $3f
    ld e, l                                       ; $6a71: $5d
    ld a, a                                       ; $6a72: $7f
    ld e, d                                       ; $6a73: $5a
    ld a, a                                       ; $6a74: $7f
    ld a, l                                       ; $6a75: $7d
    ld a, a                                       ; $6a76: $7f
    sbc l                                         ; $6a77: $9d
    rst $38                                       ; $6a78: $ff
    ld [bc], a                                    ; $6a79: $02
    db $10                                        ; $6a7a: $10
    ld [bc], a                                    ; $6a7b: $02
    jr jr_0e2_6a81                                ; $6a7c: $18 $03

    inc e                                         ; $6a7e: $1c
    adc c                                         ; $6a7f: $89
    inc c                                         ; $6a80: $0c

jr_0e2_6a81:
    inc e                                         ; $6a81: $1c
    inc d                                         ; $6a82: $14
    inc e                                         ; $6a83: $1c
    inc b                                         ; $6a84: $04
    inc e                                         ; $6a85: $1c
    inc c                                         ; $6a86: $0c
    jr jr_0e2_6a91                                ; $6a87: $18 $08

    ld [bc], a                                    ; $6a89: $02
    db $10                                        ; $6a8a: $10
    ld [bc], a                                    ; $6a8b: $02
    jr jr_0e2_6a22                                ; $6a8c: $18 $94

    inc d                                         ; $6a8e: $14
    inc e                                         ; $6a8f: $1c
    ld a, [de]                                    ; $6a90: $1a

jr_0e2_6a91:
    ld e, $1a                                     ; $6a91: $1e $1a
    ld e, $1d                                     ; $6a93: $1e $1d
    rra                                           ; $6a95: $1f
    add hl, de                                    ; $6a96: $19
    rra                                           ; $6a97: $1f
    ccf                                           ; $6a98: $3f
    db $fd                                        ; $6a99: $fd
    cp b                                          ; $6a9a: $b8
    ret c                                         ; $6a9b: $d8

    ld a, [$76c7]                                 ; $6a9c: $fa $c7 $76
    ld a, a                                       ; $6a9f: $7f

jr_0e2_6aa0:
    scf                                           ; $6aa0: $37
    ccf                                           ; $6aa1: $3f

jr_0e2_6aa2:
    ld [bc], a                                    ; $6aa2: $02
    ld a, a                                       ; $6aa3: $7f
    ld [bc], a                                    ; $6aa4: $02
    ccf                                           ; $6aa5: $3f

jr_0e2_6aa6:
    ld [bc], a                                    ; $6aa6: $02
    dec de                                        ; $6aa7: $1b
    ld [bc], a                                    ; $6aa8: $02
    ld bc, $0012                                  ; $6aa9: $01 $12 $00
    ld [bc], a                                    ; $6aac: $02
    dec c                                         ; $6aad: $0d
    ld [bc], a                                    ; $6aae: $02
    inc c                                         ; $6aaf: $0c
    add d                                         ; $6ab0: $82
    inc b                                         ; $6ab1: $04
    inc c                                         ; $6ab2: $0c
    ld [bc], a                                    ; $6ab3: $02
    ld c, $82                                     ; $6ab4: $0e $82
    ld b, $0e                                     ; $6ab6: $06 $0e
    ld [bc], a                                    ; $6ab8: $02
    inc c                                         ; $6ab9: $0c
    ld [bc], a                                    ; $6aba: $02
    ld [$0010], sp                                ; $6abb: $08 $10 $00
    rst $38                                       ; $6abe: $ff
    dec c                                         ; $6abf: $0d
    inc b                                         ; $6ac0: $04
    db $fc                                        ; $6ac1: $fc
    inc b                                         ; $6ac2: $04
    rst $30                                       ; $6ac3: $f7
    cp $eb                                        ; $6ac4: $fe $eb
    ld a, [$ffec]                                 ; $6ac6: $fa $ec $ff
    ei                                            ; $6ac9: $fb
    ld a, [$fffb]                                 ; $6aca: $fa $fb $ff
    ld [bc], a                                    ; $6acd: $02
    inc d                                         ; $6ace: $14
    ld [bc], a                                    ; $6acf: $02
    cpl                                           ; $6ad0: $2f
    ld [bc], a                                    ; $6ad1: $02
    rra                                           ; $6ad2: $1f
    adc [hl]                                      ; $6ad3: $8e
    ccf                                           ; $6ad4: $3f
    jr c, jr_0e2_6b16                             ; $6ad5: $38 $3f

    jr nc, jr_0e2_6b18                            ; $6ad7: $30 $3f

    dec l                                         ; $6ad9: $2d
    ccf                                           ; $6ada: $3f
    jr nz, jr_0e2_6b1c                            ; $6adb: $20 $3f

    inc [hl]                                      ; $6add: $34
    rra                                           ; $6ade: $1f
    inc de                                        ; $6adf: $13
    rrca                                          ; $6ae0: $0f
    ld [$1f02], sp                                ; $6ae1: $08 $02 $1f
    adc d                                         ; $6ae4: $8a
    ld a, [hl+]                                   ; $6ae5: $2a
    ccf                                           ; $6ae6: $3f
    ld e, l                                       ; $6ae7: $5d
    ld a, a                                       ; $6ae8: $7f
    ld e, d                                       ; $6ae9: $5a
    ld a, a                                       ; $6aea: $7f
    sbc l                                         ; $6aeb: $9d
    rst $38                                       ; $6aec: $ff
    cp l                                          ; $6aed: $bd
    rst $38                                       ; $6aee: $ff
    ld [bc], a                                    ; $6aef: $02
    db $10                                        ; $6af0: $10
    ld [bc], a                                    ; $6af1: $02
    jr jr_0e2_6af7                                ; $6af2: $18 $03

    inc e                                         ; $6af4: $1c
    adc c                                         ; $6af5: $89
    inc c                                         ; $6af6: $0c

jr_0e2_6af7:
    inc e                                         ; $6af7: $1c
    inc d                                         ; $6af8: $14
    inc e                                         ; $6af9: $1c
    inc b                                         ; $6afa: $04
    inc e                                         ; $6afb: $1c
    inc c                                         ; $6afc: $0c
    jr jr_0e2_6b07                                ; $6afd: $18 $08

    ld [bc], a                                    ; $6aff: $02
    db $10                                        ; $6b00: $10
    ld [bc], a                                    ; $6b01: $02
    jr jr_0e2_6b06                                ; $6b02: $18 $02

    inc e                                         ; $6b04: $1c
    sub h                                         ; $6b05: $94

jr_0e2_6b06:
    ld a, [de]                                    ; $6b06: $1a

jr_0e2_6b07:
    ld e, $1a                                     ; $6b07: $1e $1a
    ld e, $19                                     ; $6b09: $1e $19
    rra                                           ; $6b0b: $1f
    dec e                                         ; $6b0c: $1d
    rra                                           ; $6b0d: $1f
    cp e                                          ; $6b0e: $bb
    rst $38                                       ; $6b0f: $ff
    ret c                                         ; $6b10: $d8

    ld hl, sp-$04                                 ; $6b11: $f8 $fc
    cp a                                          ; $6b13: $bf
    ld a, d                                       ; $6b14: $7a
    ld e, a                                       ; $6b15: $5f

jr_0e2_6b16:
    ld [hl], e                                    ; $6b16: $73
    ld l, a                                       ; $6b17: $6f

jr_0e2_6b18:
    scf                                           ; $6b18: $37
    ccf                                           ; $6b19: $3f
    ld [bc], a                                    ; $6b1a: $02
    dec e                                         ; $6b1b: $1d

jr_0e2_6b1c:
    ld d, $00                                     ; $6b1c: $16 $00
    add d                                         ; $6b1e: $82
    rra                                           ; $6b1f: $1f
    dec e                                         ; $6b20: $1d
    ld [bc], a                                    ; $6b21: $02
    ld a, [de]                                    ; $6b22: $1a
    add d                                         ; $6b23: $82
    ld c, $1e                                     ; $6b24: $0e $1e
    ld [bc], a                                    ; $6b26: $02
    inc e                                         ; $6b27: $1c
    add d                                         ; $6b28: $82
    ld [$0218], sp                                ; $6b29: $08 $18 $02
    db $10                                        ; $6b2c: $10
    ld [de], a                                    ; $6b2d: $12
    nop                                           ; $6b2e: $00
    rst $38                                       ; $6b2f: $ff
    dec c                                         ; $6b30: $0d
    inc b                                         ; $6b31: $04
    db $fc                                        ; $6b32: $fc
    inc b                                         ; $6b33: $04
    rst $30                                       ; $6b34: $f7
    cp $ea                                        ; $6b35: $fe $ea
    ld a, [$ffeb]                                 ; $6b37: $fa $eb $ff
    ld a, [$fafa]                                 ; $6b3a: $fa $fa $fa
    rst $38                                       ; $6b3d: $ff
    ld [bc], a                                    ; $6b3e: $02
    inc d                                         ; $6b3f: $14
    ld [bc], a                                    ; $6b40: $02
    cpl                                           ; $6b41: $2f
    ld [bc], a                                    ; $6b42: $02
    rra                                           ; $6b43: $1f
    adc [hl]                                      ; $6b44: $8e
    ccf                                           ; $6b45: $3f
    jr c, jr_0e2_6b87                             ; $6b46: $38 $3f

    jr nc, jr_0e2_6b89                            ; $6b48: $30 $3f

    dec l                                         ; $6b4a: $2d
    ccf                                           ; $6b4b: $3f
    jr nz, jr_0e2_6b8d                            ; $6b4c: $20 $3f

    inc [hl]                                      ; $6b4e: $34
    rra                                           ; $6b4f: $1f
    inc de                                        ; $6b50: $13
    rrca                                          ; $6b51: $0f
    ld [$1f02], sp                                ; $6b52: $08 $02 $1f
    adc d                                         ; $6b55: $8a
    ld a, [hl+]                                   ; $6b56: $2a
    ccf                                           ; $6b57: $3f
    ld e, l                                       ; $6b58: $5d
    ld a, a                                       ; $6b59: $7f
    ld e, d                                       ; $6b5a: $5a
    ld a, a                                       ; $6b5b: $7f
    cp l                                          ; $6b5c: $bd
    rst $38                                       ; $6b5d: $ff
    sbc l                                         ; $6b5e: $9d
    rst $38                                       ; $6b5f: $ff
    ld [bc], a                                    ; $6b60: $02
    db $10                                        ; $6b61: $10
    ld [bc], a                                    ; $6b62: $02
    jr jr_0e2_6b68                                ; $6b63: $18 $03

    inc e                                         ; $6b65: $1c
    adc c                                         ; $6b66: $89
    inc c                                         ; $6b67: $0c

jr_0e2_6b68:
    inc e                                         ; $6b68: $1c
    inc d                                         ; $6b69: $14
    inc e                                         ; $6b6a: $1c
    inc b                                         ; $6b6b: $04
    inc e                                         ; $6b6c: $1c
    inc c                                         ; $6b6d: $0c
    jr jr_0e2_6b78                                ; $6b6e: $18 $08

    ld [bc], a                                    ; $6b70: $02
    db $10                                        ; $6b71: $10
    ld [bc], a                                    ; $6b72: $02
    jr jr_0e2_6b77                                ; $6b73: $18 $02

    inc e                                         ; $6b75: $1c
    add e                                         ; $6b76: $83

jr_0e2_6b77:
    ld a, [de]                                    ; $6b77: $1a

jr_0e2_6b78:
    ld e, $1a                                     ; $6b78: $1e $1a
    inc bc                                        ; $6b7a: $03
    ld e, $84                                     ; $6b7b: $1e $84
    add hl, de                                    ; $6b7d: $19

jr_0e2_6b7e:
    rra                                           ; $6b7e: $1f
    sbc l                                         ; $6b7f: $9d
    ei                                            ; $6b80: $fb
    ld [bc], a                                    ; $6b81: $02
    ld hl, sp-$7a                                 ; $6b82: $f8 $86
    ld a, [$fbbf]                                 ; $6b84: $fa $bf $fb

jr_0e2_6b87:
    cp a                                          ; $6b87: $bf
    ld d, a                                       ; $6b88: $57

jr_0e2_6b89:
    ld e, a                                       ; $6b89: $5f
    ld [bc], a                                    ; $6b8a: $02
    ccf                                           ; $6b8b: $3f
    add d                                         ; $6b8c: $82

jr_0e2_6b8d:
    scf                                           ; $6b8d: $37
    ccf                                           ; $6b8e: $3f
    ld [bc], a                                    ; $6b8f: $02
    ld e, $02                                     ; $6b90: $1e $02
    inc c                                         ; $6b92: $0c
    ld [de], a                                    ; $6b93: $12
    nop                                           ; $6b94: $00
    add [hl]                                      ; $6b95: $86
    rra                                           ; $6b96: $1f
    dec de                                        ; $6b97: $1b
    ld c, $1e                                     ; $6b98: $0e $1e
    inc c                                         ; $6b9a: $0c
    inc e                                         ; $6b9b: $1c
    ld [bc], a                                    ; $6b9c: $02
    ld e, $02                                     ; $6b9d: $1e $02
    inc e                                         ; $6b9f: $1c
    ld [bc], a                                    ; $6ba0: $02
    jr jr_0e2_6bb5                                ; $6ba1: $18 $12

    nop                                           ; $6ba3: $00
    rst $38                                       ; $6ba4: $ff
    dec c                                         ; $6ba5: $0d
    inc b                                         ; $6ba6: $04
    db $fc                                        ; $6ba7: $fc
    inc b                                         ; $6ba8: $04
    rst $30                                       ; $6ba9: $f7
    cp $eb                                        ; $6baa: $fe $eb
    ld a, [$ffec]                                 ; $6bac: $fa $ec $ff
    ei                                            ; $6baf: $fb
    ld a, [$fffb]                                 ; $6bb0: $fa $fb $ff
    ld [bc], a                                    ; $6bb3: $02
    inc d                                         ; $6bb4: $14

jr_0e2_6bb5:
    ld [bc], a                                    ; $6bb5: $02
    cpl                                           ; $6bb6: $2f
    ld [bc], a                                    ; $6bb7: $02
    rra                                           ; $6bb8: $1f
    adc [hl]                                      ; $6bb9: $8e
    ccf                                           ; $6bba: $3f
    jr c, jr_0e2_6bfc                             ; $6bbb: $38 $3f

    jr nc, jr_0e2_6bfe                            ; $6bbd: $30 $3f

    dec l                                         ; $6bbf: $2d
    ccf                                           ; $6bc0: $3f
    jr nz, jr_0e2_6c02                            ; $6bc1: $20 $3f

    inc [hl]                                      ; $6bc3: $34
    rra                                           ; $6bc4: $1f
    inc de                                        ; $6bc5: $13
    rrca                                          ; $6bc6: $0f
    ld [$1f02], sp                                ; $6bc7: $08 $02 $1f
    adc d                                         ; $6bca: $8a
    ld a, [hl-]                                   ; $6bcb: $3a
    ccf                                           ; $6bcc: $3f
    ld e, l                                       ; $6bcd: $5d
    ld a, a                                       ; $6bce: $7f
    ld e, d                                       ; $6bcf: $5a
    ld a, a                                       ; $6bd0: $7f
    sbc l                                         ; $6bd1: $9d
    rst $38                                       ; $6bd2: $ff
    cp l                                          ; $6bd3: $bd
    rst $38                                       ; $6bd4: $ff
    ld [bc], a                                    ; $6bd5: $02
    db $10                                        ; $6bd6: $10
    ld [bc], a                                    ; $6bd7: $02
    jr jr_0e2_6bdd                                ; $6bd8: $18 $03

    inc e                                         ; $6bda: $1c
    adc c                                         ; $6bdb: $89
    inc c                                         ; $6bdc: $0c

jr_0e2_6bdd:
    inc e                                         ; $6bdd: $1c
    inc d                                         ; $6bde: $14
    inc e                                         ; $6bdf: $1c
    inc b                                         ; $6be0: $04
    inc e                                         ; $6be1: $1c
    inc c                                         ; $6be2: $0c
    jr jr_0e2_6bed                                ; $6be3: $18 $08

    ld [bc], a                                    ; $6be5: $02
    db $10                                        ; $6be6: $10
    ld [bc], a                                    ; $6be7: $02
    jr jr_0e2_6b7e                                ; $6be8: $18 $94

    inc d                                         ; $6bea: $14
    inc e                                         ; $6beb: $1c
    ld a, [de]                                    ; $6bec: $1a

jr_0e2_6bed:
    ld e, $1a                                     ; $6bed: $1e $1a
    ld e, $19                                     ; $6bef: $1e $19
    rra                                           ; $6bf1: $1f
    dec e                                         ; $6bf2: $1d
    rra                                           ; $6bf3: $1f
    cp e                                          ; $6bf4: $bb
    rst $38                                       ; $6bf5: $ff
    ret c                                         ; $6bf6: $d8

    ld hl, sp-$07                                 ; $6bf7: $f8 $f9
    cp a                                          ; $6bf9: $bf
    ld a, d                                       ; $6bfa: $7a
    ld e, a                                       ; $6bfb: $5f

jr_0e2_6bfc:
    halt                                          ; $6bfc: $76
    ld l, a                                       ; $6bfd: $6f

jr_0e2_6bfe:
    ld [bc], a                                    ; $6bfe: $02
    ccf                                           ; $6bff: $3f
    add d                                         ; $6c00: $82
    dec d                                         ; $6c01: $15

jr_0e2_6c02:
    dec e                                         ; $6c02: $1d
    ld [bc], a                                    ; $6c03: $02
    ld [$0014], sp                                ; $6c04: $08 $14 $00
    add d                                         ; $6c07: $82
    rra                                           ; $6c08: $1f
    dec e                                         ; $6c09: $1d
    ld [bc], a                                    ; $6c0a: $02
    ld a, [de]                                    ; $6c0b: $1a
    add h                                         ; $6c0c: $84
    ld c, $1e                                     ; $6c0d: $0e $1e
    inc c                                         ; $6c0f: $0c
    inc e                                         ; $6c10: $1c
    ld [bc], a                                    ; $6c11: $02
    jr jr_0e2_6c28                                ; $6c12: $18 $14

    nop                                           ; $6c14: $00
    rst $38                                       ; $6c15: $ff
    dec c                                         ; $6c16: $0d
    inc b                                         ; $6c17: $04
    db $fc                                        ; $6c18: $fc
    inc b                                         ; $6c19: $04
    rst $30                                       ; $6c1a: $f7
    cp $ea                                        ; $6c1b: $fe $ea
    ld a, [$feea]                                 ; $6c1d: $fa $ea $fe
    ld a, [$fafb]                                 ; $6c20: $fa $fb $fa
    db $fd                                        ; $6c23: $fd
    ld [bc], a                                    ; $6c24: $02
    ld bc, $0f02                                  ; $6c25: $01 $02 $0f

jr_0e2_6c28:
    ld [bc], a                                    ; $6c28: $02
    rra                                           ; $6c29: $1f
    adc [hl]                                      ; $6c2a: $8e
    ccf                                           ; $6c2b: $3f
    cpl                                           ; $6c2c: $2f
    ccf                                           ; $6c2d: $3f
    ld a, $3f                                     ; $6c2e: $3e $3f
    dec a                                         ; $6c30: $3d
    ccf                                           ; $6c31: $3f
    inc a                                         ; $6c32: $3c
    rra                                           ; $6c33: $1f
    ld a, [de]                                    ; $6c34: $1a
    cpl                                           ; $6c35: $2f
    inc a                                         ; $6c36: $3c
    ld a, a                                       ; $6c37: $7f
    ld a, [hl]                                    ; $6c38: $7e
    ld [bc], a                                    ; $6c39: $02
    rst $38                                       ; $6c3a: $ff
    adc d                                         ; $6c3b: $8a
    ld a, d                                       ; $6c3c: $7a
    ld a, a                                       ; $6c3d: $7f
    ei                                            ; $6c3e: $fb
    rst $38                                       ; $6c3f: $ff
    ld a, [$f7ff]                                 ; $6c40: $fa $ff $f7
    rst $38                                       ; $6c43: $ff
    ld [hl], e                                    ; $6c44: $73
    ld a, a                                       ; $6c45: $7f
    ld [bc], a                                    ; $6c46: $02
    inc b                                         ; $6c47: $04
    ld [bc], a                                    ; $6c48: $02
    ld a, [bc]                                    ; $6c49: $0a
    ld [bc], a                                    ; $6c4a: $02
    ld c, $8e                                     ; $6c4b: $0e $8e
    inc c                                         ; $6c4d: $0c
    inc b                                         ; $6c4e: $04
    ld c, $02                                     ; $6c4f: $0e $02
    ld c, $0a                                     ; $6c51: $0e $0a
    ld c, $02                                     ; $6c53: $0e $02
    rrca                                          ; $6c55: $0f
    ld bc, $0a0e                                  ; $6c56: $01 $0e $0a
    inc c                                         ; $6c59: $0c
    inc b                                         ; $6c5a: $04
    inc b                                         ; $6c5b: $04
    ld [$0481], sp                                ; $6c5c: $08 $81 $04
    inc bc                                        ; $6c5f: $03
    inc c                                         ; $6c60: $0c
    sub d                                         ; $6c61: $92
    inc b                                         ; $6c62: $04
    inc c                                         ; $6c63: $0c
    inc b                                         ; $6c64: $04
    inc c                                         ; $6c65: $0c
    ld l, $3f                                     ; $6c66: $2e $3f
    ld e, [hl]                                    ; $6c68: $5e
    ld [hl], e                                    ; $6c69: $73
    ld a, a                                       ; $6c6a: $7f
    ld a, h                                       ; $6c6b: $7c
    ld a, $3f                                     ; $6c6c: $3e $3f
    ld a, l                                       ; $6c6e: $7d
    ld a, a                                       ; $6c6f: $7f
    cp e                                          ; $6c70: $bb
    rst $38                                       ; $6c71: $ff
    ld e, h                                       ; $6c72: $5c
    ld a, a                                       ; $6c73: $7f
    ld [bc], a                                    ; $6c74: $02
    ccf                                           ; $6c75: $3f
    stop                                          ; $6c76: $10 $00
    ld c, $02                                     ; $6c78: $0e $02
    ld [bc], a                                    ; $6c7a: $02
    inc bc                                        ; $6c7b: $03
    stop                                          ; $6c7c: $10 $00
    rst $38                                       ; $6c7e: $ff
    dec c                                         ; $6c7f: $0d
    inc b                                         ; $6c80: $04
    db $fc                                        ; $6c81: $fc
    inc b                                         ; $6c82: $04
    rst $30                                       ; $6c83: $f7
    cp $ea                                        ; $6c84: $fe $ea
    ld a, [$feea]                                 ; $6c86: $fa $ea $fe
    ld a, [$fafb]                                 ; $6c89: $fa $fb $fa
    cp $02                                        ; $6c8c: $fe $02
    ld bc, $0f02                                  ; $6c8e: $01 $02 $0f
    ld [bc], a                                    ; $6c91: $02
    rra                                           ; $6c92: $1f
    adc [hl]                                      ; $6c93: $8e
    ccf                                           ; $6c94: $3f
    cpl                                           ; $6c95: $2f
    ccf                                           ; $6c96: $3f
    ld a, $3f                                     ; $6c97: $3e $3f
    dec a                                         ; $6c99: $3d
    ccf                                           ; $6c9a: $3f
    inc a                                         ; $6c9b: $3c
    rra                                           ; $6c9c: $1f
    ld a, [de]                                    ; $6c9d: $1a
    cpl                                           ; $6c9e: $2f
    inc a                                         ; $6c9f: $3c
    ld a, a                                       ; $6ca0: $7f
    ld a, [hl]                                    ; $6ca1: $7e
    ld [bc], a                                    ; $6ca2: $02
    rst $38                                       ; $6ca3: $ff
    adc d                                         ; $6ca4: $8a
    ld a, [hl]                                    ; $6ca5: $7e
    ld a, a                                       ; $6ca6: $7f
    ei                                            ; $6ca7: $fb
    rst $38                                       ; $6ca8: $ff
    ld a, [$fbff]                                 ; $6ca9: $fa $ff $fb
    rst $38                                       ; $6cac: $ff
    ld [hl], c                                    ; $6cad: $71
    ld a, a                                       ; $6cae: $7f
    ld [bc], a                                    ; $6caf: $02
    inc b                                         ; $6cb0: $04
    ld [bc], a                                    ; $6cb1: $02
    ld a, [bc]                                    ; $6cb2: $0a
    ld [bc], a                                    ; $6cb3: $02
    ld c, $8e                                     ; $6cb4: $0e $8e
    inc c                                         ; $6cb6: $0c
    inc b                                         ; $6cb7: $04
    ld c, $02                                     ; $6cb8: $0e $02
    ld c, $0a                                     ; $6cba: $0e $0a
    ld c, $02                                     ; $6cbc: $0e $02
    rrca                                          ; $6cbe: $0f
    ld bc, $0a0e                                  ; $6cbf: $01 $0e $0a
    inc c                                         ; $6cc2: $0c
    inc b                                         ; $6cc3: $04
    inc b                                         ; $6cc4: $04
    ld [$0481], sp                                ; $6cc5: $08 $81 $04
    inc bc                                        ; $6cc8: $03
    inc c                                         ; $6cc9: $0c
    adc c                                         ; $6cca: $89
    inc b                                         ; $6ccb: $04
    inc c                                         ; $6ccc: $0c
    inc b                                         ; $6ccd: $04
    inc c                                         ; $6cce: $0c
    inc sp                                        ; $6ccf: $33
    ccf                                           ; $6cd0: $3f
    ld [hl], a                                    ; $6cd1: $77
    ld a, h                                       ; $6cd2: $7c
    ld a, a                                       ; $6cd3: $7f
    ld [bc], a                                    ; $6cd4: $02
    ld a, e                                       ; $6cd5: $7b
    add a                                         ; $6cd6: $87
    ld a, a                                       ; $6cd7: $7f
    or a                                          ; $6cd8: $b7
    rst $38                                       ; $6cd9: $ff
    cp a                                          ; $6cda: $bf
    rst $38                                       ; $6cdb: $ff
    rst $30                                       ; $6cdc: $f7
    rst $38                                       ; $6cdd: $ff
    ld [bc], a                                    ; $6cde: $02
    ld a, [hl]                                    ; $6cdf: $7e
    stop                                          ; $6ce0: $10 $00
    ld [bc], a                                    ; $6ce2: $02
    inc b                                         ; $6ce3: $04
    add c                                         ; $6ce4: $81
    ld b, $02                                     ; $6ce5: $06 $02
    ld [bc], a                                    ; $6ce7: $02
    inc bc                                        ; $6ce8: $03
    ld b, $82                                     ; $6ce9: $06 $82
    ld bc, $0207                                  ; $6ceb: $01 $07 $02
    ld b, $14                                     ; $6cee: $06 $14
    nop                                           ; $6cf0: $00
    rst $38                                       ; $6cf1: $ff
    dec c                                         ; $6cf2: $0d
    inc b                                         ; $6cf3: $04
    db $fc                                        ; $6cf4: $fc
    inc b                                         ; $6cf5: $04
    rst $30                                       ; $6cf6: $f7
    cp $eb                                        ; $6cf7: $fe $eb
    ld a, [$feeb]                                 ; $6cf9: $fa $eb $fe
    ei                                            ; $6cfc: $fb
    ei                                            ; $6cfd: $fb
    ei                                            ; $6cfe: $fb
    db $fd                                        ; $6cff: $fd
    ld [bc], a                                    ; $6d00: $02
    ld bc, $0f02                                  ; $6d01: $01 $02 $0f
    ld [bc], a                                    ; $6d04: $02
    rra                                           ; $6d05: $1f
    adc [hl]                                      ; $6d06: $8e
    ccf                                           ; $6d07: $3f
    cpl                                           ; $6d08: $2f
    ccf                                           ; $6d09: $3f
    ld a, $3f                                     ; $6d0a: $3e $3f
    dec a                                         ; $6d0c: $3d
    ccf                                           ; $6d0d: $3f
    inc a                                         ; $6d0e: $3c
    rra                                           ; $6d0f: $1f
    ld a, [de]                                    ; $6d10: $1a
    ld l, a                                       ; $6d11: $6f
    ld a, h                                       ; $6d12: $7c
    ld a, a                                       ; $6d13: $7f
    ld a, [hl]                                    ; $6d14: $7e
    ld [bc], a                                    ; $6d15: $02
    rst $38                                       ; $6d16: $ff
    adc d                                         ; $6d17: $8a
    cp $ff                                        ; $6d18: $fe $ff
    ei                                            ; $6d1a: $fb
    rst $38                                       ; $6d1b: $ff
    halt                                          ; $6d1c: $76
    ld a, a                                       ; $6d1d: $7f
    ld [hl], a                                    ; $6d1e: $77
    ld a, a                                       ; $6d1f: $7f
    inc sp                                        ; $6d20: $33
    ccf                                           ; $6d21: $3f
    ld [bc], a                                    ; $6d22: $02
    inc b                                         ; $6d23: $04
    ld [bc], a                                    ; $6d24: $02
    ld a, [bc]                                    ; $6d25: $0a
    ld [bc], a                                    ; $6d26: $02
    ld c, $8e                                     ; $6d27: $0e $8e
    inc c                                         ; $6d29: $0c
    inc b                                         ; $6d2a: $04
    ld c, $02                                     ; $6d2b: $0e $02
    ld c, $0a                                     ; $6d2d: $0e $0a
    ld c, $02                                     ; $6d2f: $0e $02
    rrca                                          ; $6d31: $0f
    ld bc, $0a0e                                  ; $6d32: $01 $0e $0a
    inc c                                         ; $6d35: $0c
    inc b                                         ; $6d36: $04
    inc b                                         ; $6d37: $04
    ld [$0481], sp                                ; $6d38: $08 $81 $04
    inc bc                                        ; $6d3b: $03
    inc c                                         ; $6d3c: $0c
    sub b                                         ; $6d3d: $90
    inc b                                         ; $6d3e: $04
    inc c                                         ; $6d3f: $0c
    inc b                                         ; $6d40: $04
    inc c                                         ; $6d41: $0c
    ld c, [hl]                                    ; $6d42: $4e
    ld a, a                                       ; $6d43: $7f
    ld e, [hl]                                    ; $6d44: $5e
    ld h, a                                       ; $6d45: $67
    ccf                                           ; $6d46: $3f
    dec sp                                        ; $6d47: $3b
    ld a, [hl]                                    ; $6d48: $7e
    ld a, l                                       ; $6d49: $7d
    cp h                                          ; $6d4a: $bc
    rst $38                                       ; $6d4b: $ff
    ld e, a                                       ; $6d4c: $5f
    ld a, a                                       ; $6d4d: $7f
    ld [bc], a                                    ; $6d4e: $02
    jr c, jr_0e2_6d63                             ; $6d4f: $38 $12

    nop                                           ; $6d51: $00
    inc b                                         ; $6d52: $04
    ld [bc], a                                    ; $6d53: $02
    add c                                         ; $6d54: $81
    ld bc, $0303                                  ; $6d55: $01 $03 $03
    ld [bc], a                                    ; $6d58: $02
    ld [bc], a                                    ; $6d59: $02
    ld [bc], a                                    ; $6d5a: $02
    inc bc                                        ; $6d5b: $03
    inc d                                         ; $6d5c: $14
    nop                                           ; $6d5d: $00
    rst $38                                       ; $6d5e: $ff
    dec c                                         ; $6d5f: $0d
    inc b                                         ; $6d60: $04
    db $fc                                        ; $6d61: $fc
    inc b                                         ; $6d62: $04

jr_0e2_6d63:
    rst $30                                       ; $6d63: $f7
    cp $ea                                        ; $6d64: $fe $ea
    ld a, [$feea]                                 ; $6d66: $fa $ea $fe
    ld a, [$fafb]                                 ; $6d69: $fa $fb $fa
    rst $38                                       ; $6d6c: $ff
    ld [bc], a                                    ; $6d6d: $02
    ld bc, $0f02                                  ; $6d6e: $01 $02 $0f
    ld [bc], a                                    ; $6d71: $02
    rra                                           ; $6d72: $1f
    adc [hl]                                      ; $6d73: $8e
    ccf                                           ; $6d74: $3f
    cpl                                           ; $6d75: $2f
    ccf                                           ; $6d76: $3f
    ld a, $3f                                     ; $6d77: $3e $3f
    dec a                                         ; $6d79: $3d
    ccf                                           ; $6d7a: $3f
    inc a                                         ; $6d7b: $3c
    rra                                           ; $6d7c: $1f
    ld a, [de]                                    ; $6d7d: $1a
    cpl                                           ; $6d7e: $2f
    inc a                                         ; $6d7f: $3c
    ld a, a                                       ; $6d80: $7f
    ld a, [hl]                                    ; $6d81: $7e
    ld [bc], a                                    ; $6d82: $02
    rst $38                                       ; $6d83: $ff
    adc d                                         ; $6d84: $8a
    ld a, d                                       ; $6d85: $7a
    ld a, a                                       ; $6d86: $7f
    ei                                            ; $6d87: $fb
    rst $38                                       ; $6d88: $ff
    or $ff                                        ; $6d89: $f6 $ff
    rst $30                                       ; $6d8b: $f7
    rst $38                                       ; $6d8c: $ff
    ld h, a                                       ; $6d8d: $67
    ld a, a                                       ; $6d8e: $7f
    ld [bc], a                                    ; $6d8f: $02
    inc b                                         ; $6d90: $04
    ld [bc], a                                    ; $6d91: $02
    ld a, [bc]                                    ; $6d92: $0a
    ld [bc], a                                    ; $6d93: $02
    ld c, $8e                                     ; $6d94: $0e $8e
    inc c                                         ; $6d96: $0c
    inc b                                         ; $6d97: $04
    ld c, $02                                     ; $6d98: $0e $02
    ld c, $0a                                     ; $6d9a: $0e $0a
    ld c, $02                                     ; $6d9c: $0e $02
    rrca                                          ; $6d9e: $0f
    ld bc, $0a0e                                  ; $6d9f: $01 $0e $0a
    inc c                                         ; $6da2: $0c
    inc b                                         ; $6da3: $04
    inc b                                         ; $6da4: $04
    ld [$0481], sp                                ; $6da5: $08 $81 $04
    inc bc                                        ; $6da8: $03
    inc c                                         ; $6da9: $0c
    sub d                                         ; $6daa: $92
    inc b                                         ; $6dab: $04
    inc c                                         ; $6dac: $0c
    inc b                                         ; $6dad: $04
    inc c                                         ; $6dae: $0c
    ld c, [hl]                                    ; $6daf: $4e
    ld a, a                                       ; $6db0: $7f
    cp [hl]                                       ; $6db1: $be
    rst $28                                       ; $6db2: $ef
    ld a, [hl]                                    ; $6db3: $7e
    ld [hl], a                                    ; $6db4: $77
    ld a, $3b                                     ; $6db5: $3e $3b
    ld a, l                                       ; $6db7: $7d
    ld a, a                                       ; $6db8: $7f
    cp a                                          ; $6db9: $bf
    rst $38                                       ; $6dba: $ff
    ld c, a                                       ; $6dbb: $4f
    ld a, a                                       ; $6dbc: $7f
    ld [bc], a                                    ; $6dbd: $02
    add hl, sp                                    ; $6dbe: $39
    stop                                          ; $6dbf: $10 $00
    ld b, $08                                     ; $6dc1: $06 $08
    add c                                         ; $6dc3: $81
    inc b                                         ; $6dc4: $04
    inc bc                                        ; $6dc5: $03
    inc c                                         ; $6dc6: $0c
    add d                                         ; $6dc7: $82
    inc bc                                        ; $6dc8: $03
    rrca                                          ; $6dc9: $0f
    ld [bc], a                                    ; $6dca: $02
    ld c, $12                                     ; $6dcb: $0e $12
    nop                                           ; $6dcd: $00
    rst $38                                       ; $6dce: $ff
    dec c                                         ; $6dcf: $0d
    inc b                                         ; $6dd0: $04
    db $fc                                        ; $6dd1: $fc
    inc b                                         ; $6dd2: $04
    rst $30                                       ; $6dd3: $f7
    cp $eb                                        ; $6dd4: $fe $eb
    ld a, [$feeb]                                 ; $6dd6: $fa $eb $fe
    ei                                            ; $6dd9: $fb
    ei                                            ; $6dda: $fb
    ei                                            ; $6ddb: $fb
    db $fd                                        ; $6ddc: $fd
    ld [bc], a                                    ; $6ddd: $02
    ld bc, $0f02                                  ; $6dde: $01 $02 $0f
    ld [bc], a                                    ; $6de1: $02
    rra                                           ; $6de2: $1f
    adc [hl]                                      ; $6de3: $8e
    ccf                                           ; $6de4: $3f
    cpl                                           ; $6de5: $2f
    ccf                                           ; $6de6: $3f
    ld a, $3f                                     ; $6de7: $3e $3f
    dec a                                         ; $6de9: $3d
    ccf                                           ; $6dea: $3f
    inc a                                         ; $6deb: $3c
    rra                                           ; $6dec: $1f
    ld a, [de]                                    ; $6ded: $1a
    ld l, a                                       ; $6dee: $6f
    ld a, h                                       ; $6def: $7c
    ld a, a                                       ; $6df0: $7f
    ld a, [hl]                                    ; $6df1: $7e
    ld [bc], a                                    ; $6df2: $02
    rst $38                                       ; $6df3: $ff
    adc d                                         ; $6df4: $8a
    cp $ff                                        ; $6df5: $fe $ff
    ei                                            ; $6df7: $fb
    rst $38                                       ; $6df8: $ff
    ld a, d                                       ; $6df9: $7a
    ld a, a                                       ; $6dfa: $7f
    ld a, e                                       ; $6dfb: $7b
    ld a, a                                       ; $6dfc: $7f
    ld sp, $023f                                  ; $6dfd: $31 $3f $02
    inc b                                         ; $6e00: $04
    ld [bc], a                                    ; $6e01: $02
    ld a, [bc]                                    ; $6e02: $0a
    ld [bc], a                                    ; $6e03: $02
    ld c, $8e                                     ; $6e04: $0e $8e
    inc c                                         ; $6e06: $0c
    inc b                                         ; $6e07: $04
    ld c, $02                                     ; $6e08: $0e $02
    ld c, $0a                                     ; $6e0a: $0e $0a
    ld c, $02                                     ; $6e0c: $0e $02
    rrca                                          ; $6e0e: $0f
    ld bc, $0a0e                                  ; $6e0f: $01 $0e $0a
    inc c                                         ; $6e12: $0c
    inc b                                         ; $6e13: $04
    inc b                                         ; $6e14: $04
    ld [$0481], sp                                ; $6e15: $08 $81 $04
    inc bc                                        ; $6e18: $03
    inc c                                         ; $6e19: $0c
    add l                                         ; $6e1a: $85
    inc b                                         ; $6e1b: $04
    inc c                                         ; $6e1c: $0c
    inc b                                         ; $6e1d: $04
    inc c                                         ; $6e1e: $0c
    ld h, $02                                     ; $6e1f: $26 $02
    ccf                                           ; $6e21: $3f
    adc c                                         ; $6e22: $89
    jr c, @+$81                                   ; $6e23: $38 $7f

    ld [hl], a                                    ; $6e25: $77
    ei                                            ; $6e26: $fb
    rst $38                                       ; $6e27: $ff
    cp a                                          ; $6e28: $bf
    rst $38                                       ; $6e29: $ff
    ld e, l                                       ; $6e2a: $5d
    ld a, a                                       ; $6e2b: $7f
    ld [bc], a                                    ; $6e2c: $02
    ccf                                           ; $6e2d: $3f
    ld [de], a                                    ; $6e2e: $12
    nop                                           ; $6e2f: $00
    ld [bc], a                                    ; $6e30: $02
    ld [bc], a                                    ; $6e31: $02
    add h                                         ; $6e32: $84
    ld bc, $0103                                  ; $6e33: $01 $03 $01
    inc bc                                        ; $6e36: $03
    ld [bc], a                                    ; $6e37: $02
    ld [bc], a                                    ; $6e38: $02
    ld [bc], a                                    ; $6e39: $02
    inc bc                                        ; $6e3a: $03
    ld [bc], a                                    ; $6e3b: $02
    nop                                           ; $6e3c: $00
    ld [bc], a                                    ; $6e3d: $02
    ld [bc], a                                    ; $6e3e: $02
    ld [de], a                                    ; $6e3f: $12
    nop                                           ; $6e40: $00
    rst $38                                       ; $6e41: $ff
    dec bc                                        ; $6e42: $0b
    inc bc                                        ; $6e43: $03
    ld a, [$f406]                                 ; $6e44: $fa $06 $f4
    ld a, [bc]                                    ; $6e47: $0a
    ld a, [$f7f8]                                 ; $6e48: $fa $f8 $f7
    nop                                           ; $6e4b: $00
    rlca                                          ; $6e4c: $07
    nop                                           ; $6e4d: $00
    ld [bc], a                                    ; $6e4e: $02
    inc bc                                        ; $6e4f: $03
    add h                                         ; $6e50: $84
    ld b, $07                                     ; $6e51: $06 $07
    dec b                                         ; $6e53: $05
    rlca                                          ; $6e54: $07
    inc b                                         ; $6e55: $04
    rrca                                          ; $6e56: $0f
    ld [bc], a                                    ; $6e57: $02
    rlca                                          ; $6e58: $07
    ld [bc], a                                    ; $6e59: $02
    ld [bc], a                                    ; $6e5a: $02
    add c                                         ; $6e5b: $81
    dec b                                         ; $6e5c: $05
    inc bc                                        ; $6e5d: $03
    rlca                                          ; $6e5e: $07
    ld [bc], a                                    ; $6e5f: $02
    ld bc, $1e02                                  ; $6e60: $01 $02 $1e
    ld [bc], a                                    ; $6e63: $02
    nop                                           ; $6e64: $00
    inc b                                         ; $6e65: $04
    db $10                                        ; $6e66: $10
    ld [bc], a                                    ; $6e67: $02
    ld c, $83                                     ; $6e68: $0e $83
    rlca                                          ; $6e6a: $07
    nop                                           ; $6e6b: $00
    ld [$0003], sp                                ; $6e6c: $08 $03 $00
    and c                                         ; $6e6f: $a1
    inc b                                         ; $6e70: $04
    nop                                           ; $6e71: $00
    db $e4                                        ; $6e72: $e4
    ldh [$bc], a                                  ; $6e73: $e0 $bc
    ld [hl], b                                    ; $6e75: $70
    ld a, [c]                                     ; $6e76: $f2
    ldh a, [$fa]                                  ; $6e77: $f0 $fa
    add sp, -$06                                  ; $6e79: $e8 $fa
    add sp, -$2e                                  ; $6e7b: $e8 $d2
    ret nc                                        ; $6e7d: $d0

    ld h, d                                       ; $6e7e: $62
    ldh [$f2], a                                  ; $6e7f: $e0 $f2
    ldh a, [$fa]                                  ; $6e81: $f0 $fa
    ld hl, sp-$0c                                 ; $6e83: $f8 $f4
    ldh a, [$74]                                  ; $6e85: $f0 $74
    nop                                           ; $6e87: $00
    inc b                                         ; $6e88: $04
    nop                                           ; $6e89: $00
    jr z, jr_0e2_6eac                             ; $6e8a: $28 $20

    jr z, jr_0e2_6eae                             ; $6e8c: $28 $20

    ld [hl], b                                    ; $6e8e: $70
    ld b, b                                       ; $6e8f: $40
    ret nz                                        ; $6e90: $c0

    dec de                                        ; $6e91: $1b
    nop                                           ; $6e92: $00
    rst $38                                       ; $6e93: $ff
    dec c                                         ; $6e94: $0d
    inc b                                         ; $6e95: $04
    ld a, [$f406]                                 ; $6e96: $fa $06 $f4
    ld a, [bc]                                    ; $6e99: $0a
    push af                                       ; $6e9a: $f5
    ld sp, hl                                     ; $6e9b: $f9
    db $f4                                        ; $6e9c: $f4
    rst $38                                       ; $6e9d: $ff
    inc b                                         ; $6e9e: $04
    ld sp, hl                                     ; $6e9f: $f9
    inc b                                         ; $6ea0: $04
    cp $ad                                        ; $6ea1: $fe $ad
    ld bc, $0200                                  ; $6ea3: $01 $00 $02
    ld bc, $0305                                  ; $6ea6: $01 $05 $03
    dec bc                                        ; $6ea9: $0b
    rlca                                          ; $6eaa: $07
    dec bc                                        ; $6eab: $0b

jr_0e2_6eac:
    rlca                                          ; $6eac: $07
    rla                                           ; $6ead: $17

jr_0e2_6eae:
    rrca                                          ; $6eae: $0f
    rra                                           ; $6eaf: $1f
    rrca                                          ; $6eb0: $0f
    cpl                                           ; $6eb1: $2f
    rra                                           ; $6eb2: $1f
    ccf                                           ; $6eb3: $3f
    rra                                           ; $6eb4: $1f
    ld e, a                                       ; $6eb5: $5f
    ccf                                           ; $6eb6: $3f
    ld e, a                                       ; $6eb7: $5f
    ccf                                           ; $6eb8: $3f
    ld e, a                                       ; $6eb9: $5f
    dec a                                         ; $6eba: $3d
    ld e, a                                       ; $6ebb: $5f
    ccf                                           ; $6ebc: $3f
    ld a, a                                       ; $6ebd: $7f
    ccf                                           ; $6ebe: $3f
    cp a                                          ; $6ebf: $bf
    ld b, e                                       ; $6ec0: $43
    rst $38                                       ; $6ec1: $ff
    ld a, h                                       ; $6ec2: $7c
    jr nc, jr_0e2_6ec5                            ; $6ec3: $30 $00

jr_0e2_6ec5:
    ld [$3430], sp                                ; $6ec5: $08 $30 $34
    jr c, jr_0e2_6efe                             ; $6ec8: $38 $34

    inc a                                         ; $6eca: $3c
    ld a, [hl+]                                   ; $6ecb: $2a
    inc a                                         ; $6ecc: $3c
    ld a, [hl+]                                   ; $6ecd: $2a
    ld a, $3a                                     ; $6ece: $3e $3a
    inc bc                                        ; $6ed0: $03
    ld a, $90                                     ; $6ed1: $3e $90
    add hl, sp                                    ; $6ed3: $39
    ccf                                           ; $6ed4: $3f
    dec a                                         ; $6ed5: $3d
    ccf                                           ; $6ed6: $3f
    dec a                                         ; $6ed7: $3d
    ccf                                           ; $6ed8: $3f
    dec l                                         ; $6ed9: $2d
    ccf                                           ; $6eda: $3f
    dec a                                         ; $6edb: $3d
    ccf                                           ; $6edc: $3f
    dec a                                         ; $6edd: $3d
    ccf                                           ; $6ede: $3f
    dec a                                         ; $6edf: $3d
    ccf                                           ; $6ee0: $3f
    dec sp                                        ; $6ee1: $3b
    ccf                                           ; $6ee2: $3f
    ld [bc], a                                    ; $6ee3: $02
    nop                                           ; $6ee4: $00
    adc h                                         ; $6ee5: $8c
    cp a                                          ; $6ee6: $bf
    ld a, a                                       ; $6ee7: $7f
    or h                                          ; $6ee8: $b4
    ld a, a                                       ; $6ee9: $7f
    pop af                                        ; $6eea: $f1
    cp a                                          ; $6eeb: $bf
    ld e, a                                       ; $6eec: $5f
    ccf                                           ; $6eed: $3f
    ld a, a                                       ; $6eee: $7f
    ld c, a                                       ; $6eef: $4f
    jr nz, jr_0e2_6f31                            ; $6ef0: $20 $3f

    ld [bc], a                                    ; $6ef2: $02
    rra                                           ; $6ef3: $1f
    stop                                          ; $6ef4: $10 $00
    add c                                         ; $6ef6: $81
    dec e                                         ; $6ef7: $1d
    inc bc                                        ; $6ef8: $03
    rra                                           ; $6ef9: $1f
    add e                                         ; $6efa: $83
    dec de                                        ; $6efb: $1b
    rra                                           ; $6efc: $1f
    ld a, [de]                                    ; $6efd: $1a

jr_0e2_6efe:
    inc bc                                        ; $6efe: $03
    ld e, $84                                     ; $6eff: $1e $84
    inc d                                         ; $6f01: $14
    inc e                                         ; $6f02: $1c
    ld [$0218], sp                                ; $6f03: $08 $18 $02
    db $10                                        ; $6f06: $10
    stop                                          ; $6f07: $10 $00
    rst $38                                       ; $6f09: $ff
    dec bc                                        ; $6f0a: $0b
    inc bc                                        ; $6f0b: $03
    ld a, [$f406]                                 ; $6f0c: $fa $06 $f4
    ld a, [bc]                                    ; $6f0f: $0a
    push af                                       ; $6f10: $f5
    db $fc                                        ; $6f11: $fc
    ld hl, sp-$01                                 ; $6f12: $f8 $ff
    dec b                                         ; $6f14: $05
    db $fc                                        ; $6f15: $fc
    add [hl]                                      ; $6f16: $86
    inc b                                         ; $6f17: $04
    nop                                           ; $6f18: $00
    ld [bc], a                                    ; $6f19: $02
    nop                                           ; $6f1a: $00
    add hl, bc                                    ; $6f1b: $09
    ld [$1004], sp                                ; $6f1c: $08 $04 $10
    ld [bc], a                                    ; $6f1f: $02
    jr nz, jr_0e2_6f24                            ; $6f20: $20 $02

    ld a, $83                                     ; $6f22: $3e $83

jr_0e2_6f24:
    ld h, e                                       ; $6f24: $63
    ld a, e                                       ; $6f25: $7b
    ld e, l                                       ; $6f26: $5d
    dec b                                         ; $6f27: $05
    ld a, a                                       ; $6f28: $7f
    ld [bc], a                                    ; $6f29: $02
    ld a, $84                                     ; $6f2a: $3e $84
    inc sp                                        ; $6f2c: $33
    dec sp                                        ; $6f2d: $3b
    ld a, l                                       ; $6f2e: $7d
    ld a, a                                       ; $6f2f: $7f
    ld [bc], a                                    ; $6f30: $02

jr_0e2_6f31:
    rst $38                                       ; $6f31: $ff
    adc e                                         ; $6f32: $8b
    dec bc                                        ; $6f33: $0b
    nop                                           ; $6f34: $00
    inc b                                         ; $6f35: $04
    nop                                           ; $6f36: $00
    inc b                                         ; $6f37: $04
    nop                                           ; $6f38: $00
    ld [bc], a                                    ; $6f39: $02
    nop                                           ; $6f3a: $00
    ld [bc], a                                    ; $6f3b: $02
    nop                                           ; $6f3c: $00
    ld [bc], a                                    ; $6f3d: $02
    inc bc                                        ; $6f3e: $03
    nop                                           ; $6f3f: $00
    sub c                                         ; $6f40: $91
    ld bc, $0100                                  ; $6f41: $01 $00 $01
    nop                                           ; $6f44: $00
    ld bc, $0100                                  ; $6f45: $01 $00 $01
    nop                                           ; $6f48: $00
    ld bc, $0500                                  ; $6f49: $01 $00 $05
    inc b                                         ; $6f4c: $04
    dec b                                         ; $6f4d: $05
    nop                                           ; $6f4e: $00
    ld bc, $0500                                  ; $6f4f: $01 $00 $05
    inc bc                                        ; $6f52: $03
    inc b                                         ; $6f53: $04
    ld b, $80                                     ; $6f54: $06 $80
    ld [bc], a                                    ; $6f56: $02
    ld a, c                                       ; $6f57: $79
    add c                                         ; $6f58: $81
    rra                                           ; $6f59: $1f
    rla                                           ; $6f5a: $17
    nop                                           ; $6f5b: $00
    rst $38                                       ; $6f5c: $ff
    dec c                                         ; $6f5d: $0d
    inc b                                         ; $6f5e: $04
    ld a, [$f406]                                 ; $6f5f: $fa $06 $f4
    ld a, [bc]                                    ; $6f62: $0a
    db $f4                                        ; $6f63: $f4
    ld a, [$fff6]                                 ; $6f64: $fa $f6 $ff
    inc b                                         ; $6f67: $04
    ld a, [$ff04]                                 ; $6f68: $fa $04 $ff
    and b                                         ; $6f6b: $a0
    ld [bc], a                                    ; $6f6c: $02
    nop                                           ; $6f6d: $00
    dec b                                         ; $6f6e: $05
    inc bc                                        ; $6f6f: $03
    ld a, [bc]                                    ; $6f70: $0a
    rlca                                          ; $6f71: $07
    rla                                           ; $6f72: $17
    rrca                                          ; $6f73: $0f
    ld l, $1f                                     ; $6f74: $2e $1f
    ld l, $1f                                     ; $6f76: $2e $1f
    ld e, [hl]                                    ; $6f78: $5e
    ccf                                           ; $6f79: $3f
    ld e, a                                       ; $6f7a: $5f
    ccf                                           ; $6f7b: $3f
    ld a, a                                       ; $6f7c: $7f
    ld a, $bf                                     ; $6f7d: $3e $bf
    ld e, a                                       ; $6f7f: $5f
    cp a                                          ; $6f80: $bf
    ld a, a                                       ; $6f81: $7f
    cp a                                          ; $6f82: $bf
    ld a, a                                       ; $6f83: $7f
    cp a                                          ; $6f84: $bf
    ld a, a                                       ; $6f85: $7f
    cp a                                          ; $6f86: $bf
    ld a, [hl]                                    ; $6f87: $7e
    cp a                                          ; $6f88: $bf
    ld a, a                                       ; $6f89: $7f
    rst $38                                       ; $6f8a: $ff
    ld a, a                                       ; $6f8b: $7f
    ld [bc], a                                    ; $6f8c: $02
    db $10                                        ; $6f8d: $10
    adc c                                         ; $6f8e: $89
    ld [$1418], sp                                ; $6f8f: $08 $18 $14
    inc e                                         ; $6f92: $1c
    inc d                                         ; $6f93: $14
    inc e                                         ; $6f94: $1c
    ld a, [de]                                    ; $6f95: $1a
    ld e, $1a                                     ; $6f96: $1e $1a
    inc bc                                        ; $6f98: $03
    ld e, $82                                     ; $6f99: $1e $82
    dec e                                         ; $6f9b: $1d
    ld a, [de]                                    ; $6f9c: $1a
    ld [bc], a                                    ; $6f9d: $02
    rra                                           ; $6f9e: $1f
    add a                                         ; $6f9f: $87
    dec e                                         ; $6fa0: $1d
    rra                                           ; $6fa1: $1f
    dec e                                         ; $6fa2: $1d
    rra                                           ; $6fa3: $1f
    dec e                                         ; $6fa4: $1d
    rra                                           ; $6fa5: $1f
    dec e                                         ; $6fa6: $1d
    inc bc                                        ; $6fa7: $03
    rra                                           ; $6fa8: $1f
    add d                                         ; $6fa9: $82
    db $fd                                        ; $6faa: $fd
    ld e, a                                       ; $6fab: $5f
    ld [bc], a                                    ; $6fac: $02
    rst $38                                       ; $6fad: $ff
    add a                                         ; $6fae: $87
    cp b                                          ; $6faf: $b8
    ld b, b                                       ; $6fb0: $40
    ld hl, sp+$78                                 ; $6fb1: $f8 $78
    cp e                                          ; $6fb3: $bb
    ld a, a                                       ; $6fb4: $7f
    ld [hl], c                                    ; $6fb5: $71
    ld [bc], a                                    ; $6fb6: $02
    cp a                                          ; $6fb7: $bf
    add l                                         ; $6fb8: $85
    rst $18                                       ; $6fb9: $df
    ld e, a                                       ; $6fba: $5f
    ld h, a                                       ; $6fbb: $67
    jr nz, jr_0e2_6ffd                            ; $6fbc: $20 $3f

    ld [bc], a                                    ; $6fbe: $02
    rra                                           ; $6fbf: $1f
    inc d                                         ; $6fc0: $14
    nop                                           ; $6fc1: $00
    add e                                         ; $6fc2: $83
    dec b                                         ; $6fc3: $05
    rra                                           ; $6fc4: $1f
    ld c, $02                                     ; $6fc5: $0e $02
    dec e                                         ; $6fc7: $1d
    add l                                         ; $6fc8: $85
    dec de                                        ; $6fc9: $1b
    ld a, [de]                                    ; $6fca: $1a
    ld e, $04                                     ; $6fcb: $1e $04
    inc e                                         ; $6fcd: $1c
    ld [bc], a                                    ; $6fce: $02
    jr jr_0e2_6fe1                                ; $6fcf: $18 $10

    nop                                           ; $6fd1: $00
    rst $38                                       ; $6fd2: $ff
    rlca                                          ; $6fd3: $07
    ld bc, $04fc                                  ; $6fd4: $01 $fc $04
    nop                                           ; $6fd7: $00
    rlca                                          ; $6fd8: $07
    ld bc, $89fc                                  ; $6fd9: $01 $fc $89
    nop                                           ; $6fdc: $00
    inc e                                         ; $6fdd: $1c
    ld d, $3e                                     ; $6fde: $16 $3e
    dec c                                         ; $6fe0: $0d

jr_0e2_6fe1:
    scf                                           ; $6fe1: $37
    inc d                                         ; $6fe2: $14
    ld h, c                                       ; $6fe3: $61
    nop                                           ; $6fe4: $00
    ld [bc], a                                    ; $6fe5: $02
    ld b, c                                       ; $6fe6: $41
    dec d                                         ; $6fe7: $15
    nop                                           ; $6fe8: $00
    rst $38                                       ; $6fe9: $ff
    add hl, bc                                    ; $6fea: $09
    ld [bc], a                                    ; $6feb: $02
    db $fc                                        ; $6fec: $fc
    inc b                                         ; $6fed: $04
    nop                                           ; $6fee: $00
    rlca                                          ; $6fef: $07
    ld bc, $01fa                                  ; $6ff0: $01 $fa $01
    rst $38                                       ; $6ff3: $ff
    ld [bc], a                                    ; $6ff4: $02
    rrca                                          ; $6ff5: $0f
    adc a                                         ; $6ff6: $8f
    rla                                           ; $6ff7: $17
    rra                                           ; $6ff8: $1f
    dec c                                         ; $6ff9: $0d
    rra                                           ; $6ffa: $1f
    jr nz, jr_0e2_7032                            ; $6ffb: $20 $35

jr_0e2_6ffd:
    nop                                           ; $6ffd: $00
    jr z, jr_0e2_700a                             ; $6ffe: $28 $0a

    ld h, b                                       ; $7000: $60
    ld b, d                                       ; $7001: $42
    nop                                           ; $7002: $00
    ld b, b                                       ; $7003: $40
    nop                                           ; $7004: $00
    add b                                         ; $7005: $80
    rrca                                          ; $7006: $0f
    nop                                           ; $7007: $00
    ld [bc], a                                    ; $7008: $02
    db $10                                        ; $7009: $10

jr_0e2_700a:
    add d                                         ; $700a: $82
    ld [$0218], sp                                ; $700b: $08 $18 $02
    ld [$048b], sp                                ; $700e: $08 $8b $04
    inc e                                         ; $7011: $1c
    db $10                                        ; $7012: $10
    inc b                                         ; $7013: $04
    db $10                                        ; $7014: $10
    ld b, $02                                     ; $7015: $06 $02
    nop                                           ; $7017: $00
    ld [bc], a                                    ; $7018: $02
    nop                                           ; $7019: $00
    ld bc, $000f                                  ; $701a: $01 $0f $00
    rst $38                                       ; $701d: $ff
    add hl, bc                                    ; $701e: $09
    ld [bc], a                                    ; $701f: $02
    db $fc                                        ; $7020: $fc
    inc b                                         ; $7021: $04
    nop                                           ; $7022: $00
    rlca                                          ; $7023: $07
    ld bc, $01f9                                  ; $7024: $01 $f9 $01
    nop                                           ; $7027: $00
    add d                                         ; $7028: $82
    inc bc                                        ; $7029: $03
    rlca                                          ; $702a: $07
    ld [bc], a                                    ; $702b: $02
    rrca                                          ; $702c: $0f
    sub a                                         ; $702d: $97
    ld a, [bc]                                    ; $702e: $0a
    rrca                                          ; $702f: $0f
    ld [bc], a                                    ; $7030: $02
    rrca                                          ; $7031: $0f

jr_0e2_7032:
    jr jr_0e2_704e                                ; $7032: $18 $1a

    nop                                           ; $7034: $00
    inc d                                         ; $7035: $14
    inc b                                         ; $7036: $04
    dec [hl]                                      ; $7037: $35
    nop                                           ; $7038: $00
    dec h                                         ; $7039: $25
    dec b                                         ; $703a: $05
    jr nz, jr_0e2_7042                            ; $703b: $20 $05

    ld b, b                                       ; $703d: $40
    ld c, b                                       ; $703e: $48
    nop                                           ; $703f: $00
    ld c, b                                       ; $7040: $48
    nop                                           ; $7041: $00

jr_0e2_7042:
    add b                                         ; $7042: $80
    nop                                           ; $7043: $00
    add b                                         ; $7044: $80
    dec b                                         ; $7045: $05
    nop                                           ; $7046: $00
    add d                                         ; $7047: $82
    ld b, b                                       ; $7048: $40
    ld h, b                                       ; $7049: $60
    ld [bc], a                                    ; $704a: $02
    ld [hl], b                                    ; $704b: $70
    sub a                                         ; $704c: $97
    ld d, b                                       ; $704d: $50

jr_0e2_704e:
    ld [hl], b                                    ; $704e: $70
    ld c, b                                       ; $704f: $48
    ld e, b                                       ; $7050: $58
    ld d, b                                       ; $7051: $50
    ld e, b                                       ; $7052: $58
    nop                                           ; $7053: $00
    ld l, b                                       ; $7054: $68
    inc b                                         ; $7055: $04
    inc l                                         ; $7056: $2c
    jr nz, jr_0e2_705d                            ; $7057: $20 $04

    jr nz, jr_0e2_705f                            ; $7059: $20 $04

    jr nz, jr_0e2_705f                            ; $705b: $20 $02

jr_0e2_705d:
    ld [de], a                                    ; $705d: $12
    nop                                           ; $705e: $00

jr_0e2_705f:
    ld [de], a                                    ; $705f: $12
    nop                                           ; $7060: $00
    ld bc, $0100                                  ; $7061: $01 $00 $01
    dec b                                         ; $7064: $05
    nop                                           ; $7065: $00
    rst $38                                       ; $7066: $ff
    dec c                                         ; $7067: $0d
    inc b                                         ; $7068: $04
    db $fc                                        ; $7069: $fc
    inc b                                         ; $706a: $04
    nop                                           ; $706b: $00
    rlca                                          ; $706c: $07
    ld bc, $01f9                                  ; $706d: $01 $f9 $01
    nop                                           ; $7070: $00
    ld de, $11f8                                  ; $7071: $11 $f8 $11
    ld bc, $0382                                  ; $7074: $01 $82 $03
    rlca                                          ; $7077: $07
    ld [bc], a                                    ; $7078: $02
    rrca                                          ; $7079: $0f
    sbc c                                         ; $707a: $99
    ld a, [bc]                                    ; $707b: $0a
    rrca                                          ; $707c: $0f
    ld [bc], a                                    ; $707d: $02
    ld a, [bc]                                    ; $707e: $0a
    ld d, $1f                                     ; $707f: $16 $1f
    ld bc, $2417                                  ; $7081: $01 $17 $24
    ld [hl], $01                                  ; $7084: $36 $01
    dec h                                         ; $7086: $25
    inc b                                         ; $7087: $04
    ld hl, $4045                                  ; $7088: $21 $45 $40
    add hl, bc                                    ; $708b: $09
    ld b, b                                       ; $708c: $40
    ld c, c                                       ; $708d: $49
    nop                                           ; $708e: $00
    add c                                         ; $708f: $81
    nop                                           ; $7090: $00
    add b                                         ; $7091: $80
    nop                                           ; $7092: $00
    add c                                         ; $7093: $81
    inc bc                                        ; $7094: $03
    nop                                           ; $7095: $00
    add d                                         ; $7096: $82
    ld b, b                                       ; $7097: $40
    ld h, b                                       ; $7098: $60
    ld [bc], a                                    ; $7099: $02
    ld [hl], b                                    ; $709a: $70
    sbc c                                         ; $709b: $99
    ld d, b                                       ; $709c: $50
    ld [hl], b                                    ; $709d: $70
    ld c, b                                       ; $709e: $48
    ld e, b                                       ; $709f: $58
    db $10                                        ; $70a0: $10
    ld a, b                                       ; $70a1: $78
    jr nz, @+$6a                                  ; $70a2: $20 $68

    ld [$002c], sp                                ; $70a4: $08 $2c $00
    inc l                                         ; $70a7: $2c
    jr nz, jr_0e2_70ae                            ; $70a8: $20 $04

    ld [hl+], a                                   ; $70aa: $22
    ld b, $10                                     ; $70ab: $06 $10
    ld [bc], a                                    ; $70ad: $02

jr_0e2_70ae:
    ld [de], a                                    ; $70ae: $12
    nop                                           ; $70af: $00
    ld bc, $0100                                  ; $70b0: $01 $00 $01
    nop                                           ; $70b3: $00
    ld bc, $0003                                  ; $70b4: $01 $03 $00
    add c                                         ; $70b7: $81
    add b                                         ; $70b8: $80
    rra                                           ; $70b9: $1f
    nop                                           ; $70ba: $00
    add c                                         ; $70bb: $81
    ld bc, $001f                                  ; $70bc: $01 $1f $00
    rst $38                                       ; $70bf: $ff
    rlca                                          ; $70c0: $07
    ld bc, $04fc                                  ; $70c1: $01 $fc $04
    nop                                           ; $70c4: $00
    rlca                                          ; $70c5: $07
    ld [bc], a                                    ; $70c6: $02
    db $fc                                        ; $70c7: $fc
    adc c                                         ; $70c8: $89
    ld b, $0e                                     ; $70c9: $06 $0e
    nop                                           ; $70cb: $00
    rra                                           ; $70cc: $1f
    ld a, [bc]                                    ; $70cd: $0a
    inc de                                        ; $70ce: $13
    jr nz, jr_0e2_70d3                            ; $70cf: $20 $02

    ld [hl+], a                                   ; $70d1: $22
    rla                                           ; $70d2: $17

jr_0e2_70d3:
    nop                                           ; $70d3: $00
    rst $38                                       ; $70d4: $ff
    rlca                                          ; $70d5: $07
    ld bc, $04fc                                  ; $70d6: $01 $fc $04
    nop                                           ; $70d9: $00
    rlca                                          ; $70da: $07
    ld [bc], a                                    ; $70db: $02
    db $fc                                        ; $70dc: $fc
    ld [bc], a                                    ; $70dd: $02
    ld c, $91                                     ; $70de: $0e $91
    ld [bc], a                                    ; $70e0: $02
    rrca                                          ; $70e1: $0f
    inc b                                         ; $70e2: $04
    rra                                           ; $70e3: $1f
    inc bc                                        ; $70e4: $03
    rla                                           ; $70e5: $17
    ld a, [bc]                                    ; $70e6: $0a
    ld a, $0a                                     ; $70e7: $3e $0a
    ld a, [hl+]                                   ; $70e9: $2a
    nop                                           ; $70ea: $00
    ld d, d                                       ; $70eb: $52
    ld d, b                                       ; $70ec: $50
    ld b, $90                                     ; $70ed: $06 $90
    inc b                                         ; $70ef: $04
    jr nz, jr_0e2_70f4                            ; $70f0: $20 $02

    inc b                                         ; $70f2: $04
    add d                                         ; $70f3: $82

jr_0e2_70f4:
    nop                                           ; $70f4: $00
    inc b                                         ; $70f5: $04
    add hl, bc                                    ; $70f6: $09
    nop                                           ; $70f7: $00
    rst $38                                       ; $70f8: $ff
    add hl, bc                                    ; $70f9: $09
    ld [bc], a                                    ; $70fa: $02
    db $fc                                        ; $70fb: $fc
    inc b                                         ; $70fc: $04
    nop                                           ; $70fd: $00
    rlca                                          ; $70fe: $07
    ld [bc], a                                    ; $70ff: $02
    ei                                            ; $7100: $fb
    ld [bc], a                                    ; $7101: $02
    db $fc                                        ; $7102: $fc
    ld [bc], a                                    ; $7103: $02
    rlca                                          ; $7104: $07
    sub l                                         ; $7105: $95
    add hl, bc                                    ; $7106: $09
    rrca                                          ; $7107: $0f
    ld a, [bc]                                    ; $7108: $0a
    rrca                                          ; $7109: $0f
    ld de, $051b                                  ; $710a: $11 $1b $05
    rla                                           ; $710d: $17
    ld bc, $0015                                  ; $710e: $01 $15 $00
    dec l                                         ; $7111: $2d
    nop                                           ; $7112: $00
    ld c, e                                       ; $7113: $4b
    ld c, b                                       ; $7114: $48
    ld [de], a                                    ; $7115: $12
    adc b                                         ; $7116: $88
    ld [bc], a                                    ; $7117: $02
    adc d                                         ; $7118: $8a
    nop                                           ; $7119: $00
    db $10                                        ; $711a: $10
    ld [bc], a                                    ; $711b: $02
    ld [bc], a                                    ; $711c: $02
    add d                                         ; $711d: $82
    nop                                           ; $711e: $00
    ld [bc], a                                    ; $711f: $02
    ld [$8200], sp                                ; $7120: $08 $00 $82
    ld bc, $0300                                  ; $7123: $01 $00 $03
    ld bc, $0018                                  ; $7126: $01 $18 $00
    rst $38                                       ; $7129: $ff
    dec bc                                        ; $712a: $0b
    inc bc                                        ; $712b: $03
    db $fc                                        ; $712c: $fc
    inc b                                         ; $712d: $04
    nop                                           ; $712e: $00
    rlca                                          ; $712f: $07
    ld bc, $01fa                                  ; $7130: $01 $fa $01
    db $fc                                        ; $7133: $fc
    ld de, $81fa                                  ; $7134: $11 $fa $81
    ld bc, $0302                                  ; $7137: $01 $02 $03
    inc bc                                        ; $713a: $03
    rlca                                          ; $713b: $07
    adc l                                         ; $713c: $8d
    ld [bc], a                                    ; $713d: $02
    rrca                                          ; $713e: $0f
    ld c, $0f                                     ; $713f: $0e $0f
    inc bc                                        ; $7141: $03
    dec bc                                        ; $7142: $0b
    ld de, $1417                                  ; $7143: $11 $17 $14
    dec e                                         ; $7146: $1d
    dec b                                         ; $7147: $05
    dec h                                         ; $7148: $25
    nop                                           ; $7149: $00
    ld [bc], a                                    ; $714a: $02
    inc h                                         ; $714b: $24
    add h                                         ; $714c: $84
    inc b                                         ; $714d: $04
    ld b, b                                       ; $714e: $40
    inc b                                         ; $714f: $04
    ld b, h                                       ; $7150: $44
    ld [bc], a                                    ; $7151: $02
    add hl, bc                                    ; $7152: $09
    add h                                         ; $7153: $84
    nop                                           ; $7154: $00
    adc b                                         ; $7155: $88
    ld bc, $0209                                  ; $7156: $01 $09 $02
    nop                                           ; $7159: $00
    ld [bc], a                                    ; $715a: $02
    ld [bc], a                                    ; $715b: $02
    adc c                                         ; $715c: $89
    inc bc                                        ; $715d: $03
    ld bc, $0203                                  ; $715e: $01 $03 $02
    inc bc                                        ; $7161: $03
    ld [bc], a                                    ; $7162: $02
    inc bc                                        ; $7163: $03
    nop                                           ; $7164: $00
    inc bc                                        ; $7165: $03
    inc b                                         ; $7166: $04
    ld [bc], a                                    ; $7167: $02
    add e                                         ; $7168: $83
    nop                                           ; $7169: $00
    ld [bc], a                                    ; $716a: $02
    nop                                           ; $716b: $00
    inc bc                                        ; $716c: $03
    ld [bc], a                                    ; $716d: $02
    add d                                         ; $716e: $82
    nop                                           ; $716f: $00
    ld [bc], a                                    ; $7170: $02
    ld a, [bc]                                    ; $7171: $0a
    nop                                           ; $7172: $00
    add c                                         ; $7173: $81
    ld de, $001d                                  ; $7174: $11 $1d $00
    rst $38                                       ; $7177: $ff
    dec bc                                        ; $7178: $0b
    inc bc                                        ; $7179: $03
    ld hl, sp+$02                                 ; $717a: $f8 $02
    ld hl, sp+$07                                 ; $717c: $f8 $07
    xor $f9                                       ; $717e: $ee $f9
    xor $fe                                       ; $7180: $ee $fe
    cp $f8                                        ; $7182: $fe $f8
    ld [bc], a                                    ; $7184: $02
    rrca                                          ; $7185: $0f
    sbc [hl]                                      ; $7186: $9e
    rra                                           ; $7187: $1f
    inc d                                         ; $7188: $14
    ccf                                           ; $7189: $3f
    jr nz, jr_0e2_71cb                            ; $718a: $20 $3f

    dec [hl]                                      ; $718c: $35
    ccf                                           ; $718d: $3f
    ld l, $1f                                     ; $718e: $2e $1f
    rla                                           ; $7190: $17
    ccf                                           ; $7191: $3f
    ld a, [hl+]                                   ; $7192: $2a
    ld a, a                                       ; $7193: $7f
    ld d, e                                       ; $7194: $53
    rst $38                                       ; $7195: $ff
    jp $83fe                                      ; $7196: $c3 $fe $83


    db $fc                                        ; $7199: $fc
    add a                                         ; $719a: $87
    ld a, h                                       ; $719b: $7c
    ld d, a                                       ; $719c: $57
    add hl, sp                                    ; $719d: $39
    ccf                                           ; $719e: $3f
    dec a                                         ; $719f: $3d
    ccf                                           ; $71a0: $3f
    ld d, [hl]                                    ; $71a1: $56
    ld a, [hl]                                    ; $71a2: $7e
    ld b, d                                       ; $71a3: $42
    ld a, [hl]                                    ; $71a4: $7e
    ld [bc], a                                    ; $71a5: $02
    ld [$1402], sp                                ; $71a6: $08 $02 $14
    add h                                         ; $71a9: $84
    jr jr_0e2_71b4                                ; $71aa: $18 $08

    inc e                                         ; $71ac: $1c
    inc c                                         ; $71ad: $0c
    inc bc                                        ; $71ae: $03
    jr @-$7d                                      ; $71af: $18 $81

    ld [$1002], sp                                ; $71b1: $08 $02 $10

jr_0e2_71b4:
    ld [bc], a                                    ; $71b4: $02
    ld e, $84                                     ; $71b5: $1e $84
    rlca                                          ; $71b7: $07
    dec e                                         ; $71b8: $1d
    ld d, $1e                                     ; $71b9: $16 $1e
    ld [bc], a                                    ; $71bb: $02
    jr @+$04                                      ; $71bc: $18 $02

    db $10                                        ; $71be: $10
    ld [$8b00], sp                                ; $71bf: $08 $00 $8b
    ld b, c                                       ; $71c2: $41
    ld a, a                                       ; $71c3: $7f
    ld c, c                                       ; $71c4: $49
    ld a, a                                       ; $71c5: $7f
    ld d, c                                       ; $71c6: $51
    ld a, a                                       ; $71c7: $7f
    add c                                         ; $71c8: $81
    rst $38                                       ; $71c9: $ff
    cp c                                          ; $71ca: $b9

jr_0e2_71cb:
    rst $38                                       ; $71cb: $ff
    db $fd                                        ; $71cc: $fd
    ld [bc], a                                    ; $71cd: $02
    rst $38                                       ; $71ce: $ff
    add l                                         ; $71cf: $85
    or a                                          ; $71d0: $b7
    ld e, d                                       ; $71d1: $5a
    ld a, [hl]                                    ; $71d2: $7e
    ld l, l                                       ; $71d3: $6d
    ld e, e                                       ; $71d4: $5b
    ld [bc], a                                    ; $71d5: $02
    scf                                           ; $71d6: $37
    inc c                                         ; $71d7: $0c
    nop                                           ; $71d8: $00
    rst $38                                       ; $71d9: $ff
    dec bc                                        ; $71da: $0b
    inc bc                                        ; $71db: $03
    ld hl, sp+$02                                 ; $71dc: $f8 $02
    ld hl, sp+$07                                 ; $71de: $f8 $07
    xor $f9                                       ; $71e0: $ee $f9
    xor $fe                                       ; $71e2: $ee $fe
    cp $f8                                        ; $71e4: $fe $f8
    ld [bc], a                                    ; $71e6: $02
    rra                                           ; $71e7: $1f
    sbc [hl]                                      ; $71e8: $9e
    ccf                                           ; $71e9: $3f
    dec h                                         ; $71ea: $25
    ld a, a                                       ; $71eb: $7f
    ld d, [hl]                                    ; $71ec: $56
    ld a, a                                       ; $71ed: $7f
    ld l, l                                       ; $71ee: $6d
    ld a, a                                       ; $71ef: $7f
    ld e, h                                       ; $71f0: $5c
    ld a, a                                       ; $71f1: $7f
    ld a, d                                       ; $71f2: $7a
    ld a, a                                       ; $71f3: $7f
    ld l, h                                       ; $71f4: $6c
    ld a, a                                       ; $71f5: $7f
    ld c, a                                       ; $71f6: $4f
    ld a, a                                       ; $71f7: $7f
    ld b, a                                       ; $71f8: $47
    cp $87                                        ; $71f9: $fe $87
    db $fc                                        ; $71fb: $fc
    add a                                         ; $71fc: $87
    db $fc                                        ; $71fd: $fc
    xor a                                         ; $71fe: $af
    ld a, c                                       ; $71ff: $79
    ld e, a                                       ; $7200: $5f
    dec a                                         ; $7201: $3d
    ccf                                           ; $7202: $3f
    ld d, [hl]                                    ; $7203: $56
    ld a, [hl]                                    ; $7204: $7e
    ld b, d                                       ; $7205: $42
    ld a, [hl]                                    ; $7206: $7e
    ld [bc], a                                    ; $7207: $02
    ld [$1004], sp                                ; $7208: $08 $04 $10
    add [hl]                                      ; $720b: $86
    jr @+$0a                                      ; $720c: $18 $08

    inc e                                         ; $720e: $1c
    inc b                                         ; $720f: $04
    jr @+$0a                                      ; $7210: $18 $08

    ld [bc], a                                    ; $7212: $02
    db $10                                        ; $7213: $10
    ld [bc], a                                    ; $7214: $02
    ld e, $84                                     ; $7215: $1e $84
    rlca                                          ; $7217: $07
    dec e                                         ; $7218: $1d
    ld d, $1e                                     ; $7219: $16 $1e
    ld [bc], a                                    ; $721b: $02
    jr @+$04                                      ; $721c: $18 $02

    db $10                                        ; $721e: $10
    ld [$8b00], sp                                ; $721f: $08 $00 $8b
    ld b, c                                       ; $7222: $41
    ld a, a                                       ; $7223: $7f
    ld c, c                                       ; $7224: $49
    ld a, a                                       ; $7225: $7f
    ld d, c                                       ; $7226: $51
    ld a, a                                       ; $7227: $7f
    add c                                         ; $7228: $81
    rst $38                                       ; $7229: $ff
    cp c                                          ; $722a: $b9
    rst $38                                       ; $722b: $ff
    db $fd                                        ; $722c: $fd
    ld [bc], a                                    ; $722d: $02
    rst $38                                       ; $722e: $ff
    add l                                         ; $722f: $85
    or a                                          ; $7230: $b7
    ld e, d                                       ; $7231: $5a
    ld a, [hl]                                    ; $7232: $7e
    ld l, l                                       ; $7233: $6d
    ld e, e                                       ; $7234: $5b
    ld [bc], a                                    ; $7235: $02
    scf                                           ; $7236: $37
    inc c                                         ; $7237: $0c
    nop                                           ; $7238: $00
    rst $38                                       ; $7239: $ff
    dec c                                         ; $723a: $0d
    inc b                                         ; $723b: $04
    ld hl, sp+$07                                 ; $723c: $f8 $07
    ld hl, sp+$07                                 ; $723e: $f8 $07
    db $ed                                        ; $7240: $ed
    ld hl, sp-$13                                 ; $7241: $f8 $ed
    nop                                           ; $7243: $00
    db $fd                                        ; $7244: $fd
    ld hl, sp-$03                                 ; $7245: $f8 $fd
    cp $02                                        ; $7247: $fe $02
    ld bc, $0002                                  ; $7249: $01 $02 $00
    ld [bc], a                                    ; $724c: $02
    inc bc                                        ; $724d: $03
    ld [bc], a                                    ; $724e: $02
    dec b                                         ; $724f: $05
    ld b, $01                                     ; $7250: $06 $01
    add d                                         ; $7252: $82
    ld [bc], a                                    ; $7253: $02
    inc bc                                        ; $7254: $03
    inc b                                         ; $7255: $04
    ld bc, $1c02                                  ; $7256: $01 $02 $1c
    adc d                                         ; $7259: $8a
    daa                                           ; $725a: $27
    ccf                                           ; $725b: $3f
    ld a, [hl]                                    ; $725c: $7e
    ld a, l                                       ; $725d: $7d
    rst $38                                       ; $725e: $ff
    ret nz                                        ; $725f: $c0

    db $fd                                        ; $7260: $fd
    or e                                          ; $7261: $b3
    rst $38                                       ; $7262: $ff
    rst $08                                       ; $7263: $cf
    ld [bc], a                                    ; $7264: $02
    or h                                          ; $7265: $b4
    ld [bc], a                                    ; $7266: $02
    cp $02                                        ; $7267: $fe $02
    db $fc                                        ; $7269: $fc
    ld [bc], a                                    ; $726a: $02
    rst $38                                       ; $726b: $ff
    sub h                                         ; $726c: $94
    ld e, l                                       ; $726d: $5d
    db $fd                                        ; $726e: $fd
    ld c, $fe                                     ; $726f: $0e $fe
    ld l, [hl]                                    ; $7271: $6e
    cp $15                                        ; $7272: $fe $15
    db $fd                                        ; $7274: $fd
    adc h                                         ; $7275: $8c
    db $fc                                        ; $7276: $fc
    ld [$90f8], sp                                ; $7277: $08 $f8 $90
    ldh a, [$f8]                                  ; $727a: $f0 $f8
    ld l, b                                       ; $727c: $68
    db $ec                                        ; $727d: $ec
    call nc, $f47c                                ; $727e: $d4 $7c $f4
    ld [bc], a                                    ; $7281: $02
    db $fc                                        ; $7282: $fc
    sub c                                         ; $7283: $91
    ld h, h                                       ; $7284: $64
    db $fc                                        ; $7285: $fc
    cp a                                          ; $7286: $bf
    rst $30                                       ; $7287: $f7
    rst $28                                       ; $7288: $ef
    sbc a                                         ; $7289: $9f
    ld a, l                                       ; $728a: $7d
    ld b, a                                       ; $728b: $47
    ccf                                           ; $728c: $3f
    scf                                           ; $728d: $37
    ld a, a                                       ; $728e: $7f
    ld a, [hl]                                    ; $728f: $7e
    ld a, l                                       ; $7290: $7d
    ld a, e                                       ; $7291: $7b
    ccf                                           ; $7292: $3f
    add hl, sp                                    ; $7293: $39
    ld h, $03                                     ; $7294: $26 $03
    ld a, $0e                                     ; $7296: $3e $0e
    nop                                           ; $7298: $00
    add [hl]                                      ; $7299: $86
    inc hl                                        ; $729a: $23
    ccf                                           ; $729b: $3f
    rrca                                          ; $729c: $0f
    ccf                                           ; $729d: $3f
    cpl                                           ; $729e: $2f
    dec sp                                        ; $729f: $3b
    ld [bc], a                                    ; $72a0: $02
    ld a, $02                                     ; $72a1: $3e $02
    jr nc, jr_0e2_72a7                            ; $72a3: $30 $02

    jr nz, @+$16                                  ; $72a5: $20 $14

jr_0e2_72a7:
    nop                                           ; $72a7: $00
    rst $38                                       ; $72a8: $ff
    dec c                                         ; $72a9: $0d
    inc b                                         ; $72aa: $04
    ld hl, sp+$07                                 ; $72ab: $f8 $07
    ld hl, sp+$07                                 ; $72ad: $f8 $07
    xor $f9                                       ; $72af: $ee $f9
    xor $fc                                       ; $72b1: $ee $fc
    cp $f8                                        ; $72b3: $fe $f8
    cp $ff                                        ; $72b5: $fe $ff
    ld [bc], a                                    ; $72b7: $02
    rrca                                          ; $72b8: $0f
    sub b                                         ; $72b9: $90
    jr nc, jr_0e2_72fb                            ; $72ba: $30 $3f

    dec h                                         ; $72bc: $25
    ccf                                           ; $72bd: $3f
    ld b, a                                       ; $72be: $47
    ld a, [hl]                                    ; $72bf: $7e
    ld l, a                                       ; $72c0: $6f
    ld a, c                                       ; $72c1: $79
    ld a, a                                       ; $72c2: $7f
    ld a, b                                       ; $72c3: $78
    ccf                                           ; $72c4: $3f
    jr nz, jr_0e2_7306                            ; $72c5: $20 $3f

    add hl, sp                                    ; $72c7: $39
    rra                                           ; $72c8: $1f
    inc e                                         ; $72c9: $1c
    ld [bc], a                                    ; $72ca: $02
    rra                                           ; $72cb: $1f
    adc h                                         ; $72cc: $8c
    dec hl                                        ; $72cd: $2b
    ld a, $55                                     ; $72ce: $3e $55
    ld a, a                                       ; $72d0: $7f
    ld d, e                                       ; $72d1: $53
    ld a, a                                       ; $72d2: $7f
    ld d, c                                       ; $72d3: $51
    ld a, a                                       ; $72d4: $7f
    or a                                          ; $72d5: $b7
    rst $38                                       ; $72d6: $ff
    sub e                                         ; $72d7: $93
    rst $38                                       ; $72d8: $ff
    ld [bc], a                                    ; $72d9: $02
    inc b                                         ; $72da: $04
    ld [bc], a                                    ; $72db: $02
    ld b, $81                                     ; $72dc: $06 $81
    dec b                                         ; $72de: $05
    inc bc                                        ; $72df: $03
    rlca                                          ; $72e0: $07
    add [hl]                                      ; $72e1: $86
    ld b, $02                                     ; $72e2: $06 $02
    rlca                                          ; $72e4: $07
    ld bc, $0206                                  ; $72e5: $01 $06 $02
    ld [bc], a                                    ; $72e8: $02
    ld b, $02                                     ; $72e9: $06 $02
    inc b                                         ; $72eb: $04
    inc b                                         ; $72ec: $04
    ld b, $83                                     ; $72ed: $06 $83
    ld [bc], a                                    ; $72ef: $02
    ld b, $02                                     ; $72f0: $06 $02
    inc bc                                        ; $72f2: $03
    ld b, $81                                     ; $72f3: $06 $81
    dec b                                         ; $72f5: $05
    inc bc                                        ; $72f6: $03
    rlca                                          ; $72f7: $07
    add h                                         ; $72f8: $84
    or [hl]                                       ; $72f9: $b6
    rst $38                                       ; $72fa: $ff

jr_0e2_72fb:
    db $ec                                        ; $72fb: $ec
    sbc a                                         ; $72fc: $9f
    ld [bc], a                                    ; $72fd: $02
    ld a, a                                       ; $72fe: $7f
    ld a, [de]                                    ; $72ff: $1a
    nop                                           ; $7300: $00
    adc b                                         ; $7301: $88
    rla                                           ; $7302: $17
    ld a, a                                       ; $7303: $7f
    ld c, e                                       ; $7304: $4b
    ld a, a                                       ; $7305: $7f

jr_0e2_7306:
    ld b, [hl]                                    ; $7306: $46
    ld a, [hl]                                    ; $7307: $7e
    ld c, a                                       ; $7308: $4f
    ld a, a                                       ; $7309: $7f
    ld [bc], a                                    ; $730a: $02
    ld a, $02                                     ; $730b: $3e $02
    jr jr_0e2_7323                                ; $730d: $18 $14

    nop                                           ; $730f: $00
    rst $38                                       ; $7310: $ff
    dec c                                         ; $7311: $0d
    inc b                                         ; $7312: $04
    ld hl, sp+$07                                 ; $7313: $f8 $07
    ld hl, sp+$07                                 ; $7315: $f8 $07
    rst $28                                       ; $7317: $ef
    ld sp, hl                                     ; $7318: $f9
    rst $28                                       ; $7319: $ef
    nop                                           ; $731a: $00
    rst $38                                       ; $731b: $ff
    ld sp, hl                                     ; $731c: $f9
    rst $38                                       ; $731d: $ff
    cp $02                                        ; $731e: $fe $02
    ld bc, $0382                                  ; $7320: $01 $82 $03

jr_0e2_7323:
    ld [bc], a                                    ; $7323: $02
    ld [bc], a                                    ; $7324: $02
    inc bc                                        ; $7325: $03
    ld [bc], a                                    ; $7326: $02
    ld bc, $0388                                  ; $7327: $01 $88 $03
    ld [bc], a                                    ; $732a: $02
    rlca                                          ; $732b: $07
    dec b                                         ; $732c: $05
    inc bc                                        ; $732d: $03
    ld [bc], a                                    ; $732e: $02
    inc bc                                        ; $732f: $03
    ld [bc], a                                    ; $7330: $02
    ld [bc], a                                    ; $7331: $02
    inc bc                                        ; $7332: $03
    ld [bc], a                                    ; $7333: $02
    ld bc, $0002                                  ; $7334: $01 $02 $00
    ld [bc], a                                    ; $7337: $02
    ld [bc], a                                    ; $7338: $02
    add d                                         ; $7339: $82
    rlca                                          ; $733a: $07
    dec b                                         ; $733b: $05
    ld [bc], a                                    ; $733c: $02
    ld e, a                                       ; $733d: $5f
    add d                                         ; $733e: $82
    rst $38                                       ; $733f: $ff
    cp [hl]                                       ; $7340: $be
    ld [bc], a                                    ; $7341: $02
    ld a, a                                       ; $7342: $7f
    ld [bc], a                                    ; $7343: $02
    ld a, h                                       ; $7344: $7c
    and d                                         ; $7345: $a2
    ld a, [hl]                                    ; $7346: $7e
    ld [de], a                                    ; $7347: $12
    ld a, a                                       ; $7348: $7f
    ld h, l                                       ; $7349: $65
    ld a, a                                       ; $734a: $7f
    dec de                                        ; $734b: $1b
    ld a, a                                       ; $734c: $7f
    ld l, a                                       ; $734d: $6f
    ld a, a                                       ; $734e: $7f
    dec bc                                        ; $734f: $0b
    ld a, [hl]                                    ; $7350: $7e
    ld c, $7c                                     ; $7351: $0e $7c
    ld c, h                                       ; $7353: $4c
    ld a, b                                       ; $7354: $78
    jr @+$76                                      ; $7355: $18 $74

    ld a, h                                       ; $7357: $7c
    ld b, h                                       ; $7358: $44
    ld a, h                                       ; $7359: $7c
    ld d, h                                       ; $735a: $54
    ld a, h                                       ; $735b: $7c
    ld e, $7e                                     ; $735c: $1e $7e
    ld e, [hl]                                    ; $735e: $5e
    halt                                          ; $735f: $76
    ld a, [hl]                                    ; $7360: $7e
    ld [hl], $7a                                  ; $7361: $36 $7a
    ld c, $ff                                     ; $7363: $0e $ff
    cp a                                          ; $7365: $bf
    ld a, a                                       ; $7366: $7f
    ld e, a                                       ; $7367: $5f
    ld [bc], a                                    ; $7368: $02
    inc a                                         ; $7369: $3c
    ld [bc], a                                    ; $736a: $02
    db $10                                        ; $736b: $10
    jr jr_0e2_736e                                ; $736c: $18 $00

jr_0e2_736e:
    inc b                                         ; $736e: $04
    rra                                           ; $736f: $1f
    inc e                                         ; $7370: $1c
    nop                                           ; $7371: $00
    rst $38                                       ; $7372: $ff
    dec c                                         ; $7373: $0d
    inc b                                         ; $7374: $04
    ld hl, sp+$07                                 ; $7375: $f8 $07
    ld hl, sp+$07                                 ; $7377: $f8 $07
    rst $28                                       ; $7379: $ef
    ld a, [$00ef]                                 ; $737a: $fa $ef $00
    rst $38                                       ; $737d: $ff
    ld a, [$feff]                                 ; $737e: $fa $ff $fe
    ld [bc], a                                    ; $7381: $02
    ld bc, $0302                                  ; $7382: $01 $02 $03
    ld [bc], a                                    ; $7385: $02
    rlca                                          ; $7386: $07
    adc d                                         ; $7387: $8a
    inc bc                                        ; $7388: $03
    ld [bc], a                                    ; $7389: $02
    rlca                                          ; $738a: $07
    inc b                                         ; $738b: $04
    rlca                                          ; $738c: $07
    ld b, $03                                     ; $738d: $06 $03
    ld [bc], a                                    ; $738f: $02
    inc bc                                        ; $7390: $03
    ld [bc], a                                    ; $7391: $02
    ld [bc], a                                    ; $7392: $02
    ld bc, $0302                                  ; $7393: $01 $02 $03
    ld [bc], a                                    ; $7396: $02
    rrca                                          ; $7397: $0f
    add [hl]                                      ; $7398: $86
    inc sp                                        ; $7399: $33
    ld a, $3f                                     ; $739a: $3e $3f
    inc l                                         ; $739c: $2c
    rra                                           ; $739d: $1f
    ld e, $02                                     ; $739e: $1e $02
    ld e, a                                       ; $73a0: $5f
    add d                                         ; $73a1: $82
    and $bf                                       ; $73a2: $e6 $bf
    ld [bc], a                                    ; $73a4: $02
    inc a                                         ; $73a5: $3c
    ld [bc], a                                    ; $73a6: $02
    ld a, $03                                     ; $73a7: $3e $03
    ccf                                           ; $73a9: $3f
    adc e                                         ; $73aa: $8b
    cpl                                           ; $73ab: $2f
    ccf                                           ; $73ac: $3f
    rlca                                          ; $73ad: $07
    ld a, $36                                     ; $73ae: $3e $36
    ccf                                           ; $73b0: $3f
    dec b                                         ; $73b1: $05
    ld a, $22                                     ; $73b2: $3e $22
    ld a, $06                                     ; $73b4: $3e $06
    rlca                                          ; $73b6: $07
    ccf                                           ; $73b7: $3f
    adc a                                         ; $73b8: $8f
    rra                                           ; $73b9: $1f
    ccf                                           ; $73ba: $3f
    dec c                                         ; $73bb: $0d
    ccf                                           ; $73bc: $3f
    ld sp, $3e1e                                  ; $73bd: $31 $1e $3e
    ld hl, sp-$01                                 ; $73c0: $f8 $ff
    pop af                                        ; $73c2: $f1
    rst $18                                       ; $73c3: $df
    ld a, c                                       ; $73c4: $79
    ld l, a                                       ; $73c5: $6f
    ld a, d                                       ; $73c6: $7a
    ld l, [hl]                                    ; $73c7: $6e
    ld [bc], a                                    ; $73c8: $02
    inc [hl]                                      ; $73c9: $34
    ld d, $00                                     ; $73ca: $16 $00
    add h                                         ; $73cc: $84
    ld bc, $090f                                  ; $73cd: $01 $0f $09
    rrca                                          ; $73d0: $0f
    ld [bc], a                                    ; $73d1: $02
    ld c, $1a                                     ; $73d2: $0e $1a
    nop                                           ; $73d4: $00
    rst $38                                       ; $73d5: $ff
    dec c                                         ; $73d6: $0d
    inc b                                         ; $73d7: $04
    ld hl, sp+$07                                 ; $73d8: $f8 $07
    ld hl, sp+$07                                 ; $73da: $f8 $07
    db $ed                                        ; $73dc: $ed
    db $fc                                        ; $73dd: $fc
    rst $28                                       ; $73de: $ef
    nop                                           ; $73df: $00
    db $fd                                        ; $73e0: $fd
    ld hl, sp-$03                                 ; $73e1: $f8 $fd
    db $fc                                        ; $73e3: $fc
    ld [bc], a                                    ; $73e4: $02
    jr z, jr_0e2_73e9                             ; $73e5: $28 $02

    ld e, a                                       ; $73e7: $5f
    ld [bc], a                                    ; $73e8: $02

jr_0e2_73e9:
    ld a, a                                       ; $73e9: $7f
    sbc d                                         ; $73ea: $9a
    ccf                                           ; $73eb: $3f
    cpl                                           ; $73ec: $2f
    ld a, a                                       ; $73ed: $7f
    ld b, a                                       ; $73ee: $47
    ld a, a                                       ; $73ef: $7f
    ld e, e                                       ; $73f0: $5b
    ld a, a                                       ; $73f1: $7f
    ld b, e                                       ; $73f2: $43
    rst $38                                       ; $73f3: $ff
    add l                                         ; $73f4: $85
    ld a, a                                       ; $73f5: $7f
    ld d, e                                       ; $73f6: $53
    ccf                                           ; $73f7: $3f
    daa                                           ; $73f8: $27
    rra                                           ; $73f9: $1f
    dec e                                         ; $73fa: $1d
    dec c                                         ; $73fb: $0d
    rrca                                          ; $73fc: $0f
    ld a, [bc]                                    ; $73fd: $0a
    rrca                                          ; $73fe: $0f
    rra                                           ; $73ff: $1f
    dec e                                         ; $7400: $1d
    rra                                           ; $7401: $1f
    dec e                                         ; $7402: $1d
    rra                                           ; $7403: $1f
    dec de                                        ; $7404: $1b
    ld [bc], a                                    ; $7405: $02
    ld [$0c82], sp                                ; $7406: $08 $82 $0c
    inc b                                         ; $7409: $04
    ld b, $0c                                     ; $740a: $06 $0c
    ld [bc], a                                    ; $740c: $02
    ld [$0482], sp                                ; $740d: $08 $82 $04
    inc c                                         ; $7410: $0c
    ld [bc], a                                    ; $7411: $02
    ld c, $02                                     ; $7412: $0e $02
    rrca                                          ; $7414: $0f
    ld [bc], a                                    ; $7415: $02
    ld c, $06                                     ; $7416: $0e $06
    rrca                                          ; $7418: $0f
    ld [bc], a                                    ; $7419: $02
    ld b, $82                                     ; $741a: $06 $82
    ldh a, [$b0]                                  ; $741c: $f0 $b0
    ld [bc], a                                    ; $741e: $02
    ldh a, [rSC]                                  ; $741f: $f0 $02
    rlca                                          ; $7421: $07
    adc [hl]                                      ; $7422: $8e
    rrca                                          ; $7423: $0f
    inc c                                         ; $7424: $0c
    ld d, a                                       ; $7425: $57
    ld e, a                                       ; $7426: $5f
    add sp, -$41                                  ; $7427: $e8 $bf
    ld [hl], e                                    ; $7429: $73
    ld a, a                                       ; $742a: $7f
    db $e4                                        ; $742b: $e4
    cp h                                          ; $742c: $bc
    ld [hl], h                                    ; $742d: $74
    ld e, h                                       ; $742e: $5c
    jr c, jr_0e2_7459                             ; $742f: $38 $28

    ld [bc], a                                    ; $7431: $02
    db $10                                        ; $7432: $10
    ld [de], a                                    ; $7433: $12
    nop                                           ; $7434: $00
    add h                                         ; $7435: $84
    inc bc                                        ; $7436: $03
    rrca                                          ; $7437: $0f
    dec b                                         ; $7438: $05
    rrca                                          ; $7439: $0f
    ld [bc], a                                    ; $743a: $02
    ld c, $16                                     ; $743b: $0e $16
    nop                                           ; $743d: $00
    rst $38                                       ; $743e: $ff
    dec c                                         ; $743f: $0d
    inc b                                         ; $7440: $04
    ld hl, sp+$07                                 ; $7441: $f8 $07
    ld hl, sp+$07                                 ; $7443: $f8 $07
    xor $fa                                       ; $7445: $ee $fa
    xor $00                                       ; $7447: $ee $00
    cp $fa                                        ; $7449: $fe $fa
    cp $fe                                        ; $744b: $fe $fe
    ld [bc], a                                    ; $744d: $02
    ld bc, $0692                                  ; $744e: $01 $92 $06
    rlca                                          ; $7451: $07
    dec bc                                        ; $7452: $0b
    rrca                                          ; $7453: $0f
    rlca                                          ; $7454: $07
    inc b                                         ; $7455: $04
    rlca                                          ; $7456: $07
    inc b                                         ; $7457: $04
    rlca                                          ; $7458: $07

jr_0e2_7459:
    dec b                                         ; $7459: $05
    rrca                                          ; $745a: $0f
    ld [$0607], sp                                ; $745b: $08 $07 $06
    rlca                                          ; $745e: $07
    dec b                                         ; $745f: $05
    inc bc                                        ; $7460: $03
    ld [bc], a                                    ; $7461: $02
    ld [bc], a                                    ; $7462: $02
    inc bc                                        ; $7463: $03
    adc d                                         ; $7464: $8a
    ld [bc], a                                    ; $7465: $02
    inc bc                                        ; $7466: $03
    ld b, $07                                     ; $7467: $06 $07
    set 1, a                                      ; $7469: $cb $cf
    cp $bf                                        ; $746b: $fe $bf
    cp $fb                                        ; $746d: $fe $fb
    ld [bc], a                                    ; $746f: $02
    inc a                                         ; $7470: $3c
    sub d                                         ; $7471: $92
    ld h, $3e                                     ; $7472: $26 $3e
    inc de                                        ; $7474: $13
    ccf                                           ; $7475: $3f
    dec hl                                        ; $7476: $2b
    ccf                                           ; $7477: $3f
    dec [hl]                                      ; $7478: $35
    rra                                           ; $7479: $1f
    ccf                                           ; $747a: $3f
    rrca                                          ; $747b: $0f
    ld a, $0a                                     ; $747c: $3e $0a
    ld a, $06                                     ; $747e: $3e $06
    inc a                                         ; $7480: $3c
    inc c                                         ; $7481: $0c
    jr c, jr_0e2_748c                             ; $7482: $38 $08

    ld [bc], a                                    ; $7484: $02
    inc a                                         ; $7485: $3c
    adc [hl]                                      ; $7486: $8e
    inc [hl]                                      ; $7487: $34
    inc a                                         ; $7488: $3c
    inc [hl]                                      ; $7489: $34
    inc a                                         ; $748a: $3c
    inc h                                         ; $748b: $24

jr_0e2_748c:
    inc a                                         ; $748c: $3c
    inc l                                         ; $748d: $2c
    inc a                                         ; $748e: $3c
    inc d                                         ; $748f: $14
    inc a                                         ; $7490: $3c
    rst $38                                       ; $7491: $ff
    cp l                                          ; $7492: $bd
    rst $38                                       ; $7493: $ff
    cp a                                          ; $7494: $bf
    ld [bc], a                                    ; $7495: $02
    rst $38                                       ; $7496: $ff
    add d                                         ; $7497: $82
    ld a, c                                       ; $7498: $79
    ld e, c                                       ; $7499: $59
    ld [bc], a                                    ; $749a: $02
    ld h, b                                       ; $749b: $60
    ld d, $00                                     ; $749c: $16 $00
    add c                                         ; $749e: $81
    dec bc                                        ; $749f: $0b
    inc bc                                        ; $74a0: $03
    rrca                                          ; $74a1: $0f
    ld [bc], a                                    ; $74a2: $02
    ld c, $02                                     ; $74a3: $0e $02
    inc c                                         ; $74a5: $0c
    jr jr_0e2_74a8                                ; $74a6: $18 $00

jr_0e2_74a8:
    rst $38                                       ; $74a8: $ff
    dec c                                         ; $74a9: $0d
    inc b                                         ; $74aa: $04
    ld hl, sp+$07                                 ; $74ab: $f8 $07
    ld hl, sp+$07                                 ; $74ad: $f8 $07
    xor $f8                                       ; $74af: $ee $f8
    xor $fc                                       ; $74b1: $ee $fc
    cp $f8                                        ; $74b3: $fe $f8
    cp $00                                        ; $74b5: $fe $00
    ld [bc], a                                    ; $74b7: $02
    ld b, $9e                                     ; $74b8: $06 $9e
    add hl, de                                    ; $74ba: $19
    rra                                           ; $74bb: $1f
    ld [hl-], a                                   ; $74bc: $32
    ccf                                           ; $74bd: $3f
    dec l                                         ; $74be: $2d
    ccf                                           ; $74bf: $3f
    ld b, a                                       ; $74c0: $47
    ld a, a                                       ; $74c1: $7f
    ld l, a                                       ; $74c2: $6f
    ld a, h                                       ; $74c3: $7c
    sbc a                                         ; $74c4: $9f
    rst $38                                       ; $74c5: $ff
    xor a                                         ; $74c6: $af
    ld hl, sp+$5f                                 ; $74c7: $f8 $5f
    ld a, h                                       ; $74c9: $7c
    cp a                                          ; $74ca: $bf
    ld sp, hl                                     ; $74cb: $f9
    ld e, a                                       ; $74cc: $5f
    ld a, h                                       ; $74cd: $7c
    xor a                                         ; $74ce: $af
    rst $38                                       ; $74cf: $ff
    ld l, l                                       ; $74d0: $6d
    ld a, a                                       ; $74d1: $7f
    inc a                                         ; $74d2: $3c
    scf                                           ; $74d3: $37
    ccf                                           ; $74d4: $3f
    dec [hl]                                      ; $74d5: $35
    dec sp                                        ; $74d6: $3b
    inc l                                         ; $74d7: $2c
    ld [bc], a                                    ; $74d8: $02
    ld [$0485], sp                                ; $74d9: $08 $85 $04
    inc c                                         ; $74dc: $0c
    ld b, $0e                                     ; $74dd: $06 $0e
    ld a, [bc]                                    ; $74df: $0a
    ld [bc], a                                    ; $74e0: $02
    ld c, $8b                                     ; $74e1: $0e $8b
    ld b, $0c                                     ; $74e3: $06 $0c
    inc b                                         ; $74e5: $04
    ld c, $06                                     ; $74e6: $0e $06
    inc c                                         ; $74e8: $0c
    inc b                                         ; $74e9: $04
    ld c, $02                                     ; $74ea: $0e $02
    inc c                                         ; $74ec: $0c
    inc b                                         ; $74ed: $04
    ld [bc], a                                    ; $74ee: $02
    ld [$0002], sp                                ; $74ef: $08 $02 $00
    ld b, $08                                     ; $74f2: $06 $08
    ld [bc], a                                    ; $74f4: $02
    rrca                                          ; $74f5: $0f
    adc b                                         ; $74f6: $88
    ld a, $29                                     ; $74f7: $3e $29
    ccf                                           ; $74f9: $3f
    dec hl                                        ; $74fa: $2b
    halt                                          ; $74fb: $76
    ld d, a                                       ; $74fc: $57
    rst $30                                       ; $74fd: $f7
    sub a                                         ; $74fe: $97
    ld [bc], a                                    ; $74ff: $02
    ld h, b                                       ; $7500: $60
    ld d, $00                                     ; $7501: $16 $00
    adc [hl]                                      ; $7503: $8e
    ret z                                         ; $7504: $c8

    ld hl, sp+$06                                 ; $7505: $f8 $06
    cp $05                                        ; $7507: $fe $05
    rst $38                                       ; $7509: $ff
    ld [$4efe], a                                 ; $750a: $ea $fe $4e
    ld a, [hl]                                    ; $750d: $7e
    add hl, sp                                    ; $750e: $39
    ccf                                           ; $750f: $3f
    ld e, $16                                     ; $7510: $1e $16
    ld [bc], a                                    ; $7512: $02
    ld [$0010], sp                                ; $7513: $08 $10 $00
    rst $38                                       ; $7516: $ff
    dec bc                                        ; $7517: $0b
    inc bc                                        ; $7518: $03
    ld hl, sp+$07                                 ; $7519: $f8 $07
    ld hl, sp+$07                                 ; $751b: $f8 $07
    xor $f8                                       ; $751d: $ee $f8
    rst $28                                       ; $751f: $ef
    ei                                            ; $7520: $fb
    cp $f9                                        ; $7521: $fe $f9
    ld [bc], a                                    ; $7523: $02
    rra                                           ; $7524: $1f
    sub h                                         ; $7525: $94
    inc [hl]                                      ; $7526: $34
    dec sp                                        ; $7527: $3b
    ld e, l                                       ; $7528: $5d
    ld a, a                                       ; $7529: $7f
    xor [hl]                                      ; $752a: $ae
    db $db                                        ; $752b: $db
    rst $08                                       ; $752c: $cf
    cp c                                          ; $752d: $b9
    cp a                                          ; $752e: $bf
    or $ff                                        ; $752f: $f6 $ff
    ret nc                                        ; $7531: $d0

    ld a, a                                       ; $7532: $7f
    ld [hl], b                                    ; $7533: $70
    ccf                                           ; $7534: $3f
    ld [hl-], a                                   ; $7535: $32
    rra                                           ; $7536: $1f
    add hl, de                                    ; $7537: $19
    rra                                           ; $7538: $1f
    rla                                           ; $7539: $17
    inc b                                         ; $753a: $04
    ld a, $05                                     ; $753b: $3e $05
    ld a, a                                       ; $753d: $7f
    add c                                         ; $753e: $81
    ld e, a                                       ; $753f: $5f
    ld [bc], a                                    ; $7540: $02
    inc b                                         ; $7541: $04
    add h                                         ; $7542: $84
    ld [bc], a                                    ; $7543: $02
    ld b, $05                                     ; $7544: $06 $05
    rlca                                          ; $7546: $07
    ld [bc], a                                    ; $7547: $02
    ld b, $02                                     ; $7548: $06 $02
    inc b                                         ; $754a: $04
    add d                                         ; $754b: $82
    ld b, $02                                     ; $754c: $06 $02
    ld b, $04                                     ; $754e: $06 $04
    inc c                                         ; $7550: $0c
    nop                                           ; $7551: $00
    ld [bc], a                                    ; $7552: $02
    ld hl, sp-$72                                 ; $7553: $f8 $8e
    ret nz                                        ; $7555: $c0

    add b                                         ; $7556: $80
    ld l, [hl]                                    ; $7557: $6e
    ld e, [hl]                                    ; $7558: $5e
    inc a                                         ; $7559: $3c
    inc [hl]                                      ; $755a: $34
    inc a                                         ; $755b: $3c
    inc h                                         ; $755c: $24
    inc a                                         ; $755d: $3c
    inc [hl]                                      ; $755e: $34
    ld a, $26                                     ; $755f: $3e $26
    ld a, [hl]                                    ; $7561: $7e
    ld b, [hl]                                    ; $7562: $46
    ld [bc], a                                    ; $7563: $02
    ld a, [hl]                                    ; $7564: $7e
    add d                                         ; $7565: $82
    ld [hl], a                                    ; $7566: $77
    ld e, c                                       ; $7567: $59
    ld [bc], a                                    ; $7568: $02
    ld a, a                                       ; $7569: $7f
    inc c                                         ; $756a: $0c
    nop                                           ; $756b: $00
    rst $38                                       ; $756c: $ff
    dec c                                         ; $756d: $0d
    inc b                                         ; $756e: $04
    ld hl, sp+$07                                 ; $756f: $f8 $07
    ld hl, sp+$07                                 ; $7571: $f8 $07
    xor $f8                                       ; $7573: $ee $f8
    xor $00                                       ; $7575: $ee $00
    cp $fb                                        ; $7577: $fe $fb
    cp $00                                        ; $7579: $fe $00
    ld [bc], a                                    ; $757b: $02
    rrca                                          ; $757c: $0f
    sbc b                                         ; $757d: $98
    dec de                                        ; $757e: $1b
    inc e                                         ; $757f: $1c
    ld l, $3f                                     ; $7580: $2e $3f
    ld d, a                                       ; $7582: $57
    ld l, l                                       ; $7583: $6d
    ld b, a                                       ; $7584: $47
    ld a, h                                       ; $7585: $7c
    ld e, a                                       ; $7586: $5f
    ld a, e                                       ; $7587: $7b
    ld a, a                                       ; $7588: $7f
    ld l, b                                       ; $7589: $68
    ccf                                           ; $758a: $3f
    jr c, jr_0e2_75cc                             ; $758b: $38 $3f

    add hl, sp                                    ; $758d: $39
    ld a, a                                       ; $758e: $7f
    ld e, h                                       ; $758f: $5c
    rst $38                                       ; $7590: $ff
    cp e                                          ; $7591: $bb
    rst $38                                       ; $7592: $ff
    sbc a                                         ; $7593: $9f
    ld a, a                                       ; $7594: $7f
    ld e, a                                       ; $7595: $5f
    ld [bc], a                                    ; $7596: $02
    ld a, a                                       ; $7597: $7f
    ld [bc], a                                    ; $7598: $02
    ccf                                           ; $7599: $3f
    ld [bc], a                                    ; $759a: $02
    rra                                           ; $759b: $1f
    ld [bc], a                                    ; $759c: $02
    add b                                         ; $759d: $80
    add [hl]                                      ; $759e: $86
    ld b, b                                       ; $759f: $40
    ret nz                                        ; $75a0: $c0

    and b                                         ; $75a1: $a0
    ldh [$50], a                                  ; $75a2: $e0 $50
    ldh a, [rSC]                                  ; $75a4: $f0 $02
    ldh [$86], a                                  ; $75a6: $e0 $86
    ret nz                                        ; $75a8: $c0

    ld b, b                                       ; $75a9: $40
    ldh [rNR41], a                                ; $75aa: $e0 $20
    ret nz                                        ; $75ac: $c0

    ld b, b                                       ; $75ad: $40
    dec b                                         ; $75ae: $05
    ret nz                                        ; $75af: $c0

    add c                                         ; $75b0: $81
    ld b, b                                       ; $75b1: $40
    inc b                                         ; $75b2: $04
    add b                                         ; $75b3: $80
    ld [bc], a                                    ; $75b4: $02
    inc bc                                        ; $75b5: $03
    add h                                         ; $75b6: $84
    rst $38                                       ; $75b7: $ff
    db $fd                                        ; $75b8: $fd
    rst $38                                       ; $75b9: $ff
    add a                                         ; $75ba: $87
    inc bc                                        ; $75bb: $03
    rst $38                                       ; $75bc: $ff
    add e                                         ; $75bd: $83
    ldh a, [$fb]                                  ; $75be: $f0 $fb
    rst $20                                       ; $75c0: $e7
    ld [bc], a                                    ; $75c1: $02
    ccf                                           ; $75c2: $3f
    jr jr_0e2_75c5                                ; $75c3: $18 $00

jr_0e2_75c5:
    adc b                                         ; $75c5: $88
    rra                                           ; $75c6: $1f
    dec e                                         ; $75c7: $1d
    rra                                           ; $75c8: $1f
    dec b                                         ; $75c9: $05
    dec e                                         ; $75ca: $1d
    rlca                                          ; $75cb: $07

jr_0e2_75cc:
    ld e, $1a                                     ; $75cc: $1e $1a
    ld [bc], a                                    ; $75ce: $02
    inc c                                         ; $75cf: $0c
    ld d, $00                                     ; $75d0: $16 $00
    rst $38                                       ; $75d2: $ff
    dec c                                         ; $75d3: $0d
    inc b                                         ; $75d4: $04
    ld hl, sp+$07                                 ; $75d5: $f8 $07
    ld hl, sp+$07                                 ; $75d7: $f8 $07
    db $ed                                        ; $75d9: $ed
    cp $ee                                        ; $75da: $fe $ee
    nop                                           ; $75dc: $00
    db $fd                                        ; $75dd: $fd

jr_0e2_75de:
    ld a, [$fefd]                                 ; $75de: $fa $fd $fe
    ld [bc], a                                    ; $75e1: $02
    ld a, $92                                     ; $75e2: $3e $92
    ld c, c                                       ; $75e4: $49
    ld [hl], a                                    ; $75e5: $77
    and h                                         ; $75e6: $a4
    ei                                            ; $75e7: $fb
    ld l, c                                       ; $75e8: $69
    ld a, [hl]                                    ; $75e9: $7e
    ld a, h                                       ; $75ea: $7c
    ld d, a                                       ; $75eb: $57
    ld a, [hl]                                    ; $75ec: $7e
    ld e, e                                       ; $75ed: $5b
    rst $38                                       ; $75ee: $ff
    add e                                         ; $75ef: $83
    ld a, a                                       ; $75f0: $7f
    ld b, d                                       ; $75f1: $42
    ld a, a                                       ; $75f2: $7f
    ld [hl], e                                    ; $75f3: $73
    ld a, $26                                     ; $75f4: $3e $26
    ld [bc], a                                    ; $75f6: $02
    ld e, $8a                                     ; $75f7: $1e $8a
    scf                                           ; $75f9: $37
    ccf                                           ; $75fa: $3f
    dec l                                         ; $75fb: $2d
    ccf                                           ; $75fc: $3f
    add hl, hl                                    ; $75fd: $29
    ccf                                           ; $75fe: $3f
    ld a, e                                       ; $75ff: $7b
    ld a, a                                       ; $7600: $7f
    ld l, e                                       ; $7601: $6b
    ld a, a                                       ; $7602: $7f
    ld [bc], a                                    ; $7603: $02
    inc bc                                        ; $7604: $03
    ld [bc], a                                    ; $7605: $02
    ld [bc], a                                    ; $7606: $02
    add e                                         ; $7607: $83
    ld bc, $0103                                  ; $7608: $01 $03 $01
    inc bc                                        ; $760b: $03
    inc bc                                        ; $760c: $03
    inc b                                         ; $760d: $04
    ld [bc], a                                    ; $760e: $02
    stop                                          ; $760f: $10 $00
    adc b                                         ; $7611: $88
    sub h                                         ; $7612: $94
    db $fc                                        ; $7613: $fc
    call c, $ffd8                                 ; $7614: $dc $d8 $ff
    cp l                                          ; $7617: $bd
    rst $38                                       ; $7618: $ff
    cp a                                          ; $7619: $bf
    ld [bc], a                                    ; $761a: $02
    rst $38                                       ; $761b: $ff
    add d                                         ; $761c: $82
    ld e, c                                       ; $761d: $59
    ld a, c                                       ; $761e: $79
    ld [bc], a                                    ; $761f: $02
    ld h, b                                       ; $7620: $60
    ld d, $00                                     ; $7621: $16 $00
    add c                                         ; $7623: $81
    dec bc                                        ; $7624: $0b
    inc bc                                        ; $7625: $03
    rrca                                          ; $7626: $0f
    ld [bc], a                                    ; $7627: $02
    ld c, $02                                     ; $7628: $0e $02
    inc c                                         ; $762a: $0c
    ld d, $00                                     ; $762b: $16 $00
    rst $38                                       ; $762d: $ff
    dec bc                                        ; $762e: $0b
    inc bc                                        ; $762f: $03
    db $fc                                        ; $7630: $fc
    rlca                                          ; $7631: $07
    ld hl, sp+$07                                 ; $7632: $f8 $07
    db $ed                                        ; $7634: $ed
    ld a, [$00ed]                                 ; $7635: $fa $ed $00
    db $fd                                        ; $7638: $fd
    rst $38                                       ; $7639: $ff
    ld [bc], a                                    ; $763a: $02
    dec b                                         ; $763b: $05
    add l                                         ; $763c: $85
    dec bc                                        ; $763d: $0b
    rrca                                          ; $763e: $0f
    inc c                                         ; $763f: $0c
    rrca                                          ; $7640: $0f
    dec bc                                        ; $7641: $0b
    ld [$910f], sp                                ; $7642: $08 $0f $91
    dec bc                                        ; $7645: $0b
    ld a, a                                       ; $7646: $7f
    ld a, h                                       ; $7647: $7c
    rst $38                                       ; $7648: $ff
    and a                                         ; $7649: $a7
    ld a, a                                       ; $764a: $7f
    ld h, b                                       ; $764b: $60
    rra                                           ; $764c: $1f
    jr jr_0e2_7656                                ; $764d: $18 $07

    dec b                                         ; $764f: $05
    rlca                                          ; $7650: $07
    inc b                                         ; $7651: $04
    rlca                                          ; $7652: $07
    inc b                                         ; $7653: $04
    rlca                                          ; $7654: $07
    dec b                                         ; $7655: $05

jr_0e2_7656:
    ld [bc], a                                    ; $7656: $02
    jr nc, jr_0e2_765b                            ; $7657: $30 $02

    jr c, jr_0e2_75de                             ; $7659: $38 $83

jr_0e2_765b:
    inc [hl]                                      ; $765b: $34
    inc a                                         ; $765c: $3c
    inc l                                         ; $765d: $2c
    dec b                                         ; $765e: $05
    inc a                                         ; $765f: $3c
    xor b                                         ; $7660: $a8
    inc [hl]                                      ; $7661: $34
    inc a                                         ; $7662: $3c
    inc l                                         ; $7663: $2c
    inc a                                         ; $7664: $3c
    ld a, $3a                                     ; $7665: $3e $3a
    ccf                                           ; $7667: $3f
    rrca                                          ; $7668: $0f
    ccf                                           ; $7669: $3f
    dec b                                         ; $766a: $05
    ld a, $02                                     ; $766b: $3e $02
    inc a                                         ; $766d: $3c
    inc b                                         ; $766e: $04
    inc a                                         ; $766f: $3c
    inc [hl]                                      ; $7670: $34
    inc a                                         ; $7671: $3c
    inc b                                         ; $7672: $04
    ld a, $3a                                     ; $7673: $3e $3a
    ld [c], a                                     ; $7675: $e2
    cp $4a                                        ; $7676: $fe $4a
    ld a, [hl]                                    ; $7678: $7e
    ld e, d                                       ; $7679: $5a
    ld a, [hl]                                    ; $767a: $7e
    sbc d                                         ; $767b: $9a
    cp $8e                                        ; $767c: $fe $8e
    cp $ed                                        ; $767e: $fe $ed
    rst $38                                       ; $7680: $ff
    sbc e                                         ; $7681: $9b
    rst $38                                       ; $7682: $ff
    db $fd                                        ; $7683: $fd
    rst $38                                       ; $7684: $ff
    sbc c                                         ; $7685: $99
    rst $38                                       ; $7686: $ff
    sbc l                                         ; $7687: $9d
    rst $38                                       ; $7688: $ff
    ld [bc], a                                    ; $7689: $02
    halt                                          ; $768a: $76
    ld a, [bc]                                    ; $768b: $0a
    nop                                           ; $768c: $00
    rst $38                                       ; $768d: $ff
    dec bc                                        ; $768e: $0b
    inc bc                                        ; $768f: $03
    db $fc                                        ; $7690: $fc
    rlca                                          ; $7691: $07
    ld hl, sp+$07                                 ; $7692: $f8 $07
    db $ed                                        ; $7694: $ed
    ld a, [$00ed]                                 ; $7695: $fa $ed $00
    db $fd                                        ; $7698: $fd
    rst $38                                       ; $7699: $ff
    ld [bc], a                                    ; $769a: $02
    ld b, $82                                     ; $769b: $06 $82
    dec e                                         ; $769d: $1d
    rra                                           ; $769e: $1f
    inc bc                                        ; $769f: $03
    rrca                                          ; $76a0: $0f
    sbc c                                         ; $76a1: $99
    ld a, [bc]                                    ; $76a2: $0a
    rrca                                          ; $76a3: $0f
    ld [$0a0f], sp                                ; $76a4: $08 $0f $0a
    rra                                           ; $76a7: $1f
    db $10                                        ; $76a8: $10
    rrca                                          ; $76a9: $0f
    ld [$7e7f], sp                                ; $76aa: $08 $7f $7e
    rst $38                                       ; $76ad: $ff
    and a                                         ; $76ae: $a7
    ld a, a                                       ; $76af: $7f
    ld h, b                                       ; $76b0: $60
    rra                                           ; $76b1: $1f
    jr jr_0e2_76bb                                ; $76b2: $18 $07

    dec b                                         ; $76b4: $05
    rlca                                          ; $76b5: $07
    inc b                                         ; $76b6: $04
    rlca                                          ; $76b7: $07
    inc b                                         ; $76b8: $04
    rlca                                          ; $76b9: $07
    dec b                                         ; $76ba: $05

jr_0e2_76bb:
    ld [bc], a                                    ; $76bb: $02
    jr nc, jr_0e2_76c0                            ; $76bc: $30 $02

    inc a                                         ; $76be: $3c
    add c                                         ; $76bf: $81

jr_0e2_76c0:
    ld a, [de]                                    ; $76c0: $1a
    dec b                                         ; $76c1: $05
    ld a, $83                                     ; $76c2: $3e $83
    ld a, [hl-]                                   ; $76c4: $3a
    ld a, $34                                     ; $76c5: $3e $34
    ld [bc], a                                    ; $76c7: $02
    inc a                                         ; $76c8: $3c
    and l                                         ; $76c9: $a5
    inc e                                         ; $76ca: $1c
    ld a, $3a                                     ; $76cb: $3e $3a
    ccf                                           ; $76cd: $3f
    rrca                                          ; $76ce: $0f
    ccf                                           ; $76cf: $3f
    dec b                                         ; $76d0: $05
    ld a, $02                                     ; $76d1: $3e $02
    inc a                                         ; $76d3: $3c
    inc b                                         ; $76d4: $04
    inc a                                         ; $76d5: $3c
    inc [hl]                                      ; $76d6: $34
    inc a                                         ; $76d7: $3c
    inc b                                         ; $76d8: $04
    ld a, $3a                                     ; $76d9: $3e $3a
    ld [c], a                                     ; $76db: $e2
    cp $4a                                        ; $76dc: $fe $4a
    ld a, [hl]                                    ; $76de: $7e
    ld e, d                                       ; $76df: $5a
    ld a, [hl]                                    ; $76e0: $7e
    sbc d                                         ; $76e1: $9a
    cp $8e                                        ; $76e2: $fe $8e
    cp $ed                                        ; $76e4: $fe $ed
    rst $38                                       ; $76e6: $ff
    sbc e                                         ; $76e7: $9b
    rst $38                                       ; $76e8: $ff
    db $fd                                        ; $76e9: $fd
    rst $38                                       ; $76ea: $ff
    sbc c                                         ; $76eb: $99
    rst $38                                       ; $76ec: $ff
    sbc l                                         ; $76ed: $9d
    rst $38                                       ; $76ee: $ff
    ld [bc], a                                    ; $76ef: $02
    halt                                          ; $76f0: $76
    ld a, [bc]                                    ; $76f1: $0a
    nop                                           ; $76f2: $00
    rst $38                                       ; $76f3: $ff
    dec c                                         ; $76f4: $0d
    inc b                                         ; $76f5: $04
    ld hl, sp+$07                                 ; $76f6: $f8 $07
    ld hl, sp+$07                                 ; $76f8: $f8 $07
    db $ed                                        ; $76fa: $ed
    ld hl, sp-$12                                 ; $76fb: $f8 $ee
    db $fc                                        ; $76fd: $fc
    db $fd                                        ; $76fe: $fd
    ld sp, hl                                     ; $76ff: $f9
    db $fd                                        ; $7700: $fd
    rst $38                                       ; $7701: $ff
    ld [bc], a                                    ; $7702: $02
    dec a                                         ; $7703: $3d
    sub b                                         ; $7704: $90
    halt                                          ; $7705: $76
    ld a, a                                       ; $7706: $7f
    ei                                            ; $7707: $fb
    rst $38                                       ; $7708: $ff
    cp a                                          ; $7709: $bf
    db $fd                                        ; $770a: $fd
    rst $18                                       ; $770b: $df
    or $ff                                        ; $770c: $f6 $ff
    ldh a, [rIE]                                  ; $770e: $f0 $ff
    ldh a, [rIE]                                  ; $7710: $f0 $ff
    di                                            ; $7712: $f3
    rst $38                                       ; $7713: $ff
    ld sp, hl                                     ; $7714: $f9
    ld [bc], a                                    ; $7715: $02
    ld a, a                                       ; $7716: $7f
    adc h                                         ; $7717: $8c
    ld [hl-], a                                   ; $7718: $32
    ld a, $25                                     ; $7719: $3e $25
    ccf                                           ; $771b: $3f
    dec [hl]                                      ; $771c: $35
    ccf                                           ; $771d: $3f
    dec [hl]                                      ; $771e: $35
    ccf                                           ; $771f: $3f
    ld a, [hl-]                                   ; $7720: $3a
    ccf                                           ; $7721: $3f
    ld l, e                                       ; $7722: $6b
    ld a, a                                       ; $7723: $7f
    ld [$8208], sp                                ; $7724: $08 $08 $82
    inc c                                         ; $7727: $0c
    inc b                                         ; $7728: $04
    inc b                                         ; $7729: $04
    ld [$000a], sp                                ; $772a: $08 $0a $00
    ld [bc], a                                    ; $772d: $02
    ld [$0c02], sp                                ; $772e: $08 $02 $0c
    add h                                         ; $7731: $84
    ld c, $0a                                     ; $7732: $0e $0a
    ld a, l                                       ; $7734: $7d
    rst $08                                       ; $7735: $cf
    ld [bc], a                                    ; $7736: $02
    ldh [$88], a                                  ; $7737: $e0 $88
    halt                                          ; $7739: $76
    ld a, a                                       ; $773a: $7f
    ld h, b                                       ; $773b: $60
    ld a, a                                       ; $773c: $7f
    ld a, $3f                                     ; $773d: $3e $3f
    ld [bc], a                                    ; $773f: $02
    inc bc                                        ; $7740: $03
    ld [bc], a                                    ; $7741: $02
    ld bc, $0016                                  ; $7742: $01 $16 $00
    adc h                                         ; $7745: $8c
    rlca                                          ; $7746: $07
    ccf                                           ; $7747: $3f
    dec c                                         ; $7748: $0d
    ccf                                           ; $7749: $3f
    ld e, $3e                                     ; $774a: $1e $3e
    dec a                                         ; $774c: $3d
    cpl                                           ; $774d: $2f
    ld a, [hl-]                                   ; $774e: $3a
    ld a, $14                                     ; $774f: $3e $14
    inc e                                         ; $7751: $1c
    ld [bc], a                                    ; $7752: $02
    ld [$0010], sp                                ; $7753: $08 $10 $00
    rst $38                                       ; $7756: $ff
    dec c                                         ; $7757: $0d
    inc b                                         ; $7758: $04
    ld hl, sp+$07                                 ; $7759: $f8 $07
    ld hl, sp+$07                                 ; $775b: $f8 $07
    rst $28                                       ; $775d: $ef
    ld hl, sp-$12                                 ; $775e: $f8 $ee
    rst $38                                       ; $7760: $ff
    cp $f8                                        ; $7761: $fe $f8
    cp $fc                                        ; $7763: $fe $fc
    ld [bc], a                                    ; $7765: $02
    inc bc                                        ; $7766: $03
    adc h                                         ; $7767: $8c
    dec b                                         ; $7768: $05
    rlca                                          ; $7769: $07
    inc bc                                        ; $776a: $03
    ld [bc], a                                    ; $776b: $02
    inc bc                                        ; $776c: $03
    ld [bc], a                                    ; $776d: $02
    inc bc                                        ; $776e: $03
    ld [bc], a                                    ; $776f: $02
    rlca                                          ; $7770: $07
    inc b                                         ; $7771: $04
    inc bc                                        ; $7772: $03
    ld [bc], a                                    ; $7773: $02
    ld [bc], a                                    ; $7774: $02
    inc bc                                        ; $7775: $03
    ld [bc], a                                    ; $7776: $02
    ld bc, $0004                                  ; $7777: $01 $04 $00
    ld [bc], a                                    ; $777a: $02
    dec b                                         ; $777b: $05
    adc b                                         ; $777c: $88
    ld c, $0b                                     ; $777d: $0e $0b
    ld e, a                                       ; $777f: $5f
    ld e, [hl]                                    ; $7780: $5e
    db $e3                                        ; $7781: $e3
    cp a                                          ; $7782: $bf
    ld a, a                                       ; $7783: $7f
    ld a, h                                       ; $7784: $7c
    ld [bc], a                                    ; $7785: $02
    ld a, b                                       ; $7786: $78
    sbc [hl]                                      ; $7787: $9e
    inc h                                         ; $7788: $24
    ld a, h                                       ; $7789: $7c
    ld d, d                                       ; $778a: $52
    ld a, [hl]                                    ; $778b: $7e
    ld l, d                                       ; $778c: $6a
    ld a, $75                                     ; $778d: $3e $75
    rra                                           ; $778f: $1f
    ld a, a                                       ; $7790: $7f
    ld c, a                                       ; $7791: $4f
    ld a, a                                       ; $7792: $7f
    dec bc                                        ; $7793: $0b
    ld a, [hl]                                    ; $7794: $7e

jr_0e2_7795:
    ld b, $7c                                     ; $7795: $06 $7c
    ld c, h                                       ; $7797: $4c
    ld a, b                                       ; $7798: $78
    jr jr_0e2_7803                                ; $7799: $18 $68

    ld a, b                                       ; $779b: $78
    ld e, b                                       ; $779c: $58
    ld l, b                                       ; $779d: $68
    ld a, b                                       ; $779e: $78
    jr z, jr_0e2_7819                             ; $779f: $28 $78

    jr c, jr_0e2_781b                             ; $77a1: $38 $78

    jr z, @+$3a                                   ; $77a3: $28 $38

    ld l, b                                       ; $77a5: $68
    ld [bc], a                                    ; $77a6: $02
    nop                                           ; $77a7: $00
    add h                                         ; $77a8: $84
    db $e3                                        ; $77a9: $e3
    cp [hl]                                       ; $77aa: $be
    ld [hl], a                                    ; $77ab: $77
    ld e, a                                       ; $77ac: $5f
    ld [bc], a                                    ; $77ad: $02
    inc a                                         ; $77ae: $3c
    ld [bc], a                                    ; $77af: $02
    db $10                                        ; $77b0: $10
    ld d, $00                                     ; $77b1: $16 $00
    add d                                         ; $77b3: $82
    rrca                                          ; $77b4: $0f
    inc bc                                        ; $77b5: $03
    ld [bc], a                                    ; $77b6: $02
    rrca                                          ; $77b7: $0f
    ld [bc], a                                    ; $77b8: $02
    ld c, $1a                                     ; $77b9: $0e $1a
    nop                                           ; $77bb: $00
    rst $38                                       ; $77bc: $ff
    dec c                                         ; $77bd: $0d
    inc b                                         ; $77be: $04
    ld hl, sp+$07                                 ; $77bf: $f8 $07
    ld hl, sp+$07                                 ; $77c1: $f8 $07
    xor $f8                                       ; $77c3: $ee $f8
    xor $fe                                       ; $77c5: $ee $fe
    cp $f8                                        ; $77c7: $fe $f8
    cp $fc                                        ; $77c9: $fe $fc
    ld [bc], a                                    ; $77cb: $02
    inc bc                                        ; $77cc: $03
    add e                                         ; $77cd: $83
    dec b                                         ; $77ce: $05
    rlca                                          ; $77cf: $07
    dec bc                                        ; $77d0: $0b
    ld [bc], a                                    ; $77d1: $02
    rrca                                          ; $77d2: $0f
    adc e                                         ; $77d3: $8b
    inc c                                         ; $77d4: $0c
    rlca                                          ; $77d5: $07
    inc b                                         ; $77d6: $04
    rlca                                          ; $77d7: $07
    ld b, $07                                     ; $77d8: $06 $07
    inc b                                         ; $77da: $04
    rlca                                          ; $77db: $07
    ld b, $07                                     ; $77dc: $06 $07
    dec b                                         ; $77de: $05
    ld [bc], a                                    ; $77df: $02
    inc bc                                        ; $77e0: $03
    ld [bc], a                                    ; $77e1: $02
    ld bc, $0002                                  ; $77e2: $01 $02 $00
    ld [bc], a                                    ; $77e5: $02
    dec b                                         ; $77e6: $05
    add [hl]                                      ; $77e7: $86
    ld c, $0b                                     ; $77e8: $0e $0b
    ld e, a                                       ; $77ea: $5f
    ld e, [hl]                                    ; $77eb: $5e
    db $e3                                        ; $77ec: $e3
    cp a                                          ; $77ed: $bf
    ld [bc], a                                    ; $77ee: $02
    jr c, jr_0e2_7795                             ; $77ef: $38 $a4

    inc b                                         ; $77f1: $04
    inc a                                         ; $77f2: $3c
    ld a, [hl+]                                   ; $77f3: $2a
    ld a, $37                                     ; $77f4: $3e $37
    ccf                                           ; $77f6: $3f
    dec sp                                        ; $77f7: $3b
    rrca                                          ; $77f8: $0f
    ccf                                           ; $77f9: $3f
    daa                                           ; $77fa: $27
    ccf                                           ; $77fb: $3f

jr_0e2_77fc:
    dec b                                         ; $77fc: $05
    ld a, $06                                     ; $77fd: $3e $06
    inc a                                         ; $77ff: $3c
    inc h                                         ; $7800: $24
    inc a                                         ; $7801: $3c
    inc c                                         ; $7802: $0c

jr_0e2_7803:
    inc [hl]                                      ; $7803: $34
    inc a                                         ; $7804: $3c
    inc l                                         ; $7805: $2c
    inc [hl]                                      ; $7806: $34
    inc a                                         ; $7807: $3c
    inc d                                         ; $7808: $14
    inc a                                         ; $7809: $3c
    inc e                                         ; $780a: $1c
    inc a                                         ; $780b: $3c
    inc d                                         ; $780c: $14
    inc e                                         ; $780d: $1c
    inc [hl]                                      ; $780e: $34
    ld a, a                                       ; $780f: $7f
    ld a, h                                       ; $7810: $7c
    db $e3                                        ; $7811: $e3
    cp [hl]                                       ; $7812: $be
    ld [hl], a                                    ; $7813: $77
    ld e, a                                       ; $7814: $5f
    ld [bc], a                                    ; $7815: $02
    inc a                                         ; $7816: $3c
    ld [bc], a                                    ; $7817: $02
    db $10                                        ; $7818: $10

jr_0e2_7819:
    ld d, $00                                     ; $7819: $16 $00

jr_0e2_781b:
    add d                                         ; $781b: $82
    rrca                                          ; $781c: $0f
    inc bc                                        ; $781d: $03
    ld [bc], a                                    ; $781e: $02
    rrca                                          ; $781f: $0f
    ld [bc], a                                    ; $7820: $02
    ld c, $1a                                     ; $7821: $0e $1a
    nop                                           ; $7823: $00
    rst $38                                       ; $7824: $ff
    dec c                                         ; $7825: $0d
    inc b                                         ; $7826: $04
    ld hl, sp+$07                                 ; $7827: $f8 $07
    ld hl, sp+$07                                 ; $7829: $f8 $07
    xor $f8                                       ; $782b: $ee $f8
    xor $fe                                       ; $782d: $ee $fe
    cp $f8                                        ; $782f: $fe $f8
    cp $fc                                        ; $7831: $fe $fc
    ld [bc], a                                    ; $7833: $02
    inc bc                                        ; $7834: $03
    sub d                                         ; $7835: $92
    ld b, $07                                     ; $7836: $06 $07
    dec bc                                        ; $7838: $0b
    rrca                                          ; $7839: $0f
    dec bc                                        ; $783a: $0b
    ld c, $0f                                     ; $783b: $0e $0f
    inc c                                         ; $783d: $0c
    rlca                                          ; $783e: $07
    ld b, $07                                     ; $783f: $06 $07
    inc b                                         ; $7841: $04
    rlca                                          ; $7842: $07
    dec b                                         ; $7843: $05
    rlca                                          ; $7844: $07
    dec b                                         ; $7845: $05
    inc bc                                        ; $7846: $03
    ld [bc], a                                    ; $7847: $02
    ld [bc], a                                    ; $7848: $02
    ld bc, $0002                                  ; $7849: $01 $02 $00
    ld [bc], a                                    ; $784c: $02
    dec b                                         ; $784d: $05
    add [hl]                                      ; $784e: $86
    ld c, $0b                                     ; $784f: $0e $0b
    ld e, a                                       ; $7851: $5f
    ld e, [hl]                                    ; $7852: $5e
    db $e3                                        ; $7853: $e3
    cp a                                          ; $7854: $bf
    ld [bc], a                                    ; $7855: $02
    jr c, jr_0e2_77fc                             ; $7856: $38 $a4

    inc d                                         ; $7858: $14
    inc a                                         ; $7859: $3c
    ld a, [hl+]                                   ; $785a: $2a
    ld a, $37                                     ; $785b: $3e $37
    rra                                           ; $785d: $1f
    add hl, sp                                    ; $785e: $39
    rrca                                          ; $785f: $0f
    ccf                                           ; $7860: $3f
    rla                                           ; $7861: $17
    ld a, $02                                     ; $7862: $3e $02
    ld a, $06                                     ; $7864: $3e $06
    inc a                                         ; $7866: $3c
    inc h                                         ; $7867: $24
    inc a                                         ; $7868: $3c
    inc c                                         ; $7869: $0c
    inc [hl]                                      ; $786a: $34
    inc a                                         ; $786b: $3c
    inc l                                         ; $786c: $2c
    inc [hl]                                      ; $786d: $34
    inc a                                         ; $786e: $3c
    inc d                                         ; $786f: $14
    inc a                                         ; $7870: $3c
    inc e                                         ; $7871: $1c
    inc a                                         ; $7872: $3c
    inc d                                         ; $7873: $14
    inc e                                         ; $7874: $1c
    inc [hl]                                      ; $7875: $34
    ld a, a                                       ; $7876: $7f
    ld a, h                                       ; $7877: $7c
    db $e3                                        ; $7878: $e3
    cp [hl]                                       ; $7879: $be
    ld [hl], a                                    ; $787a: $77
    ld e, a                                       ; $787b: $5f
    ld [bc], a                                    ; $787c: $02
    inc a                                         ; $787d: $3c
    ld [bc], a                                    ; $787e: $02
    db $10                                        ; $787f: $10
    ld d, $00                                     ; $7880: $16 $00
    add d                                         ; $7882: $82
    rrca                                          ; $7883: $0f
    inc bc                                        ; $7884: $03
    ld [bc], a                                    ; $7885: $02
    rrca                                          ; $7886: $0f
    ld [bc], a                                    ; $7887: $02
    ld c, $1a                                     ; $7888: $0e $1a
    nop                                           ; $788a: $00
    rst $38                                       ; $788b: $ff
    dec c                                         ; $788c: $0d
    inc b                                         ; $788d: $04
    ld hl, sp+$07                                 ; $788e: $f8 $07
    ld hl, sp+$07                                 ; $7890: $f8 $07
    xor $f8                                       ; $7892: $ee $f8
    xor $fe                                       ; $7894: $ee $fe
    cp $f8                                        ; $7896: $fe $f8
    cp $fc                                        ; $7898: $fe $fc
    ld [bc], a                                    ; $789a: $02
    inc bc                                        ; $789b: $03
    add e                                         ; $789c: $83
    dec b                                         ; $789d: $05
    rlca                                          ; $789e: $07
    dec bc                                        ; $789f: $0b
    ld [bc], a                                    ; $78a0: $02
    rrca                                          ; $78a1: $0f
    adc e                                         ; $78a2: $8b
    inc c                                         ; $78a3: $0c
    rlca                                          ; $78a4: $07
    inc b                                         ; $78a5: $04
    rlca                                          ; $78a6: $07
    ld b, $07                                     ; $78a7: $06 $07
    inc b                                         ; $78a9: $04
    rlca                                          ; $78aa: $07
    ld b, $07                                     ; $78ab: $06 $07
    dec b                                         ; $78ad: $05
    ld [bc], a                                    ; $78ae: $02
    rrca                                          ; $78af: $0f
    adc h                                         ; $78b0: $8c
    rla                                           ; $78b1: $17
    dec de                                        ; $78b2: $1b
    rrca                                          ; $78b3: $0f
    add hl, bc                                    ; $78b4: $09
    rlca                                          ; $78b5: $07
    ld b, $0f                                     ; $78b6: $06 $0f
    dec bc                                        ; $78b8: $0b
    ld e, a                                       ; $78b9: $5f
    ld e, [hl]                                    ; $78ba: $5e
    db $e3                                        ; $78bb: $e3
    cp a                                          ; $78bc: $bf
    ld [bc], a                                    ; $78bd: $02
    jr c, @-$67                                   ; $78be: $38 $97

    inc b                                         ; $78c0: $04
    inc a                                         ; $78c1: $3c
    ld a, [hl+]                                   ; $78c2: $2a
    ld a, $37                                     ; $78c3: $3e $37
    ccf                                           ; $78c5: $3f
    dec sp                                        ; $78c6: $3b
    rrca                                          ; $78c7: $0f
    ccf                                           ; $78c8: $3f
    daa                                           ; $78c9: $27
    ccf                                           ; $78ca: $3f
    dec b                                         ; $78cb: $05
    ld a, $06                                     ; $78cc: $3e $06
    inc a                                         ; $78ce: $3c
    inc h                                         ; $78cf: $24
    inc a                                         ; $78d0: $3c
    inc c                                         ; $78d1: $0c
    inc [hl]                                      ; $78d2: $34
    inc a                                         ; $78d3: $3c
    inc l                                         ; $78d4: $2c
    inc [hl]                                      ; $78d5: $34
    inc d                                         ; $78d6: $14
    ld [bc], a                                    ; $78d7: $02
    inc a                                         ; $78d8: $3c
    adc e                                         ; $78d9: $8b
    inc c                                         ; $78da: $0c
    inc a                                         ; $78db: $3c
    inc l                                         ; $78dc: $2c
    inc e                                         ; $78dd: $1c
    inc [hl]                                      ; $78de: $34
    ld a, [hl]                                    ; $78df: $7e
    ld a, a                                       ; $78e0: $7f
    ldh [$bf], a                                  ; $78e1: $e0 $bf
    ld [hl], a                                    ; $78e3: $77
    ld e, a                                       ; $78e4: $5f
    ld [bc], a                                    ; $78e5: $02
    inc a                                         ; $78e6: $3c
    ld [bc], a                                    ; $78e7: $02
    db $10                                        ; $78e8: $10
    ld d, $00                                     ; $78e9: $16 $00
    add h                                         ; $78eb: $84
    dec c                                         ; $78ec: $0d
    rrca                                          ; $78ed: $0f
    rlca                                          ; $78ee: $07
    rrca                                          ; $78ef: $0f
    ld [bc], a                                    ; $78f0: $02
    ld c, $1a                                     ; $78f1: $0e $1a
    nop                                           ; $78f3: $00
    rst $38                                       ; $78f4: $ff
    dec c                                         ; $78f5: $0d
    inc b                                         ; $78f6: $04
    ld hl, sp+$07                                 ; $78f7: $f8 $07
    ld hl, sp+$07                                 ; $78f9: $f8 $07
    rst $28                                       ; $78fb: $ef
    ld hl, sp-$12                                 ; $78fc: $f8 $ee
    rst $38                                       ; $78fe: $ff
    cp $f8                                        ; $78ff: $fe $f8
    cp $fc                                        ; $7901: $fe $fc
    ld [bc], a                                    ; $7903: $02
    inc bc                                        ; $7904: $03
    sub h                                         ; $7905: $94
    dec b                                         ; $7906: $05
    rlca                                          ; $7907: $07
    inc bc                                        ; $7908: $03
    ld [bc], a                                    ; $7909: $02
    inc bc                                        ; $790a: $03
    ld [bc], a                                    ; $790b: $02
    inc bc                                        ; $790c: $03
    ld [bc], a                                    ; $790d: $02
    rlca                                          ; $790e: $07
    inc b                                         ; $790f: $04
    inc bc                                        ; $7910: $03
    ld [bc], a                                    ; $7911: $02
    rlca                                          ; $7912: $07
    dec b                                         ; $7913: $05
    rrca                                          ; $7914: $0f
    add hl, bc                                    ; $7915: $09
    dec bc                                        ; $7916: $0b
    dec c                                         ; $7917: $0d
    rlca                                          ; $7918: $07
    ld b, $02                                     ; $7919: $06 $02
    rlca                                          ; $791b: $07
    adc b                                         ; $791c: $88
    rrca                                          ; $791d: $0f
    dec bc                                        ; $791e: $0b
    ld e, a                                       ; $791f: $5f
    ld e, [hl]                                    ; $7920: $5e
    db $e3                                        ; $7921: $e3
    cp a                                          ; $7922: $bf
    ld a, [hl]                                    ; $7923: $7e
    ld a, a                                       ; $7924: $7f
    ld [bc], a                                    ; $7925: $02
    ld a, b                                       ; $7926: $78
    sub a                                         ; $7927: $97
    inc h                                         ; $7928: $24
    ld a, h                                       ; $7929: $7c
    ld d, d                                       ; $792a: $52
    ld a, [hl]                                    ; $792b: $7e
    ld l, d                                       ; $792c: $6a
    ld a, $75                                     ; $792d: $3e $75
    rra                                           ; $792f: $1f
    ld a, a                                       ; $7930: $7f

jr_0e2_7931:
    ld c, a                                       ; $7931: $4f
    ld a, a                                       ; $7932: $7f
    dec bc                                        ; $7933: $0b
    ld a, [hl]                                    ; $7934: $7e
    ld b, $7c                                     ; $7935: $06 $7c
    ld c, h                                       ; $7937: $4c
    ld a, b                                       ; $7938: $78
    jr jr_0e2_79a3                                ; $7939: $18 $68

    ld a, b                                       ; $793b: $78
    ld e, b                                       ; $793c: $58
    ld l, b                                       ; $793d: $68
    ld a, b                                       ; $793e: $78
    ld [bc], a                                    ; $793f: $02
    jr c, jr_0e2_7944                             ; $7940: $38 $02

    ld e, b                                       ; $7942: $58
    add e                                         ; $7943: $83

jr_0e2_7944:
    ld a, b                                       ; $7944: $78
    jr @+$6a                                      ; $7945: $18 $68

    ld [bc], a                                    ; $7947: $02
    nop                                           ; $7948: $00
    add h                                         ; $7949: $84
    ldh [$bf], a                                  ; $794a: $e0 $bf
    ld [hl], a                                    ; $794c: $77
    ld e, a                                       ; $794d: $5f
    ld [bc], a                                    ; $794e: $02
    inc a                                         ; $794f: $3c
    ld [bc], a                                    ; $7950: $02
    db $10                                        ; $7951: $10
    ld d, $00                                     ; $7952: $16 $00
    add h                                         ; $7954: $84
    dec c                                         ; $7955: $0d
    rrca                                          ; $7956: $0f
    rlca                                          ; $7957: $07
    rrca                                          ; $7958: $0f
    ld [bc], a                                    ; $7959: $02
    ld c, $1a                                     ; $795a: $0e $1a
    nop                                           ; $795c: $00
    rst $38                                       ; $795d: $ff
    dec c                                         ; $795e: $0d
    inc b                                         ; $795f: $04
    ld hl, sp+$07                                 ; $7960: $f8 $07
    ld hl, sp+$07                                 ; $7962: $f8 $07
    rst $28                                       ; $7964: $ef
    ld hl, sp-$12                                 ; $7965: $f8 $ee
    rst $38                                       ; $7967: $ff
    cp $f8                                        ; $7968: $fe $f8
    cp $fc                                        ; $796a: $fe $fc
    ld [bc], a                                    ; $796c: $02
    inc bc                                        ; $796d: $03
    sub h                                         ; $796e: $94
    dec b                                         ; $796f: $05
    rlca                                          ; $7970: $07
    inc bc                                        ; $7971: $03
    ld [bc], a                                    ; $7972: $02
    inc bc                                        ; $7973: $03
    ld [bc], a                                    ; $7974: $02
    inc bc                                        ; $7975: $03
    ld [bc], a                                    ; $7976: $02
    rlca                                          ; $7977: $07
    dec b                                         ; $7978: $05
    inc bc                                        ; $7979: $03
    ld [bc], a                                    ; $797a: $02
    rlca                                          ; $797b: $07
    inc b                                         ; $797c: $04
    rlca                                          ; $797d: $07
    dec b                                         ; $797e: $05
    inc bc                                        ; $797f: $03
    ld [bc], a                                    ; $7980: $02
    inc bc                                        ; $7981: $03
    ld [bc], a                                    ; $7982: $02
    ld [bc], a                                    ; $7983: $02
    dec b                                         ; $7984: $05
    adc b                                         ; $7985: $88
    ld c, $0b                                     ; $7986: $0e $0b
    ld e, a                                       ; $7988: $5f
    ld e, [hl]                                    ; $7989: $5e
    db $e3                                        ; $798a: $e3
    cp a                                          ; $798b: $bf
    ld a, [hl]                                    ; $798c: $7e
    ld a, a                                       ; $798d: $7f
    ld [bc], a                                    ; $798e: $02
    ld a, b                                       ; $798f: $78
    sub e                                         ; $7990: $93
    inc h                                         ; $7991: $24
    ld a, h                                       ; $7992: $7c
    ld d, d                                       ; $7993: $52
    ld a, [hl]                                    ; $7994: $7e
    ld l, d                                       ; $7995: $6a
    ld a, $75                                     ; $7996: $3e $75
    rra                                           ; $7998: $1f
    ld a, a                                       ; $7999: $7f
    ld c, a                                       ; $799a: $4f

jr_0e2_799b:
    ld a, a                                       ; $799b: $7f
    dec bc                                        ; $799c: $0b
    ld a, $46                                     ; $799d: $3e $46
    ld a, h                                       ; $799f: $7c
    ld c, h                                       ; $79a0: $4c
    jr c, jr_0e2_79fb                             ; $79a1: $38 $58

jr_0e2_79a3:
    ld l, b                                       ; $79a3: $68
    ld [bc], a                                    ; $79a4: $02
    ld a, b                                       ; $79a5: $78
    add [hl]                                      ; $79a6: $86
    ld l, b                                       ; $79a7: $68
    ld e, b                                       ; $79a8: $58
    jr c, jr_0e2_7a23                             ; $79a9: $38 $78

    ld e, b                                       ; $79ab: $58
    ld a, b                                       ; $79ac: $78
    ld [bc], a                                    ; $79ad: $02
    jr c, jr_0e2_7931                             ; $79ae: $38 $81

    ld c, b                                       ; $79b0: $48
    ld [bc], a                                    ; $79b1: $02
    nop                                           ; $79b2: $00
    add h                                         ; $79b3: $84
    ldh [$bf], a                                  ; $79b4: $e0 $bf
    ld [hl], a                                    ; $79b6: $77
    ld e, a                                       ; $79b7: $5f
    ld [bc], a                                    ; $79b8: $02
    inc a                                         ; $79b9: $3c
    ld [bc], a                                    ; $79ba: $02
    db $10                                        ; $79bb: $10
    ld d, $00                                     ; $79bc: $16 $00
    add h                                         ; $79be: $84
    dec c                                         ; $79bf: $0d
    rrca                                          ; $79c0: $0f
    rlca                                          ; $79c1: $07
    rrca                                          ; $79c2: $0f
    ld [bc], a                                    ; $79c3: $02
    ld c, $1a                                     ; $79c4: $0e $1a
    nop                                           ; $79c6: $00
    rst $38                                       ; $79c7: $ff
    dec c                                         ; $79c8: $0d
    inc b                                         ; $79c9: $04
    ld hl, sp+$07                                 ; $79ca: $f8 $07
    ld hl, sp+$07                                 ; $79cc: $f8 $07
    rst $28                                       ; $79ce: $ef
    ld hl, sp-$12                                 ; $79cf: $f8 $ee
    rst $38                                       ; $79d1: $ff
    cp $f8                                        ; $79d2: $fe $f8
    cp $fc                                        ; $79d4: $fe $fc
    ld [bc], a                                    ; $79d6: $02
    inc bc                                        ; $79d7: $03
    sub h                                         ; $79d8: $94
    dec b                                         ; $79d9: $05
    rlca                                          ; $79da: $07
    inc bc                                        ; $79db: $03
    ld [bc], a                                    ; $79dc: $02
    inc bc                                        ; $79dd: $03
    ld [bc], a                                    ; $79de: $02
    inc bc                                        ; $79df: $03
    ld [bc], a                                    ; $79e0: $02
    rlca                                          ; $79e1: $07
    dec b                                         ; $79e2: $05
    inc bc                                        ; $79e3: $03
    ld [bc], a                                    ; $79e4: $02
    dec b                                         ; $79e5: $05
    ld b, $07                                     ; $79e6: $06 $07
    dec b                                         ; $79e8: $05
    inc bc                                        ; $79e9: $03
    ld [bc], a                                    ; $79ea: $02
    inc bc                                        ; $79eb: $03
    ld [bc], a                                    ; $79ec: $02
    ld [bc], a                                    ; $79ed: $02
    dec b                                         ; $79ee: $05
    adc b                                         ; $79ef: $88
    ld c, $0b                                     ; $79f0: $0e $0b
    ld e, a                                       ; $79f2: $5f
    ld e, [hl]                                    ; $79f3: $5e
    db $e3                                        ; $79f4: $e3
    cp a                                          ; $79f5: $bf
    ld a, [hl]                                    ; $79f6: $7e
    ld a, a                                       ; $79f7: $7f
    ld [bc], a                                    ; $79f8: $02
    ld a, b                                       ; $79f9: $78
    sub e                                         ; $79fa: $93

jr_0e2_79fb:
    inc h                                         ; $79fb: $24
    ld a, h                                       ; $79fc: $7c
    ld d, d                                       ; $79fd: $52
    ld a, [hl]                                    ; $79fe: $7e
    ld l, d                                       ; $79ff: $6a
    ld a, $75                                     ; $7a00: $3e $75
    rra                                           ; $7a02: $1f
    ld a, a                                       ; $7a03: $7f

jr_0e2_7a04:
    ld c, a                                       ; $7a04: $4f
    ld a, a                                       ; $7a05: $7f
    dec bc                                        ; $7a06: $0b
    ld a, [hl]                                    ; $7a07: $7e
    ld b, [hl]                                    ; $7a08: $46
    ld a, h                                       ; $7a09: $7c
    ld c, h                                       ; $7a0a: $4c
    jr c, jr_0e2_7a65                             ; $7a0b: $38 $58

    ld l, b                                       ; $7a0d: $68
    ld [bc], a                                    ; $7a0e: $02
    ld a, b                                       ; $7a0f: $78
    add [hl]                                      ; $7a10: $86
    ld l, b                                       ; $7a11: $68
    ld e, b                                       ; $7a12: $58
    jr c, jr_0e2_7a8d                             ; $7a13: $38 $78

    ld e, b                                       ; $7a15: $58
    ld a, b                                       ; $7a16: $78
    ld [bc], a                                    ; $7a17: $02
    jr c, jr_0e2_799b                             ; $7a18: $38 $81

    ld c, b                                       ; $7a1a: $48
    ld [bc], a                                    ; $7a1b: $02
    nop                                           ; $7a1c: $00
    add h                                         ; $7a1d: $84
    ldh [$bf], a                                  ; $7a1e: $e0 $bf
    ld [hl], a                                    ; $7a20: $77
    ld e, a                                       ; $7a21: $5f
    ld [bc], a                                    ; $7a22: $02

jr_0e2_7a23:
    inc a                                         ; $7a23: $3c
    ld [bc], a                                    ; $7a24: $02
    db $10                                        ; $7a25: $10
    ld d, $00                                     ; $7a26: $16 $00
    add h                                         ; $7a28: $84
    dec c                                         ; $7a29: $0d
    rrca                                          ; $7a2a: $0f
    rlca                                          ; $7a2b: $07
    rrca                                          ; $7a2c: $0f
    ld [bc], a                                    ; $7a2d: $02
    ld c, $1a                                     ; $7a2e: $0e $1a
    nop                                           ; $7a30: $00
    rst $38                                       ; $7a31: $ff
    dec c                                         ; $7a32: $0d
    inc b                                         ; $7a33: $04
    ld hl, sp+$07                                 ; $7a34: $f8 $07
    ld hl, sp+$07                                 ; $7a36: $f8 $07
    rst $28                                       ; $7a38: $ef
    ld hl, sp-$12                                 ; $7a39: $f8 $ee
    rst $38                                       ; $7a3b: $ff
    cp $f8                                        ; $7a3c: $fe $f8
    cp $fc                                        ; $7a3e: $fe $fc
    ld [bc], a                                    ; $7a40: $02
    inc bc                                        ; $7a41: $03
    sub h                                         ; $7a42: $94
    dec b                                         ; $7a43: $05
    rlca                                          ; $7a44: $07
    inc bc                                        ; $7a45: $03
    ld [bc], a                                    ; $7a46: $02
    inc bc                                        ; $7a47: $03
    ld [bc], a                                    ; $7a48: $02
    inc bc                                        ; $7a49: $03
    ld [bc], a                                    ; $7a4a: $02
    rlca                                          ; $7a4b: $07
    ld b, $07                                     ; $7a4c: $06 $07
    dec b                                         ; $7a4e: $05
    rrca                                          ; $7a4f: $0f
    add hl, bc                                    ; $7a50: $09
    dec c                                         ; $7a51: $0d
    dec bc                                        ; $7a52: $0b
    rlca                                          ; $7a53: $07
    dec b                                         ; $7a54: $05
    inc bc                                        ; $7a55: $03
    ld [bc], a                                    ; $7a56: $02
    ld [bc], a                                    ; $7a57: $02
    dec b                                         ; $7a58: $05
    adc b                                         ; $7a59: $88
    ld c, $0b                                     ; $7a5a: $0e $0b
    ld e, a                                       ; $7a5c: $5f
    ld e, [hl]                                    ; $7a5d: $5e
    db $e3                                        ; $7a5e: $e3
    cp a                                          ; $7a5f: $bf
    ld a, [hl]                                    ; $7a60: $7e
    ld a, a                                       ; $7a61: $7f
    ld [bc], a                                    ; $7a62: $02
    ld a, b                                       ; $7a63: $78
    sbc e                                         ; $7a64: $9b

jr_0e2_7a65:
    inc h                                         ; $7a65: $24
    ld a, h                                       ; $7a66: $7c
    ld d, d                                       ; $7a67: $52
    ld a, [hl]                                    ; $7a68: $7e
    ld l, d                                       ; $7a69: $6a
    ld a, $75                                     ; $7a6a: $3e $75
    rra                                           ; $7a6c: $1f
    ld a, a                                       ; $7a6d: $7f
    ld c, a                                       ; $7a6e: $4f
    ld a, a                                       ; $7a6f: $7f
    dec bc                                        ; $7a70: $0b
    ld a, [hl]                                    ; $7a71: $7e
    ld b, $7c                                     ; $7a72: $06 $7c
    ld c, h                                       ; $7a74: $4c
    ld a, b                                       ; $7a75: $78
    jr jr_0e2_7ae0                                ; $7a76: $18 $68

    ld a, b                                       ; $7a78: $78
    ld e, b                                       ; $7a79: $58
    ld l, b                                       ; $7a7a: $68
    ld a, b                                       ; $7a7b: $78
    jr c, jr_0e2_7af6                             ; $7a7c: $38 $78

    ld e, b                                       ; $7a7e: $58
    ld l, b                                       ; $7a7f: $68
    ld [bc], a                                    ; $7a80: $02
    jr c, jr_0e2_7a04                             ; $7a81: $38 $81

    ld c, b                                       ; $7a83: $48
    ld [bc], a                                    ; $7a84: $02
    nop                                           ; $7a85: $00
    add h                                         ; $7a86: $84
    ldh [$bf], a                                  ; $7a87: $e0 $bf
    ld [hl], a                                    ; $7a89: $77
    ld e, a                                       ; $7a8a: $5f
    ld [bc], a                                    ; $7a8b: $02
    inc a                                         ; $7a8c: $3c

jr_0e2_7a8d:
    ld [bc], a                                    ; $7a8d: $02
    db $10                                        ; $7a8e: $10
    ld d, $00                                     ; $7a8f: $16 $00
    add h                                         ; $7a91: $84
    dec c                                         ; $7a92: $0d
    rrca                                          ; $7a93: $0f
    rlca                                          ; $7a94: $07
    rrca                                          ; $7a95: $0f
    ld [bc], a                                    ; $7a96: $02
    ld c, $1a                                     ; $7a97: $0e $1a
    nop                                           ; $7a99: $00
    rst $38                                       ; $7a9a: $ff
    dec c                                         ; $7a9b: $0d
    inc b                                         ; $7a9c: $04
    ld hl, sp+$07                                 ; $7a9d: $f8 $07
    ld hl, sp+$07                                 ; $7a9f: $f8 $07
    rst $28                                       ; $7aa1: $ef
    ld hl, sp-$12                                 ; $7aa2: $f8 $ee
    nop                                           ; $7aa4: $00
    cp $f8                                        ; $7aa5: $fe $f8
    cp $fc                                        ; $7aa7: $fe $fc
    ld [bc], a                                    ; $7aa9: $02
    ld bc, $0282                                  ; $7aaa: $01 $82 $02
    inc bc                                        ; $7aad: $03
    ld b, $01                                     ; $7aae: $06 $01
    sub [hl]                                      ; $7ab0: $96
    inc de                                        ; $7ab1: $13
    ld [de], a                                    ; $7ab2: $12
    add hl, sp                                    ; $7ab3: $39
    add hl, hl                                    ; $7ab4: $29
    dec a                                         ; $7ab5: $3d
    dec h                                         ; $7ab6: $25
    inc e                                         ; $7ab7: $1c
    inc d                                         ; $7ab8: $14
    ld c, $0a                                     ; $7ab9: $0e $0a
    rlca                                          ; $7abb: $07
    dec b                                         ; $7abc: $05
    rlca                                          ; $7abd: $07
    ld b, $0f                                     ; $7abe: $06 $0f
    dec bc                                        ; $7ac0: $0b
    ld e, [hl]                                    ; $7ac1: $5e
    ld e, a                                       ; $7ac2: $5f
    db $e3                                        ; $7ac3: $e3
    cp a                                          ; $7ac4: $bf
    ld a, [hl]                                    ; $7ac5: $7e
    ld a, a                                       ; $7ac6: $7f
    ld [bc], a                                    ; $7ac7: $02
    ld a, b                                       ; $7ac8: $78
    sub d                                         ; $7ac9: $92
    and h                                         ; $7aca: $a4
    db $fc                                        ; $7acb: $fc
    jp nc, $eafe                                  ; $7acc: $d2 $fe $ea

    ld a, $f5                                     ; $7acf: $3e $f5
    rra                                           ; $7ad1: $1f
    rst $38                                       ; $7ad2: $ff
    ld c, a                                       ; $7ad3: $4f
    rst $38                                       ; $7ad4: $ff
    dec bc                                        ; $7ad5: $0b
    cp $06                                        ; $7ad6: $fe $06
    db $fc                                        ; $7ad8: $fc
    call z, $98f8                                 ; $7ad9: $cc $f8 $98
    ld [bc], a                                    ; $7adc: $02
    ldh a, [$8a]                                  ; $7add: $f0 $8a
    ret nc                                        ; $7adf: $d0

jr_0e2_7ae0:
    or b                                          ; $7ae0: $b0
    ldh a, [rSVBK]                                ; $7ae1: $f0 $70
    or b                                          ; $7ae3: $b0
    ret nc                                        ; $7ae4: $d0

    ldh a, [rNR10]                                ; $7ae5: $f0 $10
    ld [hl], b                                    ; $7ae7: $70
    sub b                                         ; $7ae8: $90
    ld [bc], a                                    ; $7ae9: $02
    nop                                           ; $7aea: $00
    add h                                         ; $7aeb: $84
    ldh [$bf], a                                  ; $7aec: $e0 $bf
    ld [hl], a                                    ; $7aee: $77
    ld e, a                                       ; $7aef: $5f
    ld [bc], a                                    ; $7af0: $02
    inc a                                         ; $7af1: $3c
    ld [bc], a                                    ; $7af2: $02
    db $10                                        ; $7af3: $10
    ld d, $00                                     ; $7af4: $16 $00

jr_0e2_7af6:
    add h                                         ; $7af6: $84
    dec c                                         ; $7af7: $0d
    rrca                                          ; $7af8: $0f
    rlca                                          ; $7af9: $07
    rrca                                          ; $7afa: $0f
    ld [bc], a                                    ; $7afb: $02
    ld c, $1a                                     ; $7afc: $0e $1a
    nop                                           ; $7afe: $00
    rst $38                                       ; $7aff: $ff
    dec c                                         ; $7b00: $0d
    inc b                                         ; $7b01: $04
    ld hl, sp+$07                                 ; $7b02: $f8 $07
    ld hl, sp+$07                                 ; $7b04: $f8 $07
    rst $28                                       ; $7b06: $ef
    ld hl, sp-$12                                 ; $7b07: $f8 $ee
    rst $38                                       ; $7b09: $ff
    cp $f8                                        ; $7b0a: $fe $f8
    cp $fc                                        ; $7b0c: $fe $fc
    ld [bc], a                                    ; $7b0e: $02
    inc bc                                        ; $7b0f: $03
    adc d                                         ; $7b10: $8a
    dec b                                         ; $7b11: $05
    rlca                                          ; $7b12: $07
    inc bc                                        ; $7b13: $03
    ld [bc], a                                    ; $7b14: $02
    inc bc                                        ; $7b15: $03
    ld [bc], a                                    ; $7b16: $02
    inc bc                                        ; $7b17: $03
    ld [bc], a                                    ; $7b18: $02
    rlca                                          ; $7b19: $07
    inc b                                         ; $7b1a: $04
    ld [bc], a                                    ; $7b1b: $02
    inc bc                                        ; $7b1c: $03
    ld [bc], a                                    ; $7b1d: $02
    db $10                                        ; $7b1e: $10
    adc d                                         ; $7b1f: $8a
    add hl, sp                                    ; $7b20: $39
    add hl, hl                                    ; $7b21: $29
    inc a                                         ; $7b22: $3c
    inc h                                         ; $7b23: $24
    ld e, $16                                     ; $7b24: $1e $16
    rrca                                          ; $7b26: $0f
    add hl, bc                                    ; $7b27: $09
    rrca                                          ; $7b28: $0f
    ld c, $02                                     ; $7b29: $0e $02
    ld e, a                                       ; $7b2b: $5f
    add h                                         ; $7b2c: $84
    db $e3                                        ; $7b2d: $e3
    cp a                                          ; $7b2e: $bf
    ld a, [hl]                                    ; $7b2f: $7e
    ld a, a                                       ; $7b30: $7f
    ld [bc], a                                    ; $7b31: $02
    ld a, b                                       ; $7b32: $78
    sub d                                         ; $7b33: $92
    inc h                                         ; $7b34: $24
    ld a, h                                       ; $7b35: $7c
    ld d, d                                       ; $7b36: $52
    ld a, [hl]                                    ; $7b37: $7e
    ld l, d                                       ; $7b38: $6a
    ld a, $75                                     ; $7b39: $3e $75
    rra                                           ; $7b3b: $1f
    ld a, a                                       ; $7b3c: $7f
    ld c, a                                       ; $7b3d: $4f
    ld a, a                                       ; $7b3e: $7f
    dec bc                                        ; $7b3f: $0b
    ld a, [hl]                                    ; $7b40: $7e
    ld b, $7c                                     ; $7b41: $06 $7c
    ld c, h                                       ; $7b43: $4c
    ld a, b                                       ; $7b44: $78
    jr jr_0e2_7b49                                ; $7b45: $18 $02

    ld a, b                                       ; $7b47: $78
    adc d                                         ; $7b48: $8a

jr_0e2_7b49:
    ld e, b                                       ; $7b49: $58
    ld l, b                                       ; $7b4a: $68
    ld a, b                                       ; $7b4b: $78
    ld e, b                                       ; $7b4c: $58
    ld l, b                                       ; $7b4d: $68
    jr c, @+$7a                                   ; $7b4e: $38 $78

    ld c, b                                       ; $7b50: $48
    jr c, jr_0e2_7b9b                             ; $7b51: $38 $48

    ld [bc], a                                    ; $7b53: $02
    nop                                           ; $7b54: $00
    add h                                         ; $7b55: $84
    ldh [$bf], a                                  ; $7b56: $e0 $bf
    ld [hl], a                                    ; $7b58: $77
    ld e, a                                       ; $7b59: $5f
    ld [bc], a                                    ; $7b5a: $02
    inc a                                         ; $7b5b: $3c
    ld [bc], a                                    ; $7b5c: $02
    db $10                                        ; $7b5d: $10
    ld d, $00                                     ; $7b5e: $16 $00
    add h                                         ; $7b60: $84
    dec c                                         ; $7b61: $0d
    rrca                                          ; $7b62: $0f
    rlca                                          ; $7b63: $07
    rrca                                          ; $7b64: $0f
    ld [bc], a                                    ; $7b65: $02
    ld c, $1a                                     ; $7b66: $0e $1a
    nop                                           ; $7b68: $00
    rst $38                                       ; $7b69: $ff
    dec c                                         ; $7b6a: $0d
    inc b                                         ; $7b6b: $04
    ld hl, sp+$07                                 ; $7b6c: $f8 $07
    ld hl, sp+$07                                 ; $7b6e: $f8 $07
    rst $28                                       ; $7b70: $ef
    ld hl, sp-$12                                 ; $7b71: $f8 $ee
    rst $38                                       ; $7b73: $ff
    cp $f8                                        ; $7b74: $fe $f8
    cp $fc                                        ; $7b76: $fe $fc
    ld [bc], a                                    ; $7b78: $02
    inc bc                                        ; $7b79: $03
    sbc b                                         ; $7b7a: $98
    dec b                                         ; $7b7b: $05
    rlca                                          ; $7b7c: $07
    inc bc                                        ; $7b7d: $03
    ld [bc], a                                    ; $7b7e: $02
    inc bc                                        ; $7b7f: $03
    ld [bc], a                                    ; $7b80: $02
    inc bc                                        ; $7b81: $03
    ld [bc], a                                    ; $7b82: $02
    rlca                                          ; $7b83: $07
    inc b                                         ; $7b84: $04
    rlca                                          ; $7b85: $07
    ld b, $0f                                     ; $7b86: $06 $0f
    add hl, bc                                    ; $7b88: $09
    rrca                                          ; $7b89: $0f
    ld a, [bc]                                    ; $7b8a: $0a
    rlca                                          ; $7b8b: $07
    dec b                                         ; $7b8c: $05
    rlca                                          ; $7b8d: $07
    dec b                                         ; $7b8e: $05
    rlca                                          ; $7b8f: $07
    ld b, $0f                                     ; $7b90: $06 $0f
    dec bc                                        ; $7b92: $0b
    ld [bc], a                                    ; $7b93: $02
    ld e, a                                       ; $7b94: $5f
    add h                                         ; $7b95: $84
    db $e3                                        ; $7b96: $e3
    cp a                                          ; $7b97: $bf
    ld a, [hl]                                    ; $7b98: $7e
    ld a, a                                       ; $7b99: $7f
    ld [bc], a                                    ; $7b9a: $02

jr_0e2_7b9b:
    ld a, b                                       ; $7b9b: $78
    sub d                                         ; $7b9c: $92
    inc h                                         ; $7b9d: $24
    ld a, h                                       ; $7b9e: $7c
    ld d, d                                       ; $7b9f: $52
    ld a, [hl]                                    ; $7ba0: $7e
    ld l, d                                       ; $7ba1: $6a
    ld a, $75                                     ; $7ba2: $3e $75
    rra                                           ; $7ba4: $1f
    ld a, a                                       ; $7ba5: $7f
    ld c, a                                       ; $7ba6: $4f
    ld a, a                                       ; $7ba7: $7f
    dec bc                                        ; $7ba8: $0b
    ld a, [hl]                                    ; $7ba9: $7e
    ld b, $7c                                     ; $7baa: $06 $7c
    inc c                                         ; $7bac: $0c
    ld a, b                                       ; $7bad: $78
    jr jr_0e2_7bb2                                ; $7bae: $18 $02

    ld a, b                                       ; $7bb0: $78
    adc d                                         ; $7bb1: $8a

jr_0e2_7bb2:
    ld e, b                                       ; $7bb2: $58
    ld l, b                                       ; $7bb3: $68
    ld a, b                                       ; $7bb4: $78
    ld e, b                                       ; $7bb5: $58
    ld l, b                                       ; $7bb6: $68
    jr c, @+$7a                                   ; $7bb7: $38 $78

    ld c, b                                       ; $7bb9: $48
    jr c, jr_0e2_7c04                             ; $7bba: $38 $48

    ld [bc], a                                    ; $7bbc: $02
    nop                                           ; $7bbd: $00
    add h                                         ; $7bbe: $84
    ldh [$bf], a                                  ; $7bbf: $e0 $bf
    ld [hl], a                                    ; $7bc1: $77
    ld e, a                                       ; $7bc2: $5f
    ld [bc], a                                    ; $7bc3: $02
    inc a                                         ; $7bc4: $3c
    ld [bc], a                                    ; $7bc5: $02
    db $10                                        ; $7bc6: $10
    ld d, $00                                     ; $7bc7: $16 $00
    add h                                         ; $7bc9: $84
    dec c                                         ; $7bca: $0d
    rrca                                          ; $7bcb: $0f
    rlca                                          ; $7bcc: $07
    rrca                                          ; $7bcd: $0f
    ld [bc], a                                    ; $7bce: $02
    ld c, $1a                                     ; $7bcf: $0e $1a
    nop                                           ; $7bd1: $00
    rst $38                                       ; $7bd2: $ff
    dec c                                         ; $7bd3: $0d
    inc b                                         ; $7bd4: $04
    ld hl, sp+$07                                 ; $7bd5: $f8 $07
    ld hl, sp+$07                                 ; $7bd7: $f8 $07
    rst $28                                       ; $7bd9: $ef
    ld hl, sp-$12                                 ; $7bda: $f8 $ee
    rst $38                                       ; $7bdc: $ff
    cp $f8                                        ; $7bdd: $fe $f8
    cp $fc                                        ; $7bdf: $fe $fc
    ld [bc], a                                    ; $7be1: $02
    inc bc                                        ; $7be2: $03
    adc h                                         ; $7be3: $8c
    dec b                                         ; $7be4: $05
    rlca                                          ; $7be5: $07
    inc bc                                        ; $7be6: $03
    ld [bc], a                                    ; $7be7: $02
    inc bc                                        ; $7be8: $03
    ld [bc], a                                    ; $7be9: $02
    inc bc                                        ; $7bea: $03
    ld [bc], a                                    ; $7beb: $02
    rlca                                          ; $7bec: $07
    inc b                                         ; $7bed: $04
    inc bc                                        ; $7bee: $03
    ld [bc], a                                    ; $7bef: $02

jr_0e2_7bf0:
    ld [bc], a                                    ; $7bf0: $02
    inc bc                                        ; $7bf1: $03
    ld [bc], a                                    ; $7bf2: $02
    dec c                                         ; $7bf3: $0d

jr_0e2_7bf4:
    adc [hl]                                      ; $7bf4: $8e
    ld d, $1a                                     ; $7bf5: $16 $1a
    rrca                                          ; $7bf7: $0f

jr_0e2_7bf8:
    add hl, bc                                    ; $7bf8: $09
    rlca                                          ; $7bf9: $07
    ld b, $0f                                     ; $7bfa: $06 $0f
    dec bc                                        ; $7bfc: $0b
    ld e, a                                       ; $7bfd: $5f
    ld e, [hl]                                    ; $7bfe: $5e
    db $e3                                        ; $7bff: $e3
    cp a                                          ; $7c00: $bf
    ld a, [hl]                                    ; $7c01: $7e
    ld a, a                                       ; $7c02: $7f
    ld [bc], a                                    ; $7c03: $02

jr_0e2_7c04:
    ld a, b                                       ; $7c04: $78
    sub a                                         ; $7c05: $97
    inc h                                         ; $7c06: $24
    ld a, h                                       ; $7c07: $7c
    ld d, d                                       ; $7c08: $52
    ld a, [hl]                                    ; $7c09: $7e
    ld l, d                                       ; $7c0a: $6a
    ld a, $75                                     ; $7c0b: $3e $75
    rra                                           ; $7c0d: $1f
    ld a, a                                       ; $7c0e: $7f
    ld c, a                                       ; $7c0f: $4f
    ld a, a                                       ; $7c10: $7f
    dec bc                                        ; $7c11: $0b
    ld a, [hl]                                    ; $7c12: $7e
    ld b, $7c                                     ; $7c13: $06 $7c
    ld c, h                                       ; $7c15: $4c
    ld a, b                                       ; $7c16: $78
    jr @+$6a                                      ; $7c17: $18 $68

    ld a, b                                       ; $7c19: $78
    ld e, b                                       ; $7c1a: $58
    ld l, b                                       ; $7c1b: $68
    jr z, jr_0e2_7c20                             ; $7c1c: $28 $02

    ld a, b                                       ; $7c1e: $78
    add l                                         ; $7c1f: $85

jr_0e2_7c20:
    jr jr_0e2_7c9a                                ; $7c20: $18 $78

    ld e, b                                       ; $7c22: $58
    jr c, jr_0e2_7c8d                             ; $7c23: $38 $68

    ld [bc], a                                    ; $7c25: $02
    nop                                           ; $7c26: $00
    add h                                         ; $7c27: $84
    ldh [$bf], a                                  ; $7c28: $e0 $bf
    ld [hl], a                                    ; $7c2a: $77
    ld e, a                                       ; $7c2b: $5f
    ld [bc], a                                    ; $7c2c: $02
    inc a                                         ; $7c2d: $3c
    ld [bc], a                                    ; $7c2e: $02
    db $10                                        ; $7c2f: $10
    ld d, $00                                     ; $7c30: $16 $00
    add h                                         ; $7c32: $84
    dec c                                         ; $7c33: $0d
    rrca                                          ; $7c34: $0f
    rlca                                          ; $7c35: $07
    rrca                                          ; $7c36: $0f
    ld [bc], a                                    ; $7c37: $02
    ld c, $1a                                     ; $7c38: $0e $1a
    nop                                           ; $7c3a: $00
    rst $38                                       ; $7c3b: $ff
    dec c                                         ; $7c3c: $0d
    inc b                                         ; $7c3d: $04
    ld hl, sp+$07                                 ; $7c3e: $f8 $07
    ld hl, sp+$07                                 ; $7c40: $f8 $07
    db $ed                                        ; $7c42: $ed
    ld sp, hl                                     ; $7c43: $f9
    rst $28                                       ; $7c44: $ef
    rst $38                                       ; $7c45: $ff
    db $fd                                        ; $7c46: $fd
    ei                                            ; $7c47: $fb
    db $fd                                        ; $7c48: $fd
    rst $38                                       ; $7c49: $ff
    ld [bc], a                                    ; $7c4a: $02
    inc e                                         ; $7c4b: $1c
    sbc [hl]                                      ; $7c4c: $9e
    ccf                                           ; $7c4d: $3f
    inc hl                                        ; $7c4e: $23
    ld a, a                                       ; $7c4f: $7f
    ld b, l                                       ; $7c50: $45
    rst $38                                       ; $7c51: $ff

jr_0e2_7c52:
    adc e                                         ; $7c52: $8b
    rst $38                                       ; $7c53: $ff
    call nc, $f8ff                                ; $7c54: $d4 $ff $f8
    ld a, a                                       ; $7c57: $7f
    ld d, [hl]                                    ; $7c58: $56
    ld a, a                                       ; $7c59: $7f

jr_0e2_7c5a:
    ld h, b                                       ; $7c5a: $60
    ccf                                           ; $7c5b: $3f
    ld hl, $121f                                  ; $7c5c: $21 $1f $12
    ccf                                           ; $7c5f: $3f
    add hl, sp                                    ; $7c60: $39
    cpl                                           ; $7c61: $2f
    ccf                                           ; $7c62: $3f
    dec l                                         ; $7c63: $2d
    ccf                                           ; $7c64: $3f
    daa                                           ; $7c65: $27
    ccf                                           ; $7c66: $3f
    dec [hl]                                      ; $7c67: $35
    ccf                                           ; $7c68: $3f
    add hl, hl                                    ; $7c69: $29
    ccf                                           ; $7c6a: $3f
    ld [bc], a                                    ; $7c6b: $02

jr_0e2_7c6c:
    jr nz, jr_0e2_7bf0                            ; $7c6c: $20 $82

    jr nc, jr_0e2_7c80                            ; $7c6e: $30 $10

    inc bc                                        ; $7c70: $03
    jr nc, jr_0e2_7bf4                            ; $7c71: $30 $81

    db $10                                        ; $7c73: $10
    inc bc                                        ; $7c74: $03
    jr nc, jr_0e2_7bf8                            ; $7c75: $30 $81

    db $10                                        ; $7c77: $10
    inc b                                         ; $7c78: $04
    jr nz, jr_0e2_7c7d                            ; $7c79: $20 $02

    nop                                           ; $7c7b: $00
    ld [bc], a                                    ; $7c7c: $02

jr_0e2_7c7d:
    jr nz, @-$71                                  ; $7c7d: $20 $8d

    db $10                                        ; $7c7f: $10

jr_0e2_7c80:
    jr nc, jr_0e2_7c95                            ; $7c80: $30 $13

    inc sp                                        ; $7c82: $33
    ccf                                           ; $7c83: $3f
    dec l                                         ; $7c84: $2d
    ccf                                           ; $7c85: $3f
    rla                                           ; $7c86: $17
    rst $38                                       ; $7c87: $ff
    and l                                         ; $7c88: $a5
    rst $38                                       ; $7c89: $ff
    db $fd                                        ; $7c8a: $fd
    ret nc                                        ; $7c8b: $d0

    inc bc                                        ; $7c8c: $03

jr_0e2_7c8d:
    ldh a, [rSC]                                  ; $7c8d: $f0 $02
    ld a, a                                       ; $7c8f: $7f
    ld [bc], a                                    ; $7c90: $02
    add hl, sp                                    ; $7c91: $39
    inc e                                         ; $7c92: $1c
    nop                                           ; $7c93: $00
    ld [bc], a                                    ; $7c94: $02

jr_0e2_7c95:
    rrca                                          ; $7c95: $0f
    add d                                         ; $7c96: $82
    ld c, $0a                                     ; $7c97: $0e $0a
    ld [bc], a                                    ; $7c99: $02

jr_0e2_7c9a:
    ld b, $16                                     ; $7c9a: $06 $16
    nop                                           ; $7c9c: $00
    rst $38                                       ; $7c9d: $ff
    dec c                                         ; $7c9e: $0d
    inc b                                         ; $7c9f: $04
    ld hl, sp+$07                                 ; $7ca0: $f8 $07
    ld hl, sp+$07                                 ; $7ca2: $f8 $07
    db $ed                                        ; $7ca4: $ed
    ld sp, hl                                     ; $7ca5: $f9
    rst $28                                       ; $7ca6: $ef
    rst $38                                       ; $7ca7: $ff
    db $fd                                        ; $7ca8: $fd
    ei                                            ; $7ca9: $fb
    db $fd                                        ; $7caa: $fd
    rst $38                                       ; $7cab: $ff
    ld [bc], a                                    ; $7cac: $02
    inc e                                         ; $7cad: $1c
    sbc [hl]                                      ; $7cae: $9e
    ccf                                           ; $7caf: $3f
    inc hl                                        ; $7cb0: $23
    ld a, a                                       ; $7cb1: $7f
    ld b, l                                       ; $7cb2: $45

jr_0e2_7cb3:
    rst $38                                       ; $7cb3: $ff
    adc e                                         ; $7cb4: $8b
    rst $38                                       ; $7cb5: $ff
    call nc, $f8ff                                ; $7cb6: $d4 $ff $f8
    ld a, a                                       ; $7cb9: $7f
    ld d, [hl]                                    ; $7cba: $56
    ld a, a                                       ; $7cbb: $7f
    ld h, b                                       ; $7cbc: $60
    ccf                                           ; $7cbd: $3f
    ld hl, $121f                                  ; $7cbe: $21 $1f $12
    ccf                                           ; $7cc1: $3f
    add hl, sp                                    ; $7cc2: $39
    cpl                                           ; $7cc3: $2f
    ccf                                           ; $7cc4: $3f
    dec l                                         ; $7cc5: $2d
    ccf                                           ; $7cc6: $3f
    daa                                           ; $7cc7: $27
    ccf                                           ; $7cc8: $3f
    dec [hl]                                      ; $7cc9: $35
    ccf                                           ; $7cca: $3f

jr_0e2_7ccb:
    add hl, hl                                    ; $7ccb: $29
    ccf                                           ; $7ccc: $3f
    ld [bc], a                                    ; $7ccd: $02
    jr nz, jr_0e2_7c52                            ; $7cce: $20 $82

    jr nc, jr_0e2_7ce2                            ; $7cd0: $30 $10

    inc bc                                        ; $7cd2: $03
    jr nc, @-$7d                                  ; $7cd3: $30 $81

    db $10                                        ; $7cd5: $10
    inc bc                                        ; $7cd6: $03
    jr nc, jr_0e2_7c5a                            ; $7cd7: $30 $81

    db $10                                        ; $7cd9: $10
    inc b                                         ; $7cda: $04
    jr nz, jr_0e2_7cdf                            ; $7cdb: $20 $02

    nop                                           ; $7cdd: $00
    inc b                                         ; $7cde: $04

jr_0e2_7cdf:
    jr nz, jr_0e2_7c6c                            ; $7cdf: $20 $8b

    dec de                                        ; $7ce1: $1b

jr_0e2_7ce2:
    dec sp                                        ; $7ce2: $3b
    ccf                                           ; $7ce3: $3f
    dec h                                         ; $7ce4: $25
    ccf                                           ; $7ce5: $3f
    rla                                           ; $7ce6: $17
    rst $38                                       ; $7ce7: $ff
    and l                                         ; $7ce8: $a5
    rst $38                                       ; $7ce9: $ff
    db $fd                                        ; $7cea: $fd
    ret nc                                        ; $7ceb: $d0

    inc bc                                        ; $7cec: $03
    ldh a, [rSC]                                  ; $7ced: $f0 $02
    ld a, a                                       ; $7cef: $7f
    ld [bc], a                                    ; $7cf0: $02
    add hl, sp                                    ; $7cf1: $39
    inc e                                         ; $7cf2: $1c
    nop                                           ; $7cf3: $00
    ld [bc], a                                    ; $7cf4: $02
    rrca                                          ; $7cf5: $0f
    add d                                         ; $7cf6: $82
    ld c, $0a                                     ; $7cf7: $0e $0a
    ld [bc], a                                    ; $7cf9: $02
    ld b, $16                                     ; $7cfa: $06 $16
    nop                                           ; $7cfc: $00
    rst $38                                       ; $7cfd: $ff
    dec c                                         ; $7cfe: $0d
    inc b                                         ; $7cff: $04
    ld hl, sp+$07                                 ; $7d00: $f8 $07
    ld hl, sp+$07                                 ; $7d02: $f8 $07
    db $ed                                        ; $7d04: $ed
    ld sp, hl                                     ; $7d05: $f9
    xor $ff                                       ; $7d06: $ee $ff
    db $fd                                        ; $7d08: $fd
    ei                                            ; $7d09: $fb
    db $fd                                        ; $7d0a: $fd
    rst $38                                       ; $7d0b: $ff
    ld [bc], a                                    ; $7d0c: $02
    ld a, $92                                     ; $7d0d: $3e $92
    ld a, a                                       ; $7d0f: $7f
    ld b, l                                       ; $7d10: $45
    rst $38                                       ; $7d11: $ff
    adc e                                         ; $7d12: $8b
    rst $38                                       ; $7d13: $ff
    sub h                                         ; $7d14: $94

jr_0e2_7d15:
    rst $38                                       ; $7d15: $ff
    xor b                                         ; $7d16: $a8
    rst $38                                       ; $7d17: $ff
    or $7f                                        ; $7d18: $f6 $7f
    ld d, b                                       ; $7d1a: $50
    ld a, a                                       ; $7d1b: $7f
    ld h, c                                       ; $7d1c: $61
    ccf                                           ; $7d1d: $3f
    ld [hl-], a                                   ; $7d1e: $32
    rra                                           ; $7d1f: $1f
    ld de, $3f02                                  ; $7d20: $11 $02 $3f

jr_0e2_7d23:
    adc d                                         ; $7d23: $8a
    dec l                                         ; $7d24: $2d
    ccf                                           ; $7d25: $3f
    dec l                                         ; $7d26: $2d
    ccf                                           ; $7d27: $3f

jr_0e2_7d28:
    daa                                           ; $7d28: $27
    ccf                                           ; $7d29: $3f
    dec [hl]                                      ; $7d2a: $35
    ccf                                           ; $7d2b: $3f
    add hl, hl                                    ; $7d2c: $29
    ccf                                           ; $7d2d: $3f
    ld [bc], a                                    ; $7d2e: $02
    jr nz, jr_0e2_7cb3                            ; $7d2f: $20 $82

    jr nc, jr_0e2_7d43                            ; $7d31: $30 $10

    ld b, $20                                     ; $7d33: $06 $20
    add d                                         ; $7d35: $82
    jr nc, jr_0e2_7d48                            ; $7d36: $30 $10

    inc b                                         ; $7d38: $04
    jr nz, jr_0e2_7d3f                            ; $7d39: $20 $04

    nop                                           ; $7d3b: $00
    ld [bc], a                                    ; $7d3c: $02
    jr nc, jr_0e2_7ccb                            ; $7d3d: $30 $8c

jr_0e2_7d3f:
    jr c, @+$2a                                   ; $7d3f: $38 $28

    ccf                                           ; $7d41: $3f
    scf                                           ; $7d42: $37

jr_0e2_7d43:
    ccf                                           ; $7d43: $3f
    dec l                                         ; $7d44: $2d
    ccf                                           ; $7d45: $3f
    rla                                           ; $7d46: $17
    rst $38                                       ; $7d47: $ff

jr_0e2_7d48:
    and l                                         ; $7d48: $a5
    ret nc                                        ; $7d49: $d0

    ldh a, [rSC]                                  ; $7d4a: $f0 $02
    rst $38                                       ; $7d4c: $ff
    ld [bc], a                                    ; $7d4d: $02
    ld a, a                                       ; $7d4e: $7f
    ld [bc], a                                    ; $7d4f: $02
    add hl, sp                                    ; $7d50: $39
    ld a, [de]                                    ; $7d51: $1a
    nop                                           ; $7d52: $00
    add d                                         ; $7d53: $82
    rrca                                          ; $7d54: $0f
    dec c                                         ; $7d55: $0d
    ld [bc], a                                    ; $7d56: $02
    rrca                                          ; $7d57: $0f
    add d                                         ; $7d58: $82
    ld c, $0a                                     ; $7d59: $0e $0a
    ld [bc], a                                    ; $7d5b: $02
    ld b, $16                                     ; $7d5c: $06 $16
    nop                                           ; $7d5e: $00
    rst $38                                       ; $7d5f: $ff
    dec c                                         ; $7d60: $0d
    inc b                                         ; $7d61: $04
    ld hl, sp+$07                                 ; $7d62: $f8 $07
    ld hl, sp+$07                                 ; $7d64: $f8 $07
    db $ed                                        ; $7d66: $ed
    ld sp, hl                                     ; $7d67: $f9
    xor $ff                                       ; $7d68: $ee $ff
    db $fd                                        ; $7d6a: $fd
    ei                                            ; $7d6b: $fb
    db $fd                                        ; $7d6c: $fd
    rst $38                                       ; $7d6d: $ff
    ld [bc], a                                    ; $7d6e: $02
    ld a, $92                                     ; $7d6f: $3e $92
    ld a, a                                       ; $7d71: $7f
    ld b, l                                       ; $7d72: $45
    rst $38                                       ; $7d73: $ff
    adc e                                         ; $7d74: $8b
    rst $38                                       ; $7d75: $ff
    sub h                                         ; $7d76: $94
    rst $38                                       ; $7d77: $ff
    xor b                                         ; $7d78: $a8
    rst $38                                       ; $7d79: $ff
    or $7f                                        ; $7d7a: $f6 $7f
    ld d, b                                       ; $7d7c: $50
    ld a, a                                       ; $7d7d: $7f
    ld h, c                                       ; $7d7e: $61
    ccf                                           ; $7d7f: $3f
    inc sp                                        ; $7d80: $33
    rra                                           ; $7d81: $1f
    db $10                                        ; $7d82: $10
    ld [bc], a                                    ; $7d83: $02
    ccf                                           ; $7d84: $3f
    adc d                                         ; $7d85: $8a
    dec l                                         ; $7d86: $2d
    ccf                                           ; $7d87: $3f
    dec l                                         ; $7d88: $2d
    ccf                                           ; $7d89: $3f
    daa                                           ; $7d8a: $27
    ccf                                           ; $7d8b: $3f
    dec [hl]                                      ; $7d8c: $35
    ccf                                           ; $7d8d: $3f
    add hl, hl                                    ; $7d8e: $29
    ccf                                           ; $7d8f: $3f
    ld [bc], a                                    ; $7d90: $02
    jr nz, jr_0e2_7d15                            ; $7d91: $20 $82

    jr nc, @+$12                                  ; $7d93: $30 $10

    ld b, $20                                     ; $7d95: $06 $20
    add d                                         ; $7d97: $82
    jr nc, jr_0e2_7daa                            ; $7d98: $30 $10

    ld [bc], a                                    ; $7d9a: $02
    jr z, jr_0e2_7d23                             ; $7d9b: $28 $86

    inc e                                         ; $7d9d: $1c
    inc d                                         ; $7d9e: $14
    inc a                                         ; $7d9f: $3c
    inc h                                         ; $7da0: $24
    jr c, @+$2a                                   ; $7da1: $38 $28

    ld [bc], a                                    ; $7da3: $02
    jr c, jr_0e2_7d28                             ; $7da4: $38 $82

    ld [$0238], sp                                ; $7da6: $08 $38 $02
    inc sp                                        ; $7da9: $33

jr_0e2_7daa:
    adc b                                         ; $7daa: $88
    ccf                                           ; $7dab: $3f
    dec l                                         ; $7dac: $2d
    ccf                                           ; $7dad: $3f
    rla                                           ; $7dae: $17
    rst $38                                       ; $7daf: $ff
    and l                                         ; $7db0: $a5
    ret nc                                        ; $7db1: $d0

    ldh a, [rSC]                                  ; $7db2: $f0 $02
    rst $38                                       ; $7db4: $ff
    ld [bc], a                                    ; $7db5: $02
    ld a, a                                       ; $7db6: $7f
    ld [bc], a                                    ; $7db7: $02
    add hl, sp                                    ; $7db8: $39
    ld a, [de]                                    ; $7db9: $1a
    nop                                           ; $7dba: $00
    add d                                         ; $7dbb: $82
    rrca                                          ; $7dbc: $0f
    dec c                                         ; $7dbd: $0d
    ld [bc], a                                    ; $7dbe: $02
    rrca                                          ; $7dbf: $0f
    add d                                         ; $7dc0: $82
    ld c, $0a                                     ; $7dc1: $0e $0a
    ld [bc], a                                    ; $7dc3: $02
    ld b, $16                                     ; $7dc4: $06 $16
    nop                                           ; $7dc6: $00
    rst $38                                       ; $7dc7: $ff
    dec c                                         ; $7dc8: $0d
    inc b                                         ; $7dc9: $04
    ld hl, sp+$07                                 ; $7dca: $f8 $07
    ld hl, sp+$07                                 ; $7dcc: $f8 $07
    db $ec                                        ; $7dce: $ec
    ld hl, sp-$13                                 ; $7dcf: $f8 $ed
    rst $38                                       ; $7dd1: $ff
    db $fc                                        ; $7dd2: $fc
    ei                                            ; $7dd3: $fb
    db $fc                                        ; $7dd4: $fc
    rst $38                                       ; $7dd5: $ff
    ld [bc], a                                    ; $7dd6: $02
    ld c, $92                                     ; $7dd7: $0e $92
    ccf                                           ; $7dd9: $3f
    scf                                           ; $7dda: $37
    ld a, a                                       ; $7ddb: $7f
    ld c, e                                       ; $7ddc: $4b
    rst $38                                       ; $7ddd: $ff
    sub h                                         ; $7dde: $94
    rst $38                                       ; $7ddf: $ff
    adc b                                         ; $7de0: $88
    rst $38                                       ; $7de1: $ff
    or [hl]                                       ; $7de2: $b6
    rst $38                                       ; $7de3: $ff
    ldh a, [$7f]                                  ; $7de4: $f0 $7f
    ld b, b                                       ; $7de6: $40
    ccf                                           ; $7de7: $3f
    ld sp, $181f                                  ; $7de8: $31 $1f $18

jr_0e2_7deb:
    ld [bc], a                                    ; $7deb: $02
    rrca                                          ; $7dec: $0f
    adc d                                         ; $7ded: $8a
    dec e                                         ; $7dee: $1d
    rra                                           ; $7def: $1f
    ld d, $1f                                     ; $7df0: $16 $1f
    ld d, $1f                                     ; $7df2: $16 $1f
    inc de                                        ; $7df4: $13
    rra                                           ; $7df5: $1f
    ld a, [de]                                    ; $7df6: $1a
    rra                                           ; $7df7: $1f
    ld [bc], a                                    ; $7df8: $02
    ld b, b                                       ; $7df9: $40
    add d                                         ; $7dfa: $82

jr_0e2_7dfb:
    ld h, b                                       ; $7dfb: $60
    jr nz, jr_0e2_7e00                            ; $7dfc: $20 $02

    ld h, b                                       ; $7dfe: $60
    inc b                                         ; $7dff: $04

jr_0e2_7e00:
    ld b, b                                       ; $7e00: $40
    add d                                         ; $7e01: $82
    ld h, b                                       ; $7e02: $60
    jr nz, jr_0e2_7e07                            ; $7e03: $20 $02

    ld [hl], b                                    ; $7e05: $70
    add h                                         ; $7e06: $84

jr_0e2_7e07:
    ld a, b                                       ; $7e07: $78
    ld c, b                                       ; $7e08: $48
    ld a, b                                       ; $7e09: $78
    ld c, b                                       ; $7e0a: $48
    ld [bc], a                                    ; $7e0b: $02
    ld a, b                                       ; $7e0c: $78
    add h                                         ; $7e0d: $84
    ld l, b                                       ; $7e0e: $68
    ld a, b                                       ; $7e0f: $78
    ld e, b                                       ; $7e10: $58
    ld a, b                                       ; $7e11: $78
    ld [bc], a                                    ; $7e12: $02
    ld [hl], b                                    ; $7e13: $70
    ld [bc], a                                    ; $7e14: $02
    ld [hl], e                                    ; $7e15: $73
    adc b                                         ; $7e16: $88
    ld a, a                                       ; $7e17: $7f
    ld l, l                                       ; $7e18: $6d
    ld a, a                                       ; $7e19: $7f
    rst $10                                       ; $7e1a: $d7
    and b                                         ; $7e1b: $a0
    ldh a, [$df]                                  ; $7e1c: $f0 $df
    ld a, [$ff02]                                 ; $7e1e: $fa $02 $ff
    ld [bc], a                                    ; $7e21: $02
    ld a, a                                       ; $7e22: $7f
    ld [bc], a                                    ; $7e23: $02
    add hl, sp                                    ; $7e24: $39
    jr jr_0e2_7e27                                ; $7e25: $18 $00

jr_0e2_7e27:
    add h                                         ; $7e27: $84
    rrca                                          ; $7e28: $0f
    dec b                                         ; $7e29: $05
    rrca                                          ; $7e2a: $0f
    dec c                                         ; $7e2b: $0d
    ld [bc], a                                    ; $7e2c: $02
    rrca                                          ; $7e2d: $0f
    add d                                         ; $7e2e: $82
    ld c, $0a                                     ; $7e2f: $0e $0a
    ld [bc], a                                    ; $7e31: $02
    ld b, $14                                     ; $7e32: $06 $14
    nop                                           ; $7e34: $00
    rst $38                                       ; $7e35: $ff
    dec c                                         ; $7e36: $0d
    inc b                                         ; $7e37: $04
    ld hl, sp+$07                                 ; $7e38: $f8 $07
    ld hl, sp+$07                                 ; $7e3a: $f8 $07
    db $ed                                        ; $7e3c: $ed
    ld sp, hl                                     ; $7e3d: $f9
    xor $ff                                       ; $7e3e: $ee $ff
    db $fd                                        ; $7e40: $fd
    ei                                            ; $7e41: $fb
    db $fd                                        ; $7e42: $fd
    rst $38                                       ; $7e43: $ff
    ld [bc], a                                    ; $7e44: $02
    ld a, $92                                     ; $7e45: $3e $92
    ld a, a                                       ; $7e47: $7f
    ld b, l                                       ; $7e48: $45
    rst $38                                       ; $7e49: $ff
    adc e                                         ; $7e4a: $8b
    rst $38                                       ; $7e4b: $ff
    sub h                                         ; $7e4c: $94
    rst $38                                       ; $7e4d: $ff
    xor b                                         ; $7e4e: $a8

jr_0e2_7e4f:
    rst $38                                       ; $7e4f: $ff
    or $7f                                        ; $7e50: $f6 $7f
    ld d, b                                       ; $7e52: $50

jr_0e2_7e53:
    ld a, a                                       ; $7e53: $7f
    ld h, c                                       ; $7e54: $61
    ccf                                           ; $7e55: $3f
    ld [hl-], a                                   ; $7e56: $32

jr_0e2_7e57:
    rra                                           ; $7e57: $1f
    ld de, $3f02                                  ; $7e58: $11 $02 $3f
    adc d                                         ; $7e5b: $8a
    dec l                                         ; $7e5c: $2d
    ccf                                           ; $7e5d: $3f
    dec l                                         ; $7e5e: $2d
    ccf                                           ; $7e5f: $3f
    daa                                           ; $7e60: $27
    ccf                                           ; $7e61: $3f
    dec [hl]                                      ; $7e62: $35
    ccf                                           ; $7e63: $3f
    add hl, hl                                    ; $7e64: $29
    ccf                                           ; $7e65: $3f
    ld [bc], a                                    ; $7e66: $02
    jr nz, jr_0e2_7deb                            ; $7e67: $20 $82

    jr nc, jr_0e2_7e7b                            ; $7e69: $30 $10

jr_0e2_7e6b:
    ld b, $20                                     ; $7e6b: $06 $20
    add d                                         ; $7e6d: $82
    jr nc, jr_0e2_7e80                            ; $7e6e: $30 $10

    inc b                                         ; $7e70: $04
    jr nz, jr_0e2_7e75                            ; $7e71: $20 $02

    jr nc, jr_0e2_7dfb                            ; $7e73: $30 $86

jr_0e2_7e75:
    jr c, jr_0e2_7e7f                             ; $7e75: $38 $08

    inc a                                         ; $7e77: $3c
    inc h                                         ; $7e78: $24
    jr jr_0e2_7eb3                                ; $7e79: $18 $38

jr_0e2_7e7b:
    ld [bc], a                                    ; $7e7b: $02
    inc sp                                        ; $7e7c: $33
    adc b                                         ; $7e7d: $88
    ccf                                           ; $7e7e: $3f

jr_0e2_7e7f:
    dec l                                         ; $7e7f: $2d

jr_0e2_7e80:
    ccf                                           ; $7e80: $3f
    rla                                           ; $7e81: $17
    rst $38                                       ; $7e82: $ff
    and l                                         ; $7e83: $a5
    ret nc                                        ; $7e84: $d0

    ldh a, [rSC]                                  ; $7e85: $f0 $02
    rst $38                                       ; $7e87: $ff
    ld [bc], a                                    ; $7e88: $02
    ld a, a                                       ; $7e89: $7f
    ld [bc], a                                    ; $7e8a: $02
    add hl, sp                                    ; $7e8b: $39
    ld a, [de]                                    ; $7e8c: $1a
    nop                                           ; $7e8d: $00
    add d                                         ; $7e8e: $82
    rrca                                          ; $7e8f: $0f
    dec c                                         ; $7e90: $0d
    ld [bc], a                                    ; $7e91: $02
    rrca                                          ; $7e92: $0f
    add d                                         ; $7e93: $82
    ld c, $0a                                     ; $7e94: $0e $0a
    ld [bc], a                                    ; $7e96: $02
    ld b, $16                                     ; $7e97: $06 $16
    nop                                           ; $7e99: $00
    rst $38                                       ; $7e9a: $ff
    dec c                                         ; $7e9b: $0d
    inc b                                         ; $7e9c: $04
    ld hl, sp+$07                                 ; $7e9d: $f8 $07
    ld hl, sp+$07                                 ; $7e9f: $f8 $07
    db $ed                                        ; $7ea1: $ed
    ld sp, hl                                     ; $7ea2: $f9
    rst $28                                       ; $7ea3: $ef
    rst $38                                       ; $7ea4: $ff
    db $fd                                        ; $7ea5: $fd
    ei                                            ; $7ea6: $fb
    db $fd                                        ; $7ea7: $fd
    rst $38                                       ; $7ea8: $ff
    ld [bc], a                                    ; $7ea9: $02
    inc e                                         ; $7eaa: $1c
    sbc [hl]                                      ; $7eab: $9e
    ccf                                           ; $7eac: $3f
    inc hl                                        ; $7ead: $23
    ld a, a                                       ; $7eae: $7f
    ld b, l                                       ; $7eaf: $45
    rst $38                                       ; $7eb0: $ff
    adc e                                         ; $7eb1: $8b
    rst $38                                       ; $7eb2: $ff

jr_0e2_7eb3:
    call nc, $f8ff                                ; $7eb3: $d4 $ff $f8
    ld a, a                                       ; $7eb6: $7f
    ld d, [hl]                                    ; $7eb7: $56
    ld a, a                                       ; $7eb8: $7f
    ld h, b                                       ; $7eb9: $60
    ccf                                           ; $7eba: $3f
    ld hl, $121f                                  ; $7ebb: $21 $1f $12
    ccf                                           ; $7ebe: $3f
    add hl, sp                                    ; $7ebf: $39
    cpl                                           ; $7ec0: $2f
    ccf                                           ; $7ec1: $3f
    dec l                                         ; $7ec2: $2d
    ccf                                           ; $7ec3: $3f
    daa                                           ; $7ec4: $27
    ccf                                           ; $7ec5: $3f
    dec [hl]                                      ; $7ec6: $35
    ccf                                           ; $7ec7: $3f
    add hl, hl                                    ; $7ec8: $29
    ccf                                           ; $7ec9: $3f
    ld [bc], a                                    ; $7eca: $02
    jr nz, jr_0e2_7e4f                            ; $7ecb: $20 $82

    jr nc, @+$12                                  ; $7ecd: $30 $10

    inc bc                                        ; $7ecf: $03
    jr nc, jr_0e2_7e53                            ; $7ed0: $30 $81

    db $10                                        ; $7ed2: $10
    inc bc                                        ; $7ed3: $03
    jr nc, jr_0e2_7e57                            ; $7ed4: $30 $81

    db $10                                        ; $7ed6: $10
    inc b                                         ; $7ed7: $04
    jr nz, jr_0e2_7edc                            ; $7ed8: $20 $02

    nop                                           ; $7eda: $00
    ld [bc], a                                    ; $7edb: $02

jr_0e2_7edc:
    jr nc, jr_0e2_7e6b                            ; $7edc: $30 $8d

    jr c, jr_0e2_7f08                             ; $7ede: $38 $28

    ccf                                           ; $7ee0: $3f
    scf                                           ; $7ee1: $37
    ccf                                           ; $7ee2: $3f
    dec l                                         ; $7ee3: $2d
    ccf                                           ; $7ee4: $3f
    rla                                           ; $7ee5: $17
    rst $38                                       ; $7ee6: $ff
    and l                                         ; $7ee7: $a5
    rst $38                                       ; $7ee8: $ff
    db $fd                                        ; $7ee9: $fd
    ret nc                                        ; $7eea: $d0

    inc bc                                        ; $7eeb: $03
    ldh a, [rSC]                                  ; $7eec: $f0 $02
    ld a, a                                       ; $7eee: $7f
    ld [bc], a                                    ; $7eef: $02
    add hl, sp                                    ; $7ef0: $39
    inc e                                         ; $7ef1: $1c
    nop                                           ; $7ef2: $00
    ld [bc], a                                    ; $7ef3: $02
    rrca                                          ; $7ef4: $0f
    add d                                         ; $7ef5: $82
    ld c, $0a                                     ; $7ef6: $0e $0a
    ld [bc], a                                    ; $7ef8: $02
    ld b, $16                                     ; $7ef9: $06 $16
    nop                                           ; $7efb: $00
    rst $38                                       ; $7efc: $ff
    dec c                                         ; $7efd: $0d
    inc b                                         ; $7efe: $04
    ld hl, sp+$07                                 ; $7eff: $f8 $07
    ld hl, sp+$07                                 ; $7f01: $f8 $07
    rst $28                                       ; $7f03: $ef
    ld hl, sp-$10                                 ; $7f04: $f8 $f0
    cp $ff                                        ; $7f06: $fe $ff

jr_0e2_7f08:
    ld hl, sp-$01                                 ; $7f08: $f8 $ff
    cp $02                                        ; $7f0a: $fe $02
    dec a                                         ; $7f0c: $3d

jr_0e2_7f0d:
    sbc [hl]                                      ; $7f0d: $9e
    ld a, a                                       ; $7f0e: $7f
    ld b, d                                       ; $7f0f: $42
    rst $38                                       ; $7f10: $ff
    and a                                         ; $7f11: $a7
    rst $38                                       ; $7f12: $ff
    reti                                          ; $7f13: $d9


    rst $38                                       ; $7f14: $ff
    or $ff                                        ; $7f15: $f6 $ff
    ret nc                                        ; $7f17: $d0

    ld a, a                                       ; $7f18: $7f
    ld [hl], b                                    ; $7f19: $70
    ccf                                           ; $7f1a: $3f
    ld [hl-], a                                   ; $7f1b: $32
    rra                                           ; $7f1c: $1f
    add hl, de                                    ; $7f1d: $19
    cpl                                           ; $7f1e: $2f
    ccf                                           ; $7f1f: $3f
    ld [hl+], a                                   ; $7f20: $22
    ld a, $4a                                     ; $7f21: $3e $4a
    ld a, [hl]                                    ; $7f23: $7e
    ld l, e                                       ; $7f24: $6b
    ld a, a                                       ; $7f25: $7f
    ld [hl], c                                    ; $7f26: $71
    ld e, a                                       ; $7f27: $5f
    ld [hl], c                                    ; $7f28: $71
    ld e, a                                       ; $7f29: $5f
    rst $20                                       ; $7f2a: $e7
    cp [hl]                                       ; $7f2b: $be
    inc b                                         ; $7f2c: $04
    jr nz, jr_0e2_7f31                            ; $7f2d: $20 $02

    nop                                           ; $7f2f: $00
    ld [bc], a                                    ; $7f30: $02

jr_0e2_7f31:
    jr nz, @-$7c                                  ; $7f31: $20 $82

    jr nc, jr_0e2_7f45                            ; $7f33: $30 $10

    ld b, $20                                     ; $7f35: $06 $20
    ld [$0200], sp                                ; $7f37: $08 $00 $02
    ld a, [hl-]                                   ; $7f3a: $3a
    add d                                         ; $7f3b: $82
    dec a                                         ; $7f3c: $3d
    daa                                           ; $7f3d: $27
    ld [bc], a                                    ; $7f3e: $02
    ccf                                           ; $7f3f: $3f
    add [hl]                                      ; $7f40: $86
    cp $0e                                        ; $7f41: $fe $0e
    db $fc                                        ; $7f43: $fc
    cp h                                          ; $7f44: $bc

jr_0e2_7f45:
    rst $38                                       ; $7f45: $ff
    sbc a                                         ; $7f46: $9f
    ld [bc], a                                    ; $7f47: $02
    ldh [rNR32], a                                ; $7f48: $e0 $1c
    nop                                           ; $7f4a: $00
    add h                                         ; $7f4b: $84
    dec a                                         ; $7f4c: $3d
    daa                                           ; $7f4d: $27
    ld a, [hl-]                                   ; $7f4e: $3a
    ld a, $02                                     ; $7f4f: $3e $02
    inc c                                         ; $7f51: $0c
    jr jr_0e2_7f54                                ; $7f52: $18 $00

jr_0e2_7f54:
    rst $38                                       ; $7f54: $ff
    dec c                                         ; $7f55: $0d
    inc b                                         ; $7f56: $04
    ld hl, sp+$07                                 ; $7f57: $f8 $07
    ld hl, sp+$07                                 ; $7f59: $f8 $07
    rst $28                                       ; $7f5b: $ef
    ld hl, sp-$10                                 ; $7f5c: $f8 $f0
    cp $ff                                        ; $7f5e: $fe $ff
    ld hl, sp-$01                                 ; $7f60: $f8 $ff
    db $fd                                        ; $7f62: $fd
    ld [bc], a                                    ; $7f63: $02
    dec a                                         ; $7f64: $3d
    sbc [hl]                                      ; $7f65: $9e
    ld a, a                                       ; $7f66: $7f
    ld b, d                                       ; $7f67: $42
    rst $38                                       ; $7f68: $ff
    and a                                         ; $7f69: $a7
    rst $38                                       ; $7f6a: $ff
    reti                                          ; $7f6b: $d9


    rst $38                                       ; $7f6c: $ff
    or $ff                                        ; $7f6d: $f6 $ff
    ret nc                                        ; $7f6f: $d0

    ld a, a                                       ; $7f70: $7f
    ld [hl], b                                    ; $7f71: $70
    ccf                                           ; $7f72: $3f
    ld [hl-], a                                   ; $7f73: $32
    rra                                           ; $7f74: $1f
    add hl, de                                    ; $7f75: $19
    cpl                                           ; $7f76: $2f
    ccf                                           ; $7f77: $3f
    ld [hl+], a                                   ; $7f78: $22
    ld a, $4a                                     ; $7f79: $3e $4a
    ld a, [hl]                                    ; $7f7b: $7e
    ld l, e                                       ; $7f7c: $6b
    ld a, a                                       ; $7f7d: $7f
    ld [hl], c                                    ; $7f7e: $71
    ld e, a                                       ; $7f7f: $5f
    ld [hl], c                                    ; $7f80: $71
    ld e, a                                       ; $7f81: $5f
    rst $20                                       ; $7f82: $e7
    cp [hl]                                       ; $7f83: $be
    inc b                                         ; $7f84: $04
    jr nz, jr_0e2_7f89                            ; $7f85: $20 $02

    nop                                           ; $7f87: $00
    ld [bc], a                                    ; $7f88: $02

jr_0e2_7f89:
    jr nz, jr_0e2_7f0d                            ; $7f89: $20 $82

    jr nc, jr_0e2_7f9d                            ; $7f8b: $30 $10

    ld b, $20                                     ; $7f8d: $06 $20
    ld [$0200], sp                                ; $7f8f: $08 $00 $02
    ld a, [hl-]                                   ; $7f92: $3a
    adc d                                         ; $7f93: $8a
    dec a                                         ; $7f94: $3d
    daa                                           ; $7f95: $27
    dec sp                                        ; $7f96: $3b
    ccf                                           ; $7f97: $3f
    cp $0e                                        ; $7f98: $fe $0e
    db $fc                                        ; $7f9a: $fc
    cp h                                          ; $7f9b: $bc
    rst $38                                       ; $7f9c: $ff

jr_0e2_7f9d:
    sbc a                                         ; $7f9d: $9f
    ld [bc], a                                    ; $7f9e: $02
    ldh [rNR32], a                                ; $7f9f: $e0 $1c
    nop                                           ; $7fa1: $00
    add h                                         ; $7fa2: $84
    ld e, $06                                     ; $7fa3: $1e $06
    add hl, de                                    ; $7fa5: $19
    rra                                           ; $7fa6: $1f
    ld [bc], a                                    ; $7fa7: $02
    ld c, $18                                     ; $7fa8: $0e $18
    nop                                           ; $7faa: $00
    rst $38                                       ; $7fab: $ff
    rlca                                          ; $7fac: $07
    ld bc, $07f8                                  ; $7fad: $01 $f8 $07
    ld a, [c]                                     ; $7fb0: $f2
    ld bc, $fdec                                  ; $7fb1: $01 $ec $fd
    adc b                                         ; $7fb4: $88
    nop                                           ; $7fb5: $00
    ld e, h                                       ; $7fb6: $5c
    nop                                           ; $7fb7: $00
    jp c, $8600                                   ; $7fb8: $da $00 $86

    nop                                           ; $7fbb: $00
    ld bc, $0005                                  ; $7fbc: $01 $05 $00
    add l                                         ; $7fbf: $85
    ld bc, $8300                                  ; $7fc0: $01 $00 $83
    nop                                           ; $7fc3: $00
    ld bc, $000e                                  ; $7fc4: $01 $0e $00
    rst $38                                       ; $7fc7: $ff
    rlca                                          ; $7fc8: $07
    ld bc, $07f8                                  ; $7fc9: $01 $f8 $07
    ld a, [c]                                     ; $7fcc: $f2
    ld bc, $fdec                                  ; $7fcd: $01 $ec $fd
    adc b                                         ; $7fd0: $88
    nop                                           ; $7fd1: $00
    ld e, h                                       ; $7fd2: $5c
    nop                                           ; $7fd3: $00
    jp c, $8600                                   ; $7fd4: $da $00 $86

    nop                                           ; $7fd7: $00
    ld bc, $0005                                  ; $7fd8: $01 $05 $00
    add l                                         ; $7fdb: $85
    ld bc, $8300                                  ; $7fdc: $01 $00 $83
    nop                                           ; $7fdf: $00
    ld bc, $000e                                  ; $7fe0: $01 $0e $00
    rst $38                                       ; $7fe3: $ff
    rlca                                          ; $7fe4: $07
    ld bc, $07f8                                  ; $7fe5: $01 $f8 $07
    ld a, [c]                                     ; $7fe8: $f2
    ld bc, $fded                                  ; $7fe9: $01 $ed $fd
    adc b                                         ; $7fec: $88
    nop                                           ; $7fed: $00
    ld e, h                                       ; $7fee: $5c
    nop                                           ; $7fef: $00
    jp c, $8700                                   ; $7ff0: $da $00 $87

    nop                                           ; $7ff3: $00
    ld bc, $0005                                  ; $7ff4: $01 $05 $00
    add e                                         ; $7ff7: $83
    ld bc, $8300                                  ; $7ff8: $01 $00 $83
    stop                                          ; $7ffb: $10 $00
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
