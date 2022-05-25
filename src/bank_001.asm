; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    db $01

Call_001_4001:
    ldh a, [rSVBK]                                ; $4001: $f0 $70
    push af                                       ; $4003: $f5
    ld a, $01                                     ; $4004: $3e $01
    ldh [rSVBK], a                                ; $4006: $e0 $70
    push de                                       ; $4008: $d5
    ld a, [$c317]                                 ; $4009: $fa $17 $c3
    or a                                          ; $400c: $b7
    jr z, jr_001_4050                             ; $400d: $28 $41

    ld a, [$c318]                                 ; $400f: $fa $18 $c3
    or a                                          ; $4012: $b7
    jr nz, jr_001_402d                            ; $4013: $20 $18

    db $7a

    cp $a0                                        ; $4016: $fe $a0
    jr c, jr_001_4021                             ; $4018: $38 $07

    sub $18                                       ; $401a: $d6 $18
    ld d, a                                       ; $401c: $57
    ld a, $01                                     ; $401d: $3e $01
    jr jr_001_4022                                ; $401f: $18 $01

jr_001_4021:
    xor a                                         ; $4021: $af

jr_001_4022:
    ld [$c31e], a                                 ; $4022: $ea $1e $c3
    ld a, e                                       ; $4025: $7b
    ld [$c31a], a                                 ; $4026: $ea $1a $c3
    ld a, d                                       ; $4029: $7a
    ld [$c31b], a                                 ; $402a: $ea $1b $c3

jr_001_402d:
    ld a, [$c318]                                 ; $402d: $fa $18 $c3
    swap a                                        ; $4030: $cb $37
    ld de, $d400                                  ; $4032: $11 $00 $d4
    add e                                         ; $4035: $83
    ld e, a                                       ; $4036: $5f
    ld a, $00                                     ; $4037: $3e $00
    adc d                                         ; $4039: $8a
    ld d, a                                       ; $403a: $57
    call CopyHL2DE_16                            ; $403b: $cd $27 $12
    ld a, [$c318]                                 ; $403e: $fa $18 $c3
    inc a                                         ; $4041: $3c
    ld [$c318], a                                 ; $4042: $ea $18 $c3
    cp $10                                        ; $4045: $fe $10
    jr nz, jr_001_40a5                            ; $4047: $20 $5c

    ld hl, $c316                                  ; $4049: $21 $16 $c3
    set 0, [hl]                                   ; $404c: $cb $c6
    jr jr_001_408f                                ; $404e: $18 $3f

jr_001_4050:
    ld a, [$c319]                                 ; $4050: $fa $19 $c3
    or a                                          ; $4053: $b7
    jr nz, jr_001_406e                            ; $4054: $20 $18

    ld a, d                                       ; $4056: $7a
    cp $a0                                        ; $4057: $fe $a0
    jr c, jr_001_4062                             ; $4059: $38 $07

    sub $18                                       ; $405b: $d6 $18
    ld d, a                                       ; $405d: $57
    ld a, $01                                     ; $405e: $3e $01
    jr jr_001_4063                                ; $4060: $18 $01

jr_001_4062:
    xor a                                         ; $4062: $af

jr_001_4063:
    ld [$c31f], a                                 ; $4063: $ea $1f $c3
    ld a, e                                       ; $4066: $7b
    ld [$c31c], a                                 ; $4067: $ea $1c $c3
    ld a, d                                       ; $406a: $7a
    ld [$c31d], a                                 ; $406b: $ea $1d $c3

jr_001_406e:
    ld a, [$c319]                                 ; $406e: $fa $19 $c3
    swap a                                        ; $4071: $cb $37
    ld de, $d500                                  ; $4073: $11 $00 $d5
    add e                                         ; $4076: $83
    ld e, a                                       ; $4077: $5f
    ld a, $00                                     ; $4078: $3e $00
    adc d                                         ; $407a: $8a
    ld d, a                                       ; $407b: $57
    call CopyHL2DE_16                            ; $407c: $cd $27 $12
    ld a, [$c319]                                 ; $407f: $fa $19 $c3
    inc a                                         ; $4082: $3c
    ld [$c319], a                                 ; $4083: $ea $19 $c3
    cp $10                                        ; $4086: $fe $10
    jr nz, jr_001_40a5                            ; $4088: $20 $1b

    ld hl, $c316                                  ; $408a: $21 $16 $c3
    set 1, [hl]                                   ; $408d: $cb $ce

jr_001_408f:
    ld a, [$c317]                                 ; $408f: $fa $17 $c3
    xor $01                                       ; $4092: $ee $01
    ld [$c317], a                                 ; $4094: $ea $17 $c3
    ld a, $00                                     ; $4097: $3e $00
    ld hl, $c318                                  ; $4099: $21 $18 $c3
    jr nz, jr_001_40a1                            ; $409c: $20 $03

    ld hl, $c319                                  ; $409e: $21 $19 $c3

jr_001_40a1:
    ld a, [hl]                                    ; $40a1: $7e
    or a                                          ; $40a2: $b7
    jr nz, jr_001_40a1                            ; $40a3: $20 $fc

jr_001_40a5:
    pop hl                                        ; $40a5: $e1
    ld de, $0010                                  ; $40a6: $11 $10 $00
    add hl, de                                    ; $40a9: $19
    ld e, l                                       ; $40aa: $5d
    ld d, h                                       ; $40ab: $54
    pop af                                        ; $40ac: $f1
    ldh [rSVBK], a                                ; $40ad: $e0 $70
    ret                                           ; $40af: $c9


Call_001_40b0:
    push hl                                       ; $40b0: $e5
    ld a, [$c316]                                 ; $40b1: $fa $16 $c3
    ld l, a                                       ; $40b4: $6f
    ld a, [$c318]                                 ; $40b5: $fa $18 $c3
    or a                                          ; $40b8: $b7
    jr z, jr_001_40bd                             ; $40b9: $28 $02

    set 0, l                                      ; $40bb: $cb $c5

jr_001_40bd:
    ld a, [$c319]                                 ; $40bd: $fa $19 $c3
    or a                                          ; $40c0: $b7
    jr z, jr_001_40c5                             ; $40c1: $28 $02

    set 1, l                                      ; $40c3: $cb $cd

jr_001_40c5:
    ld a, l                                       ; $40c5: $7d
    pop hl                                        ; $40c6: $e1
    or a                                          ; $40c7: $b7
    ret z                                         ; $40c8: $c8

    ld [$c316], a                                 ; $40c9: $ea $16 $c3

jr_001_40cc:
    ld a, [$c316]                                 ; $40cc: $fa $16 $c3
    or a                                          ; $40cf: $b7
    jr nz, jr_001_40cc                            ; $40d0: $20 $fa

    ld a, $02                                     ; $40d2: $3e $02
    ldh [$a8], a                                  ; $40d4: $e0 $a8
    ret                                           ; $40d6: $c9


    ldh a, [rLY]                                  ; $40d7: $f0 $44
    cp $90                                        ; $40d9: $fe $90
    ret c                                         ; $40db: $d8

    ld a, [$c318]                                 ; $40dc: $fa $18 $c3
    ld c, a                                       ; $40df: $4f
    ld a, [$c319]                                 ; $40e0: $fa $19 $c3
    add c                                         ; $40e3: $81
    swap a                                        ; $40e4: $cb $37
    and $0f                                       ; $40e6: $e6 $0f
    sub $97                                       ; $40e8: $d6 $97
    cpl                                           ; $40ea: $2f
    inc a                                         ; $40eb: $3c
    ld c, a                                       ; $40ec: $4f
    ldh a, [rLY]                                  ; $40ed: $f0 $44
    ret nc                                        ; $40ef: $d0

    ld hl, $c316                                  ; $40f0: $21 $16 $c3
    bit 0, [hl]                                   ; $40f3: $cb $46
    jr z, jr_001_4124                             ; $40f5: $28 $2d

    ld a, [$c31e]                                 ; $40f7: $fa $1e $c3
    ldh [rVBK], a                                 ; $40fa: $e0 $4f
    ld a, [$c318]                                 ; $40fc: $fa $18 $c3
    or a                                          ; $40ff: $b7
    jr z, jr_001_411c                             ; $4100: $28 $1a

    dec a                                         ; $4102: $3d
    ld c, a                                       ; $4103: $4f
    ld hl, $c31a                                  ; $4104: $21 $1a $c3
    ld e, [hl]                                    ; $4107: $5e
    inc hl                                        ; $4108: $23
    ld d, [hl]                                    ; $4109: $56
    ld hl, $d400                                  ; $410a: $21 $00 $d4
    ldh a, [rSVBK]                                ; $410d: $f0 $70
    push af                                       ; $410f: $f5
    ld a, $01                                     ; $4110: $3e $01
    ldh [rSVBK], a                                ; $4112: $e0 $70
    rst $28                                       ; $4114: $ef
    pop af                                        ; $4115: $f1
    ldh [rSVBK], a                                ; $4116: $e0 $70
    xor a                                         ; $4118: $af
    ld [$c318], a                                 ; $4119: $ea $18 $c3

jr_001_411c:
    ld hl, $c316                                  ; $411c: $21 $16 $c3
    res 0, [hl]                                   ; $411f: $cb $86
    xor a                                         ; $4121: $af
    ldh [rVBK], a                                 ; $4122: $e0 $4f

jr_001_4124:
    bit 1, [hl]                                   ; $4124: $cb $4e
    ret z                                         ; $4126: $c8

    ld a, [$c31f]                                 ; $4127: $fa $1f $c3
    ldh [rVBK], a                                 ; $412a: $e0 $4f
    ld a, [$c319]                                 ; $412c: $fa $19 $c3
    or a                                          ; $412f: $b7
    jr z, jr_001_414c                             ; $4130: $28 $1a

    dec a                                         ; $4132: $3d
    ld c, a                                       ; $4133: $4f
    ld hl, $c31c                                  ; $4134: $21 $1c $c3
    ld e, [hl]                                    ; $4137: $5e
    inc hl                                        ; $4138: $23
    ld d, [hl]                                    ; $4139: $56
    ld hl, $d500                                  ; $413a: $21 $00 $d5
    ldh a, [rSVBK]                                ; $413d: $f0 $70
    push af                                       ; $413f: $f5
    ld a, $01                                     ; $4140: $3e $01
    ldh [rSVBK], a                                ; $4142: $e0 $70
    rst $28                                       ; $4144: $ef
    pop af                                        ; $4145: $f1
    ldh [rSVBK], a                                ; $4146: $e0 $70
    xor a                                         ; $4148: $af
    ld [$c319], a                                 ; $4149: $ea $19 $c3

jr_001_414c:
    ld hl, $c316                                  ; $414c: $21 $16 $c3
    res 1, [hl]                                   ; $414f: $cb $8e
    xor a                                         ; $4151: $af
    ldh [rVBK], a                                 ; $4152: $e0 $4f
    ret                                           ; $4154: $c9


Call_001_4155:
    ldh a, [rLCDC]                                ; $4155: $f0 $40
    rla                                           ; $4157: $17
    ret nc                                        ; $4158: $d0

jr_001_4159:
    ld a, [$c310]                                 ; $4159: $fa $10 $c3
    or a                                          ; $415c: $b7
    jr nz, jr_001_4159                            ; $415d: $20 $fa

    ret                                           ; $415f: $c9


    ld a, [$c315]                                 ; $4160: $fa $15 $c3
    ldh [rVBK], a                                 ; $4163: $e0 $4f
    ld hl, $c310                                  ; $4165: $21 $10 $c3
    ldh a, [rLCDC]                                ; $4168: $f0 $40
    rla                                           ; $416a: $17
    jr nc, jr_001_4172                            ; $416b: $30 $05

    ld a, [hl]                                    ; $416d: $7e
    sub $3f                                       ; $416e: $d6 $3f
    jr nc, jr_001_4177                            ; $4170: $30 $05

jr_001_4172:
    ld c, [hl]                                    ; $4172: $4e
    ld [hl], $00                                  ; $4173: $36 $00
    jr jr_001_417a                                ; $4175: $18 $03

jr_001_4177:
    ld [hl], a                                    ; $4177: $77
    ld c, $3f                                     ; $4178: $0e $3f

jr_001_417a:
    ld hl, $c311                                  ; $417a: $21 $11 $c3
    ld e, [hl]                                    ; $417d: $5e
    inc hl                                        ; $417e: $23
    ld d, [hl]                                    ; $417f: $56
    ld hl, $c313                                  ; $4180: $21 $13 $c3
    ld a, [hl+]                                   ; $4183: $2a
    ld h, [hl]                                    ; $4184: $66
    ld l, a                                       ; $4185: $6f
    ldh a, [rSVBK]                                ; $4186: $f0 $70
    push af                                       ; $4188: $f5
    ld a, $01                                     ; $4189: $3e $01
    ldh [rSVBK], a                                ; $418b: $e0 $70
    rst $28                                       ; $418d: $ef
    pop af                                        ; $418e: $f1
    ldh [rSVBK], a                                ; $418f: $e0 $70
    sla c                                         ; $4191: $cb $21
    sla c                                         ; $4193: $cb $21
    sla c                                         ; $4195: $cb $21
    sla c                                         ; $4197: $cb $21
    ld b, $00                                     ; $4199: $06 $00
    add hl, bc                                    ; $419b: $09
    ld a, l                                       ; $419c: $7d
    ld [$c313], a                                 ; $419d: $ea $13 $c3
    ld a, h                                       ; $41a0: $7c
    ld [$c314], a                                 ; $41a1: $ea $14 $c3
    ld l, e                                       ; $41a4: $6b
    ld h, d                                       ; $41a5: $62
    add hl, bc                                    ; $41a6: $09
    ld a, l                                       ; $41a7: $7d
    ld [$c311], a                                 ; $41a8: $ea $11 $c3
    ld a, h                                       ; $41ab: $7c
    ld [$c312], a                                 ; $41ac: $ea $12 $c3
    xor a                                         ; $41af: $af
    ldh [rVBK], a                                 ; $41b0: $e0 $4f
    ret                                           ; $41b2: $c9


    rst $00                                       ; $41b3: $c7

    sbc d                                         ; $41b4: $9a
    ld b, e                                       ; $41b5: $43

    db $7d, $0e, $4c, $0c

    sub l                                         ; $41ba: $95
    ld a, [bc]                                    ; $41bb: $0a

    db $95, $0a, $17, $0e, $6d, $0b, $5f, $0c, $c5, $0c

    push bc                                       ; $41c6: $c5
    inc c                                         ; $41c7: $0c
    ld e, a                                       ; $41c8: $5f
    inc c                                         ; $41c9: $0c

    db $9f, $0d, $99, $0d, $c5, $0c

    push bc                                       ; $41d0: $c5
    inc c                                         ; $41d1: $0c
    ld d, h                                       ; $41d2: $54
    dec c                                         ; $41d3: $0d
    ld h, d                                       ; $41d4: $62
    dec c                                         ; $41d5: $0d
    ld [hl], b                                    ; $41d6: $70
    dec c                                         ; $41d7: $0d
    sbc h                                         ; $41d8: $9c
    inc c                                         ; $41d9: $0c
    push bc                                       ; $41da: $c5
    inc c                                         ; $41db: $0c
    ld e, $0c                                     ; $41dc: $1e $0c

    db $95, $0a

    sub l                                         ; $41e0: $95
    ld a, [bc]                                    ; $41e1: $0a
    sub l                                         ; $41e2: $95
    ld a, [bc]                                    ; $41e3: $0a
    ld l, l                                       ; $41e4: $6d
    dec bc                                        ; $41e5: $0b
    sub l                                         ; $41e6: $95
    ld a, [bc]                                    ; $41e7: $0a
    sub l                                         ; $41e8: $95
    ld a, [bc]                                    ; $41e9: $0a
    sub l                                         ; $41ea: $95
    ld a, [bc]                                    ; $41eb: $0a
    push bc                                       ; $41ec: $c5
    inc c                                         ; $41ed: $0c
    sub l                                         ; $41ee: $95
    ld a, [bc]                                    ; $41ef: $0a
    push bc                                       ; $41f0: $c5
    inc c                                         ; $41f1: $0c
    sub l                                         ; $41f2: $95
    ld a, [bc]                                    ; $41f3: $0a
    sub l                                         ; $41f4: $95
    ld a, [bc]                                    ; $41f5: $0a
    sub l                                         ; $41f6: $95
    ld a, [bc]                                    ; $41f7: $0a
    adc [hl]                                      ; $41f8: $8e
    dec bc                                        ; $41f9: $0b
    push bc                                       ; $41fa: $c5
    inc c                                         ; $41fb: $0c
    sub l                                         ; $41fc: $95
    ld a, [bc]                                    ; $41fd: $0a
    sub l                                         ; $41fe: $95
    ld a, [bc]                                    ; $41ff: $0a
    sub l                                         ; $4200: $95
    ld a, [bc]                                    ; $4201: $0a
    sub l                                         ; $4202: $95
    ld a, [bc]                                    ; $4203: $0a
    sub l                                         ; $4204: $95
    ld a, [bc]                                    ; $4205: $0a
    sub l                                         ; $4206: $95
    ld a, [bc]                                    ; $4207: $0a
    ld sp, $950c                                  ; $4208: $31 $0c $95
    ld a, [bc]                                    ; $420b: $0a
    sub l                                         ; $420c: $95
    ld a, [bc]                                    ; $420d: $0a
    sub l                                         ; $420e: $95
    ld a, [bc]                                    ; $420f: $0a
    adc [hl]                                      ; $4210: $8e
    dec bc                                        ; $4211: $0b
    sub l                                         ; $4212: $95
    ld a, [bc]                                    ; $4213: $0a

    db $95, $0a

    sub l                                         ; $4216: $95
    ld a, [bc]                                    ; $4217: $0a
    sub l                                         ; $4218: $95
    ld a, [bc]                                    ; $4219: $0a
    sub l                                         ; $421a: $95
    ld a, [bc]                                    ; $421b: $0a
    sub l                                         ; $421c: $95
    ld a, [bc]                                    ; $421d: $0a
    sub l                                         ; $421e: $95
    ld a, [bc]                                    ; $421f: $0a
    sub l                                         ; $4220: $95
    ld a, [bc]                                    ; $4221: $0a
    sub l                                         ; $4222: $95
    ld a, [bc]                                    ; $4223: $0a
    sub l                                         ; $4224: $95
    ld a, [bc]                                    ; $4225: $0a
    sub l                                         ; $4226: $95
    ld a, [bc]                                    ; $4227: $0a
    sub l                                         ; $4228: $95
    ld a, [bc]                                    ; $4229: $0a
    ld l, l                                       ; $422a: $6d
    dec bc                                        ; $422b: $0b
    sub l                                         ; $422c: $95
    ld a, [bc]                                    ; $422d: $0a
    sub l                                         ; $422e: $95
    ld a, [bc]                                    ; $422f: $0a
    sub l                                         ; $4230: $95
    ld a, [bc]                                    ; $4231: $0a
    sub l                                         ; $4232: $95
    ld a, [bc]                                    ; $4233: $0a
    ld l, l                                       ; $4234: $6d
    dec bc                                        ; $4235: $0b
    ld l, l                                       ; $4236: $6d
    dec bc                                        ; $4237: $0b
    ld l, l                                       ; $4238: $6d
    dec bc                                        ; $4239: $0b
    ld l, l                                       ; $423a: $6d
    dec bc                                        ; $423b: $0b
    ld l, l                                       ; $423c: $6d
    dec bc                                        ; $423d: $0b
    ld l, l                                       ; $423e: $6d
    dec bc                                        ; $423f: $0b
    ld l, l                                       ; $4240: $6d
    dec bc                                        ; $4241: $0b
    ld l, l                                       ; $4242: $6d
    dec bc                                        ; $4243: $0b
    ld l, l                                       ; $4244: $6d
    dec bc                                        ; $4245: $0b
    sub l                                         ; $4246: $95
    ld a, [bc]                                    ; $4247: $0a
    sub l                                         ; $4248: $95
    ld a, [bc]                                    ; $4249: $0a
    sub l                                         ; $424a: $95
    ld a, [bc]                                    ; $424b: $0a
    sub l                                         ; $424c: $95
    ld a, [bc]                                    ; $424d: $0a
    sub l                                         ; $424e: $95
    ld a, [bc]                                    ; $424f: $0a
    ld a, e                                       ; $4250: $7b
    dec bc                                        ; $4251: $0b
    ld a, e                                       ; $4252: $7b
    dec bc                                        ; $4253: $0b
    ld a, e                                       ; $4254: $7b
    dec bc                                        ; $4255: $0b
    ld a, e                                       ; $4256: $7b
    dec bc                                        ; $4257: $0b
    ld l, l                                       ; $4258: $6d
    dec bc                                        ; $4259: $0b

    db $8e, $0d

    sub l                                         ; $425c: $95
    ld a, [bc]                                    ; $425d: $0a
    sub l                                         ; $425e: $95
    ld a, [bc]                                    ; $425f: $0a
    sub l                                         ; $4260: $95
    ld a, [bc]                                    ; $4261: $0a
    sub l                                         ; $4262: $95
    ld a, [bc]                                    ; $4263: $0a
    sub l                                         ; $4264: $95
    ld a, [bc]                                    ; $4265: $0a
    sbc c                                         ; $4266: $99
    dec c                                         ; $4267: $0d
    sub l                                         ; $4268: $95
    ld a, [bc]                                    ; $4269: $0a
    sub l                                         ; $426a: $95
    ld a, [bc]                                    ; $426b: $0a
    ld e, $0c                                     ; $426c: $1e $0c
    sub l                                         ; $426e: $95
    ld a, [bc]                                    ; $426f: $0a
    sub l                                         ; $4270: $95
    ld a, [bc]                                    ; $4271: $0a
    sub l                                         ; $4272: $95
    ld a, [bc]                                    ; $4273: $0a
    sub l                                         ; $4274: $95
    ld a, [bc]                                    ; $4275: $0a
    sub l                                         ; $4276: $95
    ld a, [bc]                                    ; $4277: $0a
    sub l                                         ; $4278: $95
    ld a, [bc]                                    ; $4279: $0a
    sub l                                         ; $427a: $95
    ld a, [bc]                                    ; $427b: $0a
    sub l                                         ; $427c: $95
    ld a, [bc]                                    ; $427d: $0a

    db $1e, $0c

    sub l                                         ; $4280: $95
    ld a, [bc]                                    ; $4281: $0a
    sub l                                         ; $4282: $95
    ld a, [bc]                                    ; $4283: $0a
    sub l                                         ; $4284: $95
    ld a, [bc]                                    ; $4285: $0a
    sub l                                         ; $4286: $95
    ld a, [bc]                                    ; $4287: $0a
    sub l                                         ; $4288: $95
    ld a, [bc]                                    ; $4289: $0a
    sub l                                         ; $428a: $95
    ld a, [bc]                                    ; $428b: $0a
    sub l                                         ; $428c: $95
    ld a, [bc]                                    ; $428d: $0a
    sub l                                         ; $428e: $95
    ld a, [bc]                                    ; $428f: $0a
    ld b, [hl]                                    ; $4290: $46
    dec c                                         ; $4291: $0d
    jp z, $da0b                                   ; $4292: $ca $0b $da

    dec bc                                        ; $4295: $0b
    sbc a                                         ; $4296: $9f
    dec c                                         ; $4297: $0d
    sub l                                         ; $4298: $95
    ld a, [bc]                                    ; $4299: $0a
    sub l                                         ; $429a: $95
    ld a, [bc]                                    ; $429b: $0a
    sbc d                                         ; $429c: $9a
    ld b, e                                       ; $429d: $43
    sbc d                                         ; $429e: $9a
    ld b, e                                       ; $429f: $43
    sbc d                                         ; $42a0: $9a
    ld b, e                                       ; $42a1: $43
    sbc d                                         ; $42a2: $9a
    ld b, e                                       ; $42a3: $43
    sbc d                                         ; $42a4: $9a
    ld b, e                                       ; $42a5: $43
    sbc d                                         ; $42a6: $9a
    ld b, e                                       ; $42a7: $43
    sbc d                                         ; $42a8: $9a
    ld b, e                                       ; $42a9: $43

    db $3e, $0b, $3e, $0b, $3e, $0b, $3e, $0b, $3e, $0b, $95, $0a

    sub l                                         ; $42b6: $95
    ld a, [bc]                                    ; $42b7: $0a

    db $95, $0a, $95, $0a

    sub l                                         ; $42bc: $95
    ld a, [bc]                                    ; $42bd: $0a

    db $95, $0a, $95, $0a

    sub l                                         ; $42c2: $95
    ld a, [bc]                                    ; $42c3: $0a
    rrc h                                         ; $42c4: $cb $0c
    sbc $0c                                       ; $42c6: $de $0c
    jr c, @+$0f                                   ; $42c8: $38 $0d

    jr c, jr_001_42d9                             ; $42ca: $38 $0d

    jr c, jr_001_42db                             ; $42cc: $38 $0d

    jr c, jr_001_42dd                             ; $42ce: $38 $0d

    jr c, jr_001_42df                             ; $42d0: $38 $0d

    sub l                                         ; $42d2: $95
    ld a, [bc]                                    ; $42d3: $0a
    sub l                                         ; $42d4: $95
    ld a, [bc]                                    ; $42d5: $0a

    db $95, $0a

    sub l                                         ; $42d8: $95

jr_001_42d9:
    ld a, [bc]                                    ; $42d9: $0a
    sub l                                         ; $42da: $95

jr_001_42db:
    ld a, [bc]                                    ; $42db: $0a
    sub l                                         ; $42dc: $95

jr_001_42dd:
    ld a, [bc]                                    ; $42dd: $0a
    sub l                                         ; $42de: $95

jr_001_42df:
    ld a, [bc]                                    ; $42df: $0a
    sub l                                         ; $42e0: $95
    ld a, [bc]                                    ; $42e1: $0a
    sub l                                         ; $42e2: $95
    ld a, [bc]                                    ; $42e3: $0a
    sub l                                         ; $42e4: $95
    ld a, [bc]                                    ; $42e5: $0a
    sub l                                         ; $42e6: $95
    ld a, [bc]                                    ; $42e7: $0a
    sub l                                         ; $42e8: $95
    ld a, [bc]                                    ; $42e9: $0a
    sub l                                         ; $42ea: $95
    ld a, [bc]                                    ; $42eb: $0a
    sub l                                         ; $42ec: $95
    ld a, [bc]                                    ; $42ed: $0a
    sub l                                         ; $42ee: $95
    ld a, [bc]                                    ; $42ef: $0a

    db $95, $0a

    sub l                                         ; $42f2: $95
    ld a, [bc]                                    ; $42f3: $0a
    sub l                                         ; $42f4: $95
    ld a, [bc]                                    ; $42f5: $0a
    sub l                                         ; $42f6: $95
    ld a, [bc]                                    ; $42f7: $0a
    sub l                                         ; $42f8: $95
    ld a, [bc]                                    ; $42f9: $0a
    sub l                                         ; $42fa: $95
    ld a, [bc]                                    ; $42fb: $0a
    sub l                                         ; $42fc: $95
    ld a, [bc]                                    ; $42fd: $0a

    db $95, $0a

    sbc $0c                                       ; $4300: $de $0c
    add hl, bc                                    ; $4302: $09
    dec c                                         ; $4303: $0d
    sub l                                         ; $4304: $95
    ld a, [bc]                                    ; $4305: $0a
    sub l                                         ; $4306: $95
    ld a, [bc]                                    ; $4307: $0a
    sub l                                         ; $4308: $95
    ld a, [bc]                                    ; $4309: $0a
    sub l                                         ; $430a: $95
    ld a, [bc]                                    ; $430b: $0a
    sub l                                         ; $430c: $95
    ld a, [bc]                                    ; $430d: $0a
    sub l                                         ; $430e: $95
    ld a, [bc]                                    ; $430f: $0a
    sub l                                         ; $4310: $95
    ld a, [bc]                                    ; $4311: $0a
    sbc $0c                                       ; $4312: $de $0c

    db $3e, $0b, $95, $0a, $95, $0a

    sub l                                         ; $431a: $95
    ld a, [bc]                                    ; $431b: $0a
    sub l                                         ; $431c: $95
    ld a, [bc]                                    ; $431d: $0a
    sub l                                         ; $431e: $95
    ld a, [bc]                                    ; $431f: $0a
    sub l                                         ; $4320: $95
    ld a, [bc]                                    ; $4321: $0a
    sub l                                         ; $4322: $95
    ld a, [bc]                                    ; $4323: $0a

    db $95, $0a

    rst $38                                       ; $4326: $ff

    db $00, $ff

    rst $38                                       ; $4329: $ff

    db $01, $02, $03, $ff, $04

    db $01                                        ; $432f: $01
    db $01                                        ; $4330: $01

    db $ff, $ff, $05

    ld b, $07                                     ; $4334: $06 $07
    ld [$ffff], sp                                ; $4336: $08 $ff $ff
    rst $38                                       ; $4339: $ff
    add hl, bc                                    ; $433a: $09

    db $0a

    dec bc                                        ; $433c: $0b
    inc c                                         ; $433d: $0c
    rst $38                                       ; $433e: $ff
    dec c                                         ; $433f: $0d
    ld c, $0f                                     ; $4340: $0e $0f
    rst $38                                       ; $4342: $ff
    db $10                                        ; $4343: $10
    ld de, $1312                                  ; $4344: $11 $12 $13
    inc d                                         ; $4347: $14
    dec d                                         ; $4348: $15
    ld d, $17                                     ; $4349: $16 $17
    jr jr_001_4366                                ; $434b: $18 $19

    ld a, [de]                                    ; $434d: $1a
    dec de                                        ; $434e: $1b
    inc e                                         ; $434f: $1c
    dec e                                         ; $4350: $1d
    ld e, $1f                                     ; $4351: $1e $1f
    jr nz, jr_001_4376                            ; $4353: $20 $21

    ld [hl+], a                                   ; $4355: $22

    db $ff

    inc hl                                        ; $4357: $23
    inc h                                         ; $4358: $24
    dec h                                         ; $4359: $25
    ld h, $27                                     ; $435a: $26 $27
    jr z, jr_001_4387                             ; $435c: $28 $29

    ld a, [hl+]                                   ; $435e: $2a
    dec hl                                        ; $435f: $2b
    inc l                                         ; $4360: $2c
    dec l                                         ; $4361: $2d
    ld l, $2f                                     ; $4362: $2e $2f
    jr nc, jr_001_4397                            ; $4364: $30 $31

jr_001_4366:
    ld [hl-], a                                   ; $4366: $32
    inc sp                                        ; $4367: $33
    inc [hl]                                      ; $4368: $34
    dec [hl]                                      ; $4369: $35
    ld [hl], $37                                  ; $436a: $36 $37
    jr c, jr_001_43a7                             ; $436c: $38 $39

    ld a, [hl-]                                   ; $436e: $3a
    dec sp                                        ; $436f: $3b
    inc a                                         ; $4370: $3c
    dec a                                         ; $4371: $3d
    ld a, $3f                                     ; $4372: $3e $3f
    rst $38                                       ; $4374: $ff
    rst $38                                       ; $4375: $ff

jr_001_4376:
    rst $38                                       ; $4376: $ff
    rst $38                                       ; $4377: $ff
    ld b, b                                       ; $4378: $40

    db $41

    rst $38                                       ; $437a: $ff
    ld b, d                                       ; $437b: $42
    ld b, e                                       ; $437c: $43
    ld b, h                                       ; $437d: $44
    ld b, l                                       ; $437e: $45
    ld b, [hl]                                    ; $437f: $46
    ld b, a                                       ; $4380: $47
    ld c, b                                       ; $4381: $48
    ld c, c                                       ; $4382: $49
    ld c, d                                       ; $4383: $4a
    ld c, e                                       ; $4384: $4b
    ld c, h                                       ; $4385: $4c
    ld c, l                                       ; $4386: $4d

jr_001_4387:
    rst $38                                       ; $4387: $ff
    ld c, [hl]                                    ; $4388: $4e
    ld c, a                                       ; $4389: $4f
    ld d, b                                       ; $438a: $50

    db $51

    ld d, d                                       ; $438c: $52
    ld d, e                                       ; $438d: $53
    ld d, h                                       ; $438e: $54
    ld d, l                                       ; $438f: $55
    ld d, [hl]                                    ; $4390: $56
    ld d, a                                       ; $4391: $57
    ld e, b                                       ; $4392: $58
    ld e, c                                       ; $4393: $59
    ld e, d                                       ; $4394: $5a
    rst $38                                       ; $4395: $ff
    rst $38                                       ; $4396: $ff

jr_001_4397:
    rst $38                                       ; $4397: $ff
    rst $38                                       ; $4398: $ff
    ld e, e                                       ; $4399: $5b
    rst $38                                       ; $439a: $ff
    rst $38                                       ; $439b: $ff
    rst $38                                       ; $439c: $ff
    rst $38                                       ; $439d: $ff
    rst $38                                       ; $439e: $ff
    rst $38                                       ; $439f: $ff
    rst $38                                       ; $43a0: $ff

    db $5c, $ff, $ff, $5d, $5e, $ff

jr_001_43a7:
    rst $38                                       ; $43a7: $ff

    db $ff, $5f

    ld h, b                                       ; $43aa: $60

    db $ff, $61

    ld h, d                                       ; $43ad: $62
    rst $38                                       ; $43ae: $ff
    rst $38                                       ; $43af: $ff
    rst $38                                       ; $43b0: $ff
    rst $38                                       ; $43b1: $ff
    rst $38                                       ; $43b2: $ff
    rst $38                                       ; $43b3: $ff
    rst $38                                       ; $43b4: $ff
    rst $38                                       ; $43b5: $ff
    rst $38                                       ; $43b6: $ff

    db $ff

    rst $38                                       ; $43b8: $ff
    rst $38                                       ; $43b9: $ff
    rst $38                                       ; $43ba: $ff
    rst $38                                       ; $43bb: $ff
    rst $38                                       ; $43bc: $ff
    rst $38                                       ; $43bd: $ff
    rst $38                                       ; $43be: $ff
    rst $38                                       ; $43bf: $ff
    rst $38                                       ; $43c0: $ff
    rst $38                                       ; $43c1: $ff
    rst $38                                       ; $43c2: $ff
    rst $38                                       ; $43c3: $ff

    db $ff

    ld h, e                                       ; $43c5: $63
    ld h, h                                       ; $43c6: $64
    ld h, l                                       ; $43c7: $65
    ld h, [hl]                                    ; $43c8: $66
    ld h, a                                       ; $43c9: $67
    rst $38                                       ; $43ca: $ff

    db $ff

    ld l, b                                       ; $43cc: $68
    ld l, c                                       ; $43cd: $69
    rst $38                                       ; $43ce: $ff
    rst $38                                       ; $43cf: $ff
    ld l, d                                       ; $43d0: $6a
    ld l, e                                       ; $43d1: $6b
    rst $38                                       ; $43d2: $ff
    rst $38                                       ; $43d3: $ff
    rst $38                                       ; $43d4: $ff
    rst $38                                       ; $43d5: $ff

    db $ff, $ff, $ff

    rst $38                                       ; $43d9: $ff
    rst $38                                       ; $43da: $ff
    ld l, h                                       ; $43db: $6c
    rst $38                                       ; $43dc: $ff
    ld l, l                                       ; $43dd: $6d

    db $6e, $00, $00, $86, $05, $f0, $0c, $23, $06, $8e, $05, $14, $03

    ld d, h                                       ; $43eb: $54
    inc bc                                        ; $43ec: $03
    ld h, l                                       ; $43ed: $65
    rlca                                          ; $43ee: $07
    ld l, c                                       ; $43ef: $69
    rlca                                          ; $43f0: $07
    ld b, $08                                     ; $43f1: $06 $08

    db $80, $0b

    and h                                         ; $43f5: $a4
    dec bc                                        ; $43f6: $0b
    cp c                                          ; $43f7: $b9
    dec bc                                        ; $43f8: $0b
    call nz, $9e07                                ; $43f9: $c4 $07 $9e
    ld a, [bc]                                    ; $43fc: $0a
    db $ed                                        ; $43fd: $ed
    ld a, [bc]                                    ; $43fe: $0a
    ld [bc], a                                    ; $43ff: $02
    dec bc                                        ; $4400: $0b
    xor [hl]                                      ; $4401: $ae
    rlca                                          ; $4402: $07
    cp d                                          ; $4403: $ba
    dec bc                                        ; $4404: $0b
    inc c                                         ; $4405: $0c
    inc c                                         ; $4406: $0c
    dec c                                         ; $4407: $0d
    inc c                                         ; $4408: $0c
    rla                                           ; $4409: $17
    dec bc                                        ; $440a: $0b
    cp [hl]                                       ; $440b: $be
    inc c                                         ; $440c: $0c
    or a                                          ; $440d: $b7
    ld a, [bc]                                    ; $440e: $0a
    ld [hl], h                                    ; $440f: $74
    ld a, [bc]                                    ; $4410: $0a
    ld a, [hl]                                    ; $4411: $7e
    inc bc                                        ; $4412: $03
    xor d                                         ; $4413: $aa
    ld [$08c7], sp                                ; $4414: $08 $c7 $08
    adc h                                         ; $4417: $8c
    add hl, bc                                    ; $4418: $09
    ld c, $0c                                     ; $4419: $0e $0c
    add b                                         ; $441b: $80
    dec bc                                        ; $441c: $0b
    inc l                                         ; $441d: $2c
    dec bc                                        ; $441e: $0b
    ld d, [hl]                                    ; $441f: $56
    dec bc                                        ; $4420: $0b
    or d                                          ; $4421: $b2
    add hl, bc                                    ; $4422: $09
    cp e                                          ; $4423: $bb
    dec bc                                        ; $4424: $0b
    sub l                                         ; $4425: $95
    dec bc                                        ; $4426: $0b
    db $e4                                        ; $4427: $e4
    ld [$090e], sp                                ; $4428: $08 $0e $09
    jr c, jr_001_4436                             ; $442b: $38 $09

    ld h, d                                       ; $442d: $62
    add hl, bc                                    ; $442e: $09
    xor b                                         ; $442f: $a8
    inc bc                                        ; $4430: $03
    jp nc, $2b03                                  ; $4431: $d2 $03 $2b

    inc b                                         ; $4434: $04
    sub l                                         ; $4435: $95

jr_001_4436:
    inc b                                         ; $4436: $04
    pop af                                        ; $4437: $f1
    dec bc                                        ; $4438: $0b
    rst $08                                       ; $4439: $cf
    ld b, $fe                                     ; $443a: $06 $fe
    inc b                                         ; $443c: $04
    ld a, [de]                                    ; $443d: $1a
    dec b                                         ; $443e: $05
    inc h                                         ; $443f: $24
    dec b                                         ; $4440: $05
    ld l, $05                                     ; $4441: $2e $05
    sbc $06                                       ; $4443: $de $06
    db $ed                                        ; $4445: $ed
    ld b, $fc                                     ; $4446: $06 $fc
    ld b, $0b                                     ; $4448: $06 $0b
    rlca                                          ; $444a: $07
    ld a, [de]                                    ; $444b: $1a
    rlca                                          ; $444c: $07
    add hl, hl                                    ; $444d: $29
    rlca                                          ; $444e: $07
    jr c, @+$09                                   ; $444f: $38 $07

    ld b, a                                       ; $4451: $47
    rlca                                          ; $4452: $07
    ld d, [hl]                                    ; $4453: $56
    rlca                                          ; $4454: $07
    dec de                                        ; $4455: $1b
    ld [$086b], sp                                ; $4456: $08 $6b $08
    add hl, hl                                    ; $4459: $29
    inc bc                                        ; $445a: $03
    ccf                                           ; $445b: $3f
    inc bc                                        ; $445c: $03
    add b                                         ; $445d: $80
    ld [$09c7], sp                                ; $445e: $08 $c7 $09

    db $dc, $09

    ld d, b                                       ; $4463: $50
    ld a, [bc]                                    ; $4464: $0a
    ld e, b                                       ; $4465: $58
    ld a, [bc]                                    ; $4466: $0a
    inc de                                        ; $4467: $13
    inc bc                                        ; $4468: $03
    dec e                                         ; $4469: $1d
    inc c                                         ; $446a: $0c
    add [hl]                                      ; $446b: $86
    inc c                                         ; $446c: $0c
    ld l, d                                       ; $446d: $6a
    ld a, [bc]                                    ; $446e: $0a
    dec b                                         ; $446f: $05
    ld b, $c6                                     ; $4470: $06 $c6
    inc c                                         ; $4472: $0c
    ld [hl-], a                                   ; $4473: $32
    inc c                                         ; $4474: $0c
    ld b, a                                       ; $4475: $47
    inc c                                         ; $4476: $0c
    ld e, h                                       ; $4477: $5c
    inc c                                         ; $4478: $0c
    ld [hl], c                                    ; $4479: $71
    inc c                                         ; $447a: $0c
    db $fc                                        ; $447b: $fc
    add hl, bc                                    ; $447c: $09
    ld b, $0a                                     ; $447d: $06 $0a
    ld a, [hl+]                                   ; $447f: $2a
    ld a, [bc]                                    ; $4480: $0a

    db $a3, $09

    sbc e                                         ; $4483: $9b
    add hl, bc                                    ; $4484: $09
    cp b                                          ; $4485: $b8
    inc c                                         ; $4486: $0c
    ld d, $04                                     ; $4487: $16 $04
    jp hl                                         ; $4489: $e9


    inc b                                         ; $448a: $04
    adc d                                         ; $448b: $8a
    inc c                                         ; $448c: $0c
    and b                                         ; $448d: $a0
    inc c                                         ; $448e: $0c
    ld b, $0c                                     ; $448f: $06 $0c
    add hl, bc                                    ; $4491: $09
    inc c                                         ; $4492: $0c
    dec hl                                        ; $4493: $2b
    dec c                                         ; $4494: $0d
    and $09                                       ; $4495: $e6 $09

    db $1e, $0e, $3c, $11, $64, $12, $ac, $0d

    inc e                                         ; $449f: $1c
    db $0e                                        ; $44a0: $0e

    db $42, $0e

    push de                                       ; $44a3: $d5
    inc c                                         ; $44a4: $0c
    ld hl, sp+$0c                                 ; $44a5: $f8 $0c
    cp $0c                                        ; $44a7: $fe $0c
    ld c, $0d                                     ; $44a9: $0e $0d
    ld hl, $270d                                  ; $44ab: $21 $0d $27
    dec c                                         ; $44ae: $0d
    ld c, e                                       ; $44af: $4b
    dec c                                         ; $44b0: $0d
    ld d, h                                       ; $44b1: $54
    dec c                                         ; $44b2: $0d
    ld l, [hl]                                    ; $44b3: $6e
    dec c                                         ; $44b4: $0d
    sbc h                                         ; $44b5: $9c
    dec c                                         ; $44b6: $0d
    inc [hl]                                      ; $44b7: $34
    dec d                                         ; $44b8: $15
    xor h                                         ; $44b9: $ac
    dec c                                         ; $44ba: $0d

    db $54, $0d

    nop                                           ; $44bd: $00
    rst $38                                       ; $44be: $ff

    db $ff

    rst $38                                       ; $44c0: $ff
    rst $38                                       ; $44c1: $ff
    rst $38                                       ; $44c2: $ff
    rst $38                                       ; $44c3: $ff

    db $ff

    rst $38                                       ; $44c5: $ff
    rst $38                                       ; $44c6: $ff
    rst $38                                       ; $44c7: $ff

    db $ff, $ff

    rst $38                                       ; $44ca: $ff
    rst $38                                       ; $44cb: $ff
    rst $38                                       ; $44cc: $ff
    rst $38                                       ; $44cd: $ff
    ld [de], a                                    ; $44ce: $12
    inc de                                        ; $44cf: $13
    rst $38                                       ; $44d0: $ff
    rst $38                                       ; $44d1: $ff
    rst $38                                       ; $44d2: $ff
    rst $38                                       ; $44d3: $ff
    rst $38                                       ; $44d4: $ff
    inc d                                         ; $44d5: $14
    rst $38                                       ; $44d6: $ff
    rst $38                                       ; $44d7: $ff
    rst $38                                       ; $44d8: $ff
    rst $38                                       ; $44d9: $ff
    rst $38                                       ; $44da: $ff
    rst $38                                       ; $44db: $ff
    rst $38                                       ; $44dc: $ff
    rst $38                                       ; $44dd: $ff
    rst $38                                       ; $44de: $ff
    rst $38                                       ; $44df: $ff
    rst $38                                       ; $44e0: $ff
    rst $38                                       ; $44e1: $ff
    rst $38                                       ; $44e2: $ff
    rst $38                                       ; $44e3: $ff
    rst $38                                       ; $44e4: $ff
    rst $38                                       ; $44e5: $ff
    rst $38                                       ; $44e6: $ff
    rst $38                                       ; $44e7: $ff
    rst $38                                       ; $44e8: $ff
    rst $38                                       ; $44e9: $ff
    rst $38                                       ; $44ea: $ff
    rst $38                                       ; $44eb: $ff
    rst $38                                       ; $44ec: $ff

    db $1c

    rst $38                                       ; $44ee: $ff
    rst $38                                       ; $44ef: $ff
    rst $38                                       ; $44f0: $ff
    rst $38                                       ; $44f1: $ff
    rst $38                                       ; $44f2: $ff
    rst $38                                       ; $44f3: $ff
    rst $38                                       ; $44f4: $ff
    rst $38                                       ; $44f5: $ff
    rst $38                                       ; $44f6: $ff
    rst $38                                       ; $44f7: $ff
    rst $38                                       ; $44f8: $ff
    rst $38                                       ; $44f9: $ff
    rst $38                                       ; $44fa: $ff
    rst $38                                       ; $44fb: $ff
    rst $38                                       ; $44fc: $ff
    rst $38                                       ; $44fd: $ff
    rst $38                                       ; $44fe: $ff
    rst $38                                       ; $44ff: $ff
    rst $38                                       ; $4500: $ff
    rst $38                                       ; $4501: $ff
    rst $38                                       ; $4502: $ff
    rst $38                                       ; $4503: $ff
    rst $38                                       ; $4504: $ff
    rst $38                                       ; $4505: $ff
    rst $38                                       ; $4506: $ff
    rst $38                                       ; $4507: $ff
    rst $38                                       ; $4508: $ff
    rst $38                                       ; $4509: $ff
    rst $38                                       ; $450a: $ff
    ld hl, $2220                                  ; $450b: $21 $20 $22
    inc hl                                        ; $450e: $23
    rst $38                                       ; $450f: $ff
    rst $38                                       ; $4510: $ff
    inc h                                         ; $4511: $24
    rst $38                                       ; $4512: $ff
    rst $38                                       ; $4513: $ff
    rst $38                                       ; $4514: $ff
    rst $38                                       ; $4515: $ff
    rst $38                                       ; $4516: $ff
    rst $38                                       ; $4517: $ff
    rst $38                                       ; $4518: $ff
    rst $38                                       ; $4519: $ff
    rst $38                                       ; $451a: $ff
    rst $38                                       ; $451b: $ff
    rst $38                                       ; $451c: $ff
    rst $38                                       ; $451d: $ff
    ld [hl], $ff                                  ; $451e: $36 $ff
    rst $38                                       ; $4520: $ff
    rst $38                                       ; $4521: $ff
    rst $38                                       ; $4522: $ff
    rst $38                                       ; $4523: $ff
    rst $38                                       ; $4524: $ff
    rst $38                                       ; $4525: $ff
    rst $38                                       ; $4526: $ff
    rst $38                                       ; $4527: $ff
    rst $38                                       ; $4528: $ff
    rst $38                                       ; $4529: $ff
    rst $38                                       ; $452a: $ff
    rst $38                                       ; $452b: $ff
    ld sp, $3432                                  ; $452c: $31 $32 $34
    dec [hl]                                      ; $452f: $35
    rst $38                                       ; $4530: $ff
    rst $38                                       ; $4531: $ff
    rst $38                                       ; $4532: $ff
    rst $38                                       ; $4533: $ff
    rst $38                                       ; $4534: $ff
    rst $38                                       ; $4535: $ff
    rst $38                                       ; $4536: $ff
    rst $38                                       ; $4537: $ff
    rst $38                                       ; $4538: $ff

    db $0f, $10

    rst $38                                       ; $453b: $ff
    rst $38                                       ; $453c: $ff

    db $00

    db $0e                                        ; $453e: $0e

    db $11

    rst $38                                       ; $4540: $ff
    rst $38                                       ; $4541: $ff

    db $15

    rst $38                                       ; $4543: $ff
    rst $38                                       ; $4544: $ff
    ld d, $17                                     ; $4545: $16 $17
    jr @+$1b                                      ; $4547: $18 $19

    ld a, [de]                                    ; $4549: $1a
    dec de                                        ; $454a: $1b
    ld e, $1f                                     ; $454b: $1e $1f
    dec e                                         ; $454d: $1d

    db $01

    ld [bc], a                                    ; $454f: $02
    inc bc                                        ; $4550: $03
    inc b                                         ; $4551: $04
    dec b                                         ; $4552: $05
    ld b, $07                                     ; $4553: $06 $07
    ld [$0a09], sp                                ; $4555: $08 $09 $0a
    dec bc                                        ; $4558: $0b
    inc c                                         ; $4559: $0c
    dec c                                         ; $455a: $0d

    db $25

    rst $38                                       ; $455c: $ff
    rst $38                                       ; $455d: $ff
    rst $38                                       ; $455e: $ff
    rst $38                                       ; $455f: $ff
    rst $38                                       ; $4560: $ff
    db $28                                        ; $4561: $28

    db $2f

    rst $38                                       ; $4563: $ff
    rst $38                                       ; $4564: $ff
    add hl, hl                                    ; $4565: $29
    rst $38                                       ; $4566: $ff
    rst $38                                       ; $4567: $ff
    rst $38                                       ; $4568: $ff
    ld a, [hl+]                                   ; $4569: $2a
    dec hl                                        ; $456a: $2b
    inc l                                         ; $456b: $2c
    db $2e                                        ; $456c: $2e

    db $30, $10, $32

    inc sp                                        ; $4570: $33
    inc sp                                        ; $4571: $33
    rst $38                                       ; $4572: $ff
    dec l                                         ; $4573: $2d
    rst $38                                       ; $4574: $ff
    rst $38                                       ; $4575: $ff

    push af                                       ; $4576: $f5
    ld hl, $4326                                  ; $4577: $21 $26 $43
    rst $08                                       ; $457a: $cf
    cp $ff                                        ; $457b: $fe $ff
    pop hl                                        ; $457d: $e1
    ret nz                                        ; $457e: $c0

    ld a, h                                       ; $457f: $7c
    ld hl, $44bd                                  ; $4580: $21 $bd $44
    rst $08                                       ; $4583: $cf
    cp $ff                                        ; $4584: $fe $ff
    ret z                                         ; $4586: $c8

    push af                                       ; $4587: $f5
    ld hl, $cc1a                                  ; $4588: $21 $1a $cc
    rst $08                                       ; $458b: $cf
    cp $ff                                        ; $458c: $fe $ff
    pop de                                        ; $458e: $d1
    ret nz                                        ; $458f: $c0

    ldh a, [$b8]                                  ; $4590: $f0 $b8

jr_001_4592:
    ld [hl], a                                    ; $4592: $77
    ld a, c                                       ; $4593: $79
    ldh [rVBK], a                                 ; $4594: $e0 $4f
    ld a, d                                       ; $4596: $7a
    ld hl, $63bc                                  ; $4597: $21 $bc $63
    jp Jump_000_292a                              ; $459a: $c3 $2a $29


    ld hl, $4326                                  ; $459d: $21 $26 $43
    rst $08                                       ; $45a0: $cf
    cp $ff                                        ; $45a1: $fe $ff
    jr nz, jr_001_45c7                            ; $45a3: $20 $22

    ld hl, $0026                                  ; $45a5: $21 $26 $00
    add hl, bc                                    ; $45a8: $09
    ld e, l                                       ; $45a9: $5d
    ld d, h                                       ; $45aa: $54
    ld [hl+], a                                   ; $45ab: $22
    ld [hl], a                                    ; $45ac: $77
    ld a, [bc]                                    ; $45ad: $0a
    ld hl, $44bd                                  ; $45ae: $21 $bd $44
    rst $08                                       ; $45b1: $cf
    cp $ff                                        ; $45b2: $fe $ff
    ret z                                         ; $45b4: $c8

    ld [de], a                                    ; $45b5: $12
    ld e, a                                       ; $45b6: $5f
    ld hl, $cc1a                                  ; $45b7: $21 $1a $cc
    rst $08                                       ; $45ba: $cf
    ld hl, $002f                                  ; $45bb: $21 $2f $00
    add hl, bc                                    ; $45be: $09
    ld [hl], a                                    ; $45bf: $77
    ld hl, $002e                                  ; $45c0: $21 $2e $00
    add hl, bc                                    ; $45c3: $09
    set 2, [hl]                                   ; $45c4: $cb $d6
    ret                                           ; $45c6: $c9


jr_001_45c7:
    ld hl, $43df                                  ; $45c7: $21 $df $43
    call Call_000_3194                            ; $45ca: $cd $94 $31
    ld hl, $0026                                  ; $45cd: $21 $26 $00
    add hl, bc                                    ; $45d0: $09
    ld [hl], e                                    ; $45d1: $73
    inc hl                                        ; $45d2: $23
    ld [hl], d                                    ; $45d3: $72
    ld hl, $002f                                  ; $45d4: $21 $2f $00
    add hl, bc                                    ; $45d7: $09
    ld [hl], $ff                                  ; $45d8: $36 $ff
    ret                                           ; $45da: $c9


    ld hl, $ff92                                  ; $45db: $21 $92 $ff
    ld a, [hl+]                                   ; $45de: $2a
    ld h, [hl]                                    ; $45df: $66
    ld l, a                                       ; $45e0: $6f
    ld de, $fef0                                  ; $45e1: $11 $f0 $fe
    add hl, de                                    ; $45e4: $19
    ld e, l                                       ; $45e5: $5d
    ld d, h                                       ; $45e6: $54
    ld hl, $ffad                                  ; $45e7: $21 $ad $ff
    ld a, [hl]                                    ; $45ea: $7e
    sub e                                         ; $45eb: $93
    ld [hl+], a                                   ; $45ec: $22
    ld a, [hl]                                    ; $45ed: $7e
    sbc d                                         ; $45ee: $9a
    ld [hl], a                                    ; $45ef: $77
    ld hl, $ff90                                  ; $45f0: $21 $90 $ff
    ld a, [hl+]                                   ; $45f3: $2a
    ld h, [hl]                                    ; $45f4: $66
    ld l, a                                       ; $45f5: $6f
    ld de, $fef8                                  ; $45f6: $11 $f8 $fe
    add hl, de                                    ; $45f9: $19
    ld e, l                                       ; $45fa: $5d
    ld d, h                                       ; $45fb: $54
    ld hl, $ffab                                  ; $45fc: $21 $ab $ff
    ld a, [hl]                                    ; $45ff: $7e
    sub e                                         ; $4600: $93
    ld [hl+], a                                   ; $4601: $22
    ld a, [hl]                                    ; $4602: $7e
    sbc d                                         ; $4603: $9a
    ld [hl], a                                    ; $4604: $77
    ret                                           ; $4605: $c9


    ld hl, $c0b7                                  ; $4606: $21 $b7 $c0
    ld a, [hl+]                                   ; $4609: $2a
    ld h, [hl]                                    ; $460a: $66
    ld l, a                                       ; $460b: $6f
    ld a, $a0                                     ; $460c: $3e $a0
    sub l                                         ; $460e: $95
    ret z                                         ; $460f: $c8

    rra                                           ; $4610: $1f
    rra                                           ; $4611: $1f
    ld e, a                                       ; $4612: $5f
    xor a                                         ; $4613: $af

jr_001_4614:
    ld [hl+], a                                   ; $4614: $22
    ld [hl+], a                                   ; $4615: $22
    ld [hl+], a                                   ; $4616: $22
    ld [hl+], a                                   ; $4617: $22
    dec e                                         ; $4618: $1d
    jr nz, jr_001_4614                            ; $4619: $20 $f9

    ret                                           ; $461b: $c9


    ldh a, [$90]                                  ; $461c: $f0 $90
    ldh [$c8], a                                  ; $461e: $e0 $c8
    ldh a, [$92]                                  ; $4620: $f0 $92
    ldh [$c9], a                                  ; $4622: $e0 $c9
    ret                                           ; $4624: $c9

LCDOff:
    ;; save interrupts
    ld hl, rIE
    ld a, [hl]
    ld [$cdbc], a
    res 0, [hl]                 ; disable V-blank interrupts

.waitForLine125:
    ldh a, [rLY]
    cp 125
    jr c, .waitForLine125
    res 2, [hl]                 ; disable timer interrupts

.waitForVBlank:
    ldh a, [rLY]
    cp 145
    jr c, .waitForVBlank

    ;; disable the LCD and PPU
    ldh a, [rLCDC]
    and $7f
    ldh [rLCDC], a

    ;; restore interrupts
    ld a, [$cdbc]
    ld [hl], a
    ret

Call_001_4647:
    ldh a, [rKEY1]                                ; $4647: $f0 $4d
    bit 7, a                                      ; $4649: $cb $7f
    ret nz                                        ; $464b: $c0

    ld a, $01                                     ; $464c: $3e $01
    ldh [rKEY1], a                                ; $464e: $e0 $4d
    ldh a, [rIE]                                  ; $4650: $f0 $ff
    push af                                       ; $4652: $f5
    xor a                                         ; $4653: $af
    ldh [rIE], a                                  ; $4654: $e0 $ff
    ld a, $30                                     ; $4656: $3e $30
    ldh [rP1], a                                  ; $4658: $e0 $00
    stop                                          ; $465a: $10 $00

jr_001_465c:
    ldh a, [rKEY1]                                ; $465c: $f0 $4d
    bit 7, a                                      ; $465e: $cb $7f
    jr z, jr_001_465c                             ; $4660: $28 $fa

    xor a                                         ; $4662: $af
    ldh [rP1], a                                  ; $4663: $e0 $00
    ldh [rIF], a                                  ; $4665: $e0 $0f
    pop af                                        ; $4667: $f1
    ldh [rIE], a                                  ; $4668: $e0 $ff
    ret                                           ; $466a: $c9


    ldh a, [rKEY1]                                ; $466b: $f0 $4d
    bit 7, a                                      ; $466d: $cb $7f
    ret z                                         ; $466f: $c8

    ld a, $01                                     ; $4670: $3e $01
    ldh [rKEY1], a                                ; $4672: $e0 $4d
    ldh a, [rIE]                                  ; $4674: $f0 $ff
    push af                                       ; $4676: $f5
    xor a                                         ; $4677: $af
    ldh [rIE], a                                  ; $4678: $e0 $ff
    ld a, $30                                     ; $467a: $3e $30
    ldh [rP1], a                                  ; $467c: $e0 $00
    stop                                          ; $467e: $10 $00

jr_001_4680:
    ldh a, [rKEY1]                                ; $4680: $f0 $4d
    bit 7, a                                      ; $4682: $cb $7f
    jr nz, jr_001_4680                            ; $4684: $20 $fa

    xor a                                         ; $4686: $af
    ldh [rP1], a                                  ; $4687: $e0 $00
    ldh [rIF], a                                  ; $4689: $e0 $0f
    pop af                                        ; $468b: $f1
    ldh [rIE], a                                  ; $468c: $e0 $ff
    ret                                           ; $468e: $c9


    nop                                           ; $468f: $00
    nop                                           ; $4690: $00
    ld bc, $804c                                  ; $4691: $01 $4c $80
    nop                                           ; $4694: $00
    nop                                           ; $4695: $00
    nop                                           ; $4696: $00
    xor d                                         ; $4697: $aa
    inc h                                         ; $4698: $24
    ld bc, $0002                                  ; $4699: $01 $02 $00
    ld bc, $0503                                  ; $469c: $01 $03 $05
    rlca                                          ; $469f: $07
    inc b                                         ; $46a0: $04
    ld b, $08                                     ; $46a1: $06 $08
    dec b                                         ; $46a3: $05
    rlca                                          ; $46a4: $07
    add hl, bc                                    ; $46a5: $09
    inc bc                                        ; $46a6: $03
    dec b                                         ; $46a7: $05
    rlca                                          ; $46a8: $07
    inc b                                         ; $46a9: $04
    ld b, $08                                     ; $46aa: $06 $08
    dec b                                         ; $46ac: $05
    rlca                                          ; $46ad: $07
    add hl, bc                                    ; $46ae: $09
    inc bc                                        ; $46af: $03
    dec b                                         ; $46b0: $05
    rlca                                          ; $46b1: $07
    inc b                                         ; $46b2: $04
    ld b, $08                                     ; $46b3: $06 $08
    dec b                                         ; $46b5: $05
    rlca                                          ; $46b6: $07
    add hl, bc                                    ; $46b7: $09
    ld hl, $4691                                  ; $46b8: $21 $91 $46
    jp Jump_000_2837                              ; $46bb: $c3 $37 $28


    ld a, $04                                     ; $46be: $3e $04
    ldh [$c1], a                                  ; $46c0: $e0 $c1
    ld a, $05                                     ; $46c2: $3e $05
    ldh [$bd], a                                  ; $46c4: $e0 $bd
    ld a, $53                                     ; $46c6: $3e $53
    ldh [$be], a                                  ; $46c8: $e0 $be
    call Call_000_337a                            ; $46ca: $cd $7a $33
    ld hl, $cb29                                  ; $46cd: $21 $29 $cb
    ld bc, $0090                                  ; $46d0: $01 $90 $00
    call Call_000_112e                            ; $46d3: $cd $2e $11
    ld a, $0f                                     ; $46d6: $3e $0f
    ldh [$c1], a                                  ; $46d8: $e0 $c1
    ld a, $0f                                     ; $46da: $3e $0f
    ldh [$bd], a                                  ; $46dc: $e0 $bd
    ld a, $25                                     ; $46de: $3e $25
    ldh [$be], a                                  ; $46e0: $e0 $be
    call Call_000_3386                            ; $46e2: $cd $86 $33
    ld hl, $ffb8                                  ; $46e5: $21 $b8 $ff
    ld [hl], $00                                  ; $46e8: $36 $00
    inc hl                                        ; $46ea: $23
    ld [hl], $00                                  ; $46eb: $36 $00
    ld a, $ad                                     ; $46ed: $3e $ad
    ldh [$c1], a                                  ; $46ef: $e0 $c1
    ld a, $d6                                     ; $46f1: $3e $d6
    ldh [$bd], a                                  ; $46f3: $e0 $bd
    ld a, $11                                     ; $46f5: $3e $11
    ldh [$be], a                                  ; $46f7: $e0 $be
    call Call_000_3386                            ; $46f9: $cd $86 $33
    ld a, $ac                                     ; $46fc: $3e $ac
    ldh [$c1], a                                  ; $46fe: $e0 $c1
    ld a, $d6                                     ; $4700: $3e $d6
    ldh [$bd], a                                  ; $4702: $e0 $bd
    ld a, $11                                     ; $4704: $3e $11
    ldh [$be], a                                  ; $4706: $e0 $be
    call Call_000_3386                            ; $4708: $cd $86 $33
    ld hl, $5af9                                  ; $470b: $21 $f9 $5a
    call Call_001_5b8f                            ; $470e: $cd $8f $5b
    call Call_001_49c8                            ; $4711: $cd $c8 $49
    ld a, $ab                                     ; $4714: $3e $ab
    call Call_000_03a0                            ; $4716: $cd $a0 $03
    ld a, $aa                                     ; $4719: $3e $aa
    call Call_000_03a0                            ; $471b: $cd $a0 $03
    xor a                                         ; $471e: $af
    ldh [$9b], a                                  ; $471f: $e0 $9b
    ld a, $ad                                     ; $4721: $3e $ad
    call Call_000_03a0                            ; $4723: $cd $a0 $03
    ld hl, $795f                                  ; $4726: $21 $5f $79
    ldh [$c1], a                                  ; $4729: $e0 $c1
    ld a, $6d                                     ; $472b: $3e $6d
    ldh [$bd], a                                  ; $472d: $e0 $bd
    ld a, $7c                                     ; $472f: $3e $7c
    ldh [$be], a                                  ; $4731: $e0 $be
    call Call_000_3365                            ; $4733: $cd $65 $33
    ld a, $02                                     ; $4736: $3e $02
    call Call_000_395e                            ; $4738: $cd $5e $39
    ld hl, $cb29                                  ; $473b: $21 $29 $cb
    ld bc, $005a                                  ; $473e: $01 $5a $00
    ld a, $ff                                     ; $4741: $3e $ff
    call Call_000_112f                            ; $4743: $cd $2f $11
    ld a, [$cb94]                                 ; $4746: $fa $94 $cb
    ld b, a                                       ; $4749: $47
    add a                                         ; $474a: $87
    add a                                         ; $474b: $87
    add a                                         ; $474c: $87
    add b                                         ; $474d: $80
    ld hl, $469d                                  ; $474e: $21 $9d $46
    rst $08                                       ; $4751: $cf
    ld de, $cb8b                                  ; $4752: $11 $8b $cb
    ld bc, $0009                                  ; $4755: $01 $09 $00
    call Call_000_1140                            ; $4758: $cd $40 $11
    ld hl, $cb29                                  ; $475b: $21 $29 $cb
    ld de, $cb8d                                  ; $475e: $11 $8d $cb
    call Call_001_477c                            ; $4761: $cd $7c $47
    ld hl, $cb47                                  ; $4764: $21 $47 $cb
    ld de, $cb90                                  ; $4767: $11 $90 $cb
    call Call_001_477c                            ; $476a: $cd $7c $47
    ld hl, $cb65                                  ; $476d: $21 $65 $cb
    ld de, $cb93                                  ; $4770: $11 $93 $cb
    call Call_001_477c                            ; $4773: $cd $7c $47
    ld a, $ff                                     ; $4776: $3e $ff
    ld [$cb86], a                                 ; $4778: $ea $86 $cb
    ret                                           ; $477b: $c9


Call_001_477c:
    ld a, [de]                                    ; $477c: $1a
    push de                                       ; $477d: $d5
    push hl                                       ; $477e: $e5
    ld b, a                                       ; $477f: $47
    call Call_001_47a7                            ; $4780: $cd $a7 $47
    pop hl                                        ; $4783: $e1
    push hl                                       ; $4784: $e5
    ld b, h                                       ; $4785: $44
    ld c, l                                       ; $4786: $4d
    ld hl, $000a                                  ; $4787: $21 $0a $00
    add hl, bc                                    ; $478a: $09
    ld e, $14                                     ; $478b: $1e $14

jr_001_478d:
    ld a, [bc]                                    ; $478d: $0a
    ld [hl+], a                                   ; $478e: $22
    inc bc                                        ; $478f: $03
    dec e                                         ; $4790: $1d
    jr nz, jr_001_478d                            ; $4791: $20 $fa

    pop hl                                        ; $4793: $e1
    pop de                                        ; $4794: $d1
    dec de                                        ; $4795: $1b
    dec de                                        ; $4796: $1b
    ld a, [de]                                    ; $4797: $1a
    push hl                                       ; $4798: $e5
    rst $08                                       ; $4799: $cf
    ld [hl], $ff                                  ; $479a: $36 $ff
    pop hl                                        ; $479c: $e1
    ld bc, $000a                                  ; $479d: $01 $0a $00
    add hl, bc                                    ; $47a0: $09
    inc de                                        ; $47a1: $13
    ld a, [de]                                    ; $47a2: $1a
    rst $08                                       ; $47a3: $cf
    ld [hl], $ff                                  ; $47a4: $36 $ff
    ret                                           ; $47a6: $c9


Call_001_47a7:
jr_001_47a7:
    ld a, $04                                     ; $47a7: $3e $04
    call Call_000_2722                            ; $47a9: $cd $22 $27
    ld [hl+], a                                   ; $47ac: $22
    dec b                                         ; $47ad: $05
    jr nz, jr_001_47a7                            ; $47ae: $20 $f7

    ret                                           ; $47b0: $c9


    ldh a, [$cc]                                  ; $47b1: $f0 $cc
    cp $3e                                        ; $47b3: $fe $3e
    jr nz, jr_001_47c2                            ; $47b5: $20 $0b

    ldh a, [$a5]                                  ; $47b7: $f0 $a5
    and $02                                       ; $47b9: $e6 $02
    jr z, jr_001_47c2                             ; $47bb: $28 $05

    ld a, $3e                                     ; $47bd: $3e $3e
    jp Jump_000_2448                              ; $47bf: $c3 $48 $24


jr_001_47c2:
    ld a, [$cb89]                                 ; $47c2: $fa $89 $cb
    or a                                          ; $47c5: $b7
    ret z                                         ; $47c6: $c8

    ldh a, [$a5]                                  ; $47c7: $f0 $a5
    bit 0, a                                      ; $47c9: $cb $47
    ret z                                         ; $47cb: $c8

    ldh a, [$cc]                                  ; $47cc: $f0 $cc
    cp $3e                                        ; $47ce: $fe $3e
    jr nz, jr_001_47d7                            ; $47d0: $20 $05

    ld a, $3e                                     ; $47d2: $3e $3e
    jp Jump_000_2448                              ; $47d4: $c3 $48 $24


jr_001_47d7:
    ldh a, [rSVBK]                                ; $47d7: $f0 $70
    push af                                       ; $47d9: $f5
    ld a, $06                                     ; $47da: $3e $06
    ldh [rSVBK], a                                ; $47dc: $e0 $70
    ld a, [$cb88]                                 ; $47de: $fa $88 $cb
    cp $03                                        ; $47e1: $fe $03
    ld a, $00                                     ; $47e3: $3e $00
    jr nz, jr_001_47eb                            ; $47e5: $20 $04

    ld a, [$cb8a]                                 ; $47e7: $fa $8a $cb
    inc a                                         ; $47ea: $3c

jr_001_47eb:
    ld [$d6d3], a                                 ; $47eb: $ea $d3 $d6
    pop af                                        ; $47ee: $f1
    ldh [rSVBK], a                                ; $47ef: $e0 $70
    ld a, $02                                     ; $47f1: $3e $02
    ld [$c0bb], a                                 ; $47f3: $ea $bb $c0
    ld a, $0b                                     ; $47f6: $3e $0b
    jp Jump_000_2448                              ; $47f8: $c3 $48 $24


    ld hl, $4818                                  ; $47fb: $21 $18 $48
    ld a, [$cb8a]                                 ; $47fe: $fa $8a $cb
    call Call_000_3171                            ; $4801: $cd $71 $31
    ld a, [$cb87]                                 ; $4804: $fa $87 $cb
    call Call_000_319d                            ; $4807: $cd $9d $31
    add a                                         ; $480a: $87
    ld a, l                                       ; $480b: $7d
    ld [$cb84], a                                 ; $480c: $ea $84 $cb
    ld a, h                                       ; $480f: $7c
    ld [$cb85], a                                 ; $4810: $ea $85 $cb
    xor a                                         ; $4813: $af
    ld [$cb83], a                                 ; $4814: $ea $83 $cb
    ret                                           ; $4817: $c9


    add hl, hl                                    ; $4818: $29
    swap e                                        ; $4819: $cb $33
    srl l                                         ; $481b: $cb $3d
    bit 0, a                                      ; $481d: $cb $47
    bit 2, c                                      ; $481f: $cb $51
    bit 3, e                                      ; $4821: $cb $5b
    bit 4, l                                      ; $4823: $cb $65
    bit 5, a                                      ; $4825: $cb $6f
    bit 7, c                                      ; $4827: $cb $79
    rr [hl]                                       ; $4829: $cb $1e
    nop                                           ; $482b: $00
    ld a, $ad                                     ; $482c: $3e $ad
    jp Jump_001_4839                              ; $482e: $c3 $39 $48


    ld a, $aa                                     ; $4831: $3e $aa
    jr jr_001_4837                                ; $4833: $18 $02

    ld a, $ab                                     ; $4835: $3e $ab

jr_001_4837:
    ld e, $ff                                     ; $4837: $1e $ff

Jump_001_4839:
    call Call_000_0a6f                            ; $4839: $cd $6f $0a
    ld de, $001c                                  ; $483c: $11 $1c $00
    add hl, de                                    ; $483f: $19
    ld [hl], $01                                  ; $4840: $36 $01
    ret                                           ; $4842: $c9


    ld a, $30                                     ; $4843: $3e $30
    jr jr_001_4849                                ; $4845: $18 $02

    ld a, $6c                                     ; $4847: $3e $6c

jr_001_4849:
    push af                                       ; $4849: $f5
    ld e, $00                                     ; $484a: $1e $00
    ld a, $ad                                     ; $484c: $3e $ad
    call Call_000_0a6f                            ; $484e: $cd $6f $0a
    ld de, $0006                                  ; $4851: $11 $06 $00
    add hl, de                                    ; $4854: $19
    pop af                                        ; $4855: $f1
    ld [hl], a                                    ; $4856: $77
    ret                                           ; $4857: $c9


    ld hl, $0025                                  ; $4858: $21 $25 $00
    add hl, bc                                    ; $485b: $09
    ld [hl], $00                                  ; $485c: $36 $00
    ld hl, $cb84                                  ; $485e: $21 $84 $cb
    ld a, [hl+]                                   ; $4861: $2a
    ld h, [hl]                                    ; $4862: $66
    ld l, a                                       ; $4863: $6f
    ld a, [$cb83]                                 ; $4864: $fa $83 $cb
    rst $08                                       ; $4867: $cf

Jump_001_4868:
    call Call_001_4a01                            ; $4868: $cd $01 $4a
    ld hl, $4873                                  ; $486b: $21 $73 $48
    rst $08                                       ; $486e: $cf
    call Call_000_08ec                            ; $486f: $cd $ec $08
    ret                                           ; $4872: $c9


    ld [$0c0a], sp                                ; $4873: $08 $0a $0c
    ld c, $21                                     ; $4876: $0e $21
    add e                                         ; $4878: $83
    swap h                                        ; $4879: $cb $34
    ld e, [hl]                                    ; $487b: $5e
    ld hl, $cb84                                  ; $487c: $21 $84 $cb
    ld a, [hl+]                                   ; $487f: $2a
    ld h, [hl]                                    ; $4880: $66
    ld l, a                                       ; $4881: $6f
    ld a, e                                       ; $4882: $7b
    rst $08                                       ; $4883: $cf
    cp $ff                                        ; $4884: $fe $ff
    jp Jump_000_0039                              ; $4886: $c3 $39 $00


    ld e, $00                                     ; $4889: $1e $00
    jr jr_001_488f                                ; $488b: $18 $02

    ld e, $01                                     ; $488d: $1e $01

jr_001_488f:
    ld a, $ac                                     ; $488f: $3e $ac
    call Call_000_0a6f                            ; $4891: $cd $6f $0a
    push hl                                       ; $4894: $e5
    ld de, $0003                                  ; $4895: $11 $03 $00
    add hl, de                                    ; $4898: $19
    ld a, [hl]                                    ; $4899: $7e
    ld [hl], $01                                  ; $489a: $36 $01
    pop hl                                        ; $489c: $e1
    or a                                          ; $489d: $b7
    ret nz                                        ; $489e: $c0

    ld de, $001c                                  ; $489f: $11 $1c $00
    add hl, de                                    ; $48a2: $19
    ld [hl], $01                                  ; $48a3: $36 $01
    ret                                           ; $48a5: $c9


    ld a, [$cb86]                                 ; $48a6: $fa $86 $cb
    ld e, a                                       ; $48a9: $5f
    ld hl, $cb84                                  ; $48aa: $21 $84 $cb
    ld a, [hl+]                                   ; $48ad: $2a
    ld h, [hl]                                    ; $48ae: $66
    ld l, a                                       ; $48af: $6f
    ld a, [$cb83]                                 ; $48b0: $fa $83 $cb
    rst $08                                       ; $48b3: $cf
    cp e                                          ; $48b4: $bb
    jp Jump_000_0039                              ; $48b5: $c3 $39 $00


    ldh a, [$a5]                                  ; $48b8: $f0 $a5
    and $f0                                       ; $48ba: $e6 $f0
    jp z, Jump_000_0039                           ; $48bc: $ca $39 $00

    ld e, $00                                     ; $48bf: $1e $00
    bit 5, a                                      ; $48c1: $cb $6f
    jr nz, jr_001_48d0                            ; $48c3: $20 $0b

    inc e                                         ; $48c5: $1c
    bit 6, a                                      ; $48c6: $cb $77
    jr nz, jr_001_48d0                            ; $48c8: $20 $06

    inc e                                         ; $48ca: $1c
    bit 4, a                                      ; $48cb: $cb $67
    jr nz, jr_001_48d0                            ; $48cd: $20 $01

    inc e                                         ; $48cf: $1c

jr_001_48d0:
    ld a, e                                       ; $48d0: $7b
    ld [$cb86], a                                 ; $48d1: $ea $86 $cb
    ld a, $01                                     ; $48d4: $3e $01
    or a                                          ; $48d6: $b7
    jp Jump_000_0039                              ; $48d7: $c3 $39 $00


    ld hl, $cb83                                  ; $48da: $21 $83 $cb
    inc [hl]                                      ; $48dd: $34
    ld e, [hl]                                    ; $48de: $5e
    ld hl, $cb84                                  ; $48df: $21 $84 $cb
    ld a, [hl+]                                   ; $48e2: $2a
    ld h, [hl]                                    ; $48e3: $66
    ld l, a                                       ; $48e4: $6f
    ld a, e                                       ; $48e5: $7b
    rst $08                                       ; $48e6: $cf
    cp $ff                                        ; $48e7: $fe $ff
    jp Jump_000_0039                              ; $48e9: $c3 $39 $00


    ld hl, $cb87                                  ; $48ec: $21 $87 $cb
    inc [hl]                                      ; $48ef: $34
    ld a, [hl]                                    ; $48f0: $7e
    cp $03                                        ; $48f1: $fe $03
    jp Jump_000_0039                              ; $48f3: $c3 $39 $00


    ld hl, $cb88                                  ; $48f6: $21 $88 $cb
    inc [hl]                                      ; $48f9: $34
    ld a, [hl]                                    ; $48fa: $7e
    push af                                       ; $48fb: $f5
    ldh [$9b], a                                  ; $48fc: $e0 $9b
    ld a, $ad                                     ; $48fe: $3e $ad
    call Call_000_03a0                            ; $4900: $cd $a0 $03
    pop af                                        ; $4903: $f1
    cp $03                                        ; $4904: $fe $03
    jp Jump_000_0039                              ; $4906: $c3 $39 $00


    ld a, $02                                     ; $4909: $3e $02
    ld [$cb89], a                                 ; $490b: $ea $89 $cb
    ld a, $27                                     ; $490e: $3e $27
    jp Jump_000_395e                              ; $4910: $c3 $5e $39


    ld a, $01                                     ; $4913: $3e $01
    ld [$cb89], a                                 ; $4915: $ea $89 $cb
    ld a, $28                                     ; $4918: $3e $28
    jp Jump_000_395e                              ; $491a: $c3 $5e $39


    ld hl, $0025                                  ; $491d: $21 $25 $00
    add hl, bc                                    ; $4920: $09
    ld [hl], $00                                  ; $4921: $36 $00
    ld a, [$cb86]                                 ; $4923: $fa $86 $cb
    cp $ff                                        ; $4926: $fe $ff
    ret z                                         ; $4928: $c8

    jp Jump_001_4868                              ; $4929: $c3 $68 $48


    ld hl, $0044                                  ; $492c: $21 $44 $00
    jr jr_001_4939                                ; $492f: $18 $08

    ld hl, $0030                                  ; $4931: $21 $30 $00
    jr jr_001_4939                                ; $4934: $18 $03

    ld hl, $001c                                  ; $4936: $21 $1c $00

jr_001_4939:
    push hl                                       ; $4939: $e5
    ld hl, $0032                                  ; $493a: $21 $32 $00
    add hl, bc                                    ; $493d: $09
    ld a, [hl]                                    ; $493e: $7e
    inc a                                         ; $493f: $3c
    ld [hl], a                                    ; $4940: $77
    ld hl, $0036                                  ; $4941: $21 $36 $00
    add hl, bc                                    ; $4944: $09
    ld a, [hl]                                    ; $4945: $7e
    inc a                                         ; $4946: $3c
    ld [hl], a                                    ; $4947: $77
    ld hl, $0006                                  ; $4948: $21 $06 $00
    add hl, bc                                    ; $494b: $09
    ld e, [hl]                                    ; $494c: $5e
    inc hl                                        ; $494d: $23
    ld d, [hl]                                    ; $494e: $56
    ld hl, $0045                                  ; $494f: $21 $45 $00
    add hl, bc                                    ; $4952: $09
    ld [hl], $3c                                  ; $4953: $36 $3c
    pop hl                                        ; $4955: $e1
    ldh [$c1], a                                  ; $4956: $e0 $c1
    ld a, $bb                                     ; $4958: $3e $bb
    ldh [$bd], a                                  ; $495a: $e0 $bd
    ld a, $6f                                     ; $495c: $3e $6f
    ldh [$be], a                                  ; $495e: $e0 $be
    call Call_000_3365                            ; $4960: $cd $65 $33
    ld hl, $0045                                  ; $4963: $21 $45 $00
    add hl, bc                                    ; $4966: $09
    ld a, [hl]                                    ; $4967: $7e
    ld [$cdbb], a                                 ; $4968: $ea $bb $cd
    ret                                           ; $496b: $c9


    ld a, [$cb87]                                 ; $496c: $fa $87 $cb
    ld hl, $0002                                  ; $496f: $21 $02 $00
    add hl, bc                                    ; $4972: $09
    cp [hl]                                       ; $4973: $be
    jp Jump_000_0039                              ; $4974: $c3 $39 $00


    ld a, [$cb88]                                 ; $4977: $fa $88 $cb

jr_001_497a:
    ld [$cb88], a                                 ; $497a: $ea $88 $cb
    or a                                          ; $497d: $b7
    jr z, jr_001_498d                             ; $497e: $28 $0d

    push af                                       ; $4980: $f5
    ld e, a                                       ; $4981: $5f
    ld a, $ad                                     ; $4982: $3e $ad
    call Call_000_0a6f                            ; $4984: $cd $6f $0a
    ld [hl], $00                                  ; $4987: $36 $00
    pop af                                        ; $4989: $f1
    dec a                                         ; $498a: $3d
    jr jr_001_497a                                ; $498b: $18 $ed

jr_001_498d:
    ld hl, $0002                                  ; $498d: $21 $02 $00
    add hl, bc                                    ; $4990: $09
    xor a                                         ; $4991: $af
    ld [hl], a                                    ; $4992: $77
    ld [$cb87], a                                 ; $4993: $ea $87 $cb
    ld e, $00                                     ; $4996: $1e $00
    ld a, $ac                                     ; $4998: $3e $ac
    call Call_000_0a6f                            ; $499a: $cd $6f $0a
    ld [hl], $00                                  ; $499d: $36 $00
    ld e, $01                                     ; $499f: $1e $01
    ld a, $ac                                     ; $49a1: $3e $ac
    call Call_000_0a6f                            ; $49a3: $cd $6f $0a
    ld [hl], $00                                  ; $49a6: $36 $00
    ld hl, $cb8a                                  ; $49a8: $21 $8a $cb
    inc [hl]                                      ; $49ab: $34
    ret                                           ; $49ac: $c9


    jp Jump_001_49c8                              ; $49ad: $c3 $c8 $49


    ld a, [$cb8a]                                 ; $49b0: $fa $8a $cb
    cp $02                                        ; $49b3: $fe $02
    jp Jump_000_0039                              ; $49b5: $c3 $39 $00


    ld a, [$cb8a]                                 ; $49b8: $fa $8a $cb
    add $02                                       ; $49bb: $c6 $02
    ld e, a                                       ; $49bd: $5f
    ld hl, $002c                                  ; $49be: $21 $2c $00
    add hl, bc                                    ; $49c1: $09
    ld a, [hl]                                    ; $49c2: $7e
    and $f8                                       ; $49c3: $e6 $f8
    or e                                          ; $49c5: $b3
    ld [hl], a                                    ; $49c6: $77
    ret                                           ; $49c7: $c9


Call_001_49c8:
Jump_001_49c8:
    xor a                                         ; $49c8: $af
    ldh [$9b], a                                  ; $49c9: $e0 $9b
    ld a, $ac                                     ; $49cb: $3e $ac
    call Call_000_03a0                            ; $49cd: $cd $a0 $03
    ld a, $01                                     ; $49d0: $3e $01
    ldh [$9b], a                                  ; $49d2: $e0 $9b
    ld a, $ac                                     ; $49d4: $3e $ac
    jp Jump_000_03a0                              ; $49d6: $c3 $a0 $03


    ld hl, $49ef                                  ; $49d9: $21 $ef $49
    jr jr_001_49e6                                ; $49dc: $18 $08

    ld hl, $49f5                                  ; $49de: $21 $f5 $49
    jr jr_001_49e6                                ; $49e1: $18 $03

    ld hl, $49fb                                  ; $49e3: $21 $fb $49

jr_001_49e6:
    ld a, [$cb8a]                                 ; $49e6: $fa $8a $cb
    call Call_000_3194                            ; $49e9: $cd $94 $31
    jp Jump_000_0a50                              ; $49ec: $c3 $50 $0a


    add h                                         ; $49ef: $84
    ld e, l                                       ; $49f0: $5d
    xor [hl]                                      ; $49f1: $ae
    ld e, l                                       ; $49f2: $5d
    ret c                                         ; $49f3: $d8

    ld e, l                                       ; $49f4: $5d
    sub d                                         ; $49f5: $92
    ld e, l                                       ; $49f6: $5d
    cp h                                          ; $49f7: $bc
    ld e, l                                       ; $49f8: $5d
    and $5d                                       ; $49f9: $e6 $5d
    and b                                         ; $49fb: $a0
    ld e, l                                       ; $49fc: $5d
    jp z, $f45d                                   ; $49fd: $ca $5d $f4

    ld e, l                                       ; $4a00: $5d

Call_001_4a01:
    push af                                       ; $4a01: $f5
    ld hl, $4a0b                                  ; $4a02: $21 $0b $4a
    rst $08                                       ; $4a05: $cf
    call Call_000_393e                            ; $4a06: $cd $3e $39
    pop af                                        ; $4a09: $f1
    ret                                           ; $4a0a: $c9


    ld h, c                                       ; $4a0b: $61
    jr c, @+$64                                   ; $4a0c: $38 $62

    ld h, b                                       ; $4a0e: $60
    ld bc, $801f                                  ; $4a0f: $01 $1f $80
    nop                                           ; $4a12: $00
    nop                                           ; $4a13: $00
    nop                                           ; $4a14: $00
    xor d                                         ; $4a15: $aa
    inc h                                         ; $4a16: $24
    ld bc, $0102                                  ; $4a17: $01 $02 $01
    ld [bc], a                                    ; $4a1a: $02
    inc bc                                        ; $4a1b: $03
    ld bc, $4a22                                  ; $4a1c: $01 $22 $4a
    and b                                         ; $4a1f: $a0
    nop                                           ; $4a20: $00
    ld b, c                                       ; $4a21: $41
    ld h, c                                       ; $4a22: $61
    ret c                                         ; $4a23: $d8

    add c                                         ; $4a24: $81
    ret c                                         ; $4a25: $d8

    and c                                         ; $4a26: $a1
    ret c                                         ; $4a27: $d8

    pop bc                                        ; $4a28: $c1
    ret c                                         ; $4a29: $d8

    pop hl                                        ; $4a2a: $e1
    ret c                                         ; $4a2b: $d8

    ld bc, $21d9                                  ; $4a2c: $01 $d9 $21
    reti                                          ; $4a2f: $d9


    ld b, c                                       ; $4a30: $41
    reti                                          ; $4a31: $d9


    ld h, c                                       ; $4a32: $61
    reti                                          ; $4a33: $d9


    add c                                         ; $4a34: $81
    reti                                          ; $4a35: $d9


    and c                                         ; $4a36: $a1
    reti                                          ; $4a37: $d9


    pop bc                                        ; $4a38: $c1
    reti                                          ; $4a39: $d9


    pop hl                                        ; $4a3a: $e1
    reti                                          ; $4a3b: $d9


    ld bc, $02da                                  ; $4a3c: $01 $da $02
    nop                                           ; $4a3f: $00
    ld bc, $0402                                  ; $4a40: $01 $02 $04
    ld [$0607], sp                                ; $4a43: $08 $07 $06
    add hl, bc                                    ; $4a46: $09

    db $01

    nop                                           ; $4a48: $00
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    nop                                           ; $4a4c: $00
    nop                                           ; $4a4d: $00
    inc b                                         ; $4a4e: $04
    ld bc, $0201                                  ; $4a4f: $01 $01 $02
    ld [bc], a                                    ; $4a52: $02
    dec b                                         ; $4a53: $05
    inc b                                         ; $4a54: $04
    inc bc                                        ; $4a55: $03
    inc bc                                        ; $4a56: $03
    ld bc, $0101                                  ; $4a57: $01 $01 $01
    ld [bc], a                                    ; $4a5a: $02
    ld [bc], a                                    ; $4a5b: $02
    ld bc, $0100                                  ; $4a5c: $01 $00 $01
    ld bc, $0101                                  ; $4a5f: $01 $01 $01
    inc b                                         ; $4a62: $04
    nop                                           ; $4a63: $00
    nop                                           ; $4a64: $00
    ld b, $01                                     ; $4a65: $06 $01
    inc bc                                        ; $4a67: $03
    rlca                                          ; $4a68: $07
    ld [bc], a                                    ; $4a69: $02
    ld bc, $0603                                  ; $4a6a: $01 $03 $06
    ld b, $01                                     ; $4a6d: $06 $01
    ld bc, $0500                                  ; $4a6f: $01 $00 $05
    ld b, $02                                     ; $4a72: $06 $02
    rlca                                          ; $4a74: $07
    dec b                                         ; $4a75: $05
    nop                                           ; $4a76: $00
    ld [bc], a                                    ; $4a77: $02
    ld bc, $0801                                  ; $4a78: $01 $01 $08
    ld [bc], a                                    ; $4a7b: $02
    ld b, $00                                     ; $4a7c: $06 $00
    ld bc, $0105                                  ; $4a7e: $01 $05 $01
    dec bc                                        ; $4a81: $0b
    nop                                           ; $4a82: $00
    nop                                           ; $4a83: $00
    ld bc, $0303                                  ; $4a84: $01 $03 $03
    inc b                                         ; $4a87: $04
    ld b, $05                                     ; $4a88: $06 $05
    ld bc, $0100                                  ; $4a8a: $01 $00 $01
    ld bc, $0001                                  ; $4a8d: $01 $01 $00
    rlca                                          ; $4a90: $07
    ld [bc], a                                    ; $4a91: $02
    ld [bc], a                                    ; $4a92: $02
    rlca                                          ; $4a93: $07
    nop                                           ; $4a94: $00
    ld bc, $0604                                  ; $4a95: $01 $04 $06
    ld [$0209], sp                                ; $4a98: $08 $09 $02
    inc bc                                        ; $4a9b: $03
    ld [$0007], sp                                ; $4a9c: $08 $07 $00
    add hl, bc                                    ; $4a9f: $09
    nop                                           ; $4aa0: $00
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    nop                                           ; $4aa3: $00
    nop                                           ; $4aa4: $00
    nop                                           ; $4aa5: $00
    nop                                           ; $4aa6: $00
    nop                                           ; $4aa7: $00
    nop                                           ; $4aa8: $00
    nop                                           ; $4aa9: $00

    db $08

    ld b, h                                       ; $4aab: $44
    ld a, [bc]                                    ; $4aac: $0a
    dec bc                                        ; $4aad: $0b
    inc c                                         ; $4aae: $0c
    ld b, e                                       ; $4aaf: $43
    ld [$4132], sp                                ; $4ab0: $08 $32 $41
    ld d, b                                       ; $4ab3: $50
    dec [hl]                                      ; $4ab4: $35
    nop                                           ; $4ab5: $00
    dec l                                         ; $4ab6: $2d
    ld l, $30                                     ; $4ab7: $2e $30
    ld d, c                                       ; $4ab9: $51
    jr jr_001_4ad5                                ; $4aba: $18 $19

    ld a, [de]                                    ; $4abc: $1a
    ld a, [de]                                    ; $4abd: $1a
    inc e                                         ; $4abe: $1c
    daa                                           ; $4abf: $27
    ld e, $1f                                     ; $4ac0: $1e $1f
    jr nz, jr_001_4ae5                            ; $4ac2: $20 $21

    ld [hl+], a                                   ; $4ac4: $22
    dec l                                         ; $4ac5: $2d
    ld [$2e08], sp                                ; $4ac6: $08 $08 $2e
    ld a, [hl+]                                   ; $4ac9: $2a
    ld c, l                                       ; $4aca: $4d
    ld b, l                                       ; $4acb: $45
    ld d, h                                       ; $4acc: $54
    ld b, l                                       ; $4acd: $45
    cpl                                           ; $4ace: $2f
    dec l                                         ; $4acf: $2d
    dec l                                         ; $4ad0: $2d
    cpl                                           ; $4ad1: $2f
    jr nc, jr_001_4b1b                            ; $4ad2: $30 $47

    nop                                           ; $4ad4: $00

jr_001_4ad5:
    cpl                                           ; $4ad5: $2f
    cpl                                           ; $4ad6: $2f
    dec l                                         ; $4ad7: $2d
    ld l, $2c                                     ; $4ad8: $2e $2c
    jr nc, jr_001_4b11                            ; $4ada: $30 $35

    ld c, l                                       ; $4adc: $4d
    ld l, $4d                                     ; $4add: $2e $4d
    ld a, [hl+]                                   ; $4adf: $2a
    ld [$2e2c], sp                                ; $4ae0: $08 $2c $2e
    add hl, bc                                    ; $4ae3: $09
    nop                                           ; $4ae4: $00

jr_001_4ae5:
    ld c, $0d                                     ; $4ae5: $0e $0d
    ld b, a                                       ; $4ae7: $47
    ld [hl-], a                                   ; $4ae8: $32
    ld b, l                                       ; $4ae9: $45
    ld b, l                                       ; $4aea: $45
    ld b, l                                       ; $4aeb: $45
    ld b, l                                       ; $4aec: $45
    ld c, d                                       ; $4aed: $4a
    ld b, l                                       ; $4aee: $45
    dec sp                                        ; $4aef: $3b
    ld b, d                                       ; $4af0: $42
    ld [hl-], a                                   ; $4af1: $32
    jr jr_001_4b1e                                ; $4af2: $18 $2a

    ld d, c                                       ; $4af4: $51
    ld d, c                                       ; $4af5: $51
    jr nc, jr_001_4b42                            ; $4af6: $30 $4a

    nop                                           ; $4af8: $00
    ld sp, $3030                                  ; $4af9: $31 $30 $30
    jr nc, jr_001_4b07                            ; $4afc: $30 $09

    ld sp, $2c2f                                  ; $4afe: $31 $2f $2c
    nop                                           ; $4b01: $00
    ld b, l                                       ; $4b02: $45
    ld h, d                                       ; $4b03: $62
    ld bc, $0101                                  ; $4b04: $01 $01 $01

jr_001_4b07:
    ld bc, $0101                                  ; $4b07: $01 $01 $01
    ld bc, $0001                                  ; $4b0a: $01 $01 $00
    nop                                           ; $4b0d: $00
    inc b                                         ; $4b0e: $04
    dec b                                         ; $4b0f: $05
    dec b                                         ; $4b10: $05

jr_001_4b11:
    dec b                                         ; $4b11: $05
    inc bc                                        ; $4b12: $03
    nop                                           ; $4b13: $00
    ld d, e                                       ; $4b14: $53
    nop                                           ; $4b15: $00
    nop                                           ; $4b16: $00
    nop                                           ; $4b17: $00
    ld bc, $5310                                  ; $4b18: $01 $10 $53

jr_001_4b1b:
    nop                                           ; $4b1b: $00
    nop                                           ; $4b1c: $00
    nop                                           ; $4b1d: $00

jr_001_4b1e:
    nop                                           ; $4b1e: $00
    nop                                           ; $4b1f: $00
    nop                                           ; $4b20: $00
    nop                                           ; $4b21: $00
    ld c, c                                       ; $4b22: $49
    nop                                           ; $4b23: $00
    nop                                           ; $4b24: $00
    nop                                           ; $4b25: $00
    nop                                           ; $4b26: $00
    nop                                           ; $4b27: $00
    nop                                           ; $4b28: $00
    nop                                           ; $4b29: $00
    nop                                           ; $4b2a: $00
    nop                                           ; $4b2b: $00
    ld d, e                                       ; $4b2c: $53
    nop                                           ; $4b2d: $00
    nop                                           ; $4b2e: $00
    nop                                           ; $4b2f: $00
    rlca                                          ; $4b30: $07
    rlca                                          ; $4b31: $07
    rlca                                          ; $4b32: $07
    rlca                                          ; $4b33: $07
    rlca                                          ; $4b34: $07
    rlca                                          ; $4b35: $07
    rlca                                          ; $4b36: $07
    ld bc, $0053                                  ; $4b37: $01 $53 $00
    nop                                           ; $4b3a: $00
    nop                                           ; $4b3b: $00
    nop                                           ; $4b3c: $00
    nop                                           ; $4b3d: $00
    nop                                           ; $4b3e: $00
    ld [$0000], sp                                ; $4b3f: $08 $00 $00

jr_001_4b42:
    nop                                           ; $4b42: $00
    nop                                           ; $4b43: $00
    ld d, e                                       ; $4b44: $53
    ld h, $00                                     ; $4b45: $26 $00
    ld [bc], a                                    ; $4b47: $02
    inc bc                                        ; $4b48: $03
    ld b, $37                                     ; $4b49: $06 $37
    ld d, d                                       ; $4b4b: $52
    ld b, $06                                     ; $4b4c: $06 $06
    ld b, $06                                     ; $4b4e: $06 $06
    ld b, $06                                     ; $4b50: $06 $06
    ld b, $51                                     ; $4b52: $06 $51
    ld b, $06                                     ; $4b54: $06 $06
    ld d, e                                       ; $4b56: $53
    ld b, $06                                     ; $4b57: $06 $06
    ld b, $25                                     ; $4b59: $06 $25
    ld b, $06                                     ; $4b5b: $06 $06
    ld b, $06                                     ; $4b5d: $06 $06
    ld b, $06                                     ; $4b5f: $06 $06
    nop                                           ; $4b61: $00
    nop                                           ; $4b62: $00
    nop                                           ; $4b63: $00
    nop                                           ; $4b64: $00
    nop                                           ; $4b65: $00
    nop                                           ; $4b66: $00
    ld bc, $0101                                  ; $4b67: $01 $01 $01
    ld bc, $0101                                  ; $4b6a: $01 $01 $01
    ld bc, $0101                                  ; $4b6d: $01 $01 $01
    ld bc, $0202                                  ; $4b70: $01 $02 $02
    ld [bc], a                                    ; $4b73: $02
    ld [bc], a                                    ; $4b74: $02
    ld bc, $0000                                  ; $4b75: $01 $00 $00
    nop                                           ; $4b78: $00
    nop                                           ; $4b79: $00
    nop                                           ; $4b7a: $00
    nop                                           ; $4b7b: $00
    inc bc                                        ; $4b7c: $03
    nop                                           ; $4b7d: $00
    nop                                           ; $4b7e: $00
    nop                                           ; $4b7f: $00
    nop                                           ; $4b80: $00
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    nop                                           ; $4b83: $00
    nop                                           ; $4b84: $00
    nop                                           ; $4b85: $00
    nop                                           ; $4b86: $00
    nop                                           ; $4b87: $00
    nop                                           ; $4b88: $00
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    nop                                           ; $4b8b: $00
    nop                                           ; $4b8c: $00
    nop                                           ; $4b8d: $00
    nop                                           ; $4b8e: $00
    nop                                           ; $4b8f: $00
    nop                                           ; $4b90: $00
    nop                                           ; $4b91: $00
    nop                                           ; $4b92: $00
    nop                                           ; $4b93: $00
    nop                                           ; $4b94: $00
    nop                                           ; $4b95: $00
    nop                                           ; $4b96: $00
    nop                                           ; $4b97: $00
    nop                                           ; $4b98: $00
    nop                                           ; $4b99: $00
    ld bc, $0000                                  ; $4b9a: $01 $00 $00
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    nop                                           ; $4b9f: $00
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    nop                                           ; $4ba3: $00
    nop                                           ; $4ba4: $00
    nop                                           ; $4ba5: $00
    nop                                           ; $4ba6: $00
    nop                                           ; $4ba7: $00
    nop                                           ; $4ba8: $00
    ld bc, $0201                                  ; $4ba9: $01 $01 $02
    ld [bc], a                                    ; $4bac: $02
    ld [bc], a                                    ; $4bad: $02
    ld [bc], a                                    ; $4bae: $02
    nop                                           ; $4baf: $00
    nop                                           ; $4bb0: $00
    ld [bc], a                                    ; $4bb1: $02
    nop                                           ; $4bb2: $00
    nop                                           ; $4bb3: $00
    nop                                           ; $4bb4: $00
    nop                                           ; $4bb5: $00
    ld bc, $0000                                  ; $4bb6: $01 $00 $00
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    nop                                           ; $4bbb: $00
    nop                                           ; $4bbc: $00
    nop                                           ; $4bbd: $00
    nop                                           ; $4bbe: $00
    nop                                           ; $4bbf: $00
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    nop                                           ; $4bc2: $00
    nop                                           ; $4bc3: $00
    nop                                           ; $4bc4: $00
    nop                                           ; $4bc5: $00
    nop                                           ; $4bc6: $00
    nop                                           ; $4bc7: $00
    nop                                           ; $4bc8: $00
    nop                                           ; $4bc9: $00
    ld hl, $4a0f                                  ; $4bca: $21 $0f $4a
    jp Jump_000_2837                              ; $4bcd: $c3 $37 $28


    ld hl, $795f                                  ; $4bd0: $21 $5f $79
    ldh [$c1], a                                  ; $4bd3: $e0 $c1
    ld a, $6d                                     ; $4bd5: $3e $6d
    ldh [$bd], a                                  ; $4bd7: $e0 $bd
    ld a, $7c                                     ; $4bd9: $3e $7c
    ldh [$be], a                                  ; $4bdb: $e0 $be
    call Call_000_3365                            ; $4bdd: $cd $65 $33
    xor a                                         ; $4be0: $af
    ld [$cbe7], a                                 ; $4be1: $ea $e7 $cb
    ld [$cbeb], a                                 ; $4be4: $ea $eb $cb
    ld a, $55                                     ; $4be7: $3e $55
    ld [$cbe8], a                                 ; $4be9: $ea $e8 $cb
    ld hl, $ffb8                                  ; $4bec: $21 $b8 $ff
    ld [hl], $00                                  ; $4bef: $36 $00
    inc hl                                        ; $4bf1: $23
    ld [hl], $00                                  ; $4bf2: $36 $00
    ld a, $7c                                     ; $4bf4: $3e $7c
    ldh [$c1], a                                  ; $4bf6: $e0 $c1
    ld a, $d6                                     ; $4bf8: $3e $d6
    ldh [$bd], a                                  ; $4bfa: $e0 $bd
    ld a, $11                                     ; $4bfc: $3e $11
    ldh [$be], a                                  ; $4bfe: $e0 $be
    call Call_000_3386                            ; $4c00: $cd $86 $33
    xor a                                         ; $4c03: $af
    ld hl, $6131                                  ; $4c04: $21 $31 $61
    ldh [$c1], a                                  ; $4c07: $e0 $c1
    ld a, $0f                                     ; $4c09: $3e $0f
    ldh [$bd], a                                  ; $4c0b: $e0 $bd
    ld a, $25                                     ; $4c0d: $3e $25
    ldh [$be], a                                  ; $4c0f: $e0 $be
    call Call_000_3386                            ; $4c11: $cd $86 $33
    ld hl, $49f0                                  ; $4c14: $21 $f0 $49
    ldh [$c1], a                                  ; $4c17: $e0 $c1
    ld a, $61                                     ; $4c19: $3e $61
    ldh [$bd], a                                  ; $4c1b: $e0 $bd
    ld a, $4f                                     ; $4c1d: $3e $4f
    ldh [$be], a                                  ; $4c1f: $e0 $be
    call Call_000_337a                            ; $4c21: $cd $7a $33
    ld a, $03                                     ; $4c24: $3e $03
    ldh [$9b], a                                  ; $4c26: $e0 $9b
    ld a, $7c                                     ; $4c28: $3e $7c
    call Call_000_03a0                            ; $4c2a: $cd $a0 $03
    call Call_001_4cc2                            ; $4c2d: $cd $c2 $4c
    ret                                           ; $4c30: $c9


    ldh [$c1], a                                  ; $4c31: $e0 $c1
    ld a, $86                                     ; $4c33: $3e $86
    ldh [$bd], a                                  ; $4c35: $e0 $bd
    ld a, $4f                                     ; $4c37: $3e $4f
    ldh [$be], a                                  ; $4c39: $e0 $be
    call Call_000_337a                            ; $4c3b: $cd $7a $33
    ldh a, [$a5]                                  ; $4c3e: $f0 $a5
    bit 1, a                                      ; $4c40: $cb $4f
    jr nz, jr_001_4c6b                            ; $4c42: $20 $27

    bit 6, a                                      ; $4c44: $cb $77
    jr nz, jr_001_4c9b                            ; $4c46: $20 $53

    bit 7, a                                      ; $4c48: $cb $7f
    jr nz, jr_001_4cae                            ; $4c4a: $20 $62

    bit 4, a                                      ; $4c4c: $cb $67
    jr nz, jr_001_4c75                            ; $4c4e: $20 $25

    bit 5, a                                      ; $4c50: $cb $6f
    jr nz, jr_001_4c8b                            ; $4c52: $20 $37

    bit 0, a                                      ; $4c54: $cb $47
    ret z                                         ; $4c56: $c8

    ld a, $00                                     ; $4c57: $3e $00
    ld [$c0bb], a                                 ; $4c59: $ea $bb $c0
    ldh a, [$d5]                                  ; $4c5c: $f0 $d5
    dec a                                         ; $4c5e: $3d
    ld hl, $cbeb                                  ; $4c5f: $21 $eb $cb
    add [hl]                                      ; $4c62: $86
    call Call_001_4d04                            ; $4c63: $cd $04 $4d
    ld a, $0b                                     ; $4c66: $3e $0b
    jp Jump_000_2448                              ; $4c68: $c3 $48 $24


jr_001_4c6b:
    ld a, $02                                     ; $4c6b: $3e $02
    ld [$c0bb], a                                 ; $4c6d: $ea $bb $c0
    ld a, $0b                                     ; $4c70: $3e $0b
    jp Jump_000_2448                              ; $4c72: $c3 $48 $24


jr_001_4c75:
    ld a, $0f                                     ; $4c75: $3e $0f
    ldh [$d5], a                                  ; $4c77: $e0 $d5
    ld a, [$cbeb]                                 ; $4c79: $fa $eb $cb
    add $0d                                       ; $4c7c: $c6 $0d
    ld hl, $cbe8                                  ; $4c7e: $21 $e8 $cb
    cp [hl]                                       ; $4c81: $be
    jr c, jr_001_4c86                             ; $4c82: $38 $02

    ld a, [hl]                                    ; $4c84: $7e
    dec a                                         ; $4c85: $3d

jr_001_4c86:
    ld [$cbeb], a                                 ; $4c86: $ea $eb $cb
    jr jr_001_4cae                                ; $4c89: $18 $23

jr_001_4c8b:
    ld a, $00                                     ; $4c8b: $3e $00
    ldh [$d5], a                                  ; $4c8d: $e0 $d5
    ld a, [$cbeb]                                 ; $4c8f: $fa $eb $cb
    sub $0d                                       ; $4c92: $d6 $0d
    jr nc, jr_001_4c98                            ; $4c94: $30 $02

    ld a, $01                                     ; $4c96: $3e $01

jr_001_4c98:
    ld [$cbeb], a                                 ; $4c98: $ea $eb $cb

jr_001_4c9b:
    ldh a, [$d5]                                  ; $4c9b: $f0 $d5
    or a                                          ; $4c9d: $b7
    ret nz                                        ; $4c9e: $c0

    ld a, $01                                     ; $4c9f: $3e $01
    ldh [$d5], a                                  ; $4ca1: $e0 $d5
    ld a, [$cbeb]                                 ; $4ca3: $fa $eb $cb
    or a                                          ; $4ca6: $b7
    ret z                                         ; $4ca7: $c8

    dec a                                         ; $4ca8: $3d
    ld [$cbeb], a                                 ; $4ca9: $ea $eb $cb
    jr jr_001_4cc2                                ; $4cac: $18 $14

jr_001_4cae:
    ldh a, [$d5]                                  ; $4cae: $f0 $d5
    cp $0f                                        ; $4cb0: $fe $0f
    ret nz                                        ; $4cb2: $c0

    dec a                                         ; $4cb3: $3d
    ldh [$d5], a                                  ; $4cb4: $e0 $d5
    ld a, [$cbeb]                                 ; $4cb6: $fa $eb $cb
    ld hl, $cbe8                                  ; $4cb9: $21 $e8 $cb
    cp [hl]                                       ; $4cbc: $be
    ret z                                         ; $4cbd: $c8

    inc a                                         ; $4cbe: $3c
    ld [$cbeb], a                                 ; $4cbf: $ea $eb $cb

Call_001_4cc2:
jr_001_4cc2:
    rst $18                                       ; $4cc2: $df
    ld c, $80                                     ; $4cc3: $0e $80
    ld d, $0e                                     ; $4cc5: $16 $0e
    ld e, $14                                     ; $4cc7: $1e $14
    ld hl, $0060                                  ; $4cc9: $21 $60 $00
    call Call_000_13c2                            ; $4ccc: $cd $c2 $13
    rst $20                                       ; $4ccf: $e7
    call Call_000_3308                            ; $4cd0: $cd $08 $33
    rst $18                                       ; $4cd3: $df
    ld hl, $4a1b                                  ; $4cd4: $21 $1b $4a
    call Call_000_301f                            ; $4cd7: $cd $1f $30
    ld a, $90                                     ; $4cda: $3e $90
    ld [$c1eb], a                                 ; $4cdc: $ea $eb $c1
    ld a, $01                                     ; $4cdf: $3e $01
    ld [$c234], a                                 ; $4ce1: $ea $34 $c2
    ld b, $0e                                     ; $4ce4: $06 $0e
    ld a, [$cbeb]                                 ; $4ce6: $fa $eb $cb
    ld e, a                                       ; $4ce9: $5f
    ld d, $00                                     ; $4cea: $16 $00
    ld hl, $0000                                  ; $4cec: $21 $00 $00
    add hl, de                                    ; $4cef: $19
    add hl, de                                    ; $4cf0: $19
    add hl, de                                    ; $4cf1: $19
    ld de, $18cd                                  ; $4cf2: $11 $cd $18
    add hl, de                                    ; $4cf5: $19

jr_001_4cf6:
    call Call_001_6e1a                            ; $4cf6: $cd $1a $6e
    ld de, $0003                                  ; $4cf9: $11 $03 $00
    add hl, de                                    ; $4cfc: $19
    dec b                                         ; $4cfd: $05
    jr nz, jr_001_4cf6                            ; $4cfe: $20 $f6

    jp RST_20                                     ; $4d00: $c3 $20 $00


    ret                                           ; $4d03: $c9


Call_001_4d04:
    push bc                                       ; $4d04: $c5
    ldh [$bc], a                                  ; $4d05: $e0 $bc
    ldh a, [rSVBK]                                ; $4d07: $f0 $70
    push af                                       ; $4d09: $f5
    ld a, $06                                     ; $4d0a: $3e $06
    ldh [rSVBK], a                                ; $4d0c: $e0 $70
    ldh a, [$bc]                                  ; $4d0e: $f0 $bc
    push af                                       ; $4d10: $f5
    ld hl, $4b04                                  ; $4d11: $21 $04 $4b
    rst $08                                       ; $4d14: $cf
    ld [$d5d5], a                                 ; $4d15: $ea $d5 $d5
    pop af                                        ; $4d18: $f1
    push af                                       ; $4d19: $f5
    ld hl, $4b67                                  ; $4d1a: $21 $67 $4b
    rst $08                                       ; $4d1d: $cf
    ld [$d6d4], a                                 ; $4d1e: $ea $d4 $d6
    cp $02                                        ; $4d21: $fe $02
    jr z, jr_001_4d2c                             ; $4d23: $28 $07

    ld hl, $c34b                                  ; $4d25: $21 $4b $c3
    set 3, [hl]                                   ; $4d28: $cb $de
    jr jr_001_4d31                                ; $4d2a: $18 $05

jr_001_4d2c:
    ld hl, $c34b                                  ; $4d2c: $21 $4b $c3
    res 3, [hl]                                   ; $4d2f: $cb $9e

jr_001_4d31:
    pop af                                        ; $4d31: $f1
    ldh [$da], a                                  ; $4d32: $e0 $da
    ld [$d6d2], a                                 ; $4d34: $ea $d2 $d6
    push af                                       ; $4d37: $f5
    ld hl, $4a3e                                  ; $4d38: $21 $3e $4a
    rst $08                                       ; $4d3b: $cf
    ldh [$d9], a                                  ; $4d3c: $e0 $d9
    pop af                                        ; $4d3e: $f1
    ld hl, $4aa1                                  ; $4d3f: $21 $a1 $4a
    rst $08                                       ; $4d42: $cf
    ld [$d6d1], a                                 ; $4d43: $ea $d1 $d6
    ldh [$d8], a                                  ; $4d46: $e0 $d8
    ld a, $01                                     ; $4d48: $3e $01
    ld [$c0c1], a                                 ; $4d4a: $ea $c1 $c0
    xor a                                         ; $4d4d: $af
    ld [$cb17], a                                 ; $4d4e: $ea $17 $cb
    ld hl, $d5d6                                  ; $4d51: $21 $d6 $d5
    ld bc, $0020                                  ; $4d54: $01 $20 $00
    call Call_000_112e                            ; $4d57: $cd $2e $11
    pop af                                        ; $4d5a: $f1
    ldh [rSVBK], a                                ; $4d5b: $e0 $70
    pop bc                                        ; $4d5d: $c1
    ret                                           ; $4d5e: $c9


    ld hl, $795f                                  ; $4d5f: $21 $5f $79
    ldh [$c1], a                                  ; $4d62: $e0 $c1
    ld a, $6d                                     ; $4d64: $3e $6d
    ldh [$bd], a                                  ; $4d66: $e0 $bd
    ld a, $7c                                     ; $4d68: $3e $7c
    ldh [$be], a                                  ; $4d6a: $e0 $be
    call Call_000_3365                            ; $4d6c: $cd $65 $33
    xor a                                         ; $4d6f: $af
    ld [$cbe7], a                                 ; $4d70: $ea $e7 $cb
    ld [$cbeb], a                                 ; $4d73: $ea $eb $cb
    ld a, $84                                     ; $4d76: $3e $84
    ld [$cbe8], a                                 ; $4d78: $ea $e8 $cb
    ld hl, $ffb8                                  ; $4d7b: $21 $b8 $ff
    ld [hl], $00                                  ; $4d7e: $36 $00
    inc hl                                        ; $4d80: $23
    ld [hl], $00                                  ; $4d81: $36 $00
    ld a, $7c                                     ; $4d83: $3e $7c
    ldh [$c1], a                                  ; $4d85: $e0 $c1
    ld a, $d6                                     ; $4d87: $3e $d6
    ldh [$bd], a                                  ; $4d89: $e0 $bd
    ld a, $11                                     ; $4d8b: $3e $11
    ldh [$be], a                                  ; $4d8d: $e0 $be
    call Call_000_3386                            ; $4d8f: $cd $86 $33
    xor a                                         ; $4d92: $af
    ld hl, $6131                                  ; $4d93: $21 $31 $61
    ldh [$c1], a                                  ; $4d96: $e0 $c1
    ld a, $0f                                     ; $4d98: $3e $0f
    ldh [$bd], a                                  ; $4d9a: $e0 $bd
    ld a, $25                                     ; $4d9c: $3e $25
    ldh [$be], a                                  ; $4d9e: $e0 $be
    call Call_000_3386                            ; $4da0: $cd $86 $33
    ld hl, $49f0                                  ; $4da3: $21 $f0 $49
    ldh [$c1], a                                  ; $4da6: $e0 $c1
    ld a, $61                                     ; $4da8: $3e $61
    ldh [$bd], a                                  ; $4daa: $e0 $bd
    ld a, $4f                                     ; $4dac: $3e $4f
    ldh [$be], a                                  ; $4dae: $e0 $be
    call Call_000_337a                            ; $4db0: $cd $7a $33
    ld a, $03                                     ; $4db3: $3e $03
    ldh [$9b], a                                  ; $4db5: $e0 $9b
    ld a, $7c                                     ; $4db7: $3e $7c
    call Call_000_03a0                            ; $4db9: $cd $a0 $03
    call Call_001_4e52                            ; $4dbc: $cd $52 $4e
    ret                                           ; $4dbf: $c9


    ldh [$c1], a                                  ; $4dc0: $e0 $c1
    ld a, $86                                     ; $4dc2: $3e $86
    ldh [$bd], a                                  ; $4dc4: $e0 $bd
    ld a, $4f                                     ; $4dc6: $3e $4f
    ldh [$be], a                                  ; $4dc8: $e0 $be
    call Call_000_337a                            ; $4dca: $cd $7a $33
    ldh a, [$a5]                                  ; $4dcd: $f0 $a5
    bit 1, a                                      ; $4dcf: $cb $4f
    jr nz, jr_001_4e00                            ; $4dd1: $20 $2d

    bit 6, a                                      ; $4dd3: $cb $77
    jr nz, jr_001_4e2b                            ; $4dd5: $20 $54

    bit 7, a                                      ; $4dd7: $cb $7f
    jr nz, jr_001_4e3e                            ; $4dd9: $20 $63

    bit 4, a                                      ; $4ddb: $cb $67
    jr nz, jr_001_4e05                            ; $4ddd: $20 $26

    bit 5, a                                      ; $4ddf: $cb $6f
    jr nz, jr_001_4e1b                            ; $4de1: $20 $38

    bit 3, a                                      ; $4de3: $cb $5f
    jr nz, jr_001_4df8                            ; $4de5: $20 $11

    bit 0, a                                      ; $4de7: $cb $47
    ret z                                         ; $4de9: $c8

    ldh a, [$d5]                                  ; $4dea: $f0 $d5
    dec a                                         ; $4dec: $3d
    ld hl, $cbeb                                  ; $4ded: $21 $eb $cb
    add [hl]                                      ; $4df0: $86
    cp $63                                        ; $4df1: $fe $63
    jr nc, jr_001_4dfb                            ; $4df3: $30 $06

    jp Jump_000_393e                              ; $4df5: $c3 $3e $39


jr_001_4df8:
    jp Jump_000_398b                              ; $4df8: $c3 $8b $39


jr_001_4dfb:
    sub $63                                       ; $4dfb: $d6 $63
    jp Jump_000_395e                              ; $4dfd: $c3 $5e $39


jr_001_4e00:
    ld a, $0f                                     ; $4e00: $3e $0f
    jp Jump_000_2448                              ; $4e02: $c3 $48 $24


jr_001_4e05:
    ld a, $0f                                     ; $4e05: $3e $0f
    ldh [$d5], a                                  ; $4e07: $e0 $d5
    ld a, [$cbeb]                                 ; $4e09: $fa $eb $cb
    add $0d                                       ; $4e0c: $c6 $0d
    ld hl, $cbe8                                  ; $4e0e: $21 $e8 $cb
    cp [hl]                                       ; $4e11: $be
    jr c, jr_001_4e16                             ; $4e12: $38 $02

    ld a, [hl]                                    ; $4e14: $7e
    dec a                                         ; $4e15: $3d

jr_001_4e16:
    ld [$cbeb], a                                 ; $4e16: $ea $eb $cb
    jr jr_001_4e3e                                ; $4e19: $18 $23

jr_001_4e1b:
    ld a, $00                                     ; $4e1b: $3e $00
    ldh [$d5], a                                  ; $4e1d: $e0 $d5
    ld a, [$cbeb]                                 ; $4e1f: $fa $eb $cb
    sub $0d                                       ; $4e22: $d6 $0d
    jr nc, jr_001_4e28                            ; $4e24: $30 $02

    ld a, $01                                     ; $4e26: $3e $01

jr_001_4e28:
    ld [$cbeb], a                                 ; $4e28: $ea $eb $cb

jr_001_4e2b:
    ldh a, [$d5]                                  ; $4e2b: $f0 $d5
    or a                                          ; $4e2d: $b7
    ret nz                                        ; $4e2e: $c0

    ld a, $01                                     ; $4e2f: $3e $01
    ldh [$d5], a                                  ; $4e31: $e0 $d5
    ld a, [$cbeb]                                 ; $4e33: $fa $eb $cb
    or a                                          ; $4e36: $b7
    ret z                                         ; $4e37: $c8

    dec a                                         ; $4e38: $3d
    ld [$cbeb], a                                 ; $4e39: $ea $eb $cb
    jr jr_001_4e52                                ; $4e3c: $18 $14

jr_001_4e3e:
    ldh a, [$d5]                                  ; $4e3e: $f0 $d5
    cp $0f                                        ; $4e40: $fe $0f
    ret nz                                        ; $4e42: $c0

    dec a                                         ; $4e43: $3d
    ldh [$d5], a                                  ; $4e44: $e0 $d5
    ld a, [$cbeb]                                 ; $4e46: $fa $eb $cb
    ld hl, $cbe8                                  ; $4e49: $21 $e8 $cb
    cp [hl]                                       ; $4e4c: $be
    ret z                                         ; $4e4d: $c8

    inc a                                         ; $4e4e: $3c
    ld [$cbeb], a                                 ; $4e4f: $ea $eb $cb

Call_001_4e52:
jr_001_4e52:
    rst $18                                       ; $4e52: $df
    ld c, $80                                     ; $4e53: $0e $80
    ld d, $0e                                     ; $4e55: $16 $0e
    ld e, $14                                     ; $4e57: $1e $14
    ld hl, $0060                                  ; $4e59: $21 $60 $00
    call Call_000_13c2                            ; $4e5c: $cd $c2 $13
    rst $20                                       ; $4e5f: $e7
    call Call_000_3308                            ; $4e60: $cd $08 $33
    rst $18                                       ; $4e63: $df
    ld hl, $4a1b                                  ; $4e64: $21 $1b $4a
    call Call_000_301f                            ; $4e67: $cd $1f $30
    ld a, $90                                     ; $4e6a: $3e $90
    ld [$c1eb], a                                 ; $4e6c: $ea $eb $c1
    ld a, $01                                     ; $4e6f: $3e $01
    ld [$c234], a                                 ; $4e71: $ea $34 $c2
    ld b, $0e                                     ; $4e74: $06 $0e
    ld a, [$cbeb]                                 ; $4e76: $fa $eb $cb

jr_001_4e79:
    ld a, [$cbeb]                                 ; $4e79: $fa $eb $cb
    add $0e                                       ; $4e7c: $c6 $0e
    sub b                                         ; $4e7e: $90
    ld hl, $19f3                                  ; $4e7f: $21 $f3 $19
    call Call_001_6d30                            ; $4e82: $cd $30 $6d
    dec b                                         ; $4e85: $05
    jr nz, jr_001_4e79                            ; $4e86: $20 $f1

    jp RST_20                                     ; $4e88: $c3 $20 $00


    ldh a, [$a5]                                  ; $4e8b: $f0 $a5
    and $01                                       ; $4e8d: $e6 $01
    jr nz, jr_001_4e93                            ; $4e8f: $20 $02

    scf                                           ; $4e91: $37
    ret                                           ; $4e92: $c9


Call_001_4e93:
jr_001_4e93:
    ld hl, $002d                                  ; $4e93: $21 $2d $00
    add hl, bc                                    ; $4e96: $09
    bit 4, [hl]                                   ; $4e97: $cb $66
    jr nz, jr_001_4e9d                            ; $4e99: $20 $02

    scf                                           ; $4e9b: $37
    ret                                           ; $4e9c: $c9


jr_001_4e9d:
    ld hl, $003c                                  ; $4e9d: $21 $3c $00
    add hl, bc                                    ; $4ea0: $09
    ld de, $cac1                                  ; $4ea1: $11 $c1 $ca
    call Call_001_4eaf                            ; $4ea4: $cd $af $4e
    ret c                                         ; $4ea7: $d8

    ld hl, $0040                                  ; $4ea8: $21 $40 $00
    add hl, bc                                    ; $4eab: $09
    ld de, $cac5                                  ; $4eac: $11 $c5 $ca

Call_001_4eaf:
Jump_001_4eaf:
    call Call_001_4ec2                            ; $4eaf: $cd $c2 $4e
    jr c, jr_001_4eb8                             ; $4eb2: $38 $04

    push de                                       ; $4eb4: $d5
    ld d, h                                       ; $4eb5: $54
    ld e, l                                       ; $4eb6: $5d
    pop hl                                        ; $4eb7: $e1

jr_001_4eb8:
    inc de                                        ; $4eb8: $13
    inc de                                        ; $4eb9: $13
    ld a, [de]                                    ; $4eba: $1a
    cp [hl]                                       ; $4ebb: $be
    ret nz                                        ; $4ebc: $c0

    dec hl                                        ; $4ebd: $2b
    dec de                                        ; $4ebe: $1b
    ld a, [de]                                    ; $4ebf: $1a
    cp [hl]                                       ; $4ec0: $be
    ret                                           ; $4ec1: $c9


Call_001_4ec2:
    ld a, [de]                                    ; $4ec2: $1a
    cp [hl]                                       ; $4ec3: $be
    ret nz                                        ; $4ec4: $c0

    dec de                                        ; $4ec5: $1b
    dec hl                                        ; $4ec6: $2b
    ld a, [de]                                    ; $4ec7: $1a
    inc de                                        ; $4ec8: $13
    cp [hl]                                       ; $4ec9: $be
    inc hl                                        ; $4eca: $23
    ret                                           ; $4ecb: $c9


    push bc                                       ; $4ecc: $c5
    ld hl, $c34d                                  ; $4ecd: $21 $4d $c3
    bit 4, [hl]                                   ; $4ed0: $cb $66
    jr z, jr_001_4f07                             ; $4ed2: $28 $33

    ld bc, $c371                                  ; $4ed4: $01 $71 $c3

jr_001_4ed7:
    ld a, [bc]                                    ; $4ed7: $0a
    or a                                          ; $4ed8: $b7
    jr z, jr_001_4efb                             ; $4ed9: $28 $20

    cp $7b                                        ; $4edb: $fe $7b
    jr nc, jr_001_4efb                            ; $4edd: $30 $1c

    ld hl, $004e                                  ; $4edf: $21 $4e $00
    add hl, bc                                    ; $4ee2: $09
    ld a, [hl]                                    ; $4ee3: $7e
    or a                                          ; $4ee4: $b7
    jr nz, jr_001_4efb                            ; $4ee5: $20 $14

    ld a, [bc]                                    ; $4ee7: $0a
    ld d, a                                       ; $4ee8: $57
    ld hl, $4f0c                                  ; $4ee9: $21 $0c $4f

jr_001_4eec:
    ld a, [hl]                                    ; $4eec: $7e
    or a                                          ; $4eed: $b7
    jr z, jr_001_4ef6                             ; $4eee: $28 $06

    cp d                                          ; $4ef0: $ba
    jr z, jr_001_4efb                             ; $4ef1: $28 $08

    inc hl                                        ; $4ef3: $23
    jr jr_001_4eec                                ; $4ef4: $18 $f6

jr_001_4ef6:
    call Call_001_4e93                            ; $4ef6: $cd $93 $4e
    jr nc, jr_001_4f08                            ; $4ef9: $30 $0d

jr_001_4efb:
    ld hl, $0051                                  ; $4efb: $21 $51 $00
    add hl, bc                                    ; $4efe: $09
    ld b, h                                       ; $4eff: $44
    ld c, l                                       ; $4f00: $4d
    ld de, $cab8                                  ; $4f01: $11 $b8 $ca
    rst $10                                       ; $4f04: $d7
    jr nz, jr_001_4ed7                            ; $4f05: $20 $d0

jr_001_4f07:
    scf                                           ; $4f07: $37

jr_001_4f08:
    ld h, b                                       ; $4f08: $60
    ld l, c                                       ; $4f09: $69
    pop bc                                        ; $4f0a: $c1
    ret                                           ; $4f0b: $c9


    db $09, $07, $04, $02, $0b, $0c, $0f, $10, $11, $12, $13, $18, $1f, $20, $21, $17
    db $1c, $3c, $23, $03, $3f, $14, $22, $2e, $05, $70, $6e, $6f, $71, $0a, $00

    ld a, [bc]                                    ; $4f2b: $0a
    cp $7b                                        ; $4f2c: $fe $7b
    jr nc, jr_001_4f57                            ; $4f2e: $30 $27

    ld d, a                                       ; $4f30: $57
    ld hl, $4f0c                                  ; $4f31: $21 $0c $4f

jr_001_4f34:
    ld a, [hl]                                    ; $4f34: $7e
    or a                                          ; $4f35: $b7
    jr z, jr_001_4f3e                             ; $4f36: $28 $06

    cp d                                          ; $4f38: $ba
    jr z, jr_001_4f57                             ; $4f39: $28 $1c

    inc hl                                        ; $4f3b: $23
    jr jr_001_4f34                                ; $4f3c: $18 $f6

jr_001_4f3e:
    ld hl, $cdc1                                  ; $4f3e: $21 $c1 $cd
    ld de, $cac1                                  ; $4f41: $11 $c1 $ca
    call Call_001_4eaf                            ; $4f44: $cd $af $4e
    jr c, jr_001_4f57                             ; $4f47: $38 $0e

    ld hl, $0040                                  ; $4f49: $21 $40 $00
    add hl, bc                                    ; $4f4c: $09
    ld de, $cac5                                  ; $4f4d: $11 $c5 $ca
    call Call_001_4eaf                            ; $4f50: $cd $af $4e
    jr c, jr_001_4f57                             ; $4f53: $38 $02

    xor a                                         ; $4f55: $af
    ret                                           ; $4f56: $c9


jr_001_4f57:
    ld a, $02                                     ; $4f57: $3e $02
    dec a                                         ; $4f59: $3d
    ret                                           ; $4f5a: $c9


    ld hl, $003c                                  ; $4f5b: $21 $3c $00
    add hl, bc                                    ; $4f5e: $09
    ld de, $cac1                                  ; $4f5f: $11 $c1 $ca
    call Call_001_4eaf                            ; $4f62: $cd $af $4e
    ret c                                         ; $4f65: $d8

    ld hl, $0040                                  ; $4f66: $21 $40 $00
    add hl, bc                                    ; $4f69: $09
    ld de, $cac5                                  ; $4f6a: $11 $c5 $ca
    jp Jump_001_4eaf                              ; $4f6d: $c3 $af $4e


    ld hl, $003c                                  ; $4f70: $21 $3c $00
    add hl, bc                                    ; $4f73: $09
    push af                                       ; $4f74: $f5
    push hl                                       ; $4f75: $e5
    ld e, $00                                     ; $4f76: $1e $00
    call Call_000_0a6f                            ; $4f78: $cd $6f $0a
    jr nz, jr_001_4f9a                            ; $4f7b: $20 $1d

    ld de, $003c                                  ; $4f7d: $11 $3c $00
    add hl, de                                    ; $4f80: $19
    pop de                                        ; $4f81: $d1
    call Call_001_4eaf                            ; $4f82: $cd $af $4e
    pop de                                        ; $4f85: $d1
    ret c                                         ; $4f86: $d8

    ld a, d                                       ; $4f87: $7a
    ld hl, $0040                                  ; $4f88: $21 $40 $00
    add hl, bc                                    ; $4f8b: $09
    push hl                                       ; $4f8c: $e5
    ld e, $00                                     ; $4f8d: $1e $00
    call Call_000_0a6f                            ; $4f8f: $cd $6f $0a
    ld de, $0040                                  ; $4f92: $11 $40 $00
    add hl, de                                    ; $4f95: $19
    pop de                                        ; $4f96: $d1
    jp Jump_001_4eaf                              ; $4f97: $c3 $af $4e


jr_001_4f9a:
    pop hl                                        ; $4f9a: $e1
    pop af                                        ; $4f9b: $f1
    scf                                           ; $4f9c: $37
    ret                                           ; $4f9d: $c9


    ld bc, $7f01                                  ; $4f9e: $01 $01 $7f
    ld bc, $0000                                  ; $4fa1: $01 $00 $00
    xor d                                         ; $4fa4: $aa
    inc h                                         ; $4fa5: $24
    ld bc, $0102                                  ; $4fa6: $01 $02 $01
    ld [bc], a                                    ; $4fa9: $02
    cp c                                          ; $4faa: $b9
    ld c, a                                       ; $4fab: $4f
    ret nz                                        ; $4fac: $c0

    ld c, a                                       ; $4fad: $4f
    rst $00                                       ; $4fae: $c7
    ld c, a                                       ; $4faf: $4f
    or d                                          ; $4fb0: $b2
    ld c, a                                       ; $4fb1: $4f
    inc hl                                        ; $4fb2: $23
    ld bc, $500b                                  ; $4fb3: $01 $0b $50
    add b                                         ; $4fb6: $80
    nop                                           ; $4fb7: $00
    ld b, b                                       ; $4fb8: $40
    inc hl                                        ; $4fb9: $23
    ld bc, $4ffb                                  ; $4fba: $01 $fb $4f
    nop                                           ; $4fbd: $00
    ld [bc], a                                    ; $4fbe: $02
    ld b, b                                       ; $4fbf: $40
    inc hl                                        ; $4fc0: $23
    ld bc, $4feb                                  ; $4fc1: $01 $eb $4f
    add b                                         ; $4fc4: $80
    nop                                           ; $4fc5: $00
    ld b, b                                       ; $4fc6: $40
    inc hl                                        ; $4fc7: $23
    ld bc, $4fdb                                  ; $4fc8: $01 $db $4f
    nop                                           ; $4fcb: $00
    ld [bc], a                                    ; $4fcc: $02
    ld b, b                                       ; $4fcd: $40
    inc hl                                        ; $4fce: $23
    ld bc, $500b                                  ; $4fcf: $01 $0b $50
    ld a, a                                       ; $4fd2: $7f
    ld bc, $0a41                                  ; $4fd3: $01 $41 $0a
    ret c                                         ; $4fd6: $d8

    ld a, [hl+]                                   ; $4fd7: $2a
    ret c                                         ; $4fd8: $d8

    ld c, d                                       ; $4fd9: $4a
    ret c                                         ; $4fda: $d8

    ld l, d                                       ; $4fdb: $6a
    ret c                                         ; $4fdc: $d8

    adc d                                         ; $4fdd: $8a
    ret c                                         ; $4fde: $d8

    xor d                                         ; $4fdf: $aa
    ret c                                         ; $4fe0: $d8

    jp z, $ead8                                   ; $4fe1: $ca $d8 $ea

    ret c                                         ; $4fe4: $d8

    ld a, [bc]                                    ; $4fe5: $0a
    reti                                          ; $4fe6: $d9


    ld a, [hl+]                                   ; $4fe7: $2a
    reti                                          ; $4fe8: $d9


    ld c, d                                       ; $4fe9: $4a
    reti                                          ; $4fea: $d9


    ld l, d                                       ; $4feb: $6a
    reti                                          ; $4fec: $d9


    adc d                                         ; $4fed: $8a
    reti                                          ; $4fee: $d9


    xor d                                         ; $4fef: $aa
    reti                                          ; $4ff0: $d9


    jp z, $ead9                                   ; $4ff1: $ca $d9 $ea

    reti                                          ; $4ff4: $d9


    ld a, [bc]                                    ; $4ff5: $0a
    jp c, $da2a                                   ; $4ff6: $da $2a $da

    ld c, d                                       ; $4ff9: $4a
    jp c, $da6a                                   ; $4ffa: $da $6a $da

    adc d                                         ; $4ffd: $8a
    jp c, $daaa                                   ; $4ffe: $da $aa $da

    jp z, $eada                                   ; $5001: $ca $da $ea

    jp c, $db0a                                   ; $5004: $da $0a $db

    ld a, [hl+]                                   ; $5007: $2a
    db $db                                        ; $5008: $db
    ld c, d                                       ; $5009: $4a
    db $db                                        ; $500a: $db
    ld l, d                                       ; $500b: $6a
    db $db                                        ; $500c: $db
    adc d                                         ; $500d: $8a
    db $db                                        ; $500e: $db
    xor d                                         ; $500f: $aa
    db $db                                        ; $5010: $db
    jp z, $eadb                                   ; $5011: $ca $db $ea

    db $db                                        ; $5014: $db
    ld a, [bc]                                    ; $5015: $0a
    ret c                                         ; $5016: $d8

    ld a, [hl+]                                   ; $5017: $2a
    ret c                                         ; $5018: $d8

    ld c, d                                       ; $5019: $4a
    ret c                                         ; $501a: $d8

    ld l, d                                       ; $501b: $6a
    ret c                                         ; $501c: $d8

    adc d                                         ; $501d: $8a
    ret c                                         ; $501e: $d8

    xor d                                         ; $501f: $aa
    ret c                                         ; $5020: $d8

    jp z, $ead8                                   ; $5021: $ca $d8 $ea

    ret c                                         ; $5024: $d8

    ld a, [bc]                                    ; $5025: $0a
    reti                                          ; $5026: $d9


    ld a, [hl+]                                   ; $5027: $2a
    reti                                          ; $5028: $d9


    ld c, d                                       ; $5029: $4a
    reti                                          ; $502a: $d9


    ld l, d                                       ; $502b: $6a
    reti                                          ; $502c: $d9


    adc d                                         ; $502d: $8a
    reti                                          ; $502e: $d9


    xor d                                         ; $502f: $aa
    reti                                          ; $5030: $d9


    jp z, $ead9                                   ; $5031: $ca $d9 $ea

    reti                                          ; $5034: $d9


    ld a, [bc]                                    ; $5035: $0a
    jp c, $da2a                                   ; $5036: $da $2a $da

    ld c, d                                       ; $5039: $4a
    jp c, $da6a                                   ; $503a: $da $6a $da

    adc d                                         ; $503d: $8a
    jp c, $daaa                                   ; $503e: $da $aa $da

    jp z, $eada                                   ; $5041: $ca $da $ea

    jp c, $db0a                                   ; $5044: $da $0a $db

    ld a, [hl+]                                   ; $5047: $2a
    db $db                                        ; $5048: $db
    ld c, d                                       ; $5049: $4a
    db $db                                        ; $504a: $db
    ld l, d                                       ; $504b: $6a
    db $db                                        ; $504c: $db
    adc d                                         ; $504d: $8a
    db $db                                        ; $504e: $db
    ld hl, $4f9e                                  ; $504f: $21 $9e $4f
    jp Jump_000_2837                              ; $5052: $c3 $37 $28


    ld a, $04                                     ; $5055: $3e $04
    call Call_000_395e                            ; $5057: $cd $5e $39
    xor a                                         ; $505a: $af
    ldh [$90], a                                  ; $505b: $e0 $90
    ldh [$92], a                                  ; $505d: $e0 $92
    ld hl, $4fce                                  ; $505f: $21 $ce $4f
    call Call_000_301f                            ; $5062: $cd $1f $30
    ld hl, $2008                                  ; $5065: $21 $08 $20
    call Call_001_6e1a                            ; $5068: $cd $1a $6e
    ld c, $7f                                     ; $506b: $0e $7f
    ld b, $03                                     ; $506d: $06 $03
    ld hl, $0000                                  ; $506f: $21 $00 $00
    ld d, $20                                     ; $5072: $16 $20
    ld e, $14                                     ; $5074: $1e $14
    call Call_000_13c4                            ; $5076: $cd $c4 $13
    ld a, $05                                     ; $5079: $3e $05
    ldh [$a8], a                                  ; $507b: $e0 $a8
    ld a, $03                                     ; $507d: $3e $03
    ld [$c0c5], a                                 ; $507f: $ea $c5 $c0
    ld hl, $795f                                  ; $5082: $21 $5f $79
    ldh [$c1], a                                  ; $5085: $e0 $c1
    ld a, $6d                                     ; $5087: $3e $6d
    ldh [$bd], a                                  ; $5089: $e0 $bd
    ld a, $7c                                     ; $508b: $3e $7c
    ldh [$be], a                                  ; $508d: $e0 $be
    call Call_000_3365                            ; $508f: $cd $65 $33
    xor a                                         ; $5092: $af
    ld [$c1e8], a                                 ; $5093: $ea $e8 $c1
    ld b, $01                                     ; $5096: $06 $01

jr_001_5098:
    call Call_001_50ba                            ; $5098: $cd $ba $50
    dec b                                         ; $509b: $05
    jr nz, jr_001_5098                            ; $509c: $20 $fa

    ret                                           ; $509e: $c9


    ld hl, $ff92                                  ; $509f: $21 $92 $ff
    inc [hl]                                      ; $50a2: $34
    ldh a, [$a5]                                  ; $50a3: $f0 $a5
    bit 3, a                                      ; $50a5: $cb $5f
    jr nz, jr_001_50b5                            ; $50a7: $20 $0c

    bit 0, a                                      ; $50a9: $cb $47
    jr nz, jr_001_50b5                            ; $50ab: $20 $08

    call Call_000_30f3                            ; $50ad: $cd $f3 $30
    ret nz                                        ; $50b0: $c0

    call Call_001_50ba                            ; $50b1: $cd $ba $50
    ret nz                                        ; $50b4: $c0

jr_001_50b5:
    ld a, $03                                     ; $50b5: $3e $03
    jp Jump_000_2448                              ; $50b7: $c3 $48 $24


Call_001_50ba:
    push bc                                       ; $50ba: $c5
    rst $18                                       ; $50bb: $df
    ld a, [$c1e8]                                 ; $50bc: $fa $e8 $c1
    ld h, a                                       ; $50bf: $67
    ld l, $18                                     ; $50c0: $2e $18
    call Call_000_00b9                            ; $50c2: $cd $b9 $00
    ld a, l                                       ; $50c5: $7d
    or a                                          ; $50c6: $b7
    jr nz, jr_001_50d5                            ; $50c7: $20 $0c

    ld a, h                                       ; $50c9: $7c
    and $03                                       ; $50ca: $e6 $03
    ld hl, $4faa                                  ; $50cc: $21 $aa $4f
    call Call_000_319d                            ; $50cf: $cd $9d $31
    call Call_000_301f                            ; $50d2: $cd $1f $30

jr_001_50d5:
    ld a, [$c1e8]                                 ; $50d5: $fa $e8 $c1
    add $18                                       ; $50d8: $c6 $18
    and $1f                                       ; $50da: $e6 $1f
    ld l, a                                       ; $50dc: $6f
    ld h, $00                                     ; $50dd: $26 $00
    call Call_000_314a                            ; $50df: $cd $4a $31
    ld de, $0114                                  ; $50e2: $11 $14 $01
    ld bc, $037f                                  ; $50e5: $01 $7f $03
    call Call_000_13c4                            ; $50e8: $cd $c4 $13
    ld a, [$c1e8]                                 ; $50eb: $fa $e8 $c1
    ld hl, $1e55                                  ; $50ee: $21 $55 $1e
    call Call_001_6d0d                            ; $50f1: $cd $0d $6d
    ld a, [$c1e8]                                 ; $50f4: $fa $e8 $c1
    inc a                                         ; $50f7: $3c
    ld [$c1e8], a                                 ; $50f8: $ea $e8 $c1
    xor a                                         ; $50fb: $af
    ldh [$a6], a                                  ; $50fc: $e0 $a6
    ld a, $05                                     ; $50fe: $3e $05
    ldh [$a8], a                                  ; $5100: $e0 $a8
    ld de, $0008                                  ; $5102: $11 $08 $00
    call Call_000_30e1                            ; $5105: $cd $e1 $30
    ld a, [$c1e8]                                 ; $5108: $fa $e8 $c1
    cp $96                                        ; $510b: $fe $96
    pop bc                                        ; $510d: $c1
    ret                                           ; $510e: $c9


    db $15

    dec d                                         ; $5110: $15
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00

    db $dd, $51

    ld h, h                                       ; $5119: $64
    ld d, d                                       ; $511a: $52
    ld c, c                                       ; $511b: $49
    ld d, d                                       ; $511c: $52
    ld d, d                                       ; $511d: $52
    ld d, d                                       ; $511e: $52

    db $6d, $52

    sub c                                         ; $5121: $91
    ld d, d                                       ; $5122: $52
    adc b                                         ; $5123: $88
    ld d, d                                       ; $5124: $52
    ld a, a                                       ; $5125: $7f
    ld d, d                                       ; $5126: $52

    db $9a, $52, $ac, $52

    ld b, $53                                     ; $512b: $06 $53
    cp d                                          ; $512d: $ba
    ld d, e                                       ; $512e: $53
    call z, $e753                                 ; $512f: $cc $53 $e7
    ld d, e                                       ; $5132: $53
    db $eb                                        ; $5133: $eb
    ld d, d                                       ; $5134: $52
    and d                                         ; $5135: $a2
    ld e, c                                       ; $5136: $59
    add hl, hl                                    ; $5137: $29
    ld e, d                                       ; $5138: $5a
    ld d, b                                       ; $5139: $50
    ld d, a                                       ; $513a: $57
    ld [$7959], a                                 ; $513b: $ea $59 $79
    ld e, b                                       ; $513e: $58
    ld e, e                                       ; $513f: $5b
    ld d, d                                       ; $5140: $52
    xor [hl]                                      ; $5141: $ae
    ld d, [hl]                                    ; $5142: $56
    dec [hl]                                      ; $5143: $35
    ld d, a                                       ; $5144: $57
    nop                                           ; $5145: $00
    ld e, c                                       ; $5146: $59
    inc [hl]                                      ; $5147: $34
    ld d, l                                       ; $5148: $55
    ld b, [hl]                                    ; $5149: $46
    ld d, l                                       ; $514a: $55
    ld e, b                                       ; $514b: $58
    ld d, l                                       ; $514c: $55
    ld [hl], e                                    ; $514d: $73
    ld d, l                                       ; $514e: $55
    add l                                         ; $514f: $85
    ld d, l                                       ; $5150: $55
    and b                                         ; $5151: $a0
    ld d, l                                       ; $5152: $55
    sbc b                                         ; $5153: $98
    ld d, a                                       ; $5154: $57
    and c                                         ; $5155: $a1
    ld d, a                                       ; $5156: $57
    cp h                                          ; $5157: $bc
    ld d, a                                       ; $5158: $57
    adc $57                                       ; $5159: $ce $57
    ldh [$57], a                                  ; $515b: $e0 $57
    ld a, [c]                                     ; $515d: $f2
    ld d, a                                       ; $515e: $57
    and l                                         ; $515f: $a5
    ld d, [hl]                                    ; $5160: $56
    daa                                           ; $5161: $27
    ld d, [hl]                                    ; $5162: $56
    sbc c                                         ; $5163: $99
    ld e, c                                       ; $5164: $59
    add [hl]                                      ; $5165: $86
    ld d, a                                       ; $5166: $57
    ld [hl+], a                                   ; $5167: $22
    ld d, l                                       ; $5168: $55
    jr nc, jr_001_51c1                            ; $5169: $30 $56

    ld e, h                                       ; $516b: $5c
    ld d, h                                       ; $516c: $54
    add hl, de                                    ; $516d: $19
    ld d, l                                       ; $516e: $55
    call nz, $4b55                                ; $516f: $c4 $55 $4b
    ld d, [hl]                                    ; $5172: $56
    db $e4                                        ; $5173: $e4
    ld d, [hl]                                    ; $5174: $56
    ei                                            ; $5175: $fb
    ld d, a                                       ; $5176: $57
    sub h                                         ; $5177: $94
    ld e, b                                       ; $5178: $58
    dec l                                         ; $5179: $2d
    ld e, c                                       ; $517a: $59
    xor e                                         ; $517b: $ab
    ld e, c                                       ; $517c: $59

    db $76, $52

    add d                                         ; $517f: $82
    ld e, b                                       ; $5180: $58
    ld c, h                                       ; $5181: $4c
    ld e, b                                       ; $5182: $58
    or a                                          ; $5183: $b7
    ld d, [hl]                                    ; $5184: $56
    ld h, d                                       ; $5185: $62
    ld d, a                                       ; $5186: $57
    dec d                                         ; $5187: $15
    ld d, [hl]                                    ; $5188: $56
    xor $58                                       ; $5189: $ee $58
    ld [hl], b                                    ; $518b: $70
    ld e, b                                       ; $518c: $58
    inc sp                                        ; $518d: $33
    ld d, e                                       ; $518e: $53
    ld a, l                                       ; $518f: $7d
    ld d, a                                       ; $5190: $57
    ld b, l                                       ; $5191: $45
    ld d, e                                       ; $5192: $53
    dec hl                                        ; $5193: $2b
    ld d, l                                       ; $5194: $55
    ld a, [hl]                                    ; $5195: $7e
    ld e, c                                       ; $5196: $59
    inc c                                         ; $5197: $0c
    ld d, [hl]                                    ; $5198: $56
    ld a, $57                                     ; $5199: $3e $57
    rst $00                                       ; $519b: $c7
    ld d, d                                       ; $519c: $52
    db $f4                                        ; $519d: $f4
    ld d, d                                       ; $519e: $52
    db $fd                                        ; $519f: $fd
    ld d, d                                       ; $51a0: $52
    ld h, b                                       ; $51a1: $60
    ld d, e                                       ; $51a2: $53
    rla                                           ; $51a3: $17
    ld e, d                                       ; $51a4: $5a
    db $fc                                        ; $51a5: $fc
    ld e, c                                       ; $51a6: $59
    ld [bc], a                                    ; $51a7: $02
    ld d, h                                       ; $51a8: $54
    dec bc                                        ; $51a9: $0b
    ld d, h                                       ; $51aa: $54
    dec e                                         ; $51ab: $1d
    ld d, h                                       ; $51ac: $54
    inc d                                         ; $51ad: $14
    ld d, h                                       ; $51ae: $54
    ld d, e                                       ; $51af: $53
    ld d, h                                       ; $51b0: $54
    rrca                                          ; $51b1: $0f
    ld d, e                                       ; $51b2: $53
    ld d, a                                       ; $51b3: $57
    ld d, e                                       ; $51b4: $53
    reti                                          ; $51b5: $d9


    ld d, d                                       ; $51b6: $52
    ret c                                         ; $51b7: $d8

    ld e, c                                       ; $51b8: $59
    xor l                                         ; $51b9: $ad
    ld d, h                                       ; $51ba: $54
    pop de                                        ; $51bb: $d1
    ld d, h                                       ; $51bc: $54
    db $ec                                        ; $51bd: $ec
    ld d, h                                       ; $51be: $54
    cp $54                                        ; $51bf: $fe $54

jr_001_51c1:
    add hl, bc                                    ; $51c1: $09
    ld e, c                                       ; $51c2: $59
    ld b, c                                       ; $51c3: $41
    ld d, h                                       ; $51c4: $54
    rst $30                                       ; $51c5: $f7
    ld e, b                                       ; $51c6: $58
    sub b                                         ; $51c7: $90
    ld e, c                                       ; $51c8: $59
    ld [de], a                                    ; $51c9: $12
    ld e, c                                       ; $51ca: $59
    dec de                                        ; $51cb: $1b
    ld e, c                                       ; $51cc: $59
    inc h                                         ; $51cd: $24
    ld e, c                                       ; $51ce: $59
    ld [c], a                                     ; $51cf: $e2
    ld d, d                                       ; $51d0: $52
    ld l, h                                       ; $51d1: $6c
    ld e, c                                       ; $51d2: $59
    adc e                                         ; $51d3: $8b
    ld e, b                                       ; $51d4: $58
    ld b, d                                       ; $51d5: $42
    ld d, [hl]                                    ; $51d6: $56
    ld [hl-], a                                   ; $51d7: $32
    ld e, d                                       ; $51d8: $5a
    ld [hl-], a                                   ; $51d9: $32
    ld e, d                                       ; $51da: $5a
    dec sp                                        ; $51db: $3b
    ld e, d                                       ; $51dc: $5a
    jr @+$0a                                      ; $51dd: $18 $08

    add e                                         ; $51df: $83
    ld [$6b01], sp                                ; $51e0: $08 $01 $6b
    nop                                           ; $51e3: $00
    ld [hl], d                                    ; $51e4: $72
    nop                                           ; $51e5: $00
    jr @+$0a                                      ; $51e6: $18 $08

    ld bc, $0208                                  ; $51e8: $01 $08 $02
    inc a                                         ; $51eb: $3c
    nop                                           ; $51ec: $00
    ld [hl], h                                    ; $51ed: $74
    nop                                           ; $51ee: $00
    jr @+$0a                                      ; $51ef: $18 $08

    ld bc, $0308                                  ; $51f1: $01 $08 $03
    dec hl                                        ; $51f4: $2b
    nop                                           ; $51f5: $00
    ld [hl], h                                    ; $51f6: $74
    nop                                           ; $51f7: $00
    jr @+$0a                                      ; $51f8: $18 $08

    ld bc, $1408                                  ; $51fa: $01 $08 $14
    ld d, e                                       ; $51fd: $53
    nop                                           ; $51fe: $00
    ld [hl], h                                    ; $51ff: $74
    nop                                           ; $5200: $00

    db $18, $08, $01, $08, $04, $3c, $00, $74, $00, $18, $08

    db $01                                        ; $520c: $01

    db $08

    inc sp                                        ; $520e: $33

    db $53, $00, $74, $00

    jr @+$0a                                      ; $5213: $18 $08

    ld bc, $0708                                  ; $5215: $01 $08 $07
    inc l                                         ; $5218: $2c
    nop                                           ; $5219: $00
    ld [hl], h                                    ; $521a: $74
    nop                                           ; $521b: $00
    jr @+$0a                                      ; $521c: $18 $08

    ld bc, $0608                                  ; $521e: $01 $08 $06
    ld [hl], e                                    ; $5221: $73
    nop                                           ; $5222: $00
    ld [hl], h                                    ; $5223: $74
    nop                                           ; $5224: $00
    jr @+$0a                                      ; $5225: $18 $08

    ld bc, $0508                                  ; $5227: $01 $08 $05
    ld d, e                                       ; $522a: $53
    nop                                           ; $522b: $00
    ld [hl], h                                    ; $522c: $74
    nop                                           ; $522d: $00

    db $20, $08, $01, $48, $08, $8f, $00, $3c, $02

    jr nz, @+$0a                                  ; $5237: $20 $08

    db $10                                        ; $5239: $10

    db $00

    nop                                           ; $523b: $00

    db $47, $02, $26, $01

    ld bc, $1001                                  ; $5240: $01 $01 $10
    inc b                                         ; $5243: $04
    ld b, e                                       ; $5244: $43
    cp l                                          ; $5245: $bd
    nop                                           ; $5246: $00
    ld e, a                                       ; $5247: $5f
    ld bc, $0818                                  ; $5248: $01 $18 $08
    db $10                                        ; $524b: $10
    inc c                                         ; $524c: $0c
    nop                                           ; $524d: $00
    db $eb                                        ; $524e: $eb
    nop                                           ; $524f: $00
    rlc b                                         ; $5250: $cb $00
    jr @+$0a                                      ; $5252: $18 $08

    db $10                                        ; $5254: $10
    inc c                                         ; $5255: $0c
    nop                                           ; $5256: $00
    ld e, h                                       ; $5257: $5c
    ld bc, $00f3                                  ; $5258: $01 $f3 $00
    jr @+$0a                                      ; $525b: $18 $08

    db $10                                        ; $525d: $10
    inc c                                         ; $525e: $0c
    nop                                           ; $525f: $00
    jp c, Jump_000_0901                           ; $5260: $da $01 $09

    ld bc, $0818                                  ; $5263: $01 $18 $08
    db $10                                        ; $5266: $10
    inc c                                         ; $5267: $0c
    nop                                           ; $5268: $00
    ld [hl], e                                    ; $5269: $73
    nop                                           ; $526a: $00
    sbc e                                         ; $526b: $9b
    nop                                           ; $526c: $00

    db $18, $08, $10, $0c, $00, $5a, $02, $1c, $01, $18, $08, $10, $0c, $00, $0c, $02
    db $c5, $01

    jr @+$0a                                      ; $527f: $18 $08

    db $10                                        ; $5281: $10
    inc c                                         ; $5282: $0c
    nop                                           ; $5283: $00
    add d                                         ; $5284: $82
    ld bc, $01da                                  ; $5285: $01 $da $01
    jr @+$0a                                      ; $5288: $18 $08

    db $10                                        ; $528a: $10
    inc c                                         ; $528b: $0c
    nop                                           ; $528c: $00
    inc de                                        ; $528d: $13
    ld bc, $01fb                                  ; $528e: $01 $fb $01
    jr @+$0a                                      ; $5291: $18 $08

    db $10                                        ; $5293: $10
    inc c                                         ; $5294: $0c
    nop                                           ; $5295: $00
    ld a, e                                       ; $5296: $7b
    nop                                           ; $5297: $00
    cp b                                          ; $5298: $b8
    db $01                                        ; $5299: $01

    db $20, $08

    db $10                                        ; $529c: $10
    inc c                                         ; $529d: $0c
    nop                                           ; $529e: $00
    db $10                                        ; $529f: $10
    inc bc                                        ; $52a0: $03
    ld sp, hl                                     ; $52a1: $f9
    nop                                           ; $52a2: $00

    db $20, $08

    db $01                                        ; $52a5: $01

    db $48

    add hl, bc                                    ; $52a7: $09

    db $e9, $00, $e4, $02, $30, $08

    db $10                                        ; $52ae: $10
    inc c                                         ; $52af: $0c
    ld [$008e], sp                                ; $52b0: $08 $8e $00
    ld d, b                                       ; $52b3: $50
    nop                                           ; $52b4: $00
    jr z, @+$0a                                   ; $52b5: $28 $08

    ld bc, $4200                                  ; $52b7: $01 $00 $42
    ld b, [hl]                                    ; $52ba: $46
    nop                                           ; $52bb: $00
    ld hl, sp+$02                                 ; $52bc: $f8 $02

    db $20, $08, $01, $48, $5c

    ld c, a                                       ; $52c3: $4f
    nop                                           ; $52c4: $00
    halt                                          ; $52c5: $76
    nop                                           ; $52c6: $00
    jr nc, @+$0a                                  ; $52c7: $30 $08

    db $10                                        ; $52c9: $10
    inc b                                         ; $52ca: $04
    add hl, bc                                    ; $52cb: $09
    ld b, a                                       ; $52cc: $47
    nop                                           ; $52cd: $00
    dec d                                         ; $52ce: $15
    nop                                           ; $52cf: $00
    jr @+$0a                                      ; $52d0: $18 $08

    ld bc, $4f08                                  ; $52d2: $01 $08 $4f
    ld c, a                                       ; $52d5: $4f
    nop                                           ; $52d6: $00
    ld [hl], c                                    ; $52d7: $71
    nop                                           ; $52d8: $00
    jr nz, @+$0a                                  ; $52d9: $20 $08

    db $10                                        ; $52db: $10
    inc c                                         ; $52dc: $0c
    ld b, d                                       ; $52dd: $42
    adc e                                         ; $52de: $8b
    ld bc, $0057                                  ; $52df: $01 $57 $00
    jr @+$0a                                      ; $52e2: $18 $08

    db $10                                        ; $52e4: $10
    ld c, h                                       ; $52e5: $4c
    add hl, bc                                    ; $52e6: $09
    ld [hl], c                                    ; $52e7: $71
    nop                                           ; $52e8: $00
    ret nz                                        ; $52e9: $c0

    ld [bc], a                                    ; $52ea: $02
    jr nz, @+$0a                                  ; $52eb: $20 $08

    db $10                                        ; $52ed: $10
    inc b                                         ; $52ee: $04
    ld b, h                                       ; $52ef: $44
    ld [$9401], sp                                ; $52f0: $08 $01 $94
    nop                                           ; $52f3: $00
    jr nz, @+$0a                                  ; $52f4: $20 $08

    ld bc, $0e04                                  ; $52f6: $01 $04 $0e
    ld d, d                                       ; $52f9: $52
    inc b                                         ; $52fa: $04
    ld a, l                                       ; $52fb: $7d
    nop                                           ; $52fc: $00
    jr nz, @+$0a                                  ; $52fd: $20 $08

    stop                                          ; $52ff: $10 $00
    ld a, [bc]                                    ; $5301: $0a
    ld d, b                                       ; $5302: $50
    nop                                           ; $5303: $00
    ld a, [hl]                                    ; $5304: $7e
    inc b                                         ; $5305: $04
    ld bc, $1001                                  ; $5306: $01 $01 $10
    nop                                           ; $5309: $00
    dec bc                                        ; $530a: $0b
    scf                                           ; $530b: $37
    nop                                           ; $530c: $00
    inc hl                                        ; $530d: $23
    ld bc, $0830                                  ; $530e: $01 $30 $08
    db $10                                        ; $5311: $10
    inc c                                         ; $5312: $0c
    ld b, l                                       ; $5313: $45
    dec sp                                        ; $5314: $3b
    nop                                           ; $5315: $00
    jr nc, jr_001_5318                            ; $5316: $30 $00

jr_001_5318:
    ld [$4020], sp                                ; $5318: $08 $20 $40
    ld c, [hl]                                    ; $531b: $4e
    dec sp                                        ; $531c: $3b
    dec c                                         ; $531d: $0d
    ld bc, $01f7                                  ; $531e: $01 $f7 $01
    ld [$0420], sp                                ; $5321: $08 $20 $04
    ld c, d                                       ; $5324: $4a
    dec a                                         ; $5325: $3d
    dec l                                         ; $5326: $2d
    nop                                           ; $5327: $00
    ld a, c                                       ; $5328: $79
    nop                                           ; $5329: $00
    db $10                                        ; $532a: $10
    ld [$9001], sp                                ; $532b: $08 $01 $90
    jr nc, jr_001_5340                            ; $532e: $30 $10

    ld bc, $026e                                  ; $5330: $01 $6e $02
    ld [$0420], sp                                ; $5333: $08 $20 $04
    ld a, [bc]                                    ; $5336: $0a
    ld c, l                                       ; $5337: $4d
    cpl                                           ; $5338: $2f
    nop                                           ; $5339: $00
    add sp, $01                                   ; $533a: $e8 $01
    ld [$0420], sp                                ; $533c: $08 $20 $04
    ld c, d                                       ; $533f: $4a

jr_001_5340:
    ld c, [hl]                                    ; $5340: $4e
    ld hl, $b700                                  ; $5341: $21 $00 $b7
    nop                                           ; $5344: $00
    ld [$4020], sp                                ; $5345: $08 $20 $40
    ld c, $4d                                     ; $5348: $0e $4d
    halt                                          ; $534a: $76
    nop                                           ; $534b: $00
    add sp, $01                                   ; $534c: $e8 $01
    ld [$0420], sp                                ; $534e: $08 $20 $04
    ld a, [bc]                                    ; $5351: $0a
    ld c, [hl]                                    ; $5352: $4e
    ld hl, $b700                                  ; $5353: $21 $00 $b7
    nop                                           ; $5356: $00
    ld [$4020], sp                                ; $5357: $08 $20 $40
    ld c, $3b                                     ; $535a: $0e $3b
    dec c                                         ; $535c: $0d
    ld bc, $0099                                  ; $535d: $01 $99 $00
    jr jr_001_536a                                ; $5360: $18 $08

    ld bc, $4d48                                  ; $5362: $01 $48 $4d
    ld d, a                                       ; $5365: $57
    nop                                           ; $5366: $00
    cp $01                                        ; $5367: $fe $01
    ld c, b                                       ; $5369: $48

jr_001_536a:
    ld [$0001], sp                                ; $536a: $08 $01 $00
    inc l                                         ; $536d: $2c
    adc a                                         ; $536e: $8f
    nop                                           ; $536f: $00
    ld d, a                                       ; $5370: $57
    nop                                           ; $5371: $00
    jr @+$0a                                      ; $5372: $18 $08

    ld bc, $0d4c                                  ; $5374: $01 $4c $0d
    add $00                                       ; $5377: $c6 $00
    ld c, d                                       ; $5379: $4a
    nop                                           ; $537a: $00
    ld [$4020], sp                                ; $537b: $08 $20 $40
    ld c, [hl]                                    ; $537e: $4e
    ld c, b                                       ; $537f: $48
    ld a, a                                       ; $5380: $7f
    nop                                           ; $5381: $00
    ld d, b                                       ; $5382: $50
    nop                                           ; $5383: $00
    ld [$4020], sp                                ; $5384: $08 $20 $40
    ld c, [hl]                                    ; $5387: $4e
    ld c, c                                       ; $5388: $49
    pop hl                                        ; $5389: $e1
    nop                                           ; $538a: $00
    adc c                                         ; $538b: $89
    nop                                           ; $538c: $00
    ld [$4020], sp                                ; $538d: $08 $20 $40
    ld c, [hl]                                    ; $5390: $4e
    ld c, e                                       ; $5391: $4b
    ld a, [$5600]                                 ; $5392: $fa $00 $56
    ld bc, $3808                                  ; $5395: $01 $08 $38
    inc b                                         ; $5398: $04
    ld c, d                                       ; $5399: $4a
    ld c, d                                       ; $539a: $4a
    ld l, $00                                     ; $539b: $2e $00
    or e                                          ; $539d: $b3
    ld bc, $0840                                  ; $539e: $01 $40 $08
    db $10                                        ; $53a1: $10
    ld c, h                                       ; $53a2: $4c
    ld a, [hl+]                                   ; $53a3: $2a
    db $fc                                        ; $53a4: $fc
    ld bc, $0022                                  ; $53a5: $01 $22 $00
    ld [$0438], sp                                ; $53a8: $08 $38 $04
    ld c, d                                       ; $53ab: $4a
    ld d, [hl]                                    ; $53ac: $56
    ld l, $00                                     ; $53ad: $2e $00
    or e                                          ; $53af: $b3
    ld bc, $0101                                  ; $53b0: $01 $01 $01
    inc b                                         ; $53b3: $04
    ld c, b                                       ; $53b4: $48
    ld h, c                                       ; $53b5: $61
    cp a                                          ; $53b6: $bf
    nop                                           ; $53b7: $00
    cp b                                          ; $53b8: $b8
    nop                                           ; $53b9: $00
    inc l                                         ; $53ba: $2c
    ld [$0001], sp                                ; $53bb: $08 $01 $00
    inc c                                         ; $53be: $0c
    ld [hl], d                                    ; $53bf: $72
    inc bc                                        ; $53c0: $03
    ld l, h                                       ; $53c1: $6c
    nop                                           ; $53c2: $00
    ld bc, $0401                                  ; $53c3: $01 $01 $04
    inc b                                         ; $53c6: $04
    dec bc                                        ; $53c7: $0b
    scf                                           ; $53c8: $37
    nop                                           ; $53c9: $00
    dec d                                         ; $53ca: $15
    ld bc, $082c                                  ; $53cb: $01 $2c $08
    ld bc, $0d00                                  ; $53ce: $01 $00 $0d
    ld c, d                                       ; $53d1: $4a
    ld bc, $014c                   ; $53d2: $01 $4c $01
    inc l                                         ; $53d5: $2c
    ld [$0410], sp                                ; $53d6: $08 $10 $04
    dec bc                                        ; $53d9: $0b
    ld [hl+], a                                   ; $53da: $22
    ld [bc], a                                    ; $53db: $02
    ld a, l                                       ; $53dc: $7d
    nop                                           ; $53dd: $00
    ld bc, $0401                                  ; $53de: $01 $01 $04
    inc b                                         ; $53e1: $04
    dec bc                                        ; $53e2: $0b
    scf                                           ; $53e3: $37
    nop                                           ; $53e4: $00
    dec d                                         ; $53e5: $15
    ld bc, $0820                                  ; $53e6: $01 $20 $08
    ld bc, $450c                                  ; $53e9: $01 $0c $45
    db $e3                                        ; $53ec: $e3
    nop                                           ; $53ed: $00
    ld e, h                                       ; $53ee: $5c
    nop                                           ; $53ef: $00
    inc l                                         ; $53f0: $2c
    ld [$0410], sp                                ; $53f1: $08 $10 $04
    inc c                                         ; $53f4: $0c
    jp nz, $b502                                  ; $53f5: $c2 $02 $b5

    ld bc, $0101                                  ; $53f8: $01 $01 $01
    inc b                                         ; $53fb: $04
    inc b                                         ; $53fc: $04
    dec bc                                        ; $53fd: $0b
    scf                                           ; $53fe: $37
    nop                                           ; $53ff: $00
    dec d                                         ; $5400: $15
    ld bc, $2008                                  ; $5401: $01 $08 $20
    inc b                                         ; $5404: $04
    ld a, [bc]                                    ; $5405: $0a
    ld b, l                                       ; $5406: $45
    rra                                           ; $5407: $1f
    nop                                           ; $5408: $00
    ld [hl], c                                    ; $5409: $71
    nop                                           ; $540a: $00
    ld [$0420], sp                                ; $540b: $08 $20 $04
    ld a, [bc]                                    ; $540e: $0a
    ld b, l                                       ; $540f: $45
    rra                                           ; $5410: $1f
    nop                                           ; $5411: $00
    reti                                          ; $5412: $d9


    nop                                           ; $5413: $00
    ld [$0420], sp                                ; $5414: $08 $20 $04
    ld a, [bc]                                    ; $5417: $0a
    ld b, l                                       ; $5418: $45
    rra                                           ; $5419: $1f
    nop                                           ; $541a: $00
    adc c                                         ; $541b: $89
    ld bc, $3808                                  ; $541c: $01 $08 $38
    inc b                                         ; $541f: $04
    ld c, d                                       ; $5420: $4a
    ld d, [hl]                                    ; $5421: $56
    ld l, $00                                     ; $5422: $2e $00
    or e                                          ; $5424: $b3
    ld bc, $0820                                  ; $5425: $01 $20 $08
    ld bc, $4c40                                  ; $5428: $01 $40 $4c
    add sp, $00                                   ; $542b: $e8 $00
    ld hl, $0802                                  ; $542d: $21 $02 $08
    jr c, jr_001_5436                             ; $5430: $38 $04

    ld a, [bc]                                    ; $5432: $0a
    ld c, d                                       ; $5433: $4a
    ld l, $00                                     ; $5434: $2e $00

jr_001_5436:
    or e                                          ; $5436: $b3
    ld bc, $0101                                  ; $5437: $01 $01 $01
    inc b                                         ; $543a: $04
    ld b, $56                                     ; $543b: $06 $56
    ld [$1d00], a                                 ; $543d: $ea $00 $1d
    ld [bc], a                                    ; $5440: $02
    ld [$4038], sp                                ; $5441: $08 $38 $40
    ld c, $45                                     ; $5444: $0e $45
    ei                                            ; $5446: $fb
    nop                                           ; $5447: $00
    ld de, $2001                                  ; $5448: $11 $01 $20
    ld [$0801], sp                                ; $544b: $08 $01 $08
    ld c, h                                       ; $544e: $4c
    or c                                          ; $544f: $b1
    nop                                           ; $5450: $00
    ld [c], a                                     ; $5451: $e2
    nop                                           ; $5452: $00
    jr nz, @+$0a                                  ; $5453: $20 $08

    db $10                                        ; $5455: $10
    inc c                                         ; $5456: $0c
    ld d, [hl]                                    ; $5457: $56
    cp [hl]                                       ; $5458: $be
    nop                                           ; $5459: $00
    ld d, a                                       ; $545a: $57
    nop                                           ; $545b: $00
    jr nc, @+$0a                                  ; $545c: $30 $08

    ld bc, $4548                                  ; $545e: $01 $48 $45
    adc [hl]                                      ; $5461: $8e
    nop                                           ; $5462: $00
    sub $01                                       ; $5463: $d6 $01
    jr @+$0a                                      ; $5465: $18 $08

    ld bc, $2848                                  ; $5467: $01 $48 $28
    ld d, b                                       ; $546a: $50
    ld bc, $010e                                  ; $546b: $01 $0e $01
    jr jr_001_5478                                ; $546e: $18 $08

    db $10                                        ; $5470: $10
    inc b                                         ; $5471: $04
    ld d, h                                       ; $5472: $54
    ld e, a                                       ; $5473: $5f
    nop                                           ; $5474: $00
    ld h, $00                                     ; $5475: $26 $00
    ld c, b                                       ; $5477: $48

jr_001_5478:
    ld [$0438], sp                                ; $5478: $08 $38 $04
    ld d, c                                       ; $547b: $51
    rst $38                                       ; $547c: $ff
    ld bc, $0013                                  ; $547d: $01 $13 $00
    ld [$0e38], sp                                ; $5480: $08 $38 $0e
    ld [bc], a                                    ; $5483: $02
    ld d, d                                       ; $5484: $52
    rrca                                          ; $5485: $0f
    nop                                           ; $5486: $00
    rst $28                                       ; $5487: $ef
    ld bc, $6008                                  ; $5488: $01 $08 $60
    ld c, $02                                     ; $548b: $0e $02
    ld d, d                                       ; $548d: $52
    rrca                                          ; $548e: $0f
    nop                                           ; $548f: $00
    ld [c], a                                     ; $5490: $e2
    nop                                           ; $5491: $00
    jr @+$0a                                      ; $5492: $18 $08

    ld bc, $3e48                                  ; $5494: $01 $48 $3e
    db $dd                                        ; $5497: $dd
    nop                                           ; $5498: $00
    or b                                          ; $5499: $b0
    nop                                           ; $549a: $00
    ld bc, $0001                                  ; $549b: $01 $01 $00
    ld [bc], a                                    ; $549e: $02
    ld d, d                                       ; $549f: $52
    db $f4                                        ; $54a0: $f4
    nop                                           ; $54a1: $00
    ld b, h                                       ; $54a2: $44
    ld bc, $0101                                  ; $54a3: $01 $01 $01
    nop                                           ; $54a6: $00
    ld [bc], a                                    ; $54a7: $02
    ld a, [hl+]                                   ; $54a8: $2a
    rst $00                                       ; $54a9: $c7
    nop                                           ; $54aa: $00
    ld [hl+], a                                   ; $54ab: $22
    ld [bc], a                                    ; $54ac: $02
    ld c, b                                       ; $54ad: $48
    ld [$0083], sp                                ; $54ae: $08 $83 $00
    ld a, [hl+]                                   ; $54b1: $2a
    nop                                           ; $54b2: $00
    ld [bc], a                                    ; $54b3: $02

jr_001_54b4:
    ld l, [hl]                                    ; $54b4: $6e
    ld [bc], a                                    ; $54b5: $02
    jr nz, @+$0a                                  ; $54b6: $20 $08

    ld bc, $5440                                  ; $54b8: $01 $40 $54
    ld a, a                                       ; $54bb: $7f
    nop                                           ; $54bc: $00
    ld a, [bc]                                    ; $54bd: $0a
    ld bc, $3808                                  ; $54be: $01 $08 $38
    ld c, $02                                     ; $54c1: $0e $02
    ld d, e                                       ; $54c3: $53
    inc de                                        ; $54c4: $13
    nop                                           ; $54c5: $00
    or a                                          ; $54c6: $b7
    nop                                           ; $54c7: $00
    inc c                                         ; $54c8: $0c
    jr nc, jr_001_550b                            ; $54c9: $30 $40

    ld b, [hl]                                    ; $54cb: $46
    jr jr_001_54b4                                ; $54cc: $18 $e6

    ld [bc], a                                    ; $54ce: $02
    ld d, b                                       ; $54cf: $50
    nop                                           ; $54d0: $00
    ld [$e038], sp                                ; $54d1: $08 $38 $e0
    ld b, $2a                                     ; $54d4: $06 $2a
    nop                                           ; $54d6: $00
    inc bc                                        ; $54d7: $03
    sub $00                                       ; $54d8: $d6 $00
    ld [$e030], sp                                ; $54da: $08 $30 $e0
    ld b, $2a                                     ; $54dd: $06 $2a
    inc b                                         ; $54df: $04
    inc bc                                        ; $54e0: $03
    db $ed                                        ; $54e1: $ed
    ld bc, $0844                                  ; $54e2: $01 $44 $08
    jr c, @+$06                                   ; $54e5: $38 $04

    ld d, e                                       ; $54e7: $53
    pop bc                                        ; $54e8: $c1
    nop                                           ; $54e9: $00
    jr jr_001_54ec                                ; $54ea: $18 $00

jr_001_54ec:
    ld [$e038], sp                                ; $54ec: $08 $38 $e0
    ld b, $51                                     ; $54ef: $06 $51
    add hl, bc                                    ; $54f1: $09
    inc bc                                        ; $54f2: $03
    jp $3800                                      ; $54f3: $c3 $00 $38


    ld [$0083], sp                                ; $54f6: $08 $83 $00
    ld d, d                                       ; $54f9: $52
    cp l                                          ; $54fa: $bd
    nop                                           ; $54fb: $00
    ld l, a                                       ; $54fc: $6f
    ld [bc], a                                    ; $54fd: $02
    jr nz, @+$0a                                  ; $54fe: $20 $08

    add e                                         ; $5500: $83
    nop                                           ; $5501: $00
    ld a, [hl+]                                   ; $5502: $2a
    cp h                                          ; $5503: $bc
    nop                                           ; $5504: $00
    ld h, c                                       ; $5505: $61
    ld [bc], a                                    ; $5506: $02
    jr nz, jr_001_5511                            ; $5507: $20 $08

    db $10                                        ; $5509: $10
    inc b                                         ; $550a: $04

jr_001_550b:
    ld d, c                                       ; $550b: $51
    rst $08                                       ; $550c: $cf
    nop                                           ; $550d: $00
    inc a                                         ; $550e: $3c
    nop                                           ; $550f: $00
    ld a, [de]                                    ; $5510: $1a

jr_001_5511:
    ld [$4801], sp                                ; $5511: $08 $01 $48
    dec hl                                        ; $5514: $2b
    ld l, [hl]                                    ; $5515: $6e
    nop                                           ; $5516: $00
    ld [$2000], a                                 ; $5517: $ea $00 $20
    ld [$4c10], sp                                ; $551a: $08 $10 $4c
    ld d, h                                       ; $551d: $54
    ld [hl], b                                    ; $551e: $70
    nop                                           ; $551f: $00
    push hl                                       ; $5520: $e5
    nop                                           ; $5521: $00
    jr nz, @+$0a                                  ; $5522: $20 $08

    db $10                                        ; $5524: $10
    inc c                                         ; $5525: $0c
    ld a, [hl+]                                   ; $5526: $2a
    ld d, a                                       ; $5527: $57
    nop                                           ; $5528: $00
    ld c, b                                       ; $5529: $48
    nop                                           ; $552a: $00
    ld [$1020], sp                                ; $552b: $08 $20 $10
    inc c                                         ; $552e: $0c
    ld a, [hl+]                                   ; $552f: $2a
    cp b                                          ; $5530: $b8
    nop                                           ; $5531: $00
    ld c, a                                       ; $5532: $4f
    nop                                           ; $5533: $00
    ld [$0424], sp                                ; $5534: $08 $24 $04
    ld b, d                                       ; $5537: $42
    ld d, c                                       ; $5538: $51
    stop                                          ; $5539: $10 $00
    db $dd                                        ; $553b: $dd
    nop                                           ; $553c: $00
    ld [$4038], sp                                ; $553d: $08 $38 $40
    ld b, $19                                     ; $5540: $06 $19
    and e                                         ; $5542: $a3
    ld [bc], a                                    ; $5543: $02
    ld h, [hl]                                    ; $5544: $66
    nop                                           ; $5545: $00
    ld [$0438], sp                                ; $5546: $08 $38 $04
    ld [bc], a                                    ; $5549: $02
    jr jr_001_555d                                ; $554a: $18 $11

    nop                                           ; $554c: $00
    ld e, b                                       ; $554d: $58
    nop                                           ; $554e: $00
    jr c, @+$0a                                   ; $554f: $38 $08

    db $10                                        ; $5551: $10
    inc b                                         ; $5552: $04
    ld a, [de]                                    ; $5553: $1a
    ld a, $00                                     ; $5554: $3e $00
    add hl, de                                    ; $5556: $19
    nop                                           ; $5557: $00
    jr c, @+$0a                                   ; $5558: $38 $08

    ld bc, $1900                                  ; $555a: $01 $00 $19

jr_001_555d:
    ld b, l                                       ; $555d: $45
    ld [bc], a                                    ; $555e: $02
    jr z, @+$03                                   ; $555f: $28 $01

    ld [$0438], sp                                ; $5561: $08 $38 $04
    ld [bc], a                                    ; $5564: $02
    dec de                                        ; $5565: $1b
    inc e                                         ; $5566: $1c
    nop                                           ; $5567: $00
    ldh [rSB], a                                  ; $5568: $e0 $01
    jr c, @+$0a                                   ; $556a: $38 $08

    db $10                                        ; $556c: $10
    inc b                                         ; $556d: $04
    inc e                                         ; $556e: $1c
    ld b, d                                       ; $556f: $42
    nop                                           ; $5570: $00
    ld e, $00                                     ; $5571: $1e $00
    ld [$4040], sp                                ; $5573: $08 $40 $40
    ld b, $1a                                     ; $5576: $06 $1a
    inc b                                         ; $5578: $04
    ld bc, $0237                                  ; $5579: $01 $37 $02
    jr c, @+$0a                                   ; $557c: $38 $08

    db $10                                        ; $557e: $10
    inc b                                         ; $557f: $04
    dec e                                         ; $5580: $1d
    and [hl]                                      ; $5581: $a6
    nop                                           ; $5582: $00
    inc d                                         ; $5583: $14
    nop                                           ; $5584: $00
    jr c, @+$0a                                   ; $5585: $38 $08

    ld bc, $1a00                                  ; $5587: $01 $00 $1a
    pop de                                        ; $558a: $d1
    nop                                           ; $558b: $00
    rlc d                                         ; $558c: $cb $02
    ld [$0438], sp                                ; $558e: $08 $38 $04
    ld [bc], a                                    ; $5591: $02
    dec e                                         ; $5592: $1d
    ld d, $00                                     ; $5593: $16 $00
    add [hl]                                      ; $5595: $86
    nop                                           ; $5596: $00
    ld [$0438], sp                                ; $5597: $08 $38 $04
    ld [bc], a                                    ; $559a: $02
    dec e                                         ; $559b: $1d
    ld d, $00                                     ; $559c: $16 $00
    ld [hl], a                                    ; $559e: $77
    ld bc, $4008                                  ; $559f: $01 $08 $40
    ld b, b                                       ; $55a2: $40
    ld b, $1c                                     ; $55a3: $06 $1c
    ld b, [hl]                                    ; $55a5: $46
    ld [bc], a                                    ; $55a6: $02
    sbc [hl]                                      ; $55a7: $9e
    nop                                           ; $55a8: $00
    ld [$4038], sp                                ; $55a9: $08 $38 $40
    ld b, $1c                                     ; $55ac: $06 $1c
    ld b, [hl]                                    ; $55ae: $46
    ld [bc], a                                    ; $55af: $02
    adc b                                         ; $55b0: $88
    ld bc, $0830                                  ; $55b1: $01 $30 $08
    ld bc, $1b00                                  ; $55b4: $01 $00 $1b
    adc e                                         ; $55b7: $8b
    ld [bc], a                                    ; $55b8: $02
    ld h, e                                       ; $55b9: $63
    ld [bc], a                                    ; $55ba: $02
    ld bc, $0101                                  ; $55bb: $01 $01 $01
    ld b, $1d                                     ; $55be: $06 $1d
    ld e, d                                       ; $55c0: $5a
    ld [bc], a                                    ; $55c1: $02
    ld l, h                                       ; $55c2: $6c
    ld [bc], a                                    ; $55c3: $02
    ld c, b                                       ; $55c4: $48
    ld [$0410], sp                                ; $55c5: $08 $10 $04
    ld b, l                                       ; $55c8: $45
    sub b                                         ; $55c9: $90
    nop                                           ; $55ca: $00
    ld a, [de]                                    ; $55cb: $1a
    nop                                           ; $55cc: $00
    ld [$4020], sp                                ; $55cd: $08 $20 $40
    ld c, [hl]                                    ; $55d0: $4e
    ld b, b                                       ; $55d1: $40
    ld hl, $e801                                  ; $55d2: $21 $01 $e8
    nop                                           ; $55d5: $00
    ld [$4020], sp                                ; $55d6: $08 $20 $40
    ld c, [hl]                                    ; $55d9: $4e
    jr c, @-$46                                   ; $55da: $38 $b8

    nop                                           ; $55dc: $00
    ld l, h                                       ; $55dd: $6c
    nop                                           ; $55de: $00
    ld [$4020], sp                                ; $55df: $08 $20 $40
    ld c, [hl]                                    ; $55e2: $4e
    dec h                                         ; $55e3: $25
    jp nz, $aa00                                  ; $55e4: $c2 $00 $aa

    nop                                           ; $55e7: $00
    inc h                                         ; $55e8: $24
    ld [$0001], sp                                ; $55e9: $08 $01 $00
    dec l                                         ; $55ec: $2d
    inc [hl]                                      ; $55ed: $34
    nop                                           ; $55ee: $00
    db $eb                                        ; $55ef: $eb
    ld bc, $0824                                  ; $55f0: $01 $24 $08
    ld bc, $2d00                                  ; $55f3: $01 $00 $2d
    ld a, [bc]                                    ; $55f6: $0a
    ld bc, $01eb                                  ; $55f7: $01 $eb $01
    jr @+$0a                                      ; $55fa: $18 $08

    inc b                                         ; $55fc: $04
    ld c, d                                       ; $55fd: $4a
    add hl, hl                                    ; $55fe: $29
    ld a, [hl-]                                   ; $55ff: $3a
    nop                                           ; $5600: $00
    jr z, @+$03                                   ; $5601: $28 $01

    ld [$0420], sp                                ; $5603: $08 $20 $04
    ld c, d                                       ; $5606: $4a
    ld e, a                                       ; $5607: $5f
    dec h                                         ; $5608: $25
    nop                                           ; $5609: $00
    call z, $0800                                 ; $560a: $cc $00 $08
    jr @+$06                                      ; $560d: $18 $04

    ld c, d                                       ; $560f: $4a
    inc l                                         ; $5610: $2c
    ld hl, $b800                                  ; $5611: $21 $00 $b8
    nop                                           ; $5614: $00
    ld [$0418], sp                                ; $5615: $08 $18 $04
    ld a, [bc]                                    ; $5618: $0a
    inc l                                         ; $5619: $2c
    inc h                                         ; $561a: $24
    nop                                           ; $561b: $00
    rrca                                          ; $561c: $0f
    ld bc, $0101                                  ; $561d: $01 $01 $01
    inc b                                         ; $5620: $04
    ld b, $38                                     ; $5621: $06 $38
    sub c                                         ; $5623: $91
    nop                                           ; $5624: $00
    dec sp                                        ; $5625: $3b
    nop                                           ; $5626: $00
    ld [$0418], sp                                ; $5627: $08 $18 $04
    ld a, [bc]                                    ; $562a: $0a
    inc l                                         ; $562b: $2c
    ld [hl+], a                                   ; $562c: $22
    nop                                           ; $562d: $00
    adc l                                         ; $562e: $8d
    ld bc, $1808                                  ; $562f: $01 $08 $18
    ld b, b                                       ; $5632: $40
    ld c, $2c                                     ; $5633: $0e $2c
    db $fd                                        ; $5635: $fd
    nop                                           ; $5636: $00
    adc e                                         ; $5637: $8b
    ld bc, $0101                                  ; $5638: $01 $01 $01
    ld b, b                                       ; $563b: $40
    ld b, $2c                                     ; $563c: $06 $2c
    call c, $8b00                                 ; $563e: $dc $00 $8b
    ld bc, $1808                                  ; $5641: $01 $08 $18
    ld b, b                                       ; $5644: $40
    db $0e                                        ; $5645: $0e

    db $2c, $fc

    nop                                           ; $5648: $00
    cp h                                          ; $5649: $bc
    nop                                           ; $564a: $00
    jr z, @+$0a                                   ; $564b: $28 $08

    db $10                                        ; $564d: $10
    inc b                                         ; $564e: $04
    inc l                                         ; $564f: $2c
    dec [hl]                                      ; $5650: $35
    nop                                           ; $5651: $00
    db $f4                                        ; $5652: $f4
    ld bc, $0828                                  ; $5653: $01 $28 $08
    db $10                                        ; $5656: $10
    inc b                                         ; $5657: $04
    inc l                                         ; $5658: $2c
    jp hl                                         ; $5659: $e9


    nop                                           ; $565a: $00
    db $f4                                        ; $565b: $f4
    ld bc, $0824                                  ; $565c: $01 $24 $08
    db $10                                        ; $565f: $10
    inc b                                         ; $5660: $04
    ld l, $36                                     ; $5661: $2e $36
    nop                                           ; $5663: $00
    call c, Call_000_2400                         ; $5664: $dc $00 $24
    ld [$0410], sp                                ; $5667: $08 $10 $04
    ld l, $09                                     ; $566a: $2e $09
    ld bc, $00dc                                  ; $566c: $01 $dc $00
    ld [$4018], sp                                ; $566f: $08 $18 $40
    ld c, [hl]                                    ; $5672: $4e
    inc h                                         ; $5673: $24
    sub a                                         ; $5674: $97
    nop                                           ; $5675: $00
    ld c, c                                       ; $5676: $49
    nop                                           ; $5677: $00
    jr nz, @+$0a                                  ; $5678: $20 $08

    ld bc, $1548                                  ; $567a: $01 $48 $15
    ld a, a                                       ; $567d: $7f
    nop                                           ; $567e: $00
    ld h, b                                       ; $567f: $60
    ld bc, $0820                                  ; $5680: $01 $20 $08
    ld bc, $2f94                                  ; $5683: $01 $94 $2f
    rrca                                          ; $5686: $0f
    ld bc, $0034                                  ; $5687: $01 $34 $00
    ld [$0418], sp                                ; $568a: $08 $18 $04
    ld c, d                                       ; $568d: $4a
    ld [hl], $22                                  ; $568e: $36 $22
    nop                                           ; $5690: $00
    add a                                         ; $5691: $87
    nop                                           ; $5692: $00
    ld [$0418], sp                                ; $5693: $08 $18 $04
    ld c, d                                       ; $5696: $4a
    ld [hl], $22                                  ; $5697: $36 $22
    nop                                           ; $5699: $00
    and b                                         ; $569a: $a0
    ld bc, $0820                                  ; $569b: $01 $20 $08
    db $10                                        ; $569e: $10
    sub [hl]                                      ; $569f: $96
    jr nc, @+$62                                  ; $56a0: $30 $60

    ld bc, $01e6                                  ; $56a2: $01 $e6 $01
    ld [$0418], sp                                ; $56a5: $08 $18 $04
    ld a, [bc]                                    ; $56a8: $0a
    dec l                                         ; $56a9: $2d
    ld e, $00                                     ; $56aa: $1e $00
    ld e, a                                       ; $56ac: $5f
    nop                                           ; $56ad: $00
    jr @+$0a                                      ; $56ae: $18 $08

    db $10                                        ; $56b0: $10
    inc c                                         ; $56b1: $0c
    dec l                                         ; $56b2: $2d
    sbc a                                         ; $56b3: $9f
    nop                                           ; $56b4: $00
    jr nc, jr_001_56b7                            ; $56b5: $30 $00

jr_001_56b7:
    ld [$4018], sp                                ; $56b7: $08 $18 $40
    ld c, [hl]                                    ; $56ba: $4e
    dec l                                         ; $56bb: $2d
    rra                                           ; $56bc: $1f
    ld bc, $005f                                  ; $56bd: $01 $5f $00
    ld [$4018], sp                                ; $56c0: $08 $18 $40
    ld c, [hl]                                    ; $56c3: $4e
    dec l                                         ; $56c4: $2d
    rra                                           ; $56c5: $1f
    ld bc, $0177                                  ; $56c6: $01 $77 $01
    jr @+$0a                                      ; $56c9: $18 $08

    rst $00                                       ; $56cb: $c7
    inc b                                         ; $56cc: $04
    scf                                           ; $56cd: $37
    ld [hl], $00                                  ; $56ce: $36 $00
    ld h, h                                       ; $56d0: $64
    nop                                           ; $56d1: $00
    jr @+$0a                                      ; $56d2: $18 $08

    rst $00                                       ; $56d4: $c7
    inc b                                         ; $56d5: $04
    scf                                           ; $56d6: $37
    and [hl]                                      ; $56d7: $a6
    ld bc, $0064                                  ; $56d8: $01 $64 $00
    ld bc, $0101                                  ; $56db: $01 $01 $01
    ld [bc], a                                    ; $56de: $02
    ld [hl], $df                                  ; $56df: $36 $df
    nop                                           ; $56e1: $00
    ld l, [hl]                                    ; $56e2: $6e
    ld [bc], a                                    ; $56e3: $02
    jr z, jr_001_56ee                             ; $56e4: $28 $08

    ld bc, $2d40                                  ; $56e6: $01 $40 $2d
    inc [hl]                                      ; $56e9: $34
    nop                                           ; $56ea: $00
    call z, Call_000_2800                         ; $56eb: $cc $00 $28

jr_001_56ee:
    ld [$4001], sp                                ; $56ee: $08 $01 $40
    dec l                                         ; $56f1: $2d
    ld a, [bc]                                    ; $56f2: $0a
    ld bc, $00cc                                  ; $56f3: $01 $cc $00
    jr nz, @+$0a                                  ; $56f6: $20 $08

    db $10                                        ; $56f8: $10
    inc b                                         ; $56f9: $04
    cpl                                           ; $56fa: $2f
    ld d, l                                       ; $56fb: $55
    nop                                           ; $56fc: $00
    pop af                                        ; $56fd: $f1
    ld bc, $0820                                  ; $56fe: $01 $20 $08
    ld bc, $2dd4                                  ; $5701: $01 $d4 $2d
    ld c, [hl]                                    ; $5704: $4e
    nop                                           ; $5705: $00
    jr nc, jr_001_5708                            ; $5706: $30 $00

jr_001_5708:
    ld [$4020], sp                                ; $5708: $08 $20 $40
    ld c, [hl]                                    ; $570b: $4e
    ld d, $11                                     ; $570c: $16 $11
    ld bc, $0138                                  ; $570e: $01 $38 $01
    jr nc, @+$0a                                  ; $5711: $30 $08

    db $10                                        ; $5713: $10
    ld c, h                                       ; $5714: $4c
    ld b, c                                       ; $5715: $41
    xor b                                         ; $5716: $a8
    ld bc, $0035                                  ; $5717: $01 $35 $00
    ld [$0420], sp                                ; $571a: $08 $20 $04
    ld c, d                                       ; $571d: $4a
    daa                                           ; $571e: $27
    ld h, $00                                     ; $571f: $26 $00
    ld b, a                                       ; $5721: $47
    nop                                           ; $5722: $00
    ld [$0420], sp                                ; $5723: $08 $20 $04
    ld c, d                                       ; $5726: $4a
    scf                                           ; $5727: $37
    inc hl                                        ; $5728: $23
    nop                                           ; $5729: $00
    adc h                                         ; $572a: $8c
    nop                                           ; $572b: $00
    ld [$4020], sp                                ; $572c: $08 $20 $40
    ld c, [hl]                                    ; $572f: $4e
    inc a                                         ; $5730: $3c
    rst $18                                       ; $5731: $df
    nop                                           ; $5732: $00
    ld [hl], l                                    ; $5733: $75
    nop                                           ; $5734: $00
    ld [$0410], sp                                ; $5735: $08 $10 $04
    ld a, [bc]                                    ; $5738: $0a
    ld l, $27                                     ; $5739: $2e $27
    nop                                           ; $573b: $00
    ld e, a                                       ; $573c: $5f
    nop                                           ; $573d: $00
    jr nc, @+$0a                                  ; $573e: $30 $08

    ld bc, $2e48                                  ; $5740: $01 $48 $2e
    sbc a                                         ; $5743: $9f
    nop                                           ; $5744: $00
    inc l                                         ; $5745: $2c
    ld [bc], a                                    ; $5746: $02
    jr nz, @+$0a                                  ; $5747: $20 $08

    ld bc, $1108                                  ; $5749: $01 $08 $11
    ld e, a                                       ; $574c: $5f
    nop                                           ; $574d: $00
    rla                                           ; $574e: $17
    ld bc, $0820                                  ; $574f: $01 $20 $08
    db $10                                        ; $5752: $10
    ld [$4f41], sp                                ; $5753: $08 $41 $4f
    nop                                           ; $5756: $00
    dec a                                         ; $5757: $3d
    nop                                           ; $5758: $00
    jr nz, @+$0a                                  ; $5759: $20 $08

    inc b                                         ; $575b: $04
    ld a, [bc]                                    ; $575c: $0a
    ld l, $5f                                     ; $575d: $2e $5f
    nop                                           ; $575f: $00
    ld [c], a                                     ; $5760: $e2
    ld bc, $2008                                  ; $5761: $01 $08 $20
    ld b, b                                       ; $5764: $40
    ld c, $2e                                     ; $5765: $0e $2e
    jr nz, jr_001_576a                            ; $5767: $20 $01

    ld h, e                                       ; $5769: $63

jr_001_576a:
    nop                                           ; $576a: $00
    ld a, [de]                                    ; $576b: $1a
    ld a, [de]                                    ; $576c: $1a
    rst $38                                       ; $576d: $ff
    inc b                                         ; $576e: $04
    ld [hl], $36                                  ; $576f: $36 $36
    nop                                           ; $5771: $00
    ld a, b                                       ; $5772: $78
    nop                                           ; $5773: $00
    ld a, [de]                                    ; $5774: $1a
    ld a, [de]                                    ; $5775: $1a
    rst $38                                       ; $5776: $ff
    inc b                                         ; $5777: $04
    ld [hl], $a8                                  ; $5778: $36 $a8
    ld bc, $0078                                  ; $577a: $01 $78 $00
    ld [$0420], sp                                ; $577d: $08 $20 $04
    ld a, [bc]                                    ; $5780: $0a
    ld l, $1d                                     ; $5781: $2e $1d
    nop                                           ; $5783: $00
    ld a, h                                       ; $5784: $7c
    ld bc, $2008                                  ; $5785: $01 $08 $20
    ld b, b                                       ; $5788: $40
    ld c, $2e                                     ; $5789: $0e $2e
    dec de                                        ; $578b: $1b
    ld bc, $0211                                  ; $578c: $01 $11 $02
    db $10                                        ; $578f: $10
    db $10                                        ; $5790: $10
    inc b                                         ; $5791: $04
    ld b, [hl]                                    ; $5792: $46
    ld e, $22                                     ; $5793: $1e $22
    ld bc, $0121                                  ; $5795: $01 $21 $01
    ld [$0420], sp                                ; $5798: $08 $20 $04
    ld a, [bc]                                    ; $579b: $0a
    rra                                           ; $579c: $1f
    dec de                                        ; $579d: $1b
    nop                                           ; $579e: $00
    cp e                                          ; $579f: $bb
    nop                                           ; $57a0: $00
    ld [$4020], sp                                ; $57a1: $08 $20 $40
    ld c, [hl]                                    ; $57a4: $4e
    ld e, $44                                     ; $57a5: $1e $44
    ld bc, $0070                                  ; $57a7: $01 $70 $00
    ld [$0420], sp                                ; $57aa: $08 $20 $04
    ld c, d                                       ; $57ad: $4a
    jr nz, @+$2a                                  ; $57ae: $20 $28

    nop                                           ; $57b0: $00
    jp c, $0100                                   ; $57b1: $da $00 $01

    ld bc, $0640                                  ; $57b4: $01 $40 $06
    ld h, b                                       ; $57b7: $60
    ld a, [hl]                                    ; $57b8: $7e
    nop                                           ; $57b9: $00
    push de                                       ; $57ba: $d5
    ld [bc], a                                    ; $57bb: $02
    ld [$4020], sp                                ; $57bc: $08 $20 $40
    ld c, [hl]                                    ; $57bf: $4e
    rra                                           ; $57c0: $1f
    rst $18                                       ; $57c1: $df
    nop                                           ; $57c2: $00
    scf                                           ; $57c3: $37
    nop                                           ; $57c4: $00
    ld [$0420], sp                                ; $57c5: $08 $20 $04
    ld c, d                                       ; $57c8: $4a
    ld hl, $001f                                  ; $57c9: $21 $1f $00
    ld h, c                                       ; $57cc: $61
    nop                                           ; $57cd: $00
    ld [$4020], sp                                ; $57ce: $08 $20 $40
    ld c, $20                                     ; $57d1: $0e $20
    ld [bc], a                                    ; $57d3: $02
    ld bc, $0040                                  ; $57d4: $01 $40 $00
    ld [$0420], sp                                ; $57d7: $08 $20 $04
    ld a, [bc]                                    ; $57da: $0a
    ld [hl+], a                                   ; $57db: $22
    scf                                           ; $57dc: $37
    nop                                           ; $57dd: $00
    cp h                                          ; $57de: $bc
    nop                                           ; $57df: $00
    ld [$4020], sp                                ; $57e0: $08 $20 $40
    ld c, [hl]                                    ; $57e3: $4e
    ld hl, $00bf                                  ; $57e4: $21 $bf $00
    ld h, e                                       ; $57e7: $63
    nop                                           ; $57e8: $00
    ld [$0420], sp                                ; $57e9: $08 $20 $04
    ld c, d                                       ; $57ec: $4a
    inc hl                                        ; $57ed: $23
    jr nz, jr_001_57f0                            ; $57ee: $20 $00

jr_001_57f0:
    sbc e                                         ; $57f0: $9b
    nop                                           ; $57f1: $00
    ld [$4020], sp                                ; $57f2: $08 $20 $40
    ld c, [hl]                                    ; $57f5: $4e
    ld [hl+], a                                   ; $57f6: $22
    reti                                          ; $57f7: $d9


    nop                                           ; $57f8: $00
    ld b, d                                       ; $57f9: $42
    nop                                           ; $57fa: $00
    jr z, @+$0a                                   ; $57fb: $28 $08

    ld bc, $2e40                                  ; $57fd: $01 $40 $2e
    ld [hl], $00                                  ; $5800: $36 $00
    ld [c], a                                     ; $5802: $e2
    ld bc, $0824                                  ; $5803: $01 $24 $08
    ld bc, $3000                                  ; $5806: $01 $00 $30
    and l                                         ; $5809: $a5
    nop                                           ; $580a: $00
    cp $00                                        ; $580b: $fe $00
    jr nz, @+$0a                                  ; $580d: $20 $08

    ld bc, $3548                                  ; $580f: $01 $48 $35
    add b                                         ; $5812: $80
    nop                                           ; $5813: $00
    ld a, [hl]                                    ; $5814: $7e
    ld bc, $0820                                  ; $5815: $01 $20 $08
    ld bc, $2dd4                                  ; $5818: $01 $d4 $2d
    rst $28                                       ; $581b: $ef
    nop                                           ; $581c: $00
    jr nc, jr_001_581f                            ; $581d: $30 $00

jr_001_581f:
    ld [$0418], sp                                ; $581f: $08 $18 $04
    sub [hl]                                      ; $5822: $96
    ld sp, $013a                                  ; $5823: $31 $3a $01
    ldh [rP1], a                                  ; $5826: $e0 $00
    jr nc, @+$0a                                  ; $5828: $30 $08

    db $10                                        ; $582a: $10
    sub b                                         ; $582b: $90
    ld [hl-], a                                   ; $582c: $32
    ld h, c                                       ; $582d: $61
    ld bc, $022a                                  ; $582e: $01 $2a $02
    ld [$4020], sp                                ; $5831: $08 $20 $40
    ld c, [hl]                                    ; $5834: $4e
    inc [hl]                                      ; $5835: $34
    jp nc, $e600                                  ; $5836: $d2 $00 $e6

    nop                                           ; $5839: $00
    ld bc, $0101                                  ; $583a: $01 $01 $01
    ld b, h                                       ; $583d: $44
    dec [hl]                                      ; $583e: $35
    scf                                           ; $583f: $37
    nop                                           ; $5840: $00
    add $00                                       ; $5841: $c6 $00
    ld [$4020], sp                                ; $5843: $08 $20 $40
    ld b, [hl]                                    ; $5846: $46
    ld e, [hl]                                    ; $5847: $5e
    ret nz                                        ; $5848: $c0

    nop                                           ; $5849: $00
    call nc, Call_000_3000                        ; $584a: $d4 $00 $30
    ld [$0c10], sp                                ; $584d: $08 $10 $0c
    cpl                                           ; $5850: $2f
    cp a                                          ; $5851: $bf
    nop                                           ; $5852: $00
    jr nc, jr_001_5855                            ; $5853: $30 $00

jr_001_5855:
    jr z, @+$0a                                   ; $5855: $28 $08

    ld bc, $3a08                                  ; $5857: $01 $08 $3a
    ld h, b                                       ; $585a: $60
    nop                                           ; $585b: $00
    cp a                                          ; $585c: $bf
    nop                                           ; $585d: $00
    ld [$0420], sp                                ; $585e: $08 $20 $04
    ld a, [bc]                                    ; $5861: $0a
    inc de                                        ; $5862: $13
    ld e, $00                                     ; $5863: $1e $00
    ld [hl], d                                    ; $5865: $72
    nop                                           ; $5866: $00
    ld bc, $0401                                  ; $5867: $01 $01 $04
    ld [bc], a                                    ; $586a: $02
    dec [hl]                                      ; $586b: $35
    dec h                                         ; $586c: $25
    nop                                           ; $586d: $00
    xor [hl]                                      ; $586e: $ae
    nop                                           ; $586f: $00
    jr z, @+$0a                                   ; $5870: $28 $08

    db $10                                        ; $5872: $10
    inc c                                         ; $5873: $0c
    dec [hl]                                      ; $5874: $35
    ld a, [hl]                                    ; $5875: $7e
    nop                                           ; $5876: $00
    jr nc, jr_001_5879                            ; $5877: $30 $00

jr_001_5879:
    ld [$4020], sp                                ; $5879: $08 $20 $40
    ld c, $35                                     ; $587c: $0e $35
    pop hl                                        ; $587e: $e1
    nop                                           ; $587f: $00
    ld h, l                                       ; $5880: $65
    nop                                           ; $5881: $00
    ld [$0420], sp                                ; $5882: $08 $20 $04
    ld a, [bc]                                    ; $5885: $0a
    cpl                                           ; $5886: $2f
    ld d, b                                       ; $5887: $50
    nop                                           ; $5888: $00
    ld h, d                                       ; $5889: $62
    nop                                           ; $588a: $00
    ld [$0420], sp                                ; $588b: $08 $20 $04
    ld a, [bc]                                    ; $588e: $0a
    cpl                                           ; $588f: $2f
    ld h, $00                                     ; $5890: $26 $00
    ld a, e                                       ; $5892: $7b
    ld bc, $0828                                  ; $5893: $01 $28 $08
    db $10                                        ; $5896: $10
    ld b, h                                       ; $5897: $44
    cpl                                           ; $5898: $2f
    ld d, l                                       ; $5899: $55
    nop                                           ; $589a: $00
    rst $08                                       ; $589b: $cf
    nop                                           ; $589c: $00
    jr z, @+$0a                                   ; $589d: $28 $08

    db $10                                        ; $589f: $10
    inc b                                         ; $58a0: $04
    ld sp, $0056                                  ; $58a1: $31 $56 $00
    xor $01                                       ; $58a4: $ee $01
    ld [$4018], sp                                ; $58a6: $08 $18 $40
    ld c, [hl]                                    ; $58a9: $4e
    add hl, sp                                    ; $58aa: $39
    sbc b                                         ; $58ab: $98
    nop                                           ; $58ac: $00
    jp hl                                         ; $58ad: $e9


    nop                                           ; $58ae: $00
    ld [$0418], sp                                ; $58af: $08 $18 $04
    ld c, d                                       ; $58b2: $4a
    rla                                           ; $58b3: $17
    dec h                                         ; $58b4: $25
    nop                                           ; $58b5: $00
    ld l, b                                       ; $58b6: $68
    nop                                           ; $58b7: $00
    ld [$0418], sp                                ; $58b8: $08 $18 $04
    jp nc, $b12d                                  ; $58bb: $d2 $2d $b1

    nop                                           ; $58be: $00
    rst $28                                       ; $58bf: $ef
    nop                                           ; $58c0: $00
    jr nc, @+$0a                                  ; $58c1: $30 $08

    db $10                                        ; $58c3: $10
    call nc, $bf4d                                ; $58c4: $d4 $4d $bf
    ld bc, $0074                                  ; $58c7: $01 $74 $00
    ld [$0418], sp                                ; $58ca: $08 $18 $04
    ld c, d                                       ; $58cd: $4a
    ld e, c                                       ; $58ce: $59
    dec e                                         ; $58cf: $1d
    nop                                           ; $58d0: $00
    sub e                                         ; $58d1: $93
    nop                                           ; $58d2: $00
    ld [$4018], sp                                ; $58d3: $08 $18 $40
    ld c, [hl]                                    ; $58d6: $4e
    ld d, l                                       ; $58d7: $55
    sbc a                                         ; $58d8: $9f
    nop                                           ; $58d9: $00
    ld a, a                                       ; $58da: $7f
    nop                                           ; $58db: $00
    ld [$0420], sp                                ; $58dc: $08 $20 $04
    ld c, d                                       ; $58df: $4a
    ld e, d                                       ; $58e0: $5a
    inc h                                         ; $58e1: $24
    nop                                           ; $58e2: $00
    db $ec                                        ; $58e3: $ec
    nop                                           ; $58e4: $00
    ld [$4020], sp                                ; $58e5: $08 $20 $40
    ld c, [hl]                                    ; $58e8: $4e
    ld e, e                                       ; $58e9: $5b
    jp c, $ae00                                   ; $58ea: $da $00 $ae

    nop                                           ; $58ed: $00
    ld [$0418], sp                                ; $58ee: $08 $18 $04
    ld c, d                                       ; $58f1: $4a
    jr nc, @-$6e                                  ; $58f2: $30 $90

    nop                                           ; $58f4: $00
    and b                                         ; $58f5: $a0
    nop                                           ; $58f6: $00
    ld [$0118], sp                                ; $58f7: $08 $18 $01
    ld a, [bc]                                    ; $58fa: $0a
    add hl, sp                                    ; $58fb: $39
    adc e                                         ; $58fc: $8b
    nop                                           ; $58fd: $00
    ld b, a                                       ; $58fe: $47
    nop                                           ; $58ff: $00
    ld [$4018], sp                                ; $5900: $08 $18 $40
    ld c, $30                                     ; $5903: $0e $30
    jr z, @+$04                                   ; $5905: $28 $02

    ld b, c                                       ; $5907: $41
    ld bc, $1808                                  ; $5908: $01 $08 $18
    inc b                                         ; $590b: $04
    ld a, [bc]                                    ; $590c: $0a
    jr nc, @+$24                                  ; $590d: $30 $22

    nop                                           ; $590f: $00
    inc e                                         ; $5910: $1c
    ld [bc], a                                    ; $5911: $02
    ld [$4018], sp                                ; $5912: $08 $18 $40
    ld c, $30                                     ; $5915: $0e $30
    adc [hl]                                      ; $5917: $8e
    ld bc, $0235                                  ; $5918: $01 $35 $02
    ld [$4018], sp                                ; $591b: $08 $18 $40
    ld c, $30                                     ; $591e: $0e $30
    adc h                                         ; $5920: $8c
    ld bc, $013b                                  ; $5921: $01 $3b $01
    ld [$0418], sp                                ; $5924: $08 $18 $04
    ld a, [bc]                                    ; $5927: $0a
    jr nc, @-$6f                                  ; $5928: $30 $8f

    nop                                           ; $592a: $00
    ld d, l                                       ; $592b: $55
    ld bc, $0828                                  ; $592c: $01 $28 $08
    ld bc, $3040                                  ; $592f: $01 $40 $30
    and [hl]                                      ; $5932: $a6
    nop                                           ; $5933: $00
    jr @+$04                                      ; $5934: $18 $02

    inc h                                         ; $5936: $24
    ld [$0001], sp                                ; $5937: $08 $01 $00
    ld [hl-], a                                   ; $593a: $32
    ld [$e001], a                                 ; $593b: $ea $01 $e0
    ld bc, $1808                                  ; $593e: $01 $08 $18
    inc b                                         ; $5941: $04
    sub $2f                                       ; $5942: $d6 $2f
    inc [hl]                                      ; $5944: $34
    ld bc, $00de                                  ; $5945: $01 $de $00
    ld [$0418], sp                                ; $5948: $08 $18 $04
    ld b, d                                       ; $594b: $42
    ld e, l                                       ; $594c: $5d
    daa                                           ; $594d: $27
    nop                                           ; $594e: $00
    ld d, b                                       ; $594f: $50
    nop                                           ; $5950: $00
    ld [$0418], sp                                ; $5951: $08 $18 $04
    ld c, d                                       ; $5954: $4a
    ld e, b                                       ; $5955: $58
    jr z, jr_001_5958                             ; $5956: $28 $00

jr_001_5958:
    ld a, d                                       ; $5958: $7a
    nop                                           ; $5959: $00
    ld [$4018], sp                                ; $595a: $08 $18 $40
    ld c, [hl]                                    ; $595d: $4e
    ld h, $1d                                     ; $595e: $26 $1d
    ld bc, $00b3                                  ; $5960: $01 $b3 $00
    ld [$4018], sp                                ; $5963: $08 $18 $40
    ld c, [hl]                                    ; $5966: $4e
    rrca                                          ; $5967: $0f
    db $dd                                        ; $5968: $dd
    nop                                           ; $5969: $00
    ld [hl], e                                    ; $596a: $73
    nop                                           ; $596b: $00
    ld [$4018], sp                                ; $596c: $08 $18 $40
    ld b, $31                                     ; $596f: $06 $31
    ld b, c                                       ; $5971: $41
    ld bc, $015a                                  ; $5972: $01 $5a $01
    jr @+$0a                                      ; $5975: $18 $08

    ld bc, $3f08                                  ; $5977: $01 $08 $3f
    ld [de], a                                    ; $597a: $12
    ld bc, $0118                                  ; $597b: $01 $18 $01
    jr @+$0a                                      ; $597e: $18 $08

    db $10                                        ; $5980: $10
    inc c                                         ; $5981: $0c
    ld e, l                                       ; $5982: $5d
    ld a, e                                       ; $5983: $7b
    ld bc, $0080                                  ; $5984: $01 $80 $00
    ld bc, $1001                                  ; $5987: $01 $01 $10
    ld b, $38                                     ; $598a: $06 $38
    ld l, a                                       ; $598c: $6f
    nop                                           ; $598d: $00
    dec a                                         ; $598e: $3d
    nop                                           ; $598f: $00
    jr @+$0a                                      ; $5990: $18 $08

    ld b, b                                       ; $5992: $40
    ld c, $31                                     ; $5993: $0e $31
    inc a                                         ; $5995: $3c
    ld bc, $005b                                  ; $5996: $01 $5b $00
    jr @+$0a                                      ; $5999: $18 $08

    inc b                                         ; $599b: $04
    ld a, [bc]                                    ; $599c: $0a
    ld sp, $0040                                  ; $599d: $31 $40 $00
    ld a, e                                       ; $59a0: $7b
    nop                                           ; $59a1: $00
    jr @+$0a                                      ; $59a2: $18 $08

    inc b                                         ; $59a4: $04
    ld a, [bc]                                    ; $59a5: $0a
    ld sp, $0040                                  ; $59a6: $31 $40 $00
    ld h, e                                       ; $59a9: $63
    ld bc, $0828                                  ; $59aa: $01 $28 $08
    db $10                                        ; $59ad: $10
    ld b, h                                       ; $59ae: $44
    ld sp, $0129                                  ; $59af: $31 $29 $01
    ld [c], a                                     ; $59b2: $e2
    ld bc, $1808                                  ; $59b3: $01 $08 $18
    ld b, b                                       ; $59b6: $40
    ld c, [hl]                                    ; $59b7: $4e
    ld d, b                                       ; $59b8: $50
    ld a, [c]                                     ; $59b9: $f2
    nop                                           ; $59ba: $00
    add sp, $01                                   ; $59bb: $e8 $01
    jr nc, @+$0a                                  ; $59bd: $30 $08

    db $10                                        ; $59bf: $10
    sub $2f                                       ; $59c0: $d6 $2f
    ret nz                                        ; $59c2: $c0

    nop                                           ; $59c3: $00
    ld l, $02                                     ; $59c4: $2e $02
    jr z, @+$0a                                   ; $59c6: $28 $08

    ld bc, $474e                                  ; $59c8: $01 $4e $47
    adc a                                         ; $59cb: $8f
    ld bc, $00f7                                  ; $59cc: $01 $f7 $00
    ld [$0420], sp                                ; $59cf: $08 $20 $04
    ld c, d                                       ; $59d2: $4a
    db $10                                        ; $59d3: $10
    ld [hl-], a                                   ; $59d4: $32
    nop                                           ; $59d5: $00
    jr @+$03                                      ; $59d6: $18 $01

    ld [$0418], sp                                ; $59d8: $08 $18 $04
    ld a, [bc]                                    ; $59db: $0a
    ld [hl-], a                                   ; $59dc: $32
    ldh [rP1], a                                  ; $59dd: $e0 $00
    add b                                         ; $59df: $80
    nop                                           ; $59e0: $00
    jr z, @+$0a                                   ; $59e1: $28 $08

    ld bc, $1208                                  ; $59e3: $01 $08 $12
    ld a, [hl+]                                   ; $59e6: $2a
    ld bc, $006d                                  ; $59e7: $01 $6d $00
    jr z, @+$0a                                   ; $59ea: $28 $08

    db $10                                        ; $59ec: $10
    ld c, h                                       ; $59ed: $4c
    ld d, b                                       ; $59ee: $50
    db $eb                                        ; $59ef: $eb
    nop                                           ; $59f0: $00
    ld d, $00                                     ; $59f1: $16 $00
    ld bc, $1001                                  ; $59f3: $01 $01 $10
    inc b                                         ; $59f6: $04
    ld [de], a                                    ; $59f7: $12
    db $f4                                        ; $59f8: $f4
    nop                                           ; $59f9: $00
    ld l, c                                       ; $59fa: $69
    nop                                           ; $59fb: $00
    ld [$0418], sp                                ; $59fc: $08 $18 $04
    inc c                                         ; $59ff: $0c
    ld [hl-], a                                   ; $5a00: $32
    ld d, e                                       ; $5a01: $53
    nop                                           ; $5a02: $00
    jr nz, @+$03                                  ; $5a03: $20 $01

    ld e, $1a                                     ; $5a05: $1e $1a
    rst $38                                       ; $5a07: $ff
    ld b, b                                       ; $5a08: $40
    ld b, [hl]                                    ; $5a09: $46
    cp [hl]                                       ; $5a0a: $be
    nop                                           ; $5a0b: $00
    ld h, [hl]                                    ; $5a0c: $66
    ld bc, $0101                                  ; $5a0d: $01 $01 $01
    inc b                                         ; $5a10: $04
    ld [bc], a                                    ; $5a11: $02
    ld b, a                                       ; $5a12: $47
    ld b, l                                       ; $5a13: $45
    ld bc, $00e7                                  ; $5a14: $01 $e7 $00
    ld e, $1a                                     ; $5a17: $1e $1a
    rst $38                                       ; $5a19: $ff
    ld b, b                                       ; $5a1a: $40
    ld b, a                                       ; $5a1b: $47
    and $00                                       ; $5a1c: $e6 $00
    sub b                                         ; $5a1e: $90
    ld bc, $0101                                  ; $5a1f: $01 $01 $01
    db $10                                        ; $5a22: $10
    inc b                                         ; $5a23: $04
    ld b, [hl]                                    ; $5a24: $46
    and e                                         ; $5a25: $a3
    nop                                           ; $5a26: $00
    ld [hl], e                                    ; $5a27: $73
    nop                                           ; $5a28: $00
    ld [$4018], sp                                ; $5a29: $08 $18 $40
    ld c, $32                                     ; $5a2c: $0e $32
    db $f4                                        ; $5a2e: $f4
    ld bc, $01a4                                  ; $5a2f: $01 $a4 $01
    ld bc, $0101                                  ; $5a32: $01 $01 $01
    nop                                           ; $5a35: $00
    ld h, c                                       ; $5a36: $61
    cp a                                          ; $5a37: $bf
    nop                                           ; $5a38: $00
    cp b                                          ; $5a39: $b8
    nop                                           ; $5a3a: $00
    ld bc, $0101                                  ; $5a3b: $01 $01 $01
    nop                                           ; $5a3e: $00
    ld h, d                                       ; $5a3f: $62
    ld e, $00                                     ; $5a40: $1e $00
    ld l, d                                       ; $5a42: $6a
    db $01                                        ; $5a43: $01

    push bc                                       ; $5a44: $c5
    ld bc, $0008                                  ; $5a45: $01 $08 $00
    ld hl, $cb29                                  ; $5a48: $21 $29 $cb
    call Call_000_112e                            ; $5a4b: $cd $2e $11
    pop bc                                        ; $5a4e: $c1
    inc bc                                        ; $5a4f: $03
    ld a, [bc]                                    ; $5a50: $0a
    dec bc                                        ; $5a51: $0b
    ld d, $00                                     ; $5a52: $16 $00
    ld e, a                                       ; $5a54: $5f
    call Call_001_5abe                            ; $5a55: $cd $be $5a
    ld a, [hl+]                                   ; $5a58: $2a
    ld [$cb2a], a                                 ; $5a59: $ea $2a $cb
    ld a, [hl+]                                   ; $5a5c: $2a
    ld [$cb2c], a                                 ; $5a5d: $ea $2c $cb
    ld hl, $cb29                                  ; $5a60: $21 $29 $cb
    jp Jump_000_0859                              ; $5a63: $c3 $59 $08


    ld d, $04                                     ; $5a66: $16 $04
    ld e, a                                       ; $5a68: $5f
    call Call_001_5abe                            ; $5a69: $cd $be $5a
    ld a, [hl]                                    ; $5a6c: $7e
    ret                                           ; $5a6d: $c9


    ld d, $03                                     ; $5a6e: $16 $03
    ld e, a                                       ; $5a70: $5f
    call Call_001_5abe                            ; $5a71: $cd $be $5a
    ld a, [hl]                                    ; $5a74: $7e
    and $38                                       ; $5a75: $e6 $38
    and $f8                                       ; $5a77: $e6 $f8
    ret z                                         ; $5a79: $c8

    rra                                           ; $5a7a: $1f
    rra                                           ; $5a7b: $1f
    rra                                           ; $5a7c: $1f
    dec a                                         ; $5a7d: $3d
    ld hl, $510f                                  ; $5a7e: $21 $0f $51
    rst $08                                       ; $5a81: $cf
    jp Jump_000_393e                              ; $5a82: $c3 $3e $39


    ld d, $03                                     ; $5a85: $16 $03
    ld e, a                                       ; $5a87: $5f
    call Call_001_5abe                            ; $5a88: $cd $be $5a
    ld a, [hl]                                    ; $5a8b: $7e
    and $07                                       ; $5a8c: $e6 $07
    ret                                           ; $5a8e: $c9


    ld d, $03                                     ; $5a8f: $16 $03
    ld e, a                                       ; $5a91: $5f
    call Call_001_5abe                            ; $5a92: $cd $be $5a
    ld a, [hl]                                    ; $5a95: $7e
    and $c0                                       ; $5a96: $e6 $c0
    rlca                                          ; $5a98: $07
    rlca                                          ; $5a99: $07
    ret                                           ; $5a9a: $c9


    ld d, $05                                     ; $5a9b: $16 $05
    ld e, a                                       ; $5a9d: $5f
    call Call_001_5abe                            ; $5a9e: $cd $be $5a
    ld e, [hl]                                    ; $5aa1: $5e
    inc hl                                        ; $5aa2: $23
    ld d, [hl]                                    ; $5aa3: $56
    inc hl                                        ; $5aa4: $23
    ld a, [hl+]                                   ; $5aa5: $2a
    ld h, [hl]                                    ; $5aa6: $66
    ld l, a                                       ; $5aa7: $6f
    push de                                       ; $5aa8: $d5
    ld d, h                                       ; $5aa9: $54
    ld e, l                                       ; $5aaa: $5d
    pop hl                                        ; $5aab: $e1
    ret                                           ; $5aac: $c9


    inc bc                                        ; $5aad: $03
    ld a, [bc]                                    ; $5aae: $0a
    dec bc                                        ; $5aaf: $0b
    ld d, $02                                     ; $5ab0: $16 $02
    ld e, a                                       ; $5ab2: $5f
    call Call_001_5abe                            ; $5ab3: $cd $be $5a
    ld a, [$cae1]                                 ; $5ab6: $fa $e1 $ca
    call Call_000_3273                            ; $5ab9: $cd $73 $32
    and [hl]                                      ; $5abc: $a6
    ret                                           ; $5abd: $c9


Call_001_5abe:
    push de                                       ; $5abe: $d5
    ldh a, [$d8]                                  ; $5abf: $f0 $d8
    ld hl, $5117                                  ; $5ac1: $21 $17 $51
    call Call_000_319d                            ; $5ac4: $cd $9d $31
    ld a, e                                       ; $5ac7: $7b
    ld e, l                                       ; $5ac8: $5d
    ld d, h                                       ; $5ac9: $54
    ld l, a                                       ; $5aca: $6f
    ld h, $09                                     ; $5acb: $26 $09
    call Call_000_00a5                            ; $5acd: $cd $a5 $00
    add hl, de                                    ; $5ad0: $19
    pop de                                        ; $5ad1: $d1
    ld a, d                                       ; $5ad2: $7a
    jp RST_08                                     ; $5ad3: $c3 $08 $00


    db $08, $02, $00, $0c, $10, $08, $05, $00, $08, $0c

    inc b                                         ; $5ae0: $04
    inc c                                         ; $5ae1: $0c
    nop                                           ; $5ae2: $00
    ld [$0610], sp                                ; $5ae3: $08 $10 $06
    rlca                                          ; $5ae6: $07
    nop                                           ; $5ae7: $00
    ld [$0210], sp                                ; $5ae8: $08 $10 $02
    add hl, bc                                    ; $5aeb: $09
    nop                                           ; $5aec: $00
    ld [$010c], sp                                ; $5aed: $08 $0c $01
    dec bc                                        ; $5af0: $0b
    nop                                           ; $5af1: $00
    ld [$020c], sp                                ; $5af2: $08 $0c $02
    ld [$0800], sp                                ; $5af5: $08 $00 $08
    db $0e                                        ; $5af8: $0e

    db $08, $04, $00, $08, $10

    ld [bc], a                                    ; $5afe: $02
    ld b, $00                                     ; $5aff: $06 $00
    ld [$0212], sp                                ; $5b01: $08 $12 $02
    rlca                                          ; $5b04: $07
    nop                                           ; $5b05: $00
    ld [$0410], sp                                ; $5b06: $08 $10 $04
    ld [$0800], sp                                ; $5b09: $08 $00 $08
    inc c                                         ; $5b0c: $0c
    inc b                                         ; $5b0d: $04
    inc b                                         ; $5b0e: $04
    nop                                           ; $5b0f: $00
    db $08                                        ; $5b10: $08
    db $18                                        ; $5b11: $18

    db $08, $03, $00, $10, $2a, $0c, $02, $00, $08, $10

    inc b                                         ; $5b1c: $04
    nop                                           ; $5b1d: $00
    nop                                           ; $5b1e: $00
    jr nz, jr_001_5b21                            ; $5b1f: $20 $00

jr_001_5b21:
    ld b, $03                                     ; $5b21: $06 $03
    nop                                           ; $5b23: $00
    inc c                                         ; $5b24: $0c
    ld [de], a                                    ; $5b25: $12

    db $04, $00, $00, $20

    nop                                           ; $5b2a: $00
    ld bc, $0001                                  ; $5b2b: $01 $01 $00
    sub b                                         ; $5b2e: $90
    inc b                                         ; $5b2f: $04

    db $01, $0d, $0f, $19, $0e, $25, $26, $2a, $7e, $08, $2c, $2d, $16, $32, $33, $34
    db $35, $36, $37, $38, $39, $2f, $08, $3c, $3d, $3e, $3f, $4d, $24, $58, $9f, $a6
    db $ab, $aa, $5b, $5e, $5f, $60, $63, $64, $7f, $6a, $6b, $66, $61, $6c, $6d, $49
    db $b7, $00, $02, $07, $08, $ff, $02, $0a, $1b, $1c, $2e, $2f, $30, $3b, $ff

    xor a                                         ; $5b6f: $af
    ld [$c167], a                                 ; $5b70: $ea $67 $c1
    ld [$c145], a                                 ; $5b73: $ea $45 $c1
    ld [$c146], a                                 ; $5b76: $ea $46 $c1
    ld hl, $c167                                  ; $5b79: $21 $67 $c1
    ld bc, $0013                                  ; $5b7c: $01 $13 $00
    call Call_000_112f                            ; $5b7f: $cd $2f $11
    dec a                                         ; $5b82: $3d
    ld hl, $c147                                  ; $5b83: $21 $47 $c1
    ld bc, $0020                                  ; $5b86: $01 $20 $00
    call Call_000_112f                            ; $5b89: $cd $2f $11
    ld hl, $5ad6                                  ; $5b8c: $21 $d6 $5a

Call_001_5b8f:
    ld de, $c17a                                  ; $5b8f: $11 $7a $c1
    ld a, [hl+]                                   ; $5b92: $2a
    ld [de], a                                    ; $5b93: $12
    inc de                                        ; $5b94: $13
    ld b, a                                       ; $5b95: $47
    ld a, [hl+]                                   ; $5b96: $2a
    ld [de], a                                    ; $5b97: $12
    inc de                                        ; $5b98: $13
    ld c, a                                       ; $5b99: $4f
    ld a, [hl+]                                   ; $5b9a: $2a
    call Call_001_5d80                            ; $5b9b: $cd $80 $5d
    ld b, c                                       ; $5b9e: $41
    call Call_001_5d80                            ; $5b9f: $cd $80 $5d
    ldh [$b8], a                                  ; $5ba2: $e0 $b8
    ld a, $00                                     ; $5ba4: $3e $00
    ldh [$b9], a                                  ; $5ba6: $e0 $b9
    ret                                           ; $5ba8: $c9


    ld hl, $0027                                  ; $5ba9: $21 $27 $00
    add hl, bc                                    ; $5bac: $09
    bit 7, [hl]                                   ; $5bad: $cb $7e
    ret nz                                        ; $5baf: $c0

    ld de, $c167                                  ; $5bb0: $11 $67 $c1
    call Call_001_5c95                            ; $5bb3: $cd $95 $5c
    ld de, $c170                                  ; $5bb6: $11 $70 $c1
    call Call_001_5c95                            ; $5bb9: $cd $95 $5c
    call Call_001_5d56                            ; $5bbc: $cd $56 $5d
    ld hl, $002e                                  ; $5bbf: $21 $2e $00
    add hl, bc                                    ; $5bc2: $09
    bit 2, [hl]                                   ; $5bc3: $cb $56
    ret z                                         ; $5bc5: $c8

    ld hl, $002f                                  ; $5bc6: $21 $2f $00
    add hl, bc                                    ; $5bc9: $09
    ld a, [hl]                                    ; $5bca: $7e
    cp $ff                                        ; $5bcb: $fe $ff
    ret z                                         ; $5bcd: $c8

    ld [hl], $ff                                  ; $5bce: $36 $ff
    jp Jump_001_5e1d                              ; $5bd0: $c3 $1d $5e


    ld de, $c167                                  ; $5bd3: $11 $67 $c1
    call Call_001_5cad                            ; $5bd6: $cd $ad $5c
    ld de, $c170                                  ; $5bd9: $11 $70 $c1
    call Call_001_5cad                            ; $5bdc: $cd $ad $5c
    ret                                           ; $5bdf: $c9


    ld a, [$c179]                                 ; $5be0: $fa $79 $c1
    or a                                          ; $5be3: $b7
    jr z, jr_001_5bec                             ; $5be4: $28 $06

    call Call_001_5bfa                            ; $5be6: $cd $fa $5b
    jp Jump_001_5bf2                              ; $5be9: $c3 $f2 $5b


jr_001_5bec:
    call Call_001_5bf2                            ; $5bec: $cd $f2 $5b
    jp Jump_001_5bfa                              ; $5bef: $c3 $fa $5b


Call_001_5bf2:
Jump_001_5bf2:
    ld de, $c167                                  ; $5bf2: $11 $67 $c1
    ld bc, $d4c0                                  ; $5bf5: $01 $c0 $d4
    jr jr_001_5c00                                ; $5bf8: $18 $06

Call_001_5bfa:
Jump_001_5bfa:
    ld de, $c170                                  ; $5bfa: $11 $70 $c1
    ld bc, $d8c0                                  ; $5bfd: $01 $c0 $d8

jr_001_5c00:
    ld a, [de]                                    ; $5c00: $1a
    or a                                          ; $5c01: $b7
    ret nz                                        ; $5c02: $c0

    ld hl, $0005                                  ; $5c03: $21 $05 $00
    add hl, de                                    ; $5c06: $19
    ld a, [hl]                                    ; $5c07: $7e
    inc hl                                        ; $5c08: $23
    or [hl]                                       ; $5c09: $b6
    ret nz                                        ; $5c0a: $c0

    ld hl, $0003                                  ; $5c0b: $21 $03 $00
    add hl, de                                    ; $5c0e: $19
    ld [hl], c                                    ; $5c0f: $71
    inc hl                                        ; $5c10: $23
    ld [hl], b                                    ; $5c11: $70
    push de                                       ; $5c12: $d5
    call Call_001_5d35                            ; $5c13: $cd $35 $5d
    pop de                                        ; $5c16: $d1
    ld a, b                                       ; $5c17: $78
    cp $ff                                        ; $5c18: $fe $ff
    ret z                                         ; $5c1a: $c8

    call Call_001_5d91                            ; $5c1b: $cd $91 $5d
    cp $ff                                        ; $5c1e: $fe $ff
    jp z, Jump_001_5d01                           ; $5c20: $ca $01 $5d

    ld hl, $0008                                  ; $5c23: $21 $08 $00
    add hl, de                                    ; $5c26: $19
    ld [hl], a                                    ; $5c27: $77
    ld hl, $0005                                  ; $5c28: $21 $05 $00
    add hl, de                                    ; $5c2b: $19
    ld [hl], c                                    ; $5c2c: $71
    inc hl                                        ; $5c2d: $23
    ld [hl], b                                    ; $5c2e: $70
    ld hl, $0029                                  ; $5c2f: $21 $29 $00
    add hl, bc                                    ; $5c32: $09
    ld a, [hl]                                    ; $5c33: $7e
    ld hl, $0007                                  ; $5c34: $21 $07 $00
    add hl, de                                    ; $5c37: $19
    ld [hl], a                                    ; $5c38: $77
    ld hl, $002b                                  ; $5c39: $21 $2b $00
    add hl, bc                                    ; $5c3c: $09
    ld a, [hl]                                    ; $5c3d: $7e
    and $20                                       ; $5c3e: $e6 $20
    jr z, jr_001_5c4a                             ; $5c40: $28 $08

    ld a, $20                                     ; $5c42: $3e $20
    ld hl, $0007                                  ; $5c44: $21 $07 $00
    add hl, de                                    ; $5c47: $19
    set 7, [hl]                                   ; $5c48: $cb $fe

jr_001_5c4a:
    ld [$c26d], a                                 ; $5c4a: $ea $6d $c2
    push de                                       ; $5c4d: $d5
    ld hl, $0008                                  ; $5c4e: $21 $08 $00
    add hl, de                                    ; $5c51: $19
    ld a, [hl]                                    ; $5c52: $7e
    ld hl, $0001                                  ; $5c53: $21 $01 $00
    add hl, de                                    ; $5c56: $19
    ld e, a                                       ; $5c57: $5f
    xor a                                         ; $5c58: $af
    sla e                                         ; $5c59: $cb $23
    rla                                           ; $5c5b: $17
    sla e                                         ; $5c5c: $cb $23
    rla                                           ; $5c5e: $17
    sla e                                         ; $5c5f: $cb $23
    rla                                           ; $5c61: $17
    sla e                                         ; $5c62: $cb $23
    rla                                           ; $5c64: $17
    set 7, a                                      ; $5c65: $cb $ff
    ld [hl], e                                    ; $5c67: $73
    inc hl                                        ; $5c68: $23
    ld [hl+], a                                   ; $5c69: $22
    ld a, [hl+]                                   ; $5c6a: $2a
    ld d, [hl]                                    ; $5c6b: $56
    ld e, a                                       ; $5c6c: $5f
    call Call_000_27bb                            ; $5c6d: $cd $bb $27
    sra b                                         ; $5c70: $cb $28
    rr c                                          ; $5c72: $cb $19
    sra b                                         ; $5c74: $cb $28
    rr c                                          ; $5c76: $cb $19
    sra b                                         ; $5c78: $cb $28
    rr c                                          ; $5c7a: $cb $19
    sra b                                         ; $5c7c: $cb $28
    rr c                                          ; $5c7e: $cb $19
    inc c                                         ; $5c80: $0c
    srl c                                         ; $5c81: $cb $39
    pop hl                                        ; $5c83: $e1
    ld [hl], c                                    ; $5c84: $71
    ld hl, $1d6f                                  ; $5c85: $21 $6f $1d
    ldh [$c1], a                                  ; $5c88: $e0 $c1
    ld a, $47                                     ; $5c8a: $3e $47
    ldh [$bd], a                                  ; $5c8c: $e0 $bd
    ld a, $7c                                     ; $5c8e: $3e $7c
    ldh [$be], a                                  ; $5c90: $e0 $be
    jp Jump_000_3365                              ; $5c92: $c3 $65 $33


Call_001_5c95:
    ld hl, $0005                                  ; $5c95: $21 $05 $00
    add hl, de                                    ; $5c98: $19
    ld a, [hl+]                                   ; $5c99: $2a
    cp c                                          ; $5c9a: $b9
    ret nz                                        ; $5c9b: $c0

    ld a, [hl]                                    ; $5c9c: $7e
    cp b                                          ; $5c9d: $b8
    ret nz                                        ; $5c9e: $c0

    xor a                                         ; $5c9f: $af
    ld [de], a                                    ; $5ca0: $12
    ld [hl-], a                                   ; $5ca1: $32
    ld [hl], a                                    ; $5ca2: $77
    ld hl, $0008                                  ; $5ca3: $21 $08 $00
    add hl, de                                    ; $5ca6: $19
    ld a, [hl]                                    ; $5ca7: $7e
    ld [hl], $00                                  ; $5ca8: $36 $00
    jp Jump_001_5e1d                              ; $5caa: $c3 $1d $5e


Call_001_5cad:
    ld a, [de]                                    ; $5cad: $1a
    or a                                          ; $5cae: $b7
    ret nz                                        ; $5caf: $c0

    ld hl, $0005                                  ; $5cb0: $21 $05 $00
    add hl, de                                    ; $5cb3: $19
    ld c, [hl]                                    ; $5cb4: $4e
    ld [hl+], a                                   ; $5cb5: $22
    ld b, [hl]                                    ; $5cb6: $46
    ld a, b                                       ; $5cb7: $78
    or a                                          ; $5cb8: $b7
    ret z                                         ; $5cb9: $c8

    ld [hl], $00                                  ; $5cba: $36 $00
    inc hl                                        ; $5cbc: $23
    ld e, l                                       ; $5cbd: $5d
    ld d, h                                       ; $5cbe: $54
    ld a, [de]                                    ; $5cbf: $1a
    ld hl, $0028                                  ; $5cc0: $21 $28 $00
    add hl, bc                                    ; $5cc3: $09
    and $7f                                       ; $5cc4: $e6 $7f
    ld [hl], a                                    ; $5cc6: $77
    inc de                                        ; $5cc7: $13
    ld hl, $002e                                  ; $5cc8: $21 $2e $00
    add hl, bc                                    ; $5ccb: $09
    set 2, [hl]                                   ; $5ccc: $cb $d6
    ld hl, $002f                                  ; $5cce: $21 $2f $00
    add hl, bc                                    ; $5cd1: $09
    ld a, [hl]                                    ; $5cd2: $7e
    push af                                       ; $5cd3: $f5
    ld a, [de]                                    ; $5cd4: $1a
    ld [hl], a                                    ; $5cd5: $77
    xor a                                         ; $5cd6: $af
    ld [de], a                                    ; $5cd7: $12
    pop af                                        ; $5cd8: $f1
    cp $ff                                        ; $5cd9: $fe $ff
    ret z                                         ; $5cdb: $c8

    jp Jump_001_5e1d                              ; $5cdc: $c3 $1d $5e


    ld a, [bc]                                    ; $5cdf: $0a
    or a                                          ; $5ce0: $b7
    ret z                                         ; $5ce1: $c8

    ld hl, $0027                                  ; $5ce2: $21 $27 $00
    add hl, bc                                    ; $5ce5: $09
    bit 7, [hl]                                   ; $5ce6: $cb $7e
    jr z, jr_001_5cfa                             ; $5ce8: $28 $10

    ld hl, $002b                                  ; $5cea: $21 $2b $00
    add hl, bc                                    ; $5ced: $09
    bit 5, [hl]                                   ; $5cee: $cb $6e
    ld hl, $002c                                  ; $5cf0: $21 $2c $00
    add hl, bc                                    ; $5cf3: $09
    res 5, [hl]                                   ; $5cf4: $cb $ae
    ret z                                         ; $5cf6: $c8

    set 5, [hl]                                   ; $5cf7: $cb $ee
    ret                                           ; $5cf9: $c9


jr_001_5cfa:
    ld hl, $0029                                  ; $5cfa: $21 $29 $00
    add hl, bc                                    ; $5cfd: $09
    bit 7, [hl]                                   ; $5cfe: $cb $7e
    ret z                                         ; $5d00: $c8

Jump_001_5d01:
    ld a, [$c145]                                 ; $5d01: $fa $45 $c1
    cp $10                                        ; $5d04: $fe $10
    ret nc                                        ; $5d06: $d0

    res 7, [hl]                                   ; $5d07: $cb $be
    ld d, a                                       ; $5d09: $57
    ld hl, $c146                                  ; $5d0a: $21 $46 $c1
    ld a, [hl+]                                   ; $5d0d: $2a
    ld e, a                                       ; $5d0e: $5f
    call Call_000_318c                            ; $5d0f: $cd $8c $31

jr_001_5d12:
    ld a, d                                       ; $5d12: $7a
    or a                                          ; $5d13: $b7
    jr z, jr_001_5d2d                             ; $5d14: $28 $17

    ld a, [hl+]                                   ; $5d16: $2a
    cp c                                          ; $5d17: $b9
    jr nz, jr_001_5d1e                            ; $5d18: $20 $04

    ld a, [hl]                                    ; $5d1a: $7e
    cp b                                          ; $5d1b: $b8
    jr z, jr_001_5d34                             ; $5d1c: $28 $16

jr_001_5d1e:
    inc hl                                        ; $5d1e: $23
    dec d                                         ; $5d1f: $15
    inc e                                         ; $5d20: $1c
    ld a, e                                       ; $5d21: $7b
    cp $10                                        ; $5d22: $fe $10
    jr c, jr_001_5d12                             ; $5d24: $38 $ec

    ld hl, $c147                                  ; $5d26: $21 $47 $c1
    ld e, $00                                     ; $5d29: $1e $00
    jr jr_001_5d12                                ; $5d2b: $18 $e5

jr_001_5d2d:
    ld [hl], c                                    ; $5d2d: $71
    inc hl                                        ; $5d2e: $23
    ld [hl], b                                    ; $5d2f: $70
    ld hl, $c145                                  ; $5d30: $21 $45 $c1
    inc [hl]                                      ; $5d33: $34

jr_001_5d34:
    ret                                           ; $5d34: $c9


Call_001_5d35:
    ld b, $ff                                     ; $5d35: $06 $ff

jr_001_5d37:
    ld hl, $c145                                  ; $5d37: $21 $45 $c1
    ld a, [hl]                                    ; $5d3a: $7e
    or a                                          ; $5d3b: $b7
    ret z                                         ; $5d3c: $c8

    dec [hl]                                      ; $5d3d: $35
    inc hl                                        ; $5d3e: $23
    ld a, [hl]                                    ; $5d3f: $7e
    ld b, a                                       ; $5d40: $47
    inc a                                         ; $5d41: $3c
    cp $10                                        ; $5d42: $fe $10
    jr c, jr_001_5d47                             ; $5d44: $38 $01

    xor a                                         ; $5d46: $af

jr_001_5d47:
    ld [hl+], a                                   ; $5d47: $22
    ld a, b                                       ; $5d48: $78
    call Call_000_318c                            ; $5d49: $cd $8c $31
    ld a, $ff                                     ; $5d4c: $3e $ff
    ld c, [hl]                                    ; $5d4e: $4e
    ld [hl+], a                                   ; $5d4f: $22
    ld b, [hl]                                    ; $5d50: $46
    ld [hl], a                                    ; $5d51: $77
    cp b                                          ; $5d52: $b8
    jr z, jr_001_5d37                             ; $5d53: $28 $e2

    ret                                           ; $5d55: $c9


Call_001_5d56:
    ld hl, $c145                                  ; $5d56: $21 $45 $c1
    ld a, [hl+]                                   ; $5d59: $2a
    or a                                          ; $5d5a: $b7
    ret z                                         ; $5d5b: $c8

    ld e, a                                       ; $5d5c: $5f
    ld a, [hl+]                                   ; $5d5d: $2a
    ld d, a                                       ; $5d5e: $57
    call Call_000_318c                            ; $5d5f: $cd $8c $31

jr_001_5d62:
    ld a, [hl+]                                   ; $5d62: $2a
    cp c                                          ; $5d63: $b9
    jr nz, jr_001_5d70                            ; $5d64: $20 $0a

    ld a, [hl]                                    ; $5d66: $7e
    cp b                                          ; $5d67: $b8
    jr nz, jr_001_5d70                            ; $5d68: $20 $06

    dec hl                                        ; $5d6a: $2b
    ld [hl], $ff                                  ; $5d6b: $36 $ff
    inc hl                                        ; $5d6d: $23
    ld [hl], $ff                                  ; $5d6e: $36 $ff

jr_001_5d70:
    dec e                                         ; $5d70: $1d
    ret z                                         ; $5d71: $c8

    inc hl                                        ; $5d72: $23
    inc d                                         ; $5d73: $14
    ld a, d                                       ; $5d74: $7a
    cp $10                                        ; $5d75: $fe $10
    jr c, jr_001_5d62                             ; $5d77: $38 $e9

    ld d, $00                                     ; $5d79: $16 $00
    ld hl, $c147                                  ; $5d7b: $21 $47 $c1
    jr jr_001_5d62                                ; $5d7e: $18 $e2

Call_001_5d80:
    inc b                                         ; $5d80: $04
    dec b                                         ; $5d81: $05
    jr z, jr_001_5d8f                             ; $5d82: $28 $0b

jr_001_5d84:
    push af                                       ; $5d84: $f5
    xor a                                         ; $5d85: $af
    ld [de], a                                    ; $5d86: $12
    inc de                                        ; $5d87: $13
    pop af                                        ; $5d88: $f1
    ld [de], a                                    ; $5d89: $12
    inc de                                        ; $5d8a: $13
    add [hl]                                      ; $5d8b: $86
    dec b                                         ; $5d8c: $05
    jr nz, jr_001_5d84                            ; $5d8d: $20 $f5

jr_001_5d8f:
    inc hl                                        ; $5d8f: $23
    ret                                           ; $5d90: $c9


Call_001_5d91:
    push bc                                       ; $5d91: $c5
    ld a, [bc]                                    ; $5d92: $0a
    ld l, a                                       ; $5d93: $6f
    inc bc                                        ; $5d94: $03
    ld a, [bc]                                    ; $5d95: $0a
    ld c, a                                       ; $5d96: $4f
    ld b, l                                       ; $5d97: $45
    ld hl, $5b30                                  ; $5d98: $21 $30 $5b

jr_001_5d9b:
    ld a, [hl+]                                   ; $5d9b: $2a
    cp b                                          ; $5d9c: $b8
    jr z, jr_001_5dd9                             ; $5d9d: $28 $3a

    or a                                          ; $5d9f: $b7
    jr nz, jr_001_5d9b                            ; $5da0: $20 $f9

    ld a, $7b                                     ; $5da2: $3e $7b
    cp b                                          ; $5da4: $b8
    jr nz, jr_001_5dce                            ; $5da5: $20 $27

    pop bc                                        ; $5da7: $c1
    push bc                                       ; $5da8: $c5
    ldh [$c1], a                                  ; $5da9: $e0 $c1
    ld a, $97                                     ; $5dab: $3e $97
    ldh [$bd], a                                  ; $5dad: $e0 $bd
    ld a, $72                                     ; $5daf: $3e $72
    ldh [$be], a                                  ; $5db1: $e0 $be
    call Call_000_3381                            ; $5db3: $cd $81 $33
    cp $2b                                        ; $5db6: $fe $2b
    jr z, jr_001_5dd9                             ; $5db8: $28 $1f

    cp $2e                                        ; $5dba: $fe $2e
    jr z, jr_001_5dd9                             ; $5dbc: $28 $1b

    cp $2f                                        ; $5dbe: $fe $2f
    jr z, jr_001_5dd9                             ; $5dc0: $28 $17

    cp $30                                        ; $5dc2: $fe $30
    jr z, jr_001_5dd9                             ; $5dc4: $28 $13

    cp $34                                        ; $5dc6: $fe $34
    jr z, jr_001_5dd9                             ; $5dc8: $28 $0f

    cp $3e                                        ; $5dca: $fe $3e
    jr z, jr_001_5dd9                             ; $5dcc: $28 $0b

jr_001_5dce:
    ld hl, $c17a                                  ; $5dce: $21 $7a $c1
    ld a, [hl+]                                   ; $5dd1: $2a
    add [hl]                                      ; $5dd2: $86
    ld b, a                                       ; $5dd3: $47
    ld hl, $c17c                                  ; $5dd4: $21 $7c $c1
    jr jr_001_5e06                                ; $5dd7: $18 $2d

jr_001_5dd9:
    cp $7e                                        ; $5dd9: $fe $7e
    jr nz, jr_001_5dea                            ; $5ddb: $20 $0d

    ld hl, $5b62                                  ; $5ddd: $21 $62 $5b

jr_001_5de0:
    ld a, [hl+]                                   ; $5de0: $2a
    cp c                                          ; $5de1: $b9
    jr z, jr_001_5dfb                             ; $5de2: $28 $17

    cp $ff                                        ; $5de4: $fe $ff
    jr nz, jr_001_5de0                            ; $5de6: $20 $f8

    jr jr_001_5dce                                ; $5de8: $18 $e4

jr_001_5dea:
    cp $7f                                        ; $5dea: $fe $7f
    jr nz, jr_001_5dfb                            ; $5dec: $20 $0d

    ld hl, $5b66                                  ; $5dee: $21 $66 $5b

jr_001_5df1:
    ld a, [hl+]                                   ; $5df1: $2a
    cp c                                          ; $5df2: $b9
    jr z, jr_001_5dfb                             ; $5df3: $28 $06

    cp $ff                                        ; $5df5: $fe $ff
    jr nz, jr_001_5df1                            ; $5df7: $20 $f8

    jr jr_001_5dce                                ; $5df9: $18 $d3

jr_001_5dfb:
    ld hl, $c17a                                  ; $5dfb: $21 $7a $c1
    ld a, [hl+]                                   ; $5dfe: $2a
    ld b, [hl]                                    ; $5dff: $46
    ld hl, $c17c                                  ; $5e00: $21 $7c $c1
    call Call_000_318c                            ; $5e03: $cd $8c $31

jr_001_5e06:
    ld a, b                                       ; $5e06: $78
    or a                                          ; $5e07: $b7
    jr z, jr_001_5e13                             ; $5e08: $28 $09

jr_001_5e0a:
    ld a, [hl]                                    ; $5e0a: $7e
    or a                                          ; $5e0b: $b7
    jr z, jr_001_5e17                             ; $5e0c: $28 $09

    inc hl                                        ; $5e0e: $23
    inc hl                                        ; $5e0f: $23
    dec b                                         ; $5e10: $05
    jr nz, jr_001_5e0a                            ; $5e11: $20 $f7

jr_001_5e13:
    ld a, $ff                                     ; $5e13: $3e $ff
    pop bc                                        ; $5e15: $c1
    ret                                           ; $5e16: $c9


jr_001_5e17:
    ld [hl], $ff                                  ; $5e17: $36 $ff
    inc hl                                        ; $5e19: $23
    ld a, [hl]                                    ; $5e1a: $7e
    pop bc                                        ; $5e1b: $c1
    ret                                           ; $5e1c: $c9


Jump_001_5e1d:
    push bc                                       ; $5e1d: $c5
    push af                                       ; $5e1e: $f5
    ld hl, $c17a                                  ; $5e1f: $21 $7a $c1
    ld a, [hl+]                                   ; $5e22: $2a
    add [hl]                                      ; $5e23: $86
    inc hl                                        ; $5e24: $23
    ld b, a                                       ; $5e25: $47
    pop af                                        ; $5e26: $f1

jr_001_5e27:
    inc hl                                        ; $5e27: $23
    cp [hl]                                       ; $5e28: $be
    jr z, jr_001_5e31                             ; $5e29: $28 $06

    inc hl                                        ; $5e2b: $23
    dec b                                         ; $5e2c: $05
    jr nz, jr_001_5e27                            ; $5e2d: $20 $f8

    pop bc                                        ; $5e2f: $c1
    ret                                           ; $5e30: $c9


jr_001_5e31:
    dec hl                                        ; $5e31: $2b
    ld e, l                                       ; $5e32: $5d
    ld d, h                                       ; $5e33: $54
    ld b, $00                                     ; $5e34: $06 $00
    ld hl, $c19c                                  ; $5e36: $21 $9c $c1

jr_001_5e39:
    ld a, [hl+]                                   ; $5e39: $2a
    ld c, a                                       ; $5e3a: $4f
    ld a, [hl-]                                   ; $5e3b: $3a
    or c                                          ; $5e3c: $b1
    jr nz, jr_001_5e44                            ; $5e3d: $20 $05

    ld [hl], e                                    ; $5e3f: $73
    inc hl                                        ; $5e40: $23
    ld [hl], d                                    ; $5e41: $72
    jr jr_001_5e57                                ; $5e42: $18 $13

jr_001_5e44:
    inc hl                                        ; $5e44: $23
    inc hl                                        ; $5e45: $23
    inc b                                         ; $5e46: $04
    ld a, b                                       ; $5e47: $78
    and $03                                       ; $5e48: $e6 $03
    jr nz, jr_001_5e39                            ; $5e4a: $20 $ed

    ld hl, $c0c4                                  ; $5e4c: $21 $c4 $c0
    set 0, [hl]                                   ; $5e4f: $cb $c6
    ld hl, $c19c                                  ; $5e51: $21 $9c $c1
    ld b, a                                       ; $5e54: $47
    jr jr_001_5e39                                ; $5e55: $18 $e2

jr_001_5e57:
    pop bc                                        ; $5e57: $c1
    ret                                           ; $5e58: $c9


    ld b, $04                                     ; $5e59: $06 $04
    ld hl, $c19c                                  ; $5e5b: $21 $9c $c1

jr_001_5e5e:
    ld a, [hl]                                    ; $5e5e: $7e
    ld e, a                                       ; $5e5f: $5f
    ld [hl], $00                                  ; $5e60: $36 $00
    inc hl                                        ; $5e62: $23
    ld a, [hl]                                    ; $5e63: $7e
    ld d, a                                       ; $5e64: $57
    ld [hl], $00                                  ; $5e65: $36 $00
    inc hl                                        ; $5e67: $23
    or e                                          ; $5e68: $b3
    jr z, jr_001_5e6e                             ; $5e69: $28 $03

    ld a, $00                                     ; $5e6b: $3e $00
    ld [de], a                                    ; $5e6d: $12

jr_001_5e6e:
    dec b                                         ; $5e6e: $05
    jr nz, jr_001_5e5e                            ; $5e6f: $20 $ed

    ret                                           ; $5e71: $c9


    db $00, $10, $8d

    ld bc, $8d10                                  ; $5e75: $01 $10 $8d
    ld [bc], a                                    ; $5e78: $02
    db $10                                        ; $5e79: $10
    adc l                                         ; $5e7a: $8d
    inc bc                                        ; $5e7b: $03
    db $10                                        ; $5e7c: $10
    adc l                                         ; $5e7d: $8d

    db $04, $10, $8d

    dec b                                         ; $5e81: $05
    db $10                                        ; $5e82: $10
    adc l                                         ; $5e83: $8d
    ld b, $10                                     ; $5e84: $06 $10
    adc l                                         ; $5e86: $8d
    rlca                                          ; $5e87: $07
    db $10                                        ; $5e88: $10
    adc l                                         ; $5e89: $8d

    db $08, $10, $8d, $09, $10, $8d

    ld a, [bc]                                    ; $5e90: $0a
    db $10                                        ; $5e91: $10
    adc c                                         ; $5e92: $89
    dec bc                                        ; $5e93: $0b
    db $10                                        ; $5e94: $10
    adc l                                         ; $5e95: $8d
    inc c                                         ; $5e96: $0c
    db $10                                        ; $5e97: $10
    adc l                                         ; $5e98: $8d
    dec c                                         ; $5e99: $0d
    db $10                                        ; $5e9a: $10
    adc l                                         ; $5e9b: $8d
    ld c, $10                                     ; $5e9c: $0e $10
    adc l                                         ; $5e9e: $8d
    rrca                                          ; $5e9f: $0f
    db $10                                        ; $5ea0: $10
    adc l                                         ; $5ea1: $8d
    db $10                                        ; $5ea2: $10
    db $10                                        ; $5ea3: $10

jr_001_5ea4:
    adc l                                         ; $5ea4: $8d
    ld de, $8ed0                                  ; $5ea5: $11 $d0 $8e
    ld [de], a                                    ; $5ea8: $12
    db $10                                        ; $5ea9: $10
    adc l                                         ; $5eaa: $8d
    inc de                                        ; $5eab: $13
    db $10                                        ; $5eac: $10
    adc l                                         ; $5ead: $8d
    inc d                                         ; $5eae: $14
    db $10                                        ; $5eaf: $10
    adc l                                         ; $5eb0: $8d
    dec d                                         ; $5eb1: $15
    db $10                                        ; $5eb2: $10
    adc l                                         ; $5eb3: $8d
    ld d, $10                                     ; $5eb4: $16 $10
    adc l                                         ; $5eb6: $8d
    rla                                           ; $5eb7: $17
    db $10                                        ; $5eb8: $10
    adc l                                         ; $5eb9: $8d
    jr jr_001_5ecc                                ; $5eba: $18 $10

    adc l                                         ; $5ebc: $8d
    add hl, de                                    ; $5ebd: $19
    db $10                                        ; $5ebe: $10
    adc l                                         ; $5ebf: $8d
    ld a, [de]                                    ; $5ec0: $1a
    db $10                                        ; $5ec1: $10
    adc l                                         ; $5ec2: $8d
    dec de                                        ; $5ec3: $1b
    db $10                                        ; $5ec4: $10
    adc l                                         ; $5ec5: $8d
    inc e                                         ; $5ec6: $1c
    db $10                                        ; $5ec7: $10
    adc l                                         ; $5ec8: $8d
    dec e                                         ; $5ec9: $1d
    db $10                                        ; $5eca: $10
    adc l                                         ; $5ecb: $8d

jr_001_5ecc:
    ld e, $d0                                     ; $5ecc: $1e $d0
    adc [hl]                                      ; $5ece: $8e
    rra                                           ; $5ecf: $1f
    ret nc                                        ; $5ed0: $d0

    adc [hl]                                      ; $5ed1: $8e
    jr nz, jr_001_5ea4                            ; $5ed2: $20 $d0

jr_001_5ed4:
    adc [hl]                                      ; $5ed4: $8e
    ld hl, $8ed0                                  ; $5ed5: $21 $d0 $8e
    ld [hl+], a                                   ; $5ed8: $22
    ret nc                                        ; $5ed9: $d0

    adc [hl]                                      ; $5eda: $8e
    inc hl                                        ; $5edb: $23
    ret nc                                        ; $5edc: $d0

    adc [hl]                                      ; $5edd: $8e
    inc h                                         ; $5ede: $24
    db $10                                        ; $5edf: $10
    adc l                                         ; $5ee0: $8d
    dec h                                         ; $5ee1: $25
    db $10                                        ; $5ee2: $10
    adc l                                         ; $5ee3: $8d
    ld h, $10                                     ; $5ee4: $26 $10
    adc l                                         ; $5ee6: $8d
    daa                                           ; $5ee7: $27
    ret nc                                        ; $5ee8: $d0

    adc [hl]                                      ; $5ee9: $8e
    jr z, jr_001_5efc                             ; $5eea: $28 $10

    adc l                                         ; $5eec: $8d
    add hl, hl                                    ; $5eed: $29
    db $10                                        ; $5eee: $10
    adc l                                         ; $5eef: $8d
    ld a, [hl+]                                   ; $5ef0: $2a
    db $10                                        ; $5ef1: $10
    adc l                                         ; $5ef2: $8d
    dec hl                                        ; $5ef3: $2b
    db $10                                        ; $5ef4: $10
    adc l                                         ; $5ef5: $8d
    inc l                                         ; $5ef6: $2c
    db $10                                        ; $5ef7: $10
    adc l                                         ; $5ef8: $8d
    dec l                                         ; $5ef9: $2d
    db $10                                        ; $5efa: $10
    adc l                                         ; $5efb: $8d

jr_001_5efc:
    ld l, $d0                                     ; $5efc: $2e $d0
    adc [hl]                                      ; $5efe: $8e
    cpl                                           ; $5eff: $2f
    ret nc                                        ; $5f00: $d0

    adc [hl]                                      ; $5f01: $8e
    jr nc, jr_001_5ed4                            ; $5f02: $30 $d0

    adc [hl]                                      ; $5f04: $8e
    ld sp, $8ed0                                  ; $5f05: $31 $d0 $8e
    ld [hl-], a                                   ; $5f08: $32
    ret nc                                        ; $5f09: $d0

    adc [hl]                                      ; $5f0a: $8e

    db $33, $10, $8d

    inc [hl]                                      ; $5f0e: $34
    db $10                                        ; $5f0f: $10
    adc l                                         ; $5f10: $8d
    dec [hl]                                      ; $5f11: $35
    db $10                                        ; $5f12: $10
    adc l                                         ; $5f13: $8d
    ld [hl], $10                                  ; $5f14: $36 $10
    adc l                                         ; $5f16: $8d
    scf                                           ; $5f17: $37
    db $10                                        ; $5f18: $10
    adc l                                         ; $5f19: $8d
    jr c, jr_001_5f2c                             ; $5f1a: $38 $10

    adc l                                         ; $5f1c: $8d
    add hl, sp                                    ; $5f1d: $39
    db $10                                        ; $5f1e: $10
    adc l                                         ; $5f1f: $8d
    ld a, [hl-]                                   ; $5f20: $3a
    db $10                                        ; $5f21: $10
    adc l                                         ; $5f22: $8d
    dec sp                                        ; $5f23: $3b
    ret nc                                        ; $5f24: $d0

    adc [hl]                                      ; $5f25: $8e
    inc a                                         ; $5f26: $3c
    db $10                                        ; $5f27: $10
    adc l                                         ; $5f28: $8d
    dec a                                         ; $5f29: $3d
    db $10                                        ; $5f2a: $10
    adc l                                         ; $5f2b: $8d

jr_001_5f2c:
    ld a, $10                                     ; $5f2c: $3e $10
    adc l                                         ; $5f2e: $8d
    ccf                                           ; $5f2f: $3f
    db $10                                        ; $5f30: $10
    adc l                                         ; $5f31: $8d
    ld b, b                                       ; $5f32: $40
    db $10                                        ; $5f33: $10
    adc l                                         ; $5f34: $8d
    ld b, c                                       ; $5f35: $41
    ret nc                                        ; $5f36: $d0

    adc [hl]                                      ; $5f37: $8e
    ld b, d                                       ; $5f38: $42
    db $10                                        ; $5f39: $10
    adc l                                         ; $5f3a: $8d
    ld b, e                                       ; $5f3b: $43
    db $10                                        ; $5f3c: $10
    adc l                                         ; $5f3d: $8d
    ld b, h                                       ; $5f3e: $44
    db $10                                        ; $5f3f: $10
    adc l                                         ; $5f40: $8d
    ld b, l                                       ; $5f41: $45
    db $10                                        ; $5f42: $10
    adc l                                         ; $5f43: $8d
    ld b, [hl]                                    ; $5f44: $46
    db $10                                        ; $5f45: $10
    adc l                                         ; $5f46: $8d
    ld b, a                                       ; $5f47: $47
    db $10                                        ; $5f48: $10
    adc l                                         ; $5f49: $8d
    ld c, b                                       ; $5f4a: $48
    db $10                                        ; $5f4b: $10
    adc l                                         ; $5f4c: $8d
    ld c, c                                       ; $5f4d: $49
    db $10                                        ; $5f4e: $10
    adc l                                         ; $5f4f: $8d
    ld c, d                                       ; $5f50: $4a
    db $10                                        ; $5f51: $10
    adc l                                         ; $5f52: $8d
    ld c, e                                       ; $5f53: $4b
    db $10                                        ; $5f54: $10
    adc l                                         ; $5f55: $8d
    ld c, h                                       ; $5f56: $4c
    db $10                                        ; $5f57: $10
    adc l                                         ; $5f58: $8d
    ld c, l                                       ; $5f59: $4d
    db $10                                        ; $5f5a: $10
    adc l                                         ; $5f5b: $8d
    ld c, [hl]                                    ; $5f5c: $4e
    db $10                                        ; $5f5d: $10
    adc l                                         ; $5f5e: $8d
    ld c, a                                       ; $5f5f: $4f
    db $10                                        ; $5f60: $10
    adc l                                         ; $5f61: $8d
    ld d, b                                       ; $5f62: $50
    db $10                                        ; $5f63: $10
    adc l                                         ; $5f64: $8d
    ld d, c                                       ; $5f65: $51
    db $10                                        ; $5f66: $10
    adc l                                         ; $5f67: $8d
    ld d, d                                       ; $5f68: $52
    db $10                                        ; $5f69: $10
    adc l                                         ; $5f6a: $8d
    ld d, e                                       ; $5f6b: $53
    db $10                                        ; $5f6c: $10
    adc l                                         ; $5f6d: $8d
    ld d, h                                       ; $5f6e: $54
    db $10                                        ; $5f6f: $10
    adc l                                         ; $5f70: $8d
    ld d, l                                       ; $5f71: $55
    db $10                                        ; $5f72: $10
    adc l                                         ; $5f73: $8d
    ld d, [hl]                                    ; $5f74: $56
    db $10                                        ; $5f75: $10
    adc l                                         ; $5f76: $8d
    ld d, a                                       ; $5f77: $57
    db $10                                        ; $5f78: $10
    adc l                                         ; $5f79: $8d
    ld e, b                                       ; $5f7a: $58
    db $10                                        ; $5f7b: $10
    adc l                                         ; $5f7c: $8d
    ld e, c                                       ; $5f7d: $59
    db $10                                        ; $5f7e: $10
    adc l                                         ; $5f7f: $8d
    ld e, d                                       ; $5f80: $5a
    db $10                                        ; $5f81: $10
    adc l                                         ; $5f82: $8d
    ld e, e                                       ; $5f83: $5b
    db $10                                        ; $5f84: $10
    adc l                                         ; $5f85: $8d
    ld e, h                                       ; $5f86: $5c
    db $10                                        ; $5f87: $10
    adc l                                         ; $5f88: $8d
    ld e, l                                       ; $5f89: $5d
    db $10                                        ; $5f8a: $10
    adc l                                         ; $5f8b: $8d
    ld e, [hl]                                    ; $5f8c: $5e
    db $10                                        ; $5f8d: $10
    adc l                                         ; $5f8e: $8d
    ld e, a                                       ; $5f8f: $5f
    db $10                                        ; $5f90: $10
    adc l                                         ; $5f91: $8d
    ld h, b                                       ; $5f92: $60
    db $10                                        ; $5f93: $10
    adc l                                         ; $5f94: $8d
    ld h, c                                       ; $5f95: $61
    ldh a, [$93]                                  ; $5f96: $f0 $93
    ld h, d                                       ; $5f98: $62
    db $10                                        ; $5f99: $10
    adc l                                         ; $5f9a: $8d

    db $89, $63, $01

    ret z                                         ; $5f9e: $c8

    ld h, e                                       ; $5f9f: $63
    ld bc, $639a                                  ; $5fa0: $01 $9a $63
    ld bc, $639a                                  ; $5fa3: $01 $9a $63
    db $01                                        ; $5fa6: $01

    db $b9, $63, $01

    sbc d                                         ; $5faa: $9a
    ld h, e                                       ; $5fab: $63
    ld bc, $63b9                                  ; $5fac: $01 $b9 $63
    ld bc, $639a                                  ; $5faf: $01 $9a $63
    db $01                                        ; $5fb2: $01

    db $22, $64, $01, $40, $64, $01

    add b                                         ; $5fb9: $80
    ld [hl], l                                    ; $5fba: $75
    inc bc                                        ; $5fbb: $03
    cp c                                          ; $5fbc: $b9
    ld h, e                                       ; $5fbd: $63
    ld bc, $63c8                                  ; $5fbe: $01 $c8 $63
    ld bc, $63c8                                  ; $5fc1: $01 $c8 $63
    ld bc, $6336                                  ; $5fc4: $01 $36 $63
    ld bc, $0000                                  ; $5fc7: $01 $00 $00
    nop                                           ; $5fca: $00
    nop                                           ; $5fcb: $00
    nop                                           ; $5fcc: $00
    nop                                           ; $5fcd: $00
    cp c                                          ; $5fce: $b9
    ld h, e                                       ; $5fcf: $63
    ld bc, $63c8                                  ; $5fd0: $01 $c8 $63
    ld bc, $0000                                  ; $5fd3: $01 $00 $00
    nop                                           ; $5fd6: $00
    sbc d                                         ; $5fd7: $9a
    ld h, e                                       ; $5fd8: $63
    ld bc, $63c8                                  ; $5fd9: $01 $c8 $63
    ld bc, $6404                                  ; $5fdc: $01 $04 $64
    ld bc, $63d7                                  ; $5fdf: $01 $d7 $63
    ld bc, $63b9                                  ; $5fe2: $01 $b9 $63
    ld bc, $63b9                                  ; $5fe5: $01 $b9 $63
    ld bc, $63b9                                  ; $5fe8: $01 $b9 $63
    ld bc, $63b9                                  ; $5feb: $01 $b9 $63
    ld bc, $63b9                                  ; $5fee: $01 $b9 $63
    ld bc, $63b9                                  ; $5ff1: $01 $b9 $63
    ld bc, $6361                                  ; $5ff4: $01 $61 $63
    ld bc, $63b9                                  ; $5ff7: $01 $b9 $63
    ld bc, $63b9                                  ; $5ffa: $01 $b9 $63
    ld bc, $63b9                                  ; $5ffd: $01 $b9 $63
    ld bc, $63b9                                  ; $6000: $01 $b9 $63
    ld bc, $63b9                                  ; $6003: $01 $b9 $63
    ld bc, $0000                                  ; $6006: $01 $00 $00
    nop                                           ; $6009: $00
    cp c                                          ; $600a: $b9
    ld h, e                                       ; $600b: $63
    ld bc, $0000                                  ; $600c: $01 $00 $00
    nop                                           ; $600f: $00
    nop                                           ; $6010: $00
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    and $63                                       ; $6013: $e6 $63
    ld bc, $63b9                                  ; $6015: $01 $b9 $63
    ld bc, $63e6                                  ; $6018: $01 $e6 $63
    ld bc, $63b9                                  ; $601b: $01 $b9 $63
    ld bc, $6413                                  ; $601e: $01 $13 $64
    ld bc, $6404                                  ; $6021: $01 $04 $64
    ld bc, $63d7                                  ; $6024: $01 $d7 $63
    ld bc, $63e6                                  ; $6027: $01 $e6 $63
    ld bc, $63f5                                  ; $602a: $01 $f5 $63
    ld bc, $63d7                                  ; $602d: $01 $d7 $63
    ld bc, $6413                                  ; $6030: $01 $13 $64
    db $01                                        ; $6033: $01

    db $9a, $63, $01

    ret z                                         ; $6037: $c8

    ld h, e                                       ; $6038: $63
    ld bc, $63c8                                  ; $6039: $01 $c8 $63
    ld bc, $6431                                  ; $603c: $01 $31 $64
    ld bc, $0000                                  ; $603f: $01 $00 $00
    nop                                           ; $6042: $00
    ret z                                         ; $6043: $c8

    ld h, e                                       ; $6044: $63
    ld bc, $0000                                  ; $6045: $01 $00 $00
    nop                                           ; $6048: $00
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    nop                                           ; $604b: $00
    cp c                                          ; $604c: $b9
    ld h, e                                       ; $604d: $63
    ld bc, $0000                                  ; $604e: $01 $00 $00
    nop                                           ; $6051: $00
    rst $10                                       ; $6052: $d7
    ld h, e                                       ; $6053: $63
    ld bc, $0000                                  ; $6054: $01 $00 $00
    nop                                           ; $6057: $00
    cp c                                          ; $6058: $b9
    ld h, e                                       ; $6059: $63
    ld bc, $63b9                                  ; $605a: $01 $b9 $63
    ld bc, $63d7                                  ; $605d: $01 $d7 $63
    ld bc, $63b9                                  ; $6060: $01 $b9 $63
    ld bc, $6422                                  ; $6063: $01 $22 $64
    ld bc, $634d                                  ; $6066: $01 $4d $63
    ld bc, $63e6                                  ; $6069: $01 $e6 $63
    ld bc, $6422                                  ; $606c: $01 $22 $64
    ld bc, $6413                                  ; $606f: $01 $13 $64
    ld bc, $63b9                                  ; $6072: $01 $b9 $63
    ld bc, $63b9                                  ; $6075: $01 $b9 $63
    ld bc, $63c8                                  ; $6078: $01 $c8 $63
    ld bc, $6375                                  ; $607b: $01 $75 $63
    ld bc, $0000                                  ; $607e: $01 $00 $00
    nop                                           ; $6081: $00
    rst $10                                       ; $6082: $d7
    ld h, e                                       ; $6083: $63
    ld bc, $0000                                  ; $6084: $01 $00 $00
    nop                                           ; $6087: $00
    cp c                                          ; $6088: $b9
    ld h, e                                       ; $6089: $63
    ld bc, $63c8                                  ; $608a: $01 $c8 $63
    ld bc, $63e6                                  ; $608d: $01 $e6 $63
    ld bc, $63f5                                  ; $6090: $01 $f5 $63
    ld bc, $63e6                                  ; $6093: $01 $e6 $63
    ld bc, $0000                                  ; $6096: $01 $00 $00
    nop                                           ; $6099: $00
    cp c                                          ; $609a: $b9
    ld h, e                                       ; $609b: $63
    ld bc, $0000                                  ; $609c: $01 $00 $00
    nop                                           ; $609f: $00
    ret z                                         ; $60a0: $c8

    ld h, e                                       ; $60a1: $63
    ld bc, $0000                                  ; $60a2: $01 $00 $00
    nop                                           ; $60a5: $00
    nop                                           ; $60a6: $00
    nop                                           ; $60a7: $00
    nop                                           ; $60a8: $00
    nop                                           ; $60a9: $00
    nop                                           ; $60aa: $00
    nop                                           ; $60ab: $00
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    nop                                           ; $60ae: $00
    ret z                                         ; $60af: $c8

    ld h, e                                       ; $60b0: $63
    ld bc, $63b9                                  ; $60b1: $01 $b9 $63
    ld bc, $0000                                  ; $60b4: $01 $00 $00
    nop                                           ; $60b7: $00
    cp c                                          ; $60b8: $b9
    ld h, e                                       ; $60b9: $63
    ld bc, $63aa                                  ; $60ba: $01 $aa $63
    ld bc, $63b9                                  ; $60bd: $01 $b9 $63
    ld bc, $63b9                                  ; $60c0: $01 $b9 $63
    db $01                                        ; $60c3: $01

    db $db, $5a

    db $db                                        ; $60c6: $db
    ld e, d                                       ; $60c7: $5a
    db $db                                        ; $60c8: $db
    ld e, d                                       ; $60c9: $5a
    db $db                                        ; $60ca: $db
    ld e, d                                       ; $60cb: $5a

    db $f9, $5a

    db $db                                        ; $60ce: $db
    ld e, d                                       ; $60cf: $5a
    db $db                                        ; $60d0: $db
    ld e, d                                       ; $60d1: $5a
    db $db                                        ; $60d2: $db
    ld e, d                                       ; $60d3: $5a

    db $db, $5a, $db, $5a

    inc bc                                        ; $60d8: $03
    ld e, e                                       ; $60d9: $5b
    ld [$db5a], a                                 ; $60da: $ea $5a $db
    ld e, d                                       ; $60dd: $5a
    db $db                                        ; $60de: $db
    ld e, d                                       ; $60df: $5a
    ld sp, hl                                     ; $60e0: $f9
    ld e, d                                       ; $60e1: $5a
    db $db                                        ; $60e2: $db
    ld e, d                                       ; $60e3: $5a
    db $db                                        ; $60e4: $db
    ld e, d                                       ; $60e5: $5a
    db $db                                        ; $60e6: $db
    ld e, d                                       ; $60e7: $5a
    cp $5a                                        ; $60e8: $fe $5a
    db $db                                        ; $60ea: $db
    ld e, d                                       ; $60eb: $5a
    db $db                                        ; $60ec: $db
    ld e, d                                       ; $60ed: $5a
    ld [$ea5a], a                                 ; $60ee: $ea $5a $ea
    ld e, d                                       ; $60f1: $5a
    dec c                                         ; $60f2: $0d
    ld e, e                                       ; $60f3: $5b
    db $db                                        ; $60f4: $db
    ld e, d                                       ; $60f5: $5a
    db $db                                        ; $60f6: $db
    ld e, d                                       ; $60f7: $5a
    db $db                                        ; $60f8: $db
    ld e, d                                       ; $60f9: $5a
    inc bc                                        ; $60fa: $03
    ld e, e                                       ; $60fb: $5b
    inc bc                                        ; $60fc: $03
    ld e, e                                       ; $60fd: $5b
    inc bc                                        ; $60fe: $03
    ld e, e                                       ; $60ff: $5b
    db $db                                        ; $6100: $db
    ld e, d                                       ; $6101: $5a
    db $db                                        ; $6102: $db
    ld e, d                                       ; $6103: $5a
    ld [$db5b], sp                                ; $6104: $08 $5b $db
    ld e, d                                       ; $6107: $5a
    db $db                                        ; $6108: $db
    ld e, d                                       ; $6109: $5a
    dec c                                         ; $610a: $0d
    ld e, e                                       ; $610b: $5b
    db $db                                        ; $610c: $db
    ld e, d                                       ; $610d: $5a
    db $db                                        ; $610e: $db
    ld e, d                                       ; $610f: $5a
    db $db                                        ; $6110: $db
    ld e, d                                       ; $6111: $5a
    db $db                                        ; $6112: $db
    ld e, d                                       ; $6113: $5a
    db $db                                        ; $6114: $db
    ld e, d                                       ; $6115: $5a
    db $f4                                        ; $6116: $f4
    ld e, d                                       ; $6117: $5a
    db $f4                                        ; $6118: $f4
    ld e, d                                       ; $6119: $5a
    cp $5a                                        ; $611a: $fe $5a
    ld sp, hl                                     ; $611c: $f9
    ld e, d                                       ; $611d: $5a
    db $db                                        ; $611e: $db
    ld e, d                                       ; $611f: $5a
    push hl                                       ; $6120: $e5
    ld e, d                                       ; $6121: $5a
    push hl                                       ; $6122: $e5
    ld e, d                                       ; $6123: $5a
    push hl                                       ; $6124: $e5
    ld e, d                                       ; $6125: $5a
    push hl                                       ; $6126: $e5
    ld e, d                                       ; $6127: $5a
    push hl                                       ; $6128: $e5
    ld e, d                                       ; $6129: $5a

    db $db, $5a

    db $db                                        ; $612c: $db
    ld e, d                                       ; $612d: $5a
    db $db                                        ; $612e: $db
    ld e, d                                       ; $612f: $5a
    ld [$db5a], a                                 ; $6130: $ea $5a $db
    ld e, d                                       ; $6133: $5a
    db $db                                        ; $6134: $db
    ld e, d                                       ; $6135: $5a
    db $db                                        ; $6136: $db
    ld e, d                                       ; $6137: $5a
    db $db                                        ; $6138: $db
    ld e, d                                       ; $6139: $5a
    rst $28                                       ; $613a: $ef
    ld e, d                                       ; $613b: $5a
    db $db                                        ; $613c: $db
    ld e, d                                       ; $613d: $5a
    db $db                                        ; $613e: $db
    ld e, d                                       ; $613f: $5a
    db $db                                        ; $6140: $db
    ld e, d                                       ; $6141: $5a
    db $db                                        ; $6142: $db
    ld e, d                                       ; $6143: $5a
    db $db                                        ; $6144: $db
    ld e, d                                       ; $6145: $5a
    push hl                                       ; $6146: $e5
    ld e, d                                       ; $6147: $5a
    db $db                                        ; $6148: $db
    ld e, d                                       ; $6149: $5a
    db $db                                        ; $614a: $db
    ld e, d                                       ; $614b: $5a
    ld [$f45a], a                                 ; $614c: $ea $5a $f4
    ld e, d                                       ; $614f: $5a
    db $db                                        ; $6150: $db
    ld e, d                                       ; $6151: $5a
    ld [$db5a], a                                 ; $6152: $ea $5a $db
    ld e, d                                       ; $6155: $5a
    db $db                                        ; $6156: $db
    ld e, d                                       ; $6157: $5a
    ld [$db5a], a                                 ; $6158: $ea $5a $db
    ld e, d                                       ; $615b: $5a
    db $db                                        ; $615c: $db
    ld e, d                                       ; $615d: $5a
    db $db                                        ; $615e: $db
    ld e, d                                       ; $615f: $5a
    db $db                                        ; $6160: $db
    ld e, d                                       ; $6161: $5a
    db $db                                        ; $6162: $db
    ld e, d                                       ; $6163: $5a
    db $db                                        ; $6164: $db
    ld e, d                                       ; $6165: $5a
    inc bc                                        ; $6166: $03
    ld e, e                                       ; $6167: $5b
    ld [$db5a], a                                 ; $6168: $ea $5a $db
    ld e, d                                       ; $616b: $5a
    cp $5a                                        ; $616c: $fe $5a
    db $db                                        ; $616e: $db
    ld e, d                                       ; $616f: $5a
    ld [$db5a], a                                 ; $6170: $ea $5a $db
    ld e, d                                       ; $6173: $5a
    db $db                                        ; $6174: $db
    ld e, d                                       ; $6175: $5a
    db $db                                        ; $6176: $db
    ld e, d                                       ; $6177: $5a
    db $db                                        ; $6178: $db
    ld e, d                                       ; $6179: $5a
    db $db                                        ; $617a: $db
    ld e, d                                       ; $617b: $5a
    db $db                                        ; $617c: $db
    ld e, d                                       ; $617d: $5a
    db $db                                        ; $617e: $db
    ld e, d                                       ; $617f: $5a
    db $db                                        ; $6180: $db
    ld e, d                                       ; $6181: $5a
    db $db                                        ; $6182: $db
    ld e, d                                       ; $6183: $5a
    db $db                                        ; $6184: $db
    ld e, d                                       ; $6185: $5a
    ldh [$5a], a                                  ; $6186: $e0 $5a
    ld sp, hl                                     ; $6188: $f9
    ld e, d                                       ; $6189: $5a

    push de                                       ; $618a: $d5
    push hl                                       ; $618b: $e5
    ld hl, $cd3a                                  ; $618c: $21 $3a $cd
    ld a, [hl+]                                   ; $618f: $2a
    ld h, [hl]                                    ; $6190: $66
    ld l, a                                       ; $6191: $6f
    call Call_000_314a                            ; $6192: $cd $4a $31
    ld a, l                                       ; $6195: $7d
    ld [$cd49], a                                 ; $6196: $ea $49 $cd
    ld a, h                                       ; $6199: $7c
    ld [$cd4a], a                                 ; $619a: $ea $4a $cd
    ld de, $ff60                                  ; $619d: $11 $60 $ff
    add hl, de                                    ; $61a0: $19
    ld a, l                                       ; $61a1: $7d
    ld [$cd45], a                                 ; $61a2: $ea $45 $cd
    ld a, h                                       ; $61a5: $7c
    ld [$cd46], a                                 ; $61a6: $ea $46 $cd
    ld hl, $cd3c                                  ; $61a9: $21 $3c $cd
    ld a, [hl+]                                   ; $61ac: $2a
    ld h, [hl]                                    ; $61ad: $66
    ld l, a                                       ; $61ae: $6f
    call Call_000_314a                            ; $61af: $cd $4a $31
    ld a, l                                       ; $61b2: $7d
    ld [$cd4b], a                                 ; $61b3: $ea $4b $cd
    ld a, h                                       ; $61b6: $7c
    ld [$cd4c], a                                 ; $61b7: $ea $4c $cd
    ld de, $ff70                                  ; $61ba: $11 $70 $ff
    add hl, de                                    ; $61bd: $19
    ld a, l                                       ; $61be: $7d
    ld [$cd47], a                                 ; $61bf: $ea $47 $cd
    ld a, h                                       ; $61c2: $7c
    ld [$cd48], a                                 ; $61c3: $ea $48 $cd
    pop hl                                        ; $61c6: $e1
    pop de                                        ; $61c7: $d1
    ret                                           ; $61c8: $c9


    db $8f, $62

    adc a                                         ; $61cb: $8f
    ld h, d                                       ; $61cc: $62
    adc a                                         ; $61cd: $8f
    ld h, d                                       ; $61ce: $62
    adc a                                         ; $61cf: $8f
    ld h, d                                       ; $61d0: $62

    db $8f, $62

    adc a                                         ; $61d3: $8f
    ld h, d                                       ; $61d4: $62
    adc a                                         ; $61d5: $8f
    ld h, d                                       ; $61d6: $62
    adc a                                         ; $61d7: $8f
    ld h, d                                       ; $61d8: $62

    db $a4, $62, $8f, $62

    sub c                                         ; $61dd: $91
    ld h, d                                       ; $61de: $62
    adc a                                         ; $61df: $8f
    ld h, d                                       ; $61e0: $62
    adc a                                         ; $61e1: $8f
    ld h, d                                       ; $61e2: $62
    adc a                                         ; $61e3: $8f
    ld h, d                                       ; $61e4: $62
    adc a                                         ; $61e5: $8f
    ld h, d                                       ; $61e6: $62
    adc a                                         ; $61e7: $8f
    ld h, d                                       ; $61e8: $62
    sbc d                                         ; $61e9: $9a
    ld h, d                                       ; $61ea: $62
    adc a                                         ; $61eb: $8f
    ld h, d                                       ; $61ec: $62
    adc a                                         ; $61ed: $8f
    ld h, d                                       ; $61ee: $62
    adc a                                         ; $61ef: $8f
    ld h, d                                       ; $61f0: $62
    adc a                                         ; $61f1: $8f
    ld h, d                                       ; $61f2: $62
    sbc d                                         ; $61f3: $9a
    ld h, d                                       ; $61f4: $62
    sbc b                                         ; $61f5: $98
    ld h, d                                       ; $61f6: $62
    adc a                                         ; $61f7: $8f
    ld h, d                                       ; $61f8: $62
    adc a                                         ; $61f9: $8f
    ld h, d                                       ; $61fa: $62
    adc a                                         ; $61fb: $8f
    ld h, d                                       ; $61fc: $62
    adc a                                         ; $61fd: $8f
    ld h, d                                       ; $61fe: $62
    adc a                                         ; $61ff: $8f
    ld h, d                                       ; $6200: $62
    adc a                                         ; $6201: $8f
    ld h, d                                       ; $6202: $62
    adc a                                         ; $6203: $8f
    ld h, d                                       ; $6204: $62
    adc a                                         ; $6205: $8f
    ld h, d                                       ; $6206: $62
    adc a                                         ; $6207: $8f
    ld h, d                                       ; $6208: $62
    xor c                                         ; $6209: $a9
    ld h, d                                       ; $620a: $62
    adc a                                         ; $620b: $8f
    ld h, d                                       ; $620c: $62
    adc a                                         ; $620d: $8f
    ld h, d                                       ; $620e: $62
    adc a                                         ; $620f: $8f
    ld h, d                                       ; $6210: $62
    adc a                                         ; $6211: $8f
    ld h, d                                       ; $6212: $62
    adc a                                         ; $6213: $8f
    ld h, d                                       ; $6214: $62
    adc a                                         ; $6215: $8f
    ld h, d                                       ; $6216: $62
    adc a                                         ; $6217: $8f
    ld h, d                                       ; $6218: $62
    sbc [hl]                                      ; $6219: $9e
    ld h, d                                       ; $621a: $62
    adc a                                         ; $621b: $8f
    ld h, d                                       ; $621c: $62
    adc a                                         ; $621d: $8f
    ld h, d                                       ; $621e: $62
    adc a                                         ; $621f: $8f
    ld h, d                                       ; $6220: $62
    adc a                                         ; $6221: $8f
    ld h, d                                       ; $6222: $62
    adc a                                         ; $6223: $8f
    ld h, d                                       ; $6224: $62
    adc a                                         ; $6225: $8f
    ld h, d                                       ; $6226: $62
    adc a                                         ; $6227: $8f
    ld h, d                                       ; $6228: $62
    adc a                                         ; $6229: $8f
    ld h, d                                       ; $622a: $62
    adc a                                         ; $622b: $8f
    ld h, d                                       ; $622c: $62
    adc a                                         ; $622d: $8f
    ld h, d                                       ; $622e: $62

    db $8f, $62

    sbc d                                         ; $6231: $9a
    ld h, d                                       ; $6232: $62
    adc a                                         ; $6233: $8f
    ld h, d                                       ; $6234: $62
    adc a                                         ; $6235: $8f
    ld h, d                                       ; $6236: $62
    adc a                                         ; $6237: $8f
    ld h, d                                       ; $6238: $62
    adc a                                         ; $6239: $8f
    ld h, d                                       ; $623a: $62
    sbc [hl]                                      ; $623b: $9e
    ld h, d                                       ; $623c: $62
    adc a                                         ; $623d: $8f
    ld h, d                                       ; $623e: $62
    sub l                                         ; $623f: $95
    ld h, d                                       ; $6240: $62
    adc a                                         ; $6241: $8f
    ld h, d                                       ; $6242: $62
    adc a                                         ; $6243: $8f
    ld h, d                                       ; $6244: $62
    adc a                                         ; $6245: $8f
    ld h, d                                       ; $6246: $62
    adc a                                         ; $6247: $8f
    ld h, d                                       ; $6248: $62
    sbc d                                         ; $6249: $9a
    ld h, d                                       ; $624a: $62
    adc a                                         ; $624b: $8f
    ld h, d                                       ; $624c: $62
    sbc h                                         ; $624d: $9c
    ld h, d                                       ; $624e: $62
    adc a                                         ; $624f: $8f
    ld h, d                                       ; $6250: $62
    adc a                                         ; $6251: $8f
    ld h, d                                       ; $6252: $62
    adc a                                         ; $6253: $8f
    ld h, d                                       ; $6254: $62
    adc a                                         ; $6255: $8f
    ld h, d                                       ; $6256: $62
    adc a                                         ; $6257: $8f
    ld h, d                                       ; $6258: $62
    adc a                                         ; $6259: $8f
    ld h, d                                       ; $625a: $62
    adc a                                         ; $625b: $8f
    ld h, d                                       ; $625c: $62
    sub h                                         ; $625d: $94
    ld h, d                                       ; $625e: $62
    adc a                                         ; $625f: $8f
    ld h, d                                       ; $6260: $62
    adc a                                         ; $6261: $8f
    ld h, d                                       ; $6262: $62
    adc a                                         ; $6263: $8f
    ld h, d                                       ; $6264: $62
    adc a                                         ; $6265: $8f
    ld h, d                                       ; $6266: $62
    adc a                                         ; $6267: $8f
    ld h, d                                       ; $6268: $62
    adc a                                         ; $6269: $8f
    ld h, d                                       ; $626a: $62
    adc a                                         ; $626b: $8f
    ld h, d                                       ; $626c: $62
    adc a                                         ; $626d: $8f
    ld h, d                                       ; $626e: $62
    adc a                                         ; $626f: $8f
    ld h, d                                       ; $6270: $62
    adc a                                         ; $6271: $8f
    ld h, d                                       ; $6272: $62
    adc a                                         ; $6273: $8f
    ld h, d                                       ; $6274: $62
    adc a                                         ; $6275: $8f
    ld h, d                                       ; $6276: $62
    adc a                                         ; $6277: $8f
    ld h, d                                       ; $6278: $62
    adc a                                         ; $6279: $8f
    ld h, d                                       ; $627a: $62
    adc a                                         ; $627b: $8f
    ld h, d                                       ; $627c: $62
    adc a                                         ; $627d: $8f
    ld h, d                                       ; $627e: $62
    adc a                                         ; $627f: $8f
    ld h, d                                       ; $6280: $62
    adc a                                         ; $6281: $8f
    ld h, d                                       ; $6282: $62
    adc a                                         ; $6283: $8f
    ld h, d                                       ; $6284: $62
    adc a                                         ; $6285: $8f
    ld h, d                                       ; $6286: $62
    adc a                                         ; $6287: $8f
    ld h, d                                       ; $6288: $62
    sub h                                         ; $6289: $94
    ld h, d                                       ; $628a: $62
    adc a                                         ; $628b: $8f
    ld h, d                                       ; $628c: $62
    and a                                         ; $628d: $a7
    ld h, d                                       ; $628e: $62

    db $7c, $00

    ld de, $0012                                  ; $6291: $11 $12 $00
    nop                                           ; $6294: $00
    ld c, [hl]                                    ; $6295: $4e
    ld d, h                                       ; $6296: $54
    nop                                           ; $6297: $00
    ld d, c                                       ; $6298: $51
    nop                                           ; $6299: $00
    ld d, b                                       ; $629a: $50
    nop                                           ; $629b: $00
    ld [hl], c                                    ; $629c: $71
    nop                                           ; $629d: $00
    ld c, [hl]                                    ; $629e: $4e
    nop                                           ; $629f: $00

    db $7c, $7d, $b0, $00, $7c, $30, $00

    or [hl]                                       ; $62a7: $b6
    nop                                           ; $62a8: $00
    ld h, c                                       ; $62a9: $61
    nop                                           ; $62aa: $00

    call Call_000_1850                            ; $62ab: $cd $50 $18
    ld a, $87                                     ; $62ae: $3e $87
    ldh [rLCDC], a                                ; $62b0: $e0 $40
    ld a, [$c0c1]                                 ; $62b2: $fa $c1 $c0
    cp $01                                        ; $62b5: $fe $01
    xor a                                         ; $62b7: $af
    ld [$c0bb], a                                 ; $62b8: $ea $bb $c0
    ld a, $0b                                     ; $62bb: $3e $0b
    jp Jump_000_2448                              ; $62bd: $c3 $48 $24


    ret                                           ; $62c0: $c9


    ldh a, [$da]                                  ; $62c1: $f0 $da
    ld hl, $5e72                                  ; $62c3: $21 $72 $5e
    call Call_000_3185                            ; $62c6: $cd $85 $31
    ld a, [hl+]                                   ; $62c9: $2a
    ld [$ccec], a                                 ; $62ca: $ea $ec $cc
    ld e, [hl]                                    ; $62cd: $5e
    inc hl                                        ; $62ce: $23
    ld d, [hl]                                    ; $62cf: $56
    ld a, e                                       ; $62d0: $7b
    ld [$cce4], a                                 ; $62d1: $ea $e4 $cc
    ld a, d                                       ; $62d4: $7a
    ld [$cce5], a                                 ; $62d5: $ea $e5 $cc
    res 7, d                                      ; $62d8: $cb $ba
    sra d                                         ; $62da: $cb $2a
    rr e                                          ; $62dc: $cb $1b
    sra d                                         ; $62de: $cb $2a
    rr e                                          ; $62e0: $cb $1b
    sra d                                         ; $62e2: $cb $2a
    rr e                                          ; $62e4: $cb $1b
    sra d                                         ; $62e6: $cb $2a
    rr e                                          ; $62e8: $cb $1b
    ld a, $af                                     ; $62ea: $3e $af
    add e                                         ; $62ec: $83
    ld [$cdd2], a                                 ; $62ed: $ea $d2 $cd
    add $10                                       ; $62f0: $c6 $10
    ld [$cdd3], a                                 ; $62f2: $ea $d3 $cd
    inc a                                         ; $62f5: $3c
    ld [$cdd4], a                                 ; $62f6: $ea $d4 $cd
    ld a, [$ccec]                                 ; $62f9: $fa $ec $cc
    call Call_000_13ff                            ; $62fc: $cd $ff $13
    ld hl, $cced                                  ; $62ff: $21 $ed $cc
    ld [hl], c                                    ; $6302: $71
    inc hl                                        ; $6303: $23
    ld [hl], b                                    ; $6304: $70
    ldh a, [$da]                                  ; $6305: $f0 $da
    ld hl, $5f9b                                  ; $6307: $21 $9b $5f
    call Call_000_3185                            ; $630a: $cd $85 $31
    ld a, [hl+]                                   ; $630d: $2a
    ld [$cd25], a                                 ; $630e: $ea $25 $cd
    ld a, [hl+]                                   ; $6311: $2a
    ld [$cd26], a                                 ; $6312: $ea $26 $cd
    ld a, [hl]                                    ; $6315: $7e
    ld [$cd27], a                                 ; $6316: $ea $27 $cd
    ret                                           ; $6319: $c9


    ld hl, $c320                                  ; $631a: $21 $20 $c3
    ld bc, $0798                                  ; $631d: $01 $98 $07
    call Call_000_112e                            ; $6320: $cd $2e $11
    xor a                                         ; $6323: $af
    ldh [$de], a                                  ; $6324: $e0 $de
    ld [$c0c2], a                                 ; $6326: $ea $c2 $c0
    ld hl, $cae8                                  ; $6329: $21 $e8 $ca
    ld [hl], $ff                                  ; $632c: $36 $ff
    inc hl                                        ; $632e: $23
    ld [hl], $ff                                  ; $632f: $36 $ff
    xor a                                         ; $6331: $af
    ld [$c0bb], a                                 ; $6332: $ea $bb $c0
    ret                                           ; $6335: $c9


    ld a, $07                                     ; $6336: $3e $07
    call Call_001_70c0                            ; $6338: $cd $c0 $70
    ld e, $18                                     ; $633b: $1e $18
    ld a, $0f                                     ; $633d: $3e $0f
    ldh [$c1], a                                  ; $633f: $e0 $c1
    ld a, $9e                                     ; $6341: $3e $9e
    ldh [$bd], a                                  ; $6343: $e0 $bd
    ld a, $5f                                     ; $6345: $3e $5f
    ldh [$be], a                                  ; $6347: $e0 $be
    jp Jump_000_3373                              ; $6349: $c3 $73 $33


    ret                                           ; $634c: $c9


    ld a, $0e                                     ; $634d: $3e $0e
    call Call_001_70c0                            ; $634f: $cd $c0 $70
    ld e, $02                                     ; $6352: $1e $02
    ldh [$c1], a                                  ; $6354: $e0 $c1
    ld a, $9b                                     ; $6356: $3e $9b
    ldh [$bd], a                                  ; $6358: $e0 $bd
    ld a, $5f                                     ; $635a: $3e $5f
    ldh [$be], a                                  ; $635c: $e0 $be
    jp Jump_000_3373                              ; $635e: $c3 $73 $33


    ld a, $38                                     ; $6361: $3e $38
    call Call_001_70c0                            ; $6363: $cd $c0 $70
    ld e, $00                                     ; $6366: $1e $00
    ldh [$c1], a                                  ; $6368: $e0 $c1
    ld a, $9b                                     ; $636a: $3e $9b
    ldh [$bd], a                                  ; $636c: $e0 $bd
    ld a, $5f                                     ; $636e: $3e $5f
    ldh [$be], a                                  ; $6370: $e0 $be
    jp Jump_000_3373                              ; $6372: $c3 $73 $33


    ld a, $15                                     ; $6375: $3e $15
    call Call_001_70c0                            ; $6377: $cd $c0 $70
    ld e, $00                                     ; $637a: $1e $00
    ldh [$c1], a                                  ; $637c: $e0 $c1
    ld a, $9b                                     ; $637e: $3e $9b
    ldh [$bd], a                                  ; $6380: $e0 $bd
    ld a, $5f                                     ; $6382: $3e $5f
    ldh [$be], a                                  ; $6384: $e0 $be
    jp Jump_000_3373                              ; $6386: $c3 $73 $33


    ld e, $0b                                     ; $6389: $1e $0b
    ld a, $01                                     ; $638b: $3e $01
    ldh [$c1], a                                  ; $638d: $e0 $c1
    ld a, $9e                                     ; $638f: $3e $9e
    ldh [$bd], a                                  ; $6391: $e0 $bd
    ld a, $5f                                     ; $6393: $3e $5f
    ldh [$be], a                                  ; $6395: $e0 $be
    jp Jump_000_3373                              ; $6397: $c3 $73 $33


    ld e, $02                                     ; $639a: $1e $02
    xor a                                         ; $639c: $af
    ldh [$c1], a                                  ; $639d: $e0 $c1
    ld a, $9e                                     ; $639f: $3e $9e
    ldh [$bd], a                                  ; $63a1: $e0 $bd
    ld a, $5f                                     ; $63a3: $3e $5f
    ldh [$be], a                                  ; $63a5: $e0 $be
    jp Jump_000_3373                              ; $63a7: $c3 $73 $33


    ld a, $02                                     ; $63aa: $3e $02
    ldh [$c1], a                                  ; $63ac: $e0 $c1
    ld a, $05                                     ; $63ae: $3e $05
    ldh [$bd], a                                  ; $63b0: $e0 $bd
    ld a, $53                                     ; $63b2: $3e $53
    ldh [$be], a                                  ; $63b4: $e0 $be
    call Call_000_337a                            ; $63b6: $cd $7a $33

    ld e, $00                                     ; $63b9: $1e $00
    ldh [$c1], a                                  ; $63bb: $e0 $c1
    ld a, $9b                                     ; $63bd: $3e $9b
    ldh [$bd], a                                  ; $63bf: $e0 $bd
    ld a, $5f                                     ; $63c1: $3e $5f
    ldh [$be], a                                  ; $63c3: $e0 $be
    jp Jump_000_3373                              ; $63c5: $c3 $73 $33


    ld e, $01                                     ; $63c8: $1e $01
    ldh [$c1], a                                  ; $63ca: $e0 $c1
    ld a, $9b                                     ; $63cc: $3e $9b
    ldh [$bd], a                                  ; $63ce: $e0 $bd
    ld a, $5f                                     ; $63d0: $3e $5f
    ldh [$be], a                                  ; $63d2: $e0 $be
    jp Jump_000_3373                              ; $63d4: $c3 $73 $33


    ld e, $02                                     ; $63d7: $1e $02
    ldh [$c1], a                                  ; $63d9: $e0 $c1
    ld a, $9b                                     ; $63db: $3e $9b
    ldh [$bd], a                                  ; $63dd: $e0 $bd
    ld a, $5f                                     ; $63df: $3e $5f
    ldh [$be], a                                  ; $63e1: $e0 $be
    jp Jump_000_3373                              ; $63e3: $c3 $73 $33


    ld e, $03                                     ; $63e6: $1e $03
    ldh [$c1], a                                  ; $63e8: $e0 $c1
    ld a, $9b                                     ; $63ea: $3e $9b
    ldh [$bd], a                                  ; $63ec: $e0 $bd
    ld a, $5f                                     ; $63ee: $3e $5f
    ldh [$be], a                                  ; $63f0: $e0 $be
    jp Jump_000_3373                              ; $63f2: $c3 $73 $33


    ld e, $04                                     ; $63f5: $1e $04
    ldh [$c1], a                                  ; $63f7: $e0 $c1
    ld a, $9b                                     ; $63f9: $3e $9b
    ldh [$bd], a                                  ; $63fb: $e0 $bd
    ld a, $5f                                     ; $63fd: $3e $5f
    ldh [$be], a                                  ; $63ff: $e0 $be
    jp Jump_000_3373                              ; $6401: $c3 $73 $33


    ld e, $05                                     ; $6404: $1e $05
    ldh [$c1], a                                  ; $6406: $e0 $c1
    ld a, $9b                                     ; $6408: $3e $9b
    ldh [$bd], a                                  ; $640a: $e0 $bd
    ld a, $5f                                     ; $640c: $3e $5f
    ldh [$be], a                                  ; $640e: $e0 $be
    jp Jump_000_3373                              ; $6410: $c3 $73 $33


    ld e, $06                                     ; $6413: $1e $06
    ldh [$c1], a                                  ; $6415: $e0 $c1
    ld a, $9b                                     ; $6417: $3e $9b
    ldh [$bd], a                                  ; $6419: $e0 $bd
    ld a, $5f                                     ; $641b: $3e $5f
    ldh [$be], a                                  ; $641d: $e0 $be
    jp Jump_000_3373                              ; $641f: $c3 $73 $33


    ld e, $07                                     ; $6422: $1e $07
    ldh [$c1], a                                  ; $6424: $e0 $c1
    ld a, $9b                                     ; $6426: $3e $9b
    ldh [$bd], a                                  ; $6428: $e0 $bd
    ld a, $5f                                     ; $642a: $3e $5f
    ldh [$be], a                                  ; $642c: $e0 $be
    jp Jump_000_3373                              ; $642e: $c3 $73 $33


    ld e, $08                                     ; $6431: $1e $08
    ldh [$c1], a                                  ; $6433: $e0 $c1
    ld a, $9b                                     ; $6435: $3e $9b
    ldh [$bd], a                                  ; $6437: $e0 $bd
    ld a, $5f                                     ; $6439: $3e $5f
    ldh [$be], a                                  ; $643b: $e0 $be
    jp Jump_000_3373                              ; $643d: $c3 $73 $33


    ld e, $0a                                     ; $6440: $1e $0a
    ldh [$c1], a                                  ; $6442: $e0 $c1
    ld a, $9b                                     ; $6444: $3e $9b
    ldh [$bd], a                                  ; $6446: $e0 $bd
    ld a, $5f                                     ; $6448: $3e $5f
    ldh [$be], a                                  ; $644a: $e0 $be
    jp Jump_000_3373                              ; $644c: $c3 $73 $33

Call_001_644f:
    ld hl, $4f55                                  ; $644f: $21 $55 $4f
    ld bc, $0000                                  ; $6452: $01 $00 $00
    call Call_000_32e1                            ; $6455: $cd $e1 $32
    ldh [$c1], a                                  ; $6458: $e0 $c1
    ld a, $0f                                     ; $645a: $3e $0f
    ldh [$bd], a                                  ; $645c: $e0 $bd
    ld a, $36                                     ; $645e: $3e $36
    ldh [$be], a                                  ; $6460: $e0 $be
    call Call_000_3386                            ; $6462: $cd $86 $33
    jp Jump_001_675c                              ; $6465: $c3 $5c $67


Call_001_6468:
    ldh a, [rSVBK]                                ; $6468: $f0 $70
    push af                                       ; $646a: $f5
    ld a, $07                                     ; $646b: $3e $07
    ldh [rSVBK], a                                ; $646d: $e0 $70
    call Call_001_4155                            ; $646f: $cd $55 $41
    ld c, l                                       ; $6472: $4d
    ld b, h                                       ; $6473: $44
    call Call_001_6481                            ; $6474: $cd $81 $64
    call Call_001_64e6                            ; $6477: $cd $e6 $64
    call Call_001_40b0                            ; $647a: $cd $b0 $40
    pop af                                        ; $647d: $f1
    ldh [rSVBK], a                                ; $647e: $e0 $70
    ret                                           ; $6480: $c9


Call_001_6481:
    ld hl, $c1f0                                  ; $6481: $21 $f0 $c1
    ld e, [hl]                                    ; $6484: $5e
    inc hl                                        ; $6485: $23
    ld d, [hl]                                    ; $6486: $56
    ld hl, $ffb8                                  ; $6487: $21 $b8 $ff
    ld [hl], e                                    ; $648a: $73
    inc hl                                        ; $648b: $23
    ld [hl], d                                    ; $648c: $72
    ld de, $ce1d                                  ; $648d: $11 $1d $ce
    xor a                                         ; $6490: $af

jr_001_6491:
    push af                                       ; $6491: $f5
    push de                                       ; $6492: $d5
    ld e, a                                       ; $6493: $5f
    ld hl, $c1ee                                  ; $6494: $21 $ee $c1
    ld a, [hl+]                                   ; $6497: $2a
    ld h, [hl]                                    ; $6498: $66
    ld l, a                                       ; $6499: $6f
    ld a, e                                       ; $649a: $7b
    call Call_000_319d                            ; $649b: $cd $9d $31
    ld a, [$c1f2]                                 ; $649e: $fa $f2 $c1
    and $85                                       ; $64a1: $e6 $85
    jr nz, jr_001_64b2                            ; $64a3: $20 $0d

    call Call_001_6742                            ; $64a5: $cd $42 $67
    ld a, e                                       ; $64a8: $7b
    dec a                                         ; $64a9: $3d
    and $f0                                       ; $64aa: $e6 $f0
    swap a                                        ; $64ac: $cb $37
    inc a                                         ; $64ae: $3c
    call Call_001_67cd                            ; $64af: $cd $cd $67

jr_001_64b2:
    ld a, l                                       ; $64b2: $7d
    ld [$c1e4], a                                 ; $64b3: $ea $e4 $c1
    ld a, h                                       ; $64b6: $7c
    ld [$c1e5], a                                 ; $64b7: $ea $e5 $c1
    pop de                                        ; $64ba: $d1
    ld a, [$c1f2]                                 ; $64bb: $fa $f2 $c1
    bit 0, a                                      ; $64be: $cb $47
    jr nz, jr_001_64cf                            ; $64c0: $20 $0d

    bit 2, a                                      ; $64c2: $cb $57
    jr nz, jr_001_64d4                            ; $64c4: $20 $0e

    bit 7, a                                      ; $64c6: $cb $7f
    jr nz, jr_001_64d9                            ; $64c8: $20 $0f

    call Call_001_652e                            ; $64ca: $cd $2e $65
    jr jr_001_64dc                                ; $64cd: $18 $0d

jr_001_64cf:
    call Call_001_654b                            ; $64cf: $cd $4b $65
    jr jr_001_64dc                                ; $64d2: $18 $08

jr_001_64d4:
    call Call_001_653a                            ; $64d4: $cd $3a $65
    jr jr_001_64dc                                ; $64d7: $18 $03

jr_001_64d9:
    call Call_001_655f                            ; $64d9: $cd $5f $65

jr_001_64dc:
    ld a, [$c1ed]                                 ; $64dc: $fa $ed $c1
    ld l, a                                       ; $64df: $6f
    pop af                                        ; $64e0: $f1
    inc a                                         ; $64e1: $3c
    cp l                                          ; $64e2: $bd
    jr nz, jr_001_6491                            ; $64e3: $20 $ac

    ret                                           ; $64e5: $c9


Call_001_64e6:
    ld hl, $c1ee                                  ; $64e6: $21 $ee $c1
    ld e, [hl]                                    ; $64e9: $5e
    inc hl                                        ; $64ea: $23
    ld d, [hl]                                    ; $64eb: $56
    xor a                                         ; $64ec: $af

jr_001_64ed:
    push af                                       ; $64ed: $f5
    ld [$c1ac], a                                 ; $64ee: $ea $ac $c1
    ld a, [$c1f2]                                 ; $64f1: $fa $f2 $c1
    and $85                                       ; $64f4: $e6 $85
    jr nz, jr_001_6506                            ; $64f6: $20 $0e

    ld a, [$c1ac]                                 ; $64f8: $fa $ac $c1
    ld hl, $ce1d                                  ; $64fb: $21 $1d $ce
    call Call_001_67db                            ; $64fe: $cd $db $67
    call Call_001_6788                            ; $6501: $cd $88 $67
    jr jr_001_6524                                ; $6504: $18 $1e

jr_001_6506:
    bit 7, a                                      ; $6506: $cb $7f
    jr nz, jr_001_6518                            ; $6508: $20 $0e

    ld a, [$c1ac]                                 ; $650a: $fa $ac $c1
    ld hl, $ce1d                                  ; $650d: $21 $1d $ce
    call Call_001_67db                            ; $6510: $cd $db $67
    call Call_001_677c                            ; $6513: $cd $7c $67
    jr jr_001_6524                                ; $6516: $18 $0c

jr_001_6518:
    ld a, [$c1ac]                                 ; $6518: $fa $ac $c1
    ld hl, $ce1d                                  ; $651b: $21 $1d $ce
    call Call_001_67db                            ; $651e: $cd $db $67
    call Call_001_6781                            ; $6521: $cd $81 $67

jr_001_6524:
    ld a, [$c1ed]                                 ; $6524: $fa $ed $c1
    ld c, a                                       ; $6527: $4f
    pop af                                        ; $6528: $f1
    inc a                                         ; $6529: $3c
    cp c                                          ; $652a: $b9
    jr nz, jr_001_64ed                            ; $652b: $20 $c0

    ret                                           ; $652d: $c9


Call_001_652e:
    call Call_001_67ec                            ; $652e: $cd $ec $67
    call Call_001_6709                            ; $6531: $cd $09 $67
    call Call_001_659e                            ; $6534: $cd $9e $65
    ld [de], a                                    ; $6537: $12
    inc de                                        ; $6538: $13
    ret                                           ; $6539: $c9


Call_001_653a:
    call Call_001_67ec                            ; $653a: $cd $ec $67
    push bc                                       ; $653d: $c5
    ld a, $02                                     ; $653e: $3e $02
    ld [$c1b2], a                                 ; $6540: $ea $b2 $c1
    call Call_001_659e                            ; $6543: $cd $9e $65
    ld [de], a                                    ; $6546: $12
    inc de                                        ; $6547: $13
    pop bc                                        ; $6548: $c1
    jr jr_001_6559                                ; $6549: $18 $0e

Call_001_654b:
    call Call_001_67ec                            ; $654b: $cd $ec $67
    push bc                                       ; $654e: $c5
    xor a                                         ; $654f: $af
    ld [$c1b2], a                                 ; $6550: $ea $b2 $c1
    call Call_001_659e                            ; $6553: $cd $9e $65
    ld [de], a                                    ; $6556: $12
    inc de                                        ; $6557: $13
    pop bc                                        ; $6558: $c1

jr_001_6559:
    ld a, [bc]                                    ; $6559: $0a
    inc bc                                        ; $655a: $03
    rla                                           ; $655b: $17
    jr nc, jr_001_6559                            ; $655c: $30 $fb

    ret                                           ; $655e: $c9


Call_001_655f:
    push bc                                       ; $655f: $c5
    call Call_001_67ec                            ; $6560: $cd $ec $67
    call Call_001_6719                            ; $6563: $cd $19 $67
    call Call_001_659e                            ; $6566: $cd $9e $65
    ld [de], a                                    ; $6569: $12
    inc de                                        ; $656a: $13
    pop bc                                        ; $656b: $c1
    ret                                           ; $656c: $c9


Call_001_656d:
    push bc                                       ; $656d: $c5
    ld a, [$c1ae]                                 ; $656e: $fa $ae $c1
    and $7f                                       ; $6571: $e6 $7f
    ld hl, $d000                                  ; $6573: $21 $00 $d0
    call Call_000_3165                            ; $6576: $cd $65 $31
    ld bc, $c1b4                                  ; $6579: $01 $b4 $c1
    ld a, $08                                     ; $657c: $3e $08

jr_001_657e:
    push af                                       ; $657e: $f5
    ld e, $00                                     ; $657f: $1e $00
    ld a, [hl+]                                   ; $6581: $2a
    ld d, a                                       ; $6582: $57
    ld a, [$c1b2]                                 ; $6583: $fa $b2 $c1
    or a                                          ; $6586: $b7
    jr z, jr_001_6590                             ; $6587: $28 $07

jr_001_6589:
    srl d                                         ; $6589: $cb $3a
    rr e                                          ; $658b: $cb $1b
    dec a                                         ; $658d: $3d
    jr nz, jr_001_6589                            ; $658e: $20 $f9

jr_001_6590:
    ld a, [bc]                                    ; $6590: $0a
    or e                                          ; $6591: $b3
    ld [bc], a                                    ; $6592: $02
    inc bc                                        ; $6593: $03
    ld a, [bc]                                    ; $6594: $0a
    or d                                          ; $6595: $b2
    ld [bc], a                                    ; $6596: $02
    inc bc                                        ; $6597: $03
    pop af                                        ; $6598: $f1
    dec a                                         ; $6599: $3d
    jr nz, jr_001_657e                            ; $659a: $20 $e2

    pop bc                                        ; $659c: $c1
    ret                                           ; $659d: $c9


Call_001_659e:
    push de                                       ; $659e: $d5
    push hl                                       ; $659f: $e5
    ld a, [$4000]                                 ; $65a0: $fa $00 $40
    ld [$c1af], a                                 ; $65a3: $ea $af $c1
    push bc                                       ; $65a6: $c5
    ld hl, $c1b4                                  ; $65a7: $21 $b4 $c1
    ld bc, $0010                                  ; $65aa: $01 $10 $00
    call Call_000_112e                            ; $65ad: $cd $2e $11
    pop bc                                        ; $65b0: $c1
    ld hl, $ffb8                                  ; $65b1: $21 $b8 $ff
    ld a, [hl+]                                   ; $65b4: $2a
    ld h, [hl]                                    ; $65b5: $66
    ld l, a                                       ; $65b6: $6f
    add hl, hl                                    ; $65b7: $29
    add hl, hl                                    ; $65b8: $29
    add hl, hl                                    ; $65b9: $29
    add hl, hl                                    ; $65ba: $29
    set 7, h                                      ; $65bb: $cb $fc
    ld a, l                                       ; $65bd: $7d
    ld [$c1b0], a                                 ; $65be: $ea $b0 $c1
    ld a, h                                       ; $65c1: $7c
    ld [$c1b1], a                                 ; $65c2: $ea $b1 $c1
    xor a                                         ; $65c5: $af
    ld [$c1b3], a                                 ; $65c6: $ea $b3 $c1

Jump_001_65c9:
    ld a, [bc]                                    ; $65c9: $0a
    inc bc                                        ; $65ca: $03
    ld [$c1ae], a                                 ; $65cb: $ea $ae $c1
    call Call_001_656d                            ; $65ce: $cd $6d $65
    ld a, [$c1ae]                                 ; $65d1: $fa $ae $c1
    and $7f                                       ; $65d4: $e6 $7f
    ld hl, $dd00                                  ; $65d6: $21 $00 $dd
    rst $08                                       ; $65d9: $cf
    ld a, [$c1e9]                                 ; $65da: $fa $e9 $c1
    add [hl]                                      ; $65dd: $86
    ld hl, $c1b2                                  ; $65de: $21 $b2 $c1
    add [hl]                                      ; $65e1: $86
    ld [hl], a                                    ; $65e2: $77
    sub $08                                       ; $65e3: $d6 $08
    jr c, jr_001_65eb                             ; $65e5: $38 $04

    ld [hl], a                                    ; $65e7: $77
    call Call_001_6616                            ; $65e8: $cd $16 $66

jr_001_65eb:
    ld a, [$c1ae]                                 ; $65eb: $fa $ae $c1
    rla                                           ; $65ee: $17
    jr c, jr_001_65f8                             ; $65ef: $38 $07

    ld a, [bc]                                    ; $65f1: $0a
    cp $a0                                        ; $65f2: $fe $a0
    jp nz, Jump_001_65c9                          ; $65f4: $c2 $c9 $65

    inc bc                                        ; $65f7: $03

jr_001_65f8:
    ld a, [$c1b2]                                 ; $65f8: $fa $b2 $c1
    cp $02                                        ; $65fb: $fe $02
    call nc, Call_001_6616                        ; $65fd: $d4 $16 $66
    ld hl, $ffb8                                  ; $6600: $21 $b8 $ff
    ld a, [hl+]                                   ; $6603: $2a
    ld h, [hl]                                    ; $6604: $66
    ld l, a                                       ; $6605: $6f
    ld a, [$c1b3]                                 ; $6606: $fa $b3 $c1
    rst $08                                       ; $6609: $cf
    ld a, l                                       ; $660a: $7d
    ldh [$b8], a                                  ; $660b: $e0 $b8
    ld a, h                                       ; $660d: $7c
    ldh [$b9], a                                  ; $660e: $e0 $b9
    ld a, [$c1b3]                                 ; $6610: $fa $b3 $c1
    pop hl                                        ; $6613: $e1
    pop de                                        ; $6614: $d1
    ret                                           ; $6615: $c9


Call_001_6616:
    push bc                                       ; $6616: $c5
    ld a, [$c1f2]                                 ; $6617: $fa $f2 $c1
    bit 6, a                                      ; $661a: $cb $77
    jr z, jr_001_6641                             ; $661c: $28 $23

    ld a, [$c1ec]                                 ; $661e: $fa $ec $c1
    rra                                           ; $6621: $1f
    rra                                           ; $6622: $1f
    rra                                           ; $6623: $1f
    rra                                           ; $6624: $1f
    ld hl, $c1c4                                  ; $6625: $21 $c4 $c1
    ld d, h                                       ; $6628: $54
    ld e, l                                       ; $6629: $5d
    ld b, $02                                     ; $662a: $06 $02

jr_001_662c:
    ld [hl], $00                                  ; $662c: $36 $00
    rra                                           ; $662e: $1f
    jp nc, Jump_001_6634                          ; $662f: $d2 $34 $66

    ld [hl], $ff                                  ; $6632: $36 $ff

Jump_001_6634:
    inc hl                                        ; $6634: $23
    dec b                                         ; $6635: $05
    jr nz, jr_001_662c                            ; $6636: $20 $f4

    push de                                       ; $6638: $d5
    ld d, h                                       ; $6639: $54
    ld e, l                                       ; $663a: $5d
    pop hl                                        ; $663b: $e1
    call CopyHL2DE_14                            ; $663c: $cd $2d $12
    jr jr_001_6697                                ; $663f: $18 $56

jr_001_6641:
    ldh a, [rSVBK]                                ; $6641: $f0 $70
    push af                                       ; $6643: $f5
    ld a, $01                                     ; $6644: $3e $01
    ldh [rSVBK], a                                ; $6646: $e0 $70
    ld hl, $c1e4                                  ; $6648: $21 $e4 $c1
    ld a, [hl+]                                   ; $664b: $2a
    ld h, [hl]                                    ; $664c: $66
    ld l, a                                       ; $664d: $6f
    ld a, [hl+]                                   ; $664e: $2a
    ld e, a                                       ; $664f: $5f
    ld a, l                                       ; $6650: $7d
    ld [$c1e4], a                                 ; $6651: $ea $e4 $c1
    ld a, h                                       ; $6654: $7c
    ld [$c1e5], a                                 ; $6655: $ea $e5 $c1
    pop af                                        ; $6658: $f1
    ldh [rSVBK], a                                ; $6659: $e0 $70
    ld h, $00                                     ; $665b: $26 $00
    ld a, e                                       ; $665d: $7b
    sub $80                                       ; $665e: $d6 $80
    ld l, a                                       ; $6660: $6f
    add hl, hl                                    ; $6661: $29
    add hl, hl                                    ; $6662: $29
    add hl, hl                                    ; $6663: $29
    add hl, hl                                    ; $6664: $29
    ld de, $8800                                  ; $6665: $11 $00 $88
    add hl, de                                    ; $6668: $19
    ldh a, [rLCDC]                                ; $6669: $f0 $40
    rla                                           ; $666b: $17
    jr c, jr_001_6676                             ; $666c: $38 $08

    ld de, $c1c4                                  ; $666e: $11 $c4 $c1
    call CopyHL2DE_16                            ; $6671: $cd $27 $12
    jr jr_001_6697                                ; $6674: $18 $21

jr_001_6676:
    ld a, l                                       ; $6676: $7d
    ld [$c11b], a                                 ; $6677: $ea $1b $c1
    ld a, h                                       ; $667a: $7c
    ld [$c11c], a                                 ; $667b: $ea $1c $c1
    ld de, $c1c4                                  ; $667e: $11 $c4 $c1
    ld hl, $c11d                                  ; $6681: $21 $1d $c1
    ld [hl], e                                    ; $6684: $73
    inc hl                                        ; $6685: $23
    ld [hl], d                                    ; $6686: $72
    ld hl, $1d18                                  ; $6687: $21 $18 $1d
    ldh [$c1], a                                  ; $668a: $e0 $c1
    ld a, $5f                                     ; $668c: $3e $5f
    ldh [$bd], a                                  ; $668e: $e0 $bd
    ld a, $7c                                     ; $6690: $3e $7c
    ldh [$be], a                                  ; $6692: $e0 $be
    call Call_000_3365                            ; $6694: $cd $65 $33

jr_001_6697:
    ld hl, $c1b4                                  ; $6697: $21 $b4 $c1
    ld bc, $c1c4                                  ; $669a: $01 $c4 $c1
    ld a, $08                                     ; $669d: $3e $08

Jump_001_669f:
    push af                                       ; $669f: $f5
    xor a                                         ; $66a0: $af
    ld e, [hl]                                    ; $66a1: $5e
    ld [hl+], a                                   ; $66a2: $22
    ld d, [hl]                                    ; $66a3: $56
    ld [hl], e                                    ; $66a4: $73
    inc hl                                        ; $66a5: $23
    push hl                                       ; $66a6: $e5
    ld a, d                                       ; $66a7: $7a
    cpl                                           ; $66a8: $2f
    ld e, a                                       ; $66a9: $5f
    ld l, c                                       ; $66aa: $69
    ld h, b                                       ; $66ab: $60
    ld a, [$c1ec]                                 ; $66ac: $fa $ec $c1
    and $0f                                       ; $66af: $e6 $0f
    ld c, a                                       ; $66b1: $4f
    ld b, $02                                     ; $66b2: $06 $02

jr_001_66b4:
    ld a, [hl]                                    ; $66b4: $7e
    srl c                                         ; $66b5: $cb $39
    jp nc, Jump_001_66be                          ; $66b7: $d2 $be $66

    or d                                          ; $66ba: $b2
    jp Jump_001_66bf                              ; $66bb: $c3 $bf $66


Jump_001_66be:
    and e                                         ; $66be: $a3

Jump_001_66bf:
    ld [hl], a                                    ; $66bf: $77
    inc hl                                        ; $66c0: $23
    dec b                                         ; $66c1: $05
    jr nz, jr_001_66b4                            ; $66c2: $20 $f0

    ld c, l                                       ; $66c4: $4d
    ld b, h                                       ; $66c5: $44
    pop hl                                        ; $66c6: $e1
    pop af                                        ; $66c7: $f1
    dec a                                         ; $66c8: $3d
    jp nz, Jump_001_669f                          ; $66c9: $c2 $9f $66

    ld hl, $c1b0                                  ; $66cc: $21 $b0 $c1
    ld e, [hl]                                    ; $66cf: $5e
    inc hl                                        ; $66d0: $23
    ld d, [hl]                                    ; $66d1: $56
    ld hl, $c1c4                                  ; $66d2: $21 $c4 $c1
    ldh a, [rLCDC]                                ; $66d5: $f0 $40
    rla                                           ; $66d7: $17
    jr c, jr_001_66e9                             ; $66d8: $38 $0f

    call Call_001_66f8                            ; $66da: $cd $f8 $66
    push af                                       ; $66dd: $f5
    call CopyHL2DE_16                            ; $66de: $cd $27 $12
    pop af                                        ; $66e1: $f1
    add d                                         ; $66e2: $82
    ld d, a                                       ; $66e3: $57
    xor a                                         ; $66e4: $af
    ldh [rVBK], a                                 ; $66e5: $e0 $4f
    jr jr_001_66ec                                ; $66e7: $18 $03

jr_001_66e9:
    call Call_001_4001                            ; $66e9: $cd $01 $40

jr_001_66ec:
    ld hl, $c1b0                                  ; $66ec: $21 $b0 $c1
    ld [hl], e                                    ; $66ef: $73
    inc hl                                        ; $66f0: $23
    ld [hl], d                                    ; $66f1: $72
    ld hl, $c1b3                                  ; $66f2: $21 $b3 $c1
    inc [hl]                                      ; $66f5: $34
    pop bc                                        ; $66f6: $c1
    ret                                           ; $66f7: $c9


Call_001_66f8:
    ld a, d                                       ; $66f8: $7a
    cp $a0                                        ; $66f9: $fe $a0
    ld a, $00                                     ; $66fb: $3e $00
    ret c                                         ; $66fd: $d8

    ld a, d                                       ; $66fe: $7a
    sub $18                                       ; $66ff: $d6 $18
    ld d, a                                       ; $6701: $57
    ld a, $01                                     ; $6702: $3e $01
    ldh [rVBK], a                                 ; $6704: $e0 $4f
    ld a, $18                                     ; $6706: $3e $18
    ret                                           ; $6708: $c9


Call_001_6709:
    push de                                       ; $6709: $d5
    call Call_001_6742                            ; $670a: $cd $42 $67
    inc a                                         ; $670d: $3c
    srl e                                         ; $670e: $cb $3b
    xor a                                         ; $6710: $af
    sub e                                         ; $6711: $93
    and $07                                       ; $6712: $e6 $07
    ld [$c1b2], a                                 ; $6714: $ea $b2 $c1
    pop de                                        ; $6717: $d1
    ret                                           ; $6718: $c9


Call_001_6719:
    push de                                       ; $6719: $d5
    push hl                                       ; $671a: $e5
    call Call_001_6742                            ; $671b: $cd $42 $67
    ld a, $f8                                     ; $671e: $3e $f8
    ld d, $ff                                     ; $6720: $16 $ff

jr_001_6722:
    inc d                                         ; $6722: $14
    add $08                                       ; $6723: $c6 $08
    cp e                                          ; $6725: $bb
    jr c, jr_001_6722                             ; $6726: $38 $fa

    sub e                                         ; $6728: $93
    ld [$c1b2], a                                 ; $6729: $ea $b2 $c1
    ld hl, $c1e4                                  ; $672c: $21 $e4 $c1
    ld a, [hl+]                                   ; $672f: $2a
    ld h, [hl]                                    ; $6730: $66
    ld l, a                                       ; $6731: $6f
    ld a, d                                       ; $6732: $7a
    dec a                                         ; $6733: $3d
    call Call_001_67cd                            ; $6734: $cd $cd $67
    ld a, l                                       ; $6737: $7d
    ld [$c1e4], a                                 ; $6738: $ea $e4 $c1
    ld a, h                                       ; $673b: $7c
    ld [$c1e5], a                                 ; $673c: $ea $e5 $c1
    pop hl                                        ; $673f: $e1
    pop de                                        ; $6740: $d1
    ret                                           ; $6741: $c9


Call_001_6742:
    push bc                                       ; $6742: $c5
    push hl                                       ; $6743: $e5
    ld e, $00                                     ; $6744: $1e $00

jr_001_6746:
    ld a, [bc]                                    ; $6746: $0a
    and $7f                                       ; $6747: $e6 $7f
    ld hl, $dd00                                  ; $6749: $21 $00 $dd
    rst $08                                       ; $674c: $cf
    ld a, [$c1e9]                                 ; $674d: $fa $e9 $c1
    add e                                         ; $6750: $83
    add [hl]                                      ; $6751: $86
    ld e, a                                       ; $6752: $5f
    ld a, [bc]                                    ; $6753: $0a
    inc bc                                        ; $6754: $03
    rla                                           ; $6755: $17
    jr nc, jr_001_6746                            ; $6756: $30 $ee

    dec e                                         ; $6758: $1d
    pop hl                                        ; $6759: $e1
    pop bc                                        ; $675a: $c1
    ret                                           ; $675b: $c9


Call_001_675c:
Jump_001_675c:
    ld a, [$c1f2]                                 ; $675c: $fa $f2 $c1
    bit 3, a                                      ; $675f: $cb $5f
    ld de, $0101                                  ; $6761: $11 $01 $01
    jr z, jr_001_6769                             ; $6764: $28 $03

    ld de, $0202                                  ; $6766: $11 $02 $02

jr_001_6769:
    ld a, d                                       ; $6769: $7a
    ld [$c1e9], a                                 ; $676a: $ea $e9 $c1
    ldh a, [rSVBK]                                ; $676d: $f0 $70
    push af                                       ; $676f: $f5
    ld a, $07                                     ; $6770: $3e $07
    ldh [rSVBK], a                                ; $6772: $e0 $70
    ld a, e                                       ; $6774: $7b
    ld [$dd20], a                                 ; $6775: $ea $20 $dd
    pop af                                        ; $6778: $f1
    ldh [rSVBK], a                                ; $6779: $e0 $70
    ret                                           ; $677b: $c9


Call_001_677c:
    call Call_001_67d2                            ; $677c: $cd $d2 $67
    jr jr_001_6792                                ; $677f: $18 $11

Call_001_6781:
    call Call_001_67d2                            ; $6781: $cd $d2 $67
    push af                                       ; $6784: $f5
    dec a                                         ; $6785: $3d
    jr jr_001_678e                                ; $6786: $18 $06

Call_001_6788:
    call Call_001_67d2                            ; $6788: $cd $d2 $67
    push af                                       ; $678b: $f5
    srl a                                         ; $678c: $cb $3f

jr_001_678e:
    call Call_001_67cd                            ; $678e: $cd $cd $67
    pop af                                        ; $6791: $f1

jr_001_6792:
    call Call_001_67aa                            ; $6792: $cd $aa $67
    ldh [$bc], a                                  ; $6795: $e0 $bc
    ldh a, [rSVBK]                                ; $6797: $f0 $70
    push af                                       ; $6799: $f5
    ld a, $01                                     ; $679a: $3e $01
    ldh [rSVBK], a                                ; $679c: $e0 $70
    ldh a, [$bc]                                  ; $679e: $f0 $bc

jr_001_67a0:
    ld [hl], c                                    ; $67a0: $71
    inc hl                                        ; $67a1: $23
    inc bc                                        ; $67a2: $03
    dec a                                         ; $67a3: $3d
    jr nz, jr_001_67a0                            ; $67a4: $20 $fa

    pop af                                        ; $67a6: $f1
    ldh [rSVBK], a                                ; $67a7: $e0 $70
    ret                                           ; $67a9: $c9


Call_001_67aa:
    dec b                                         ; $67aa: $05
    dec b                                         ; $67ab: $05
    jr nz, jr_001_67ca                            ; $67ac: $20 $1c

    ld b, a                                       ; $67ae: $47
    push af                                       ; $67af: $f5
    push hl                                       ; $67b0: $e5
    ldh a, [rSVBK]                                ; $67b1: $f0 $70
    push af                                       ; $67b3: $f5
    ld a, $01                                     ; $67b4: $3e $01
    ldh [rSVBK], a                                ; $67b6: $e0 $70
    ld a, $04                                     ; $67b8: $3e $04
    add h                                         ; $67ba: $84
    ld h, a                                       ; $67bb: $67

jr_001_67bc:
    set 3, [hl]                                   ; $67bc: $cb $de
    inc hl                                        ; $67be: $23
    dec b                                         ; $67bf: $05
    jr nz, jr_001_67bc                            ; $67c0: $20 $fa

    pop af                                        ; $67c2: $f1
    ldh [rSVBK], a                                ; $67c3: $e0 $70
    pop hl                                        ; $67c5: $e1
    pop af                                        ; $67c6: $f1
    ld b, $02                                     ; $67c7: $06 $02
    ret                                           ; $67c9: $c9


jr_001_67ca:
    inc b                                         ; $67ca: $04
    inc b                                         ; $67cb: $04
    ret                                           ; $67cc: $c9


Call_001_67cd:
    cpl                                           ; $67cd: $2f
    inc a                                         ; $67ce: $3c
    jp Jump_000_31a8                              ; $67cf: $c3 $a8 $31


Call_001_67d2:
    push af                                       ; $67d2: $f5
    ld a, [de]                                    ; $67d3: $1a
    ld l, a                                       ; $67d4: $6f
    inc de                                        ; $67d5: $13
    ld a, [de]                                    ; $67d6: $1a
    inc de                                        ; $67d7: $13
    ld h, a                                       ; $67d8: $67
    pop af                                        ; $67d9: $f1
    ret                                           ; $67da: $c9


Call_001_67db:
    call Call_000_3185                            ; $67db: $cd $85 $31
    ld a, [hl+]                                   ; $67de: $2a
    ld c, a                                       ; $67df: $4f
    ld a, [hl+]                                   ; $67e0: $2a
    ld b, a                                       ; $67e1: $47
    cp $02                                        ; $67e2: $fe $02
    jr nz, jr_001_67ea                            ; $67e4: $20 $04

    ld a, c                                       ; $67e6: $79
    sub $80                                       ; $67e7: $d6 $80
    ld c, a                                       ; $67e9: $4f

jr_001_67ea:
    ld a, [hl]                                    ; $67ea: $7e
    ret                                           ; $67eb: $c9


Call_001_67ec:
    ldh a, [$b8]                                  ; $67ec: $f0 $b8
    ld [de], a                                    ; $67ee: $12
    inc de                                        ; $67ef: $13
    ldh a, [$b9]                                  ; $67f0: $f0 $b9
    ld [de], a                                    ; $67f2: $12
    inc de                                        ; $67f3: $13
    ret                                           ; $67f4: $c9


    ldh a, [rSVBK]                                ; $67f5: $f0 $70
    push af                                       ; $67f7: $f5
    ld a, $07                                     ; $67f8: $3e $07
    ldh [rSVBK], a                                ; $67fa: $e0 $70
    ld a, [$cddd]                                 ; $67fc: $fa $dd $cd
    ld hl, $6811                                  ; $67ff: $21 $11 $68
    call Call_000_319d                            ; $6802: $cd $9d $31
    ld de, $dd00                                  ; $6805: $11 $00 $dd
    ld c, $80                                     ; $6808: $0e $80
    call Call_000_114a                            ; $680a: $cd $4a $11
    pop af                                        ; $680d: $f1
    ldh [rSVBK], a                                ; $680e: $e0 $70
    ret                                           ; $6810: $c9


    db $2b, $68

    dec hl                                        ; $6813: $2b
    ld l, b                                       ; $6814: $68
    dec hl                                        ; $6815: $2b
    ld l, c                                       ; $6816: $69
    xor e                                         ; $6817: $ab
    ld l, b                                       ; $6818: $68
    xor e                                         ; $6819: $ab
    ld l, b                                       ; $681a: $68
    dec hl                                        ; $681b: $2b
    ld l, b                                       ; $681c: $68
    dec hl                                        ; $681d: $2b
    ld l, b                                       ; $681e: $68
    xor e                                         ; $681f: $ab
    ld l, b                                       ; $6820: $68
    xor e                                         ; $6821: $ab
    ld l, b                                       ; $6822: $68
    xor e                                         ; $6823: $ab
    ld l, b                                       ; $6824: $68
    xor e                                         ; $6825: $ab
    ld l, b                                       ; $6826: $68
    xor e                                         ; $6827: $ab
    ld l, b                                       ; $6828: $68
    dec hl                                        ; $6829: $2b
    ld l, b                                       ; $682a: $68

    db $05, $05, $05, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04
    db $02, $02, $03, $03, $04, $04, $04, $04, $04, $04, $04, $04, $04, $04, $06, $05
    db $02, $01, $05, $04, $04, $04, $06, $02, $03, $03, $04, $05, $02, $03, $01, $05
    db $03, $02, $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $04, $04, $04, $04
    db $04, $04, $04, $04, $04, $04, $04, $05, $04, $03, $04, $04, $04, $05, $05, $05
    db $04, $05, $04, $04, $05, $04, $05, $05, $05, $05, $05, $04, $04, $03, $03, $04
    db $02, $04, $04, $04, $04, $04, $04, $04, $04, $01, $04, $04, $01, $05, $04, $04
    db $04, $04, $04, $04, $03, $04, $05, $05, $05, $04, $04, $03, $05, $05, $07, $04

    rlca                                          ; $68ab: $07
    inc b                                         ; $68ac: $04
    ld [bc], a                                    ; $68ad: $02
    inc b                                         ; $68ae: $04
    dec b                                         ; $68af: $05
    inc b                                         ; $68b0: $04
    inc b                                         ; $68b1: $04
    inc b                                         ; $68b2: $04
    dec b                                         ; $68b3: $05
    inc b                                         ; $68b4: $04
    ld bc, $0404                                  ; $68b5: $01 $04 $04
    inc b                                         ; $68b8: $04
    dec b                                         ; $68b9: $05
    inc b                                         ; $68ba: $04
    inc b                                         ; $68bb: $04
    inc b                                         ; $68bc: $04
    inc b                                         ; $68bd: $04
    dec b                                         ; $68be: $05
    dec b                                         ; $68bf: $05
    inc b                                         ; $68c0: $04
    inc b                                         ; $68c1: $04
    inc b                                         ; $68c2: $04
    inc b                                         ; $68c3: $04
    inc b                                         ; $68c4: $04
    inc b                                         ; $68c5: $04
    inc b                                         ; $68c6: $04
    inc b                                         ; $68c7: $04
    inc b                                         ; $68c8: $04
    inc b                                         ; $68c9: $04
    inc b                                         ; $68ca: $04
    ld [bc], a                                    ; $68cb: $02
    ld bc, $0405                                  ; $68cc: $01 $05 $04
    inc b                                         ; $68cf: $04
    inc b                                         ; $68d0: $04
    ld b, $02                                     ; $68d1: $06 $02
    inc bc                                        ; $68d3: $03
    inc bc                                        ; $68d4: $03
    ld b, $05                                     ; $68d5: $06 $05
    ld [bc], a                                    ; $68d7: $02
    inc bc                                        ; $68d8: $03
    ld bc, $0305                                  ; $68d9: $01 $05 $03
    ld [bc], a                                    ; $68dc: $02
    inc bc                                        ; $68dd: $03
    inc bc                                        ; $68de: $03
    inc bc                                        ; $68df: $03
    inc bc                                        ; $68e0: $03
    inc bc                                        ; $68e1: $03
    inc bc                                        ; $68e2: $03
    inc bc                                        ; $68e3: $03
    inc bc                                        ; $68e4: $03
    ld [bc], a                                    ; $68e5: $02
    ld [bc], a                                    ; $68e6: $02
    inc b                                         ; $68e7: $04
    inc bc                                        ; $68e8: $03
    dec b                                         ; $68e9: $05
    inc b                                         ; $68ea: $04
    inc b                                         ; $68eb: $04
    inc b                                         ; $68ec: $04
    inc b                                         ; $68ed: $04
    inc b                                         ; $68ee: $04
    inc b                                         ; $68ef: $04
    inc b                                         ; $68f0: $04
    inc b                                         ; $68f1: $04
    dec b                                         ; $68f2: $05
    inc b                                         ; $68f3: $04
    inc bc                                        ; $68f4: $03
    inc b                                         ; $68f5: $04
    inc b                                         ; $68f6: $04
    inc b                                         ; $68f7: $04
    dec b                                         ; $68f8: $05
    dec b                                         ; $68f9: $05
    dec b                                         ; $68fa: $05
    inc b                                         ; $68fb: $04
    dec b                                         ; $68fc: $05
    inc b                                         ; $68fd: $04
    inc b                                         ; $68fe: $04
    dec b                                         ; $68ff: $05
    inc b                                         ; $6900: $04
    dec b                                         ; $6901: $05
    dec b                                         ; $6902: $05
    dec b                                         ; $6903: $05
    dec b                                         ; $6904: $05
    dec b                                         ; $6905: $05
    dec b                                         ; $6906: $05
    dec b                                         ; $6907: $05
    inc b                                         ; $6908: $04
    inc b                                         ; $6909: $04
    inc b                                         ; $690a: $04
    ld [bc], a                                    ; $690b: $02
    inc b                                         ; $690c: $04
    inc b                                         ; $690d: $04
    inc b                                         ; $690e: $04
    inc b                                         ; $690f: $04
    inc b                                         ; $6910: $04
    inc b                                         ; $6911: $04
    inc b                                         ; $6912: $04
    inc b                                         ; $6913: $04
    ld bc, $0404                                  ; $6914: $01 $04 $04
    ld bc, $0405                                  ; $6917: $01 $05 $04
    inc b                                         ; $691a: $04
    inc b                                         ; $691b: $04
    inc b                                         ; $691c: $04
    inc b                                         ; $691d: $04
    inc b                                         ; $691e: $04
    inc bc                                        ; $691f: $03
    inc b                                         ; $6920: $04
    dec b                                         ; $6921: $05
    dec b                                         ; $6922: $05
    dec b                                         ; $6923: $05
    inc b                                         ; $6924: $04
    inc b                                         ; $6925: $04
    inc b                                         ; $6926: $04
    inc b                                         ; $6927: $04
    inc b                                         ; $6928: $04
    rlca                                          ; $6929: $07
    inc b                                         ; $692a: $04
    dec b                                         ; $692b: $05
    dec b                                         ; $692c: $05
    dec b                                         ; $692d: $05
    inc b                                         ; $692e: $04
    inc b                                         ; $692f: $04
    inc b                                         ; $6930: $04
    inc b                                         ; $6931: $04
    inc b                                         ; $6932: $04
    inc b                                         ; $6933: $04
    inc b                                         ; $6934: $04
    inc b                                         ; $6935: $04
    inc b                                         ; $6936: $04
    inc b                                         ; $6937: $04
    inc b                                         ; $6938: $04
    inc b                                         ; $6939: $04
    inc b                                         ; $693a: $04
    ld [bc], a                                    ; $693b: $02
    ld [bc], a                                    ; $693c: $02
    inc bc                                        ; $693d: $03
    inc bc                                        ; $693e: $03
    inc b                                         ; $693f: $04
    inc b                                         ; $6940: $04
    inc b                                         ; $6941: $04
    inc b                                         ; $6942: $04
    inc b                                         ; $6943: $04
    inc b                                         ; $6944: $04
    inc b                                         ; $6945: $04
    inc b                                         ; $6946: $04
    inc b                                         ; $6947: $04
    inc b                                         ; $6948: $04
    ld b, $02                                     ; $6949: $06 $02
    ld [bc], a                                    ; $694b: $02
    ld bc, $0405                                  ; $694c: $01 $05 $04
    inc b                                         ; $694f: $04
    inc b                                         ; $6950: $04
    ld b, $02                                     ; $6951: $06 $02
    inc bc                                        ; $6953: $03
    inc bc                                        ; $6954: $03
    inc b                                         ; $6955: $04
    dec b                                         ; $6956: $05
    ld [bc], a                                    ; $6957: $02
    inc bc                                        ; $6958: $03
    ld bc, $0305                                  ; $6959: $01 $05 $03
    ld [bc], a                                    ; $695c: $02
    inc bc                                        ; $695d: $03
    inc bc                                        ; $695e: $03
    inc bc                                        ; $695f: $03
    inc bc                                        ; $6960: $03
    inc bc                                        ; $6961: $03
    inc bc                                        ; $6962: $03
    inc bc                                        ; $6963: $03
    inc bc                                        ; $6964: $03
    ld [bc], a                                    ; $6965: $02
    ld [bc], a                                    ; $6966: $02
    inc b                                         ; $6967: $04
    inc b                                         ; $6968: $04
    inc b                                         ; $6969: $04
    inc b                                         ; $696a: $04
    inc b                                         ; $696b: $04
    inc b                                         ; $696c: $04
    inc b                                         ; $696d: $04
    inc b                                         ; $696e: $04
    inc b                                         ; $696f: $04
    inc b                                         ; $6970: $04
    inc b                                         ; $6971: $04
    dec b                                         ; $6972: $05
    inc b                                         ; $6973: $04
    inc bc                                        ; $6974: $03
    inc b                                         ; $6975: $04
    inc b                                         ; $6976: $04
    inc b                                         ; $6977: $04
    dec b                                         ; $6978: $05
    dec b                                         ; $6979: $05
    dec b                                         ; $697a: $05
    inc b                                         ; $697b: $04
    dec b                                         ; $697c: $05
    inc b                                         ; $697d: $04
    inc b                                         ; $697e: $04
    dec b                                         ; $697f: $05
    inc b                                         ; $6980: $04
    dec b                                         ; $6981: $05
    dec b                                         ; $6982: $05
    dec b                                         ; $6983: $05
    dec b                                         ; $6984: $05
    dec b                                         ; $6985: $05
    inc b                                         ; $6986: $04
    inc b                                         ; $6987: $04
    inc bc                                        ; $6988: $03
    inc bc                                        ; $6989: $03
    inc b                                         ; $698a: $04
    ld [bc], a                                    ; $698b: $02
    inc b                                         ; $698c: $04
    inc b                                         ; $698d: $04
    inc b                                         ; $698e: $04
    inc b                                         ; $698f: $04
    inc b                                         ; $6990: $04
    inc b                                         ; $6991: $04
    inc b                                         ; $6992: $04
    inc b                                         ; $6993: $04
    ld bc, $0404                                  ; $6994: $01 $04 $04
    ld bc, $0405                                  ; $6997: $01 $05 $04
    inc b                                         ; $699a: $04
    inc b                                         ; $699b: $04
    inc b                                         ; $699c: $04
    inc b                                         ; $699d: $04
    inc b                                         ; $699e: $04
    inc bc                                        ; $699f: $03
    inc b                                         ; $69a0: $04
    dec b                                         ; $69a1: $05
    dec b                                         ; $69a2: $05
    dec b                                         ; $69a3: $05
    inc b                                         ; $69a4: $04
    inc b                                         ; $69a5: $04
    inc bc                                        ; $69a6: $03
    dec b                                         ; $69a7: $05
    dec b                                         ; $69a8: $05
    rlca                                          ; $69a9: $07
    inc b                                         ; $69aa: $04

    db $9f, $c3, $32, $84, $6c, $3a, $cd, $0f, $22, $ee, $2f, $15, $90, $00, $5e, $85
    db $fb, $12, $4d, $f9, $bc, $77, $2c, $59, $34, $86, $44, $ad, $c0, $7b, $73, $31
    db $4c, $01, $97, $0b, $f2, $02, $bd, $60, $b6, $39, $7e, $c9, $4e, $26, $76, $16
    db $61, $8e, $a0, $27, $7c, $bf, $da, $48, $ef, $4f, $58, $51, $8a, $49, $d2, $b8
    db $8d, $4a, $92, $37, $72, $3e, $c2, $e5, $5a, $18, $a9, $ac, $6d, $de, $e2, $1e
    db $5d, $71, $68, $6b, $63, $08, $3d, $8b, $e1, $5b, $8f, $f8, $e4, $e6, $99, $a2
    db $06, $fd, $b3, $57, $91, $45, $a7, $78, $f3, $9a, $69, $82, $35, $93, $47, $30
    db $79, $89, $a1, $c1, $24, $ca, $75, $1d, $29, $d9, $67, $b9, $c4, $54, $cb, $2d
    db $a6, $dd, $9c, $17, $d1, $5c, $25, $f7, $19, $9e, $0c, $d7, $95, $ce, $13, $7f
    db $41, $a4, $6e, $3f, $a3, $d4, $65, $c7, $e3, $23, $fe, $14, $f0, $bb, $7d, $52
    db $1a, $2b, $04, $38, $80, $ab, $9d, $6f, $c6, $6a, $af, $98, $e0, $09, $e7, $36
    db $50, $ec, $94, $ba, $42, $11, $03, $d8, $c5, $b4, $56, $0e, $cc, $d0, $aa, $b5
    db $2e, $2a, $b0, $ea, $ed, $b1, $eb, $53, $07, $ae, $dc, $88, $1b, $db, $0a, $d5
    db $f1, $b2, $66, $cf, $a8, $a5, $10, $81, $fc, $3b, $96, $e9, $be, $40, $46, $05
    db $f4, $d3, $33, $f6, $9b, $c8, $f5, $ff, $43, $d6, $b7, $7a, $20, $83, $74, $55
    db $e8, $4b, $fa, $70, $28, $1f, $0d, $df, $87, $1c, $3c, $64, $5f, $21, $8c, $62

    ld hl, $0031                                  ; $6aab: $21 $31 $00
    add hl, bc                                    ; $6aae: $09
    ld a, [hl]                                    ; $6aaf: $7e
    inc hl                                        ; $6ab0: $23
    ld d, [hl]                                    ; $6ab1: $56
    inc hl                                        ; $6ab2: $23
    add [hl]                                      ; $6ab3: $86
    ld [hl], a                                    ; $6ab4: $77
    inc hl                                        ; $6ab5: $23
    ld a, d                                       ; $6ab6: $7a
    adc [hl]                                      ; $6ab7: $8e
    ld [hl], a                                    ; $6ab8: $77
    inc hl                                        ; $6ab9: $23
    ld a, [hl]                                    ; $6aba: $7e
    inc hl                                        ; $6abb: $23
    ld d, [hl]                                    ; $6abc: $56
    inc hl                                        ; $6abd: $23
    add [hl]                                      ; $6abe: $86
    ld [hl], a                                    ; $6abf: $77
    inc hl                                        ; $6ac0: $23
    ld a, d                                       ; $6ac1: $7a
    adc [hl]                                      ; $6ac2: $8e
    ld [hl], a                                    ; $6ac3: $77
    ret                                           ; $6ac4: $c9


    ld hl, $0034                                  ; $6ac5: $21 $34 $00
    call Call_001_6afe                            ; $6ac8: $cd $fe $6a
    ld hl, $0039                                  ; $6acb: $21 $39 $00
    call Call_001_6b23                            ; $6ace: $cd $23 $6b
    ld hl, $0006                                  ; $6ad1: $21 $06 $00
    add hl, bc                                    ; $6ad4: $09
    add [hl]                                      ; $6ad5: $86
    ld e, a                                       ; $6ad6: $5f
    inc hl                                        ; $6ad7: $23
    ld a, [hl]                                    ; $6ad8: $7e
    adc d                                         ; $6ad9: $8a
    ld hl, $000b                                  ; $6ada: $21 $0b $00
    add hl, bc                                    ; $6add: $09
    ld [hl], e                                    ; $6ade: $73
    inc hl                                        ; $6adf: $23
    ld [hl], a                                    ; $6ae0: $77
    ld hl, $0038                                  ; $6ae1: $21 $38 $00
    call Call_001_6afe                            ; $6ae4: $cd $fe $6a
    ld hl, $003a                                  ; $6ae7: $21 $3a $00
    call Call_001_6b23                            ; $6aea: $cd $23 $6b
    ld hl, $0009                                  ; $6aed: $21 $09 $00
    add hl, bc                                    ; $6af0: $09
    add [hl]                                      ; $6af1: $86
    ld e, a                                       ; $6af2: $5f
    inc hl                                        ; $6af3: $23
    ld a, [hl]                                    ; $6af4: $7e
    adc d                                         ; $6af5: $8a
    ld hl, $000d                                  ; $6af6: $21 $0d $00
    add hl, bc                                    ; $6af9: $09
    ld [hl], e                                    ; $6afa: $73
    inc hl                                        ; $6afb: $23
    ld [hl], a                                    ; $6afc: $77
    ret                                           ; $6afd: $c9


Call_001_6afe:
    ldh a, [rSVBK]                                ; $6afe: $f0 $70
    push af                                       ; $6b00: $f5
    ld a, $05                                     ; $6b01: $3e $05
    ldh [rSVBK], a                                ; $6b03: $e0 $70
    add hl, bc                                    ; $6b05: $09
    ld l, [hl]                                    ; $6b06: $6e
    ld h, $d5                                     ; $6b07: $26 $d5
    ld l, [hl]                                    ; $6b09: $6e
    pop af                                        ; $6b0a: $f1
    ldh [rSVBK], a                                ; $6b0b: $e0 $70
    ld a, l                                       ; $6b0d: $7d
    ret                                           ; $6b0e: $c9


    add $40                                       ; $6b0f: $c6 $40
    push hl                                       ; $6b11: $e5
    ld l, a                                       ; $6b12: $6f
    ldh a, [rSVBK]                                ; $6b13: $f0 $70
    push af                                       ; $6b15: $f5
    ld a, $05                                     ; $6b16: $3e $05
    ldh [rSVBK], a                                ; $6b18: $e0 $70
    ld h, $d5                                     ; $6b1a: $26 $d5
    ld l, [hl]                                    ; $6b1c: $6e
    pop af                                        ; $6b1d: $f1
    ldh [rSVBK], a                                ; $6b1e: $e0 $70
    ld a, l                                       ; $6b20: $7d
    pop hl                                        ; $6b21: $e1
    ret                                           ; $6b22: $c9


Call_001_6b23:
    add hl, bc                                    ; $6b23: $09
    ld l, [hl]                                    ; $6b24: $6e

jr_001_6b25:
    dec l                                         ; $6b25: $2d
    bit 7, l                                      ; $6b26: $cb $7d
    jr nz, jr_001_6b2e                            ; $6b28: $20 $04

    sra a                                         ; $6b2a: $cb $2f
    jr jr_001_6b25                                ; $6b2c: $18 $f7

jr_001_6b2e:
    ld d, $00                                     ; $6b2e: $16 $00
    bit 7, a                                      ; $6b30: $cb $7f
    ret z                                         ; $6b32: $c8

    dec d                                         ; $6b33: $15
    ret                                           ; $6b34: $c9


    ldh a, [rSVBK]                                ; $6b35: $f0 $70
    push af                                       ; $6b37: $f5
    ld a, $05                                     ; $6b38: $3e $05
    ldh [rSVBK], a                                ; $6b3a: $e0 $70
    ld de, $d500                                  ; $6b3c: $11 $00 $d5
    ld hl, $6b49                                  ; $6b3f: $21 $49 $6b
    call CopyHL2DE_256                            ; $6b42: $cd $e2 $11
    pop af                                        ; $6b45: $f1
    ldh [rSVBK], a                                ; $6b46: $e0 $70
    ret                                           ; $6b48: $c9


    db $00, $03, $06, $09, $0c, $0f, $12, $15, $18, $1b, $1e, $21, $24, $27, $2a, $2d
    db $30, $33, $36, $39, $3b, $3e, $41, $43, $46, $49, $4b, $4e, $50, $52, $55, $57
    db $59, $5b, $5e, $60, $62, $64, $66, $67, $69, $6b, $6c, $6e, $70, $71, $72, $74
    db $75, $76, $77, $78, $79, $7a, $7b, $7b, $7c, $7d, $7d, $7e, $7e, $7e, $7e, $7e
    db $7f, $7e, $7e, $7e, $7e, $7e, $7d, $7d, $7c, $7b, $7b, $7a, $79, $78, $77, $76
    db $75, $74, $72, $71, $70, $6e, $6c, $6b, $69, $67, $66, $64, $62, $60, $5e, $5b
    db $59, $57, $55, $52, $50, $4e, $4b, $49, $46, $43, $41, $3e, $3b, $39, $36, $33
    db $30, $2d, $2a, $27, $24, $21, $1e, $1b, $18, $15, $12, $0f, $0c, $09, $06, $03
    db $00, $fd, $fa, $f7, $f4, $f1, $ee, $eb, $e8, $e5, $e2, $df, $dc, $d9, $d6, $d3
    db $d0, $cd, $ca, $c7, $c5, $c2, $bf, $bd, $ba, $b7, $b5, $b2, $b0, $ae, $ab, $a9
    db $a7, $a5, $a2, $a0, $9e, $9c, $9a, $99, $97, $95, $94, $92, $90, $8f, $8e, $8c
    db $8b, $8a, $89, $88, $87, $86, $85, $85, $84, $83, $83, $82, $82, $82, $82, $82
    db $81, $82, $82, $82, $82, $82, $83, $83, $84, $85, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $8e, $8f, $90, $92, $94, $95, $97, $99, $9a, $9c, $9e, $a0, $a2, $a5
    db $a7, $a9, $ab, $ae, $b0, $b2, $b5, $b7, $ba, $bd, $bf, $c2, $c5, $c7, $ca, $cd
    db $d0, $d3, $d6, $d9, $dc, $df, $e2, $e5, $e8, $eb, $ee, $f1, $f4, $f7, $fa, $fd

    push af                                       ; $6c49: $f5
    call Call_000_3185                            ; $6c4a: $cd $85 $31
    ld a, [hl+]                                   ; $6c4d: $2a
    ld h, [hl]                                    ; $6c4e: $66
    ld l, a                                       ; $6c4f: $6f
    pop af                                        ; $6c50: $f1
    ret                                           ; $6c51: $c9


Call_001_6c52:
    push hl                                       ; $6c52: $e5
    inc de                                        ; $6c53: $13
    ld a, $a0                                     ; $6c54: $3e $a0
    ld [de], a                                    ; $6c56: $12
    dec de                                        ; $6c57: $1b
    ld a, $30                                     ; $6c58: $3e $30
    ld [de], a                                    ; $6c5a: $12
    jr jr_001_6c61                                ; $6c5b: $18 $04

Call_001_6c5d:
    push hl                                       ; $6c5d: $e5
    ld a, $a0                                     ; $6c5e: $3e $a0
    ld [de], a                                    ; $6c60: $12

jr_001_6c61:
    call Call_001_6c7f                            ; $6c61: $cd $7f $6c
    call Call_001_6c8b                            ; $6c64: $cd $8b $6c

jr_001_6c67:
    ld a, h                                       ; $6c67: $7c
    or l                                          ; $6c68: $b5
    jr z, jr_001_6c73                             ; $6c69: $28 $08

    call Call_001_6c7f                            ; $6c6b: $cd $7f $6c
    call Call_001_6c8b                            ; $6c6e: $cd $8b $6c
    jr jr_001_6c67                                ; $6c71: $18 $f4

jr_001_6c73:
    call Call_000_3062                            ; $6c73: $cd $62 $30
    dec de                                        ; $6c76: $1b
    ld l, e                                       ; $6c77: $6b
    ld h, d                                       ; $6c78: $62
    ld a, [hl]                                    ; $6c79: $7e
    or $80                                        ; $6c7a: $f6 $80
    ld [hl], a                                    ; $6c7c: $77
    pop hl                                        ; $6c7d: $e1
    ret                                           ; $6c7e: $c9


Call_001_6c7f:
    push de                                       ; $6c7f: $d5
    ld de, $000a                                  ; $6c80: $11 $0a $00
    call Call_000_31b4                            ; $6c83: $cd $b4 $31
    ld a, e                                       ; $6c86: $7b
    add $30                                       ; $6c87: $c6 $30
    pop de                                        ; $6c89: $d1
    ret                                           ; $6c8a: $c9


Call_001_6c8b:
    push de                                       ; $6c8b: $d5
    push hl                                       ; $6c8c: $e5
    ld h, d                                       ; $6c8d: $62
    ld l, e                                       ; $6c8e: $6b

jr_001_6c8f:
    ld d, [hl]                                    ; $6c8f: $56
    ld [hl+], a                                   ; $6c90: $22
    cp $a0                                        ; $6c91: $fe $a0
    jr z, jr_001_6c98                             ; $6c93: $28 $03

    ld a, d                                       ; $6c95: $7a
    jr jr_001_6c8f                                ; $6c96: $18 $f7

jr_001_6c98:
    pop hl                                        ; $6c98: $e1
    pop de                                        ; $6c99: $d1
    ret                                           ; $6c9a: $c9


Call_001_6c9b:
    push af                                       ; $6c9b: $f5
    push bc                                       ; $6c9c: $c5
    push de                                       ; $6c9d: $d5
    ld de, $c1ec                                  ; $6c9e: $11 $ec $c1
    ld bc, $0007                                  ; $6ca1: $01 $07 $00
    call Call_000_114a                            ; $6ca4: $cd $4a $11
    pop de                                        ; $6ca7: $d1
    pop bc                                        ; $6ca8: $c1
    pop af                                        ; $6ca9: $f1
    ret                                           ; $6caa: $c9


Call_001_6cab:
    ld [$c1f2], a                                 ; $6cab: $ea $f2 $c1
    ret                                           ; $6cae: $c9


    ld [$c1ec], a                                 ; $6caf: $ea $ec $c1
    ret                                           ; $6cb2: $c9


Call_001_6cb3:
    push hl                                       ; $6cb3: $e5
    call Call_001_6cc6                            ; $6cb4: $cd $c6 $6c
    ld hl, $ffb8                                  ; $6cb7: $21 $b8 $ff
    ld a, [hl+]                                   ; $6cba: $2a
    ld h, [hl]                                    ; $6cbb: $66
    ld l, a                                       ; $6cbc: $6f
    ld [$c1f0], a                                 ; $6cbd: $ea $f0 $c1
    ld a, h                                       ; $6cc0: $7c
    ld [$c1f1], a                                 ; $6cc1: $ea $f1 $c1
    pop hl                                        ; $6cc4: $e1
    ret                                           ; $6cc5: $c9


Call_001_6cc6:
    ld hl, $c1ee                                  ; $6cc6: $21 $ee $c1
    ld a, [hl+]                                   ; $6cc9: $2a
    ld h, [hl]                                    ; $6cca: $66
    ld l, a                                       ; $6ccb: $6f
    inc hl                                        ; $6ccc: $23
    inc hl                                        ; $6ccd: $23
    ld a, l                                       ; $6cce: $7d
    ld [$c1ee], a                                 ; $6ccf: $ea $ee $c1
    ld a, h                                       ; $6cd2: $7c
    ld [$c1ef], a                                 ; $6cd3: $ea $ef $c1
    ret                                           ; $6cd6: $c9


    push hl                                       ; $6cd7: $e5
    add a                                         ; $6cd8: $87
    ld l, a                                       ; $6cd9: $6f
    ld h, $00                                     ; $6cda: $26 $00
    add hl, de                                    ; $6cdc: $19
    ld e, [hl]                                    ; $6cdd: $5e
    inc hl                                        ; $6cde: $23
    ld d, [hl]                                    ; $6cdf: $56
    pop hl                                        ; $6ce0: $e1
    push bc                                       ; $6ce1: $c5
    push de                                       ; $6ce2: $d5
    push hl                                       ; $6ce3: $e5
    push de                                       ; $6ce4: $d5
    call Call_001_6c9b                            ; $6ce5: $cd $9b $6c
    pop hl                                        ; $6ce8: $e1
    call Call_001_6468                            ; $6ce9: $cd $68 $64
    pop hl                                        ; $6cec: $e1
    pop de                                        ; $6ced: $d1
    pop bc                                        ; $6cee: $c1
    ret                                           ; $6cef: $c9


    call Call_000_3185                            ; $6cf0: $cd $85 $31
    ld a, [hl+]                                   ; $6cf3: $2a
    ld h, [hl]                                    ; $6cf4: $66
    ld l, a                                       ; $6cf5: $6f
    ldh a, [rSVBK]                                ; $6cf6: $f0 $70
    push af                                       ; $6cf8: $f5
    ld a, $07                                     ; $6cf9: $3e $07
    ldh [rSVBK], a                                ; $6cfb: $e0 $70
    push bc                                       ; $6cfd: $c5
    push de                                       ; $6cfe: $d5
    push hl                                       ; $6cff: $e5
    call Call_001_6468                            ; $6d00: $cd $68 $64
    call Call_001_6cb3                            ; $6d03: $cd $b3 $6c
    pop hl                                        ; $6d06: $e1
    pop de                                        ; $6d07: $d1
    pop bc                                        ; $6d08: $c1
    pop af                                        ; $6d09: $f1
    ldh [rSVBK], a                                ; $6d0a: $e0 $70
    ret                                           ; $6d0c: $c9


Call_001_6d0d:
    call Call_000_3185                            ; $6d0d: $cd $85 $31

    ldh a, [rSVBK]                                ; $6d10: $f0 $70
    push af                                       ; $6d12: $f5
    ld a, $07                                     ; $6d13: $3e $07
    ldh [rSVBK], a                                ; $6d15: $e0 $70
    push bc                                       ; $6d17: $c5
    push de                                       ; $6d18: $d5
    push hl                                       ; $6d19: $e5
    ld de, $0000                                  ; $6d1a: $11 $00 $00
    call Call_000_30b6                            ; $6d1d: $cd $b6 $30
    ld hl, $d400                                  ; $6d20: $21 $00 $d4
    call Call_001_6468                            ; $6d23: $cd $68 $64
    call Call_001_6cb3                            ; $6d26: $cd $b3 $6c
    pop hl                                        ; $6d29: $e1
    pop de                                        ; $6d2a: $d1
    pop bc                                        ; $6d2b: $c1
    pop af                                        ; $6d2c: $f1
    ldh [rSVBK], a                                ; $6d2d: $e0 $70
    ret                                           ; $6d2f: $c9


Call_001_6d30:
    push bc                                       ; $6d30: $c5
    push de                                       ; $6d31: $d5
    ld c, a                                       ; $6d32: $4f
    ld b, $00                                     ; $6d33: $06 $00
    call Call_001_6d3b                            ; $6d35: $cd $3b $6d
    pop de                                        ; $6d38: $d1
    pop bc                                        ; $6d39: $c1
    ret                                           ; $6d3a: $c9


Call_001_6d3b:
    ldh a, [rSVBK]                                ; $6d3b: $f0 $70
    push af                                       ; $6d3d: $f5
    ld a, $07                                     ; $6d3e: $3e $07
    ldh [rSVBK], a                                ; $6d40: $e0 $70
    push bc                                       ; $6d42: $c5
    push de                                       ; $6d43: $d5
    push hl                                       ; $6d44: $e5
    ld h, b                                       ; $6d45: $60
    ld l, c                                       ; $6d46: $69
    call Call_001_6f1c                            ; $6d47: $cd $1c $6f
    pop hl                                        ; $6d4a: $e1
    ldh [$c1], a                                  ; $6d4b: $e0 $c1
    ld a, $71                                     ; $6d4d: $3e $71
    ldh [$bd], a                                  ; $6d4f: $e0 $bd
    ld a, $30                                     ; $6d51: $3e $30
    ldh [$be], a                                  ; $6d53: $e0 $be
    call Call_000_3386                            ; $6d55: $cd $86 $33
    call Call_001_6f9e                            ; $6d58: $cd $9e $6f
    ld hl, $d400                                  ; $6d5b: $21 $00 $d4
    call Call_001_6468                            ; $6d5e: $cd $68 $64
    call Call_001_6cb3                            ; $6d61: $cd $b3 $6c
    pop de                                        ; $6d64: $d1
    pop bc                                        ; $6d65: $c1
    pop af                                        ; $6d66: $f1
    ldh [rSVBK], a                                ; $6d67: $e0 $70
    ret                                           ; $6d69: $c9


    ldh a, [rSVBK]                                ; $6d6a: $f0 $70
    push af                                       ; $6d6c: $f5
    ld a, $07                                     ; $6d6d: $3e $07
    ldh [rSVBK], a                                ; $6d6f: $e0 $70
    push bc                                       ; $6d71: $c5
    push de                                       ; $6d72: $d5
    push hl                                       ; $6d73: $e5
    ld h, b                                       ; $6d74: $60
    ld l, c                                       ; $6d75: $69
    call Call_001_6f1c                            ; $6d76: $cd $1c $6f
    ld h, d                                       ; $6d79: $62
    ld l, e                                       ; $6d7a: $6b
    call Call_001_6f22                            ; $6d7b: $cd $22 $6f
    pop hl                                        ; $6d7e: $e1
    ldh [$c1], a                                  ; $6d7f: $e0 $c1
    ld a, $71                                     ; $6d81: $3e $71
    ldh [$bd], a                                  ; $6d83: $e0 $bd
    ld a, $30                                     ; $6d85: $3e $30
    ldh [$be], a                                  ; $6d87: $e0 $be
    call Call_000_3386                            ; $6d89: $cd $86 $33
    ld hl, $d400                                  ; $6d8c: $21 $00 $d4
    call Call_001_6468                            ; $6d8f: $cd $68 $64
    call Call_001_6cb3                            ; $6d92: $cd $b3 $6c
    pop de                                        ; $6d95: $d1
    pop bc                                        ; $6d96: $c1
    pop af                                        ; $6d97: $f1
    ldh [rSVBK], a                                ; $6d98: $e0 $70
    ret                                           ; $6d9a: $c9


    ldh [$bc], a                                  ; $6d9b: $e0 $bc
    ldh a, [rSVBK]                                ; $6d9d: $f0 $70
    push af                                       ; $6d9f: $f5
    ld a, $07                                     ; $6da0: $3e $07
    ldh [rSVBK], a                                ; $6da2: $e0 $70
    ldh a, [$bc]                                  ; $6da4: $f0 $bc
    push de                                       ; $6da6: $d5
    push hl                                       ; $6da7: $e5
    ld h, b                                       ; $6da8: $60
    ld l, c                                       ; $6da9: $69
    call Call_001_6f6a                            ; $6daa: $cd $6a $6f
    pop hl                                        ; $6dad: $e1
    ldh [$c1], a                                  ; $6dae: $e0 $c1
    ld a, $71                                     ; $6db0: $3e $71
    ldh [$bd], a                                  ; $6db2: $e0 $bd
    ld a, $30                                     ; $6db4: $3e $30
    ldh [$be], a                                  ; $6db6: $e0 $be
    call Call_000_3386                            ; $6db8: $cd $86 $33
    call Call_001_6f9e                            ; $6dbb: $cd $9e $6f
    ld hl, $d400                                  ; $6dbe: $21 $00 $d4
    call Call_001_6468                            ; $6dc1: $cd $68 $64
    call Call_001_6cb3                            ; $6dc4: $cd $b3 $6c
    pop de                                        ; $6dc7: $d1
    ldh [$bc], a                                  ; $6dc8: $e0 $bc
    pop af                                        ; $6dca: $f1
    ldh [rSVBK], a                                ; $6dcb: $e0 $70
    ldh a, [$bc]                                  ; $6dcd: $f0 $bc
    ret                                           ; $6dcf: $c9


    call Call_000_3185                            ; $6dd0: $cd $85 $31

Call_001_6dd3:
    ldh a, [rSVBK]                                ; $6dd3: $f0 $70
    push af                                       ; $6dd5: $f5
    ld a, $07                                     ; $6dd6: $3e $07
    ldh [rSVBK], a                                ; $6dd8: $e0 $70
    push bc                                       ; $6dda: $c5
    push de                                       ; $6ddb: $d5
    push hl                                       ; $6ddc: $e5
    ldh [$c1], a                                  ; $6ddd: $e0 $c1
    ld a, $71                                     ; $6ddf: $3e $71
    ldh [$bd], a                                  ; $6de1: $e0 $bd
    ld a, $30                                     ; $6de3: $3e $30
    ldh [$be], a                                  ; $6de5: $e0 $be
    call Call_000_3386                            ; $6de7: $cd $86 $33
    ld hl, $d400                                  ; $6dea: $21 $00 $d4
    call Call_001_6468                            ; $6ded: $cd $68 $64
    call Call_001_6cb3                            ; $6df0: $cd $b3 $6c
    pop hl                                        ; $6df3: $e1
    pop de                                        ; $6df4: $d1
    pop bc                                        ; $6df5: $c1
    pop af                                        ; $6df6: $f1
    ldh [rSVBK], a                                ; $6df7: $e0 $70
    ret                                           ; $6df9: $c9


    call Call_000_3185                            ; $6dfa: $cd $85 $31
    ldh a, [rSVBK]                                ; $6dfd: $f0 $70
    push af                                       ; $6dff: $f5
    ld a, $07                                     ; $6e00: $3e $07
    ldh [rSVBK], a                                ; $6e02: $e0 $70
    push bc                                       ; $6e04: $c5
    push de                                       ; $6e05: $d5
    call Call_000_30b6                            ; $6e06: $cd $b6 $30
    call Call_001_6f9e                            ; $6e09: $cd $9e $6f
    push bc                                       ; $6e0c: $c5
    call Call_001_6468                            ; $6e0d: $cd $68 $64
    call Call_001_6cb3                            ; $6e10: $cd $b3 $6c
    pop hl                                        ; $6e13: $e1
    pop de                                        ; $6e14: $d1
    pop bc                                        ; $6e15: $c1
    pop af                                        ; $6e16: $f1
    ldh [rSVBK], a                                ; $6e17: $e0 $70
    ret                                           ; $6e19: $c9


Call_001_6e1a:
    ldh a, [rSVBK]                                ; $6e1a: $f0 $70
    push af                                       ; $6e1c: $f5
    ld a, $07                                     ; $6e1d: $3e $07
    ldh [rSVBK], a                                ; $6e1f: $e0 $70
    push bc                                       ; $6e21: $c5
    push de                                       ; $6e22: $d5
    push hl                                       ; $6e23: $e5
    ld de, $0000                                  ; $6e24: $11 $00 $00
    call Call_000_30b6                            ; $6e27: $cd $b6 $30
    call Call_001_6f9e                            ; $6e2a: $cd $9e $6f
    ld hl, $d400                                  ; $6e2d: $21 $00 $d4
    call Call_001_6468                            ; $6e30: $cd $68 $64
    call Call_001_6cb3                            ; $6e33: $cd $b3 $6c
    pop hl                                        ; $6e36: $e1
    pop de                                        ; $6e37: $d1
    pop bc                                        ; $6e38: $c1
    pop af                                        ; $6e39: $f1
    ldh [rSVBK], a                                ; $6e3a: $e0 $70
    ret                                           ; $6e3c: $c9


    ldh a, [rSVBK]                                ; $6e3d: $f0 $70
    push af                                       ; $6e3f: $f5
    ld a, $07                                     ; $6e40: $3e $07
    ldh [rSVBK], a                                ; $6e42: $e0 $70
    push bc                                       ; $6e44: $c5
    push de                                       ; $6e45: $d5
    push hl                                       ; $6e46: $e5
    ld de, $0000                                  ; $6e47: $11 $00 $00
    call Call_000_30b6                            ; $6e4a: $cd $b6 $30
    call Call_001_6f9e                            ; $6e4d: $cd $9e $6f
    ld hl, $d400                                  ; $6e50: $21 $00 $d4
    call Call_001_6468                            ; $6e53: $cd $68 $64
    ld a, [$c1ed]                                 ; $6e56: $fa $ed $c1
    ld b, a                                       ; $6e59: $47

jr_001_6e5a:
    call Call_001_6cb3                            ; $6e5a: $cd $b3 $6c
    dec b                                         ; $6e5d: $05
    jr nz, jr_001_6e5a                            ; $6e5e: $20 $fa

    pop hl                                        ; $6e60: $e1
    pop de                                        ; $6e61: $d1
    pop bc                                        ; $6e62: $c1
    pop af                                        ; $6e63: $f1
    ldh [rSVBK], a                                ; $6e64: $e0 $70
    ret                                           ; $6e66: $c9


Call_001_6e67:
    ldh [$bc], a                                  ; $6e67: $e0 $bc
    ldh a, [rSVBK]                                ; $6e69: $f0 $70
    push af                                       ; $6e6b: $f5
    ld a, $07                                     ; $6e6c: $3e $07
    ldh [rSVBK], a                                ; $6e6e: $e0 $70
    ldh a, [$bc]                                  ; $6e70: $f0 $bc
    push bc                                       ; $6e72: $c5
    push de                                       ; $6e73: $d5
    push hl                                       ; $6e74: $e5
    call Call_000_3185                            ; $6e75: $cd $85 $31
    ld de, $0000                                  ; $6e78: $11 $00 $00
    call Call_000_30b6                            ; $6e7b: $cd $b6 $30
    call Call_001_6f9e                            ; $6e7e: $cd $9e $6f
    ld hl, $d400                                  ; $6e81: $21 $00 $d4
    call Call_001_6468                            ; $6e84: $cd $68 $64
    call Call_001_6cb3                            ; $6e87: $cd $b3 $6c
    pop hl                                        ; $6e8a: $e1
    pop de                                        ; $6e8b: $d1
    pop bc                                        ; $6e8c: $c1
    pop af                                        ; $6e8d: $f1
    ldh [rSVBK], a                                ; $6e8e: $e0 $70
    ret                                           ; $6e90: $c9


    call Call_000_3185                            ; $6e91: $cd $85 $31

    ldh a, [rSVBK]                                ; $6e94: $f0 $70
    push af                                       ; $6e96: $f5
    ld a, $07                                     ; $6e97: $3e $07
    ldh [rSVBK], a                                ; $6e99: $e0 $70
    push bc                                       ; $6e9b: $c5
    push de                                       ; $6e9c: $d5
    push hl                                       ; $6e9d: $e5
    ldh [$c1], a                                  ; $6e9e: $e0 $c1
    ld a, $71                                     ; $6ea0: $3e $71
    ldh [$bd], a                                  ; $6ea2: $e0 $bd
    ld a, $30                                     ; $6ea4: $3e $30
    ldh [$be], a                                  ; $6ea6: $e0 $be
    call Call_000_3386                            ; $6ea8: $cd $86 $33
    call Call_001_6f9e                            ; $6eab: $cd $9e $6f
    ld hl, $d400                                  ; $6eae: $21 $00 $d4
    call Call_001_6468                            ; $6eb1: $cd $68 $64
    call Call_001_6cb3                            ; $6eb4: $cd $b3 $6c
    pop hl                                        ; $6eb7: $e1
    pop de                                        ; $6eb8: $d1
    pop bc                                        ; $6eb9: $c1
    pop af                                        ; $6eba: $f1
    ldh [rSVBK], a                                ; $6ebb: $e0 $70
    ret                                           ; $6ebd: $c9


    push hl                                       ; $6ebe: $e5
    ld l, a                                       ; $6ebf: $6f
    ld h, $00                                     ; $6ec0: $26 $00
    call Call_001_6ee7                            ; $6ec2: $cd $e7 $6e
    pop hl                                        ; $6ec5: $e1
    ret                                           ; $6ec6: $c9


    ldh a, [rSVBK]                                ; $6ec7: $f0 $70
    push af                                       ; $6ec9: $f5
    ld a, $07                                     ; $6eca: $3e $07
    ldh [rSVBK], a                                ; $6ecc: $e0 $70
    push bc                                       ; $6ece: $c5
    push de                                       ; $6ecf: $d5
    push hl                                       ; $6ed0: $e5
    ld de, $d400                                  ; $6ed1: $11 $00 $d4
    call Call_001_6c52                            ; $6ed4: $cd $52 $6c
    ld hl, $d400                                  ; $6ed7: $21 $00 $d4
    call Call_001_6468                            ; $6eda: $cd $68 $64
    call Call_001_6cb3                            ; $6edd: $cd $b3 $6c
    pop hl                                        ; $6ee0: $e1
    pop de                                        ; $6ee1: $d1
    pop bc                                        ; $6ee2: $c1
    pop af                                        ; $6ee3: $f1
    ldh [rSVBK], a                                ; $6ee4: $e0 $70
    ret                                           ; $6ee6: $c9


Call_001_6ee7:
Jump_001_6ee7:
    ldh a, [rSVBK]                                ; $6ee7: $f0 $70
    push af                                       ; $6ee9: $f5
    ld a, $07                                     ; $6eea: $3e $07
    ldh [rSVBK], a                                ; $6eec: $e0 $70
    push bc                                       ; $6eee: $c5
    push de                                       ; $6eef: $d5
    push hl                                       ; $6ef0: $e5
    ld de, $d400                                  ; $6ef1: $11 $00 $d4
    call Call_001_6c5d                            ; $6ef4: $cd $5d $6c
    ld hl, $d400                                  ; $6ef7: $21 $00 $d4
    call Call_001_6468                            ; $6efa: $cd $68 $64
    call Call_001_6cb3                            ; $6efd: $cd $b3 $6c
    pop hl                                        ; $6f00: $e1
    pop de                                        ; $6f01: $d1
    pop bc                                        ; $6f02: $c1
    pop af                                        ; $6f03: $f1
    ldh [rSVBK], a                                ; $6f04: $e0 $70
    ret                                           ; $6f06: $c9


Call_001_6f07:
    push de                                       ; $6f07: $d5
    ld de, $c23a                                  ; $6f08: $11 $3a $c2
    jr jr_001_6f17                                ; $6f0b: $18 $0a

Call_001_6f0d:
    push de                                       ; $6f0d: $d5
    ld de, $c24a                                  ; $6f0e: $11 $4a $c2
    jr jr_001_6f17                                ; $6f11: $18 $04

Call_001_6f13:
    push de                                       ; $6f13: $d5
    ld de, $c25a                                  ; $6f14: $11 $5a $c2

jr_001_6f17:
    ld l, a                                       ; $6f17: $6f
    ld h, $00                                     ; $6f18: $26 $00
    jr jr_001_6f2c                                ; $6f1a: $18 $10

Call_001_6f1c:
    push de                                       ; $6f1c: $d5
    ld de, $c23a                                  ; $6f1d: $11 $3a $c2
    jr jr_001_6f2c                                ; $6f20: $18 $0a

Call_001_6f22:
    push de                                       ; $6f22: $d5
    ld de, $c24a                                  ; $6f23: $11 $4a $c2
    jr jr_001_6f2c                                ; $6f26: $18 $04

    push de                                       ; $6f28: $d5
    ld de, $c25a                                  ; $6f29: $11 $5a $c2

jr_001_6f2c:
    push hl                                       ; $6f2c: $e5
    ldh a, [rSVBK]                                ; $6f2d: $f0 $70
    push af                                       ; $6f2f: $f5
    ld a, $07                                     ; $6f30: $3e $07
    ldh [rSVBK], a                                ; $6f32: $e0 $70
    call Call_001_6c5d                            ; $6f34: $cd $5d $6c
    pop af                                        ; $6f37: $f1
    ldh [rSVBK], a                                ; $6f38: $e0 $70
    pop hl                                        ; $6f3a: $e1
    pop de                                        ; $6f3b: $d1
    ret                                           ; $6f3c: $c9


    push de                                       ; $6f3d: $d5
    ld de, $c23a                                  ; $6f3e: $11 $3a $c2
    jr jr_001_6f4d                                ; $6f41: $18 $0a

    push de                                       ; $6f43: $d5
    ld de, $c24a                                  ; $6f44: $11 $4a $c2
    jr jr_001_6f4d                                ; $6f47: $18 $04

    push de                                       ; $6f49: $d5
    ld de, $c25a                                  ; $6f4a: $11 $5a $c2

jr_001_6f4d:
    ldh a, [rSVBK]                                ; $6f4d: $f0 $70
    push af                                       ; $6f4f: $f5
    ld a, $07                                     ; $6f50: $3e $07
    ldh [rSVBK], a                                ; $6f52: $e0 $70
    push de                                       ; $6f54: $d5
    push hl                                       ; $6f55: $e5
    ldh [$c1], a                                  ; $6f56: $e0 $c1
    ld a, $30                                     ; $6f58: $3e $30
    ldh [$bd], a                                  ; $6f5a: $e0 $bd
    ld a, $36                                     ; $6f5c: $3e $36
    ldh [$be], a                                  ; $6f5e: $e0 $be
    call Call_000_3386                            ; $6f60: $cd $86 $33
    pop hl                                        ; $6f63: $e1
    pop de                                        ; $6f64: $d1
    pop af                                        ; $6f65: $f1
    ldh [rSVBK], a                                ; $6f66: $e0 $70
    pop de                                        ; $6f68: $d1
    ret                                           ; $6f69: $c9


Call_001_6f6a:
    ld de, $c23a                                  ; $6f6a: $11 $3a $c2
    jr jr_001_6f77                                ; $6f6d: $18 $08

    ld de, $c24a                                  ; $6f6f: $11 $4a $c2
    jr jr_001_6f77                                ; $6f72: $18 $03

    ld de, $c25a                                  ; $6f74: $11 $5a $c2

jr_001_6f77:
    ldh [$bc], a                                  ; $6f77: $e0 $bc
    ldh a, [rSVBK]                                ; $6f79: $f0 $70
    push af                                       ; $6f7b: $f5
    ld a, $07                                     ; $6f7c: $3e $07
    ldh [rSVBK], a                                ; $6f7e: $e0 $70
    ldh a, [$bc]                                  ; $6f80: $f0 $bc
    push de                                       ; $6f82: $d5
    push hl                                       ; $6f83: $e5
    call Call_000_3185                            ; $6f84: $cd $85 $31
    ldh [$c1], a                                  ; $6f87: $e0 $c1
    ld a, $30                                     ; $6f89: $3e $30
    ldh [$bd], a                                  ; $6f8b: $e0 $bd
    ld a, $36                                     ; $6f8d: $3e $36
    ldh [$be], a                                  ; $6f8f: $e0 $be
    call Call_000_3386                            ; $6f91: $cd $86 $33
    pop hl                                        ; $6f94: $e1
    pop de                                        ; $6f95: $d1
    ldh [$bc], a                                  ; $6f96: $e0 $bc
    pop af                                        ; $6f98: $f1
    ldh [rSVBK], a                                ; $6f99: $e0 $70
    ldh a, [$bc]                                  ; $6f9b: $f0 $bc
    ret                                           ; $6f9d: $c9


Call_001_6f9e:
    push hl                                       ; $6f9e: $e5
    xor a                                         ; $6f9f: $af
    ld [$c1ed], a                                 ; $6fa0: $ea $ed $c1
    ld [$c233], a                                 ; $6fa3: $ea $33 $c2
    ld c, l                                       ; $6fa6: $4d
    ld b, h                                       ; $6fa7: $44

Jump_001_6fa8:
jr_001_6fa8:
    ld a, [$c234]                                 ; $6fa8: $fa $34 $c2
    ld hl, $c1ed                                  ; $6fab: $21 $ed $c1
    cp [hl]                                       ; $6fae: $be
    jr nz, jr_001_6fc3                            ; $6faf: $20 $12

    ld a, [$c233]                                 ; $6fb1: $fa $33 $c2
    ld hl, $2c00                                  ; $6fb4: $21 $00 $2c
    rst $08                                       ; $6fb7: $cf
    add hl, bc                                    ; $6fb8: $09
    ld a, l                                       ; $6fb9: $7d
    ld [$c238], a                                 ; $6fba: $ea $38 $c2
    ld a, h                                       ; $6fbd: $7c
    ld [$c239], a                                 ; $6fbe: $ea $39 $c2
    pop hl                                        ; $6fc1: $e1
    ret                                           ; $6fc2: $c9


jr_001_6fc3:
    inc [hl]                                      ; $6fc3: $34
    xor a                                         ; $6fc4: $af
    ld [$c235], a                                 ; $6fc5: $ea $35 $c2
    ld [$c237], a                                 ; $6fc8: $ea $37 $c2

jr_001_6fcb:
    ld h, b                                       ; $6fcb: $60
    ld l, c                                       ; $6fcc: $69
    call Call_001_703f                            ; $6fcd: $cd $3f $70
    ld [$c236], a                                 ; $6fd0: $ea $36 $c2
    ld a, [$c237]                                 ; $6fd3: $fa $37 $c2
    or a                                          ; $6fd6: $b7
    jr nz, jr_001_6ffa                            ; $6fd7: $20 $21

    ld a, [$c235]                                 ; $6fd9: $fa $35 $c2
    add e                                         ; $6fdc: $83
    push hl                                       ; $6fdd: $e5
    ld l, a                                       ; $6fde: $6f
    ld a, [$c1eb]                                 ; $6fdf: $fa $eb $c1
    cp l                                          ; $6fe2: $bd
    ld a, l                                       ; $6fe3: $7d
    pop hl                                        ; $6fe4: $e1
    jr c, jr_001_6ffa                             ; $6fe5: $38 $13

    ld [$c235], a                                 ; $6fe7: $ea $35 $c2
    ld a, [$c236]                                 ; $6fea: $fa $36 $c2
    or a                                          ; $6fed: $b7
    jr z, jr_001_6fcb                             ; $6fee: $28 $db

    ld hl, $c238                                  ; $6ff0: $21 $38 $c2
    ld [hl], $00                                  ; $6ff3: $36 $00
    inc hl                                        ; $6ff5: $23
    ld [hl], $00                                  ; $6ff6: $36 $00
    pop hl                                        ; $6ff8: $e1
    ret                                           ; $6ff9: $c9


jr_001_6ffa:
    ld a, [hl]                                    ; $6ffa: $7e
    cp $2d                                        ; $6ffb: $fe $2d
    jr z, jr_001_700f                             ; $6ffd: $28 $10

    dec hl                                        ; $6fff: $2b
    set 7, [hl]                                   ; $7000: $cb $fe
    inc hl                                        ; $7002: $23
    ld b, h                                       ; $7003: $44
    ld c, l                                       ; $7004: $4d
    inc hl                                        ; $7005: $23
    ld a, [$c237]                                 ; $7006: $fa $37 $c2
    or a                                          ; $7009: $b7
    jr z, jr_001_7014                             ; $700a: $28 $08

    inc hl                                        ; $700c: $23
    jr jr_001_7020                                ; $700d: $18 $11

jr_001_700f:
    set 7, [hl]                                   ; $700f: $cb $fe
    inc hl                                        ; $7011: $23
    ld b, h                                       ; $7012: $44
    ld c, l                                       ; $7013: $4d

jr_001_7014:
    ld a, [hl]                                    ; $7014: $7e
    cp $20                                        ; $7015: $fe $20
    jr z, jr_001_701d                             ; $7017: $28 $04

    cp $2d                                        ; $7019: $fe $2d
    jr nz, jr_001_7020                            ; $701b: $20 $03

jr_001_701d:
    inc hl                                        ; $701d: $23
    jr jr_001_7014                                ; $701e: $18 $f4

jr_001_7020:
    call Call_000_3118                            ; $7020: $cd $18 $31
    jr z, jr_001_6fa8                             ; $7023: $28 $83

    push hl                                       ; $7025: $e5
    call Call_000_007b                            ; $7026: $cd $7b $00
    add hl, bc                                    ; $7029: $09
    ld a, l                                       ; $702a: $7d
    cpl                                           ; $702b: $2f
    inc a                                         ; $702c: $3c
    ld hl, $c233                                  ; $702d: $21 $33 $c2
    add [hl]                                      ; $7030: $86
    ld [hl], a                                    ; $7031: $77
    pop hl                                        ; $7032: $e1
    push bc                                       ; $7033: $c5

jr_001_7034:
    ld a, [hl+]                                   ; $7034: $2a
    ld [bc], a                                    ; $7035: $02
    inc bc                                        ; $7036: $03
    bit 7, a                                      ; $7037: $cb $7f
    jr z, jr_001_7034                             ; $7039: $28 $f9

    pop bc                                        ; $703b: $c1
    jp Jump_001_6fa8                              ; $703c: $c3 $a8 $6f


Call_001_703f:
    push hl                                       ; $703f: $e5
    call Call_001_675c                            ; $7040: $cd $5c $67
    ld e, $00                                     ; $7043: $1e $00

jr_001_7045:
    ld a, [bc]                                    ; $7045: $0a
    and $7f                                       ; $7046: $e6 $7f
    cp $5f                                        ; $7048: $fe $5f
    jr nz, jr_001_7054                            ; $704a: $20 $08

jr_001_704c:
    ld a, $01                                     ; $704c: $3e $01
    ld [$c237], a                                 ; $704e: $ea $37 $c2
    xor a                                         ; $7051: $af
    jr jr_001_7071                                ; $7052: $18 $1d

jr_001_7054:
    sub $20                                       ; $7054: $d6 $20
    jr z, jr_001_705c                             ; $7056: $28 $04

    sub $0d                                       ; $7058: $d6 $0d
    jr nz, jr_001_705f                            ; $705a: $20 $03

jr_001_705c:
    cp e                                          ; $705c: $bb
    jr nz, jr_001_7071                            ; $705d: $20 $12

jr_001_705f:
    ld a, [bc]                                    ; $705f: $0a
    and $7f                                       ; $7060: $e6 $7f
    ld hl, $dd00                                  ; $7062: $21 $00 $dd
    rst $08                                       ; $7065: $cf
    ld a, [$c1e9]                                 ; $7066: $fa $e9 $c1
    add e                                         ; $7069: $83
    add [hl]                                      ; $706a: $86
    ld e, a                                       ; $706b: $5f
    ld a, [bc]                                    ; $706c: $0a
    inc bc                                        ; $706d: $03
    rla                                           ; $706e: $17
    jr nc, jr_001_7045                            ; $706f: $30 $d4

jr_001_7071:
    pop hl                                        ; $7071: $e1
    ret                                           ; $7072: $c9


    ld [bc], a                                    ; $7073: $02
    ld [$459b], sp                                ; $7074: $08 $9b $45
    nop                                           ; $7077: $00
    adc b                                         ; $7078: $88
    rrca                                          ; $7079: $0f
    ld bc, $b320                                  ; $707a: $01 $20 $b3
    ld b, l                                       ; $707d: $45
    db $10                                        ; $707e: $10
    adc l                                         ; $707f: $8d
    rra                                           ; $7080: $1f
    ld [bc], a                                    ; $7081: $02
    db $10                                        ; $7082: $10
    ld l, a                                       ; $7083: $6f
    ld b, h                                       ; $7084: $44
    db $10                                        ; $7085: $10
    adc l                                         ; $7086: $8d
    rra                                           ; $7087: $1f
    ld bc, $6b10                                  ; $7088: $01 $10 $6b
    ld b, l                                       ; $708b: $45
    db $10                                        ; $708c: $10
    adc l                                         ; $708d: $8d
    rrca                                          ; $708e: $0f

    db $01, $20, $4f, $43, $00, $88, $0f

    ld [bc], a                                    ; $7096: $02
    jr nz, jr_001_704c                            ; $7097: $20 $b3

    ld b, l                                       ; $7099: $45
    add b                                         ; $709a: $80
    sub [hl]                                      ; $709b: $96
    rrca                                          ; $709c: $0f
    ld [bc], a                                    ; $709d: $02
    jr nz, @-$4f                                  ; $709e: $20 $af

    ld b, e                                       ; $70a0: $43
    nop                                           ; $70a1: $00
    adc b                                         ; $70a2: $88
    dec de                                        ; $70a3: $1b

    db $02, $40, $9f, $44, $00, $88, $1b

    inc bc                                        ; $70ab: $03
    inc b                                         ; $70ac: $04
    ld e, a                                       ; $70ad: $5f
    ld b, l                                       ; $70ae: $45
    ret nc                                        ; $70af: $d0

    adc [hl]                                      ; $70b0: $8e
    rlca                                          ; $70b1: $07

    db $02, $20, $0f, $44, $00, $90, $03

    ld b, $04                                     ; $70b9: $06 $04
    ld e, a                                       ; $70bb: $5f
    ld b, l                                       ; $70bc: $45
    add b                                         ; $70bd: $80
    sub [hl]                                      ; $70be: $96
    rlca                                          ; $70bf: $07

Call_001_70c0:
    push de                                       ; $70c0: $d5
    push hl                                       ; $70c1: $e5
    ld hl, $7073                                  ; $70c2: $21 $73 $70
    rst $08                                       ; $70c5: $cf
    ld de, $c302                                  ; $70c6: $11 $02 $c3
    call CopyHL2DE_7                            ; $70c9: $cd $42 $12
    ld l, e                                       ; $70cc: $6b
    ld h, d                                       ; $70cd: $62
    xor a                                         ; $70ce: $af
    ld [hl+], a                                   ; $70cf: $22
    inc a                                         ; $70d0: $3c
    ld [hl+], a                                   ; $70d1: $22
    ld [hl+], a                                   ; $70d2: $22
    pop hl                                        ; $70d3: $e1
    pop de                                        ; $70d4: $d1
    ret                                           ; $70d5: $c9


    ld a, [$c30b]                                 ; $70d6: $fa $0b $c3
    or a                                          ; $70d9: $b7
    ret z                                         ; $70da: $c8

    ld hl, $c30a                                  ; $70db: $21 $0a $c3
    dec [hl]                                      ; $70de: $35
    ret nz                                        ; $70df: $c0

    ldh [$c1], a                                  ; $70e0: $e0 $c1
    ld a, $c3                                     ; $70e2: $3e $c3
    ldh [$bd], a                                  ; $70e4: $e0 $bd
    ld a, $35                                     ; $70e6: $3e $35
    ldh [$be], a                                  ; $70e8: $e0 $be
    call Call_000_3386                            ; $70ea: $cd $86 $33
    ld a, [$c302]                                 ; $70ed: $fa $02 $c3
    ld [$c30a], a                                 ; $70f0: $ea $0a $c3
    ld a, [$c303]                                 ; $70f3: $fa $03 $c3
    ld l, a                                       ; $70f6: $6f
    ld a, [$c309]                                 ; $70f7: $fa $09 $c3
    inc a                                         ; $70fa: $3c
    cp l                                          ; $70fb: $bd
    jr c, jr_001_70ff                             ; $70fc: $38 $01

    xor a                                         ; $70fe: $af

jr_001_70ff:
    ld [$c309], a                                 ; $70ff: $ea $09 $c3
    ret                                           ; $7102: $c9


    xor a                                         ; $7103: $af
    ld [$cd28], a                                 ; $7104: $ea $28 $cd
    inc a                                         ; $7107: $3c
    ld [$cd2f], a                                 ; $7108: $ea $2f $cd
    call Call_001_737c                            ; $710b: $cd $7c $73
    call Call_001_738b                            ; $710e: $cd $8b $73
    ld a, $50                                     ; $7111: $3e $50
    ld [$cd38], a                                 ; $7113: $ea $38 $cd
    ld a, $48                                     ; $7116: $3e $48
    ld [$cd39], a                                 ; $7118: $ea $39 $cd
    ret                                           ; $711b: $c9


    ld a, $01                                     ; $711c: $3e $01
    ld [$cd2f], a                                 ; $711e: $ea $2f $cd
    call Call_001_737c                            ; $7121: $cd $7c $73
    call Call_001_738b                            ; $7124: $cd $8b $73
    ret                                           ; $7127: $c9


    ldh a, [$db]                                  ; $7128: $f0 $db
    or a                                          ; $712a: $b7
    ret z                                         ; $712b: $c8

    ld a, [$cd28]                                 ; $712c: $fa $28 $cd
    or a                                          ; $712f: $b7
    ret nz                                        ; $7130: $c0

    ld a, [$cd2f]                                 ; $7131: $fa $2f $cd
    or a                                          ; $7134: $b7
    jp nz, Jump_000_2eb6                          ; $7135: $c2 $b6 $2e

    call Call_001_7352                            ; $7138: $cd $52 $73
    push hl                                       ; $713b: $e5
    ld de, $001f                                  ; $713c: $11 $1f $00
    rst $10                                       ; $713f: $d7
    jr nc, jr_001_714a                            ; $7140: $30 $08

    ld a, $01                                     ; $7142: $3e $01
    ld [$cd2f], a                                 ; $7144: $ea $2f $cd
    call Call_001_737c                            ; $7147: $cd $7c $73

jr_001_714a:
    call Call_001_7367                            ; $714a: $cd $67 $73
    ld de, $001f                                  ; $714d: $11 $1f $00
    rst $10                                       ; $7150: $d7
    jr nc, jr_001_715b                            ; $7151: $30 $08

    ld a, $01                                     ; $7153: $3e $01
    ld [$cd2f], a                                 ; $7155: $ea $2f $cd
    call Call_001_738b                            ; $7158: $cd $8b $73

jr_001_715b:
    pop de                                        ; $715b: $d1
    ld a, [$cd2f]                                 ; $715c: $fa $2f $cd
    or a                                          ; $715f: $b7
    ret z                                         ; $7160: $c8

    rst $10                                       ; $7161: $d7
    jp c, Jump_000_2eb6                           ; $7162: $da $b6 $2e

    ld l, e                                       ; $7165: $6b
    ld h, d                                       ; $7166: $62
    jp Jump_000_2eb6                              ; $7167: $c3 $b6 $2e


Call_001_716a:
    ldh a, [$dc]                                  ; $716a: $f0 $dc
    and b                                         ; $716c: $a0
    jr z, jr_001_7171                             ; $716d: $28 $02

    xor a                                         ; $716f: $af
    ret                                           ; $7170: $c9


jr_001_7171:
    ld a, b                                       ; $7171: $78
    cp $01                                        ; $7172: $fe $01
    jp z, Jump_001_71c4                           ; $7174: $ca $c4 $71

    cp $02                                        ; $7177: $fe $02
    jp z, Jump_001_7198                           ; $7179: $ca $98 $71

    cp $04                                        ; $717c: $fe $04
    jr z, jr_001_71b0                             ; $717e: $28 $30

    ld hl, $cd45                                  ; $7180: $21 $45 $cd
    ld e, [hl]                                    ; $7183: $5e
    inc hl                                        ; $7184: $23
    ld d, [hl]                                    ; $7185: $56
    ld hl, $ff90                                  ; $7186: $21 $90 $ff
    ld a, [hl+]                                   ; $7189: $2a
    ld h, [hl]                                    ; $718a: $66
    ld l, a                                       ; $718b: $6f
    ld a, c                                       ; $718c: $79
    rst $08                                       ; $718d: $cf
    call Call_000_3132                            ; $718e: $cd $32 $31
    jr nc, jr_001_71d6                            ; $7191: $30 $43

    ld a, c                                       ; $7193: $79
    add e                                         ; $7194: $83
    ld c, a                                       ; $7195: $4f
    jr jr_001_71d6                                ; $7196: $18 $3e

Jump_001_7198:
    ld hl, $cd47                                  ; $7198: $21 $47 $cd
    ld e, [hl]                                    ; $719b: $5e
    inc hl                                        ; $719c: $23
    ld d, [hl]                                    ; $719d: $56
    ld hl, $ff92                                  ; $719e: $21 $92 $ff
    ld a, [hl+]                                   ; $71a1: $2a
    ld h, [hl]                                    ; $71a2: $66
    ld l, a                                       ; $71a3: $6f
    ld a, c                                       ; $71a4: $79
    rst $08                                       ; $71a5: $cf
    call Call_000_3132                            ; $71a6: $cd $32 $31
    jr nc, jr_001_71d6                            ; $71a9: $30 $2b

    ld a, c                                       ; $71ab: $79
    add e                                         ; $71ac: $83
    ld c, a                                       ; $71ad: $4f
    jr jr_001_71d6                                ; $71ae: $18 $26

jr_001_71b0:
    ld hl, $ff90                                  ; $71b0: $21 $90 $ff
    ld a, [hl+]                                   ; $71b3: $2a
    ld h, [hl]                                    ; $71b4: $66
    ld l, a                                       ; $71b5: $6f
    ld a, c                                       ; $71b6: $79
    cpl                                           ; $71b7: $2f
    inc a                                         ; $71b8: $3c
    ld e, a                                       ; $71b9: $5f
    ld d, $ff                                     ; $71ba: $16 $ff
    add hl, de                                    ; $71bc: $19
    jr c, jr_001_71d6                             ; $71bd: $38 $17

    ldh a, [$90]                                  ; $71bf: $f0 $90
    ld c, a                                       ; $71c1: $4f
    jr jr_001_71d6                                ; $71c2: $18 $12

Jump_001_71c4:
    ld hl, $ff92                                  ; $71c4: $21 $92 $ff
    ld a, [hl+]                                   ; $71c7: $2a
    ld h, [hl]                                    ; $71c8: $66
    ld l, a                                       ; $71c9: $6f
    ld a, c                                       ; $71ca: $79
    cpl                                           ; $71cb: $2f
    inc a                                         ; $71cc: $3c
    ld e, a                                       ; $71cd: $5f
    ld d, $ff                                     ; $71ce: $16 $ff
    add hl, de                                    ; $71d0: $19
    jr c, jr_001_71d6                             ; $71d1: $38 $03

    ldh a, [$92]                                  ; $71d3: $f0 $92
    ld c, a                                       ; $71d5: $4f

jr_001_71d6:
    ld a, c                                       ; $71d6: $79
    ret                                           ; $71d7: $c9


    ld hl, $cd45                                  ; $71d8: $21 $45 $cd
    ld e, [hl]                                    ; $71db: $5e
    inc hl                                        ; $71dc: $23
    ld d, [hl]                                    ; $71dd: $56
    ld hl, $ff90                                  ; $71de: $21 $90 $ff
    ld a, [hl+]                                   ; $71e1: $2a
    ld h, [hl]                                    ; $71e2: $66
    ld l, a                                       ; $71e3: $6f
    call Call_000_323b                            ; $71e4: $cd $3b $32
    ld a, l                                       ; $71e7: $7d
    ldh [$90], a                                  ; $71e8: $e0 $90
    ld a, h                                       ; $71ea: $7c
    ldh [$91], a                                  ; $71eb: $e0 $91
    ld hl, $cd47                                  ; $71ed: $21 $47 $cd
    ld e, [hl]                                    ; $71f0: $5e
    inc hl                                        ; $71f1: $23
    ld d, [hl]                                    ; $71f2: $56
    ld hl, $ff92                                  ; $71f3: $21 $92 $ff
    ld a, [hl+]                                   ; $71f6: $2a
    ld h, [hl]                                    ; $71f7: $66
    ld l, a                                       ; $71f8: $6f
    call Call_000_323b                            ; $71f9: $cd $3b $32
    ld a, l                                       ; $71fc: $7d
    ldh [$92], a                                  ; $71fd: $e0 $92
    ld a, h                                       ; $71ff: $7c
    ldh [$93], a                                  ; $7200: $e0 $93
    ret                                           ; $7202: $c9


    ldh a, [$dc]                                  ; $7203: $f0 $dc
    bit 4, a                                      ; $7205: $cb $67
    ret nz                                        ; $7207: $c0

    push bc                                       ; $7208: $c5
    ld a, [$cd43]                                 ; $7209: $fa $43 $cd
    or a                                          ; $720c: $b7
    jr z, jr_001_723b                             ; $720d: $28 $2c

    ld d, a                                       ; $720f: $57
    ld bc, $0051                                  ; $7210: $01 $51 $00
    ld hl, $c320                                  ; $7213: $21 $20 $c3

jr_001_7216:
    add hl, bc                                    ; $7216: $09
    dec d                                         ; $7217: $15
    jr nz, jr_001_7216                            ; $7218: $20 $fc

    push hl                                       ; $721a: $e5
    ld bc, $000b                                  ; $721b: $01 $0b $00
    add hl, bc                                    ; $721e: $09
    ld a, [hl+]                                   ; $721f: $2a
    ld [$cd30], a                                 ; $7220: $ea $30 $cd
    ld a, [hl+]                                   ; $7223: $2a
    ld [$cd31], a                                 ; $7224: $ea $31 $cd
    ld a, [hl+]                                   ; $7227: $2a
    ld [$cd32], a                                 ; $7228: $ea $32 $cd
    ld a, [hl+]                                   ; $722b: $2a
    ld [$cd33], a                                 ; $722c: $ea $33 $cd
    pop hl                                        ; $722f: $e1
    xor a                                         ; $7230: $af
    ld hl, $cd34                                  ; $7231: $21 $34 $cd
    ld [hl+], a                                   ; $7234: $22
    ld [hl+], a                                   ; $7235: $22
    ld [hl+], a                                   ; $7236: $22
    ld [hl+], a                                   ; $7237: $22
    pop bc                                        ; $7238: $c1
    jr jr_001_725e                                ; $7239: $18 $23

jr_001_723b:
    ld hl, $c32b                                  ; $723b: $21 $2b $c3
    ld a, [hl+]                                   ; $723e: $2a
    ld h, [hl]                                    ; $723f: $66
    ld l, a                                       ; $7240: $6f
    ld [$cd30], a                                 ; $7241: $ea $30 $cd
    ld a, h                                       ; $7244: $7c
    ld [$cd31], a                                 ; $7245: $ea $31 $cd
    ld hl, $c32d                                  ; $7248: $21 $2d $c3
    ld a, [hl+]                                   ; $724b: $2a
    ld h, [hl]                                    ; $724c: $66
    ld l, a                                       ; $724d: $6f
    ld [$cd32], a                                 ; $724e: $ea $32 $cd
    ld a, h                                       ; $7251: $7c
    ld [$cd33], a                                 ; $7252: $ea $33 $cd
    xor a                                         ; $7255: $af
    ld hl, $cd34                                  ; $7256: $21 $34 $cd
    ld [hl+], a                                   ; $7259: $22
    ld [hl+], a                                   ; $725a: $22
    ld [hl+], a                                   ; $725b: $22
    ld [hl+], a                                   ; $725c: $22
    pop bc                                        ; $725d: $c1

jr_001_725e:
    xor a                                         ; $725e: $af
    ld [$c26c], a                                 ; $725f: $ea $6c $c2
    ld [$cd40], a                                 ; $7262: $ea $40 $cd
    push bc                                       ; $7265: $c5
    ld a, [$cd4d]                                 ; $7266: $fa $4d $cd
    or a                                          ; $7269: $b7
    jr nz, jr_001_7293                            ; $726a: $20 $27

    call Call_001_73dc                            ; $726c: $cd $dc $73
    ld hl, $cd30                                  ; $726f: $21 $30 $cd
    ld e, [hl]                                    ; $7272: $5e
    inc hl                                        ; $7273: $23
    ld d, [hl]                                    ; $7274: $56
    ld hl, $ff90                                  ; $7275: $21 $90 $ff
    ld a, [hl+]                                   ; $7278: $2a
    ld h, [hl]                                    ; $7279: $66
    ld l, a                                       ; $727a: $6f
    add hl, bc                                    ; $727b: $09
    rst $10                                       ; $727c: $d7
    jr c, jr_001_72bb                             ; $727d: $38 $3c

    ld bc, $0010                                  ; $727f: $01 $10 $00
    add hl, bc                                    ; $7282: $09
    rst $10                                       ; $7283: $d7
    jr c, jr_001_72d6                             ; $7284: $38 $50

    jr z, jr_001_72d6                             ; $7286: $28 $4e

    call Call_000_007b                            ; $7288: $cd $7b $00
    add hl, de                                    ; $728b: $19
    ld de, $0020                                  ; $728c: $11 $20 $00
    call Call_000_323b                            ; $728f: $cd $3b $32
    ld a, l                                       ; $7292: $7d

jr_001_7293:
    ld c, a                                       ; $7293: $4f
    ld b, $08                                     ; $7294: $06 $08
    call Call_001_716a                            ; $7296: $cd $6a $71
    or a                                          ; $7299: $b7
    jr z, jr_001_72d6                             ; $729a: $28 $3a

    ld e, a                                       ; $729c: $5f
    ld d, $00                                     ; $729d: $16 $00

jr_001_729f:
    ld hl, $ff90                                  ; $729f: $21 $90 $ff
    ld a, [hl+]                                   ; $72a2: $2a
    ld h, [hl]                                    ; $72a3: $66
    ld l, a                                       ; $72a4: $6f
    add hl, de                                    ; $72a5: $19
    ld a, l                                       ; $72a6: $7d
    ldh [$90], a                                  ; $72a7: $e0 $90
    ld a, h                                       ; $72a9: $7c
    ldh [$91], a                                  ; $72aa: $e0 $91
    ld hl, $c26c                                  ; $72ac: $21 $6c $c2
    set 3, [hl]                                   ; $72af: $cb $de
    bit 7, d                                      ; $72b1: $cb $7a
    jr z, jr_001_72d6                             ; $72b3: $28 $21

    res 3, [hl]                                   ; $72b5: $cb $9e
    set 2, [hl]                                   ; $72b7: $cb $d6
    jr jr_001_72d6                                ; $72b9: $18 $1b

jr_001_72bb:
    call Call_000_0098                            ; $72bb: $cd $98 $00
    add hl, de                                    ; $72be: $19
    ld de, $0020                                  ; $72bf: $11 $20 $00
    call Call_000_323b                            ; $72c2: $cd $3b $32
    ld a, l                                       ; $72c5: $7d
    ld c, a                                       ; $72c6: $4f
    ld b, $04                                     ; $72c7: $06 $04
    call Call_001_716a                            ; $72c9: $cd $6a $71
    or a                                          ; $72cc: $b7
    jr z, jr_001_72d6                             ; $72cd: $28 $07

    cpl                                           ; $72cf: $2f
    inc a                                         ; $72d0: $3c
    ld e, a                                       ; $72d1: $5f
    ld d, $ff                                     ; $72d2: $16 $ff
    jr jr_001_729f                                ; $72d4: $18 $c9

jr_001_72d6:
    call Call_001_739a                            ; $72d6: $cd $9a $73
    ld hl, $cd32                                  ; $72d9: $21 $32 $cd
    ld e, [hl]                                    ; $72dc: $5e
    inc hl                                        ; $72dd: $23
    ld d, [hl]                                    ; $72de: $56
    ld hl, $ff92                                  ; $72df: $21 $92 $ff
    ld a, [hl+]                                   ; $72e2: $2a
    ld h, [hl]                                    ; $72e3: $66
    ld l, a                                       ; $72e4: $6f
    add hl, bc                                    ; $72e5: $09
    call Call_000_3139                            ; $72e6: $cd $39 $31
    jr c, jr_001_7337                             ; $72e9: $38 $4c

    ld bc, $000c                                  ; $72eb: $01 $0c $00
    add hl, bc                                    ; $72ee: $09
    call Call_000_3139                            ; $72ef: $cd $39 $31
    jr c, jr_001_7330                             ; $72f2: $38 $3c

    jr z, jr_001_7330                             ; $72f4: $28 $3a

    call Call_000_007b                            ; $72f6: $cd $7b $00
    add hl, de                                    ; $72f9: $19
    ld de, $0020                                  ; $72fa: $11 $20 $00
    call Call_000_323b                            ; $72fd: $cd $3b $32
    ld a, l                                       ; $7300: $7d
    ld c, a                                       ; $7301: $4f
    ld b, $02                                     ; $7302: $06 $02
    call Call_001_716a                            ; $7304: $cd $6a $71
    or a                                          ; $7307: $b7
    jr z, jr_001_7330                             ; $7308: $28 $26

    ld e, a                                       ; $730a: $5f
    ld d, $00                                     ; $730b: $16 $00
    ldh a, [$dc]                                  ; $730d: $f0 $dc
    and $02                                       ; $730f: $e6 $02
    jr z, jr_001_7316                             ; $7311: $28 $03

    ld de, $0000                                  ; $7313: $11 $00 $00

jr_001_7316:
    ld hl, $ff92                                  ; $7316: $21 $92 $ff
    ld a, [hl+]                                   ; $7319: $2a
    ld h, [hl]                                    ; $731a: $66
    ld l, a                                       ; $731b: $6f
    add hl, de                                    ; $731c: $19
    ld a, l                                       ; $731d: $7d
    ldh [$92], a                                  ; $731e: $e0 $92
    ld a, h                                       ; $7320: $7c
    ldh [$93], a                                  ; $7321: $e0 $93
    ld hl, $c26c                                  ; $7323: $21 $6c $c2
    set 0, [hl]                                   ; $7326: $cb $c6
    bit 7, d                                      ; $7328: $cb $7a
    jr nz, jr_001_7330                            ; $732a: $20 $04

    res 0, [hl]                                   ; $732c: $cb $86
    set 1, [hl]                                   ; $732e: $cb $ce

jr_001_7330:
    ld a, $01                                     ; $7330: $3e $01
    ld [$cd40], a                                 ; $7332: $ea $40 $cd
    pop bc                                        ; $7335: $c1
    ret                                           ; $7336: $c9


jr_001_7337:
    call Call_000_0098                            ; $7337: $cd $98 $00
    add hl, de                                    ; $733a: $19
    ld de, $0020                                  ; $733b: $11 $20 $00
    call Call_000_323b                            ; $733e: $cd $3b $32
    ld a, l                                       ; $7341: $7d
    ld c, a                                       ; $7342: $4f
    ld b, $01                                     ; $7343: $06 $01
    call Call_001_716a                            ; $7345: $cd $6a $71
    or a                                          ; $7348: $b7
    jr z, jr_001_7330                             ; $7349: $28 $e5

    cpl                                           ; $734b: $2f
    inc a                                         ; $734c: $3c
    ld e, a                                       ; $734d: $5f
    ld d, $ff                                     ; $734e: $16 $ff
    jr jr_001_7316                                ; $7350: $18 $c4

Call_001_7352:
    ld hl, $ff90                                  ; $7352: $21 $90 $ff
    ld e, [hl]                                    ; $7355: $5e
    inc hl                                        ; $7356: $23
    ld d, [hl]                                    ; $7357: $56
    bit 7, d                                      ; $7358: $cb $7a
    call z, Call_000_0098                         ; $735a: $cc $98 $00
    ld hl, $cd29                                  ; $735d: $21 $29 $cd
    ld a, [hl+]                                   ; $7360: $2a
    ld h, [hl]                                    ; $7361: $66
    ld l, a                                       ; $7362: $6f
    add hl, de                                    ; $7363: $19
    jp Jump_000_0078                              ; $7364: $c3 $78 $00


Call_001_7367:
    ld hl, $ff92                                  ; $7367: $21 $92 $ff
    ld e, [hl]                                    ; $736a: $5e
    inc hl                                        ; $736b: $23
    ld d, [hl]                                    ; $736c: $56
    bit 7, d                                      ; $736d: $cb $7a
    call z, Call_000_0098                         ; $736f: $cc $98 $00
    ld hl, $cd2b                                  ; $7372: $21 $2b $cd
    ld a, [hl+]                                   ; $7375: $2a
    ld h, [hl]                                    ; $7376: $66
    ld l, a                                       ; $7377: $6f
    add hl, de                                    ; $7378: $19
    jp Jump_000_0078                              ; $7379: $c3 $78 $00


Call_001_737c:
    ldh a, [$90]                                  ; $737c: $f0 $90
    and $e0                                       ; $737e: $e6 $e0
    add $10                                       ; $7380: $c6 $10
    ld [$cd29], a                                 ; $7382: $ea $29 $cd
    ldh a, [$91]                                  ; $7385: $f0 $91
    ld [$cd2a], a                                 ; $7387: $ea $2a $cd
    ret                                           ; $738a: $c9


Call_001_738b:
    ldh a, [$92]                                  ; $738b: $f0 $92
    and $e0                                       ; $738d: $e6 $e0
    add $10                                       ; $738f: $c6 $10
    ld [$cd2b], a                                 ; $7391: $ea $2b $cd
    ldh a, [$93]                                  ; $7394: $f0 $93
    ld [$cd2c], a                                 ; $7396: $ea $2c $cd
    ret                                           ; $7399: $c9


Call_001_739a:
    push de                                       ; $739a: $d5
    push hl                                       ; $739b: $e5
    ld hl, $cd36                                  ; $739c: $21 $36 $cd
    ld a, [hl+]                                   ; $739f: $2a
    ld h, [hl]                                    ; $73a0: $66
    ld l, a                                       ; $73a1: $6f
    ld a, h                                       ; $73a2: $7c
    rla                                           ; $73a3: $17
    push af                                       ; $73a4: $f5
    call c, Call_000_007b                         ; $73a5: $dc $7b $00
    ld de, $001a                                  ; $73a8: $11 $1a $00
    call Call_000_31b4                            ; $73ab: $cd $b4 $31
    pop af                                        ; $73ae: $f1
    jr c, jr_001_73b5                             ; $73af: $38 $04

    ld a, l                                       ; $73b1: $7d
    cpl                                           ; $73b2: $2f
    inc a                                         ; $73b3: $3c
    ld l, a                                       ; $73b4: $6f

jr_001_73b5:
    ld a, $4b                                     ; $73b5: $3e $4b
    add l                                         ; $73b7: $85
    ld b, $00                                     ; $73b8: $06 $00
    ld c, a                                       ; $73ba: $4f
    ld e, $03                                     ; $73bb: $1e $03
    ld a, [$cd39]                                 ; $73bd: $fa $39 $cd
    sub c                                         ; $73c0: $91
    ld d, a                                       ; $73c1: $57
    jr nc, jr_001_73c8                            ; $73c2: $30 $04

    ld e, $fd                                     ; $73c4: $1e $fd
    cpl                                           ; $73c6: $2f
    inc a                                         ; $73c7: $3c

jr_001_73c8:
    cp $03                                        ; $73c8: $fe $03
    jr c, jr_001_73cd                             ; $73ca: $38 $01

    ld d, e                                       ; $73cc: $53

jr_001_73cd:
    ld a, d                                       ; $73cd: $7a
    cpl                                           ; $73ce: $2f
    inc a                                         ; $73cf: $3c
    ld d, a                                       ; $73d0: $57
    ld a, [$cd39]                                 ; $73d1: $fa $39 $cd
    add d                                         ; $73d4: $82
    ld [$cd39], a                                 ; $73d5: $ea $39 $cd
    ld c, a                                       ; $73d8: $4f
    pop hl                                        ; $73d9: $e1
    pop de                                        ; $73da: $d1
    ret                                           ; $73db: $c9


Call_001_73dc:
    push de                                       ; $73dc: $d5
    push hl                                       ; $73dd: $e5
    ld hl, $cd34                                  ; $73de: $21 $34 $cd
    ld a, [hl+]                                   ; $73e1: $2a
    ld h, [hl]                                    ; $73e2: $66
    ld l, a                                       ; $73e3: $6f
    ld e, l                                       ; $73e4: $5d
    ld d, h                                       ; $73e5: $54
    add hl, hl                                    ; $73e6: $29
    add hl, de                                    ; $73e7: $19
    sra h                                         ; $73e8: $cb $2c
    rr l                                          ; $73ea: $cb $1d
    sra h                                         ; $73ec: $cb $2c
    rr l                                          ; $73ee: $cb $1d
    sra h                                         ; $73f0: $cb $2c
    rr l                                          ; $73f2: $cb $1d
    sra h                                         ; $73f4: $cb $2c
    rr l                                          ; $73f6: $cb $1d
    sra h                                         ; $73f8: $cb $2c
    rr l                                          ; $73fa: $cb $1d
    sra h                                         ; $73fc: $cb $2c
    rr l                                          ; $73fe: $cb $1d
    ld a, l                                       ; $7400: $7d
    cpl                                           ; $7401: $2f
    inc a                                         ; $7402: $3c
    add $48                                       ; $7403: $c6 $48
    ld c, a                                       ; $7405: $4f
    ld b, $00                                     ; $7406: $06 $00
    ld e, $03                                     ; $7408: $1e $03
    ld a, [$cd38]                                 ; $740a: $fa $38 $cd
    sub c                                         ; $740d: $91
    ld d, a                                       ; $740e: $57
    jr nc, jr_001_7415                            ; $740f: $30 $04

    ld e, $fd                                     ; $7411: $1e $fd
    cpl                                           ; $7413: $2f
    inc a                                         ; $7414: $3c

jr_001_7415:
    cp $03                                        ; $7415: $fe $03
    jr c, jr_001_741a                             ; $7417: $38 $01

    ld d, e                                       ; $7419: $53

jr_001_741a:
    ld a, d                                       ; $741a: $7a
    cpl                                           ; $741b: $2f
    inc a                                         ; $741c: $3c
    ld d, a                                       ; $741d: $57
    ld a, [$cd38]                                 ; $741e: $fa $38 $cd
    add d                                         ; $7421: $82
    ld [$cd38], a                                 ; $7422: $ea $38 $cd
    ld c, a                                       ; $7425: $4f
    pop hl                                        ; $7426: $e1
    pop de                                        ; $7427: $d1
    ret                                           ; $7428: $c9


    ld bc, $8023                                  ; $7429: $01 $23 $80
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    nop                                           ; $742e: $00
    xor d                                         ; $742f: $aa
    inc h                                         ; $7430: $24
    ld bc, $0103                                  ; $7431: $01 $03 $01
    ld [bc], a                                    ; $7434: $02
    nop                                           ; $7435: $00
    inc d                                         ; $7436: $14
    inc b                                         ; $7437: $04
    inc d                                         ; $7438: $14
    ld [$0c14], sp                                ; $7439: $08 $14 $0c
    inc d                                         ; $743c: $14
    db $10                                        ; $743d: $10
    inc d                                         ; $743e: $14
    inc d                                         ; $743f: $14
    inc d                                         ; $7440: $14
    jr jr_001_7457                                ; $7441: $18 $14

    inc e                                         ; $7443: $1c
    inc d                                         ; $7444: $14
    nop                                           ; $7445: $00
    jr jr_001_744c                                ; $7446: $18 $04

    jr jr_001_7452                                ; $7448: $18 $08

    jr jr_001_7458                                ; $744a: $18 $0c

jr_001_744c:
    jr jr_001_745e                                ; $744c: $18 $10

    jr jr_001_7464                                ; $744e: $18 $14

    jr jr_001_746a                                ; $7450: $18 $18

jr_001_7452:
    jr jr_001_7470                                ; $7452: $18 $1c

    jr jr_001_7456                                ; $7454: $18 $00

jr_001_7456:
    inc e                                         ; $7456: $1c

jr_001_7457:
    inc b                                         ; $7457: $04

jr_001_7458:
    inc e                                         ; $7458: $1c
    ld [$0c1c], sp                                ; $7459: $08 $1c $0c
    inc e                                         ; $745c: $1c
    db $10                                        ; $745d: $10

jr_001_745e:
    inc e                                         ; $745e: $1c
    inc d                                         ; $745f: $14
    inc e                                         ; $7460: $1c
    jr jr_001_747f                                ; $7461: $18 $1c

    inc e                                         ; $7463: $1c

jr_001_7464:
    inc e                                         ; $7464: $1c
    inc d                                         ; $7465: $14
    nop                                           ; $7466: $00
    jr jr_001_7469                                ; $7467: $18 $00

jr_001_7469:
    inc e                                         ; $7469: $1c

jr_001_746a:
    nop                                           ; $746a: $00
    inc d                                         ; $746b: $14
    inc b                                         ; $746c: $04
    jr @+$06                                      ; $746d: $18 $04

    inc e                                         ; $746f: $1c

jr_001_7470:
    inc b                                         ; $7470: $04
    ld hl, $7429                                  ; $7471: $21 $29 $74
    jp Jump_000_2837                              ; $7474: $c3 $37 $28


    ld a, $23                                     ; $7477: $3e $23
    call Call_000_395e                            ; $7479: $cd $5e $39
    ld hl, $795f                                  ; $747c: $21 $5f $79

jr_001_747f:
    ldh [$c1], a                                  ; $747f: $e0 $c1
    ld a, $6d                                     ; $7481: $3e $6d
    ldh [$bd], a                                  ; $7483: $e0 $bd
    ld a, $7c                                     ; $7485: $3e $7c
    ldh [$be], a                                  ; $7487: $e0 $be
    call Call_000_3365                            ; $7489: $cd $65 $33
    ld hl, $5b1c                                  ; $748c: $21 $1c $5b
    call Call_001_5b8f                            ; $748f: $cd $8f $5b
    ld hl, $5fd2                                  ; $7492: $21 $d2 $5f
    ld e, $01                                     ; $7495: $1e $01
    ld a, $05                                     ; $7497: $3e $05
    ld d, $00                                     ; $7499: $16 $00
    ldh [$c1], a                                  ; $749b: $e0 $c1
    ld a, $3d                                     ; $749d: $3e $3d
    ldh [$bd], a                                  ; $749f: $e0 $bd
    ld a, $25                                     ; $74a1: $3e $25
    ldh [$be], a                                  ; $74a3: $e0 $be
    call Call_000_3386                            ; $74a5: $cd $86 $33
    call Call_001_74c0                            ; $74a8: $cd $c0 $74
    ld a, $87                                     ; $74ab: $3e $87
    call Call_000_03a0                            ; $74ad: $cd $a0 $03
    ret                                           ; $74b0: $c9


    ldh a, [$a5]                                  ; $74b1: $f0 $a5
    or a                                          ; $74b3: $b7
    ret z                                         ; $74b4: $c8

    ld a, $0b                                     ; $74b5: $3e $0b
    call Call_000_2448                            ; $74b7: $cd $48 $24
    ld a, $02                                     ; $74ba: $3e $02
    ld [$c0bb], a                                 ; $74bc: $ea $bb $c0
    ret                                           ; $74bf: $c9


Call_001_74c0:
    ld hl, $cbcd                                  ; $74c0: $21 $cd $cb
    ld a, [hl]                                    ; $74c3: $7e
    inc [hl]                                      ; $74c4: $34
    call Call_001_74c9                            ; $74c5: $cd $c9 $74
    ret                                           ; $74c8: $c9


Call_001_74c9:
    push de                                       ; $74c9: $d5
    push bc                                       ; $74ca: $c5
    dec a                                         ; $74cb: $3d
    ld hl, $7435                                  ; $74cc: $21 $35 $74
    call Call_000_0007                            ; $74cf: $cd $07 $00
    ld a, [hl+]                                   ; $74d2: $2a
    ldh [$f0], a                                  ; $74d3: $e0 $f0
    ld a, [hl+]                                   ; $74d5: $2a
    ldh [$f1], a                                  ; $74d6: $e0 $f1
    ld a, $04                                     ; $74d8: $3e $04
    ldh [$f2], a                                  ; $74da: $e0 $f2
    ldh [$f3], a                                  ; $74dc: $e0 $f3
    ld bc, $0000                                  ; $74de: $01 $00 $00
    ld de, $d8c8                                  ; $74e1: $11 $c8 $d8
    ld hl, $d800                                  ; $74e4: $21 $00 $d8
    call Call_000_12d8                            ; $74e7: $cd $d8 $12
    pop bc                                        ; $74ea: $c1
    pop de                                        ; $74eb: $d1
    ret                                           ; $74ec: $c9


    ld bc, $8024                                  ; $74ed: $01 $24 $80
    nop                                           ; $74f0: $00
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    xor d                                         ; $74f3: $aa
    inc h                                         ; $74f4: $24
    ld bc, $0102                                  ; $74f5: $01 $02 $01
    ld [bc], a                                    ; $74f8: $02
    ld hl, $74ed                                  ; $74f9: $21 $ed $74
    jp Jump_000_2837                              ; $74fc: $c3 $37 $28


    ld a, $23                                     ; $74ff: $3e $23
    call Call_000_395e                            ; $7501: $cd $5e $39
    ld hl, $795f                                  ; $7504: $21 $5f $79
    ldh [$c1], a                                  ; $7507: $e0 $c1
    ld a, $6d                                     ; $7509: $3e $6d
    ldh [$bd], a                                  ; $750b: $e0 $bd
    ld a, $7c                                     ; $750d: $3e $7c
    ldh [$be], a                                  ; $750f: $e0 $be
    call Call_000_3365                            ; $7511: $cd $65 $33
    ld hl, $5b1c                                  ; $7514: $21 $1c $5b
    call Call_001_5b8f                            ; $7517: $cd $8f $5b
    ld hl, $5fd2                                  ; $751a: $21 $d2 $5f
    ld e, $01                                     ; $751d: $1e $01
    ld a, $06                                     ; $751f: $3e $06
    ld d, $00                                     ; $7521: $16 $00
    ldh [$c1], a                                  ; $7523: $e0 $c1
    ld a, $3d                                     ; $7525: $3e $3d
    ldh [$bd], a                                  ; $7527: $e0 $bd
    ld a, $25                                     ; $7529: $3e $25
    ldh [$be], a                                  ; $752b: $e0 $be
    call Call_000_3386                            ; $752d: $cd $86 $33
    ld hl, $5fd2                                  ; $7530: $21 $d2 $5f
    ld e, $01                                     ; $7533: $1e $01
    ld a, $07                                     ; $7535: $3e $07
    ld d, $01                                     ; $7537: $16 $01
    ldh [$c1], a                                  ; $7539: $e0 $c1
    ld a, $3d                                     ; $753b: $3e $3d
    ldh [$bd], a                                  ; $753d: $e0 $bd
    ld a, $25                                     ; $753f: $3e $25
    ldh [$be], a                                  ; $7541: $e0 $be
    call Call_000_3386                            ; $7543: $cd $86 $33
    ld a, $a1                                     ; $7546: $3e $a1
    call Call_000_03a0                            ; $7548: $cd $a0 $03
    ld a, $a3                                     ; $754b: $3e $a3
    call Call_000_03a0                            ; $754d: $cd $a0 $03
    ret                                           ; $7550: $c9


    ldh a, [$a5]                                  ; $7551: $f0 $a5
    or a                                          ; $7553: $b7
    ret z                                         ; $7554: $c8

    ld a, $0b                                     ; $7555: $3e $0b
    call Call_000_2448                            ; $7557: $cd $48 $24
    ld a, $02                                     ; $755a: $3e $02
    ld [$c0bb], a                                 ; $755c: $ea $bb $c0
    ret                                           ; $755f: $c9


    db $01, $3a, $80, $00, $00, $00, $aa, $24, $00, $02, $01, $02, $01, $01, $73, $75
    db $00, $01, $44, $66, $d8, $86, $d8, $a6, $d8, $c6, $d8, $cb, $d8, $06, $d9, $26
    db $d9, $46, $d9, $66, $d9, $6b, $d9, $a6, $d9, $c6, $d9, $e6, $d9, $06, $da, $0b
    db $da, $01, $01, $98, $75, $60, $01, $41, $e8, $d8, $08, $d9, $28, $d9, $4a, $d9
    db $6a, $d9, $66, $dc, $06, $dd, $a6, $dd, $01, $00, $00, $14, $07, $0b, $07, $07
    db $06, $01, $00

    nop                                           ; $75b3: $00
    inc d                                         ; $75b4: $14
    nop                                           ; $75b5: $00
    dec bc                                        ; $75b6: $0b
    rlca                                          ; $75b7: $07
    rlca                                          ; $75b8: $07
    db $06                                        ; $75b9: $06

    ld hl, $7560                                  ; $75ba: $21 $60 $75
    jp Jump_000_2837                              ; $75bd: $c3 $37 $28


    ld hl, $795f                                  ; $75c0: $21 $5f $79
    ldh [$c1], a                                  ; $75c3: $e0 $c1
    ld a, $6d                                     ; $75c5: $3e $6d
    ldh [$bd], a                                  ; $75c7: $e0 $bd
    ld a, $7c                                     ; $75c9: $3e $7c
    ldh [$be], a                                  ; $75cb: $e0 $be
    call Call_000_3365                            ; $75cd: $cd $65 $33
    call Call_001_76c6                            ; $75d0: $cd $c6 $76
    xor a                                         ; $75d3: $af
    ldh [$d1], a                                  ; $75d4: $e0 $d1
    ld [$ce17], a                                 ; $75d6: $ea $17 $ce
    ld hl, $49c6                                  ; $75d9: $21 $c6 $49
    ldh [$c1], a                                  ; $75dc: $e0 $c1
    ld a, $61                                     ; $75de: $3e $61
    ldh [$bd], a                                  ; $75e0: $e0 $bd
    ld a, $4f                                     ; $75e2: $3e $4f
    ldh [$be], a                                  ; $75e4: $e0 $be
    call Call_000_337a                            ; $75e6: $cd $7a $33
    ld hl, $ffb8                                  ; $75e9: $21 $b8 $ff
    ld [hl], $00                                  ; $75ec: $36 $00
    inc hl                                        ; $75ee: $23
    ld [hl], $00                                  ; $75ef: $36 $00
    ld a, $9e                                     ; $75f1: $3e $9e
    ldh [$c1], a                                  ; $75f3: $e0 $c1
    ld a, $d6                                     ; $75f5: $3e $d6
    ldh [$bd], a                                  ; $75f7: $e0 $bd
    ld a, $11                                     ; $75f9: $3e $11
    ldh [$be], a                                  ; $75fb: $e0 $be
    call Call_000_3386                            ; $75fd: $cd $86 $33
    ld a, $0b                                     ; $7600: $3e $0b
    ldh [$c1], a                                  ; $7602: $e0 $c1
    ld a, $0f                                     ; $7604: $3e $0f
    ldh [$bd], a                                  ; $7606: $e0 $bd
    ld a, $25                                     ; $7608: $3e $25
    ldh [$be], a                                  ; $760a: $e0 $be
    call Call_000_3386                            ; $760c: $cd $86 $33
    ld a, $31                                     ; $760f: $3e $31
    call Call_001_70c0                            ; $7611: $cd $c0 $70
    call Call_001_7714                            ; $7614: $cd $14 $77
    ld b, $00                                     ; $7617: $06 $00

jr_001_7619:
    ld a, b                                       ; $7619: $78
    ldh [$9b], a                                  ; $761a: $e0 $9b
    ld a, $9e                                     ; $761c: $3e $9e
    call Call_000_03a0                            ; $761e: $cd $a0 $03
    inc b                                         ; $7621: $04
    ld a, b                                       ; $7622: $78
    cp $03                                        ; $7623: $fe $03
    jr nz, jr_001_7619                            ; $7625: $20 $f2

    jp Jump_001_76f1                              ; $7627: $c3 $f1 $76


    ldh [$c1], a                                  ; $762a: $e0 $c1
    ld a, $86                                     ; $762c: $3e $86
    ldh [$bd], a                                  ; $762e: $e0 $bd
    ld a, $4f                                     ; $7630: $3e $4f
    ldh [$be], a                                  ; $7632: $e0 $be
    call Call_000_337a                            ; $7634: $cd $7a $33
    ld e, a                                       ; $7637: $5f
    ld hl, $ffd1                                  ; $7638: $21 $d1 $ff
    ld a, $ff                                     ; $763b: $3e $ff
    cp [hl]                                       ; $763d: $be
    ret z                                         ; $763e: $c8

    ldh a, [$a5]                                  ; $763f: $f0 $a5
    bit 1, a                                      ; $7641: $cb $4f
    jr nz, jr_001_76a4                            ; $7643: $20 $5f

    bit 0, a                                      ; $7645: $cb $47
    jr nz, jr_001_7655                            ; $7647: $20 $0c

    ld a, e                                       ; $7649: $7b
    cp [hl]                                       ; $764a: $be
    ret z                                         ; $764b: $c8

    ld [hl], a                                    ; $764c: $77
    ld a, $19                                     ; $764d: $3e $19
    call Call_000_393e                            ; $764f: $cd $3e $39
    jp Jump_001_76f1                              ; $7652: $c3 $f1 $76


jr_001_7655:
    ldh a, [$d0]                                  ; $7655: $f0 $d0
    or a                                          ; $7657: $b7
    jr z, jr_001_767a                             ; $7658: $28 $20

    ld a, e                                       ; $765a: $7b
    ldh [$c1], a                                  ; $765b: $e0 $c1
    ld a, $e1                                     ; $765d: $3e $e1
    ldh [$bd], a                                  ; $765f: $e0 $bd
    ld a, $56                                     ; $7661: $3e $56
    ldh [$be], a                                  ; $7663: $e0 $be
    call Call_000_336c                            ; $7665: $cd $6c $33
    jr z, jr_001_7674                             ; $7668: $28 $0a

    xor a                                         ; $766a: $af
    ld [$ce17], a                                 ; $766b: $ea $17 $ce
    ld a, $07                                     ; $766e: $3e $07
    ld d, e                                       ; $7670: $53
    jp Jump_000_244b                              ; $7671: $c3 $4b $24


Jump_001_7674:
jr_001_7674:
    ld a, e                                       ; $7674: $7b
    ld [$cdd5], a                                 ; $7675: $ea $d5 $cd
    jr jr_001_768d                                ; $7678: $18 $13

jr_001_767a:
    ld a, e                                       ; $767a: $7b
    ldh [$c1], a                                  ; $767b: $e0 $c1
    ld a, $e1                                     ; $767d: $3e $e1
    ldh [$bd], a                                  ; $767f: $e0 $bd
    ld a, $56                                     ; $7681: $3e $56
    ldh [$be], a                                  ; $7683: $e0 $be
    call Call_000_336c                            ; $7685: $cd $6c $33
    ret z                                         ; $7688: $c8

    ld a, e                                       ; $7689: $7b
    ld [$cdd5], a                                 ; $768a: $ea $d5 $cd

jr_001_768d:
    ld a, $21                                     ; $768d: $3e $21
    call Call_000_393e                            ; $768f: $cd $3e $39
    ld a, [$cdd5]                                 ; $7692: $fa $d5 $cd
    ld e, a                                       ; $7695: $5f
    ld a, $9e                                     ; $7696: $3e $9e
    ld [hl], $ff                                  ; $7698: $36 $ff
    call Call_000_0a6f                            ; $769a: $cd $6f $0a
    ld de, $001c                                  ; $769d: $11 $1c $00
    add hl, de                                    ; $76a0: $19
    ld [hl], $01                                  ; $76a1: $36 $01
    ret                                           ; $76a3: $c9


jr_001_76a4:
    xor a                                         ; $76a4: $af
    ld [$ce17], a                                 ; $76a5: $ea $17 $ce
    ldh a, [$cc]                                  ; $76a8: $f0 $cc
    cp $07                                        ; $76aa: $fe $07
    ld a, $03                                     ; $76ac: $3e $03
    jp z, Jump_000_2448                           ; $76ae: $ca $48 $24

    ldh a, [$cc]                                  ; $76b1: $f0 $cc
    cp $10                                        ; $76b3: $fe $10
    jp nz, Jump_000_2448                          ; $76b5: $c2 $48 $24

    ld a, $0f                                     ; $76b8: $3e $0f
    jp Jump_000_2448                              ; $76ba: $c3 $48 $24


    db $01, $00, $00, $00, $00, $14, $02, $00, $00

Call_001_76c6:
    call Call_000_3356                            ; $76c6: $cd $56 $33
    add $3b                                       ; $76c9: $c6 $3b
    ld hl, $526d                                  ; $76cb: $21 $6d $52
    ldh [$c1], a                                  ; $76ce: $e0 $c1
    ld a, $4b                                     ; $76d0: $3e $4b
    ldh [$bd], a                                  ; $76d2: $e0 $bd
    ld a, $29                                     ; $76d4: $3e $29
    ldh [$be], a                                  ; $76d6: $e0 $be
    call Call_000_3386                            ; $76d8: $cd $86 $33
    call Call_000_3356                            ; $76db: $cd $56 $33
    add $3b                                       ; $76de: $c6 $3b
    ld de, $76bd                                  ; $76e0: $11 $bd $76
    ldh [$c1], a                                  ; $76e3: $e0 $c1
    ld a, $58                                     ; $76e5: $3e $58
    ldh [$bd], a                                  ; $76e7: $e0 $bd
    ld a, $24                                     ; $76e9: $3e $24
    ldh [$be], a                                  ; $76eb: $e0 $be
    call Call_000_3386                            ; $76ed: $cd $86 $33
    ret                                           ; $76f0: $c9


Call_001_76f1:
Jump_001_76f1:
    ld bc, $0000                                  ; $76f1: $01 $00 $00

jr_001_76f4:
    call Call_001_7702                            ; $76f4: $cd $02 $77
    inc b                                         ; $76f7: $04
    ld a, b                                       ; $76f8: $78
    cp $03                                        ; $76f9: $fe $03
    jr nz, jr_001_76f4                            ; $76fb: $20 $f7

    ldh a, [$d1]                                  ; $76fd: $f0 $d1
    ld b, a                                       ; $76ff: $47
    ld c, $01                                     ; $7700: $0e $01

Call_001_7702:
    push bc                                       ; $7702: $c5
    ld a, b                                       ; $7703: $78
    ld hl, $75a2                                  ; $7704: $21 $a2 $75
    call Call_000_319d                            ; $7707: $cd $9d $31
    ld b, $07                                     ; $770a: $06 $07
    ld de, $040d                                  ; $770c: $11 $0d $04
    call Call_000_1390                            ; $770f: $cd $90 $13
    pop bc                                        ; $7712: $c1
    ret                                           ; $7713: $c9


Call_001_7714:
    ld c, $9d                                     ; $7714: $0e $9d
    ld de, $040d                                  ; $7716: $11 $0d $04
    ld hl, $0066                                  ; $7719: $21 $66 $00
    call Call_000_13c2                            ; $771c: $cd $c2 $13
    ld c, $9d                                     ; $771f: $0e $9d
    ld de, $040d                                  ; $7721: $11 $0d $04
    ld hl, $0106                                  ; $7724: $21 $06 $01
    call Call_000_13c2                            ; $7727: $cd $c2 $13
    ld c, $9d                                     ; $772a: $0e $9d
    ld de, $040d                                  ; $772c: $11 $0d $04
    ld hl, $01a6                                  ; $772f: $21 $a6 $01
    call Call_000_13c2                            ; $7732: $cd $c2 $13
    ld hl, $756c                                  ; $7735: $21 $6c $75
    call Call_000_301f                            ; $7738: $cd $1f $30
    ld a, $64                                     ; $773b: $3e $64
    ld [$c1eb], a                                 ; $773d: $ea $eb $c1
    ld a, $03                                     ; $7740: $3e $03
    ld [$c234], a                                 ; $7742: $ea $34 $c2
    ld c, $00                                     ; $7745: $0e $00

Jump_001_7747:
    ld a, c                                       ; $7747: $79
    ldh [$c1], a                                  ; $7748: $e0 $c1
    ld a, $e1                                     ; $774a: $3e $e1
    ldh [$bd], a                                  ; $774c: $e0 $bd
    ld a, $56                                     ; $774e: $3e $56
    ldh [$be], a                                  ; $7750: $e0 $be
    call Call_000_336c                            ; $7752: $cd $6c $33
    jr nz, jr_001_776b                            ; $7755: $20 $14

    ld hl, $1b2b                                  ; $7757: $21 $2b $1b
    call Call_001_6e1a                            ; $775a: $cd $1a $6e
    call Call_001_6cb3                            ; $775d: $cd $b3 $6c
    call Call_001_6cb3                            ; $7760: $cd $b3 $6c
    call Call_001_6cb3                            ; $7763: $cd $b3 $6c
    call Call_001_6cb3                            ; $7766: $cd $b3 $6c
    jr jr_001_77e4                                ; $7769: $18 $79

jr_001_776b:
    ldh [$c1], a                                  ; $776b: $e0 $c1
    ld a, $88                                     ; $776d: $3e $88
    ldh [$bd], a                                  ; $776f: $e0 $bd
    ld a, $56                                     ; $7771: $3e $56
    ldh [$be], a                                  ; $7773: $e0 $be
    call Call_000_336c                            ; $7775: $cd $6c $33
    ld a, c                                       ; $7778: $79
    ldh [$c1], a                                  ; $7779: $e0 $c1
    ld a, $94                                     ; $777b: $3e $94
    ldh [$bd], a                                  ; $777d: $e0 $bd
    ld a, $56                                     ; $777f: $3e $56
    ldh [$be], a                                  ; $7781: $e0 $be
    call Call_000_336c                            ; $7783: $cd $6c $33
    ld hl, $03c7                                  ; $7786: $21 $c7 $03
    add hl, de                                    ; $7789: $19
    ld a, [$ce17]                                 ; $778a: $fa $17 $ce
    or a                                          ; $778d: $b7
    jr nz, jr_001_7791                            ; $778e: $20 $01

    ld a, [hl]                                    ; $7790: $7e

jr_001_7791:
    ld hl, $17b0                                  ; $7791: $21 $b0 $17
    call Call_001_6e67                            ; $7794: $cd $67 $6e
    call Call_001_6cb3                            ; $7797: $cd $b3 $6c
    call Call_001_6cb3                            ; $779a: $cd $b3 $6c
    ld hl, $04e2                                  ; $779d: $21 $e2 $04
    add hl, de                                    ; $77a0: $19
    ld a, [hl]                                    ; $77a1: $7e
    ld hl, $1b25                                  ; $77a2: $21 $25 $1b
    call Call_001_6d30                            ; $77a5: $cd $30 $6d
    ld hl, $0509                                  ; $77a8: $21 $09 $05
    add hl, de                                    ; $77ab: $19
    ld a, [hl]                                    ; $77ac: $7e
    call Call_001_6f13                            ; $77ad: $cd $13 $6f
    ld hl, $050a                                  ; $77b0: $21 $0a $05
    add hl, de                                    ; $77b3: $19
    ld a, [hl]                                    ; $77b4: $7e
    call Call_001_6f0d                            ; $77b5: $cd $0d $6f
    ld hl, $050b                                  ; $77b8: $21 $0b $05
    add hl, de                                    ; $77bb: $19
    ld a, [hl]                                    ; $77bc: $7e
    call Call_001_6f07                            ; $77bd: $cd $07 $6f
    ld hl, $0509                                  ; $77c0: $21 $09 $05
    add hl, de                                    ; $77c3: $19
    call Call_001_77ec                            ; $77c4: $cd $ec $77
    ld a, $41                                     ; $77c7: $3e $41
    call Call_001_6cab                            ; $77c9: $cd $ab $6c
    ld hl, $1b28                                  ; $77cc: $21 $28 $1b
    call Call_001_6dd3                            ; $77cf: $cd $d3 $6d
    ldh [$c1], a                                  ; $77d2: $e0 $c1
    ld a, $80                                     ; $77d4: $3e $80
    ldh [$bd], a                                  ; $77d6: $e0 $bd
    ld a, $56                                     ; $77d8: $3e $56
    ldh [$be], a                                  ; $77da: $e0 $be
    call Call_000_336c                            ; $77dc: $cd $6c $33
    ld a, $44                                     ; $77df: $3e $44
    call Call_001_6cab                            ; $77e1: $cd $ab $6c

jr_001_77e4:
    inc c                                         ; $77e4: $0c
    ld a, c                                       ; $77e5: $79
    cp $03                                        ; $77e6: $fe $03
    jp nz, Jump_001_7747                          ; $77e8: $c2 $47 $77

    ret                                           ; $77eb: $c9


Call_001_77ec:
    ld a, [hl+]                                   ; $77ec: $2a
    push hl                                       ; $77ed: $e5
    cp $0a                                        ; $77ee: $fe $0a
    jr nc, jr_001_77f8                            ; $77f0: $30 $06

    ld hl, $c25a                                  ; $77f2: $21 $5a $c2
    call Call_001_780d                            ; $77f5: $cd $0d $78

jr_001_77f8:
    pop hl                                        ; $77f8: $e1
    ld a, [hl+]                                   ; $77f9: $2a
    push hl                                       ; $77fa: $e5
    cp $0a                                        ; $77fb: $fe $0a
    jr nc, jr_001_7805                            ; $77fd: $30 $06

    ld hl, $c24a                                  ; $77ff: $21 $4a $c2
    call Call_001_780d                            ; $7802: $cd $0d $78

jr_001_7805:
    pop hl                                        ; $7805: $e1
    ld a, [hl+]                                   ; $7806: $2a
    cp $0a                                        ; $7807: $fe $0a
    ret nc                                        ; $7809: $d0

    ld hl, $c23a                                  ; $780a: $21 $3a $c2

Call_001_780d:
    ld e, [hl]                                    ; $780d: $5e
    ld [hl], $30                                  ; $780e: $36 $30
    inc hl                                        ; $7810: $23
    ld d, [hl]                                    ; $7811: $56
    ld [hl], e                                    ; $7812: $73
    inc hl                                        ; $7813: $23
    ld e, [hl]                                    ; $7814: $5e
    ld [hl], d                                    ; $7815: $72
    inc hl                                        ; $7816: $23
    ld d, [hl]                                    ; $7817: $56
    ld [hl], e                                    ; $7818: $73
    inc hl                                        ; $7819: $23
    ld [hl], d                                    ; $781a: $72
    ret                                           ; $781b: $c9


    ld de, $75a8                                  ; $781c: $11 $a8 $75
    call Call_000_134e                            ; $781f: $cd $4e $13
    xor a                                         ; $7822: $af
    ldh [$d1], a                                  ; $7823: $e0 $d1
    ld hl, $49df                                  ; $7825: $21 $df $49
    ldh [$c1], a                                  ; $7828: $e0 $c1
    ld a, $61                                     ; $782a: $3e $61
    ldh [$bd], a                                  ; $782c: $e0 $bd
    ld a, $4f                                     ; $782e: $3e $4f
    ldh [$be], a                                  ; $7830: $e0 $be
    call Call_000_337a                            ; $7832: $cd $7a $33
    ld hl, $7591                                  ; $7835: $21 $91 $75
    call Call_000_301f                            ; $7838: $cd $1f $30
    ld a, $4c                                     ; $783b: $3e $4c
    ld [$c1eb], a                                 ; $783d: $ea $eb $c1
    ld a, $02                                     ; $7840: $3e $02
    ld [$c234], a                                 ; $7842: $ea $34 $c2
    ld hl, $1b2e                                  ; $7845: $21 $2e $1b
    call Call_001_6e1a                            ; $7848: $cd $1a $6e
    call Call_001_6cb3                            ; $784b: $cd $b3 $6c
    call Call_001_6cb3                            ; $784e: $cd $b3 $6c
    ld hl, $11e9                                  ; $7851: $21 $e9 $11
    call Call_001_6e1a                            ; $7854: $cd $1a $6e
    ld hl, $11ec                                  ; $7857: $21 $ec $11
    call Call_001_6e1a                            ; $785a: $cd $1a $6e
    ld a, $04                                     ; $785d: $3e $04
    ldh [$9b], a                                  ; $785f: $e0 $9b
    ld a, $9e                                     ; $7861: $3e $9e
    call Call_000_03a0                            ; $7863: $cd $a0 $03
    ret                                           ; $7866: $c9


    ldh [$c1], a                                  ; $7867: $e0 $c1
    ld a, $86                                     ; $7869: $3e $86
    ldh [$bd], a                                  ; $786b: $e0 $bd
    ld a, $4f                                     ; $786d: $3e $4f
    ldh [$be], a                                  ; $786f: $e0 $be
    call Call_000_337a                            ; $7871: $cd $7a $33
    ld e, a                                       ; $7874: $5f
    ld hl, $ffd1                                  ; $7875: $21 $d1 $ff
    ld a, $ff                                     ; $7878: $3e $ff
    cp [hl]                                       ; $787a: $be
    ret z                                         ; $787b: $c8

    ld a, e                                       ; $787c: $7b
    cp [hl]                                       ; $787d: $be
    jr z, jr_001_7881                             ; $787e: $28 $01

    ld [hl], a                                    ; $7880: $77

jr_001_7881:
    ldh a, [$a5]                                  ; $7881: $f0 $a5
    bit 1, a                                      ; $7883: $cb $4f
    jr z, jr_001_7891                             ; $7885: $28 $0a

jr_001_7887:
    ldh a, [$d0]                                  ; $7887: $f0 $d0
    ld d, a                                       ; $7889: $57
    ld e, $00                                     ; $788a: $1e $00
    ld a, $08                                     ; $788c: $3e $08
    jp Jump_000_244b                              ; $788e: $c3 $4b $24


jr_001_7891:
    bit 0, a                                      ; $7891: $cb $47
    ret z                                         ; $7893: $c8

    ld a, [hl]                                    ; $7894: $7e
    or a                                          ; $7895: $b7
    jr nz, jr_001_7887                            ; $7896: $20 $ef

    ld a, $9e                                     ; $7898: $3e $9e
    ld e, $04                                     ; $789a: $1e $04
    call Call_000_0a6f                            ; $789c: $cd $6f $0a
    ld c, l                                       ; $789f: $4d
    ld b, h                                       ; $78a0: $44
    call Call_000_0e9d                            ; $78a1: $cd $9d $0e
    ldh a, [$d0]                                  ; $78a4: $f0 $d0
    ld e, a                                       ; $78a6: $5f
    ld hl, $ffd1                                  ; $78a7: $21 $d1 $ff
    ld [hl], $ff                                  ; $78aa: $36 $ff
    ld a, $01                                     ; $78ac: $3e $01
    ldh [$d0], a                                  ; $78ae: $e0 $d0
    jp Jump_001_7674                              ; $78b0: $c3 $74 $76


    ld a, $9e                                     ; $78b3: $3e $9e
    ld e, $04                                     ; $78b5: $1e $04
    call Call_000_0a6f                            ; $78b7: $cd $6f $0a
    ld c, l                                       ; $78ba: $4d
    ld b, h                                       ; $78bb: $44
    call Call_000_0e9d                            ; $78bc: $cd $9d $0e
    rst $18                                       ; $78bf: $df
    ld de, $75b1                                  ; $78c0: $11 $b1 $75
    call Call_000_134e                            ; $78c3: $cd $4e $13
    call Call_001_7714                            ; $78c6: $cd $14 $77
    ldh a, [$d0]                                  ; $78c9: $f0 $d0
    ld hl, $49c7                                  ; $78cb: $21 $c7 $49
    ldh [$c1], a                                  ; $78ce: $e0 $c1
    ld a, $62                                     ; $78d0: $3e $62
    ldh [$bd], a                                  ; $78d2: $e0 $bd
    ld a, $4f                                     ; $78d4: $3e $4f
    ldh [$be], a                                  ; $78d6: $e0 $be
    call Call_000_337a                            ; $78d8: $cd $7a $33
    ldh a, [$d0]                                  ; $78db: $f0 $d0
    ldh [$d1], a                                  ; $78dd: $e0 $d1
    ld a, $01                                     ; $78df: $3e $01
    ldh [$d0], a                                  ; $78e1: $e0 $d0
    call Call_001_76f1                            ; $78e3: $cd $f1 $76
    jp RST_20                                     ; $78e6: $c3 $20 $00


    ld bc, $911c                                  ; $78e9: $01 $1c $91
    nop                                           ; $78ec: $00
    nop                                           ; $78ed: $00
    nop                                           ; $78ee: $00
    xor d                                         ; $78ef: $aa
    inc h                                         ; $78f0: $24
    ld bc, $0002                                  ; $78f1: $01 $02 $00
    ld bc, $0110                                  ; $78f4: $01 $10 $01
    db $fc                                        ; $78f7: $fc
    ld a, b                                       ; $78f8: $78
    add b                                         ; $78f9: $80
    nop                                           ; $78fa: $00
    ld b, b                                       ; $78fb: $40
    add d                                         ; $78fc: $82
    reti                                          ; $78fd: $d9


    add a                                         ; $78fe: $87
    reti                                          ; $78ff: $d9


    adc h                                         ; $7900: $8c
    reti                                          ; $7901: $d9


    sub c                                         ; $7902: $91
    reti                                          ; $7903: $d9


    ld hl, $78e9                                  ; $7904: $21 $e9 $78
    jp Jump_000_2837                              ; $7907: $c3 $37 $28


    call Call_001_793c                            ; $790a: $cd $3c $79
    ld hl, $7bee                                  ; $790d: $21 $ee $7b
    ldh [$c1], a                                  ; $7910: $e0 $c1
    ld a, $6d                                     ; $7912: $3e $6d
    ldh [$bd], a                                  ; $7914: $e0 $bd
    ld a, $7c                                     ; $7916: $3e $7c
    ldh [$be], a                                  ; $7918: $e0 $be
    call Call_000_3365                            ; $791a: $cd $65 $33
    call Call_001_794e                            ; $791d: $cd $4e $79
    call Call_001_79cd                            ; $7920: $cd $cd $79
    ret                                           ; $7923: $c9


    ld a, [$cd58]                                 ; $7924: $fa $58 $cd
    or a                                          ; $7927: $b7
    ret nz                                        ; $7928: $c0

    call Call_001_7a78                            ; $7929: $cd $78 $7a
    ret nz                                        ; $792c: $c0

    ldh a, [$a5]                                  ; $792d: $f0 $a5
    and $03                                       ; $792f: $e6 $03
    ret z                                         ; $7931: $c8

    ld a, $02                                     ; $7932: $3e $02
    ld [$c0bb], a                                 ; $7934: $ea $bb $c0
    ld a, $0b                                     ; $7937: $3e $0b
    jp Jump_000_2448                              ; $7939: $c3 $48 $24


Call_001_793c:
    call Call_000_19b7                            ; $793c: $cd $b7 $19
    ld hl, $c124                                  ; $793f: $21 $24 $c1
    ld a, $04                                     ; $7942: $3e $04
    ld [hl+], a                                   ; $7944: $22
    ld [hl+], a                                   ; $7945: $22
    ld [hl+], a                                   ; $7946: $22
    ld a, $5b                                     ; $7947: $3e $5b
    ld [hl+], a                                   ; $7949: $22
    ld a, $5e                                     ; $794a: $3e $5e
    ld [hl+], a                                   ; $794c: $22
    ret                                           ; $794d: $c9


Call_001_794e:
    ld hl, $78f5                                  ; $794e: $21 $f5 $78
    call Call_000_301f                            ; $7951: $cd $1f $30
    ld a, $7c                                     ; $7954: $3e $7c
    ld [$c1eb], a                                 ; $7956: $ea $eb $c1
    ld a, $01                                     ; $7959: $3e $01
    ld [$c234], a                                 ; $795b: $ea $34 $c2
    ldh a, [rSVBK]                                ; $795e: $f0 $70
    push af                                       ; $7960: $f5
    ld a, $06                                     ; $7961: $3e $06
    ldh [rSVBK], a                                ; $7963: $e0 $70
    ld hl, $d5c8                                  ; $7965: $21 $c8 $d5
    ld a, [hl+]                                   ; $7968: $2a
    ld h, [hl]                                    ; $7969: $66
    ld l, a                                       ; $796a: $6f
    pop af                                        ; $796b: $f1
    ldh [rSVBK], a                                ; $796c: $e0 $70
    call Call_001_6ee7                            ; $796e: $cd $e7 $6e
    ldh a, [rSVBK]                                ; $7971: $f0 $70
    push af                                       ; $7973: $f5
    ld a, $06                                     ; $7974: $3e $06
    ldh [rSVBK], a                                ; $7976: $e0 $70
    ld hl, $d5cc                                  ; $7978: $21 $cc $d5
    ld a, [hl+]                                   ; $797b: $2a
    ld h, [hl]                                    ; $797c: $66
    ld l, a                                       ; $797d: $6f
    pop af                                        ; $797e: $f1
    ldh [rSVBK], a                                ; $797f: $e0 $70
    call Call_001_6ee7                            ; $7981: $cd $e7 $6e
    ldh a, [rSVBK]                                ; $7984: $f0 $70
    push af                                       ; $7986: $f5
    ld a, $06                                     ; $7987: $3e $06
    ldh [rSVBK], a                                ; $7989: $e0 $70
    ld hl, $d5ca                                  ; $798b: $21 $ca $d5
    ld a, [hl+]                                   ; $798e: $2a
    ld h, [hl]                                    ; $798f: $66
    ld l, a                                       ; $7990: $6f
    pop af                                        ; $7991: $f1
    ldh [rSVBK], a                                ; $7992: $e0 $70
    call Call_001_6ee7                            ; $7994: $cd $e7 $6e
    ldh a, [rSVBK]                                ; $7997: $f0 $70
    push af                                       ; $7999: $f5
    ld a, $06                                     ; $799a: $3e $06
    ldh [rSVBK], a                                ; $799c: $e0 $70
    ld hl, $d5ce                                  ; $799e: $21 $ce $d5
    ld a, [hl+]                                   ; $79a1: $2a
    ld h, [hl]                                    ; $79a2: $66
    ld l, a                                       ; $79a3: $6f
    pop af                                        ; $79a4: $f1
    ldh [rSVBK], a                                ; $79a5: $e0 $70
    jp Jump_001_6ee7                              ; $79a7: $c3 $e7 $6e


    add c                                         ; $79aa: $81
    ld bc, $0186                                  ; $79ab: $01 $86 $01
    adc e                                         ; $79ae: $8b
    ld bc, $0190                                  ; $79af: $01 $90 $01

Call_001_79b2:
    xor a                                         ; $79b2: $af
    ld hl, $79aa                                  ; $79b3: $21 $aa $79

jr_001_79b6:
    push af                                       ; $79b6: $f5
    push hl                                       ; $79b7: $e5
    ld c, $91                                     ; $79b8: $0e $91
    ld de, $0103                                  ; $79ba: $11 $03 $01
    ld a, [hl+]                                   ; $79bd: $2a
    ld h, [hl]                                    ; $79be: $66
    ld l, a                                       ; $79bf: $6f
    call Call_000_13c2                            ; $79c0: $cd $c2 $13
    pop hl                                        ; $79c3: $e1
    pop af                                        ; $79c4: $f1
    inc hl                                        ; $79c5: $23
    inc hl                                        ; $79c6: $23
    inc a                                         ; $79c7: $3c
    cp $04                                        ; $79c8: $fe $04
    jr nz, jr_001_79b6                            ; $79ca: $20 $ea

    ret                                           ; $79cc: $c9


Call_001_79cd:
    xor a                                         ; $79cd: $af
    ldh [$f0], a                                  ; $79ce: $e0 $f0
    ld de, $d880                                  ; $79d0: $11 $80 $d8
    ldh a, [rSVBK]                                ; $79d3: $f0 $70
    push af                                       ; $79d5: $f5
    ld a, $06                                     ; $79d6: $3e $06
    ldh [rSVBK], a                                ; $79d8: $e0 $70
    ld hl, $d5c8                                  ; $79da: $21 $c8 $d5
    ld a, [hl+]                                   ; $79dd: $2a
    ld h, [hl]                                    ; $79de: $66
    ld l, a                                       ; $79df: $6f
    pop af                                        ; $79e0: $f1
    ldh [rSVBK], a                                ; $79e1: $e0 $70
    call Call_001_7a35                            ; $79e3: $cd $35 $7a
    ld a, $05                                     ; $79e6: $3e $05
    ldh [$f0], a                                  ; $79e8: $e0 $f0
    ld de, $d885                                  ; $79ea: $11 $85 $d8
    ldh a, [rSVBK]                                ; $79ed: $f0 $70
    push af                                       ; $79ef: $f5
    ld a, $06                                     ; $79f0: $3e $06
    ldh [rSVBK], a                                ; $79f2: $e0 $70
    ld hl, $d5cc                                  ; $79f4: $21 $cc $d5
    ld a, [hl+]                                   ; $79f7: $2a
    ld h, [hl]                                    ; $79f8: $66
    ld l, a                                       ; $79f9: $6f
    pop af                                        ; $79fa: $f1
    ldh [rSVBK], a                                ; $79fb: $e0 $70
    call Call_001_7a35                            ; $79fd: $cd $35 $7a
    ld a, $0a                                     ; $7a00: $3e $0a
    ldh [$f0], a                                  ; $7a02: $e0 $f0
    ld de, $d88a                                  ; $7a04: $11 $8a $d8
    ldh a, [rSVBK]                                ; $7a07: $f0 $70
    push af                                       ; $7a09: $f5
    ld a, $06                                     ; $7a0a: $3e $06
    ldh [rSVBK], a                                ; $7a0c: $e0 $70
    ld hl, $d5ca                                  ; $7a0e: $21 $ca $d5
    ld a, [hl+]                                   ; $7a11: $2a
    ld h, [hl]                                    ; $7a12: $66
    ld l, a                                       ; $7a13: $6f
    pop af                                        ; $7a14: $f1
    ldh [rSVBK], a                                ; $7a15: $e0 $70
    call Call_001_7a35                            ; $7a17: $cd $35 $7a
    ld a, $0f                                     ; $7a1a: $3e $0f
    ldh [$f0], a                                  ; $7a1c: $e0 $f0
    ld de, $d88f                                  ; $7a1e: $11 $8f $d8
    ldh a, [rSVBK]                                ; $7a21: $f0 $70
    push af                                       ; $7a23: $f5
    ld a, $06                                     ; $7a24: $3e $06
    ldh [rSVBK], a                                ; $7a26: $e0 $70
    ld hl, $d5ce                                  ; $7a28: $21 $ce $d5
    ld a, [hl+]                                   ; $7a2b: $2a
    ld h, [hl]                                    ; $7a2c: $66
    ld l, a                                       ; $7a2d: $6f
    pop af                                        ; $7a2e: $f1
    ldh [rSVBK], a                                ; $7a2f: $e0 $70
    call Call_001_7a35                            ; $7a31: $cd $35 $7a
    ret                                           ; $7a34: $c9


Call_001_7a35:
    ld bc, $01c2                                  ; $7a35: $01 $c2 $01
    call Call_000_3118                            ; $7a38: $cd $18 $31
    jr nc, jr_001_7a41                            ; $7a3b: $30 $04

    ld a, $15                                     ; $7a3d: $3e $15
    jr jr_001_7a5a                                ; $7a3f: $18 $19

jr_001_7a41:
    ld bc, $012c                                  ; $7a41: $01 $2c $01
    call Call_000_3118                            ; $7a44: $cd $18 $31
    jr nc, jr_001_7a4d                            ; $7a47: $30 $04

    ld a, $0e                                     ; $7a49: $3e $0e
    jr jr_001_7a5a                                ; $7a4b: $18 $0d

jr_001_7a4d:
    ld bc, $0096                                  ; $7a4d: $01 $96 $00
    call Call_000_3118                            ; $7a50: $cd $18 $31
    jr nc, jr_001_7a59                            ; $7a53: $30 $04

    ld a, $07                                     ; $7a55: $3e $07
    jr jr_001_7a5a                                ; $7a57: $18 $01

jr_001_7a59:
    xor a                                         ; $7a59: $af

jr_001_7a5a:
    ldh [$f1], a                                  ; $7a5a: $e0 $f1
    ld a, $05                                     ; $7a5c: $3e $05
    ldh [$f2], a                                  ; $7a5e: $e0 $f2
    ld a, $07                                     ; $7a60: $3e $07
    ldh [$f3], a                                  ; $7a62: $e0 $f3
    xor a                                         ; $7a64: $af
    ld b, a                                       ; $7a65: $47
    ld c, a                                       ; $7a66: $4f
    ld hl, $5597                                  ; $7a67: $21 $97 $55
    ldh [$c1], a                                  ; $7a6a: $e0 $c1
    ld a, $2a                                     ; $7a6c: $3e $2a
    ldh [$bd], a                                  ; $7a6e: $e0 $bd
    ld a, $33                                     ; $7a70: $3e $33
    ldh [$be], a                                  ; $7a72: $e0 $be
    call Call_000_3386                            ; $7a74: $cd $86 $33
    ret                                           ; $7a77: $c9


Call_001_7a78:
    ldh [$bc], a                                  ; $7a78: $e0 $bc
    ldh a, [rSVBK]                                ; $7a7a: $f0 $70
    push af                                       ; $7a7c: $f5
    ld a, $06                                     ; $7a7d: $3e $06
    ldh [rSVBK], a                                ; $7a7f: $e0 $70
    ldh a, [$bc]                                  ; $7a81: $f0 $bc
    ld a, [$d5d4]                                 ; $7a83: $fa $d4 $d5
    ldh [$bc], a                                  ; $7a86: $e0 $bc
    pop af                                        ; $7a88: $f1
    ldh [rSVBK], a                                ; $7a89: $e0 $70
    ldh a, [$bc]                                  ; $7a8b: $f0 $bc
    or a                                          ; $7a8d: $b7
    ret z                                         ; $7a8e: $c8

    dec a                                         ; $7a8f: $3d
    bit 7, a                                      ; $7a90: $cb $7f
    jp nz, Jump_001_7af2                          ; $7a92: $c2 $f2 $7a

    push af                                       ; $7a95: $f5
    ldh a, [rSVBK]                                ; $7a96: $f0 $70
    push af                                       ; $7a98: $f5
    ld a, $06                                     ; $7a99: $3e $06
    ldh [rSVBK], a                                ; $7a9b: $e0 $70
    ld a, [$d5d5]                                 ; $7a9d: $fa $d5 $d5
    ldh [$bc], a                                  ; $7aa0: $e0 $bc
    pop af                                        ; $7aa2: $f1
    ldh [rSVBK], a                                ; $7aa3: $e0 $70
    ldh a, [$bc]                                  ; $7aa5: $f0 $bc
    cp $4f                                        ; $7aa7: $fe $4f
    jr z, jr_001_7ab0                             ; $7aa9: $28 $05

    ld a, $26                                     ; $7aab: $3e $26
    call Call_000_395e                            ; $7aad: $cd $5e $39

jr_001_7ab0:
    ldh a, [rSVBK]                                ; $7ab0: $f0 $70
    push af                                       ; $7ab2: $f5
    ld a, $06                                     ; $7ab3: $3e $06
    ldh [rSVBK], a                                ; $7ab5: $e0 $70
    ld hl, $d5d2                                  ; $7ab7: $21 $d2 $d5
    ld c, [hl]                                    ; $7aba: $4e
    inc hl                                        ; $7abb: $23
    ld b, [hl]                                    ; $7abc: $46
    pop af                                        ; $7abd: $f1
    ldh [rSVBK], a                                ; $7abe: $e0 $70
    pop af                                        ; $7ac0: $f1
    cp $00                                        ; $7ac1: $fe $00
    jr z, jr_001_7ad2                             ; $7ac3: $28 $0d

    cp $01                                        ; $7ac5: $fe $01
    jr z, jr_001_7ad7                             ; $7ac7: $28 $0e

    cp $02                                        ; $7ac9: $fe $02
    jr z, jr_001_7adc                             ; $7acb: $28 $0f

    ld hl, $d5ce                                  ; $7acd: $21 $ce $d5
    jr jr_001_7adf                                ; $7ad0: $18 $0d

jr_001_7ad2:
    ld hl, $d5c8                                  ; $7ad2: $21 $c8 $d5
    jr jr_001_7adf                                ; $7ad5: $18 $08

jr_001_7ad7:
    ld hl, $d5cc                                  ; $7ad7: $21 $cc $d5
    jr jr_001_7adf                                ; $7ada: $18 $03

jr_001_7adc:
    ld hl, $d5ca                                  ; $7adc: $21 $ca $d5

jr_001_7adf:
    ldh a, [rSVBK]                                ; $7adf: $f0 $70
    push af                                       ; $7ae1: $f5
    ld a, $06                                     ; $7ae2: $3e $06
    ldh [rSVBK], a                                ; $7ae4: $e0 $70
    ld a, [hl+]                                   ; $7ae6: $2a
    ld d, [hl]                                    ; $7ae7: $56
    ld e, a                                       ; $7ae8: $5f
    inc de                                        ; $7ae9: $13
    ld [hl], d                                    ; $7aea: $72
    dec hl                                        ; $7aeb: $2b
    ld [hl], e                                    ; $7aec: $73
    pop af                                        ; $7aed: $f1
    ldh [rSVBK], a                                ; $7aee: $e0 $70
    jr jr_001_7b54                                ; $7af0: $18 $62

Jump_001_7af2:
    res 7, a                                      ; $7af2: $cb $bf
    push af                                       ; $7af4: $f5
    ld a, $25                                     ; $7af5: $3e $25
    call Call_000_395e                            ; $7af7: $cd $5e $39
    ldh a, [rSVBK]                                ; $7afa: $f0 $70
    push af                                       ; $7afc: $f5
    ld a, $06                                     ; $7afd: $3e $06
    ldh [rSVBK], a                                ; $7aff: $e0 $70
    ld hl, $d5d2                                  ; $7b01: $21 $d2 $d5
    ld c, [hl]                                    ; $7b04: $4e
    inc hl                                        ; $7b05: $23
    ld b, [hl]                                    ; $7b06: $46
    pop af                                        ; $7b07: $f1
    ldh [rSVBK], a                                ; $7b08: $e0 $70
    pop af                                        ; $7b0a: $f1
    cp $00                                        ; $7b0b: $fe $00
    jr z, jr_001_7b1c                             ; $7b0d: $28 $0d

    cp $01                                        ; $7b0f: $fe $01
    jr z, jr_001_7b21                             ; $7b11: $28 $0e

    cp $02                                        ; $7b13: $fe $02
    jr z, jr_001_7b26                             ; $7b15: $28 $0f

    ld hl, $d5ce                                  ; $7b17: $21 $ce $d5
    jr jr_001_7b29                                ; $7b1a: $18 $0d

jr_001_7b1c:
    ld hl, $d5c8                                  ; $7b1c: $21 $c8 $d5
    jr jr_001_7b29                                ; $7b1f: $18 $08

jr_001_7b21:
    ld hl, $d5cc                                  ; $7b21: $21 $cc $d5
    jr jr_001_7b29                                ; $7b24: $18 $03

jr_001_7b26:
    ld hl, $d5ca                                  ; $7b26: $21 $ca $d5

jr_001_7b29:
    ldh a, [rSVBK]                                ; $7b29: $f0 $70
    push af                                       ; $7b2b: $f5
    ld a, $06                                     ; $7b2c: $3e $06
    ldh [rSVBK], a                                ; $7b2e: $e0 $70

jr_001_7b30:
    ld a, [hl+]                                   ; $7b30: $2a
    ld e, a                                       ; $7b31: $5f
    ld d, [hl]                                    ; $7b32: $56
    or d                                          ; $7b33: $b2
    jr z, jr_001_7b3f                             ; $7b34: $28 $09

    dec de                                        ; $7b36: $1b
    ld [hl], d                                    ; $7b37: $72
    dec hl                                        ; $7b38: $2b
    ld [hl], e                                    ; $7b39: $73
    pop af                                        ; $7b3a: $f1
    ldh [rSVBK], a                                ; $7b3b: $e0 $70
    jr jr_001_7b54                                ; $7b3d: $18 $15

jr_001_7b3f:
    pop af                                        ; $7b3f: $f1
    ldh [rSVBK], a                                ; $7b40: $e0 $70
    xor a                                         ; $7b42: $af
    ldh [$bc], a                                  ; $7b43: $e0 $bc
    ldh a, [rSVBK]                                ; $7b45: $f0 $70
    push af                                       ; $7b47: $f5
    ld a, $06                                     ; $7b48: $3e $06
    ldh [rSVBK], a                                ; $7b4a: $e0 $70
    ldh a, [$bc]                                  ; $7b4c: $f0 $bc
    ld [$d5d4], a                                 ; $7b4e: $ea $d4 $d5
    pop af                                        ; $7b51: $f1
    ldh [rSVBK], a                                ; $7b52: $e0 $70

jr_001_7b54:
    push bc                                       ; $7b54: $c5
    push hl                                       ; $7b55: $e5
    rst $18                                       ; $7b56: $df
    call Call_001_79b2                            ; $7b57: $cd $b2 $79
    call Call_001_794e                            ; $7b5a: $cd $4e $79
    call Call_001_79cd                            ; $7b5d: $cd $cd $79
    rst $20                                       ; $7b60: $e7
    call Call_000_3308                            ; $7b61: $cd $08 $33
    pop hl                                        ; $7b64: $e1
    pop bc                                        ; $7b65: $c1
    dec bc                                        ; $7b66: $0b
    ldh a, [rSVBK]                                ; $7b67: $f0 $70
    push af                                       ; $7b69: $f5
    ld a, $06                                     ; $7b6a: $3e $06
    ldh [rSVBK], a                                ; $7b6c: $e0 $70
    ld hl, $d5d2                                  ; $7b6e: $21 $d2 $d5
    ld [hl], c                                    ; $7b71: $71
    inc hl                                        ; $7b72: $23
    ld [hl], b                                    ; $7b73: $70
    pop af                                        ; $7b74: $f1
    ldh [rSVBK], a                                ; $7b75: $e0 $70
    ld a, b                                       ; $7b77: $78
    or c                                          ; $7b78: $b1
    ret nz                                        ; $7b79: $c0

    ldh [$bc], a                                  ; $7b7a: $e0 $bc
    ldh a, [rSVBK]                                ; $7b7c: $f0 $70
    push af                                       ; $7b7e: $f5
    ld a, $06                                     ; $7b7f: $3e $06
    ldh [rSVBK], a                                ; $7b81: $e0 $70
    ldh a, [$bc]                                  ; $7b83: $f0 $bc
    ld [$d5d4], a                                 ; $7b85: $ea $d4 $d5
    pop af                                        ; $7b88: $f1
    ldh [rSVBK], a                                ; $7b89: $e0 $70
    ld a, $05                                     ; $7b8b: $3e $05
    dec a                                         ; $7b8d: $3d
    ret                                           ; $7b8e: $c9


    ld sp, $3040                                  ; $7b8f: $31 $40 $30
    ld c, b                                       ; $7b92: $48
    nop                                           ; $7b93: $00
    inc b                                         ; $7b94: $04
    ld d, l                                       ; $7b95: $55
    ld sp, $402d                                  ; $7b96: $31 $2d $40
    inc bc                                        ; $7b99: $03
    ld c, b                                       ; $7b9a: $48

    db $89

    ld [bc], a                                    ; $7b9c: $02
    dec e                                         ; $7b9d: $1d
    jr nc, jr_001_7b30                            ; $7b9e: $30 $90

    inc sp                                        ; $7ba0: $33
    ld d, [hl]                                    ; $7ba1: $56
    ld c, b                                       ; $7ba2: $48
    sbc b                                         ; $7ba3: $98
    sub [hl]                                      ; $7ba4: $96
    sub b                                         ; $7ba5: $90
    adc d                                         ; $7ba6: $8a
    sbc [hl]                                      ; $7ba7: $9e
    jr nc, @+$07                                  ; $7ba8: $30 $05

    ld c, $54                                     ; $7baa: $0e $54
    ld b, b                                       ; $7bac: $40
    ld bc, $3055                                  ; $7bad: $01 $55 $30
    ld c, b                                       ; $7bb0: $48
    ld b, b                                       ; $7bb1: $40
    ld b, b                                       ; $7bb2: $40
    ld b, b                                       ; $7bb3: $40
    ld sp, $5504                                  ; $7bb4: $31 $04 $55
    and h                                         ; $7bb7: $a4
    ld b, b                                       ; $7bb8: $40
    ld b, b                                       ; $7bb9: $40
    jr nc, @+$42                                  ; $7bba: $30 $40

    ld b, b                                       ; $7bbc: $40
    ld c, b                                       ; $7bbd: $48
    adc c                                         ; $7bbe: $89
    ld [bc], a                                    ; $7bbf: $02
    dec de                                        ; $7bc0: $1b
    ld [bc], a                                    ; $7bc1: $02

    ld a, $5a                                     ; $7bc2: $3e $5a
    call Call_000_393e                            ; $7bc4: $cd $3e $39
    ld hl, $7b8f                                  ; $7bc7: $21 $8f $7b
    ld a, [$cd63]                                 ; $7bca: $fa $63 $cd
    rst $08                                       ; $7bcd: $cf
    bit 7, a                                      ; $7bce: $cb $7f
    jr nz, jr_001_7bd6                            ; $7bd0: $20 $04

    call Call_000_393e                            ; $7bd2: $cd $3e $39
    ret                                           ; $7bd5: $c9


jr_001_7bd6:
    res 7, a                                      ; $7bd6: $cb $bf
    call Call_000_395e                            ; $7bd8: $cd $5e $39
    ret                                           ; $7bdb: $c9


    ld bc, $0026                                  ; $7bdc: $01 $26 $00
    ld bc, $0000                                  ; $7bdf: $01 $00 $00
    xor d                                         ; $7be2: $aa
    inc h                                         ; $7be3: $24
    ld bc, $0102                                  ; $7be4: $01 $02 $01
    ld [bc], a                                    ; $7be7: $02
    and c                                         ; $7be8: $a1
    ret c                                         ; $7be9: $d8

    pop bc                                        ; $7bea: $c1
    ret c                                         ; $7beb: $d8

    pop hl                                        ; $7bec: $e1
    ret c                                         ; $7bed: $d8

    ld bc, $21d9                                  ; $7bee: $01 $d9 $21
    reti                                          ; $7bf1: $d9


    ld b, c                                       ; $7bf2: $41
    reti                                          ; $7bf3: $d9


    ld h, c                                       ; $7bf4: $61
    reti                                          ; $7bf5: $d9


    add c                                         ; $7bf6: $81
    reti                                          ; $7bf7: $d9


    and c                                         ; $7bf8: $a1
    reti                                          ; $7bf9: $d9


    ld a, [hl]                                    ; $7bfa: $7e
    ld bc, $1209                                  ; $7bfb: $01 $09 $12
    ld a, h                                       ; $7bfe: $7c
    daa                                           ; $7bff: $27
    ld a, h                                       ; $7c00: $7c
    nop                                           ; $7c01: $00
    ld [de], a                                    ; $7c02: $12
    inc e                                         ; $7c03: $1c
    ld b, $1b                                     ; $7c04: $06 $1b
    ld a, h                                       ; $7c06: $7c
    daa                                           ; $7c07: $27
    ld a, h                                       ; $7c08: $7c
    nop                                           ; $7c09: $00
    inc c                                         ; $7c0a: $0c
    ld [hl+], a                                   ; $7c0b: $22
    ld b, $21                                     ; $7c0c: $06 $21
    ld a, h                                       ; $7c0e: $7c
    ld b, b                                       ; $7c0f: $40
    ld a, h                                       ; $7c10: $7c
    nop                                           ; $7c11: $00
    dec b                                         ; $7c12: $05
    ld b, $07                                     ; $7c13: $06 $07
    ld [$0a09], sp                                ; $7c15: $08 $09 $0a
    dec bc                                        ; $7c18: $0b
    inc c                                         ; $7c19: $0c
    dec c                                         ; $7c1a: $0d
    dec b                                         ; $7c1b: $05
    ld b, $07                                     ; $7c1c: $06 $07
    ld [$0a09], sp                                ; $7c1e: $08 $09 $0a
    inc bc                                        ; $7c21: $03
    dec b                                         ; $7c22: $05
    rlca                                          ; $7c23: $07
    add hl, bc                                    ; $7c24: $09
    dec bc                                        ; $7c25: $0b
    dec c                                         ; $7c26: $0d
    ld bc, $2e01                                  ; $7c27: $01 $01 $2e
    ld a, h                                       ; $7c2a: $7c
    add b                                         ; $7c2b: $80
    nop                                           ; $7c2c: $00
    ld b, c                                       ; $7c2d: $41
    and e                                         ; $7c2e: $a3
    ret c                                         ; $7c2f: $d8

    jp $e3d8                                      ; $7c30: $c3 $d8 $e3


    ret c                                         ; $7c33: $d8

    inc bc                                        ; $7c34: $03
    reti                                          ; $7c35: $d9


    inc hl                                        ; $7c36: $23
    reti                                          ; $7c37: $d9


    ld b, e                                       ; $7c38: $43
    reti                                          ; $7c39: $d9


    ld h, e                                       ; $7c3a: $63
    reti                                          ; $7c3b: $d9


    add e                                         ; $7c3c: $83
    reti                                          ; $7c3d: $d9


    and e                                         ; $7c3e: $a3
    reti                                          ; $7c3f: $d9


    ld bc, $4702                                  ; $7c40: $01 $02 $47
    ld a, h                                       ; $7c43: $7c
    add b                                         ; $7c44: $80
    nop                                           ; $7c45: $00
    ld b, c                                       ; $7c46: $41
    ld h, e                                       ; $7c47: $63
    ret c                                         ; $7c48: $d8

    and e                                         ; $7c49: $a3
    ret c                                         ; $7c4a: $d8

    db $e3                                        ; $7c4b: $e3
    ret c                                         ; $7c4c: $d8

    inc hl                                        ; $7c4d: $23
    reti                                          ; $7c4e: $d9


    ld h, e                                       ; $7c4f: $63
    reti                                          ; $7c50: $d9


    and e                                         ; $7c51: $a3
    reti                                          ; $7c52: $d9


    xor a                                         ; $7c53: $af
    ld [$cba8], a                                 ; $7c54: $ea $a8 $cb
    ld hl, $7bdc                                  ; $7c57: $21 $dc $7b
    jp Jump_000_2837                              ; $7c5a: $c3 $37 $28


    ld hl, $795f                                  ; $7c5d: $21 $5f $79
    ldh [$c1], a                                  ; $7c60: $e0 $c1
    ld a, $6d                                     ; $7c62: $3e $6d
    ldh [$bd], a                                  ; $7c64: $e0 $bd

    db $3e, $7c

    ldh [$be], a                                  ; $7c68: $e0 $be
    call Call_000_3365                            ; $7c6a: $cd $65 $33
    rst $18                                       ; $7c6d: $df
    call Call_001_7cf9                            ; $7c6e: $cd $f9 $7c
    call Call_001_7cd0                            ; $7c71: $cd $d0 $7c
    call Call_001_7d38                            ; $7c74: $cd $38 $7d
    jp RST_20                                     ; $7c77: $c3 $20 $00


    ldh a, [$a5]                                  ; $7c7a: $f0 $a5
    bit 0, a                                      ; $7c7c: $cb $47
    jr nz, jr_001_7caa                            ; $7c7e: $20 $2a

    bit 1, a                                      ; $7c80: $cb $4f
    jr nz, jr_001_7caa                            ; $7c82: $20 $26

    and $f0                                       ; $7c84: $e6 $f0
    ret z                                         ; $7c86: $c8

    ld hl, $7ca1                                  ; $7c87: $21 $a1 $7c
    ld a, [$cba8]                                 ; $7c8a: $fa $a8 $cb
    rst $08                                       ; $7c8d: $cf
    ld b, a                                       ; $7c8e: $47
    ldh a, [$a5]                                  ; $7c8f: $f0 $a5
    cp b                                          ; $7c91: $b8
    jr z, jr_001_7c99                             ; $7c92: $28 $05

jr_001_7c94:
    xor a                                         ; $7c94: $af
    ld [$cba8], a                                 ; $7c95: $ea $a8 $cb
    ret                                           ; $7c98: $c9


jr_001_7c99:
    ld a, [$cba8]                                 ; $7c99: $fa $a8 $cb
    inc a                                         ; $7c9c: $3c
    ld [$cba8], a                                 ; $7c9d: $ea $a8 $cb
    ret                                           ; $7ca0: $c9


    ld b, b                                       ; $7ca1: $40
    ld b, b                                       ; $7ca2: $40
    add b                                         ; $7ca3: $80
    add b                                         ; $7ca4: $80
    jr nz, @+$12                                  ; $7ca5: $20 $10

    jr nz, jr_001_7cb9                            ; $7ca7: $20 $10

    nop                                           ; $7ca9: $00

jr_001_7caa:
    jr jr_001_7ccb                                ; $7caa: $18 $1f

    ld hl, $7ca1                                  ; $7cac: $21 $a1 $7c
    ld a, [$cba8]                                 ; $7caf: $fa $a8 $cb
    rst $08                                       ; $7cb2: $cf
    or a                                          ; $7cb3: $b7
    jr nz, jr_001_7ccb                            ; $7cb4: $20 $15

    call Call_000_3674                            ; $7cb6: $cd $74 $36

jr_001_7cb9:
    nop                                           ; $7cb9: $00
    ld [de], a                                    ; $7cba: $12
    db $10                                        ; $7cbb: $10
    inc c                                         ; $7cbc: $0c
    ld bc, $0000                                  ; $7cbd: $01 $00 $00
    ld de, $d862                                  ; $7cc0: $11 $62 $d8
    ld hl, $d800                                  ; $7cc3: $21 $00 $d8
    call Call_000_12d8                            ; $7cc6: $cd $d8 $12
    jr jr_001_7c94                                ; $7cc9: $18 $c9

jr_001_7ccb:
    ld a, $0f                                     ; $7ccb: $3e $0f
    jp Jump_000_2448                              ; $7ccd: $c3 $48 $24


Call_001_7cd0:
    ld a, [$cb2e]                                 ; $7cd0: $fa $2e $cb
    ld hl, $7bfc                                  ; $7cd3: $21 $fc $7b
    call Call_000_3165                            ; $7cd6: $cd $65 $31
    ld c, [hl]                                    ; $7cd9: $4e
    push bc                                       ; $7cda: $c5
    inc hl                                        ; $7cdb: $23
    ld a, [hl+]                                   ; $7cdc: $2a
    ld h, [hl]                                    ; $7cdd: $66
    ld l, a                                       ; $7cde: $6f
    pop bc                                        ; $7cdf: $c1
    ld b, $00                                     ; $7ce0: $06 $00

jr_001_7ce2:
    ld a, [hl+]                                   ; $7ce2: $2a
    push hl                                       ; $7ce3: $e5
    push bc                                       ; $7ce4: $c5
    ld l, a                                       ; $7ce5: $6f
    ld h, $00                                     ; $7ce6: $26 $00
    call Call_000_314a                            ; $7ce8: $cd $4a $31
    ld de, $d801                                  ; $7ceb: $11 $01 $d8
    add hl, de                                    ; $7cee: $19
    ld [hl], $31                                  ; $7cef: $36 $31
    pop bc                                        ; $7cf1: $c1
    pop hl                                        ; $7cf2: $e1
    inc b                                         ; $7cf3: $04
    ld a, b                                       ; $7cf4: $78
    cp c                                          ; $7cf5: $b9
    jr nz, jr_001_7ce2                            ; $7cf6: $20 $ea

    ret                                           ; $7cf8: $c9


Call_001_7cf9:
    ld a, [$cb2e]                                 ; $7cf9: $fa $2e $cb
    ld hl, $7bff                                  ; $7cfc: $21 $ff $7b
    call Call_000_3165                            ; $7cff: $cd $65 $31
    ld a, [hl+]                                   ; $7d02: $2a
    ld h, [hl]                                    ; $7d03: $66
    ld l, a                                       ; $7d04: $6f
    call Call_000_301f                            ; $7d05: $cd $1f $30
    ld a, $7c                                     ; $7d08: $3e $7c
    ld [$c1eb], a                                 ; $7d0a: $ea $eb $c1
    ld a, $01                                     ; $7d0d: $3e $01
    ld [$c234], a                                 ; $7d0f: $ea $34 $c2
    ld b, $00                                     ; $7d12: $06 $00
    ld a, [$cb2e]                                 ; $7d14: $fa $2e $cb
    ld hl, $7bfc                                  ; $7d17: $21 $fc $7b
    call Call_000_3165                            ; $7d1a: $cd $65 $31
    ld c, [hl]                                    ; $7d1d: $4e
    ld a, [$cb2e]                                 ; $7d1e: $fa $2e $cb
    ld hl, $7bfa                                  ; $7d21: $21 $fa $7b
    call Call_000_3165                            ; $7d24: $cd $65 $31
    ld a, [hl+]                                   ; $7d27: $2a
    ld h, [hl]                                    ; $7d28: $66
    ld l, a                                       ; $7d29: $6f

jr_001_7d2a:
    push hl                                       ; $7d2a: $e5
    call Call_001_6e1a                            ; $7d2b: $cd $1a $6e
    pop hl                                        ; $7d2e: $e1
    inc hl                                        ; $7d2f: $23
    inc hl                                        ; $7d30: $23
    inc hl                                        ; $7d31: $23
    inc b                                         ; $7d32: $04
    ld a, b                                       ; $7d33: $78
    cp c                                          ; $7d34: $b9
    jr nz, jr_001_7d2a                            ; $7d35: $20 $f3

    ret                                           ; $7d37: $c9


Call_001_7d38:
    ld a, [$cb2e]                                 ; $7d38: $fa $2e $cb
    rst $00                                       ; $7d3b: $c7
    ld b, d                                       ; $7d3c: $42
    ld a, l                                       ; $7d3d: $7d
    ld d, c                                       ; $7d3e: $51
    ld a, l                                       ; $7d3f: $7d
    ld d, [hl]                                    ; $7d40: $56
    ld a, l                                       ; $7d41: $7d
    ldh [$c1], a                                  ; $7d42: $e0 $c1
    ld a, $a9                                     ; $7d44: $3e $a9
    ldh [$bd], a                                  ; $7d46: $e0 $bd
    ld a, $6d                                     ; $7d48: $3e $6d
    ldh [$be], a                                  ; $7d4a: $e0 $be
    call Call_000_336c                            ; $7d4c: $cd $6c $33
    jr jr_001_7d59                                ; $7d4f: $18 $08

    call Call_001_7dd4                            ; $7d51: $cd $d4 $7d
    jr jr_001_7d59                                ; $7d54: $18 $03

    call Call_001_7d95                            ; $7d56: $cd $95 $7d

jr_001_7d59:
    ld a, [$ccf5]                                 ; $7d59: $fa $f5 $cc
    ld d, a                                       ; $7d5c: $57
    ld b, $00                                     ; $7d5d: $06 $00
    ld a, [$cb2e]                                 ; $7d5f: $fa $2e $cb
    ld hl, $7bfc                                  ; $7d62: $21 $fc $7b
    call Call_000_3165                            ; $7d65: $cd $65 $31
    ld c, [hl]                                    ; $7d68: $4e

jr_001_7d69:
    srl d                                         ; $7d69: $cb $3a
    jr nc, jr_001_7d74                            ; $7d6b: $30 $07

    push bc                                       ; $7d6d: $c5
    push de                                       ; $7d6e: $d5
    call Call_001_7e13                            ; $7d6f: $cd $13 $7e
    pop de                                        ; $7d72: $d1
    pop bc                                        ; $7d73: $c1

jr_001_7d74:
    inc b                                         ; $7d74: $04
    ld a, b                                       ; $7d75: $78
    cp c                                          ; $7d76: $b9
    jr nz, jr_001_7d69                            ; $7d77: $20 $f0

    ld a, [$cb2e]                                 ; $7d79: $fa $2e $cb
    or a                                          ; $7d7c: $b7
    ret nz                                        ; $7d7d: $c0

    ld a, $3d                                     ; $7d7e: $3e $3d
    ldh [$c1], a                                  ; $7d80: $e0 $c1
    ld a, $9e                                     ; $7d82: $3e $9e
    ldh [$bd], a                                  ; $7d84: $e0 $bd
    ld a, $68                                     ; $7d86: $3e $68
    ldh [$be], a                                  ; $7d88: $e0 $be
    call Call_000_336c                            ; $7d8a: $cd $6c $33
    or a                                          ; $7d8d: $b7
    ret z                                         ; $7d8e: $c8

    ld b, $08                                     ; $7d8f: $06 $08
    call Call_001_7e13                            ; $7d91: $cd $13 $7e
    ret                                           ; $7d94: $c9


Call_001_7d95:
    ld a, $06                                     ; $7d95: $3e $06
    ldh [rSVBK], a                                ; $7d97: $e0 $70
    ld b, $00                                     ; $7d99: $06 $00
    ld a, [$d042]                                 ; $7d9b: $fa $42 $d0
    or a                                          ; $7d9e: $b7
    jr z, jr_001_7da3                             ; $7d9f: $28 $02

    set 0, b                                      ; $7da1: $cb $c0

jr_001_7da3:
    ld a, [$d044]                                 ; $7da3: $fa $44 $d0
    or a                                          ; $7da6: $b7
    jr z, jr_001_7dab                             ; $7da7: $28 $02

    set 1, b                                      ; $7da9: $cb $c8

jr_001_7dab:
    ld a, [$d045]                                 ; $7dab: $fa $45 $d0
    or a                                          ; $7dae: $b7
    jr z, jr_001_7db3                             ; $7daf: $28 $02

    set 2, b                                      ; $7db1: $cb $d0

jr_001_7db3:
    ld a, [$d046]                                 ; $7db3: $fa $46 $d0
    or a                                          ; $7db6: $b7
    jr z, jr_001_7dbb                             ; $7db7: $28 $02

    set 3, b                                      ; $7db9: $cb $d8

jr_001_7dbb:
    ld a, [$d047]                                 ; $7dbb: $fa $47 $d0
    or a                                          ; $7dbe: $b7
    jr z, jr_001_7dc3                             ; $7dbf: $28 $02

    set 4, b                                      ; $7dc1: $cb $e0

jr_001_7dc3:
    ld a, [$d051]                                 ; $7dc3: $fa $51 $d0
    or a                                          ; $7dc6: $b7
    jr z, jr_001_7dcb                             ; $7dc7: $28 $02

    set 5, b                                      ; $7dc9: $cb $e8

jr_001_7dcb:
    ld a, b                                       ; $7dcb: $78
    ld [$ccf5], a                                 ; $7dcc: $ea $f5 $cc
    ld a, $01                                     ; $7dcf: $3e $01
    ldh [rSVBK], a                                ; $7dd1: $e0 $70
    ret                                           ; $7dd3: $c9


Call_001_7dd4:
    ld a, $06                                     ; $7dd4: $3e $06
    ldh [rSVBK], a                                ; $7dd6: $e0 $70
    ld b, $00                                     ; $7dd8: $06 $00
    ld a, [$d5fb]                                 ; $7dda: $fa $fb $d5
    or a                                          ; $7ddd: $b7
    jr z, jr_001_7de2                             ; $7dde: $28 $02

    set 0, b                                      ; $7de0: $cb $c0

jr_001_7de2:
    ld a, [$d5fc]                                 ; $7de2: $fa $fc $d5
    or a                                          ; $7de5: $b7
    jr z, jr_001_7dea                             ; $7de6: $28 $02

    set 1, b                                      ; $7de8: $cb $c8

jr_001_7dea:
    ld a, [$d5fd]                                 ; $7dea: $fa $fd $d5
    or a                                          ; $7ded: $b7
    jr z, jr_001_7df2                             ; $7dee: $28 $02

    set 2, b                                      ; $7df0: $cb $d0

jr_001_7df2:
    ld a, [$d5fe]                                 ; $7df2: $fa $fe $d5
    or a                                          ; $7df5: $b7
    jr z, jr_001_7dfa                             ; $7df6: $28 $02

    set 3, b                                      ; $7df8: $cb $d8

jr_001_7dfa:
    ld a, [$d5ff]                                 ; $7dfa: $fa $ff $d5
    or a                                          ; $7dfd: $b7
    jr z, jr_001_7e02                             ; $7dfe: $28 $02

    set 4, b                                      ; $7e00: $cb $e0

jr_001_7e02:
    ld a, [$d600]                                 ; $7e02: $fa $00 $d6
    or a                                          ; $7e05: $b7
    jr z, jr_001_7e0a                             ; $7e06: $28 $02

    set 5, b                                      ; $7e08: $cb $e8

jr_001_7e0a:
    ld a, b                                       ; $7e0a: $78
    ld [$ccf5], a                                 ; $7e0b: $ea $f5 $cc
    ld a, $01                                     ; $7e0e: $3e $01
    ldh [rSVBK], a                                ; $7e10: $e0 $70
    ret                                           ; $7e12: $c9


Call_001_7e13:
    ld a, [$cb2e]                                 ; $7e13: $fa $2e $cb
    ld hl, $7bfd                                  ; $7e16: $21 $fd $7b
    call Call_000_3165                            ; $7e19: $cd $65 $31
    ld a, [hl+]                                   ; $7e1c: $2a
    ld h, [hl]                                    ; $7e1d: $66
    ld l, a                                       ; $7e1e: $6f
    ld a, b                                       ; $7e1f: $78
    rst $08                                       ; $7e20: $cf
    ld l, a                                       ; $7e21: $6f
    ld h, $00                                     ; $7e22: $26 $00
    call Call_000_314a                            ; $7e24: $cd $4a $31
    ld de, $d801                                  ; $7e27: $11 $01 $d8
    add hl, de                                    ; $7e2a: $19
    ld [hl], $0f                                  ; $7e2b: $36 $0f
    ret                                           ; $7e2d: $c9


    ld bc, $802c                                  ; $7e2e: $01 $2c $80
    nop                                           ; $7e31: $00
    nop                                           ; $7e32: $00
    nop                                           ; $7e33: $00
    xor d                                         ; $7e34: $aa
    inc h                                         ; $7e35: $24
    ld bc, $0002                                  ; $7e36: $01 $02 $00
    ld bc, $2e21                                  ; $7e39: $01 $21 $2e
    ld a, [hl]                                    ; $7e3c: $7e
    jp Jump_000_2837                              ; $7e3d: $c3 $37 $28


    ld hl, $795f                                  ; $7e40: $21 $5f $79
    ldh [$c1], a                                  ; $7e43: $e0 $c1
    ld a, $6d                                     ; $7e45: $3e $6d
    ldh [$bd], a                                  ; $7e47: $e0 $bd
    ld a, $7c                                     ; $7e49: $3e $7c
    ldh [$be], a                                  ; $7e4b: $e0 $be
    call Call_000_3365                            ; $7e4d: $cd $65 $33
    ld a, $05                                     ; $7e50: $3e $05
    ldh [$a8], a                                  ; $7e52: $e0 $a8
    ret                                           ; $7e54: $c9


    ldh a, [$a5]                                  ; $7e55: $f0 $a5
    and $03                                       ; $7e57: $e6 $03
    jr nz, jr_001_7e7d                            ; $7e59: $20 $22

    ldh a, [$a4]                                  ; $7e5b: $f0 $a4
    bit 5, a                                      ; $7e5d: $cb $6f
    jr z, jr_001_7e65                             ; $7e5f: $28 $04

    ld hl, $ff90                                  ; $7e61: $21 $90 $ff
    dec [hl]                                      ; $7e64: $35

jr_001_7e65:
    bit 4, a                                      ; $7e65: $cb $67
    jr z, jr_001_7e6d                             ; $7e67: $28 $04

    ld hl, $ff90                                  ; $7e69: $21 $90 $ff
    inc [hl]                                      ; $7e6c: $34

jr_001_7e6d:
    bit 6, a                                      ; $7e6d: $cb $77
    jr z, jr_001_7e75                             ; $7e6f: $28 $04

    ld hl, $ff92                                  ; $7e71: $21 $92 $ff
    dec [hl]                                      ; $7e74: $35

jr_001_7e75:
    bit 7, a                                      ; $7e75: $cb $7f
    ret z                                         ; $7e77: $c8

    ld hl, $ff92                                  ; $7e78: $21 $92 $ff
    inc [hl]                                      ; $7e7b: $34
    ret                                           ; $7e7c: $c9


jr_001_7e7d:
    ld a, $02                                     ; $7e7d: $3e $02
    ld [$c0bb], a                                 ; $7e7f: $ea $bb $c0
    ld a, $0b                                     ; $7e82: $3e $0b
    jp Jump_000_2448                              ; $7e84: $c3 $48 $24


    ld hl, $26dc                                  ; $7e87: $21 $dc $26
    call c, $dc2b                                 ; $7e8a: $dc $2b $dc
    jr nc, @-$22                                  ; $7e8d: $30 $dc

    pop bc                                        ; $7e8f: $c1
    call c, $dcc6                                 ; $7e90: $dc $c6 $dc
    set 3, h                                      ; $7e93: $cb $dc
    ret nc                                        ; $7e95: $d0

    call c, $dd61                                 ; $7e96: $dc $61 $dd
    ld h, [hl]                                    ; $7e99: $66
    db $dd                                        ; $7e9a: $dd
    ld l, e                                       ; $7e9b: $6b
    db $dd                                        ; $7e9c: $dd
    ld [hl], b                                    ; $7e9d: $70
    db $dd                                        ; $7e9e: $dd

    ldh [$c1], a                                  ; $7e9f: $e0 $c1
    ld a, $d0                                     ; $7ea1: $3e $d0
    ldh [$bd], a                                  ; $7ea3: $e0 $bd
    ld a, $73                                     ; $7ea5: $3e $73
    ldh [$be], a                                  ; $7ea7: $e0 $be
    call Call_000_3373                            ; $7ea9: $cd $73 $33
    ld hl, $0006                                  ; $7eac: $21 $06 $00
    add hl, bc                                    ; $7eaf: $09
    ld [hl], e                                    ; $7eb0: $73
    inc hl                                        ; $7eb1: $23
    ld [hl], d                                    ; $7eb2: $72
    inc hl                                        ; $7eb3: $23
    inc hl                                        ; $7eb4: $23
    ld a, [$caff]                                 ; $7eb5: $fa $ff $ca
    ld [hl+], a                                   ; $7eb8: $22
    ld a, [$cb00]                                 ; $7eb9: $fa $00 $cb
    ld [hl], a                                    ; $7ebc: $77
    ret                                           ; $7ebd: $c9


    ld a, d                                       ; $7ebe: $7a
    cp $3d                                        ; $7ebf: $fe $3d
    jr nz, jr_001_7ee1                            ; $7ec1: $20 $1e

    ld a, $00                                     ; $7ec3: $3e $00
    ldh [$c1], a                                  ; $7ec5: $e0 $c1
    ld a, $fb                                     ; $7ec7: $3e $fb
    ldh [$bd], a                                  ; $7ec9: $e0 $bd
    ld a, $61                                     ; $7ecb: $3e $61
    ldh [$be], a                                  ; $7ecd: $e0 $be
    call Call_000_337a                            ; $7ecf: $cd $7a $33
    ld a, $01                                     ; $7ed2: $3e $01
    ldh [$c1], a                                  ; $7ed4: $e0 $c1
    ld a, $fb                                     ; $7ed6: $3e $fb
    ldh [$bd], a                                  ; $7ed8: $e0 $bd
    ld a, $61                                     ; $7eda: $3e $61
    ldh [$be], a                                  ; $7edc: $e0 $be
    call Call_000_337a                            ; $7ede: $cd $7a $33

jr_001_7ee1:
    ld a, d                                       ; $7ee1: $7a
    ldh [$c1], a                                  ; $7ee2: $e0 $c1
    ld a, $4b                                     ; $7ee4: $3e $4b
    ldh [$bd], a                                  ; $7ee6: $e0 $bd
    ld a, $6a                                     ; $7ee8: $3e $6a
    ldh [$be], a                                  ; $7eea: $e0 $be
    call Call_000_336c                            ; $7eec: $cd $6c $33
    ld a, $09                                     ; $7eef: $3e $09
    ld [$cb17], a                                 ; $7ef1: $ea $17 $cb
    ld bc, $106c                                  ; $7ef4: $01 $6c $10
    ld e, d                                       ; $7ef7: $5a
    ld d, $02                                     ; $7ef8: $16 $02
    ld hl, $1030                                  ; $7efa: $21 $30 $10
    ld a, $17                                     ; $7efd: $3e $17
    call Call_000_395e                            ; $7eff: $cd $5e $39
    xor a                                         ; $7f02: $af
    ldh [$c1], a                                  ; $7f03: $e0 $c1
    ld a, $26                                     ; $7f05: $3e $26
    ldh [$bd], a                                  ; $7f07: $e0 $bd
    ld a, $44                                     ; $7f09: $3e $44
    ldh [$be], a                                  ; $7f0b: $e0 $be
    call Call_000_336c                            ; $7f0d: $cd $6c $33
    ret                                           ; $7f10: $c9


    ld a, d                                       ; $7f11: $7a
    ldh [$c1], a                                  ; $7f12: $e0 $c1
    ld a, $7f                                     ; $7f14: $3e $7f
    ldh [$bd], a                                  ; $7f16: $e0 $bd
    ld a, $6a                                     ; $7f18: $3e $6a
    ldh [$be], a                                  ; $7f1a: $e0 $be
    call Call_000_336c                            ; $7f1c: $cd $6c $33
    ld a, e                                       ; $7f1f: $7b
    or a                                          ; $7f20: $b7
    ret z                                         ; $7f21: $c8

    ld a, $09                                     ; $7f22: $3e $09
    ld [$cb17], a                                 ; $7f24: $ea $17 $cb
    ld bc, $106c                                  ; $7f27: $01 $6c $10
    ld e, d                                       ; $7f2a: $5a
    ld d, $02                                     ; $7f2b: $16 $02
    ld hl, $2197                                  ; $7f2d: $21 $97 $21
    ld a, $42                                     ; $7f30: $3e $42
    call Call_000_393e                            ; $7f32: $cd $3e $39
    xor a                                         ; $7f35: $af
    ldh [$c1], a                                  ; $7f36: $e0 $c1
    ld a, $26                                     ; $7f38: $3e $26
    ldh [$bd], a                                  ; $7f3a: $e0 $bd
    ld a, $44                                     ; $7f3c: $3e $44
    ldh [$be], a                                  ; $7f3e: $e0 $be
    call Call_000_336c                            ; $7f40: $cd $6c $33
    ret                                           ; $7f43: $c9


    ldh a, [rSVBK]                                ; $7f44: $f0 $70
    push af                                       ; $7f46: $f5
    ld a, $02                                     ; $7f47: $3e $02
    ldh [rSVBK], a                                ; $7f49: $e0 $70
    ld de, $d28f                                  ; $7f4b: $11 $8f $d2
    ld hl, $d080                                  ; $7f4e: $21 $80 $d0
    call CopyHL2DE_64                            ; $7f51: $cd $f4 $11
    ld de, $d040                                  ; $7f54: $11 $40 $d0
    call CopyHL2DE_64                            ; $7f57: $cd $f4 $11
    ld hl, $d000                                  ; $7f5a: $21 $00 $d0
    ld bc, $0040                                  ; $7f5d: $01 $40 $00

jr_001_7f60:
    ld a, $1f                                     ; $7f60: $3e $1f
    ld [hl+], a                                   ; $7f62: $22
    xor a                                         ; $7f63: $af
    ld [hl+], a                                   ; $7f64: $22
    dec bc                                        ; $7f65: $0b
    ld a, c                                       ; $7f66: $79
    or b                                          ; $7f67: $b0
    jr nz, jr_001_7f60                            ; $7f68: $20 $f6

    pop af                                        ; $7f6a: $f1
    ldh [rSVBK], a                                ; $7f6b: $e0 $70
    call Call_000_258a                            ; $7f6d: $cd $8a $25
    ld a, $01                                     ; $7f70: $3e $01
    ldh [$c1], a                                  ; $7f72: $e0 $c1
    ld a, $d8                                     ; $7f74: $3e $d8
    ldh [$bd], a                                  ; $7f76: $e0 $bd
    ld a, $7b                                     ; $7f78: $3e $7b
    ldh [$be], a                                  ; $7f7a: $e0 $be
    jp Jump_000_3373                              ; $7f7c: $c3 $73 $33


    push bc                                       ; $7f7f: $c5
    ld a, b                                       ; $7f80: $78
    ld hl, $7e87                                  ; $7f81: $21 $87 $7e
    call Call_000_319d                            ; $7f84: $cd $9d $31
    ld b, $07                                     ; $7f87: $06 $07
    ld de, $0404                                  ; $7f89: $11 $04 $04
    call Call_000_1390                            ; $7f8c: $cd $90 $13
    pop bc                                        ; $7f8f: $c1
    ret                                           ; $7f90: $c9


    call Call_000_2e82                            ; $7f91: $cd $82 $2e
    ld hl, $cb33                                  ; $7f94: $21 $33 $cb
    cp [hl]                                       ; $7f97: $be
    jr z, jr_001_7f9d                             ; $7f98: $28 $03

    ld hl, $cb34                                  ; $7f9a: $21 $34 $cb

jr_001_7f9d:
    ld [hl], $ff                                  ; $7f9d: $36 $ff
    ld hl, $cb33                                  ; $7f9f: $21 $33 $cb
    ld a, [hl+]                                   ; $7fa2: $2a
    cp $ff                                        ; $7fa3: $fe $ff
    ret nz                                        ; $7fa5: $c0

    ld a, [hl]                                    ; $7fa6: $7e
    cp $ff                                        ; $7fa7: $fe $ff
    ret nz                                        ; $7fa9: $c0

    xor a                                         ; $7faa: $af
    ld [$cb32], a                                 ; $7fab: $ea $32 $cb
    ld [$cb35], a                                 ; $7fae: $ea $35 $cb
    ld hl, $c3ed                                  ; $7fb1: $21 $ed $c3
    res 0, [hl]                                   ; $7fb4: $cb $86
    ret                                           ; $7fb6: $c9


    rst $38                                       ; $7fb7: $ff
    rst $38                                       ; $7fb8: $ff
    rst $38                                       ; $7fb9: $ff
    rst $38                                       ; $7fba: $ff
    rst $38                                       ; $7fbb: $ff
    rst $38                                       ; $7fbc: $ff
    rst $38                                       ; $7fbd: $ff
    rst $38                                       ; $7fbe: $ff
    rst $38                                       ; $7fbf: $ff
    rst $38                                       ; $7fc0: $ff
    rst $38                                       ; $7fc1: $ff
    rst $38                                       ; $7fc2: $ff
    rst $38                                       ; $7fc3: $ff
    rst $38                                       ; $7fc4: $ff
    rst $38                                       ; $7fc5: $ff
    rst $38                                       ; $7fc6: $ff
    rst $38                                       ; $7fc7: $ff
    rst $38                                       ; $7fc8: $ff
    rst $38                                       ; $7fc9: $ff
    rst $38                                       ; $7fca: $ff
    rst $38                                       ; $7fcb: $ff
    rst $38                                       ; $7fcc: $ff
    rst $38                                       ; $7fcd: $ff
    rst $38                                       ; $7fce: $ff
    rst $38                                       ; $7fcf: $ff
    rst $38                                       ; $7fd0: $ff
    rst $38                                       ; $7fd1: $ff
    rst $38                                       ; $7fd2: $ff
    rst $38                                       ; $7fd3: $ff
    rst $38                                       ; $7fd4: $ff
    rst $38                                       ; $7fd5: $ff
    rst $38                                       ; $7fd6: $ff
    rst $38                                       ; $7fd7: $ff
    rst $38                                       ; $7fd8: $ff
    rst $38                                       ; $7fd9: $ff
    rst $38                                       ; $7fda: $ff
    rst $38                                       ; $7fdb: $ff
    rst $38                                       ; $7fdc: $ff
    rst $38                                       ; $7fdd: $ff
    rst $38                                       ; $7fde: $ff
    rst $38                                       ; $7fdf: $ff
    rst $38                                       ; $7fe0: $ff
    rst $38                                       ; $7fe1: $ff
    rst $38                                       ; $7fe2: $ff
    rst $38                                       ; $7fe3: $ff
    rst $38                                       ; $7fe4: $ff
    rst $38                                       ; $7fe5: $ff
    rst $38                                       ; $7fe6: $ff
    rst $38                                       ; $7fe7: $ff
    rst $38                                       ; $7fe8: $ff
    rst $38                                       ; $7fe9: $ff
    rst $38                                       ; $7fea: $ff
    rst $38                                       ; $7feb: $ff
    rst $38                                       ; $7fec: $ff
    rst $38                                       ; $7fed: $ff
    rst $38                                       ; $7fee: $ff
    rst $38                                       ; $7fef: $ff
    rst $38                                       ; $7ff0: $ff
    rst $38                                       ; $7ff1: $ff
    rst $38                                       ; $7ff2: $ff
    rst $38                                       ; $7ff3: $ff
    rst $38                                       ; $7ff4: $ff
    rst $38                                       ; $7ff5: $ff
    rst $38                                       ; $7ff6: $ff
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
