; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    db $20

    nop                                           ; $4001: $00
    adc e                                         ; $4002: $8b
    inc h                                         ; $4003: $24
    nop                                           ; $4004: $00
    sbc c                                         ; $4005: $99
    inc h                                         ; $4006: $24
    nop                                           ; $4007: $00
    and d                                         ; $4008: $a2
    inc h                                         ; $4009: $24

    db $00, $bd, $24, $00, $c2, $24, $00, $c6, $24, $00, $ca, $24, $00, $ce, $24, $00
    db $d9, $24, $00, $e5, $24

    nop                                           ; $401f: $00
    xor $24                                       ; $4020: $ee $24
    nop                                           ; $4022: $00
    rst $30                                       ; $4023: $f7
    inc h                                         ; $4024: $24

    db $00, $01, $25

    nop                                           ; $4028: $00
    inc c                                         ; $4029: $0c
    dec h                                         ; $402a: $25
    nop                                           ; $402b: $00
    rla                                           ; $402c: $17
    dec h                                         ; $402d: $25
    nop                                           ; $402e: $00
    ld [hl+], a                                   ; $402f: $22
    dec h                                         ; $4030: $25
    nop                                           ; $4031: $00
    ld l, $25                                     ; $4032: $2e $25
    nop                                           ; $4034: $00
    ld a, [hl-]                                   ; $4035: $3a
    dec h                                         ; $4036: $25
    nop                                           ; $4037: $00
    ld b, a                                       ; $4038: $47
    dec h                                         ; $4039: $25
    nop                                           ; $403a: $00
    ld d, b                                       ; $403b: $50
    dec h                                         ; $403c: $25
    nop                                           ; $403d: $00
    ld e, c                                       ; $403e: $59
    dec h                                         ; $403f: $25
    nop                                           ; $4040: $00
    ld h, d                                       ; $4041: $62
    dec h                                         ; $4042: $25
    nop                                           ; $4043: $00
    ld l, a                                       ; $4044: $6f
    dec h                                         ; $4045: $25
    nop                                           ; $4046: $00
    ld a, e                                       ; $4047: $7b
    dec h                                         ; $4048: $25
    nop                                           ; $4049: $00
    add [hl]                                      ; $404a: $86
    dec h                                         ; $404b: $25
    nop                                           ; $404c: $00
    sub d                                         ; $404d: $92
    dec h                                         ; $404e: $25
    nop                                           ; $404f: $00
    sbc [hl]                                      ; $4050: $9e
    dec h                                         ; $4051: $25
    nop                                           ; $4052: $00
    or h                                          ; $4053: $b4
    dec h                                         ; $4054: $25
    nop                                           ; $4055: $00
    push de                                       ; $4056: $d5
    dec h                                         ; $4057: $25

    db $00, $e4, $25, $00, $f9, $25, $00, $12, $26, $00, $85, $26, $00, $c5, $26, $00
    db $dc, $26, $00, $f0, $26, $00, $03, $27, $00, $16, $27

    nop                                           ; $4073: $00
    add hl, hl                                    ; $4074: $29
    daa                                           ; $4075: $27
    nop                                           ; $4076: $00
    ld c, [hl]                                    ; $4077: $4e
    daa                                           ; $4078: $27
    nop                                           ; $4079: $00
    ld [hl], c                                    ; $407a: $71
    daa                                           ; $407b: $27
    nop                                           ; $407c: $00
    sub [hl]                                      ; $407d: $96
    daa                                           ; $407e: $27
    nop                                           ; $407f: $00
    cp d                                          ; $4080: $ba
    daa                                           ; $4081: $27

    db $00, $dc, $27, $00, $e6, $27, $00, $04, $28, $00, $1b, $28, $00, $2a, $28, $00
    db $5b, $28, $00, $75, $28, $00, $83, $28, $00, $8d, $28

    nop                                           ; $409d: $00
    sbc h                                         ; $409e: $9c
    jr z, jr_020_40a1                             ; $409f: $28 $00

jr_020_40a1:
    xor a                                         ; $40a1: $af
    jr z, jr_020_40a4                             ; $40a2: $28 $00

jr_020_40a4:
    call RST_28                                   ; $40a4: $cd $28 $00
    ld [de], a                                    ; $40a7: $12
    add hl, hl                                    ; $40a8: $29
    nop                                           ; $40a9: $00
    dec sp                                        ; $40aa: $3b
    add hl, hl                                    ; $40ab: $29
    nop                                           ; $40ac: $00
    ld d, c                                       ; $40ad: $51
    add hl, hl                                    ; $40ae: $29
    nop                                           ; $40af: $00
    ld [hl], d                                    ; $40b0: $72
    add hl, hl                                    ; $40b1: $29
    nop                                           ; $40b2: $00
    sub h                                         ; $40b3: $94
    add hl, hl                                    ; $40b4: $29
    nop                                           ; $40b5: $00
    cp d                                          ; $40b6: $ba
    add hl, hl                                    ; $40b7: $29
    nop                                           ; $40b8: $00
    sbc $29                                       ; $40b9: $de $29
    nop                                           ; $40bb: $00
    or $29                                        ; $40bc: $f6 $29
    nop                                           ; $40be: $00
    inc e                                         ; $40bf: $1c
    ld a, [hl+]                                   ; $40c0: $2a
    nop                                           ; $40c1: $00
    inc l                                         ; $40c2: $2c
    ld a, [hl+]                                   ; $40c3: $2a
    nop                                           ; $40c4: $00
    ld l, b                                       ; $40c5: $68
    ld a, [hl+]                                   ; $40c6: $2a
    nop                                           ; $40c7: $00
    add b                                         ; $40c8: $80
    ld a, [hl+]                                   ; $40c9: $2a
    nop                                           ; $40ca: $00
    push hl                                       ; $40cb: $e5
    ld a, [hl+]                                   ; $40cc: $2a
    nop                                           ; $40cd: $00
    rst $30                                       ; $40ce: $f7
    ld a, [hl+]                                   ; $40cf: $2a
    nop                                           ; $40d0: $00
    dec de                                        ; $40d1: $1b
    dec hl                                        ; $40d2: $2b
    nop                                           ; $40d3: $00
    ld a, [hl+]                                   ; $40d4: $2a
    dec hl                                        ; $40d5: $2b
    nop                                           ; $40d6: $00
    jr c, jr_020_4104                             ; $40d7: $38 $2b

    nop                                           ; $40d9: $00
    ld c, b                                       ; $40da: $48
    dec hl                                        ; $40db: $2b
    nop                                           ; $40dc: $00
    ld [hl], h                                    ; $40dd: $74
    dec hl                                        ; $40de: $2b
    nop                                           ; $40df: $00
    adc b                                         ; $40e0: $88
    dec hl                                        ; $40e1: $2b

    db $00, $8c, $2b, $00, $91, $2b

    nop                                           ; $40e8: $00
    sbc c                                         ; $40e9: $99
    dec hl                                        ; $40ea: $2b
    nop                                           ; $40eb: $00
    push bc                                       ; $40ec: $c5
    dec hl                                        ; $40ed: $2b
    nop                                           ; $40ee: $00
    db $ec                                        ; $40ef: $ec
    dec hl                                        ; $40f0: $2b
    nop                                           ; $40f1: $00
    inc c                                         ; $40f2: $0c
    inc l                                         ; $40f3: $2c
    nop                                           ; $40f4: $00
    ld d, d                                       ; $40f5: $52
    inc l                                         ; $40f6: $2c
    nop                                           ; $40f7: $00
    ld a, b                                       ; $40f8: $78
    inc l                                         ; $40f9: $2c
    nop                                           ; $40fa: $00
    and b                                         ; $40fb: $a0
    inc l                                         ; $40fc: $2c
    nop                                           ; $40fd: $00
    add $2c                                       ; $40fe: $c6 $2c
    nop                                           ; $4100: $00
    jp hl                                         ; $4101: $e9


    inc l                                         ; $4102: $2c
    nop                                           ; $4103: $00

jr_020_4104:
    ld a, [hl+]                                   ; $4104: $2a
    dec l                                         ; $4105: $2d
    nop                                           ; $4106: $00
    dec [hl]                                      ; $4107: $35
    dec l                                         ; $4108: $2d
    nop                                           ; $4109: $00
    ld d, a                                       ; $410a: $57
    dec l                                         ; $410b: $2d
    nop                                           ; $410c: $00
    ld h, [hl]                                    ; $410d: $66
    dec l                                         ; $410e: $2d
    nop                                           ; $410f: $00
    add e                                         ; $4110: $83
    dec l                                         ; $4111: $2d
    nop                                           ; $4112: $00
    sub e                                         ; $4113: $93
    dec l                                         ; $4114: $2d

    db $00, $c2, $2d, $00, $ff, $2d, $00, $30, $2e, $00, $60, $2e, $00, $bc, $2e, $00
    db $cd, $2e, $00, $26, $2f, $00, $3a, $2f

    nop                                           ; $412d: $00
    ld e, a                                       ; $412e: $5f
    cpl                                           ; $412f: $2f
    nop                                           ; $4130: $00
    ld a, e                                       ; $4131: $7b
    cpl                                           ; $4132: $2f
    nop                                           ; $4133: $00
    add l                                         ; $4134: $85
    cpl                                           ; $4135: $2f
    nop                                           ; $4136: $00
    xor [hl]                                      ; $4137: $ae
    cpl                                           ; $4138: $2f
    nop                                           ; $4139: $00
    db $e4                                        ; $413a: $e4
    cpl                                           ; $413b: $2f
    nop                                           ; $413c: $00
    add sp, $2f                                   ; $413d: $e8 $2f
    nop                                           ; $413f: $00
    dec d                                         ; $4140: $15
    jr nc, jr_020_4143                            ; $4141: $30 $00

jr_020_4143:
    inc a                                         ; $4143: $3c
    jr nc, jr_020_4146                            ; $4144: $30 $00

jr_020_4146:
    ld c, d                                       ; $4146: $4a
    jr nc, jr_020_4149                            ; $4147: $30 $00

jr_020_4149:
    ld h, e                                       ; $4149: $63
    jr nc, jr_020_414c                            ; $414a: $30 $00

jr_020_414c:
    ld a, d                                       ; $414c: $7a
    jr nc, jr_020_414f                            ; $414d: $30 $00

jr_020_414f:
    and l                                         ; $414f: $a5
    jr nc, jr_020_4152                            ; $4150: $30 $00

jr_020_4152:
    cp b                                          ; $4152: $b8
    jr nc, jr_020_4155                            ; $4153: $30 $00

jr_020_4155:
    inc de                                        ; $4155: $13
    ld sp, $3500                                  ; $4156: $31 $00 $35
    ld sp, $3f00                                  ; $4159: $31 $00 $3f
    ld sp, $6200                                  ; $415c: $31 $00 $62
    ld sp, $6c00                                  ; $415f: $31 $00 $6c
    ld sp, $a900                                  ; $4162: $31 $00 $a9
    ld sp, $d200                                  ; $4165: $31 $00 $d2
    ld sp, $e000                                  ; $4168: $31 $00 $e0
    ld sp, $ff00                                  ; $416b: $31 $00 $ff
    db $31                                        ; $416e: $31

    db $00, $10, $32, $00, $32, $32, $00, $47, $32

    nop                                           ; $4178: $00
    ld h, [hl]                                    ; $4179: $66
    ld [hl-], a                                   ; $417a: $32

    db $00, $6f, $32

    nop                                           ; $417e: $00
    add d                                         ; $417f: $82
    ld [hl-], a                                   ; $4180: $32
    nop                                           ; $4181: $00
    adc b                                         ; $4182: $88
    ld [hl-], a                                   ; $4183: $32
    nop                                           ; $4184: $00
    sub d                                         ; $4185: $92
    ld [hl-], a                                   ; $4186: $32
    nop                                           ; $4187: $00
    sbc e                                         ; $4188: $9b
    ld [hl-], a                                   ; $4189: $32
    nop                                           ; $418a: $00
    and a                                         ; $418b: $a7
    ld [hl-], a                                   ; $418c: $32
    nop                                           ; $418d: $00
    or e                                          ; $418e: $b3
    ld [hl-], a                                   ; $418f: $32
    nop                                           ; $4190: $00
    cp a                                          ; $4191: $bf
    ld [hl-], a                                   ; $4192: $32
    nop                                           ; $4193: $00
    ret nc                                        ; $4194: $d0

    ld [hl-], a                                   ; $4195: $32
    nop                                           ; $4196: $00
    ret c                                         ; $4197: $d8

    ld [hl-], a                                   ; $4198: $32
    nop                                           ; $4199: $00
    db $dd                                        ; $419a: $dd
    ld [hl-], a                                   ; $419b: $32
    nop                                           ; $419c: $00

Call_020_419d:
    nop                                           ; $419d: $00
    inc sp                                        ; $419e: $33
    nop                                           ; $419f: $00
    ld b, b                                       ; $41a0: $40
    inc sp                                        ; $41a1: $33
    nop                                           ; $41a2: $00
    ld h, b                                       ; $41a3: $60
    inc sp                                        ; $41a4: $33
    nop                                           ; $41a5: $00
    ld l, a                                       ; $41a6: $6f
    inc sp                                        ; $41a7: $33
    nop                                           ; $41a8: $00
    add c                                         ; $41a9: $81
    inc sp                                        ; $41aa: $33
    nop                                           ; $41ab: $00
    sub e                                         ; $41ac: $93
    inc sp                                        ; $41ad: $33
    nop                                           ; $41ae: $00
    xor [hl]                                      ; $41af: $ae
    inc sp                                        ; $41b0: $33
    nop                                           ; $41b1: $00
    db $d3                                        ; $41b2: $d3
    inc sp                                        ; $41b3: $33
    nop                                           ; $41b4: $00
    jp hl                                         ; $41b5: $e9


    inc sp                                        ; $41b6: $33
    nop                                           ; $41b7: $00
    rla                                           ; $41b8: $17
    inc [hl]                                      ; $41b9: $34
    nop                                           ; $41ba: $00
    rra                                           ; $41bb: $1f
    inc [hl]                                      ; $41bc: $34
    nop                                           ; $41bd: $00
    inc [hl]                                      ; $41be: $34
    inc [hl]                                      ; $41bf: $34
    nop                                           ; $41c0: $00
    ld l, h                                       ; $41c1: $6c
    inc [hl]                                      ; $41c2: $34
    nop                                           ; $41c3: $00
    add e                                         ; $41c4: $83
    inc [hl]                                      ; $41c5: $34
    nop                                           ; $41c6: $00
    and [hl]                                      ; $41c7: $a6
    inc [hl]                                      ; $41c8: $34
    nop                                           ; $41c9: $00
    cp [hl]                                       ; $41ca: $be
    inc [hl]                                      ; $41cb: $34
    nop                                           ; $41cc: $00
    ret c                                         ; $41cd: $d8

    inc [hl]                                      ; $41ce: $34
    nop                                           ; $41cf: $00
    xor $34                                       ; $41d0: $ee $34
    nop                                           ; $41d2: $00
    ld [bc], a                                    ; $41d3: $02
    dec [hl]                                      ; $41d4: $35
    nop                                           ; $41d5: $00
    add hl, bc                                    ; $41d6: $09
    dec [hl]                                      ; $41d7: $35
    nop                                           ; $41d8: $00
    ld [hl+], a                                   ; $41d9: $22
    dec [hl]                                      ; $41da: $35
    nop                                           ; $41db: $00
    ld b, c                                       ; $41dc: $41
    dec [hl]                                      ; $41dd: $35
    nop                                           ; $41de: $00
    ld c, d                                       ; $41df: $4a
    dec [hl]                                      ; $41e0: $35
    nop                                           ; $41e1: $00
    ld h, e                                       ; $41e2: $63
    dec [hl]                                      ; $41e3: $35
    nop                                           ; $41e4: $00
    ld a, b                                       ; $41e5: $78
    dec [hl]                                      ; $41e6: $35
    nop                                           ; $41e7: $00
    sub d                                         ; $41e8: $92
    dec [hl]                                      ; $41e9: $35
    nop                                           ; $41ea: $00
    pop bc                                        ; $41eb: $c1
    dec [hl]                                      ; $41ec: $35
    nop                                           ; $41ed: $00
    pop af                                        ; $41ee: $f1
    dec [hl]                                      ; $41ef: $35
    nop                                           ; $41f0: $00
    rla                                           ; $41f1: $17
    ld [hl], $00                                  ; $41f2: $36 $00
    add hl, sp                                    ; $41f4: $39
    ld [hl], $00                                  ; $41f5: $36 $00
    ld c, l                                       ; $41f7: $4d
    ld [hl], $00                                  ; $41f8: $36 $00
    ld h, h                                       ; $41fa: $64
    ld [hl], $00                                  ; $41fb: $36 $00
    ld a, d                                       ; $41fd: $7a
    ld [hl], $00                                  ; $41fe: $36 $00
    sub c                                         ; $4200: $91
    ld [hl], $00                                  ; $4201: $36 $00
    and [hl]                                      ; $4203: $a6
    ld [hl], $00                                  ; $4204: $36 $00
    cp [hl]                                       ; $4206: $be
    ld [hl], $00                                  ; $4207: $36 $00
    pop de                                        ; $4209: $d1
    ld [hl], $00                                  ; $420a: $36 $00
    pop af                                        ; $420c: $f1
    ld [hl], $00                                  ; $420d: $36 $00
    rlca                                          ; $420f: $07

Jump_020_4210:
    scf                                           ; $4210: $37
    nop                                           ; $4211: $00
    rra                                           ; $4212: $1f
    scf                                           ; $4213: $37
    nop                                           ; $4214: $00
    inc [hl]                                      ; $4215: $34
    scf                                           ; $4216: $37
    nop                                           ; $4217: $00
    ld b, c                                       ; $4218: $41
    scf                                           ; $4219: $37
    nop                                           ; $421a: $00
    ld d, b                                       ; $421b: $50
    scf                                           ; $421c: $37
    nop                                           ; $421d: $00
    ld e, l                                       ; $421e: $5d
    scf                                           ; $421f: $37
    nop                                           ; $4220: $00
    halt                                          ; $4221: $76
    scf                                           ; $4222: $37
    nop                                           ; $4223: $00
    xor c                                         ; $4224: $a9
    scf                                           ; $4225: $37
    nop                                           ; $4226: $00
    jp Jump_000_0037                              ; $4227: $c3 $37 $00


    sbc $37                                       ; $422a: $de $37
    nop                                           ; $422c: $00
    db $ed                                        ; $422d: $ed
    scf                                           ; $422e: $37
    nop                                           ; $422f: $00
    cp $37                                        ; $4230: $fe $37
    nop                                           ; $4232: $00
    rrca                                          ; $4233: $0f
    jr c, jr_020_4236                             ; $4234: $38 $00

jr_020_4236:
    ld h, $38                                     ; $4236: $26 $38
    nop                                           ; $4238: $00
    add hl, sp                                    ; $4239: $39
    jr c, jr_020_423c                             ; $423a: $38 $00

jr_020_423c:
    ld c, [hl]                                    ; $423c: $4e
    jr c, jr_020_423f                             ; $423d: $38 $00

jr_020_423f:
    ld e, d                                       ; $423f: $5a
    jr c, jr_020_4242                             ; $4240: $38 $00

jr_020_4242:
    ld a, a                                       ; $4242: $7f
    jr c, jr_020_4245                             ; $4243: $38 $00

jr_020_4245:
    adc l                                         ; $4245: $8d
    jr c, jr_020_4248                             ; $4246: $38 $00

jr_020_4248:
    and d                                         ; $4248: $a2
    jr c, jr_020_424b                             ; $4249: $38 $00

jr_020_424b:
    jp c, $0038                                   ; $424b: $da $38 $00

    db $ec                                        ; $424e: $ec
    jr c, jr_020_4251                             ; $424f: $38 $00

jr_020_4251:
    ld a, [bc]                                    ; $4251: $0a
    add hl, sp                                    ; $4252: $39
    nop                                           ; $4253: $00
    jr jr_020_428f                                ; $4254: $18 $39

    nop                                           ; $4256: $00
    ld h, $39                                     ; $4257: $26 $39
    nop                                           ; $4259: $00
    ld b, h                                       ; $425a: $44
    add hl, sp                                    ; $425b: $39
    nop                                           ; $425c: $00
    halt                                          ; $425d: $76
    add hl, sp                                    ; $425e: $39
    nop                                           ; $425f: $00
    ld a, [hl]                                    ; $4260: $7e
    add hl, sp                                    ; $4261: $39
    nop                                           ; $4262: $00
    xor l                                         ; $4263: $ad
    add hl, sp                                    ; $4264: $39
    nop                                           ; $4265: $00
    cp [hl]                                       ; $4266: $be
    add hl, sp                                    ; $4267: $39
    nop                                           ; $4268: $00
    cp $39                                        ; $4269: $fe $39
    nop                                           ; $426b: $00
    jr nz, jr_020_42a8                            ; $426c: $20 $3a

    nop                                           ; $426e: $00
    jr z, jr_020_42ab                             ; $426f: $28 $3a

    nop                                           ; $4271: $00
    ld c, e                                       ; $4272: $4b
    ld a, [hl-]                                   ; $4273: $3a
    nop                                           ; $4274: $00
    ld l, d                                       ; $4275: $6a
    ld a, [hl-]                                   ; $4276: $3a
    nop                                           ; $4277: $00
    ld l, l                                       ; $4278: $6d
    ld a, [hl-]                                   ; $4279: $3a
    nop                                           ; $427a: $00
    add l                                         ; $427b: $85
    ld a, [hl-]                                   ; $427c: $3a
    nop                                           ; $427d: $00
    sub b                                         ; $427e: $90
    ld a, [hl-]                                   ; $427f: $3a
    nop                                           ; $4280: $00
    and [hl]                                      ; $4281: $a6
    ld a, [hl-]                                   ; $4282: $3a
    nop                                           ; $4283: $00
    xor a                                         ; $4284: $af
    ld a, [hl-]                                   ; $4285: $3a
    nop                                           ; $4286: $00
    cp b                                          ; $4287: $b8
    ld a, [hl-]                                   ; $4288: $3a
    nop                                           ; $4289: $00
    ld b, h                                       ; $428a: $44
    dec sp                                        ; $428b: $3b
    nop                                           ; $428c: $00
    ld [hl], d                                    ; $428d: $72
    dec sp                                        ; $428e: $3b

jr_020_428f:
    nop                                           ; $428f: $00
    xor l                                         ; $4290: $ad
    dec sp                                        ; $4291: $3b
    nop                                           ; $4292: $00
    pop bc                                        ; $4293: $c1
    dec sp                                        ; $4294: $3b
    nop                                           ; $4295: $00
    push hl                                       ; $4296: $e5
    dec sp                                        ; $4297: $3b
    nop                                           ; $4298: $00
    ld d, $3c                                     ; $4299: $16 $3c
    nop                                           ; $429b: $00
    cpl                                           ; $429c: $2f
    inc a                                         ; $429d: $3c
    nop                                           ; $429e: $00
    sub d                                         ; $429f: $92
    inc a                                         ; $42a0: $3c
    nop                                           ; $42a1: $00
    ret c                                         ; $42a2: $d8

    inc a                                         ; $42a3: $3c
    nop                                           ; $42a4: $00
    ld a, [bc]                                    ; $42a5: $0a
    dec a                                         ; $42a6: $3d
    nop                                           ; $42a7: $00

jr_020_42a8:
    inc sp                                        ; $42a8: $33
    dec a                                         ; $42a9: $3d
    nop                                           ; $42aa: $00

jr_020_42ab:
    ld h, [hl]                                    ; $42ab: $66
    dec a                                         ; $42ac: $3d
    nop                                           ; $42ad: $00
    add c                                         ; $42ae: $81
    dec a                                         ; $42af: $3d
    nop                                           ; $42b0: $00
    call $003d                                    ; $42b1: $cd $3d $00
    ldh [$3d], a                                  ; $42b4: $e0 $3d
    nop                                           ; $42b6: $00
    db $f4                                        ; $42b7: $f4
    dec a                                         ; $42b8: $3d
    nop                                           ; $42b9: $00
    db $10                                        ; $42ba: $10
    ld a, $00                                     ; $42bb: $3e $00
    jr nc, @+$40                                  ; $42bd: $30 $3e

    nop                                           ; $42bf: $00
    ld d, e                                       ; $42c0: $53
    ld a, $00                                     ; $42c1: $3e $00
    ld [hl], b                                    ; $42c3: $70
    ld a, $00                                     ; $42c4: $3e $00
    add l                                         ; $42c6: $85
    ld a, $00                                     ; $42c7: $3e $00
    adc c                                         ; $42c9: $89
    ld a, $00                                     ; $42ca: $3e $00
    xor d                                         ; $42cc: $aa
    ld a, $00                                     ; $42cd: $3e $00
    xor a                                         ; $42cf: $af
    ld a, $00                                     ; $42d0: $3e $00
    or h                                          ; $42d2: $b4
    ld a, $00                                     ; $42d3: $3e $00
    jp hl                                         ; $42d5: $e9


    ld a, $00                                     ; $42d6: $3e $00
    db $fc                                        ; $42d8: $fc
    ld a, $00                                     ; $42d9: $3e $00
    ld h, $3f                                     ; $42db: $26 $3f
    nop                                           ; $42dd: $00
    ld sp, $003f                                  ; $42de: $31 $3f $00
    ld h, h                                       ; $42e1: $64
    ccf                                           ; $42e2: $3f
    nop                                           ; $42e3: $00
    ld l, e                                       ; $42e4: $6b
    ccf                                           ; $42e5: $3f
    nop                                           ; $42e6: $00
    ld a, a                                       ; $42e7: $7f
    ccf                                           ; $42e8: $3f
    nop                                           ; $42e9: $00
    adc a                                         ; $42ea: $8f
    ccf                                           ; $42eb: $3f
    nop                                           ; $42ec: $00
    or a                                          ; $42ed: $b7
    ccf                                           ; $42ee: $3f
    ld bc, $0001                                  ; $42ef: $01 $01 $00
    ld bc, $0015                                  ; $42f2: $01 $15 $00
    ld bc, $0020                                  ; $42f5: $01 $20 $00
    ld bc, $0036                                  ; $42f8: $01 $36 $00
    ld bc, $004e                                  ; $42fb: $01 $4e $00
    ld bc, $0066                                  ; $42fe: $01 $66 $00
    ld bc, $007d                                  ; $4301: $01 $7d $00
    ld bc, $00ad                                  ; $4304: $01 $ad $00
    ld bc, $00bb                                  ; $4307: $01 $bb $00
    ld bc, $0131                                  ; $430a: $01 $31 $01
    ld bc, $013b                                  ; $430d: $01 $3b $01
    ld bc, $014c                   ; $4310: $01 $4c $01
    ld bc, $015a                                  ; $4313: $01 $5a $01
    ld bc, $0178                                  ; $4316: $01 $78 $01
    ld bc, $0189                                  ; $4319: $01 $89 $01
    ld bc, $01ad                                  ; $431c: $01 $ad $01
    ld bc, $01bc                                  ; $431f: $01 $bc $01
    ld bc, $01d3                                  ; $4322: $01 $d3 $01
    ld bc, $023b                                  ; $4325: $01 $3b $02
    ld bc, $024f                                  ; $4328: $01 $4f $02
    ld bc, $0266                                  ; $432b: $01 $66 $02
    ld bc, $0288                                  ; $432e: $01 $88 $02
    ld bc, $029b                                  ; $4331: $01 $9b $02
    ld bc, $02c3                                  ; $4334: $01 $c3 $02
    ld bc, $02d9                                  ; $4337: $01 $d9 $02
    ld bc, $02fa                                  ; $433a: $01 $fa $02
    ld bc, $0317                                  ; $433d: $01 $17 $03
    ld bc, $0334                                  ; $4340: $01 $34 $03
    ld bc, $0352                                  ; $4343: $01 $52 $03
    ld bc, $036f                                  ; $4346: $01 $6f $03
    ld bc, $0402                                  ; $4349: $01 $02 $04
    ld bc, $0414                                  ; $434c: $01 $14 $04
    ld bc, $046a                                  ; $434f: $01 $6a $04
    ld bc, $0477                                  ; $4352: $01 $77 $04
    ld bc, $048b                                  ; $4355: $01 $8b $04
    ld bc, $0497                                  ; $4358: $01 $97 $04
    ld bc, $04da                                  ; $435b: $01 $da $04
    ld bc, $052d                                  ; $435e: $01 $2d $05
    ld bc, $054a                                  ; $4361: $01 $4a $05
    ld bc, $055b                                  ; $4364: $01 $5b $05
    ld bc, $0570                                  ; $4367: $01 $70 $05
    ld bc, $057f                                  ; $436a: $01 $7f $05
    ld bc, $0594                                  ; $436d: $01 $94 $05
    ld bc, $05a5                                  ; $4370: $01 $a5 $05
    ld bc, $05b7                                  ; $4373: $01 $b7 $05
    ld bc, $05c6                                  ; $4376: $01 $c6 $05
    ld bc, $05d3                                  ; $4379: $01 $d3 $05
    ld bc, $05dc                                  ; $437c: $01 $dc $05
    ld bc, $05e6                                  ; $437f: $01 $e6 $05
    ld bc, $05fa                                  ; $4382: $01 $fa $05
    ld bc, $061b                                  ; $4385: $01 $1b $06
    ld bc, $0642                                  ; $4388: $01 $42 $06
    ld bc, $066a                                  ; $438b: $01 $6a $06
    ld bc, $0676                                  ; $438e: $01 $76 $06
    ld bc, $0696                                  ; $4391: $01 $96 $06
    ld bc, $06be                                  ; $4394: $01 $be $06
    ld bc, $06e1                                  ; $4397: $01 $e1 $06
    ld bc, $06f4                                  ; $439a: $01 $f4 $06
    ld bc, $0703                                  ; $439d: $01 $03 $07
    ld bc, $0711                                  ; $43a0: $01 $11 $07
    ld bc, $0722                                  ; $43a3: $01 $22 $07
    ld bc, $0733                                  ; $43a6: $01 $33 $07
    ld bc, $0748                                  ; $43a9: $01 $48 $07
    ld bc, $0755                                  ; $43ac: $01 $55 $07
    ld bc, $0763                                  ; $43af: $01 $63 $07
    ld bc, $0778                                  ; $43b2: $01 $78 $07
    ld bc, $0797                                  ; $43b5: $01 $97 $07
    ld bc, $07d2                                  ; $43b8: $01 $d2 $07
    ld bc, $07e9                                  ; $43bb: $01 $e9 $07
    ld bc, $07ec                                  ; $43be: $01 $ec $07
    ld bc, $080f                                  ; $43c1: $01 $0f $08
    ld bc, $081f                                  ; $43c4: $01 $1f $08
    ld bc, $0839                                  ; $43c7: $01 $39 $08
    ld bc, $0846                                  ; $43ca: $01 $46 $08
    ld bc, $085a                                  ; $43cd: $01 $5a $08
    ld bc, $0880                                  ; $43d0: $01 $80 $08
    ld bc, $08eb                                  ; $43d3: $01 $eb $08
    ld bc, $0900                                  ; $43d6: $01 $00 $09
    ld bc, $090b                                  ; $43d9: $01 $0b $09
    ld bc, $091b                                  ; $43dc: $01 $1b $09
    ld bc, $092d                                  ; $43df: $01 $2d $09
    ld bc, $095e                                  ; $43e2: $01 $5e $09
    ld bc, $097c                                  ; $43e5: $01 $7c $09
    ld bc, $0994                                  ; $43e8: $01 $94 $09
    ld bc, $09bb                                  ; $43eb: $01 $bb $09
    ld bc, $09f7                                  ; $43ee: $01 $f7 $09
    ld bc, $0a35                                  ; $43f1: $01 $35 $0a
    ld bc, $0a60                                  ; $43f4: $01 $60 $0a
    ld bc, $0a8f                                  ; $43f7: $01 $8f $0a
    ld bc, $0abb                                  ; $43fa: $01 $bb $0a
    ld bc, $0afe                                  ; $43fd: $01 $fe $0a
    ld bc, $0b33                                  ; $4400: $01 $33 $0b
    ld bc, $0b67                                  ; $4403: $01 $67 $0b
    ld bc, $0ba8                                  ; $4406: $01 $a8 $0b
    ld bc, $0be5                                  ; $4409: $01 $e5 $0b
    ld bc, $0c10                                  ; $440c: $01 $10 $0c
    ld bc, $0c3e                                  ; $440f: $01 $3e $0c
    ld bc, $0c62                                  ; $4412: $01 $62 $0c
    ld bc, $0ca0                                  ; $4415: $01 $a0 $0c
    ld bc, $0cd2                                  ; $4418: $01 $d2 $0c
    ld bc, $0d0c                                  ; $441b: $01 $0c $0d
    ld bc, $0d51                                  ; $441e: $01 $51 $0d
    ld bc, $0d7f                                  ; $4421: $01 $7f $0d
    ld bc, $0daf                                  ; $4424: $01 $af $0d
    ld bc, $0de7                                  ; $4427: $01 $e7 $0d
    ld bc, $0e0c                                  ; $442a: $01 $0c $0e
    ld bc, $0e40                                  ; $442d: $01 $40 $0e
    ld bc, $0e6f                                  ; $4430: $01 $6f $0e
    ld bc, $0e99                                  ; $4433: $01 $99 $0e
    ld bc, $0ecd                                  ; $4436: $01 $cd $0e
    ld bc, $0f00                                  ; $4439: $01 $00 $0f
    ld bc, $0f48                                  ; $443c: $01 $48 $0f
    ld bc, $0f88                                  ; $443f: $01 $88 $0f
    ld bc, $0fd3                                  ; $4442: $01 $d3 $0f
    ld bc, $0ffd                                  ; $4445: $01 $fd $0f
    ld bc, $102d                                  ; $4448: $01 $2d $10
    ld bc, $105a                                  ; $444b: $01 $5a $10
    ld bc, $108e                                  ; $444e: $01 $8e $10
    ld bc, $10d9                                  ; $4451: $01 $d9 $10
    ld bc, $112a                                  ; $4454: $01 $2a $11
    ld bc, $115d                                  ; $4457: $01 $5d $11
    ld bc, $118b                                  ; $445a: $01 $8b $11
    ld bc, $11ca                                  ; $445d: $01 $ca $11
    ld bc, $1201                                  ; $4460: $01 $01 $12
    ld bc, $1225                                  ; $4463: $01 $25 $12
    ld bc, $124f                                  ; $4466: $01 $4f $12
    ld bc, $127c                                  ; $4469: $01 $7c $12
    ld bc, $128a                                  ; $446c: $01 $8a $12
    ld bc, $12a5                                  ; $446f: $01 $a5 $12
    ld bc, $12b2                                  ; $4472: $01 $b2 $12
    ld bc, $12d0                                  ; $4475: $01 $d0 $12
    ld bc, $12ec                                  ; $4478: $01 $ec $12
    ld bc, $12f5                                  ; $447b: $01 $f5 $12
    ld bc, $1302                                  ; $447e: $01 $02 $13
    ld bc, $1307                                  ; $4481: $01 $07 $13
    ld bc, $1335                                  ; $4484: $01 $35 $13
    ld bc, $1351                                  ; $4487: $01 $51 $13
    ld bc, $136b                                  ; $448a: $01 $6b $13
    ld bc, $138c                                  ; $448d: $01 $8c $13
    ld bc, $139c                                  ; $4490: $01 $9c $13
    ld bc, $13a5                                  ; $4493: $01 $a5 $13
    ld bc, $13ef                                  ; $4496: $01 $ef $13
    ld bc, $1410                                  ; $4499: $01 $10 $14
    ld bc, $143a                                  ; $449c: $01 $3a $14
    ld bc, $1446                                  ; $449f: $01 $46 $14
    ld bc, $145a                                  ; $44a2: $01 $5a $14
    ld bc, $146c                                  ; $44a5: $01 $6c $14
    ld bc, $147e                                  ; $44a8: $01 $7e $14
    ld bc, $1487                                  ; $44ab: $01 $87 $14
    ld bc, $149b                                  ; $44ae: $01 $9b $14
    ld bc, $14b0                                  ; $44b1: $01 $b0 $14
    ld bc, $14cb                                  ; $44b4: $01 $cb $14
    ld bc, $14d6                                  ; $44b7: $01 $d6 $14
    ld bc, $14eb                                  ; $44ba: $01 $eb $14
    ld bc, $14ff                                  ; $44bd: $01 $ff $14
    ld bc, $1530                                  ; $44c0: $01 $30 $15
    ld bc, $1547                                  ; $44c3: $01 $47 $15
    ld bc, $1559                                  ; $44c6: $01 $59 $15
    ld bc, $156e                                  ; $44c9: $01 $6e $15
    ld bc, $158b                                  ; $44cc: $01 $8b $15
    ld bc, $15a8                                  ; $44cf: $01 $a8 $15
    ld bc, $15b0                                  ; $44d2: $01 $b0 $15
    ld bc, $15ca                                  ; $44d5: $01 $ca $15
    ld bc, $15d7                                  ; $44d8: $01 $d7 $15
    ld bc, $1609                                  ; $44db: $01 $09 $16
    ld bc, $162a                                  ; $44de: $01 $2a $16
    ld bc, $1632                                  ; $44e1: $01 $32 $16
    ld bc, $1647                                  ; $44e4: $01 $47 $16
    ld bc, $1653                                  ; $44e7: $01 $53 $16
    ld bc, $168f                                  ; $44ea: $01 $8f $16
    ld bc, $169e                                  ; $44ed: $01 $9e $16
    ld bc, $16b5                                  ; $44f0: $01 $b5 $16
    ld bc, $16c9                                  ; $44f3: $01 $c9 $16
    ld bc, $16d6                                  ; $44f6: $01 $d6 $16
    ld bc, $1728                                  ; $44f9: $01 $28 $17
    ld bc, $1736                                  ; $44fc: $01 $36 $17
    ld bc, $1747                                  ; $44ff: $01 $47 $17
    ld bc, $174e                                  ; $4502: $01 $4e $17
    ld bc, $1757                                  ; $4505: $01 $57 $17
    ld bc, $176f                                  ; $4508: $01 $6f $17
    ld bc, $1776                                  ; $450b: $01 $76 $17
    ld bc, $177e                                  ; $450e: $01 $7e $17
    ld bc, $1789                                  ; $4511: $01 $89 $17
    ld bc, $17a2                                  ; $4514: $01 $a2 $17
    ld bc, $17a7                                  ; $4517: $01 $a7 $17
    ld bc, $17c3                                  ; $451a: $01 $c3 $17
    ld bc, $17e2                                  ; $451d: $01 $e2 $17
    ld bc, $17ec                                  ; $4520: $01 $ec $17
    ld bc, $180c                                  ; $4523: $01 $0c $18
    ld bc, $181d                                  ; $4526: $01 $1d $18
    ld bc, $1850                                  ; $4529: $01 $50 $18
    ld bc, $186a                                  ; $452c: $01 $6a $18
    ld bc, $189d                                  ; $452f: $01 $9d $18
    ld bc, $18cb                                  ; $4532: $01 $cb $18
    ld bc, $1901                                  ; $4535: $01 $01 $19
    ld bc, $1949                                  ; $4538: $01 $49 $19
    ld bc, $1973                                  ; $453b: $01 $73 $19
    ld bc, $199d                                  ; $453e: $01 $9d $19
    ld bc, $19f6                                  ; $4541: $01 $f6 $19
    ld bc, $1a1c                                  ; $4544: $01 $1c $1a
    ld bc, $1a72                                  ; $4547: $01 $72 $1a
    ld bc, $1a86                                  ; $454a: $01 $86 $1a
    ld bc, $1aae                                  ; $454d: $01 $ae $1a
    ld bc, $1b6f                                  ; $4550: $01 $6f $1b
    ld bc, $1b93                                  ; $4553: $01 $93 $1b
    ld bc, $1ba5                                  ; $4556: $01 $a5 $1b
    ld bc, $1bce                                  ; $4559: $01 $ce $1b
    ld bc, $1bf2                                  ; $455c: $01 $f2 $1b
    ld bc, $1c02                                  ; $455f: $01 $02 $1c
    ld bc, $1c0e                                  ; $4562: $01 $0e $1c

    db $01, $42, $1c

    ld bc, $1c48                                  ; $4568: $01 $48 $1c
    ld bc, $1c5b                                  ; $456b: $01 $5b $1c
    ld bc, $1c9d                                  ; $456e: $01 $9d $1c
    ld bc, $1cc1                                  ; $4571: $01 $c1 $1c
    ld bc, $1ce4                                  ; $4574: $01 $e4 $1c
    ld bc, $1cf4                                  ; $4577: $01 $f4 $1c
    ld bc, $1d1a                                  ; $457a: $01 $1a $1d
    ld bc, $1d49                                  ; $457d: $01 $49 $1d
    ld bc, $1d60                                  ; $4580: $01 $60 $1d
    ld bc, $1d87                                  ; $4583: $01 $87 $1d
    ld bc, $1d9d                                  ; $4586: $01 $9d $1d
    ld bc, $1db1                                  ; $4589: $01 $b1 $1d
    ld bc, $1dca                                  ; $458c: $01 $ca $1d
    ld bc, $1dec                                  ; $458f: $01 $ec $1d
    ld bc, $1dfa                                  ; $4592: $01 $fa $1d
    ld bc, $1e20                                  ; $4595: $01 $20 $1e
    ld bc, $1e48                                  ; $4598: $01 $48 $1e
    ld bc, $1e53                                  ; $459b: $01 $53 $1e
    ld bc, $1e7d                                  ; $459e: $01 $7d $1e
    ld bc, $1e9a                                  ; $45a1: $01 $9a $1e
    ld bc, $1ea3                                  ; $45a4: $01 $a3 $1e
    ld bc, $1ee8                                  ; $45a7: $01 $e8 $1e
    ld bc, $1eed                                  ; $45aa: $01 $ed $1e
    ld bc, $1f88                                  ; $45ad: $01 $88 $1f
    ld bc, $1f93                                  ; $45b0: $01 $93 $1f
    ld bc, $1f9f                                  ; $45b3: $01 $9f $1f
    ld bc, $1fc3                                  ; $45b6: $01 $c3 $1f
    ld bc, $1fe2                                  ; $45b9: $01 $e2 $1f
    ld bc, $200d                                  ; $45bc: $01 $0d $20
    ld bc, $2042                                  ; $45bf: $01 $42 $20
    ld bc, $2065                                  ; $45c2: $01 $65 $20
    ld bc, $2083                                  ; $45c5: $01 $83 $20
    ld bc, $20bf                                  ; $45c8: $01 $bf $20
    ld bc, $212c                                  ; $45cb: $01 $2c $21
    ld bc, $215b                                  ; $45ce: $01 $5b $21
    ld bc, $2180                                  ; $45d1: $01 $80 $21
    ld bc, $2196                                  ; $45d4: $01 $96 $21
    ld bc, $21b4                                  ; $45d7: $01 $b4 $21
    ld bc, $21c8                                  ; $45da: $01 $c8 $21
    ld bc, $21ef                                  ; $45dd: $01 $ef $21
    ld bc, $2206                                  ; $45e0: $01 $06 $22
    ld bc, $2228                                  ; $45e3: $01 $28 $22

Call_020_45e6:
    ld bc, $225c                                  ; $45e6: $01 $5c $22
    ld bc, $228e                                  ; $45e9: $01 $8e $22
    ld bc, $22ac                                  ; $45ec: $01 $ac $22
    ld bc, $22f8                                  ; $45ef: $01 $f8 $22
    ld bc, $2321                                  ; $45f2: $01 $21 $23
    ld bc, $237e                                  ; $45f5: $01 $7e $23
    ld bc, $23ae                                  ; $45f8: $01 $ae $23
    ld bc, $23d7                                  ; $45fb: $01 $d7 $23
    ld bc, $2400                                  ; $45fe: $01 $00 $24
    ld bc, $2435                                  ; $4601: $01 $35 $24
    ld bc, $244f                                  ; $4604: $01 $4f $24
    ld bc, $2467                                  ; $4607: $01 $67 $24
    ld bc, $2485                                  ; $460a: $01 $85 $24
    ld bc, $24b4                                  ; $460d: $01 $b4 $24
    ld bc, $24c4                                  ; $4610: $01 $c4 $24
    ld bc, $24dd                                  ; $4613: $01 $dd $24
    ld bc, $24f1                                  ; $4616: $01 $f1 $24
    ld bc, $2521                                  ; $4619: $01 $21 $25
    ld bc, $2556                                  ; $461c: $01 $56 $25
    ld bc, $256f                                  ; $461f: $01 $6f $25
    ld bc, $258c                                  ; $4622: $01 $8c $25
    ld bc, $25b7                                  ; $4625: $01 $b7 $25
    ld bc, $25d1                                  ; $4628: $01 $d1 $25
    ld bc, $261f                                  ; $462b: $01 $1f $26
    ld bc, $2638                                  ; $462e: $01 $38 $26
    ld bc, $2670                                  ; $4631: $01 $70 $26
    ld bc, $269b                                  ; $4634: $01 $9b $26
    ld bc, $26c0                                  ; $4637: $01 $c0 $26
    ld bc, $26eb                                  ; $463a: $01 $eb $26
    ld bc, $2709                                  ; $463d: $01 $09 $27
    ld bc, $273b                                  ; $4640: $01 $3b $27
    ld bc, $2752                                  ; $4643: $01 $52 $27
    ld bc, $277b                                  ; $4646: $01 $7b $27
    ld bc, $278f                                  ; $4649: $01 $8f $27
    ld bc, $27b9                                  ; $464c: $01 $b9 $27
    ld bc, $27e5                                  ; $464f: $01 $e5 $27
    ld bc, $27fc                                  ; $4652: $01 $fc $27
    ld bc, $2820                                  ; $4655: $01 $20 $28
    ld bc, $284a                                  ; $4658: $01 $4a $28
    ld bc, $2869                                  ; $465b: $01 $69 $28
    ld bc, $2894                                  ; $465e: $01 $94 $28
    ld bc, $28be                                  ; $4661: $01 $be $28
    ld bc, $28e8                                  ; $4664: $01 $e8 $28
    ld bc, $2906                                  ; $4667: $01 $06 $29
    ld bc, $293f                                  ; $466a: $01 $3f $29
    ld bc, $297e                                  ; $466d: $01 $7e $29
    ld bc, $29b7                                  ; $4670: $01 $b7 $29
    ld bc, $29df                                  ; $4673: $01 $df $29
    ld bc, $2a03                                  ; $4676: $01 $03 $2a
    ld bc, $2a1d                                  ; $4679: $01 $1d $2a
    ld bc, $2a3b                                  ; $467c: $01 $3b $2a
    ld bc, $2a64                                  ; $467f: $01 $64 $2a
    ld bc, $2a82                                  ; $4682: $01 $82 $2a
    ld bc, $2aba                                  ; $4685: $01 $ba $2a
    ld bc, $2ad6                                  ; $4688: $01 $d6 $2a
    ld bc, $2af3                                  ; $468b: $01 $f3 $2a
    ld bc, $2b1c                                  ; $468e: $01 $1c $2b
    ld bc, $2b40                                  ; $4691: $01 $40 $2b
    ld bc, $2b49                                  ; $4694: $01 $49 $2b

Jump_020_4697:
    ld bc, $2b6e                                  ; $4697: $01 $6e $2b
    ld bc, $2b7f                                  ; $469a: $01 $7f $2b
    ld bc, $2ba1                                  ; $469d: $01 $a1 $2b
    ld bc, $2bb1                                  ; $46a0: $01 $b1 $2b
    ld bc, $2bbd                                  ; $46a3: $01 $bd $2b
    ld bc, $2bcb                                  ; $46a6: $01 $cb $2b
    ld bc, $2be0                                  ; $46a9: $01 $e0 $2b
    ld bc, $2c01                                  ; $46ac: $01 $01 $2c
    ld bc, $2c4d                                  ; $46af: $01 $4d $2c
    ld bc, $2c52                                  ; $46b2: $01 $52 $2c
    ld bc, $2cae                                  ; $46b5: $01 $ae $2c
    ld bc, $2cbc                                  ; $46b8: $01 $bc $2c
    ld bc, $2d11                                  ; $46bb: $01 $11 $2d
    ld bc, $2d33                                  ; $46be: $01 $33 $2d
    ld bc, $2d46                                  ; $46c1: $01 $46 $2d
    ld bc, $2d6b                                  ; $46c4: $01 $6b $2d
    ld bc, $2dae                                  ; $46c7: $01 $ae $2d
    ld bc, $2de4                                  ; $46ca: $01 $e4 $2d
    ld bc, $2df6                                  ; $46cd: $01 $f6 $2d
    ld bc, $2e08                                  ; $46d0: $01 $08 $2e
    ld bc, $2e20                                  ; $46d3: $01 $20 $2e
    ld bc, $2e48                                  ; $46d6: $01 $48 $2e
    ld bc, $2e66                                  ; $46d9: $01 $66 $2e
    ld bc, $2e77                                  ; $46dc: $01 $77 $2e
    ld bc, $2e82                                  ; $46df: $01 $82 $2e
    ld bc, $2eb6                                  ; $46e2: $01 $b6 $2e
    ld bc, $2ef0                                  ; $46e5: $01 $f0 $2e
    ld bc, $2f04                                  ; $46e8: $01 $04 $2f
    ld bc, $2f31                                  ; $46eb: $01 $31 $2f
    ld bc, $2f66                                  ; $46ee: $01 $66 $2f
    ld bc, $2f7e                                  ; $46f1: $01 $7e $2f
    ld bc, $2fa2                                  ; $46f4: $01 $a2 $2f
    ld bc, $2fb3                                  ; $46f7: $01 $b3 $2f
    ld bc, $2fcd                                  ; $46fa: $01 $cd $2f
    ld bc, $2fe1                                  ; $46fd: $01 $e1 $2f
    ld bc, $2ff4                                  ; $4700: $01 $f4 $2f
    ld bc, $3015                                  ; $4703: $01 $15 $30
    ld bc, $3034                                  ; $4706: $01 $34 $30
    ld bc, $308c                                  ; $4709: $01 $8c $30
    ld bc, $309f                                  ; $470c: $01 $9f $30
    ld bc, $30ef                                  ; $470f: $01 $ef $30
    ld bc, $3123                                  ; $4712: $01 $23 $31
    ld bc, $313e                                  ; $4715: $01 $3e $31
    ld bc, $3167                                  ; $4718: $01 $67 $31
    ld bc, $319f                                  ; $471b: $01 $9f $31
    ld bc, $31e2                                  ; $471e: $01 $e2 $31
    ld bc, $3217                                  ; $4721: $01 $17 $32
    ld bc, $322a                                  ; $4724: $01 $2a $32
    ld bc, $323b                                  ; $4727: $01 $3b $32
    ld bc, $3256                                  ; $472a: $01 $56 $32
    ld bc, $326a                                  ; $472d: $01 $6a $32
    ld bc, $3275                                  ; $4730: $01 $75 $32
    ld bc, $3284                                  ; $4733: $01 $84 $32
    ld bc, $3297                                  ; $4736: $01 $97 $32
    ld bc, $32ab                                  ; $4739: $01 $ab $32
    ld bc, $32d0                                  ; $473c: $01 $d0 $32
    ld bc, $32e3                                  ; $473f: $01 $e3 $32
    ld bc, $32f4                                  ; $4742: $01 $f4 $32
    ld bc, $3314                                  ; $4745: $01 $14 $33
    ld bc, $3387                                  ; $4748: $01 $87 $33
    ld bc, $3396                                  ; $474b: $01 $96 $33
    ld bc, $33b0                                  ; $474e: $01 $b0 $33
    ld bc, $33e2                                  ; $4751: $01 $e2 $33
    ld bc, $33f9                                  ; $4754: $01 $f9 $33
    ld bc, $342b                                  ; $4757: $01 $2b $34
    ld bc, $3465                                  ; $475a: $01 $65 $34
    ld bc, $3484                                  ; $475d: $01 $84 $34
    ld bc, $34e1                                  ; $4760: $01 $e1 $34
    ld bc, $34e8                                  ; $4763: $01 $e8 $34
    ld bc, $3504                                  ; $4766: $01 $04 $35
    ld bc, $350e                                  ; $4769: $01 $0e $35
    ld bc, $3523                                  ; $476c: $01 $23 $35
    ld bc, $354e                                  ; $476f: $01 $4e $35
    ld bc, $3581                                  ; $4772: $01 $81 $35
    ld bc, $35b6                                  ; $4775: $01 $b6 $35
    ld bc, $35db                                  ; $4778: $01 $db $35
    ld bc, $3611                                  ; $477b: $01 $11 $36
    ld bc, $3624                                  ; $477e: $01 $24 $36
    ld bc, $3631                                  ; $4781: $01 $31 $36
    ld bc, $363d                                  ; $4784: $01 $3d $36
    ld bc, $3652                                  ; $4787: $01 $52 $36
    ld bc, $367a                                  ; $478a: $01 $7a $36
    ld bc, $36c8                                  ; $478d: $01 $c8 $36
    ld bc, $36f7                                  ; $4790: $01 $f7 $36
    ld bc, $3720                                  ; $4793: $01 $20 $37
    ld bc, $374d                                  ; $4796: $01 $4d $37
    ld bc, $3779                                  ; $4799: $01 $79 $37
    ld bc, $379d                                  ; $479c: $01 $9d $37
    ld bc, $37b6                                  ; $479f: $01 $b6 $37
    ld bc, $37dc                                  ; $47a2: $01 $dc $37
    ld bc, $37ec                                  ; $47a5: $01 $ec $37
    ld bc, $37f2                                  ; $47a8: $01 $f2 $37
    ld bc, $3804                                  ; $47ab: $01 $04 $38
    ld bc, $3819                                  ; $47ae: $01 $19 $38
    ld bc, $3833                                  ; $47b1: $01 $33 $38
    ld bc, $384d                                  ; $47b4: $01 $4d $38
    ld bc, $385c                                  ; $47b7: $01 $5c $38

Jump_020_47ba:
    ld bc, $386b                                  ; $47ba: $01 $6b $38
    ld bc, $3890                                  ; $47bd: $01 $90 $38
    ld bc, $38b4                                  ; $47c0: $01 $b4 $38
    ld bc, $38c6                                  ; $47c3: $01 $c6 $38
    ld bc, $38e9                                  ; $47c6: $01 $e9 $38
    ld bc, $38fe                                  ; $47c9: $01 $fe $38
    ld bc, $3911                                  ; $47cc: $01 $11 $39
    ld bc, $3922                                  ; $47cf: $01 $22 $39
    ld bc, $3934                                  ; $47d2: $01 $34 $39
    ld bc, $394d                                  ; $47d5: $01 $4d $39
    ld bc, $396e                                  ; $47d8: $01 $6e $39
    ld bc, $398a                                  ; $47db: $01 $8a $39
    ld bc, $39a2                                  ; $47de: $01 $a2 $39
    ld bc, $39c8                                  ; $47e1: $01 $c8 $39
    ld bc, $39ec                                  ; $47e4: $01 $ec $39
    ld bc, $3a18                                  ; $47e7: $01 $18 $3a
    ld bc, $3a42                                  ; $47ea: $01 $42 $3a
    ld bc, $3a54                                  ; $47ed: $01 $54 $3a
    ld bc, $3a7b                                  ; $47f0: $01 $7b $3a
    ld bc, $3a95                                  ; $47f3: $01 $95 $3a
    ld bc, $3aaa                                  ; $47f6: $01 $aa $3a
    ld bc, $3ace                                  ; $47f9: $01 $ce $3a
    ld bc, $3ae1                                  ; $47fc: $01 $e1 $3a
    ld bc, $3b01                                  ; $47ff: $01 $01 $3b
    ld bc, $3b05                                  ; $4802: $01 $05 $3b
    ld bc, $3b09                                  ; $4805: $01 $09 $3b
    ld bc, $3b0d                                  ; $4808: $01 $0d $3b
    ld bc, $3b1b                                  ; $480b: $01 $1b $3b
    ld bc, $3b22                                  ; $480e: $01 $22 $3b
    ld bc, $3b5c                                  ; $4811: $01 $5c $3b
    ld bc, $3b7e                                  ; $4814: $01 $7e $3b
    ld bc, $3b8a                                  ; $4817: $01 $8a $3b
    ld bc, $3b93                                  ; $481a: $01 $93 $3b
    ld bc, $3bb1                                  ; $481d: $01 $b1 $3b
    ld bc, $3bcf                                  ; $4820: $01 $cf $3b
    ld bc, $3bdd                                  ; $4823: $01 $dd $3b
    ld bc, $3beb                                  ; $4826: $01 $eb $3b
    ld bc, $3c07                                  ; $4829: $01 $07 $3c
    ld bc, $3c16                                  ; $482c: $01 $16 $3c
    ld bc, $3c37                                  ; $482f: $01 $37 $3c
    ld bc, $3c53                                  ; $4832: $01 $53 $3c
    ld bc, $3c60                                  ; $4835: $01 $60 $3c
    ld bc, $3c81                                  ; $4838: $01 $81 $3c
    ld bc, $3c89                                  ; $483b: $01 $89 $3c
    ld bc, $3cad                                  ; $483e: $01 $ad $3c
    ld bc, $3cb7                                  ; $4841: $01 $b7 $3c
    ld bc, $3cd3                                  ; $4844: $01 $d3 $3c
    ld bc, $3ce4                                  ; $4847: $01 $e4 $3c
    ld bc, $3cf1                                  ; $484a: $01 $f1 $3c
    ld bc, $3d48                                  ; $484d: $01 $48 $3d
    ld bc, $3d52                                  ; $4850: $01 $52 $3d
    ld bc, $3d57                                  ; $4853: $01 $57 $3d
    ld bc, $3d61                                  ; $4856: $01 $61 $3d
    ld bc, $3da5                                  ; $4859: $01 $a5 $3d
    ld bc, $3e59                                  ; $485c: $01 $59 $3e
    ld bc, $3e7e                                  ; $485f: $01 $7e $3e
    ld bc, $3e97                                  ; $4862: $01 $97 $3e
    ld bc, $3ea5                                  ; $4865: $01 $a5 $3e
    ld bc, $3eb0                                  ; $4868: $01 $b0 $3e
    ld bc, $3ebd                                  ; $486b: $01 $bd $3e
    ld bc, $3ed0                                  ; $486e: $01 $d0 $3e
    ld bc, $3edf                                  ; $4871: $01 $df $3e
    ld bc, $3efe                                  ; $4874: $01 $fe $3e
    ld bc, $3f22                                  ; $4877: $01 $22 $3f
    ld bc, $3f5a                                  ; $487a: $01 $5a $3f
    ld bc, $3f91                                  ; $487d: $01 $91 $3f
    ld [bc], a                                    ; $4880: $02
    ld bc, $0200                                  ; $4881: $01 $00 $02
    ld e, [hl]                                    ; $4884: $5e
    nop                                           ; $4885: $00
    ld [bc], a                                    ; $4886: $02
    ld h, l                                       ; $4887: $65
    nop                                           ; $4888: $00
    ld [bc], a                                    ; $4889: $02
    sbc a                                         ; $488a: $9f
    nop                                           ; $488b: $00
    ld [bc], a                                    ; $488c: $02
    or [hl]                                       ; $488d: $b6
    nop                                           ; $488e: $00
    ld [bc], a                                    ; $488f: $02
    push de                                       ; $4890: $d5
    nop                                           ; $4891: $00
    ld [bc], a                                    ; $4892: $02
    ld [bc], a                                    ; $4893: $02
    ld bc, $1602                                  ; $4894: $01 $02 $16
    ld bc, $2702                                  ; $4897: $01 $02 $27
    ld bc, $4802                                  ; $489a: $01 $02 $48
    ld bc, $5502                                  ; $489d: $01 $02 $55
    ld bc, $6102                                  ; $48a0: $01 $02 $61
    ld bc, $7302                                  ; $48a3: $01 $02 $73
    ld bc, $7f02                                  ; $48a6: $01 $02 $7f
    ld bc, $a302                                  ; $48a9: $01 $02 $a3
    ld bc, $bd02                                  ; $48ac: $01 $02 $bd
    ld bc, $d202                                  ; $48af: $01 $02 $d2
    ld bc, $e702                                  ; $48b2: $01 $02 $e7
    ld bc, $fa02                                  ; $48b5: $01 $02 $fa
    ld bc, $0c02                                  ; $48b8: $01 $02 $0c
    ld [bc], a                                    ; $48bb: $02
    ld [bc], a                                    ; $48bc: $02
    dec e                                         ; $48bd: $1d
    ld [bc], a                                    ; $48be: $02
    ld [bc], a                                    ; $48bf: $02
    dec a                                         ; $48c0: $3d
    ld [bc], a                                    ; $48c1: $02
    ld [bc], a                                    ; $48c2: $02
    ld d, h                                       ; $48c3: $54
    ld [bc], a                                    ; $48c4: $02
    ld [bc], a                                    ; $48c5: $02
    or e                                          ; $48c6: $b3
    ld [bc], a                                    ; $48c7: $02
    ld [bc], a                                    ; $48c8: $02
    ld de, $0203                                  ; $48c9: $11 $03 $02
    dec e                                         ; $48cc: $1d
    inc bc                                        ; $48cd: $03
    ld [bc], a                                    ; $48ce: $02
    ld e, c                                       ; $48cf: $59
    inc bc                                        ; $48d0: $03
    ld [bc], a                                    ; $48d1: $02
    ld l, c                                       ; $48d2: $69
    inc bc                                        ; $48d3: $03
    ld [bc], a                                    ; $48d4: $02
    xor e                                         ; $48d5: $ab
    inc bc                                        ; $48d6: $03
    ld [bc], a                                    ; $48d7: $02
    call nc, Call_000_0203                        ; $48d8: $d4 $03 $02
    push af                                       ; $48db: $f5
    inc bc                                        ; $48dc: $03
    ld [bc], a                                    ; $48dd: $02
    rra                                           ; $48de: $1f
    inc b                                         ; $48df: $04
    ld [bc], a                                    ; $48e0: $02
    ld a, [hl-]                                   ; $48e1: $3a
    inc b                                         ; $48e2: $04
    ld [bc], a                                    ; $48e3: $02
    ld d, h                                       ; $48e4: $54
    inc b                                         ; $48e5: $04
    ld [bc], a                                    ; $48e6: $02
    sbc c                                         ; $48e7: $99
    inc b                                         ; $48e8: $04
    ld [bc], a                                    ; $48e9: $02
    sbc [hl]                                      ; $48ea: $9e
    inc b                                         ; $48eb: $04
    ld [bc], a                                    ; $48ec: $02
    xor a                                         ; $48ed: $af
    inc b                                         ; $48ee: $04
    ld [bc], a                                    ; $48ef: $02
    jp z, $0204                                   ; $48f0: $ca $04 $02

    ld [c], a                                     ; $48f3: $e2
    inc b                                         ; $48f4: $04
    ld [bc], a                                    ; $48f5: $02
    cp $04                                        ; $48f6: $fe $04
    ld [bc], a                                    ; $48f8: $02
    ld a, [hl+]                                   ; $48f9: $2a
    dec b                                         ; $48fa: $05
    ld [bc], a                                    ; $48fb: $02
    dec a                                         ; $48fc: $3d
    dec b                                         ; $48fd: $05
    ld [bc], a                                    ; $48fe: $02
    ld c, b                                       ; $48ff: $48
    dec b                                         ; $4900: $05
    ld [bc], a                                    ; $4901: $02
    ld d, [hl]                                    ; $4902: $56
    dec b                                         ; $4903: $05
    ld [bc], a                                    ; $4904: $02
    ld [hl], d                                    ; $4905: $72
    dec b                                         ; $4906: $05
    ld [bc], a                                    ; $4907: $02
    add [hl]                                      ; $4908: $86
    dec b                                         ; $4909: $05
    ld [bc], a                                    ; $490a: $02
    sub e                                         ; $490b: $93
    dec b                                         ; $490c: $05
    ld [bc], a                                    ; $490d: $02
    and h                                         ; $490e: $a4
    dec b                                         ; $490f: $05
    ld [bc], a                                    ; $4910: $02
    ldh [rTIMA], a                                ; $4911: $e0 $05
    ld [bc], a                                    ; $4913: $02
    ld b, l                                       ; $4914: $45
    ld b, $02                                     ; $4915: $06 $02
    ld d, a                                       ; $4917: $57
    ld b, $02                                     ; $4918: $06 $02
    cp d                                          ; $491a: $ba
    ld b, $02                                     ; $491b: $06 $02
    add sp, $06                                   ; $491d: $e8 $06
    ld [bc], a                                    ; $491f: $02
    add hl, de                                    ; $4920: $19
    rlca                                          ; $4921: $07
    ld [bc], a                                    ; $4922: $02
    cpl                                           ; $4923: $2f
    rlca                                          ; $4924: $07
    ld [bc], a                                    ; $4925: $02
    adc e                                         ; $4926: $8b
    rlca                                          ; $4927: $07
    ld [bc], a                                    ; $4928: $02
    sub h                                         ; $4929: $94
    rlca                                          ; $492a: $07
    ld [bc], a                                    ; $492b: $02
    cp l                                          ; $492c: $bd
    rlca                                          ; $492d: $07
    ld [bc], a                                    ; $492e: $02
    push de                                       ; $492f: $d5
    rlca                                          ; $4930: $07
    ld [bc], a                                    ; $4931: $02
    ld c, $08                                     ; $4932: $0e $08
    ld [bc], a                                    ; $4934: $02
    halt                                          ; $4935: $76
    ld [$9602], sp                                ; $4936: $08 $02 $96
    ld [$c102], sp                                ; $4939: $08 $02 $c1
    ld [$f002], sp                                ; $493c: $08 $02 $f0
    ld [$0802], sp                                ; $493f: $08 $02 $08
    add hl, bc                                    ; $4942: $09
    ld [bc], a                                    ; $4943: $02
    ld de, $0209                                  ; $4944: $11 $09 $02
    dec h                                         ; $4947: $25
    add hl, bc                                    ; $4948: $09
    ld [bc], a                                    ; $4949: $02
    ld c, [hl]                                    ; $494a: $4e
    add hl, bc                                    ; $494b: $09
    ld [bc], a                                    ; $494c: $02
    ld l, d                                       ; $494d: $6a
    add hl, bc                                    ; $494e: $09
    ld [bc], a                                    ; $494f: $02
    add e                                         ; $4950: $83
    add hl, bc                                    ; $4951: $09
    ld [bc], a                                    ; $4952: $02
    sbc l                                         ; $4953: $9d
    add hl, bc                                    ; $4954: $09
    ld [bc], a                                    ; $4955: $02
    inc c                                         ; $4956: $0c
    ld a, [bc]                                    ; $4957: $0a
    ld [bc], a                                    ; $4958: $02
    inc d                                         ; $4959: $14
    ld a, [bc]                                    ; $495a: $0a
    ld [bc], a                                    ; $495b: $02
    ld b, d                                       ; $495c: $42
    ld a, [bc]                                    ; $495d: $0a
    ld [bc], a                                    ; $495e: $02
    ld d, a                                       ; $495f: $57
    ld a, [bc]                                    ; $4960: $0a
    ld [bc], a                                    ; $4961: $02
    ld a, d                                       ; $4962: $7a
    ld a, [bc]                                    ; $4963: $0a
    ld [bc], a                                    ; $4964: $02
    xor h                                         ; $4965: $ac
    ld a, [bc]                                    ; $4966: $0a
    ld [bc], a                                    ; $4967: $02
    or b                                          ; $4968: $b0
    ld a, [bc]                                    ; $4969: $0a
    ld [bc], a                                    ; $496a: $02
    cp [hl]                                       ; $496b: $be
    ld a, [bc]                                    ; $496c: $0a
    ld [bc], a                                    ; $496d: $02
    db $fc                                        ; $496e: $fc
    ld a, [bc]                                    ; $496f: $0a
    ld [bc], a                                    ; $4970: $02
    inc c                                         ; $4971: $0c
    dec bc                                        ; $4972: $0b
    ld [bc], a                                    ; $4973: $02
    ld [hl], $0b                                  ; $4974: $36 $0b
    ld [bc], a                                    ; $4976: $02
    ld e, l                                       ; $4977: $5d
    dec bc                                        ; $4978: $0b
    ld [bc], a                                    ; $4979: $02
    xor d                                         ; $497a: $aa
    dec bc                                        ; $497b: $0b
    ld [bc], a                                    ; $497c: $02
    call z, $020b                                 ; $497d: $cc $0b $02
    sbc $0b                                       ; $4980: $de $0b
    ld [bc], a                                    ; $4982: $02
    xor $0b                                       ; $4983: $ee $0b
    ld [bc], a                                    ; $4985: $02
    nop                                           ; $4986: $00
    inc c                                         ; $4987: $0c
    ld [bc], a                                    ; $4988: $02
    inc de                                        ; $4989: $13
    inc c                                         ; $498a: $0c
    ld [bc], a                                    ; $498b: $02
    cpl                                           ; $498c: $2f
    inc c                                         ; $498d: $0c
    ld [bc], a                                    ; $498e: $02
    dec a                                         ; $498f: $3d
    inc c                                         ; $4990: $0c
    ld [bc], a                                    ; $4991: $02
    ld b, b                                       ; $4992: $40
    inc c                                         ; $4993: $0c
    ld [bc], a                                    ; $4994: $02
    ld e, [hl]                                    ; $4995: $5e
    inc c                                         ; $4996: $0c
    ld [bc], a                                    ; $4997: $02
    add [hl]                                      ; $4998: $86
    inc c                                         ; $4999: $0c
    ld [bc], a                                    ; $499a: $02
    and h                                         ; $499b: $a4
    inc c                                         ; $499c: $0c
    ld [bc], a                                    ; $499d: $02
    or e                                          ; $499e: $b3
    inc c                                         ; $499f: $0c
    ld [bc], a                                    ; $49a0: $02
    call nc, Call_000_020c                        ; $49a1: $d4 $0c $02
    ld a, [c]                                     ; $49a4: $f2
    inc c                                         ; $49a5: $0c
    ld [bc], a                                    ; $49a6: $02
    add hl, de                                    ; $49a7: $19
    dec c                                         ; $49a8: $0d
    ld [bc], a                                    ; $49a9: $02
    ld a, [hl+]                                   ; $49aa: $2a
    dec c                                         ; $49ab: $0d
    ld [bc], a                                    ; $49ac: $02
    ld c, b                                       ; $49ad: $48
    dec c                                         ; $49ae: $0d

Jump_020_49af:
    ld [bc], a                                    ; $49af: $02
    ld e, b                                       ; $49b0: $58
    dec c                                         ; $49b1: $0d
    ld [bc], a                                    ; $49b2: $02
    ld [hl], e                                    ; $49b3: $73
    dec c                                         ; $49b4: $0d
    ld [bc], a                                    ; $49b5: $02
    adc c                                         ; $49b6: $89
    dec c                                         ; $49b7: $0d
    ld [bc], a                                    ; $49b8: $02
    and [hl]                                      ; $49b9: $a6
    dec c                                         ; $49ba: $0d
    ld [bc], a                                    ; $49bb: $02
    ret nz                                        ; $49bc: $c0

    dec c                                         ; $49bd: $0d
    ld [bc], a                                    ; $49be: $02
    adc $0d                                       ; $49bf: $ce $0d
    ld [bc], a                                    ; $49c1: $02
    cp $0d                                        ; $49c2: $fe $0d
    ld [bc], a                                    ; $49c4: $02
    ld b, b                                       ; $49c5: $40
    ld c, $02                                     ; $49c6: $0e $02
    ld d, d                                       ; $49c8: $52
    ld c, $02                                     ; $49c9: $0e $02
    ld l, l                                       ; $49cb: $6d
    ld c, $02                                     ; $49cc: $0e $02
    sub d                                         ; $49ce: $92
    ld c, $02                                     ; $49cf: $0e $02
    and c                                         ; $49d1: $a1
    ld c, $02                                     ; $49d2: $0e $02
    sub $0e                                       ; $49d4: $d6 $0e
    ld [bc], a                                    ; $49d6: $02
    ld a, [bc]                                    ; $49d7: $0a
    rrca                                          ; $49d8: $0f
    ld [bc], a                                    ; $49d9: $02
    ld b, b                                       ; $49da: $40
    rrca                                          ; $49db: $0f
    ld [bc], a                                    ; $49dc: $02
    add d                                         ; $49dd: $82
    rrca                                          ; $49de: $0f
    ld [bc], a                                    ; $49df: $02
    xor h                                         ; $49e0: $ac
    rrca                                          ; $49e1: $0f
    ld [bc], a                                    ; $49e2: $02
    call nz, $020f                                ; $49e3: $c4 $0f $02
    call c, $020f                                 ; $49e6: $dc $0f $02
    rst $20                                       ; $49e9: $e7
    rrca                                          ; $49ea: $0f
    ld [bc], a                                    ; $49eb: $02
    jr nz, jr_020_49fe                            ; $49ec: $20 $10

    ld [bc], a                                    ; $49ee: $02
    ld b, l                                       ; $49ef: $45
    db $10                                        ; $49f0: $10
    ld [bc], a                                    ; $49f1: $02
    ld [hl], a                                    ; $49f2: $77
    db $10                                        ; $49f3: $10
    ld [bc], a                                    ; $49f4: $02
    adc c                                         ; $49f5: $89
    db $10                                        ; $49f6: $10
    ld [bc], a                                    ; $49f7: $02
    sbc a                                         ; $49f8: $9f
    db $10                                        ; $49f9: $10
    ld [bc], a                                    ; $49fa: $02
    and a                                         ; $49fb: $a7
    db $10                                        ; $49fc: $10
    ld [bc], a                                    ; $49fd: $02

jr_020_49fe:
    or a                                          ; $49fe: $b7
    db $10                                        ; $49ff: $10
    ld [bc], a                                    ; $4a00: $02
    reti                                          ; $4a01: $d9


    db $10                                        ; $4a02: $10
    ld [bc], a                                    ; $4a03: $02
    db $eb                                        ; $4a04: $eb
    db $10                                        ; $4a05: $10
    ld [bc], a                                    ; $4a06: $02
    add hl, sp                                    ; $4a07: $39
    ld de, $5f02                                  ; $4a08: $11 $02 $5f
    ld de, $9002                                  ; $4a0b: $11 $02 $90
    ld de, $b202                                  ; $4a0e: $11 $02 $b2
    ld de, $ef02                                  ; $4a11: $11 $02 $ef
    ld de, $1f02                                  ; $4a14: $11 $02 $1f
    ld [de], a                                    ; $4a17: $12
    ld [bc], a                                    ; $4a18: $02
    ld c, d                                       ; $4a19: $4a
    ld [de], a                                    ; $4a1a: $12
    ld [bc], a                                    ; $4a1b: $02
    ld a, h                                       ; $4a1c: $7c
    ld [de], a                                    ; $4a1d: $12
    ld [bc], a                                    ; $4a1e: $02
    sbc h                                         ; $4a1f: $9c
    ld [de], a                                    ; $4a20: $12
    ld [bc], a                                    ; $4a21: $02
    cp b                                          ; $4a22: $b8
    ld [de], a                                    ; $4a23: $12
    ld [bc], a                                    ; $4a24: $02
    inc c                                         ; $4a25: $0c
    inc de                                        ; $4a26: $13
    ld [bc], a                                    ; $4a27: $02
    dec a                                         ; $4a28: $3d
    inc de                                        ; $4a29: $13
    ld [bc], a                                    ; $4a2a: $02
    ld c, a                                       ; $4a2b: $4f
    inc de                                        ; $4a2c: $13
    ld [bc], a                                    ; $4a2d: $02
    halt                                          ; $4a2e: $76
    inc de                                        ; $4a2f: $13
    ld [bc], a                                    ; $4a30: $02
    sub l                                         ; $4a31: $95
    inc de                                        ; $4a32: $13
    ld [bc], a                                    ; $4a33: $02
    ret z                                         ; $4a34: $c8

    inc de                                        ; $4a35: $13
    ld [bc], a                                    ; $4a36: $02
    db $dd                                        ; $4a37: $dd
    inc de                                        ; $4a38: $13
    ld [bc], a                                    ; $4a39: $02
    ld a, [c]                                     ; $4a3a: $f2
    inc de                                        ; $4a3b: $13
    ld [bc], a                                    ; $4a3c: $02
    inc c                                         ; $4a3d: $0c
    inc d                                         ; $4a3e: $14
    ld [bc], a                                    ; $4a3f: $02
    inc sp                                        ; $4a40: $33
    inc d                                         ; $4a41: $14
    ld [bc], a                                    ; $4a42: $02
    ld c, d                                       ; $4a43: $4a
    inc d                                         ; $4a44: $14
    ld [bc], a                                    ; $4a45: $02
    sub b                                         ; $4a46: $90
    inc d                                         ; $4a47: $14
    ld [bc], a                                    ; $4a48: $02
    xor c                                         ; $4a49: $a9
    inc d                                         ; $4a4a: $14
    ld [bc], a                                    ; $4a4b: $02
    ld [$0214], a                                 ; $4a4c: $ea $14 $02
    rst $38                                       ; $4a4f: $ff
    inc d                                         ; $4a50: $14
    ld [bc], a                                    ; $4a51: $02
    dec e                                         ; $4a52: $1d
    dec d                                         ; $4a53: $15
    ld [bc], a                                    ; $4a54: $02
    ld b, c                                       ; $4a55: $41
    dec d                                         ; $4a56: $15
    ld [bc], a                                    ; $4a57: $02
    ld d, h                                       ; $4a58: $54
    dec d                                         ; $4a59: $15
    ld [bc], a                                    ; $4a5a: $02
    ld l, b                                       ; $4a5b: $68
    dec d                                         ; $4a5c: $15
    ld [bc], a                                    ; $4a5d: $02
    sbc h                                         ; $4a5e: $9c
    dec d                                         ; $4a5f: $15
    ld [bc], a                                    ; $4a60: $02
    cp l                                          ; $4a61: $bd
    dec d                                         ; $4a62: $15
    ld [bc], a                                    ; $4a63: $02
    db $db                                        ; $4a64: $db
    dec d                                         ; $4a65: $15
    ld [bc], a                                    ; $4a66: $02
    nop                                           ; $4a67: $00
    ld d, $02                                     ; $4a68: $16 $02
    ld h, $16                                     ; $4a6a: $26 $16
    ld [bc], a                                    ; $4a6c: $02
    dec sp                                        ; $4a6d: $3b
    ld d, $02                                     ; $4a6e: $16 $02
    ld c, a                                       ; $4a70: $4f
    ld d, $02                                     ; $4a71: $16 $02
    ld h, l                                       ; $4a73: $65
    ld d, $02                                     ; $4a74: $16 $02
    ld l, a                                       ; $4a76: $6f
    ld d, $02                                     ; $4a77: $16 $02
    add e                                         ; $4a79: $83
    ld d, $02                                     ; $4a7a: $16 $02
    sub b                                         ; $4a7c: $90
    ld d, $02                                     ; $4a7d: $16 $02
    and d                                         ; $4a7f: $a2
    ld d, $02                                     ; $4a80: $16 $02
    or e                                          ; $4a82: $b3
    ld d, $02                                     ; $4a83: $16 $02
    call z, Call_000_0216                         ; $4a85: $cc $16 $02
    ret nc                                        ; $4a88: $d0

    ld d, $02                                     ; $4a89: $16 $02
    db $e3                                        ; $4a8b: $e3
    ld d, $02                                     ; $4a8c: $16 $02
    ld a, [$0216]                                 ; $4a8e: $fa $16 $02
    dec hl                                        ; $4a91: $2b
    rla                                           ; $4a92: $17
    ld [bc], a                                    ; $4a93: $02
    ld l, l                                       ; $4a94: $6d
    rla                                           ; $4a95: $17
    ld [bc], a                                    ; $4a96: $02
    sub a                                         ; $4a97: $97
    rla                                           ; $4a98: $17
    ld [bc], a                                    ; $4a99: $02
    xor [hl]                                      ; $4a9a: $ae
    rla                                           ; $4a9b: $17
    ld [bc], a                                    ; $4a9c: $02
    cp c                                          ; $4a9d: $b9
    rla                                           ; $4a9e: $17
    ld [bc], a                                    ; $4a9f: $02
    ldh [rNR22], a                                ; $4aa0: $e0 $17
    ld [bc], a                                    ; $4aa2: $02
    ld b, $18                                     ; $4aa3: $06 $18
    ld [bc], a                                    ; $4aa5: $02
    dec [hl]                                      ; $4aa6: $35
    jr @+$04                                      ; $4aa7: $18 $02

    ld h, l                                       ; $4aa9: $65
    jr @+$04                                      ; $4aaa: $18 $02

    adc a                                         ; $4aac: $8f
    jr @+$04                                      ; $4aad: $18 $02

Jump_020_4aaf:
    sbc d                                         ; $4aaf: $9a
    jr @+$04                                      ; $4ab0: $18 $02

    or b                                          ; $4ab2: $b0
    jr jr_020_4ab7                                ; $4ab3: $18 $02

    rr b                                          ; $4ab5: $cb $18

jr_020_4ab7:
    ld [bc], a                                    ; $4ab7: $02
    dec d                                         ; $4ab8: $15
    add hl, de                                    ; $4ab9: $19
    ld [bc], a                                    ; $4aba: $02
    add hl, hl                                    ; $4abb: $29
    add hl, de                                    ; $4abc: $19
    ld [bc], a                                    ; $4abd: $02
    jr c, jr_020_4ad9                             ; $4abe: $38 $19

    ld [bc], a                                    ; $4ac0: $02
    ld e, l                                       ; $4ac1: $5d
    add hl, de                                    ; $4ac2: $19
    ld [bc], a                                    ; $4ac3: $02
    ld [hl], a                                    ; $4ac4: $77
    add hl, de                                    ; $4ac5: $19
    ld [bc], a                                    ; $4ac6: $02
    adc d                                         ; $4ac7: $8a
    add hl, de                                    ; $4ac8: $19
    ld [bc], a                                    ; $4ac9: $02
    xor c                                         ; $4aca: $a9
    add hl, de                                    ; $4acb: $19
    ld [bc], a                                    ; $4acc: $02
    call c, Call_000_0219                         ; $4acd: $dc $19 $02
    ld [de], a                                    ; $4ad0: $12
    ld a, [de]                                    ; $4ad1: $1a
    ld [bc], a                                    ; $4ad2: $02
    ld c, h                                       ; $4ad3: $4c
    ld a, [de]                                    ; $4ad4: $1a
    ld [bc], a                                    ; $4ad5: $02
    add l                                         ; $4ad6: $85
    ld a, [de]                                    ; $4ad7: $1a
    ld [bc], a                                    ; $4ad8: $02

jr_020_4ad9:
    or c                                          ; $4ad9: $b1
    ld a, [de]                                    ; $4ada: $1a
    ld [bc], a                                    ; $4adb: $02
    adc $1a                                       ; $4adc: $ce $1a
    ld [bc], a                                    ; $4ade: $02
    ei                                            ; $4adf: $fb
    ld a, [de]                                    ; $4ae0: $1a
    ld [bc], a                                    ; $4ae1: $02
    inc e                                         ; $4ae2: $1c
    dec de                                        ; $4ae3: $1b
    ld [bc], a                                    ; $4ae4: $02
    ld b, b                                       ; $4ae5: $40
    dec de                                        ; $4ae6: $1b
    ld [bc], a                                    ; $4ae7: $02
    ld c, a                                       ; $4ae8: $4f
    dec de                                        ; $4ae9: $1b
    ld [bc], a                                    ; $4aea: $02
    ld [hl], d                                    ; $4aeb: $72
    dec de                                        ; $4aec: $1b

Call_020_4aed:
    ld [bc], a                                    ; $4aed: $02
    adc d                                         ; $4aee: $8a
    dec de                                        ; $4aef: $1b
    ld [bc], a                                    ; $4af0: $02
    sbc l                                         ; $4af1: $9d
    dec de                                        ; $4af2: $1b
    ld [bc], a                                    ; $4af3: $02
    cp a                                          ; $4af4: $bf
    dec de                                        ; $4af5: $1b
    ld [bc], a                                    ; $4af6: $02
    add sp, $1b                                   ; $4af7: $e8 $1b
    ld [bc], a                                    ; $4af9: $02
    rrca                                          ; $4afa: $0f
    inc e                                         ; $4afb: $1c
    ld [bc], a                                    ; $4afc: $02
    inc e                                         ; $4afd: $1c
    inc e                                         ; $4afe: $1c
    ld [bc], a                                    ; $4aff: $02
    dec a                                         ; $4b00: $3d
    inc e                                         ; $4b01: $1c
    ld [bc], a                                    ; $4b02: $02
    ld c, b                                       ; $4b03: $48
    inc e                                         ; $4b04: $1c
    ld [bc], a                                    ; $4b05: $02
    ld h, [hl]                                    ; $4b06: $66
    inc e                                         ; $4b07: $1c
    ld [bc], a                                    ; $4b08: $02
    ld a, b                                       ; $4b09: $78
    inc e                                         ; $4b0a: $1c
    ld [bc], a                                    ; $4b0b: $02
    sbc e                                         ; $4b0c: $9b
    inc e                                         ; $4b0d: $1c
    ld [bc], a                                    ; $4b0e: $02
    cp a                                          ; $4b0f: $bf
    inc e                                         ; $4b10: $1c
    ld [bc], a                                    ; $4b11: $02
    ret nc                                        ; $4b12: $d0

    inc e                                         ; $4b13: $1c
    ld [bc], a                                    ; $4b14: $02
    ei                                            ; $4b15: $fb
    inc e                                         ; $4b16: $1c
    ld [bc], a                                    ; $4b17: $02
    rlca                                          ; $4b18: $07
    dec e                                         ; $4b19: $1d
    ld [bc], a                                    ; $4b1a: $02
    dec h                                         ; $4b1b: $25
    dec e                                         ; $4b1c: $1d
    ld [bc], a                                    ; $4b1d: $02
    ld c, b                                       ; $4b1e: $48
    dec e                                         ; $4b1f: $1d
    ld [bc], a                                    ; $4b20: $02
    ld l, a                                       ; $4b21: $6f
    dec e                                         ; $4b22: $1d
    ld [bc], a                                    ; $4b23: $02
    sbc h                                         ; $4b24: $9c
    dec e                                         ; $4b25: $1d
    ld [bc], a                                    ; $4b26: $02
    or l                                          ; $4b27: $b5
    dec e                                         ; $4b28: $1d
    ld [bc], a                                    ; $4b29: $02
    jp nc, $021d                                  ; $4b2a: $d2 $1d $02

    rst $28                                       ; $4b2d: $ef
    dec e                                         ; $4b2e: $1d
    ld [bc], a                                    ; $4b2f: $02
    ld [$021e], sp                                ; $4b30: $08 $1e $02
    ld a, [hl+]                                   ; $4b33: $2a
    ld e, $02                                     ; $4b34: $1e $02
    ld c, d                                       ; $4b36: $4a
    ld e, $02                                     ; $4b37: $1e $02
    ld l, h                                       ; $4b39: $6c
    ld e, $02                                     ; $4b3a: $1e $02
    adc c                                         ; $4b3c: $89
    ld e, $02                                     ; $4b3d: $1e $02
    and [hl]                                      ; $4b3f: $a6
    ld e, $02                                     ; $4b40: $1e $02
    ret nz                                        ; $4b42: $c0

    ld e, $02                                     ; $4b43: $1e $02
    call c, $021e                                 ; $4b45: $dc $1e $02
    db $fd                                        ; $4b48: $fd
    ld e, $02                                     ; $4b49: $1e $02
    ld [hl-], a                                   ; $4b4b: $32
    rra                                           ; $4b4c: $1f
    ld [bc], a                                    ; $4b4d: $02
    ld e, l                                       ; $4b4e: $5d
    rra                                           ; $4b4f: $1f
    ld [bc], a                                    ; $4b50: $02
    adc b                                         ; $4b51: $88
    rra                                           ; $4b52: $1f
    ld [bc], a                                    ; $4b53: $02
    cp h                                          ; $4b54: $bc
    rra                                           ; $4b55: $1f
    ld [bc], a                                    ; $4b56: $02
    jp nz, Jump_000_021f                          ; $4b57: $c2 $1f $02

    push de                                       ; $4b5a: $d5
    rra                                           ; $4b5b: $1f
    ld [bc], a                                    ; $4b5c: $02
    rst $30                                       ; $4b5d: $f7
    rra                                           ; $4b5e: $1f
    ld [bc], a                                    ; $4b5f: $02
    rrca                                          ; $4b60: $0f
    jr nz, @+$04                                  ; $4b61: $20 $02

    ld d, l                                       ; $4b63: $55
    jr nz, @+$04                                  ; $4b64: $20 $02

    ld [hl], e                                    ; $4b66: $73
    jr nz, @+$04                                  ; $4b67: $20 $02

    sub a                                         ; $4b69: $97
    jr nz, @+$04                                  ; $4b6a: $20 $02

    xor l                                         ; $4b6c: $ad
    jr nz, @+$04                                  ; $4b6d: $20 $02

    jp z, $0220                                   ; $4b6f: $ca $20 $02

    reti                                          ; $4b72: $d9


    jr nz, @+$04                                  ; $4b73: $20 $02

    ld sp, hl                                     ; $4b75: $f9
    jr nz, @+$04                                  ; $4b76: $20 $02

    nop                                           ; $4b78: $00
    ld hl, $1202                                  ; $4b79: $21 $02 $12
    ld hl, $4f02                                  ; $4b7c: $21 $02 $4f
    ld hl, $5f02                                  ; $4b7f: $21 $02 $5f
    ld hl, $6f02                                  ; $4b82: $21 $02 $6f
    ld hl, $9602                                  ; $4b85: $21 $02 $96
    ld hl, $be02                                  ; $4b88: $21 $02 $be
    ld hl, $cf02                                  ; $4b8b: $21 $02 $cf
    ld hl, $d502                                  ; $4b8e: $21 $02 $d5
    ld hl, $ec02                                  ; $4b91: $21 $02 $ec
    ld hl, $0b02                                  ; $4b94: $21 $02 $0b
    ld [hl+], a                                   ; $4b97: $22
    ld [bc], a                                    ; $4b98: $02
    inc sp                                        ; $4b99: $33
    ld [hl+], a                                   ; $4b9a: $22
    ld [bc], a                                    ; $4b9b: $02
    dec sp                                        ; $4b9c: $3b
    ld [hl+], a                                   ; $4b9d: $22
    ld [bc], a                                    ; $4b9e: $02
    ld d, c                                       ; $4b9f: $51
    ld [hl+], a                                   ; $4ba0: $22
    ld [bc], a                                    ; $4ba1: $02
    ld [hl], e                                    ; $4ba2: $73
    ld [hl+], a                                   ; $4ba3: $22
    ld [bc], a                                    ; $4ba4: $02
    add [hl]                                      ; $4ba5: $86
    ld [hl+], a                                   ; $4ba6: $22
    ld [bc], a                                    ; $4ba7: $02
    jp hl                                         ; $4ba8: $e9


    ld [hl+], a                                   ; $4ba9: $22
    ld [bc], a                                    ; $4baa: $02
    db $f4                                        ; $4bab: $f4
    ld [hl+], a                                   ; $4bac: $22
    ld [bc], a                                    ; $4bad: $02
    ld sp, hl                                     ; $4bae: $f9
    ld [hl+], a                                   ; $4baf: $22
    ld [bc], a                                    ; $4bb0: $02
    dec bc                                        ; $4bb1: $0b
    inc hl                                        ; $4bb2: $23
    ld [bc], a                                    ; $4bb3: $02
    ld b, h                                       ; $4bb4: $44
    inc hl                                        ; $4bb5: $23
    ld [bc], a                                    ; $4bb6: $02
    ld h, l                                       ; $4bb7: $65
    inc hl                                        ; $4bb8: $23
    ld [bc], a                                    ; $4bb9: $02

Call_020_4bba:
    ld a, d                                       ; $4bba: $7a
    inc hl                                        ; $4bbb: $23
    ld [bc], a                                    ; $4bbc: $02
    sbc e                                         ; $4bbd: $9b
    inc hl                                        ; $4bbe: $23
    ld [bc], a                                    ; $4bbf: $02
    or [hl]                                       ; $4bc0: $b6
    inc hl                                        ; $4bc1: $23
    ld [bc], a                                    ; $4bc2: $02
    call c, Call_000_0223                         ; $4bc3: $dc $23 $02
    ldh a, [rNR44]                                ; $4bc6: $f0 $23
    ld [bc], a                                    ; $4bc8: $02
    ld [bc], a                                    ; $4bc9: $02
    inc h                                         ; $4bca: $24
    ld [bc], a                                    ; $4bcb: $02
    dec de                                        ; $4bcc: $1b
    inc h                                         ; $4bcd: $24
    ld [bc], a                                    ; $4bce: $02
    dec l                                         ; $4bcf: $2d
    inc h                                         ; $4bd0: $24
    ld [bc], a                                    ; $4bd1: $02
    scf                                           ; $4bd2: $37
    inc h                                         ; $4bd3: $24
    ld [bc], a                                    ; $4bd4: $02
    ld c, d                                       ; $4bd5: $4a
    inc h                                         ; $4bd6: $24
    ld [bc], a                                    ; $4bd7: $02
    ld l, h                                       ; $4bd8: $6c
    inc h                                         ; $4bd9: $24
    ld [bc], a                                    ; $4bda: $02
    ld [hl], l                                    ; $4bdb: $75
    inc h                                         ; $4bdc: $24
    ld [bc], a                                    ; $4bdd: $02
    sub b                                         ; $4bde: $90
    inc h                                         ; $4bdf: $24
    ld [bc], a                                    ; $4be0: $02
    or d                                          ; $4be1: $b2
    inc h                                         ; $4be2: $24
    ld [bc], a                                    ; $4be3: $02
    db $dd                                        ; $4be4: $dd
    inc h                                         ; $4be5: $24
    ld [bc], a                                    ; $4be6: $02
    or $24                                        ; $4be7: $f6 $24
    ld [bc], a                                    ; $4be9: $02
    ld sp, $0225                                  ; $4bea: $31 $25 $02
    ld b, l                                       ; $4bed: $45
    dec h                                         ; $4bee: $25
    ld [bc], a                                    ; $4bef: $02
    ld d, a                                       ; $4bf0: $57
    dec h                                         ; $4bf1: $25
    ld [bc], a                                    ; $4bf2: $02
    adc l                                         ; $4bf3: $8d
    dec h                                         ; $4bf4: $25
    ld [bc], a                                    ; $4bf5: $02
    xor c                                         ; $4bf6: $a9
    dec h                                         ; $4bf7: $25
    ld [bc], a                                    ; $4bf8: $02
    jp nz, $0225                                  ; $4bf9: $c2 $25 $02

    db $fd                                        ; $4bfc: $fd
    dec h                                         ; $4bfd: $25
    ld [bc], a                                    ; $4bfe: $02
    inc de                                        ; $4bff: $13
    ld h, $02                                     ; $4c00: $26 $02
    ld d, d                                       ; $4c02: $52
    ld h, $02                                     ; $4c03: $26 $02
    adc [hl]                                      ; $4c05: $8e
    ld h, $02                                     ; $4c06: $26 $02
    sbc c                                         ; $4c08: $99
    ld h, $02                                     ; $4c09: $26 $02
    ret nz                                        ; $4c0b: $c0

    ld h, $02                                     ; $4c0c: $26 $02
    ld [$0226], a                                 ; $4c0e: $ea $26 $02
    dec b                                         ; $4c11: $05
    daa                                           ; $4c12: $27
    ld [bc], a                                    ; $4c13: $02
    dec c                                         ; $4c14: $0d
    daa                                           ; $4c15: $27
    ld [bc], a                                    ; $4c16: $02
    dec h                                         ; $4c17: $25
    daa                                           ; $4c18: $27
    ld [bc], a                                    ; $4c19: $02
    dec [hl]                                      ; $4c1a: $35
    daa                                           ; $4c1b: $27
    ld [bc], a                                    ; $4c1c: $02
    ld e, e                                       ; $4c1d: $5b
    daa                                           ; $4c1e: $27
    ld [bc], a                                    ; $4c1f: $02
    adc b                                         ; $4c20: $88
    daa                                           ; $4c21: $27
    ld [bc], a                                    ; $4c22: $02
    and d                                         ; $4c23: $a2
    daa                                           ; $4c24: $27
    ld [bc], a                                    ; $4c25: $02
    or e                                          ; $4c26: $b3
    daa                                           ; $4c27: $27
    ld [bc], a                                    ; $4c28: $02
    rst $08                                       ; $4c29: $cf
    daa                                           ; $4c2a: $27
    ld [bc], a                                    ; $4c2b: $02
    ldh [$27], a                                  ; $4c2c: $e0 $27
    ld [bc], a                                    ; $4c2e: $02
    daa                                           ; $4c2f: $27
    jr z, @+$04                                   ; $4c30: $28 $02

    ld d, h                                       ; $4c32: $54
    jr z, @+$04                                   ; $4c33: $28 $02

    sub d                                         ; $4c35: $92
    jr z, @+$04                                   ; $4c36: $28 $02

    and c                                         ; $4c38: $a1
    jr z, @+$04                                   ; $4c39: $28 $02

    cp d                                          ; $4c3b: $ba
    jr z, @+$04                                   ; $4c3c: $28 $02

    reti                                          ; $4c3e: $d9


    jr z, @+$04                                   ; $4c3f: $28 $02

    rst $38                                       ; $4c41: $ff
    jr z, jr_020_4c46                             ; $4c42: $28 $02

    ld e, $29                                     ; $4c44: $1e $29

jr_020_4c46:
    ld [bc], a                                    ; $4c46: $02
    ld c, h                                       ; $4c47: $4c
    add hl, hl                                    ; $4c48: $29
    ld [bc], a                                    ; $4c49: $02
    ld e, b                                       ; $4c4a: $58
    add hl, hl                                    ; $4c4b: $29
    ld [bc], a                                    ; $4c4c: $02
    add [hl]                                      ; $4c4d: $86
    add hl, hl                                    ; $4c4e: $29
    ld [bc], a                                    ; $4c4f: $02
    or l                                          ; $4c50: $b5
    add hl, hl                                    ; $4c51: $29
    ld [bc], a                                    ; $4c52: $02
    call Call_000_0229                            ; $4c53: $cd $29 $02
    db $fc                                        ; $4c56: $fc
    add hl, hl                                    ; $4c57: $29
    ld [bc], a                                    ; $4c58: $02
    add hl, hl                                    ; $4c59: $29
    ld a, [hl+]                                   ; $4c5a: $2a
    ld [bc], a                                    ; $4c5b: $02
    ld d, h                                       ; $4c5c: $54
    ld a, [hl+]                                   ; $4c5d: $2a
    ld [bc], a                                    ; $4c5e: $02
    ld [hl], a                                    ; $4c5f: $77
    ld a, [hl+]                                   ; $4c60: $2a
    ld [bc], a                                    ; $4c61: $02
    adc d                                         ; $4c62: $8a
    ld a, [hl+]                                   ; $4c63: $2a
    ld [bc], a                                    ; $4c64: $02
    ret                                           ; $4c65: $c9


    ld a, [hl+]                                   ; $4c66: $2a
    ld [bc], a                                    ; $4c67: $02
    pop hl                                        ; $4c68: $e1
    ld a, [hl+]                                   ; $4c69: $2a
    ld [bc], a                                    ; $4c6a: $02
    or $2a                                        ; $4c6b: $f6 $2a
    ld [bc], a                                    ; $4c6d: $02
    ld sp, hl                                     ; $4c6e: $f9
    ld a, [hl+]                                   ; $4c6f: $2a
    ld [bc], a                                    ; $4c70: $02
    ld hl, $022b                                  ; $4c71: $21 $2b $02
    inc [hl]                                      ; $4c74: $34
    dec hl                                        ; $4c75: $2b
    ld [bc], a                                    ; $4c76: $02
    ld b, h                                       ; $4c77: $44
    dec hl                                        ; $4c78: $2b
    ld [bc], a                                    ; $4c79: $02
    ld d, e                                       ; $4c7a: $53
    dec hl                                        ; $4c7b: $2b
    ld [bc], a                                    ; $4c7c: $02
    ld [hl], d                                    ; $4c7d: $72
    dec hl                                        ; $4c7e: $2b
    ld [bc], a                                    ; $4c7f: $02
    add e                                         ; $4c80: $83
    dec hl                                        ; $4c81: $2b
    ld [bc], a                                    ; $4c82: $02
    sbc l                                         ; $4c83: $9d
    dec hl                                        ; $4c84: $2b
    ld [bc], a                                    ; $4c85: $02
    and [hl]                                      ; $4c86: $a6
    dec hl                                        ; $4c87: $2b
    ld [bc], a                                    ; $4c88: $02
    cp l                                          ; $4c89: $bd
    dec hl                                        ; $4c8a: $2b
    ld [bc], a                                    ; $4c8b: $02
    jp c, Jump_000_022b                           ; $4c8c: $da $2b $02

    inc l                                         ; $4c8f: $2c
    inc l                                         ; $4c90: $2c
    ld [bc], a                                    ; $4c91: $02
    ld b, l                                       ; $4c92: $45
    inc l                                         ; $4c93: $2c
    ld [bc], a                                    ; $4c94: $02
    sbc d                                         ; $4c95: $9a
    inc l                                         ; $4c96: $2c
    ld [bc], a                                    ; $4c97: $02
    pop bc                                        ; $4c98: $c1
    inc l                                         ; $4c99: $2c
    ld [bc], a                                    ; $4c9a: $02
    pop hl                                        ; $4c9b: $e1
    inc l                                         ; $4c9c: $2c
    ld [bc], a                                    ; $4c9d: $02
    db $ec                                        ; $4c9e: $ec
    inc l                                         ; $4c9f: $2c
    ld [bc], a                                    ; $4ca0: $02
    inc d                                         ; $4ca1: $14
    dec l                                         ; $4ca2: $2d
    ld [bc], a                                    ; $4ca3: $02
    inc e                                         ; $4ca4: $1c
    dec l                                         ; $4ca5: $2d
    ld [bc], a                                    ; $4ca6: $02
    ld a, $2d                                     ; $4ca7: $3e $2d
    ld [bc], a                                    ; $4ca9: $02
    ld c, d                                       ; $4caa: $4a
    dec l                                         ; $4cab: $2d
    ld [bc], a                                    ; $4cac: $02
    ld h, c                                       ; $4cad: $61
    dec l                                         ; $4cae: $2d
    ld [bc], a                                    ; $4caf: $02
    xor l                                         ; $4cb0: $ad
    dec l                                         ; $4cb1: $2d
    ld [bc], a                                    ; $4cb2: $02
    push bc                                       ; $4cb3: $c5
    dec l                                         ; $4cb4: $2d
    ld [bc], a                                    ; $4cb5: $02
    push de                                       ; $4cb6: $d5
    dec l                                         ; $4cb7: $2d
    ld [bc], a                                    ; $4cb8: $02
    jp hl                                         ; $4cb9: $e9


    dec l                                         ; $4cba: $2d
    ld [bc], a                                    ; $4cbb: $02
    add hl, bc                                    ; $4cbc: $09
    ld l, $02                                     ; $4cbd: $2e $02
    inc de                                        ; $4cbf: $13
    ld l, $02                                     ; $4cc0: $2e $02
    dec de                                        ; $4cc2: $1b
    ld l, $02                                     ; $4cc3: $2e $02
    ld h, b                                       ; $4cc5: $60
    ld l, $02                                     ; $4cc6: $2e $02
    ld [hl], e                                    ; $4cc8: $73
    ld l, $02                                     ; $4cc9: $2e $02
    ld a, [hl]                                    ; $4ccb: $7e
    ld l, $02                                     ; $4ccc: $2e $02
    add h                                         ; $4cce: $84
    ld l, $02                                     ; $4ccf: $2e $02
    and l                                         ; $4cd1: $a5
    ld l, $02                                     ; $4cd2: $2e $02
    xor $2e                                       ; $4cd4: $ee $2e
    ld [bc], a                                    ; $4cd6: $02
    ld a, [bc]                                    ; $4cd7: $0a
    cpl                                           ; $4cd8: $2f
    ld [bc], a                                    ; $4cd9: $02
    jr nz, @+$31                                  ; $4cda: $20 $2f

    ld [bc], a                                    ; $4cdc: $02
    ld a, [hl+]                                   ; $4cdd: $2a
    cpl                                           ; $4cde: $2f
    ld [bc], a                                    ; $4cdf: $02
    ld e, h                                       ; $4ce0: $5c
    cpl                                           ; $4ce1: $2f
    ld [bc], a                                    ; $4ce2: $02
    ld a, b                                       ; $4ce3: $78
    cpl                                           ; $4ce4: $2f
    ld [bc], a                                    ; $4ce5: $02
    adc c                                         ; $4ce6: $89
    cpl                                           ; $4ce7: $2f
    ld [bc], a                                    ; $4ce8: $02
    sub l                                         ; $4ce9: $95
    cpl                                           ; $4cea: $2f
    ld [bc], a                                    ; $4ceb: $02
    or [hl]                                       ; $4cec: $b6
    cpl                                           ; $4ced: $2f
    ld [bc], a                                    ; $4cee: $02
    ret                                           ; $4cef: $c9


    cpl                                           ; $4cf0: $2f
    ld [bc], a                                    ; $4cf1: $02
    ldh a, [$2f]                                  ; $4cf2: $f0 $2f
    ld [bc], a                                    ; $4cf4: $02
    add hl, de                                    ; $4cf5: $19
    jr nc, @+$04                                  ; $4cf6: $30 $02

    dec l                                         ; $4cf8: $2d
    jr nc, @+$04                                  ; $4cf9: $30 $02

    ld a, [hl]                                    ; $4cfb: $7e
    jr nc, @+$04                                  ; $4cfc: $30 $02

    sbc h                                         ; $4cfe: $9c
    jr nc, @+$04                                  ; $4cff: $30 $02

    cp [hl]                                       ; $4d01: $be
    jr nc, @+$04                                  ; $4d02: $30 $02

    pop hl                                        ; $4d04: $e1
    jr nc, @+$04                                  ; $4d05: $30 $02

    rst $38                                       ; $4d07: $ff
    jr nc, jr_020_4d0c                            ; $4d08: $30 $02

    jr c, jr_020_4d3d                             ; $4d0a: $38 $31

jr_020_4d0c:
    ld [bc], a                                    ; $4d0c: $02
    ld b, b                                       ; $4d0d: $40
    ld sp, $bb02                                  ; $4d0e: $31 $02 $bb
    ld sp, $c402                                  ; $4d11: $31 $02 $c4
    ld sp, $d202                                  ; $4d14: $31 $02 $d2
    ld sp, $e602                                  ; $4d17: $31 $02 $e6
    ld sp, $f602                                  ; $4d1a: $31 $02 $f6
    ld sp, $1902                                  ; $4d1d: $31 $02 $19
    ld [hl-], a                                   ; $4d20: $32
    ld [bc], a                                    ; $4d21: $02
    ld c, h                                       ; $4d22: $4c
    ld [hl-], a                                   ; $4d23: $32
    ld [bc], a                                    ; $4d24: $02
    ld h, b                                       ; $4d25: $60
    ld [hl-], a                                   ; $4d26: $32
    ld [bc], a                                    ; $4d27: $02
    sub c                                         ; $4d28: $91
    ld [hl-], a                                   ; $4d29: $32
    ld [bc], a                                    ; $4d2a: $02
    pop bc                                        ; $4d2b: $c1
    ld [hl-], a                                   ; $4d2c: $32
    ld [bc], a                                    ; $4d2d: $02
    rst $10                                       ; $4d2e: $d7
    ld [hl-], a                                   ; $4d2f: $32
    ld [bc], a                                    ; $4d30: $02
    pop af                                        ; $4d31: $f1
    ld [hl-], a                                   ; $4d32: $32
    ld [bc], a                                    ; $4d33: $02
    dec e                                         ; $4d34: $1d
    inc sp                                        ; $4d35: $33
    ld [bc], a                                    ; $4d36: $02
    ld b, [hl]                                    ; $4d37: $46
    inc sp                                        ; $4d38: $33
    ld [bc], a                                    ; $4d39: $02
    ld h, e                                       ; $4d3a: $63
    inc sp                                        ; $4d3b: $33
    ld [bc], a                                    ; $4d3c: $02

jr_020_4d3d:
    add h                                         ; $4d3d: $84
    inc sp                                        ; $4d3e: $33
    ld [bc], a                                    ; $4d3f: $02
    adc c                                         ; $4d40: $89
    inc sp                                        ; $4d41: $33
    ld [bc], a                                    ; $4d42: $02
    pop hl                                        ; $4d43: $e1
    inc sp                                        ; $4d44: $33
    ld [bc], a                                    ; $4d45: $02
    rst $20                                       ; $4d46: $e7
    inc sp                                        ; $4d47: $33
    ld [bc], a                                    ; $4d48: $02
    jr jr_020_4d7f                                ; $4d49: $18 $34

    ld [bc], a                                    ; $4d4b: $02
    add hl, sp                                    ; $4d4c: $39
    inc [hl]                                      ; $4d4d: $34
    ld [bc], a                                    ; $4d4e: $02
    ld c, b                                       ; $4d4f: $48
    inc [hl]                                      ; $4d50: $34
    ld [bc], a                                    ; $4d51: $02
    ld d, [hl]                                    ; $4d52: $56
    inc [hl]                                      ; $4d53: $34
    ld [bc], a                                    ; $4d54: $02
    ld h, d                                       ; $4d55: $62
    inc [hl]                                      ; $4d56: $34
    ld [bc], a                                    ; $4d57: $02
    ld a, h                                       ; $4d58: $7c
    inc [hl]                                      ; $4d59: $34
    ld [bc], a                                    ; $4d5a: $02
    jp z, $0234                                   ; $4d5b: $ca $34 $02

    ret c                                         ; $4d5e: $d8

    inc [hl]                                      ; $4d5f: $34
    ld [bc], a                                    ; $4d60: $02
    db $ec                                        ; $4d61: $ec
    inc [hl]                                      ; $4d62: $34
    ld [bc], a                                    ; $4d63: $02
    di                                            ; $4d64: $f3
    inc [hl]                                      ; $4d65: $34
    ld [bc], a                                    ; $4d66: $02
    ld hl, $0235                                  ; $4d67: $21 $35 $02
    ld c, [hl]                                    ; $4d6a: $4e
    dec [hl]                                      ; $4d6b: $35
    ld [bc], a                                    ; $4d6c: $02
    ld l, c                                       ; $4d6d: $69
    dec [hl]                                      ; $4d6e: $35
    ld [bc], a                                    ; $4d6f: $02
    jp nz, $0235                                  ; $4d70: $c2 $35 $02

    db $dd                                        ; $4d73: $dd
    dec [hl]                                      ; $4d74: $35
    ld [bc], a                                    ; $4d75: $02
    ldh a, [$35]                                  ; $4d76: $f0 $35
    ld [bc], a                                    ; $4d78: $02
    inc de                                        ; $4d79: $13
    ld [hl], $02                                  ; $4d7a: $36 $02
    ld e, l                                       ; $4d7c: $5d
    ld [hl], $02                                  ; $4d7d: $36 $02

jr_020_4d7f:
    adc e                                         ; $4d7f: $8b
    ld [hl], $02                                  ; $4d80: $36 $02
    ret nz                                        ; $4d82: $c0

    ld [hl], $02                                  ; $4d83: $36 $02
    db $e4                                        ; $4d85: $e4
    ld [hl], $02                                  ; $4d86: $36 $02
    rst $38                                       ; $4d88: $ff
    ld [hl], $02                                  ; $4d89: $36 $02
    jr jr_020_4dc4                                ; $4d8b: $18 $37

    ld [bc], a                                    ; $4d8d: $02
    ld e, $37                                     ; $4d8e: $1e $37
    ld [bc], a                                    ; $4d90: $02
    ld c, h                                       ; $4d91: $4c
    scf                                           ; $4d92: $37
    ld [bc], a                                    ; $4d93: $02
    ld l, e                                       ; $4d94: $6b
    scf                                           ; $4d95: $37
    ld [bc], a                                    ; $4d96: $02
    sub c                                         ; $4d97: $91
    scf                                           ; $4d98: $37
    ld [bc], a                                    ; $4d99: $02
    and [hl]                                      ; $4d9a: $a6
    scf                                           ; $4d9b: $37
    ld [bc], a                                    ; $4d9c: $02
    db $d3                                        ; $4d9d: $d3
    scf                                           ; $4d9e: $37
    ld [bc], a                                    ; $4d9f: $02
    db $e3                                        ; $4da0: $e3
    scf                                           ; $4da1: $37
    ld [bc], a                                    ; $4da2: $02
    rst $38                                       ; $4da3: $ff
    scf                                           ; $4da4: $37
    ld [bc], a                                    ; $4da5: $02
    ld [$0238], sp                                ; $4da6: $08 $38 $02
    ret nz                                        ; $4da9: $c0

    jr c, @+$04                                   ; $4daa: $38 $02

    call z, Call_000_0238                         ; $4dac: $cc $38 $02
    inc sp                                        ; $4daf: $33
    add hl, sp                                    ; $4db0: $39
    ld [bc], a                                    ; $4db1: $02
    ld d, c                                       ; $4db2: $51
    add hl, sp                                    ; $4db3: $39
    ld [bc], a                                    ; $4db4: $02
    ld a, b                                       ; $4db5: $78
    add hl, sp                                    ; $4db6: $39
    ld [bc], a                                    ; $4db7: $02
    sbc h                                         ; $4db8: $9c
    add hl, sp                                    ; $4db9: $39
    ld [bc], a                                    ; $4dba: $02
    call c, $0239                                 ; $4dbb: $dc $39 $02
    db $ed                                        ; $4dbe: $ed
    add hl, sp                                    ; $4dbf: $39
    ld [bc], a                                    ; $4dc0: $02
    ld a, [$0239]                                 ; $4dc1: $fa $39 $02

jr_020_4dc4:
    nop                                           ; $4dc4: $00
    ld a, [hl-]                                   ; $4dc5: $3a
    ld [bc], a                                    ; $4dc6: $02
    ld a, [de]                                    ; $4dc7: $1a
    ld a, [hl-]                                   ; $4dc8: $3a
    ld [bc], a                                    ; $4dc9: $02
    jr z, jr_020_4e06                             ; $4dca: $28 $3a

    ld [bc], a                                    ; $4dcc: $02
    ld b, [hl]                                    ; $4dcd: $46
    ld a, [hl-]                                   ; $4dce: $3a
    ld [bc], a                                    ; $4dcf: $02
    ld l, h                                       ; $4dd0: $6c
    ld a, [hl-]                                   ; $4dd1: $3a
    ld [bc], a                                    ; $4dd2: $02
    add b                                         ; $4dd3: $80
    ld a, [hl-]                                   ; $4dd4: $3a
    ld [bc], a                                    ; $4dd5: $02
    adc h                                         ; $4dd6: $8c
    ld a, [hl-]                                   ; $4dd7: $3a
    ld [bc], a                                    ; $4dd8: $02
    jp nz, $023a                                  ; $4dd9: $c2 $3a $02

    db $db                                        ; $4ddc: $db
    ld a, [hl-]                                   ; $4ddd: $3a
    ld [bc], a                                    ; $4dde: $02
    inc bc                                        ; $4ddf: $03
    dec sp                                        ; $4de0: $3b
    ld [bc], a                                    ; $4de1: $02
    ld e, $3b                                     ; $4de2: $1e $3b
    ld [bc], a                                    ; $4de4: $02
    ld d, e                                       ; $4de5: $53
    dec sp                                        ; $4de6: $3b
    ld [bc], a                                    ; $4de7: $02
    add c                                         ; $4de8: $81
    dec sp                                        ; $4de9: $3b
    ld [bc], a                                    ; $4dea: $02
    and b                                         ; $4deb: $a0
    dec sp                                        ; $4dec: $3b
    ld [bc], a                                    ; $4ded: $02
    xor [hl]                                      ; $4dee: $ae
    dec sp                                        ; $4def: $3b
    ld [bc], a                                    ; $4df0: $02
    cp c                                          ; $4df1: $b9
    dec sp                                        ; $4df2: $3b
    ld [bc], a                                    ; $4df3: $02
    call Call_000_023b                            ; $4df4: $cd $3b $02
    ldh a, [$3b]                                  ; $4df7: $f0 $3b
    ld [bc], a                                    ; $4df9: $02
    inc de                                        ; $4dfa: $13
    inc a                                         ; $4dfb: $3c
    ld [bc], a                                    ; $4dfc: $02
    add hl, de                                    ; $4dfd: $19
    inc a                                         ; $4dfe: $3c
    ld [bc], a                                    ; $4dff: $02
    inc a                                         ; $4e00: $3c
    inc a                                         ; $4e01: $3c
    ld [bc], a                                    ; $4e02: $02
    ld h, d                                       ; $4e03: $62
    inc a                                         ; $4e04: $3c
    ld [bc], a                                    ; $4e05: $02

jr_020_4e06:
    adc c                                         ; $4e06: $89
    inc a                                         ; $4e07: $3c
    ld [bc], a                                    ; $4e08: $02
    or [hl]                                       ; $4e09: $b6
    inc a                                         ; $4e0a: $3c
    ld [bc], a                                    ; $4e0b: $02
    reti                                          ; $4e0c: $d9


    inc a                                         ; $4e0d: $3c
    ld [bc], a                                    ; $4e0e: $02
    ld bc, $023d                                  ; $4e0f: $01 $3d $02
    ld e, e                                       ; $4e12: $5b
    dec a                                         ; $4e13: $3d
    ld [bc], a                                    ; $4e14: $02
    add [hl]                                      ; $4e15: $86
    dec a                                         ; $4e16: $3d
    ld [bc], a                                    ; $4e17: $02
    and h                                         ; $4e18: $a4
    dec a                                         ; $4e19: $3d
    ld [bc], a                                    ; $4e1a: $02
    adc $3d                                       ; $4e1b: $ce $3d
    ld [bc], a                                    ; $4e1d: $02
    db $e3                                        ; $4e1e: $e3
    dec a                                         ; $4e1f: $3d
    ld [bc], a                                    ; $4e20: $02
    or $3d                                        ; $4e21: $f6 $3d
    ld [bc], a                                    ; $4e23: $02
    jr jr_020_4e64                                ; $4e24: $18 $3e

    ld [bc], a                                    ; $4e26: $02
    scf                                           ; $4e27: $37
    ld a, $02                                     ; $4e28: $3e $02
    ld d, [hl]                                    ; $4e2a: $56
    ld a, $02                                     ; $4e2b: $3e $02
    halt                                          ; $4e2d: $76
    ld a, $02                                     ; $4e2e: $3e $02
    sbc b                                         ; $4e30: $98
    ld a, $02                                     ; $4e31: $3e $02
    or [hl]                                       ; $4e33: $b6
    ld a, $02                                     ; $4e34: $3e $02
    ld a, [$023e]                                 ; $4e36: $fa $3e $02
    rrca                                          ; $4e39: $0f
    ccf                                           ; $4e3a: $3f
    ld [bc], a                                    ; $4e3b: $02
    jr nz, @+$41                                  ; $4e3c: $20 $3f

    ld [bc], a                                    ; $4e3e: $02
    ld b, [hl]                                    ; $4e3f: $46
    ccf                                           ; $4e40: $3f
    ld [bc], a                                    ; $4e41: $02
    sub e                                         ; $4e42: $93
    ccf                                           ; $4e43: $3f
    ld [bc], a                                    ; $4e44: $02
    jp nz, $023f                                  ; $4e45: $c2 $3f $02

    jp c, $023f                                   ; $4e48: $da $3f $02

    db $e4                                        ; $4e4b: $e4
    ccf                                           ; $4e4c: $3f
    inc bc                                        ; $4e4d: $03

Jump_020_4e4e:
    ld bc, $0300                                  ; $4e4e: $01 $00 $03
    dec e                                         ; $4e51: $1d
    nop                                           ; $4e52: $00
    inc bc                                        ; $4e53: $03
    ccf                                           ; $4e54: $3f
    nop                                           ; $4e55: $00
    inc bc                                        ; $4e56: $03
    ld c, h                                       ; $4e57: $4c
    nop                                           ; $4e58: $00
    inc bc                                        ; $4e59: $03
    ld h, d                                       ; $4e5a: $62
    nop                                           ; $4e5b: $00
    inc bc                                        ; $4e5c: $03
    ld a, c                                       ; $4e5d: $79
    nop                                           ; $4e5e: $00
    inc bc                                        ; $4e5f: $03
    sbc [hl]                                      ; $4e60: $9e
    nop                                           ; $4e61: $00
    inc bc                                        ; $4e62: $03
    or [hl]                                       ; $4e63: $b6

jr_020_4e64:
    nop                                           ; $4e64: $00
    inc bc                                        ; $4e65: $03
    db $ec                                        ; $4e66: $ec
    nop                                           ; $4e67: $00
    inc bc                                        ; $4e68: $03
    db $10                                        ; $4e69: $10
    ld bc, $2503                                  ; $4e6a: $01 $03 $25
    ld bc, $3c03                                  ; $4e6d: $01 $03 $3c
    ld bc, $4c03                                  ; $4e70: $01 $03 $4c
    ld bc, $6403                                  ; $4e73: $01 $03 $64
    ld bc, $7d03                                  ; $4e76: $01 $03 $7d
    ld bc, $8c03                                  ; $4e79: $01 $03 $8c
    ld bc, $ae03                                  ; $4e7c: $01 $03 $ae
    ld bc, $c303                                  ; $4e7f: $01 $03 $c3
    ld bc, $d503                                  ; $4e82: $01 $03 $d5
    ld bc, $e603                                  ; $4e85: $01 $03 $e6
    ld bc, $0103                                  ; $4e88: $01 $03 $01
    ld [bc], a                                    ; $4e8b: $02
    inc bc                                        ; $4e8c: $03
    ld de, $0302                                  ; $4e8d: $11 $02 $03
    inc l                                         ; $4e90: $2c
    ld [bc], a                                    ; $4e91: $02
    inc bc                                        ; $4e92: $03
    ld b, e                                       ; $4e93: $43
    ld [bc], a                                    ; $4e94: $02
    inc bc                                        ; $4e95: $03
    ld d, l                                       ; $4e96: $55
    ld [bc], a                                    ; $4e97: $02
    inc bc                                        ; $4e98: $03
    ld [hl], b                                    ; $4e99: $70
    ld [bc], a                                    ; $4e9a: $02
    inc bc                                        ; $4e9b: $03
    adc [hl]                                      ; $4e9c: $8e
    ld [bc], a                                    ; $4e9d: $02
    inc bc                                        ; $4e9e: $03
    xor a                                         ; $4e9f: $af
    ld [bc], a                                    ; $4ea0: $02
    inc bc                                        ; $4ea1: $03
    ret z                                         ; $4ea2: $c8

    ld [bc], a                                    ; $4ea3: $02
    inc bc                                        ; $4ea4: $03
    db $e4                                        ; $4ea5: $e4
    ld [bc], a                                    ; $4ea6: $02
    inc bc                                        ; $4ea7: $03
    rst $38                                       ; $4ea8: $ff
    ld [bc], a                                    ; $4ea9: $02
    inc bc                                        ; $4eaa: $03
    inc h                                         ; $4eab: $24

Jump_020_4eac:
    inc bc                                        ; $4eac: $03
    inc bc                                        ; $4ead: $03
    dec sp                                        ; $4eae: $3b
    inc bc                                        ; $4eaf: $03
    inc bc                                        ; $4eb0: $03
    ld d, e                                       ; $4eb1: $53
    inc bc                                        ; $4eb2: $03
    inc bc                                        ; $4eb3: $03
    add l                                         ; $4eb4: $85
    inc bc                                        ; $4eb5: $03
    inc bc                                        ; $4eb6: $03
    sbc l                                         ; $4eb7: $9d
    inc bc                                        ; $4eb8: $03
    inc bc                                        ; $4eb9: $03
    push bc                                       ; $4eba: $c5
    inc bc                                        ; $4ebb: $03
    inc bc                                        ; $4ebc: $03
    reti                                          ; $4ebd: $d9


    inc bc                                        ; $4ebe: $03
    inc bc                                        ; $4ebf: $03
    jp hl                                         ; $4ec0: $e9


    inc bc                                        ; $4ec1: $03
    inc bc                                        ; $4ec2: $03
    ld [$0304], sp                                ; $4ec3: $08 $04 $03
    inc l                                         ; $4ec6: $2c
    inc b                                         ; $4ec7: $04
    inc bc                                        ; $4ec8: $03
    ld b, d                                       ; $4ec9: $42
    inc b                                         ; $4eca: $04
    inc bc                                        ; $4ecb: $03
    ld [hl], b                                    ; $4ecc: $70
    inc b                                         ; $4ecd: $04
    inc bc                                        ; $4ece: $03
    sub d                                         ; $4ecf: $92
    inc b                                         ; $4ed0: $04
    inc bc                                        ; $4ed1: $03
    cp e                                          ; $4ed2: $bb
    inc b                                         ; $4ed3: $04
    inc bc                                        ; $4ed4: $03
    rst $18                                       ; $4ed5: $df
    inc b                                         ; $4ed6: $04
    inc bc                                        ; $4ed7: $03
    di                                            ; $4ed8: $f3
    inc b                                         ; $4ed9: $04
    inc bc                                        ; $4eda: $03
    inc d                                         ; $4edb: $14
    dec b                                         ; $4edc: $05
    inc bc                                        ; $4edd: $03
    inc hl                                        ; $4ede: $23
    dec b                                         ; $4edf: $05
    inc bc                                        ; $4ee0: $03
    scf                                           ; $4ee1: $37
    dec b                                         ; $4ee2: $05
    inc bc                                        ; $4ee3: $03
    inc a                                         ; $4ee4: $3c
    dec b                                         ; $4ee5: $05
    inc bc                                        ; $4ee6: $03
    ld c, b                                       ; $4ee7: $48
    dec b                                         ; $4ee8: $05
    inc bc                                        ; $4ee9: $03
    ld d, d                                       ; $4eea: $52
    dec b                                         ; $4eeb: $05
    inc bc                                        ; $4eec: $03
    sbc [hl]                                      ; $4eed: $9e
    dec b                                         ; $4eee: $05
    inc bc                                        ; $4eef: $03
    pop bc                                        ; $4ef0: $c1
    dec b                                         ; $4ef1: $05
    inc bc                                        ; $4ef2: $03
    pop hl                                        ; $4ef3: $e1
    dec b                                         ; $4ef4: $05
    inc bc                                        ; $4ef5: $03
    ld a, [$0305]                                 ; $4ef6: $fa $05 $03
    jr z, @+$08                                   ; $4ef9: $28 $06

    inc bc                                        ; $4efb: $03
    ld b, d                                       ; $4efc: $42
    ld b, $03                                     ; $4efd: $06 $03
    ld e, d                                       ; $4eff: $5a
    ld b, $03                                     ; $4f00: $06 $03
    ld h, h                                       ; $4f02: $64
    ld b, $03                                     ; $4f03: $06 $03
    add [hl]                                      ; $4f05: $86
    ld b, $03                                     ; $4f06: $06 $03
    xor h                                         ; $4f08: $ac
    ld b, $03                                     ; $4f09: $06 $03
    call nz, Call_000_0306                        ; $4f0b: $c4 $06 $03
    ld [$0306], a                                 ; $4f0e: $ea $06 $03
    ei                                            ; $4f11: $fb
    ld b, $03                                     ; $4f12: $06 $03
    dec h                                         ; $4f14: $25
    rlca                                          ; $4f15: $07
    inc bc                                        ; $4f16: $03
    ld [hl], $07                                  ; $4f17: $36 $07
    inc bc                                        ; $4f19: $03
    ld e, b                                       ; $4f1a: $58
    rlca                                          ; $4f1b: $07
    inc bc                                        ; $4f1c: $03
    ld l, l                                       ; $4f1d: $6d
    rlca                                          ; $4f1e: $07
    inc bc                                        ; $4f1f: $03
    sbc e                                         ; $4f20: $9b
    rlca                                          ; $4f21: $07
    inc bc                                        ; $4f22: $03
    add $07                                       ; $4f23: $c6 $07
    inc bc                                        ; $4f25: $03
    call $0307                                    ; $4f26: $cd $07 $03
    sub $07                                       ; $4f29: $d6 $07
    inc bc                                        ; $4f2b: $03
    ld sp, hl                                     ; $4f2c: $f9
    rlca                                          ; $4f2d: $07
    inc bc                                        ; $4f2e: $03
    dec b                                         ; $4f2f: $05
    ld [$0e03], sp                                ; $4f30: $08 $03 $0e
    ld [$3203], sp                                ; $4f33: $08 $03 $32
    ld [$6a03], sp                                ; $4f36: $08 $03 $6a
    ld [$7803], sp                                ; $4f39: $08 $03 $78
    ld [$aa03], sp                                ; $4f3c: $08 $03 $aa
    ld [$c103], sp                                ; $4f3f: $08 $03 $c1
    ld [$ea03], sp                                ; $4f42: $08 $03 $ea
    ld [$f603], sp                                ; $4f45: $08 $03 $f6
    ld [$7f03], sp                                ; $4f48: $08 $03 $7f
    add hl, bc                                    ; $4f4b: $09
    inc bc                                        ; $4f4c: $03
    adc [hl]                                      ; $4f4d: $8e
    add hl, bc                                    ; $4f4e: $09
    inc bc                                        ; $4f4f: $03
    cp l                                          ; $4f50: $bd
    add hl, bc                                    ; $4f51: $09
    inc bc                                        ; $4f52: $03
    rrca                                          ; $4f53: $0f
    ld a, [bc]                                    ; $4f54: $0a
    inc bc                                        ; $4f55: $03
    ld [hl-], a                                   ; $4f56: $32
    ld a, [bc]                                    ; $4f57: $0a
    inc bc                                        ; $4f58: $03
    ld c, e                                       ; $4f59: $4b
    ld a, [bc]                                    ; $4f5a: $0a
    inc bc                                        ; $4f5b: $03
    ld l, h                                       ; $4f5c: $6c
    ld a, [bc]                                    ; $4f5d: $0a
    inc bc                                        ; $4f5e: $03
    sub h                                         ; $4f5f: $94
    ld a, [bc]                                    ; $4f60: $0a
    inc bc                                        ; $4f61: $03
    push bc                                       ; $4f62: $c5
    ld a, [bc]                                    ; $4f63: $0a
    inc bc                                        ; $4f64: $03
    push af                                       ; $4f65: $f5
    ld a, [bc]                                    ; $4f66: $0a
    inc bc                                        ; $4f67: $03
    dec c                                         ; $4f68: $0d
    dec bc                                        ; $4f69: $0b
    inc bc                                        ; $4f6a: $03
    ld a, $0b                                     ; $4f6b: $3e $0b
    inc bc                                        ; $4f6d: $03
    ld d, l                                       ; $4f6e: $55
    dec bc                                        ; $4f6f: $0b
    inc bc                                        ; $4f70: $03
    ld [hl], b                                    ; $4f71: $70
    dec bc                                        ; $4f72: $0b
    inc bc                                        ; $4f73: $03
    cp e                                          ; $4f74: $bb

Call_020_4f75:
    dec bc                                        ; $4f75: $0b
    inc bc                                        ; $4f76: $03
    rst $30                                       ; $4f77: $f7
    dec bc                                        ; $4f78: $0b
    inc bc                                        ; $4f79: $03
    inc b                                         ; $4f7a: $04
    inc c                                         ; $4f7b: $0c
    inc bc                                        ; $4f7c: $03
    jr nz, jr_020_4f8b                            ; $4f7d: $20 $0c

    inc bc                                        ; $4f7f: $03
    add hl, sp                                    ; $4f80: $39
    inc c                                         ; $4f81: $0c
    inc bc                                        ; $4f82: $03
    ld a, $0c                                     ; $4f83: $3e $0c
    inc bc                                        ; $4f85: $03
    ld d, [hl]                                    ; $4f86: $56
    inc c                                         ; $4f87: $0c
    inc bc                                        ; $4f88: $03
    ld a, c                                       ; $4f89: $79
    inc c                                         ; $4f8a: $0c

jr_020_4f8b:
    inc bc                                        ; $4f8b: $03
    ld d, c                                       ; $4f8c: $51
    dec c                                         ; $4f8d: $0d
    inc bc                                        ; $4f8e: $03
    ld d, [hl]                                    ; $4f8f: $56
    dec c                                         ; $4f90: $0d
    inc bc                                        ; $4f91: $03
    ld h, h                                       ; $4f92: $64
    dec c                                         ; $4f93: $0d
    inc bc                                        ; $4f94: $03
    halt                                          ; $4f95: $76
    dec c                                         ; $4f96: $0d
    inc bc                                        ; $4f97: $03
    and a                                         ; $4f98: $a7
    dec c                                         ; $4f99: $0d
    inc bc                                        ; $4f9a: $03
    pop bc                                        ; $4f9b: $c1
    dec c                                         ; $4f9c: $0d
    inc bc                                        ; $4f9d: $03
    ld a, [c]                                     ; $4f9e: $f2
    dec c                                         ; $4f9f: $0d
    inc bc                                        ; $4fa0: $03
    ld d, $0e                                     ; $4fa1: $16 $0e
    inc bc                                        ; $4fa3: $03
    ld a, [hl-]                                   ; $4fa4: $3a
    ld c, $03                                     ; $4fa5: $0e $03
    ld c, h                                       ; $4fa7: $4c
    ld c, $03                                     ; $4fa8: $0e $03
    ld d, e                                       ; $4faa: $53
    ld c, $03                                     ; $4fab: $0e $03
    ld l, h                                       ; $4fad: $6c
    ld c, $03                                     ; $4fae: $0e $03
    ret z                                         ; $4fb0: $c8

    ld c, $03                                     ; $4fb1: $0e $03
    pop hl                                        ; $4fb3: $e1
    ld c, $03                                     ; $4fb4: $0e $03
    ld c, c                                       ; $4fb6: $49
    rrca                                          ; $4fb7: $0f
    inc bc                                        ; $4fb8: $03
    sub a                                         ; $4fb9: $97
    rrca                                          ; $4fba: $0f
    inc bc                                        ; $4fbb: $03
    or $0f                                        ; $4fbc: $f6 $0f
    inc bc                                        ; $4fbe: $03
    ld c, c                                       ; $4fbf: $49
    db $10                                        ; $4fc0: $10
    inc bc                                        ; $4fc1: $03
    and b                                         ; $4fc2: $a0
    db $10                                        ; $4fc3: $10
    inc bc                                        ; $4fc4: $03
    ret nc                                        ; $4fc5: $d0

    db $10                                        ; $4fc6: $10
    inc bc                                        ; $4fc7: $03
    dec bc                                        ; $4fc8: $0b
    ld de, $3a03                                  ; $4fc9: $11 $03 $3a
    ld de, $8f03                                  ; $4fcc: $11 $03 $8f
    ld de, $9b03                                  ; $4fcf: $11 $03 $9b
    ld de, $a103                                  ; $4fd2: $11 $03 $a1
    ld de, $ae03                                  ; $4fd5: $11 $03 $ae
    ld de, $c903                                  ; $4fd8: $11 $03 $c9
    ld de, $dc03                                  ; $4fdb: $11 $03 $dc
    ld de, $ee03                                  ; $4fde: $11 $03 $ee
    ld de, $fa03                                  ; $4fe1: $11 $03 $fa
    ld de, $1a03                                  ; $4fe4: $11 $03 $1a
    ld [de], a                                    ; $4fe7: $12
    inc bc                                        ; $4fe8: $03
    add hl, hl                                    ; $4fe9: $29
    ld [de], a                                    ; $4fea: $12
    inc bc                                        ; $4feb: $03
    inc a                                         ; $4fec: $3c
    ld [de], a                                    ; $4fed: $12
    inc bc                                        ; $4fee: $03
    ld [hl], b                                    ; $4fef: $70
    ld [de], a                                    ; $4ff0: $12
    inc bc                                        ; $4ff1: $03
    add e                                         ; $4ff2: $83
    ld [de], a                                    ; $4ff3: $12
    inc bc                                        ; $4ff4: $03
    sbc b                                         ; $4ff5: $98
    ld [de], a                                    ; $4ff6: $12
    inc bc                                        ; $4ff7: $03
    and d                                         ; $4ff8: $a2
    ld [de], a                                    ; $4ff9: $12
    inc bc                                        ; $4ffa: $03
    cp d                                          ; $4ffb: $ba
    ld [de], a                                    ; $4ffc: $12
    inc bc                                        ; $4ffd: $03
    db $ed                                        ; $4ffe: $ed
    ld [de], a                                    ; $4fff: $12
    inc bc                                        ; $5000: $03
    rlca                                          ; $5001: $07
    inc de                                        ; $5002: $13
    inc bc                                        ; $5003: $03
    ld l, $13                                     ; $5004: $2e $13
    inc bc                                        ; $5006: $03
    ld c, d                                       ; $5007: $4a
    inc de                                        ; $5008: $13
    inc bc                                        ; $5009: $03
    sub [hl]                                      ; $500a: $96
    inc de                                        ; $500b: $13
    inc bc                                        ; $500c: $03
    or l                                          ; $500d: $b5
    inc de                                        ; $500e: $13
    inc bc                                        ; $500f: $03
    reti                                          ; $5010: $d9


    inc de                                        ; $5011: $13
    inc bc                                        ; $5012: $03
    ld sp, hl                                     ; $5013: $f9
    inc de                                        ; $5014: $13
    inc bc                                        ; $5015: $03
    rra                                           ; $5016: $1f
    inc d                                         ; $5017: $14
    inc bc                                        ; $5018: $03
    inc [hl]                                      ; $5019: $34
    inc d                                         ; $501a: $14
    inc bc                                        ; $501b: $03
    dec a                                         ; $501c: $3d
    inc d                                         ; $501d: $14
    inc bc                                        ; $501e: $03
    ld e, a                                       ; $501f: $5f
    inc d                                         ; $5020: $14
    inc bc                                        ; $5021: $03
    ld l, b                                       ; $5022: $68
    inc d                                         ; $5023: $14
    inc bc                                        ; $5024: $03
    ld a, e                                       ; $5025: $7b
    inc d                                         ; $5026: $14
    inc bc                                        ; $5027: $03
    adc l                                         ; $5028: $8d
    inc d                                         ; $5029: $14
    inc bc                                        ; $502a: $03
    sbc [hl]                                      ; $502b: $9e
    inc d                                         ; $502c: $14
    inc bc                                        ; $502d: $03
    xor l                                         ; $502e: $ad
    inc d                                         ; $502f: $14

    db $03, $bc, $14, $03, $c5, $14, $03, $d6, $14, $03, $e1, $14, $03, $e5, $14, $03
    db $f5, $14, $03, $fd, $14, $03, $08, $15, $03, $0f, $15, $03, $14, $15, $03, $1c
    db $15, $03, $24, $15, $03, $2a, $15, $03, $2f, $15, $03, $34, $15, $03, $3a, $15
    db $03, $40, $15, $03, $46, $15, $03, $4d, $15, $03, $55, $15

    inc bc                                        ; $506c: $03
    ld e, l                                       ; $506d: $5d
    dec d                                         ; $506e: $15
    inc bc                                        ; $506f: $03
    ld l, d                                       ; $5070: $6a
    dec d                                         ; $5071: $15
    inc bc                                        ; $5072: $03
    halt                                          ; $5073: $76
    dec d                                         ; $5074: $15
    inc bc                                        ; $5075: $03
    add c                                         ; $5076: $81
    dec d                                         ; $5077: $15
    inc bc                                        ; $5078: $03
    adc l                                         ; $5079: $8d
    dec d                                         ; $507a: $15
    inc bc                                        ; $507b: $03
    sub a                                         ; $507c: $97
    dec d                                         ; $507d: $15
    inc bc                                        ; $507e: $03
    and d                                         ; $507f: $a2
    dec d                                         ; $5080: $15
    inc bc                                        ; $5081: $03
    xor [hl]                                      ; $5082: $ae
    dec d                                         ; $5083: $15
    inc bc                                        ; $5084: $03
    cp c                                          ; $5085: $b9
    dec d                                         ; $5086: $15
    inc bc                                        ; $5087: $03
    pop bc                                        ; $5088: $c1
    dec d                                         ; $5089: $15
    inc bc                                        ; $508a: $03
    adc $15                                       ; $508b: $ce $15
    inc bc                                        ; $508d: $03
    push de                                       ; $508e: $d5
    dec d                                         ; $508f: $15
    inc bc                                        ; $5090: $03
    ldh [$15], a                                  ; $5091: $e0 $15
    inc bc                                        ; $5093: $03
    jp hl                                         ; $5094: $e9


    dec d                                         ; $5095: $15
    inc bc                                        ; $5096: $03
    ld a, [c]                                     ; $5097: $f2
    dec d                                         ; $5098: $15
    inc bc                                        ; $5099: $03
    cp $15                                        ; $509a: $fe $15
    inc bc                                        ; $509c: $03
    add hl, bc                                    ; $509d: $09
    ld d, $03                                     ; $509e: $16 $03
    ld [de], a                                    ; $50a0: $12
    ld d, $03                                     ; $50a1: $16 $03
    rra                                           ; $50a3: $1f
    ld d, $03                                     ; $50a4: $16 $03
    dec l                                         ; $50a6: $2d
    ld d, $03                                     ; $50a7: $16 $03
    scf                                           ; $50a9: $37
    ld d, $03                                     ; $50aa: $16 $03
    ld b, d                                       ; $50ac: $42
    ld d, $03                                     ; $50ad: $16 $03
    ld c, [hl]                                    ; $50af: $4e
    ld d, $03                                     ; $50b0: $16 $03
    ld d, a                                       ; $50b2: $57
    ld d, $03                                     ; $50b3: $16 $03
    ld h, d                                       ; $50b5: $62
    ld d, $03                                     ; $50b6: $16 $03
    ld l, e                                       ; $50b8: $6b
    ld d, $03                                     ; $50b9: $16 $03
    ld [hl], l                                    ; $50bb: $75
    ld d, $03                                     ; $50bc: $16 $03
    ld a, [hl]                                    ; $50be: $7e
    ld d, $03                                     ; $50bf: $16 $03
    add a                                         ; $50c1: $87
    ld d, $03                                     ; $50c2: $16 $03
    sub e                                         ; $50c4: $93
    ld d, $03                                     ; $50c5: $16 $03
    sbc e                                         ; $50c7: $9b
    ld d, $03                                     ; $50c8: $16 $03
    and l                                         ; $50ca: $a5
    ld d, $03                                     ; $50cb: $16 $03
    xor [hl]                                      ; $50cd: $ae
    ld d, $03                                     ; $50ce: $16 $03
    cp d                                          ; $50d0: $ba
    ld d, $03                                     ; $50d1: $16 $03
    call nz, Call_000_0316                        ; $50d3: $c4 $16 $03
    adc $16                                       ; $50d6: $ce $16
    inc bc                                        ; $50d8: $03
    db $db                                        ; $50d9: $db
    ld d, $03                                     ; $50da: $16 $03
    db $e3                                        ; $50dc: $e3
    ld d, $03                                     ; $50dd: $16 $03
    ld [$0316], a                                 ; $50df: $ea $16 $03
    ld hl, sp+$16                                 ; $50e2: $f8 $16
    inc bc                                        ; $50e4: $03
    dec b                                         ; $50e5: $05
    rla                                           ; $50e6: $17
    inc bc                                        ; $50e7: $03
    inc c                                         ; $50e8: $0c
    rla                                           ; $50e9: $17
    inc bc                                        ; $50ea: $03
    inc de                                        ; $50eb: $13
    rla                                           ; $50ec: $17
    inc bc                                        ; $50ed: $03
    add hl, de                                    ; $50ee: $19
    rla                                           ; $50ef: $17
    inc bc                                        ; $50f0: $03
    dec h                                         ; $50f1: $25
    rla                                           ; $50f2: $17
    inc bc                                        ; $50f3: $03
    dec [hl]                                      ; $50f4: $35
    rla                                           ; $50f5: $17
    inc bc                                        ; $50f6: $03
    ld b, b                                       ; $50f7: $40
    rla                                           ; $50f8: $17
    inc bc                                        ; $50f9: $03
    ld c, e                                       ; $50fa: $4b
    rla                                           ; $50fb: $17
    inc bc                                        ; $50fc: $03
    ld d, a                                       ; $50fd: $57
    rla                                           ; $50fe: $17
    inc bc                                        ; $50ff: $03
    ld h, a                                       ; $5100: $67
    rla                                           ; $5101: $17
    inc bc                                        ; $5102: $03
    ld [hl], c                                    ; $5103: $71
    rla                                           ; $5104: $17
    inc bc                                        ; $5105: $03
    ld a, a                                       ; $5106: $7f
    rla                                           ; $5107: $17
    inc bc                                        ; $5108: $03
    adc d                                         ; $5109: $8a
    rla                                           ; $510a: $17
    inc bc                                        ; $510b: $03
    sub h                                         ; $510c: $94
    rla                                           ; $510d: $17
    inc bc                                        ; $510e: $03
    sbc a                                         ; $510f: $9f
    rla                                           ; $5110: $17
    inc bc                                        ; $5111: $03
    xor [hl]                                      ; $5112: $ae
    rla                                           ; $5113: $17
    inc bc                                        ; $5114: $03
    or l                                          ; $5115: $b5
    rla                                           ; $5116: $17

    db $03, $be, $17, $03, $c9, $17

    inc bc                                        ; $511d: $03
    pop de                                        ; $511e: $d1
    rla                                           ; $511f: $17
    inc bc                                        ; $5120: $03
    ret c                                         ; $5121: $d8

    rla                                           ; $5122: $17

    db $03, $e0, $17

    inc bc                                        ; $5126: $03
    jp hl                                         ; $5127: $e9


    rla                                           ; $5128: $17
    inc bc                                        ; $5129: $03
    di                                            ; $512a: $f3
    rla                                           ; $512b: $17
    inc bc                                        ; $512c: $03
    db $fc                                        ; $512d: $fc
    rla                                           ; $512e: $17
    inc bc                                        ; $512f: $03
    dec b                                         ; $5130: $05
    jr jr_020_5136                                ; $5131: $18 $03

    db $10                                        ; $5133: $10
    jr jr_020_5139                                ; $5134: $18 $03

jr_020_5136:
    ld a, [de]                                    ; $5136: $1a
    jr jr_020_513c                                ; $5137: $18 $03

jr_020_5139:
    ld hl, $0318                                  ; $5139: $21 $18 $03

jr_020_513c:
    ld a, [hl+]                                   ; $513c: $2a
    jr jr_020_5142                                ; $513d: $18 $03

    jr nc, @+$1a                                  ; $513f: $30 $18

    inc bc                                        ; $5141: $03

jr_020_5142:
    ld [hl], $18                                  ; $5142: $36 $18
    inc bc                                        ; $5144: $03
    ccf                                           ; $5145: $3f
    jr jr_020_514b                                ; $5146: $18 $03

    ld c, c                                       ; $5148: $49
    jr jr_020_514e                                ; $5149: $18 $03

jr_020_514b:
    ld d, l                                       ; $514b: $55
    jr jr_020_5151                                ; $514c: $18 $03

jr_020_514e:
    ld e, a                                       ; $514e: $5f
    jr jr_020_5154                                ; $514f: $18 $03

jr_020_5151:
    ld l, c                                       ; $5151: $69
    jr jr_020_5157                                ; $5152: $18 $03

jr_020_5154:
    ld [hl], c                                    ; $5154: $71
    jr jr_020_515a                                ; $5155: $18 $03

jr_020_5157:
    ld a, c                                       ; $5157: $79
    jr jr_020_515d                                ; $5158: $18 $03

jr_020_515a:
    add d                                         ; $515a: $82
    jr jr_020_5160                                ; $515b: $18 $03

jr_020_515d:
    adc a                                         ; $515d: $8f
    jr jr_020_5163                                ; $515e: $18 $03

jr_020_5160:
    sub [hl]                                      ; $5160: $96
    jr jr_020_5166                                ; $5161: $18 $03

jr_020_5163:
    sbc h                                         ; $5163: $9c
    jr jr_020_5169                                ; $5164: $18 $03

jr_020_5166:
    xor c                                         ; $5166: $a9
    jr @+$05                                      ; $5167: $18 $03

jr_020_5169:
    or h                                          ; $5169: $b4
    db $18                                        ; $516a: $18

    db $03, $c0, $18

    inc bc                                        ; $516e: $03

jr_020_516f:
    rr b                                          ; $516f: $cb $18
    inc bc                                        ; $5171: $03
    push de                                       ; $5172: $d5
    jr jr_020_5178                                ; $5173: $18 $03

    rst $18                                       ; $5175: $df
    jr jr_020_517b                                ; $5176: $18 $03

jr_020_5178:
    ld [$0318], a                                 ; $5178: $ea $18 $03

jr_020_517b:
    or $18                                        ; $517b: $f6 $18
    inc bc                                        ; $517d: $03
    nop                                           ; $517e: $00
    add hl, de                                    ; $517f: $19
    inc bc                                        ; $5180: $03
    ld b, $19                                     ; $5181: $06 $19
    inc bc                                        ; $5183: $03
    ld a, [bc]                                    ; $5184: $0a
    add hl, de                                    ; $5185: $19
    inc bc                                        ; $5186: $03
    ld de, $0319                                  ; $5187: $11 $19 $03
    inc e                                         ; $518a: $1c
    add hl, de                                    ; $518b: $19
    inc bc                                        ; $518c: $03
    ld h, $19                                     ; $518d: $26 $19
    inc bc                                        ; $518f: $03
    jr nc, jr_020_51ab                            ; $5190: $30 $19

    inc bc                                        ; $5192: $03
    dec sp                                        ; $5193: $3b
    add hl, de                                    ; $5194: $19
    inc bc                                        ; $5195: $03
    ld c, e                                       ; $5196: $4b
    add hl, de                                    ; $5197: $19
    inc bc                                        ; $5198: $03
    ld d, a                                       ; $5199: $57
    add hl, de                                    ; $519a: $19
    inc bc                                        ; $519b: $03
    ld h, e                                       ; $519c: $63
    add hl, de                                    ; $519d: $19
    inc bc                                        ; $519e: $03
    ld l, a                                       ; $519f: $6f
    add hl, de                                    ; $51a0: $19
    inc bc                                        ; $51a1: $03
    ld a, e                                       ; $51a2: $7b
    add hl, de                                    ; $51a3: $19
    inc bc                                        ; $51a4: $03
    add [hl]                                      ; $51a5: $86
    add hl, de                                    ; $51a6: $19
    inc bc                                        ; $51a7: $03
    adc [hl]                                      ; $51a8: $8e
    add hl, de                                    ; $51a9: $19
    inc bc                                        ; $51aa: $03

jr_020_51ab:
    sbc [hl]                                      ; $51ab: $9e
    add hl, de                                    ; $51ac: $19
    inc bc                                        ; $51ad: $03
    and e                                         ; $51ae: $a3
    add hl, de                                    ; $51af: $19
    inc bc                                        ; $51b0: $03
    xor e                                         ; $51b1: $ab
    add hl, de                                    ; $51b2: $19
    inc bc                                        ; $51b3: $03
    or c                                          ; $51b4: $b1
    add hl, de                                    ; $51b5: $19
    inc bc                                        ; $51b6: $03
    cp h                                          ; $51b7: $bc
    add hl, de                                    ; $51b8: $19

    db $03, $cb, $19, $03, $d6, $19

    inc bc                                        ; $51bf: $03
    ld [c], a                                     ; $51c0: $e2
    add hl, de                                    ; $51c1: $19

    db $03, $f7, $19, $03, $01, $1a

    inc bc                                        ; $51c8: $03
    ld b, $1a                                     ; $51c9: $06 $1a

    db $03, $12, $1a, $03, $20, $1a

    inc bc                                        ; $51d1: $03
    ld sp, $031a                                  ; $51d2: $31 $1a $03
    ld c, c                                       ; $51d5: $49
    ld a, [de]                                    ; $51d6: $1a
    inc bc                                        ; $51d7: $03
    ld e, [hl]                                    ; $51d8: $5e
    ld a, [de]                                    ; $51d9: $1a
    inc bc                                        ; $51da: $03
    ld a, e                                       ; $51db: $7b
    ld a, [de]                                    ; $51dc: $1a
    inc bc                                        ; $51dd: $03
    sbc d                                         ; $51de: $9a
    ld a, [de]                                    ; $51df: $1a
    inc bc                                        ; $51e0: $03
    cp h                                          ; $51e1: $bc
    ld a, [de]                                    ; $51e2: $1a
    inc bc                                        ; $51e3: $03
    call nc, Call_000_031a                        ; $51e4: $d4 $1a $03
    db $ea                                        ; $51e7: $ea
    ld a, [de]                                    ; $51e8: $1a

    db $03, $00, $1b, $03, $03, $1b

    inc bc                                        ; $51ef: $03
    ld b, $1b                                     ; $51f0: $06 $1b
    inc bc                                        ; $51f2: $03
    dec c                                         ; $51f3: $0d
    dec de                                        ; $51f4: $1b
    inc bc                                        ; $51f5: $03
    db $10                                        ; $51f6: $10
    dec de                                        ; $51f7: $1b
    inc bc                                        ; $51f8: $03
    inc d                                         ; $51f9: $14
    dec de                                        ; $51fa: $1b
    inc bc                                        ; $51fb: $03
    jr jr_020_5219                                ; $51fc: $18 $1b

    inc bc                                        ; $51fe: $03
    dec e                                         ; $51ff: $1d
    dec de                                        ; $5200: $1b
    inc bc                                        ; $5201: $03
    add hl, hl                                    ; $5202: $29
    dec de                                        ; $5203: $1b
    inc bc                                        ; $5204: $03
    inc a                                         ; $5205: $3c
    dec de                                        ; $5206: $1b
    inc bc                                        ; $5207: $03
    ld e, b                                       ; $5208: $58
    dec de                                        ; $5209: $1b
    inc bc                                        ; $520a: $03
    ld h, [hl]                                    ; $520b: $66
    dec de                                        ; $520c: $1b
    inc bc                                        ; $520d: $03
    ld a, h                                       ; $520e: $7c
    dec de                                        ; $520f: $1b
    inc bc                                        ; $5210: $03
    adc h                                         ; $5211: $8c
    dec de                                        ; $5212: $1b
    inc bc                                        ; $5213: $03
    and b                                         ; $5214: $a0
    dec de                                        ; $5215: $1b
    inc bc                                        ; $5216: $03
    cp c                                          ; $5217: $b9
    dec de                                        ; $5218: $1b

jr_020_5219:
    inc bc                                        ; $5219: $03
    push bc                                       ; $521a: $c5
    dec de                                        ; $521b: $1b
    inc bc                                        ; $521c: $03
    sbc $1b                                       ; $521d: $de $1b
    inc bc                                        ; $521f: $03
    xor $1b                                       ; $5220: $ee $1b
    inc bc                                        ; $5222: $03
    inc b                                         ; $5223: $04
    inc e                                         ; $5224: $1c
    inc bc                                        ; $5225: $03
    inc d                                         ; $5226: $14
    inc e                                         ; $5227: $1c
    inc bc                                        ; $5228: $03
    ld a, [hl+]                                   ; $5229: $2a
    inc e                                         ; $522a: $1c
    inc bc                                        ; $522b: $03
    ld b, d                                       ; $522c: $42
    inc e                                         ; $522d: $1c
    inc bc                                        ; $522e: $03
    ld e, a                                       ; $522f: $5f
    inc e                                         ; $5230: $1c
    inc bc                                        ; $5231: $03
    ld [hl], d                                    ; $5232: $72
    inc e                                         ; $5233: $1c
    inc bc                                        ; $5234: $03
    adc d                                         ; $5235: $8a
    inc e                                         ; $5236: $1c
    inc bc                                        ; $5237: $03
    sub h                                         ; $5238: $94
    inc e                                         ; $5239: $1c
    inc bc                                        ; $523a: $03
    xor c                                         ; $523b: $a9
    inc e                                         ; $523c: $1c
    inc bc                                        ; $523d: $03
    or [hl]                                       ; $523e: $b6
    inc e                                         ; $523f: $1c
    inc bc                                        ; $5240: $03
    rst $08                                       ; $5241: $cf
    inc e                                         ; $5242: $1c
    inc bc                                        ; $5243: $03
    rst $28                                       ; $5244: $ef
    inc e                                         ; $5245: $1c
    inc bc                                        ; $5246: $03
    rst $38                                       ; $5247: $ff
    inc e                                         ; $5248: $1c
    inc bc                                        ; $5249: $03
    ld d, $1d                                     ; $524a: $16 $1d
    inc bc                                        ; $524c: $03
    cpl                                           ; $524d: $2f
    dec e                                         ; $524e: $1d
    inc bc                                        ; $524f: $03
    ld a, [hl-]                                   ; $5250: $3a
    dec e                                         ; $5251: $1d
    inc bc                                        ; $5252: $03
    ld d, b                                       ; $5253: $50
    dec e                                         ; $5254: $1d
    inc bc                                        ; $5255: $03
    ld h, b                                       ; $5256: $60
    dec e                                         ; $5257: $1d
    inc bc                                        ; $5258: $03
    add d                                         ; $5259: $82
    dec e                                         ; $525a: $1d
    inc bc                                        ; $525b: $03
    adc l                                         ; $525c: $8d
    dec e                                         ; $525d: $1d
    inc bc                                        ; $525e: $03
    xor [hl]                                      ; $525f: $ae
    dec e                                         ; $5260: $1d
    inc bc                                        ; $5261: $03
    ret                                           ; $5262: $c9


    dec e                                         ; $5263: $1d
    inc bc                                        ; $5264: $03
    push hl                                       ; $5265: $e5
    dec e                                         ; $5266: $1d
    inc bc                                        ; $5267: $03
    inc bc                                        ; $5268: $03
    ld e, $03                                     ; $5269: $1e $03
    ld a, [de]                                    ; $526b: $1a
    ld e, $03                                     ; $526c: $1e $03
    ld a, [hl+]                                   ; $526e: $2a
    ld e, $03                                     ; $526f: $1e $03
    ld b, b                                       ; $5271: $40
    ld e, $03                                     ; $5272: $1e $03
    ld c, h                                       ; $5274: $4c
    ld e, $03                                     ; $5275: $1e $03
    ld [hl], b                                    ; $5277: $70
    ld e, $03                                     ; $5278: $1e $03
    ld a, c                                       ; $527a: $79
    ld e, $03                                     ; $527b: $1e $03
    sub b                                         ; $527d: $90
    ld e, $03                                     ; $527e: $1e $03
    xor c                                         ; $5280: $a9
    ld e, $03                                     ; $5281: $1e $03
    cp h                                          ; $5283: $bc
    ld e, $03                                     ; $5284: $1e $03
    jp c, Jump_000_031e                           ; $5286: $da $1e $03

    pop af                                        ; $5289: $f1
    ld e, $03                                     ; $528a: $1e $03
    inc bc                                        ; $528c: $03
    rra                                           ; $528d: $1f
    inc bc                                        ; $528e: $03
    inc d                                         ; $528f: $14
    rra                                           ; $5290: $1f
    inc bc                                        ; $5291: $03
    dec h                                         ; $5292: $25
    rra                                           ; $5293: $1f
    inc bc                                        ; $5294: $03
    ccf                                           ; $5295: $3f
    rra                                           ; $5296: $1f
    inc bc                                        ; $5297: $03
    ld c, e                                       ; $5298: $4b
    rra                                           ; $5299: $1f
    inc bc                                        ; $529a: $03
    ld h, h                                       ; $529b: $64
    rra                                           ; $529c: $1f
    inc bc                                        ; $529d: $03
    ld [hl], b                                    ; $529e: $70
    rra                                           ; $529f: $1f
    inc bc                                        ; $52a0: $03
    ld a, [hl]                                    ; $52a1: $7e
    rra                                           ; $52a2: $1f
    inc bc                                        ; $52a3: $03
    sub [hl]                                      ; $52a4: $96
    rra                                           ; $52a5: $1f
    inc bc                                        ; $52a6: $03
    or a                                          ; $52a7: $b7
    rra                                           ; $52a8: $1f
    inc bc                                        ; $52a9: $03
    ret z                                         ; $52aa: $c8

    rra                                           ; $52ab: $1f

Jump_020_52ac:
    inc bc                                        ; $52ac: $03
    pop hl                                        ; $52ad: $e1
    rra                                           ; $52ae: $1f
    inc bc                                        ; $52af: $03
    db $ed                                        ; $52b0: $ed
    rra                                           ; $52b1: $1f
    inc bc                                        ; $52b2: $03
    rst $38                                       ; $52b3: $ff
    rra                                           ; $52b4: $1f
    inc bc                                        ; $52b5: $03
    dec c                                         ; $52b6: $0d
    jr nz, jr_020_52bc                            ; $52b7: $20 $03

    inc l                                         ; $52b9: $2c
    jr nz, jr_020_52bf                            ; $52ba: $20 $03

jr_020_52bc:
    jr c, jr_020_52de                             ; $52bc: $38 $20

    inc bc                                        ; $52be: $03

jr_020_52bf:
    ld b, [hl]                                    ; $52bf: $46
    jr nz, jr_020_52c5                            ; $52c0: $20 $03

    ld h, e                                       ; $52c2: $63
    jr nz, jr_020_52c8                            ; $52c3: $20 $03

jr_020_52c5:
    ld [hl], a                                    ; $52c5: $77
    jr nz, jr_020_52cb                            ; $52c6: $20 $03

jr_020_52c8:
    adc b                                         ; $52c8: $88
    jr nz, jr_020_52ce                            ; $52c9: $20 $03

jr_020_52cb:
    and c                                         ; $52cb: $a1
    jr nz, jr_020_52d1                            ; $52cc: $20 $03

jr_020_52ce:
    xor l                                         ; $52ce: $ad
    jr nz, jr_020_52d4                            ; $52cf: $20 $03

jr_020_52d1:
    sla b                                         ; $52d1: $cb $20
    inc bc                                        ; $52d3: $03

jr_020_52d4:
    ld a, [$0320]                                 ; $52d4: $fa $20 $03
    add hl, hl                                    ; $52d7: $29
    ld hl, $5303                                  ; $52d8: $21 $03 $53
    ld hl, $9803                                  ; $52db: $21 $03 $98

jr_020_52de:
    ld hl, $b903                                  ; $52de: $21 $03 $b9
    ld hl, $e403                                  ; $52e1: $21 $03 $e4
    ld hl, $2003                                  ; $52e4: $21 $03 $20
    ld [hl+], a                                   ; $52e7: $22
    inc bc                                        ; $52e8: $03
    ld l, h                                       ; $52e9: $6c
    ld [hl+], a                                   ; $52ea: $22
    inc bc                                        ; $52eb: $03
    sbc [hl]                                      ; $52ec: $9e
    ld [hl+], a                                   ; $52ed: $22
    inc bc                                        ; $52ee: $03
    jp z, $0322                                   ; $52ef: $ca $22 $03

    add hl, de                                    ; $52f2: $19
    inc hl                                        ; $52f3: $23
    inc bc                                        ; $52f4: $03
    ccf                                           ; $52f5: $3f
    inc hl                                        ; $52f6: $23
    inc bc                                        ; $52f7: $03
    halt                                          ; $52f8: $76
    inc hl                                        ; $52f9: $23
    inc bc                                        ; $52fa: $03
    xor d                                         ; $52fb: $aa
    inc hl                                        ; $52fc: $23
    inc bc                                        ; $52fd: $03
    pop hl                                        ; $52fe: $e1
    inc hl                                        ; $52ff: $23
    inc bc                                        ; $5300: $03
    dec h                                         ; $5301: $25
    inc h                                         ; $5302: $24
    inc bc                                        ; $5303: $03
    cpl                                           ; $5304: $2f
    inc h                                         ; $5305: $24
    inc bc                                        ; $5306: $03
    ld [hl], $24                                  ; $5307: $36 $24
    inc bc                                        ; $5309: $03
    ld b, e                                       ; $530a: $43
    inc h                                         ; $530b: $24
    inc bc                                        ; $530c: $03
    ld d, b                                       ; $530d: $50
    inc h                                         ; $530e: $24
    inc bc                                        ; $530f: $03
    ld e, h                                       ; $5310: $5c
    inc h                                         ; $5311: $24
    inc bc                                        ; $5312: $03
    ld h, a                                       ; $5313: $67
    inc h                                         ; $5314: $24
    inc bc                                        ; $5315: $03
    ld [hl], e                                    ; $5316: $73
    inc h                                         ; $5317: $24
    inc bc                                        ; $5318: $03
    add d                                         ; $5319: $82
    inc h                                         ; $531a: $24
    inc bc                                        ; $531b: $03
    adc [hl]                                      ; $531c: $8e
    inc h                                         ; $531d: $24
    inc bc                                        ; $531e: $03
    sbc d                                         ; $531f: $9a
    inc h                                         ; $5320: $24
    inc bc                                        ; $5321: $03
    and l                                         ; $5322: $a5
    inc h                                         ; $5323: $24
    inc bc                                        ; $5324: $03
    xor a                                         ; $5325: $af
    inc h                                         ; $5326: $24
    inc bc                                        ; $5327: $03
    cp e                                          ; $5328: $bb
    inc h                                         ; $5329: $24
    inc bc                                        ; $532a: $03
    add $24                                       ; $532b: $c6 $24
    inc bc                                        ; $532d: $03
    jp nc, Jump_000_0324                          ; $532e: $d2 $24 $03

    db $dd                                        ; $5331: $dd
    inc h                                         ; $5332: $24
    inc bc                                        ; $5333: $03
    rst $20                                       ; $5334: $e7
    inc h                                         ; $5335: $24
    inc bc                                        ; $5336: $03
    xor $24                                       ; $5337: $ee $24
    inc bc                                        ; $5339: $03
    ei                                            ; $533a: $fb
    inc h                                         ; $533b: $24
    inc bc                                        ; $533c: $03
    add hl, bc                                    ; $533d: $09
    dec h                                         ; $533e: $25
    inc bc                                        ; $533f: $03
    ld [de], a                                    ; $5340: $12
    dec h                                         ; $5341: $25
    inc bc                                        ; $5342: $03
    inc e                                         ; $5343: $1c
    dec h                                         ; $5344: $25
    inc bc                                        ; $5345: $03
    dec hl                                        ; $5346: $2b
    dec h                                         ; $5347: $25
    inc bc                                        ; $5348: $03
    ld [hl], $25                                  ; $5349: $36 $25
    inc bc                                        ; $534b: $03
    ld b, c                                       ; $534c: $41
    dec h                                         ; $534d: $25
    inc bc                                        ; $534e: $03
    ld c, h                                       ; $534f: $4c
    dec h                                         ; $5350: $25
    inc bc                                        ; $5351: $03
    ld d, l                                       ; $5352: $55
    dec h                                         ; $5353: $25
    inc bc                                        ; $5354: $03
    ld h, c                                       ; $5355: $61
    dec h                                         ; $5356: $25
    inc bc                                        ; $5357: $03
    ld l, [hl]                                    ; $5358: $6e
    dec h                                         ; $5359: $25
    inc bc                                        ; $535a: $03
    ld a, d                                       ; $535b: $7a
    dec h                                         ; $535c: $25

    db $03, $82, $25

    inc bc                                        ; $5360: $03
    adc [hl]                                      ; $5361: $8e
    dec h                                         ; $5362: $25
    inc bc                                        ; $5363: $03
    sbc c                                         ; $5364: $99
    dec h                                         ; $5365: $25
    inc bc                                        ; $5366: $03
    and l                                         ; $5367: $a5
    dec h                                         ; $5368: $25
    inc bc                                        ; $5369: $03
    xor a                                         ; $536a: $af
    dec h                                         ; $536b: $25
    inc bc                                        ; $536c: $03
    cp h                                          ; $536d: $bc
    dec h                                         ; $536e: $25
    inc bc                                        ; $536f: $03
    push bc                                       ; $5370: $c5
    dec h                                         ; $5371: $25
    inc bc                                        ; $5372: $03
    rst $08                                       ; $5373: $cf
    dec h                                         ; $5374: $25
    inc bc                                        ; $5375: $03
    db $db                                        ; $5376: $db
    dec h                                         ; $5377: $25
    inc bc                                        ; $5378: $03
    rst $20                                       ; $5379: $e7
    dec h                                         ; $537a: $25
    inc bc                                        ; $537b: $03
    pop af                                        ; $537c: $f1
    dec h                                         ; $537d: $25
    inc bc                                        ; $537e: $03
    db $fc                                        ; $537f: $fc
    dec h                                         ; $5380: $25
    inc bc                                        ; $5381: $03
    ld [$0326], sp                                ; $5382: $08 $26 $03
    inc d                                         ; $5385: $14
    ld h, $03                                     ; $5386: $26 $03
    ld hl, $0326                                  ; $5388: $21 $26 $03
    ld h, $26                                     ; $538b: $26 $26
    inc bc                                        ; $538d: $03
    jr nc, jr_020_53b6                            ; $538e: $30 $26

    inc bc                                        ; $5390: $03
    inc a                                         ; $5391: $3c
    ld h, $03                                     ; $5392: $26 $03
    ld b, c                                       ; $5394: $41
    ld h, $03                                     ; $5395: $26 $03
    ld c, e                                       ; $5397: $4b
    ld h, $03                                     ; $5398: $26 $03
    ld d, h                                       ; $539a: $54
    ld h, $03                                     ; $539b: $26 $03
    ld e, a                                       ; $539d: $5f
    ld h, $03                                     ; $539e: $26 $03
    ld l, h                                       ; $53a0: $6c
    ld h, $03                                     ; $53a1: $26 $03
    ld a, b                                       ; $53a3: $78
    ld h, $03                                     ; $53a4: $26 $03
    add l                                         ; $53a6: $85
    ld h, $03                                     ; $53a7: $26 $03
    sub d                                         ; $53a9: $92
    ld h, $03                                     ; $53aa: $26 $03
    sbc d                                         ; $53ac: $9a
    ld h, $03                                     ; $53ad: $26 $03
    and [hl]                                      ; $53af: $a6
    ld h, $03                                     ; $53b0: $26 $03
    or h                                          ; $53b2: $b4
    ld h, $03                                     ; $53b3: $26 $03
    cp d                                          ; $53b5: $ba

jr_020_53b6:
    db $26                                        ; $53b6: $26

    db $03, $c9, $26

    inc bc                                        ; $53ba: $03
    push de                                       ; $53bb: $d5
    ld h, $03                                     ; $53bc: $26 $03
    sbc $26                                       ; $53be: $de $26
    inc bc                                        ; $53c0: $03
    ld [$0326], a                                 ; $53c1: $ea $26 $03
    push af                                       ; $53c4: $f5
    ld h, $03                                     ; $53c5: $26 $03
    ld bc, $0327                                  ; $53c7: $01 $27 $03
    inc c                                         ; $53ca: $0c
    daa                                           ; $53cb: $27
    inc bc                                        ; $53cc: $03
    jr jr_020_53f6                                ; $53cd: $18 $27

    inc bc                                        ; $53cf: $03
    jr nz, jr_020_53f9                            ; $53d0: $20 $27

    inc bc                                        ; $53d2: $03
    inc l                                         ; $53d3: $2c
    daa                                           ; $53d4: $27
    inc bc                                        ; $53d5: $03
    jr c, jr_020_53ff                             ; $53d6: $38 $27

    inc bc                                        ; $53d8: $03
    ld b, l                                       ; $53d9: $45
    daa                                           ; $53da: $27
    inc bc                                        ; $53db: $03
    ld d, c                                       ; $53dc: $51
    daa                                           ; $53dd: $27
    inc bc                                        ; $53de: $03
    ld e, l                                       ; $53df: $5d
    daa                                           ; $53e0: $27
    inc bc                                        ; $53e1: $03
    ld l, c                                       ; $53e2: $69
    daa                                           ; $53e3: $27
    inc bc                                        ; $53e4: $03
    ld [hl], l                                    ; $53e5: $75
    daa                                           ; $53e6: $27
    inc bc                                        ; $53e7: $03
    ld a, [hl]                                    ; $53e8: $7e
    daa                                           ; $53e9: $27
    inc bc                                        ; $53ea: $03
    adc d                                         ; $53eb: $8a
    daa                                           ; $53ec: $27
    inc bc                                        ; $53ed: $03
    sub e                                         ; $53ee: $93
    daa                                           ; $53ef: $27
    inc bc                                        ; $53f0: $03
    sbc l                                         ; $53f1: $9d
    daa                                           ; $53f2: $27
    inc bc                                        ; $53f3: $03
    and a                                         ; $53f4: $a7
    daa                                           ; $53f5: $27

jr_020_53f6:
    inc bc                                        ; $53f6: $03
    or e                                          ; $53f7: $b3
    daa                                           ; $53f8: $27

jr_020_53f9:
    inc bc                                        ; $53f9: $03
    cp a                                          ; $53fa: $bf
    daa                                           ; $53fb: $27
    inc bc                                        ; $53fc: $03
    ret z                                         ; $53fd: $c8

    daa                                           ; $53fe: $27

jr_020_53ff:
    inc bc                                        ; $53ff: $03
    jp nc, Jump_000_0327                          ; $5400: $d2 $27 $03

    sbc $27                                       ; $5403: $de $27
    inc bc                                        ; $5405: $03
    rst $20                                       ; $5406: $e7
    daa                                           ; $5407: $27
    inc bc                                        ; $5408: $03
    pop af                                        ; $5409: $f1
    daa                                           ; $540a: $27
    inc bc                                        ; $540b: $03
    db $fc                                        ; $540c: $fc
    daa                                           ; $540d: $27
    inc bc                                        ; $540e: $03
    ld [$0328], sp                                ; $540f: $08 $28 $03
    ld d, $28                                     ; $5412: $16 $28
    inc bc                                        ; $5414: $03
    inc hl                                        ; $5415: $23
    jr z, jr_020_541b                             ; $5416: $28 $03

    inc l                                         ; $5418: $2c
    jr z, jr_020_541e                             ; $5419: $28 $03

jr_020_541b:
    ld [hl], $28                                  ; $541b: $36 $28
    inc bc                                        ; $541d: $03

jr_020_541e:
    ld b, h                                       ; $541e: $44
    jr z, jr_020_5424                             ; $541f: $28 $03

    ld d, b                                       ; $5421: $50
    jr z, jr_020_5427                             ; $5422: $28 $03

jr_020_5424:
    ld e, [hl]                                    ; $5424: $5e
    jr z, jr_020_542a                             ; $5425: $28 $03

jr_020_5427:
    ld h, e                                       ; $5427: $63
    jr z, jr_020_542d                             ; $5428: $28 $03

jr_020_542a:
    ld [hl], b                                    ; $542a: $70
    jr z, @+$05                                   ; $542b: $28 $03

jr_020_542d:
    ld a, b                                       ; $542d: $78
    db $28                                        ; $542e: $28

    db $03, $84, $28

    inc bc                                        ; $5432: $03

jr_020_5433:
    adc d                                         ; $5433: $8a
    jr z, jr_020_5439                             ; $5434: $28 $03

    adc e                                         ; $5436: $8b
    jr z, jr_020_543c                             ; $5437: $28 $03

jr_020_5439:
    sub [hl]                                      ; $5439: $96
    jr z, jr_020_543f                             ; $543a: $28 $03

jr_020_543c:
    or h                                          ; $543c: $b4
    jr z, jr_020_5442                             ; $543d: $28 $03

jr_020_543f:
    call z, $0328                                 ; $543f: $cc $28 $03

jr_020_5442:
    rst $38                                       ; $5442: $ff
    jr z, jr_020_5448                             ; $5443: $28 $03

    cpl                                           ; $5445: $2f
    add hl, hl                                    ; $5446: $29
    inc bc                                        ; $5447: $03

jr_020_5448:
    ld d, b                                       ; $5448: $50
    add hl, hl                                    ; $5449: $29
    inc bc                                        ; $544a: $03
    ld [hl], l                                    ; $544b: $75
    add hl, hl                                    ; $544c: $29
    inc bc                                        ; $544d: $03
    sub l                                         ; $544e: $95
    add hl, hl                                    ; $544f: $29
    inc bc                                        ; $5450: $03
    xor d                                         ; $5451: $aa
    add hl, hl                                    ; $5452: $29
    inc bc                                        ; $5453: $03
    jp nz, $0329                                  ; $5454: $c2 $29 $03

    and $29                                       ; $5457: $e6 $29
    inc bc                                        ; $5459: $03
    ld [bc], a                                    ; $545a: $02
    ld a, [hl+]                                   ; $545b: $2a
    inc bc                                        ; $545c: $03
    inc hl                                        ; $545d: $23
    ld a, [hl+]                                   ; $545e: $2a
    inc bc                                        ; $545f: $03
    scf                                           ; $5460: $37
    ld a, [hl+]                                   ; $5461: $2a
    inc bc                                        ; $5462: $03
    ld d, b                                       ; $5463: $50
    ld a, [hl+]                                   ; $5464: $2a
    inc bc                                        ; $5465: $03
    ld l, a                                       ; $5466: $6f
    ld a, [hl+]                                   ; $5467: $2a
    inc bc                                        ; $5468: $03
    sbc c                                         ; $5469: $99
    ld a, [hl+]                                   ; $546a: $2a
    inc bc                                        ; $546b: $03
    cp h                                          ; $546c: $bc
    ld a, [hl+]                                   ; $546d: $2a
    inc bc                                        ; $546e: $03
    and $2a                                       ; $546f: $e6 $2a
    inc bc                                        ; $5471: $03
    inc b                                         ; $5472: $04
    dec hl                                        ; $5473: $2b
    inc bc                                        ; $5474: $03
    inc l                                         ; $5475: $2c
    dec hl                                        ; $5476: $2b
    inc bc                                        ; $5477: $03
    ld d, [hl]                                    ; $5478: $56
    dec hl                                        ; $5479: $2b
    inc bc                                        ; $547a: $03
    ld a, h                                       ; $547b: $7c
    dec hl                                        ; $547c: $2b
    inc bc                                        ; $547d: $03
    and [hl]                                      ; $547e: $a6
    dec hl                                        ; $547f: $2b
    inc bc                                        ; $5480: $03
    ret c                                         ; $5481: $d8

    dec hl                                        ; $5482: $2b
    inc bc                                        ; $5483: $03
    inc b                                         ; $5484: $04
    inc l                                         ; $5485: $2c
    inc bc                                        ; $5486: $03
    inc [hl]                                      ; $5487: $34
    inc l                                         ; $5488: $2c
    inc bc                                        ; $5489: $03
    ld b, l                                       ; $548a: $45
    inc l                                         ; $548b: $2c
    inc bc                                        ; $548c: $03
    halt                                          ; $548d: $76
    inc l                                         ; $548e: $2c
    inc bc                                        ; $548f: $03
    and [hl]                                      ; $5490: $a6
    inc l                                         ; $5491: $2c
    inc bc                                        ; $5492: $03
    pop de                                        ; $5493: $d1
    inc l                                         ; $5494: $2c

    db $03, $00, $2d

    inc bc                                        ; $5498: $03
    ld sp, $032d                                  ; $5499: $31 $2d $03
    ld b, h                                       ; $549c: $44
    dec l                                         ; $549d: $2d
    inc bc                                        ; $549e: $03
    ld [hl], b                                    ; $549f: $70
    dec l                                         ; $54a0: $2d
    inc bc                                        ; $54a1: $03
    sub b                                         ; $54a2: $90
    dec l                                         ; $54a3: $2d
    inc bc                                        ; $54a4: $03
    cp c                                          ; $54a5: $b9
    dec l                                         ; $54a6: $2d
    inc bc                                        ; $54a7: $03
    db $db                                        ; $54a8: $db
    dec l                                         ; $54a9: $2d
    inc bc                                        ; $54aa: $03
    xor $2d                                       ; $54ab: $ee $2d
    inc bc                                        ; $54ad: $03
    jr jr_020_54de                                ; $54ae: $18 $2e

    inc bc                                        ; $54b0: $03
    ld b, e                                       ; $54b1: $43
    ld l, $03                                     ; $54b2: $2e $03
    ld l, h                                       ; $54b4: $6c
    ld l, $03                                     ; $54b5: $2e $03
    sbc a                                         ; $54b7: $9f
    ld l, $03                                     ; $54b8: $2e $03
    or e                                          ; $54ba: $b3
    ld l, $03                                     ; $54bb: $2e $03
    jp z, Jump_000_032e                           ; $54bd: $ca $2e $03

    db $ed                                        ; $54c0: $ed
    ld l, $03                                     ; $54c1: $2e $03
    add hl, de                                    ; $54c3: $19
    cpl                                           ; $54c4: $2f
    inc bc                                        ; $54c5: $03
    ld c, b                                       ; $54c6: $48
    cpl                                           ; $54c7: $2f
    inc bc                                        ; $54c8: $03
    ld e, e                                       ; $54c9: $5b
    cpl                                           ; $54ca: $2f
    inc bc                                        ; $54cb: $03
    add l                                         ; $54cc: $85
    cpl                                           ; $54cd: $2f
    inc bc                                        ; $54ce: $03
    and [hl]                                      ; $54cf: $a6
    cpl                                           ; $54d0: $2f
    inc bc                                        ; $54d1: $03
    add $2f                                       ; $54d2: $c6 $2f
    inc bc                                        ; $54d4: $03
    db $e4                                        ; $54d5: $e4
    cpl                                           ; $54d6: $2f
    inc bc                                        ; $54d7: $03
    inc de                                        ; $54d8: $13
    jr nc, jr_020_54de                            ; $54d9: $30 $03

    cpl                                           ; $54db: $2f
    jr nc, jr_020_54e1                            ; $54dc: $30 $03

jr_020_54de:
    ld d, [hl]                                    ; $54de: $56
    jr nc, jr_020_54e4                            ; $54df: $30 $03

jr_020_54e1:
    ld [hl], h                                    ; $54e1: $74
    jr nc, jr_020_54e7                            ; $54e2: $30 $03

jr_020_54e4:
    add d                                         ; $54e4: $82
    jr nc, jr_020_54ea                            ; $54e5: $30 $03

jr_020_54e7:
    xor [hl]                                      ; $54e7: $ae
    jr nc, jr_020_54ed                            ; $54e8: $30 $03

jr_020_54ea:
    ret c                                         ; $54ea: $d8

    jr nc, @+$05                                  ; $54eb: $30 $03

jr_020_54ed:
    db $fc                                        ; $54ed: $fc
    db $30                                        ; $54ee: $30

    db $03, $21, $31

    inc bc                                        ; $54f2: $03

jr_020_54f3:
    add hl, sp                                    ; $54f3: $39
    ld sp, $6503                                  ; $54f4: $31 $03 $65
    ld sp, $8503                                  ; $54f7: $31 $03 $85

Call_020_54fa:
    ld sp, $b303                                  ; $54fa: $31 $03 $b3
    ld sp, $e003                                  ; $54fd: $31 $03 $e0
    ld sp, $f203                                  ; $5500: $31 $03 $f2
    ld sp, $1f03                                  ; $5503: $31 $03 $1f
    ld [hl-], a                                   ; $5506: $32
    inc bc                                        ; $5507: $03
    ld b, c                                       ; $5508: $41
    ld [hl-], a                                   ; $5509: $32
    inc bc                                        ; $550a: $03
    ld l, [hl]                                    ; $550b: $6e
    ld [hl-], a                                   ; $550c: $32
    inc bc                                        ; $550d: $03
    sbc e                                         ; $550e: $9b
    ld [hl-], a                                   ; $550f: $32
    inc bc                                        ; $5510: $03
    or d                                          ; $5511: $b2
    ld [hl-], a                                   ; $5512: $32
    inc bc                                        ; $5513: $03
    swap d                                        ; $5514: $cb $32
    inc bc                                        ; $5516: $03
    nop                                           ; $5517: $00
    inc sp                                        ; $5518: $33
    inc bc                                        ; $5519: $03
    jr z, jr_020_554f                             ; $551a: $28 $33

    inc bc                                        ; $551c: $03
    ld e, c                                       ; $551d: $59
    inc sp                                        ; $551e: $33
    inc bc                                        ; $551f: $03
    add h                                         ; $5520: $84
    inc sp                                        ; $5521: $33
    inc bc                                        ; $5522: $03
    xor h                                         ; $5523: $ac
    inc sp                                        ; $5524: $33
    inc bc                                        ; $5525: $03
    ret c                                         ; $5526: $d8

    inc sp                                        ; $5527: $33
    inc bc                                        ; $5528: $03
    rst $38                                       ; $5529: $ff
    inc sp                                        ; $552a: $33
    inc bc                                        ; $552b: $03
    daa                                           ; $552c: $27
    inc [hl]                                      ; $552d: $34
    inc bc                                        ; $552e: $03
    add hl, sp                                    ; $552f: $39
    inc [hl]                                      ; $5530: $34
    inc bc                                        ; $5531: $03
    ld h, [hl]                                    ; $5532: $66
    inc [hl]                                      ; $5533: $34
    inc bc                                        ; $5534: $03
    adc l                                         ; $5535: $8d
    inc [hl]                                      ; $5536: $34
    inc bc                                        ; $5537: $03
    xor b                                         ; $5538: $a8
    inc [hl]                                      ; $5539: $34
    inc bc                                        ; $553a: $03
    jp c, Jump_000_0334                           ; $553b: $da $34 $03

    add hl, bc                                    ; $553e: $09
    dec [hl]                                      ; $553f: $35
    inc bc                                        ; $5540: $03
    add hl, hl                                    ; $5541: $29
    dec [hl]                                      ; $5542: $35
    inc bc                                        ; $5543: $03
    ld b, [hl]                                    ; $5544: $46
    dec [hl]                                      ; $5545: $35
    inc bc                                        ; $5546: $03
    ld l, h                                       ; $5547: $6c
    dec [hl]                                      ; $5548: $35
    inc bc                                        ; $5549: $03
    adc h                                         ; $554a: $8c
    dec [hl]                                      ; $554b: $35
    inc bc                                        ; $554c: $03
    cp l                                          ; $554d: $bd
    dec [hl]                                      ; $554e: $35

jr_020_554f:
    inc bc                                        ; $554f: $03
    pop hl                                        ; $5550: $e1
    dec [hl]                                      ; $5551: $35
    inc bc                                        ; $5552: $03
    ld sp, hl                                     ; $5553: $f9
    dec [hl]                                      ; $5554: $35
    inc bc                                        ; $5555: $03
    add hl, hl                                    ; $5556: $29
    ld [hl], $03                                  ; $5557: $36 $03
    ld d, d                                       ; $5559: $52
    ld [hl], $03                                  ; $555a: $36 $03
    ld h, h                                       ; $555c: $64
    ld [hl], $03                                  ; $555d: $36 $03
    sbc b                                         ; $555f: $98
    ld [hl], $03                                  ; $5560: $36 $03
    add $36                                       ; $5562: $c6 $36
    inc bc                                        ; $5564: $03
    push hl                                       ; $5565: $e5
    db $36                                        ; $5566: $36

    db $03, $0e, $37

    inc bc                                        ; $556a: $03
    inc h                                         ; $556b: $24
    scf                                           ; $556c: $37
    inc bc                                        ; $556d: $03
    ld [hl], $37                                  ; $556e: $36 $37

    db $03, $46, $37, $03, $4c, $37, $03, $51, $37, $03, $56, $37, $03, $5d, $37, $03
    db $65, $37, $03, $6c, $37, $03, $72, $37, $03, $78, $37, $03, $7e, $37, $03, $85
    db $37, $03, $8f, $37, $03, $94, $37, $03, $9a, $37

    inc bc                                        ; $559a: $03
    and d                                         ; $559b: $a2
    scf                                           ; $559c: $37
    inc bc                                        ; $559d: $03
    xor a                                         ; $559e: $af
    scf                                           ; $559f: $37
    inc bc                                        ; $55a0: $03
    or h                                          ; $55a1: $b4
    scf                                           ; $55a2: $37
    inc bc                                        ; $55a3: $03
    cp b                                          ; $55a4: $b8
    scf                                           ; $55a5: $37
    inc bc                                        ; $55a6: $03
    ret                                           ; $55a7: $c9


    scf                                           ; $55a8: $37
    inc bc                                        ; $55a9: $03
    rst $18                                       ; $55aa: $df
    scf                                           ; $55ab: $37
    inc bc                                        ; $55ac: $03
    inc bc                                        ; $55ad: $03
    jr c, jr_020_55b3                             ; $55ae: $38 $03

    ld de, $0338                                  ; $55b0: $11 $38 $03

jr_020_55b3:
    daa                                           ; $55b3: $27
    jr c, jr_020_55b9                             ; $55b4: $38 $03

    ld b, e                                       ; $55b6: $43
    jr c, jr_020_55bc                             ; $55b7: $38 $03

jr_020_55b9:
    ld d, b                                       ; $55b9: $50
    jr c, jr_020_55bf                             ; $55ba: $38 $03

jr_020_55bc:
    ld [hl], a                                    ; $55bc: $77
    jr c, jr_020_55c2                             ; $55bd: $38 $03

jr_020_55bf:
    adc c                                         ; $55bf: $89
    jr c, jr_020_55c5                             ; $55c0: $38 $03

jr_020_55c2:
    and l                                         ; $55c2: $a5
    jr c, jr_020_55c8                             ; $55c3: $38 $03

jr_020_55c5:
    cp e                                          ; $55c5: $bb
    jr c, jr_020_55cb                             ; $55c6: $38 $03

jr_020_55c8:
    db $e4                                        ; $55c8: $e4
    jr c, jr_020_55ce                             ; $55c9: $38 $03

jr_020_55cb:
    ld a, [$0338]                                 ; $55cb: $fa $38 $03

jr_020_55ce:
    inc d                                         ; $55ce: $14
    add hl, sp                                    ; $55cf: $39
    inc bc                                        ; $55d0: $03
    scf                                           ; $55d1: $37
    add hl, sp                                    ; $55d2: $39
    inc bc                                        ; $55d3: $03
    ld e, h                                       ; $55d4: $5c
    add hl, sp                                    ; $55d5: $39
    inc bc                                        ; $55d6: $03
    ld [hl], e                                    ; $55d7: $73
    add hl, sp                                    ; $55d8: $39
    inc bc                                        ; $55d9: $03
    adc b                                         ; $55da: $88
    add hl, sp                                    ; $55db: $39
    inc bc                                        ; $55dc: $03
    sbc b                                         ; $55dd: $98
    add hl, sp                                    ; $55de: $39
    inc bc                                        ; $55df: $03
    or [hl]                                       ; $55e0: $b6
    add hl, sp                                    ; $55e1: $39
    inc bc                                        ; $55e2: $03
    or a                                          ; $55e3: $b7
    add hl, sp                                    ; $55e4: $39
    inc bc                                        ; $55e5: $03
    cp b                                          ; $55e6: $b8
    add hl, sp                                    ; $55e7: $39
    inc bc                                        ; $55e8: $03
    db $d2                                        ; $55e9: $d2
    add hl, sp                                    ; $55ea: $39

    db $03, $e0, $39

    inc bc                                        ; $55ee: $03
    rst $20                                       ; $55ef: $e7
    add hl, sp                                    ; $55f0: $39

    db $03, $ee, $39, $03, $f9, $39

    inc bc                                        ; $55f7: $03
    ld bc, $033a                                  ; $55f8: $01 $3a $03
    daa                                           ; $55fb: $27
    ld a, [hl-]                                   ; $55fc: $3a
    inc bc                                        ; $55fd: $03
    dec sp                                        ; $55fe: $3b
    ld a, [hl-]                                   ; $55ff: $3a
    inc bc                                        ; $5600: $03
    ld d, h                                       ; $5601: $54
    ld a, [hl-]                                   ; $5602: $3a
    inc bc                                        ; $5603: $03
    ld h, d                                       ; $5604: $62
    ld a, [hl-]                                   ; $5605: $3a
    inc bc                                        ; $5606: $03
    halt                                          ; $5607: $76
    ld a, [hl-]                                   ; $5608: $3a
    inc bc                                        ; $5609: $03
    sub d                                         ; $560a: $92
    ld a, [hl-]                                   ; $560b: $3a
    inc bc                                        ; $560c: $03
    pop bc                                        ; $560d: $c1
    ld a, [hl-]                                   ; $560e: $3a
    inc bc                                        ; $560f: $03
    db $ec                                        ; $5610: $ec
    ld a, [hl-]                                   ; $5611: $3a
    inc bc                                        ; $5612: $03
    ld hl, $033b                                  ; $5613: $21 $3b $03
    ld b, e                                       ; $5616: $43
    dec sp                                        ; $5617: $3b
    inc bc                                        ; $5618: $03
    add [hl]                                      ; $5619: $86
    dec sp                                        ; $561a: $3b
    inc bc                                        ; $561b: $03
    and c                                         ; $561c: $a1
    dec sp                                        ; $561d: $3b
    inc bc                                        ; $561e: $03
    call nz, Call_000_033b                        ; $561f: $c4 $3b $03
    db $d3                                        ; $5622: $d3
    dec sp                                        ; $5623: $3b
    inc bc                                        ; $5624: $03
    db $ed                                        ; $5625: $ed
    dec sp                                        ; $5626: $3b
    inc bc                                        ; $5627: $03
    jr jr_020_5666                                ; $5628: $18 $3c

    inc bc                                        ; $562a: $03
    add hl, sp                                    ; $562b: $39
    inc a                                         ; $562c: $3c
    inc bc                                        ; $562d: $03
    ld h, a                                       ; $562e: $67
    inc a                                         ; $562f: $3c
    inc bc                                        ; $5630: $03
    add b                                         ; $5631: $80
    inc a                                         ; $5632: $3c
    inc bc                                        ; $5633: $03
    sub a                                         ; $5634: $97
    inc a                                         ; $5635: $3c
    inc bc                                        ; $5636: $03
    cp l                                          ; $5637: $bd
    inc a                                         ; $5638: $3c
    inc bc                                        ; $5639: $03
    rst $20                                       ; $563a: $e7
    inc a                                         ; $563b: $3c
    inc bc                                        ; $563c: $03
    dec c                                         ; $563d: $0d
    dec a                                         ; $563e: $3d
    inc bc                                        ; $563f: $03
    daa                                           ; $5640: $27
    dec a                                         ; $5641: $3d
    inc bc                                        ; $5642: $03
    scf                                           ; $5643: $37
    dec a                                         ; $5644: $3d
    inc bc                                        ; $5645: $03
    ld d, d                                       ; $5646: $52
    dec a                                         ; $5647: $3d
    inc bc                                        ; $5648: $03
    ld a, a                                       ; $5649: $7f
    dec a                                         ; $564a: $3d
    inc bc                                        ; $564b: $03
    sub d                                         ; $564c: $92
    dec a                                         ; $564d: $3d
    inc bc                                        ; $564e: $03
    xor l                                         ; $564f: $ad
    dec a                                         ; $5650: $3d
    inc bc                                        ; $5651: $03
    cp h                                          ; $5652: $bc
    dec a                                         ; $5653: $3d
    inc bc                                        ; $5654: $03
    db $eb                                        ; $5655: $eb
    dec a                                         ; $5656: $3d
    inc bc                                        ; $5657: $03
    db $f4                                        ; $5658: $f4
    dec a                                         ; $5659: $3d
    inc bc                                        ; $565a: $03
    nop                                           ; $565b: $00
    ld a, $03                                     ; $565c: $3e $03
    rlca                                          ; $565e: $07
    ld a, $03                                     ; $565f: $3e $03
    ld de, $033e                                  ; $5661: $11 $3e $03
    ld h, $3e                                     ; $5664: $26 $3e

jr_020_5666:
    inc bc                                        ; $5666: $03
    jr c, jr_020_56a7                             ; $5667: $38 $3e

    inc bc                                        ; $5669: $03
    ld a, [hl]                                    ; $566a: $7e
    ld a, $03                                     ; $566b: $3e $03
    cp [hl]                                       ; $566d: $be
    ld a, $03                                     ; $566e: $3e $03
    pop de                                        ; $5670: $d1
    ld a, $03                                     ; $5671: $3e $03
    sbc $3e                                       ; $5673: $de $3e
    inc bc                                        ; $5675: $03
    cp $3e                                        ; $5676: $fe $3e
    inc bc                                        ; $5678: $03
    dec hl                                        ; $5679: $2b
    ccf                                           ; $567a: $3f
    inc bc                                        ; $567b: $03
    add c                                         ; $567c: $81
    ccf                                           ; $567d: $3f
    inc b                                         ; $567e: $04
    ld bc, $0400                                  ; $567f: $01 $00 $04
    ld d, e                                       ; $5682: $53
    nop                                           ; $5683: $00
    inc b                                         ; $5684: $04
    ld [hl], c                                    ; $5685: $71
    nop                                           ; $5686: $00
    inc b                                         ; $5687: $04
    sub c                                         ; $5688: $91
    nop                                           ; $5689: $00
    inc b                                         ; $568a: $04
    db $d3                                        ; $568b: $d3
    nop                                           ; $568c: $00
    inc b                                         ; $568d: $04
    db $dd                                        ; $568e: $dd
    nop                                           ; $568f: $00
    inc b                                         ; $5690: $04
    ld bc, $0401                                  ; $5691: $01 $01 $04
    ld d, e                                       ; $5694: $53
    ld bc, $8804                                  ; $5695: $01 $04 $88
    ld bc, $c304                                  ; $5698: $01 $04 $c3
    ld bc, $e104                                  ; $569b: $01 $04 $e1
    ld bc, $2804                                  ; $569e: $01 $04 $28
    ld [bc], a                                    ; $56a1: $02
    inc b                                         ; $56a2: $04
    ld a, d                                       ; $56a3: $7a
    ld [bc], a                                    ; $56a4: $02
    inc b                                         ; $56a5: $04
    sub l                                         ; $56a6: $95

jr_020_56a7:
    ld [bc], a                                    ; $56a7: $02
    inc b                                         ; $56a8: $04
    push hl                                       ; $56a9: $e5
    ld [bc], a                                    ; $56aa: $02
    inc b                                         ; $56ab: $04
    ld a, $03                                     ; $56ac: $3e $03
    inc b                                         ; $56ae: $04
    ld c, b                                       ; $56af: $48
    inc bc                                        ; $56b0: $03
    inc b                                         ; $56b1: $04
    sbc c                                         ; $56b2: $99
    inc bc                                        ; $56b3: $03
    inc b                                         ; $56b4: $04
    or c                                          ; $56b5: $b1
    inc bc                                        ; $56b6: $03
    inc b                                         ; $56b7: $04
    ret nz                                        ; $56b8: $c0

    inc bc                                        ; $56b9: $03
    inc b                                         ; $56ba: $04
    ld a, [c]                                     ; $56bb: $f2
    inc bc                                        ; $56bc: $03
    inc b                                         ; $56bd: $04
    inc c                                         ; $56be: $0c
    inc b                                         ; $56bf: $04
    inc b                                         ; $56c0: $04
    ld sp, $0404                                  ; $56c1: $31 $04 $04
    dec [hl]                                      ; $56c4: $35
    inc b                                         ; $56c5: $04
    inc b                                         ; $56c6: $04
    adc [hl]                                      ; $56c7: $8e
    inc b                                         ; $56c8: $04
    inc b                                         ; $56c9: $04
    sub e                                         ; $56ca: $93
    inc b                                         ; $56cb: $04
    inc b                                         ; $56cc: $04
    pop de                                        ; $56cd: $d1
    inc b                                         ; $56ce: $04
    inc b                                         ; $56cf: $04
    ret c                                         ; $56d0: $d8

    inc b                                         ; $56d1: $04
    inc b                                         ; $56d2: $04
    ccf                                           ; $56d3: $3f
    dec b                                         ; $56d4: $05
    inc b                                         ; $56d5: $04
    ld a, d                                       ; $56d6: $7a

Call_020_56d7:
    dec b                                         ; $56d7: $05
    inc b                                         ; $56d8: $04
    call nc, Call_000_0405                        ; $56d9: $d4 $05 $04
    and $05                                       ; $56dc: $e6 $05
    inc b                                         ; $56de: $04
    rst $30                                       ; $56df: $f7
    dec b                                         ; $56e0: $05
    inc b                                         ; $56e1: $04
    ld b, $06                                     ; $56e2: $06 $06
    inc b                                         ; $56e4: $04
    jr nz, @+$08                                  ; $56e5: $20 $06

    inc b                                         ; $56e7: $04
    ld c, a                                       ; $56e8: $4f
    ld b, $04                                     ; $56e9: $06 $04
    ld h, d                                       ; $56eb: $62
    ld b, $04                                     ; $56ec: $06 $04
    add e                                         ; $56ee: $83
    ld b, $04                                     ; $56ef: $06 $04
    xor h                                         ; $56f1: $ac
    ld b, $04                                     ; $56f2: $06 $04
    pop hl                                        ; $56f4: $e1
    ld b, $04                                     ; $56f5: $06 $04
    ld [de], a                                    ; $56f7: $12
    rlca                                          ; $56f8: $07
    inc b                                         ; $56f9: $04
    ld b, d                                       ; $56fa: $42
    rlca                                          ; $56fb: $07
    inc b                                         ; $56fc: $04
    sub b                                         ; $56fd: $90
    rlca                                          ; $56fe: $07
    inc b                                         ; $56ff: $04
    xor c                                         ; $5700: $a9
    rlca                                          ; $5701: $07
    inc b                                         ; $5702: $04
    cp e                                          ; $5703: $bb
    rlca                                          ; $5704: $07
    inc b                                         ; $5705: $04
    inc hl                                        ; $5706: $23
    ld [$4204], sp                                ; $5707: $08 $04 $42
    ld [$8c04], sp                                ; $570a: $08 $04 $8c
    ld [$a204], sp                                ; $570d: $08 $04 $a2
    ld [$fd04], sp                                ; $5710: $08 $04 $fd
    ld [$1b04], sp                                ; $5713: $08 $04 $1b
    add hl, bc                                    ; $5716: $09
    inc b                                         ; $5717: $04
    dec l                                         ; $5718: $2d
    add hl, bc                                    ; $5719: $09
    inc b                                         ; $571a: $04
    dec sp                                        ; $571b: $3b
    add hl, bc                                    ; $571c: $09
    inc b                                         ; $571d: $04
    ld a, b                                       ; $571e: $78
    add hl, bc                                    ; $571f: $09
    inc b                                         ; $5720: $04
    add b                                         ; $5721: $80
    add hl, bc                                    ; $5722: $09
    inc b                                         ; $5723: $04
    and e                                         ; $5724: $a3
    add hl, bc                                    ; $5725: $09
    inc b                                         ; $5726: $04
    or a                                          ; $5727: $b7
    add hl, bc                                    ; $5728: $09
    inc b                                         ; $5729: $04
    add $09                                       ; $572a: $c6 $09
    inc b                                         ; $572c: $04
    ret c                                         ; $572d: $d8

    add hl, bc                                    ; $572e: $09
    inc b                                         ; $572f: $04
    db $ed                                        ; $5730: $ed
    add hl, bc                                    ; $5731: $09
    inc b                                         ; $5732: $04
    rst $30                                       ; $5733: $f7
    add hl, bc                                    ; $5734: $09
    inc b                                         ; $5735: $04
    dec h                                         ; $5736: $25
    ld a, [bc]                                    ; $5737: $0a
    inc b                                         ; $5738: $04
    inc a                                         ; $5739: $3c
    ld a, [bc]                                    ; $573a: $0a
    inc b                                         ; $573b: $04
    ld a, a                                       ; $573c: $7f
    ld a, [bc]                                    ; $573d: $0a
    inc b                                         ; $573e: $04
    sbc h                                         ; $573f: $9c
    ld a, [bc]                                    ; $5740: $0a
    inc b                                         ; $5741: $04
    or [hl]                                       ; $5742: $b6
    ld a, [bc]                                    ; $5743: $0a
    inc b                                         ; $5744: $04
    db $dd                                        ; $5745: $dd
    ld a, [bc]                                    ; $5746: $0a
    inc b                                         ; $5747: $04
    db $fc                                        ; $5748: $fc
    ld a, [bc]                                    ; $5749: $0a
    inc b                                         ; $574a: $04
    ld de, $040b                                  ; $574b: $11 $0b $04
    dec h                                         ; $574e: $25
    dec bc                                        ; $574f: $0b
    inc b                                         ; $5750: $04
    ld b, l                                       ; $5751: $45
    dec bc                                        ; $5752: $0b
    inc b                                         ; $5753: $04
    ld c, [hl]                                    ; $5754: $4e
    dec bc                                        ; $5755: $0b
    inc b                                         ; $5756: $04
    ld e, e                                       ; $5757: $5b
    dec bc                                        ; $5758: $0b
    inc b                                         ; $5759: $04
    ld l, h                                       ; $575a: $6c
    dec bc                                        ; $575b: $0b
    inc b                                         ; $575c: $04
    halt                                          ; $575d: $76
    dec bc                                        ; $575e: $0b
    inc b                                         ; $575f: $04
    sbc [hl]                                      ; $5760: $9e
    dec bc                                        ; $5761: $0b
    inc b                                         ; $5762: $04
    ldh a, [$0b]                                  ; $5763: $f0 $0b
    inc b                                         ; $5765: $04
    dec bc                                        ; $5766: $0b
    inc c                                         ; $5767: $0c
    inc b                                         ; $5768: $04
    inc d                                         ; $5769: $14
    inc c                                         ; $576a: $0c
    inc b                                         ; $576b: $04
    dec h                                         ; $576c: $25
    inc c                                         ; $576d: $0c
    inc b                                         ; $576e: $04
    cpl                                           ; $576f: $2f
    inc c                                         ; $5770: $0c
    inc b                                         ; $5771: $04
    ld e, c                                       ; $5772: $59
    inc c                                         ; $5773: $0c
    inc b                                         ; $5774: $04
    ld a, d                                       ; $5775: $7a
    inc c                                         ; $5776: $0c
    inc b                                         ; $5777: $04
    db $dd                                        ; $5778: $dd
    inc c                                         ; $5779: $0c
    inc b                                         ; $577a: $04
    inc de                                        ; $577b: $13
    dec c                                         ; $577c: $0d
    inc b                                         ; $577d: $04
    ld h, [hl]                                    ; $577e: $66
    dec c                                         ; $577f: $0d

Call_020_5780:
    inc b                                         ; $5780: $04
    ld l, [hl]                                    ; $5781: $6e
    dec c                                         ; $5782: $0d
    inc b                                         ; $5783: $04
    ld a, a                                       ; $5784: $7f
    dec c                                         ; $5785: $0d
    inc b                                         ; $5786: $04
    sub a                                         ; $5787: $97
    dec c                                         ; $5788: $0d
    inc b                                         ; $5789: $04
    rst $08                                       ; $578a: $cf
    dec c                                         ; $578b: $0d
    inc b                                         ; $578c: $04
    db $f4                                        ; $578d: $f4
    dec c                                         ; $578e: $0d
    inc b                                         ; $578f: $04
    add hl, hl                                    ; $5790: $29
    ld c, $04                                     ; $5791: $0e $04
    dec sp                                        ; $5793: $3b
    ld c, $04                                     ; $5794: $0e $04
    ld h, b                                       ; $5796: $60
    ld c, $04                                     ; $5797: $0e $04
    ld h, a                                       ; $5799: $67
    ld c, $04                                     ; $579a: $0e $04
    halt                                          ; $579c: $76
    ld c, $04                                     ; $579d: $0e $04
    cp h                                          ; $579f: $bc
    ld c, $04                                     ; $57a0: $0e $04
    ret                                           ; $57a2: $c9


    ld c, $04                                     ; $57a3: $0e $04
    inc bc                                        ; $57a5: $03
    rrca                                          ; $57a6: $0f
    inc b                                         ; $57a7: $04
    ld e, $0f                                     ; $57a8: $1e $0f
    inc b                                         ; $57aa: $04
    ld l, c                                       ; $57ab: $69
    rrca                                          ; $57ac: $0f
    inc b                                         ; $57ad: $04
    sub c                                         ; $57ae: $91
    rrca                                          ; $57af: $0f

    db $04, $9a, $0f

    inc b                                         ; $57b3: $04
    or b                                          ; $57b4: $b0
    rrca                                          ; $57b5: $0f
    inc b                                         ; $57b6: $04
    ret                                           ; $57b7: $c9


    rrca                                          ; $57b8: $0f
    inc b                                         ; $57b9: $04
    db $db                                        ; $57ba: $db
    rrca                                          ; $57bb: $0f
    inc b                                         ; $57bc: $04
    pop af                                        ; $57bd: $f1
    rrca                                          ; $57be: $0f
    inc b                                         ; $57bf: $04
    rlca                                          ; $57c0: $07
    db $10                                        ; $57c1: $10
    inc b                                         ; $57c2: $04
    inc e                                         ; $57c3: $1c
    db $10                                        ; $57c4: $10
    inc b                                         ; $57c5: $04
    ld a, [hl+]                                   ; $57c6: $2a
    db $10                                        ; $57c7: $10
    inc b                                         ; $57c8: $04
    ld [hl], $10                                  ; $57c9: $36 $10
    inc b                                         ; $57cb: $04
    ld b, h                                       ; $57cc: $44
    db $10                                        ; $57cd: $10
    inc b                                         ; $57ce: $04
    ld d, l                                       ; $57cf: $55
    db $10                                        ; $57d0: $10
    inc b                                         ; $57d1: $04
    ld d, [hl]                                    ; $57d2: $56
    db $10                                        ; $57d3: $10
    inc b                                         ; $57d4: $04
    ld l, b                                       ; $57d5: $68
    db $10                                        ; $57d6: $10
    inc b                                         ; $57d7: $04
    add b                                         ; $57d8: $80
    db $10                                        ; $57d9: $10
    inc b                                         ; $57da: $04
    sbc b                                         ; $57db: $98
    db $10                                        ; $57dc: $10
    inc b                                         ; $57dd: $04
    sbc c                                         ; $57de: $99
    db $10                                        ; $57df: $10
    inc b                                         ; $57e0: $04
    sbc d                                         ; $57e1: $9a
    db $10                                        ; $57e2: $10
    inc b                                         ; $57e3: $04
    or l                                          ; $57e4: $b5
    db $10                                        ; $57e5: $10
    inc b                                         ; $57e6: $04
    ret                                           ; $57e7: $c9


    db $10                                        ; $57e8: $10
    inc b                                         ; $57e9: $04
    jp z, Jump_000_0410                           ; $57ea: $ca $10 $04

    and $10                                       ; $57ed: $e6 $10
    inc b                                         ; $57ef: $04
    rst $20                                       ; $57f0: $e7
    db $10                                        ; $57f1: $10
    inc b                                         ; $57f2: $04
    add sp, $10                                   ; $57f3: $e8 $10
    inc b                                         ; $57f5: $04
    rst $38                                       ; $57f6: $ff
    db $10                                        ; $57f7: $10
    inc b                                         ; $57f8: $04
    dec c                                         ; $57f9: $0d
    ld de, $1b04                                  ; $57fa: $11 $04 $1b
    ld de, $1c04                                  ; $57fd: $11 $04 $1c
    ld de, $1d04                                  ; $5800: $11 $04 $1d
    ld de, $1e04                                  ; $5803: $11 $04 $1e
    ld de, $3504                                  ; $5806: $11 $04 $35
    ld de, $3604                                  ; $5809: $11 $04 $36
    ld de, $3704                                  ; $580c: $11 $04 $37
    ld de, $3804                                  ; $580f: $11 $04 $38
    ld de, $3904                                  ; $5812: $11 $04 $39
    ld de, $3a04                                  ; $5815: $11 $04 $3a
    ld de, $3b04                                  ; $5818: $11 $04 $3b
    ld de, $3c04                                  ; $581b: $11 $04 $3c
    ld de, $3d04                                  ; $581e: $11 $04 $3d
    ld de, $3e04                                  ; $5821: $11 $04 $3e
    ld de, $5a04                                  ; $5824: $11 $04 $5a
    ld de, $6904                                  ; $5827: $11 $04 $69
    ld de, $6a04                                  ; $582a: $11 $04 $6a
    ld de, $6b04                                  ; $582d: $11 $04 $6b
    ld de, $6c04                                  ; $5830: $11 $04 $6c
    ld de, $6d04                                  ; $5833: $11 $04 $6d
    ld de, $6e04                                  ; $5836: $11 $04 $6e
    ld de, $6f04                                  ; $5839: $11 $04 $6f
    ld de, $7004                                  ; $583c: $11 $04 $70
    ld de, $7104                                  ; $583f: $11 $04 $71
    ld de, $7204                                  ; $5842: $11 $04 $72
    ld de, $7304                                  ; $5845: $11 $04 $73
    ld de, $8304                                  ; $5848: $11 $04 $83
    ld de, $9504                                  ; $584b: $11 $04 $95
    ld de, $a204                                  ; $584e: $11 $04 $a2
    ld de, $ae04                                  ; $5851: $11 $04 $ae
    ld de, $c204                                  ; $5854: $11 $04 $c2
    ld de, $e404                                  ; $5857: $11 $04 $e4
    ld de, $e504                                  ; $585a: $11 $04 $e5
    ld de, $f504                                  ; $585d: $11 $04 $f5
    ld de, $f604                                  ; $5860: $11 $04 $f6
    ld de, $0704                                  ; $5863: $11 $04 $07
    ld [de], a                                    ; $5866: $12
    inc b                                         ; $5867: $04
    ld [$0412], sp                                ; $5868: $08 $12 $04
    dec d                                         ; $586b: $15
    ld [de], a                                    ; $586c: $12
    inc b                                         ; $586d: $04
    ld d, $12                                     ; $586e: $16 $12
    inc b                                         ; $5870: $04
    add hl, hl                                    ; $5871: $29
    ld [de], a                                    ; $5872: $12
    inc b                                         ; $5873: $04
    ld a, [hl-]                                   ; $5874: $3a
    ld [de], a                                    ; $5875: $12
    inc b                                         ; $5876: $04
    ld d, c                                       ; $5877: $51
    ld [de], a                                    ; $5878: $12
    inc b                                         ; $5879: $04
    ld e, a                                       ; $587a: $5f
    ld [de], a                                    ; $587b: $12
    inc b                                         ; $587c: $04
    ld [hl], b                                    ; $587d: $70
    ld [de], a                                    ; $587e: $12
    inc b                                         ; $587f: $04
    ld [hl], c                                    ; $5880: $71
    ld [de], a                                    ; $5881: $12
    inc b                                         ; $5882: $04
    ld [hl], d                                    ; $5883: $72
    ld [de], a                                    ; $5884: $12
    inc b                                         ; $5885: $04
    ld [hl], e                                    ; $5886: $73
    ld [de], a                                    ; $5887: $12
    inc b                                         ; $5888: $04
    ld [hl], h                                    ; $5889: $74
    ld [de], a                                    ; $588a: $12
    inc b                                         ; $588b: $04
    add [hl]                                      ; $588c: $86
    ld [de], a                                    ; $588d: $12
    inc b                                         ; $588e: $04
    sub a                                         ; $588f: $97
    ld [de], a                                    ; $5890: $12
    inc b                                         ; $5891: $04
    xor c                                         ; $5892: $a9
    ld [de], a                                    ; $5893: $12
    inc b                                         ; $5894: $04
    cp l                                          ; $5895: $bd
    ld [de], a                                    ; $5896: $12
    inc b                                         ; $5897: $04
    db $d3                                        ; $5898: $d3
    ld [de], a                                    ; $5899: $12
    inc b                                         ; $589a: $04
    jp hl                                         ; $589b: $e9


    ld [de], a                                    ; $589c: $12
    inc b                                         ; $589d: $04
    ld a, [$0412]                                 ; $589e: $fa $12 $04
    ld [$0413], sp                                ; $58a1: $08 $13 $04
    rla                                           ; $58a4: $17
    inc de                                        ; $58a5: $13
    inc b                                         ; $58a6: $04
    dec h                                         ; $58a7: $25
    inc de                                        ; $58a8: $13
    inc b                                         ; $58a9: $04
    ld [hl], $13                                  ; $58aa: $36 $13
    inc b                                         ; $58ac: $04
    ld b, h                                       ; $58ad: $44
    inc de                                        ; $58ae: $13
    inc b                                         ; $58af: $04
    ld e, a                                       ; $58b0: $5f
    inc de                                        ; $58b1: $13
    inc b                                         ; $58b2: $04
    ld h, b                                       ; $58b3: $60
    inc de                                        ; $58b4: $13
    inc b                                         ; $58b5: $04
    ld [hl], l                                    ; $58b6: $75
    inc de                                        ; $58b7: $13
    inc b                                         ; $58b8: $04
    add l                                         ; $58b9: $85
    inc de                                        ; $58ba: $13
    inc b                                         ; $58bb: $04
    sub l                                         ; $58bc: $95
    inc de                                        ; $58bd: $13
    inc b                                         ; $58be: $04
    xor c                                         ; $58bf: $a9
    inc de                                        ; $58c0: $13
    inc b                                         ; $58c1: $04
    or a                                          ; $58c2: $b7
    inc de                                        ; $58c3: $13
    inc b                                         ; $58c4: $04
    push bc                                       ; $58c5: $c5
    inc de                                        ; $58c6: $13
    inc b                                         ; $58c7: $04
    db $d3                                        ; $58c8: $d3
    inc de                                        ; $58c9: $13
    inc b                                         ; $58ca: $04
    push hl                                       ; $58cb: $e5
    inc de                                        ; $58cc: $13
    inc b                                         ; $58cd: $04
    di                                            ; $58ce: $f3
    inc de                                        ; $58cf: $13
    inc b                                         ; $58d0: $04
    db $fc                                        ; $58d1: $fc
    inc de                                        ; $58d2: $13
    inc b                                         ; $58d3: $04
    dec b                                         ; $58d4: $05
    inc d                                         ; $58d5: $14
    inc b                                         ; $58d6: $04
    dec c                                         ; $58d7: $0d
    inc d                                         ; $58d8: $14
    inc b                                         ; $58d9: $04
    inc d                                         ; $58da: $14
    inc d                                         ; $58db: $14
    inc b                                         ; $58dc: $04
    dec de                                        ; $58dd: $1b
    inc d                                         ; $58de: $14
    inc b                                         ; $58df: $04
    inc hl                                        ; $58e0: $23
    inc d                                         ; $58e1: $14
    inc b                                         ; $58e2: $04
    dec hl                                        ; $58e3: $2b
    inc d                                         ; $58e4: $14
    inc b                                         ; $58e5: $04
    inc sp                                        ; $58e6: $33
    inc d                                         ; $58e7: $14
    inc b                                         ; $58e8: $04
    ccf                                           ; $58e9: $3f
    inc d                                         ; $58ea: $14
    inc b                                         ; $58eb: $04
    ld c, h                                       ; $58ec: $4c
    inc d                                         ; $58ed: $14
    inc b                                         ; $58ee: $04
    ld e, b                                       ; $58ef: $58
    inc d                                         ; $58f0: $14
    inc b                                         ; $58f1: $04
    ld h, l                                       ; $58f2: $65
    inc d                                         ; $58f3: $14
    inc b                                         ; $58f4: $04
    ld [hl], d                                    ; $58f5: $72
    inc d                                         ; $58f6: $14
    inc b                                         ; $58f7: $04
    ld a, a                                       ; $58f8: $7f
    inc d                                         ; $58f9: $14
    inc b                                         ; $58fa: $04
    adc e                                         ; $58fb: $8b
    inc d                                         ; $58fc: $14
    inc b                                         ; $58fd: $04
    sbc d                                         ; $58fe: $9a
    inc d                                         ; $58ff: $14
    inc b                                         ; $5900: $04
    and a                                         ; $5901: $a7
    inc d                                         ; $5902: $14
    inc b                                         ; $5903: $04
    or c                                          ; $5904: $b1
    inc d                                         ; $5905: $14
    inc b                                         ; $5906: $04
    cp [hl]                                       ; $5907: $be
    inc d                                         ; $5908: $14
    inc b                                         ; $5909: $04
    rst $00                                       ; $590a: $c7
    inc d                                         ; $590b: $14
    inc b                                         ; $590c: $04
    rst $08                                       ; $590d: $cf
    inc d                                         ; $590e: $14
    inc b                                         ; $590f: $04
    jp c, Jump_000_0414                           ; $5910: $da $14 $04

    rst $20                                       ; $5913: $e7
    inc d                                         ; $5914: $14
    inc b                                         ; $5915: $04
    ld a, [c]                                     ; $5916: $f2
    inc d                                         ; $5917: $14
    inc b                                         ; $5918: $04
    rst $38                                       ; $5919: $ff
    inc d                                         ; $591a: $14
    inc b                                         ; $591b: $04
    inc c                                         ; $591c: $0c
    dec d                                         ; $591d: $15
    inc b                                         ; $591e: $04
    add hl, de                                    ; $591f: $19
    dec d                                         ; $5920: $15
    inc b                                         ; $5921: $04
    ld h, $15                                     ; $5922: $26 $15
    inc b                                         ; $5924: $04
    inc sp                                        ; $5925: $33
    dec d                                         ; $5926: $15
    inc b                                         ; $5927: $04
    ld b, b                                       ; $5928: $40
    dec d                                         ; $5929: $15
    inc b                                         ; $592a: $04
    ld c, e                                       ; $592b: $4b
    dec d                                         ; $592c: $15
    inc b                                         ; $592d: $04
    ld d, [hl]                                    ; $592e: $56
    dec d                                         ; $592f: $15
    inc b                                         ; $5930: $04
    ld h, c                                       ; $5931: $61
    dec d                                         ; $5932: $15
    inc b                                         ; $5933: $04
    ld l, h                                       ; $5934: $6c
    dec d                                         ; $5935: $15
    inc b                                         ; $5936: $04
    ld [hl], a                                    ; $5937: $77
    dec d                                         ; $5938: $15
    inc b                                         ; $5939: $04
    add d                                         ; $593a: $82
    dec d                                         ; $593b: $15
    inc b                                         ; $593c: $04
    adc a                                         ; $593d: $8f
    dec d                                         ; $593e: $15
    inc b                                         ; $593f: $04
    sbc b                                         ; $5940: $98
    dec d                                         ; $5941: $15
    inc b                                         ; $5942: $04
    and c                                         ; $5943: $a1
    dec d                                         ; $5944: $15
    inc b                                         ; $5945: $04
    xor l                                         ; $5946: $ad
    dec d                                         ; $5947: $15
    inc b                                         ; $5948: $04
    or h                                          ; $5949: $b4
    dec d                                         ; $594a: $15
    inc b                                         ; $594b: $04
    cp a                                          ; $594c: $bf
    dec d                                         ; $594d: $15
    inc b                                         ; $594e: $04
    rst $08                                       ; $594f: $cf
    dec d                                         ; $5950: $15
    inc b                                         ; $5951: $04
    db $dd                                        ; $5952: $dd
    dec d                                         ; $5953: $15
    inc b                                         ; $5954: $04
    add sp, $15                                   ; $5955: $e8 $15
    inc b                                         ; $5957: $04
    di                                            ; $5958: $f3
    dec d                                         ; $5959: $15
    inc b                                         ; $595a: $04
    cp $15                                        ; $595b: $fe $15
    inc b                                         ; $595d: $04
    add hl, bc                                    ; $595e: $09
    ld d, $04                                     ; $595f: $16 $04
    inc d                                         ; $5961: $14
    ld d, $04                                     ; $5962: $16 $04
    rra                                           ; $5964: $1f
    ld d, $04                                     ; $5965: $16 $04
    ld a, [hl+]                                   ; $5967: $2a
    ld d, $04                                     ; $5968: $16 $04
    inc sp                                        ; $596a: $33
    ld d, $04                                     ; $596b: $16 $04
    ld b, d                                       ; $596d: $42
    ld d, $04                                     ; $596e: $16 $04
    ld c, e                                       ; $5970: $4b
    ld d, $04                                     ; $5971: $16 $04
    ld d, e                                       ; $5973: $53
    ld d, $04                                     ; $5974: $16 $04
    ld e, e                                       ; $5976: $5b
    ld d, $04                                     ; $5977: $16 $04
    ld l, d                                       ; $5979: $6a
    ld d, $04                                     ; $597a: $16 $04
    ld a, b                                       ; $597c: $78
    ld d, $04                                     ; $597d: $16 $04
    add h                                         ; $597f: $84
    ld d, $04                                     ; $5980: $16 $04
    adc a                                         ; $5982: $8f
    ld d, $04                                     ; $5983: $16 $04
    sbc e                                         ; $5985: $9b
    ld d, $04                                     ; $5986: $16 $04
    and l                                         ; $5988: $a5
    ld d, $04                                     ; $5989: $16 $04
    or b                                          ; $598b: $b0
    ld d, $04                                     ; $598c: $16 $04
    or [hl]                                       ; $598e: $b6
    ld d, $04                                     ; $598f: $16 $04
    jp Jump_000_0416                              ; $5991: $c3 $16 $04


    call z, Call_000_0416                         ; $5994: $cc $16 $04
    reti                                          ; $5997: $d9


    ld d, $04                                     ; $5998: $16 $04
    push hl                                       ; $599a: $e5
    ld d, $04                                     ; $599b: $16 $04
    db $ed                                        ; $599d: $ed
    ld d, $04                                     ; $599e: $16 $04
    db $fc                                        ; $59a0: $fc
    ld d, $04                                     ; $59a1: $16 $04
    ld a, [bc]                                    ; $59a3: $0a
    rla                                           ; $59a4: $17
    inc b                                         ; $59a5: $04

Jump_020_59a6:
    ld a, [de]                                    ; $59a6: $1a
    rla                                           ; $59a7: $17
    inc b                                         ; $59a8: $04
    dec h                                         ; $59a9: $25
    rla                                           ; $59aa: $17
    inc b                                         ; $59ab: $04
    jr nc, jr_020_59c5                            ; $59ac: $30 $17

    inc b                                         ; $59ae: $04
    dec a                                         ; $59af: $3d
    rla                                           ; $59b0: $17
    inc b                                         ; $59b1: $04
    ld c, d                                       ; $59b2: $4a
    rla                                           ; $59b3: $17
    inc b                                         ; $59b4: $04
    ld d, e                                       ; $59b5: $53
    rla                                           ; $59b6: $17
    inc b                                         ; $59b7: $04
    ld e, a                                       ; $59b8: $5f
    rla                                           ; $59b9: $17
    inc b                                         ; $59ba: $04
    ld h, l                                       ; $59bb: $65
    rla                                           ; $59bc: $17
    inc b                                         ; $59bd: $04
    ld [hl], b                                    ; $59be: $70
    rla                                           ; $59bf: $17
    inc b                                         ; $59c0: $04
    ld a, h                                       ; $59c1: $7c
    rla                                           ; $59c2: $17
    inc b                                         ; $59c3: $04
    adc h                                         ; $59c4: $8c

jr_020_59c5:
    rla                                           ; $59c5: $17
    inc b                                         ; $59c6: $04
    sbc h                                         ; $59c7: $9c
    rla                                           ; $59c8: $17
    inc b                                         ; $59c9: $04
    xor h                                         ; $59ca: $ac
    rla                                           ; $59cb: $17
    inc b                                         ; $59cc: $04
    cp e                                          ; $59cd: $bb
    rla                                           ; $59ce: $17
    inc b                                         ; $59cf: $04
    rst $00                                       ; $59d0: $c7
    rla                                           ; $59d1: $17
    inc b                                         ; $59d2: $04
    push de                                       ; $59d3: $d5
    rla                                           ; $59d4: $17
    inc b                                         ; $59d5: $04
    ld [c], a                                     ; $59d6: $e2
    rla                                           ; $59d7: $17
    inc b                                         ; $59d8: $04
    xor $17                                       ; $59d9: $ee $17
    inc b                                         ; $59db: $04
    ld hl, sp+$17                                 ; $59dc: $f8 $17
    inc b                                         ; $59de: $04
    dec b                                         ; $59df: $05
    jr jr_020_59e6                                ; $59e0: $18 $04

    ld de, $0418                                  ; $59e2: $11 $18 $04
    add hl, de                                    ; $59e5: $19

jr_020_59e6:
    jr jr_020_59ec                                ; $59e6: $18 $04

    add hl, hl                                    ; $59e8: $29
    jr jr_020_59ef                                ; $59e9: $18 $04

    inc sp                                        ; $59eb: $33

jr_020_59ec:
    jr jr_020_59f2                                ; $59ec: $18 $04

    inc a                                         ; $59ee: $3c

jr_020_59ef:
    jr jr_020_59f5                                ; $59ef: $18 $04

    ld b, a                                       ; $59f1: $47

jr_020_59f2:
    jr jr_020_59f8                                ; $59f2: $18 $04

    ld d, [hl]                                    ; $59f4: $56

jr_020_59f5:
    jr jr_020_59fb                                ; $59f5: $18 $04

    ld h, h                                       ; $59f7: $64

jr_020_59f8:
    jr jr_020_59fe                                ; $59f8: $18 $04

    ld [hl], h                                    ; $59fa: $74

jr_020_59fb:
    jr jr_020_5a01                                ; $59fb: $18 $04

    adc d                                         ; $59fd: $8a

jr_020_59fe:
    jr jr_020_5a04                                ; $59fe: $18 $04

    sbc d                                         ; $5a00: $9a

jr_020_5a01:
    jr @+$06                                      ; $5a01: $18 $04

    or b                                          ; $5a03: $b0

jr_020_5a04:
    jr @+$06                                      ; $5a04: $18 $04

    add $18                                       ; $5a06: $c6 $18
    inc b                                         ; $5a08: $04
    ldh [rNR23], a                                ; $5a09: $e0 $18
    inc b                                         ; $5a0b: $04
    ld bc, $0419                                  ; $5a0c: $01 $19 $04
    dec e                                         ; $5a0f: $1d
    add hl, de                                    ; $5a10: $19
    inc b                                         ; $5a11: $04
    ld [hl], $19                                  ; $5a12: $36 $19
    inc b                                         ; $5a14: $04
    ld c, l                                       ; $5a15: $4d
    add hl, de                                    ; $5a16: $19
    inc b                                         ; $5a17: $04
    ld e, l                                       ; $5a18: $5d
    add hl, de                                    ; $5a19: $19
    inc b                                         ; $5a1a: $04
    ld l, d                                       ; $5a1b: $6a
    add hl, de                                    ; $5a1c: $19
    inc b                                         ; $5a1d: $04
    ld [hl], a                                    ; $5a1e: $77
    add hl, de                                    ; $5a1f: $19
    inc b                                         ; $5a20: $04
    add h                                         ; $5a21: $84
    add hl, de                                    ; $5a22: $19
    inc b                                         ; $5a23: $04
    sbc b                                         ; $5a24: $98
    add hl, de                                    ; $5a25: $19
    inc b                                         ; $5a26: $04
    or b                                          ; $5a27: $b0
    add hl, de                                    ; $5a28: $19
    inc b                                         ; $5a29: $04
    push bc                                       ; $5a2a: $c5
    add hl, de                                    ; $5a2b: $19
    inc b                                         ; $5a2c: $04
    rst $10                                       ; $5a2d: $d7
    add hl, de                                    ; $5a2e: $19
    inc b                                         ; $5a2f: $04
    db $ec                                        ; $5a30: $ec
    add hl, de                                    ; $5a31: $19
    inc b                                         ; $5a32: $04
    db $fd                                        ; $5a33: $fd
    add hl, de                                    ; $5a34: $19
    inc b                                         ; $5a35: $04
    ld c, $1a                                     ; $5a36: $0e $1a
    inc b                                         ; $5a38: $04
    ld hl, $041a                                  ; $5a39: $21 $1a $04
    ld [hl], $1a                                  ; $5a3c: $36 $1a
    inc b                                         ; $5a3e: $04
    ld c, h                                       ; $5a3f: $4c
    ld a, [de]                                    ; $5a40: $1a
    inc b                                         ; $5a41: $04
    ld l, d                                       ; $5a42: $6a
    ld a, [de]                                    ; $5a43: $1a
    inc b                                         ; $5a44: $04
    adc b                                         ; $5a45: $88
    ld a, [de]                                    ; $5a46: $1a
    inc b                                         ; $5a47: $04
    and [hl]                                      ; $5a48: $a6
    ld a, [de]                                    ; $5a49: $1a
    inc b                                         ; $5a4a: $04
    call nz, Call_000_041a                        ; $5a4b: $c4 $1a $04
    ld [c], a                                     ; $5a4e: $e2
    ld a, [de]                                    ; $5a4f: $1a
    inc b                                         ; $5a50: $04
    nop                                           ; $5a51: $00
    dec de                                        ; $5a52: $1b
    inc b                                         ; $5a53: $04
    dec c                                         ; $5a54: $0d
    dec de                                        ; $5a55: $1b
    inc b                                         ; $5a56: $04
    ld a, [de]                                    ; $5a57: $1a
    dec de                                        ; $5a58: $1b
    inc b                                         ; $5a59: $04
    daa                                           ; $5a5a: $27
    dec de                                        ; $5a5b: $1b
    inc b                                         ; $5a5c: $04
    inc [hl]                                      ; $5a5d: $34
    dec de                                        ; $5a5e: $1b
    inc b                                         ; $5a5f: $04
    ld b, c                                       ; $5a60: $41
    dec de                                        ; $5a61: $1b
    inc b                                         ; $5a62: $04
    ld c, [hl]                                    ; $5a63: $4e
    dec de                                        ; $5a64: $1b
    inc b                                         ; $5a65: $04
    ld h, a                                       ; $5a66: $67
    dec de                                        ; $5a67: $1b
    inc b                                         ; $5a68: $04
    ld a, c                                       ; $5a69: $79
    dec de                                        ; $5a6a: $1b
    inc b                                         ; $5a6b: $04
    adc e                                         ; $5a6c: $8b
    dec de                                        ; $5a6d: $1b
    inc b                                         ; $5a6e: $04
    and b                                         ; $5a6f: $a0
    dec de                                        ; $5a70: $1b
    inc b                                         ; $5a71: $04
    or b                                          ; $5a72: $b0
    dec de                                        ; $5a73: $1b
    inc b                                         ; $5a74: $04
    call nz, Call_000_041b                        ; $5a75: $c4 $1b $04
    db $d3                                        ; $5a78: $d3
    dec de                                        ; $5a79: $1b
    inc b                                         ; $5a7a: $04
    db $e4                                        ; $5a7b: $e4
    dec de                                        ; $5a7c: $1b
    inc b                                         ; $5a7d: $04
    ld hl, sp+$1b                                 ; $5a7e: $f8 $1b
    inc b                                         ; $5a80: $04
    inc c                                         ; $5a81: $0c
    inc e                                         ; $5a82: $1c
    inc b                                         ; $5a83: $04
    jr nz, jr_020_5aa2                            ; $5a84: $20 $1c

    inc b                                         ; $5a86: $04
    inc [hl]                                      ; $5a87: $34
    inc e                                         ; $5a88: $1c
    inc b                                         ; $5a89: $04

Call_020_5a8a:
    ld c, b                                       ; $5a8a: $48
    inc e                                         ; $5a8b: $1c
    inc b                                         ; $5a8c: $04
    ld e, h                                       ; $5a8d: $5c
    inc e                                         ; $5a8e: $1c
    inc b                                         ; $5a8f: $04
    ld [hl], b                                    ; $5a90: $70
    inc e                                         ; $5a91: $1c
    inc b                                         ; $5a92: $04
    add d                                         ; $5a93: $82
    inc e                                         ; $5a94: $1c
    inc b                                         ; $5a95: $04
    sbc e                                         ; $5a96: $9b
    inc e                                         ; $5a97: $1c
    inc b                                         ; $5a98: $04
    xor l                                         ; $5a99: $ad
    inc e                                         ; $5a9a: $1c
    inc b                                         ; $5a9b: $04
    cp h                                          ; $5a9c: $bc
    inc e                                         ; $5a9d: $1c
    inc b                                         ; $5a9e: $04
    rr h                                          ; $5a9f: $cb $1c
    inc b                                         ; $5aa1: $04

jr_020_5aa2:
    push hl                                       ; $5aa2: $e5
    inc e                                         ; $5aa3: $1c
    inc b                                         ; $5aa4: $04
    db $fd                                        ; $5aa5: $fd
    inc e                                         ; $5aa6: $1c
    inc b                                         ; $5aa7: $04
    inc de                                        ; $5aa8: $13
    dec e                                         ; $5aa9: $1d
    inc b                                         ; $5aaa: $04
    ld h, $1d                                     ; $5aab: $26 $1d
    inc b                                         ; $5aad: $04
    ld a, $1d                                     ; $5aae: $3e $1d
    inc b                                         ; $5ab0: $04
    ld d, h                                       ; $5ab1: $54
    dec e                                         ; $5ab2: $1d
    inc b                                         ; $5ab3: $04
    ld l, e                                       ; $5ab4: $6b
    dec e                                         ; $5ab5: $1d
    inc b                                         ; $5ab6: $04
    ld a, b                                       ; $5ab7: $78
    dec e                                         ; $5ab8: $1d
    inc b                                         ; $5ab9: $04
    sub b                                         ; $5aba: $90
    dec e                                         ; $5abb: $1d
    inc b                                         ; $5abc: $04
    and c                                         ; $5abd: $a1
    dec e                                         ; $5abe: $1d
    inc b                                         ; $5abf: $04
    cp b                                          ; $5ac0: $b8
    dec e                                         ; $5ac1: $1d
    inc b                                         ; $5ac2: $04
    db $d3                                        ; $5ac3: $d3
    dec e                                         ; $5ac4: $1d
    inc b                                         ; $5ac5: $04
    and $1d                                       ; $5ac6: $e6 $1d
    inc b                                         ; $5ac8: $04
    db $fd                                        ; $5ac9: $fd
    dec e                                         ; $5aca: $1d
    inc b                                         ; $5acb: $04
    jr @+$20                                      ; $5acc: $18 $1e

    inc b                                         ; $5ace: $04
    jr nc, @+$20                                  ; $5acf: $30 $1e

    inc b                                         ; $5ad1: $04
    ld b, c                                       ; $5ad2: $41
    ld e, $04                                     ; $5ad3: $1e $04
    ld d, d                                       ; $5ad5: $52
    ld e, $04                                     ; $5ad6: $1e $04
    ld h, d                                       ; $5ad8: $62
    ld e, $04                                     ; $5ad9: $1e $04
    ld [hl], e                                    ; $5adb: $73
    ld e, $04                                     ; $5adc: $1e $04
    add l                                         ; $5ade: $85
    ld e, $04                                     ; $5adf: $1e $04
    sub h                                         ; $5ae1: $94
    ld e, $04                                     ; $5ae2: $1e $04
    xor c                                         ; $5ae4: $a9
    ld e, $04                                     ; $5ae5: $1e $04
    cp c                                          ; $5ae7: $b9
    ld e, $04                                     ; $5ae8: $1e $04
    call Call_000_041e                            ; $5aea: $cd $1e $04
    call c, Call_000_041e                         ; $5aed: $dc $1e $04
    db $eb                                        ; $5af0: $eb
    ld e, $04                                     ; $5af1: $1e $04
    ld a, [$041e]                                 ; $5af3: $fa $1e $04
    inc c                                         ; $5af6: $0c
    rra                                           ; $5af7: $1f
    inc b                                         ; $5af8: $04
    inc h                                         ; $5af9: $24
    rra                                           ; $5afa: $1f
    inc b                                         ; $5afb: $04
    inc [hl]                                      ; $5afc: $34
    rra                                           ; $5afd: $1f
    inc b                                         ; $5afe: $04
    ld c, d                                       ; $5aff: $4a
    rra                                           ; $5b00: $1f
    inc b                                         ; $5b01: $04
    ld h, e                                       ; $5b02: $63
    rra                                           ; $5b03: $1f
    inc b                                         ; $5b04: $04
    halt                                          ; $5b05: $76
    rra                                           ; $5b06: $1f
    inc b                                         ; $5b07: $04
    adc [hl]                                      ; $5b08: $8e
    rra                                           ; $5b09: $1f
    inc b                                         ; $5b0a: $04
    and h                                         ; $5b0b: $a4
    rra                                           ; $5b0c: $1f
    inc b                                         ; $5b0d: $04
    or h                                          ; $5b0e: $b4
    rra                                           ; $5b0f: $1f
    inc b                                         ; $5b10: $04
    push bc                                       ; $5b11: $c5
    rra                                           ; $5b12: $1f
    inc b                                         ; $5b13: $04
    db $db                                        ; $5b14: $db
    rra                                           ; $5b15: $1f
    inc b                                         ; $5b16: $04
    db $ed                                        ; $5b17: $ed
    rra                                           ; $5b18: $1f
    inc b                                         ; $5b19: $04
    nop                                           ; $5b1a: $00
    db $20                                        ; $5b1b: $20

    db $04, $10, $20, $04, $ce, $20, $04, $f0, $20

    inc b                                         ; $5b25: $04
    ld hl, sp+$20                                 ; $5b26: $f8 $20
    inc b                                         ; $5b28: $04
    db $01                                        ; $5b29: $01
    db $21                                        ; $5b2a: $21

    db $04, $11, $21

    inc b                                         ; $5b2e: $04
    inc e                                         ; $5b2f: $1c
    ld hl, $2d04                                  ; $5b30: $21 $04 $2d
    ld hl, $3904                                  ; $5b33: $21 $04 $39
    ld hl, $4704                                  ; $5b36: $21 $04 $47
    ld hl, $4c04                                  ; $5b39: $21 $04 $4c
    ld hl, $5304                                  ; $5b3c: $21 $04 $53
    ld hl, $5a04                                  ; $5b3f: $21 $04 $5a
    ld hl, $6104                                  ; $5b42: $21 $04 $61
    ld hl, $6804                                  ; $5b45: $21 $04 $68
    ld hl, $6f04                                  ; $5b48: $21 $04 $6f
    ld hl, $8504                                  ; $5b4b: $21 $04 $85
    ld hl, $9304                                  ; $5b4e: $21 $04 $93
    ld hl, $9e04                                  ; $5b51: $21 $04 $9e
    ld hl, $a804                                  ; $5b54: $21 $04 $a8
    ld hl, $b304                                  ; $5b57: $21 $04 $b3
    ld hl, $c304                                  ; $5b5a: $21 $04 $c3
    ld hl, $cd04                                  ; $5b5d: $21 $04 $cd
    ld hl, $d404                                  ; $5b60: $21 $04 $d4
    ld hl, $dd04                                  ; $5b63: $21 $04 $dd
    ld hl, $e304                                  ; $5b66: $21 $04 $e3
    ld hl, $e904                                  ; $5b69: $21 $04 $e9
    ld hl, $f204                                  ; $5b6c: $21 $04 $f2
    ld hl, $fc04                                  ; $5b6f: $21 $04 $fc
    ld hl, $0804                                  ; $5b72: $21 $04 $08
    ld [hl+], a                                   ; $5b75: $22
    inc b                                         ; $5b76: $04
    ld [de], a                                    ; $5b77: $12
    ld [hl+], a                                   ; $5b78: $22
    inc b                                         ; $5b79: $04
    dec de                                        ; $5b7a: $1b
    ld [hl+], a                                   ; $5b7b: $22
    inc b                                         ; $5b7c: $04
    inc hl                                        ; $5b7d: $23
    ld [hl+], a                                   ; $5b7e: $22
    inc b                                         ; $5b7f: $04
    dec hl                                        ; $5b80: $2b
    ld [hl+], a                                   ; $5b81: $22
    inc b                                         ; $5b82: $04
    inc [hl]                                      ; $5b83: $34
    ld [hl+], a                                   ; $5b84: $22
    inc b                                         ; $5b85: $04
    ld b, c                                       ; $5b86: $41
    ld [hl+], a                                   ; $5b87: $22
    inc b                                         ; $5b88: $04
    ld c, b                                       ; $5b89: $48
    ld [hl+], a                                   ; $5b8a: $22
    inc b                                         ; $5b8b: $04
    ld c, [hl]                                    ; $5b8c: $4e
    ld [hl+], a                                   ; $5b8d: $22
    inc b                                         ; $5b8e: $04
    ld d, h                                       ; $5b8f: $54
    ld [hl+], a                                   ; $5b90: $22
    inc b                                         ; $5b91: $04
    ld h, b                                       ; $5b92: $60
    ld [hl+], a                                   ; $5b93: $22
    inc b                                         ; $5b94: $04
    ld [hl], b                                    ; $5b95: $70
    ld [hl+], a                                   ; $5b96: $22
    inc b                                         ; $5b97: $04
    ld a, e                                       ; $5b98: $7b
    ld [hl+], a                                   ; $5b99: $22
    inc b                                         ; $5b9a: $04
    add [hl]                                      ; $5b9b: $86
    ld [hl+], a                                   ; $5b9c: $22
    inc b                                         ; $5b9d: $04
    sub d                                         ; $5b9e: $92
    ld [hl+], a                                   ; $5b9f: $22
    inc b                                         ; $5ba0: $04
    and d                                         ; $5ba1: $a2
    ld [hl+], a                                   ; $5ba2: $22
    inc b                                         ; $5ba3: $04
    xor b                                         ; $5ba4: $a8
    ld [hl+], a                                   ; $5ba5: $22
    inc b                                         ; $5ba6: $04
    or l                                          ; $5ba7: $b5
    ld [hl+], a                                   ; $5ba8: $22
    inc b                                         ; $5ba9: $04
    cp l                                          ; $5baa: $bd
    ld [hl+], a                                   ; $5bab: $22
    inc b                                         ; $5bac: $04
    pop bc                                        ; $5bad: $c1
    ld [hl+], a                                   ; $5bae: $22
    inc b                                         ; $5baf: $04
    add $22                                       ; $5bb0: $c6 $22
    inc b                                         ; $5bb2: $04
    pop de                                        ; $5bb3: $d1
    ld [hl+], a                                   ; $5bb4: $22
    inc b                                         ; $5bb5: $04
    push af                                       ; $5bb6: $f5
    ld [hl+], a                                   ; $5bb7: $22
    inc b                                         ; $5bb8: $04
    ld bc, $0423                                  ; $5bb9: $01 $23 $04
    inc c                                         ; $5bbc: $0c
    inc hl                                        ; $5bbd: $23

    db $04, $32, $23

    inc b                                         ; $5bc1: $04
    ld d, d                                       ; $5bc2: $52
    inc hl                                        ; $5bc3: $23
    inc b                                         ; $5bc4: $04
    ld l, a                                       ; $5bc5: $6f
    inc hl                                        ; $5bc6: $23
    inc b                                         ; $5bc7: $04
    adc h                                         ; $5bc8: $8c
    inc hl                                        ; $5bc9: $23
    inc b                                         ; $5bca: $04
    xor b                                         ; $5bcb: $a8
    inc hl                                        ; $5bcc: $23
    inc b                                         ; $5bcd: $04
    jp Jump_000_0423                              ; $5bce: $c3 $23 $04


    reti                                          ; $5bd1: $d9


    inc hl                                        ; $5bd2: $23
    inc b                                         ; $5bd3: $04
    rst $30                                       ; $5bd4: $f7
    inc hl                                        ; $5bd5: $23
    inc b                                         ; $5bd6: $04
    ld de, $0424                                  ; $5bd7: $11 $24 $04
    add hl, hl                                    ; $5bda: $29
    inc h                                         ; $5bdb: $24
    inc b                                         ; $5bdc: $04
    dec sp                                        ; $5bdd: $3b
    inc h                                         ; $5bde: $24
    inc b                                         ; $5bdf: $04
    ld c, h                                       ; $5be0: $4c
    inc h                                         ; $5be1: $24
    inc b                                         ; $5be2: $04
    ld e, h                                       ; $5be3: $5c
    inc h                                         ; $5be4: $24
    inc b                                         ; $5be5: $04
    ld a, b                                       ; $5be6: $78
    inc h                                         ; $5be7: $24
    inc b                                         ; $5be8: $04
    add a                                         ; $5be9: $87
    inc h                                         ; $5bea: $24
    inc b                                         ; $5beb: $04
    sbc c                                         ; $5bec: $99
    inc h                                         ; $5bed: $24
    inc b                                         ; $5bee: $04
    and e                                         ; $5bef: $a3
    inc h                                         ; $5bf0: $24
    inc b                                         ; $5bf1: $04
    xor l                                         ; $5bf2: $ad
    inc h                                         ; $5bf3: $24
    inc b                                         ; $5bf4: $04
    cp c                                          ; $5bf5: $b9
    inc h                                         ; $5bf6: $24
    inc b                                         ; $5bf7: $04
    push bc                                       ; $5bf8: $c5
    inc h                                         ; $5bf9: $24
    inc b                                         ; $5bfa: $04
    ret nc                                        ; $5bfb: $d0

    inc h                                         ; $5bfc: $24
    inc b                                         ; $5bfd: $04
    jp c, $0424                                   ; $5bfe: $da $24 $04

    di                                            ; $5c01: $f3
    inc h                                         ; $5c02: $24
    inc b                                         ; $5c03: $04
    inc c                                         ; $5c04: $0c
    dec h                                         ; $5c05: $25
    inc b                                         ; $5c06: $04
    inc l                                         ; $5c07: $2c
    dec h                                         ; $5c08: $25
    inc b                                         ; $5c09: $04
    ld d, h                                       ; $5c0a: $54
    dec h                                         ; $5c0b: $25
    inc b                                         ; $5c0c: $04
    add e                                         ; $5c0d: $83
    dec h                                         ; $5c0e: $25

Jump_020_5c0f:
    inc b                                         ; $5c0f: $04
    sub h                                         ; $5c10: $94
    dec h                                         ; $5c11: $25
    inc b                                         ; $5c12: $04
    and h                                         ; $5c13: $a4
    dec h                                         ; $5c14: $25
    inc b                                         ; $5c15: $04
    or d                                          ; $5c16: $b2
    dec h                                         ; $5c17: $25
    inc b                                         ; $5c18: $04
    cp l                                          ; $5c19: $bd
    dec h                                         ; $5c1a: $25
    inc b                                         ; $5c1b: $04
    pop de                                        ; $5c1c: $d1
    dec h                                         ; $5c1d: $25
    inc b                                         ; $5c1e: $04
    sbc $25                                       ; $5c1f: $de $25
    inc b                                         ; $5c21: $04
    rst $20                                       ; $5c22: $e7
    dec h                                         ; $5c23: $25
    inc b                                         ; $5c24: $04
    or $25                                        ; $5c25: $f6 $25
    inc b                                         ; $5c27: $04
    dec de                                        ; $5c28: $1b
    ld h, $04                                     ; $5c29: $26 $04
    ld b, e                                       ; $5c2b: $43
    ld h, $04                                     ; $5c2c: $26 $04
    ld l, d                                       ; $5c2e: $6a
    ld h, $04                                     ; $5c2f: $26 $04
    sub d                                         ; $5c31: $92
    ld h, $04                                     ; $5c32: $26 $04
    cp c                                          ; $5c34: $b9
    ld h, $04                                     ; $5c35: $26 $04
    ld [$0426], a                                 ; $5c37: $ea $26 $04
    db $10                                        ; $5c3a: $10
    daa                                           ; $5c3b: $27
    inc b                                         ; $5c3c: $04
    ld a, $27                                     ; $5c3d: $3e $27
    inc b                                         ; $5c3f: $04
    ld l, a                                       ; $5c40: $6f
    daa                                           ; $5c41: $27
    inc b                                         ; $5c42: $04
    cp h                                          ; $5c43: $bc
    daa                                           ; $5c44: $27
    inc b                                         ; $5c45: $04
    ld hl, sp+$27                                 ; $5c46: $f8 $27
    inc b                                         ; $5c48: $04
    inc h                                         ; $5c49: $24
    jr z, jr_020_5c50                             ; $5c4a: $28 $04

    ld e, h                                       ; $5c4c: $5c
    jr z, jr_020_5c53                             ; $5c4d: $28 $04

    dec sp                                        ; $5c4f: $3b

jr_020_5c50:
    add hl, hl                                    ; $5c50: $29
    inc b                                         ; $5c51: $04
    ld b, h                                       ; $5c52: $44

jr_020_5c53:
    add hl, hl                                    ; $5c53: $29
    inc b                                         ; $5c54: $04
    ld c, h                                       ; $5c55: $4c
    add hl, hl                                    ; $5c56: $29
    inc b                                         ; $5c57: $04
    ld d, c                                       ; $5c58: $51
    add hl, hl                                    ; $5c59: $29
    inc b                                         ; $5c5a: $04
    ld e, c                                       ; $5c5b: $59
    add hl, hl                                    ; $5c5c: $29
    inc b                                         ; $5c5d: $04
    ld h, h                                       ; $5c5e: $64
    add hl, hl                                    ; $5c5f: $29
    inc b                                         ; $5c60: $04
    ld l, l                                       ; $5c61: $6d
    add hl, hl                                    ; $5c62: $29
    inc b                                         ; $5c63: $04
    halt                                          ; $5c64: $76
    add hl, hl                                    ; $5c65: $29
    inc b                                         ; $5c66: $04
    add b                                         ; $5c67: $80
    add hl, hl                                    ; $5c68: $29
    inc b                                         ; $5c69: $04
    adc c                                         ; $5c6a: $89
    add hl, hl                                    ; $5c6b: $29
    inc b                                         ; $5c6c: $04
    sub c                                         ; $5c6d: $91
    add hl, hl                                    ; $5c6e: $29
    inc b                                         ; $5c6f: $04
    sbc d                                         ; $5c70: $9a
    add hl, hl                                    ; $5c71: $29

    db $04, $9f, $29

    inc b                                         ; $5c75: $04
    and l                                         ; $5c76: $a5
    add hl, hl                                    ; $5c77: $29
    inc b                                         ; $5c78: $04
    xor e                                         ; $5c79: $ab
    add hl, hl                                    ; $5c7a: $29
    inc b                                         ; $5c7b: $04
    or h                                          ; $5c7c: $b4
    add hl, hl                                    ; $5c7d: $29
    inc b                                         ; $5c7e: $04
    cp l                                          ; $5c7f: $bd
    add hl, hl                                    ; $5c80: $29
    inc b                                         ; $5c81: $04
    jp nz, Jump_000_0429                          ; $5c82: $c2 $29 $04

    db $cd                                        ; $5c85: $cd
    add hl, hl                                    ; $5c86: $29

    db $04, $d8, $29

    inc b                                         ; $5c8a: $04
    db $e3                                        ; $5c8b: $e3
    add hl, hl                                    ; $5c8c: $29
    inc b                                         ; $5c8d: $04
    rst $20                                       ; $5c8e: $e7
    add hl, hl                                    ; $5c8f: $29
    inc b                                         ; $5c90: $04
    db $ed                                        ; $5c91: $ed
    add hl, hl                                    ; $5c92: $29
    inc b                                         ; $5c93: $04
    di                                            ; $5c94: $f3
    add hl, hl                                    ; $5c95: $29
    inc b                                         ; $5c96: $04
    ld a, [$0429]                                 ; $5c97: $fa $29 $04
    cp $29                                        ; $5c9a: $fe $29
    inc b                                         ; $5c9c: $04
    dec b                                         ; $5c9d: $05
    ld a, [hl+]                                   ; $5c9e: $2a
    inc b                                         ; $5c9f: $04
    dec bc                                        ; $5ca0: $0b
    ld a, [hl+]                                   ; $5ca1: $2a
    inc b                                         ; $5ca2: $04
    inc d                                         ; $5ca3: $14
    ld a, [hl+]                                   ; $5ca4: $2a
    inc b                                         ; $5ca5: $04
    inc e                                         ; $5ca6: $1c
    ld a, [hl+]                                   ; $5ca7: $2a
    inc b                                         ; $5ca8: $04
    ld [hl+], a                                   ; $5ca9: $22
    ld a, [hl+]                                   ; $5caa: $2a
    inc b                                         ; $5cab: $04
    dec hl                                        ; $5cac: $2b
    ld a, [hl+]                                   ; $5cad: $2a
    inc b                                         ; $5cae: $04
    ld [hl], $2a                                  ; $5caf: $36 $2a
    inc b                                         ; $5cb1: $04
    ld b, c                                       ; $5cb2: $41
    ld a, [hl+]                                   ; $5cb3: $2a
    inc b                                         ; $5cb4: $04
    ld c, c                                       ; $5cb5: $49
    ld a, [hl+]                                   ; $5cb6: $2a
    inc b                                         ; $5cb7: $04
    ld d, h                                       ; $5cb8: $54
    ld a, [hl+]                                   ; $5cb9: $2a
    inc b                                         ; $5cba: $04
    ld e, a                                       ; $5cbb: $5f
    ld a, [hl+]                                   ; $5cbc: $2a
    inc b                                         ; $5cbd: $04
    ld l, e                                       ; $5cbe: $6b
    ld a, [hl+]                                   ; $5cbf: $2a
    inc b                                         ; $5cc0: $04
    halt                                          ; $5cc1: $76
    ld a, [hl+]                                   ; $5cc2: $2a
    inc b                                         ; $5cc3: $04
    ld a, [hl]                                    ; $5cc4: $7e
    ld a, [hl+]                                   ; $5cc5: $2a
    inc b                                         ; $5cc6: $04
    adc b                                         ; $5cc7: $88
    ld a, [hl+]                                   ; $5cc8: $2a
    inc b                                         ; $5cc9: $04
    adc a                                         ; $5cca: $8f
    ld a, [hl+]                                   ; $5ccb: $2a
    inc b                                         ; $5ccc: $04
    sub l                                         ; $5ccd: $95
    ld a, [hl+]                                   ; $5cce: $2a
    inc b                                         ; $5ccf: $04
    sbc h                                         ; $5cd0: $9c
    ld a, [hl+]                                   ; $5cd1: $2a
    inc b                                         ; $5cd2: $04
    and e                                         ; $5cd3: $a3
    ld a, [hl+]                                   ; $5cd4: $2a
    inc b                                         ; $5cd5: $04
    xor l                                         ; $5cd6: $ad
    ld a, [hl+]                                   ; $5cd7: $2a
    inc b                                         ; $5cd8: $04
    cp b                                          ; $5cd9: $b8
    ld a, [hl+]                                   ; $5cda: $2a
    inc b                                         ; $5cdb: $04
    cp [hl]                                       ; $5cdc: $be
    ld a, [hl+]                                   ; $5cdd: $2a
    inc b                                         ; $5cde: $04
    call nz, Call_000_042a                        ; $5cdf: $c4 $2a $04
    adc $2a                                       ; $5ce2: $ce $2a
    inc b                                         ; $5ce4: $04
    ret c                                         ; $5ce5: $d8

    ld a, [hl+]                                   ; $5ce6: $2a
    inc b                                         ; $5ce7: $04
    db $e3                                        ; $5ce8: $e3
    ld a, [hl+]                                   ; $5ce9: $2a
    inc b                                         ; $5cea: $04
    rst $30                                       ; $5ceb: $f7
    ld a, [hl+]                                   ; $5cec: $2a
    inc b                                         ; $5ced: $04
    ld [de], a                                    ; $5cee: $12
    dec hl                                        ; $5cef: $2b
    inc b                                         ; $5cf0: $04
    ld e, l                                       ; $5cf1: $5d
    dec hl                                        ; $5cf2: $2b
    inc b                                         ; $5cf3: $04
    sub [hl]                                      ; $5cf4: $96
    dec hl                                        ; $5cf5: $2b
    inc b                                         ; $5cf6: $04
    jp nz, $042b                                  ; $5cf7: $c2 $2b $04

    and $2b                                       ; $5cfa: $e6 $2b
    inc b                                         ; $5cfc: $04
    inc de                                        ; $5cfd: $13
    inc l                                         ; $5cfe: $2c
    inc b                                         ; $5cff: $04
    ld a, [hl+]                                   ; $5d00: $2a
    inc l                                         ; $5d01: $2c
    inc b                                         ; $5d02: $04
    ld e, a                                       ; $5d03: $5f
    inc l                                         ; $5d04: $2c
    inc b                                         ; $5d05: $04
    adc c                                         ; $5d06: $89
    inc l                                         ; $5d07: $2c
    inc b                                         ; $5d08: $04
    xor d                                         ; $5d09: $aa
    inc l                                         ; $5d0a: $2c

    db $04, $c3, $2c

    inc b                                         ; $5d0e: $04
    ld a, [c]                                     ; $5d0f: $f2
    inc l                                         ; $5d10: $2c
    inc b                                         ; $5d11: $04
    jr nz, jr_020_5d41                            ; $5d12: $20 $2d

    inc b                                         ; $5d14: $04
    ld d, h                                       ; $5d15: $54
    dec l                                         ; $5d16: $2d
    inc b                                         ; $5d17: $04
    add d                                         ; $5d18: $82
    dec l                                         ; $5d19: $2d
    inc b                                         ; $5d1a: $04
    or h                                          ; $5d1b: $b4
    dec l                                         ; $5d1c: $2d
    inc b                                         ; $5d1d: $04
    sbc $2d                                       ; $5d1e: $de $2d
    inc b                                         ; $5d20: $04
    ld b, $2e                                     ; $5d21: $06 $2e
    inc b                                         ; $5d23: $04
    inc l                                         ; $5d24: $2c
    ld l, $04                                     ; $5d25: $2e $04
    ld d, d                                       ; $5d27: $52
    ld l, $04                                     ; $5d28: $2e $04
    ld a, h                                       ; $5d2a: $7c
    ld l, $04                                     ; $5d2b: $2e $04
    sbc a                                         ; $5d2d: $9f
    ld l, $04                                     ; $5d2e: $2e $04
    jp c, $042e                                   ; $5d30: $da $2e $04

    ld hl, sp+$2e                                 ; $5d33: $f8 $2e
    inc b                                         ; $5d35: $04
    inc e                                         ; $5d36: $1c
    cpl                                           ; $5d37: $2f
    inc b                                         ; $5d38: $04
    ld b, b                                       ; $5d39: $40
    cpl                                           ; $5d3a: $2f
    inc b                                         ; $5d3b: $04
    ld h, b                                       ; $5d3c: $60
    cpl                                           ; $5d3d: $2f
    inc b                                         ; $5d3e: $04
    add e                                         ; $5d3f: $83
    cpl                                           ; $5d40: $2f

jr_020_5d41:
    inc b                                         ; $5d41: $04
    or c                                          ; $5d42: $b1
    cpl                                           ; $5d43: $2f
    inc b                                         ; $5d44: $04
    jp c, $042f                                   ; $5d45: $da $2f $04

    inc d                                         ; $5d48: $14
    jr nc, jr_020_5d4f                            ; $5d49: $30 $04

    ld c, d                                       ; $5d4b: $4a
    jr nc, jr_020_5d52                            ; $5d4c: $30 $04

    add h                                         ; $5d4e: $84

jr_020_5d4f:
    jr nc, jr_020_5d55                            ; $5d4f: $30 $04

    sbc h                                         ; $5d51: $9c

jr_020_5d52:
    jr nc, @+$06                                  ; $5d52: $30 $04

    push de                                       ; $5d54: $d5

jr_020_5d55:
    jr nc, jr_020_5d5b                            ; $5d55: $30 $04

    ld a, [$0430]                                 ; $5d57: $fa $30 $04
    inc d                                         ; $5d5a: $14

jr_020_5d5b:
    ld sp, $4404                                  ; $5d5b: $31 $04 $44
    ld sp, $7004                                  ; $5d5e: $31 $04 $70
    ld sp, $9704                                  ; $5d61: $31 $04 $97
    ld sp, $c704                                  ; $5d64: $31 $04 $c7
    ld sp, $f704                                  ; $5d67: $31 $04 $f7
    ld sp, $1904                                  ; $5d6a: $31 $04 $19
    ld [hl-], a                                   ; $5d6d: $32
    inc b                                         ; $5d6e: $04
    ld a, $32                                     ; $5d6f: $3e $32
    inc b                                         ; $5d71: $04
    ld h, h                                       ; $5d72: $64
    ld [hl-], a                                   ; $5d73: $32
    inc b                                         ; $5d74: $04
    sub l                                         ; $5d75: $95
    ld [hl-], a                                   ; $5d76: $32
    inc b                                         ; $5d77: $04
    cp a                                          ; $5d78: $bf
    ld [hl-], a                                   ; $5d79: $32
    inc b                                         ; $5d7a: $04
    ld a, [c]                                     ; $5d7b: $f2
    ld [hl-], a                                   ; $5d7c: $32
    inc b                                         ; $5d7d: $04
    jr jr_020_5db3                                ; $5d7e: $18 $33

    inc b                                         ; $5d80: $04
    ld h, b                                       ; $5d81: $60
    inc sp                                        ; $5d82: $33
    inc b                                         ; $5d83: $04
    jr z, jr_020_5dba                             ; $5d84: $28 $34

    inc b                                         ; $5d86: $04
    add d                                         ; $5d87: $82
    inc [hl]                                      ; $5d88: $34
    inc b                                         ; $5d89: $04
    rst $28                                       ; $5d8a: $ef
    inc [hl]                                      ; $5d8b: $34

    db $04, $71, $35, $04, $c0, $35

    inc b                                         ; $5d92: $04
    ld a, h                                       ; $5d93: $7c
    ld [hl], $04                                  ; $5d94: $36 $04
    rst $30                                       ; $5d96: $f7
    ld [hl], $04                                  ; $5d97: $36 $04
    add hl, de                                    ; $5d99: $19
    db $38                                        ; $5d9a: $38

    db $04, $a4, $38

    inc b                                         ; $5d9e: $04
    push de                                       ; $5d9f: $d5

jr_020_5da0:
    jr c, jr_020_5da6                             ; $5da0: $38 $04

    jr z, jr_020_5ddd                             ; $5da2: $28 $39

    inc b                                         ; $5da4: $04
    ld c, h                                       ; $5da5: $4c

jr_020_5da6:
    add hl, sp                                    ; $5da6: $39
    inc b                                         ; $5da7: $04
    add c                                         ; $5da8: $81
    add hl, sp                                    ; $5da9: $39
    inc b                                         ; $5daa: $04
    and [hl]                                      ; $5dab: $a6
    add hl, sp                                    ; $5dac: $39
    inc b                                         ; $5dad: $04
    db $d3                                        ; $5dae: $d3
    add hl, sp                                    ; $5daf: $39
    inc b                                         ; $5db0: $04
    pop af                                        ; $5db1: $f1
    add hl, sp                                    ; $5db2: $39

jr_020_5db3:
    inc b                                         ; $5db3: $04
    rla                                           ; $5db4: $17
    ld a, [hl-]                                   ; $5db5: $3a
    inc b                                         ; $5db6: $04
    jr c, jr_020_5df3                             ; $5db7: $38 $3a

    inc b                                         ; $5db9: $04

jr_020_5dba:
    ld e, d                                       ; $5dba: $5a
    ld a, [hl-]                                   ; $5dbb: $3a
    inc b                                         ; $5dbc: $04
    ld a, c                                       ; $5dbd: $79
    ld a, [hl-]                                   ; $5dbe: $3a
    inc b                                         ; $5dbf: $04
    sbc e                                         ; $5dc0: $9b
    ld a, [hl-]                                   ; $5dc1: $3a
    inc b                                         ; $5dc2: $04
    or h                                          ; $5dc3: $b4
    ld a, [hl-]                                   ; $5dc4: $3a
    inc b                                         ; $5dc5: $04
    rst $00                                       ; $5dc6: $c7
    ld a, [hl-]                                   ; $5dc7: $3a
    inc b                                         ; $5dc8: $04
    ld [$043a], a                                 ; $5dc9: $ea $3a $04
    dec bc                                        ; $5dcc: $0b
    dec sp                                        ; $5dcd: $3b
    inc b                                         ; $5dce: $04
    ld a, $3b                                     ; $5dcf: $3e $3b
    inc b                                         ; $5dd1: $04
    ld e, c                                       ; $5dd2: $59
    dec sp                                        ; $5dd3: $3b
    inc b                                         ; $5dd4: $04
    add l                                         ; $5dd5: $85
    dec sp                                        ; $5dd6: $3b
    inc b                                         ; $5dd7: $04
    xor c                                         ; $5dd8: $a9
    dec sp                                        ; $5dd9: $3b
    inc b                                         ; $5dda: $04
    db $d3                                        ; $5ddb: $d3
    dec sp                                        ; $5ddc: $3b

jr_020_5ddd:
    inc b                                         ; $5ddd: $04
    ld sp, hl                                     ; $5dde: $f9
    dec sp                                        ; $5ddf: $3b
    inc b                                         ; $5de0: $04
    ld [de], a                                    ; $5de1: $12
    inc a                                         ; $5de2: $3c
    inc b                                         ; $5de3: $04
    dec sp                                        ; $5de4: $3b
    inc a                                         ; $5de5: $3c
    inc b                                         ; $5de6: $04
    ld d, [hl]                                    ; $5de7: $56
    inc a                                         ; $5de8: $3c
    inc b                                         ; $5de9: $04
    ld a, h                                       ; $5dea: $7c
    inc a                                         ; $5deb: $3c
    inc b                                         ; $5dec: $04
    and c                                         ; $5ded: $a1
    inc a                                         ; $5dee: $3c
    inc b                                         ; $5def: $04
    cp l                                          ; $5df0: $bd
    inc a                                         ; $5df1: $3c
    inc b                                         ; $5df2: $04

jr_020_5df3:
    pop hl                                        ; $5df3: $e1
    inc a                                         ; $5df4: $3c
    inc b                                         ; $5df5: $04
    inc b                                         ; $5df6: $04
    dec a                                         ; $5df7: $3d
    inc b                                         ; $5df8: $04
    dec h                                         ; $5df9: $25
    dec a                                         ; $5dfa: $3d
    inc b                                         ; $5dfb: $04
    ld c, [hl]                                    ; $5dfc: $4e
    dec a                                         ; $5dfd: $3d
    inc b                                         ; $5dfe: $04
    add d                                         ; $5dff: $82
    dec a                                         ; $5e00: $3d
    inc b                                         ; $5e01: $04
    xor c                                         ; $5e02: $a9
    dec a                                         ; $5e03: $3d
    inc b                                         ; $5e04: $04
    adc $3d                                       ; $5e05: $ce $3d
    inc b                                         ; $5e07: $04
    db $ed                                        ; $5e08: $ed
    dec a                                         ; $5e09: $3d
    inc b                                         ; $5e0a: $04
    ld a, [$043d]                                 ; $5e0b: $fa $3d $04
    ld hl, $043e                                  ; $5e0e: $21 $3e $04
    ld b, c                                       ; $5e11: $41
    ld a, $04                                     ; $5e12: $3e $04
    ld e, d                                       ; $5e14: $5a
    ld a, $04                                     ; $5e15: $3e $04
    ld a, h                                       ; $5e17: $7c
    ld a, $04                                     ; $5e18: $3e $04
    and l                                         ; $5e1a: $a5
    ld a, $04                                     ; $5e1b: $3e $04
    cp h                                          ; $5e1d: $bc
    ld a, $04                                     ; $5e1e: $3e $04
    db $e3                                        ; $5e20: $e3
    ld a, $04                                     ; $5e21: $3e $04
    ei                                            ; $5e23: $fb
    ld a, $04                                     ; $5e24: $3e $04
    ld b, d                                       ; $5e26: $42
    ccf                                           ; $5e27: $3f
    inc b                                         ; $5e28: $04
    ld h, d                                       ; $5e29: $62
    ccf                                           ; $5e2a: $3f
    inc b                                         ; $5e2b: $04
    adc l                                         ; $5e2c: $8d
    ccf                                           ; $5e2d: $3f
    inc b                                         ; $5e2e: $04
    cp b                                          ; $5e2f: $b8
    ccf                                           ; $5e30: $3f
    dec b                                         ; $5e31: $05
    ld bc, $0500                                  ; $5e32: $01 $00 $05
    ld a, [hl+]                                   ; $5e35: $2a
    nop                                           ; $5e36: $00
    dec b                                         ; $5e37: $05
    ld c, b                                       ; $5e38: $48
    nop                                           ; $5e39: $00
    dec b                                         ; $5e3a: $05
    ld a, h                                       ; $5e3b: $7c
    nop                                           ; $5e3c: $00
    dec b                                         ; $5e3d: $05
    sbc c                                         ; $5e3e: $99
    nop                                           ; $5e3f: $00
    dec b                                         ; $5e40: $05
    cp [hl]                                       ; $5e41: $be
    nop                                           ; $5e42: $00
    dec b                                         ; $5e43: $05
    db $db                                        ; $5e44: $db
    nop                                           ; $5e45: $00
    dec b                                         ; $5e46: $05
    ld [$0501], sp                                ; $5e47: $08 $01 $05
    daa                                           ; $5e4a: $27
    ld bc, $6105                                  ; $5e4b: $01 $05 $61
    ld bc, $9405                                  ; $5e4e: $01 $05 $94
    ld bc, $c405                                  ; $5e51: $01 $05 $c4
    ld bc, $f005                                  ; $5e54: $01 $05 $f0
    ld bc, $0305                                  ; $5e57: $01 $05 $03
    ld [bc], a                                    ; $5e5a: $02
    dec b                                         ; $5e5b: $05
    inc b                                         ; $5e5c: $04
    ld [bc], a                                    ; $5e5d: $02
    dec b                                         ; $5e5e: $05
    ld de, $0502                                  ; $5e5f: $11 $02 $05
    dec de                                        ; $5e62: $1b
    ld [bc], a                                    ; $5e63: $02
    dec b                                         ; $5e64: $05
    inc e                                         ; $5e65: $1c
    ld [bc], a                                    ; $5e66: $02
    dec b                                         ; $5e67: $05
    ld h, $02                                     ; $5e68: $26 $02
    dec b                                         ; $5e6a: $05
    jr nc, @+$04                                  ; $5e6b: $30 $02

    dec b                                         ; $5e6d: $05
    ld sp, $0502                                  ; $5e6e: $31 $02 $05
    add hl, sp                                    ; $5e71: $39
    ld [bc], a                                    ; $5e72: $02
    dec b                                         ; $5e73: $05
    ld b, e                                       ; $5e74: $43
    ld [bc], a                                    ; $5e75: $02
    dec b                                         ; $5e76: $05
    ld b, h                                       ; $5e77: $44
    ld [bc], a                                    ; $5e78: $02
    dec b                                         ; $5e79: $05
    ld c, h                                       ; $5e7a: $4c
    ld [bc], a                                    ; $5e7b: $02
    dec b                                         ; $5e7c: $05
    ld d, l                                       ; $5e7d: $55
    ld [bc], a                                    ; $5e7e: $02
    dec b                                         ; $5e7f: $05
    ld e, a                                       ; $5e80: $5f
    ld [bc], a                                    ; $5e81: $02
    dec b                                         ; $5e82: $05
    ld l, d                                       ; $5e83: $6a
    ld [bc], a                                    ; $5e84: $02
    dec b                                         ; $5e85: $05
    ld [hl], h                                    ; $5e86: $74
    ld [bc], a                                    ; $5e87: $02
    dec b                                         ; $5e88: $05
    ld [hl], l                                    ; $5e89: $75
    ld [bc], a                                    ; $5e8a: $02
    dec b                                         ; $5e8b: $05
    add b                                         ; $5e8c: $80
    ld [bc], a                                    ; $5e8d: $02
    dec b                                         ; $5e8e: $05
    adc c                                         ; $5e8f: $89
    ld [bc], a                                    ; $5e90: $02
    dec b                                         ; $5e91: $05
    sub c                                         ; $5e92: $91
    ld [bc], a                                    ; $5e93: $02
    dec b                                         ; $5e94: $05
    sbc d                                         ; $5e95: $9a
    ld [bc], a                                    ; $5e96: $02
    dec b                                         ; $5e97: $05
    sbc e                                         ; $5e98: $9b
    ld [bc], a                                    ; $5e99: $02
    dec b                                         ; $5e9a: $05
    xor c                                         ; $5e9b: $a9
    ld [bc], a                                    ; $5e9c: $02
    dec b                                         ; $5e9d: $05
    or e                                          ; $5e9e: $b3
    ld [bc], a                                    ; $5e9f: $02
    dec b                                         ; $5ea0: $05
    or h                                          ; $5ea1: $b4
    ld [bc], a                                    ; $5ea2: $02
    dec b                                         ; $5ea3: $05
    ret nz                                        ; $5ea4: $c0

    ld [bc], a                                    ; $5ea5: $02
    dec b                                         ; $5ea6: $05
    ret z                                         ; $5ea7: $c8

    ld [bc], a                                    ; $5ea8: $02
    dec b                                         ; $5ea9: $05
    ret                                           ; $5eaa: $c9


    ld [bc], a                                    ; $5eab: $02
    dec b                                         ; $5eac: $05
    reti                                          ; $5ead: $d9


    ld [bc], a                                    ; $5eae: $02
    dec b                                         ; $5eaf: $05
    pop hl                                        ; $5eb0: $e1
    ld [bc], a                                    ; $5eb1: $02
    dec b                                         ; $5eb2: $05
    add sp, $02                                   ; $5eb3: $e8 $02
    dec b                                         ; $5eb5: $05
    rst $28                                       ; $5eb6: $ef
    ld [bc], a                                    ; $5eb7: $02
    dec b                                         ; $5eb8: $05
    ldh a, [rSC]                                  ; $5eb9: $f0 $02
    dec b                                         ; $5ebb: $05
    or $02                                        ; $5ebc: $f6 $02
    dec b                                         ; $5ebe: $05
    nop                                           ; $5ebf: $00
    inc bc                                        ; $5ec0: $03
    dec b                                         ; $5ec1: $05
    ld a, [bc]                                    ; $5ec2: $0a
    inc bc                                        ; $5ec3: $03
    dec b                                         ; $5ec4: $05
    inc d                                         ; $5ec5: $14
    inc bc                                        ; $5ec6: $03
    dec b                                         ; $5ec7: $05
    inc e                                         ; $5ec8: $1c
    inc bc                                        ; $5ec9: $03
    dec b                                         ; $5eca: $05
    dec e                                         ; $5ecb: $1d
    inc bc                                        ; $5ecc: $03
    dec b                                         ; $5ecd: $05
    ld e, $03                                     ; $5ece: $1e $03
    dec b                                         ; $5ed0: $05
    dec [hl]                                      ; $5ed1: $35
    inc bc                                        ; $5ed2: $03
    dec b                                         ; $5ed3: $05
    ld [hl], $03                                  ; $5ed4: $36 $03
    dec b                                         ; $5ed6: $05
    ld b, h                                       ; $5ed7: $44
    inc bc                                        ; $5ed8: $03
    dec b                                         ; $5ed9: $05
    ld c, l                                       ; $5eda: $4d
    inc bc                                        ; $5edb: $03
    dec b                                         ; $5edc: $05
    ld d, l                                       ; $5edd: $55
    inc bc                                        ; $5ede: $03
    dec b                                         ; $5edf: $05
    ld d, [hl]                                    ; $5ee0: $56
    inc bc                                        ; $5ee1: $03
    dec b                                         ; $5ee2: $05
    ld h, e                                       ; $5ee3: $63
    inc bc                                        ; $5ee4: $03
    dec b                                         ; $5ee5: $05
    ld l, l                                       ; $5ee6: $6d
    inc bc                                        ; $5ee7: $03
    dec b                                         ; $5ee8: $05
    ld l, [hl]                                    ; $5ee9: $6e
    inc bc                                        ; $5eea: $03
    dec b                                         ; $5eeb: $05
    ld a, d                                       ; $5eec: $7a
    inc bc                                        ; $5eed: $03
    dec b                                         ; $5eee: $05
    add e                                         ; $5eef: $83
    inc bc                                        ; $5ef0: $03
    dec b                                         ; $5ef1: $05
    add h                                         ; $5ef2: $84
    inc bc                                        ; $5ef3: $03
    dec b                                         ; $5ef4: $05
    adc [hl]                                      ; $5ef5: $8e
    inc bc                                        ; $5ef6: $03
    dec b                                         ; $5ef7: $05
    sbc d                                         ; $5ef8: $9a
    inc bc                                        ; $5ef9: $03
    dec b                                         ; $5efa: $05
    and h                                         ; $5efb: $a4
    inc bc                                        ; $5efc: $03
    dec b                                         ; $5efd: $05
    xor e                                         ; $5efe: $ab
    inc bc                                        ; $5eff: $03
    dec b                                         ; $5f00: $05
    or e                                          ; $5f01: $b3
    inc bc                                        ; $5f02: $03
    dec b                                         ; $5f03: $05
    cp l                                          ; $5f04: $bd
    inc bc                                        ; $5f05: $03
    dec b                                         ; $5f06: $05
    add $03                                       ; $5f07: $c6 $03
    dec b                                         ; $5f09: $05
    rst $00                                       ; $5f0a: $c7
    inc bc                                        ; $5f0b: $03
    dec b                                         ; $5f0c: $05
    ret z                                         ; $5f0d: $c8

    inc bc                                        ; $5f0e: $03
    dec b                                         ; $5f0f: $05
    ret                                           ; $5f10: $c9


    inc bc                                        ; $5f11: $03
    dec b                                         ; $5f12: $05
    db $db                                        ; $5f13: $db
    inc bc                                        ; $5f14: $03
    dec b                                         ; $5f15: $05
    call c, $0503                                 ; $5f16: $dc $03 $05
    rst $20                                       ; $5f19: $e7
    inc bc                                        ; $5f1a: $03
    dec b                                         ; $5f1b: $05
    rst $28                                       ; $5f1c: $ef
    inc bc                                        ; $5f1d: $03
    dec b                                         ; $5f1e: $05
    ld sp, hl                                     ; $5f1f: $f9
    inc bc                                        ; $5f20: $03
    dec b                                         ; $5f21: $05
    ld bc, $0504                                  ; $5f22: $01 $04 $05
    dec bc                                        ; $5f25: $0b
    inc b                                         ; $5f26: $04
    dec b                                         ; $5f27: $05
    ld d, $04                                     ; $5f28: $16 $04
    dec b                                         ; $5f2a: $05
    ld e, $04                                     ; $5f2b: $1e $04
    dec b                                         ; $5f2d: $05
    ld h, $04                                     ; $5f2e: $26 $04
    dec b                                         ; $5f30: $05
    daa                                           ; $5f31: $27
    inc b                                         ; $5f32: $04
    dec b                                         ; $5f33: $05
    ld [hl], $04                                  ; $5f34: $36 $04
    dec b                                         ; $5f36: $05
    dec a                                         ; $5f37: $3d
    inc b                                         ; $5f38: $04
    dec b                                         ; $5f39: $05
    ld a, $04                                     ; $5f3a: $3e $04
    dec b                                         ; $5f3c: $05
    ld c, b                                       ; $5f3d: $48
    inc b                                         ; $5f3e: $04
    dec b                                         ; $5f3f: $05
    ld c, a                                       ; $5f40: $4f
    inc b                                         ; $5f41: $04
    dec b                                         ; $5f42: $05
    ld d, b                                       ; $5f43: $50
    inc b                                         ; $5f44: $04
    dec b                                         ; $5f45: $05
    ld e, b                                       ; $5f46: $58
    inc b                                         ; $5f47: $04
    dec b                                         ; $5f48: $05
    ld h, c                                       ; $5f49: $61
    inc b                                         ; $5f4a: $04
    dec b                                         ; $5f4b: $05
    ld l, c                                       ; $5f4c: $69
    inc b                                         ; $5f4d: $04
    dec b                                         ; $5f4e: $05
    ld [hl], d                                    ; $5f4f: $72
    inc b                                         ; $5f50: $04
    dec b                                         ; $5f51: $05
    ld a, h                                       ; $5f52: $7c
    inc b                                         ; $5f53: $04
    dec b                                         ; $5f54: $05
    ld a, l                                       ; $5f55: $7d
    inc b                                         ; $5f56: $04
    dec b                                         ; $5f57: $05
    add a                                         ; $5f58: $87
    inc b                                         ; $5f59: $04
    dec b                                         ; $5f5a: $05

Call_020_5f5b:
    sub b                                         ; $5f5b: $90
    inc b                                         ; $5f5c: $04
    dec b                                         ; $5f5d: $05
    sbc d                                         ; $5f5e: $9a
    inc b                                         ; $5f5f: $04
    dec b                                         ; $5f60: $05
    and c                                         ; $5f61: $a1
    inc b                                         ; $5f62: $04
    dec b                                         ; $5f63: $05
    xor e                                         ; $5f64: $ab
    inc b                                         ; $5f65: $04
    dec b                                         ; $5f66: $05
    or e                                          ; $5f67: $b3
    inc b                                         ; $5f68: $04
    dec b                                         ; $5f69: $05
    cp h                                          ; $5f6a: $bc
    inc b                                         ; $5f6b: $04
    dec b                                         ; $5f6c: $05
    rst $00                                       ; $5f6d: $c7
    inc b                                         ; $5f6e: $04
    dec b                                         ; $5f6f: $05
    call nc, $0504                                ; $5f70: $d4 $04 $05
    db $dd                                        ; $5f73: $dd
    inc b                                         ; $5f74: $04
    dec b                                         ; $5f75: $05
    and $04                                       ; $5f76: $e6 $04
    dec b                                         ; $5f78: $05
    rst $20                                       ; $5f79: $e7
    inc b                                         ; $5f7a: $04
    dec b                                         ; $5f7b: $05
    pop af                                        ; $5f7c: $f1
    inc b                                         ; $5f7d: $04
    dec b                                         ; $5f7e: $05
    ld hl, sp+$04                                 ; $5f7f: $f8 $04
    dec b                                         ; $5f81: $05
    ld [bc], a                                    ; $5f82: $02
    dec b                                         ; $5f83: $05
    dec b                                         ; $5f84: $05
    dec bc                                        ; $5f85: $0b
    dec b                                         ; $5f86: $05
    dec b                                         ; $5f87: $05
    inc de                                        ; $5f88: $13
    dec b                                         ; $5f89: $05
    dec b                                         ; $5f8a: $05
    inc d                                         ; $5f8b: $14
    dec b                                         ; $5f8c: $05
    dec b                                         ; $5f8d: $05
    ld hl, $0505                                  ; $5f8e: $21 $05 $05
    inc l                                         ; $5f91: $2c
    dec b                                         ; $5f92: $05
    dec b                                         ; $5f93: $05
    ld [hl], $05                                  ; $5f94: $36 $05
    dec b                                         ; $5f96: $05
    ccf                                           ; $5f97: $3f
    dec b                                         ; $5f98: $05
    dec b                                         ; $5f99: $05
    ld c, b                                       ; $5f9a: $48
    dec b                                         ; $5f9b: $05
    dec b                                         ; $5f9c: $05
    ld d, b                                       ; $5f9d: $50
    dec b                                         ; $5f9e: $05
    dec b                                         ; $5f9f: $05
    ld d, [hl]                                    ; $5fa0: $56
    dec b                                         ; $5fa1: $05
    dec b                                         ; $5fa2: $05
    ld h, b                                       ; $5fa3: $60
    dec b                                         ; $5fa4: $05
    dec b                                         ; $5fa5: $05
    ld l, b                                       ; $5fa6: $68
    dec b                                         ; $5fa7: $05
    dec b                                         ; $5fa8: $05
    ld l, a                                       ; $5fa9: $6f
    dec b                                         ; $5faa: $05
    dec b                                         ; $5fab: $05
    ld [hl], a                                    ; $5fac: $77
    dec b                                         ; $5fad: $05
    dec b                                         ; $5fae: $05
    add b                                         ; $5faf: $80
    dec b                                         ; $5fb0: $05
    dec b                                         ; $5fb1: $05
    adc c                                         ; $5fb2: $89
    dec b                                         ; $5fb3: $05
    dec b                                         ; $5fb4: $05
    adc d                                         ; $5fb5: $8a
    dec b                                         ; $5fb6: $05
    dec b                                         ; $5fb7: $05
    adc e                                         ; $5fb8: $8b
    dec b                                         ; $5fb9: $05
    dec b                                         ; $5fba: $05
    adc h                                         ; $5fbb: $8c
    dec b                                         ; $5fbc: $05
    dec b                                         ; $5fbd: $05
    adc l                                         ; $5fbe: $8d
    dec b                                         ; $5fbf: $05
    dec b                                         ; $5fc0: $05
    adc [hl]                                      ; $5fc1: $8e
    dec b                                         ; $5fc2: $05
    dec b                                         ; $5fc3: $05
    adc a                                         ; $5fc4: $8f
    dec b                                         ; $5fc5: $05
    dec b                                         ; $5fc6: $05
    sub b                                         ; $5fc7: $90
    dec b                                         ; $5fc8: $05
    dec b                                         ; $5fc9: $05
    sub c                                         ; $5fca: $91
    dec b                                         ; $5fcb: $05
    dec b                                         ; $5fcc: $05
    sub d                                         ; $5fcd: $92
    dec b                                         ; $5fce: $05
    dec b                                         ; $5fcf: $05
    sub e                                         ; $5fd0: $93
    dec b                                         ; $5fd1: $05
    dec b                                         ; $5fd2: $05
    sub h                                         ; $5fd3: $94
    dec b                                         ; $5fd4: $05
    dec b                                         ; $5fd5: $05
    sub l                                         ; $5fd6: $95
    dec b                                         ; $5fd7: $05
    dec b                                         ; $5fd8: $05
    sub [hl]                                      ; $5fd9: $96
    dec b                                         ; $5fda: $05
    dec b                                         ; $5fdb: $05
    sub a                                         ; $5fdc: $97
    dec b                                         ; $5fdd: $05
    dec b                                         ; $5fde: $05
    sbc b                                         ; $5fdf: $98
    dec b                                         ; $5fe0: $05
    dec b                                         ; $5fe1: $05
    sbc c                                         ; $5fe2: $99
    dec b                                         ; $5fe3: $05
    dec b                                         ; $5fe4: $05
    sbc d                                         ; $5fe5: $9a
    dec b                                         ; $5fe6: $05
    dec b                                         ; $5fe7: $05
    sbc e                                         ; $5fe8: $9b
    dec b                                         ; $5fe9: $05
    dec b                                         ; $5fea: $05
    sbc h                                         ; $5feb: $9c
    dec b                                         ; $5fec: $05
    dec b                                         ; $5fed: $05
    sbc l                                         ; $5fee: $9d
    dec b                                         ; $5fef: $05
    dec b                                         ; $5ff0: $05
    sbc [hl]                                      ; $5ff1: $9e
    dec b                                         ; $5ff2: $05
    dec b                                         ; $5ff3: $05
    sbc a                                         ; $5ff4: $9f
    dec b                                         ; $5ff5: $05
    dec b                                         ; $5ff6: $05
    and b                                         ; $5ff7: $a0
    dec b                                         ; $5ff8: $05
    dec b                                         ; $5ff9: $05
    and c                                         ; $5ffa: $a1
    dec b                                         ; $5ffb: $05
    dec b                                         ; $5ffc: $05
    and d                                         ; $5ffd: $a2
    dec b                                         ; $5ffe: $05
    dec b                                         ; $5fff: $05
    and e                                         ; $6000: $a3
    dec b                                         ; $6001: $05
    dec b                                         ; $6002: $05
    and h                                         ; $6003: $a4
    dec b                                         ; $6004: $05
    dec b                                         ; $6005: $05
    and l                                         ; $6006: $a5
    dec b                                         ; $6007: $05
    dec b                                         ; $6008: $05
    and [hl]                                      ; $6009: $a6
    dec b                                         ; $600a: $05
    dec b                                         ; $600b: $05
    and a                                         ; $600c: $a7
    dec b                                         ; $600d: $05
    dec b                                         ; $600e: $05
    xor b                                         ; $600f: $a8
    dec b                                         ; $6010: $05
    dec b                                         ; $6011: $05
    xor c                                         ; $6012: $a9
    dec b                                         ; $6013: $05
    dec b                                         ; $6014: $05
    xor d                                         ; $6015: $aa
    dec b                                         ; $6016: $05

    db $05, $ab, $05, $05, $bf, $05, $05, $c5, $05, $05, $f6, $05, $05, $0e, $06, $05
    db $62, $06, $05, $74, $06, $05, $b7, $06, $05, $da, $06, $05, $34, $07, $05, $45
    db $07, $05, $7d, $07, $05, $d0, $07, $05, $e4, $07

    dec b                                         ; $6041: $05
    ld de, $0508                                  ; $6042: $11 $08 $05
    dec l                                         ; $6045: $2d
    ld [$4c05], sp                                ; $6046: $08 $05 $4c
    db $08                                        ; $6049: $08

    db $05, $90, $08, $05, $9b, $08

    dec b                                         ; $6050: $05
    xor [hl]                                      ; $6051: $ae
    ld [$bf05], sp                                ; $6052: $08 $05 $bf
    ld [$d205], sp                                ; $6055: $08 $05 $d2
    ld [$e605], sp                                ; $6058: $08 $05 $e6
    ld [$0905], sp                                ; $605b: $08 $05 $09
    add hl, bc                                    ; $605e: $09
    dec b                                         ; $605f: $05
    ld d, [hl]                                    ; $6060: $56
    add hl, bc                                    ; $6061: $09
    dec b                                         ; $6062: $05
    ld h, c                                       ; $6063: $61
    add hl, bc                                    ; $6064: $09
    dec b                                         ; $6065: $05
    sbc a                                         ; $6066: $9f
    add hl, bc                                    ; $6067: $09
    dec b                                         ; $6068: $05
    xor a                                         ; $6069: $af
    add hl, bc                                    ; $606a: $09
    dec b                                         ; $606b: $05
    rst $00                                       ; $606c: $c7
    add hl, bc                                    ; $606d: $09
    dec b                                         ; $606e: $05
    ld bc, $050a                                  ; $606f: $01 $0a $05
    jr nz, jr_020_607e                            ; $6072: $20 $0a

    dec b                                         ; $6074: $05
    scf                                           ; $6075: $37
    ld a, [bc]                                    ; $6076: $0a
    dec b                                         ; $6077: $05
    ld c, d                                       ; $6078: $4a
    ld a, [bc]                                    ; $6079: $0a
    dec b                                         ; $607a: $05
    ld [hl], e                                    ; $607b: $73
    ld a, [bc]                                    ; $607c: $0a
    dec b                                         ; $607d: $05

jr_020_607e:
    adc c                                         ; $607e: $89
    ld a, [bc]                                    ; $607f: $0a
    dec b                                         ; $6080: $05
    sub l                                         ; $6081: $95
    ld a, [bc]                                    ; $6082: $0a
    dec b                                         ; $6083: $05
    and c                                         ; $6084: $a1
    ld a, [bc]                                    ; $6085: $0a
    dec b                                         ; $6086: $05
    or a                                          ; $6087: $b7
    ld a, [bc]                                    ; $6088: $0a
    dec b                                         ; $6089: $05
    rst $00                                       ; $608a: $c7
    ld a, [bc]                                    ; $608b: $0a
    dec b                                         ; $608c: $05
    ret nc                                        ; $608d: $d0

    ld a, [bc]                                    ; $608e: $0a
    dec b                                         ; $608f: $05
    call c, Call_000_050a                         ; $6090: $dc $0a $05
    pop af                                        ; $6093: $f1
    ld a, [bc]                                    ; $6094: $0a
    dec b                                         ; $6095: $05
    ld bc, $050b                                  ; $6096: $01 $0b $05
    jr jr_020_60a6                                ; $6099: $18 $0b

    dec b                                         ; $609b: $05
    ld h, $0b                                     ; $609c: $26 $0b
    dec b                                         ; $609e: $05
    jr c, jr_020_60ac                             ; $609f: $38 $0b

    dec b                                         ; $60a1: $05
    ld d, h                                       ; $60a2: $54
    dec bc                                        ; $60a3: $0b
    dec b                                         ; $60a4: $05

Jump_020_60a5:
    ld h, b                                       ; $60a5: $60

jr_020_60a6:
    dec bc                                        ; $60a6: $0b
    dec b                                         ; $60a7: $05
    ld [hl], l                                    ; $60a8: $75
    dec bc                                        ; $60a9: $0b
    dec b                                         ; $60aa: $05
    add l                                         ; $60ab: $85

jr_020_60ac:
    dec bc                                        ; $60ac: $0b
    dec b                                         ; $60ad: $05
    sbc [hl]                                      ; $60ae: $9e
    dec bc                                        ; $60af: $0b
    dec b                                         ; $60b0: $05
    or d                                          ; $60b1: $b2
    dec bc                                        ; $60b2: $0b
    dec b                                         ; $60b3: $05
    rst $00                                       ; $60b4: $c7
    dec bc                                        ; $60b5: $0b
    dec b                                         ; $60b6: $05
    jp c, Jump_000_050b                           ; $60b7: $da $0b $05

    rst $20                                       ; $60ba: $e7
    dec bc                                        ; $60bb: $0b
    dec b                                         ; $60bc: $05
    rrca                                          ; $60bd: $0f
    inc c                                         ; $60be: $0c
    dec b                                         ; $60bf: $05
    jr nz, jr_020_60ce                            ; $60c0: $20 $0c

    dec b                                         ; $60c2: $05
    ld sp, $050c                                  ; $60c3: $31 $0c $05
    ld c, d                                       ; $60c6: $4a
    inc c                                         ; $60c7: $0c
    dec b                                         ; $60c8: $05
    ld e, [hl]                                    ; $60c9: $5e
    inc c                                         ; $60ca: $0c
    dec b                                         ; $60cb: $05
    add e                                         ; $60cc: $83
    inc c                                         ; $60cd: $0c

jr_020_60ce:
    dec b                                         ; $60ce: $05
    sub d                                         ; $60cf: $92
    inc c                                         ; $60d0: $0c
    dec b                                         ; $60d1: $05
    pop bc                                        ; $60d2: $c1
    inc c                                         ; $60d3: $0c
    dec b                                         ; $60d4: $05
    call nc, Call_000_050c                        ; $60d5: $d4 $0c $05
    push hl                                       ; $60d8: $e5
    inc c                                         ; $60d9: $0c
    dec b                                         ; $60da: $05
    inc bc                                        ; $60db: $03
    dec c                                         ; $60dc: $0d
    dec b                                         ; $60dd: $05
    ld e, $0d                                     ; $60de: $1e $0d
    dec b                                         ; $60e0: $05
    ld [hl], $0d                                  ; $60e1: $36 $0d
    dec b                                         ; $60e3: $05
    ld b, [hl]                                    ; $60e4: $46
    dec c                                         ; $60e5: $0d
    dec b                                         ; $60e6: $05
    ld e, a                                       ; $60e7: $5f
    dec c                                         ; $60e8: $0d
    dec b                                         ; $60e9: $05
    ld [hl], e                                    ; $60ea: $73
    dec c                                         ; $60eb: $0d
    dec b                                         ; $60ec: $05
    add d                                         ; $60ed: $82
    dec c                                         ; $60ee: $0d
    dec b                                         ; $60ef: $05
    sub c                                         ; $60f0: $91
    dec c                                         ; $60f1: $0d
    dec b                                         ; $60f2: $05
    xor c                                         ; $60f3: $a9
    dec c                                         ; $60f4: $0d
    dec b                                         ; $60f5: $05
    cp h                                          ; $60f6: $bc
    dec c                                         ; $60f7: $0d
    dec b                                         ; $60f8: $05
    jp c, Jump_000_050d                           ; $60f9: $da $0d $05

    jp hl                                         ; $60fc: $e9


    dec c                                         ; $60fd: $0d
    dec b                                         ; $60fe: $05
    ld [bc], a                                    ; $60ff: $02
    ld c, $05                                     ; $6100: $0e $05
    dec d                                         ; $6102: $15
    ld c, $05                                     ; $6103: $0e $05
    jr nc, @+$10                                  ; $6105: $30 $0e

    dec b                                         ; $6107: $05
    ld b, e                                       ; $6108: $43
    ld c, $05                                     ; $6109: $0e $05
    ld e, a                                       ; $610b: $5f
    ld c, $05                                     ; $610c: $0e $05
    halt                                          ; $610e: $76
    ld c, $05                                     ; $610f: $0e $05
    adc e                                         ; $6111: $8b
    ld c, $05                                     ; $6112: $0e $05
    and $0e                                       ; $6114: $e6 $0e
    dec b                                         ; $6116: $05
    ld b, c                                       ; $6117: $41
    rrca                                          ; $6118: $0f
    dec b                                         ; $6119: $05
    ld e, d                                       ; $611a: $5a
    rrca                                          ; $611b: $0f
    dec b                                         ; $611c: $05
    ld a, e                                       ; $611d: $7b
    rrca                                          ; $611e: $0f
    dec b                                         ; $611f: $05
    sbc [hl]                                      ; $6120: $9e
    rrca                                          ; $6121: $0f
    dec b                                         ; $6122: $05
    rrc a                                         ; $6123: $cb $0f
    dec b                                         ; $6125: $05
    ld a, [$050f]                                 ; $6126: $fa $0f $05
    dec de                                        ; $6129: $1b
    db $10                                        ; $612a: $10
    dec b                                         ; $612b: $05
    dec sp                                        ; $612c: $3b
    db $10                                        ; $612d: $10
    dec b                                         ; $612e: $05
    ld h, b                                       ; $612f: $60
    db $10                                        ; $6130: $10
    dec b                                         ; $6131: $05
    add b                                         ; $6132: $80
    db $10                                        ; $6133: $10
    dec b                                         ; $6134: $05
    xor e                                         ; $6135: $ab
    db $10                                        ; $6136: $10
    dec b                                         ; $6137: $05
    ret                                           ; $6138: $c9


    db $10                                        ; $6139: $10
    dec b                                         ; $613a: $05
    rst $18                                       ; $613b: $df
    db $10                                        ; $613c: $10
    dec b                                         ; $613d: $05
    push af                                       ; $613e: $f5
    db $10                                        ; $613f: $10

    db $05, $21, $11, $05, $61, $11

    dec b                                         ; $6146: $05
    or d                                          ; $6147: $b2
    ld de, $ea05                                  ; $6148: $11 $05 $ea
    ld de, $2105                                  ; $614b: $11 $05 $21
    ld [de], a                                    ; $614e: $12
    dec b                                         ; $614f: $05
    ld h, [hl]                                    ; $6150: $66
    ld [de], a                                    ; $6151: $12
    dec b                                         ; $6152: $05
    xor c                                         ; $6153: $a9
    ld [de], a                                    ; $6154: $12
    dec b                                         ; $6155: $05
    inc c                                         ; $6156: $0c
    inc de                                        ; $6157: $13
    dec b                                         ; $6158: $05
    ld h, l                                       ; $6159: $65
    inc de                                        ; $615a: $13
    dec b                                         ; $615b: $05
    ret nc                                        ; $615c: $d0

    inc de                                        ; $615d: $13
    dec b                                         ; $615e: $05
    dec [hl]                                      ; $615f: $35
    inc d                                         ; $6160: $14
    dec b                                         ; $6161: $05
    sub a                                         ; $6162: $97
    inc d                                         ; $6163: $14
    dec b                                         ; $6164: $05
    ld [$0515], sp                                ; $6165: $08 $15 $05
    ld e, [hl]                                    ; $6168: $5e
    dec d                                         ; $6169: $15
    dec b                                         ; $616a: $05
    rl l                                          ; $616b: $cb $15
    dec b                                         ; $616d: $05
    ld h, $16                                     ; $616e: $26 $16
    dec b                                         ; $6170: $05
    sub b                                         ; $6171: $90
    ld d, $05                                     ; $6172: $16 $05
    rst $18                                       ; $6174: $df
    ld d, $05                                     ; $6175: $16 $05
    ccf                                           ; $6177: $3f
    rla                                           ; $6178: $17
    dec b                                         ; $6179: $05
    sbc l                                         ; $617a: $9d
    rla                                           ; $617b: $17
    dec b                                         ; $617c: $05
    cp $17                                        ; $617d: $fe $17
    dec b                                         ; $617f: $05
    ld e, l                                       ; $6180: $5d
    jr jr_020_6188                                ; $6181: $18 $05

    adc $18                                       ; $6183: $ce $18
    dec b                                         ; $6185: $05
    ld a, [hl+]                                   ; $6186: $2a
    add hl, de                                    ; $6187: $19

jr_020_6188:
    dec b                                         ; $6188: $05
    adc l                                         ; $6189: $8d
    add hl, de                                    ; $618a: $19
    dec b                                         ; $618b: $05
    db $fc                                        ; $618c: $fc
    add hl, de                                    ; $618d: $19
    dec b                                         ; $618e: $05
    inc a                                         ; $618f: $3c
    ld a, [de]                                    ; $6190: $1a
    dec b                                         ; $6191: $05
    ld c, h                                       ; $6192: $4c
    ld a, [de]                                    ; $6193: $1a
    dec b                                         ; $6194: $05
    ld d, c                                       ; $6195: $51
    ld a, [de]                                    ; $6196: $1a
    dec b                                         ; $6197: $05
    ld d, [hl]                                    ; $6198: $56
    ld a, [de]                                    ; $6199: $1a
    dec b                                         ; $619a: $05
    ld h, b                                       ; $619b: $60
    ld a, [de]                                    ; $619c: $1a
    dec b                                         ; $619d: $05
    ld l, h                                       ; $619e: $6c
    ld a, [de]                                    ; $619f: $1a
    dec b                                         ; $61a0: $05
    ld a, c                                       ; $61a1: $79
    ld a, [de]                                    ; $61a2: $1a
    dec b                                         ; $61a3: $05
    xor b                                         ; $61a4: $a8
    ld a, [de]                                    ; $61a5: $1a
    dec b                                         ; $61a6: $05
    ret c                                         ; $61a7: $d8

    ld a, [de]                                    ; $61a8: $1a
    dec b                                         ; $61a9: $05
    rra                                           ; $61aa: $1f
    dec de                                        ; $61ab: $1b
    dec b                                         ; $61ac: $05

Jump_020_61ad:
    ld e, l                                       ; $61ad: $5d
    dec de                                        ; $61ae: $1b
    dec b                                         ; $61af: $05
    and h                                         ; $61b0: $a4
    dec de                                        ; $61b1: $1b
    dec b                                         ; $61b2: $05
    pop de                                        ; $61b3: $d1
    dec de                                        ; $61b4: $1b
    dec b                                         ; $61b5: $05
    dec de                                        ; $61b6: $1b
    inc e                                         ; $61b7: $1c
    dec b                                         ; $61b8: $05
    ld e, l                                       ; $61b9: $5d
    inc e                                         ; $61ba: $1c
    dec b                                         ; $61bb: $05
    sub b                                         ; $61bc: $90
    inc e                                         ; $61bd: $1c
    dec b                                         ; $61be: $05
    or d                                          ; $61bf: $b2
    inc e                                         ; $61c0: $1c
    dec b                                         ; $61c1: $05
    push de                                       ; $61c2: $d5
    inc e                                         ; $61c3: $1c
    dec b                                         ; $61c4: $05
    ld hl, sp+$1c                                 ; $61c5: $f8 $1c
    dec b                                         ; $61c7: $05
    ld hl, $051d                                  ; $61c8: $21 $1d $05
    dec a                                         ; $61cb: $3d
    dec e                                         ; $61cc: $1d
    dec b                                         ; $61cd: $05
    ld e, l                                       ; $61ce: $5d
    dec e                                         ; $61cf: $1d
    dec b                                         ; $61d0: $05
    ld a, b                                       ; $61d1: $78
    dec e                                         ; $61d2: $1d
    dec b                                         ; $61d3: $05
    and [hl]                                      ; $61d4: $a6
    dec e                                         ; $61d5: $1d
    dec b                                         ; $61d6: $05
    or a                                          ; $61d7: $b7
    dec e                                         ; $61d8: $1d
    dec b                                         ; $61d9: $05
    jp z, Jump_000_051d                           ; $61da: $ca $1d $05

    pop hl                                        ; $61dd: $e1
    dec e                                         ; $61de: $1d
    dec b                                         ; $61df: $05
    add hl, bc                                    ; $61e0: $09
    ld e, $05                                     ; $61e1: $1e $05
    ld l, $1e                                     ; $61e3: $2e $1e
    dec b                                         ; $61e5: $05
    ld e, d                                       ; $61e6: $5a
    ld e, $05                                     ; $61e7: $1e $05
    ld [hl], b                                    ; $61e9: $70
    ld e, $05                                     ; $61ea: $1e $05
    sbc a                                         ; $61ec: $9f
    ld e, $05                                     ; $61ed: $1e $05
    cp l                                          ; $61ef: $bd
    ld e, $05                                     ; $61f0: $1e $05
    db $f4                                        ; $61f2: $f4
    ld e, $05                                     ; $61f3: $1e $05
    dec de                                        ; $61f5: $1b
    rra                                           ; $61f6: $1f
    dec b                                         ; $61f7: $05
    dec sp                                        ; $61f8: $3b
    rra                                           ; $61f9: $1f
    dec b                                         ; $61fa: $05
    ld d, b                                       ; $61fb: $50
    rra                                           ; $61fc: $1f
    dec b                                         ; $61fd: $05
    ld h, c                                       ; $61fe: $61
    rra                                           ; $61ff: $1f
    dec b                                         ; $6200: $05
    ld [hl], l                                    ; $6201: $75
    rra                                           ; $6202: $1f
    dec b                                         ; $6203: $05
    sub c                                         ; $6204: $91
    rra                                           ; $6205: $1f
    dec b                                         ; $6206: $05
    db $eb                                        ; $6207: $eb
    rra                                           ; $6208: $1f
    dec b                                         ; $6209: $05
    rrca                                          ; $620a: $0f
    jr nz, @+$07                                  ; $620b: $20 $05

    dec sp                                        ; $620d: $3b
    jr nz, @+$07                                  ; $620e: $20 $05

    ld b, l                                       ; $6210: $45
    jr nz, @+$07                                  ; $6211: $20 $05

    ld c, [hl]                                    ; $6213: $4e
    jr nz, @+$07                                  ; $6214: $20 $05

    ld d, h                                       ; $6216: $54
    jr nz, @+$07                                  ; $6217: $20 $05

    ld e, d                                       ; $6219: $5a
    jr nz, @+$07                                  ; $621a: $20 $05

    ld h, e                                       ; $621c: $63
    jr nz, @+$07                                  ; $621d: $20 $05

    ld l, c                                       ; $621f: $69
    jr nz, @+$07                                  ; $6220: $20 $05

    ld [hl], d                                    ; $6222: $72
    jr nz, @+$07                                  ; $6223: $20 $05

    ld a, a                                       ; $6225: $7f
    jr nz, @+$07                                  ; $6226: $20 $05

    adc [hl]                                      ; $6228: $8e
    jr nz, @+$07                                  ; $6229: $20 $05

    and e                                         ; $622b: $a3
    jr nz, @+$07                                  ; $622c: $20 $05

    xor e                                         ; $622e: $ab
    jr nz, @+$07                                  ; $622f: $20 $05

    or a                                          ; $6231: $b7
    jr nz, @+$07                                  ; $6232: $20 $05

    jp nz, $0520                                  ; $6234: $c2 $20 $05

    push de                                       ; $6237: $d5
    jr nz, @+$07                                  ; $6238: $20 $05

    xor $20                                       ; $623a: $ee $20
    dec b                                         ; $623c: $05
    rrca                                          ; $623d: $0f
    ld hl, $2105                                  ; $623e: $21 $05 $21
    ld hl, $3405                                  ; $6241: $21 $05 $34
    ld hl, $4605                                  ; $6244: $21 $05 $46
    ld hl, $5905                                  ; $6247: $21 $05 $59
    ld hl, $7e05                                  ; $624a: $21 $05 $7e
    ld hl, $9b05                                  ; $624d: $21 $05 $9b
    ld hl, $ce05                                  ; $6250: $21 $05 $ce
    ld hl, $de05                                  ; $6253: $21 $05 $de
    ld hl, $1005                                  ; $6256: $21 $05 $10
    ld [hl+], a                                   ; $6259: $22

    db $05, $1a, $22

    dec b                                         ; $625d: $05
    inc hl                                        ; $625e: $23
    ld [hl+], a                                   ; $625f: $22
    dec b                                         ; $6260: $05
    ld sp, $0522                                  ; $6261: $31 $22 $05
    inc a                                         ; $6264: $3c
    ld [hl+], a                                   ; $6265: $22
    dec b                                         ; $6266: $05
    ld b, l                                       ; $6267: $45
    ld [hl+], a                                   ; $6268: $22
    dec b                                         ; $6269: $05
    ld a, e                                       ; $626a: $7b
    ld [hl+], a                                   ; $626b: $22
    dec b                                         ; $626c: $05
    xor d                                         ; $626d: $aa
    ld [hl+], a                                   ; $626e: $22
    dec b                                         ; $626f: $05
    inc d                                         ; $6270: $14
    inc hl                                        ; $6271: $23

    db $05, $27, $23, $05, $32, $23, $05, $5d, $23, $05, $68, $23, $05, $74, $23

    dec b                                         ; $6281: $05
    ld a, e                                       ; $6282: $7b
    inc hl                                        ; $6283: $23
    dec b                                         ; $6284: $05
    adc e                                         ; $6285: $8b
    inc hl                                        ; $6286: $23
    dec b                                         ; $6287: $05
    sbc [hl]                                      ; $6288: $9e
    inc hl                                        ; $6289: $23
    dec b                                         ; $628a: $05
    xor b                                         ; $628b: $a8
    inc hl                                        ; $628c: $23
    dec b                                         ; $628d: $05
    xor a                                         ; $628e: $af
    inc hl                                        ; $628f: $23
    dec b                                         ; $6290: $05
    or a                                          ; $6291: $b7
    inc hl                                        ; $6292: $23
    dec b                                         ; $6293: $05
    ret nz                                        ; $6294: $c0

    inc hl                                        ; $6295: $23
    dec b                                         ; $6296: $05
    add $23                                       ; $6297: $c6 $23
    dec b                                         ; $6299: $05
    rst $00                                       ; $629a: $c7
    inc hl                                        ; $629b: $23
    dec b                                         ; $629c: $05
    ret z                                         ; $629d: $c8

    inc hl                                        ; $629e: $23
    dec b                                         ; $629f: $05
    ret                                           ; $62a0: $c9


    inc hl                                        ; $62a1: $23
    dec b                                         ; $62a2: $05
    jp z, Jump_000_0523                           ; $62a3: $ca $23 $05

    sla e                                         ; $62a6: $cb $23
    dec b                                         ; $62a8: $05
    call z, Call_000_0523                         ; $62a9: $cc $23 $05
    call Call_000_0523                            ; $62ac: $cd $23 $05
    adc $23                                       ; $62af: $ce $23
    dec b                                         ; $62b1: $05
    rst $08                                       ; $62b2: $cf
    inc hl                                        ; $62b3: $23
    dec b                                         ; $62b4: $05
    ret nc                                        ; $62b5: $d0

    inc hl                                        ; $62b6: $23
    dec b                                         ; $62b7: $05
    pop de                                        ; $62b8: $d1
    inc hl                                        ; $62b9: $23
    dec b                                         ; $62ba: $05
    jp nc, Jump_000_0523                          ; $62bb: $d2 $23 $05

    db $d3                                        ; $62be: $d3
    inc hl                                        ; $62bf: $23
    dec b                                         ; $62c0: $05
    call nc, Call_000_0523                        ; $62c1: $d4 $23 $05
    push de                                       ; $62c4: $d5
    inc hl                                        ; $62c5: $23
    dec b                                         ; $62c6: $05
    sub $23                                       ; $62c7: $d6 $23
    dec b                                         ; $62c9: $05
    rst $10                                       ; $62ca: $d7
    inc hl                                        ; $62cb: $23
    dec b                                         ; $62cc: $05
    ret c                                         ; $62cd: $d8

    inc hl                                        ; $62ce: $23
    dec b                                         ; $62cf: $05
    reti                                          ; $62d0: $d9


    inc hl                                        ; $62d1: $23
    dec b                                         ; $62d2: $05
    jp c, Jump_000_0523                           ; $62d3: $da $23 $05

    db $db                                        ; $62d6: $db
    inc hl                                        ; $62d7: $23
    dec b                                         ; $62d8: $05
    call c, Call_000_0523                         ; $62d9: $dc $23 $05
    db $dd                                        ; $62dc: $dd
    inc hl                                        ; $62dd: $23
    dec b                                         ; $62de: $05
    sbc $23                                       ; $62df: $de $23
    dec b                                         ; $62e1: $05
    rst $18                                       ; $62e2: $df
    inc hl                                        ; $62e3: $23
    dec b                                         ; $62e4: $05
    ldh [rNR44], a                                ; $62e5: $e0 $23
    dec b                                         ; $62e7: $05
    pop hl                                        ; $62e8: $e1
    inc hl                                        ; $62e9: $23
    dec b                                         ; $62ea: $05
    ld [c], a                                     ; $62eb: $e2
    inc hl                                        ; $62ec: $23
    dec b                                         ; $62ed: $05
    db $e3                                        ; $62ee: $e3
    inc hl                                        ; $62ef: $23
    dec b                                         ; $62f0: $05
    db $e4                                        ; $62f1: $e4
    inc hl                                        ; $62f2: $23
    dec b                                         ; $62f3: $05
    push hl                                       ; $62f4: $e5
    inc hl                                        ; $62f5: $23
    dec b                                         ; $62f6: $05
    and $23                                       ; $62f7: $e6 $23
    dec b                                         ; $62f9: $05
    rst $20                                       ; $62fa: $e7
    inc hl                                        ; $62fb: $23
    dec b                                         ; $62fc: $05
    add sp, $23                                   ; $62fd: $e8 $23
    dec b                                         ; $62ff: $05
    jp hl                                         ; $6300: $e9


    inc hl                                        ; $6301: $23
    dec b                                         ; $6302: $05
    ld [$0523], a                                 ; $6303: $ea $23 $05
    db $eb                                        ; $6306: $eb
    inc hl                                        ; $6307: $23
    dec b                                         ; $6308: $05
    db $ec                                        ; $6309: $ec
    inc hl                                        ; $630a: $23
    dec b                                         ; $630b: $05
    db $ed                                        ; $630c: $ed
    inc hl                                        ; $630d: $23
    dec b                                         ; $630e: $05
    xor $23                                       ; $630f: $ee $23
    dec b                                         ; $6311: $05
    rst $28                                       ; $6312: $ef
    inc hl                                        ; $6313: $23
    dec b                                         ; $6314: $05
    ldh a, [rNR44]                                ; $6315: $f0 $23
    dec b                                         ; $6317: $05
    or $23                                        ; $6318: $f6 $23
    dec b                                         ; $631a: $05
    ld [bc], a                                    ; $631b: $02
    inc h                                         ; $631c: $24

Call_020_631d:
    dec b                                         ; $631d: $05
    ld [de], a                                    ; $631e: $12
    inc h                                         ; $631f: $24
    dec b                                         ; $6320: $05
    dec e                                         ; $6321: $1d
    inc h                                         ; $6322: $24
    dec b                                         ; $6323: $05
    jr z, jr_020_634a                             ; $6324: $28 $24

    dec b                                         ; $6326: $05
    inc [hl]                                      ; $6327: $34
    inc h                                         ; $6328: $24
    dec b                                         ; $6329: $05
    ld b, h                                       ; $632a: $44
    inc h                                         ; $632b: $24
    dec b                                         ; $632c: $05
    ld b, l                                       ; $632d: $45
    inc h                                         ; $632e: $24
    dec b                                         ; $632f: $05
    ld b, [hl]                                    ; $6330: $46
    inc h                                         ; $6331: $24
    dec b                                         ; $6332: $05
    ld b, a                                       ; $6333: $47
    inc h                                         ; $6334: $24
    dec b                                         ; $6335: $05
    ld c, b                                       ; $6336: $48
    inc h                                         ; $6337: $24
    dec b                                         ; $6338: $05
    ld c, c                                       ; $6339: $49
    inc h                                         ; $633a: $24
    dec b                                         ; $633b: $05
    ld c, d                                       ; $633c: $4a
    inc h                                         ; $633d: $24
    dec b                                         ; $633e: $05
    ld c, e                                       ; $633f: $4b
    inc h                                         ; $6340: $24
    dec b                                         ; $6341: $05
    ld c, h                                       ; $6342: $4c
    inc h                                         ; $6343: $24
    dec b                                         ; $6344: $05
    ld c, l                                       ; $6345: $4d
    inc h                                         ; $6346: $24
    dec b                                         ; $6347: $05
    ld c, [hl]                                    ; $6348: $4e
    inc h                                         ; $6349: $24

jr_020_634a:
    dec b                                         ; $634a: $05
    ld c, a                                       ; $634b: $4f
    inc h                                         ; $634c: $24
    dec b                                         ; $634d: $05
    ld d, a                                       ; $634e: $57
    inc h                                         ; $634f: $24
    dec b                                         ; $6350: $05
    ld e, b                                       ; $6351: $58
    inc h                                         ; $6352: $24
    dec b                                         ; $6353: $05
    ld e, c                                       ; $6354: $59
    inc h                                         ; $6355: $24
    dec b                                         ; $6356: $05
    ld e, d                                       ; $6357: $5a
    inc h                                         ; $6358: $24
    dec b                                         ; $6359: $05
    ld e, e                                       ; $635a: $5b
    inc h                                         ; $635b: $24
    dec b                                         ; $635c: $05
    ld e, h                                       ; $635d: $5c
    inc h                                         ; $635e: $24
    dec b                                         ; $635f: $05
    ld e, l                                       ; $6360: $5d
    inc h                                         ; $6361: $24
    dec b                                         ; $6362: $05
    ld e, [hl]                                    ; $6363: $5e
    inc h                                         ; $6364: $24
    dec b                                         ; $6365: $05
    ld e, a                                       ; $6366: $5f
    inc h                                         ; $6367: $24
    dec b                                         ; $6368: $05
    ld h, b                                       ; $6369: $60
    inc h                                         ; $636a: $24
    dec b                                         ; $636b: $05
    ld h, c                                       ; $636c: $61
    inc h                                         ; $636d: $24
    dec b                                         ; $636e: $05
    ld h, d                                       ; $636f: $62
    inc h                                         ; $6370: $24
    dec b                                         ; $6371: $05
    ld h, e                                       ; $6372: $63
    inc h                                         ; $6373: $24
    dec b                                         ; $6374: $05
    ld h, h                                       ; $6375: $64
    inc h                                         ; $6376: $24
    dec b                                         ; $6377: $05
    ld h, l                                       ; $6378: $65
    inc h                                         ; $6379: $24
    dec b                                         ; $637a: $05
    ld h, [hl]                                    ; $637b: $66
    inc h                                         ; $637c: $24
    dec b                                         ; $637d: $05
    ld h, a                                       ; $637e: $67
    inc h                                         ; $637f: $24
    dec b                                         ; $6380: $05
    ld l, b                                       ; $6381: $68
    inc h                                         ; $6382: $24
    dec b                                         ; $6383: $05
    ld l, c                                       ; $6384: $69
    inc h                                         ; $6385: $24
    dec b                                         ; $6386: $05
    ld l, d                                       ; $6387: $6a
    inc h                                         ; $6388: $24
    dec b                                         ; $6389: $05
    ld l, e                                       ; $638a: $6b
    inc h                                         ; $638b: $24
    dec b                                         ; $638c: $05
    ld l, h                                       ; $638d: $6c
    inc h                                         ; $638e: $24
    dec b                                         ; $638f: $05
    ld a, c                                       ; $6390: $79
    inc h                                         ; $6391: $24
    dec b                                         ; $6392: $05
    ld a, d                                       ; $6393: $7a
    inc h                                         ; $6394: $24
    dec b                                         ; $6395: $05
    add [hl]                                      ; $6396: $86
    inc h                                         ; $6397: $24
    dec b                                         ; $6398: $05
    sub c                                         ; $6399: $91
    inc h                                         ; $639a: $24
    dec b                                         ; $639b: $05
    sbc e                                         ; $639c: $9b
    inc h                                         ; $639d: $24
    dec b                                         ; $639e: $05
    and l                                         ; $639f: $a5
    inc h                                         ; $63a0: $24
    dec b                                         ; $63a1: $05
    and [hl]                                      ; $63a2: $a6
    inc h                                         ; $63a3: $24
    dec b                                         ; $63a4: $05
    and a                                         ; $63a5: $a7
    inc h                                         ; $63a6: $24
    dec b                                         ; $63a7: $05
    xor b                                         ; $63a8: $a8
    inc h                                         ; $63a9: $24
    dec b                                         ; $63aa: $05
    xor c                                         ; $63ab: $a9
    inc h                                         ; $63ac: $24
    dec b                                         ; $63ad: $05
    xor d                                         ; $63ae: $aa
    inc h                                         ; $63af: $24
    dec b                                         ; $63b0: $05
    xor e                                         ; $63b1: $ab
    inc h                                         ; $63b2: $24
    dec b                                         ; $63b3: $05
    xor h                                         ; $63b4: $ac
    inc h                                         ; $63b5: $24
    dec b                                         ; $63b6: $05
    xor l                                         ; $63b7: $ad
    inc h                                         ; $63b8: $24
    dec b                                         ; $63b9: $05
    xor [hl]                                      ; $63ba: $ae
    inc h                                         ; $63bb: $24
    dec b                                         ; $63bc: $05
    xor a                                         ; $63bd: $af
    inc h                                         ; $63be: $24
    dec b                                         ; $63bf: $05
    or b                                          ; $63c0: $b0
    inc h                                         ; $63c1: $24
    dec b                                         ; $63c2: $05
    or c                                          ; $63c3: $b1
    inc h                                         ; $63c4: $24
    dec b                                         ; $63c5: $05
    or d                                          ; $63c6: $b2
    inc h                                         ; $63c7: $24
    dec b                                         ; $63c8: $05
    or e                                          ; $63c9: $b3
    inc h                                         ; $63ca: $24
    dec b                                         ; $63cb: $05
    or h                                          ; $63cc: $b4
    inc h                                         ; $63cd: $24
    dec b                                         ; $63ce: $05
    or l                                          ; $63cf: $b5
    inc h                                         ; $63d0: $24
    dec b                                         ; $63d1: $05
    or [hl]                                       ; $63d2: $b6
    inc h                                         ; $63d3: $24
    dec b                                         ; $63d4: $05
    or a                                          ; $63d5: $b7
    inc h                                         ; $63d6: $24
    dec b                                         ; $63d7: $05
    cp h                                          ; $63d8: $bc
    inc h                                         ; $63d9: $24
    dec b                                         ; $63da: $05
    cp l                                          ; $63db: $bd
    inc h                                         ; $63dc: $24
    dec b                                         ; $63dd: $05
    cp [hl]                                       ; $63de: $be
    inc h                                         ; $63df: $24
    dec b                                         ; $63e0: $05
    cp a                                          ; $63e1: $bf
    inc h                                         ; $63e2: $24
    dec b                                         ; $63e3: $05
    ret nz                                        ; $63e4: $c0

    inc h                                         ; $63e5: $24

    db $52, $50, $51, $8c, $a6, $a8, $a9, $ab, $ad, $af, $b0, $b1, $b2, $b3, $b4, $b5
    db $b6, $b7, $b8, $b9, $ba, $bb, $c0, $c1, $c2, $c4, $c5, $c6, $c7, $ca, $cb, $cc
    db $cd, $ce, $cf, $d1, $d2, $d5, $d6, $d8, $da, $df, $e0, $ea, $f1, $f8, $fa, $fe
    db $00, $a1, $bf, $c3, $d0, $d4, $d7, $d9, $01, $02, $03, $04, $05, $06, $07, $08
    db $09, $0a, $0b, $0c, $0d, $0e, $0f, $10, $11, $12, $13, $14, $15, $16, $17, $d3
    db $c8, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26
    db $ac, $c9, $f6, $a7, $eb, $27, $e2, $f0, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f
    db $f7, $30, $e6, $e7, $ed, $e3, $31, $f9, $32, $33, $34, $35, $36, $ae, $ff, $e4
    db $37, $f5, $38, $39, $ec, $e8, $3a, $3b, $3c, $3d, $e9, $f3, $3e, $ee, $3f, $f2
    db $e1, $40, $f4, $41, $ef, $42, $43, $44, $e5, $45, $46, $47, $48, $49, $4a, $a0
    db $4b, $4c, $4d, $4e, $4f

    db $fd                                        ; $648b: $fd
    ld e, $da                                     ; $648c: $1e $da
    ld c, a                                       ; $648e: $4f
    rst $38                                       ; $648f: $ff
    add a                                         ; $6490: $87
    or $d3                                        ; $6491: $f6 $d3
    ld a, a                                       ; $6493: $7f
    cp a                                          ; $6494: $bf
    db $fd                                        ; $6495: $fd
    or $87                                        ; $6496: $f6 $87
    ld bc, $52c7                                  ; $6498: $01 $c7 $52
    db $10                                        ; $649b: $10
    cpl                                           ; $649c: $2f
    sub h                                         ; $649d: $94
    sbc l                                         ; $649e: $9d
    pop de                                        ; $649f: $d1
    add d                                         ; $64a0: $82
    ld bc, $a927                                  ; $64a1: $01 $27 $a9
    ccf                                           ; $64a4: $3f
    ld hl, sp+$7a                                 ; $64a5: $f8 $7a
    inc a                                         ; $64a7: $3c
    rlca                                          ; $64a8: $07
    rst $18                                       ; $64a9: $df
    add hl, de                                    ; $64aa: $19
    dec e                                         ; $64ab: $1d
    and [hl]                                      ; $64ac: $a6
    cp $87                                        ; $64ad: $fe $87
    xor a                                         ; $64af: $af
    rst $18                                       ; $64b0: $df
    ld b, e                                       ; $64b1: $43
    ei                                            ; $64b2: $fb
    jp hl                                         ; $64b3: $e9


    rst $38                                       ; $64b4: $ff
    ldh [$7e], a                                  ; $64b5: $e0 $7e
    ld a, [$b7ef]                                 ; $64b7: $fa $ef $b7
    rst $18                                       ; $64ba: $df
    cp $30                                        ; $64bb: $fe $30

    db $2d, $9d, $8f, $11, $03, $dd, $54, $18, $06, $16, $ff, $10, $03, $c7, $c5, $7f
    db $0c, $2d, $dd, $0f, $df, $91, $fd, $f5, $73, $64, $ff, $c3, $27, $77, $3f, $7c
    db $47, $f6, $d7, $cf, $91, $fd, $0f, $03, $c7, $c5, $db, $79, $62, $b9, $33, $28
    db $31

    rst $00                                       ; $64ee: $c7
    push bc                                       ; $64ef: $c5
    db $db                                        ; $64f0: $db
    ld a, c                                       ; $64f1: $79
    ld h, d                                       ; $64f2: $62
    cp c                                          ; $64f3: $b9
    ld h, e                                       ; $64f4: $63
    ld c, h                                       ; $64f5: $4c
    ld h, d                                       ; $64f6: $62
    rst $00                                       ; $64f7: $c7
    push bc                                       ; $64f8: $c5
    db $db                                        ; $64f9: $db
    ld a, c                                       ; $64fa: $79
    ld h, d                                       ; $64fb: $62
    cp c                                          ; $64fc: $b9
    ld e, $72                                     ; $64fd: $1e $72
    dec d                                         ; $64ff: $15
    inc bc                                        ; $6500: $03

    db $67, $be, $84, $37, $c6, $9b, $06, $76, $06, $25, $06

    ld h, a                                       ; $650c: $67
    cp [hl]                                       ; $650d: $be
    add h                                         ; $650e: $84
    scf                                           ; $650f: $37
    add $9b                                       ; $6510: $c6 $9b
    ld b, $76                                     ; $6512: $06 $76
    adc h                                         ; $6514: $8c
    ld c, c                                       ; $6515: $49
    inc c                                         ; $6516: $0c
    ld h, a                                       ; $6517: $67
    cp [hl]                                       ; $6518: $be
    add h                                         ; $6519: $84
    scf                                           ; $651a: $37
    add $9b                                       ; $651b: $c6 $9b
    ld b, $d6                                     ; $651d: $06 $d6
    ld b, e                                       ; $651f: $43
    xor [hl]                                      ; $6520: $ae
    ld h, d                                       ; $6521: $62
    ld h, a                                       ; $6522: $67
    cp [hl]                                       ; $6523: $be
    or b                                          ; $6524: $b0
    dec de                                        ; $6525: $1b
    sbc $18                                       ; $6526: $de $18
    ld l, a                                       ; $6528: $6f
    ld a, [de]                                    ; $6529: $1a
    ret c                                         ; $652a: $d8

    add hl, de                                    ; $652b: $19
    sub h                                         ; $652c: $94
    jr @+$69                                      ; $652d: $18 $67

    cp [hl]                                       ; $652f: $be
    or b                                          ; $6530: $b0
    dec de                                        ; $6531: $1b
    sbc $18                                       ; $6532: $de $18
    ld l, a                                       ; $6534: $6f
    ld a, [de]                                    ; $6535: $1a
    ret c                                         ; $6536: $d8

    ld sp, $3126                                  ; $6537: $31 $26 $31
    ld h, a                                       ; $653a: $67
    cp [hl]                                       ; $653b: $be
    or b                                          ; $653c: $b0
    dec de                                        ; $653d: $1b
    sbc $18                                       ; $653e: $de $18
    ld l, a                                       ; $6540: $6f
    ld a, [de]                                    ; $6541: $1a
    ld e, b                                       ; $6542: $58
    rrca                                          ; $6543: $0f
    cp c                                          ; $6544: $b9
    adc d                                         ; $6545: $8a
    ld bc, $aa16                                  ; $6546: $01 $16 $aa
    sbc [hl]                                      ; $6549: $9e
    ret c                                         ; $654a: $d8

    call Call_020_419d                            ; $654b: $cd $9d $41
    adc c                                         ; $654e: $89
    ld bc, $aa16                                  ; $654f: $01 $16 $aa
    sbc [hl]                                      ; $6552: $9e
    ret c                                         ; $6553: $d8

    call Call_020_631d                            ; $6554: $cd $1d $63
    ld [de], a                                    ; $6557: $12
    inc bc                                        ; $6558: $03
    ld d, $aa                                     ; $6559: $16 $aa
    sbc [hl]                                      ; $655b: $9e

jr_020_655c:
    ret c                                         ; $655c: $d8

    call $90f5                                    ; $655d: $cd $f5 $90
    xor e                                         ; $6560: $ab
    jr @+$3f                                      ; $6561: $18 $3d

    cpl                                           ; $6563: $2f

jr_020_6564:
    dec b                                         ; $6564: $05
    ld a, [hl+]                                   ; $6565: $2a
    db $ec                                        ; $6566: $ec
    sbc d                                         ; $6567: $9a
    ld [hl], b                                    ; $6568: $70
    daa                                           ; $6569: $27
    cp l                                          ; $656a: $bd
    push af                                       ; $656b: $f5
    ld h, $28                                     ; $656c: $26 $28
    ld b, $27                                     ; $656e: $06 $27
    ld h, l                                       ; $6570: $65
    sub l                                         ; $6571: $95
    ld h, c                                       ; $6572: $61
    ld a, d                                       ; $6573: $7a
    jp z, $de7a                                   ; $6574: $ca $7a $de

    halt                                          ; $6577: $76
    dec sp                                        ; $6578: $3b
    ld [hl], $18                                  ; $6579: $36 $18
    daa                                           ; $657b: $27
    ld h, l                                       ; $657c: $65
    sub l                                         ; $657d: $95
    ld h, c                                       ; $657e: $61
    ld a, d                                       ; $657f: $7a
    jp z, Jump_020_4e4e                           ; $6580: $ca $4e $4e

    pop af                                        ; $6583: $f1
    dec bc                                        ; $6584: $0b
    jr jr_020_6564                                ; $6585: $18 $dd

    rst $18                                       ; $6587: $df
    push hl                                       ; $6588: $e5
    jp c, Jump_000_32b7                           ; $6589: $da $b7 $32

    or b                                          ; $658c: $b0
    ld e, $e9                                     ; $658d: $1e $e9
    ld a, [de]                                    ; $658f: $1a
    dec c                                         ; $6590: $0d
    ld h, b                                       ; $6591: $60
    daa                                           ; $6592: $27
    sbc e                                         ; $6593: $9b
    jp z, $8ec0                                   ; $6594: $ca $c0 $8e

    ld h, d                                       ; $6597: $62
    dec sp                                        ; $6598: $3b

jr_020_6599:
    ld b, l                                       ; $6599: $45
    dec c                                         ; $659a: $0d
    cp h                                          ; $659b: $bc
    add [hl]                                      ; $659c: $86
    jr jr_020_655c                                ; $659d: $18 $bd

    jp nc, $a8ac                                  ; $659f: $d2 $ac $a8

    push af                                       ; $65a2: $f5
    xor c                                         ; $65a3: $a9
    and $8b                                       ; $65a4: $e6 $8b
    xor a                                         ; $65a6: $af
    ld b, d                                       ; $65a7: $42
    rst $08                                       ; $65a8: $cf
    and [hl]                                      ; $65a9: $a6
    call nc, Call_000_3a0c                        ; $65aa: $d4 $0c $3a
    rra                                           ; $65ad: $1f
    inc hl                                        ; $65ae: $23
    xor h                                         ; $65af: $ac
    ld a, c                                       ; $65b0: $79
    rst $28                                       ; $65b1: $ef
    add d                                         ; $65b2: $82
    ld bc, $d2bd                                  ; $65b3: $01 $bd $d2
    adc h                                         ; $65b6: $8c
    dec h                                         ; $65b7: $25
    push de                                       ; $65b8: $d5
    ld a, h                                       ; $65b9: $7c
    ld b, l                                       ; $65ba: $45
    xor l                                         ; $65bb: $ad
    cp a                                          ; $65bc: $bf
    and a                                         ; $65bd: $a7
    inc [hl]                                      ; $65be: $34
    ld b, c                                       ; $65bf: $41
    ld e, c                                       ; $65c0: $59
    ld c, e                                       ; $65c1: $4b
    rst $20                                       ; $65c2: $e7
    ld h, e                                       ; $65c3: $63
    ld e, h                                       ; $65c4: $5c
    rst $30                                       ; $65c5: $f7
    cp h                                          ; $65c6: $bc
    db $e4                                        ; $65c7: $e4
    jr nc, jr_020_6599                            ; $65c8: $30 $cf

    ld d, l                                       ; $65ca: $55
    ld a, [bc]                                    ; $65cb: $0a
    ld a, $2f                                     ; $65cc: $3e $2f
    rla                                           ; $65ce: $17
    ld b, $9d                                     ; $65cf: $06 $9d
    adc a                                         ; $65d1: $8f
    or c                                          ; $65d2: $b1
    dec bc                                        ; $65d3: $0b
    ld b, $bd                                     ; $65d4: $06 $bd
    jp nc, $e54c                                  ; $65d6: $d2 $4c $e5

    ld h, a                                       ; $65d9: $67
    ld c, b                                       ; $65da: $48
    db $db                                        ; $65db: $db
    pop af                                        ; $65dc: $f1
    rst $20                                       ; $65dd: $e7
    cp c                                          ; $65de: $b9
    add a                                         ; $65df: $87
    ld c, d                                       ; $65e0: $4a
    dec sp                                        ; $65e1: $3b
    adc a                                         ; $65e2: $8f
    db $30                                        ; $65e3: $30

    db $3d, $3f, $56, $19, $fe, $3c, $77, $cc, $d5, $20, $69, $47, $c5, $f8, $0d, $77
    db $ad, $2a, $d2, $20, $0c, $96, $9a, $f5, $47, $6f, $7d, $19, $fc, $d3, $74, $9d
    db $a8, $d5, $2f, $de, $fa, $cf, $cb, $85, $b5, $df, $4e, $f9, $2e, $18, $3d, $8a
    db $7a, $0d, $d6, $fe, $4a, $0d, $fc, $bc, $bc, $fc, $2e, $8c, $92, $7e, $f1, $d6
    db $7f, $d7, $d1, $7a, $94, $0b, $bb, $b0, $53, $63, $bc, $56, $25, $f6, $52, $83
    db $f5, $54, $62, $6b, $29, $d9, $e1, $4e, $61, $cd, $97, $55, $4a, $83, $ff, $b5
    db $9b, $79, $f9, $c1, $0d, $08, $cd, $52, $8b, $71, $41, $ee, $d2, $94, $d8, $e0
    db $7f, $9e, $6b, $be, $2c, $78, $f7, $4b, $c1, $74, $bc, $12, $43, $eb, $f5, $65
    db $95, $d2, $9e, $43, $27, $a6, $fc, $74, $ed, $eb, $bb, $f6, $9a, $2f, $8b, $b7
    db $fe, $ab, $d9, $29, $bf, $26, $cd, $ce, $cb, $4b, $0b, $7f, $97, $e0, $b2, $47
    db $18, $ad, $1f, $63, $72, $d7, $aa, $22, $0d, $5a, $8f, $72, $61, $17, $76, $b2
    db $a0, $9d, $1a, $e3, $b5, $2a, $b1, $17, $b4, $b5, $7e, $2d, $c6, $c1, $fb, $9a
    db $2f, $33, $9d, $f1, $d7, $cb, $74, $bc, $12, $43, $eb, $96, $e1, $cf, $be, $c4
    db $16, $fe, $a2, $fa, $cb, $d4, $77, $bc, $5c, $0a, $d2, $1d, $d6, $56, $aa, $23
    db $0c, $3d, $ca, $cb, $d7, $60, $90, $e1, $7b, $b9, $14, $8c, $97, $eb, $fe, $b4
    db $a4, $79, $f9, $b1, $4c, $41, $08, $61, $e7, $1e, $4b, $fe, $c2, $1d, $b8, $28
    db $05, $2f, $dc, $b5, $8d, $cf, $b5, $fe, $2b, $ff, $0c, $03, $a7, $da, $e3, $8b
    db $fa, $94, $d7, $eb, $30, $2f, $3f, $b8, $b4, $b4, $17, $c8, $3f, $e3, $62, $c7
    db $a5, $cc, $4b, $c2, $8f, $2f, $39, $d7, $fa, $af, $6d, $7c, $2c, $47, $e9, $7b
    db $15, $c2, $27, $6b, $b3, $8e, $36, $63, $af, $12, $9b, $5d, $9a, $97, $bf, $32
    db $37, $42, $a8, $86, $01

    cp l                                          ; $6729: $bd
    jp nc, Jump_020_52ac                          ; $672a: $d2 $ac $52

    and d                                         ; $672d: $a2
    db $f4                                        ; $672e: $f4
    dec b                                         ; $672f: $05
    cp c                                          ; $6730: $b9
    ld c, e                                       ; $6731: $4b
    sbc [hl]                                      ; $6732: $9e
    di                                            ; $6733: $f3
    ld a, [c]                                     ; $6734: $f2
    or e                                          ; $6735: $b3
    xor d                                         ; $6736: $aa
    adc c                                         ; $6737: $89
    ld a, $95                                     ; $6738: $3e $95
    rst $10                                       ; $673a: $d7
    add hl, de                                    ; $673b: $19
    adc d                                         ; $673c: $8a
    rrca                                          ; $673d: $0f
    or b                                          ; $673e: $b0
    ld h, $cd                                     ; $673f: $26 $cd
    adc d                                         ; $6741: $8a
    ld e, d                                       ; $6742: $5a
    ld a, a                                       ; $6743: $7f
    ld c, l                                       ; $6744: $4d
    ld a, [de]                                    ; $6745: $1a
    sbc c                                         ; $6746: $99
    ld d, l                                       ; $6747: $55
    ld c, l                                       ; $6748: $4d
    db $f4                                        ; $6749: $f4
    push de                                       ; $674a: $d5
    cp a                                          ; $674b: $bf

Jump_020_674c:
    ld b, c                                       ; $674c: $41
    jr jr_020_6776                                ; $674d: $18 $27

    dec bc                                        ; $674f: $0b
    ld e, d                                       ; $6750: $5a
    rst $30                                       ; $6751: $f7
    ld [hl], h                                    ; $6752: $74
    ld a, a                                       ; $6753: $7f
    jp hl                                         ; $6754: $e9


    cp d                                          ; $6755: $ba
    ld e, [hl]                                    ; $6756: $5e
    ld l, c                                       ; $6757: $69
    ld h, h                                       ; $6758: $64
    dec e                                         ; $6759: $1d
    dec d                                         ; $675a: $15
    ld l, a                                       ; $675b: $6f
    halt                                          ; $675c: $76
    ld h, c                                       ; $675d: $61
    cp h                                          ; $675e: $bc
    ld e, [hl]                                    ; $675f: $5e
    cp a                                          ; $6760: $bf
    inc d                                         ; $6761: $14
    ld c, h                                       ; $6762: $4c
    ld a, l                                       ; $6763: $7d
    ld e, [hl]                                    ; $6764: $5e
    ld a, [hl]                                    ; $6765: $7e
    ld c, a                                       ; $6766: $4f
    ld l, h                                       ; $6767: $6c
    ld l, c                                       ; $6768: $69
    rst $08                                       ; $6769: $cf
    sra a                                         ; $676a: $cb $2f
    ld h, [hl]                                    ; $676c: $66
    cp e                                          ; $676d: $bb
    db $dd                                        ; $676e: $dd
    jr nz, jr_020_677d                            ; $676f: $20 $0c

    ld d, $7b                                     ; $6771: $16 $7b
    ld c, l                                       ; $6773: $4d
    sbc d                                         ; $6774: $9a
    sbc d                                         ; $6775: $9a

jr_020_6776:
    db $fc                                        ; $6776: $fc
    ld h, d                                       ; $6777: $62
    ld h, [hl]                                    ; $6778: $66
    db $fd                                        ; $6779: $fd
    ld d, d                                       ; $677a: $52
    jr nc, jr_020_67b8                            ; $677b: $30 $3b

jr_020_677d:
    ld h, l                                       ; $677d: $65
    daa                                           ; $677e: $27
    dec bc                                        ; $677f: $0b
    ld e, d                                       ; $6780: $5a
    xor e                                         ; $6781: $ab
    ld b, $72                                     ; $6782: $06 $72
    add hl, de                                    ; $6784: $19
    ld [hl], a                                    ; $6785: $77
    push hl                                       ; $6786: $e5
    ld l, e                                       ; $6787: $6b
    or b                                          ; $6788: $b0
    or [hl]                                       ; $6789: $b6
    ld d, [hl]                                    ; $678a: $56
    push af                                       ; $678b: $f5
    pop de                                        ; $678c: $d1
    xor e                                         ; $678d: $ab
    call z, $cfcb                                 ; $678e: $cc $cb $cf
    xor d                                         ; $6791: $aa
    ld h, $3a                                     ; $6792: $26 $3a
    jr nz, jr_020_67a2                            ; $6794: $20 $0c

    daa                                           ; $6796: $27
    dec bc                                        ; $6797: $0b
    ld e, d                                       ; $6798: $5a
    xor e                                         ; $6799: $ab
    ld b, $72                                     ; $679a: $06 $72
    reti                                          ; $679c: $d9


    ld l, $8c                                     ; $679d: $2e $8c
    rst $10                                       ; $679f: $d7
    db $eb                                        ; $67a0: $eb
    sub a                                         ; $67a1: $97

jr_020_67a2:
    add d                                         ; $67a2: $82
    reti                                          ; $67a3: $d9


    add hl, hl                                    ; $67a4: $29
    ld l, e                                       ; $67a5: $6b
    jp nc, Jump_020_7d4c                          ; $67a6: $d2 $4c $7d

    ld e, [hl]                                    ; $67a9: $5e
    ld a, [hl]                                    ; $67aa: $7e
    or [hl]                                       ; $67ab: $b6
    jp z, $d89e                                   ; $67ac: $ca $9e $d8

    jp nc, $979e                                  ; $67af: $d2 $9e $97

    ld e, a                                       ; $67b2: $5f
    db $db                                        ; $67b3: $db
    call c, Call_000_2ec8                         ; $67b4: $dc $c8 $2e
    dec b                                         ; $67b7: $05

jr_020_67b8:
    ld [$2703], sp                                ; $67b8: $08 $03 $27
    dec bc                                        ; $67bb: $0b
    ld e, d                                       ; $67bc: $5a
    xor e                                         ; $67bd: $ab
    ld b, $72                                     ; $67be: $06 $72
    reti                                          ; $67c0: $d9


    sub h                                         ; $67c1: $94
    ret c                                         ; $67c2: $d8

    ld c, [hl]                                    ; $67c3: $4e
    ld d, $b4                                     ; $67c4: $16 $b4
    db $e3                                        ; $67c6: $e3
    push hl                                       ; $67c7: $e5
    halt                                          ; $67c8: $76
    ld c, d                                       ; $67c9: $4a
    ld h, [hl]                                    ; $67ca: $66
    ld a, l                                       ; $67cb: $7d
    ld b, l                                       ; $67cc: $45
    xor l                                         ; $67cd: $ad
    cp a                                          ; $67ce: $bf
    or $3f                                        ; $67cf: $f6 $3f
    adc l                                         ; $67d1: $8d
    rst $10                                       ; $67d2: $d7
    db $eb                                        ; $67d3: $eb
    sub a                                         ; $67d4: $97
    add d                                         ; $67d5: $82
    reti                                          ; $67d6: $d9


    add hl, hl                                    ; $67d7: $29
    ld l, e                                       ; $67d8: $6b
    jp nc, $0c20                                  ; $67d9: $d2 $20 $0c

    db $ad, $1f, $63, $72, $d7, $aa, $22, $4d, $17, $0c, $c7, $67, $b2, $85, $29, $74
    db $29, $e0, $ee, $64, $41, $eb, $9e, $ee, $2f, $68, $3b, $b9, $19, $69, $f8, $bb
    db $b0, $e3, $e5, $76, $4a, $66, $1d, $61, $3d, $bf, $c6, $16, $6f, $fd, $e7, $2f
    db $83, $ff, $b5, $aa, $48, $53, $83, $59, $d5, $44, $e7, $8e, $92, $47, $18, $ad
    db $6a, $fd, $35, $69, $56, $2e, $ac, $fe, $0d, $77, $70, $a5, $2b, $06, $ad, $2f
    db $bf, $9a, $5f, $40, $3b, $8a, $d8, $bc, $bc, $7c, $0d, $a6, $11, $72, $5e, $7e
    db $a1, $ba, $bf, $2c, $ed, $79, $f9, $35, $69, $fa, $ae, $53, $f2, $7d, $f3, $45
    db $7d, $fc, $cf, $35, $d6, $9f, $4d, $db, $69, $7c, $ed, $b7, $53, $1e, $61, $47
    db $c5, $38, $f8, $0f, $61, $9e, $6b, $ff, $2e, $2d, $85, $bd, $a0, $ad, $7b, $7c
    db $85, $9f, $9d, $31, $26, $bf, $f0, $11, $06, $2d, $ae, $cd, $3c, $83, $f7, $f2
    db $c2, $5d, $27, $be, $c2, $23, $0c, $dd, $32, $fc, $25, $71, $d7, $aa, $22, $0d
    db $c2, $ad, $1a, $c8, $65, $5d, $b6, $9e, $7a, $7d, $76, $ca, $c2, $ef, $82, $01

    dec l                                         ; $689c: $2d
    add hl, hl                                    ; $689d: $29
    jp nc, $ada0                                  ; $689e: $d2 $a0 $ad

    ld b, a                                       ; $68a1: $47
    cp c                                          ; $68a2: $b9

jr_020_68a3:
    jr nc, jr_020_68a3                            ; $68a3: $30 $fe

    ld [de], a                                    ; $68a5: $12
    ld c, e                                       ; $68a6: $4b
    ld a, [hl]                                    ; $68a7: $7e
    rla                                           ; $68a8: $17
    ld d, [hl]                                    ; $68a9: $56
    push bc                                       ; $68aa: $c5
    add h                                         ; $68ab: $84
    ld h, a                                       ; $68ac: $67
    ld [$2d03], sp                                ; $68ad: $08 $03 $2d
    add hl, hl                                    ; $68b0: $29
    jp nc, $6770                                  ; $68b1: $d2 $70 $67

    ld e, c                                       ; $68b4: $59
    ld d, d                                       ; $68b5: $52
    ld l, h                                       ; $68b6: $6c
    and [hl]                                      ; $68b7: $a6
    ld d, l                                       ; $68b8: $55
    push af                                       ; $68b9: $f5
    dec e                                         ; $68ba: $1d
    ld e, a                                       ; $68bb: $5f
    ld c, h                                       ; $68bc: $4c
    and l                                         ; $68bd: $a5
    ld [hl], l                                    ; $68be: $75
    or h                                          ; $68bf: $b4
    add hl, bc                                    ; $68c0: $09
    sbc a                                         ; $68c1: $9f
    inc e                                         ; $68c2: $1c
    and [hl]                                      ; $68c3: $a6
    ld a, $2f                                     ; $68c4: $3e $2f
    rla                                           ; $68c6: $17
    add $5f                                       ; $68c7: $c6 $5f
    ld h, d                                       ; $68c9: $62
    ret                                           ; $68ca: $c9


    inc hl                                        ; $68cb: $23
    inc c                                         ; $68cc: $0c
    add a                                         ; $68cd: $87
    dec e                                         ; $68ce: $1d
    ret z                                         ; $68cf: $c8

jr_020_68d0:
    db $dd                                        ; $68d0: $dd
    ld h, c                                       ; $68d1: $61
    rlca                                          ; $68d2: $07
    ld [hl], c                                    ; $68d3: $71
    ld [hl], a                                    ; $68d4: $77
    ret c                                         ; $68d5: $d8

    pop bc                                        ; $68d6: $c1
    ld [$cb21], sp                                ; $68d7: $08 $21 $cb
    ld hl, sp+$1b                                 ; $68da: $f8 $1b
    db $e3                                        ; $68dc: $e3
    jp c, $fe3f                                   ; $68dd: $da $3f $fe

    ld a, d                                       ; $68e0: $7a
    ld e, c                                       ; $68e1: $59
    sub e                                         ; $68e2: $93
    ld h, [hl]                                    ; $68e3: $66
    ld a, [bc]                                    ; $68e4: $0a
    add e                                         ; $68e5: $83
    ld c, h                                       ; $68e6: $4c
    sbc d                                         ; $68e7: $9a
    jp nz, $b32c                                  ; $68e8: $c2 $2c $b3

    cpl                                           ; $68eb: $2f
    ld e, l                                       ; $68ec: $5d
    jr z, @-$53                                   ; $68ed: $28 $ab

    jp nc, $5f90                                  ; $68ef: $d2 $90 $5f

    ld a, [bc]                                    ; $68f2: $0a
    and $e5                                       ; $68f3: $e6 $e5
    pop hl                                        ; $68f5: $e1
    rlca                                          ; $68f6: $07
    ld l, a                                       ; $68f7: $6f
    ld a, l                                       ; $68f8: $7d
    pop de                                        ; $68f9: $d1
    jr c, jr_020_692b                             ; $68fa: $38 $2f

    ld l, c                                       ; $68fc: $69
    ld b, b                                       ; $68fd: $40
    adc c                                         ; $68fe: $89
    ld c, l                                       ; $68ff: $4d
    ld c, h                                       ; $6900: $4c
    ei                                            ; $6901: $fb
    ld a, $20                                     ; $6902: $3e $20
    add h                                         ; $6904: $84
    ld c, $3b                                     ; $6905: $0e $3b
    add h                                         ; $6907: $84
    cp e                                          ; $6908: $bb
    jp $e50e                                      ; $6909: $c3 $0e $e5


    xor $b0                                       ; $690c: $ee $b0
    jp Jump_020_4210                              ; $690e: $c3 $10 $42


    jr jr_020_68d0                                ; $6911: $18 $bd

    jp nc, $542c                                  ; $6913: $d2 $2c $54

    or $0b                                        ; $6916: $f6 $0b
    ld a, a                                       ; $6918: $7f
    ld sp, $57e1                                  ; $6919: $31 $e1 $57
    and l                                         ; $691c: $a5
    ld hl, $b2ef                                  ; $691d: $21 $ef $b2
    ld [hl], l                                    ; $6920: $75
    adc a                                         ; $6921: $8f
    xor a                                         ; $6922: $af
    ldh a, [$63]                                  ; $6923: $f0 $63
    ld c, c                                       ; $6925: $49
    dec [hl]                                      ; $6926: $35
    ld e, a                                       ; $6927: $5f
    sub l                                         ; $6928: $95
    pop hl                                        ; $6929: $e1
    xor a                                         ; $692a: $af

jr_020_692b:
    xor l                                         ; $692b: $ad
    ld d, l                                       ; $692c: $55
    ld a, l                                       ; $692d: $7d
    add [hl]                                      ; $692e: $86

jr_020_692f:
    db $fc                                        ; $692f: $fc
    add $59                                       ; $6930: $c6 $59
    ld l, d                                       ; $6932: $6a
    sub $9f                                       ; $6933: $d6 $9f
    ld a, l                                       ; $6935: $7d
    jp hl                                         ; $6936: $e9


    ld b, d                                       ; $6937: $42
    ld a, c                                       ; $6938: $79
    add [hl]                                      ; $6939: $86
    jr nc, @+$2f                                  ; $693a: $30 $2d

    add hl, hl                                    ; $693c: $29
    jp nc, $6770                                  ; $693d: $d2 $70 $67

    xor c                                         ; $6940: $a9
    add l                                         ; $6941: $85
    ld c, e                                       ; $6942: $4b
    sbc d                                         ; $6943: $9a
    ld c, $48                                     ; $6944: $0e $48
    db $eb                                        ; $6946: $eb
    rst $08                                       ; $6947: $cf
    rst $38                                       ; $6948: $ff
    or e                                          ; $6949: $b3
    ld sp, hl                                     ; $694a: $f9
    db $eb                                        ; $694b: $eb
    jp c, $5af2                                   ; $694c: $da $f2 $5a

    ld b, a                                       ; $694f: $47
    jr jr_020_692f                                ; $6950: $18 $dd

    sub h                                         ; $6952: $94
    ld l, d                                       ; $6953: $6a
    ld a, $d7                                     ; $6954: $3e $d7
    ld e, b                                       ; $6956: $58
    sbc a                                         ; $6957: $9f
    call c, $f8a0                                 ; $6958: $dc $a0 $f8
    jr z, jr_020_69d6                             ; $695b: $28 $79

    xor $2c                                       ; $695d: $ee $2c
    or l                                          ; $695f: $b5
    ld [hl], b                                    ; $6960: $70
    cp h                                          ; $6961: $bc
    ld e, [hl]                                    ; $6962: $5e
    cp a                                          ; $6963: $bf
    inc d                                         ; $6964: $14
    call z, $994e                                 ; $6965: $cc $4e $99
    jp nc, $d86e                                  ; $6968: $d2 $6e $d8

    ld c, c                                       ; $696b: $49
    ld [hl], c                                    ; $696c: $71
    dec h                                         ; $696d: $25
    ld e, a                                       ; $696e: $5f
    ld a, [c]                                     ; $696f: $f2
    ld de, $3d61                                  ; $6970: $11 $61 $3d
    ld c, e                                       ; $6973: $4b
    inc sp                                        ; $6974: $33
    sub l                                         ; $6975: $95
    ld e, a                                       ; $6976: $5f
    sub e                                         ; $6977: $93
    ld h, [hl]                                    ; $6978: $66
    cp h                                          ; $6979: $bc
    ld [de], a                                    ; $697a: $12
    ld a, e                                       ; $697b: $7b
    cp c                                          ; $697c: $b9
    inc d                                         ; $697d: $14
    ld c, h                                       ; $697e: $4c
    dec h                                         ; $697f: $25
    dec c                                         ; $6980: $0d
    or c                                          ; $6981: $b1
    or l                                          ; $6982: $b5
    sbc e                                         ; $6983: $9b
    dec [hl]                                      ; $6984: $35
    ld l, c                                       ; $6985: $69
    inc b                                         ; $6986: $04
    ld a, $da                                     ; $6987: $3e $da
    ld e, l                                       ; $6989: $5d
    scf                                           ; $698a: $37
    adc e                                         ; $698b: $8b
    rst $28                                       ; $698c: $ef
    ld [bc], a                                    ; $698d: $02
    push de                                       ; $698e: $d5
    ld a, h                                       ; $698f: $7c
    and b                                         ; $6990: $a0
    or $23                                        ; $6991: $f6 $23
    inc c                                         ; $6993: $0c
    sub [hl]                                      ; $6994: $96
    ld a, c                                       ; $6995: $79
    ld c, c                                       ; $6996: $49
    inc de                                        ; $6997: $13
    inc d                                         ; $6998: $14
    rst $18                                       ; $6999: $df
    pop af                                        ; $699a: $f1
    ld [hl], d                                    ; $699b: $72
    dec sp                                        ; $699c: $3b
    dec h                                         ; $699d: $25
    or e                                          ; $699e: $b3
    ld a, $5e                                     ; $699f: $3e $5e
    ld h, c                                       ; $69a1: $61
    push hl                                       ; $69a2: $e5
    ld h, e                                       ; $69a3: $63
    rst $20                                       ; $69a4: $e7
    ld d, d                                       ; $69a5: $52
    or b                                          ; $69a6: $b0
    ld h, $0d                                     ; $69a7: $26 $0d
    jp c, $032c                                   ; $69a9: $da $2c $03

    inc de                                        ; $69ac: $13
    inc b                                         ; $69ad: $04
    rrca                                          ; $69ae: $0f
    cp [hl]                                       ; $69af: $be
    ld h, $cd                                     ; $69b0: $26 $cd
    add d                                         ; $69b2: $82

jr_020_69b3:
    sbc h                                         ; $69b3: $9c
    ld a, l                                       ; $69b4: $7d
    adc c                                         ; $69b5: $89
    xor l                                         ; $69b6: $ad
    call c, $6110                                 ; $69b7: $dc $10 $61
    dec a                                         ; $69ba: $3d
    jp z, $afcb                                   ; $69bb: $ca $cb $af

    ld sp, hl                                     ; $69be: $f9
    ld [hl-], a                                   ; $69bf: $32
    sub l                                         ; $69c0: $95
    ld b, a                                       ; $69c1: $47
    ld e, e                                       ; $69c2: $5b
    xor a                                         ; $69c3: $af
    cpl                                           ; $69c4: $2f
    add e                                         ; $69c5: $83
    sub d                                         ; $69c6: $92
    ld h, $32                                     ; $69c7: $26 $32
    xor d                                         ; $69c9: $aa
    ld sp, hl                                     ; $69ca: $f9
    adc d                                         ; $69cb: $8a

jr_020_69cc:
    ld e, d                                       ; $69cc: $5a
    ld a, a                                       ; $69cd: $7f
    ld c, h                                       ; $69ce: $4c
    ld a, c                                       ; $69cf: $79
    ld d, $9f                                     ; $69d0: $16 $9f
    xor l                                         ; $69d2: $ad
    db $fd                                        ; $69d3: $fd
    push hl                                       ; $69d4: $e5
    ld [de], a                                    ; $69d5: $12

jr_020_69d6:
    ld e, e                                       ; $69d6: $5b
    cp h                                          ; $69d7: $bc
    push af                                       ; $69d8: $f5
    sbc a                                         ; $69d9: $9f
    rla                                           ; $69da: $17
    xor l                                         ; $69db: $ad
    ld hl, $960c                                  ; $69dc: $21 $0c $96
    sbc d                                         ; $69df: $9a
    push af                                       ; $69e0: $f5
    rst $10                                       ; $69e1: $d7
    cp $a7                                        ; $69e2: $fe $a7
    push bc                                       ; $69e4: $c5
    call z, $a5fa                                 ; $69e5: $cc $fa $a5
    ld h, b                                       ; $69e8: $60
    halt                                          ; $69e9: $76
    jp z, $349a                                   ; $69ea: $ca $9a $34

    ld a, e                                       ; $69ed: $7b
    db $eb                                        ; $69ee: $eb
    ld c, e                                       ; $69ef: $4b
    jp $9797                                      ; $69f0: $c3 $97 $97


    rst $28                                       ; $69f3: $ef
    add d                                         ; $69f4: $82
    ld bc, $1b47                                  ; $69f5: $01 $47 $1b
    sbc a                                         ; $69f8: $9f
    ld h, l                                       ; $69f9: $65
    db $ec                                        ; $69fa: $ec
    ld [hl-], a                                   ; $69fb: $32
    xor d                                         ; $69fc: $aa
    ld sp, hl                                     ; $69fd: $f9
    add d                                         ; $69fe: $82
    call c, Call_020_5f5b                         ; $69ff: $dc $5b $5f
    ld a, [de]                                    ; $6a02: $1a
    cp [hl]                                       ; $6a03: $be
    cp h                                          ; $6a04: $bc
    inc a                                         ; $6a05: $3c
    jp c, $e32c                                   ; $6a06: $da $2c $e3

    dec d                                         ; $6a09: $15
    ld h, $37                                     ; $6a0a: $26 $37
    jr z, jr_020_69cc                             ; $6a0c: $28 $be

    ld a, [c]                                     ; $6a0e: $f2
    ld a, [c]                                     ; $6a0f: $f2
    call c, $9bb5                                 ; $6a10: $dc $b5 $9b
    dec [hl]                                      ; $6a13: $35
    ld l, c                                       ; $6a14: $69
    ld h, h                                       ; $6a15: $64
    ld d, [hl]                                    ; $6a16: $56

Call_020_6a17:
    dec [hl]                                      ; $6a17: $35
    pop de                                        ; $6a18: $d1
    ld de, $1842                                  ; $6a19: $11 $42 $18
    dec a                                         ; $6a1c: $3d
    jp z, $8405                                   ; $6a1d: $ca $05 $84

    sub b                                         ; $6a20: $90
    sub a                                         ; $6a21: $97
    dec bc                                        ; $6a22: $0b
    cp e                                          ; $6a23: $bb
    jr nc, jr_020_69b3                            ; $6a24: $30 $8d

    ld [hl], c                                    ; $6a26: $71
    pop hl                                        ; $6a27: $e1
    and l                                         ; $6a28: $a5
    rst $28                                       ; $6a29: $ef
    adc d                                         ; $6a2a: $8a
    ld bc, $df16                                  ; $6a2b: $01 $16 $df
    dec b                                         ; $6a2e: $05
    or h                                          ; $6a2f: $b4
    push af                                       ; $6a30: $f5
    db $fc                                        ; $6a31: $fc
    ld e, d                                       ; $6a32: $5a
    adc h                                         ; $6a33: $8c
    ld l, e                                       ; $6a34: $6b
    rst $38                                       ; $6a35: $ff
    ld e, h                                       ; $6a36: $5c
    db $eb                                        ; $6a37: $eb
    sub a                                         ; $6a38: $97
    ld l, d                                       ; $6a39: $6a
    dec sp                                        ; $6a3a: $3b
    rst $08                                       ; $6a3b: $cf
    add b                                         ; $6a3c: $80
    rst $28                                       ; $6a3d: $ef
    add hl, hl                                    ; $6a3e: $29
    ld c, l                                       ; $6a3f: $4d
    ld d, b                                       ; $6a40: $50
    ld b, $37                                     ; $6a41: $06 $37
    ld e, d                                       ; $6a43: $5a
    ld e, a                                       ; $6a44: $5f
    sub $72                                       ; $6a45: $d6 $72
    xor e                                         ; $6a47: $ab
    ld a, d                                       ; $6a48: $7a
    ld a, h                                       ; $6a49: $7c
    ld b, b                                       ; $6a4a: $40
    ld [$d179], sp                                ; $6a4b: $08 $79 $d1
    ld a, [de]                                    ; $6a4e: $1a
    adc h                                         ; $6a4f: $8c
    cp a                                          ; $6a50: $bf
    inc e                                         ; $6a51: $1c
    ld d, l                                       ; $6a52: $55
    ret c                                         ; $6a53: $d8

    jp nz, $6fa4                                  ; $6a54: $c2 $a4 $6f

    db $10                                        ; $6a57: $10
    ld b, d                                       ; $6a58: $42
    sbc [hl]                                      ; $6a59: $9e
    ei                                            ; $6a5a: $fb
    di                                            ; $6a5b: $f3
    call $aced                                    ; $6a5c: $cd $ed $ac
    ld sp, hl                                     ; $6a5f: $f9
    ld [hl-], a                                   ; $6a60: $32
    ei                                            ; $6a61: $fb
    ld h, l                                       ; $6a62: $65
    ld d, b                                       ; $6a63: $50
    sub l                                         ; $6a64: $95
    call z, Call_000_3088                         ; $6a65: $cc $88 $30
    dec l                                         ; $6a68: $2d
    ld b, l                                       ; $6a69: $45
    ld h, e                                       ; $6a6a: $63
    inc e                                         ; $6a6b: $1c
    rst $38                                       ; $6a6c: $ff
    dec bc                                        ; $6a6d: $0b
    ld [hl], d                                    ; $6a6e: $72
    sbc [hl]                                      ; $6a6f: $9e
    di                                            ; $6a70: $f3
    ld a, [c]                                     ; $6a71: $f2
    and e                                         ; $6a72: $a3
    rst $20                                       ; $6a73: $e7
    ldh [$b3], a                                  ; $6a74: $e0 $b3
    xor d                                         ; $6a76: $aa
    adc c                                         ; $6a77: $89
    ld a, $4a                                     ; $6a78: $3e $4a
    sbc [hl]                                      ; $6a7a: $9e
    dec sp                                        ; $6a7b: $3b
    cp b                                          ; $6a7c: $b8
    jp nc, $0315                                  ; $6a7d: $d2 $15 $03

    ld b, a                                       ; $6a80: $47
    dec [hl]                                      ; $6a81: $35
    rst $08                                       ; $6a82: $cf
    dec e                                         ; $6a83: $1d
    rst $38                                       ; $6a84: $ff
    add e                                         ; $6a85: $83
    sub d                                         ; $6a86: $92
    ld h, $b2                                     ; $6a87: $26 $b2
    dec d                                         ; $6a89: $15
    inc hl                                        ; $6a8a: $23
    jp nc, $ada0                                  ; $6a8b: $d2 $a0 $ad

    ld d, l                                       ; $6a8e: $55
    ld b, l                                       ; $6a8f: $45
    sbc d                                         ; $6a90: $9a
    sub l                                         ; $6a91: $95
    sub a                                         ; $6a92: $97
    xor a                                         ; $6a93: $af
    pop bc                                        ; $6a94: $c1
    sbc d                                         ; $6a95: $9a

jr_020_6a96:
    sub a                                         ; $6a96: $97
    add l                                         ; $6a97: $85
    ld c, c                                       ; $6a98: $49
    rst $18                                       ; $6a99: $df
    ld c, h                                       ; $6a9a: $4c
    xor c                                         ; $6a9b: $a9
    ld [hl], $2f                                  ; $6a9c: $36 $2f
    cp a                                          ; $6a9e: $bf
    ld a, b                                       ; $6a9f: $78
    pop bc                                        ; $6aa0: $c1
    sub a                                         ; $6aa1: $97
    or $f8                                        ; $6aa2: $f6 $f8
    and d                                         ; $6aa4: $a2
    cp [hl]                                       ; $6aa5: $be
    ld b, [hl]                                    ; $6aa6: $46
    ld b, a                                       ; $6aa7: $47
    rst $38                                       ; $6aa8: $ff
    inc c                                         ; $6aa9: $0c
    ld l, l                                       ; $6aaa: $6d
    ld b, a                                       ; $6aab: $47
    sbc e                                         ; $6aac: $9b
    ld h, [hl]                                    ; $6aad: $66
    ld l, a                                       ; $6aae: $6f
    ld a, l                                       ; $6aaf: $7d
    ld l, c                                       ; $6ab0: $69
    cp h                                          ; $6ab1: $bc
    ld e, h                                       ; $6ab2: $5c
    ld a, [bc]                                    ; $6ab3: $0a
    sub [hl]                                      ; $6ab4: $96
    inc [hl]                                      ; $6ab5: $34
    cpl                                           ; $6ab6: $2f
    cp a                                          ; $6ab7: $bf
    ld a, b                                       ; $6ab8: $78
    pop bc                                        ; $6ab9: $c1
    pop de                                        ; $6aba: $d1
    inc l                                         ; $6abb: $2c
    or l                                          ; $6abc: $b5
    jr jr_020_6a96                                ; $6abd: $18 $d7

    cp c                                          ; $6abf: $b9
    ld d, l                                       ; $6ac0: $55
    ld a, l                                       ; $6ac1: $7d
    and [hl]                                      ; $6ac2: $a6
    inc sp                                        ; $6ac3: $33
    cpl                                           ; $6ac4: $2f
    cp a                                          ; $6ac5: $bf
    ld h, $4d                                     ; $6ac6: $26 $4d
    rst $18                                       ; $6ac8: $df
    ld [hl], l                                    ; $6ac9: $75
    ld c, d                                       ; $6aca: $4a
    cp [hl]                                       ; $6acb: $be
    ld l, a                                       ; $6acc: $6f
    cp [hl]                                       ; $6acd: $be
    xor b                                         ; $6ace: $a8
    ld [hl], e                                    ; $6acf: $73
    rst $20                                       ; $6ad0: $e7
    push hl                                       ; $6ad1: $e5
    ld l, c                                       ; $6ad2: $69
    pop hl                                        ; $6ad3: $e1
    cp a                                          ; $6ad4: $bf

jr_020_6ad5:
    xor a                                         ; $6ad5: $af
    ld c, c                                       ; $6ad6: $49
    or e                                          ; $6ad7: $b3
    ld c, e                                       ; $6ad8: $4b
    or e                                          ; $6ad9: $b3
    dec h                                         ; $6ada: $25
    ret                                           ; $6adb: $c9


    sub a                                         ; $6adc: $97
    or $8e                                        ; $6add: $f6 $8e
    sub a                                         ; $6adf: $97
    ld c, e                                       ; $6ae0: $4b
    ld b, c                                       ; $6ae1: $41
    cp d                                          ; $6ae2: $ba
    inc bc                                        ; $6ae3: $03
    jp nz, $8b3d                                  ; $6ae4: $c2 $3d $8b

    ld a, [$cc2e]                                 ; $6ae7: $fa $2e $cc
    res 5, a                                      ; $6aea: $cb $af
    ld c, c                                       ; $6aec: $49
    db $d3                                        ; $6aed: $d3
    ld [hl], a                                    ; $6aee: $77
    sbc l                                         ; $6aef: $9d
    sub d                                         ; $6af0: $92
    rst $28                                       ; $6af1: $ef
    sbc e                                         ; $6af2: $9b
    cpl                                           ; $6af3: $2f
    ld [$315d], a                                 ; $6af4: $ea $5d $31
    db $dd                                        ; $6af7: $dd
    sub h                                         ; $6af8: $94
    ld l, d                                       ; $6af9: $6a
    ld a, $ff                                     ; $6afa: $3e $ff
    jr jr_020_6ad5                                ; $6afc: $18 $d7

    ld a, h                                       ; $6afe: $7c
    ld b, c                                       ; $6aff: $41
    ld e, e                                       ; $6b00: $5b
    ld l, e                                       ; $6b01: $6b
    ld b, $bc                                     ; $6b02: $06 $bc
    adc d                                         ; $6b04: $8a
    jp $06da                                      ; $6b05: $c3 $da $06


    ld l, $3d                                     ; $6b08: $2e $3d
    nop                                           ; $6b0a: $00
    jp c, $fe5a                                   ; $6b0b: $da $5a $fe

    rst $10                                       ; $6b0e: $d7
    ld a, h                                       ; $6b0f: $7c
    ld e, c                                       ; $6b10: $59
    ld a, [de]                                    ; $6b11: $1a
    add a                                         ; $6b12: $87
    res 3, [hl]                                   ; $6b13: $cb $9e
    cp e                                          ; $6b15: $bb
    ld d, [hl]                                    ; $6b16: $56
    dec d                                         ; $6b17: $15
    ld l, c                                       ; $6b18: $69
    db $10                                        ; $6b19: $10
    ld b, $3d                                     ; $6b1a: $06 $3d
    adc d                                         ; $6b1c: $8a
    ld d, d                                       ; $6b1d: $52
    dec e                                         ; $6b1e: $1d
    ld h, [hl]                                    ; $6b1f: $66
    and a                                         ; $6b20: $a7
    inc c                                         ; $6b21: $0c
    inc a                                         ; $6b22: $3c
    dec sp                                        ; $6b23: $3b
    sbc l                                         ; $6b24: $9d
    ld c, e                                       ; $6b25: $4b
    pop bc                                        ; $6b26: $c1
    ld l, $21                                     ; $6b27: $2e $21
    inc c                                         ; $6b29: $0c
    db $dd                                        ; $6b2a: $dd
    ld [hl-], a                                   ; $6b2b: $32
    db $fc                                        ; $6b2c: $fc
    pop bc                                        ; $6b2d: $c1
    rst $38                                       ; $6b2e: $ff
    inc c                                         ; $6b2f: $0c
    ld c, h                                       ; $6b30: $4c
    inc bc                                        ; $6b31: $03
    cp l                                          ; $6b32: $bd
    inc [hl]                                      ; $6b33: $34
    ret z                                         ; $6b34: $c8

    inc h                                         ; $6b35: $24
    add h                                         ; $6b36: $84
    ld bc, $ca3d                                  ; $6b37: $01 $3d $ca

jr_020_6b3a:
    adc a                                         ; $6b3a: $8f
    ld h, l                                       ; $6b3b: $65
    ld c, d                                       ; $6b3c: $4a
    dec c                                         ; $6b3d: $0d
    and $45                                       ; $6b3e: $e6 $45
    ld a, l                                       ; $6b40: $7d
    cp h                                          ; $6b41: $bc
    ld [hl], $dc                                  ; $6b42: $36 $dc
    pop bc                                        ; $6b44: $c1
    dec d                                         ; $6b45: $15
    add h                                         ; $6b46: $84
    ld bc, $bf3d                                  ; $6b47: $01 $3d $bf
    ld h, $3f                                     ; $6b4a: $26 $3f
    ld l, l                                       ; $6b4c: $6d
    and a                                         ; $6b4d: $a7
    pop af                                        ; $6b4e: $f1
    ld a, c                                       ; $6b4f: $79
    xor [hl]                                      ; $6b50: $ae
    adc d                                         ; $6b51: $8a
    add hl, bc                                    ; $6b52: $09
    ccf                                           ; $6b53: $3f
    dec sp                                        ; $6b54: $3b
    ld h, l                                       ; $6b55: $65
    pop de                                        ; $6b56: $d1
    ld d, b                                       ; $6b57: $50
    ld d, l                                       ; $6b58: $55
    cp b                                          ; $6b59: $b8
    add e                                         ; $6b5a: $83
    dec hl                                        ; $6b5b: $2b
    ld l, b                                       ; $6b5c: $68
    or e                                          ; $6b5d: $b3
    adc h                                         ; $6b5e: $8c
    dec h                                         ; $6b5f: $25
    push de                                       ; $6b60: $d5
    ld a, h                                       ; $6b61: $7c
    ld e, [hl]                                    ; $6b62: $5e

jr_020_6b63:
    ld l, $d5                                     ; $6b63: $2e $d5
    rst $10                                       ; $6b65: $d7
    and h                                         ; $6b66: $a4
    add hl, de                                    ; $6b67: $19
    xor a                                         ; $6b68: $af
    db $e4                                        ; $6b69: $e4
    di                                            ; $6b6a: $f3
    inc e                                         ; $6b6b: $1c
    xor a                                         ; $6b6c: $af
    ld e, [hl]                                    ; $6b6d: $5e
    sub l                                         ; $6b6e: $95
    add hl, de                                    ; $6b6f: $19
    ret c                                         ; $6b70: $d8

    xor e                                         ; $6b71: $ab
    inc hl                                        ; $6b72: $23
    inc c                                         ; $6b73: $0c
    dec a                                         ; $6b74: $3d
    adc d                                         ; $6b75: $8a
    ld d, d                                       ; $6b76: $52
    dec e                                         ; $6b77: $1d
    ld h, [hl]                                    ; $6b78: $66
    and a                                         ; $6b79: $a7
    xor h                                         ; $6b7a: $ac
    xor l                                         ; $6b7b: $ad
    ld d, h                                       ; $6b7c: $54
    cp a                                          ; $6b7d: $bf
    inc d                                         ; $6b7e: $14
    ld c, h                                       ; $6b7f: $4c
    ld a, l                                       ; $6b80: $7d
    rst $00                                       ; $6b81: $c7
    res 4, l                                      ; $6b82: $cb $a5
    jr nz, jr_020_6b63                            ; $6b84: $20 $dd

    ld bc, $a761                                  ; $6b86: $01 $61 $a7
    sbc [hl]                                      ; $6b89: $9e
    adc b                                         ; $6b8a: $88
    db $30                                        ; $6b8b: $30

    db $ad, $1f, $63, $22, $0c, $3d, $8a, $52, $7d, $4d, $1a, $84, $01

    dec a                                         ; $6b99: $3d
    jp z, $4a0f                                   ; $6b9a: $ca $0f $4a

    halt                                          ; $6b9d: $76
    ld h, b                                       ; $6b9e: $60
    db $fc                                        ; $6b9f: $fc
    adc l                                         ; $6ba0: $8d
    ld [hl], c                                    ; $6ba1: $71
    ld l, l                                       ; $6ba2: $6d
    db $d3                                        ; $6ba3: $d3
    xor h                                         ; $6ba4: $ac
    xor l                                         ; $6ba5: $ad
    ld d, l                                       ; $6ba6: $55
    ld a, l                                       ; $6ba7: $7d
    ld a, h                                       ; $6ba8: $7c
    ld d, c                                       ; $6ba9: $51
    sbc a                                         ; $6baa: $9f
    sub a                                         ; $6bab: $97
    ld l, a                                       ; $6bac: $6f
    ld b, $1f                                     ; $6bad: $06 $1f
    db $e3                                        ; $6baf: $e3
    sbc d                                         ; $6bb0: $9a
    inc [hl]                                      ; $6bb1: $34
    ld [$f521], sp                                ; $6bb2: $08 $21 $f5
    ret                                           ; $6bb5: $c9


    inc sp                                        ; $6bb6: $33
    ld d, e                                       ; $6bb7: $53
    dec a                                         ; $6bb8: $3d
    ld e, e                                       ; $6bb9: $5b
    ld b, a                                       ; $6bba: $47
    ld l, [hl]                                    ; $6bbb: $6e
    push af                                       ; $6bbc: $f5
    ret nz                                        ; $6bbd: $c0

    ld e, l                                       ; $6bbe: $5d
    jp c, $d2ab                                   ; $6bbf: $da $ab $d2

    ld [$c23c], sp                                ; $6bc2: $08 $3c $c2
    cp l                                          ; $6bc5: $bd
    jp nc, $e4d4                                  ; $6bc6: $d2 $d4 $e4

    ld d, a                                       ; $6bc9: $57
    ld l, [hl]                                    ; $6bca: $6e
    ret c                                         ; $6bcb: $d8

    ld h, l                                       ; $6bcc: $65
    sub [hl]                                      ; $6bcd: $96
    add l                                         ; $6bce: $85
    xor a                                         ; $6bcf: $af
    call nz, $935d                                ; $6bd0: $c4 $5d $93
    and [hl]                                      ; $6bd3: $a6
    ld h, $bf                                     ; $6bd4: $26 $bf
    ld h, $4d                                     ; $6bd6: $26 $4d
    sub a                                         ; $6bd8: $97
    ld e, c                                       ; $6bd9: $59
    ld d, $be                                     ; $6bda: $16 $be
    ld [de], a                                    ; $6bdc: $12
    ld [hl], a                                    ; $6bdd: $77
    ld c, l                                       ; $6bde: $4d
    sbc d                                         ; $6bdf: $9a
    sbc d                                         ; $6be0: $9a
    db $fc                                        ; $6be1: $fc
    ld e, d                                       ; $6be2: $5a
    ld d, l                                       ; $6be3: $55
    and h                                         ; $6be4: $a4
    ld e, c                                       ; $6be5: $59
    rst $30                                       ; $6be6: $f7
    ld [hl], h                                    ; $6be7: $74
    ld a, a                                       ; $6be8: $7f
    jp hl                                         ; $6be9: $e9


    add d                                         ; $6bea: $82
    ld bc, $54dd                                  ; $6beb: $01 $dd $54
    sbc $36                                       ; $6bee: $de $36
    ld [hl], c                                    ; $6bf0: $71
    ld l, c                                       ; $6bf1: $69
    rst $08                                       ; $6bf2: $cf
    rrc a                                         ; $6bf3: $cb $0f
    ld l, $fb                                     ; $6bf5: $2e $fb
    ld l, c                                       ; $6bf7: $69
    adc h                                         ; $6bf8: $8c
    rst $18                                       ; $6bf9: $df

Call_020_6bfa:
    nop                                           ; $6bfa: $00
    ld b, d                                       ; $6bfb: $42
    ld [$fc32], sp                                ; $6bfc: $08 $32 $fc
    or l                                          ; $6bff: $b5
    ld l, a                                       ; $6c00: $6f
    jr nc, jr_020_6c54                            ; $6c01: $30 $51

    add a                                         ; $6c03: $87
    push bc                                       ; $6c04: $c5
    ld l, e                                       ; $6c05: $6b
    db $fd                                        ; $6c06: $fd
    ld a, c                                       ; $6c07: $79
    ld a, c                                       ; $6c08: $79
    ld a, c                                       ; $6c09: $79
    add h                                         ; $6c0a: $84
    ld bc, $24c7                                  ; $6c0b: $01 $c7 $24
    push de                                       ; $6c0e: $d5
    ld a, h                                       ; $6c0f: $7c
    ld h, d                                       ; $6c10: $62
    ld l, b                                       ; $6c11: $68
    or [hl]                                       ; $6c12: $b6
    ld h, h                                       ; $6c13: $64
    cp b                                          ; $6c14: $b8
    or a                                          ; $6c15: $b7
    cp [hl]                                       ; $6c16: $be
    inc [hl]                                      ; $6c17: $34
    xor e                                         ; $6c18: $ab
    db $e4                                        ; $6c19: $e4
    push de                                       ; $6c1a: $d5
    adc l                                         ; $6c1b: $8d
    db $fc                                        ; $6c1c: $fc
    sbc d                                         ; $6c1d: $9a
    inc [hl]                                      ; $6c1e: $34
    ld a, e                                       ; $6c1f: $7b
    xor d                                         ; $6c20: $aa
    jp nc, $bf90                                  ; $6c21: $d2 $90 $bf

    and b                                         ; $6c24: $a0
    push af                                       ; $6c25: $f5
    ld c, d                                       ; $6c26: $4a
    or e                                          ; $6c27: $b3
    ld c, d                                       ; $6c28: $4a
    xor c                                         ; $6c29: $a9
    and $63                                       ; $6c2a: $e6 $63
    ld l, a                                       ; $6c2c: $6f
    cp a                                          ; $6c2d: $bf
    ld a, [$25c0]                                 ; $6c2e: $fa $c0 $25
    add hl, hl                                    ; $6c31: $29
    ld a, b                                       ; $6c32: $78
    ld e, c                                       ; $6c33: $59
    dec h                                         ; $6c34: $25
    xor a                                         ; $6c35: $af
    ld l, [hl]                                    ; $6c36: $6e
    db $e4                                        ; $6c37: $e4
    ld h, c                                       ; $6c38: $61
    ld d, c                                       ; $6c39: $51
    db $fd                                        ; $6c3a: $fd
    ld h, l                                       ; $6c3b: $65
    add [hl]                                      ; $6c3c: $86
    ld [c], a                                     ; $6c3d: $e2
    inc bc                                        ; $6c3e: $03
    xor h                                         ; $6c3f: $ac
    ld c, c                                       ; $6c40: $49
    inc sp                                        ; $6c41: $33
    or $f6                                        ; $6c42: $f6 $f6
    xor e                                         ; $6c44: $ab
    adc a                                         ; $6c45: $8f
    ld a, a                                       ; $6c46: $7f
    xor l                                         ; $6c47: $ad
    cp a                                          ; $6c48: $bf
    xor h                                         ; $6c49: $ac
    sub d                                         ; $6c4a: $92
    ld d, a                                       ; $6c4b: $57
    scf                                           ; $6c4c: $37
    ld a, [c]                                     ; $6c4d: $f2
    jr nc, @+$4c                                  ; $6c4e: $30 $4a

    ld e, $61                                     ; $6c50: $1e $61
    rst $00                                       ; $6c52: $c7
    ld e, h                                       ; $6c53: $5c

jr_020_6c54:
    dec c                                         ; $6c54: $0d
    sub d                                         ; $6c55: $92
    halt                                          ; $6c56: $76
    ld d, h                                       ; $6c57: $54
    adc h                                         ; $6c58: $8c
    rst $18                                       ; $6c59: $df
    db $ec                                        ; $6c5a: $ec
    jp nz, Jump_000_136c                          ; $6c5b: $c2 $6c $13

    db $e3                                        ; $6c5e: $e3
    jp nc, $5b5e                                  ; $6c5f: $d2 $5e $5b

    dec h                                         ; $6c62: $25
    ret nc                                        ; $6c63: $d0

    ld c, e                                       ; $6c64: $4b
    add b                                         ; $6c65: $80
    db $10                                        ; $6c66: $10
    cp d                                          ; $6c67: $ba
    ld e, [hl]                                    ; $6c68: $5e
    add e                                         ; $6c69: $83
    cp l                                          ; $6c6a: $bd
    ld b, d                                       ; $6c6b: $42
    inc sp                                        ; $6c6c: $33
    rst $08                                       ; $6c6d: $cf
    ld b, c                                       ; $6c6e: $41
    rst $20                                       ; $6c6f: $e7
    adc c                                         ; $6c70: $89
    call Call_000_1733                            ; $6c71: $cd $33 $17
    sbc d                                         ; $6c74: $9a
    xor d                                         ; $6c75: $aa
    jr nz, jr_020_6c84                            ; $6c76: $20 $0c

    rst $00                                       ; $6c78: $c7
    cp h                                          ; $6c79: $bc
    db $fd                                        ; $6c7a: $fd
    ld [$5fe3], a                                 ; $6c7b: $ea $e3 $5f
    db $eb                                        ; $6c7e: $eb
    cpl                                           ; $6c7f: $2f
    dec bc                                        ; $6c80: $0b
    sub e                                         ; $6c81: $93
    ret nz                                        ; $6c82: $c0

    ld e, a                                       ; $6c83: $5f

jr_020_6c84:
    ld h, b                                       ; $6c84: $60
    sub h                                         ; $6c85: $94
    inc a                                         ; $6c86: $3c
    ld [hl], a                                    ; $6c87: $77
    ld c, d                                       ; $6c88: $4a
    ld l, h                                       ; $6c89: $6c
    ld c, l                                       ; $6c8a: $4d
    sbc d                                         ; $6c8b: $9a
    ld e, d                                       ; $6c8c: $5a
    adc h                                         ; $6c8d: $8c
    ld h, e                                       ; $6c8e: $63
    ld l, a                                       ; $6c8f: $6f
    cp a                                          ; $6c90: $bf
    ld a, [$25c0]                                 ; $6c91: $fa $c0 $25
    add hl, hl                                    ; $6c94: $29
    ld a, b                                       ; $6c95: $78
    ld e, c                                       ; $6c96: $59
    sbc b                                         ; $6c97: $98
    inc b                                         ; $6c98: $04
    cp $02                                        ; $6c99: $fe $02
    adc e                                         ; $6c9b: $8b
    ld [$082f], a                                 ; $6c9c: $ea $2f $08
    inc bc                                        ; $6c9f: $03
    ld d, $7b                                     ; $6ca0: $16 $7b
    ld c, l                                       ; $6ca2: $4d
    sbc d                                         ; $6ca3: $9a
    add c                                         ; $6ca4: $81
    sbc e                                         ; $6ca5: $9b
    or $9a                                        ; $6ca6: $f6 $9a
    inc [hl]                                      ; $6ca8: $34
    ld [hl-], a                                   ; $6ca9: $32
    rst $08                                       ; $6caa: $cf
    rst $20                                       ; $6cab: $e7
    ld l, $65                                     ; $6cac: $2e $65
    cp d                                          ; $6cae: $ba
    ld h, d                                       ; $6caf: $62
    add d                                         ; $6cb0: $82
    sbc a                                         ; $6cb1: $9f
    xor b                                         ; $6cb2: $a8
    ld c, a                                       ; $6cb3: $4f
    db $dd                                        ; $6cb4: $dd
    or l                                          ; $6cb5: $b5
    xor d                                         ; $6cb6: $aa
    jp $349a                                      ; $6cb7: $c3 $9a $34


    call c, $2f59                                 ; $6cba: $dc $59 $2f
    ld e, h                                       ; $6cbd: $5c
    sbc a                                         ; $6cbe: $9f
    sub a                                         ; $6cbf: $97
    ld e, a                                       ; $6cc0: $5f
    ld a, c                                       ; $6cc1: $79
    adc l                                         ; $6cc2: $8d
    cpl                                           ; $6cc3: $2f
    ld [$4703], sp                                ; $6cc4: $08 $03 $47
    ccf                                           ; $6cc7: $3f
    ld hl, sp-$44                                 ; $6cc8: $f8 $bc
    ld e, h                                       ; $6cca: $5c
    ld a, [bc]                                    ; $6ccb: $0a
    and [hl]                                      ; $6ccc: $a6
    db $ed                                        ; $6ccd: $ed
    inc [hl]                                      ; $6cce: $34
    ld a, $2f                                     ; $6ccf: $3e $2f
    ccf                                           ; $6cd1: $3f
    jr z, @-$25                                   ; $6cd2: $28 $d9

    xor c                                         ; $6cd4: $a9
    rst $38                                       ; $6cd5: $ff
    ld [hl], a                                    ; $6cd6: $77
    ld e, [hl]                                    ; $6cd7: $5e
    ld h, b                                       ; $6cd8: $60
    push hl                                       ; $6cd9: $e5
    push hl                                       ; $6cda: $e5
    ld [hl], a                                    ; $6cdb: $77
    ld h, c                                       ; $6cdc: $61
    ld e, [hl]                                    ; $6cdd: $5e
    cp [hl]                                       ; $6cde: $be
    xor c                                         ; $6cdf: $a9
    ret                                           ; $6ce0: $c9


    ld c, a                                       ; $6ce1: $4f
    ld h, e                                       ; $6ce2: $63
    ld e, h                                       ; $6ce3: $5c
    ld c, c                                       ; $6ce4: $49
    ld a, d                                       ; $6ce5: $7a
    ld [hl], b                                    ; $6ce6: $70
    add h                                         ; $6ce7: $84
    ld bc, $6aad                                  ; $6ce8: $01 $ad $6a
    db $fd                                        ; $6ceb: $fd
    dec [hl]                                      ; $6cec: $35
    ld l, c                                       ; $6ced: $69
    ld h, [hl]                                    ; $6cee: $66
    and a                                         ; $6cef: $a7
    ld hl, $a536                                  ; $6cf0: $21 $36 $a5
    ld h, [hl]                                    ; $6cf3: $66
    push hl                                       ; $6cf4: $e5
    ld [hl-], a                                   ; $6cf5: $32
    or $b4                                        ; $6cf6: $f6 $b4
    db $eb                                        ; $6cf8: $eb
    rra                                           ; $6cf9: $1f
    jp nz, $f79a                                  ; $6cfa: $c2 $9a $f7

    xor [hl]                                      ; $6cfd: $ae
    ld e, e                                       ; $6cfe: $5b
    adc a                                         ; $6cff: $8f
    ld a, [c]                                     ; $6d00: $f2
    ld a, [c]                                     ; $6d01: $f2
    ld d, e                                       ; $6d02: $53
    ld sp, hl                                     ; $6d03: $f9
    add l                                         ; $6d04: $85
    ld c, d                                       ; $6d05: $4a
    call $c634                                    ; $6d06: $cd $34 $c6
    xor c                                         ; $6d09: $a9
    and h                                         ; $6d0a: $a4
    ld hl, $b686                                  ; $6d0b: $21 $86 $b6
    sbc [hl]                                      ; $6d0e: $9e
    and l                                         ; $6d0f: $a5
    pop hl                                        ; $6d10: $e1
    adc $b2                                       ; $6d11: $ce $b2
    or $fb                                        ; $6d13: $f6 $fb

jr_020_6d15:
    cp h                                          ; $6d15: $bc
    cp h                                          ; $6d16: $bc
    db $fc                                        ; $6d17: $fc
    ld l, $ec                                     ; $6d18: $2e $ec
    xor l                                         ; $6d1a: $ad
    ld c, a                                       ; $6d1b: $4f
    ld c, e                                       ; $6d1c: $4b
    ld a, [$825d]                                 ; $6d1d: $fa $5d $82
    bit 7, [hl]                                   ; $6d20: $cb $7e
    ld e, [hl]                                    ; $6d22: $5e
    call nc, Call_020_56d7                        ; $6d23: $d4 $d7 $56
    sub c                                         ; $6d26: $91
    adc a                                         ; $6d27: $8f
    ld [$dd03], sp                                ; $6d28: $08 $03 $dd
    push de                                       ; $6d2b: $d5
    ret nz                                        ; $6d2c: $c0

    xor a                                         ; $6d2d: $af
    and l                                         ; $6d2e: $a5
    sub d                                         ; $6d2f: $92
    ld a, a                                       ; $6d30: $7f
    ld e, d                                       ; $6d31: $5a
    db $eb                                        ; $6d32: $eb
    bit 4, e                                      ; $6d33: $cb $63
    dec a                                         ; $6d35: $3d
    ccf                                           ; $6d36: $3f
    ld d, [hl]                                    ; $6d37: $56
    add hl, de                                    ; $6d38: $19
    cp $3c                                        ; $6d39: $fe $3c
    ld [hl], a                                    ; $6d3b: $77
    db $ec                                        ; $6d3c: $ec
    scf                                           ; $6d3d: $37
    ld sp, $b03b                                  ; $6d3e: $31 $3b $b0
    ld d, e                                       ; $6d41: $53
    ld sp, hl                                     ; $6d42: $f9
    cp b                                          ; $6d43: $b8
    ld h, e                                       ; $6d44: $63
    jp $ca4e                                      ; $6d45: $c3 $4e $ca


    dec [hl]                                      ; $6d48: $35
    ld hl, $cf5a                                  ; $6d49: $21 $5a $cf
    and d                                         ; $6d4c: $a2
    cp [hl]                                       ; $6d4d: $be
    and $55                                       ; $6d4e: $e6 $55
    cp b                                          ; $6d50: $b8
    db $eb                                        ; $6d51: $eb
    call nz, $f857                                ; $6d52: $c4 $57 $f8
    xor [hl]                                      ; $6d55: $ae
    jr jr_020_6d15                                ; $6d56: $18 $bd

    ld e, [hl]                                    ; $6d58: $5e
    and l                                         ; $6d59: $a5
    db $eb                                        ; $6d5a: $eb
    ld a, d                                       ; $6d5b: $7a
    ld d, $f5                                     ; $6d5c: $16 $f5
    or c                                          ; $6d5e: $b1
    ld e, h                                       ; $6d5f: $5c
    sub e                                         ; $6d60: $93
    ld h, [hl]                                    ; $6d61: $66
    pop hl                                        ; $6d62: $e1
    dec hl                                        ; $6d63: $2b
    ld [hl], l                                    ; $6d64: $75
    push bc                                       ; $6d65: $c5
    dec a                                         ; $6d66: $3d
    adc e                                         ; $6d67: $8b
    ld a, [$579a]                                 ; $6d68: $fa $9a $57
    sbc c                                         ; $6d6b: $99
    jp z, Jump_020_49af                           ; $6d6c: $ca $af $49

    or e                                          ; $6d6f: $b3
    ld c, e                                       ; $6d70: $4b
    ld l, e                                       ; $6d71: $6b
    call Call_020_5780                            ; $6d72: $cd $80 $57
    ld [hl], c                                    ; $6d75: $71
    add sp, -$46                                  ; $6d76: $e8 $ba
    db $e3                                        ; $6d78: $e3
    xor [hl]                                      ; $6d79: $ae
    add b                                         ; $6d7a: $80
    ld [hl], a                                    ; $6d7b: $77
    ld e, l                                       ; $6d7c: $5d
    bit 2, a                                      ; $6d7d: $cb $57
    ld c, c                                       ; $6d7f: $49
    xor h                                         ; $6d80: $ac
    dec hl                                        ; $6d81: $2b
    ld b, $96                                     ; $6d82: $06 $96
    ld e, d                                       ; $6d84: $5a
    jr c, @+$4c                                   ; $6d85: $38 $4a

    rst $18                                       ; $6d87: $df
    and l                                         ; $6d88: $a5
    or l                                          ; $6d89: $b5
    ld h, [hl]                                    ; $6d8a: $66
    ret nz                                        ; $6d8b: $c0

    xor e                                         ; $6d8c: $ab
    jr c, @+$72                                   ; $6d8d: $38 $70

    rst $10                                       ; $6d8f: $d7
    cp h                                          ; $6d90: $bc
    inc hl                                        ; $6d91: $23
    inc c                                         ; $6d92: $0c
    dec l                                         ; $6d93: $2d
    add hl, hl                                    ; $6d94: $29
    jp nc, $c770                                  ; $6d95: $d2 $70 $c7

    rst $38                                       ; $6d98: $ff
    ld a, [hl+]                                   ; $6d99: $2a
    and l                                         ; $6d9a: $a5
    sbc d                                         ; $6d9b: $9a
    ld c, a                                       ; $6d9c: $4f
    ld e, [hl]                                    ; $6d9d: $5e
    ld h, e                                       ; $6d9e: $63
    ld l, h                                       ; $6d9f: $6c
    ld b, $1f                                     ; $6da0: $06 $1f
    db $e3                                        ; $6da2: $e3
    inc a                                         ; $6da3: $3c
    rst $10                                       ; $6da4: $d7
    and h                                         ; $6da5: $a4
    ld b, c                                       ; $6da6: $41
    dec sp                                        ; $6da7: $3b
    add hl, hl                                    ; $6da8: $29
    or e                                          ; $6da9: $b3
    ld a, $95                                     ; $6daa: $3e $95
    inc [hl]                                      ; $6dac: $34
    call nz, $ed76                                ; $6dad: $c4 $76 $ed
    dec [hl]                                      ; $6db0: $35
    ld l, c                                       ; $6db1: $69
    ld d, $6f                                     ; $6db2: $16 $6f
    db $fd                                        ; $6db4: $fd
    cp c                                          ; $6db5: $b9
    di                                            ; $6db6: $f3
    sub d                                         ; $6db7: $92
    ld h, $28                                     ; $6db8: $26 $28
    ld l, b                                       ; $6dba: $68
    rst $00                                       ; $6dbb: $c7
    ld h, a                                       ; $6dbc: $67
    or d                                          ; $6dbd: $b2
    ld sp, $106d                                  ; $6dbe: $31 $6d $10
    db $06                                        ; $6dc1: $06

    db $3d, $ca, $cb, $ef, $c2, $92, $62, $b3, $a4, $1f, $af, $c4, $66, $a7, $ec, $ad
    db $2f, $cd, $f8, $cb, $51, $85, $a1, $f5, $fc, $5a, $8c, $2b, $6a, $fd, $79, $ce
    db $1f, $7c, $3a, $fb, $f9, $b5, $df, $4e, $f9, $f1, $3f, $fb, $12, $5b, $93, $46
    db $00, $ad, $87, $34, $f3, $72, $61, $49, $3f, $fb, $0a, $38, $c2, $a7, $b6, $ad
    db $37, $0d, $c4, $66, $94, $3e, $2f, $3f, $b9, $41, $f1, $25, $fd, $ec, $94, $35
    db $69, $d0, $4e, $d6, $a6, $fd, $6b, $d2, $d4, $62, $5c, $51, $eb, $af, $fd, $ee
    db $2f, $8b, $a6, $aa, $8f, $bf, $5e, $e6, $e5, $c2, $78, $25, $86, $30, $2d, $7e
    db $63, $1c, $a5, $8f, $4f, $a9, $5f, $0a, $ba, $6e, $bd, $d2, $2c, $34, $e0, $a3
    db $7f, $36, $9d, $f5, $a5, $19, $74, $be, $ba, $1a, $c7, $2b, $31, $84, $b6, $d6
    db $30, $44, $08, $59, $56, $d4, $fa, $53, $da, $65, $af, $08, $21, $0c, $3d, $bf
    db $66, $fd, $d9, $69, $88, $ed, $3c, $03, $3e, $2f, $3f, $5e, $89, $cd, $4e, $59
    db $93, $86, $bb, $56, $15, $69, $d6, $3d, $dd, $5f, $d0, $2c, $be, $0b, $fb, $f3
    db $cd, $ed, $74, $9e, $8d, $bf, $5e, $e6, $e5, $07, $9d, $8f, $11, $76, $5c, $bc
    db $9d, $27, $96, $53, $62, $3b, $f3, $25, $bc, $31, $de, $34, $b0, $33, $28, $b9
    db $e3, $cb, $ad, $ca, $f8, $1b, $e3, $3a, $92, $fe, $95, $af, $49, $b3, $4b, $0b
    db $35, $b8, $d5, $9e, $aa, $34, $e4, $2f, $80, $30, $96, $55, $4a, $35, $5f, $47
    db $9b, $d9, $29, $bb, $ce, $9d, $97, $34, $41, $41, $18, $ad, $1a, $c8, $65, $2b
    db $0a, $53, $11, $a5, $e0, $d9, $ec, $94, $f5, $d7, $df, $61, $6b, $b9, $55, $3d
    db $3e, $cc, $73, $ed, $5f, $55, $54, $82, $67, $f3, $5c, $93, $46, $a6, $55, $95
    db $86, $7c, $ea, $3b, $5e, $2e, $05, $e9, $0e, $68, $3d, $8a, $52, $7d, $4d, $9a
    db $d9, $29, $03, $cf, $4e, $e7, $52, $b0, $76, $83, $66, $a9, $85, $03, $23, $bf
    db $26, $4d, $2d, $c6, $75, $8c, $af, $49, $23, $e3, $95, $d8, $3c, $17, $64, $b2
    db $19, $78, $84, $01, $a7, $96, $51, $72, $d7, $aa, $22, $cd, $ba, $a7, $fb, $0b
    db $77, $5e, $94, $ea, $6b, $d2, $20, $0c, $3d, $a4, $99, $97, $0b, $4b, $fa, $c3
    db $67, $f1, $1a, $2c, $54, $f6, $4b, $7b, $25, $63, $6c, $c6, $5f, $2f, $d3, $75
    db $4a, $3e, $5d, $0e, $b3, $5f, $bd, $bc, $ac, $4a, $79, $84, $01

    xor l                                         ; $6f5f: $ad
    rra                                           ; $6f60: $1f
    ld h, e                                       ; $6f61: $63
    ld [hl], d                                    ; $6f62: $72
    rst $10                                       ; $6f63: $d7
    and h                                         ; $6f64: $a4
    and c                                         ; $6f65: $a1
    ld h, b                                       ; $6f66: $60
    and c                                         ; $6f67: $a1
    ld [de], a                                    ; $6f68: $12
    jp c, $f251                                   ; $6f69: $da $51 $f2

    ld l, e                                       ; $6f6c: $6b
    jp nc, Jump_020_674c                          ; $6f6d: $d2 $4c $67

    ld e, a                                       ; $6f70: $5f
    ld bc, $f35f                                  ; $6f71: $01 $5f $f3
    ld a, [hl+]                                   ; $6f74: $2a
    inc bc                                        ; $6f75: $03
    scf                                           ; $6f76: $37
    db $ec                                        ; $6f77: $ec
    ret                                           ; $6f78: $c9


    cp e                                          ; $6f79: $bb
    ld h, d                                       ; $6f7a: $62
    sub [hl]                                      ; $6f7b: $96
    pop af                                        ; $6f7c: $f1
    scf                                           ; $6f7d: $37
    add $b5                                       ; $6f7e: $c6 $b5
    ld a, a                                       ; $6f80: $7f
    sub b                                         ; $6f81: $90
    ld c, c                                       ; $6f82: $49
    ld [$bd03], sp                                ; $6f83: $08 $03 $bd
    jp nc, Jump_020_4eac                          ; $6f86: $d2 $ac $4e

    ret                                           ; $6f89: $c9


    rst $08                                       ; $6f8a: $cf
    or d                                          ; $6f8b: $b2
    ld c, d                                       ; $6f8c: $4a
    xor c                                         ; $6f8d: $a9
    and $83                                       ; $6f8e: $e6 $83
    adc a                                         ; $6f90: $8f
    ld [hl], c                                    ; $6f91: $71
    sbc [hl]                                      ; $6f92: $9e
    ld l, e                                       ; $6f93: $6b
    jp nc, $9770                                  ; $6f94: $d2 $70 $97

    or $aa                                        ; $6f97: $f6 $aa
    inc [hl]                                      ; $6f99: $34
    ld [bc], a                                    ; $6f9a: $02
    adc a                                         ; $6f9b: $8f
    halt                                          ; $6f9c: $76
    or h                                          ; $6f9d: $b4
    pop af                                        ; $6f9e: $f1
    push bc                                       ; $6f9f: $c5
    call z, Call_020_54fa                         ; $6fa0: $cc $fa $54
    jp nc, $9b10                                  ; $6fa3: $d2 $10 $9b

    add $b8                                       ; $6fa6: $c6 $b8
    ld h, $cd                                     ; $6fa8: $26 $cd
    ld [c], a                                     ; $6faa: $e2
    xor l                                         ; $6fab: $ad
    ccf                                           ; $6fac: $3f
    jp nz, Jump_000_1547                          ; $6fad: $c2 $47 $15

    xor $74                                       ; $6fb0: $ee $74
    ld c, l                                       ; $6fb2: $4d
    ld a, [de]                                    ; $6fb3: $1a
    ld a, [bc]                                    ; $6fb4: $0a
    ld b, $55                                     ; $6fb5: $06 $55
    ret                                           ; $6fb7: $c9


    xor b                                         ; $6fb8: $a8
    add d                                         ; $6fb9: $82
    sub $2b                                       ; $6fba: $d6 $2b
    call Call_020_7e54                            ; $6fbc: $cd $54 $7e
    ld a, [de]                                    ; $6fbf: $1a
    ld a, c                                       ; $6fc0: $79
    ld l, l                                       ; $6fc1: $6d
    ld h, b                                       ; $6fc2: $60
    db $fc                                        ; $6fc3: $fc
    rst $00                                       ; $6fc4: $c7
    ld a, [hl+]                                   ; $6fc5: $2a
    jp $a5df                                      ; $6fc6: $c3 $df $a5


    dec e                                         ; $6fc9: $1d
    rla                                           ; $6fca: $17
    db $d3                                        ; $6fcb: $d3
    ret z                                         ; $6fcc: $c8

    add l                                         ; $6fcd: $85
    ld [hl-], a                                   ; $6fce: $32
    dec h                                         ; $6fcf: $25
    or [hl]                                       ; $6fd0: $b6
    and e                                         ; $6fd1: $a3
    ld h, e                                       ; $6fd2: $63
    cp d                                          ; $6fd3: $ba
    inc bc                                        ; $6fd4: $03
    jp c, $335a                                   ; $6fd5: $da $5a $33

    ldh [rHDMA5], a                               ; $6fd8: $e0 $55
    inc e                                         ; $6fda: $1c
    cp b                                          ; $6fdb: $b8
    or e                                          ; $6fdc: $b3
    xor a                                         ; $6fdd: $af
    add b                                         ; $6fde: $80
    xor a                                         ; $6fdf: $af
    ld a, c                                       ; $6fe0: $79
    sub l                                         ; $6fe1: $95
    xor [hl]                                      ; $6fe2: $ae
    jr @-$41                                      ; $6fe3: $18 $bd

    ld e, $10                                     ; $6fe5: $1e $10
    ld b, $3d                                     ; $6fe7: $06 $3d
    ld a, a                                       ; $6fe9: $7f
    ld b, l                                       ; $6fea: $45
    xor l                                         ; $6feb: $ad
    cp a                                          ; $6fec: $bf
    ld h, $8d                                     ; $6fed: $26 $8d
    xor h                                         ; $6fef: $ac
    sbc l                                         ; $6ff0: $9d
    ld e, c                                       ; $6ff1: $59
    add a                                         ; $6ff2: $87
    ret                                           ; $6ff3: $c9


    dec c                                         ; $6ff4: $0d
    adc d                                         ; $6ff5: $8a
    xor a                                         ; $6ff6: $af
    cp h                                          ; $6ff7: $bc
    inc a                                         ; $6ff8: $3c
    ld [hl], a                                    ; $6ff9: $77
    ld a, [de]                                    ; $6ffa: $1a
    push hl                                       ; $6ffb: $e5
    sub l                                         ; $6ffc: $95
    dec [hl]                                      ; $6ffd: $35
    add e                                         ; $6ffe: $83
    inc d                                         ; $6fff: $14
    ld a, a                                       ; $7000: $7f
    add [hl]                                      ; $7001: $86
    or [hl]                                       ; $7002: $b6
    ld e, $45                                     ; $7003: $1e $45
    ld a, l                                       ; $7005: $7d
    db $fc                                        ; $7006: $fc
    adc l                                         ; $7007: $8d
    ld [hl], c                                    ; $7008: $71
    db $ed                                        ; $7009: $ed
    ld e, a                                       ; $700a: $5f
    ld a, a                                       ; $700b: $7f
    rlca                                          ; $700c: $07
    ld e, $b0                                     ; $700d: $1e $b0
    sub [hl]                                      ; $700f: $96
    ld e, e                                       ; $7010: $5b
    push de                                       ; $7011: $d5
    db $e3                                        ; $7012: $e3
    inc bc                                        ; $7013: $03
    jp nz, $8a3d                                  ; $7014: $c2 $3d $8a

    ld d, d                                       ; $7017: $52
    ld a, l                                       ; $7018: $7d
    ld c, l                                       ; $7019: $4d
    sbc d                                         ; $701a: $9a
    reti                                          ; $701b: $d9


    add hl, hl                                    ; $701c: $29
    add e                                         ; $701d: $83
    sub d                                         ; $701e: $92
    sbc l                                         ; $701f: $9d
    adc $a5                                       ; $7020: $ce $a5
    ld h, b                                       ; $7022: $60
    ld [$2e3b], a                                 ; $7023: $ea $3b $2e
    and [hl]                                      ; $7026: $a6
    sub c                                         ; $7027: $91
    dec bc                                        ; $7028: $0b
    ld h, l                                       ; $7029: $65
    ld c, d                                       ; $702a: $4a
    ld l, h                                       ; $702b: $6c
    ld b, a                                       ; $702c: $47
    rst $00                                       ; $702d: $c7
    ld [hl], h                                    ; $702e: $74
    rlca                                          ; $702f: $07
    or h                                          ; $7030: $b4
    or l                                          ; $7031: $b5
    ld l, d                                       ; $7032: $6a
    and a                                         ; $7033: $a7
    db $d3                                        ; $7034: $d3
    ld c, h                                       ; $7035: $4c
    ld e, [hl]                                    ; $7036: $5e
    reti                                          ; $7037: $d9


    and l                                         ; $7038: $a5
    and b                                         ; $7039: $a0
    dec bc                                        ; $703a: $0b
    ld b, $96                                     ; $703b: $06 $96
    or c                                          ; $703d: $b1
    and h                                         ; $703e: $a4
    sbc d                                         ; $703f: $9a
    xor a                                         ; $7040: $af
    xor b                                         ; $7041: $a8
    push af                                       ; $7042: $f5
    rst $20                                       ; $7043: $e7
    ld b, l                                       ; $7044: $45
    ld a, l                                       ; $7045: $7d
    and c                                         ; $7046: $a1
    xor c                                         ; $7047: $a9
    ld a, [bc]                                    ; $7048: $0a
    jp nz, $afdd                                  ; $7049: $c2 $dd $af

    scf                                           ; $704c: $37
    ld l, b                                       ; $704d: $68
    dec sp                                        ; $704e: $3b
    jp c, $2cf8                                   ; $704f: $da $f8 $2c

    or l                                          ; $7052: $b5
    ld [hl], b                                    ; $7053: $70
    ld h, b                                       ; $7054: $60
    db $e4                                        ; $7055: $e4
    rst $00                                       ; $7056: $c7
    ld a, a                                       ; $7057: $7f
    dec l                                         ; $7058: $2d
    add $c1                                       ; $7059: $c6 $c1
    rst $38                                       ; $705b: $ff
    sbc d                                         ; $705c: $9a
    inc [hl]                                      ; $705d: $34
    db $d3                                        ; $705e: $d3
    ld b, b                                       ; $705f: $40
    cpl                                           ; $7060: $2f
    ld hl, $960c                                  ; $7061: $21 $0c $96
    pop de                                        ; $7064: $d1
    ccf                                           ; $7065: $3f
    sbc e                                         ; $7066: $9b
    rst $20                                       ; $7067: $e7
    ldh [$63], a                                  ; $7068: $e0 $63
    sbc h                                         ; $706a: $9c
    sub a                                         ; $706b: $97
    add a                                         ; $706c: $87
    ld e, a                                       ; $706d: $5f
    dec sp                                        ; $706e: $3b
    or e                                          ; $706f: $b3
    ld c, $6b                                     ; $7070: $0e $6b
    ld l, e                                       ; $7072: $6b
    ld d, l                                       ; $7073: $55
    sbc a                                         ; $7074: $9f
    rst $20                                       ; $7075: $e7
    sbc d                                         ; $7076: $9a
    inc [hl]                                      ; $7077: $34
    ld [$a703], sp                                ; $7078: $08 $03 $a7
    sub [hl]                                      ; $707b: $96
    or c                                          ; $707c: $b1
    ld d, a                                       ; $707d: $57
    ld b, c                                       ; $707e: $41
    sbc e                                         ; $707f: $9b
    ld h, l                                       ; $7080: $65
    ld a, [de]                                    ; $7081: $1a
    ld c, [hl]                                    ; $7082: $4e
    ld l, l                                       ; $7083: $6d
    pop de                                        ; $7084: $d1
    set 0, [hl]                                   ; $7085: $cb $c6
    rst $38                                       ; $7087: $ff
    ld a, [hl+]                                   ; $7088: $2a
    and l                                         ; $7089: $a5
    dec h                                         ; $708a: $25
    push bc                                       ; $708b: $c5
    ld h, [hl]                                    ; $708c: $66
    pop bc                                        ; $708d: $c1
    or l                                          ; $708e: $b5
    cp $9a                                        ; $708f: $fe $9a
    inc [hl]                                      ; $7091: $34
    db $eb                                        ; $7092: $eb
    xor a                                         ; $7093: $af
    rst $38                                       ; $7094: $ff
    inc bc                                        ; $7095: $03
    sub $72                                       ; $7096: $d6 $72
    xor e                                         ; $7098: $ab
    ld a, d                                       ; $7099: $7a
    ld a, h                                       ; $709a: $7c
    ld e, b                                       ; $709b: $58
    ld e, e                                       ; $709c: $5b
    xor e                                         ; $709d: $ab
    ld a, [$94ec]                                 ; $709e: $fa $ec $94
    ld a, c                                       ; $70a1: $79
    ld sp, hl                                     ; $70a2: $f9
    db $10                                        ; $70a3: $10
    ld h, c                                       ; $70a4: $61
    rst $00                                       ; $70a5: $c7
    ld e, h                                       ; $70a6: $5c
    or [hl]                                       ; $70a7: $b6
    ld h, $cd                                     ; $70a8: $26 $cd
    ret c                                         ; $70aa: $d8

    ld d, a                                       ; $70ab: $57
    sub a                                         ; $70ac: $97
    db $fd                                        ; $70ad: $fd
    sub d                                         ; $70ae: $92
    and $25                                       ; $70af: $e6 $25
    pop hl                                        ; $70b1: $e1
    rst $10                                       ; $70b2: $d7
    adc $ac                                       ; $70b3: $ce $ac
    ld b, e                                       ; $70b5: $43
    ld d, a                                       ; $70b6: $57
    inc c                                         ; $70b7: $0c
    dec a                                         ; $70b8: $3d
    ccf                                           ; $70b9: $3f
    ld d, [hl]                                    ; $70ba: $56
    add hl, de                                    ; $70bb: $19
    cp $3c                                        ; $70bc: $fe $3c
    ld [hl], a                                    ; $70be: $77
    ld e, h                                       ; $70bf: $5c
    ld c, h                                       ; $70c0: $4c
    inc hl                                        ; $70c1: $23
    rla                                           ; $70c2: $17
    jp z, $df7a                                   ; $70c3: $ca $7a $df

    pop de                                        ; $70c6: $d1
    ld sp, $61dd                                  ; $70c7: $31 $dd $61
    ld b, a                                       ; $70ca: $47
    ld h, a                                       ; $70cb: $67

jr_020_70cc:
    sub $c1                                       ; $70cc: $d6 $c1
    ld d, e                                       ; $70ce: $53
    ld e, $ad                                     ; $70cf: $1e $ad
    rst $20                                       ; $70d1: $e7
    ld c, a                                       ; $70d2: $4f
    push hl                                       ; $70d3: $e5
    xor c                                         ; $70d4: $a9
    and $83                                       ; $70d5: $e6 $83
    rla                                           ; $70d7: $17
    db $eb                                        ; $70d8: $eb
    and l                                         ; $70d9: $a5
    ld h, b                                       ; $70da: $60
    sub l                                         ; $70db: $95
    ld bc, $f0cf                                  ; $70dc: $01 $cf $f0
    dec b                                         ; $70df: $05
    and [hl]                                      ; $70e0: $a6
    ld a, $2f                                     ; $70e1: $3e $2f
    cp a                                          ; $70e3: $bf
    jr nc, @-$3b                                  ; $70e4: $30 $c3

    daa                                           ; $70e6: $27
    ld b, a                                       ; $70e7: $47
    ld [$3ff1], sp                                ; $70e8: $08 $f1 $3f
    ld a, [$f367]                                 ; $70eb: $fa $67 $f3
    sbc h                                         ; $70ee: $9c
    ccf                                           ; $70ef: $3f
    or c                                          ; $70f0: $b1
    ld a, c                                       ; $70f1: $79
    ld c, [hl]                                    ; $70f2: $4e
    ld l, c                                       ; $70f3: $69
    ld l, c                                       ; $70f4: $69
    cp h                                          ; $70f5: $bc
    dec l                                         ; $70f6: $2d
    xor a                                         ; $70f7: $af
    push af                                       ; $70f8: $f5
    and l                                         ; $70f9: $a5
    cp l                                          ; $70fa: $bd
    halt                                          ; $70fb: $76
    ld h, [hl]                                    ; $70fc: $66
    sbc l                                         ; $70fd: $9d
    ld c, a                                       ; $70fe: $4f
    add hl, bc                                    ; $70ff: $09
    ld bc, $476d                                  ; $7100: $01 $6d $47
    dec de                                        ; $7103: $1b
    ld e, a                                       ; $7104: $5f
    daa                                           ; $7105: $27
    cp [hl]                                       ; $7106: $be
    jp nz, $caaf                                  ; $7107: $c2 $af $ca

    ldh a, [$d7]                                  ; $710a: $f0 $d7
    sub $aa                                       ; $710c: $d6 $aa
    ld a, $c8                                     ; $710e: $3e $c8
    inc h                                         ; $7110: $24
    add h                                         ; $7111: $84
    ld bc, $1fad                                  ; $7112: $01 $ad $1f
    ld h, e                                       ; $7115: $63
    ld [hl], d                                    ; $7116: $72
    ld h, a                                       ; $7117: $67
    xor c                                         ; $7118: $a9

jr_020_7119:
    add l                                         ; $7119: $85
    dec sp                                        ; $711a: $3b
    ld b, [hl]                                    ; $711b: $46
    or h                                          ; $711c: $b4
    jp z, $ac9d                                   ; $711d: $ca $9d $ac

    pop de                                        ; $7120: $d1
    adc $06                                       ; $7121: $ce $06
    ld l, l                                       ; $7123: $6d
    ld b, a                                       ; $7124: $47
    ret                                           ; $7125: $c9


    xor a                                         ; $7126: $af
    ld c, c                                       ; $7127: $49
    inc sp                                        ; $7128: $33
    ld e, l                                       ; $7129: $5d
    ld l, e                                       ; $712a: $6b
    ld b, $bc                                     ; $712b: $06 $bc
    adc d                                         ; $712d: $8a
    jp Jump_000_0dc0                              ; $712e: $c3 $c0 $0d


    ld a, e                                       ; $7131: $7b
    ld a, [c]                                     ; $7132: $f2
    xor [hl]                                      ; $7133: $ae
    jr jr_020_70cc                                ; $7134: $18 $96

    pop af                                        ; $7136: $f1
    scf                                           ; $7137: $37
    add $b5                                       ; $7138: $c6 $b5
    ld a, a                                       ; $713a: $7f
    sub b                                         ; $713b: $90
    ld c, c                                       ; $713c: $49
    ld [$2703], sp                                ; $713d: $08 $03 $27
    rst $38                                       ; $7140: $ff
    inc a                                         ; $7141: $3c
    inc de                                        ; $7142: $13
    ld l, l                                       ; $7143: $6d
    sub [hl]                                      ; $7144: $96
    add c                                         ; $7145: $81
    ld a, [c]                                     ; $7146: $f2
    ld l, e                                       ; $7147: $6b
    jp nc, $55ec                                  ; $7148: $d2 $ec $55

    ld [c], a                                     ; $714b: $e2
    ld a, l                                       ; $714c: $7d
    add hl, de                                    ; $714d: $19
    ld a, a                                       ; $714e: $7f
    cp l                                          ; $714f: $bd
    call z, $fa8b                                 ; $7150: $cc $8b $fa
    jp c, $e0af                                   ; $7153: $da $af $e0

    or c                                          ; $7156: $b1
    add hl, de                                    ; $7157: $19
    cp h                                          ; $7158: $bc
    ld e, b                                       ; $7159: $58
    sub l                                         ; $715a: $95
    ld a, h                                       ; $715b: $7c
    xor l                                         ; $715c: $ad
    ld a, [de]                                    ; $715d: $1a
    ret z                                         ; $715e: $c8

    ld h, l                                       ; $715f: $65
    ld [$9603], sp                                ; $7160: $08 $03 $96
    push bc                                       ; $7163: $c5
    ld e, e                                       ; $7164: $5b
    rst $38                                       ; $7165: $ff
    or l                                          ; $7166: $b5
    ld l, d                                       ; $7167: $6a
    jr nz, @-$67                                  ; $7168: $20 $97

    ld hl, $c70c                                  ; $716a: $21 $0c $c7
    db $e4                                        ; $716d: $e4
    sbc d                                         ; $716e: $9a
    inc [hl]                                      ; $716f: $34
    ld e, l                                       ; $7170: $5d
    or a                                          ; $7171: $b7
    ld d, e                                       ; $7172: $53
    jp nc, Jump_020_4697                          ; $7173: $d2 $97 $46

    ld b, $29                                     ; $7176: $06 $29
    adc $5d                                       ; $7178: $ce $5d
    sub e                                         ; $717a: $93
    ld h, [hl]                                    ; $717b: $66
    ld [hl], l                                    ; $717c: $75
    ld c, d                                       ; $717d: $4a
    ld e, $6d                                     ; $717e: $1e $6d
    xor l                                         ; $7180: $ad
    ld e, a                                       ; $7181: $5f
    add e                                         ; $7182: $83
    ld l, c                                       ; $7183: $69
    inc c                                         ; $7184: $0c
    inc de                                        ; $7185: $13
    ld a, h                                       ; $7186: $7c
    ld a, [bc]                                    ; $7187: $0a
    ld l, e                                       ; $7188: $6b
    dec hl                                        ; $7189: $2b
    sbc e                                         ; $718a: $9b
    jp nz, Jump_000_2774                          ; $718b: $c2 $74 $27

    sbc e                                         ; $718e: $9b
    jr nz, jr_020_7119                            ; $718f: $20 $88

    adc a                                         ; $7191: $8f
    or [hl]                                       ; $7192: $b6
    xor $2f                                       ; $7193: $ee $2f
    ld b, l                                       ; $7195: $45
    dec sp                                        ; $7196: $3b
    jr nc, jr_020_71d7                            ; $7197: $30 $3e

    dec b                                         ; $7199: $05
    ld e, $6d                                     ; $719a: $1e $6d
    dec a                                         ; $719c: $3d
    ccf                                           ; $719d: $3f
    ld b, [hl]                                    ; $719e: $46
    xor $e0                                       ; $719f: $ee $e0
    ld a, a                                       ; $71a1: $7f
    ld c, l                                       ; $71a2: $4d
    sbc d                                         ; $71a3: $9a
    ld b, l                                       ; $71a4: $45
    push af                                       ; $71a5: $f5
    rla                                           ; $71a6: $17
    add h                                         ; $71a7: $84
    ld bc, $3f3d                                  ; $71a8: $01 $3d $3f
    ld d, [hl]                                    ; $71ab: $56
    add hl, de                                    ; $71ac: $19
    cp $3c                                        ; $71ad: $fe $3c
    rst $20                                       ; $71af: $e7
    push hl                                       ; $71b0: $e5
    ld d, a                                       ; $71b1: $57
    ld e, [hl]                                    ; $71b2: $5e
    db $e3                                        ; $71b3: $e3
    and l                                         ; $71b4: $a5
    ld h, b                                       ; $71b5: $60
    ldh [$ea], a                                  ; $71b6: $e0 $ea
    scf                                           ; $71b8: $37
    adc c                                         ; $71b9: $89
    dec sp                                        ; $71ba: $3b
    adc l                                         ; $71bb: $8d
    ld e, [hl]                                    ; $71bc: $5e
    jp nc, $6504                                  ; $71bd: $d2 $04 $65

    sub [hl]                                      ; $71c0: $96
    ld d, l                                       ; $71c1: $55
    ld c, d                                       ; $71c2: $4a
    add e                                         ; $71c3: $83
    rst $38                                       ; $71c4: $ff
    dec [hl]                                      ; $71c5: $35
    ld l, c                                       ; $71c6: $69

jr_020_71c7:
    and [hl]                                      ; $71c7: $a6
    ld a, [c]                                     ; $71c8: $f2
    and e                                         ; $71c9: $a3
    db $f4                                        ; $71ca: $f4
    ld e, l                                       ; $71cb: $5d
    ld a, [hl-]                                   ; $71cc: $3a
    rst $08                                       ; $71cd: $cf
    ret z                                         ; $71ce: $c8

    inc sp                                        ; $71cf: $33
    add h                                         ; $71d0: $84
    ld bc, $8b3d                                  ; $71d1: $01 $3d $8b
    ld a, [$ae58]                                 ; $71d4: $fa $58 $ae

jr_020_71d7:
    ld c, c                                       ; $71d7: $49
    or e                                          ; $71d8: $b3
    and d                                         ; $71d9: $a2
    sub $5f                                       ; $71da: $d6 $5f
    ld a, c                                       ; $71dc: $79
    ld sp, hl                                     ; $71dd: $f9
    xor [hl]                                      ; $71de: $ae
    jr @-$68                                      ; $71df: $18 $96

    sub l                                         ; $71e1: $95
    rst $10                                       ; $71e2: $d7
    jr c, @+$31                                   ; $71e3: $38 $2f

    add hl, bc                                    ; $71e5: $09
    ccf                                           ; $71e6: $3f
    cp [hl]                                       ; $71e7: $be
    db $e4                                        ; $71e8: $e4
    adc d                                         ; $71e9: $8a
    ld e, d                                       ; $71ea: $5a
    ld a, a                                       ; $71eb: $7f
    db $ed                                        ; $71ec: $ed
    ld a, a                                       ; $71ed: $7f
    jp c, $f3a5                                   ; $71ee: $da $a5 $f3

    adc h                                         ; $71f1: $8c
    inc a                                         ; $71f2: $3c
    db $db                                        ; $71f3: $db
    and l                                         ; $71f4: $a5
    dec e                                         ; $71f5: $1d
    ld [hl], e                                    ; $71f6: $73
    dec [hl]                                      ; $71f7: $35
    ld c, b                                       ; $71f8: $48
    jp c, $3151                                   ; $71f9: $da $51 $31

    ld a, [hl]                                    ; $71fc: $7e
    add e                                         ; $71fd: $83
    jr nc, jr_020_71c7                            ; $71fe: $30 $c7

    db $fd                                        ; $7200: $fd
    rst $00                                       ; $7201: $c7
    reti                                          ; $7202: $d9


    ld a, [c]                                     ; $7203: $f2
    ccf                                           ; $7204: $3f
    rst $08                                       ; $7205: $cf
    ld e, c                                       ; $7206: $59
    cpl                                           ; $7207: $2f
    ld e, h                                       ; $7208: $5c
    sbc a                                         ; $7209: $9f
    ld d, d                                       ; $720a: $52
    inc sp                                        ; $720b: $33
    cp a                                          ; $720c: $bf
    pop hl                                        ; $720d: $e1
    inc hl                                        ; $720e: $23
    inc c                                         ; $720f: $0c

    db $96, $55, $4a, $83, $ff, $79, $51, $5f, $93, $66, $2a, $bf, $62, $c4, $d1, $7a
    db $a6, $89, $6c, $4d, $9a, $c5, $5b, $ff, $85, $3f, $cf, $95, $d7, $b8, $26, $4d
    db $57, $0c, $bd, $1e, $b8, $eb, $c4, $57, $78, $b4, $f5, $2c, $ea, $63, $b9, $26
    db $cd, $aa, $a2, $12, $7c, $57, $0c, $3d, $ca, $cb, $ef, $c2, $28, $57, $15, $95
    db $e0, $d1, $66, $f1, $5d, $58, $d8, $8c, $19, $6f, $e6, $b9, $f2, $1a, $a7, $31
    db $8e, $2f, $39, $85, $3a, $c2

    cp l                                          ; $7266: $bd
    ld e, $b8                                     ; $7267: $1e $b8
    db $eb                                        ; $7269: $eb
    call nz, $f857                                ; $726a: $c4 $57 $f8
    ld l, $18                                     ; $726d: $2e $18

    db $3d, $ca, $cb, $73, $e7, $45, $7d, $50, $d2, $44, $36, $fb, $3f, $ae, $fd, $ee
    db $2f, $08, $03

    rlca                                          ; $7282: $07
    db $ec                                        ; $7283: $ec
    db $f4                                        ; $7284: $f4
    ld l, h                                       ; $7285: $6c
    ccf                                           ; $7286: $3f
    ld h, b                                       ; $7287: $60
    db $fd                                        ; $7288: $fd
    xor l                                         ; $7289: $ad
    rst $20                                       ; $728a: $e7
    dec h                                         ; $728b: $25
    ld a, a                                       ; $728c: $7f
    ld e, c                                       ; $728d: $59
    or a                                          ; $728e: $b7
    sbc b                                         ; $728f: $98
    ld e, d                                       ; $7290: $5a
    rst $00                                       ; $7291: $c7
    db $fd                                        ; $7292: $fd
    xor l                                         ; $7293: $ad
    ld a, e                                       ; $7294: $7b
    ld e, [hl]                                    ; $7295: $5e
    ld a, [c]                                     ; $7296: $f2
    ld h, a                                       ; $7297: $67
    ld l, e                                       ; $7298: $6b
    ld d, l                                       ; $7299: $55
    rst $00                                       ; $729a: $c7
    db $fd                                        ; $729b: $fd
    xor l                                         ; $729c: $ad
    cp e                                          ; $729d: $bb
    ld e, [hl]                                    ; $729e: $5e
    ld e, c                                       ; $729f: $59
    jp c, $3e3b                                   ; $72a0: $da $3b $3e

    and [hl]                                      ; $72a3: $a6
    push af                                       ; $72a4: $f5
    ld bc, $fd03                                  ; $72a5: $01 $03 $fd
    db $ed                                        ; $72a8: $ed
    inc d                                         ; $72a9: $14
    dec c                                         ; $72aa: $0d
    ld a, a                                       ; $72ab: $7f
    dec a                                         ; $72ac: $3d
    inc [hl]                                      ; $72ad: $34
    ld e, b                                       ; $72ae: $58
    ld [hl], a                                    ; $72af: $77
    xor l                                         ; $72b0: $ad
    ld [$fd18], a                                 ; $72b1: $ea $18 $fd
    xor l                                         ; $72b4: $ad
    ld a, e                                       ; $72b5: $7b
    ld a, [$da4d]                                 ; $72b6: $fa $4d $da
    adc c                                         ; $72b9: $89
    rst $10                                       ; $72ba: $d7
    ld [hl], a                                    ; $72bb: $77
    or h                                          ; $72bc: $b4
    ld b, $18                                     ; $72bd: $06 $18
    db $fd                                        ; $72bf: $fd
    xor l                                         ; $72c0: $ad
    push hl                                       ; $72c1: $e5
    ld a, l                                       ; $72c2: $7d
    ld l, c                                       ; $72c3: $69
    rst $28                                       ; $72c4: $ef
    cp b                                          ; $72c5: $b8
    dec hl                                        ; $72c6: $2b
    ldh [$eb], a                                  ; $72c7: $e0 $eb
    push af                                       ; $72c9: $f5
    ld a, [hl+]                                   ; $72ca: $2a
    dec sp                                        ; $72cb: $3b
    ld a, [hl-]                                   ; $72cc: $3a
    or e                                          ; $72cd: $b3
    ld c, $18                                     ; $72ce: $0e $18
    db $fd                                        ; $72d0: $fd
    xor l                                         ; $72d1: $ad
    sbc e                                         ; $72d2: $9b
    sbc d                                         ; $72d3: $9a
    ret z                                         ; $72d4: $c8

    inc h                                         ; $72d5: $24
    add hl, bc                                    ; $72d6: $09
    inc bc                                        ; $72d7: $03
    db $fd                                        ; $72d8: $fd
    xor l                                         ; $72d9: $ad
    and a                                         ; $72da: $a7
    ld [de], a                                    ; $72db: $12
    jp $c947                                      ; $72dc: $c3 $47 $c9


    xor a                                         ; $72df: $af
    ld c, c                                       ; $72e0: $49
    inc sp                                        ; $72e1: $33
    ld e, l                                       ; $72e2: $5d
    sub l                                         ; $72e3: $95
    ld sp, $e57e                                  ; $72e4: $31 $7e $e5
    add hl, hl                                    ; $72e7: $29
    ld e, l                                       ; $72e8: $5d
    scf                                           ; $72e9: $37
    res 1, d                                      ; $72ea: $cb $8a
    ld e, d                                       ; $72ec: $5a
    ld a, a                                       ; $72ed: $7f
    cp d                                          ; $72ee: $ba
    ld c, d                                       ; $72ef: $4a
    add l                                         ; $72f0: $85
    call $fa8b                                    ; $72f1: $cd $8b $fa
    jp nz, $141b                                  ; $72f4: $c2 $1b $14

    rst $18                                       ; $72f7: $df
    dec h                                         ; $72f8: $25
    ld a, a                                       ; $72f9: $7f
    ld a, c                                       ; $72fa: $79
    ldh a, [$35]                                  ; $72fb: $f0 $35
    ld l, c                                       ; $72fd: $69
    db $10                                        ; $72fe: $10
    ld b, $c7                                     ; $72ff: $06 $c7
    db $e4                                        ; $7301: $e4
    sbc d                                         ; $7302: $9a
    inc [hl]                                      ; $7303: $34
    dec bc                                        ; $7304: $0b
    ld e, a                                       ; $7305: $5f
    ld l, c                                       ; $7306: $69
    cp d                                          ; $7307: $ba
    db $e3                                        ; $7308: $e3
    inc [hl]                                      ; $7309: $34
    ld c, h                                       ; $730a: $4c
    inc bc                                        ; $730b: $03
    db $eb                                        ; $730c: $eb
    ld a, c                                       ; $730d: $79
    cp l                                          ; $730e: $bd
    ld a, [hl+]                                   ; $730f: $2a
    rrca                                          ; $7310: $0f
    ld d, e                                       ; $7311: $53
    ld h, d                                       ; $7312: $62
    db $eb                                        ; $7313: $eb
    ld a, c                                       ; $7314: $79
    add hl, sp                                    ; $7315: $39
    xor d                                         ; $7316: $aa
    jr nc, jr_020_7371                            ; $7317: $30 $58

    scf                                           ; $7319: $37
    dec d                                         ; $731a: $15
    sub $75                                       ; $731b: $d6 $75
    db $eb                                        ; $731d: $eb
    ld sp, hl                                     ; $731e: $f9
    ld sp, $1772                                  ; $731f: $31 $72 $17
    ld l, d                                       ; $7322: $6a
    db $d3                                        ; $7323: $d3
    ld a, [hl]                                    ; $7324: $7e
    or h                                          ; $7325: $b4
    sbc l                                         ; $7326: $9d
    call c, $caac                                 ; $7327: $dc $ac $ca
    jr @-$3f                                      ; $732a: $18 $bf

    ld a, [c]                                     ; $732c: $f2
    sbc e                                         ; $732d: $9b
    or h                                          ; $732e: $b4
    dec bc                                        ; $732f: $0b
    dec sp                                        ; $7330: $3b
    rst $18                                       ; $7331: $df
    ld e, h                                       ; $7332: $5c
    rst $38                                       ; $7333: $ff
    ld b, c                                       ; $7334: $41
    xor b                                         ; $7335: $a8
    ld sp, $7d4e                                  ; $7336: $31 $4e $7d
    ld e, [hl]                                    ; $7339: $5e
    ld a, [hl]                                    ; $733a: $7e
    ld h, c                                       ; $733b: $61
    add [hl]                                      ; $733c: $86
    ld c, a                                       ; $733d: $4f
    adc [hl]                                      ; $733e: $8e
    jr nc, jr_020_737e                            ; $733f: $30 $3d

    jp z, $2585                                   ; $7341: $ca $85 $25

    db $fd                                        ; $7344: $fd
    ld l, $cc                                     ; $7345: $2e $cc
    ld a, [$4cd2]                                 ; $7347: $fa $d2 $4c
    ld d, h                                       ; $734a: $54
    ld e, $21                                     ; $734b: $1e $21
    call nc, Call_020_4aed                        ; $734d: $d4 $ed $4a
    push af                                       ; $7350: $f5
    dec hl                                        ; $7351: $2b
    cpl                                           ; $7352: $2f
    ldh a, [$d1]                                  ; $7353: $f0 $d1
    xor $b2                                       ; $7355: $ee $b2
    push af                                       ; $7357: $f5
    ld d, h                                       ; $7358: $54
    ld a, [c]                                     ; $7359: $f2
    ld a, c                                       ; $735a: $79
    adc $45                                       ; $735b: $ce $45
    reti                                          ; $735d: $d9


    ld [hl], a                                    ; $735e: $77
    push bc                                       ; $735f: $c5
    dec a                                         ; $7360: $3d
    adc e                                         ; $7361: $8b
    ld a, [$ae58]                                 ; $7362: $fa $58 $ae
    ld c, c                                       ; $7365: $49
    inc sp                                        ; $7366: $33
    ld e, [hl]                                    ; $7367: $5e
    ret                                           ; $7368: $c9


    ld h, a                                       ; $7369: $67
    and a                                         ; $736a: $a7
    db $ec                                        ; $736b: $ec
    ld a, d                                       ; $736c: $7a
    ld d, a                                       ; $736d: $57
    inc c                                         ; $736e: $0c
    ld b, a                                       ; $736f: $47
    xor l                                         ; $7370: $ad

jr_020_7371:
    db $fd                                        ; $7371: $fd
    inc e                                         ; $7372: $1c
    ld d, e                                       ; $7373: $53
    ld h, l                                       ; $7374: $65
    ldh [rOBP1], a                                ; $7375: $e0 $49
    adc a                                         ; $7377: $8f
    ld [hl], $0b                                  ; $7378: $36 $0b
    ld sp, hl                                     ; $737a: $f9
    res 0, e                                      ; $737b: $cb $83
    ccf                                           ; $737d: $3f

jr_020_737e:
    db $eb                                        ; $737e: $eb
    adc d                                         ; $737f: $8a
    ld bc, $b196                                  ; $7380: $01 $96 $b1
    and h                                         ; $7383: $a4
    sbc d                                         ; $7384: $9a
    rst $28                                       ; $7385: $ef
    xor l                                         ; $7386: $ad
    ld c, a                                       ; $7387: $4f
    xor e                                         ; $7388: $ab
    ld d, e                                       ; $7389: $53
    ld a, [c]                                     ; $738a: $f2
    db $e3                                        ; $738b: $e3
    adc e                                         ; $738c: $8b
    ld a, [$a8bc]                                 ; $738d: $fa $bc $a8
    rst $28                                       ; $7390: $ef
    ld [bc], a                                    ; $7391: $02
    jp nz, Jump_020_61ad                          ; $7392: $c2 $ad $61

    ret z                                         ; $7395: $c8

    ld e, l                                       ; $7396: $5d
    ld l, b                                       ; $7397: $68
    ret nz                                        ; $7398: $c0

    rst $10                                       ; $7399: $d7
    cp $e9                                        ; $739a: $fe $e9
    db $ec                                        ; $739c: $ec
    dec hl                                        ; $739d: $2b
    ldh [$f7], a                                  ; $739e: $e0 $f7
    pop de                                        ; $73a0: $d1
    sub $92                                       ; $73a1: $d6 $92
    ld [hl+], a                                   ; $73a3: $22
    call $d73c                                    ; $73a4: $cd $3c $d7
    ld c, [hl]                                    ; $73a7: $4e
    cpl                                           ; $73a8: $2f
    cpl                                           ; $73a9: $2f
    ld l, e                                       ; $73aa: $6b

jr_020_73ab:
    jp nc, $0c20                                  ; $73ab: $d2 $20 $0c

    dec a                                         ; $73ae: $3d
    ccf                                           ; $73af: $3f
    add $b1                                       ; $73b0: $c6 $b1
    and h                                         ; $73b2: $a4
    rst $20                                       ; $73b3: $e7
    xor [hl]                                      ; $73b4: $ae
    ld d, l                                       ; $73b5: $55
    ld b, l                                       ; $73b6: $45
    ld a, [de]                                    ; $73b7: $1a
    or h                                          ; $73b8: $b4
    push af                                       ; $73b9: $f5
    jr z, jr_020_73eb                             ; $73ba: $28 $2f

    ld e, a                                       ; $73bc: $5f
    add e                                         ; $73bd: $83
    dec h                                         ; $73be: $25
    db $fd                                        ; $73bf: $fd
    and d                                         ; $73c0: $a2
    add d                                         ; $73c1: $82
    rst $08                                       ; $73c2: $cf
    res 4, l                                      ; $73c3: $cb $a5
    nop                                           ; $73c5: $00
    ld hl, $aad4                                  ; $73c6: $21 $d4 $aa
    sbc l                                         ; $73c9: $9d
    ld c, [hl]                                    ; $73ca: $4e
    or e                                          ; $73cb: $b3
    and e                                         ; $73cc: $a3
    xor a                                         ; $73cd: $af
    ld a, b                                       ; $73ce: $78
    ld h, c                                       ; $73cf: $61
    jp c, $c174                                   ; $73d0: $da $74 $c1

    dec l                                         ; $73d3: $2d
    push hl                                       ; $73d4: $e5
    ld l, e                                       ; $73d5: $6b
    or b                                          ; $73d6: $b0
    or $ab                                        ; $73d7: $f6 $ab
    pop af                                        ; $73d9: $f1
    ld l, e                                       ; $73da: $6b
    sbc e                                         ; $73db: $9b
    adc b                                         ; $73dc: $88
    or [hl]                                       ; $73dd: $b6
    sbc [hl]                                      ; $73de: $9e
    ld b, l                                       ; $73df: $45
    cp l                                          ; $73e0: $bd
    ld b, $2b                                     ; $73e1: $06 $2b
    cpl                                           ; $73e3: $2f
    inc hl                                        ; $73e4: $23
    dec c                                         ; $73e5: $0d
    cp a                                          ; $73e6: $bf
    dec hl                                        ; $73e7: $2b
    ld b, $2d                                     ; $73e8: $06 $2d
    push hl                                       ; $73ea: $e5

jr_020_73eb:
    rst $10                                       ; $73eb: $d7
    cp $b5                                        ; $73ec: $fe $b5
    ld a, $e3                                     ; $73ee: $3e $e3
    ld l, a                                       ; $73f0: $6f
    add b                                         ; $73f1: $80
    or [hl]                                       ; $73f2: $b6
    and e                                         ; $73f3: $a3
    ld h, d                                       ; $73f4: $62
    sbc h                                         ; $73f5: $9c
    sub a                                         ; $73f6: $97
    ld e, a                                       ; $73f7: $5f
    db $fd                                        ; $73f8: $fd
    ld [hl-], a                                   ; $73f9: $32
    jr jr_020_73ab                                ; $73fa: $18 $af

    db $e4                                        ; $73fc: $e4
    ld c, e                                       ; $73fd: $4b
    ld a, $02                                     ; $73fe: $3e $02
    ld e, d                                       ; $7400: $5a
    adc a                                         ; $7401: $8f
    ld a, [c]                                     ; $7402: $f2
    call Call_000_152a                            ; $7403: $cd $2a $15
    ld l, c                                       ; $7406: $69
    sub $bc                                       ; $7407: $d6 $bc
    inc l                                         ; $7409: $2c
    call nc, $a71b                                ; $740a: $d4 $1b $a7
    ld d, h                                       ; $740d: $54
    db $db                                        ; $740e: $db
    ld e, e                                       ; $740f: $5b
    ld e, a                                       ; $7410: $5f
    ld a, [de]                                    ; $7411: $1a
    cpl                                           ; $7412: $2f
    sub a                                         ; $7413: $97
    ld l, d                                       ; $7414: $6a
    ld [$3d03], sp                                ; $7415: $08 $03 $3d
    adc d                                         ; $7418: $8a
    ld d, d                                       ; $7419: $52
    ld a, l                                       ; $741a: $7d
    ld c, l                                       ; $741b: $4d
    sbc d                                         ; $741c: $9a
    ld l, $18                                     ; $741d: $2e $18
    dec a                                         ; $741f: $3d
    ccf                                           ; $7420: $3f
    ld b, [hl]                                    ; $7421: $46
    xor $fc                                       ; $7422: $ee $fc
    add [hl]                                      ; $7424: $86
    ccf                                           ; $7425: $3f
    dec sp                                        ; $7426: $3b
    ld h, l                                       ; $7427: $65
    ld b, $e6                                     ; $7428: $06 $e6
    cp c                                          ; $742a: $b9
    or $2f                                        ; $742b: $f6 $2f
    ld l, c                                       ; $742d: $69
    ld l, c                                       ; $742e: $69
    ld h, h                                       ; $742f: $64
    cp h                                          ; $7430: $bc
    ld [hl], $08                                  ; $7431: $36 $08
    inc bc                                        ; $7433: $03
    dec a                                         ; $7434: $3d
    adc d                                         ; $7435: $8a
    sub $60                                       ; $7436: $d6 $60
    ld a, [hl-]                                   ; $7438: $3a
    ei                                            ; $7439: $fb
    jp nc, Jump_020_5c0f                          ; $743a: $d2 $0f $5c

    push bc                                       ; $743d: $c5
    rst $10                                       ; $743e: $d7
    ld a, h                                       ; $743f: $7c
    call Call_000_0bfa                            ; $7440: $cd $fa $0b
    sub l                                         ; $7443: $95
    dec a                                         ; $7444: $3d
    ld [hl], a                                    ; $7445: $77
    xor l                                         ; $7446: $ad
    ld a, [hl+]                                   ; $7447: $2a
    jp nc, $ada0                                  ; $7448: $d2 $a0 $ad

    ld e, e                                       ; $744b: $5b
    ld sp, hl                                     ; $744c: $f9
    xor d                                         ; $744d: $aa
    ld a, $2f                                     ; $744e: $3e $2f
    cp a                                          ; $7450: $bf
    ld a, b                                       ; $7451: $78
    pop bc                                        ; $7452: $c1
    ld h, a                                       ; $7453: $67
    ld e, c                                       ; $7454: $59
    and b                                         ; $7455: $a0
    sub $5f                                       ; $7456: $d6 $5f
    di                                            ; $7458: $f3
    ld h, l                                       ; $7459: $65
    ld c, d                                       ; $745a: $4a
    ld l, h                                       ; $745b: $6c
    ld b, c                                       ; $745c: $41
    xor [hl]                                      ; $745d: $ae
    ld l, l                                       ; $745e: $6d
    sbc d                                         ; $745f: $9a
    ld a, c                                       ; $7460: $79
    ld sp, hl                                     ; $7461: $f9
    ret                                           ; $7462: $c9


    add e                                         ; $7463: $83
    cpl                                           ; $7464: $2f
    db $ed                                        ; $7465: $ed
    dec [hl]                                      ; $7466: $35
    cpl                                           ; $7467: $2f
    dec bc                                        ; $7468: $0b
    ld e, [hl]                                    ; $7469: $5e
    dec b                                         ; $746a: $05
    ld h, c                                       ; $746b: $61
    xor l                                         ; $746c: $ad
    rra                                           ; $746d: $1f
    ld h, e                                       ; $746e: $63
    ld [hl], d                                    ; $746f: $72
    ld [hl], a                                    ; $7470: $77
    ld h, c                                       ; $7471: $61
    ld e, [hl]                                    ; $7472: $5e
    ld l, $cc                                     ; $7473: $2e $cc
    res 5, a                                      ; $7475: $cb $af
    dec [hl]                                      ; $7477: $35
    inc bc                                        ; $7478: $03
    ld e, [hl]                                    ; $7479: $5e
    push bc                                       ; $747a: $c5
    ld h, c                                       ; $747b: $61
    rst $00                                       ; $747c: $c7
    ld [hl], d                                    ; $747d: $72
    add sp, -$38                                  ; $747e: $e8 $c8
    inc bc                                        ; $7480: $03
    ld [hl], h                                    ; $7481: $74
    push bc                                       ; $7482: $c5
    cp l                                          ; $7483: $bd
    ld e, $b8                                     ; $7484: $1e $b8
    cp e                                          ; $7486: $bb
    cp [hl]                                       ; $7487: $be
    dec bc                                        ; $7488: $0b
    ld l, b                                       ; $7489: $68
    dec a                                         ; $748a: $3d
    adc e                                         ; $748b: $8b
    ld a, d                                       ; $748c: $7a
    dec c                                         ; $748d: $0d
    and $45                                       ; $748e: $e6 $45
    ld a, l                                       ; $7490: $7d
    ld c, c                                       ; $7491: $49
    ld l, e                                       ; $7492: $6b
    jp nc, $ecc8                                  ; $7493: $d2 $c8 $ec

    sub h                                         ; $7496: $94
    cpl                                           ; $7497: $2f
    xor a                                         ; $7498: $af
    xor h                                         ; $7499: $ac
    db $eb                                        ; $749a: $eb
    adc [hl]                                      ; $749b: $8e
    sub d                                         ; $749c: $92
    ld e, a                                       ; $749d: $5f
    sub e                                         ; $749e: $93
    ld b, $21                                     ; $749f: $06 $21
    ld d, h                                       ; $74a1: $54
    ld l, [hl]                                    ; $74a2: $6e
    ret c                                         ; $74a3: $d8

    dec d                                         ; $74a4: $15
    inc bc                                        ; $74a5: $03
    rst $00                                       ; $74a6: $c7
    ld a, a                                       ; $74a7: $7f
    ld c, d                                       ; $74a8: $4a
    ldh a, [rHDMA3]                               ; $74a9: $f0 $53

Jump_020_74ab:
    ld h, d                                       ; $74ab: $62
    dec sp                                        ; $74ac: $3b
    ld c, [hl]                                    ; $74ad: $4e
    sbc [hl]                                      ; $74ae: $9e
    ld [hl], c                                    ; $74af: $71
    ld d, a                                       ; $74b0: $57
    call nc, Call_020_6bfa                        ; $74b1: $d4 $fa $6b
    jp nc, $fe0c                                  ; $74b4: $d2 $0c $fe

    ld l, c                                       ; $74b7: $69
    db $dd                                        ; $74b8: $dd
    ld e, a                                       ; $74b9: $5f
    xor d                                         ; $74ba: $aa
    and [hl]                                      ; $74bb: $a6
    dec hl                                        ; $74bc: $2b
    ld b, $bd                                     ; $74bd: $06 $bd
    ld e, $b8                                     ; $74bf: $1e $b8
    dec hl                                        ; $74c1: $2b
    ld e, a                                       ; $74c2: $5f
    add e                                         ; $74c3: $83
    sbc c                                         ; $74c4: $99
    adc $6c                                       ; $74c5: $ce $6c
    ld c, c                                       ; $74c7: $49
    ld a, [c]                                     ; $74c8: $f2
    pop af                                        ; $74c9: $f1
    rst $10                                       ; $74ca: $d7
    res 7, h                                      ; $74cb: $cb $bc
    db $fc                                        ; $74cd: $fc
    jp nc, $cbcb                                  ; $74ce: $d2 $cb $cb

    ld a, [hl-]                                   ; $74d1: $3a
    ld a, [c]                                     ; $74d2: $f2
    or $57                                        ; $74d3: $f6 $57
    ld c, $08                                     ; $74d5: $0e $08
    inc bc                                        ; $74d7: $03
    xor l                                         ; $74d8: $ad
    rst $18                                       ; $74d9: $df
    ld [hl], b                                    ; $74da: $70
    ld [hl], a                                    ; $74db: $77
    ld a, d                                       ; $74dc: $7a
    ld [de], a                                    ; $74dd: $12
    ld [hl], a                                    ; $74de: $77
    inc l                                         ; $74df: $2c
    rst $10                                       ; $74e0: $d7
    and h                                         ; $74e1: $a4
    ld e, c                                       ; $74e2: $59
    sbc l                                         ; $74e3: $9d
    sub d                                         ; $74e4: $92
    rra                                           ; $74e5: $1f
    ld e, a                                       ; $74e6: $5f
    ld [hl], d                                    ; $74e7: $72
    ld e, [hl]                                    ; $74e8: $5e
    ld l, $ec                                     ; $74e9: $2e $ec
    ld b, d                                       ; $74eb: $42
    ld d, a                                       ; $74ec: $57
    inc c                                         ; $74ed: $0c
    rst $00                                       ; $74ee: $c7
    ld a, a                                       ; $74ef: $7f
    ld c, d                                       ; $74f0: $4a
    ldh a, [$dc]                                  ; $74f1: $f0 $dc
    ld e, l                                       ; $74f3: $5d
    rst $18                                       ; $74f4: $df
    dec b                                         ; $74f5: $05
    xor d                                         ; $74f6: $aa
    ld sp, hl                                     ; $74f7: $f9
    ld a, [hl-]                                   ; $74f8: $3a
    add hl, de                                    ; $74f9: $19
    xor a                                         ; $74fa: $af
    rst $38                                       ; $74fb: $ff
    inc a                                         ; $74fc: $3c
    rlca                                          ; $74fd: $07
    xor [hl]                                      ; $74fe: $ae
    ld a, [c]                                     ; $74ff: $f2
    ld e, l                                       ; $7500: $5d
    jr nc, jr_020_7540                            ; $7501: $30 $3d

    ld c, e                                       ; $7503: $4b
    xor $c2                                       ; $7504: $ee $c2
    jp z, $c577                                   ; $7506: $ca $77 $c5

    ld b, a                                       ; $7509: $47
    cp a                                          ; $750a: $bf
    ei                                            ; $750b: $fb
    res 0, d                                      ; $750c: $cb $82
    rst $30                                       ; $750e: $f7
    dec h                                         ; $750f: $25
    ld hl, $bc84                                  ; $7510: $21 $84 $bc
    db $fc                                        ; $7513: $fc
    ld e, h                                       ; $7514: $5c
    db $f4                                        ; $7515: $f4
    ld d, d                                       ; $7516: $52
    dec c                                         ; $7517: $0d
    and [hl]                                      ; $7518: $a6
    db $ed                                        ; $7519: $ed
    inc [hl]                                      ; $751a: $34
    ld a, $cf                                     ; $751b: $3e $cf
    push bc                                       ; $751d: $c5
    ld d, a                                       ; $751e: $57
    db $eb                                        ; $751f: $eb
    inc hl                                        ; $7520: $23
    inc c                                         ; $7521: $0c
    rst $00                                       ; $7522: $c7
    inc h                                         ; $7523: $24
    push de                                       ; $7524: $d5
    ld a, h                                       ; $7525: $7c
    cp h                                          ; $7526: $bc
    ld [de], a                                    ; $7527: $12
    ld a, e                                       ; $7528: $7b
    sbc c                                         ; $7529: $99
    ld h, a                                       ; $752a: $67
    adc $56                                       ; $752b: $ce $56
    ld b, c                                       ; $752d: $41
    ld [$f979], sp                                ; $752e: $08 $79 $f9
    cp c                                          ; $7531: $b9
    add sp, -$5b                                  ; $7532: $e8 $a5
    pop af                                        ; $7534: $f1
    scf                                           ; $7535: $37
    add $b5                                       ; $7536: $c6 $b5
    ld a, a                                       ; $7538: $7f
    pop af                                        ; $7539: $f1
    push de                                       ; $753a: $d5
    ld a, d                                       ; $753b: $7a
    add hl, hl                                    ; $753c: $29
    jr jr_020_75a3                                ; $753d: $18 $64

    ld [de], a                                    ; $753f: $12

jr_020_7540:
    jp nz, $c547                                  ; $7540: $c2 $47 $c5

    jr c, jr_020_75b2                             ; $7543: $38 $6d

    and a                                         ; $7545: $a7
    ld a, [bc]                                    ; $7546: $0a
    db $eb                                        ; $7547: $eb
    add d                                         ; $7548: $82
    ld bc, $5dc7                                  ; $7549: $01 $c7 $5d
    ld a, [$ccc5]                                 ; $754c: $fa $c5 $cc
    ld a, [$60a5]                                 ; $754f: $fa $a5 $60
    add c                                         ; $7552: $81
    and h                                         ; $7553: $a4
    jp hl                                         ; $7554: $e9


    inc l                                         ; $7555: $2c
    db $ed                                        ; $7556: $ed
    add c                                         ; $7557: $81
    dec de                                        ; $7558: $1b
    or $e4                                        ; $7559: $f6 $e4
    jr nc, jr_020_758c                            ; $755b: $30 $2f

    rla                                           ; $755d: $17
    and $37                                       ; $755e: $e6 $37
    ld a, h                                       ; $7560: $7c
    add h                                         ; $7561: $84
    ld bc, $af16                                  ; $7562: $01 $16 $af
    push bc                                       ; $7565: $c5
    cp b                                          ; $7566: $b8
    or $cf                                        ; $7567: $f6 $cf
    ld l, a                                       ; $7569: $6f
    ld hl, sp-$0d                                 ; $756a: $f8 $f3
    ld e, h                                       ; $756c: $5c
    ldh a, [$3e]                                  ; $756d: $f0 $3e
    ld b, e                                       ; $756f: $43
    db $ec                                        ; $7570: $ec
    add l                                         ; $7571: $85
    rst $10                                       ; $7572: $d7
    ld h, [hl]                                    ; $7573: $66
    sub b                                         ; $7574: $90
    ld c, c                                       ; $7575: $49
    ld [$9603], sp                                ; $7576: $08 $03 $96
    ld e, d                                       ; $7579: $5a
    cp b                                          ; $757a: $b8
    ld a, [c]                                     ; $757b: $f2
    ld a, [c]                                     ; $757c: $f2
    di                                            ; $757d: $f3
    inc e                                         ; $757e: $1c
    db $fc                                        ; $757f: $fc
    cpl                                           ; $7580: $2f
    ld l, h                                       ; $7581: $6c
    ld d, $88                                     ; $7582: $16 $88
    ld [de], a                                    ; $7584: $12

Jump_020_7585:
    add e                                         ; $7585: $83
    and h                                         ; $7586: $a4
    and l                                         ; $7587: $a5
    ld l, l                                       ; $7588: $6d

jr_020_7589:
    rst $08                                       ; $7589: $cf
    ld [hl], e                                    ; $758a: $73
    xor l                                         ; $758b: $ad

jr_020_758c:
    add hl, de                                    ; $758c: $19
    ldh a, [$2a]                                  ; $758d: $f0 $2a
    ld c, $08                                     ; $758f: $0e $08
    inc bc                                        ; $7591: $03
    ld d, $1a                                     ; $7592: $16 $1a
    ld [hl], h                                    ; $7594: $74
    xor [hl]                                      ; $7595: $ae
    rst $38                                       ; $7596: $ff
    jp nc, $a51e                                  ; $7597: $d2 $1e $a5

    rst $08                                       ; $759a: $cf
    db $10                                        ; $759b: $10
    ld a, e                                       ; $759c: $7b
    ld bc, $6257                                  ; $759d: $01 $57 $62
    sub a                                         ; $75a0: $97
    add d                                         ; $75a1: $82
    add l                                         ; $75a2: $85

jr_020_75a3:
    ld a, [de]                                    ; $75a3: $1a
    call c, $bb8a                                 ; $75a4: $dc $8a $bb
    sub e                                         ; $75a7: $93
    ld c, l                                       ; $75a8: $4d
    db $10                                        ; $75a9: $10
    call nz, $5587                                ; $75aa: $c4 $87 $55
    cpl                                           ; $75ad: $2f
    xor [hl]                                      ; $75ae: $ae
    sub a                                         ; $75af: $97
    ld h, d                                       ; $75b0: $62
    or e                                          ; $75b1: $b3

jr_020_75b2:
    or [hl]                                       ; $75b2: $b6
    cp c                                          ; $75b3: $b9
    sub c                                         ; $75b4: $91
    call $d3b3                                    ; $75b5: $cd $b3 $d3
    scf                                           ; $75b8: $37
    and l                                         ; $75b9: $a5
    ld d, a                                       ; $75ba: $57
    ld h, l                                       ; $75bb: $65
    ld l, $7a                                     ; $75bc: $2e $7a
    add hl, bc                                    ; $75be: $09
    db $10                                        ; $75bf: $10
    ld b, $96                                     ; $75c0: $06 $96
    ld d, l                                       ; $75c2: $55
    ld c, d                                       ; $75c3: $4a
    dec [hl]                                      ; $75c4: $35
    rra                                           ; $75c5: $1f
    xor a                                         ; $75c6: $af

jr_020_75c7:
    rst $10                                       ; $75c7: $d7
    rst $20                                       ; $75c8: $e7
    cp c                                          ; $75c9: $b9
    ldh [$7d], a                                  ; $75ca: $e0 $7d
    dec h                                         ; $75cc: $25
    jp Jump_000_129f                              ; $75cd: $c3 $9f $12


    ld e, e                                       ; $75d0: $5b
    ld d, l                                       ; $75d1: $55
    sub h                                         ; $75d2: $94
    add d                                         ; $75d3: $82
    ld e, a                                       ; $75d4: $5f
    ld a, [de]                                    ; $75d5: $1a
    ld e, a                                       ; $75d6: $5f
    jp c, $f2f3                                   ; $75d7: $da $f3 $f2

    ldh a, [$3b]                                  ; $75da: $f0 $3b
    reti                                          ; $75dc: $d9


    inc b                                         ; $75dd: $04
    ld b, c                                       ; $75de: $41
    db $fc                                        ; $75df: $fc
    ld d, l                                       ; $75e0: $55
    ld sp, $3cbd                                  ; $75e1: $31 $bd $3c
    and b                                         ; $75e4: $a0
    push af                                       ; $75e5: $f5
    jr z, jr_020_75c7                             ; $75e6: $28 $df

    call nc, Call_000_07e4                        ; $75e8: $d4 $e4 $07
    cp c                                          ; $75eb: $b9
    db $eb                                        ; $75ec: $eb
    ld d, l                                       ; $75ed: $55
    ld l, c                                       ; $75ee: $69
    cp d                                          ; $75ef: $ba
    ld h, b                                       ; $75f0: $60
    sub [hl]                                      ; $75f1: $96
    dec d                                         ; $75f2: $15
    push af                                       ; $75f3: $f5
    ld e, a                                       ; $75f4: $5f
    ld d, c                                       ; $75f5: $51
    db $eb                                        ; $75f6: $eb
    and l                                         ; $75f7: $a5
    ld h, b                                       ; $75f8: $60
    sbc [hl]                                      ; $75f9: $9e
    db $e3                                        ; $75fa: $e3
    ld e, a                                       ; $75fb: $5f
    ld h, l                                       ; $75fc: $65
    daa                                           ; $75fd: $27
    sbc e                                         ; $75fe: $9b
    jr nz, jr_020_7589                            ; $75ff: $20 $88

    cp a                                          ; $7601: $bf
    ld a, [hl+]                                   ; $7602: $2a
    and [hl]                                      ; $7603: $a6
    sub a                                         ; $7604: $97
    rlca                                          ; $7605: $07
    add h                                         ; $7606: $84
    ld d, b                                       ; $7607: $50
    db $db                                        ; $7608: $db
    ld hl, sp-$44                                 ; $7609: $f8 $bc
    db $fc                                        ; $760b: $fc
    and b                                         ; $760c: $a0
    db $e4                                        ; $760d: $e4
    jp Jump_020_7e54                              ; $760e: $c3 $54 $7e


jr_020_7611:
    ld c, h                                       ; $7611: $4c
    dec h                                         ; $7612: $25
    ld e, [hl]                                    ; $7613: $5e
    ld a, [bc]                                    ; $7614: $0a
    cp d                                          ; $7615: $ba
    ld h, b                                       ; $7616: $60
    sub [hl]                                      ; $7617: $96
    sub l                                         ; $7618: $95
    db $ec                                        ; $7619: $ec
    db $fc                                        ; $761a: $fc
    cp h                                          ; $761b: $bc
    inc a                                         ; $761c: $3c
    db $fc                                        ; $761d: $fc
    ld c, [hl]                                    ; $761e: $4e
    ld [hl], $41                                  ; $761f: $36 $41
    db $10                                        ; $7621: $10
    ld a, a                                       ; $7622: $7f
    ld d, l                                       ; $7623: $55
    ld c, h                                       ; $7624: $4c
    cpl                                           ; $7625: $2f
    rrca                                          ; $7626: $0f
    ld h, e                                       ; $7627: $63
    ld c, c                                       ; $7628: $49
    dec [hl]                                      ; $7629: $35
    ld e, a                                       ; $762a: $5f
    xor b                                         ; $762b: $a8
    push af                                       ; $762c: $f5
    ld e, a                                       ; $762d: $5f
    ret c                                         ; $762e: $d8

    xor h                                         ; $762f: $ac
    ld l, l                                       ; $7630: $6d
    call c, Call_000_3317                         ; $7631: $dc $17 $33
    db $eb                                        ; $7634: $eb
    ld l, e                                       ; $7635: $6b
    rst $18                                       ; $7636: $df
    nop                                           ; $7637: $00
    ld h, c                                       ; $7638: $61
    dec a                                         ; $7639: $3d
    jp z, Jump_020_7585                           ; $763a: $ca $85 $75

jr_020_763d:
    and d                                         ; $763d: $a2
    cp d                                          ; $763e: $ba
    sbc l                                         ; $763f: $9d
    ld [de], a                                    ; $7640: $12
    adc [hl]                                      ; $7641: $8e
    cp $19                                        ; $7642: $fe $19
    inc l                                         ; $7644: $2c
    ld c, h                                       ; $7645: $4c
    ld sp, hl                                     ; $7646: $f9
    or l                                          ; $7647: $b5
    sbc a                                         ; $7648: $9f
    xor d                                         ; $7649: $aa
    ld a, [c]                                     ; $764a: $f2
    add b                                         ; $764b: $80
    jr nc, jr_020_767b                            ; $764c: $30 $2d

    dec h                                         ; $764e: $25
    ld c, l                                       ; $764f: $4d
    ld h, h                                       ; $7650: $64
    or e                                          ; $7651: $b3
    adc h                                         ; $7652: $8c
    ld d, a                                       ; $7653: $57
    db $eb                                        ; $7654: $eb
    xor a                                         ; $7655: $af
    xor l                                         ; $7656: $ad
    ld d, l                                       ; $7657: $55
    ld a, l                                       ; $7658: $7d
    ld [$f2f3], a                                 ; $7659: $ea $f3 $f2
    dec sp                                        ; $765c: $3b
    reti                                          ; $765d: $d9


    inc b                                         ; $765e: $04
    ld b, c                                       ; $765f: $41
    ld a, h                                       ; $7660: $7c
    add sp, -$76                                  ; $7661: $e8 $8a
    ld bc, $f196                                  ; $7663: $01 $96 $f1
    ld c, d                                       ; $7666: $4a
    ld a, $cf                                     ; $7667: $3e $cf
    or l                                          ; $7669: $b5
    ld a, a                                       ; $766a: $7f
    ld e, [hl]                                    ; $766b: $5e
    ld a, [hl]                                    ; $766c: $7e
    or $15                                        ; $766d: $f6 $15
    ldh a, [$79]                                  ; $766f: $f0 $79
    ld c, $fe                                     ; $7671: $0e $fe
    rst $10                                       ; $7673: $d7
    sbc d                                         ; $7674: $9a
    ld bc, $e2af                                  ; $7675: $01 $af $e2
    add b                                         ; $7678: $80
    jr nc, jr_020_7611                            ; $7679: $30 $96

jr_020_767b:
    sbc d                                         ; $767b: $9a
    push af                                       ; $767c: $f5
    ld d, a                                       ; $767d: $57
    ld h, l                                       ; $767e: $65
    ld hl, sp-$2d                                 ; $767f: $f8 $d3
    push bc                                       ; $7681: $c5
    and h                                         ; $7682: $a4
    ld h, b                                       ; $7683: $60
    cp h                                          ; $7684: $bc
    ld [hl], $f3                                  ; $7685: $36 $f3
    ld e, h                                       ; $7687: $5c
    sub b                                         ; $7688: $90
    di                                            ; $7689: $f3
    ld e, h                                       ; $768a: $5c
    ld l, e                                       ; $768b: $6b
    ld b, $bc                                     ; $768c: $06 $bc
    adc d                                         ; $768e: $8a
    inc bc                                        ; $768f: $03
    jp nz, $9596                                  ; $7690: $c2 $96 $95

    db $ec                                        ; $7693: $ec
    db $fc                                        ; $7694: $fc
    inc l                                         ; $7695: $2c
    ld h, e                                       ; $7696: $63

jr_020_7697:
    ld c, c                                       ; $7697: $49
    dec [hl]                                      ; $7698: $35
    ld e, a                                       ; $7699: $5f
    ldh a, [$be]                                  ; $769a: $f0 $be
    jr nc, @-$01                                  ; $769c: $30 $fd

    ld h, $0d                                     ; $769e: $26 $0d
    ld l, [hl]                                    ; $76a0: $6e
    ld d, l                                       ; $76a1: $55
    and a                                         ; $76a2: $a7
    rlca                                          ; $76a3: $07
    ld b, b                                       ; $76a4: $40
    jr jr_020_763d                                ; $76a5: $18 $96

    pop af                                        ; $76a7: $f1
    rla                                           ; $76a8: $17
    jp z, $f4c2                                   ; $76a9: $ca $c2 $f4

    ld a, [c]                                     ; $76ac: $f2
    ld [hl-], a                                   ; $76ad: $32
    ld a, $4d                                     ; $76ae: $3e $4d
    ld h, h                                       ; $76b0: $64
    adc e                                         ; $76b1: $8b
    rst $28                                       ; $76b2: $ef
    dec bc                                        ; $76b3: $0b
    ld a, a                                       ; $76b4: $7f
    ld c, h                                       ; $76b5: $4c
    ld e, $60                                     ; $76b6: $1e $60
    ld h, c                                       ; $76b8: $61
    inc bc                                        ; $76b9: $03
    rra                                           ; $76ba: $1f
    ld l, l                                       ; $76bb: $6d
    add h                                         ; $76bc: $84
    ld bc, $c947                                  ; $76bd: $01 $47 $c9
    rst $08                                       ; $76c0: $cf
    swap a                                        ; $76c1: $cb $37
    dec bc                                        ; $76c3: $0b
    ld a, [c]                                     ; $76c4: $f2
    ld d, d                                       ; $76c5: $52
    jr nc, jr_020_7697                            ; $76c6: $30 $cf

    ld b, c                                       ; $76c8: $41
    ld c, c                                       ; $76c9: $49
    ld a, [hl]                                    ; $76ca: $7e
    ld a, [hl-]                                   ; $76cb: $3a
    ei                                            ; $76cc: $fb
    add $b0                                       ; $76cd: $c6 $b0
    dec hl                                        ; $76cf: $2b
    ld b, $96                                     ; $76d0: $06 $96
    sub l                                         ; $76d2: $95
    db $ec                                        ; $76d3: $ec
    db $fc                                        ; $76d4: $fc
    inc l                                         ; $76d5: $2c
    dec bc                                        ; $76d6: $0b
    sbc $77                                       ; $76d7: $de $77
    ret                                           ; $76d9: $c9


    ld [hl], e                                    ; $76da: $73
    xor l                                         ; $76db: $ad
    add $b6                                       ; $76dc: $c6 $b6
    db $e3                                        ; $76de: $e3
    ld [hl], a                                    ; $76df: $77
    adc h                                         ; $76e0: $8c
    ld l, l                                       ; $76e1: $6d
    and e                                         ; $76e2: $a3
    xor l                                         ; $76e3: $ad
    ld b, a                                       ; $76e4: $47
    ld d, c                                       ; $76e5: $51
    rra                                           ; $76e6: $1f
    xor a                                         ; $76e7: $af
    or b                                          ; $76e8: $b0
    ld h, e                                       ; $76e9: $63
    sub h                                         ; $76ea: $94
    push de                                       ; $76eb: $d5
    ld h, b                                       ; $76ec: $60
    dec h                                         ; $76ed: $25
    dec c                                         ; $76ee: $0d
    inc a                                         ; $76ef: $3c
    jp nz, Jump_000_292d                          ; $76f0: $c2 $2d $29

    jp nc, $d770                                  ; $76f3: $d2 $70 $d7

    ld [hl], $3e                                  ; $76f6: $36 $3e
    ld c, e                                       ; $76f8: $4b
    dec l                                         ; $76f9: $2d
    ld e, h                                       ; $76fa: $5c
    db $db                                        ; $76fb: $db
    ld b, b                                       ; $76fc: $40
    inc sp                                        ; $76fd: $33
    cp $7a                                        ; $76fe: $fe $7a
    ld e, c                                       ; $7700: $59
    ret c                                         ; $7701: $d8

    inc l                                         ; $7702: $2c
    ret nc                                        ; $7703: $d0

    ldh a, [rNR11]                                ; $7704: $f0 $11
    ld b, $dd                                     ; $7706: $06 $dd
    sub h                                         ; $7708: $94
    ld l, d                                       ; $7709: $6a
    ld a, $d7                                     ; $770a: $3e $d7
    ld e, b                                       ; $770c: $58
    rst $20                                       ; $770d: $e7
    adc $52                                       ; $770e: $ce $52
    dec bc                                        ; $7710: $0b
    rla                                           ; $7711: $17
    db $e4                                        ; $7712: $e4
    and l                                         ; $7713: $a5
    ld h, b                                       ; $7714: $60
    halt                                          ; $7715: $76
    jp z, $e574                                   ; $7716: $ca $74 $e5

    ld b, $65                                     ; $7719: $06 $65
    ld d, b                                       ; $771b: $50
    and l                                         ; $771c: $a5
    inc a                                         ; $771d: $3c
    jp nz, $9a96                                  ; $771e: $c2 $96 $9a

    push af                                       ; $7721: $f5
    ld b, a                                       ; $7722: $47
    ld l, a                                       ; $7723: $6f
    ld a, l                                       ; $7724: $7d
    ld e, c                                       ; $7725: $59
    ei                                            ; $7726: $fb
    sbc a                                         ; $7727: $9f
    sub [hl]                                      ; $7728: $96
    inc [hl]                                      ; $7729: $34
    sbc l                                         ; $772a: $9d
    adc e                                         ; $772b: $8b
    ld e, [hl]                                    ; $772c: $5e
    ld e, d                                       ; $772d: $5a
    ei                                            ; $772e: $fb
    db $ed                                        ; $772f: $ed
    sub h                                         ; $7730: $94
    rst $28                                       ; $7731: $ef
    add d                                         ; $7732: $82
    ld bc, $3727                                  ; $7733: $01 $27 $37
    db $e3                                        ; $7736: $e3
    cpl                                           ; $7737: $2f
    or c                                          ; $7738: $b1
    db $e4                                        ; $7739: $e4
    ld [hl], a                                    ; $773a: $77
    ld h, c                                       ; $773b: $61
    ldh [$a6], a                                  ; $773c: $e0 $a6
    xor d                                         ; $773e: $aa
    inc hl                                        ; $773f: $23
    inc c                                         ; $7740: $0c
    dec a                                         ; $7741: $3d
    set 1, e                                      ; $7742: $cb $cb
    rst $10                                       ; $7744: $d7
    ld h, b                                       ; $7745: $60
    ld e, [hl]                                    ; $7746: $5e
    ld a, [hl]                                    ; $7747: $7e
    db $ec                                        ; $7748: $ec
    jp nc, Jump_020_60a5                          ; $7749: $d2 $a5 $60

    sub l                                         ; $774c: $95
    ld c, d                                       ; $774d: $4a
    ld d, a                                       ; $774e: $57
    inc c                                         ; $774f: $0c
    dec a                                         ; $7750: $3d
    set 1, e                                      ; $7751: $cb $cb
    rst $10                                       ; $7753: $d7
    ld h, b                                       ; $7754: $60
    ld e, [hl]                                    ; $7755: $5e
    ld a, [hl]                                    ; $7756: $7e
    ld c, a                                       ; $7757: $4f
    pop bc                                        ; $7758: $c1
    and l                                         ; $7759: $a5
    rst $28                                       ; $775a: $ef
    adc d                                         ; $775b: $8a
    ld bc, $af16                                  ; $775c: $01 $16 $af
    pop bc                                        ; $775f: $c1
    sub h                                         ; $7760: $94
    ld d, [hl]                                    ; $7761: $56
    sub d                                         ; $7762: $92
    ld d, d                                       ; $7763: $52
    and $b9                                       ; $7764: $e6 $b9
    ldh a, [$df]                                  ; $7766: $f0 $df
    rst $10                                       ; $7768: $d7
    and h                                         ; $7769: $a4
    pop hl                                        ; $776a: $e1
    xor $64                                       ; $776b: $ee $64
    ld b, c                                       ; $776d: $41
    db $eb                                        ; $776e: $eb
    sbc [hl]                                      ; $776f: $9e
    xor $2f                                       ; $7770: $ee $2f
    add e                                         ; $7772: $83
    dec hl                                        ; $7773: $2b
    ld [$9603], sp                                ; $7774: $08 $03 $96
    ld d, l                                       ; $7777: $55
    ld c, d                                       ; $7778: $4a
    dec [hl]                                      ; $7779: $35
    rra                                           ; $777a: $1f
    xor a                                         ; $777b: $af
    rst $10                                       ; $777c: $d7
    rst $20                                       ; $777d: $e7
    cp c                                          ; $777e: $b9
    di                                            ; $777f: $f3
    ld a, [c]                                     ; $7780: $f2
    jp nc, $fcbc                                  ; $7781: $d2 $bc $fc

    ld e, d                                       ; $7784: $5a
    inc sp                                        ; $7785: $33
    ldh [rHDMA5], a                               ; $7786: $e0 $55
    inc e                                         ; $7788: $1c
    halt                                          ; $7789: $76
    sbc h                                         ; $778a: $9c
    add [hl]                                      ; $778b: $86
    ld l, c                                       ; $778c: $69
    ld h, b                                       ; $778d: $60
    dec a                                         ; $778e: $3d
    xor a                                         ; $778f: $af
    ld d, a                                       ; $7790: $57
    push hl                                       ; $7791: $e5
    ld h, c                                       ; $7792: $61
    ld c, d                                       ; $7793: $4a
    ld l, h                                       ; $7794: $6c
    dec a                                         ; $7795: $3d
    cpl                                           ; $7796: $2f
    ld b, a                                       ; $7797: $47
    dec d                                         ; $7798: $15
    ld b, $eb                                     ; $7799: $06 $eb
    and [hl]                                      ; $779b: $a6
    jp nz, Jump_000_2dd6                          ; $779c: $c2 $d6 $2d

    ld h, e                                       ; $779f: $63
    db $fc                                        ; $77a0: $fc
    jp z, $6053                                   ; $77a1: $ca $53 $60

    db $dd                                        ; $77a4: $dd
    and d                                         ; $77a5: $a2
    ld l, c                                       ; $77a6: $69
    ld [hl], a                                    ; $77a7: $77
    pop bc                                        ; $77a8: $c1
    db $dd                                        ; $77a9: $dd
    adc d                                         ; $77aa: $8a
    add hl, bc                                    ; $77ab: $09
    ld [bc], a                                    ; $77ac: $02
    ld e, l                                       ; $77ad: $5d
    ld d, l                                       ; $77ae: $55
    ld c, h                                       ; $77af: $4c
    db $10                                        ; $77b0: $10
    jr z, @+$79                                   ; $77b1: $28 $77

    ld d, l                                       ; $77b3: $55
    ld sp, $a041                                  ; $77b4: $31 $41 $a0
    xor e                                         ; $77b7: $ab
    adc d                                         ; $77b8: $8a
    add hl, bc                                    ; $77b9: $09
    ld [bc], a                                    ; $77ba: $02
    push hl                                       ; $77bb: $e5
    adc [hl]                                      ; $77bc: $8e
    rst $08                                       ; $77bd: $cf
    inc e                                         ; $77be: $1c
    sbc a                                         ; $77bf: $9f
    reti                                          ; $77c0: $d9


    dec b                                         ; $77c1: $05
    inc bc                                        ; $77c2: $03
    sub [hl]                                      ; $77c3: $96
    pop af                                        ; $77c4: $f1
    ld c, d                                       ; $77c5: $4a
    ld a, $cf                                     ; $77c6: $3e $cf
    dec b                                         ; $77c8: $05
    rst $28                                       ; $77c9: $ef
    cp e                                          ; $77ca: $bb
    db $e4                                        ; $77cb: $e4
    cp c                                          ; $77cc: $b9
    ld d, a                                       ; $77cd: $57
    pop af                                        ; $77ce: $f1
    or d                                          ; $77cf: $b2
    ld d, b                                       ; $77d0: $50
    add e                                         ; $77d1: $83
    ld e, e                                       ; $77d2: $5b
    and c                                         ; $77d3: $a1
    call $98b2                                    ; $77d4: $cd $b2 $98
    sub $9f                                       ; $77d7: $d6 $9f
    rst $20                                       ; $77d9: $e7
    ret c                                         ; $77da: $d8

    dec c                                         ; $77db: $0d
    db $10                                        ; $77dc: $10
    ld b, $3d                                     ; $77dd: $06 $3d
    adc e                                         ; $77df: $8b
    ld a, [$7e54]                                 ; $77e0: $fa $54 $7e
    ld c, l                                       ; $77e3: $4d
    sbc d                                         ; $77e4: $9a
    push bc                                       ; $77e5: $c5
    call z, $a5fa                                 ; $77e6: $cc $fa $a5
    ld h, b                                       ; $77e9: $60
    ld [$315d], a                                 ; $77ea: $ea $5d $31
    dec a                                         ; $77ed: $3d
    jp z, Jump_020_4aaf                           ; $77ee: $ca $af $4a

    ld h, d                                       ; $77f1: $62
    and [hl]                                      ; $77f2: $a6
    ld a, [c]                                     ; $77f3: $f2
    sub h                                         ; $77f4: $94
    ld b, c                                       ; $77f5: $41
    ld hl, sp+$31                                 ; $77f6: $f8 $31
    jp nz, $436c                                  ; $77f8: $c2 $6c $43

    call nc, $0c20                                ; $77fb: $d4 $20 $0c
    ld d, $af                                     ; $77fe: $16 $af
    pop bc                                        ; $7800: $c1
    xor d                                         ; $7801: $aa
    rla                                           ; $7802: $17
    rst $10                                       ; $7803: $d7
    ld c, e                                       ; $7804: $4b

jr_020_7805:
    or c                                          ; $7805: $b1
    sbc c                                         ; $7806: $99
    adc [hl]                                      ; $7807: $8e
    cp a                                          ; $7808: $bf
    call nz, Call_000_319a                        ; $7809: $c4 $9a $31
    ld l, l                                       ; $780c: $6d
    db $10                                        ; $780d: $10
    ld b, $3d                                     ; $780e: $06 $3d
    jp z, $8fc3                                   ; $7810: $ca $c3 $8f

    cp a                                          ; $7813: $bf
    call nz, $8792                                ; $7814: $c4 $92 $87
    ld d, l                                       ; $7817: $55
    ld l, c                                       ; $7818: $69
    ld [hl+], a                                   ; $7819: $22
    sbc e                                         ; $781a: $9b
    add c                                         ; $781b: $81
    rra                                           ; $781c: $1f
    ld h, h                                       ; $781d: $64
    ld hl, sp-$55                                 ; $781e: $f8 $ab
    ld [c], a                                     ; $7820: $e2
    dec hl                                        ; $7821: $2b
    ld e, l                                       ; $7822: $5d
    ld a, [bc]                                    ; $7823: $0a
    db $10                                        ; $7824: $10
    ld b, $96                                     ; $7825: $06 $96
    dec a                                         ; $7827: $3d
    add a                                         ; $7828: $87
    adc $57                                       ; $7829: $ce $57
    cp $6c                                        ; $782b: $fe $6c
    cp d                                          ; $782d: $ba
    adc [hl]                                      ; $782e: $8e
    ld e, h                                       ; $782f: $5c
    xor e                                         ; $7830: $ab
    ld a, [$52af]                                 ; $7831: $fa $af $52
    sub c                                         ; $7834: $91
    xor e                                         ; $7835: $ab
    pop bc                                        ; $7836: $c1
    inc hl                                        ; $7837: $23
    inc c                                         ; $7838: $0c
    sub [hl]                                      ; $7839: $96
    ld e, d                                       ; $783a: $5a
    jr c, jr_020_7805                             ; $783b: $38 $c8

    dec a                                         ; $783d: $3d
    add a                                         ; $783e: $87
    ld [$33fa], a                                 ; $783f: $ea $fa $33
    xor $2c                                       ; $7842: $ee $2c
    xor e                                         ; $7844: $ab
    sub h                                         ; $7845: $94
    ld l, d                                       ; $7846: $6a
    ld a, $b8                                     ; $7847: $3e $b8
    ld a, $f0                                     ; $7849: $3e $f0
    dec de                                        ; $784b: $1b
    inc hl                                        ; $784c: $23
    jp nz, $c596                                  ; $784d: $c2 $96 $c5

    or h                                          ; $7850: $b4
    cp $da                                        ; $7851: $fe $da
    rrca                                          ; $7853: $0f
    ld c, $1f                                     ; $7854: $0e $1f
    db $e3                                        ; $7856: $e3
    dec bc                                        ; $7857: $0b
    jr nz, jr_020_7866                            ; $7858: $20 $0c

    sub [hl]                                      ; $785a: $96
    ld e, d                                       ; $785b: $5a
    jr c, jr_020_78d7                             ; $785c: $38 $79

    ld h, l                                       ; $785e: $65
    sub a                                         ; $785f: $97
    add d                                         ; $7860: $82
    sbc c                                         ; $7861: $99
    adc $92                                       ; $7862: $ce $92
    ld d, $36                                     ; $7864: $16 $36

jr_020_7866:
    dec bc                                        ; $7866: $0b
    dec [hl]                                      ; $7867: $35
    cp b                                          ; $7868: $b8
    push de                                       ; $7869: $d5
    jr nz, @+$69                                  ; $786a: $20 $67

    ld e, c                                       ; $786c: $59
    and l                                         ; $786d: $a5

Jump_020_786e:
    or h                                          ; $786e: $b4
    or $4f                                        ; $786f: $f6 $4f
    sra e                                         ; $7871: $cb $2b
    dec de                                        ; $7873: $1b
    ld e, a                                       ; $7874: $5f
    sbc [hl]                                      ; $7875: $9e
    ld b, $55                                     ; $7876: $06 $55
    ret                                           ; $7878: $c9


    adc h                                         ; $7879: $8c
    inc bc                                        ; $787a: $03
    ld d, a                                       ; $787b: $57
    ld [hl], c                                    ; $787c: $71
    ld b, b                                       ; $787d: $40
    jr jr_020_78bd                                ; $787e: $18 $3d

    jp z, $0fc3                                   ; $7880: $ca $c3 $0f

    ld e, [hl]                                    ; $7883: $5e
    dec e                                         ; $7884: $1d
    and [hl]                                      ; $7885: $a6
    ld a, [c]                                     ; $7886: $f2
    xor e                                         ; $7887: $ab
    ld [hl-], a                                   ; $7888: $32
    or h                                          ; $7889: $b4
    sbc e                                         ; $788a: $9b
    ld l, $18                                     ; $788b: $2e $18
    xor l                                         ; $788d: $ad
    rst $18                                       ; $788e: $df
    ld [hl], b                                    ; $788f: $70
    ld b, a                                       ; $7890: $47
    add hl, sp                                    ; $7891: $39
    ld a, c                                       ; $7892: $79
    ld h, l                                       ; $7893: $65
    sub a                                         ; $7894: $97
    add d                                         ; $7895: $82
    and l                                         ; $7896: $a5
    push af                                       ; $7897: $f5
    ld h, l                                       ; $7898: $65
    ld h, c                                       ; $7899: $61
    inc sp                                        ; $789a: $33
    jr z, jr_020_7906                             ; $789b: $28 $69

    ld [hl+], a                                   ; $789d: $22
    ld a, e                                       ; $789e: $7b
    jp hl                                         ; $789f: $e9


    add d                                         ; $78a0: $82
    ld bc, $cadd                                  ; $78a1: $01 $dd $ca
    ld d, a                                       ; $78a4: $57
    push af                                       ; $78a5: $f5
    and l                                         ; $78a6: $a5
    pop af                                        ; $78a7: $f1
    ld a, c                                       ; $78a8: $79
    ld sp, hl                                     ; $78a9: $f9
    ld bc, $efff                                  ; $78aa: $01 $ff $ef
    ld [hl], e                                    ; $78ad: $73
    ret                                           ; $78ae: $c9


    jr @-$3f                                      ; $78af: $18 $bf

    add hl, de                                    ; $78b1: $19
    ld e, a                                       ; $78b2: $5f
    sbc [hl]                                      ; $78b3: $9e
    halt                                          ; $78b4: $76
    ld a, l                                       ; $78b5: $7d
    ld d, l                                       ; $78b6: $55
    add [hl]                                      ; $78b7: $86
    rrca                                          ; $78b8: $0f
    ld l, e                                       ; $78b9: $6b
    scf                                           ; $78ba: $37
    ld l, b                                       ; $78bb: $68
    dec sp                                        ; $78bc: $3b

jr_020_78bd:
    cp d                                          ; $78bd: $ba
    sbc c                                         ; $78be: $99
    sub a                                         ; $78bf: $97

jr_020_78c0:
    rra                                           ; $78c0: $1f
    xor a                                         ; $78c1: $af
    dec c                                         ; $78c2: $0d
    ld [hl], a                                    ; $78c3: $77
    rst $00                                       ; $78c4: $c7
    ret                                           ; $78c5: $c9


    or e                                          ; $78c6: $b3
    add hl, hl                                    ; $78c7: $29
    or c                                          ; $78c8: $b1
    ld e, c                                       ; $78c9: $59
    ld b, $1f                                     ; $78ca: $06 $1f
    db $e3                                        ; $78cc: $e3
    add b                                         ; $78cd: $80
    rst $38                                       ; $78ce: $ff
    ld [hl], a                                    ; $78cf: $77
    sbc b                                         ; $78d0: $98
    ld a, [$2aa0]                                 ; $78d1: $fa $a0 $2a
    sbc c                                         ; $78d4: $99
    sub c                                         ; $78d5: $91
    dec sp                                        ; $78d6: $3b

jr_020_78d7:
    rst $08                                       ; $78d7: $cf
    ld b, h                                       ; $78d8: $44
    jr jr_020_78f1                                ; $78d9: $18 $16

    xor a                                         ; $78db: $af
    pop bc                                        ; $78dc: $c1
    sub h                                         ; $78dd: $94
    or a                                          ; $78de: $b7
    ld c, l                                       ; $78df: $4d
    adc h                                         ; $78e0: $8c
    call $8dc0                                    ; $78e1: $cd $c0 $8d
    ld l, l                                       ; $78e4: $6d
    scf                                           ; $78e5: $37
    cp e                                          ; $78e6: $bb
    or h                                          ; $78e7: $b4
    ld a, [c]                                     ; $78e8: $f2
    ld a, [c]                                     ; $78e9: $f2
    ld [$2703], sp                                ; $78ea: $08 $03 $27
    ld l, e                                       ; $78ed: $6b
    ld [hl], b                                    ; $78ee: $70
    xor e                                         ; $78ef: $ab
    pop af                                        ; $78f0: $f1

jr_020_78f1:
    ld l, c                                       ; $78f1: $69
    ld [hl+], a                                   ; $78f2: $22
    ld e, e                                       ; $78f3: $5b
    ldh a, [$3e]                                  ; $78f4: $f0 $3e
    inc bc                                        ; $78f6: $03
    di                                            ; $78f7: $f3
    ld a, [c]                                     ; $78f8: $f2
    ld a, [c]                                     ; $78f9: $f2
    dec bc                                        ; $78fa: $0b
    ld d, e                                       ; $78fb: $53
    ld a, [hl]                                    ; $78fc: $7e
    rst $20                                       ; $78fd: $e7
    sbc e                                         ; $78fe: $9b
    ld e, e                                       ; $78ff: $5b
    push de                                       ; $7900: $d5
    ld h, e                                       ; $7901: $63
    jp $935d                                      ; $7902: $c3 $5d $93


    ld h, [hl]                                    ; $7905: $66

jr_020_7906:
    ld [hl], l                                    ; $7906: $75
    ld c, d                                       ; $7907: $4a
    ld e, $61                                     ; $7908: $1e $61
    xor l                                         ; $790a: $ad
    ld l, d                                       ; $790b: $6a
    db $fd                                        ; $790c: $fd
    dec [hl]                                      ; $790d: $35
    ld l, c                                       ; $790e: $69
    ld b, $ff                                     ; $790f: $06 $ff
    or h                                          ; $7911: $b4
    or b                                          ; $7912: $b0
    sbc c                                         ; $7913: $99
    and a                                         ; $7914: $a7
    or d                                          ; $7915: $b2
    xor [hl]                                      ; $7916: $ae
    jr jr_020_78c0                                ; $7917: $18 $a7

    inc h                                         ; $7919: $24
    ld [hl], a                                    ; $791a: $77
    sub b                                         ; $791b: $90
    ld [hl+], a                                   ; $791c: $22
    dec c                                         ; $791d: $0d
    ld [hl], a                                    ; $791e: $77
    sub [hl]                                      ; $791f: $96
    dec d                                         ; $7920: $15
    or l                                          ; $7921: $b5
    ld a, $d5                                     ; $7922: $3e $d5
    inc e                                         ; $7924: $1c
    ld h, c                                       ; $7925: $61

jr_020_7926:
    and a                                         ; $7926: $a7
    ld d, $b4                                     ; $7927: $16 $b4
    push af                                       ; $7929: $f5
    jr z, jr_020_7976                             ; $792a: $28 $4a

    push af                                       ; $792c: $f5
    dec [hl]                                      ; $792d: $35
    ld l, c                                       ; $792e: $69
    ret nc                                        ; $792f: $d0

    ld h, [hl]                                    ; $7930: $66
    add hl, de                                    ; $7931: $19

Call_020_7932:
    ld a, a                                       ; $7932: $7f
    and c                                         ; $7933: $a1
    xor h                                         ; $7934: $ac
    ld a, h                                       ; $7935: $7c
    adc l                                         ; $7936: $8d
    dec c                                         ; $7937: $0d
    inc a                                         ; $7938: $3c
    dec sp                                        ; $7939: $3b
    db $e3                                        ; $793a: $e3
    sub l                                         ; $793b: $95
    ret c                                         ; $793c: $d8

    res 4, l                                      ; $793d: $cb $a5
    ld h, b                                       ; $793f: $60
    ld l, c                                       ; $7940: $69
    db $db                                        ; $7941: $db
    ld [$c703], sp                                ; $7942: $08 $03 $c7
    ld e, h                                       ; $7945: $5c
    or [hl]                                       ; $7946: $b6
    ld h, $cd                                     ; $7947: $26 $cd
    jp z, Jump_020_74ab                           ; $7949: $ca $ab $74

    db $dd                                        ; $794c: $dd
    ld a, d                                       ; $794d: $7a
    sub h                                         ; $794e: $94
    sub a                                         ; $794f: $97
    rra                                           ; $7950: $1f
    xor a                                         ; $7951: $af
    jr nc, jr_020_79b1                            ; $7952: $30 $5d

    ld e, e                                       ; $7954: $5b
    ld e, [hl]                                    ; $7955: $5e
    db $eb                                        ; $7956: $eb
    ld a, l                                       ; $7957: $7d
    ld e, a                                       ; $7958: $5f
    sbc d                                         ; $7959: $9a
    ld a, [$978e]                                 ; $795a: $fa $8e $97
    ld c, e                                       ; $795d: $4b
    ld b, c                                       ; $795e: $41
    cp d                                          ; $795f: $ba
    ld b, e                                       ; $7960: $43
    sub a                                         ; $7961: $97
    call Call_020_7932                            ; $7962: $cd $32 $79
    ld h, l                                       ; $7965: $65
    cp e                                          ; $7966: $bb
    cp [hl]                                       ; $7967: $be
    ld c, e                                       ; $7968: $4b
    db $eb                                        ; $7969: $eb
    ld d, c                                       ; $796a: $51
    ld a, [hl]                                    ; $796b: $7e
    rst $00                                       ; $796c: $c7
    add sp, -$73                                  ; $796d: $e8 $8d
    call Call_020_4bba                            ; $796f: $cd $ba $4b
    halt                                          ; $7972: $76
    jp z, $c23b                                   ; $7973: $ca $3b $c2

jr_020_7976:
    dec a                                         ; $7976: $3d
    ld c, e                                       ; $7977: $4b
    adc [hl]                                      ; $7978: $8e
    ld d, a                                       ; $7979: $57
    ret c                                         ; $797a: $d8

    push af                                       ; $797b: $f5
    xor [hl]                                      ; $797c: $ae
    jr jr_020_7926                                ; $797d: $18 $a7

    db $e4                                        ; $797f: $e4
    sub d                                         ; $7980: $92
    ld a, [hl]                                    ; $7981: $7e
    ld [hl], l                                    ; $7982: $75
    ld c, d                                       ; $7983: $4a
    ld e, $d0                                     ; $7984: $1e $d0
    ld h, [hl]                                    ; $7986: $66
    pop af                                        ; $7987: $f1
    add l                                         ; $7988: $85
    ld b, $7c                                     ; $7989: $06 $7c
    ld b, l                                       ; $798b: $45
    xor l                                         ; $798c: $ad
    ccf                                           ; $798d: $3f
    rst $10                                       ; $798e: $d7
    ld a, [$3ad3]                                 ; $798f: $fa $d3 $3a
    ret                                           ; $7992: $c9


    cp a                                          ; $7993: $bf
    ret c                                         ; $7994: $d8

    ld h, $8e                                     ; $7995: $26 $8e
    xor c                                         ; $7997: $a9
    call nc, Call_020_6a17                        ; $7998: $d4 $17 $6a
    ld [hl], b                                    ; $799b: $70
    xor e                                         ; $799c: $ab
    ld a, c                                       ; $799d: $79
    ld l, $78                                     ; $799e: $2e $78
    rst $18                                       ; $79a0: $df
    and l                                         ; $79a1: $a5
    add hl, hl                                    ; $79a2: $29
    or c                                          ; $79a3: $b1
    and l                                         ; $79a4: $a5
    pop af                                        ; $79a5: $f1
    push bc                                       ; $79a6: $c5
    ld e, e                                       ; $79a7: $5b
    rst $38                                       ; $79a8: $ff
    ld a, c                                       ; $79a9: $79
    ld d, c                                       ; $79aa: $51
    ld b, a                                       ; $79ab: $47
    jr jr_020_79eb                                ; $79ac: $18 $3d

    adc e                                         ; $79ae: $8b
    ld a, d                                       ; $79af: $7a
    dec c                                         ; $79b0: $0d

jr_020_79b1:
    and $e5                                       ; $79b1: $e6 $e5
    ld [hl], a                                    ; $79b3: $77
    adc h                                         ; $79b4: $8c
    sbc $d8                                       ; $79b5: $de $d8
    xor h                                         ; $79b7: $ac
    cp e                                          ; $79b8: $bb
    ld h, h                                       ; $79b9: $64
    and a                                         ; $79ba: $a7
    cp h                                          ; $79bb: $bc
    ld [hl], a                                    ; $79bc: $77
    push bc                                       ; $79bd: $c5
    dec a                                         ; $79be: $3d
    jp z, $9e8f                                   ; $79bf: $ca $8f $9e

    add a                                         ; $79c2: $87
    adc [hl]                                      ; $79c3: $8e
    halt                                          ; $79c4: $76
    ld e, [hl]                                    ; $79c5: $5e
    ld h, [hl]                                    ; $79c6: $66
    and a                                         ; $79c7: $a7
    adc h                                         ; $79c8: $8c
    cp a                                          ; $79c9: $bf
    inc e                                         ; $79ca: $1c
    ld d, l                                       ; $79cb: $55
    jr jr_020_7a1a                                ; $79cc: $18 $4c

    adc c                                         ; $79ce: $89
    adc l                                         ; $79cf: $8d
    cp a                                          ; $79d0: $bf
    ld e, [hl]                                    ; $79d1: $5e
    sub l                                         ; $79d2: $95
    rlca                                          ; $79d3: $07
    or h                                          ; $79d4: $b4
    ld e, c                                       ; $79d5: $59
    ld a, h                                       ; $79d6: $7c
    ld b, l                                       ; $79d7: $45
    ld h, c                                       ; $79d8: $61
    and c                                         ; $79d9: $a1
    ld b, $b7                                     ; $79da: $06 $b7
    ld a, [de]                                    ; $79dc: $1a
    dec a                                         ; $79dd: $3d

jr_020_79de:
    rrca                                          ; $79de: $0f
    or e                                          ; $79df: $b3
    dec h                                         ; $79e0: $25
    jp $a4a9                                      ; $79e1: $c3 $a9 $a4


    ld hl, $2f36                                  ; $79e4: $21 $36 $2f
    ccf                                           ; $79e7: $3f
    ld a, $25                                     ; $79e8: $3e $25
    ld [hl-], a                                   ; $79ea: $32

jr_020_79eb:
    xor $94                                       ; $79eb: $ee $94
    ret c                                         ; $79ed: $d8

    ld [hl], h                                    ; $79ee: $74
    ld sp, $da7d                                  ; $79ef: $31 $7d $da
    ld c, [hl]                                    ; $79f2: $4e
    db $e3                                        ; $79f3: $e3
    ld l, e                                       ; $79f4: $6b
    call Call_020_5780                            ; $79f5: $cd $80 $57
    ld [hl], c                                    ; $79f8: $71
    ldh [$ce], a                                  ; $79f9: $e0 $ce
    inc sp                                        ; $79fb: $33
    ld de, $ad06                                  ; $79fc: $11 $06 $ad
    rra                                           ; $79ff: $1f
    ld h, e                                       ; $7a00: $63
    ld [hl], d                                    ; $7a01: $72
    ld h, a                                       ; $7a02: $67
    xor c                                         ; $7a03: $a9
    add l                                         ; $7a04: $85
    dec sp                                        ; $7a05: $3b
    dec a                                         ; $7a06: $3d
    ld l, c                                       ; $7a07: $69
    dec a                                         ; $7a08: $3d
    ld e, a                                       ; $7a09: $5f
    ld hl, $837e                                  ; $7a0a: $21 $7e $83
    or [hl]                                       ; $7a0d: $b6
    and e                                         ; $7a0e: $a3
    db $e4                                        ; $7a0f: $e4
    rst $10                                       ; $7a10: $d7
    and h                                         ; $7a11: $a4
    sbc c                                         ; $7a12: $99
    cp h                                          ; $7a13: $bc
    add $d8                                       ; $7a14: $c6 $d8
    xor h                                         ; $7a16: $ac
    ld d, l                                       ; $7a17: $55
    ld b, l                                       ; $7a18: $45
    sbc d                                         ; $7a19: $9a

jr_020_7a1a:
    ld [hl], l                                    ; $7a1a: $75
    ld c, a                                       ; $7a1b: $4f
    rst $30                                       ; $7a1c: $f7
    sub a                                         ; $7a1d: $97
    xor [hl]                                      ; $7a1e: $ae
    jr jr_020_79de                                ; $7a1f: $18 $bd

    ld e, $b8                                     ; $7a21: $1e $b8
    or e                                          ; $7a23: $b3
    ld c, h                                       ; $7a24: $4c
    ld b, e                                       ; $7a25: $43
    add h                                         ; $7a26: $84

jr_020_7a27:
    ld bc, $16a7                                  ; $7a27: $01 $a7 $16
    add h                                         ; $7a2a: $84
    sub b                                         ; $7a2b: $90
    ld h, l                                       ; $7a2c: $65
    ld e, [hl]                                    ; $7a2d: $5e
    jp nc, $c504                                  ; $7a2e: $d2 $04 $c5

    ld [hl], a                                    ; $7a31: $77
    ld a, l                                       ; $7a32: $7d
    pop hl                                        ; $7a33: $e1
    dec c                                         ; $7a34: $0d
    adc d                                         ; $7a35: $8a
    xor a                                         ; $7a36: $af
    db $fd                                        ; $7a37: $fd
    ld d, e                                       ; $7a38: $53
    ld c, d                                       ; $7a39: $4a
    cpl                                           ; $7a3a: $2f
    cpl                                           ; $7a3b: $2f
    ld c, e                                       ; $7a3c: $4b
    ld a, e                                       ; $7a3d: $7b
    ld h, c                                       ; $7a3e: $61
    or e                                          ; $7a3f: $b3
    or [hl]                                       ; $7a40: $b6
    and h                                         ; $7a41: $a4
    sub a                                         ; $7a42: $97
    rla                                           ; $7a43: $17
    xor b                                         ; $7a44: $a8
    db $ed                                        ; $7a45: $ed
    cp h                                          ; $7a46: $bc
    xor h                                         ; $7a47: $ac
    ccf                                           ; $7a48: $3f
    jr nz, jr_020_7a57                            ; $7a49: $20 $0c

    xor l                                         ; $7a4b: $ad
    ld l, d                                       ; $7a4c: $6a
    db $fd                                        ; $7a4d: $fd

jr_020_7a4e:
    dec [hl]                                      ; $7a4e: $35
    ld l, c                                       ; $7a4f: $69
    ld b, $ff                                     ; $7a50: $06 $ff
    inc [hl]                                      ; $7a52: $34
    sbc l                                         ; $7a53: $9d
    and a                                         ; $7a54: $a7
    or d                                          ; $7a55: $b2
    xor [hl]                                      ; $7a56: $ae

jr_020_7a57:
    db $db                                        ; $7a57: $db
    ld d, c                                       ; $7a58: $51
    ld l, e                                       ; $7a59: $6b
    ld h, a                                       ; $7a5a: $67
    inc sp                                        ; $7a5b: $33
    jp nc, $d9f0                                  ; $7a5c: $d2 $f0 $d9

    ld c, [hl]                                    ; $7a5f: $4e
    ld a, c                                       ; $7a60: $79
    db $eb                                        ; $7a61: $eb
    adc l                                         ; $7a62: $8d
    pop af                                        ; $7a63: $f1
    rla                                           ; $7a64: $17
    inc de                                        ; $7a65: $13
    ld a, h                                       ; $7a66: $7c
    push hl                                       ; $7a67: $e5
    ld [bc], a                                    ; $7a68: $02
    jp nz, Jump_000_24a7                          ; $7a69: $c2 $a7 $24

    jp nz, $e4a7                                  ; $7a6c: $c2 $a7 $e4

    sub d                                         ; $7a6f: $92
    ld a, [hl]                                    ; $7a70: $7e
    push hl                                       ; $7a71: $e5
    push hl                                       ; $7a72: $e5
    rst $10                                       ; $7a73: $d7
    ld [hl], $3e                                  ; $7a74: $36 $3e
    inc bc                                        ; $7a76: $03
    ld d, e                                       ; $7a77: $53
    ld h, d                                       ; $7a78: $62
    dec bc                                        ; $7a79: $0b
    sbc e                                         ; $7a7a: $9b
    adc c                                         ; $7a7b: $89
    ld a, [hl-]                                   ; $7a7c: $3a
    ld [hl], a                                    ; $7a7d: $77
    dec l                                         ; $7a7e: $2d
    sub l                                         ; $7a7f: $95
    or [hl]                                       ; $7a80: $b6
    db $db                                        ; $7a81: $db
    cpl                                           ; $7a82: $2f
    add b                                         ; $7a83: $80
    jr nc, jr_020_7aed                            ; $7a84: $30 $67

    ld [hl], e                                    ; $7a86: $73
    db $e4                                        ; $7a87: $e4
    ret z                                         ; $7a88: $c8

    sub c                                         ; $7a89: $91
    inc hl                                        ; $7a8a: $23
    ld b, a                                       ; $7a8b: $47
    add h                                         ; $7a8c: $84
    db $10                                        ; $7a8d: $10
    ld b, d                                       ; $7a8e: $42
    jr jr_020_7a27                                ; $7a8f: $18 $96

    ld e, d                                       ; $7a91: $5a
    cp b                                          ; $7a92: $b8
    sub $97                                       ; $7a93: $d6 $97
    ldh a, [rNR52]                                ; $7a95: $f0 $26
    db $fd                                        ; $7a97: $fd
    adc [hl]                                      ; $7a98: $8e
    rla                                           ; $7a99: $17
    and l                                         ; $7a9a: $a5
    ldh [$85], a                                  ; $7a9b: $e0 $85
    dec sp                                        ; $7a9d: $3b
    cp [hl]                                       ; $7a9e: $be
    db $e4                                        ; $7a9f: $e4
    ld d, h                                       ; $7aa0: $54
    ld a, [hl]                                    ; $7aa1: $7e
    ld c, l                                       ; $7aa2: $4d
    sbc d                                         ; $7aa3: $9a
    xor [hl]                                      ; $7aa4: $ae
    jr jr_020_7a4e                                ; $7aa5: $18 $a7

    daa                                           ; $7aa7: $27
    xor l                                         ; $7aa8: $ad
    rst $20                                       ; $7aa9: $e7
    dec hl                                        ; $7aaa: $2b
    call nz, $106f                                ; $7aab: $c4 $6f $10
    ld b, $ad                                     ; $7aae: $06 $ad
    ld a, [hl+]                                   ; $7ab0: $2a
    jp nc, Jump_020_7bac                          ; $7ab1: $d2 $ac $7b

    cp d                                          ; $7ab4: $ba
    cp a                                          ; $7ab5: $bf
    jr nz, jr_020_7ac4                            ; $7ab6: $20 $0c

    and a                                         ; $7ab8: $a7
    cp a                                          ; $7ab9: $bf
    add $d8                                       ; $7aba: $c6 $d8
    ld [hl], h                                    ; $7abc: $74
    sbc l                                         ; $7abd: $9d
    and l                                         ; $7abe: $a5
    ld h, [hl]                                    ; $7abf: $66
    db $fd                                        ; $7ac0: $fd
    ret                                           ; $7ac1: $c9


    dec hl                                        ; $7ac2: $2b
    sbc e                                         ; $7ac3: $9b

jr_020_7ac4:
    add $38                                       ; $7ac4: $c6 $38
    ld l, l                                       ; $7ac6: $6d
    and a                                         ; $7ac7: $a7
    pop af                                        ; $7ac8: $f1
    dec [hl]                                      ; $7ac9: $35
    ld l, c                                       ; $7aca: $69
    ret nc                                        ; $7acb: $d0

    adc [hl]                                      ; $7acc: $8e
    ret                                           ; $7acd: $c9


    dec [hl]                                      ; $7ace: $35
    ld l, c                                       ; $7acf: $69
    ld d, [hl]                                    ; $7ad0: $56
    add hl, hl                                    ; $7ad1: $29
    ld hl, sp-$60                                 ; $7ad2: $f8 $a0
    di                                            ; $7ad4: $f3
    ld sp, $9ac2                                  ; $7ad5: $31 $c2 $9a
    rst $30                                       ; $7ad8: $f7
    xor [hl]                                      ; $7ad9: $ae
    db $eb                                        ; $7ada: $eb
    sbc c                                         ; $7adb: $99
    ld h, $b2                                     ; $7adc: $26 $b2
    dec [hl]                                      ; $7ade: $35
    ld l, c                                       ; $7adf: $69
    ld d, $6f                                     ; $7ae0: $16 $6f
    db $fd                                        ; $7ae2: $fd
    rst $20                                       ; $7ae3: $e7
    cp c                                          ; $7ae4: $b9
    ld hl, sp+$2a                                 ; $7ae5: $f8 $2a
    or h                                          ; $7ae7: $b4
    and h                                         ; $7ae8: $a4
    rst $28                                       ; $7ae9: $ef
    cp d                                          ; $7aea: $ba
    sub $97                                       ; $7aeb: $d6 $97

jr_020_7aed:
    xor a                                         ; $7aed: $af
    pop bc                                        ; $7aee: $c1
    ld c, d                                       ; $7aef: $4a
    ld a, [c]                                     ; $7af0: $f2
    ld l, e                                       ; $7af1: $6b
    jp nc, Jump_020_52ac                          ; $7af2: $d2 $ac $52

    ldh a, [$9d]                                  ; $7af5: $f0 $9d
    ld sp, hl                                     ; $7af7: $f9
    jp nz, Jump_020_786e                          ; $7af8: $c2 $6e $78

    ld h, e                                       ; $7afb: $63
    cp h                                          ; $7afc: $bc
    ld l, c                                       ; $7afd: $69
    nop                                           ; $7afe: $00
    ld l, l                                       ; $7aff: $6d
    and a                                         ; $7b00: $a7
    db $e4                                        ; $7b01: $e4
    sub d                                         ; $7b02: $92
    ld a, [hl]                                    ; $7b03: $7e
    sub a                                         ; $7b04: $97
    ld d, $36                                     ; $7b05: $16 $36
    or e                                          ; $7b07: $b3
    dec [hl]                                      ; $7b08: $35
    cp h                                          ; $7b09: $bc
    or c                                          ; $7b0a: $b1
    reti                                          ; $7b0b: $d9


    add l                                         ; $7b0c: $85
    add l                                         ; $7b0d: $85
    ld a, [de]                                    ; $7b0e: $1a
    call c, $234a                                 ; $7b0f: $dc $4a $23
    ld [hl], a                                    ; $7b12: $77
    ld l, l                                       ; $7b13: $6d
    db $e3                                        ; $7b14: $e3
    or e                                          ; $7b15: $b3
    call nc, $bfac                                ; $7b16: $d4 $ac $bf
    ld hl, sp+$2a                                 ; $7b19: $f8 $2a
    db $f4                                        ; $7b1b: $f4
    ld l, h                                       ; $7b1c: $6c
    ld a, [de]                                    ; $7b1d: $1a
    db $e3                                        ; $7b1e: $e3
    jp nc, $aac8                                  ; $7b1f: $d2 $c8 $aa

    inc [hl]                                      ; $7b22: $34
    ld [bc], a                                    ; $7b23: $02
    cp a                                          ; $7b24: $bf
    halt                                          ; $7b25: $76
    ld h, [hl]                                    ; $7b26: $66
    dec e                                         ; $7b27: $1d
    sub $6e                                       ; $7b28: $d6 $6e
    ld d, [hl]                                    ; $7b2a: $56
    ld e, [hl]                                    ; $7b2b: $5e
    push bc                                       ; $7b2c: $c5
    pop de                                        ; $7b2d: $d1
    sub $f3                                       ; $7b2e: $d6 $f3
    ld h, e                                       ; $7b30: $63
    db $e4                                        ; $7b31: $e4
    xor [hl]                                      ; $7b32: $ae
    xor l                                         ; $7b33: $ad
    ld d, l                                       ; $7b34: $55
    ld a, l                                       ; $7b35: $7d
    sbc [hl]                                      ; $7b36: $9e
    di                                            ; $7b37: $f3
    ld d, h                                       ; $7b38: $54
    or [hl]                                       ; $7b39: $b6
    ld h, d                                       ; $7b3a: $62
    ret z                                         ; $7b3b: $c8

    cpl                                           ; $7b3c: $2f
    dec b                                         ; $7b3d: $05
    ld l, b                                       ; $7b3e: $68
    dec sp                                        ; $7b3f: $3b
    cp d                                          ; $7b40: $ba
    ld a, c                                       ; $7b41: $79
    add h                                         ; $7b42: $84
    ld bc, $9596                                  ; $7b43: $01 $96 $95
    db $ec                                        ; $7b46: $ec
    db $fc                                        ; $7b47: $fc
    inc l                                         ; $7b48: $2c
    or l                                          ; $7b49: $b5
    ld [hl], b                                    ; $7b4a: $70
    sub h                                         ; $7b4b: $94
    cp [hl]                                       ; $7b4c: $be
    ld c, e                                       ; $7b4d: $4b
    xor e                                         ; $7b4e: $ab
    and d                                         ; $7b4f: $a2
    ld [bc], a                                    ; $7b50: $02
    adc h                                         ; $7b51: $8c
    cp a                                          ; $7b52: $bf
    ld e, [hl]                                    ; $7b53: $5e
    ld d, [hl]                                    ; $7b54: $56
    ld e, [hl]                                    ; $7b55: $5e
    ret nc                                        ; $7b56: $d0

    sub $52                                       ; $7b57: $d6 $52
    ld a, [hl]                                    ; $7b59: $7e
    pop af                                        ; $7b5a: $f1
    sub $1f                                       ; $7b5b: $d6 $1f
    and $e5                                       ; $7b5d: $e6 $e5
    rlca                                          ; $7b5f: $07
    ld l, c                                       ; $7b60: $69
    adc b                                         ; $7b61: $88
    dec l                                         ; $7b62: $2d
    db $ed                                        ; $7b63: $ed
    sub l                                         ; $7b64: $95
    sub a                                         ; $7b65: $97
    dec h                                         ; $7b66: $25
    ld c, a                                       ; $7b67: $4f
    or e                                          ; $7b68: $b3
    and $ad                                       ; $7b69: $e6 $ad
    ld a, [hl]                                    ; $7b6b: $7e
    sbc [hl]                                      ; $7b6c: $9e
    cp c                                          ; $7b6d: $b9
    ret nc                                        ; $7b6e: $d0

    ld d, h                                       ; $7b6f: $54
    dec b                                         ; $7b70: $05
    ld h, c                                       ; $7b71: $61
    dec l                                         ; $7b72: $2d
    db $fc                                        ; $7b73: $fc
    cp a                                          ; $7b74: $bf
    jp $cbca                                      ; $7b75: $c3 $ca $cb


    ld [hl], a                                    ; $7b78: $77
    reti                                          ; $7b79: $d9


    cp d                                          ; $7b7a: $ba
    sub l                                         ; $7b7b: $95
    xor h                                         ; $7b7c: $ac
    ld [hl-], a                                   ; $7b7d: $32
    xor d                                         ; $7b7e: $aa
    rst $38                                       ; $7b7f: $ff
    adc [hl]                                      ; $7b80: $8e
    sub e                                         ; $7b81: $93
    inc c                                         ; $7b82: $0c
    add b                                         ; $7b83: $80
    cp e                                          ; $7b84: $bb
    xor $26                                       ; $7b85: $ee $26
    db $ec                                        ; $7b87: $ec
    call nc, $ad2f                                ; $7b88: $d4 $2f $ad
    cp e                                          ; $7b8b: $bb
    add d                                         ; $7b8c: $82
    rst $18                                       ; $7b8d: $df
    rlca                                          ; $7b8e: $07
    xor $8e                                       ; $7b8f: $ee $8e
    ld a, [hl]                                    ; $7b91: $7e
    pop af                                        ; $7b92: $f1
    ei                                            ; $7b93: $fb
    dec sp                                        ; $7b94: $3b
    ld a, [hl-]                                   ; $7b95: $3a
    db $dd                                        ; $7b96: $dd
    ld l, e                                       ; $7b97: $6b
    or b                                          ; $7b98: $b0
    ld h, e                                       ; $7b99: $63
    xor l                                         ; $7b9a: $ad
    cpl                                           ; $7b9b: $2f
    call $8b8e                                    ; $7b9c: $cd $8e $8b
    ld l, d                                       ; $7b9f: $6a
    ld c, l                                       ; $7ba0: $4d
    reti                                          ; $7ba1: $d9


    pop de                                        ; $7ba2: $d1
    xor a                                         ; $7ba3: $af
    inc b                                         ; $7ba4: $04
    call c, $b129                                 ; $7ba5: $dc $29 $b1
    add l                                         ; $7ba8: $85
    add hl, hl                                    ; $7ba9: $29
    rst $18                                       ; $7baa: $df
    dec b                                         ; $7bab: $05

Jump_020_7bac:
    inc bc                                        ; $7bac: $03
    and a                                         ; $7bad: $a7
    sub [hl]                                      ; $7bae: $96
    ld l, $5b                                     ; $7baf: $2e $5b
    ld c, e                                       ; $7bb1: $4b
    ld sp, hl                                     ; $7bb2: $f9
    dec d                                         ; $7bb3: $15
    add l                                         ; $7bb4: $85
    ld [hl], l                                    ; $7bb5: $75
    dec hl                                        ; $7bb6: $2b
    ld e, c                                       ; $7bb7: $59
    ld h, l                                       ; $7bb8: $65
    ld d, h                                       ; $7bb9: $54
    rst $38                                       ; $7bba: $ff
    dec e                                         ; $7bbb: $1d
    daa                                           ; $7bbc: $27
    add hl, de                                    ; $7bbd: $19
    ld b, b                                       ; $7bbe: $40
    rla                                           ; $7bbf: $17
    inc c                                         ; $7bc0: $0c
    dec a                                         ; $7bc1: $3d
    adc e                                         ; $7bc2: $8b
    ld a, [$7e54]                                 ; $7bc3: $fa $54 $7e
    db $dd                                        ; $7bc6: $dd
    ld c, d                                       ; $7bc7: $4a
    ld d, [hl]                                    ; $7bc8: $56
    add hl, de                                    ; $7bc9: $19
    push de                                       ; $7bca: $d5
    ld a, a                                       ; $7bcb: $7f
    rst $00                                       ; $7bcc: $c7
    ld c, c                                       ; $7bcd: $49
    ld b, $d0                                     ; $7bce: $06 $d0
    ld [hl], l                                    ; $7bd0: $75
    db $eb                                        ; $7bd1: $eb
    ld d, c                                       ; $7bd2: $51
    cp [hl]                                       ; $7bd3: $be
    sbc c                                         ; $7bd4: $99
    jp z, $cd53                                   ; $7bd5: $ca $53 $cd

    daa                                           ; $7bd8: $27
    xor a                                         ; $7bd9: $af
    ld [hl], c                                    ; $7bda: $71
    or [hl]                                       ; $7bdb: $b6
    ld h, h                                       ; $7bdc: $64
    nop                                           ; $7bdd: $00

jr_020_7bde:
    ld d, e                                       ; $7bde: $53
    ld sp, hl                                     ; $7bdf: $f9
    ld a, c                                       ; $7be0: $79
    ld sp, hl                                     ; $7be1: $f9
    and [hl]                                      ; $7be2: $a6
    dec hl                                        ; $7be3: $2b
    ld b, $a7                                     ; $7be4: $06 $a7
    inc h                                         ; $7be6: $24
    ld [hl], a                                    ; $7be7: $77
    ld l, l                                       ; $7be8: $6d
    db $e3                                        ; $7be9: $e3
    di                                            ; $7bea: $f3
    ld a, [c]                                     ; $7beb: $f2
    call Call_020_7e54                            ; $7bec: $cd $54 $7e
    xor [hl]                                      ; $7bef: $ae
    ldh [$0d], a                                  ; $7bf0: $e0 $0d
    jp c, Jump_020_47ba                           ; $7bf2: $da $ba $47

    inc bc                                        ; $7bf5: $03
    di                                            ; $7bf6: $f3
    ld a, [c]                                     ; $7bf7: $f2
    call Call_020_5a8a                            ; $7bf8: $cd $8a $5a
    ld a, a                                       ; $7bfb: $7f
    rst $00                                       ; $7bfc: $c7
    ld l, c                                       ; $7bfd: $69
    sbc b                                         ; $7bfe: $98
    ld b, $d6                                     ; $7bff: $06 $d6
    di                                            ; $7c01: $f3
    ld a, d                                       ; $7c02: $7a
    ld d, l                                       ; $7c03: $55
    ld e, $a6                                     ; $7c04: $1e $a6
    call nz, $f3d6                                ; $7c06: $c4 $d6 $f3
    ld [hl], d                                    ; $7c09: $72
    ld d, h                                       ; $7c0a: $54
    ld h, c                                       ; $7c0b: $61
    or b                                          ; $7c0c: $b0
    ld l, [hl]                                    ; $7c0d: $6e
    ld a, [hl+]                                   ; $7c0e: $2a
    inc c                                         ; $7c0f: $0c
    halt                                          ; $7c10: $76
    ld l, c                                       ; $7c11: $69
    ld e, [hl]                                    ; $7c12: $5e
    ld a, $44                                     ; $7c13: $3e $44
    jr jr_020_7bde                                ; $7c15: $18 $c7

    res 5, e                                      ; $7c17: $cb $ab
    ld [hl], e                                    ; $7c19: $73
    and a                                         ; $7c1a: $a7
    sub h                                         ; $7c1b: $94
    ld e, [hl]                                    ; $7c1c: $5e
    ld e, [hl]                                    ; $7c1d: $5e
    add $6b                                       ; $7c1e: $c6 $6b
    inc sp                                        ; $7c20: $33
    rst $08                                       ; $7c21: $cf
    add hl, hl                                    ; $7c22: $29
    ld h, e                                       ; $7c23: $63
    di                                            ; $7c24: $f3
    ld e, h                                       ; $7c25: $5c
    ret c                                         ; $7c26: $d8

    xor h                                         ; $7c27: $ac
    jp z, $bf18                                   ; $7c28: $ca $18 $bf

    ld a, [c]                                     ; $7c2b: $f2
    sbc e                                         ; $7c2c: $9b
    add h                                         ; $7c2d: $84
    ld bc, $d2bd                                  ; $7c2e: $01 $bd $d2
    xor h                                         ; $7c31: $ac
    jp z, $bf18                                   ; $7c32: $ca $18 $bf

    ld a, [c]                                     ; $7c35: $f2
    ld a, c                                       ; $7c36: $79
    ld sp, hl                                     ; $7c37: $f9
    ld [hl], b                                    ; $7c38: $70
    ld a, [bc]                                    ; $7c39: $0a
    db $e3                                        ; $7c3a: $e3
    ccf                                           ; $7c3b: $3f
    add $ae                                       ; $7c3c: $c6 $ae
    db $eb                                        ; $7c3e: $eb
    ld d, c                                       ; $7c3f: $51
    ld e, [hl]                                    ; $7c40: $5e
    cp [hl]                                       ; $7c41: $be
    ld b, $d3                                     ; $7c42: $06 $d3
    ld d, l                                       ; $7c44: $55
    add hl, de                                    ; $7c45: $19
    db $e3                                        ; $7c46: $e3
    ld d, a                                       ; $7c47: $57
    sbc [hl]                                      ; $7c48: $9e
    ld d, d                                       ; $7c49: $52
    add e                                         ; $7c4a: $83
    ld d, l                                       ; $7c4b: $55
    pop de                                        ; $7c4c: $d1
    or h                                          ; $7c4d: $b4
    and a                                         ; $7c4e: $a7
    cp [hl]                                       ; $7c4f: $be
    sub $0c                                       ; $7c50: $d6 $0c
    ld a, b                                       ; $7c52: $78
    dec d                                         ; $7c53: $15
    rlca                                          ; $7c54: $07
    add h                                         ; $7c55: $84
    sub b                                         ; $7c56: $90
    ld [de], a                                    ; $7c57: $12
    sbc e                                         ; $7c58: $9b
    and l                                         ; $7c59: $a5
    ld h, [hl]                                    ; $7c5a: $66
    db $fd                                        ; $7c5b: $fd
    sub l                                         ; $7c5c: $95
    ld d, a                                       ; $7c5d: $57
    ld h, c                                       ; $7c5e: $61
    ld l, e                                       ; $7c5f: $6b
    jp nc, Jump_020_52ac                          ; $7c60: $d2 $ac $52

    sbc d                                         ; $7c63: $9a
    add c                                         ; $7c64: $81
    sbc a                                         ; $7c65: $9f
    sub a                                         ; $7c66: $97
    rrca                                          ; $7c67: $0f
    rst $20                                       ; $7c68: $e7
    add hl, sp                                    ; $7c69: $39
    sub [hl]                                      ; $7c6a: $96
    dec bc                                        ; $7c6b: $0b
    dec [hl]                                      ; $7c6c: $35
    cp b                                          ; $7c6d: $b8
    dec d                                         ; $7c6e: $15
    ld e, d                                       ; $7c6f: $5a
    rst $08                                       ; $7c70: $cf
    ld a, [c]                                     ; $7c71: $f2
    or h                                          ; $7c72: $b4
    ld h, $cd                                     ; $7c73: $26 $cd
    jp c, Jump_020_59a6                           ; $7c75: $da $a6 $59

    or a                                          ; $7c78: $b7
    sub d                                         ; $7c79: $92
    ld d, l                                       ; $7c7a: $55
    ld b, [hl]                                    ; $7c7b: $46
    push af                                       ; $7c7c: $f5
    rst $18                                       ; $7c7d: $df
    ld [hl], c                                    ; $7c7e: $71
    sub d                                         ; $7c7f: $92
    ld bc, $662c                                  ; $7c80: $01 $2c $66
    sub $67                                       ; $7c83: $d6 $67
    and a                                         ; $7c85: $a7
    inc l                                         ; $7c86: $2c
    jp hl                                         ; $7c87: $e9


    ld [hl], a                                    ; $7c88: $77
    ld l, c                                       ; $7c89: $69
    ld e, [hl]                                    ; $7c8a: $5e
    ld a, [hl]                                    ; $7c8b: $7e
    dec e                                         ; $7c8c: $1d
    xor l                                         ; $7c8d: $ad
    ld [$3c1a], a                                 ; $7c8e: $ea $1a $3c
    jp nz, Jump_020_61ad                          ; $7c91: $c2 $ad $61

    adc b                                         ; $7c94: $88
    db $10                                        ; $7c95: $10
    ld a, [bc]                                    ; $7c96: $0a
    or l                                          ; $7c97: $b5
    ld l, c                                       ; $7c98: $69
    rst $38                                       ; $7c99: $ff
    inc l                                         ; $7c9a: $2c
    add e                                         ; $7c9b: $83
    sub d                                         ; $7c9c: $92
    ld h, $b2                                     ; $7c9d: $26 $b2
    or l                                          ; $7c9f: $b5
    ld c, l                                       ; $7ca0: $4d
    inc sp                                        ; $7ca1: $33
    ret z                                         ; $7ca2: $c8

    ldh a, [$d1]                                  ; $7ca3: $f0 $d1
    halt                                          ; $7ca5: $76
    or d                                          ; $7ca6: $b2
    ld b, $b7                                     ; $7ca7: $06 $b7
    jp nc, $e3b8                                  ; $7ca9: $d2 $b8 $e3

    inc [hl]                                      ; $7cac: $34
    ld c, h                                       ; $7cad: $4c
    inc bc                                        ; $7cae: $03
    db $eb                                        ; $7caf: $eb
    ld a, c                                       ; $7cb0: $79
    cp l                                          ; $7cb1: $bd
    ld a, [hl+]                                   ; $7cb2: $2a
    rrca                                          ; $7cb3: $0f
    ld d, e                                       ; $7cb4: $53
    ld h, d                                       ; $7cb5: $62
    db $eb                                        ; $7cb6: $eb
    ld a, c                                       ; $7cb7: $79
    add hl, sp                                    ; $7cb8: $39
    xor d                                         ; $7cb9: $aa
    jr nc, jr_020_7d14                            ; $7cba: $30 $58

    scf                                           ; $7cbc: $37
    dec d                                         ; $7cbd: $15
    ld b, $4b                                     ; $7cbe: $06 $4b
    add hl, de                                    ; $7cc0: $19
    and l                                         ; $7cc1: $a5
    ld [hl], e                                    ; $7cc2: $73
    rst $10                                       ; $7cc3: $d7
    and h                                         ; $7cc4: $a4
    ld e, c                                       ; $7cc5: $59
    and l                                         ; $7cc6: $a5
    ld d, h                                       ; $7cc7: $54
    di                                            ; $7cc8: $f3
    dec b                                         ; $7cc9: $05
    add hl, sp                                    ; $7cca: $39
    ld e, [hl]                                    ; $7ccb: $5e
    sub d                                         ; $7ccc: $92
    add d                                         ; $7ccd: $82
    pop af                                        ; $7cce: $f1
    rst $10                                       ; $7ccf: $d7
    res 5, d                                      ; $7cd0: $cb $aa
    sub d                                         ; $7cd2: $92
    ld d, l                                       ; $7cd3: $55
    ld b, [hl]                                    ; $7cd4: $46
    push af                                       ; $7cd5: $f5
    ld b, a                                       ; $7cd6: $47
    jr jr_020_7d16                                ; $7cd7: $18 $3d

    ccf                                           ; $7cd9: $3f
    ld b, [hl]                                    ; $7cda: $46
    xor $ae                                       ; $7cdb: $ee $ae
    cp l                                          ; $7cdd: $bd
    ld h, $cd                                     ; $7cde: $26 $cd
    add d                                         ; $7ce0: $82
    rst $30                                       ; $7ce1: $f7
    dec e                                         ; $7ce2: $1d
    dec d                                         ; $7ce3: $15
    ret z                                         ; $7ce4: $c8

    db $ed                                        ; $7ce5: $ed
    ld [hl], h                                    ; $7ce6: $74
    sub h                                         ; $7ce7: $94
    cp e                                          ; $7ce8: $bb
    ld c, d                                       ; $7ce9: $4a

jr_020_7cea:
    ld l, c                                       ; $7cea: $69
    sub [hl]                                      ; $7ceb: $96
    cp c                                          ; $7cec: $b9
    jr z, jr_020_7cea                             ; $7ced: $28 $fb

    dec [hl]                                      ; $7cef: $35
    ld l, c                                       ; $7cf0: $69
    ld h, [hl]                                    ; $7cf1: $66
    and a                                         ; $7cf2: $a7
    xor h                                         ; $7cf3: $ac
    call c, $ebb0                                 ; $7cf4: $dc $b0 $eb
    sub $fa                                       ; $7cf7: $d6 $fa
    dec [hl]                                      ; $7cf9: $35
    sbc b                                         ; $7cfa: $98
    sub a                                         ; $7cfb: $97
    ld e, a                                       ; $7cfc: $5f
    ld d, d                                       ; $7cfd: $52
    ld l, h                                       ; $7cfe: $6c
    sub [hl]                                      ; $7cff: $96
    db $f4                                        ; $7d00: $f4
    or e                                          ; $7d01: $b3
    adc h                                         ; $7d02: $8c
    dec h                                         ; $7d03: $25
    push de                                       ; $7d04: $d5
    ld a, h                                       ; $7d05: $7c
    ld b, l                                       ; $7d06: $45
    xor l                                         ; $7d07: $ad
    adc a                                         ; $7d08: $8f
    jr nc, jr_020_7d48                            ; $7d09: $30 $3d

    adc e                                         ; $7d0b: $8b
    ld a, [$9db4]                                 ; $7d0c: $fa $b4 $9d
    add $e7                                       ; $7d0f: $c6 $e7
    dec h                                         ; $7d11: $25
    pop hl                                        ; $7d12: $e1
    ld [hl], a                                    ; $7d13: $77

jr_020_7d14:
    xor h                                         ; $7d14: $ac
    push af                                       ; $7d15: $f5

jr_020_7d16:
    and l                                         ; $7d16: $a5
    reti                                          ; $7d17: $d9


    ld [hl], c                                    ; $7d18: $71
    ld d, c                                       ; $7d19: $51
    xor l                                         ; $7d1a: $ad
    add hl, hl                                    ; $7d1b: $29
    dec sp                                        ; $7d1c: $3b
    ld a, [$e695]                                 ; $7d1d: $fa $95 $e6
    push hl                                       ; $7d20: $e5
    ld d, d                                       ; $7d21: $52
    nop                                           ; $7d22: $00
    ld e, l                                       ; $7d23: $5d
    or a                                          ; $7d24: $b7
    sbc [hl]                                      ; $7d25: $9e
    ld b, l                                       ; $7d26: $45
    ld a, l                                       ; $7d27: $7d
    halt                                          ; $7d28: $76
    ld d, h                                       ; $7d29: $54
    ld l, e                                       ; $7d2a: $6b
    ld a, [bc]                                    ; $7d2b: $0a
    ld c, h                                       ; $7d2c: $4c
    push hl                                       ; $7d2d: $e5
    rst $20                                       ; $7d2e: $e7
    push hl                                       ; $7d2f: $e5
    push hl                                       ; $7d30: $e5
    cp e                                          ; $7d31: $bb
    ld h, d                                       ; $7d32: $62
    rst $00                                       ; $7d33: $c7
    sbc [hl]                                      ; $7d34: $9e
    ld a, c                                       ; $7d35: $79
    db $ec                                        ; $7d36: $ec
    jp hl                                         ; $7d37: $e9


    cp l                                          ; $7d38: $bd
    ld h, [hl]                                    ; $7d39: $66
    ld b, a                                       ; $7d3a: $47
    or l                                          ; $7d3b: $b5
    and [hl]                                      ; $7d3c: $a6
    and b                                         ; $7d3d: $a0
    db $ed                                        ; $7d3e: $ed
    jr z, jr_020_7da3                             ; $7d3f: $28 $62

    and e                                         ; $7d41: $a3
    db $f4                                        ; $7d42: $f4
    sbc l                                         ; $7d43: $9d
    ld h, a                                       ; $7d44: $67
    ret nz                                        ; $7d45: $c0

    rst $20                                       ; $7d46: $e7
    push hl                                       ; $7d47: $e5

jr_020_7d48:
    rla                                           ; $7d48: $17
    ld h, h                                       ; $7d49: $64
    or d                                          ; $7d4a: $b2
    add c                                         ; $7d4b: $81

Jump_020_7d4c:
    dec de                                        ; $7d4c: $1b
    db $db                                        ; $7d4d: $db
    ld b, [hl]                                    ; $7d4e: $46
    sbc e                                         ; $7d4f: $9b
    ld h, l                                       ; $7d50: $65
    ld e, [hl]                                    ; $7d51: $5e
    ld l, $d5                                     ; $7d52: $2e $d5
    ld h, a                                       ; $7d54: $67
    ld e, c                                       ; $7d55: $59
    ld d, c                                       ; $7d56: $51
    ld [hl], $1d                                  ; $7d57: $36 $1d
    cp e                                          ; $7d59: $bb
    ld [c], a                                     ; $7d5a: $e2
    or e                                          ; $7d5b: $b3
    and e                                         ; $7d5c: $a3
    ld e, d                                       ; $7d5d: $5a
    ld d, e                                       ; $7d5e: $53
    sbc [hl]                                      ; $7d5f: $9e
    dec l                                         ; $7d60: $2d
    jp hl                                         ; $7d61: $e9


    sub a                                         ; $7d62: $97
    ld d, h                                       ; $7d63: $54
    dec a                                         ; $7d64: $3d
    jp nz, $8467                                  ; $7d65: $c2 $67 $84

    ld hl, $a842                                  ; $7d68: $21 $42 $a8
    inc h                                         ; $7d6b: $24
    ccf                                           ; $7d6c: $3f
    sub [hl]                                      ; $7d6d: $96
    ld l, e                                       ; $7d6e: $6b
    jp nc, Jump_020_4eac                          ; $7d6f: $d2 $ac $4e

    ret                                           ; $7d72: $c9


    adc a                                         ; $7d73: $8f
    cpl                                           ; $7d74: $2f
    ld [$5763], a                                 ; $7d75: $ea $63 $57
    ld a, h                                       ; $7d78: $7c
    xor [hl]                                      ; $7d79: $ae
    ldh [rIF], a                                  ; $7d7a: $e0 $0f
    adc e                                         ; $7d7c: $8b
    or a                                          ; $7d7d: $b7
    cp $5d                                        ; $7d7e: $fe $5d
    ld sp, $24c7                                  ; $7d80: $31 $c7 $24
    push de                                       ; $7d83: $d5
    ld a, h                                       ; $7d84: $7c
    ld a, [bc]                                    ; $7d85: $0a
    ld [hl], l                                    ; $7d86: $75
    or h                                          ; $7d87: $b4
    push af                                       ; $7d88: $f5
    ld c, d                                       ; $7d89: $4a
    inc sp                                        ; $7d8a: $33
    jr z, jr_020_7df6                             ; $7d8b: $28 $69

    ld [hl+], a                                   ; $7d8d: $22
    ld e, e                                       ; $7d8e: $5b
    ldh a, [$3e]                                  ; $7d8f: $f0 $3e
    ret z                                         ; $7d91: $c8

    ldh a, [$bd]                                  ; $7d92: $f0 $bd
    ld e, h                                       ; $7d94: $5c
    ld a, [bc]                                    ; $7d95: $0a
    and $25                                       ; $7d96: $e6 $25
    ld c, l                                       ; $7d98: $4d
    ld d, b                                       ; $7d99: $50
    ret nc                                        ; $7d9a: $d0

    halt                                          ; $7d9b: $76
    ld [hl], d                                    ; $7d9c: $72
    add d                                         ; $7d9d: $82
    rst $08                                       ; $7d9e: $cf
    dec d                                         ; $7d9f: $15
    db $fc                                        ; $7da0: $fc
    rst $10                                       ; $7da1: $d7
    sub c                                         ; $7da2: $91

jr_020_7da3:
    ld [hl], a                                    ; $7da3: $77
    ld l, a                                       ; $7da4: $6f
    ld d, $64                                     ; $7da5: $16 $64
    ld [hl-], a                                   ; $7da7: $32
    or h                                          ; $7da8: $b4
    sbc l                                         ; $7da9: $9d
    call c, Call_000_2dac                         ; $7daa: $dc $ac $2d
    jp hl                                         ; $7dad: $e9


    push hl                                       ; $7dae: $e5
    dec b                                         ; $7daf: $05

jr_020_7db0:
    ld b, $1f                                     ; $7db0: $06 $1f
    db $e3                                        ; $7db2: $e3
    add b                                         ; $7db3: $80
    rst $38                                       ; $7db4: $ff
    ld [hl], a                                    ; $7db5: $77
    sbc b                                         ; $7db6: $98
    ld a, [$2aa0]                                 ; $7db7: $fa $a0 $2a
    sbc c                                         ; $7dba: $99
    sub c                                         ; $7dbb: $91
    cp e                                          ; $7dbc: $bb
    or [hl]                                       ; $7dbd: $b6
    pop af                                        ; $7dbe: $f1
    ld a, c                                       ; $7dbf: $79
    ld sp, hl                                     ; $7dc0: $f9
    ld h, [hl]                                    ; $7dc1: $66
    ld d, l                                       ; $7dc2: $55
    ld d, c                                       ; $7dc3: $51
    add hl, bc                                    ; $7dc4: $09
    ld a, [hl]                                    ; $7dc5: $7e
    cp d                                          ; $7dc6: $ba
    sbc b                                         ; $7dc7: $98
    cp [hl]                                       ; $7dc8: $be
    jr nc, jr_020_7db0                            ; $7dc9: $30 $e5

    ld de, $2706                                  ; $7dcb: $11 $06 $27
    add a                                         ; $7dce: $87
    ld hl, $9d77                                  ; $7dcf: $21 $77 $9d
    db $ec                                        ; $7dd2: $ec
    ld d, h                                       ; $7dd3: $54
    add hl, hl                                    ; $7dd4: $29
    add h                                         ; $7dd5: $84
    sub $47                                       ; $7dd6: $d6 $47
    ld e, a                                       ; $7dd8: $5f
    ld b, a                                       ; $7dd9: $47
    or $b7                                        ; $7dda: $f6 $b7
    sub [hl]                                      ; $7ddc: $96
    xor $7d                                       ; $7ddd: $ee $7d
    ld h, d                                       ; $7ddf: $62
    cp l                                          ; $7de0: $bd
    ld c, h                                       ; $7de1: $4c
    ret z                                         ; $7de2: $c8

    ld e, l                                       ; $7de3: $5d
    xor b                                         ; $7de4: $a8
    ld [de], a                                    ; $7de5: $12
    ld l, d                                       ; $7de6: $6a
    ld d, h                                       ; $7de7: $54
    or $68                                        ; $7de8: $f6 $68
    ld a, l                                       ; $7dea: $7d
    db $f4                                        ; $7deb: $f4
    ld [hl], l                                    ; $7dec: $75
    ld h, h                                       ; $7ded: $64
    ld a, a                                       ; $7dee: $7f
    ld l, e                                       ; $7def: $6b
    jp hl                                         ; $7df0: $e9


    sbc $27                                       ; $7df1: $de $27
    ld b, $3d                                     ; $7df3: $06 $3d
    adc d                                         ; $7df5: $8a

jr_020_7df6:
    ld a, [$d3b4]                                 ; $7df6: $fa $b4 $d3
    adc c                                         ; $7df9: $89
    ccf                                           ; $7dfa: $3f
    ld e, [hl]                                    ; $7dfb: $5e
    add c                                         ; $7dfc: $81
    ld l, d                                       ; $7dfd: $6a
    cp [hl]                                       ; $7dfe: $be
    di                                            ; $7dff: $f3
    call $9ff5                                    ; $7e00: $cd $f5 $9f
    call c, $a3ce                                 ; $7e03: $dc $ce $a3
    push af                                       ; $7e06: $f5
    pop de                                        ; $7e07: $d1
    rst $10                                       ; $7e08: $d7
    sub c                                         ; $7e09: $91
    db $fd                                        ; $7e0a: $fd
    xor l                                         ; $7e0b: $ad
    and l                                         ; $7e0c: $a5
    ld a, e                                       ; $7e0d: $7b
    sbc a                                         ; $7e0e: $9f
    jr @-$57                                      ; $7e0f: $18 $a7

    ld [hl-], a                                   ; $7e11: $32
    add [hl]                                      ; $7e12: $86
    db $10                                        ; $7e13: $10
    ld a, [c]                                     ; $7e14: $f2
    and d                                         ; $7e15: $a2
    ld a, $57                                     ; $7e16: $3e $57
    ldh a, [$67]                                  ; $7e18: $f0 $67
    adc e                                         ; $7e1a: $8b
    or a                                          ; $7e1b: $b7
    cp $7b                                        ; $7e1c: $fe $7b
    or d                                          ; $7e1e: $b2
    ld a, [hl]                                    ; $7e1f: $7e
    call z, Call_000_2fce                         ; $7e20: $cc $ce $2f
    adc b                                         ; $7e23: $88
    and $d1                                       ; $7e24: $e6 $d1
    ld a, [$ebe8]                                 ; $7e26: $fa $e8 $eb
    ret z                                         ; $7e29: $c8

    cp $d6                                        ; $7e2a: $fe $d6
    jp nc, $4fbd                                  ; $7e2c: $d2 $bd $4f

    inc c                                         ; $7e2f: $0c
    cp l                                          ; $7e30: $bd
    ld c, h                                       ; $7e31: $4c
    ld d, l                                       ; $7e32: $55
    rst $28                                       ; $7e33: $ef
    or d                                          ; $7e34: $b2
    push af                                       ; $7e35: $f5
    inc l                                         ; $7e36: $2c

jr_020_7e37:
    ld [$15e3], a                                 ; $7e37: $ea $e3 $15
    and $45                                       ; $7e3a: $e6 $45
    sbc l                                         ; $7e3c: $9d
    cp e                                          ; $7e3d: $bb
    or $c7                                        ; $7e3e: $f6 $c7
    ret c                                         ; $7e40: $d8

    xor h                                         ; $7e41: $ac
    ld l, l                                       ; $7e42: $6d
    call c, $1693                                 ; $7e43: $dc $93 $16
    cpl                                           ; $7e46: $2f
    ld a, c                                       ; $7e47: $79
    rst $10                                       ; $7e48: $d7
    push af                                       ; $7e49: $f5
    pop de                                        ; $7e4a: $d1
    rst $10                                       ; $7e4b: $d7
    sub c                                         ; $7e4c: $91
    db $fd                                        ; $7e4d: $fd
    xor l                                         ; $7e4e: $ad
    and l                                         ; $7e4f: $a5
    ld a, e                                       ; $7e50: $7b
    sbc a                                         ; $7e51: $9f
    jr jr_020_7ebb                                ; $7e52: $18 $67

Call_020_7e54:
Jump_020_7e54:
    inc b                                         ; $7e54: $04
    add l                                         ; $7e55: $85
    dec sp                                        ; $7e56: $3b
    res 7, h                                      ; $7e57: $cb $bc
    ld e, h                                       ; $7e59: $5c
    xor d                                         ; $7e5a: $aa
    rst $08                                       ; $7e5b: $cf
    adc e                                         ; $7e5c: $8b
    ld a, [$8578]                                 ; $7e5d: $fa $78 $85
    or c                                          ; $7e60: $b1
    inc c                                         ; $7e61: $0c
    ld h, [hl]                                    ; $7e62: $66
    ld h, a                                       ; $7e63: $67
    ld [hl-], a                                   ; $7e64: $32
    or h                                          ; $7e65: $b4
    ld a, $fa                                     ; $7e66: $3e $fa
    ld a, [hl-]                                   ; $7e68: $3a
    or d                                          ; $7e69: $b2
    cp a                                          ; $7e6a: $bf
    or l                                          ; $7e6b: $b5
    ld [hl], h                                    ; $7e6c: $74
    rst $28                                       ; $7e6d: $ef
    inc de                                        ; $7e6e: $13
    inc bc                                        ; $7e6f: $03
    dec a                                         ; $7e70: $3d
    jp z, $f337                                   ; $7e71: $ca $37 $f3

    adc a                                         ; $7e74: $8f
    ld [hl], c                                    ; $7e75: $71
    pop hl                                        ; $7e76: $e1
    xor a                                         ; $7e77: $af
    ld c, c                                       ; $7e78: $49
    ld d, e                                       ; $7e79: $53
    sub e                                         ; $7e7a: $93
    ld e, a                                       ; $7e7b: $5f
    xor e                                         ; $7e7c: $ab
    adc d                                         ; $7e7d: $8a
    inc [hl]                                      ; $7e7e: $34
    db $eb                                        ; $7e7f: $eb
    sbc [hl]                                      ; $7e80: $9e
    xor $2f                                       ; $7e81: $ee $2f
    ld [$9603], sp                                ; $7e83: $08 $03 $96
    ld l, c                                       ; $7e86: $69
    adc b                                         ; $7e87: $88
    jr nc, jr_020_7e37                            ; $7e88: $30 $ad

    ret                                           ; $7e8a: $c9


    adc a                                         ; $7e8b: $8f
    ld e, l                                       ; $7e8c: $5d
    ret nc                                        ; $7e8d: $d0

    ld c, [hl]                                    ; $7e8e: $4e
    daa                                           ; $7e8f: $27
    cpl                                           ; $7e90: $2f
    ld sp, hl                                     ; $7e91: $f9
    and l                                         ; $7e92: $a5
    nop                                           ; $7e93: $00
    ld l, l                                       ; $7e94: $6d
    dec a                                         ; $7e95: $3d
    jp z, $5d85                                   ; $7e96: $ca $85 $5d

    ld e, b                                       ; $7e99: $58
    scf                                           ; $7e9a: $37
    pop de                                        ; $7e9b: $d1
    halt                                          ; $7e9c: $76
    ei                                            ; $7e9d: $fb
    and a                                         ; $7e9e: $a7
    call nz, Call_020_45e6                        ; $7e9f: $c4 $e6 $45
    cp l                                          ; $7ea2: $bd
    ld b, $3b                                     ; $7ea3: $06 $3b
    ld a, $9b                                     ; $7ea5: $3e $9b
    ld hl, sp+$08                                 ; $7ea7: $f8 $08
    inc bc                                        ; $7ea9: $03
    rst $00                                       ; $7eaa: $c7
    adc e                                         ; $7eab: $8b
    ld hl, $1847                                  ; $7eac: $21 $47 $18
    dec l                                         ; $7eaf: $2d
    sub h                                         ; $7eb0: $94
    ld [c], a                                     ; $7eb1: $e2
    ld [$9603], sp                                ; $7eb2: $08 $03 $96
    pop bc                                        ; $7eb5: $c1
    rst $38                                       ; $7eb6: $ff
    sbc d                                         ; $7eb7: $9a
    inc [hl]                                      ; $7eb8: $34
    dec [hl]                                      ; $7eb9: $35
    db $eb                                        ; $7eba: $eb

jr_020_7ebb:
    cpl                                           ; $7ebb: $2f
    ld a, h                                       ; $7ebc: $7c
    ld e, a                                       ; $7ebd: $5f
    rst $08                                       ; $7ebe: $cf
    ld d, a                                       ; $7ebf: $57
    adc b                                         ; $7ec0: $88
    rst $18                                       ; $7ec1: $df
    and b                                         ; $7ec2: $a0
    xor l                                         ; $7ec3: $ad
    sbc e                                         ; $7ec4: $9b
    jp z, $26db                                   ; $7ec5: $ca $db $26

    ld [hl], d                                    ; $7ec8: $72
    rst $10                                       ; $7ec9: $d7
    dec a                                         ; $7eca: $3d
    db $dd                                        ; $7ecb: $dd
    ld e, a                                       ; $7ecc: $5f
    cp b                                          ; $7ecd: $b8
    ld l, e                                       ; $7ece: $6b
    jp nc, Jump_000_258c                          ; $7ecf: $d2 $8c $25

    push de                                       ; $7ed2: $d5
    ld a, h                                       ; $7ed3: $7c
    cp h                                          ; $7ed4: $bc
    sub d                                         ; $7ed5: $92
    rst $08                                       ; $7ed6: $cf
    ld [hl], e                                    ; $7ed7: $73
    pop hl                                        ; $7ed8: $e1
    push hl                                       ; $7ed9: $e5

jr_020_7eda:
    jr nc, jr_020_7eda                            ; $7eda: $30 $fe

    ld a, d                                       ; $7edc: $7a
    sbc c                                         ; $7edd: $99
    sub a                                         ; $7ede: $97
    rra                                           ; $7edf: $1f
    cpl                                           ; $7ee0: $2f
    ld c, c                                       ; $7ee1: $49
    pop bc                                        ; $7ee2: $c1
    ld a, [hl-]                                   ; $7ee3: $3a
    sbc a                                         ; $7ee4: $9f
    sbc l                                         ; $7ee5: $9d
    ld hl, sp+$08                                 ; $7ee6: $f8 $08
    inc bc                                        ; $7ee8: $03
    sub [hl]                                      ; $7ee9: $96
    push de                                       ; $7eea: $d5
    add hl, hl                                    ; $7eeb: $29
    ld sp, hl                                     ; $7eec: $f9
    pop af                                        ; $7eed: $f1
    dec h                                         ; $7eee: $25
    rst $20                                       ; $7eef: $e7
    push hl                                       ; $7ef0: $e5
    rst $00                                       ; $7ef1: $c7
    ld c, e                                       ; $7ef2: $4b
    ld d, d                                       ; $7ef3: $52
    or b                                          ; $7ef4: $b0
    adc $67                                       ; $7ef5: $ce $67
    daa                                           ; $7ef7: $27
    cp $54                                        ; $7ef8: $fe $54
    ld e, $61                                     ; $7efa: $1e $61
    cp l                                          ; $7efc: $bd
    jp nc, $4a0c                                  ; $7efd: $d2 $0c $4a

    sbc d                                         ; $7f00: $9a
    ret z                                         ; $7f01: $c8

    sub $fe                                       ; $7f02: $d6 $fe
    add l                                         ; $7f04: $85
    add hl, hl                                    ; $7f05: $29
    cp a                                          ; $7f06: $bf
    ld c, [hl]                                    ; $7f07: $4e
    add $eb                                       ; $7f08: $c6 $eb
    rst $08                                       ; $7f0a: $cf
    ld e, l                                       ; $7f0b: $5d
    rst $30                                       ; $7f0c: $f7
    ld [hl], h                                    ; $7f0d: $74
    ld a, a                                       ; $7f0e: $7f
    pop hl                                        ; $7f0f: $e1
    ld l, $65                                     ; $7f10: $2e $65
    ld c, l                                       ; $7f12: $4d
    sbc d                                         ; $7f13: $9a
    ld e, d                                       ; $7f14: $5a
    adc h                                         ; $7f15: $8c
    ld a, e                                       ; $7f16: $7b
    ld h, d                                       ; $7f17: $62
    inc sp                                        ; $7f18: $33
    sbc l                                         ; $7f19: $9d
    push bc                                       ; $7f1a: $c5
    ld e, e                                       ; $7f1b: $5b
    rst $38                                       ; $7f1c: $ff
    push af                                       ; $7f1d: $f5
    ld a, h                                       ; $7f1e: $7c
    add l                                         ; $7f1f: $85
    ld hl, sp-$33                                 ; $7f20: $f8 $cd
    jp z, $23cb                                   ; $7f22: $ca $cb $23

    inc c                                         ; $7f25: $0c
    cp l                                          ; $7f26: $bd
    jp nc, $d8d4                                  ; $7f27: $d2 $d4 $d8

    jp c, $feef                                   ; $7f2a: $da $ef $fe

    or d                                          ; $7f2d: $b2
    jr nz, @+$13                                  ; $7f2e: $20 $11

    ld b, $3d                                     ; $7f30: $06 $3d
    ld a, a                                       ; $7f32: $7f
    inc l                                         ; $7f33: $2c
    xor c                                         ; $7f34: $a9
    and $b3                                       ; $7f35: $e6 $b3
    rst $38                                       ; $7f37: $ff
    db $e3                                        ; $7f38: $e3
    ld [c], a                                     ; $7f39: $e2
    xor l                                         ; $7f3a: $ad
    rst $38                                       ; $7f3b: $ff
    ld [c], a                                     ; $7f3c: $e2
    xor e                                         ; $7f3d: $ab
    push af                                       ; $7f3e: $f5
    ld d, d                                       ; $7f3f: $52
    jr nc, jr_020_7f85                            ; $7f40: $30 $43

    ld a, [hl]                                    ; $7f42: $7e
    db $e3                                        ; $7f43: $e3
    ld hl, sp+$5f                                 ; $7f44: $f8 $5f
    ld d, c                                       ; $7f46: $51
    db $eb                                        ; $7f47: $eb
    rrca                                          ; $7f48: $0f
    ld [hl-], a                                   ; $7f49: $32
    db $fc                                        ; $7f4a: $fc
    and l                                         ; $7f4b: $a5
    cp l                                          ; $7f4c: $bd
    ld h, $8d                                     ; $7f4d: $26 $8d
    inc c                                         ; $7f4f: $0c
    ld hl, sp+$7f                                 ; $7f50: $f8 $7f
    rlca                                          ; $7f52: $07
    or h                                          ; $7f53: $b4
    or l                                          ; $7f54: $b5
    ld a, [hl]                                    ; $7f55: $7e
    db $ec                                        ; $7f56: $ec
    xor h                                         ; $7f57: $ac
    ld c, c                                       ; $7f58: $49
    inc hl                                        ; $7f59: $23
    ldh a, [$d1]                                  ; $7f5a: $f0 $d1
    ld a, [$5dc0]                                 ; $7f5c: $fa $c0 $5d
    dec sp                                        ; $7f5f: $3b
    dec de                                        ; $7f60: $1b
    add sp, -$7e                                  ; $7f61: $e8 $82
    ld bc, $e72d                                  ; $7f63: $01 $2d $e7
    sbc e                                         ; $7f66: $9b
    rst $10                                       ; $7f67: $d7
    ld a, d                                       ; $7f68: $7a
    rla                                           ; $7f69: $17
    inc c                                         ; $7f6a: $0c
    and a                                         ; $7f6b: $a7
    inc a                                         ; $7f6c: $3c
    rlca                                          ; $7f6d: $07
    sbc a                                         ; $7f6e: $9f
    rst $18                                       ; $7f6f: $df
    ldh a, [$b9]                                  ; $7f70: $f0 $b9
    dec bc                                        ; $7f72: $0b
    sbc $d7                                       ; $7f73: $de $d7
    and h                                         ; $7f75: $a4
    sub c                                         ; $7f76: $91
    dec h                                         ; $7f77: $25
    ld c, a                                       ; $7f78: $4f
    inc bc                                        ; $7f79: $03
    cp $df                                        ; $7f7a: $fe $df
    and c                                         ; $7f7c: $a1
    dec bc                                        ; $7f7d: $0b
    ld b, $3d                                     ; $7f7e: $06 $3d
    jp z, $5d85                                   ; $7f80: $ca $85 $5d

    and b                                         ; $7f83: $a0
    sbc d                                         ; $7f84: $9a

jr_020_7f85:
    cpl                                           ; $7f85: $2f
    xor l                                         ; $7f86: $ad
    cpl                                           ; $7f87: $2f
    call c, Call_020_4f75                         ; $7f88: $dc $75 $4f
    rst $30                                       ; $7f8b: $f7
    sub a                                         ; $7f8c: $97
    ld l, $18                                     ; $7f8d: $2e $18
    dec a                                         ; $7f8f: $3d
    adc d                                         ; $7f90: $8a
    ld d, d                                       ; $7f91: $52
    dec e                                         ; $7f92: $1d
    cp b                                          ; $7f93: $b8
    db $eb                                        ; $7f94: $eb
    sbc [hl]                                      ; $7f95: $9e
    xor $2f                                       ; $7f96: $ee $2f
    ld l, b                                       ; $7f98: $68
    dec sp                                        ; $7f99: $3b
    dec h                                         ; $7f9a: $25
    ld sp, hl                                     ; $7f9b: $f9
    dec [hl]                                      ; $7f9c: $35
    ld l, c                                       ; $7f9d: $69
    ld d, [hl]                                    ; $7f9e: $56
    and a                                         ; $7f9f: $a7
    db $e4                                        ; $7fa0: $e4
    rst $10                                       ; $7fa1: $d7
    ld a, [hl]                                    ; $7fa2: $7e
    rst $30                                       ; $7fa3: $f7
    sub a                                         ; $7fa4: $97
    ld a, c                                       ; $7fa5: $79
    ld d, c                                       ; $7fa6: $51
    sbc d                                         ; $7fa7: $9a
    rst $20                                       ; $7fa8: $e7
    xor d                                         ; $7fa9: $aa
    and d                                         ; $7faa: $a2
    ld sp, $053e                                  ; $7fab: $31 $3e $05
    cp a                                          ; $7fae: $bf
    ld h, $8d                                     ; $7faf: $26 $8d
    xor h                                         ; $7fb1: $ac
    db $fd                                        ; $7fb2: $fd
    xor $2f                                       ; $7fb3: $ee $2f
    add b                                         ; $7fb5: $80
    jr nc, @-$37                                  ; $7fb6: $30 $c7

    ld h, a                                       ; $7fb8: $67
    or d                                          ; $7fb9: $b2
    ld a, c                                       ; $7fba: $79
    cp c                                          ; $7fbb: $b9
    inc d                                         ; $7fbc: $14
    call z, $d94e                                 ; $7fbd: $cc $4e $d9
    ret                                           ; $7fc0: $c9


    ld a, [de]                                    ; $7fc1: $1a
    db $ed                                        ; $7fc2: $ed
    ld l, h                                       ; $7fc3: $6c
    and $45                                       ; $7fc4: $e6 $45
    ld a, l                                       ; $7fc6: $7d
    sub [hl]                                      ; $7fc7: $96
    pop af                                        ; $7fc8: $f1
    ld a, [bc]                                    ; $7fc9: $0a
    ld d, h                                       ; $7fca: $54
    di                                            ; $7fcb: $f3
    sub l                                         ; $7fcc: $95
    sub a                                         ; $7fcd: $97
    rst $28                                       ; $7fce: $ef
    or d                                          ; $7fcf: $b2
    dec e                                         ; $7fd0: $1d
    inc hl                                        ; $7fd1: $23
    sub a                                         ; $7fd2: $97
    ld [$72f3], a                                 ; $7fd3: $ea $f3 $72
    ld h, c                                       ; $7fd6: $61
    dec a                                         ; $7fd7: $3d
    ld l, a                                       ; $7fd8: $6f
    db $10                                        ; $7fd9: $10
    inc a                                         ; $7fda: $3c
    pop af                                        ; $7fdb: $f1
    rra                                           ; $7fdc: $1f
    reti                                          ; $7fdd: $d9


    cp d                                          ; $7fde: $ba
    and a                                         ; $7fdf: $a7
    rst $18                                       ; $7fe0: $df
    inc h                                         ; $7fe1: $24
    xor $ae                                       ; $7fe2: $ee $ae
    adc a                                         ; $7fe4: $8f
    cp a                                          ; $7fe5: $bf
    ld sp, $b5ce                                  ; $7fe6: $31 $ce $b5
    cp $ab                                        ; $7fe9: $fe $ab
    ld d, h                                       ; $7feb: $54
    ld a, [hl]                                    ; $7fec: $7e
    ld l, c                                       ; $7fed: $69
    xor a                                         ; $7fee: $af
    ld c, c                                       ; $7fef: $49
    inc hl                                        ; $7ff0: $23
    db $e3                                        ; $7ff1: $e3
    db $d3                                        ; $7ff2: $d3
    db $10                                        ; $7ff3: $10
    inc bc                                        ; $7ff4: $03
    add h                                         ; $7ff5: $84
    ld bc, $ffff                                  ; $7ff6: $01 $ff $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
