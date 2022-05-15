; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0b4", ROMX[$4000], BANK[$b4]

    db $b4

    nop                                           ; $4001: $00
    jr nz, jr_0b4_4004                            ; $4002: $20 $00

jr_0b4_4004:
    jr nz, @+$01                                  ; $4004: $20 $ff

    ld l, a                                       ; $4006: $6f
    cp [hl]                                       ; $4007: $be
    dec hl                                        ; $4008: $2b
    nop                                           ; $4009: $00
    jr nz, jr_0b4_400c                            ; $400a: $20 $00

jr_0b4_400c:
    jr nz, @+$01                                  ; $400c: $20 $ff

    ld l, a                                       ; $400e: $6f
    cp [hl]                                       ; $400f: $be
    dec hl                                        ; $4010: $2b
    nop                                           ; $4011: $00

jr_0b4_4012:
    jr nz, jr_0b4_4014                            ; $4012: $20 $00

jr_0b4_4014:
    jr nz, @+$01                                  ; $4014: $20 $ff

    ld l, a                                       ; $4016: $6f
    cp [hl]                                       ; $4017: $be
    dec hl                                        ; $4018: $2b
    nop                                           ; $4019: $00
    jr nz, @-$05                                  ; $401a: $20 $f9

    ld b, $df                                     ; $401c: $06 $df
    ld c, e                                       ; $401e: $4b
    sbc l                                         ; $401f: $9d
    inc bc                                        ; $4020: $03
    nop                                           ; $4021: $00
    ld [$05ac], sp                                ; $4022: $08 $ac $05
    sub e                                         ; $4025: $93
    ld a, [bc]                                    ; $4026: $0a
    rst $20                                       ; $4027: $e7
    inc b                                         ; $4028: $04
    nop                                           ; $4029: $00

jr_0b4_402a:
    db $20, $c6                                   ; $402a: $20 $c6
    inc b                                         ; $402c: $04
    adc e                                         ; $402d: $8b
    add hl, bc                                    ; $402e: $09
    rst $20                                       ; $402f: $e7
    inc b                                         ; $4030: $04
    nop                                           ; $4031: $00
    db $20, $c6                                   ; $4032: $20 $c6
    inc b                                         ; $4034: $04
    adc e                                         ; $4035: $8b
    add hl, bc                                    ; $4036: $09
    rst $20                                       ; $4037: $e7
    inc b                                         ; $4038: $04
    nop                                           ; $4039: $00

jr_0b4_403a:
    jr nz, jr_0b4_403c                            ; $403a: $20 $00

jr_0b4_403c:
    jr nz, @+$01                                  ; $403c: $20 $ff

    ld l, a                                       ; $403e: $6f

jr_0b4_403f:
    cp [hl]                                       ; $403f: $be
    dec hl                                        ; $4040: $2b
    nop                                           ; $4041: $00
    jr nz, jr_0b4_402a                            ; $4042: $20 $e6

    inc b                                         ; $4044: $04
    ld c, c                                       ; $4045: $49
    dec b                                         ; $4046: $05
    cp [hl]                                       ; $4047: $be
    dec hl                                        ; $4048: $2b
    nop                                           ; $4049: $00
    jr nz, jr_0b4_4012                            ; $404a: $20 $c6

    inc b                                         ; $404c: $04
    ld c, c                                       ; $404d: $49
    dec b                                         ; $404e: $05
    adc h                                         ; $404f: $8c
    add hl, bc                                    ; $4050: $09
    nop                                           ; $4051: $00
    nop                                           ; $4052: $00
    sbc [hl]                                      ; $4053: $9e
    rrca                                          ; $4054: $0f
    rst $38                                       ; $4055: $ff
    ld l, a                                       ; $4056: $6f
    ld [$0005], sp                                ; $4057: $08 $05 $00
    nop                                           ; $405a: $00
    push de                                       ; $405b: $d5
    ld c, $ff                                     ; $405c: $0e $ff
    ld d, e                                       ; $405e: $53
    adc e                                         ; $405f: $8b
    add hl, bc                                    ; $4060: $09
    nop                                           ; $4061: $00
    jr nz, @+$2b                                  ; $4062: $20 $29

    dec b                                         ; $4064: $05
    ld d, c                                       ; $4065: $51
    ld c, $ac                                     ; $4066: $0e $ac
    add hl, bc                                    ; $4068: $09

jr_0b4_4069:
    nop                                           ; $4069: $00
    jr nz, jr_0b4_4095                            ; $406a: $20 $29

    dec b                                         ; $406c: $05
    ld d, c                                       ; $406d: $51
    ld c, $ac                                     ; $406e: $0e $ac
    add hl, bc                                    ; $4070: $09

jr_0b4_4071:
    nop                                           ; $4071: $00
    jr nz, jr_0b4_403a                            ; $4072: $20 $c6

    inc b                                         ; $4074: $04
    ld c, c                                       ; $4075: $49
    dec b                                         ; $4076: $05
    adc h                                         ; $4077: $8c
    add hl, bc                                    ; $4078: $09
    nop                                           ; $4079: $00
    jr nz, jr_0b4_40a4                            ; $407a: $20 $28

    dec b                                         ; $407c: $05
    xor $09                                       ; $407d: $ee $09
    or $12                                        ; $407f: $f6 $12
    nop                                           ; $4081: $00
    db $10                                        ; $4082: $10
    sub e                                         ; $4083: $93
    ld b, $7c                                     ; $4084: $06 $7c
    inc de                                        ; $4086: $13
    adc e                                         ; $4087: $8b
    add hl, bc                                    ; $4088: $09
    nop                                           ; $4089: $00
    nop                                           ; $408a: $00
    db $10                                        ; $408b: $10
    ld c, $07                                     ; $408c: $0e $07
    dec b                                         ; $408e: $05
    sub e                                         ; $408f: $93
    ld a, [bc]                                    ; $4090: $0a
    ld bc, $b30c                                  ; $4091: $01 $0c $b3
    ld [bc], a                                    ; $4094: $02

jr_0b4_4095:
    ld d, h                                       ; $4095: $54
    ld a, l                                       ; $4096: $7d
    sbc $47                                       ; $4097: $de $47
    nop                                           ; $4099: $00
    jr nz, jr_0b4_4069                            ; $409a: $20 $cd

    add hl, bc                                    ; $409c: $09
    rst $20                                       ; $409d: $e7
    inc b                                         ; $409e: $04
    call nc, Call_000_000e                        ; $409f: $d4 $0e $00
    jr nz, jr_0b4_4071                            ; $40a2: $20 $cd

jr_0b4_40a4:
    add hl, bc                                    ; $40a4: $09
    rst $20                                       ; $40a5: $e7
    inc b                                         ; $40a6: $04
    call nc, Call_000_000e                        ; $40a7: $d4 $0e $00
    jr nz, jr_0b4_403f                            ; $40aa: $20 $93

    ld b, $7c                                     ; $40ac: $06 $7c
    inc de                                        ; $40ae: $13
    adc e                                         ; $40af: $8b
    add hl, bc                                    ; $40b0: $09
    nop                                           ; $40b1: $00
    nop                                           ; $40b2: $00
    adc e                                         ; $40b3: $8b
    dec b                                         ; $40b4: $05
    ld [hl], d                                    ; $40b5: $72
    ld a, [bc]                                    ; $40b6: $0a
    nop                                           ; $40b7: $00
    jr nz, jr_0b4_40ba                            ; $40b8: $20 $00

jr_0b4_40ba:
    nop                                           ; $40ba: $00
    ld sp, $ff0e                                  ; $40bb: $31 $0e $ff
    rla                                           ; $40be: $17
    rst $38                                       ; $40bf: $ff
    ld d, e                                       ; $40c0: $53
    nop                                           ; $40c1: $00
    nop                                           ; $40c2: $00
    ld l, e                                       ; $40c3: $6b
    dec b                                         ; $40c4: $05
    call nc, Call_0b4_450a                        ; $40c5: $d4 $0a $45
    inc l                                         ; $40c8: $2c
    ld b, e                                       ; $40c9: $43
    inc d                                         ; $40ca: $14
    ld d, h                                       ; $40cb: $54
    ld a, l                                       ; $40cc: $7d
    cp h                                          ; $40cd: $bc
    dec bc                                        ; $40ce: $0b
    sbc $4b                                       ; $40cf: $de $4b
    nop                                           ; $40d1: $00
    jr nz, jr_0b4_40fc                            ; $40d2: $20 $28

    dec b                                         ; $40d4: $05
    push af                                       ; $40d5: $f5
    ld c, $0f                                     ; $40d6: $0e $0f
    ld a, [bc]                                    ; $40d8: $0a
    nop                                           ; $40d9: $00
    jr nz, jr_0b4_4104                            ; $40da: $20 $28

    dec b                                         ; $40dc: $05
    push af                                       ; $40dd: $f5
    ld c, $0f                                     ; $40de: $0e $0f
    ld a, [bc]                                    ; $40e0: $0a
    nop                                           ; $40e1: $00
    jr nz, jr_0b4_4115                            ; $40e2: $20 $31

    ld c, $ff                                     ; $40e4: $0e $ff
    rla                                           ; $40e6: $17

jr_0b4_40e7:
    rst $38                                       ; $40e7: $ff
    ld d, e                                       ; $40e8: $53
    nop                                           ; $40e9: $00
    inc d                                         ; $40ea: $14
    ld d, c                                       ; $40eb: $51
    ld a, [bc]                                    ; $40ec: $0a
    rst $38                                       ; $40ed: $ff
    ld d, e                                       ; $40ee: $53
    jr z, jr_0b4_40fe                             ; $40ef: $28 $0d

    nop                                           ; $40f1: $00
    nop                                           ; $40f2: $00
    ld d, d                                       ; $40f3: $52
    ld c, $ff                                     ; $40f4: $0e $ff
    ld b, a                                       ; $40f6: $47
    dec sp                                        ; $40f7: $3b
    inc bc                                        ; $40f8: $03
    nop                                           ; $40f9: $00
    nop                                           ; $40fa: $00
    ld d, b                                       ; $40fb: $50

jr_0b4_40fc:
    ld a, [bc]                                    ; $40fc: $0a
    db $fd                                        ; $40fd: $fd

jr_0b4_40fe:
    dec bc                                        ; $40fe: $0b
    rst $20                                       ; $40ff: $e7
    inc b                                         ; $4100: $04
    nop                                           ; $4101: $00
    nop                                           ; $4102: $00
    ld d, h                                       ; $4103: $54

jr_0b4_4104:
    ld a, l                                       ; $4104: $7d
    sbc d                                         ; $4105: $9a
    rla                                           ; $4106: $17
    ld b, l                                       ; $4107: $45
    inc l                                         ; $4108: $2c
    nop                                           ; $4109: $00
    jr nz, jr_0b4_4135                            ; $410a: $20 $29

    dec b                                         ; $410c: $05
    or $0e                                        ; $410d: $f6 $0e
    rrca                                          ; $410f: $0f
    ld a, [bc]                                    ; $4110: $0a
    nop                                           ; $4111: $00
    jr nz, jr_0b4_413d                            ; $4112: $20 $29

    dec b                                         ; $4114: $05

jr_0b4_4115:
    or $0e                                        ; $4115: $f6 $0e
    rrca                                          ; $4117: $0f
    ld a, [bc]                                    ; $4118: $0a
    nop                                           ; $4119: $00
    jr nz, @+$54                                  ; $411a: $20 $52

    ld c, $ff                                     ; $411c: $0e $ff
    ld b, a                                       ; $411e: $47
    dec sp                                        ; $411f: $3b
    inc bc                                        ; $4120: $03
    nop                                           ; $4121: $00
    db $10                                        ; $4122: $10
    adc h                                         ; $4123: $8c
    dec b                                         ; $4124: $05
    or h                                          ; $4125: $b4
    ld c, $e6                                     ; $4126: $0e $e6
    nop                                           ; $4128: $00
    nop                                           ; $4129: $00
    nop                                           ; $412a: $00
    sub e                                         ; $412b: $93
    ld [de], a                                    ; $412c: $12
    db $dd                                        ; $412d: $dd
    cpl                                           ; $412e: $2f
    ld [$0005], sp                                ; $412f: $08 $05 $00
    nop                                           ; $4132: $00
    adc e                                         ; $4133: $8b
    dec b                                         ; $4134: $05

jr_0b4_4135:
    sub d                                         ; $4135: $92
    ld a, [bc]                                    ; $4136: $0a
    rla                                           ; $4137: $17
    rrca                                          ; $4138: $0f
    nop                                           ; $4139: $00
    nop                                           ; $413a: $00
    ld d, h                                       ; $413b: $54
    ld a, l                                       ; $413c: $7d

jr_0b4_413d:
    db $f4                                        ; $413d: $f4
    ld b, $45                                     ; $413e: $06 $45
    inc l                                         ; $4140: $2c
    nop                                           ; $4141: $00
    jr nz, @+$11                                  ; $4142: $20 $0f

    ld a, [bc]                                    ; $4144: $0a
    add hl, hl                                    ; $4145: $29
    dec b                                         ; $4146: $05
    add hl, de                                    ; $4147: $19
    dec bc                                        ; $4148: $0b
    nop                                           ; $4149: $00
    jr nz, jr_0b4_415b                            ; $414a: $20 $0f

    ld a, [bc]                                    ; $414c: $0a
    add hl, hl                                    ; $414d: $29
    dec b                                         ; $414e: $05
    add hl, de                                    ; $414f: $19
    dec bc                                        ; $4150: $0b
    nop                                           ; $4151: $00
    jr nz, jr_0b4_40e7                            ; $4152: $20 $93

    ld [de], a                                    ; $4154: $12
    db $dd                                        ; $4155: $dd
    cpl                                           ; $4156: $2f
    ld [$0005], sp                                ; $4157: $08 $05 $00
    db $10                                        ; $415a: $10

jr_0b4_415b:
    push de                                       ; $415b: $d5
    ld c, $6a                                     ; $415c: $0e $6a
    dec b                                         ; $415e: $05
    rst $38                                       ; $415f: $ff
    rla                                           ; $4160: $17
    nop                                           ; $4161: $00
    nop                                           ; $4162: $00
    rrca                                          ; $4163: $0f
    ld a, [bc]                                    ; $4164: $0a
    ld e, c                                       ; $4165: $59
    rrca                                          ; $4166: $0f
    rst $20                                       ; $4167: $e7
    inc b                                         ; $4168: $04
    nop                                           ; $4169: $00
    nop                                           ; $416a: $00
    ld [hl], c                                    ; $416b: $71
    ld h, c                                       ; $416c: $61
    xor $09                                       ; $416d: $ee $09
    dec h                                         ; $416f: $25
    inc l                                         ; $4170: $2c
    ld [bc], a                                    ; $4171: $02
    nop                                           ; $4172: $00
    or h                                          ; $4173: $b4

jr_0b4_4174:
    ld [hl], c                                    ; $4174: $71
    rst $38                                       ; $4175: $ff
    rrca                                          ; $4176: $0f
    ld b, l                                       ; $4177: $45
    inc l                                         ; $4178: $2c
    nop                                           ; $4179: $00
    jr jr_0b4_4174                                ; $417a: $18 $f8

jr_0b4_417c:
    ld b, $df                                     ; $417c: $06 $df
    ld b, e                                       ; $417e: $43
    ld l, d                                       ; $417f: $6a
    dec b                                         ; $4180: $05
    nop                                           ; $4181: $00
    jr nz, jr_0b4_417c                            ; $4182: $20 $f8

    ld b, $df                                     ; $4184: $06 $df
    ld b, e                                       ; $4186: $43
    ld l, d                                       ; $4187: $6a
    dec b                                         ; $4188: $05
    nop                                           ; $4189: $00
    jr nz, jr_0b4_419b                            ; $418a: $20 $0f

    ld a, [bc]                                    ; $418c: $0a
    ld e, c                                       ; $418d: $59
    rrca                                          ; $418e: $0f
    rst $20                                       ; $418f: $e7
    inc b                                         ; $4190: $04
    nop                                           ; $4191: $00
    ld [$09ce], sp                                ; $4192: $08 $ce $09
    ld c, c                                       ; $4195: $49
    dec b                                         ; $4196: $05
    push af                                       ; $4197: $f5
    ld c, $00                                     ; $4198: $0e $00
    nop                                           ; $419a: $00

jr_0b4_419b:
    cp $17                                        ; $419b: $fe $17
    xor l                                         ; $419d: $ad
    dec b                                         ; $419e: $05
    and l                                         ; $419f: $a5
    nop                                           ; $41a0: $00
    ld bc, $2d00                                  ; $41a1: $01 $00 $2d
    dec [hl]                                      ; $41a4: $35
    ret c                                         ; $41a5: $d8

    ld a, [hl+]                                   ; $41a6: $2a
    ld b, l                                       ; $41a7: $45
    inc l                                         ; $41a8: $2c
    ld [bc], a                                    ; $41a9: $02
    nop                                           ; $41aa: $00
    db $db                                        ; $41ab: $db

jr_0b4_41ac:
    ld a, $a9                                     ; $41ac: $3e $a9
    inc a                                         ; $41ae: $3c
    rst $38                                       ; $41af: $ff
    rrca                                          ; $41b0: $0f
    ld b, e                                       ; $41b1: $43
    nop                                           ; $41b2: $00
    db $10                                        ; $41b3: $10
    ld a, [bc]                                    ; $41b4: $0a
    ld e, e                                       ; $41b5: $5b
    rlca                                          ; $41b6: $07
    cp [hl]                                       ; $41b7: $be
    ccf                                           ; $41b8: $3f
    nop                                           ; $41b9: $00
    jr nz, jr_0b4_41ac                            ; $41ba: $20 $f0

    dec d                                         ; $41bc: $15
    ld [hl-], a                                   ; $41bd: $32
    ld [de], a                                    ; $41be: $12
    cp [hl]                                       ; $41bf: $be
    ccf                                           ; $41c0: $3f
    nop                                           ; $41c1: $00
    jr nz, @-$2f                                  ; $41c2: $20 $cf

    dec d                                         ; $41c4: $15
    ld a, [hl-]                                   ; $41c5: $3a
    inc bc                                        ; $41c6: $03
    sub l                                         ; $41c7: $95
    ld c, $00                                     ; $41c8: $0e $00
    nop                                           ; $41ca: $00
    ld d, d                                       ; $41cb: $52
    ld c, $49                                     ; $41cc: $0e $49
    dec b                                         ; $41ce: $05
    rla                                           ; $41cf: $17
    rrca                                          ; $41d0: $0f
    ld bc, $9100                                  ; $41d1: $01 $00 $91
    ld a, [bc]                                    ; $41d4: $0a
    ld l, d                                       ; $41d5: $6a
    dec b                                         ; $41d6: $05
    rst $38                                       ; $41d7: $ff
    rla                                           ; $41d8: $17
    inc bc                                        ; $41d9: $03
    nop                                           ; $41da: $00
    db $db                                        ; $41db: $db
    ld a, $2e                                     ; $41dc: $3e $2e
    dec c                                         ; $41de: $0d
    ccf                                           ; $41df: $3f
    ld d, a                                       ; $41e0: $57
    ld [bc], a                                    ; $41e1: $02
    inc b                                         ; $41e2: $04
    db $db                                        ; $41e3: $db
    ld a, $0d                                     ; $41e4: $3e $0d
    dec c                                         ; $41e6: $0d
    ccf                                           ; $41e7: $3f
    ld d, a                                       ; $41e8: $57
    ld bc, $2f00                                  ; $41e9: $01 $00 $2f
    ld [bc], a                                    ; $41ec: $02
    db $db                                        ; $41ed: $db
    ld a, $5c                                     ; $41ee: $3e $5c
    inc bc                                        ; $41f0: $03
    nop                                           ; $41f1: $00
    jr nz, @-$2f                                  ; $41f2: $20 $cf

    dec d                                         ; $41f4: $15
    ld e, h                                       ; $41f5: $5c
    inc bc                                        ; $41f6: $03
    ld d, e                                       ; $41f7: $53
    ld c, $00                                     ; $41f8: $0e $00
    inc e                                         ; $41fa: $1c
    ld de, $de12                                  ; $41fb: $11 $12 $de
    ld d, e                                       ; $41fe: $53
    dec sp                                        ; $41ff: $3b
    inc bc                                        ; $4200: $03
    nop                                           ; $4201: $00
    nop                                           ; $4202: $00
    sub e                                         ; $4203: $93
    ld c, $4a                                     ; $4204: $0e $4a
    dec b                                         ; $4206: $05
    ld a, c                                       ; $4207: $79
    inc de                                        ; $4208: $13
    ld bc, $3000                                  ; $4209: $01 $00 $30
    ld c, $0b                                     ; $420c: $0e $0b
    add hl, bc                                    ; $420e: $09
    dec de                                        ; $420f: $1b
    cpl                                           ; $4210: $2f
    ld [bc], a                                    ; $4211: $02
    ld [$4b1d], sp                                ; $4212: $08 $1d $4b
    ld l, $0d                                     ; $4215: $2e $0d
    rst $38                                       ; $4217: $ff
    ld a, a                                       ; $4218: $7f
    ld bc, $ee00                                  ; $4219: $01 $00 $ee
    ld e, l                                       ; $421c: $5d
    dec a                                         ; $421d: $3d
    ld d, e                                       ; $421e: $53
    dec c                                         ; $421f: $0d
    dec d                                         ; $4220: $15
    ld bc, $7100                                  ; $4221: $01 $00 $71
    ld b, $09                                     ; $4224: $06 $09
    dec b                                         ; $4226: $05
    db $db                                        ; $4227: $db
    ld a, $42                                     ; $4228: $3e $42
    nop                                           ; $422a: $00
    ld d, h                                       ; $422b: $54
    ld c, $be                                     ; $422c: $0e $be
    dec hl                                        ; $422e: $2b
    nop                                           ; $422f: $00
    jr nz, jr_0b4_4232                            ; $4230: $20 $00

jr_0b4_4232:
    inc b                                         ; $4232: $04
    ld e, h                                       ; $4233: $5c
    inc bc                                        ; $4234: $03
    rst $18                                       ; $4235: $df
    ld h, a                                       ; $4236: $67
    cp [hl]                                       ; $4237: $be
    dec hl                                        ; $4238: $2b
    ld h, e                                       ; $4239: $63
    nop                                           ; $423a: $00
    push de                                       ; $423b: $d5
    ld c, $ce                                     ; $423c: $0e $ce
    add hl, bc                                    ; $423e: $09
    db $dd                                        ; $423f: $dd
    inc de                                        ; $4240: $13
    ld bc, $6d00                                  ; $4241: $01 $00 $6d
    add hl, bc                                    ; $4244: $09
    db $db                                        ; $4245: $db
    ld a, $c7                                     ; $4246: $3e $c7
    nop                                           ; $4248: $00
    inc bc                                        ; $4249: $03
    nop                                           ; $424a: $00
    db $fd                                        ; $424b: $fd
    ld c, d                                       ; $424c: $4a
    ld l, $0d                                     ; $424d: $2e $0d
    daa                                           ; $424f: $27
    jr nc, jr_0b4_4255                            ; $4250: $30 $03

    ld [$4ab8], sp                                ; $4252: $08 $b8 $4a

jr_0b4_4255:
    rst $38                                       ; $4255: $ff
    ld a, a                                       ; $4256: $7f
    sbc $03                                       ; $4257: $de $03
    ld [bc], a                                    ; $4259: $02
    nop                                           ; $425a: $00
    ld c, h                                       ; $425b: $4c
    add hl, bc                                    ; $425c: $09
    ret z                                         ; $425d: $c8

    ld [$0a51], sp                                ; $425e: $08 $51 $0a
    nop                                           ; $4261: $00
    inc e                                         ; $4262: $1c
    ld e, e                                       ; $4263: $5b
    inc hl                                        ; $4264: $23
    ld c, d                                       ; $4265: $4a
    ld bc, $7bff                                  ; $4266: $01 $ff $7b
    nop                                           ; $4269: $00
    nop                                           ; $426a: $00
    ld a, l                                       ; $426b: $7d
    inc bc                                        ; $426c: $03
    sbc $53                                       ; $426d: $de $53
    rst $38                                       ; $426f: $ff
    ld a, e                                       ; $4270: $7b
    ld h, d                                       ; $4271: $62
    ld [$11ce], sp                                ; $4272: $08 $ce $11
    cp h                                          ; $4275: $bc
    rla                                           ; $4276: $17
    sub e                                         ; $4277: $93
    ld a, [bc]                                    ; $4278: $0a
    ld bc, $8e00                                  ; $4279: $01 $00 $8e
    add hl, bc                                    ; $427c: $09
    db $db                                        ; $427d: $db
    ld a, $a7                                     ; $427e: $3e $a7
    nop                                           ; $4280: $00
    ld bc, $1800                                  ; $4281: $01 $00 $18
    inc bc                                        ; $4284: $03
    call c, $ec42                                 ; $4285: $dc $42 $ec
    ld [$0001], sp                                ; $4288: $08 $01 $00
    jr jr_0b4_4290                                ; $428b: $18 $03

    ccf                                           ; $428d: $3f
    ld d, a                                       ; $428e: $57
    xor d                                         ; $428f: $aa

jr_0b4_4290:
    inc e                                         ; $4290: $1c
    ld b, l                                       ; $4291: $45
    nop                                           ; $4292: $00
    inc de                                        ; $4293: $13
    ld l, $30                                     ; $4294: $2e $30
    ld b, $1d                                     ; $4296: $06 $1d
    ld c, a                                       ; $4298: $4f
    nop                                           ; $4299: $00
    inc e                                         ; $429a: $1c
    pop af                                        ; $429b: $f1
    add hl, de                                    ; $429c: $19
    rst $18                                       ; $429d: $df
    ld c, a                                       ; $429e: $4f
    ld a, h                                       ; $429f: $7c
    inc bc                                        ; $42a0: $03
    nop                                           ; $42a1: $00
    nop                                           ; $42a2: $00
    cp [hl]                                       ; $42a3: $be
    ccf                                           ; $42a4: $3f
    rst $38                                       ; $42a5: $ff
    ld [hl], a                                    ; $42a6: $77
    nop                                           ; $42a7: $00
    jr nz, jr_0b4_42ec                            ; $42a8: $20 $42

    nop                                           ; $42aa: $00
    rst $28                                       ; $42ab: $ef
    add hl, bc                                    ; $42ac: $09
    rst $38                                       ; $42ad: $ff
    ld a, a                                       ; $42ae: $7f
    ld e, b                                       ; $42af: $58
    rrca                                          ; $42b0: $0f
    inc hl                                        ; $42b1: $23
    nop                                           ; $42b2: $00
    ld c, h                                       ; $42b3: $4c
    add hl, bc                                    ; $42b4: $09
    db $db                                        ; $42b5: $db
    ld a, $51                                     ; $42b6: $3e $51
    ld a, [bc]                                    ; $42b8: $0a
    ld [bc], a                                    ; $42b9: $02
    nop                                           ; $42ba: $00
    ld e, $4f                                     ; $42bb: $1e $4f
    db $eb                                        ; $42bd: $eb
    inc c                                         ; $42be: $0c
    rst $38                                       ; $42bf: $ff
    ld a, a                                       ; $42c0: $7f
    ld bc, $5800                                  ; $42c1: $01 $00 $58
    ld a, [hl-]                                   ; $42c4: $3a
    dec bc                                        ; $42c5: $0b
    ld de, $573f                                  ; $42c6: $11 $3f $57
    ld b, [hl]                                    ; $42c9: $46
    nop                                           ; $42ca: $00
    cp l                                          ; $42cb: $bd
    ld c, d                                       ; $42cc: $4a
    xor h                                         ; $42cd: $ac

jr_0b4_42ce:
    dec b                                         ; $42ce: $05
    sub e                                         ; $42cf: $93
    ld c, $43                                     ; $42d0: $0e $43
    nop                                           ; $42d2: $00
    ld [hl-], a                                   ; $42d3: $32
    ld c, $be                                     ; $42d4: $0e $be
    daa                                           ; $42d6: $27
    nop                                           ; $42d7: $00
    jr nz, jr_0b4_42da                            ; $42d8: $20 $00

jr_0b4_42da:
    inc b                                         ; $42da: $04
    sub l                                         ; $42db: $95
    ld a, [bc]                                    ; $42dc: $0a
    rst $38                                       ; $42dd: $ff
    ld a, a                                       ; $42de: $7f
    sbc [hl]                                      ; $42df: $9e
    inc de                                        ; $42e0: $13
    add h                                         ; $42e1: $84
    ld [$0eb3], sp                                ; $42e2: $08 $b3 $0e
    call z, $ff4c                                 ; $42e5: $cc $4c $ff
    inc de                                        ; $42e8: $13
    ld [bc], a                                    ; $42e9: $02
    nop                                           ; $42ea: $00
    ld c, e                                       ; $42eb: $4b

jr_0b4_42ec:
    add hl, bc                                    ; $42ec: $09
    sub e                                         ; $42ed: $93
    ld a, [bc]                                    ; $42ee: $0a
    and $00                                       ; $42ef: $e6 $00
    ld bc, $ee00                                  ; $42f1: $01 $00 $ee
    ld e, l                                       ; $42f4: $5d
    dec c                                         ; $42f5: $0d
    ld de, $573f                                  ; $42f6: $11 $3f $57
    ld [bc], a                                    ; $42f9: $02
    nop                                           ; $42fa: $00
    ccf                                           ; $42fb: $3f
    ld d, a                                       ; $42fc: $57
    ld l, $11                                     ; $42fd: $2e $11
    rst $38                                       ; $42ff: $ff
    ld a, a                                       ; $4300: $7f
    ld b, [hl]                                    ; $4301: $46
    inc b                                         ; $4302: $04
    jp nc, $bf25                                  ; $4303: $d2 $25 $bf

    ld h, a                                       ; $4306: $67
    adc e                                         ; $4307: $8b
    dec b                                         ; $4308: $05
    ld b, e                                       ; $4309: $43
    nop                                           ; $430a: $00
    ld sp, $000e                                  ; $430b: $31 $0e $00
    jr nz, jr_0b4_42ce                            ; $430e: $20 $be

    rra                                           ; $4310: $1f
    nop                                           ; $4311: $00
    nop                                           ; $4312: $00
    ld [hl-], a                                   ; $4313: $32
    ld c, $9e                                     ; $4314: $0e $9e
    rlca                                          ; $4316: $07
    nop                                           ; $4317: $00
    jr nz, jr_0b4_437e                            ; $4318: $20 $64

    ld [$0f17], sp                                ; $431a: $08 $17 $0f
    or b                                          ; $431d: $b0
    ld l, b                                       ; $431e: $68
    rst $38                                       ; $431f: $ff
    ld l, e                                       ; $4320: $6b
    nop                                           ; $4321: $00
    nop                                           ; $4322: $00
    scf                                           ; $4323: $37
    rrca                                          ; $4324: $0f
    adc e                                         ; $4325: $8b
    dec b                                         ; $4326: $05
    call c, $0043                                 ; $4327: $dc $43 $00
    nop                                           ; $432a: $00
    ld e, c                                       ; $432b: $59
    dec bc                                        ; $432c: $0b
    call $fe0c                                    ; $432d: $cd $0c $fe
    ld b, d                                       ; $4330: $42
    ld [bc], a                                    ; $4331: $02
    nop                                           ; $4332: $00
    pop af                                        ; $4333: $f1
    ld de, $573f                                  ; $4334: $11 $3f $57
    rst $20                                       ; $4337: $e7
    inc b                                         ; $4338: $04
    ld h, a                                       ; $4339: $67
    inc b                                         ; $433a: $04
    ld [hl], $3e                                  ; $433b: $36 $3e
    adc [hl]                                      ; $433d: $8e
    dec d                                         ; $433e: $15
    ld a, $5f                                     ; $433f: $3e $5f
    inc hl                                        ; $4341: $23
    nop                                           ; $4342: $00
    ld sp, $7c0a                                  ; $4343: $31 $0a $7c
    inc bc                                        ; $4346: $03
    nop                                           ; $4347: $00
    jr nz, jr_0b4_434a                            ; $4348: $20 $00

jr_0b4_434a:
    nop                                           ; $434a: $00
    ld [hl-], a                                   ; $434b: $32
    ld c, $e7                                     ; $434c: $0e $e7
    inc b                                         ; $434e: $04
    nop                                           ; $434f: $00
    jr nz, jr_0b4_4353                            ; $4350: $20 $01

    nop                                           ; $4352: $00

jr_0b4_4353:
    adc l                                         ; $4353: $8d
    add hl, de                                    ; $4354: $19
    cp c                                          ; $4355: $b9
    ld b, [hl]                                    ; $4356: $46
    scf                                           ; $4357: $37
    inc de                                        ; $4358: $13
    nop                                           ; $4359: $00
    nop                                           ; $435a: $00
    or h                                          ; $435b: $b4
    ld a, [bc]                                    ; $435c: $0a
    db $dd                                        ; $435d: $dd
    inc de                                        ; $435e: $13
    rst $20                                       ; $435f: $e7
    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    nop                                           ; $4362: $00
    ld a, d                                       ; $4363: $7a
    dec bc                                        ; $4364: $0b
    ccf                                           ; $4365: $3f
    ld d, e                                       ; $4366: $53
    rrca                                          ; $4367: $0f
    dec d                                         ; $4368: $15
    nop                                           ; $4369: $00
    nop                                           ; $436a: $00
    xor $05                                       ; $436b: $ee $05
    ld a, d                                       ; $436d: $7a
    rla                                           ; $436e: $17
    add $00                                       ; $436f: $c6 $00
    ld h, [hl]                                    ; $4371: $66
    nop                                           ; $4372: $00
    inc sp                                        ; $4373: $33
    ld a, $5f                                     ; $4374: $3e $5f
    ld e, e                                       ; $4376: $5b
    sbc d                                         ; $4377: $9a
    ld b, [hl]                                    ; $4378: $46
    inc hl                                        ; $4379: $23
    nop                                           ; $437a: $00
    rst $10                                       ; $437b: $d7
    ld b, $9c                                     ; $437c: $06 $9c

jr_0b4_437e:
    ld c, [hl]                                    ; $437e: $4e
    nop                                           ; $437f: $00
    jr nz, jr_0b4_4382                            ; $4380: $20 $00

jr_0b4_4382:
    nop                                           ; $4382: $00
    ld c, d                                       ; $4383: $4a
    dec b                                         ; $4384: $05
    ld [hl], h                                    ; $4385: $74
    ld a, [bc]                                    ; $4386: $0a
    nop                                           ; $4387: $00
    jr nz, jr_0b4_43ab                            ; $4388: $20 $21

    nop                                           ; $438a: $00
    ret nc                                        ; $438b: $d0

    dec d                                         ; $438c: $15
    sbc e                                         ; $438d: $9b
    ld [hl], $7a                                  ; $438e: $36 $7a
    inc de                                        ; $4390: $13
    jr nz, jr_0b4_4393                            ; $4391: $20 $00

jr_0b4_4393:
    jr nc, jr_0b4_439b                            ; $4393: $30 $06

    sbc d                                         ; $4395: $9a
    dec bc                                        ; $4396: $0b
    rst $38                                       ; $4397: $ff
    rra                                           ; $4398: $1f
    ld [bc], a                                    ; $4399: $02
    inc b                                         ; $439a: $04

jr_0b4_439b:
    ld a, d                                       ; $439b: $7a
    dec bc                                        ; $439c: $0b
    ld e, a                                       ; $439d: $5f
    ld b, a                                       ; $439e: $47
    adc [hl]                                      ; $439f: $8e
    ld de, $0000                                  ; $43a0: $11 $00 $00
    jr c, jr_0b4_43b0                             ; $43a3: $38 $0b

    rst $38                                       ; $43a5: $ff
    ld c, e                                       ; $43a6: $4b
    ld l, e                                       ; $43a7: $6b
    ld bc, $0000                                  ; $43a8: $01 $00 $00

jr_0b4_43ab:
    ld a, d                                       ; $43ab: $7a
    ld b, d                                       ; $43ac: $42
    ld a, a                                       ; $43ad: $7f
    ld e, a                                       ; $43ae: $5f
    ld h, [hl]                                    ; $43af: $66

jr_0b4_43b0:
    nop                                           ; $43b0: $00
    nop                                           ; $43b1: $00
    inc e                                         ; $43b2: $1c
    di                                            ; $43b3: $f3
    add hl, de                                    ; $43b4: $19
    cp [hl]                                       ; $43b5: $be
    ld c, [hl]                                    ; $43b6: $4e
    ld e, h                                       ; $43b7: $5c
    inc de                                        ; $43b8: $13
    nop                                           ; $43b9: $00
    nop                                           ; $43ba: $00
    rst $08                                       ; $43bb: $cf
    dec c                                         ; $43bc: $0d
    ld sp, hl                                     ; $43bd: $f9
    ld [bc], a                                    ; $43be: $02
    nop                                           ; $43bf: $00
    jr nz, @+$24                                  ; $43c0: $20 $22

    nop                                           ; $43c2: $00
    ld [hl], d                                    ; $43c3: $72
    ld c, $dd                                     ; $43c4: $0e $dd
    ld a, [hl+]                                   ; $43c6: $2a
    sbc e                                         ; $43c7: $9b
    inc de                                        ; $43c8: $13
    nop                                           ; $43c9: $00
    inc b                                         ; $43ca: $04
    rrca                                          ; $43cb: $0f
    ld [bc], a                                    ; $43cc: $02
    rst $38                                       ; $43cd: $ff
    rra                                           ; $43ce: $1f
    add [hl]                                      ; $43cf: $86
    nop                                           ; $43d0: $00
    ld [bc], a                                    ; $43d1: $02
    ld [$0ed5], sp                                ; $43d2: $08 $d5 $0e
    add hl, hl                                    ; $43d5: $29
    ld bc, $17dd                                  ; $43d6: $01 $dd $17
    nop                                           ; $43d9: $00
    inc b                                         ; $43da: $04
    ld c, $02                                     ; $43db: $0e $02
    cp l                                          ; $43dd: $bd
    rra                                           ; $43de: $1f
    ld c, d                                       ; $43df: $4a
    ld b, b                                       ; $43e0: $40
    ld [hl+], a                                   ; $43e1: $22
    nop                                           ; $43e2: $00
    jr c, jr_0b4_4423                             ; $43e3: $38 $3e

    ld a, a                                       ; $43e5: $7f
    ld e, a                                       ; $43e6: $5f
    jr nc, @+$17                                  ; $43e7: $30 $15

    ld b, e                                       ; $43e9: $43
    inc b                                         ; $43ea: $04
    ld a, [hl-]                                   ; $43eb: $3a
    rlca                                          ; $43ec: $07
    rst $18                                       ; $43ed: $df
    ld c, e                                       ; $43ee: $4b
    nop                                           ; $43ef: $00
    jr nz, jr_0b4_43f2                            ; $43f0: $20 $00

jr_0b4_43f2:
    nop                                           ; $43f2: $00
    ld [hl-], a                                   ; $43f3: $32
    ld c, $7c                                     ; $43f4: $0e $7c
    inc bc                                        ; $43f6: $03
    nop                                           ; $43f7: $00
    jr nz, @+$25                                  ; $43f8: $20 $23

    nop                                           ; $43fa: $00
    sub h                                         ; $43fb: $94
    ld hl, $3f1f                                  ; $43fc: $21 $1f $3f
    scf                                           ; $43ff: $37
    dec bc                                        ; $4400: $0b
    ld b, e                                       ; $4401: $43
    nop                                           ; $4402: $00
    cp e                                          ; $4403: $bb
    ld b, [hl]                                    ; $4404: $46
    ld c, d                                       ; $4405: $4a
    ld b, b                                       ; $4406: $40
    rst $38                                       ; $4407: $ff
    dec de                                        ; $4408: $1b
    ld bc, $ae08                                  ; $4409: $01 $08 $ae
    ld d, h                                       ; $440c: $54
    jr nc, jr_0b4_4419                            ; $440d: $30 $0a

    rst $38                                       ; $440f: $ff
    rla                                           ; $4410: $17
    ld hl, $d000                                  ; $4411: $21 $00 $d0
    ld h, h                                       ; $4414: $64
    ld a, d                                       ; $4415: $7a
    inc de                                        ; $4416: $13
    ld h, $28                                     ; $4417: $26 $28

jr_0b4_4419:
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    push af                                       ; $441b: $f5
    ld b, $5f                                     ; $441c: $06 $5f
    ld d, a                                       ; $441e: $57
    xor b                                         ; $441f: $a8
    inc b                                         ; $4420: $04
    nop                                           ; $4421: $00
    nop                                           ; $4422: $00

jr_0b4_4423:
    ld hl, sp+$06                                 ; $4423: $f8 $06
    cp [hl]                                       ; $4425: $be
    inc hl                                        ; $4426: $23
    nop                                           ; $4427: $00
    jr nz, jr_0b4_442a                            ; $4428: $20 $00

jr_0b4_442a:
    nop                                           ; $442a: $00
    ldh a, [rNR11]                                ; $442b: $f0 $11
    add hl, de                                    ; $442d: $19
    rlca                                          ; $442e: $07
    nop                                           ; $442f: $00
    jr nz, jr_0b4_4476                            ; $4430: $20 $44

    nop                                           ; $4432: $00

jr_0b4_4433:
    ld a, l                                       ; $4433: $7d
    ld [hl], $9f                                  ; $4434: $36 $9f
    ld h, e                                       ; $4436: $63
    db $d3                                        ; $4437: $d3
    dec e                                         ; $4438: $1d
    ld b, e                                       ; $4439: $43
    ld [$19f1], sp                                ; $443a: $08 $f1 $19
    ld a, [hl]                                    ; $443d: $7e
    dec hl                                        ; $443e: $2b
    xor [hl]                                      ; $443f: $ae
    ld e, b                                       ; $4440: $58
    nop                                           ; $4441: $00
    nop                                           ; $4442: $00

Jump_0b4_4443:
    ld [de], a                                    ; $4443: $12
    ld l, c                                       ; $4444: $69
    cp c                                          ; $4445: $b9
    ld [hl], $47                                  ; $4446: $36 $47
    inc [hl]                                      ; $4448: $34
    ld bc, $5300                                  ; $4449: $01 $00 $53
    ld l, l                                       ; $444c: $6d
    jr @+$19                                      ; $444d: $18 $17

    ld c, b                                       ; $444f: $48
    jr c, jr_0b4_4454                             ; $4450: $38 $02

    nop                                           ; $4452: $00
    cp h                                          ; $4453: $bc

jr_0b4_4454:
    ld b, [hl]                                    ; $4454: $46
    adc $05                                       ; $4455: $ce $05
    cp $13                                        ; $4457: $fe $13
    nop                                           ; $4459: $00
    jr nz, @-$48                                  ; $445a: $20 $b6

    ld a, [bc]                                    ; $445c: $0a
    cp [hl]                                       ; $445d: $be
    cpl                                           ; $445e: $2f
    ld e, e                                       ; $445f: $5b
    inc bc                                        ; $4460: $03
    nop                                           ; $4461: $00
    jr nz, jr_0b4_4433                            ; $4462: $20 $cf

    dec d                                         ; $4464: $15
    ld hl, sp+$06                                 ; $4465: $f8 $06
    ld d, e                                       ; $4467: $53
    ld [de], a                                    ; $4468: $12

jr_0b4_4469:
    nop                                           ; $4469: $00
    nop                                           ; $446a: $00

jr_0b4_446b:
    ld a, [hl-]                                   ; $446b: $3a
    ld [hl], $5e                                  ; $446c: $36 $5e
    ld e, a                                       ; $446e: $5f
    ld [hl], b                                    ; $446f: $70
    dec d                                         ; $4470: $15
    ld [bc], a                                    ; $4471: $02
    inc d                                         ; $4472: $14
    cp a                                          ; $4473: $bf
    scf                                           ; $4474: $37
    ret nc                                        ; $4475: $d0

jr_0b4_4476:
    ld l, b                                       ; $4476: $68
    xor b                                         ; $4477: $a8
    nop                                           ; $4478: $00
    ld b, e                                       ; $4479: $43
    ld [$408a], sp                                ; $447a: $08 $8a $40
    or h                                          ; $447d: $b4
    ld l, l                                       ; $447e: $6d
    push af                                       ; $447f: $f5
    add hl, de                                    ; $4480: $19
    ld hl, $f100                                  ; $4481: $21 $00 $f1
    dec b                                         ; $4484: $05
    xor l                                         ; $4485: $ad
    ld d, b                                       ; $4486: $50
    or $75                                        ; $4487: $f6 $75
    ld hl, $b104                                  ; $4489: $21 $04 $b1
    ld [bc], a                                    ; $448c: $02
    sbc h                                         ; $448d: $9c
    ld b, [hl]                                    ; $448e: $46
    db $dd                                        ; $448f: $dd
    rrca                                          ; $4490: $0f
    nop                                           ; $4491: $00
    jr nz, jr_0b4_44c6                            ; $4492: $20 $32

    ld [de], a                                    ; $4494: $12
    ld e, e                                       ; $4495: $5b
    inc bc                                        ; $4496: $03
    or [hl]                                       ; $4497: $b6
    ld a, [bc]                                    ; $4498: $0a
    nop                                           ; $4499: $00
    jr nz, jr_0b4_446b                            ; $449a: $20 $cf

    dec d                                         ; $449c: $15
    sub l                                         ; $449d: $95
    ld c, $32                                     ; $449e: $0e $32
    ld [de], a                                    ; $44a0: $12
    ld [hl+], a                                   ; $44a1: $22
    nop                                           ; $44a2: $00
    ld d, a                                       ; $44a3: $57
    ld d, $fe                                     ; $44a4: $16 $fe
    ld d, d                                       ; $44a6: $52
    rst $38                                       ; $44a7: $ff
    ld [hl], a                                    ; $44a8: $77
    add [hl]                                      ; $44a9: $86
    nop                                           ; $44aa: $00
    sub h                                         ; $44ab: $94
    ld h, l                                       ; $44ac: $65
    rst $18                                       ; $44ad: $df
    cpl                                           ; $44ae: $2f
    call z, $223c                                 ; $44af: $cc $3c $22
    ld [$54ce], sp                                ; $44b2: $08 $ce $54
    ld e, c                                       ; $44b5: $59
    rrca                                          ; $44b6: $0f
    rst $30                                       ; $44b7: $f7

jr_0b4_44b8:
    ld [hl], l                                    ; $44b8: $75
    ld bc, $9408                                  ; $44b9: $01 $08 $94
    ld l, l                                       ; $44bc: $6d
    ld a, d                                       ; $44bd: $7a
    rrca                                          ; $44be: $0f
    xor h                                         ; $44bf: $ac
    ld bc, $0800                                  ; $44c0: $01 $00 $08
    ld d, e                                       ; $44c3: $53
    dec [hl]                                      ; $44c4: $35
    ld a, h                                       ; $44c5: $7c

jr_0b4_44c6:
    dec bc                                        ; $44c6: $0b
    ccf                                           ; $44c7: $3f
    ld d, a                                       ; $44c8: $57
    nop                                           ; $44c9: $00

jr_0b4_44ca:
    jr nz, jr_0b4_44dc                            ; $44ca: $20 $10

    ld d, $96                                     ; $44cc: $16 $96
    ld c, $32                                     ; $44ce: $0e $32
    ld [de], a                                    ; $44d0: $12
    nop                                           ; $44d1: $00
    jr nz, jr_0b4_4469                            ; $44d2: $20 $95

    ld c, $7c                                     ; $44d4: $0e $7c
    inc bc                                        ; $44d6: $03
    call z, Call_000_003c                         ; $44d7: $cc $3c $00
    nop                                           ; $44da: $00
    inc a                                         ; $44db: $3c

jr_0b4_44dc:
    ld [hl-], a                                   ; $44dc: $32
    ldh a, [rNR11]                                ; $44dd: $f0 $11
    ld e, $53                                     ; $44df: $1e $53
    ld b, h                                       ; $44e1: $44
    inc c                                         ; $44e2: $0c
    ld de, $530e                                  ; $44e3: $11 $0e $53
    ld l, c                                       ; $44e6: $69
    rst $38                                       ; $44e7: $ff
    rra                                           ; $44e8: $1f
    ld hl, $b504                                  ; $44e9: $21 $04 $b5
    ld [hl], c                                    ; $44ec: $71
    ld e, c                                       ; $44ed: $59
    rrca                                          ; $44ee: $0f
    daa                                           ; $44ef: $27
    inc a                                         ; $44f0: $3c
    nop                                           ; $44f1: $00
    db $10                                        ; $44f2: $10
    ld [hl], e                                    ; $44f3: $73
    ld l, c                                       ; $44f4: $69
    jr c, jr_0b4_4506                             ; $44f5: $38 $0f

    adc e                                         ; $44f7: $8b
    ld bc, $0022                                  ; $44f8: $01 $22 $00
    sub b                                         ; $44fb: $90
    ld e, l                                       ; $44fc: $5d
    ld e, a                                       ; $44fd: $5f
    scf                                           ; $44fe: $37
    ld de, $0012                                  ; $44ff: $11 $12 $00
    jr nz, jr_0b4_4515                            ; $4502: $20 $11

    ld [de], a                                    ; $4504: $12
    ld a, [de]                                    ; $4505: $1a

jr_0b4_4506:
    inc bc                                        ; $4506: $03
    ld de, $0012                                  ; $4507: $11 $12 $00

Call_0b4_450a:
    jr nz, jr_0b4_44ca                            ; $450a: $20 $be

    dec hl                                        ; $450c: $2b
    rst $38                                       ; $450d: $ff
    ld e, a                                       ; $450e: $5f
    rst $38                                       ; $450f: $ff
    rra                                           ; $4510: $1f

jr_0b4_4511:
    inc h                                         ; $4511: $24
    nop                                           ; $4512: $00
    ld a, [hl-]                                   ; $4513: $3a

Call_0b4_4514:
    dec bc                                        ; $4514: $0b

jr_0b4_4515:
    cp [hl]                                       ; $4515: $be
    ld b, [hl]                                    ; $4516: $46
    rst $28                                       ; $4517: $ef
    dec d                                         ; $4518: $15
    ld b, e                                       ; $4519: $43
    inc c                                         ; $451a: $0c
    ld e, c                                       ; $451b: $59
    inc de                                        ; $451c: $13
    ldh a, [$60]                                  ; $451d: $f0 $60
    cp h                                          ; $451f: $bc
    ld a, [hl]                                    ; $4520: $7e
    nop                                           ; $4521: $00
    jr jr_0b4_44b8                                ; $4522: $18 $94

    ld l, l                                       ; $4524: $6d
    cp h                                          ; $4525: $bc
    rla                                           ; $4526: $17
    ld [$4205], sp                                ; $4527: $08 $05 $42
    nop                                           ; $452a: $00
    db $10                                        ; $452b: $10
    ld h, c                                       ; $452c: $61
    ld e, b                                       ; $452d: $58
    dec bc                                        ; $452e: $0b
    ld [bc], a                                    ; $452f: $02
    inc h                                         ; $4530: $24
    nop                                           ; $4531: $00
    nop                                           ; $4532: $00
    inc a                                         ; $4533: $3c
    rla                                           ; $4534: $17
    ld l, a                                       ; $4535: $6f
    ld hl, $5f5f                                  ; $4536: $21 $5f $5f
    nop                                           ; $4539: $00
    jr nz, jr_0b4_4556                            ; $453a: $20 $1a

    inc bc                                        ; $453c: $03
    ld l, a                                       ; $453d: $6f
    ld hl, $5f5f                                  ; $453e: $21 $5f $5f
    nop                                           ; $4541: $00
    jr nz, jr_0b4_459d                            ; $4542: $20 $59

    inc de                                        ; $4544: $13
    ldh a, [$60]                                  ; $4545: $f0 $60
    cp h                                          ; $4547: $bc
    ld a, [hl]                                    ; $4548: $7e
    ld b, h                                       ; $4549: $44
    nop                                           ; $454a: $00
    cp [hl]                                       ; $454b: $be
    inc de                                        ; $454c: $13
    ld e, a                                       ; $454d: $5f
    ld d, a                                       ; $454e: $57
    ld d, c                                       ; $454f: $51
    add hl, de                                    ; $4550: $19
    inc hl                                        ; $4551: $23
    inc d                                         ; $4552: $14
    ld de, $ef61                                  ; $4553: $11 $61 $ef

jr_0b4_4556:
    dec b                                         ; $4556: $05
    dec e                                         ; $4557: $1d
    ld l, a                                       ; $4558: $6f
    nop                                           ; $4559: $00
    nop                                           ; $455a: $00
    ld e, h                                       ; $455b: $5c
    daa                                           ; $455c: $27
    sub $75                                       ; $455d: $d6 $75
    dec h                                         ; $455f: $25
    inc [hl]                                      ; $4560: $34
    nop                                           ; $4561: $00
    ld [$3150], sp                                ; $4562: $08 $50 $31
    sbc a                                         ; $4565: $9f
    ld b, e                                       ; $4566: $43
    and a                                         ; $4567: $a7
    inc b                                         ; $4568: $04
    nop                                           ; $4569: $00
    nop                                           ; $456a: $00
    sbc l                                         ; $456b: $9d
    inc de                                        ; $456c: $13
    sbc a                                         ; $456d: $9f
    ld d, a                                       ; $456e: $57
    ld d, c                                       ; $456f: $51
    add hl, de                                    ; $4570: $19
    nop                                           ; $4571: $00
    jr nz, jr_0b4_4511                            ; $4572: $20 $9d

    inc de                                        ; $4574: $13
    sbc a                                         ; $4575: $9f
    ld d, a                                       ; $4576: $57
    ld d, c                                       ; $4577: $51
    add hl, de                                    ; $4578: $19
    nop                                           ; $4579: $00
    jr nz, jr_0b4_458d                            ; $457a: $20 $11

    ld h, c                                       ; $457c: $61
    rst $28                                       ; $457d: $ef
    dec b                                         ; $457e: $05
    dec e                                         ; $457f: $1d
    ld l, a                                       ; $4580: $6f
    ld bc, $be0c                                  ; $4581: $01 $0c $be
    scf                                           ; $4584: $37
    db $d3                                        ; $4585: $d3
    dec d                                         ; $4586: $15
    rst $38                                       ; $4587: $ff
    ld l, e                                       ; $4588: $6b
    inc hl                                        ; $4589: $23

jr_0b4_458a:
    inc e                                         ; $458a: $1c
    ld [hl-], a                                   ; $458b: $32
    ld l, c                                       ; $458c: $69

jr_0b4_458d:
    db $10                                        ; $458d: $10
    ld c, $7f                                     ; $458e: $0e $7f
    ld c, e                                       ; $4590: $4b
    nop                                           ; $4591: $00
    nop                                           ; $4592: $00
    sub $75                                       ; $4593: $d6 $75
    rst $38                                       ; $4595: $ff
    dec de                                        ; $4596: $1b
    ld l, b                                       ; $4597: $68
    inc a                                         ; $4598: $3c
    nop                                           ; $4599: $00
    ld [$0f18], sp                                ; $459a: $08 $18 $0f

jr_0b4_459d:
    call $e950                                    ; $459d: $cd $50 $e9
    nop                                           ; $45a0: $00
    nop                                           ; $45a1: $00
    ld [$1fde], sp                                ; $45a2: $08 $de $1f
    rst $18                                       ; $45a5: $df
    ld l, e                                       ; $45a6: $6b
    ld d, c                                       ; $45a7: $51
    add hl, de                                    ; $45a8: $19
    nop                                           ; $45a9: $00
    jr nz, jr_0b4_458a                            ; $45aa: $20 $de

    rra                                           ; $45ac: $1f
    rst $18                                       ; $45ad: $df
    ld l, e                                       ; $45ae: $6b
    ld d, c                                       ; $45af: $51
    add hl, de                                    ; $45b0: $19
    nop                                           ; $45b1: $00
    jr nz, jr_0b4_45e6                            ; $45b2: $20 $32

    ld l, c                                       ; $45b4: $69
    db $10                                        ; $45b5: $10
    ld c, $7f                                     ; $45b6: $0e $7f
    ld c, e                                       ; $45b8: $4b
    nop                                           ; $45b9: $00
    ld [$15f2], sp                                ; $45ba: $08 $f2 $15
    rst $38                                       ; $45bd: $ff
    ld h, e                                       ; $45be: $63
    ld a, l                                       ; $45bf: $7d
    rrca                                          ; $45c0: $0f
    ld bc, $3200                                  ; $45c1: $01 $00 $32
    ld l, c                                       ; $45c4: $69
    db $10                                        ; $45c5: $10
    ld c, $23                                     ; $45c6: $0e $23
    jr z, jr_0b4_45ca                             ; $45c8: $28 $00

jr_0b4_45ca:
    nop                                           ; $45ca: $00
    ld de, $5312                                  ; $45cb: $11 $12 $53
    ld c, $74                                     ; $45ce: $0e $74

jr_0b4_45d0:
    ld c, $00                                     ; $45d0: $0e $00
    nop                                           ; $45d2: $00
    ld de, $5c12                                  ; $45d3: $11 $12 $5c
    inc bc                                        ; $45d6: $03
    cp [hl]                                       ; $45d7: $be

jr_0b4_45d8:
    dec hl                                        ; $45d8: $2b
    nop                                           ; $45d9: $00
    ld [$0b3b], sp                                ; $45da: $08 $3b $0b
    cp [hl]                                       ; $45dd: $be
    ld b, a                                       ; $45de: $47
    rst $38                                       ; $45df: $ff

jr_0b4_45e0:
    ld [hl], e                                    ; $45e0: $73
    nop                                           ; $45e1: $00
    jr nz, jr_0b4_461f                            ; $45e2: $20 $3b

    dec bc                                        ; $45e4: $0b
    cp [hl]                                       ; $45e5: $be

jr_0b4_45e6:
    ld b, a                                       ; $45e6: $47
    rst $38                                       ; $45e7: $ff

jr_0b4_45e8:
    ld [hl], e                                    ; $45e8: $73
    nop                                           ; $45e9: $00
    jr nz, @+$34                                  ; $45ea: $20 $32

    ld l, c                                       ; $45ec: $69
    db $10                                        ; $45ed: $10
    ld c, $23                                     ; $45ee: $0e $23
    jr z, jr_0b4_45f2                             ; $45f0: $28 $00

jr_0b4_45f2:
    jr nz, jr_0b4_4647                            ; $45f2: $20 $53

    ld [de], a                                    ; $45f4: $12
    sbc $57                                       ; $45f5: $de $57
    ld a, l                                       ; $45f7: $7d
    rlca                                          ; $45f8: $07
    ld de, $be12                                  ; $45f9: $11 $12 $be
    ld b, a                                       ; $45fc: $47
    ld a, h                                       ; $45fd: $7c
    dec bc                                        ; $45fe: $0b
    rst $38                                       ; $45ff: $ff
    ld l, a                                       ; $4600: $6f
    ld de, $7412                                  ; $4601: $11 $12 $74
    ld c, $b6                                     ; $4604: $0e $b6
    ld a, [bc]                                    ; $4606: $0a
    ld [hl-], a                                   ; $4607: $32
    ld [de], a                                    ; $4608: $12
    rst $10                                       ; $4609: $d7
    ld b, $be                                     ; $460a: $06 $be
    dec sp                                        ; $460c: $3b
    rst $38                                       ; $460d: $ff
    ld l, a                                       ; $460e: $6f
    ld a, l                                       ; $460f: $7d
    dec bc                                        ; $4610: $0b
    nop                                           ; $4611: $00
    jr nz, jr_0b4_4667                            ; $4612: $20 $53

    ld a, [bc]                                    ; $4614: $0a
    sbc $53                                       ; $4615: $de $53
    ld a, l                                       ; $4617: $7d
    dec bc                                        ; $4618: $0b
    nop                                           ; $4619: $00
    jr nz, jr_0b4_466f                            ; $461a: $20 $53

    ld a, [bc]                                    ; $461c: $0a
    sbc $53                                       ; $461d: $de $53

jr_0b4_461f:
    ld a, l                                       ; $461f: $7d
    dec bc                                        ; $4620: $0b
    nop                                           ; $4621: $00
    jr nz, jr_0b4_4624                            ; $4622: $20 $00

jr_0b4_4624:
    jr nz, jr_0b4_463e                            ; $4624: $20 $18

    ld [hl], a                                    ; $4626: $77
    ld c, b                                       ; $4627: $48
    ld b, l                                       ; $4628: $45
    nop                                           ; $4629: $00
    nop                                           ; $462a: $00
    nop                                           ; $462b: $00
    jr nz, jr_0b4_4646                            ; $462c: $20 $18

    ld [hl], a                                    ; $462e: $77
    ld c, b                                       ; $462f: $48
    ld b, l                                       ; $4630: $45
    nop                                           ; $4631: $00
    nop                                           ; $4632: $00
    nop                                           ; $4633: $00
    inc e                                         ; $4634: $1c
    nop                                           ; $4635: $00
    jr nz, jr_0b4_4680                            ; $4636: $20 $48

    ld b, l                                       ; $4638: $45
    nop                                           ; $4639: $00
    jr nz, jr_0b4_45d0                            ; $463a: $20 $94

    ld [hl], d                                    ; $463c: $72
    sbc h                                         ; $463d: $9c

jr_0b4_463e:
    ld a, e                                       ; $463e: $7b
    cp l                                          ; $463f: $bd
    ld a, e                                       ; $4640: $7b
    nop                                           ; $4641: $00
    jr nz, jr_0b4_45d8                            ; $4642: $20 $94

    ld [hl], d                                    ; $4644: $72
    sbc h                                         ; $4645: $9c

jr_0b4_4646:
    ld a, e                                       ; $4646: $7b

jr_0b4_4647:
    cp l                                          ; $4647: $bd
    ld a, e                                       ; $4648: $7b
    nop                                           ; $4649: $00
    jr nz, jr_0b4_45e0                            ; $464a: $20 $94

    ld [hl], d                                    ; $464c: $72
    sbc h                                         ; $464d: $9c
    ld a, e                                       ; $464e: $7b
    cp l                                          ; $464f: $bd
    ld a, e                                       ; $4650: $7b
    nop                                           ; $4651: $00
    jr nz, jr_0b4_45e8                            ; $4652: $20 $94

    ld [hl], d                                    ; $4654: $72
    sbc h                                         ; $4655: $9c
    ld a, e                                       ; $4656: $7b
    cp l                                          ; $4657: $bd
    ld a, e                                       ; $4658: $7b
    nop                                           ; $4659: $00
    jr nz, jr_0b4_465c                            ; $465a: $20 $00

jr_0b4_465c:
    inc e                                         ; $465c: $1c
    nop                                           ; $465d: $00
    jr nz, jr_0b4_46a8                            ; $465e: $20 $48

    ld b, l                                       ; $4660: $45
    nop                                           ; $4661: $00
    nop                                           ; $4662: $00
    ld h, $5a                                     ; $4663: $26 $5a
    nop                                           ; $4665: $00
    inc e                                         ; $4666: $1c

jr_0b4_4667:
    pop hl                                        ; $4667: $e1
    jr z, jr_0b4_466a                             ; $4668: $28 $00

jr_0b4_466a:
    ld [$564e], sp                                ; $466a: $08 $4e $56
    ld b, d                                       ; $466d: $42
    dec a                                         ; $466e: $3d

jr_0b4_466f:
    sbc c                                         ; $466f: $99
    ld [hl], a                                    ; $4670: $77
    nop                                           ; $4671: $00
    nop                                           ; $4672: $00
    ld l, c                                       ; $4673: $69
    ld c, l                                       ; $4674: $4d
    sub h                                         ; $4675: $94
    ld [hl], d                                    ; $4676: $72
    xor h                                         ; $4677: $ac
    ld d, l                                       ; $4678: $55
    nop                                           ; $4679: $00
    jr nz, jr_0b4_4682                            ; $467a: $20 $06

    dec a                                         ; $467c: $3d
    call $ac59                                    ; $467d: $cd $59 $ac

jr_0b4_4680:
    ld d, l                                       ; $4680: $55
    nop                                           ; $4681: $00

jr_0b4_4682:
    jr nz, jr_0b4_468a                            ; $4682: $20 $06

jr_0b4_4684:
    dec a                                         ; $4684: $3d
    call $ac59                                    ; $4685: $cd $59 $ac
    ld d, l                                       ; $4688: $55
    nop                                           ; $4689: $00

jr_0b4_468a:
    jr nz, jr_0b4_4692                            ; $468a: $20 $06

    dec a                                         ; $468c: $3d
    call $ac59                                    ; $468d: $cd $59 $ac
    ld d, l                                       ; $4690: $55
    nop                                           ; $4691: $00

jr_0b4_4692:
    nop                                           ; $4692: $00
    add [hl]                                      ; $4693: $86
    ld l, [hl]                                    ; $4694: $6e
    nop                                           ; $4695: $00
    jr nz, jr_0b4_4684                            ; $4696: $20 $ec

    ld [hl], d                                    ; $4698: $72
    nop                                           ; $4699: $00
    inc b                                         ; $469a: $04
    ld h, c                                       ; $469b: $61
    ld b, l                                       ; $469c: $45
    db $dd                                        ; $469d: $dd
    ld a, e                                       ; $469e: $7b
    ld l, d                                       ; $469f: $6a
    ld h, [hl]                                    ; $46a0: $66
    ld b, c                                       ; $46a1: $41
    inc c                                         ; $46a2: $0c
    ld [hl], $6f                                  ; $46a3: $36 $6f
    and $4d                                       ; $46a5: $e6 $4d
    db $fc                                        ; $46a7: $fc

jr_0b4_46a8:
    ld a, a                                       ; $46a8: $7f
    nop                                           ; $46a9: $00
    nop                                           ; $46aa: $00
    jp hl                                         ; $46ab: $e9


    ld a, d                                       ; $46ac: $7a
    daa                                           ; $46ad: $27
    ld sp, $67ff                                  ; $46ae: $31 $ff $67
    nop                                           ; $46b1: $00
    jr nz, @+$29                                  ; $46b2: $20 $27

    ld b, c                                       ; $46b4: $41
    call z, $934d                                 ; $46b5: $cc $4d $93
    ld e, [hl]                                    ; $46b8: $5e
    nop                                           ; $46b9: $00
    jr nz, jr_0b4_46e3                            ; $46ba: $20 $27

    ld b, c                                       ; $46bc: $41
    call z, $934d                                 ; $46bd: $cc $4d $93
    ld e, [hl]                                    ; $46c0: $5e
    nop                                           ; $46c1: $00
    jr nz, jr_0b4_46eb                            ; $46c2: $20 $27

    ld b, c                                       ; $46c4: $41
    call z, $934d                                 ; $46c5: $cc $4d $93
    ld e, [hl]                                    ; $46c8: $5e
    nop                                           ; $46c9: $00
    db $10                                        ; $46ca: $10
    xor l                                         ; $46cb: $ad
    ld h, d                                       ; $46cc: $62
    inc h                                         ; $46cd: $24
    ld sp, $7ffe                                  ; $46ce: $31 $fe $7f
    jr nz, jr_0b4_46d7                            ; $46d1: $20 $04

    push af                                       ; $46d3: $f5
    ld h, [hl]                                    ; $46d4: $66
    add h                                         ; $46d5: $84
    ld b, l                                       ; $46d6: $45

jr_0b4_46d7:
    cp $7f                                        ; $46d7: $fe $7f
    ld bc, $2c00                                  ; $46d9: $01 $00 $2c
    ld d, d                                       ; $46dc: $52
    db $fc                                        ; $46dd: $fc
    ld a, a                                       ; $46de: $7f
    ld h, l                                       ; $46df: $65
    add hl, sp                                    ; $46e0: $39
    nop                                           ; $46e1: $00
    inc b                                         ; $46e2: $04

jr_0b4_46e3:
    db $e3                                        ; $46e3: $e3
    ld d, l                                       ; $46e4: $55
    ld a, [$c922]                                 ; $46e5: $fa $22 $c9
    nop                                           ; $46e8: $00
    nop                                           ; $46e9: $00
    db $10                                        ; $46ea: $10

jr_0b4_46eb:
    ld d, c                                       ; $46eb: $51
    ld e, d                                       ; $46ec: $5a
    jr c, jr_0b4_475a                             ; $46ed: $38 $6b

    ld [hl], l                                    ; $46ef: $75
    ld a, [hl-]                                   ; $46f0: $3a
    nop                                           ; $46f1: $00
    jr nz, jr_0b4_4745                            ; $46f2: $20 $51

    ld e, d                                       ; $46f4: $5a
    jr c, @+$6d                                   ; $46f5: $38 $6b

    ld [hl], l                                    ; $46f7: $75
    ld a, [hl-]                                   ; $46f8: $3a
    nop                                           ; $46f9: $00
    jr nz, jr_0b4_474d                            ; $46fa: $20 $51

    ld e, d                                       ; $46fc: $5a
    jr c, jr_0b4_476a                             ; $46fd: $38 $6b

    ld [hl], l                                    ; $46ff: $75
    ld a, [hl-]                                   ; $4700: $3a
    jr nz, jr_0b4_4707                            ; $4701: $20 $04

    ld c, c                                       ; $4703: $49
    ld h, d                                       ; $4704: $62
    ld [de], a                                    ; $4705: $12
    ld l, e                                       ; $4706: $6b

jr_0b4_4707:
    nop                                           ; $4707: $00
    jr nz, jr_0b4_470a                            ; $4708: $20 $00

jr_0b4_470a:
    nop                                           ; $470a: $00
    cp d                                          ; $470b: $ba
    ld b, $05                                     ; $470c: $06 $05
    add hl, hl                                    ; $470e: $29
    inc l                                         ; $470f: $2c
    ld bc, $1040                                  ; $4710: $01 $40 $10
    ld c, e                                       ; $4713: $4b
    ld e, d                                       ; $4714: $5a
    ld h, c                                       ; $4715: $61
    ld b, c                                       ; $4716: $41
    dec d                                         ; $4717: $15
    ld l, e                                       ; $4718: $6b
    nop                                           ; $4719: $00
    nop                                           ; $471a: $00
    ld e, $0f                                     ; $471b: $1e $0f
    xor b                                         ; $471d: $a8
    nop                                           ; $471e: $00
    pop bc                                        ; $471f: $c1
    jr nz, jr_0b4_4722                            ; $4720: $20 $00

jr_0b4_4722:
    nop                                           ; $4722: $00
    cp l                                          ; $4723: $bd
    ld a, e                                       ; $4724: $7b
    inc de                                        ; $4725: $13
    ld e, $82                                     ; $4726: $1e $82
    ld bc, $2000                                  ; $4728: $01 $00 $20
    rst $30                                       ; $472b: $f7
    ld l, d                                       ; $472c: $6a
    sbc $7f                                       ; $472d: $de $7f
    add d                                         ; $472f: $82
    ld bc, $2000                                  ; $4730: $01 $00 $20
    rst $30                                       ; $4733: $f7
    ld l, d                                       ; $4734: $6a
    sbc $7f                                       ; $4735: $de $7f
    add d                                         ; $4737: $82
    ld bc, $0400                                  ; $4738: $01 $00 $04
    jp nc, $dc66                                  ; $473b: $d2 $66 $dc

    ld a, a                                       ; $473e: $7f
    dec h                                         ; $473f: $25
    dec l                                         ; $4740: $2d
    nop                                           ; $4741: $00
    nop                                           ; $4742: $00
    sbc b                                         ; $4743: $98
    ld a, [bc]                                    ; $4744: $0a

jr_0b4_4745:
    ld e, e                                       ; $4745: $5b
    ld c, e                                       ; $4746: $4b
    xor b                                         ; $4747: $a8
    nop                                           ; $4748: $00
    nop                                           ; $4749: $00
    inc b                                         ; $474a: $04
    ld d, a                                       ; $474b: $57
    dec c                                         ; $474c: $0d

jr_0b4_474d:
    adc d                                         ; $474d: $8a
    inc b                                         ; $474e: $04
    inc bc                                        ; $474f: $03
    nop                                           ; $4750: $00
    ld bc, $5000                                  ; $4751: $01 $00 $50
    dec h                                         ; $4754: $25
    ld l, [hl]                                    ; $4755: $6e
    nop                                           ; $4756: $00
    dec e                                         ; $4757: $1d
    ld [hl-], a                                   ; $4758: $32
    nop                                           ; $4759: $00

jr_0b4_475a:
    nop                                           ; $475a: $00
    ld a, c                                       ; $475b: $79
    ld a, [bc]                                    ; $475c: $0a
    ld a, d                                       ; $475d: $7a
    ld [hl], e                                    ; $475e: $73
    add h                                         ; $475f: $84
    ld bc, $0000                                  ; $4760: $01 $00 $00
    jr @+$71                                      ; $4763: $18 $6f

    sbc $7b                                       ; $4765: $de $7b
    nop                                           ; $4767: $00
    jr nz, jr_0b4_476a                            ; $4768: $20 $00

jr_0b4_476a:
    jr nz, jr_0b4_4784                            ; $476a: $20 $18

    ld l, a                                       ; $476c: $6f
    sbc $7b                                       ; $476d: $de $7b
    nop                                           ; $476f: $00
    jr nz, jr_0b4_4772                            ; $4770: $20 $00

jr_0b4_4772:
    nop                                           ; $4772: $00
    or c                                          ; $4773: $b1
    ld h, d                                       ; $4774: $62
    rst $38                                       ; $4775: $ff
    ld a, a                                       ; $4776: $7f
    pop hl                                        ; $4777: $e1
    jr nc, jr_0b4_477b                            ; $4778: $30 $01

    nop                                           ; $477a: $00

jr_0b4_477b:
    ld d, e                                       ; $477b: $53
    add hl, de                                    ; $477c: $19
    cp [hl]                                       ; $477d: $be
    ld a, $13                                     ; $477e: $3e $13
    ld [hl-], a                                   ; $4780: $32
    nop                                           ; $4781: $00
    nop                                           ; $4782: $00
    rst $28                                       ; $4783: $ef

jr_0b4_4784:
    inc c                                         ; $4784: $0c
    db $f4                                        ; $4785: $f4
    ld h, d                                       ; $4786: $62
    ld e, c                                       ; $4787: $59
    ld de, $0000                                  ; $4788: $11 $00 $00
    sub c                                         ; $478b: $91
    nop                                           ; $478c: $00
    jr z, jr_0b4_478f                             ; $478d: $28 $00

jr_0b4_478f:
    jp c, Jump_000_0004                           ; $478f: $da $04 $00

    nop                                           ; $4792: $00
    jp nc, $840d                                  ; $4793: $d2 $0d $84

    ld bc, $4ebf                                  ; $4796: $01 $bf $4e
    nop                                           ; $4799: $00
    nop                                           ; $479a: $00
    dec [hl]                                      ; $479b: $35
    ld b, [hl]                                    ; $479c: $46
    sbc $7b                                       ; $479d: $de $7b
    ld l, b                                       ; $479f: $68
    ld de, $2000                                  ; $47a0: $11 $00 $20
    dec [hl]                                      ; $47a3: $35
    ld b, [hl]                                    ; $47a4: $46
    sbc $7b                                       ; $47a5: $de $7b
    ld l, b                                       ; $47a7: $68
    ld de, $0800                                  ; $47a8: $11 $00 $08
    ld h, $5a                                     ; $47ab: $26 $5a
    ld hl, $7035                                  ; $47ad: $21 $35 $70
    ld a, a                                       ; $47b0: $7f
    nop                                           ; $47b1: $00
    nop                                           ; $47b2: $00
    ld e, e                                       ; $47b3: $5b
    ld [hl-], a                                   ; $47b4: $32
    rst $38                                       ; $47b5: $ff
    ld a, a                                       ; $47b6: $7f
    xor h                                         ; $47b7: $ac
    ld [$0000], sp                                ; $47b8: $08 $00 $00
    ld e, e                                       ; $47bb: $5b
    ld [hl], $ff                                  ; $47bc: $36 $ff
    ld a, a                                       ; $47be: $7f
    ld d, b                                       ; $47bf: $50
    inc b                                         ; $47c0: $04
    nop                                           ; $47c1: $00
    nop                                           ; $47c2: $00
    add c                                         ; $47c3: $81
    ld b, l                                       ; $47c4: $45
    call Call_000_0308                            ; $47c5: $cd $08 $03
    nop                                           ; $47c8: $00
    nop                                           ; $47c9: $00
    nop                                           ; $47ca: $00
    cp b                                          ; $47cb: $b8
    nop                                           ; $47cc: $00
    sbc $21                                       ; $47cd: $de $21
    ld l, h                                       ; $47cf: $6c
    nop                                           ; $47d0: $00
    nop                                           ; $47d1: $00
    nop                                           ; $47d2: $00
    jp c, Jump_000_1c00                           ; $47d3: $da $00 $1c

    ld l, $5f                                     ; $47d6: $2e $5f
    ld e, e                                       ; $47d8: $5b
    nop                                           ; $47d9: $00
    nop                                           ; $47da: $00
    rst $30                                       ; $47db: $f7
    ld l, d                                       ; $47dc: $6a
    nop                                           ; $47dd: $00
    jr nz, @+$61                                  ; $47de: $20 $5f

    ld e, e                                       ; $47e0: $5b
    nop                                           ; $47e1: $00
    nop                                           ; $47e2: $00
    ld b, d                                       ; $47e3: $42
    add hl, sp                                    ; $47e4: $39
    ld b, b                                       ; $47e5: $40
    inc e                                         ; $47e6: $1c
    inc h                                         ; $47e7: $24
    ld h, d                                       ; $47e8: $62
    ld bc, $dc00                                  ; $47e9: $01 $00 $dc
    ld hl, $6f79                                  ; $47ec: $21 $79 $6f
    ld hl, $0035                                  ; $47ef: $21 $35 $00
    nop                                           ; $47f2: $00
    inc e                                         ; $47f3: $1c
    ld h, $9d                                     ; $47f4: $26 $9d
    ld a, $5a                                     ; $47f6: $3e $5a
    ld [hl], $00                                  ; $47f8: $36 $00
    inc b                                         ; $47fa: $04
    ld b, c                                       ; $47fb: $41
    add hl, sp                                    ; $47fc: $39
    xor e                                         ; $47fd: $ab
    inc b                                         ; $47fe: $04
    add hl, hl                                    ; $47ff: $29
    ld d, [hl]                                    ; $4800: $56
    nop                                           ; $4801: $00
    nop                                           ; $4802: $00
    db $fc                                        ; $4803: $fc
    nop                                           ; $4804: $00
    ld l, l                                       ; $4805: $6d
    nop                                           ; $4806: $00
    ld b, a                                       ; $4807: $47
    nop                                           ; $4808: $00
    ld h, $00                                     ; $4809: $26 $00
    db $db                                        ; $480b: $db
    nop                                           ; $480c: $00
    jp c, Jump_0b4_6f29                           ; $480d: $da $29 $6f

    nop                                           ; $4810: $00
    nop                                           ; $4811: $00
    nop                                           ; $4812: $00
    ld c, b                                       ; $4813: $48
    ld b, l                                       ; $4814: $45
    ld d, c                                       ; $4815: $51
    ld e, d                                       ; $4816: $5a
    nop                                           ; $4817: $00
    jr nz, jr_0b4_481a                            ; $4818: $20 $00

jr_0b4_481a:
    nop                                           ; $481a: $00
    ld h, [hl]                                    ; $481b: $66
    ld b, l                                       ; $481c: $45
    sub $72                                       ; $481d: $d6 $72
    ld b, b                                       ; $481f: $40
    jr nz, jr_0b4_4822                            ; $4820: $20 $00

jr_0b4_4822:
    nop                                           ; $4822: $00
    ld e, l                                       ; $4823: $5d
    ld l, $cf                                     ; $4824: $2e $cf
    ld [$46df], sp                                ; $4826: $08 $df $46
    ld sp, hl                                     ; $4829: $f9
    dec h                                         ; $482a: $25
    sbc h                                         ; $482b: $9c
    ld a, $5d                                     ; $482c: $3e $5d
    ld [hl-], a                                   ; $482e: $32
    ld a, [de]                                    ; $482f: $1a
    ld l, $01                                     ; $4830: $2e $01
    nop                                           ; $4832: $00
    ld c, h                                       ; $4833: $4c
    ld d, [hl]                                    ; $4834: $56
    ld [bc], a                                    ; $4835: $02
    dec l                                         ; $4836: $2d
    cp h                                          ; $4837: $bc
    ld a, e                                       ; $4838: $7b
    ld [hl+], a                                   ; $4839: $22
    nop                                           ; $483a: $00
    cp c                                          ; $483b: $b9
    ld a, a                                       ; $483c: $7f
    xor h                                         ; $483d: $ac
    ld [$197b], sp                                ; $483e: $08 $7b $19
    ld bc, $3800                                  ; $4841: $01 $00 $38
    ld de, $197b                                  ; $4844: $11 $7b $19
    sbc $21                                       ; $4847: $de $21
    nop                                           ; $4849: $00
    nop                                           ; $484a: $00
    ld c, b                                       ; $484b: $48
    ld b, l                                       ; $484c: $45
    ld sp, $0062                                  ; $484d: $31 $62 $00
    jr nz, jr_0b4_4852                            ; $4850: $20 $00

jr_0b4_4852:
    inc b                                         ; $4852: $04
    ld sp, $a56a                                  ; $4853: $31 $6a $a5
    add hl, de                                    ; $4856: $19
    ld e, e                                       ; $4857: $5b
    ld [hl], a                                    ; $4858: $77
    nop                                           ; $4859: $00
    nop                                           ; $485a: $00
    ld [de], a                                    ; $485b: $12
    ld de, $4162                                  ; $485c: $11 $62 $41
    cp e                                          ; $485f: $bb
    dec d                                         ; $4860: $15
    sub [hl]                                      ; $4861: $96
    dec e                                         ; $4862: $1d
    ld a, [$3b29]                                 ; $4863: $fa $29 $3b
    ld a, [hl+]                                   ; $4866: $2a
    ld e, e                                       ; $4867: $5b
    ld [hl], $00                                  ; $4868: $36 $00
    inc b                                         ; $486a: $04
    inc hl                                        ; $486b: $23
    ld h, d                                       ; $486c: $62
    ld b, $25                                     ; $486d: $06 $25
    di                                            ; $486f: $f3
    ld h, d                                       ; $4870: $62
    nop                                           ; $4871: $00
    nop                                           ; $4872: $00
    sbc c                                         ; $4873: $99
    ld [hl], a                                    ; $4874: $77
    ld h, e                                       ; $4875: $63
    ld b, c                                       ; $4876: $41
    adc e                                         ; $4877: $8b
    dec h                                         ; $4878: $25
    nop                                           ; $4879: $00
    nop                                           ; $487a: $00
    or e                                          ; $487b: $b3
    inc b                                         ; $487c: $04
    rla                                           ; $487d: $17
    dec c                                         ; $487e: $0d
    inc b                                         ; $487f: $04
    nop                                           ; $4880: $00
    nop                                           ; $4881: $00
    inc e                                         ; $4882: $1c
    db $10                                        ; $4883: $10
    ld h, d                                       ; $4884: $62
    db $e4                                        ; $4885: $e4
    add hl, bc                                    ; $4886: $09
    sbc h                                         ; $4887: $9c
    ld a, e                                       ; $4888: $7b
    nop                                           ; $4889: $00
    nop                                           ; $488a: $00
    ld l, a                                       ; $488b: $6f
    ld l, d                                       ; $488c: $6a
    cp l                                          ; $488d: $bd
    ld a, e                                       ; $488e: $7b
    and h                                         ; $488f: $a4
    ld de, $0820                                  ; $4890: $11 $20 $08
    ld [c], a                                     ; $4893: $e2
    ld d, l                                       ; $4894: $55
    adc $08                                       ; $4895: $ce $08
    cp d                                          ; $4897: $ba
    dec d                                         ; $4898: $15
    nop                                           ; $4899: $00
    nop                                           ; $489a: $00
    db $10                                        ; $489b: $10
    dec c                                         ; $489c: $0d
    sub a                                         ; $489d: $97
    add hl, de                                    ; $489e: $19
    ld a, [$4421]                                 ; $489f: $fa $21 $44
    inc b                                         ; $48a2: $04
    ld l, h                                       ; $48a3: $6c
    ld e, [hl]                                    ; $48a4: $5e
    sbc b                                         ; $48a5: $98
    ld [hl], a                                    ; $48a6: $77
    dec de                                        ; $48a7: $1b
    ld a, [hl+]                                   ; $48a8: $2a
    nop                                           ; $48a9: $00
    nop                                           ; $48aa: $00
    ld c, $42                                     ; $48ab: $0e $42
    jp z, $e076                                   ; $48ad: $ca $76 $e0

    jr nc, jr_0b4_48b2                            ; $48b0: $30 $00

jr_0b4_48b2:
    nop                                           ; $48b2: $00
    inc sp                                        ; $48b3: $33
    ld [hl+], a                                   ; $48b4: $22
    rst $18                                       ; $48b5: $df
    inc sp                                        ; $48b6: $33
    ld c, c                                       ; $48b7: $49
    dec h                                         ; $48b8: $25
    nop                                           ; $48b9: $00
    nop                                           ; $48ba: $00
    sub h                                         ; $48bb: $94
    ld l, [hl]                                    ; $48bc: $6e
    push bc                                       ; $48bd: $c5
    ld de, $2000                                  ; $48be: $11 $00 $20
    nop                                           ; $48c1: $00
    ld [$5a03], sp                                ; $48c2: $08 $03 $5a
    sub h                                         ; $48c5: $94
    ld l, [hl]                                    ; $48c6: $6e
    ld h, e                                       ; $48c7: $63
    dec a                                         ; $48c8: $3d
    nop                                           ; $48c9: $00
    inc b                                         ; $48ca: $04
    pop hl                                        ; $48cb: $e1
    jr z, jr_0b4_4905                             ; $48cc: $28 $37

    add hl, bc                                    ; $48ce: $09
    ld b, c                                       ; $48cf: $41
    add hl, sp                                    ; $48d0: $39
    ld [bc], a                                    ; $48d1: $02
    nop                                           ; $48d2: $00
    ld [de], a                                    ; $48d3: $12
    add hl, bc                                    ; $48d4: $09
    ei                                            ; $48d5: $fb
    ld hl, $04ac                                  ; $48d6: $21 $ac $04
    ld bc, $cb00                                  ; $48d9: $01 $00 $cb
    ld b, c                                       ; $48dc: $41
    or $62                                        ; $48dd: $f6 $62
    dec sp                                        ; $48df: $3b
    ld [hl-], a                                   ; $48e0: $32
    nop                                           ; $48e1: $00
    inc b                                         ; $48e2: $04
    ret nz                                        ; $48e3: $c0

    ld e, c                                       ; $48e4: $59
    db $fc                                        ; $48e5: $fc
    add hl, hl                                    ; $48e6: $29
    ld l, [hl]                                    ; $48e7: $6e
    ld a, a                                       ; $48e8: $7f
    nop                                           ; $48e9: $00
    nop                                           ; $48ea: $00
    sbc [hl]                                      ; $48eb: $9e
    dec sp                                        ; $48ec: $3b
    and h                                         ; $48ed: $a4
    ld c, l                                       ; $48ee: $4d
    ld [hl], b                                    ; $48ef: $70
    ld bc, $0000                                  ; $48f0: $01 $00 $00
    ld h, l                                       ; $48f3: $65
    dec h                                         ; $48f4: $25
    ld [hl-], a                                   ; $48f5: $32
    ld d, [hl]                                    ; $48f6: $56
    nop                                           ; $48f7: $00
    jr nz, jr_0b4_48fa                            ; $48f8: $20 $00

jr_0b4_48fa:
    db $10                                        ; $48fa: $10
    ld h, e                                       ; $48fb: $63
    ld b, l                                       ; $48fc: $45
    rst $30                                       ; $48fd: $f7
    ld [hl], d                                    ; $48fe: $72
    jp hl                                         ; $48ff: $e9


    ld e, c                                       ; $4900: $59
    nop                                           ; $4901: $00
    nop                                           ; $4902: $00
    and l                                         ; $4903: $a5
    ld b, l                                       ; $4904: $45

jr_0b4_4905:
    add b                                         ; $4905: $80
    inc e                                         ; $4906: $1c
    ld b, h                                       ; $4907: $44
    ld h, [hl]                                    ; $4908: $66
    jr nz, jr_0b4_490f                            ; $4909: $20 $04

    ld [de], a                                    ; $490b: $12
    add hl, bc                                    ; $490c: $09
    ld l, d                                       ; $490d: $6a
    nop                                           ; $490e: $00

jr_0b4_490f:
    reti                                          ; $490f: $d9


    ld hl, $0000                                  ; $4910: $21 $00 $00
    dec [hl]                                      ; $4913: $35
    ld e, $bd                                     ; $4914: $1e $bd
    ld a, [hl-]                                   ; $4916: $3a
    ldh a, [$08]                                  ; $4917: $f0 $08
    inc h                                         ; $4919: $24
    nop                                           ; $491a: $00
    or l                                          ; $491b: $b5

jr_0b4_491c:
    inc b                                         ; $491c: $04
    cp d                                          ; $491d: $ba
    ld hl, $429f                                  ; $491e: $21 $9f $42
    nop                                           ; $4921: $00
    nop                                           ; $4922: $00
    add l                                         ; $4923: $85
    ld [hl], d                                    ; $4924: $72
    db $ed                                        ; $4925: $ed
    nop                                           ; $4926: $00
    jp c, Jump_000_0009                           ; $4927: $da $09 $00

    inc e                                         ; $492a: $1c
    ld [hl-], a                                   ; $492b: $32
    ld [hl], $9f                                  ; $492c: $36 $9f
    inc sp                                        ; $492e: $33
    ld h, $3d                                     ; $492f: $26 $3d
    jr nz, jr_0b4_494b                            ; $4931: $20 $18

    add a                                         ; $4933: $87
    ld c, c                                       ; $4934: $49
    or a                                          ; $4935: $b7
    ld a, a                                       ; $4936: $7f
    nop                                           ; $4937: $00
    add hl, sp                                    ; $4938: $39
    ld [bc], a                                    ; $4939: $02
    nop                                           ; $493a: $00
    xor h                                         ; $493b: $ac
    ld l, d                                       ; $493c: $6a
    ld h, a                                       ; $493d: $67
    dec [hl]                                      ; $493e: $35
    cp d                                          ; $493f: $ba
    ld [hl], a                                    ; $4940: $77
    ld bc, $b100                                  ; $4941: $01 $00 $b1
    nop                                           ; $4944: $00
    or a                                          ; $4945: $b7
    dec e                                         ; $4946: $1d
    ld b, b                                       ; $4947: $40
    stop                                          ; $4948: $10 $00
    nop                                           ; $494a: $00

jr_0b4_494b:
    ld l, $11                                     ; $494b: $2e $11
    ei                                            ; $494d: $fb
    ld hl, $3bbf                                  ; $494e: $21 $bf $3b
    nop                                           ; $4951: $00
    nop                                           ; $4952: $00
    ld a, e                                       ; $4953: $7b
    dec e                                         ; $4954: $1d
    ld a, [hl]                                    ; $4955: $7e
    ld a, $b4                                     ; $4956: $3e $b4
    nop                                           ; $4958: $00
    ld hl, $9700                                  ; $4959: $21 $00 $97
    ld a, e                                       ; $495c: $7b
    sbc $21                                       ; $495d: $de $21
    ldh [$2c], a                                  ; $495f: $e0 $2c
    ld b, d                                       ; $4961: $42
    nop                                           ; $4962: $00
    db $ed                                        ; $4963: $ed
    ld d, c                                       ; $4964: $51
    ld sp, hl                                     ; $4965: $f9
    ld b, $00                                     ; $4966: $06 $00
    jr nz, jr_0b4_498a                            ; $4968: $20 $20

    jr jr_0b4_491c                                ; $496a: $18 $b0

    ld e, [hl]                                    ; $496c: $5e
    ld c, b                                       ; $496d: $48
    ld b, l                                       ; $496e: $45
    db $dd                                        ; $496f: $dd
    ld a, e                                       ; $4970: $7b
    nop                                           ; $4971: $00
    nop                                           ; $4972: $00
    cp d                                          ; $4973: $ba
    ld a, e                                       ; $4974: $7b
    ld h, l                                       ; $4975: $65
    add hl, sp                                    ; $4976: $39
    dec [hl]                                      ; $4977: $35
    dec d                                         ; $4978: $15
    nop                                           ; $4979: $00
    nop                                           ; $497a: $00
    dec [hl]                                      ; $497b: $35
    dec c                                         ; $497c: $0d
    cp a                                          ; $497d: $bf
    dec sp                                        ; $497e: $3b
    ld l, h                                       ; $497f: $6c
    nop                                           ; $4980: $00
    nop                                           ; $4981: $00
    nop                                           ; $4982: $00
    ld a, d                                       ; $4983: $7a
    ld de, $04cc                                  ; $4984: $11 $cc $04
    ld e, [hl]                                    ; $4987: $5e
    ld [hl-], a                                   ; $4988: $32
    ld [bc], a                                    ; $4989: $02

jr_0b4_498a:
    nop                                           ; $498a: $00
    inc d                                         ; $498b: $14
    ld de, $321b                                  ; $498c: $11 $1b $32
    ld a, $09                                     ; $498f: $3e $09
    nop                                           ; $4991: $00
    nop                                           ; $4992: $00
    cpl                                           ; $4993: $2f
    ld b, [hl]                                    ; $4994: $46
    ld [hl], l                                    ; $4995: $75
    ld [hl], a                                    ; $4996: $77
    ld d, e                                       ; $4997: $53
    ld de, $0021                                  ; $4998: $11 $21 $00
    ld d, a                                       ; $499b: $57
    ld b, $30                                     ; $499c: $06 $30
    ld e, d                                       ; $499e: $5a
    nop                                           ; $499f: $00
    jr nz, jr_0b4_49a2                            ; $49a0: $20 $00

jr_0b4_49a2:
    jr jr_0b4_49b7                                ; $49a2: $18 $13

    ld l, e                                       ; $49a4: $6b
    daa                                           ; $49a5: $27
    ld b, c                                       ; $49a6: $41
    cp d                                          ; $49a7: $ba
    ld a, e                                       ; $49a8: $7b
    ld bc, $3c04                                  ; $49a9: $01 $04 $3c
    dec c                                         ; $49ac: $0d
    inc sp                                        ; $49ad: $33
    ld l, e                                       ; $49ae: $6b
    ld [hl], b                                    ; $49af: $70
    nop                                           ; $49b0: $00
    jr nz, jr_0b4_49b7                            ; $49b1: $20 $04

    jp hl                                         ; $49b3: $e9


    jr jr_0b4_49df                                ; $49b4: $18 $29

    ld e, e                                       ; $49b6: $5b

jr_0b4_49b7:
    ld d, [hl]                                    ; $49b7: $56
    ld de, $0421                                  ; $49b8: $11 $21 $04
    adc c                                         ; $49bb: $89
    ld a, a                                       ; $49bc: $7f
    dec sp                                        ; $49bd: $3b
    ld l, $b2                                     ; $49be: $2e $b2
    nop                                           ; $49c0: $00
    ld bc, $d600                                  ; $49c1: $01 $00 $d6
    inc b                                         ; $49c4: $04
    xor a                                         ; $49c5: $af
    inc b                                         ; $49c6: $04
    cp e                                          ; $49c7: $bb
    dec e                                         ; $49c8: $1d
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    ld d, a                                       ; $49cb: $57
    dec d                                         ; $49cc: $15
    cp c                                          ; $49cd: $b9
    ld a, e                                       ; $49ce: $7b
    dec de                                        ; $49cf: $1b
    ld a, [hl+]                                   ; $49d0: $2a
    nop                                           ; $49d1: $00
    inc e                                         ; $49d2: $1c
    or e                                          ; $49d3: $b3
    ld bc, $5a51                                  ; $49d4: $01 $51 $5a
    cp a                                          ; $49d7: $bf
    dec bc                                        ; $49d8: $0b
    nop                                           ; $49d9: $00
    nop                                           ; $49da: $00
    cp b                                          ; $49db: $b8
    ld a, a                                       ; $49dc: $7f
    inc hl                                        ; $49dd: $23
    dec a                                         ; $49de: $3d

jr_0b4_49df:
    nop                                           ; $49df: $00
    jr nz, jr_0b4_49e2                            ; $49e0: $20 $00

jr_0b4_49e2:
    nop                                           ; $49e2: $00
    ld [hl], l                                    ; $49e3: $75
    ld b, [hl]                                    ; $49e4: $46
    or e                                          ; $49e5: $b3
    nop                                           ; $49e6: $00
    cp d                                          ; $49e7: $ba
    ld a, a                                       ; $49e8: $7f
    ld h, d                                       ; $49e9: $62
    ld [$7fef], sp                                ; $49ea: $08 $ef $7f
    inc bc                                        ; $49ed: $03
    ld a, $1a                                     ; $49ee: $3e $1a
    ld a, [hl+]                                   ; $49f0: $2a
    ld bc, $3700                                  ; $49f1: $01 $00 $37
    dec c                                         ; $49f4: $0d
    ld a, l                                       ; $49f5: $7d
    ld [hl-], a                                   ; $49f6: $32
    xor [hl]                                      ; $49f7: $ae
    inc c                                         ; $49f8: $0c
    ld bc, $bb00                                  ; $49f9: $01 $00 $bb
    dec e                                         ; $49fc: $1d
    ld a, h                                       ; $49fd: $7c
    ld a, [hl-]                                   ; $49fe: $3a
    xor e                                         ; $49ff: $ab
    stop                                          ; $4a00: $10 $00
    nop                                           ; $4a02: $00
    pop de                                        ; $4a03: $d1
    ld h, [hl]                                    ; $4a04: $66
    ld e, h                                       ; $4a05: $5c
    ld [hl], $85                                  ; $4a06: $36 $85
    ld b, c                                       ; $4a08: $41
    nop                                           ; $4a09: $00
    inc e                                         ; $4a0a: $1c
    call nc, $8001                                ; $4a0b: $d4 $01 $80
    ld d, l                                       ; $4a0e: $55
    rst $38                                       ; $4a0f: $ff
    rrca                                          ; $4a10: $0f
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    ld c, d                                       ; $4a13: $4a
    ld e, d                                       ; $4a14: $5a
    db $db                                        ; $4a15: $db
    ld a, a                                       ; $4a16: $7f
    nop                                           ; $4a17: $00
    jr nz, jr_0b4_4a1c                            ; $4a18: $20 $02

    inc b                                         ; $4a1a: $04
    ret c                                         ; $4a1b: $d8

jr_0b4_4a1c:
    inc b                                         ; $4a1c: $04
    ld [hl], d                                    ; $4a1d: $72
    ld a, a                                       ; $4a1e: $7f
    and b                                         ; $4a1f: $a0
    ld d, c                                       ; $4a20: $51
    nop                                           ; $4a21: $00
    nop                                           ; $4a22: $00
    ld d, l                                       ; $4a23: $55
    ld de, $2a5e                                  ; $4a24: $11 $5e $2a
    xor d                                         ; $4a27: $aa
    ld [$0000], sp                                ; $4a28: $08 $00 $00
    inc sp                                        ; $4a2b: $33
    dec d                                         ; $4a2c: $15
    inc e                                         ; $4a2d: $1c
    ld [hl-], a                                   ; $4a2e: $32
    ld l, d                                       ; $4a2f: $6a
    nop                                           ; $4a30: $00
    nop                                           ; $4a31: $00
    nop                                           ; $4a32: $00

jr_0b4_4a33:
    ld de, $3c15                                  ; $4a33: $11 $15 $3c
    ld [hl-], a                                   ; $4a36: $32
    sbc b                                         ; $4a37: $98
    dec e                                         ; $4a38: $1d
    ld b, b                                       ; $4a39: $40
    inc c                                         ; $4a3a: $0c
    add hl, bc                                    ; $4a3b: $09
    ld c, [hl]                                    ; $4a3c: $4e
    ld a, l                                       ; $4a3d: $7d
    ld a, [hl-]                                   ; $4a3e: $3a
    xor e                                         ; $4a3f: $ab
    inc b                                         ; $4a40: $04
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    add [hl]                                      ; $4a43: $86
    ld [hl], d                                    ; $4a44: $72
    nop                                           ; $4a45: $00
    jr nz, jr_0b4_4a76                            ; $4a46: $20 $2e

    ld a, a                                       ; $4a48: $7f
    nop                                           ; $4a49: $00
    nop                                           ; $4a4a: $00

jr_0b4_4a4b:
    cp $7f                                        ; $4a4b: $fe $7f
    and b                                         ; $4a4d: $a0
    ld d, c                                       ; $4a4e: $51
    nop                                           ; $4a4f: $00
    jr nz, @-$5e                                  ; $4a50: $20 $a0

    ld d, c                                       ; $4a52: $51
    or l                                          ; $4a53: $b5
    inc b                                         ; $4a54: $04
    ld bc, $1b00                                  ; $4a55: $01 $00 $1b
    add hl, bc                                    ; $4a58: $09
    nop                                           ; $4a59: $00
    nop                                           ; $4a5a: $00
    dec [hl]                                      ; $4a5b: $35
    add hl, de                                    ; $4a5c: $19
    jp c, $9429                                   ; $4a5d: $da $29 $94

    dec l                                         ; $4a60: $2d
    ld c, d                                       ; $4a61: $4a
    nop                                           ; $4a62: $00
    sbc b                                         ; $4a63: $98
    dec h                                         ; $4a64: $25
    jp nc, $3e08                                  ; $4a65: $d2 $08 $3e

    ld [hl], $66                                  ; $4a68: $36 $66
    inc b                                         ; $4a6a: $04
    ld d, $0d                                     ; $4a6b: $16 $0d
    ld a, l                                       ; $4a6d: $7d
    ld a, $bb                                     ; $4a6e: $3e $bb
    dec e                                         ; $4a70: $1d
    ld bc, $4900                                  ; $4a71: $01 $00 $49
    ld e, [hl]                                    ; $4a74: $5e
    ld e, h                                       ; $4a75: $5c

jr_0b4_4a76:
    ld [hl], $c0                                  ; $4a76: $36 $c0
    jr z, jr_0b4_4a7a                             ; $4a78: $28 $00

jr_0b4_4a7a:
    nop                                           ; $4a7a: $00
    sub e                                         ; $4a7b: $93
    ld e, [hl]                                    ; $4a7c: $5e
    sub h                                         ; $4a7d: $94
    ld a, a                                       ; $4a7e: $7f
    nop                                           ; $4a7f: $00
    jr nz, jr_0b4_4a82                            ; $4a80: $20 $00

jr_0b4_4a82:
    nop                                           ; $4a82: $00
    adc e                                         ; $4a83: $8b
    ld c, c                                       ; $4a84: $49
    nop                                           ; $4a85: $00
    jr nz, jr_0b4_4a33                            ; $4a86: $20 $ab

    ld c, l                                       ; $4a88: $4d
    inc hl                                        ; $4a89: $23
    inc b                                         ; $4a8a: $04
    add hl, sp                                    ; $4a8b: $39
    dec c                                         ; $4a8c: $0d
    and b                                         ; $4a8d: $a0
    ld d, c                                       ; $4a8e: $51
    dec e                                         ; $4a8f: $1d
    ld [hl-], a                                   ; $4a90: $32
    or h                                          ; $4a91: $b4
    nop                                           ; $4a92: $00
    sbc c                                         ; $4a93: $99
    ld hl, $0cf6                                  ; $4a94: $21 $f6 $0c
    ld e, l                                       ; $4a97: $5d
    ld de, $04b2                                  ; $4a98: $11 $b2 $04
    sub $04                                       ; $4a9b: $d6 $04
    ld sp, hl                                     ; $4a9d: $f9
    ld [$08d4], sp                                ; $4a9e: $08 $d4 $08
    nop                                           ; $4aa1: $00
    nop                                           ; $4aa2: $00
    inc [hl]                                      ; $4aa3: $34
    dec c                                         ; $4aa4: $0d
    inc e                                         ; $4aa5: $1c
    ld l, $1a                                     ; $4aa6: $2e $1a
    add hl, bc                                    ; $4aa8: $09
    nop                                           ; $4aa9: $00
    nop                                           ; $4aaa: $00
    ld c, d                                       ; $4aab: $4a
    ld e, d                                       ; $4aac: $5a
    ld a, [de]                                    ; $4aad: $1a
    ld a, [hl+]                                   ; $4aae: $2a
    ld h, e                                       ; $4aaf: $63
    dec a                                         ; $4ab0: $3d

jr_0b4_4ab1:
    nop                                           ; $4ab1: $00
    nop                                           ; $4ab2: $00
    ld d, [hl]                                    ; $4ab3: $56
    ld [hl], a                                    ; $4ab4: $77
    nop                                           ; $4ab5: $00
    jr nz, jr_0b4_4ab1                            ; $4ab6: $20 $f9

    ld a, a                                       ; $4ab8: $7f
    nop                                           ; $4ab9: $00
    nop                                           ; $4aba: $00
    ld c, b                                       ; $4abb: $48
    ld b, c                                       ; $4abc: $41
    nop                                           ; $4abd: $00
    jr nz, jr_0b4_4a4b                            ; $4abe: $20 $8b

    ld c, c                                       ; $4ac0: $49
    nop                                           ; $4ac1: $00
    nop                                           ; $4ac2: $00
    inc [hl]                                      ; $4ac3: $34
    add hl, de                                    ; $4ac4: $19
    rra                                           ; $4ac5: $1f
    ld [hl-], a                                   ; $4ac6: $32
    call z, RST_10                                ; $4ac7: $cc $10 $00
    nop                                           ; $4aca: $00
    push de                                       ; $4acb: $d5
    ld [$323e], sp                                ; $4acc: $08 $3e $32
    dec sp                                        ; $4acf: $3b
    dec c                                         ; $4ad0: $0d
    ld a, [$dd04]                                 ; $4ad1: $fa $04 $dd
    dec h                                         ; $4ad4: $25
    dec sp                                        ; $4ad5: $3b
    ld de, $321c                                  ; $4ad6: $11 $1c $32
    nop                                           ; $4ad9: $00
    nop                                           ; $4ada: $00
    ld [hl], a                                    ; $4adb: $77
    dec e                                         ; $4adc: $1d
    inc a                                         ; $4add: $3c
    ld [hl], $8a                                  ; $4ade: $36 $8a
    nop                                           ; $4ae0: $00
    jr nz, jr_0b4_4ae7                            ; $4ae1: $20 $04

    jp c, $e31d                                   ; $4ae3: $da $1d $e3

    ld d, l                                       ; $4ae6: $55

jr_0b4_4ae7:
    cp l                                          ; $4ae7: $bd
    ld b, d                                       ; $4ae8: $42
    nop                                           ; $4ae9: $00
    nop                                           ; $4aea: $00
    sub d                                         ; $4aeb: $92
    ld d, [hl]                                    ; $4aec: $56
    nop                                           ; $4aed: $00
    jr nz, jr_0b4_4b05                            ; $4aee: $20 $15

    ld l, e                                       ; $4af0: $6b
    nop                                           ; $4af1: $00
    jr nz, jr_0b4_4afa                            ; $4af2: $20 $06

    ld b, c                                       ; $4af4: $41
    ld h, $41                                     ; $4af5: $26 $41
    dec sp                                        ; $4af7: $3b
    dec c                                         ; $4af8: $0d
    nop                                           ; $4af9: $00

jr_0b4_4afa:
    nop                                           ; $4afa: $00
    ld d, l                                       ; $4afb: $55
    dec e                                         ; $4afc: $1d
    ld a, l                                       ; $4afd: $7d
    ld a, $49                                     ; $4afe: $3e $49
    nop                                           ; $4b00: $00
    nop                                           ; $4b01: $00
    nop                                           ; $4b02: $00
    cp d                                          ; $4b03: $ba
    add hl, hl                                    ; $4b04: $29

jr_0b4_4b05:
    ld a, [hl]                                    ; $4b05: $7e
    ld b, d                                       ; $4b06: $42
    adc d                                         ; $4b07: $8a
    ld [$0443], sp                                ; $4b08: $08 $43 $04
    ld e, e                                       ; $4b0b: $5b
    dec d                                         ; $4b0c: $15
    inc e                                         ; $4b0d: $1c
    ld [hl], $ef                                  ; $4b0e: $36 $ef
    db $10                                        ; $4b10: $10
    ld bc, $7500                                  ; $4b11: $01 $00 $75
    dec e                                         ; $4b14: $1d
    dec sp                                        ; $4b15: $3b
    ld [hl-], a                                   ; $4b16: $32
    db $eb                                        ; $4b17: $eb
    inc d                                         ; $4b18: $14

jr_0b4_4b19:
    jr nz, jr_0b4_4b23                            ; $4b19: $20 $08

    inc c                                         ; $4b1b: $0c
    ld [hl], a                                    ; $4b1c: $77
    inc a                                         ; $4b1d: $3c
    ld l, $f1                                     ; $4b1e: $2e $f1
    ld [$0000], sp                                ; $4b20: $08 $00 $00

jr_0b4_4b23:
    rrca                                          ; $4b23: $0f
    ld b, d                                       ; $4b24: $42
    nop                                           ; $4b25: $00
    jr nz, jr_0b4_4b19                            ; $4b26: $20 $f1

    ld [$2000], sp                                ; $4b28: $08 $00 $20
    xor $5d                                       ; $4b2b: $ee $5d
    ld a, [hl]                                    ; $4b2d: $7e
    ld b, d                                       ; $4b2e: $42
    adc d                                         ; $4b2f: $8a
    ld [$0001], sp                                ; $4b30: $08 $01 $00
    xor h                                         ; $4b33: $ac
    ld d, l                                       ; $4b34: $55
    dec b                                         ; $4b35: $05
    dec a                                         ; $4b36: $3d
    ld a, [$002d]                                 ; $4b37: $fa $2d $00
    nop                                           ; $4b3a: $00
    ld [hl], l                                    ; $4b3b: $75
    dec e                                         ; $4b3c: $1d
    ld e, [hl]                                    ; $4b3d: $5e
    ld [hl], $8a                                  ; $4b3e: $36 $8a
    ld [$0000], sp                                ; $4b40: $08 $00 $00
    inc sp                                        ; $4b43: $33
    dec e                                         ; $4b44: $1d
    db $fc                                        ; $4b45: $fc
    dec l                                         ; $4b46: $2d
    xor l                                         ; $4b47: $ad
    inc c                                         ; $4b48: $0c
    nop                                           ; $4b49: $00
    nop                                           ; $4b4a: $00
    dec l                                         ; $4b4b: $2d
    dec b                                         ; $4b4c: $05

jr_0b4_4b4d:
    sub a                                         ; $4b4d: $97
    dec e                                         ; $4b4e: $1d
    ld h, a                                       ; $4b4f: $67
    inc b                                         ; $4b50: $04
    ld h, b                                       ; $4b51: $60
    inc d                                         ; $4b52: $14
    ld [hl], d                                    ; $4b53: $72
    dec e                                         ; $4b54: $1d
    adc $6a                                       ; $4b55: $ce $6a
    ld e, e                                       ; $4b57: $5b
    ld [hl-], a                                   ; $4b58: $32
    nop                                           ; $4b59: $00
    nop                                           ; $4b5a: $00
    nop                                           ; $4b5b: $00
    jr nz, @-$30                                  ; $4b5c: $20 $ce

    ld l, d                                       ; $4b5e: $6a
    ld e, e                                       ; $4b5f: $5b
    ld [hl-], a                                   ; $4b60: $32
    nop                                           ; $4b61: $00
    jr nz, jr_0b4_4bd9                            ; $4b62: $20 $75

    dec e                                         ; $4b64: $1d
    ld e, [hl]                                    ; $4b65: $5e
    ld [hl], $8a                                  ; $4b66: $36 $8a
    ld [$0000], sp                                ; $4b68: $08 $00 $00
    xor h                                         ; $4b6b: $ac
    ld d, l                                       ; $4b6c: $55
    xor $04                                       ; $4b6d: $ee $04
    sub h                                         ; $4b6f: $94
    ld l, [hl]                                    ; $4b70: $6e
    nop                                           ; $4b71: $00
    nop                                           ; $4b72: $00
    or c                                          ; $4b73: $b1
    ld [$197a], sp                                ; $4b74: $08 $7a $19
    add a                                         ; $4b77: $87
    nop                                           ; $4b78: $00
    ld bc, $5500                                  ; $4b79: $01 $00 $55
    ld [bc], a                                    ; $4b7c: $02
    xor $04                                       ; $4b7d: $ee $04
    dec e                                         ; $4b7f: $1d
    dec bc                                        ; $4b80: $0b
    nop                                           ; $4b81: $00
    nop                                           ; $4b82: $00
    cp b                                          ; $4b83: $b8
    dec e                                         ; $4b84: $1d
    ret                                           ; $4b85: $c9


    nop                                           ; $4b86: $00
    db $db                                        ; $4b87: $db
    ld a, [bc]                                    ; $4b88: $0a
    nop                                           ; $4b89: $00
    nop                                           ; $4b8a: $00
    cp d                                          ; $4b8b: $ba
    add hl, de                                    ; $4b8c: $19
    ld b, e                                       ; $4b8d: $43
    add hl, sp                                    ; $4b8e: $39
    ld a, c                                       ; $4b8f: $79
    ld b, d                                       ; $4b90: $42
    nop                                           ; $4b91: $00
    inc e                                         ; $4b92: $1c
    nop                                           ; $4b93: $00
    jr nz, jr_0b4_4bd9                            ; $4b94: $20 $43

    add hl, sp                                    ; $4b96: $39
    ld a, c                                       ; $4b97: $79
    ld b, d                                       ; $4b98: $42
    nop                                           ; $4b99: $00
    jr nz, jr_0b4_4b4d                            ; $4b9a: $20 $b1

    ld [$197a], sp                                ; $4b9c: $08 $7a $19
    add a                                         ; $4b9f: $87
    nop                                           ; $4ba0: $00
    nop                                           ; $4ba1: $00
    nop                                           ; $4ba2: $00
    halt                                          ; $4ba3: $76
    ld [de], a                                    ; $4ba4: $12
    rst $30                                       ; $4ba5: $f7

jr_0b4_4ba6:
    ld [hl], d                                    ; $4ba6: $72

jr_0b4_4ba7:
    rst $38                                       ; $4ba7: $ff
    ld a, a                                       ; $4ba8: $7f
    nop                                           ; $4ba9: $00
    nop                                           ; $4baa: $00
    inc d                                         ; $4bab: $14
    ld b, $ec                                     ; $4bac: $06 $ec
    nop                                           ; $4bae: $00
    rst $38                                       ; $4baf: $ff
    daa                                           ; $4bb0: $27
    nop                                           ; $4bb1: $00
    nop                                           ; $4bb2: $00
    ld e, $1b                                     ; $4bb3: $1e $1b
    ld l, [hl]                                    ; $4bb5: $6e
    ld bc, $439d                                  ; $4bb6: $01 $9d $43
    nop                                           ; $4bb9: $00
    nop                                           ; $4bba: $00
    or [hl]                                       ; $4bbb: $b6
    ld de, $233d                                  ; $4bbc: $11 $3d $23
    db $eb                                        ; $4bbf: $eb
    nop                                           ; $4bc0: $00
    nop                                           ; $4bc1: $00
    ld [$1dda], sp                                ; $4bc2: $08 $da $1d
    rst $38                                       ; $4bc5: $ff
    ld a, a                                       ; $4bc6: $7f
    sbc h                                         ; $4bc7: $9c
    ld a, $00                                     ; $4bc8: $3e $00
    jr nz, jr_0b4_4ba6                            ; $4bca: $20 $da

    dec e                                         ; $4bcc: $1d
    rst $38                                       ; $4bcd: $ff
    ld a, a                                       ; $4bce: $7f
    sbc h                                         ; $4bcf: $9c
    ld a, $00                                     ; $4bd0: $3e $00
    jr nz, jr_0b4_4be8                            ; $4bd2: $20 $14

    ld b, $ec                                     ; $4bd4: $06 $ec
    nop                                           ; $4bd6: $00
    rst $38                                       ; $4bd7: $ff
    daa                                           ; $4bd8: $27

jr_0b4_4bd9:
    nop                                           ; $4bd9: $00
    nop                                           ; $4bda: $00
    cp [hl]                                       ; $4bdb: $be
    ld c, a                                       ; $4bdc: $4f
    sbc h                                         ; $4bdd: $9c
    ld [hl], a                                    ; $4bde: $77
    nop                                           ; $4bdf: $00
    jr nz, jr_0b4_4be2                            ; $4be0: $20 $00

jr_0b4_4be2:
    nop                                           ; $4be2: $00
    dec de                                        ; $4be3: $1b
    rra                                           ; $4be4: $1f
    sbc l                                         ; $4be5: $9d
    ld c, e                                       ; $4be6: $4b
    and [hl]                                      ; $4be7: $a6

jr_0b4_4be8:
    nop                                           ; $4be8: $00
    nop                                           ; $4be9: $00
    nop                                           ; $4bea: $00
    rrca                                          ; $4beb: $0f
    ld h, d                                       ; $4bec: $62
    sbc h                                         ; $4bed: $9c
    ld a, e                                       ; $4bee: $7b
    or l                                          ; $4bef: $b5
    ld l, [hl]                                    ; $4bf0: $6e
    nop                                           ; $4bf1: $00
    nop                                           ; $4bf2: $00
    push hl                                       ; $4bf3: $e5
    inc a                                         ; $4bf4: $3c
    rrca                                          ; $4bf5: $0f
    ld e, d                                       ; $4bf6: $5a
    ld c, c                                       ; $4bf7: $49
    ld c, c                                       ; $4bf8: $49
    nop                                           ; $4bf9: $00
    nop                                           ; $4bfa: $00

jr_0b4_4bfb:
    rst $30                                       ; $4bfb: $f7
    ld [hl], d                                    ; $4bfc: $72
    sbc $7b                                       ; $4bfd: $de $7b
    nop                                           ; $4bff: $00
    jr nz, jr_0b4_4c02                            ; $4c00: $20 $00

jr_0b4_4c02:
    jr nz, jr_0b4_4bfb                            ; $4c02: $20 $f7

    ld [hl], d                                    ; $4c04: $72
    sbc $7b                                       ; $4c05: $de $7b
    nop                                           ; $4c07: $00
    jr nz, jr_0b4_4c0a                            ; $4c08: $20 $00

jr_0b4_4c0a:
    jr nz, jr_0b4_4c27                            ; $4c0a: $20 $1b

    rra                                           ; $4c0c: $1f
    sbc l                                         ; $4c0d: $9d
    ld c, e                                       ; $4c0e: $4b
    and [hl]                                      ; $4c0f: $a6
    nop                                           ; $4c10: $00
    nop                                           ; $4c11: $00
    jr nz, jr_0b4_4ba7                            ; $4c12: $20 $93

    ld h, d                                       ; $4c14: $62
    sbc h                                         ; $4c15: $9c
    ld [hl], a                                    ; $4c16: $77
    ld l, c                                       ; $4c17: $69
    ld b, l                                       ; $4c18: $45
    push hl                                       ; $4c19: $e5
    inc a                                         ; $4c1a: $3c
    ld sp, $f766                                  ; $4c1b: $31 $66 $f7
    ld [hl], d                                    ; $4c1e: $72
    ld c, c                                       ; $4c1f: $49
    ld c, l                                       ; $4c20: $4d
    daa                                           ; $4c21: $27
    ld b, l                                       ; $4c22: $45
    sub l                                         ; $4c23: $95
    ld [hl], d                                    ; $4c24: $72
    sbc h                                         ; $4c25: $9c
    ld a, e                                       ; $4c26: $7b

jr_0b4_4c27:
    adc $5d                                       ; $4c27: $ce $5d
    ld l, d                                       ; $4c29: $6a
    ld c, l                                       ; $4c2a: $4d

jr_0b4_4c2b:
    sub h                                         ; $4c2b: $94
    ld l, [hl]                                    ; $4c2c: $6e
    jr nc, @+$60                                  ; $4c2d: $30 $5e

    ld e, d                                       ; $4c2f: $5a
    ld [hl], e                                    ; $4c30: $73
    nop                                           ; $4c31: $00
    jr nz, @+$75                                  ; $4c32: $20 $73

    ld e, [hl]                                    ; $4c34: $5e
    cp h                                          ; $4c35: $bc
    ld a, e                                       ; $4c36: $7b
    push hl                                       ; $4c37: $e5
    inc a                                         ; $4c38: $3c
    nop                                           ; $4c39: $00
    jr nz, @+$75                                  ; $4c3a: $20 $73

    ld e, [hl]                                    ; $4c3c: $5e
    cp h                                          ; $4c3d: $bc
    ld a, e                                       ; $4c3e: $7b
    push hl                                       ; $4c3f: $e5
    inc a                                         ; $4c40: $3c
    nop                                           ; $4c41: $00
    jr nz, jr_0b4_4c44                            ; $4c42: $20 $00

jr_0b4_4c44:
    jr nz, jr_0b4_4c46                            ; $4c44: $20 $00

jr_0b4_4c46:
    jr nz, jr_0b4_4c2b                            ; $4c46: $20 $e3

    dec c                                         ; $4c48: $0d
    nop                                           ; $4c49: $00
    jr nz, jr_0b4_4c4c                            ; $4c4a: $20 $00

jr_0b4_4c4c:
    jr nz, jr_0b4_4c4e                            ; $4c4c: $20 $00

jr_0b4_4c4e:
    jr nz, @-$1b                                  ; $4c4e: $20 $e3

    dec c                                         ; $4c50: $0d
    nop                                           ; $4c51: $00
    jr nz, jr_0b4_4c54                            ; $4c52: $20 $00

jr_0b4_4c54:
    jr nz, jr_0b4_4c56                            ; $4c54: $20 $00

jr_0b4_4c56:
    jr nz, @-$1b                                  ; $4c56: $20 $e3

    dec c                                         ; $4c58: $0d
    nop                                           ; $4c59: $00
    nop                                           ; $4c5a: $00
    rst $38                                       ; $4c5b: $ff
    ld a, a                                       ; $4c5c: $7f
    nop                                           ; $4c5d: $00
    jr nz, jr_0b4_4c60                            ; $4c5e: $20 $00

jr_0b4_4c60:
    jr nz, jr_0b4_4c62                            ; $4c60: $20 $00

jr_0b4_4c62:
    jr nz, @+$01                                  ; $4c62: $20 $ff

    ld a, a                                       ; $4c64: $7f
    nop                                           ; $4c65: $00
    jr nz, jr_0b4_4c68                            ; $4c66: $20 $00

jr_0b4_4c68:
    jr nz, jr_0b4_4c6a                            ; $4c68: $20 $00

jr_0b4_4c6a:
    jr nz, @+$01                                  ; $4c6a: $20 $ff

    ld a, a                                       ; $4c6c: $7f
    nop                                           ; $4c6d: $00
    jr nz, jr_0b4_4c70                            ; $4c6e: $20 $00

jr_0b4_4c70:
    jr nz, jr_0b4_4c72                            ; $4c70: $20 $00

jr_0b4_4c72:
    jr nz, @+$01                                  ; $4c72: $20 $ff

    ld a, a                                       ; $4c74: $7f
    nop                                           ; $4c75: $00
    jr nz, jr_0b4_4c78                            ; $4c76: $20 $00

jr_0b4_4c78:
    jr nz, jr_0b4_4c7a                            ; $4c78: $20 $00

jr_0b4_4c7a:
    jr nz, jr_0b4_4c7c                            ; $4c7a: $20 $00

jr_0b4_4c7c:
    jr nz, jr_0b4_4c7e                            ; $4c7c: $20 $00

jr_0b4_4c7e:
    jr nz, @-$1b                                  ; $4c7e: $20 $e3

    dec c                                         ; $4c80: $0d
    nop                                           ; $4c81: $00
    jr nz, jr_0b4_4c84                            ; $4c82: $20 $00

jr_0b4_4c84:
    jr nz, jr_0b4_4c86                            ; $4c84: $20 $00

jr_0b4_4c86:
    jr nz, @-$1b                                  ; $4c86: $20 $e3

    dec c                                         ; $4c88: $0d
    nop                                           ; $4c89: $00
    jr nz, jr_0b4_4c8c                            ; $4c8a: $20 $00

jr_0b4_4c8c:
    jr nz, jr_0b4_4c8e                            ; $4c8c: $20 $00

jr_0b4_4c8e:
    jr nz, @-$1b                                  ; $4c8e: $20 $e3

    dec c                                         ; $4c90: $0d
    nop                                           ; $4c91: $00
    nop                                           ; $4c92: $00
    rst $38                                       ; $4c93: $ff

jr_0b4_4c94:
    ld a, a                                       ; $4c94: $7f
    nop                                           ; $4c95: $00
    jr nz, jr_0b4_4c98                            ; $4c96: $20 $00

jr_0b4_4c98:
    jr nz, jr_0b4_4c9a                            ; $4c98: $20 $00

jr_0b4_4c9a:
    nop                                           ; $4c9a: $00

jr_0b4_4c9b:
    nop                                           ; $4c9b: $00
    jr nz, jr_0b4_4c9e                            ; $4c9c: $20 $00

jr_0b4_4c9e:
    jr nz, jr_0b4_4ca0                            ; $4c9e: $20 $00

jr_0b4_4ca0:
    jr nz, jr_0b4_4ca2                            ; $4ca0: $20 $00

jr_0b4_4ca2:
    jr nz, jr_0b4_4ca4                            ; $4ca2: $20 $00

jr_0b4_4ca4:
    jr nz, jr_0b4_4ca6                            ; $4ca4: $20 $00

jr_0b4_4ca6:
    jr nz, jr_0b4_4ca8                            ; $4ca6: $20 $00

jr_0b4_4ca8:
    jr nz, jr_0b4_4caa                            ; $4ca8: $20 $00

jr_0b4_4caa:
    jr nz, jr_0b4_4cac                            ; $4caa: $20 $00

jr_0b4_4cac:
    jr nz, jr_0b4_4cae                            ; $4cac: $20 $00

jr_0b4_4cae:
    jr nz, jr_0b4_4cb0                            ; $4cae: $20 $00

jr_0b4_4cb0:
    jr nz, jr_0b4_4cb2                            ; $4cb0: $20 $00

jr_0b4_4cb2:
    jr nz, jr_0b4_4cb4                            ; $4cb2: $20 $00

jr_0b4_4cb4:
    jr nz, jr_0b4_4cb6                            ; $4cb4: $20 $00

jr_0b4_4cb6:
    jr nz, jr_0b4_4c9b                            ; $4cb6: $20 $e3

    dec c                                         ; $4cb8: $0d
    nop                                           ; $4cb9: $00
    jr nz, jr_0b4_4cbc                            ; $4cba: $20 $00

jr_0b4_4cbc:
    jr nz, jr_0b4_4cbe                            ; $4cbc: $20 $00

jr_0b4_4cbe:
    jr nz, @-$1b                                  ; $4cbe: $20 $e3

    dec c                                         ; $4cc0: $0d
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    rst $38                                       ; $4cc3: $ff
    ld a, a                                       ; $4cc4: $7f
    nop                                           ; $4cc5: $00
    jr nz, @-$1b                                  ; $4cc6: $20 $e3

jr_0b4_4cc8:
    dec c                                         ; $4cc8: $0d
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    ld a, d                                       ; $4ccb: $7a
    ld h, l                                       ; $4ccc: $65
    rst $38                                       ; $4ccd: $ff
    ld a, a                                       ; $4cce: $7f
    nop                                           ; $4ccf: $00
    jr nz, jr_0b4_4cd2                            ; $4cd0: $20 $00

jr_0b4_4cd2:
    nop                                           ; $4cd2: $00

jr_0b4_4cd3:
    rst $38                                       ; $4cd3: $ff
    ld a, a                                       ; $4cd4: $7f
    nop                                           ; $4cd5: $00
    jr nz, jr_0b4_4cd8                            ; $4cd6: $20 $00

jr_0b4_4cd8:
    jr nz, jr_0b4_4cda                            ; $4cd8: $20 $00

jr_0b4_4cda:
    jr nz, @+$01                                  ; $4cda: $20 $ff

    ld a, a                                       ; $4cdc: $7f
    nop                                           ; $4cdd: $00
    jr nz, jr_0b4_4ce0                            ; $4cde: $20 $00

jr_0b4_4ce0:
    jr nz, jr_0b4_4ce2                            ; $4ce0: $20 $00

jr_0b4_4ce2:
    jr nz, @+$01                                  ; $4ce2: $20 $ff

    ld a, a                                       ; $4ce4: $7f
    nop                                           ; $4ce5: $00
    jr nz, jr_0b4_4ce8                            ; $4ce6: $20 $00

jr_0b4_4ce8:
    jr nz, jr_0b4_4cea                            ; $4ce8: $20 $00

jr_0b4_4cea:
    jr nz, @+$01                                  ; $4cea: $20 $ff

    ld a, a                                       ; $4cec: $7f
    nop                                           ; $4ced: $00
    jr nz, jr_0b4_4cd3                            ; $4cee: $20 $e3

    dec c                                         ; $4cf0: $0d
    nop                                           ; $4cf1: $00
    jr nz, jr_0b4_4c94                            ; $4cf2: $20 $a0

    nop                                           ; $4cf4: $00
    nop                                           ; $4cf5: $00
    jr nz, @-$1b                                  ; $4cf6: $20 $e3

    dec c                                         ; $4cf8: $0d
    nop                                           ; $4cf9: $00
    nop                                           ; $4cfa: $00
    rst $38                                       ; $4cfb: $ff
    ld a, a                                       ; $4cfc: $7f
    nop                                           ; $4cfd: $00
    jr nz, jr_0b4_4ca0                            ; $4cfe: $20 $a0

    nop                                           ; $4d00: $00
    ld a, d                                       ; $4d01: $7a
    ld h, l                                       ; $4d02: $65
    rst $38                                       ; $4d03: $ff
    ld a, a                                       ; $4d04: $7f
    nop                                           ; $4d05: $00
    jr nz, jr_0b4_4d08                            ; $4d06: $20 $00

jr_0b4_4d08:
    jr nz, jr_0b4_4d0a                            ; $4d08: $20 $00

jr_0b4_4d0a:
    nop                                           ; $4d0a: $00
    ld a, d                                       ; $4d0b: $7a
    ld h, l                                       ; $4d0c: $65
    rst $38                                       ; $4d0d: $ff
    ld a, a                                       ; $4d0e: $7f
    nop                                           ; $4d0f: $00
    jr nz, jr_0b4_4d12                            ; $4d10: $20 $00

jr_0b4_4d12:
    jr nz, jr_0b4_4d8e                            ; $4d12: $20 $7a

    ld h, l                                       ; $4d14: $65
    rst $38                                       ; $4d15: $ff
    ld a, a                                       ; $4d16: $7f
    nop                                           ; $4d17: $00
    jr nz, jr_0b4_4d1a                            ; $4d18: $20 $00

jr_0b4_4d1a:
    jr nz, jr_0b4_4d96                            ; $4d1a: $20 $7a

    ld h, l                                       ; $4d1c: $65
    rst $38                                       ; $4d1d: $ff
    ld a, a                                       ; $4d1e: $7f
    nop                                           ; $4d1f: $00
    jr nz, jr_0b4_4d22                            ; $4d20: $20 $00

jr_0b4_4d22:
    jr nz, @+$01                                  ; $4d22: $20 $ff

    ld a, a                                       ; $4d24: $7f
    nop                                           ; $4d25: $00

jr_0b4_4d26:
    jr nz, jr_0b4_4cc8                            ; $4d26: $20 $a0

    nop                                           ; $4d28: $00
    nop                                           ; $4d29: $00
    jr nz, @+$72                                  ; $4d2a: $20 $70

    ld b, e                                       ; $4d2c: $43
    and b                                         ; $4d2d: $a0
    nop                                           ; $4d2e: $00
    add l                                         ; $4d2f: $85
    dec d                                         ; $4d30: $15
    ldh [rDIV], a                                 ; $4d31: $e0 $04
    ld a, [hl+]                                   ; $4d33: $2a
    dec hl                                        ; $4d34: $2b
    call nc, Call_000_2553                        ; $4d35: $d4 $53 $25
    ld d, $a0                                     ; $4d38: $16 $a0
    nop                                           ; $4d3a: $00
    ld e, c                                       ; $4d3b: $59
    ld h, c                                       ; $4d3c: $61
    ld e, d                                       ; $4d3d: $5a
    ld h, c                                       ; $4d3e: $61
    ld a, d                                       ; $4d3f: $7a
    ld h, c                                       ; $4d40: $61
    nop                                           ; $4d41: $00
    nop                                           ; $4d42: $00
    ld e, c                                       ; $4d43: $59
    ld h, c                                       ; $4d44: $61
    rst $38                                       ; $4d45: $ff
    ld a, a                                       ; $4d46: $7f
    nop                                           ; $4d47: $00
    inc d                                         ; $4d48: $14
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    jr nz, @+$01                                  ; $4d4c: $20 $ff

    ld a, a                                       ; $4d4e: $7f
    nop                                           ; $4d4f: $00
    inc d                                         ; $4d50: $14
    nop                                           ; $4d51: $00
    jr nz, jr_0b4_4d54                            ; $4d52: $20 $00

jr_0b4_4d54:
    jr nz, @+$01                                  ; $4d54: $20 $ff

    ld a, a                                       ; $4d56: $7f
    nop                                           ; $4d57: $00
    inc d                                         ; $4d58: $14
    nop                                           ; $4d59: $00
    jr nz, jr_0b4_4d86                            ; $4d5a: $20 $2a

    dec hl                                        ; $4d5c: $2b
    call nc, Call_000_2553                        ; $4d5d: $d4 $53 $25
    ld d, $60                                     ; $4d60: $16 $60
    ld [$2348], sp                                ; $4d62: $08 $48 $23
    push af                                       ; $4d65: $f5
    ld d, a                                       ; $4d66: $57
    dec h                                         ; $4d67: $25
    ld d, $01                                     ; $4d68: $16 $01
    dec b                                         ; $4d6a: $05
    ld l, c                                       ; $4d6b: $69
    daa                                           ; $4d6c: $27
    dec h                                         ; $4d6d: $25
    ld d, $f5                                     ; $4d6e: $16 $f5
    ld d, a                                       ; $4d70: $57
    and b                                         ; $4d71: $a0
    nop                                           ; $4d72: $00
    ld e, c                                       ; $4d73: $59
    ld h, c                                       ; $4d74: $61
    ld l, c                                       ; $4d75: $69
    daa                                           ; $4d76: $27
    ld b, d                                       ; $4d77: $42
    dec c                                         ; $4d78: $0d
    nop                                           ; $4d79: $00
    nop                                           ; $4d7a: $00
    ld e, c                                       ; $4d7b: $59
    ld h, c                                       ; $4d7c: $61
    rst $38                                       ; $4d7d: $ff
    ld a, a                                       ; $4d7e: $7f
    xor c                                         ; $4d7f: $a9

jr_0b4_4d80:
    nop                                           ; $4d80: $00
    nop                                           ; $4d81: $00
    nop                                           ; $4d82: $00
    sbc d                                         ; $4d83: $9a
    ld a, $a9                                     ; $4d84: $3e $a9

jr_0b4_4d86:
    nop                                           ; $4d86: $00
    nop                                           ; $4d87: $00
    jr nz, jr_0b4_4d8a                            ; $4d88: $20 $00

jr_0b4_4d8a:
    jr nz, jr_0b4_4d26                            ; $4d8a: $20 $9a

    ld a, $a9                                     ; $4d8c: $3e $a9

jr_0b4_4d8e:
    nop                                           ; $4d8e: $00
    nop                                           ; $4d8f: $00
    jr nz, jr_0b4_4d92                            ; $4d90: $20 $00

jr_0b4_4d92:
    jr nz, @+$6b                                  ; $4d92: $20 $69

    daa                                           ; $4d94: $27
    and b                                         ; $4d95: $a0

jr_0b4_4d96:
    nop                                           ; $4d96: $00
    push af                                       ; $4d97: $f5
    ld d, a                                       ; $4d98: $57
    ld b, b                                       ; $4d99: $40
    ld bc, $57f5                                  ; $4d9a: $01 $f5 $57
    add [hl]                                      ; $4d9d: $86
    ld a, [de]                                    ; $4d9e: $1a
    ld l, c                                       ; $4d9f: $69
    daa                                           ; $4da0: $27
    and b                                         ; $4da1: $a0
    nop                                           ; $4da2: $00
    dec c                                         ; $4da3: $0d
    dec sp                                        ; $4da4: $3b
    and c                                         ; $4da5: $a1
    dec b                                         ; $4da6: $05
    push af                                       ; $4da7: $f5
    ld d, a                                       ; $4da8: $57
    ret nz                                        ; $4da9: $c0

    nop                                           ; $4daa: $00
    ld e, c                                       ; $4dab: $59
    ld e, l                                       ; $4dac: $5d
    dec h                                         ; $4dad: $25
    ld a, [de]                                    ; $4dae: $1a
    ld l, c                                       ; $4daf: $69
    daa                                           ; $4db0: $27
    xor c                                         ; $4db1: $a9
    nop                                           ; $4db2: $00
    ld e, c                                       ; $4db3: $59
    ld e, l                                       ; $4db4: $5d
    ld e, c                                       ; $4db5: $59
    ld h, c                                       ; $4db6: $61
    ld l, c                                       ; $4db7: $69
    daa                                           ; $4db8: $27
    nop                                           ; $4db9: $00
    inc d                                         ; $4dba: $14
    cp h                                          ; $4dbb: $bc
    ld a, $a9                                     ; $4dbc: $3e $a9
    nop                                           ; $4dbe: $00
    rst $18                                       ; $4dbf: $df
    ld l, e                                       ; $4dc0: $6b
    nop                                           ; $4dc1: $00
    jr nz, jr_0b4_4d80                            ; $4dc2: $20 $bc

    ld a, $a9                                     ; $4dc4: $3e $a9
    nop                                           ; $4dc6: $00
    rst $18                                       ; $4dc7: $df
    ld l, e                                       ; $4dc8: $6b
    nop                                           ; $4dc9: $00
    jr nz, jr_0b4_4e35                            ; $4dca: $20 $69

    daa                                           ; $4dcc: $27
    push af                                       ; $4dcd: $f5
    ld d, a                                       ; $4dce: $57
    and b                                         ; $4dcf: $a0
    nop                                           ; $4dd0: $00
    and b                                         ; $4dd1: $a0
    nop                                           ; $4dd2: $00
    ld l, c                                       ; $4dd3: $69
    daa                                           ; $4dd4: $27
    push af                                       ; $4dd5: $f5
    ld d, a                                       ; $4dd6: $57
    jr nz, jr_0b4_4ddb                            ; $4dd7: $20 $02

    and b                                         ; $4dd9: $a0
    nop                                           ; $4dda: $00

jr_0b4_4ddb:
    ld e, b                                       ; $4ddb: $58
    ld a, [hl-]                                   ; $4ddc: $3a

jr_0b4_4ddd:
    sub $5a                                       ; $4ddd: $d6 $5a
    and l                                         ; $4ddf: $a5
    db $10                                        ; $4de0: $10
    add b                                         ; $4de1: $80
    nop                                           ; $4de2: $00
    jr c, jr_0b4_4e42                             ; $4de3: $38 $5d

    ld l, c                                       ; $4de5: $69
    daa                                           ; $4de6: $27
    and a                                         ; $4de7: $a7
    ld [$00a9], sp                                ; $4de8: $08 $a9 $00
    jr c, jr_0b4_4e4a                             ; $4deb: $38 $5d

    sbc d                                         ; $4ded: $9a
    ld a, $3f                                     ; $4dee: $3e $3f
    ld c, a                                       ; $4df0: $4f
    nop                                           ; $4df1: $00
    nop                                           ; $4df2: $00
    sbc e                                         ; $4df3: $9b
    ld a, $df                                     ; $4df4: $3e $df
    ld [hl], a                                    ; $4df6: $77
    xor c                                         ; $4df7: $a9
    nop                                           ; $4df8: $00
    nop                                           ; $4df9: $00
    nop                                           ; $4dfa: $00
    nop                                           ; $4dfb: $00
    jr nz, jr_0b4_4ddd                            ; $4dfc: $20 $df

    ld [hl], a                                    ; $4dfe: $77
    xor c                                         ; $4dff: $a9
    nop                                           ; $4e00: $00
    nop                                           ; $4e01: $00
    jr nz, jr_0b4_4e6d                            ; $4e02: $20 $69

    daa                                           ; $4e04: $27
    push af                                       ; $4e05: $f5
    ld d, a                                       ; $4e06: $57
    and b                                         ; $4e07: $a0
    nop                                           ; $4e08: $00
    and b                                         ; $4e09: $a0
    nop                                           ; $4e0a: $00
    ld c, b                                       ; $4e0b: $48
    inc hl                                        ; $4e0c: $23
    jr nz, jr_0b4_4e11                            ; $4e0d: $20 $02

    push af                                       ; $4e0f: $f5
    ld d, a                                       ; $4e10: $57

jr_0b4_4e11:
    and l                                         ; $4e11: $a5
    inc d                                         ; $4e12: $14
    db $fc                                        ; $4e13: $fc
    ld c, [hl]                                    ; $4e14: $4e
    rst $38                                       ; $4e15: $ff
    ld a, a                                       ; $4e16: $7f
    xor c                                         ; $4e17: $a9
    nop                                           ; $4e18: $00
    ld hl, $3804                                  ; $4e19: $21 $04 $38
    ld e, l                                       ; $4e1c: $5d
    and a                                         ; $4e1d: $a7
    inc b                                         ; $4e1e: $04
    ld l, e                                       ; $4e1f: $6b
    dec l                                         ; $4e20: $2d
    xor c                                         ; $4e21: $a9
    nop                                           ; $4e22: $00
    jr c, jr_0b4_4e7e                             ; $4e23: $38 $59

    scf                                           ; $4e25: $37
    ld [hl], $ff                                  ; $4e26: $36 $ff
    ld b, [hl]                                    ; $4e28: $46
    ld b, l                                       ; $4e29: $45
    nop                                           ; $4e2a: $00
    jr c, jr_0b4_4e8a                             ; $4e2b: $38 $5d

    sbc d                                         ; $4e2d: $9a
    ld a, $ff                                     ; $4e2e: $3e $ff
    ld a, a                                       ; $4e30: $7f
    nop                                           ; $4e31: $00
    nop                                           ; $4e32: $00
    rst $38                                       ; $4e33: $ff
    ld a, a                                       ; $4e34: $7f

jr_0b4_4e35:
    nop                                           ; $4e35: $00
    jr nz, @+$01                                  ; $4e36: $20 $ff

    ld a, a                                       ; $4e38: $7f
    nop                                           ; $4e39: $00
    jr nz, jr_0b4_4ea5                            ; $4e3a: $20 $69

    daa                                           ; $4e3c: $27
    push af                                       ; $4e3d: $f5
    ld d, a                                       ; $4e3e: $57
    and b                                         ; $4e3f: $a0
    nop                                           ; $4e40: $00
    and d                                         ; $4e41: $a2

jr_0b4_4e42:
    inc b                                         ; $4e42: $04
    ld b, $1b                                     ; $4e43: $06 $1b
    jr nz, jr_0b4_4e49                            ; $4e45: $20 $02

    sub $5a                                       ; $4e47: $d6 $5a

jr_0b4_4e49:
    dec b                                         ; $4e49: $05

jr_0b4_4e4a:
    ld h, b                                       ; $4e4a: $60
    ld a, [$a852]                                 ; $4e4b: $fa $52 $a8
    inc b                                         ; $4e4e: $04
    rst $38                                       ; $4e4f: $ff
    ld a, a                                       ; $4e50: $7f
    ld h, h                                       ; $4e51: $64
    ld [$31f1], sp                                ; $4e52: $08 $f1 $31
    rla                                           ; $4e55: $17
    ld e, c                                       ; $4e56: $59
    sub h                                         ; $4e57: $94
    ld d, d                                       ; $4e58: $52
    xor c                                         ; $4e59: $a9
    nop                                           ; $4e5a: $00
    rla                                           ; $4e5b: $17
    ld e, c                                       ; $4e5c: $59
    ld a, c                                       ; $4e5d: $79
    ld a, [hl-]                                   ; $4e5e: $3a
    cp $46                                        ; $4e5f: $fe $46
    xor c                                         ; $4e61: $a9
    nop                                           ; $4e62: $00
    rla                                           ; $4e63: $17
    ld e, c                                       ; $4e64: $59
    sbc d                                         ; $4e65: $9a
    ld a, $18                                     ; $4e66: $3e $18
    ld e, c                                       ; $4e68: $59
    nop                                           ; $4e69: $00
    nop                                           ; $4e6a: $00
    rla                                           ; $4e6b: $17
    ld e, c                                       ; $4e6c: $59

jr_0b4_4e6d:
    rst $38                                       ; $4e6d: $ff
    ld a, a                                       ; $4e6e: $7f
    nop                                           ; $4e6f: $00
    jr nz, jr_0b4_4e92                            ; $4e70: $20 $20

    ld [$2769], sp                                ; $4e72: $08 $69 $27
    push af                                       ; $4e75: $f5
    ld d, a                                       ; $4e76: $57
    rst $38                                       ; $4e77: $ff
    ld a, a                                       ; $4e78: $7f
    and b                                         ; $4e79: $a0
    nop                                           ; $4e7a: $00
    or l                                          ; $4e7b: $b5
    ld d, [hl]                                    ; $4e7c: $56
    rst $20                                       ; $4e7d: $e7

jr_0b4_4e7e:
    jr @-$1e                                      ; $4e7e: $18 $e0

    ld bc, $6005                                  ; $4e80: $01 $05 $60
    scf                                           ; $4e83: $37
    ld l, $a9                                     ; $4e84: $2e $a9
    nop                                           ; $4e86: $00
    rra                                           ; $4e87: $1f
    ld c, e                                       ; $4e88: $4b
    ld b, e                                       ; $4e89: $43

jr_0b4_4e8a:
    nop                                           ; $4e8a: $00
    dec [hl]                                      ; $4e8b: $35
    ld d, c                                       ; $4e8c: $51
    sub $5a                                       ; $4e8d: $d6 $5a
    adc [hl]                                      ; $4e8f: $8e
    dec h                                         ; $4e90: $25
    xor c                                         ; $4e91: $a9

jr_0b4_4e92:
    nop                                           ; $4e92: $00
    rla                                           ; $4e93: $17
    ld e, c                                       ; $4e94: $59
    sbc d                                         ; $4e95: $9a
    ld a, $1f                                     ; $4e96: $3e $1f
    ld b, a                                       ; $4e98: $47
    xor c                                         ; $4e99: $a9
    nop                                           ; $4e9a: $00
    rla                                           ; $4e9b: $17
    ld e, c                                       ; $4e9c: $59
    ccf                                           ; $4e9d: $3f
    ld c, a                                       ; $4e9e: $4f
    ld l, a                                       ; $4e9f: $6f
    ld de, $0000                                  ; $4ea0: $11 $00 $00
    rla                                           ; $4ea3: $17
    ld d, l                                       ; $4ea4: $55

jr_0b4_4ea5:
    rst $38                                       ; $4ea5: $ff
    ld a, a                                       ; $4ea6: $7f
    nop                                           ; $4ea7: $00
    jr nz, jr_0b4_4e4a                            ; $4ea8: $20 $a0

    nop                                           ; $4eaa: $00
    push af                                       ; $4eab: $f5
    ld d, a                                       ; $4eac: $57
    ld l, c                                       ; $4ead: $69
    daa                                           ; $4eae: $27
    rst $38                                       ; $4eaf: $ff
    ld a, a                                       ; $4eb0: $7f
    and b                                         ; $4eb1: $a0
    nop                                           ; $4eb2: $00
    ld [hl], l                                    ; $4eb3: $75
    ld c, d                                       ; $4eb4: $4a
    ret z                                         ; $4eb5: $c8

    inc c                                         ; $4eb6: $0c
    rra                                           ; $4eb7: $1f
    ld c, e                                       ; $4eb8: $4b
    and [hl]                                      ; $4eb9: $a6
    ld [$7fff], sp                                ; $4eba: $08 $ff $7f
    adc h                                         ; $4ebd: $8c
    ld sp, $2dd3                                  ; $4ebe: $31 $d3 $2d
    ld h, l                                       ; $4ec1: $65
    ld [$4973], sp                                ; $4ec2: $08 $73 $49
    ld c, $25                                     ; $4ec5: $0e $25
    rst $38                                       ; $4ec7: $ff
    ld a, a                                       ; $4ec8: $7f
    xor b                                         ; $4ec9: $a8
    nop                                           ; $4eca: $00
    rst $30                                       ; $4ecb: $f7
    ld d, h                                       ; $4ecc: $54
    ld l, l                                       ; $4ecd: $6d
    ld de, $116f                                  ; $4ece: $11 $6f $11
    jp hl                                         ; $4ed1: $e9


    nop                                           ; $4ed2: $00
    rst $30                                       ; $4ed3: $f7
    ld d, h                                       ; $4ed4: $54
    or [hl]                                       ; $4ed5: $b6
    ld a, $df                                     ; $4ed6: $3e $df
    ld h, a                                       ; $4ed8: $67
    nop                                           ; $4ed9: $00
    nop                                           ; $4eda: $00
    rst $30                                       ; $4edb: $f7
    ld d, h                                       ; $4edc: $54
    rst $38                                       ; $4edd: $ff
    ld a, a                                       ; $4ede: $7f
    nop                                           ; $4edf: $00
    jr nz, jr_0b4_4f02                            ; $4ee0: $20 $20

    ld [$2769], sp                                ; $4ee2: $08 $69 $27
    ei                                            ; $4ee5: $fb
    ld l, a                                       ; $4ee6: $6f
    jr nz, jr_0b4_4eeb                            ; $4ee7: $20 $02

    and b                                         ; $4ee9: $a0
    nop                                           ; $4eea: $00

jr_0b4_4eeb:
    or [hl]                                       ; $4eeb: $b6
    dec a                                         ; $4eec: $3d
    rra                                           ; $4eed: $1f
    ld c, e                                       ; $4eee: $4b
    and a                                         ; $4eef: $a7
    inc b                                         ; $4ef0: $04
    add h                                         ; $4ef1: $84
    ld [$4e73], sp                                ; $4ef2: $08 $73 $4e
    rla                                           ; $4ef5: $17
    db $10                                        ; $4ef6: $10
    ld l, e                                       ; $4ef7: $6b
    dec l                                         ; $4ef8: $2d
    ld h, d                                       ; $4ef9: $62

jr_0b4_4efa:
    ld [$4211], sp                                ; $4efa: $08 $11 $42
    ld c, d                                       ; $4efd: $4a
    add hl, hl                                    ; $4efe: $29
    sub $5a                                       ; $4eff: $d6 $5a
    ld b, b                                       ; $4f01: $40

jr_0b4_4f02:
    nop                                           ; $4f02: $00
    or $54                                        ; $4f03: $f6 $54
    dec sp                                        ; $4f05: $3b
    ld d, e                                       ; $4f06: $53
    dec hl                                        ; $4f07: $2b
    add hl, bc                                    ; $4f08: $09
    ld h, b                                       ; $4f09: $60
    nop                                           ; $4f0a: $00
    or $54                                        ; $4f0b: $f6 $54
    ld a, [hl-]                                   ; $4f0d: $3a
    ld c, a                                       ; $4f0e: $4f
    ret z                                         ; $4f0f: $c8

    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    nop                                           ; $4f12: $00
    or $54                                        ; $4f13: $f6 $54
    rst $38                                       ; $4f15: $ff
    ld a, a                                       ; $4f16: $7f
    nop                                           ; $4f17: $00
    jr nz, jr_0b4_4f3a                            ; $4f18: $20 $20

    inc c                                         ; $4f1a: $0c
    rst $38                                       ; $4f1b: $ff
    ld a, a                                       ; $4f1c: $7f
    jr nz, jr_0b4_4f21                            ; $4f1d: $20 $02

    ld l, c                                       ; $4f1f: $69
    daa                                           ; $4f20: $27

jr_0b4_4f21:
    add b                                         ; $4f21: $80
    nop                                           ; $4f22: $00
    or $50                                        ; $4f23: $f6 $50
    and a                                         ; $4f25: $a7
    inc b                                         ; $4f26: $04
    ld h, b                                       ; $4f27: $60
    ld bc, $14a5                                  ; $4f28: $01 $a5 $14
    adc $39                                       ; $4f2b: $ce $39
    ld l, e                                       ; $4f2d: $6b
    dec l                                         ; $4f2e: $2d
    sub $5a                                       ; $4f2f: $d6 $5a
    add d                                         ; $4f31: $82
    ld [$3e8f], sp                                ; $4f32: $08 $8f $3e
    ld c, d                                       ; $4f35: $4a
    add hl, hl                                    ; $4f36: $29
    sub $5a                                       ; $4f37: $d6 $5a
    and d                                         ; $4f39: $a2

jr_0b4_4f3a:
    nop                                           ; $4f3a: $00
    inc [hl]                                      ; $4f3b: $34
    ld b, e                                       ; $4f3c: $43
    db $eb                                        ; $4f3d: $eb
    dec d                                         ; $4f3e: $15
    cp [hl]                                       ; $4f3f: $be
    ld h, e                                       ; $4f40: $63
    add h                                         ; $4f41: $84
    nop                                           ; $4f42: $00
    sub $50                                       ; $4f43: $d6 $50
    sbc $63                                       ; $4f45: $de $63
    ld l, l                                       ; $4f47: $6d
    ld de, $0000                                  ; $4f48: $11 $00 $00
    sub $50                                       ; $4f4b: $d6 $50
    rst $38                                       ; $4f4d: $ff
    ld a, a                                       ; $4f4e: $7f
    nop                                           ; $4f4f: $00
    jr nz, @+$42                                  ; $4f50: $20 $40

    nop                                           ; $4f52: $00
    ld l, c                                       ; $4f53: $69
    daa                                           ; $4f54: $27
    rst $38                                       ; $4f55: $ff
    ld a, a                                       ; $4f56: $7f
    nop                                           ; $4f57: $00
    jr nz, jr_0b4_4efa                            ; $4f58: $20 $a0

    nop                                           ; $4f5a: $00
    xor l                                         ; $4f5b: $ad
    dec [hl]                                      ; $4f5c: $35
    sub $50                                       ; $4f5d: $d6 $50
    ld hl, $a504                                  ; $4f5f: $21 $04 $a5
    inc d                                         ; $4f62: $14
    sub $5a                                       ; $4f63: $d6 $5a
    ld c, d                                       ; $4f65: $4a
    add hl, hl                                    ; $4f66: $29
    adc $39                                       ; $4f67: $ce $39
    and l                                         ; $4f69: $a5
    inc d                                         ; $4f6a: $14
    adc h                                         ; $4f6b: $8c
    ld sp, $56b5                                  ; $4f6c: $31 $b5 $56
    db $10                                        ; $4f6f: $10
    ld b, d                                       ; $4f70: $42
    ret nz                                        ; $4f71: $c0

    nop                                           ; $4f72: $00
    ld [hl], h                                    ; $4f73: $74
    ld [hl-], a                                   ; $4f74: $32
    ld a, [bc]                                    ; $4f75: $0a
    dec b                                         ; $4f76: $05
    ld a, h                                       ; $4f77: $7c
    ld d, a                                       ; $4f78: $57
    ld h, b                                       ; $4f79: $60
    nop                                           ; $4f7a: $00
    push de                                       ; $4f7b: $d5
    ld d, b                                       ; $4f7c: $50
    cp [hl]                                       ; $4f7d: $be
    ld e, a                                       ; $4f7e: $5f
    dec hl                                        ; $4f7f: $2b
    add hl, bc                                    ; $4f80: $09
    nop                                           ; $4f81: $00
    nop                                           ; $4f82: $00
    push de                                       ; $4f83: $d5
    ld d, b                                       ; $4f84: $50
    rst $38                                       ; $4f85: $ff
    ld a, a                                       ; $4f86: $7f
    nop                                           ; $4f87: $00
    jr nz, jr_0b4_4f8a                            ; $4f88: $20 $00

jr_0b4_4f8a:
    db $10                                        ; $4f8a: $10
    ld l, c                                       ; $4f8b: $69
    daa                                           ; $4f8c: $27
    rst $38                                       ; $4f8d: $ff
    ld a, a                                       ; $4f8e: $7f
    push de                                       ; $4f8f: $d5
    ld d, b                                       ; $4f90: $50
    jr nz, jr_0b4_4f93                            ; $4f91: $20 $00

jr_0b4_4f93:
    push de                                       ; $4f93: $d5
    ld c, h                                       ; $4f94: $4c
    jr nz, jr_0b4_4f99                            ; $4f95: $20 $02

    and b                                         ; $4f97: $a0
    nop                                           ; $4f98: $00

jr_0b4_4f99:
    ld h, b                                       ; $4f99: $60
    nop                                           ; $4f9a: $00
    ld l, c                                       ; $4f9b: $69
    daa                                           ; $4f9c: $27
    push af                                       ; $4f9d: $f5
    ld d, [hl]                                    ; $4f9e: $56
    add $18                                       ; $4f9f: $c6 $18
    nop                                           ; $4fa1: $00
    ld [bc], a                                    ; $4fa2: $02
    sub h                                         ; $4fa3: $94
    ld d, d                                       ; $4fa4: $52
    ld l, e                                       ; $4fa5: $6b
    dec l                                         ; $4fa6: $2d
    add $14                                       ; $4fa7: $c6 $14
    ld h, b                                       ; $4fa9: $60
    nop                                           ; $4faa: $00
    ld a, [hl-]                                   ; $4fab: $3a
    ld c, e                                       ; $4fac: $4b
    dec hl                                        ; $4fad: $2b
    add hl, bc                                    ; $4fae: $09
    jr nz, jr_0b4_4fb3                            ; $4faf: $20 $02

    ld h, b                                       ; $4fb1: $60
    nop                                           ; $4fb2: $00

jr_0b4_4fb3:
    or l                                          ; $4fb3: $b5
    ld c, h                                       ; $4fb4: $4c
    ld l, l                                       ; $4fb5: $6d
    ld de, $50d5                                  ; $4fb6: $11 $d5 $50
    nop                                           ; $4fb9: $00
    nop                                           ; $4fba: $00
    or l                                          ; $4fbb: $b5
    ld c, h                                       ; $4fbc: $4c
    rst $38                                       ; $4fbd: $ff
    ld a, a                                       ; $4fbe: $7f
    nop                                           ; $4fbf: $00
    jr nz, jr_0b4_4fc2                            ; $4fc0: $20 $00

jr_0b4_4fc2:
    nop                                           ; $4fc2: $00
    or l                                          ; $4fc3: $b5
    ld c, h                                       ; $4fc4: $4c
    rst $38                                       ; $4fc5: $ff
    ld a, a                                       ; $4fc6: $7f
    nop                                           ; $4fc7: $00
    jr nz, jr_0b4_502a                            ; $4fc8: $20 $60

    nop                                           ; $4fca: $00
    or l                                          ; $4fcb: $b5
    ld c, h                                       ; $4fcc: $4c
    ld l, c                                       ; $4fcd: $69
    daa                                           ; $4fce: $27
    jr nz, jr_0b4_4fd3                            ; $4fcf: $20 $02

    add b                                         ; $4fd1: $80
    nop                                           ; $4fd2: $00

jr_0b4_4fd3:
    ld l, c                                       ; $4fd3: $69
    daa                                           ; $4fd4: $27
    push af                                       ; $4fd5: $f5
    ld d, a                                       ; $4fd6: $57
    jr nz, jr_0b4_4fdb                            ; $4fd7: $20 $02

    and e                                         ; $4fd9: $a3
    inc c                                         ; $4fda: $0c

jr_0b4_4fdb:
    jp z, $9429                                   ; $4fdb: $ca $29 $94

    ld d, d                                       ; $4fde: $52
    jr nz, jr_0b4_4fe3                            ; $4fdf: $20 $02

    ld h, c                                       ; $4fe1: $61
    nop                                           ; $4fe2: $00

jr_0b4_4fe3:
    ld sp, hl                                     ; $4fe3: $f9
    ld b, d                                       ; $4fe4: $42
    ld l, d                                       ; $4fe5: $6a
    ld hl, $0220                                  ; $4fe6: $21 $20 $02
    ld h, b                                       ; $4fe9: $60
    nop                                           ; $4fea: $00
    or l                                          ; $4feb: $b5
    ld c, h                                       ; $4fec: $4c

jr_0b4_4fed:
    pop bc                                        ; $4fed: $c1
    ld b, b                                       ; $4fee: $40
    inc hl                                        ; $4fef: $23
    ld c, l                                       ; $4ff0: $4d
    nop                                           ; $4ff1: $00
    nop                                           ; $4ff2: $00

jr_0b4_4ff3:
    or l                                          ; $4ff3: $b5
    ld c, h                                       ; $4ff4: $4c
    rst $38                                       ; $4ff5: $ff
    ld a, a                                       ; $4ff6: $7f
    nop                                           ; $4ff7: $00

jr_0b4_4ff8:
    jr nz, jr_0b4_4ffa                            ; $4ff8: $20 $00

jr_0b4_4ffa:
    nop                                           ; $4ffa: $00
    or h                                          ; $4ffb: $b4
    ld c, h                                       ; $4ffc: $4c
    rst $38                                       ; $4ffd: $ff
    ld a, a                                       ; $4ffe: $7f
    nop                                           ; $4fff: $00
    jr nz, jr_0b4_5062                            ; $5000: $20 $60

    nop                                           ; $5002: $00
    adc d                                         ; $5003: $8a
    ld a, [hl+]                                   ; $5004: $2a
    or h                                          ; $5005: $b4
    ld c, h                                       ; $5006: $4c
    jr nz, jr_0b4_500b                            ; $5007: $20 $02

    jr nz, jr_0b4_500b                            ; $5009: $20 $00

jr_0b4_500b:
    push af                                       ; $500b: $f5
    ld d, a                                       ; $500c: $57
    jr nz, jr_0b4_5011                            ; $500d: $20 $02

    ret nz                                        ; $500f: $c0

    nop                                           ; $5010: $00

jr_0b4_5011:
    ld h, b                                       ; $5011: $60
    nop                                           ; $5012: $00
    and b                                         ; $5013: $a0
    ld e, b                                       ; $5014: $58
    and a                                         ; $5015: $a7
    ld [$1460], sp                                ; $5016: $08 $60 $14
    ld h, e                                       ; $5019: $63
    nop                                           ; $501a: $00
    ld h, h                                       ; $501b: $64
    ld d, l                                       ; $501c: $55
    sub b                                         ; $501d: $90
    dec e                                         ; $501e: $1d
    or [hl]                                       ; $501f: $b6
    ld [hl], $60                                  ; $5020: $36 $60
    nop                                           ; $5022: $00
    or h                                          ; $5023: $b4
    ld c, h                                       ; $5024: $4c
    pop bc                                        ; $5025: $c1
    ld b, h                                       ; $5026: $44
    and l                                         ; $5027: $a5
    ld e, l                                       ; $5028: $5d
    nop                                           ; $5029: $00

jr_0b4_502a:
    nop                                           ; $502a: $00
    rst $38                                       ; $502b: $ff
    ld a, a                                       ; $502c: $7f
    or h                                          ; $502d: $b4
    ld c, h                                       ; $502e: $4c
    nop                                           ; $502f: $00
    jr nz, jr_0b4_5032                            ; $5030: $20 $00

jr_0b4_5032:
    nop                                           ; $5032: $00
    rst $38                                       ; $5033: $ff
    ld a, a                                       ; $5034: $7f
    nop                                           ; $5035: $00
    jr nz, jr_0b4_4ff8                            ; $5036: $20 $c0

    nop                                           ; $5038: $00
    add c                                         ; $5039: $81
    inc b                                         ; $503a: $04
    sub h                                         ; $503b: $94
    ld c, b                                       ; $503c: $48
    push af                                       ; $503d: $f5
    ld d, a                                       ; $503e: $57
    jr nz, jr_0b4_5043                            ; $503f: $20 $02

    jr nz, jr_0b4_5043                            ; $5041: $20 $00

jr_0b4_5043:
    ld l, c                                       ; $5043: $69
    daa                                           ; $5044: $27
    call nc, $8353                                ; $5045: $d4 $53 $83
    add hl, bc                                    ; $5048: $09
    ld h, b                                       ; $5049: $60
    nop                                           ; $504a: $00
    add b                                         ; $504b: $80
    ld c, h                                       ; $504c: $4c
    ld h, d                                       ; $504d: $62
    ld e, l                                       ; $504e: $5d
    and l                                         ; $504f: $a5
    ld h, c                                       ; $5050: $61
    add [hl]                                      ; $5051: $86
    nop                                           ; $5052: $00
    db $d3                                        ; $5053: $d3
    dec l                                         ; $5054: $2d
    and b                                         ; $5055: $a0
    inc a                                         ; $5056: $3c
    call c, Call_0b4_6042                         ; $5057: $dc $42 $60
    nop                                           ; $505a: $00
    pop hl                                        ; $505b: $e1
    ld b, b                                       ; $505c: $40

jr_0b4_505d:
    or h                                          ; $505d: $b4
    ld c, h                                       ; $505e: $4c
    add l                                         ; $505f: $85
    ld e, l                                       ; $5060: $5d
    nop                                           ; $5061: $00

jr_0b4_5062:
    nop                                           ; $5062: $00
    rst $38                                       ; $5063: $ff
    ld a, a                                       ; $5064: $7f
    nop                                           ; $5065: $00
    jr nz, jr_0b4_4fed                            ; $5066: $20 $85

jr_0b4_5068:
    ld e, l                                       ; $5068: $5d
    nop                                           ; $5069: $00
    nop                                           ; $506a: $00
    rst $38                                       ; $506b: $ff
    ld a, a                                       ; $506c: $7f
    nop                                           ; $506d: $00
    jr nz, jr_0b4_4ff3                            ; $506e: $20 $83

    add hl, bc                                    ; $5070: $09
    ldh [rP1], a                                  ; $5071: $e0 $00
    sub h                                         ; $5073: $94
    ld c, b                                       ; $5074: $48
    ld l, c                                       ; $5075: $69
    daa                                           ; $5076: $27
    push af                                       ; $5077: $f5
    ld d, a                                       ; $5078: $57
    jr nz, jr_0b4_507b                            ; $5079: $20 $00

jr_0b4_507b:
    inc h                                         ; $507b: $24
    ld [de], a                                    ; $507c: $12
    ld l, c                                       ; $507d: $69
    daa                                           ; $507e: $27
    ret nz                                        ; $507f: $c0

    nop                                           ; $5080: $00

jr_0b4_5081:
    jr nz, jr_0b4_5083                            ; $5081: $20 $00

jr_0b4_5083:
    and b                                         ; $5083: $a0
    ld b, b                                       ; $5084: $40
    ld hl, $a55d                                  ; $5085: $21 $5d $a5
    ld e, l                                       ; $5088: $5d
    ld h, b                                       ; $5089: $60
    nop                                           ; $508a: $00
    dec d                                         ; $508b: $15
    ld l, $1f                                     ; $508c: $2e $1f
    ld c, e                                       ; $508e: $4b
    xor c                                         ; $508f: $a9
    nop                                           ; $5090: $00
    jr nz, jr_0b4_5093                            ; $5091: $20 $00

jr_0b4_5093:
    add b                                         ; $5093: $80
    inc [hl]                                      ; $5094: $34
    add l                                         ; $5095: $85
    ld e, l                                       ; $5096: $5d
    pop hl                                        ; $5097: $e1
    ld b, h                                       ; $5098: $44
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    rst $38                                       ; $509b: $ff
    ld a, a                                       ; $509c: $7f
    nop                                           ; $509d: $00
    jr nz, jr_0b4_5081                            ; $509e: $20 $e1

jr_0b4_50a0:
    ld b, h                                       ; $50a0: $44
    nop                                           ; $50a1: $00
    nop                                           ; $50a2: $00
    rst $38                                       ; $50a3: $ff
    ld a, a                                       ; $50a4: $7f
    nop                                           ; $50a5: $00
    jr nz, jr_0b4_5068                            ; $50a6: $20 $c0

    nop                                           ; $50a8: $00
    ld b, b                                       ; $50a9: $40
    nop                                           ; $50aa: $00
    ld b, [hl]                                    ; $50ab: $46
    ld a, [de]                                    ; $50ac: $1a
    ld l, c                                       ; $50ad: $69
    daa                                           ; $50ae: $27
    ldh [rP1], a                                  ; $50af: $e0 $00
    jr nz, jr_0b4_50b3                            ; $50b1: $20 $00

jr_0b4_50b3:
    inc h                                         ; $50b3: $24
    ld [de], a                                    ; $50b4: $12
    ld l, c                                       ; $50b5: $69
    daa                                           ; $50b6: $27
    ret nz                                        ; $50b7: $c0

    nop                                           ; $50b8: $00
    ld b, b                                       ; $50b9: $40
    nop                                           ; $50ba: $00
    add b                                         ; $50bb: $80
    jr c, @-$7a                                   ; $50bc: $38 $84

    ld e, l                                       ; $50be: $5d
    jp Jump_0b4_600d                              ; $50bf: $c3 $0d $60


    nop                                           ; $50c2: $00
    call c, Call_000_0c42                         ; $50c3: $dc $42 $0c
    add hl, bc                                    ; $50c6: $09
    add b                                         ; $50c7: $80
    jr nc, jr_0b4_510a                            ; $50c8: $30 $40

    nop                                           ; $50ca: $00
    ld [c], a                                     ; $50cb: $e2
    ld b, h                                       ; $50cc: $44
    rst $38                                       ; $50cd: $ff
    ld a, a                                       ; $50ce: $7f
    add l                                         ; $50cf: $85
    ld e, c                                       ; $50d0: $59
    nop                                           ; $50d1: $00
    nop                                           ; $50d2: $00
    rst $38                                       ; $50d3: $ff
    ld a, a                                       ; $50d4: $7f
    nop                                           ; $50d5: $00
    jr nz, jr_0b4_505d                            ; $50d6: $20 $85

    ld e, c                                       ; $50d8: $59

jr_0b4_50d9:
    nop                                           ; $50d9: $00
    nop                                           ; $50da: $00
    rst $38                                       ; $50db: $ff
    ld a, a                                       ; $50dc: $7f
    nop                                           ; $50dd: $00
    jr nz, jr_0b4_50a0                            ; $50de: $20 $c0

    nop                                           ; $50e0: $00
    jr nz, jr_0b4_50e3                            ; $50e1: $20 $00

jr_0b4_50e3:
    ld c, b                                       ; $50e3: $48
    inc hl                                        ; $50e4: $23
    rst $38                                       ; $50e5: $ff
    ld a, a                                       ; $50e6: $7f

jr_0b4_50e7:
    ld b, c                                       ; $50e7: $41
    dec b                                         ; $50e8: $05
    add b                                         ; $50e9: $80
    nop                                           ; $50ea: $00
    inc h                                         ; $50eb: $24
    ld [de], a                                    ; $50ec: $12
    push af                                       ; $50ed: $f5
    ld d, a                                       ; $50ee: $57
    jr z, jr_0b4_5114                             ; $50ef: $28 $23

    ld h, b                                       ; $50f1: $60
    nop                                           ; $50f2: $00
    add b                                         ; $50f3: $80
    jr c, jr_0b4_50d9                             ; $50f4: $38 $e3

    dec c                                         ; $50f6: $0d
    and l                                         ; $50f7: $a5
    ld e, l                                       ; $50f8: $5d
    ld h, b                                       ; $50f9: $60
    nop                                           ; $50fa: $00
    ld a, h                                       ; $50fb: $7c
    ld d, a                                       ; $50fc: $57
    ret nz                                        ; $50fd: $c0

    ld d, h                                       ; $50fe: $54
    ret                                           ; $50ff: $c9


    nop                                           ; $5100: $00
    ld b, b                                       ; $5101: $40
    nop                                           ; $5102: $00
    rst $38                                       ; $5103: $ff
    ld a, a                                       ; $5104: $7f
    ld b, e                                       ; $5105: $43
    ld c, l                                       ; $5106: $4d
    and l                                         ; $5107: $a5
    ld e, l                                       ; $5108: $5d
    nop                                           ; $5109: $00

jr_0b4_510a:
    nop                                           ; $510a: $00

jr_0b4_510b:
    nop                                           ; $510b: $00
    jr nz, @+$45                                  ; $510c: $20 $43

    ld c, l                                       ; $510e: $4d
    and l                                         ; $510f: $a5
    ld e, l                                       ; $5110: $5d
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00

jr_0b4_5114:
    jr nz, jr_0b4_510b                            ; $5114: $20 $f5

    ld d, a                                       ; $5116: $57
    jr z, jr_0b4_513c                             ; $5117: $28 $23

    ld h, b                                       ; $5119: $60
    nop                                           ; $511a: $00
    add $1a                                       ; $511b: $c6 $1a
    rst $38                                       ; $511d: $ff
    ld a, a                                       ; $511e: $7f
    ld l, c                                       ; $511f: $69
    daa                                           ; $5120: $27
    add b                                         ; $5121: $80
    nop                                           ; $5122: $00
    ld c, b                                       ; $5123: $48
    inc hl                                        ; $5124: $23
    push af                                       ; $5125: $f5
    ld d, a                                       ; $5126: $57
    inc bc                                        ; $5127: $03
    ld c, $60                                     ; $5128: $0e $60
    nop                                           ; $512a: $00
    and b                                         ; $512b: $a0
    ld b, b                                       ; $512c: $40
    db $e3                                        ; $512d: $e3
    dec c                                         ; $512e: $0d
    and h                                         ; $512f: $a4
    ld h, c                                       ; $5130: $61
    ld h, b                                       ; $5131: $60
    nop                                           ; $5132: $00
    ld a, h                                       ; $5133: $7c
    ld d, a                                       ; $5134: $57
    ret nz                                        ; $5135: $c0

    ld e, b                                       ; $5136: $58
    ld a, [bc]                                    ; $5137: $0a
    add hl, bc                                    ; $5138: $09
    ld b, b                                       ; $5139: $40
    nop                                           ; $513a: $00
    rst $38                                       ; $513b: $ff

jr_0b4_513c:
    ld a, a                                       ; $513c: $7f
    and c                                         ; $513d: $a1
    jr c, jr_0b4_51a4                             ; $513e: $38 $64

    ld d, l                                       ; $5140: $55
    nop                                           ; $5141: $00
    nop                                           ; $5142: $00

jr_0b4_5143:
    nop                                           ; $5143: $00
    jr nz, jr_0b4_50e7                            ; $5144: $20 $a1

    jr c, jr_0b4_51ac                             ; $5146: $38 $64

    ld d, l                                       ; $5148: $55
    nop                                           ; $5149: $00
    nop                                           ; $514a: $00
    nop                                           ; $514b: $00
    jr nz, jr_0b4_5143                            ; $514c: $20 $f5

    ld d, a                                       ; $514e: $57
    inc bc                                        ; $514f: $03
    ld c, $00                                     ; $5150: $0e $00
    nop                                           ; $5152: $00
    push af                                       ; $5153: $f5
    ld d, a                                       ; $5154: $57
    ld c, b                                       ; $5155: $48
    inc hl                                        ; $5156: $23
    rst $38                                       ; $5157: $ff
    ld a, a                                       ; $5158: $7f
    ld b, l                                       ; $5159: $45
    ld d, $f5                                     ; $515a: $16 $f5
    ld d, a                                       ; $515c: $57
    rst $20                                       ; $515d: $e7
    ld e, $68                                     ; $515e: $1e $68
    daa                                           ; $5160: $27
    add b                                         ; $5161: $80
    nop                                           ; $5162: $00
    ret nz                                        ; $5163: $c0

    ld d, b                                       ; $5164: $50
    inc h                                         ; $5165: $24
    ld [de], a                                    ; $5166: $12
    push bc                                       ; $5167: $c5
    ld h, c                                       ; $5168: $61
    ld h, b                                       ; $5169: $60
    nop                                           ; $516a: $00
    ld a, h                                       ; $516b: $7c
    ld d, a                                       ; $516c: $57
    and b                                         ; $516d: $a0
    ld c, b                                       ; $516e: $48
    ld a, [bc]                                    ; $516f: $0a
    add hl, bc                                    ; $5170: $09
    ld b, b                                       ; $5171: $40
    inc b                                         ; $5172: $04
    rst $38                                       ; $5173: $ff
    ld a, a                                       ; $5174: $7f
    pop hl                                        ; $5175: $e1
    ld b, h                                       ; $5176: $44
    add l                                         ; $5177: $85
    ld e, c                                       ; $5178: $59

jr_0b4_5179:
    nop                                           ; $5179: $00
    jr nz, @+$01                                  ; $517a: $20 $ff

    ld a, a                                       ; $517c: $7f
    pop hl                                        ; $517d: $e1
    ld b, h                                       ; $517e: $44
    add l                                         ; $517f: $85
    ld e, c                                       ; $5180: $59
    nop                                           ; $5181: $00
    jr nz, jr_0b4_5179                            ; $5182: $20 $f5

    ld d, a                                       ; $5184: $57
    rst $20                                       ; $5185: $e7
    ld e, $68                                     ; $5186: $1e $68
    daa                                           ; $5188: $27
    nop                                           ; $5189: $00
    nop                                           ; $518a: $00
    rst $38                                       ; $518b: $ff
    ld a, a                                       ; $518c: $7f
    ld h, l                                       ; $518d: $65
    ld d, $48                                     ; $518e: $16 $48
    inc hl                                        ; $5190: $23
    inc h                                         ; $5191: $24
    ld [de], a                                    ; $5192: $12
    ld c, b                                       ; $5193: $48
    inc hl                                        ; $5194: $23
    ld h, l                                       ; $5195: $65
    ld d, $69                                     ; $5196: $16 $69
    daa                                           ; $5198: $27
    ld h, b                                       ; $5199: $60
    nop                                           ; $519a: $00
    add b                                         ; $519b: $80
    inc a                                         ; $519c: $3c
    add h                                         ; $519d: $84
    ld h, c                                       ; $519e: $61
    pop hl                                        ; $519f: $e1
    ld e, h                                       ; $51a0: $5c
    ld h, b                                       ; $51a1: $60
    nop                                           ; $51a2: $00
    ld a, h                                       ; $51a3: $7c

jr_0b4_51a4:
    ld d, a                                       ; $51a4: $57
    ld l, l                                       ; $51a5: $6d
    ld de, $2080                                  ; $51a6: $11 $80 $20
    jr nz, jr_0b4_51b7                            ; $51a9: $20 $0c

    rst $38                                       ; $51ab: $ff

jr_0b4_51ac:
    ld a, a                                       ; $51ac: $7f
    and c                                         ; $51ad: $a1
    inc a                                         ; $51ae: $3c
    add l                                         ; $51af: $85
    ld e, c                                       ; $51b0: $59
    nop                                           ; $51b1: $00
    jr nz, @+$01                                  ; $51b2: $20 $ff

    ld a, a                                       ; $51b4: $7f
    and c                                         ; $51b5: $a1
    inc a                                         ; $51b6: $3c

jr_0b4_51b7:
    add l                                         ; $51b7: $85
    ld e, c                                       ; $51b8: $59
    nop                                           ; $51b9: $00
    jr nz, @+$4a                                  ; $51ba: $20 $48

    inc hl                                        ; $51bc: $23
    ld h, l                                       ; $51bd: $65
    ld d, $69                                     ; $51be: $16 $69
    daa                                           ; $51c0: $27
    nop                                           ; $51c1: $00
    ld [$1224], sp                                ; $51c2: $08 $24 $12
    rst $38                                       ; $51c5: $ff
    ld a, a                                       ; $51c6: $7f
    jr z, jr_0b4_51ec                             ; $51c7: $28 $23

    ld b, b                                       ; $51c9: $40
    nop                                           ; $51ca: $00
    inc h                                         ; $51cb: $24

jr_0b4_51cc:
    ld [de], a                                    ; $51cc: $12
    ld l, c                                       ; $51cd: $69
    daa                                           ; $51ce: $27
    nop                                           ; $51cf: $00
    ld bc, $0060                                  ; $51d0: $01 $60 $00
    and b                                         ; $51d3: $a0

jr_0b4_51d4:
    ld b, h                                       ; $51d4: $44
    ld h, e                                       ; $51d5: $63
    ld h, c                                       ; $51d6: $61
    ld h, b                                       ; $51d7: $60
    jr nc, jr_0b4_523a                            ; $51d8: $30 $60

    nop                                           ; $51da: $00
    ld a, [hl-]                                   ; $51db: $3a

jr_0b4_51dc:
    ld c, a                                       ; $51dc: $4f
    add b                                         ; $51dd: $80
    inc [hl]                                      ; $51de: $34
    and b                                         ; $51df: $a0
    ld c, h                                       ; $51e0: $4c
    nop                                           ; $51e1: $00
    ld [$7fff], sp                                ; $51e2: $08 $ff $7f
    pop hl                                        ; $51e5: $e1
    ld c, b                                       ; $51e6: $48
    add h                                         ; $51e7: $84
    ld e, c                                       ; $51e8: $59
    nop                                           ; $51e9: $00
    jr nz, @+$01                                  ; $51ea: $20 $ff

jr_0b4_51ec:
    ld a, a                                       ; $51ec: $7f
    pop hl                                        ; $51ed: $e1
    ld c, b                                       ; $51ee: $48
    add h                                         ; $51ef: $84
    ld e, c                                       ; $51f0: $59
    nop                                           ; $51f1: $00
    jr nz, jr_0b4_5218                            ; $51f2: $20 $24

    ld [de], a                                    ; $51f4: $12
    ld l, c                                       ; $51f5: $69
    daa                                           ; $51f6: $27
    nop                                           ; $51f7: $00
    ld bc, $0000                                  ; $51f8: $01 $00 $00
    rst $38                                       ; $51fb: $ff
    ld a, a                                       ; $51fc: $7f
    db $e3                                        ; $51fd: $e3
    dec c                                         ; $51fe: $0d
    nop                                           ; $51ff: $00
    jr nz, jr_0b4_5202                            ; $5200: $20 $00

jr_0b4_5202:
    nop                                           ; $5202: $00
    ld hl, $6005                                  ; $5203: $21 $05 $60
    nop                                           ; $5206: $00
    db $e3                                        ; $5207: $e3
    dec c                                         ; $5208: $0d
    nop                                           ; $5209: $00
    nop                                           ; $520a: $00
    rst $38                                       ; $520b: $ff
    ld a, a                                       ; $520c: $7f
    pop hl                                        ; $520d: $e1
    ld c, b                                       ; $520e: $48
    add h                                         ; $520f: $84

Jump_0b4_5210:
    ld e, c                                       ; $5210: $59
    nop                                           ; $5211: $00
    nop                                           ; $5212: $00
    rst $38                                       ; $5213: $ff
    ld a, a                                       ; $5214: $7f
    pop hl                                        ; $5215: $e1
    ld c, b                                       ; $5216: $48
    add h                                         ; $5217: $84

jr_0b4_5218:
    ld e, c                                       ; $5218: $59
    nop                                           ; $5219: $00
    nop                                           ; $521a: $00

jr_0b4_521b:
    rst $38                                       ; $521b: $ff
    ld a, a                                       ; $521c: $7f
    nop                                           ; $521d: $00
    jr nz, jr_0b4_51a4                            ; $521e: $20 $84

jr_0b4_5220:
    ld e, c                                       ; $5220: $59
    nop                                           ; $5221: $00
    jr nz, @+$01                                  ; $5222: $20 $ff

    ld a, a                                       ; $5224: $7f
    nop                                           ; $5225: $00
    jr nz, jr_0b4_51ac                            ; $5226: $20 $84

jr_0b4_5228:
    ld e, c                                       ; $5228: $59
    nop                                           ; $5229: $00
    jr nz, @+$23                                  ; $522a: $20 $21

    dec b                                         ; $522c: $05
    ld h, b                                       ; $522d: $60
    nop                                           ; $522e: $00
    db $e3                                        ; $522f: $e3

jr_0b4_5230:
    dec c                                         ; $5230: $0d
    nop                                           ; $5231: $00
    nop                                           ; $5232: $00
    rst $38                                       ; $5233: $ff
    ld a, a                                       ; $5234: $7f
    nop                                           ; $5235: $00
    jr nz, jr_0b4_521b                            ; $5236: $20 $e3

    dec c                                         ; $5238: $0d
    nop                                           ; $5239: $00

jr_0b4_523a:
    nop                                           ; $523a: $00
    rst $38                                       ; $523b: $ff
    ld a, a                                       ; $523c: $7f
    nop                                           ; $523d: $00
    jr nz, @-$1b                                  ; $523e: $20 $e3

    dec c                                         ; $5240: $0d
    nop                                           ; $5241: $00
    nop                                           ; $5242: $00
    nop                                           ; $5243: $00
    jr nz, jr_0b4_5246                            ; $5244: $20 $00

jr_0b4_5246:
    jr nz, jr_0b4_51cc                            ; $5246: $20 $84

    ld e, c                                       ; $5248: $59
    nop                                           ; $5249: $00
    nop                                           ; $524a: $00
    nop                                           ; $524b: $00
    jr nz, jr_0b4_524e                            ; $524c: $20 $00

jr_0b4_524e:
    jr nz, jr_0b4_51d4                            ; $524e: $20 $84

    ld e, c                                       ; $5250: $59
    nop                                           ; $5251: $00
    nop                                           ; $5252: $00
    nop                                           ; $5253: $00
    jr nz, jr_0b4_5256                            ; $5254: $20 $00

jr_0b4_5256:
    jr nz, jr_0b4_51dc                            ; $5256: $20 $84

jr_0b4_5258:
    ld e, c                                       ; $5258: $59
    nop                                           ; $5259: $00
    jr nz, jr_0b4_525c                            ; $525a: $20 $00

jr_0b4_525c:
    jr nz, jr_0b4_525e                            ; $525c: $20 $00

jr_0b4_525e:
    jr nz, @-$7a                                  ; $525e: $20 $84

jr_0b4_5260:
    ld e, c                                       ; $5260: $59
    nop                                           ; $5261: $00
    jr nz, jr_0b4_5264                            ; $5262: $20 $00

jr_0b4_5264:
    jr nz, jr_0b4_5266                            ; $5264: $20 $00

jr_0b4_5266:
    jr nz, jr_0b4_5220                            ; $5266: $20 $b8

jr_0b4_5268:
    ld l, c                                       ; $5268: $69
    nop                                           ; $5269: $00
    jr nz, jr_0b4_526c                            ; $526a: $20 $00

jr_0b4_526c:
    jr nz, jr_0b4_526e                            ; $526c: $20 $00

jr_0b4_526e:
    jr nz, jr_0b4_5228                            ; $526e: $20 $b8

    ld l, c                                       ; $5270: $69
    nop                                           ; $5271: $00
    jr nz, jr_0b4_5274                            ; $5272: $20 $00

jr_0b4_5274:
    jr nz, jr_0b4_5276                            ; $5274: $20 $00

jr_0b4_5276:
    jr nz, jr_0b4_5230                            ; $5276: $20 $b8

    ld l, c                                       ; $5278: $69
    nop                                           ; $5279: $00
    nop                                           ; $527a: $00
    rst $38                                       ; $527b: $ff
    ld a, a                                       ; $527c: $7f
    nop                                           ; $527d: $00
    jr nz, jr_0b4_5280                            ; $527e: $20 $00

jr_0b4_5280:
    jr nz, jr_0b4_5282                            ; $5280: $20 $00

jr_0b4_5282:
    jr nz, @+$01                                  ; $5282: $20 $ff

    ld a, a                                       ; $5284: $7f
    nop                                           ; $5285: $00
    jr nz, jr_0b4_5288                            ; $5286: $20 $00

jr_0b4_5288:
    jr nz, jr_0b4_528a                            ; $5288: $20 $00

jr_0b4_528a:
    jr nz, @+$01                                  ; $528a: $20 $ff

    ld a, a                                       ; $528c: $7f
    nop                                           ; $528d: $00
    jr nz, jr_0b4_5290                            ; $528e: $20 $00

jr_0b4_5290:
    jr nz, jr_0b4_5292                            ; $5290: $20 $00

jr_0b4_5292:
    jr nz, @+$01                                  ; $5292: $20 $ff

    ld a, a                                       ; $5294: $7f
    nop                                           ; $5295: $00
    jr nz, jr_0b4_5298                            ; $5296: $20 $00

jr_0b4_5298:
    jr nz, jr_0b4_529a                            ; $5298: $20 $00

jr_0b4_529a:
    jr nz, jr_0b4_529c                            ; $529a: $20 $00

jr_0b4_529c:
    jr nz, jr_0b4_529e                            ; $529c: $20 $00

jr_0b4_529e:
    jr nz, jr_0b4_5258                            ; $529e: $20 $b8

jr_0b4_52a0:
    ld l, c                                       ; $52a0: $69
    nop                                           ; $52a1: $00
    jr nz, jr_0b4_52a4                            ; $52a2: $20 $00

jr_0b4_52a4:
    jr nz, jr_0b4_52a6                            ; $52a4: $20 $00

jr_0b4_52a6:
    jr nz, jr_0b4_5260                            ; $52a6: $20 $b8

    ld l, c                                       ; $52a8: $69
    nop                                           ; $52a9: $00
    jr nz, jr_0b4_52ac                            ; $52aa: $20 $00

jr_0b4_52ac:
    jr nz, jr_0b4_52ae                            ; $52ac: $20 $00

jr_0b4_52ae:
    jr nz, jr_0b4_5268                            ; $52ae: $20 $b8

    ld l, c                                       ; $52b0: $69
    nop                                           ; $52b1: $00
    nop                                           ; $52b2: $00
    rst $38                                       ; $52b3: $ff
    ld a, a                                       ; $52b4: $7f
    nop                                           ; $52b5: $00
    jr nz, jr_0b4_52b8                            ; $52b6: $20 $00

jr_0b4_52b8:
    jr nz, jr_0b4_52ba                            ; $52b8: $20 $00

jr_0b4_52ba:
    nop                                           ; $52ba: $00
    nop                                           ; $52bb: $00
    jr nz, jr_0b4_52be                            ; $52bc: $20 $00

jr_0b4_52be:
    jr nz, jr_0b4_52c0                            ; $52be: $20 $00

jr_0b4_52c0:
    jr nz, jr_0b4_52c2                            ; $52c0: $20 $00

jr_0b4_52c2:
    jr nz, jr_0b4_52c4                            ; $52c2: $20 $00

jr_0b4_52c4:
    jr nz, jr_0b4_52c6                            ; $52c4: $20 $00

jr_0b4_52c6:
    jr nz, jr_0b4_52c8                            ; $52c6: $20 $00

jr_0b4_52c8:
    jr nz, jr_0b4_52ca                            ; $52c8: $20 $00

jr_0b4_52ca:
    jr nz, jr_0b4_52cc                            ; $52ca: $20 $00

jr_0b4_52cc:
    jr nz, jr_0b4_52ce                            ; $52cc: $20 $00

jr_0b4_52ce:
    jr nz, jr_0b4_52d0                            ; $52ce: $20 $00

jr_0b4_52d0:
    jr nz, jr_0b4_52d2                            ; $52d0: $20 $00

jr_0b4_52d2:
    jr nz, jr_0b4_52d4                            ; $52d2: $20 $00

jr_0b4_52d4:
    jr nz, jr_0b4_52d6                            ; $52d4: $20 $00

jr_0b4_52d6:
    jr nz, jr_0b4_5290                            ; $52d6: $20 $b8

    ld l, c                                       ; $52d8: $69

jr_0b4_52d9:
    nop                                           ; $52d9: $00
    jr nz, jr_0b4_52dc                            ; $52da: $20 $00

jr_0b4_52dc:
    jr nz, jr_0b4_52de                            ; $52dc: $20 $00

jr_0b4_52de:
    jr nz, jr_0b4_5298                            ; $52de: $20 $b8

    ld l, c                                       ; $52e0: $69
    nop                                           ; $52e1: $00
    nop                                           ; $52e2: $00
    rst $38                                       ; $52e3: $ff
    ld a, a                                       ; $52e4: $7f
    nop                                           ; $52e5: $00
    jr nz, jr_0b4_52a0                            ; $52e6: $20 $b8

    ld l, c                                       ; $52e8: $69
    nop                                           ; $52e9: $00
    nop                                           ; $52ea: $00
    rst $38                                       ; $52eb: $ff
    ld a, a                                       ; $52ec: $7f
    daa                                           ; $52ed: $27
    ld a, [bc]                                    ; $52ee: $0a
    nop                                           ; $52ef: $00
    jr nz, jr_0b4_52f2                            ; $52f0: $20 $00

jr_0b4_52f2:
    nop                                           ; $52f2: $00
    rst $38                                       ; $52f3: $ff
    ld a, a                                       ; $52f4: $7f
    nop                                           ; $52f5: $00
    jr nz, jr_0b4_52f8                            ; $52f6: $20 $00

jr_0b4_52f8:
    jr nz, jr_0b4_52fa                            ; $52f8: $20 $00

jr_0b4_52fa:
    jr nz, @+$01                                  ; $52fa: $20 $ff

    ld a, a                                       ; $52fc: $7f
    nop                                           ; $52fd: $00
    jr nz, jr_0b4_5300                            ; $52fe: $20 $00

jr_0b4_5300:
    jr nz, jr_0b4_5302                            ; $5300: $20 $00

jr_0b4_5302:
    jr nz, @+$01                                  ; $5302: $20 $ff

    ld a, a                                       ; $5304: $7f
    nop                                           ; $5305: $00
    jr nz, jr_0b4_5308                            ; $5306: $20 $00

jr_0b4_5308:
    jr nz, jr_0b4_530a                            ; $5308: $20 $00

jr_0b4_530a:
    jr nz, @+$01                                  ; $530a: $20 $ff

    ld a, a                                       ; $530c: $7f
    nop                                           ; $530d: $00
    jr nz, jr_0b4_52c8                            ; $530e: $20 $b8

    ld l, c                                       ; $5310: $69
    nop                                           ; $5311: $00
    jr nz, @+$07                                  ; $5312: $20 $05

    inc d                                         ; $5314: $14
    ld [$0924], sp                                ; $5315: $08 $24 $09
    jr z, jr_0b4_531f                             ; $5318: $28 $05

    inc d                                         ; $531a: $14
    sub l                                         ; $531b: $95
    ld d, l                                       ; $531c: $55
    ld a, l                                       ; $531d: $7d
    ld a, d                                       ; $531e: $7a

jr_0b4_531f:
    xor [hl]                                      ; $531f: $ae
    jr c, @+$07                                   ; $5320: $38 $05

    inc d                                         ; $5322: $14
    ld [hl], h                                    ; $5323: $74
    ld d, c                                       ; $5324: $51
    rlca                                          ; $5325: $07
    ld b, $06                                     ; $5326: $06 $06
    ld de, $0000                                  ; $5328: $11 $00 $00
    rst $38                                       ; $532b: $ff
    ld a, a                                       ; $532c: $7f
    rst $20                                       ; $532d: $e7
    nop                                           ; $532e: $00
    nop                                           ; $532f: $00
    jr nz, jr_0b4_5332                            ; $5330: $20 $00

jr_0b4_5332:
    jr nz, @+$01                                  ; $5332: $20 $ff

    ld a, a                                       ; $5334: $7f
    rst $20                                       ; $5335: $e7
    nop                                           ; $5336: $00
    nop                                           ; $5337: $00
    jr nz, jr_0b4_533a                            ; $5338: $20 $00

jr_0b4_533a:
    jr nz, @+$01                                  ; $533a: $20 $ff

    ld a, a                                       ; $533c: $7f
    rst $20                                       ; $533d: $e7
    nop                                           ; $533e: $00
    nop                                           ; $533f: $00
    jr nz, jr_0b4_5342                            ; $5340: $20 $00

jr_0b4_5342:
    jr nz, jr_0b4_52d9                            ; $5342: $20 $95

    ld d, l                                       ; $5344: $55
    ld a, l                                       ; $5345: $7d
    ld a, d                                       ; $5346: $7a
    xor [hl]                                      ; $5347: $ae
    jr c, jr_0b4_534a                             ; $5348: $38 $00

jr_0b4_534a:
    jr nz, jr_0b4_5387                            ; $534a: $20 $3b

    ld l, [hl]                                    ; $534c: $6e
    add hl, bc                                    ; $534d: $09
    inc l                                         ; $534e: $2c
    dec b                                         ; $534f: $05
    inc d                                         ; $5350: $14
    add a                                         ; $5351: $87
    inc c                                         ; $5352: $0c

jr_0b4_5353:
    ld e, b                                       ; $5353: $58
    ld l, l                                       ; $5354: $6d
    ld [hl-], a                                   ; $5355: $32
    ld c, $9d                                     ; $5356: $0e $9d
    halt                                          ; $5358: $76
    ld b, $1c                                     ; $5359: $06 $1c

jr_0b4_535b:
    ld [hl], h                                    ; $535b: $74
    ld d, c                                       ; $535c: $51
    sbc l                                         ; $535d: $9d
    ld a, d                                       ; $535e: $7a
    jr z, jr_0b4_5366                             ; $535f: $28 $05

    rst $20                                       ; $5361: $e7
    nop                                           ; $5362: $00
    ld e, d                                       ; $5363: $5a
    inc bc                                        ; $5364: $03
    adc l                                         ; $5365: $8d

jr_0b4_5366:
    ld bc, $01ce                                  ; $5366: $01 $ce $01
    nop                                           ; $5369: $00
    jr nz, jr_0b4_5353                            ; $536a: $20 $e7

    nop                                           ; $536c: $00
    ld l, e                                       ; $536d: $6b
    ld bc, $01ce                                  ; $536e: $01 $ce $01
    nop                                           ; $5371: $00
    jr nz, jr_0b4_535b                            ; $5372: $20 $e7

    nop                                           ; $5374: $00
    ld l, e                                       ; $5375: $6b
    ld bc, $01ce                                  ; $5376: $01 $ce $01
    nop                                           ; $5379: $00
    jr nz, jr_0b4_53d4                            ; $537a: $20 $58

    ld l, l                                       ; $537c: $6d
    ld [hl-], a                                   ; $537d: $32
    ld c, $9d                                     ; $537e: $0e $9d
    halt                                          ; $5380: $76
    nop                                           ; $5381: $00
    jr nz, @+$36                                  ; $5382: $20 $34

    ld e, c                                       ; $5384: $59
    rst $38                                       ; $5385: $ff
    ld a, a                                       ; $5386: $7f

jr_0b4_5387:
    ld b, l                                       ; $5387: $45
    jr jr_0b4_5332                                ; $5388: $18 $a8

    ld [$03de], sp                                ; $538a: $08 $de $03
    or l                                          ; $538d: $b5
    ld h, h                                       ; $538e: $64
    ld sp, $0616                                  ; $538f: $31 $16 $06
    inc e                                         ; $5392: $1c
    ld e, b                                       ; $5393: $58
    ld l, l                                       ; $5394: $6d
    sbc l                                         ; $5395: $9d
    ld a, d                                       ; $5396: $7a
    ld a, [hl+]                                   ; $5397: $2a
    dec b                                         ; $5398: $05
    dec b                                         ; $5399: $05
    inc d                                         ; $539a: $14
    ld e, d                                       ; $539b: $5a
    inc bc                                        ; $539c: $03
    sbc $03                                       ; $539d: $de $03
    rst $38                                       ; $539f: $ff
    inc bc                                        ; $53a0: $03
    nop                                           ; $53a1: $00
    jr nz, @+$5d                                  ; $53a2: $20 $5b

    inc bc                                        ; $53a4: $03
    rst $20                                       ; $53a5: $e7
    nop                                           ; $53a6: $00
    xor l                                         ; $53a7: $ad
    ld bc, $2000                                  ; $53a8: $01 $00 $20
    ld e, e                                       ; $53ab: $5b
    inc bc                                        ; $53ac: $03
    rst $20                                       ; $53ad: $e7
    nop                                           ; $53ae: $00
    xor l                                         ; $53af: $ad
    ld bc, $2000                                  ; $53b0: $01 $00 $20
    sbc $03                                       ; $53b3: $de $03
    or l                                          ; $53b5: $b5
    ld h, h                                       ; $53b6: $64
    ld sp, $2216                                  ; $53b7: $31 $16 $22

jr_0b4_53ba:
    jr @+$54                                      ; $53ba: $18 $52

    ld c, d                                       ; $53bc: $4a
    xor d                                         ; $53bd: $aa
    inc l                                         ; $53be: $2c
    rst $38                                       ; $53bf: $ff
    ld a, a                                       ; $53c0: $7f
    dec b                                         ; $53c1: $05

jr_0b4_53c2:
    inc d                                         ; $53c2: $14
    jr nc, jr_0b4_5411                            ; $53c3: $30 $4c

    jr c, jr_0b4_5434                             ; $53c5: $38 $6d

    ld l, h                                       ; $53c7: $6c
    add hl, bc                                    ; $53c8: $09
    and [hl]                                      ; $53c9: $a6
    db $10                                        ; $53ca: $10
    di                                            ; $53cb: $f3
    ld e, b                                       ; $53cc: $58
    add hl, hl                                    ; $53cd: $29
    jr nc, jr_0b4_5428                            ; $53ce: $30 $58

    ld l, l                                       ; $53d0: $6d
    dec b                                         ; $53d1: $05
    inc d                                         ; $53d2: $14
    sbc e                                         ; $53d3: $9b

jr_0b4_53d4:
    ld [bc], a                                    ; $53d4: $02
    rst $18                                       ; $53d5: $df
    inc bc                                        ; $53d6: $03
    add [hl]                                      ; $53d7: $86
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    jr nz, jr_0b4_53ba                            ; $53da: $20 $de

    inc bc                                        ; $53dc: $03
    rst $20                                       ; $53dd: $e7
    nop                                           ; $53de: $00
    adc $01                                       ; $53df: $ce $01
    nop                                           ; $53e1: $00
    jr nz, jr_0b4_53c2                            ; $53e2: $20 $de

    inc bc                                        ; $53e4: $03
    rst $20                                       ; $53e5: $e7
    nop                                           ; $53e6: $00
    adc $01                                       ; $53e7: $ce $01
    nop                                           ; $53e9: $00
    jr nz, jr_0b4_541c                            ; $53ea: $20 $30

    ld c, h                                       ; $53ec: $4c
    jr c, jr_0b4_545c                             ; $53ed: $38 $6d

    ld l, h                                       ; $53ef: $6c
    add hl, bc                                    ; $53f0: $09
    ld hl, $5210                                  ; $53f1: $21 $10 $52
    ld c, d                                       ; $53f4: $4a
    rst $38                                       ; $53f5: $ff
    ld a, a                                       ; $53f6: $7f
    ld l, e                                       ; $53f7: $6b
    dec l                                         ; $53f8: $2d
    ld h, [hl]                                    ; $53f9: $66
    inc c                                         ; $53fa: $0c
    sub d                                         ; $53fb: $92
    ld d, h                                       ; $53fc: $54
    dec bc                                        ; $53fd: $0b
    jr c, jr_0b4_5437                             ; $53fe: $38 $37

    ld l, c                                       ; $5400: $69
    and [hl]                                      ; $5401: $a6
    db $10                                        ; $5402: $10

jr_0b4_5403:
    sub $32                                       ; $5403: $d6 $32
    rst $38                                       ; $5405: $ff
    ld a, a                                       ; $5406: $7f
    rst $28                                       ; $5407: $ef
    dec c                                         ; $5408: $0d
    add [hl]                                      ; $5409: $86
    nop                                           ; $540a: $00
    sbc e                                         ; $540b: $9b
    ld [bc], a                                    ; $540c: $02
    cp $4a                                        ; $540d: $fe $4a
    rst $28                                       ; $540f: $ef
    nop                                           ; $5410: $00

jr_0b4_5411:
    sub b                                         ; $5411: $90
    ld bc, $035d                                  ; $5412: $01 $5d $03
    ld a, d                                       ; $5415: $7a
    ld [bc], a                                    ; $5416: $02
    rst $18                                       ; $5417: $df
    inc bc                                        ; $5418: $03
    nop                                           ; $5419: $00
    jr nz, jr_0b4_5403                            ; $541a: $20 $e7

jr_0b4_541c:
    nop                                           ; $541c: $00
    adc $01                                       ; $541d: $ce $01
    rst $18                                       ; $541f: $df
    inc bc                                        ; $5420: $03
    nop                                           ; $5421: $00
    nop                                           ; $5422: $00

jr_0b4_5423:
    rst $38                                       ; $5423: $ff
    ld a, a                                       ; $5424: $7f
    nop                                           ; $5425: $00
    jr nz, @+$39                                  ; $5426: $20 $37

jr_0b4_5428:
    ld l, c                                       ; $5428: $69
    ld h, e                                       ; $5429: $63
    ld [$4a52], sp                                ; $542a: $08 $52 $4a
    rst $38                                       ; $542d: $ff
    ld a, a                                       ; $542e: $7f
    ld l, e                                       ; $542f: $6b
    dec l                                         ; $5430: $2d
    dec b                                         ; $5431: $05
    inc d                                         ; $5432: $14
    rst $38                                       ; $5433: $ff

jr_0b4_5434:
    inc bc                                        ; $5434: $03
    ld l, e                                       ; $5435: $6b
    dec c                                         ; $5436: $0d

jr_0b4_5437:
    dec bc                                        ; $5437: $0b
    inc [hl]                                      ; $5438: $34
    and [hl]                                      ; $5439: $a6
    inc d                                         ; $543a: $14
    rst $38                                       ; $543b: $ff
    inc bc                                        ; $543c: $03
    ld a, $5b                                     ; $543d: $3e $5b
    ld l, [hl]                                    ; $543f: $6e
    ld bc, $1405                                  ; $5440: $01 $05 $14
    rra                                           ; $5443: $1f
    ld c, a                                       ; $5444: $4f
    and a                                         ; $5445: $a7
    inc b                                         ; $5446: $04
    add l                                         ; $5447: $85
    add hl, bc                                    ; $5448: $09
    push bc                                       ; $5449: $c5
    dec b                                         ; $544a: $05
    ld a, d                                       ; $544b: $7a
    ld [bc], a                                    ; $544c: $02
    adc $00                                       ; $544d: $ce $00
    ld d, d                                       ; $544f: $52
    ld bc, $2000                                  ; $5450: $01 $00 $20
    adc $01                                       ; $5453: $ce $01
    cp [hl]                                       ; $5455: $be
    inc bc                                        ; $5456: $03
    rst $20                                       ; $5457: $e7
    nop                                           ; $5458: $00
    nop                                           ; $5459: $00
    nop                                           ; $545a: $00
    rst $38                                       ; $545b: $ff

jr_0b4_545c:
    ld a, a                                       ; $545c: $7f
    nop                                           ; $545d: $00
    jr nz, jr_0b4_546b                            ; $545e: $20 $0b

    inc [hl]                                      ; $5460: $34
    add h                                         ; $5461: $84
    ld [$035a], sp                                ; $5462: $08 $5a $03
    jr @+$65                                      ; $5465: $18 $63

    ld [$4505], a                                 ; $5467: $ea $05 $45
    inc d                                         ; $546a: $14

jr_0b4_546b:
    adc $05                                       ; $546b: $ce $05
    ld l, d                                       ; $546d: $6a
    inc l                                         ; $546e: $2c
    jr c, jr_0b4_5478                             ; $546f: $38 $07

    and a                                         ; $5471: $a7
    ld [$42fe], sp                                ; $5472: $08 $fe $42
    inc bc                                        ; $5475: $03
    ld h, c                                       ; $5476: $61
    rst $38                                       ; $5477: $ff

jr_0b4_5478:
    ld a, a                                       ; $5478: $7f
    dec b                                         ; $5479: $05
    inc d                                         ; $547a: $14
    ret nc                                        ; $547b: $d0

    ld c, b                                       ; $547c: $48
    sub b                                         ; $547d: $90
    dec d                                         ; $547e: $15
    add hl, bc                                    ; $547f: $09
    jr z, jr_0b4_54e7                             ; $5480: $28 $65

    db $10                                        ; $5482: $10
    push bc                                       ; $5483: $c5
    dec b                                         ; $5484: $05

jr_0b4_5485:
    inc c                                         ; $5485: $0c

jr_0b4_5486:
    ld bc, $0194                                  ; $5486: $01 $94 $01
    nop                                           ; $5489: $00
    jr nz, jr_0b4_5423                            ; $548a: $20 $97

    ld [bc], a                                    ; $548c: $02
    ret                                           ; $548d: $c9


    nop                                           ; $548e: $00
    rst $38                                       ; $548f: $ff
    inc bc                                        ; $5490: $03
    nop                                           ; $5491: $00
    nop                                           ; $5492: $00
    rst $38                                       ; $5493: $ff
    ld a, a                                       ; $5494: $7f
    add l                                         ; $5495: $85
    ld bc, $2000                                  ; $5496: $01 $00 $20
    rst $20                                       ; $5499: $e7
    nop                                           ; $549a: $00
    ld e, d                                       ; $549b: $5a
    inc bc                                        ; $549c: $03
    rst $28                                       ; $549d: $ef
    ld bc, $03fe                                  ; $549e: $01 $fe $03
    add l                                         ; $54a1: $85
    inc d                                         ; $54a2: $14
    db $fd                                        ; $54a3: $fd
    inc bc                                        ; $54a4: $03
    ld d, d                                       ; $54a5: $52
    ld c, d                                       ; $54a6: $4a
    cp l                                          ; $54a7: $bd
    ld [hl], a                                    ; $54a8: $77
    ld h, l                                       ; $54a9: $65
    nop                                           ; $54aa: $00
    rra                                           ; $54ab: $1f
    ld c, a                                       ; $54ac: $4f
    inc bc                                        ; $54ad: $03
    ld h, c                                       ; $54ae: $61
    sub c                                         ; $54af: $91
    add hl, de                                    ; $54b0: $19
    dec b                                         ; $54b1: $05
    inc d                                         ; $54b2: $14
    adc h                                         ; $54b3: $8c
    jr c, jr_0b4_5486                             ; $54b4: $38 $d0

    ld c, b                                       ; $54b6: $48
    add hl, bc                                    ; $54b7: $09
    jr z, @+$07                                   ; $54b8: $28 $05

    db $10                                        ; $54ba: $10
    ld h, l                                       ; $54bb: $65
    add hl, bc                                    ; $54bc: $09
    rlca                                          ; $54bd: $07
    jr nz, jr_0b4_5485                            ; $54be: $20 $c5

    dec b                                         ; $54c0: $05
    nop                                           ; $54c1: $00
    inc e                                         ; $54c2: $1c
    ld e, l                                       ; $54c3: $5d
    inc bc                                        ; $54c4: $03
    ld h, $01                                     ; $54c5: $26 $01
    dec c                                         ; $54c7: $0d
    ld bc, $0000                                  ; $54c8: $01 $00 $00
    rst $38                                       ; $54cb: $ff
    ld a, a                                       ; $54cc: $7f
    push bc                                       ; $54cd: $c5
    dec b                                         ; $54ce: $05
    add hl, hl                                    ; $54cf: $29
    ld bc, $01ce                                  ; $54d0: $01 $ce $01
    ld a, h                                       ; $54d3: $7c
    inc bc                                        ; $54d4: $03
    cp d                                          ; $54d5: $ba
    ld [bc], a                                    ; $54d6: $02
    rst $38                                       ; $54d7: $ff
    inc bc                                        ; $54d8: $03
    adc b                                         ; $54d9: $88
    ld [$02db], sp                                ; $54da: $08 $db $02
    rst $38                                       ; $54dd: $ff
    ld a, a                                       ; $54de: $7f
    inc bc                                        ; $54df: $03
    ld h, c                                       ; $54e0: $61

jr_0b4_54e1:
    ld b, l                                       ; $54e1: $45
    inc b                                         ; $54e2: $04
    rra                                           ; $54e3: $1f
    ld c, a                                       ; $54e4: $4f
    or d                                          ; $54e5: $b2
    dec e                                         ; $54e6: $1d

jr_0b4_54e7:
    add hl, bc                                    ; $54e7: $09
    jr z, jr_0b4_54ef                             ; $54e8: $28 $05

    inc d                                         ; $54ea: $14
    pop af                                        ; $54eb: $f1
    ld c, h                                       ; $54ec: $4c
    rra                                           ; $54ed: $1f
    ld a, a                                       ; $54ee: $7f

jr_0b4_54ef:
    ld a, [hl+]                                   ; $54ef: $2a
    inc l                                         ; $54f0: $2c
    dec b                                         ; $54f1: $05
    inc d                                         ; $54f2: $14
    push hl                                       ; $54f3: $e5
    inc c                                         ; $54f4: $0c
    and h                                         ; $54f5: $a4
    dec b                                         ; $54f6: $05
    ld [$0020], sp                                ; $54f7: $08 $20 $00
    inc e                                         ; $54fa: $1c
    sub $01                                       ; $54fb: $d6 $01
    ld h, [hl]                                    ; $54fd: $66
    ld bc, $037c                                  ; $54fe: $01 $7c $03
    nop                                           ; $5501: $00
    ld [$7fff], sp                                ; $5502: $08 $ff $7f
    ld h, l                                       ; $5505: $65
    ld bc, $0294                                  ; $5506: $01 $94 $02
    dec hl                                        ; $5509: $2b
    ld bc, $029b                                  ; $550a: $01 $9b $02

jr_0b4_550d:
    rst $30                                       ; $550d: $f7
    ld bc, $03be                                  ; $550e: $01 $be $03
    rlca                                          ; $5511: $07
    inc e                                         ; $5512: $1c
    sbc $46                                       ; $5513: $de $46
    xor d                                         ; $5515: $aa
    nop                                           ; $5516: $00
    ld h, h                                       ; $5517: $64
    add hl, bc                                    ; $5518: $09
    ld c, b                                       ; $5519: $48
    jr jr_0b4_550d                                ; $551a: $18 $f1

    ld c, h                                       ; $551c: $4c
    sbc $46                                       ; $551d: $de $46
    or e                                          ; $551f: $b3
    dec e                                         ; $5520: $1d
    rlca                                          ; $5521: $07
    jr nz, jr_0b4_54e1                            ; $5522: $20 $bd

    halt                                          ; $5524: $76
    ldh a, [rLY]                                  ; $5525: $f0 $44
    rst $10                                       ; $5527: $d7
    ld b, $45                                     ; $5528: $06 $45
    db $10                                        ; $552a: $10
    and h                                         ; $552b: $a4
    dec b                                         ; $552c: $05
    ld [de], a                                    ; $552d: $12
    ld b, $29                                     ; $552e: $06 $29

jr_0b4_5530:
    inc h                                         ; $5530: $24
    nop                                           ; $5531: $00
    inc e                                         ; $5532: $1c
    and h                                         ; $5533: $a4
    dec b                                         ; $5534: $05
    call c, $ce02                                 ; $5535: $dc $02 $ce
    nop                                           ; $5538: $00
    nop                                           ; $5539: $00
    inc c                                         ; $553a: $0c
    rst $38                                       ; $553b: $ff
    inc bc                                        ; $553c: $03
    rst $38                                       ; $553d: $ff
    ld a, a                                       ; $553e: $7f
    ld c, d                                       ; $553f: $4a
    ld bc, $0964                                  ; $5540: $01 $64 $09
    ld e, c                                       ; $5543: $59
    ld [bc], a                                    ; $5544: $02
    ld l, $01                                     ; $5545: $2e $01
    cp [hl]                                       ; $5547: $be
    inc bc                                        ; $5548: $03
    dec b                                         ; $5549: $05
    db $10                                        ; $554a: $10
    ld [$6528], sp                                ; $554b: $08 $28 $65
    add hl, bc                                    ; $554e: $09
    ld c, $48                                     ; $554f: $0e $48
    dec h                                         ; $5551: $25
    inc c                                         ; $5552: $0c
    ld de, $7b4d                                  ; $5553: $11 $4d $7b
    ld e, d                                       ; $5556: $5a
    xor h                                         ; $5557: $ac
    inc h                                         ; $5558: $24
    ld l, e                                       ; $5559: $6b
    jr nc, jr_0b4_5596                            ; $555a: $30 $3a

    rlca                                          ; $555c: $07
    db $dd                                        ; $555d: $dd
    halt                                          ; $555e: $76
    xor [hl]                                      ; $555f: $ae
    ld de, $1c26                                  ; $5560: $11 $26 $1c
    or l                                          ; $5563: $b5
    ld e, c                                       ; $5564: $59
    ld hl, sp+$02                                 ; $5565: $f8 $02
    and h                                         ; $5567: $a4
    dec b                                         ; $5568: $05
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    and h                                         ; $556b: $a4
    dec b                                         ; $556c: $05
    db $10                                        ; $556d: $10
    ld bc, $2000                                  ; $556e: $01 $00 $20
    ld hl, $df0c                                  ; $5571: $21 $0c $df
    inc bc                                        ; $5574: $03
    rst $38                                       ; $5575: $ff
    ld a, a                                       ; $5576: $7f
    ld sp, $2902                                  ; $5577: $31 $02 $29
    inc h                                         ; $557a: $24
    dec a                                         ; $557b: $3d
    inc bc                                        ; $557c: $03
    add l                                         ; $557d: $85
    dec b                                         ; $557e: $05
    rst $28                                       ; $557f: $ef
    nop                                           ; $5580: $00
    rlca                                          ; $5581: $07
    inc e                                         ; $5582: $1c
    adc $05                                       ; $5583: $ce $05
    ld d, b                                       ; $5585: $50
    ld c, h                                       ; $5586: $4c
    rst $38                                       ; $5587: $ff
    inc bc                                        ; $5588: $03
    daa                                           ; $5589: $27
    jr nz, jr_0b4_55a5                            ; $558a: $20 $19

    ld l, [hl]                                    ; $558c: $6e
    rst $38                                       ; $558d: $ff
    inc bc                                        ; $558e: $03
    adc h                                         ; $558f: $8c
    dec b                                         ; $5590: $05
    add hl, hl                                    ; $5591: $29
    jr z, jr_0b4_5530                             ; $5592: $28 $9c

    inc bc                                        ; $5594: $03
    sub [hl]                                      ; $5595: $96

jr_0b4_5596:
    ld h, c                                       ; $5596: $61
    rra                                           ; $5597: $1f
    ld a, a                                       ; $5598: $7f
    dec b                                         ; $5599: $05
    inc d                                         ; $559a: $14
    cp h                                          ; $559b: $bc
    ld [hl], d                                    ; $559c: $72
    add hl, bc                                    ; $559d: $09
    jr z, jr_0b4_560b                             ; $559e: $28 $6b

    jr nc, jr_0b4_55a2                            ; $55a0: $30 $00

jr_0b4_55a2:
    nop                                           ; $55a2: $00
    rst $38                                       ; $55a3: $ff
    ld a, a                                       ; $55a4: $7f

jr_0b4_55a5:
    nop                                           ; $55a5: $00
    inc e                                         ; $55a6: $1c
    inc h                                         ; $55a7: $24
    dec b                                         ; $55a8: $05
    nop                                           ; $55a9: $00
    jr jr_0b4_55e7                                ; $55aa: $18 $3b

    inc bc                                        ; $55ac: $03
    rst $38                                       ; $55ad: $ff
    ld a, a                                       ; $55ae: $7f
    rst $20                                       ; $55af: $e7
    nop                                           ; $55b0: $00
    ld b, $1c                                     ; $55b1: $06 $1c
    ld e, d                                       ; $55b3: $5a
    ld [bc], a                                    ; $55b4: $02
    ld h, $05                                     ; $55b5: $26 $05
    sbc d                                         ; $55b7: $9a
    ld l, d                                       ; $55b8: $6a
    ld [$d824], sp                                ; $55b9: $08 $24 $d8
    ld h, l                                       ; $55bc: $65
    rst $38                                       ; $55bd: $ff
    inc bc                                        ; $55be: $03
    ld c, e                                       ; $55bf: $4b
    dec b                                         ; $55c0: $05
    add hl, hl                                    ; $55c1: $29
    jr z, @+$57                                   ; $55c2: $28 $55

    ld e, c                                       ; $55c4: $59
    dec sp                                        ; $55c5: $3b
    ld l, [hl]                                    ; $55c6: $6e
    xor a                                         ; $55c7: $af
    ld b, b                                       ; $55c8: $40
    ld b, $1c                                     ; $55c9: $06 $1c
    ld d, h                                       ; $55cb: $54
    ld d, l                                       ; $55cc: $55
    sbc $7a                                       ; $55cd: $de $7a
    adc h                                         ; $55cf: $8c
    inc [hl]                                      ; $55d0: $34
    jr z, jr_0b4_55f7                             ; $55d1: $28 $24

    ld d, h                                       ; $55d3: $54
    ld d, l                                       ; $55d4: $55

jr_0b4_55d5:
    rst $38                                       ; $55d5: $ff
    inc bc                                        ; $55d6: $03
    rra                                           ; $55d7: $1f
    ld a, a                                       ; $55d8: $7f
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    rst $38                                       ; $55db: $ff
    ld a, a                                       ; $55dc: $7f
    nop                                           ; $55dd: $00
    jr nz, jr_0b4_5624                            ; $55de: $20 $44

    stop                                          ; $55e0: $10 $00
    jr jr_0b4_5661                                ; $55e2: $18 $7d

    inc bc                                        ; $55e4: $03
    rst $38                                       ; $55e5: $ff
    ld a, a                                       ; $55e6: $7f

jr_0b4_55e7:
    ret                                           ; $55e7: $c9


    nop                                           ; $55e8: $00
    ld [$dd24], sp                                ; $55e9: $08 $24 $dd
    ld [hl], d                                    ; $55ec: $72
    ld b, e                                       ; $55ed: $43
    add hl, bc                                    ; $55ee: $09
    inc l                                         ; $55ef: $2c
    dec b                                         ; $55f0: $05
    dec b                                         ; $55f1: $05
    inc d                                         ; $55f2: $14
    sub b                                         ; $55f3: $90
    ld d, b                                       ; $55f4: $50
    ld a, [hl+]                                   ; $55f5: $2a
    dec b                                         ; $55f6: $05

jr_0b4_55f7:
    add hl, hl                                    ; $55f7: $29
    inc h                                         ; $55f8: $24
    add hl, hl                                    ; $55f9: $29
    jr z, jr_0b4_55d5                             ; $55fa: $28 $d9

    ld l, c                                       ; $55fc: $69
    rst $38                                       ; $55fd: $ff
    inc bc                                        ; $55fe: $03
    ld c, e                                       ; $55ff: $4b
    dec b                                         ; $5600: $05
    rlca                                          ; $5601: $07
    inc e                                         ; $5602: $1c
    ld e, e                                       ; $5603: $5b
    ld [hl], d                                    ; $5604: $72
    jr nc, @+$04                                  ; $5605: $30 $02

    adc h                                         ; $5607: $8c
    jr c, @+$4c                                   ; $5608: $38 $4a

    inc l                                         ; $560a: $2c

jr_0b4_560b:
    sbc h                                         ; $560b: $9c
    inc bc                                        ; $560c: $03
    cp l                                          ; $560d: $bd
    halt                                          ; $560e: $76
    adc $09                                       ; $560f: $ce $09
    nop                                           ; $5611: $00
    nop                                           ; $5612: $00
    rst $38                                       ; $5613: $ff
    ld a, a                                       ; $5614: $7f
    adc $05                                       ; $5615: $ce $05

jr_0b4_5617:
    nop                                           ; $5617: $00
    jr nz, jr_0b4_561a                            ; $5618: $20 $00

jr_0b4_561a:
    nop                                           ; $561a: $00
    dec a                                         ; $561b: $3d
    inc bc                                        ; $561c: $03
    jp z, RST_00                                  ; $561d: $ca $00 $00

    jr nz, jr_0b4_5629                            ; $5620: $20 $07

    jr nz, jr_0b4_5617                            ; $5622: $20 $f3

jr_0b4_5624:
    ld e, b                                       ; $5624: $58
    rst $38                                       ; $5625: $ff
    inc bc                                        ; $5626: $03
    ld b, [hl]                                    ; $5627: $46
    dec b                                         ; $5628: $05

jr_0b4_5629:
    jr z, jr_0b4_564b                             ; $5629: $28 $20

    rst $38                                       ; $562b: $ff
    inc bc                                        ; $562c: $03
    di                                            ; $562d: $f3
    ld d, h                                       ; $562e: $54
    adc h                                         ; $562f: $8c
    dec b                                         ; $5630: $05
    dec b                                         ; $5631: $05
    inc d                                         ; $5632: $14
    rst $38                                       ; $5633: $ff
    inc bc                                        ; $5634: $03
    ld l, h                                       ; $5635: $6c
    dec b                                         ; $5636: $05
    ld a, [hl+]                                   ; $5637: $2a
    inc l                                         ; $5638: $2c
    rlca                                          ; $5639: $07
    jr nz, jr_0b4_56b2                            ; $563a: $20 $76

    ld e, l                                       ; $563c: $5d
    ret nc                                        ; $563d: $d0

    ld b, h                                       ; $563e: $44

jr_0b4_563f:
    cp l                                          ; $563f: $bd
    ld a, d                                       ; $5640: $7a
    adc $05                                       ; $5641: $ce $05
    ld d, e                                       ; $5643: $53
    ld d, l                                       ; $5644: $55
    rra                                           ; $5645: $1f
    ld a, a                                       ; $5646: $7f
    rst $38                                       ; $5647: $ff
    inc bc                                        ; $5648: $03
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00

jr_0b4_564b:
    rst $38                                       ; $564b: $ff
    ld a, a                                       ; $564c: $7f
    nop                                           ; $564d: $00
    jr nz, jr_0b4_5659                            ; $564e: $20 $09

    jr z, jr_0b4_5652                             ; $5650: $28 $00

jr_0b4_5652:
    nop                                           ; $5652: $00
    jr c, @+$04                                   ; $5653: $38 $02

    nop                                           ; $5655: $00
    jr nz, jr_0b4_563f                            ; $5656: $20 $e7

    nop                                           ; $5658: $00

jr_0b4_5659:
    call nz, Call_000_0808                        ; $5659: $c4 $08 $08
    inc h                                         ; $565c: $24
    call Call_000_0500                            ; $565d: $cd $00 $05
    inc d                                         ; $5660: $14

jr_0b4_5661:
    ld c, c                                       ; $5661: $49
    jr z, @+$37                                   ; $5662: $28 $35

    ld h, c                                       ; $5664: $61
    rst $38                                       ; $5665: $ff
    inc bc                                        ; $5666: $03
    ld l, e                                       ; $5667: $6b
    dec b                                         ; $5668: $05
    dec b                                         ; $5669: $05
    inc d                                         ; $566a: $14
    ld e, b                                       ; $566b: $58
    ld l, l                                       ; $566c: $6d
    add hl, hl                                    ; $566d: $29
    jr z, jr_0b4_569a                             ; $566e: $28 $2a

    dec b                                         ; $5670: $05
    ld l, h                                       ; $5671: $6c
    add hl, bc                                    ; $5672: $09
    ld a, h                                       ; $5673: $7c
    halt                                          ; $5674: $76

jr_0b4_5675:
    ld e, e                                       ; $5675: $5b
    inc bc                                        ; $5676: $03

jr_0b4_5677:
    adc l                                         ; $5677: $8d
    jr c, jr_0b4_56e4                             ; $5678: $38 $6a

    inc l                                         ; $567a: $2c
    halt                                          ; $567b: $76
    ld h, c                                       ; $567c: $61

jr_0b4_567d:
    xor a                                         ; $567d: $af
    dec c                                         ; $567e: $0d
    rra                                           ; $567f: $1f
    ld a, a                                       ; $5680: $7f
    nop                                           ; $5681: $00
    nop                                           ; $5682: $00
    rst $38                                       ; $5683: $ff
    ld a, a                                       ; $5684: $7f
    nop                                           ; $5685: $00
    jr nz, jr_0b4_56a7                            ; $5686: $20 $1f

    ld a, a                                       ; $5688: $7f
    ld [bc], a                                    ; $5689: $02
    ld [$027b], sp                                ; $568a: $08 $7b $02
    nop                                           ; $568d: $00
    jr nz, jr_0b4_5677                            ; $568e: $20 $e7

    nop                                           ; $5690: $00
    dec b                                         ; $5691: $05
    inc d                                         ; $5692: $14
    xor [hl]                                      ; $5693: $ae
    ld b, b                                       ; $5694: $40
    dec d                                         ; $5695: $15
    ld h, c                                       ; $5696: $61
    ld c, d                                       ; $5697: $4a
    jr z, jr_0b4_56c4                             ; $5698: $28 $2a

jr_0b4_569a:
    dec b                                         ; $569a: $05
    ld [hl], $65                                  ; $569b: $36 $65
    ld e, h                                       ; $569d: $5c
    halt                                          ; $569e: $76
    adc h                                         ; $569f: $8c
    inc [hl]                                      ; $56a0: $34
    rlca                                          ; $56a1: $07
    inc e                                         ; $56a2: $1c
    ld de, $ff02                                  ; $56a3: $11 $02 $ff
    inc bc                                        ; $56a6: $03

jr_0b4_56a7:
    xor [hl]                                      ; $56a7: $ae
    ld b, h                                       ; $56a8: $44
    ld l, l                                       ; $56a9: $6d
    jr c, jr_0b4_56c6                             ; $56aa: $38 $1a

    ld l, [hl]                                    ; $56ac: $6e
    rst $38                                       ; $56ad: $ff
    inc bc                                        ; $56ae: $03
    ld l, h                                       ; $56af: $6c
    dec b                                         ; $56b0: $05
    inc bc                                        ; $56b1: $03

jr_0b4_56b2:
    inc c                                         ; $56b2: $0c

jr_0b4_56b3:
    halt                                          ; $56b3: $76
    ld e, l                                       ; $56b4: $5d
    ld c, c                                       ; $56b5: $49
    jr z, jr_0b4_5675                             ; $56b6: $28 $bd

    ld a, d                                       ; $56b8: $7a
    nop                                           ; $56b9: $00
    nop                                           ; $56ba: $00
    rst $38                                       ; $56bb: $ff
    ld a, a                                       ; $56bc: $7f
    nop                                           ; $56bd: $00
    jr nz, jr_0b4_567d                            ; $56be: $20 $bd

    ld a, d                                       ; $56c0: $7a
    nop                                           ; $56c1: $00
    jr nz, @-$71                                  ; $56c2: $20 $8d

jr_0b4_56c4:
    jr c, jr_0b4_56cd                             ; $56c4: $38 $07

jr_0b4_56c6:
    inc e                                         ; $56c6: $1c
    inc de                                        ; $56c7: $13
    ld d, l                                       ; $56c8: $55
    adc a                                         ; $56c9: $8f
    dec e                                         ; $56ca: $1d
    di                                            ; $56cb: $f3
    ld e, b                                       ; $56cc: $58

jr_0b4_56cd:
    ld a, b                                       ; $56cd: $78
    ld l, c                                       ; $56ce: $69
    ld a, [$4b6d]                                 ; $56cf: $fa $6d $4b
    jr nc, jr_0b4_56cd                            ; $56d2: $30 $f9

    ld l, l                                       ; $56d4: $6d
    rst $38                                       ; $56d5: $ff
    inc bc                                        ; $56d6: $03
    ld c, e                                       ; $56d7: $4b
    dec b                                         ; $56d8: $05
    jr z, jr_0b4_56ff                             ; $56d9: $28 $24

    cp b                                          ; $56db: $b8
    ld l, c                                       ; $56dc: $69
    rst $38                                       ; $56dd: $ff
    inc bc                                        ; $56de: $03
    xor [hl]                                      ; $56df: $ae
    ld bc, $2007                                  ; $56e0: $01 $07 $20
    sbc b                                         ; $56e3: $98

jr_0b4_56e4:
    ld l, c                                       ; $56e4: $69
    xor a                                         ; $56e5: $af
    ld b, h                                       ; $56e6: $44
    cp $7a                                        ; $56e7: $fe $7a
    nop                                           ; $56e9: $00
    nop                                           ; $56ea: $00
    call c, $ae76                                 ; $56eb: $dc $76 $ae
    inc a                                         ; $56ee: $3c
    rlca                                          ; $56ef: $07
    inc e                                         ; $56f0: $1c
    nop                                           ; $56f1: $00
    nop                                           ; $56f2: $00
    rst $38                                       ; $56f3: $ff
    ld a, a                                       ; $56f4: $7f
    nop                                           ; $56f5: $00
    jr nz, jr_0b4_56ff                            ; $56f6: $20 $07

    inc e                                         ; $56f8: $1c
    inc bc                                        ; $56f9: $03
    jr jr_0b4_56b3                                ; $56fa: $18 $b7

    ld h, l                                       ; $56fc: $65
    rst $38                                       ; $56fd: $ff
    inc bc                                        ; $56fe: $03

jr_0b4_56ff:
    adc l                                         ; $56ff: $8d
    dec b                                         ; $5700: $05
    inc l                                         ; $5701: $2c
    ld de, $59d6                                  ; $5702: $11 $d6 $59
    ld a, h                                       ; $5705: $7c
    halt                                          ; $5706: $76
    reti                                          ; $5707: $d9


    ld l, c                                       ; $5708: $69
    ld [$3424], sp                                ; $5709: $08 $24 $34
    ld e, c                                       ; $570c: $59
    ld l, h                                       ; $570d: $6c
    dec b                                         ; $570e: $05
    adc h                                         ; $570f: $8c
    inc [hl]                                      ; $5710: $34
    dec b                                         ; $5711: $05
    inc d                                         ; $5712: $14
    sub a                                         ; $5713: $97

jr_0b4_5714:
    ld l, c                                       ; $5714: $69
    adc [hl]                                      ; $5715: $8e
    inc a                                         ; $5716: $3c
    rra                                           ; $5717: $1f
    ld a, a                                       ; $5718: $7f
    ld [$7624], sp                                ; $5719: $08 $24 $76
    ld h, l                                       ; $571c: $65

jr_0b4_571d:
    sbc $7a                                       ; $571d: $de $7a
    ret nc                                        ; $571f: $d0

    ld c, b                                       ; $5720: $48
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    ld d, e                                       ; $5723: $53
    ld d, l                                       ; $5724: $55
    rst $38                                       ; $5725: $ff
    ld a, a                                       ; $5726: $7f
    rlca                                          ; $5727: $07
    jr nz, jr_0b4_572a                            ; $5728: $20 $00

jr_0b4_572a:
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    jr nz, @+$01                                  ; $572c: $20 $ff

    ld a, a                                       ; $572e: $7f
    rlca                                          ; $572f: $07
    jr nz, jr_0b4_5737                            ; $5730: $20 $05

    inc d                                         ; $5732: $14
    ld a, e                                       ; $5733: $7b

jr_0b4_5734:
    ld l, [hl]                                    ; $5734: $6e
    ld l, l                                       ; $5735: $6d
    dec c                                         ; $5736: $0d

jr_0b4_5737:
    ld l, $31                                     ; $5737: $2e $31
    xor l                                         ; $5739: $ad
    jr c, jr_0b4_5734                             ; $573a: $38 $f8

jr_0b4_573c:
    ld h, l                                       ; $573c: $65
    ld [de], a                                    ; $573d: $12
    ld c, l                                       ; $573e: $4d
    sbc h                                         ; $573f: $9c
    halt                                          ; $5740: $76
    add hl, hl                                    ; $5741: $29
    jr z, jr_0b4_571d                             ; $5742: $28 $d9

    ld l, l                                       ; $5744: $6d
    rst $38                                       ; $5745: $ff
    inc bc                                        ; $5746: $03
    xor e                                         ; $5747: $ab
    ld bc, $1c06                                  ; $5748: $01 $06 $1c
    ld [hl], l                                    ; $574b: $75
    ld e, c                                       ; $574c: $59
    ret nc                                        ; $574d: $d0

    ld c, b                                       ; $574e: $48
    sbc l                                         ; $574f: $9d
    halt                                          ; $5750: $76
    rlca                                          ; $5751: $07
    jr nz, jr_0b4_57aa                            ; $5752: $20 $56

    ld h, c                                       ; $5754: $61

jr_0b4_5755:
    ld c, $2d                                     ; $5755: $0e $2d
    sbc h                                         ; $5757: $9c
    halt                                          ; $5758: $76
    nop                                           ; $5759: $00
    nop                                           ; $575a: $00
    rst $38                                       ; $575b: $ff
    ld a, a                                       ; $575c: $7f
    xor [hl]                                      ; $575d: $ae
    inc a                                         ; $575e: $3c
    rlca                                          ; $575f: $07
    jr nz, jr_0b4_5762                            ; $5760: $20 $00

jr_0b4_5762:
    nop                                           ; $5762: $00
    nop                                           ; $5763: $00
    jr nz, jr_0b4_5714                            ; $5764: $20 $ae

    inc a                                         ; $5766: $3c
    rlca                                          ; $5767: $07
    jr nz, jr_0b4_576e                            ; $5768: $20 $04

jr_0b4_576a:
    jr jr_0b4_57bf                                ; $576a: $18 $53

    ld c, l                                       ; $576c: $4d
    ld a, [hl-]                                   ; $576d: $3a

jr_0b4_576e:
    ld l, d                                       ; $576e: $6a
    cp l                                          ; $576f: $bd
    halt                                          ; $5770: $76
    ld c, c                                       ; $5771: $49
    jr z, jr_0b4_57e9                             ; $5772: $28 $75

    ld e, c                                       ; $5774: $59
    call $ad05                                    ; $5775: $cd $05 $ad
    jr c, jr_0b4_5780                             ; $5778: $38 $06

    inc e                                         ; $577a: $1c
    pop af                                        ; $577b: $f1
    ld c, h                                       ; $577c: $4c
    rst $38                                       ; $577d: $ff
    inc bc                                        ; $577e: $03
    dec sp                                        ; $577f: $3b

jr_0b4_5780:
    halt                                          ; $5780: $76
    ld c, c                                       ; $5781: $49
    jr z, jr_0b4_573c                             ; $5782: $28 $b8

    ld l, c                                       ; $5784: $69
    rst $38                                       ; $5785: $ff
    inc bc                                        ; $5786: $03
    adc $05                                       ; $5787: $ce $05
    ld [$ff20], sp                                ; $5789: $08 $20 $ff
    inc bc                                        ; $578c: $03
    dec [hl]                                      ; $578d: $35
    ld h, c                                       ; $578e: $61
    ld l, h                                       ; $578f: $6c
    dec b                                         ; $5790: $05
    ld bc, $7404                                  ; $5791: $01 $04 $74
    ld e, c                                       ; $5794: $59
    ld c, c                                       ; $5795: $49
    jr z, @+$01                                   ; $5796: $28 $ff

    ld a, a                                       ; $5798: $7f
    nop                                           ; $5799: $00
    jr nz, jr_0b4_5810                            ; $579a: $20 $74

    ld e, c                                       ; $579c: $59
    ld c, c                                       ; $579d: $49
    jr z, @+$01                                   ; $579e: $28 $ff

    ld a, a                                       ; $57a0: $7f
    ld [bc], a                                    ; $57a1: $02

jr_0b4_57a2:
    jr jr_0b4_57d6                                ; $57a2: $18 $32

    ld c, c                                       ; $57a4: $49
    ld [hl], h                                    ; $57a5: $74
    ld b, $4b                                     ; $57a6: $06 $4b
    jr nc, @+$0a                                  ; $57a8: $30 $08

jr_0b4_57aa:
    inc h                                         ; $57aa: $24
    sub $02                                       ; $57ab: $d6 $02
    adc $05                                       ; $57ad: $ce $05
    rst $38                                       ; $57af: $ff
    inc bc                                        ; $57b0: $03
    ld b, $18                                     ; $57b1: $06 $18
    ld d, l                                       ; $57b3: $55
    ld e, l                                       ; $57b4: $5d
    adc l                                         ; $57b5: $8d
    jr c, jr_0b4_5755                             ; $57b6: $38 $9d

    ld a, d                                       ; $57b8: $7a
    ld l, h                                       ; $57b9: $6c
    dec b                                         ; $57ba: $05
    sbc h                                         ; $57bb: $9c
    inc bc                                        ; $57bc: $03
    sbc e                                         ; $57bd: $9b
    ld l, [hl]                                    ; $57be: $6e

jr_0b4_57bf:
    ld l, l                                       ; $57bf: $6d
    jr c, jr_0b4_57e9                             ; $57c0: $38 $27

    inc e                                         ; $57c2: $1c
    ld [hl], a                                    ; $57c3: $77
    ld h, l                                       ; $57c4: $65
    rst $08                                       ; $57c5: $cf
    ld b, h                                       ; $57c6: $44
    cp [hl]                                       ; $57c7: $be
    ld a, d                                       ; $57c8: $7a
    ld bc, $9608                                  ; $57c9: $01 $08 $96
    ld h, c                                       ; $57cc: $61
    rst $38                                       ; $57cd: $ff
    ld a, a                                       ; $57ce: $7f
    ld c, d                                       ; $57cf: $4a
    jr z, jr_0b4_57d2                             ; $57d0: $28 $00

jr_0b4_57d2:
    jr nz, jr_0b4_576a                            ; $57d2: $20 $96

    ld h, c                                       ; $57d4: $61
    rst $38                                       ; $57d5: $ff

jr_0b4_57d6:
    ld a, a                                       ; $57d6: $7f
    ld c, d                                       ; $57d7: $4a
    jr z, jr_0b4_57da                             ; $57d8: $28 $00

jr_0b4_57da:
    jr nz, @-$50                                  ; $57da: $20 $ae

    dec c                                         ; $57dc: $0d
    add hl, hl                                    ; $57dd: $29
    jr z, jr_0b4_57e5                             ; $57de: $28 $05

    inc d                                         ; $57e0: $14
    jr z, jr_0b4_5807                             ; $57e1: $28 $24

    adc $05                                       ; $57e3: $ce $05

jr_0b4_57e5:
    ld e, e                                       ; $57e5: $5b
    halt                                          ; $57e6: $76
    rst $38                                       ; $57e7: $ff
    inc bc                                        ; $57e8: $03

jr_0b4_57e9:
    rlca                                          ; $57e9: $07
    inc e                                         ; $57ea: $1c
    ld d, a                                       ; $57eb: $57
    ld l, c                                       ; $57ec: $69
    pop de                                        ; $57ed: $d1
    ld c, h                                       ; $57ee: $4c
    cp $7e                                        ; $57ef: $fe $7e
    add hl, bc                                    ; $57f1: $09
    jr z, jr_0b4_586b                             ; $57f2: $28 $77

    ld h, l                                       ; $57f4: $65
    ld l, h                                       ; $57f5: $6c
    dec b                                         ; $57f6: $05
    rra                                           ; $57f7: $1f
    ld a, a                                       ; $57f8: $7f
    ld [$3424], sp                                ; $57f9: $08 $24 $34
    ld e, c                                       ; $57fc: $59
    sbc l                                         ; $57fd: $9d
    halt                                          ; $57fe: $76
    adc h                                         ; $57ff: $8c
    inc [hl]                                      ; $5800: $34
    ld bc, $960c                                  ; $5801: $01 $0c $96
    ld h, c                                       ; $5804: $61
    rst $38                                       ; $5805: $ff
    ld a, a                                       ; $5806: $7f

jr_0b4_5807:
    ld c, d                                       ; $5807: $4a
    inc l                                         ; $5808: $2c
    nop                                           ; $5809: $00
    jr nz, jr_0b4_57a2                            ; $580a: $20 $96

    ld h, c                                       ; $580c: $61
    rst $38                                       ; $580d: $ff
    ld a, a                                       ; $580e: $7f
    ld c, d                                       ; $580f: $4a

jr_0b4_5810:
    inc l                                         ; $5810: $2c
    nop                                           ; $5811: $00
    jr nz, jr_0b4_5819                            ; $5812: $20 $05

    inc d                                         ; $5814: $14
    pop de                                        ; $5815: $d1
    ld c, h                                       ; $5816: $4c
    cp $7e                                        ; $5817: $fe $7e

jr_0b4_5819:
    nop                                           ; $5819: $00
    nop                                           ; $581a: $00
    cp $7a                                        ; $581b: $fe $7a
    inc bc                                        ; $581d: $03
    inc d                                         ; $581e: $14
    rst $38                                       ; $581f: $ff
    ld a, a                                       ; $5820: $7f
    nop                                           ; $5821: $00
    nop                                           ; $5822: $00
    ret nc                                        ; $5823: $d0

    ld c, b                                       ; $5824: $48
    ld [$b824], sp                                ; $5825: $08 $24 $b8
    ld l, c                                       ; $5828: $69
    nop                                           ; $5829: $00
    nop                                           ; $582a: $00
    rst $38                                       ; $582b: $ff
    ld a, a                                       ; $582c: $7f
    rst $38                                       ; $582d: $ff
    ld a, a                                       ; $582e: $7f
    ld c, d                                       ; $582f: $4a

jr_0b4_5830:
    inc l                                         ; $5830: $2c
    nop                                           ; $5831: $00
    nop                                           ; $5832: $00
    rst $38                                       ; $5833: $ff
    ld a, a                                       ; $5834: $7f
    rst $38                                       ; $5835: $ff
    ld a, a                                       ; $5836: $7f
    ld c, d                                       ; $5837: $4a

jr_0b4_5838:
    inc l                                         ; $5838: $2c
    nop                                           ; $5839: $00
    nop                                           ; $583a: $00
    rst $38                                       ; $583b: $ff
    ld a, a                                       ; $583c: $7f
    nop                                           ; $583d: $00
    jr nz, jr_0b4_588a                            ; $583e: $20 $4a

jr_0b4_5840:
    inc l                                         ; $5840: $2c
    nop                                           ; $5841: $00
    jr nz, @+$01                                  ; $5842: $20 $ff

    ld a, a                                       ; $5844: $7f
    nop                                           ; $5845: $00
    jr nz, jr_0b4_5892                            ; $5846: $20 $4a

jr_0b4_5848:
    inc l                                         ; $5848: $2c
    nop                                           ; $5849: $00
    jr nz, @-$2e                                  ; $584a: $20 $d0

    ld c, b                                       ; $584c: $48
    ld [$b824], sp                                ; $584d: $08 $24 $b8
    ld l, c                                       ; $5850: $69
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    rst $38                                       ; $5853: $ff
    ld a, a                                       ; $5854: $7f
    nop                                           ; $5855: $00
    jr nz, jr_0b4_5810                            ; $5856: $20 $b8

    ld l, c                                       ; $5858: $69
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    rst $38                                       ; $585b: $ff
    ld a, a                                       ; $585c: $7f
    nop                                           ; $585d: $00
    jr nz, @-$46                                  ; $585e: $20 $b8

    ld l, c                                       ; $5860: $69
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    jr nz, jr_0b4_5866                            ; $5864: $20 $00

jr_0b4_5866:
    jr nz, jr_0b4_58b2                            ; $5866: $20 $4a

    inc l                                         ; $5868: $2c
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00

jr_0b4_586b:
    nop                                           ; $586b: $00
    jr nz, jr_0b4_586e                            ; $586c: $20 $00

jr_0b4_586e:
    jr nz, jr_0b4_58ba                            ; $586e: $20 $4a

    inc l                                         ; $5870: $2c
    nop                                           ; $5871: $00
    nop                                           ; $5872: $00
    nop                                           ; $5873: $00
    jr nz, jr_0b4_5876                            ; $5874: $20 $00

jr_0b4_5876:
    jr nz, jr_0b4_58c2                            ; $5876: $20 $4a

    inc l                                         ; $5878: $2c
    nop                                           ; $5879: $00
    jr nz, jr_0b4_587c                            ; $587a: $20 $00

jr_0b4_587c:
    jr nz, jr_0b4_587e                            ; $587c: $20 $00

jr_0b4_587e:
    jr nz, jr_0b4_58ca                            ; $587e: $20 $4a

    inc l                                         ; $5880: $2c
    nop                                           ; $5881: $00
    jr nz, jr_0b4_5884                            ; $5882: $20 $00

jr_0b4_5884:
    jr nz, jr_0b4_589e                            ; $5884: $20 $18

    ld [hl], a                                    ; $5886: $77
    ld c, b                                       ; $5887: $48
    ld b, l                                       ; $5888: $45
    nop                                           ; $5889: $00

jr_0b4_588a:
    jr nz, jr_0b4_588c                            ; $588a: $20 $00

jr_0b4_588c:
    jr nz, jr_0b4_58a6                            ; $588c: $20 $18

    ld [hl], a                                    ; $588e: $77
    ld c, b                                       ; $588f: $48
    ld b, l                                       ; $5890: $45
    nop                                           ; $5891: $00

jr_0b4_5892:
    jr nz, jr_0b4_5894                            ; $5892: $20 $00

jr_0b4_5894:
    jr nz, jr_0b4_58ae                            ; $5894: $20 $18

    ld [hl], a                                    ; $5896: $77
    ld c, b                                       ; $5897: $48
    ld b, l                                       ; $5898: $45
    nop                                           ; $5899: $00
    jr nz, jr_0b4_5830                            ; $589a: $20 $94

    ld [hl], d                                    ; $589c: $72
    sbc h                                         ; $589d: $9c

jr_0b4_589e:
    ld a, e                                       ; $589e: $7b
    cp l                                          ; $589f: $bd
    ld a, e                                       ; $58a0: $7b
    nop                                           ; $58a1: $00
    jr nz, jr_0b4_5838                            ; $58a2: $20 $94

    ld [hl], d                                    ; $58a4: $72
    sbc h                                         ; $58a5: $9c

jr_0b4_58a6:
    ld a, e                                       ; $58a6: $7b
    cp l                                          ; $58a7: $bd
    ld a, e                                       ; $58a8: $7b
    nop                                           ; $58a9: $00
    jr nz, jr_0b4_5840                            ; $58aa: $20 $94

    ld [hl], d                                    ; $58ac: $72
    sbc h                                         ; $58ad: $9c

jr_0b4_58ae:
    ld a, e                                       ; $58ae: $7b
    cp l                                          ; $58af: $bd
    ld a, e                                       ; $58b0: $7b
    nop                                           ; $58b1: $00

jr_0b4_58b2:
    jr nz, jr_0b4_5848                            ; $58b2: $20 $94

    ld [hl], d                                    ; $58b4: $72
    sbc h                                         ; $58b5: $9c
    ld a, e                                       ; $58b6: $7b
    cp l                                          ; $58b7: $bd
    ld a, e                                       ; $58b8: $7b
    nop                                           ; $58b9: $00

jr_0b4_58ba:
    jr nz, jr_0b4_58bc                            ; $58ba: $20 $00

jr_0b4_58bc:
    jr nz, jr_0b4_58d6                            ; $58bc: $20 $18

    ld [hl], a                                    ; $58be: $77
    ld c, b                                       ; $58bf: $48
    ld b, l                                       ; $58c0: $45
    nop                                           ; $58c1: $00

jr_0b4_58c2:
    jr nz, jr_0b4_58c4                            ; $58c2: $20 $00

jr_0b4_58c4:
    jr nz, @+$1a                                  ; $58c4: $20 $18

    ld [hl], a                                    ; $58c6: $77
    ld c, b                                       ; $58c7: $48
    ld b, l                                       ; $58c8: $45
    nop                                           ; $58c9: $00

jr_0b4_58ca:
    jr nz, jr_0b4_58cc                            ; $58ca: $20 $00

jr_0b4_58cc:
    jr nz, @+$1a                                  ; $58cc: $20 $18

    ld [hl], a                                    ; $58ce: $77
    ld c, b                                       ; $58cf: $48
    ld b, l                                       ; $58d0: $45
    nop                                           ; $58d1: $00
    nop                                           ; $58d2: $00
    ld l, c                                       ; $58d3: $69
    ld c, l                                       ; $58d4: $4d
    sub h                                         ; $58d5: $94

jr_0b4_58d6:
    ld [hl], d                                    ; $58d6: $72
    xor h                                         ; $58d7: $ac
    ld d, l                                       ; $58d8: $55
    nop                                           ; $58d9: $00
    jr nz, jr_0b4_58e2                            ; $58da: $20 $06

    dec a                                         ; $58dc: $3d
    call $ac59                                    ; $58dd: $cd $59 $ac
    ld d, l                                       ; $58e0: $55
    nop                                           ; $58e1: $00

jr_0b4_58e2:
    jr nz, jr_0b4_58ea                            ; $58e2: $20 $06

    dec a                                         ; $58e4: $3d
    call $ac59                                    ; $58e5: $cd $59 $ac
    ld d, l                                       ; $58e8: $55

jr_0b4_58e9:
    nop                                           ; $58e9: $00

jr_0b4_58ea:
    jr nz, jr_0b4_58f2                            ; $58ea: $20 $06

    dec a                                         ; $58ec: $3d
    call $ac59                                    ; $58ed: $cd $59 $ac
    ld d, l                                       ; $58f0: $55
    nop                                           ; $58f1: $00

jr_0b4_58f2:
    jr nz, jr_0b4_58f4                            ; $58f2: $20 $00

jr_0b4_58f4:
    jr nz, jr_0b4_590e                            ; $58f4: $20 $18

    ld [hl], a                                    ; $58f6: $77
    ld c, b                                       ; $58f7: $48
    ld b, l                                       ; $58f8: $45
    nop                                           ; $58f9: $00
    jr nz, jr_0b4_58fc                            ; $58fa: $20 $00

jr_0b4_58fc:
    jr nz, @+$1a                                  ; $58fc: $20 $18

    ld [hl], a                                    ; $58fe: $77
    ld c, b                                       ; $58ff: $48
    ld b, l                                       ; $5900: $45
    nop                                           ; $5901: $00
    jr nz, jr_0b4_58e9                            ; $5902: $20 $e5

    inc a                                         ; $5904: $3c
    rst $28                                       ; $5905: $ef
    ld h, c                                       ; $5906: $61
    dec b                                         ; $5907: $05
    dec a                                         ; $5908: $3d
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    ld b, $3d                                     ; $590b: $06 $3d
    add e                                         ; $590d: $83

jr_0b4_590e:
    inc c                                         ; $590e: $0c
    ld bc, $0000                                  ; $590f: $01 $00 $00
    jr nz, jr_0b4_593b                            ; $5912: $20 $27

    ld b, c                                       ; $5914: $41
    call z, $934d                                 ; $5915: $cc $4d $93
    ld e, [hl]                                    ; $5918: $5e

jr_0b4_5919:
    nop                                           ; $5919: $00
    jr nz, jr_0b4_5943                            ; $591a: $20 $27

    ld b, c                                       ; $591c: $41
    call z, $934d                                 ; $591d: $cc $4d $93
    ld e, [hl]                                    ; $5920: $5e
    nop                                           ; $5921: $00
    jr nz, jr_0b4_594b                            ; $5922: $20 $27

    ld b, c                                       ; $5924: $41
    call z, $934d                                 ; $5925: $cc $4d $93
    ld e, [hl]                                    ; $5928: $5e
    nop                                           ; $5929: $00
    jr nz, @-$19                                  ; $592a: $20 $e5

    inc a                                         ; $592c: $3c
    rst $28                                       ; $592d: $ef
    ld h, c                                       ; $592e: $61
    dec b                                         ; $592f: $05
    dec a                                         ; $5930: $3d
    nop                                           ; $5931: $00
    jr nz, jr_0b4_5919                            ; $5932: $20 $e5

    inc a                                         ; $5934: $3c
    rst $28                                       ; $5935: $ef
    ld h, c                                       ; $5936: $61
    dec b                                         ; $5937: $05
    dec a                                         ; $5938: $3d
    nop                                           ; $5939: $00
    nop                                           ; $593a: $00

jr_0b4_593b:
    ld l, d                                       ; $593b: $6a
    ld b, l                                       ; $593c: $45
    di                                            ; $593d: $f3
    ld c, e                                       ; $593e: $4b
    ld hl, $001c                                  ; $593f: $21 $1c $00
    nop                                           ; $5942: $00

jr_0b4_5943:
    ld c, e                                       ; $5943: $4b
    ld a, [hl+]                                   ; $5944: $2a
    jp nc, Jump_0b4_4443                          ; $5945: $d2 $43 $44

    dec c                                         ; $5948: $0d
    nop                                           ; $5949: $00
    db $10                                        ; $594a: $10

jr_0b4_594b:
    rrca                                          ; $594b: $0f
    ld d, [hl]                                    ; $594c: $56
    ld a, d                                       ; $594d: $7a
    ld [hl], e                                    ; $594e: $73
    or h                                          ; $594f: $b4
    ld h, d                                       ; $5950: $62
    nop                                           ; $5951: $00
    jr nz, @+$11                                  ; $5952: $20 $0f

    ld d, [hl]                                    ; $5954: $56
    ld a, d                                       ; $5955: $7a
    ld [hl], e                                    ; $5956: $73
    or h                                          ; $5957: $b4
    ld h, d                                       ; $5958: $62
    nop                                           ; $5959: $00
    jr nz, @+$11                                  ; $595a: $20 $0f

    ld d, [hl]                                    ; $595c: $56
    ld a, d                                       ; $595d: $7a
    ld [hl], e                                    ; $595e: $73
    or h                                          ; $595f: $b4
    ld h, d                                       ; $5960: $62
    nop                                           ; $5961: $00
    jr nz, jr_0b4_59ce                            ; $5962: $20 $6a

    ld b, l                                       ; $5964: $45
    di                                            ; $5965: $f3
    ld c, e                                       ; $5966: $4b
    ld hl, $001c                                  ; $5967: $21 $1c $00

jr_0b4_596a:
    jr nz, @+$6c                                  ; $596a: $20 $6a

    ld b, l                                       ; $596c: $45
    di                                            ; $596d: $f3
    ld c, e                                       ; $596e: $4b
    ld hl, $001c                                  ; $596f: $21 $1c $00
    inc b                                         ; $5972: $04
    ld d, c                                       ; $5973: $51
    ld e, d                                       ; $5974: $5a
    and a                                         ; $5975: $a7
    add hl, de                                    ; $5976: $19
    ld e, c                                       ; $5977: $59
    ld l, a                                       ; $5978: $6f
    ld b, c                                       ; $5979: $41
    nop                                           ; $597a: $00
    ld [$d422], sp                                ; $597b: $08 $22 $d4
    ld c, e                                       ; $597e: $4b
    ld b, l                                       ; $597f: $45
    ld de, $0000                                  ; $5980: $11 $00 $00
    call nc, Call_0b4_5e31                        ; $5983: $d4 $31 $5e
    ld h, e                                       ; $5986: $63
    rst $18                                       ; $5987: $df
    ld [hl], a                                    ; $5988: $77
    nop                                           ; $5989: $00
    jr nz, jr_0b4_596a                            ; $598a: $20 $de

    ld a, a                                       ; $598c: $7f
    adc b                                         ; $598d: $88
    ld hl, $0001                                  ; $598e: $21 $01 $00
    nop                                           ; $5991: $00
    inc d                                         ; $5992: $14
    ld bc, $0000                                  ; $5993: $01 $00 $00
    jr nz, jr_0b4_5999                            ; $5996: $20 $01

    nop                                           ; $5998: $00

jr_0b4_5999:
    nop                                           ; $5999: $00
    jr nz, @+$53                                  ; $599a: $20 $51

    ld e, d                                       ; $599c: $5a
    and a                                         ; $599d: $a7
    add hl, de                                    ; $599e: $19
    ld e, c                                       ; $599f: $59
    ld l, a                                       ; $59a0: $6f
    nop                                           ; $59a1: $00
    jr nz, jr_0b4_5a16                            ; $59a2: $20 $72

    ld e, [hl]                                    ; $59a4: $5e
    ld e, d                                       ; $59a5: $5a
    ld [hl], e                                    ; $59a6: $73
    or h                                          ; $59a7: $b4
    ld h, d                                       ; $59a8: $62
    nop                                           ; $59a9: $00
    nop                                           ; $59aa: $00
    ld c, a                                       ; $59ab: $4f
    dec sp                                        ; $59ac: $3b
    ld [$7b22], sp                                ; $59ad: $08 $22 $7b
    ld [hl], e                                    ; $59b0: $73
    ld b, d                                       ; $59b1: $42
    nop                                           ; $59b2: $00
    or d                                          ; $59b3: $b2
    db $10                                        ; $59b4: $10
    ld [hl], $43                                  ; $59b5: $36 $43
    ld e, a                                       ; $59b7: $5f
    dec e                                         ; $59b8: $1d
    ld h, b                                       ; $59b9: $60
    inc b                                         ; $59ba: $04
    add hl, sp                                    ; $59bb: $39
    ld a, $bf                                     ; $59bc: $3e $bf
    ld h, a                                       ; $59be: $67
    inc l                                         ; $59bf: $2c
    ld de, $0401                                  ; $59c0: $11 $01 $04
    di                                            ; $59c3: $f3
    ld c, d                                       ; $59c4: $4a
    cp [hl]                                       ; $59c5: $be
    ld [hl], e                                    ; $59c6: $73
    ret                                           ; $59c7: $c9


    ld hl, $2000                                  ; $59c8: $21 $00 $20
    ld bc, $be00                                  ; $59cb: $01 $00 $be

jr_0b4_59ce:
    ld [hl], e                                    ; $59ce: $73
    ret                                           ; $59cf: $c9


    ld hl, $2000                                  ; $59d0: $21 $00 $20
    ld c, a                                       ; $59d3: $4f
    dec sp                                        ; $59d4: $3b
    ld [$7b22], sp                                ; $59d5: $08 $22 $7b
    ld [hl], e                                    ; $59d8: $73
    nop                                           ; $59d9: $00
    inc d                                         ; $59da: $14
    jr nc, jr_0b4_5a37                            ; $59db: $30 $5a

    cp l                                          ; $59dd: $bd
    ld a, e                                       ; $59de: $7b
    or $66                                        ; $59df: $f6 $66
    inc h                                         ; $59e1: $24
    inc b                                         ; $59e2: $04
    sub a                                         ; $59e3: $97
    inc c                                         ; $59e4: $0c
    push de                                       ; $59e5: $d5
    ld sp, $0dbd                                  ; $59e6: $31 $bd $0d
    ld hl, $bb08                                  ; $59e9: $21 $08 $bb
    ld hl, $7fff                                  ; $59ec: $21 $ff $7f
    ld c, [hl]                                    ; $59ef: $4e
    nop                                           ; $59f0: $00

jr_0b4_59f1:
    ld [bc], a                                    ; $59f1: $02
    nop                                           ; $59f2: $00
    push de                                       ; $59f3: $d5
    dec l                                         ; $59f4: $2d
    xor e                                         ; $59f5: $ab
    inc c                                         ; $59f6: $0c
    sbc d                                         ; $59f7: $9a
    ld [$0000], sp                                ; $59f8: $08 $00 $00
    cp [hl]                                       ; $59fb: $be
    ld c, d                                       ; $59fc: $4a
    rr l                                          ; $59fd: $cb $1d
    rst $18                                       ; $59ff: $df
    ld l, a                                       ; $5a00: $6f
    nop                                           ; $5a01: $00
    jr nz, jr_0b4_5a05                            ; $5a02: $20 $01

    nop                                           ; $5a04: $00

jr_0b4_5a05:
    add e                                         ; $5a05: $83
    inc c                                         ; $5a06: $0c
    rst $18                                       ; $5a07: $df
    ld l, a                                       ; $5a08: $6f

Jump_0b4_5a09:
    nop                                           ; $5a09: $00
    jr nz, jr_0b4_5a54                            ; $5a0a: $20 $48

    ld b, l                                       ; $5a0c: $45
    push de                                       ; $5a0d: $d5
    ld sp, $0dbd                                  ; $5a0e: $31 $bd $0d
    ld bc, $0f04                                  ; $5a11: $01 $04 $0f
    ld d, [hl]                                    ; $5a14: $56
    ld l, e                                       ; $5a15: $6b

jr_0b4_5a16:
    add hl, sp                                    ; $5a16: $39
    ld e, e                                       ; $5a17: $5b
    ld l, a                                       ; $5a18: $6f
    ld [hl+], a                                   ; $5a19: $22
    ld [$5f3d], sp                                ; $5a1a: $08 $3d $5f
    ld [hl], d                                    ; $5a1d: $72
    nop                                           ; $5a1e: $00
    ld h, h                                       ; $5a1f: $64
    ld d, c                                       ; $5a20: $51
    nop                                           ; $5a21: $00
    inc c                                         ; $5a22: $0c
    ld e, h                                       ; $5a23: $5c
    ld h, a                                       ; $5a24: $67
    adc l                                         ; $5a25: $8d
    inc b                                         ; $5a26: $04
    ld h, h                                       ; $5a27: $64
    ld d, c                                       ; $5a28: $51

jr_0b4_5a29:
    inc hl                                        ; $5a29: $23
    nop                                           ; $5a2a: $00
    dec de                                        ; $5a2b: $1b
    ld l, $3e                                     ; $5a2c: $2e $3e
    ld e, a                                       ; $5a2e: $5f
    adc a                                         ; $5a2f: $8f
    ld [$0001], sp                                ; $5a30: $08 $01 $00
    sub [hl]                                      ; $5a33: $96
    dec h                                         ; $5a34: $25
    cp l                                          ; $5a35: $bd
    ld c, d                                       ; $5a36: $4a

jr_0b4_5a37:
    rlca                                          ; $5a37: $07
    dec c                                         ; $5a38: $0d
    nop                                           ; $5a39: $00
    jr nz, jr_0b4_59f1                            ; $5a3a: $20 $b5

    ld c, a                                       ; $5a3c: $4f
    add a                                         ; $5a3d: $87
    add hl, de                                    ; $5a3e: $19
    ld bc, $0000                                  ; $5a3f: $01 $00 $00
    jr nz, jr_0b4_5a29                            ; $5a42: $20 $e5

    inc a                                         ; $5a44: $3c
    ld bc, $2700                                  ; $5a45: $01 $00 $27
    ld b, c                                       ; $5a48: $41
    ld [hl+], a                                   ; $5a49: $22
    ld [$51ed], sp                                ; $5a4a: $08 $ed $51
    rst $30                                       ; $5a4d: $f7
    ld h, d                                       ; $5a4e: $62
    ld hl, sp+$31                                 ; $5a4f: $f8 $31
    ld h, $00                                     ; $5a51: $26 $00
    cp h                                          ; $5a53: $bc

jr_0b4_5a54:
    dec e                                         ; $5a54: $1d
    ccf                                           ; $5a55: $3f
    ld e, a                                       ; $5a56: $5f
    or d                                          ; $5a57: $b2
    ld [$0cab], sp                                ; $5a58: $08 $ab $0c
    sbc d                                         ; $5a5b: $9a
    ld b, [hl]                                    ; $5a5c: $46
    sub [hl]                                      ; $5a5d: $96
    dec h                                         ; $5a5e: $25
    ld a, $5b                                     ; $5a5f: $3e $5b
    inc hl                                        ; $5a61: $23
    nop                                           ; $5a62: $00
    ld sp, hl                                     ; $5a63: $f9
    dec h                                         ; $5a64: $25
    dec e                                         ; $5a65: $1d
    ld d, a                                       ; $5a66: $57
    ld hl, sp+$04                                 ; $5a67: $f8 $04
    jr nz, jr_0b4_5a6b                            ; $5a69: $20 $00

jr_0b4_5a6b:
    ld [hl-], a                                   ; $5a6b: $32
    add hl, de                                    ; $5a6c: $19
    xor d                                         ; $5a6d: $aa
    inc c                                         ; $5a6e: $0c
    ld sp, hl                                     ; $5a6f: $f9
    ld sp, $2000                                  ; $5a70: $31 $00 $20
    daa                                           ; $5a73: $27
    ld b, l                                       ; $5a74: $45
    sub e                                         ; $5a75: $93
    ld e, [hl]                                    ; $5a76: $5e
    ld bc, $0000                                  ; $5a77: $01 $00 $00
    inc d                                         ; $5a7a: $14
    xor h                                         ; $5a7b: $ac
    ld c, c                                       ; $5a7c: $49
    sub h                                         ; $5a7d: $94
    ld l, [hl]                                    ; $5a7e: $6e
    ld b, $2d                                     ; $5a7f: $06 $2d
    ld hl, $1b08                                  ; $5a81: $21 $08 $1b
    rla                                           ; $5a84: $17
    rla                                           ; $5a85: $17
    ld h, a                                       ; $5a86: $67
    ld [$6521], sp                                ; $5a87: $08 $21 $65
    inc c                                         ; $5a8a: $0c
    cp e                                          ; $5a8b: $bb
    ld c, [hl]                                    ; $5a8c: $4e
    dec sp                                        ; $5a8d: $3b
    add hl, bc                                    ; $5a8e: $09
    cp a                                          ; $5a8f: $bf
    ld l, a                                       ; $5a90: $6f
    inc bc                                        ; $5a91: $03
    nop                                           ; $5a92: $00
    ld a, c                                       ; $5a93: $79
    ld b, d                                       ; $5a94: $42
    ld e, $5b                                     ; $5a95: $1e $5b
    ld c, h                                       ; $5a97: $4c
    dec h                                         ; $5a98: $25
    inc h                                         ; $5a99: $24
    nop                                           ; $5a9a: $00
    ld d, e                                       ; $5a9b: $53
    dec e                                         ; $5a9c: $1d
    ld e, c                                       ; $5a9d: $59
    ld a, $6e                                     ; $5a9e: $3e $6e
    inc b                                         ; $5aa0: $04
    ld bc, $5300                                  ; $5aa1: $01 $00 $53
    dec e                                         ; $5aa4: $1d
    jp Jump_0b4_680c                              ; $5aa5: $c3 $0c $68


    ld [$0400], sp                                ; $5aa8: $08 $00 $04
    ld c, b                                       ; $5aab: $48
    ld b, l                                       ; $5aac: $45
    ld sp, $0062                                  ; $5aad: $31 $62 $00
    jr nz, jr_0b4_5ab2                            ; $5ab0: $20 $00

jr_0b4_5ab2:
    inc b                                         ; $5ab2: $04
    ld sp, $496a                                  ; $5ab3: $31 $6a $49
    ld c, l                                       ; $5ab6: $4d
    ld e, e                                       ; $5ab7: $5b
    ld [hl], a                                    ; $5ab8: $77
    nop                                           ; $5ab9: $00
    nop                                           ; $5aba: $00
    ld h, a                                       ; $5abb: $67
    ld [$10ed], sp                                ; $5abc: $08 $ed $10
    rst $20                                       ; $5abf: $e7
    inc e                                         ; $5ac0: $1c
    inc hl                                        ; $5ac1: $23
    inc b                                         ; $5ac2: $04
    ld sp, $581d                                  ; $5ac3: $31 $1d $58
    ld b, d                                       ; $5ac6: $42
    rst $28                                       ; $5ac7: $ef
    inc c                                         ; $5ac8: $0c
    ld l, b                                       ; $5ac9: $68
    inc b                                         ; $5aca: $04
    jr jr_0b4_5b07                                ; $5acb: $18 $3a

    ld d, h                                       ; $5acd: $54
    add hl, de                                    ; $5ace: $19
    rst $38                                       ; $5acf: $ff
    ld d, d                                       ; $5ad0: $52
    nop                                           ; $5ad1: $00
    nop                                           ; $5ad2: $00
    ld h, a                                       ; $5ad3: $67
    ld [$0022], sp                                ; $5ad4: $08 $22 $00
    ld bc, $0200                                  ; $5ad7: $01 $00 $02
    nop                                           ; $5ada: $00
    inc l                                         ; $5adb: $2c
    ld l, $fe                                     ; $5adc: $2e $fe
    ld d, d                                       ; $5ade: $52
    jr z, jr_0b4_5afa                             ; $5adf: $28 $19

    nop                                           ; $5ae1: $00
    nop                                           ; $5ae2: $00
    xor a                                         ; $5ae3: $af
    ld c, c                                       ; $5ae4: $49
    ld e, d                                       ; $5ae5: $5a
    ld a, e                                       ; $5ae6: $7b
    nop                                           ; $5ae7: $00
    jr nz, jr_0b4_5aea                            ; $5ae8: $20 $00

jr_0b4_5aea:
    nop                                           ; $5aea: $00
    halt                                          ; $5aeb: $76
    ld e, [hl]                                    ; $5aec: $5e
    ld d, h                                       ; $5aed: $54
    dec e                                         ; $5aee: $1d
    cp l                                          ; $5aef: $bd
    ld a, e                                       ; $5af0: $7b
    ld b, e                                       ; $5af1: $43
    inc b                                         ; $5af2: $04
    rst $10                                       ; $5af3: $d7
    dec l                                         ; $5af4: $2d
    cp h                                          ; $5af5: $bc
    ld c, d                                       ; $5af6: $4a
    rrca                                          ; $5af7: $0f
    dec d                                         ; $5af8: $15
    nop                                           ; $5af9: $00

jr_0b4_5afa:
    nop                                           ; $5afa: $00
    jr jr_0b4_5b33                                ; $5afb: $18 $36

    ld sp, $3e1d                                  ; $5afd: $31 $1d $3e
    ld e, e                                       ; $5b00: $5b
    ld bc, $9b00                                  ; $5b01: $01 $00 $9b
    ld c, d                                       ; $5b04: $4a
    rst $28                                       ; $5b05: $ef
    db $10                                        ; $5b06: $10

jr_0b4_5b07:
    ld e, $5b                                     ; $5b07: $1e $5b
    nop                                           ; $5b09: $00
    nop                                           ; $5b0a: $00
    ld d, c                                       ; $5b0b: $51
    dec e                                         ; $5b0c: $1d
    adc c                                         ; $5b0d: $89
    ld [$427e], sp                                ; $5b0e: $08 $7e $42
    ld b, b                                       ; $5b11: $40
    nop                                           ; $5b12: $00
    rst $10                                       ; $5b13: $d7
    ld sp, $5b3e                                  ; $5b14: $31 $3e $5b
    inc l                                         ; $5b17: $2c
    add hl, de                                    ; $5b18: $19
    ld [hl+], a                                   ; $5b19: $22
    nop                                           ; $5b1a: $00
    sub h                                         ; $5b1b: $94
    ld l, [hl]                                    ; $5b1c: $6e
    nop                                           ; $5b1d: $00
    jr nz, jr_0b4_5b26                            ; $5b1e: $20 $06

    ld b, c                                       ; $5b20: $41
    nop                                           ; $5b21: $00
    inc b                                         ; $5b22: $04
    ld a, [de]                                    ; $5b23: $1a
    ld [hl], $10                                  ; $5b24: $36 $10

jr_0b4_5b26:
    ld h, [hl]                                    ; $5b26: $66
    jr jr_0b4_5ba0                                ; $5b27: $18 $77

    ld [hl+], a                                   ; $5b29: $22
    nop                                           ; $5b2a: $00
    sub $2d                                       ; $5b2b: $d6 $2d
    call c, Call_000_0f52                         ; $5b2d: $dc $52 $0f
    dec d                                         ; $5b30: $15
    nop                                           ; $5b31: $00
    nop                                           ; $5b32: $00

jr_0b4_5b33:
    sub e                                         ; $5b33: $93
    dec h                                         ; $5b34: $25
    ld e, $5b                                     ; $5b35: $1e $5b
    xor e                                         ; $5b37: $ab
    ld [$0022], sp                                ; $5b38: $08 $22 $00
    jr c, jr_0b4_5b77                             ; $5b3b: $38 $3a

    call z, $9b14                                 ; $5b3d: $cc $14 $9b
    ld a, a                                       ; $5b40: $7f
    inc hl                                        ; $5b41: $23
    inc b                                         ; $5b42: $04
    or $31                                        ; $5b43: $f6 $31
    ld e, [hl]                                    ; $5b45: $5e
    ld h, e                                       ; $5b46: $63
    cpl                                           ; $5b47: $2f
    dec e                                         ; $5b48: $1d
    dec h                                         ; $5b49: $25
    nop                                           ; $5b4a: $00
    ld a, [$3231]                                 ; $5b4b: $fa $31 $32
    add hl, de                                    ; $5b4e: $19
    ld e, $57                                     ; $5b4f: $1e $57
    ld [hl+], a                                   ; $5b51: $22
    nop                                           ; $5b52: $00
    push hl                                       ; $5b53: $e5
    inc a                                         ; $5b54: $3c
    nop                                           ; $5b55: $00
    jr nz, jr_0b4_5b26                            ; $5b56: $20 $ce

    ld e, c                                       ; $5b58: $59
    ld [bc], a                                    ; $5b59: $02
    ld [$41d2], sp                                ; $5b5a: $08 $d2 $41
    ld b, $3d                                     ; $5b5d: $06 $3d
    rst $30                                       ; $5b5f: $f7

Call_0b4_5b60:
    ld [hl], d                                    ; $5b60: $72
    ld [hl], d                                    ; $5b61: $72
    ld hl, $4abc                                  ; $5b62: $21 $bc $4a
    ld a, $5f                                     ; $5b65: $3e $5f
    ld e, c                                       ; $5b67: $59
    ld a, $00                                     ; $5b68: $3e $00
    nop                                           ; $5b6a: $00
    xor $10                                       ; $5b6b: $ee $10
    ld [hl], h                                    ; $5b6d: $74
    ld hl, $0023                                  ; $5b6e: $21 $23 $00
    nop                                           ; $5b71: $00
    nop                                           ; $5b72: $00
    xor d                                         ; $5b73: $aa
    add hl, sp                                    ; $5b74: $39
    or l                                          ; $5b75: $b5
    dec h                                         ; $5b76: $25

jr_0b4_5b77:
    ld h, h                                       ; $5b77: $64
    inc c                                         ; $5b78: $0c
    ld bc, $f500                                  ; $5b79: $01 $00 $f5
    ld de, $1f5e                                  ; $5b7c: $11 $5e $1f
    ld e, a                                       ; $5b7f: $5f
    ld h, e                                       ; $5b80: $63
    nop                                           ; $5b81: $00
    nop                                           ; $5b82: $00
    ld [hl], c                                    ; $5b83: $71
    ld hl, $3a3a                                  ; $5b84: $21 $3a $3a
    xor l                                         ; $5b87: $ad
    inc c                                         ; $5b88: $0c
    nop                                           ; $5b89: $00
    nop                                           ; $5b8a: $00
    jr z, @+$3b                                   ; $5b8b: $28 $39

    inc sp                                        ; $5b8d: $33
    ld c, [hl]                                    ; $5b8e: $4e
    nop                                           ; $5b8f: $00
    jr nz, jr_0b4_5b92                            ; $5b90: $20 $00

jr_0b4_5b92:
    db $10                                        ; $5b92: $10
    ld c, b                                       ; $5b93: $48
    ld b, l                                       ; $5b94: $45
    add hl, de                                    ; $5b95: $19
    ld [hl], $ed                                  ; $5b96: $36 $ed
    db $10                                        ; $5b98: $10
    ld sp, $9b19                                  ; $5b99: $31 $19 $9b
    ld b, [hl]                                    ; $5b9c: $46
    dec a                                         ; $5b9d: $3d
    ld e, a                                       ; $5b9e: $5f
    sub l                                         ; $5b9f: $95

jr_0b4_5ba0:
    dec h                                         ; $5ba0: $25
    nop                                           ; $5ba1: $00
    nop                                           ; $5ba2: $00
    ld a, [$0d2d]                                 ; $5ba3: $fa $2d $0d
    dec d                                         ; $5ba6: $15
    sbc $4a                                       ; $5ba7: $de $4a
    nop                                           ; $5ba9: $00
    nop                                           ; $5baa: $00
    ld hl, sp+$2d                                 ; $5bab: $f8 $2d
    ld a, a                                       ; $5bad: $7f
    ld h, e                                       ; $5bae: $63
    add [hl]                                      ; $5baf: $86
    inc b                                         ; $5bb0: $04
    ld hl, $fa04                                  ; $5bb1: $21 $04 $fa
    ld [de], a                                    ; $5bb4: $12
    srl l                                         ; $5bb5: $cb $3d
    push de                                       ; $5bb7: $d5
    ld e, [hl]                                    ; $5bb8: $5e
    ld b, d                                       ; $5bb9: $42
    inc b                                         ; $5bba: $04
    ld d, c                                       ; $5bbb: $51
    ld c, [hl]                                    ; $5bbc: $4e
    ld [hl-], a                                   ; $5bbd: $32
    ld [bc], a                                    ; $5bbe: $02
    cp $4a                                        ; $5bbf: $fe $4a
    nop                                           ; $5bc1: $00
    inc e                                         ; $5bc2: $1c
    rrca                                          ; $5bc3: $0f
    ld e, d                                       ; $5bc4: $5a
    ld a, $5b                                     ; $5bc5: $3e $5b
    ld c, b                                       ; $5bc7: $48
    ld b, c                                       ; $5bc8: $41
    nop                                           ; $5bc9: $00
    inc d                                         ; $5bca: $14
    ld c, b                                       ; $5bcb: $48
    ld b, l                                       ; $5bcc: $45
    add hl, de                                    ; $5bcd: $19
    ld [hl], $ee                                  ; $5bce: $36 $ee
    inc d                                         ; $5bd0: $14
    inc hl                                        ; $5bd1: $23
    inc b                                         ; $5bd2: $04
    ld e, d                                       ; $5bd3: $5a
    ld a, $53                                     ; $5bd4: $3e $53
    dec e                                         ; $5bd6: $1d
    dec e                                         ; $5bd7: $1d
    ld e, e                                       ; $5bd8: $5b
    nop                                           ; $5bd9: $00
    nop                                           ; $5bda: $00
    sub h                                         ; $5bdb: $94
    dec h                                         ; $5bdc: $25
    sbc $4e                                       ; $5bdd: $de $4e
    add hl, de                                    ; $5bdf: $19
    ld [hl], $00                                  ; $5be0: $36 $00
    nop                                           ; $5be2: $00
    ret c                                         ; $5be3: $d8

    dec l                                         ; $5be4: $2d
    ld a, a                                       ; $5be5: $7f
    ld h, e                                       ; $5be6: $63

jr_0b4_5be7:
    add a                                         ; $5be7: $87
    inc c                                         ; $5be8: $0c
    ld bc, $f600                                  ; $5be9: $01 $00 $f6
    dec [hl]                                      ; $5bec: $35
    ld a, $57                                     ; $5bed: $3e $57
    cp a                                          ; $5bef: $bf
    ld l, a                                       ; $5bf0: $6f
    nop                                           ; $5bf1: $00
    nop                                           ; $5bf2: $00
    or l                                          ; $5bf3: $b5
    add hl, hl                                    ; $5bf4: $29
    cp [hl]                                       ; $5bf5: $be
    ld c, d                                       ; $5bf6: $4a
    dec e                                         ; $5bf7: $1d
    ld d, a                                       ; $5bf8: $57
    ld bc, $3300                                  ; $5bf9: $01 $00 $33
    add hl, de                                    ; $5bfc: $19
    nop                                           ; $5bfd: $00

jr_0b4_5bfe:
    jr nz, @+$7e                                  ; $5bfe: $20 $7c

    ld a, $00                                     ; $5c00: $3e $00
    jr jr_0b4_5c14                                ; $5c02: $18 $10

    add hl, de                                    ; $5c04: $19
    daa                                           ; $5c05: $27
    ld b, c                                       ; $5c06: $41
    cpl                                           ; $5c07: $2f
    ld d, [hl]                                    ; $5c08: $56
    ld bc, $f800                                  ; $5c09: $01 $00 $f8
    ld sp, $5b1d                                  ; $5c0c: $31 $1d $5b
    db $10                                        ; $5c0f: $10
    dec d                                         ; $5c10: $15
    nop                                           ; $5c11: $00
    nop                                           ; $5c12: $00
    rst $28                                       ; $5c13: $ef

jr_0b4_5c14:
    db $10                                        ; $5c14: $10
    xor l                                         ; $5c15: $ad
    ld [$29d7], sp                                ; $5c16: $08 $d7 $29
    ld bc, $b500                                  ; $5c19: $01 $00 $b5
    add hl, hl                                    ; $5c1c: $29
    cpl                                           ; $5c1d: $2f
    dec e                                         ; $5c1e: $1d
    ld a, a                                       ; $5c1f: $7f
    ld h, e                                       ; $5c20: $63
    ld b, l                                       ; $5c21: $45
    inc b                                         ; $5c22: $04
    ld hl, sp+$31                                 ; $5c23: $f8 $31
    ld e, [hl]                                    ; $5c25: $5e
    ld e, a                                       ; $5c26: $5f
    sbc h                                         ; $5c27: $9c
    ld b, d                                       ; $5c28: $42
    ld bc, $9d00                                  ; $5c29: $01 $00 $9d
    ld b, [hl]                                    ; $5c2c: $46
    db $fd                                        ; $5c2d: $fd
    ld d, d                                       ; $5c2e: $52
    ld b, [hl]                                    ; $5c2f: $46
    inc b                                         ; $5c30: $04
    nop                                           ; $5c31: $00
    nop                                           ; $5c32: $00
    adc d                                         ; $5c33: $8a
    inc c                                         ; $5c34: $0c
    nop                                           ; $5c35: $00
    jr nz, jr_0b4_5c69                            ; $5c36: $20 $31

    add hl, de                                    ; $5c38: $19
    nop                                           ; $5c39: $00
    jr jr_0b4_5be7                                ; $5c3a: $18 $ab

    ld c, l                                       ; $5c3c: $4d
    adc c                                         ; $5c3d: $89
    ld [$1d53], sp                                ; $5c3e: $08 $53 $1d
    db $ed                                        ; $5c41: $ed
    db $10                                        ; $5c42: $10
    ld a, d                                       ; $5c43: $7a
    ld b, [hl]                                    ; $5c44: $46
    or [hl]                                       ; $5c45: $b6
    add hl, hl                                    ; $5c46: $29
    db $fd                                        ; $5c47: $fd
    ld d, [hl]                                    ; $5c48: $56
    nop                                           ; $5c49: $00
    nop                                           ; $5c4a: $00
    db $10                                        ; $5c4b: $10
    dec d                                         ; $5c4c: $15
    cp a                                          ; $5c4d: $bf
    ld l, a                                       ; $5c4e: $6f
    sub h                                         ; $5c4f: $94
    add hl, hl                                    ; $5c50: $29
    nop                                           ; $5c51: $00
    nop                                           ; $5c52: $00
    or d                                          ; $5c53: $b2
    dec l                                         ; $5c54: $2d
    ld e, $57                                     ; $5c55: $1e $57
    ld a, [c]                                     ; $5c57: $f2
    inc c                                         ; $5c58: $0c
    nop                                           ; $5c59: $00
    nop                                           ; $5c5a: $00
    ld a, [de]                                    ; $5c5b: $1a
    ld [hl-], a                                   ; $5c5c: $32
    ld a, $5b                                     ; $5c5d: $3e $5b
    rrca                                          ; $5c5f: $0f
    dec d                                         ; $5c60: $15
    ld bc, $f900                                  ; $5c61: $01 $00 $f9
    dec l                                         ; $5c64: $2d
    rrc h                                         ; $5c65: $cb $0c
    sbc [hl]                                      ; $5c67: $9e
    ld b, d                                       ; $5c68: $42

jr_0b4_5c69:
    ld [bc], a                                    ; $5c69: $02
    nop                                           ; $5c6a: $00
    xor $10                                       ; $5c6b: $ee $10
    nop                                           ; $5c6d: $00
    jr nz, jr_0b4_5ce7                            ; $5c6e: $20 $77

    dec e                                         ; $5c70: $1d
    nop                                           ; $5c71: $00
    jr nz, jr_0b4_5bfe                            ; $5c72: $20 $8a

    ld c, c                                       ; $5c74: $49
    or h                                          ; $5c75: $b4
    ld h, d                                       ; $5c76: $62
    ld b, h                                       ; $5c77: $44
    inc b                                         ; $5c78: $04
    adc c                                         ; $5c79: $89
    ld [$427a], sp                                ; $5c7a: $08 $7a $42
    sub [hl]                                      ; $5c7d: $96
    ld hl, $56fc                                  ; $5c7e: $21 $fc $56
    nop                                           ; $5c81: $00
    nop                                           ; $5c82: $00
    ld e, [hl]                                    ; $5c83: $5e
    ld e, a                                       ; $5c84: $5f
    add $0c                                       ; $5c85: $c6 $0c
    jr nc, jr_0b4_5caa                            ; $5c87: $30 $21

    nop                                           ; $5c89: $00
    nop                                           ; $5c8a: $00
    rst $18                                       ; $5c8b: $df
    ld c, d                                       ; $5c8c: $4a
    dec c                                         ; $5c8d: $0d
    dec e                                         ; $5c8e: $1d
    ld e, [hl]                                    ; $5c8f: $5e
    ld h, e                                       ; $5c90: $63
    ld b, l                                       ; $5c91: $45
    inc b                                         ; $5c92: $04
    reti                                          ; $5c93: $d9


    add hl, hl                                    ; $5c94: $29
    db $dd                                        ; $5c95: $dd
    ld d, d                                       ; $5c96: $52
    ld a, [hl]                                    ; $5c97: $7e
    ld h, a                                       ; $5c98: $67
    ld bc, $1c00                                  ; $5c99: $01 $00 $1c
    ld l, $67                                     ; $5c9c: $2e $67
    inc b                                         ; $5c9e: $04
    xor h                                         ; $5c9f: $ac
    inc c                                         ; $5ca0: $0c
    nop                                           ; $5ca1: $00
    nop                                           ; $5ca2: $00
    ld sp, $0019                                  ; $5ca3: $31 $19 $00
    jr nz, jr_0b4_5cdc                            ; $5ca6: $20 $34

    dec d                                         ; $5ca8: $15
    nop                                           ; $5ca9: $00

jr_0b4_5caa:
    inc e                                         ; $5caa: $1c
    xor h                                         ; $5cab: $ac
    ld c, l                                       ; $5cac: $4d
    or h                                          ; $5cad: $b4
    ld h, d                                       ; $5cae: $62
    sbc e                                         ; $5caf: $9b
    ld [hl], a                                    ; $5cb0: $77
    ld bc, $0f00                                  ; $5cb1: $01 $00 $0f
    dec d                                         ; $5cb4: $15
    adc b                                         ; $5cb5: $88
    inc c                                         ; $5cb6: $0c
    ld [hl], l                                    ; $5cb7: $75
    ld hl, $0000                                  ; $5cb8: $21 $00 $00
    ld [hl], d                                    ; $5cbb: $72
    ld c, a                                       ; $5cbc: $4f
    db $dd                                        ; $5cbd: $dd
    ld c, [hl]                                    ; $5cbe: $4e
    push hl                                       ; $5cbf: $e5
    inc d                                         ; $5cc0: $14
    ld [hl+], a                                   ; $5cc1: $22
    inc b                                         ; $5cc2: $04
    ld a, l                                       ; $5cc3: $7d
    ld a, $74                                     ; $5cc4: $3e $74
    dec e                                         ; $5cc6: $1d
    ld a, $5f                                     ; $5cc7: $3e $5f
    ld [hl+], a                                   ; $5cc9: $22
    nop                                           ; $5cca: $00
    ld [hl], h                                    ; $5ccb: $74
    dec e                                         ; $5ccc: $1d
    cp l                                          ; $5ccd: $bd
    ld c, d                                       ; $5cce: $4a
    ld sp, hl                                     ; $5ccf: $f9
    dec l                                         ; $5cd0: $2d
    ld bc, $5a00                                  ; $5cd1: $01 $00 $5a
    ld l, a                                       ; $5cd4: $6f
    xor [hl]                                      ; $5cd5: $ae
    inc c                                         ; $5cd6: $0c
    ld [hl], c                                    ; $5cd7: $71
    dec h                                         ; $5cd8: $25
    nop                                           ; $5cd9: $00
    nop                                           ; $5cda: $00
    sub e                                         ; $5cdb: $93

jr_0b4_5cdc:
    ld e, [hl]                                    ; $5cdc: $5e
    nop                                           ; $5cdd: $00
    jr nz, jr_0b4_5cf8                            ; $5cde: $20 $18

    ld l, e                                       ; $5ce0: $6b
    nop                                           ; $5ce1: $00
    jr nz, @-$73                                  ; $5ce2: $20 $8b

    ld c, c                                       ; $5ce4: $49
    push de                                       ; $5ce5: $d5
    ld h, [hl]                                    ; $5ce6: $66

jr_0b4_5ce7:
    cpl                                           ; $5ce7: $2f
    ld d, [hl]                                    ; $5ce8: $56
    nop                                           ; $5ce9: $00
    nop                                           ; $5cea: $00
    ld c, c                                       ; $5ceb: $49
    ld a, [hl+]                                   ; $5cec: $2a
    pop bc                                        ; $5ced: $c1
    ld [$0040], sp                                ; $5cee: $08 $40 $00
    ld bc, $6a00                                  ; $5cf1: $01 $00 $6a
    ld [hl-], a                                   ; $5cf4: $32
    xor $10                                       ; $5cf5: $ee $10
    ld a, h                                       ; $5cf7: $7c

jr_0b4_5cf8:
    ld a, $cc                                     ; $5cf8: $3e $cc
    inc c                                         ; $5cfa: $0c
    ld a, h                                       ; $5cfb: $7c
    ld a, $75                                     ; $5cfc: $3e $75
    dec e                                         ; $5cfe: $1d
    sub [hl]                                      ; $5cff: $96
    ld hl, $0001                                  ; $5d00: $21 $01 $00
    inc [hl]                                      ; $5d03: $34
    dec d                                         ; $5d04: $15
    cp b                                          ; $5d05: $b8
    dec h                                         ; $5d06: $25
    xor e                                         ; $5d07: $ab
    inc c                                         ; $5d08: $0c
    nop                                           ; $5d09: $00
    nop                                           ; $5d0a: $00
    cp b                                          ; $5d0b: $b8
    ld c, $39                                     ; $5d0c: $0e $39
    ld l, e                                       ; $5d0e: $6b
    push bc                                       ; $5d0f: $c5
    inc e                                         ; $5d10: $1c
    nop                                           ; $5d11: $00
    jr nz, jr_0b4_5d65                            ; $5d12: $20 $51

jr_0b4_5d14:
    ld e, d                                       ; $5d14: $5a
    rst $30                                       ; $5d15: $f7
    ld l, d                                       ; $5d16: $6a
    sbc h                                         ; $5d17: $9c
    ld [hl], a                                    ; $5d18: $77
    nop                                           ; $5d19: $00
    jr nz, jr_0b4_5d14                            ; $5d1a: $20 $f8

    ld e, e                                       ; $5d1c: $5b
    ld c, b                                       ; $5d1d: $48
    ld b, c                                       ; $5d1e: $41
    ld bc, $0000                                  ; $5d1f: $01 $00 $00
    nop                                           ; $5d22: $00
    call $0332                                    ; $5d23: $cd $32 $03
    dec c                                         ; $5d26: $0d
    ld l, c                                       ; $5d27: $69
    inc b                                         ; $5d28: $04
    ld [hl+], a                                   ; $5d29: $22
    nop                                           ; $5d2a: $00
    or [hl]                                       ; $5d2b: $b6
    dec h                                         ; $5d2c: $25
    ld de, $9e15                                  ; $5d2d: $11 $15 $9e
    ld b, d                                       ; $5d30: $42
    nop                                           ; $5d31: $00
    nop                                           ; $5d32: $00
    xor e                                         ; $5d33: $ab
    inc c                                         ; $5d34: $0c
    db $10                                        ; $5d35: $10
    dec d                                         ; $5d36: $15
    ld h, a                                       ; $5d37: $67
    inc b                                         ; $5d38: $04

jr_0b4_5d39:
    ld bc, $5400                                  ; $5d39: $01 $00 $54
    add hl, de                                    ; $5d3c: $19
    ld a, [de]                                    ; $5d3d: $1a
    ld [hl-], a                                   ; $5d3e: $32
    adc b                                         ; $5d3f: $88
    ld [$0000], sp                                ; $5d40: $08 $00 $00
    or h                                          ; $5d43: $b4
    ld h, d                                       ; $5d44: $62
    and d                                         ; $5d45: $a2
    ld [$735a], sp                                ; $5d46: $08 $5a $73
    nop                                           ; $5d49: $00
    jr nz, jr_0b4_5d39                            ; $5d4a: $20 $ed

jr_0b4_5d4c:
    ld d, c                                       ; $5d4c: $51
    ld [hl], d                                    ; $5d4d: $72
    ld e, [hl]                                    ; $5d4e: $5e
    cpl                                           ; $5d4f: $2f
    ld d, [hl]                                    ; $5d50: $56
    nop                                           ; $5d51: $00
    jr nz, jr_0b4_5d4c                            ; $5d52: $20 $f8

    ld e, e                                       ; $5d54: $5b
    ld bc, $a500                                  ; $5d55: $01 $00 $a5
    ld de, $0000                                  ; $5d58: $11 $00 $00
    and a                                         ; $5d5b: $a7
    add hl, de                                    ; $5d5c: $19
    xor l                                         ; $5d5d: $ad
    ld [hl-], a                                   ; $5d5e: $32
    ret nz                                        ; $5d5f: $c0

    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    nop                                           ; $5d62: $00
    ld [de], a                                    ; $5d63: $12
    dec d                                         ; $5d64: $15

jr_0b4_5d65:
    sbc b                                         ; $5d65: $98
    dec h                                         ; $5d66: $25
    ld c, d                                       ; $5d67: $4a
    inc b                                         ; $5d68: $04
    ld b, l                                       ; $5d69: $45
    ld [$1d76], sp                                ; $5d6a: $08 $76 $1d
    ld de, $d919                                  ; $5d6d: $11 $19 $d9
    add hl, hl                                    ; $5d70: $29
    inc hl                                        ; $5d71: $23
    nop                                           ; $5d72: $00
    ld [de], a                                    ; $5d73: $12
    ld de, $4a52                                  ; $5d74: $11 $52 $4a
    sub a                                         ; $5d77: $97
    ld hl, $0000                                  ; $5d78: $21 $00 $00
    ret z                                         ; $5d7b: $c8

    dec e                                         ; $5d7c: $1d
    xor h                                         ; $5d7d: $ac
    ld c, l                                       ; $5d7e: $4d
    ld [c], a                                     ; $5d7f: $e2
    ld [$2000], sp                                ; $5d80: $08 $00 $20
    push hl                                       ; $5d83: $e5
    inc a                                         ; $5d84: $3c
    ld c, b                                       ; $5d85: $48
    ld b, l                                       ; $5d86: $45
    ld [c], a                                     ; $5d87: $e2
    ld [$2000], sp                                ; $5d88: $08 $00 $20
    ld c, [hl]                                    ; $5d8b: $4e
    ld c, d                                       ; $5d8c: $4a
    ld bc, $a500                                  ; $5d8d: $01 $00 $a5
    ld de, $0021                                  ; $5d90: $11 $21 $00
    inc l                                         ; $5d93: $2c
    ld a, [hl-]                                   ; $5d94: $3a
    ld h, l                                       ; $5d95: $65
    dec e                                         ; $5d96: $1d
    or $57                                        ; $5d97: $f6 $57
    ld b, b                                       ; $5d99: $40
    nop                                           ; $5d9a: $00
    xor [hl]                                      ; $5d9b: $ae
    inc c                                         ; $5d9c: $0c
    daa                                           ; $5d9d: $27
    nop                                           ; $5d9e: $00
    ld [hl], a                                    ; $5d9f: $77
    dec e                                         ; $5da0: $1d

jr_0b4_5da1:
    nop                                           ; $5da1: $00
    nop                                           ; $5da2: $00
    ld [de], a                                    ; $5da3: $12
    add hl, de                                    ; $5da4: $19
    ld e, l                                       ; $5da5: $5d
    ld a, $8a                                     ; $5da6: $3e $8a
    inc c                                         ; $5da8: $0c
    jr nz, jr_0b4_5dab                            ; $5da9: $20 $00

jr_0b4_5dab:
    push af                                       ; $5dab: $f5
    ld sp, $192a                                  ; $5dac: $31 $2a $19
    ld e, [hl]                                    ; $5daf: $5e
    rra                                           ; $5db0: $1f
    nop                                           ; $5db1: $00
    nop                                           ; $5db2: $00
    ld d, d                                       ; $5db3: $52
    ld b, a                                       ; $5db4: $47
    ld h, [hl]                                    ; $5db5: $66
    add hl, de                                    ; $5db6: $19
    cp $77                                        ; $5db7: $fe $77
    nop                                           ; $5db9: $00
    jr nz, jr_0b4_5da1                            ; $5dba: $20 $e5

    inc a                                         ; $5dbc: $3c
    ld h, [hl]                                    ; $5dbd: $66
    add hl, de                                    ; $5dbe: $19
    cp $77                                        ; $5dbf: $fe $77
    nop                                           ; $5dc1: $00
    inc b                                         ; $5dc2: $04
    nop                                           ; $5dc3: $00
    jr nz, jr_0b4_5dc7                            ; $5dc4: $20 $01

    nop                                           ; $5dc6: $00

jr_0b4_5dc7:
    ld [hl], a                                    ; $5dc7: $77
    dec e                                         ; $5dc8: $1d
    nop                                           ; $5dc9: $00
    nop                                           ; $5dca: $00
    ld l, l                                       ; $5dcb: $6d
    ld a, $d8                                     ; $5dcc: $3e $d8
    ld e, a                                       ; $5dce: $5f
    and l                                         ; $5dcf: $a5
    ld de, $04e1                                  ; $5dd0: $11 $e1 $04
    xor l                                         ; $5dd3: $ad
    ld l, $fc                                     ; $5dd4: $2e $fc
    ld l, a                                       ; $5dd6: $6f
    ld l, d                                       ; $5dd7: $6a
    inc b                                         ; $5dd8: $04
    jr nz, jr_0b4_5ddb                            ; $5dd9: $20 $00

jr_0b4_5ddb:
    ld l, e                                       ; $5ddb: $6b
    ld a, [hl+]                                   ; $5ddc: $2a
    or l                                          ; $5ddd: $b5
    ld d, e                                       ; $5dde: $53
    rst $20                                       ; $5ddf: $e7
    inc c                                         ; $5de0: $0c
    jr nz, jr_0b4_5de3                            ; $5de1: $20 $00

jr_0b4_5de3:
    call Call_000_2732                            ; $5de3: $cd $32 $27
    dec b                                         ; $5de6: $05
    ld e, [hl]                                    ; $5de7: $5e
    rra                                           ; $5de8: $1f
    nop                                           ; $5de9: $00
    nop                                           ; $5dea: $00
    sub c                                         ; $5deb: $91
    ld d, d                                       ; $5dec: $52
    rst $10                                       ; $5ded: $d7
    ld e, a                                       ; $5dee: $5f
    inc h                                         ; $5def: $24
    ld de, $2000                                  ; $5df0: $11 $00 $20
    sub c                                         ; $5df3: $91
    ld d, d                                       ; $5df4: $52
    rst $10                                       ; $5df5: $d7
    ld e, a                                       ; $5df6: $5f
    inc h                                         ; $5df7: $24
    ld de, $1c00                                  ; $5df8: $11 $00 $1c
    nop                                           ; $5dfb: $00
    jr nz, @-$02                                  ; $5dfc: $20 $fc

    ld l, a                                       ; $5dfe: $6f
    ld l, d                                       ; $5dff: $6a
    inc b                                         ; $5e00: $04
    jr nz, jr_0b4_5e03                            ; $5e01: $20 $00

jr_0b4_5e03:
    sub $72                                       ; $5e03: $d6 $72
    and [hl]                                      ; $5e05: $a6
    dec d                                         ; $5e06: $15

jr_0b4_5e07:
    rst $38                                       ; $5e07: $ff
    ld a, a                                       ; $5e08: $7f
    add b                                         ; $5e09: $80
    nop                                           ; $5e0a: $00
    ld a, d                                       ; $5e0b: $7a
    ld a, [hl-]                                   ; $5e0c: $3a
    add [hl]                                      ; $5e0d: $86
    add hl, de                                    ; $5e0e: $19
    ld l, c                                       ; $5e0f: $69
    ld [$0421], sp                                ; $5e10: $08 $21 $04
    xor l                                         ; $5e13: $ad
    ld [hl], $95                                  ; $5e14: $36 $95
    ld d, e                                       ; $5e16: $53
    inc hl                                        ; $5e17: $23

Call_0b4_5e18:
    ld de, $0420                                  ; $5e18: $11 $20 $04
    ld e, [hl]                                    ; $5e1b: $5e
    rra                                           ; $5e1c: $1f
    push bc                                       ; $5e1d: $c5
    inc e                                         ; $5e1e: $1c
    xor e                                         ; $5e1f: $ab
    ld de, $0840                                  ; $5e20: $11 $40 $08
    ld d, d                                       ; $5e23: $52
    ld b, a                                       ; $5e24: $47
    add hl, bc                                    ; $5e25: $09
    ld [hl+], a                                   ; $5e26: $22
    db $fd                                        ; $5e27: $fd
    ld [hl], e                                    ; $5e28: $73
    nop                                           ; $5e29: $00
    jr nz, jr_0b4_5e7e                            ; $5e2a: $20 $52

    ld b, a                                       ; $5e2c: $47
    add hl, bc                                    ; $5e2d: $09
    ld [hl+], a                                   ; $5e2e: $22
    db $fd                                        ; $5e2f: $fd
    ld [hl], e                                    ; $5e30: $73

Call_0b4_5e31:
    nop                                           ; $5e31: $00
    jr nz, jr_0b4_5eae                            ; $5e32: $20 $7a

    ld a, [hl-]                                   ; $5e34: $3a
    add [hl]                                      ; $5e35: $86
    add hl, de                                    ; $5e36: $19
    ld l, c                                       ; $5e37: $69
    ld [$0800], sp                                ; $5e38: $08 $00 $08
    db $10                                        ; $5e3b: $10
    ld b, e                                       ; $5e3c: $43
    sbc h                                         ; $5e3d: $9c
    ld [hl], a                                    ; $5e3e: $77
    ld c, d                                       ; $5e3f: $4a
    ld a, [hl+]                                   ; $5e40: $2a
    nop                                           ; $5e41: $00
    nop                                           ; $5e42: $00
    ld [bc], a                                    ; $5e43: $02
    dec c                                         ; $5e44: $0d
    ld b, b                                       ; $5e45: $40
    inc b                                         ; $5e46: $04
    nop                                           ; $5e47: $00
    inc b                                         ; $5e48: $04
    nop                                           ; $5e49: $00
    nop                                           ; $5e4a: $00
    rrca                                          ; $5e4b: $0f
    ld h, d                                       ; $5e4c: $62
    sbc h                                         ; $5e4d: $9c
    ld a, e                                       ; $5e4e: $7b
    or l                                          ; $5e4f: $b5
    ld l, [hl]                                    ; $5e50: $6e
    nop                                           ; $5e51: $00
    nop                                           ; $5e52: $00
    push hl                                       ; $5e53: $e5
    inc a                                         ; $5e54: $3c
    rrca                                          ; $5e55: $0f
    ld e, d                                       ; $5e56: $5a
    ld c, c                                       ; $5e57: $49

jr_0b4_5e58:
    ld c, c                                       ; $5e58: $49
    nop                                           ; $5e59: $00
    nop                                           ; $5e5a: $00

jr_0b4_5e5b:
    rst $30                                       ; $5e5b: $f7
    ld [hl], d                                    ; $5e5c: $72
    sbc $7b                                       ; $5e5d: $de $7b
    nop                                           ; $5e5f: $00
    jr nz, jr_0b4_5e62                            ; $5e60: $20 $00

jr_0b4_5e62:
    jr nz, jr_0b4_5e5b                            ; $5e62: $20 $f7

    ld [hl], d                                    ; $5e64: $72
    sbc $7b                                       ; $5e65: $de $7b
    nop                                           ; $5e67: $00
    jr nz, jr_0b4_5e6a                            ; $5e68: $20 $00

jr_0b4_5e6a:
    jr nz, jr_0b4_5e6e                            ; $5e6a: $20 $02

    dec c                                         ; $5e6c: $0d
    ld b, b                                       ; $5e6d: $40

jr_0b4_5e6e:
    inc b                                         ; $5e6e: $04
    nop                                           ; $5e6f: $00
    inc b                                         ; $5e70: $04
    nop                                           ; $5e71: $00
    jr nz, jr_0b4_5e07                            ; $5e72: $20 $93

    ld h, d                                       ; $5e74: $62
    sbc h                                         ; $5e75: $9c
    ld [hl], a                                    ; $5e76: $77
    ld l, c                                       ; $5e77: $69
    ld b, l                                       ; $5e78: $45
    push hl                                       ; $5e79: $e5
    inc a                                         ; $5e7a: $3c
    ld sp, $f766                                  ; $5e7b: $31 $66 $f7

jr_0b4_5e7e:
    ld [hl], d                                    ; $5e7e: $72
    ld c, c                                       ; $5e7f: $49
    ld c, l                                       ; $5e80: $4d
    daa                                           ; $5e81: $27
    ld b, l                                       ; $5e82: $45
    sub l                                         ; $5e83: $95
    ld [hl], d                                    ; $5e84: $72
    sbc h                                         ; $5e85: $9c
    ld a, e                                       ; $5e86: $7b
    adc $5d                                       ; $5e87: $ce $5d
    ld l, d                                       ; $5e89: $6a
    ld c, l                                       ; $5e8a: $4d
    sub h                                         ; $5e8b: $94
    ld l, [hl]                                    ; $5e8c: $6e
    jr nc, jr_0b4_5eed                            ; $5e8d: $30 $5e

    ld e, d                                       ; $5e8f: $5a
    ld [hl], e                                    ; $5e90: $73
    nop                                           ; $5e91: $00
    jr nz, @+$75                                  ; $5e92: $20 $73

    ld e, [hl]                                    ; $5e94: $5e
    cp h                                          ; $5e95: $bc
    ld a, e                                       ; $5e96: $7b
    push hl                                       ; $5e97: $e5
    inc a                                         ; $5e98: $3c
    nop                                           ; $5e99: $00
    jr nz, jr_0b4_5f0f                            ; $5e9a: $20 $73

    ld e, [hl]                                    ; $5e9c: $5e
    cp h                                          ; $5e9d: $bc
    ld a, e                                       ; $5e9e: $7b
    push hl                                       ; $5e9f: $e5
    inc a                                         ; $5ea0: $3c
    nop                                           ; $5ea1: $00
    jr nz, jr_0b4_5ea4                            ; $5ea2: $20 $00

jr_0b4_5ea4:
    jr nz, jr_0b4_5ebe                            ; $5ea4: $20 $18

    ld [hl], a                                    ; $5ea6: $77
    ld c, b                                       ; $5ea7: $48
    ld b, l                                       ; $5ea8: $45
    nop                                           ; $5ea9: $00
    inc c                                         ; $5eaa: $0c
    nop                                           ; $5eab: $00
    jr nz, jr_0b4_5ec6                            ; $5eac: $20 $18

jr_0b4_5eae:
    ld [hl], a                                    ; $5eae: $77
    ld c, b                                       ; $5eaf: $48
    ld b, l                                       ; $5eb0: $45
    nop                                           ; $5eb1: $00
    inc c                                         ; $5eb2: $0c
    ld [hl-], a                                   ; $5eb3: $32
    ld c, $00                                     ; $5eb4: $0e $00
    jr nz, jr_0b4_5f00                            ; $5eb6: $20 $48

    ld b, l                                       ; $5eb8: $45
    nop                                           ; $5eb9: $00
    ld [$7294], sp                                ; $5eba: $08 $94 $72
    sbc h                                         ; $5ebd: $9c

jr_0b4_5ebe:
    ld a, e                                       ; $5ebe: $7b
    nop                                           ; $5ebf: $00
    jr nz, jr_0b4_5ec2                            ; $5ec0: $20 $00

jr_0b4_5ec2:
    jr nz, jr_0b4_5e58                            ; $5ec2: $20 $94

    ld [hl], d                                    ; $5ec4: $72
    sbc h                                         ; $5ec5: $9c

jr_0b4_5ec6:
    ld a, e                                       ; $5ec6: $7b
    nop                                           ; $5ec7: $00
    jr nz, jr_0b4_5eca                            ; $5ec8: $20 $00

jr_0b4_5eca:
    jr nz, jr_0b4_5eee                            ; $5eca: $20 $22

    db $10                                        ; $5ecc: $10
    sbc h                                         ; $5ecd: $9c
    ld a, e                                       ; $5ece: $7b
    nop                                           ; $5ecf: $00
    jr nz, jr_0b4_5ed2                            ; $5ed0: $20 $00

jr_0b4_5ed2:
    ld [$08eb], sp                                ; $5ed2: $08 $eb $08
    nop                                           ; $5ed5: $00
    jr nz, jr_0b4_5ed8                            ; $5ed6: $20 $00

jr_0b4_5ed8:
    jr nz, jr_0b4_5eda                            ; $5ed8: $20 $00

jr_0b4_5eda:
    jr nz, jr_0b4_5f0e                            ; $5eda: $20 $32

    ld c, $00                                     ; $5edc: $0e $00
    jr nz, jr_0b4_5f28                            ; $5ede: $20 $48

    ld b, l                                       ; $5ee0: $45
    nop                                           ; $5ee1: $00
    db $10                                        ; $5ee2: $10
    jp nc, $fb6d                                  ; $5ee3: $d2 $6d $fb

    ld a, [hl]                                    ; $5ee6: $7e
    dec hl                                        ; $5ee7: $2b
    ld b, c                                       ; $5ee8: $41
    ld [hl-], a                                   ; $5ee9: $32
    ld c, $70                                     ; $5eea: $0e $70
    ld [hl], l                                    ; $5eec: $75

jr_0b4_5eed:
    inc e                                         ; $5eed: $1c

jr_0b4_5eee:
    ld a, a                                       ; $5eee: $7f
    rst $38                                       ; $5eef: $ff
    rla                                           ; $5ef0: $17
    nop                                           ; $5ef1: $00
    inc c                                         ; $5ef2: $0c
    adc e                                         ; $5ef3: $8b
    ld d, c                                       ; $5ef4: $51
    ld sp, hl                                     ; $5ef5: $f9
    ld a, d                                       ; $5ef6: $7a
    ld [hl-], a                                   ; $5ef7: $32
    ld c, $00                                     ; $5ef8: $0e $00
    jr nz, jr_0b4_5f02                            ; $5efa: $20 $06

    dec a                                         ; $5efc: $3d
    call Call_000_3259                            ; $5efd: $cd $59 $32

jr_0b4_5f00:
    ld c, $00                                     ; $5f00: $0e $00

jr_0b4_5f02:
    inc b                                         ; $5f02: $04
    db $d3                                        ; $5f03: $d3
    nop                                           ; $5f04: $00
    ld e, l                                       ; $5f05: $5d
    ld d, $00                                     ; $5f06: $16 $00
    inc e                                         ; $5f08: $1c
    nop                                           ; $5f09: $00
    inc c                                         ; $5f0a: $0c
    nop                                           ; $5f0b: $00
    jr nz, jr_0b4_5f10                            ; $5f0c: $20 $02

jr_0b4_5f0e:
    inc b                                         ; $5f0e: $04

jr_0b4_5f0f:
    nop                                           ; $5f0f: $00

jr_0b4_5f10:
    inc e                                         ; $5f10: $1c
    nop                                           ; $5f11: $00
    inc c                                         ; $5f12: $0c
    ret nc                                        ; $5f13: $d0

    ld e, l                                       ; $5f14: $5d
    nop                                           ; $5f15: $00
    jr nz, @+$01                                  ; $5f16: $20 $ff

    rla                                           ; $5f18: $17
    ld h, $48                                     ; $5f19: $26 $48
    inc d                                         ; $5f1b: $14
    halt                                          ; $5f1c: $76
    ld a, [hl]                                    ; $5f1d: $7e
    ld a, a                                       ; $5f1e: $7f
    xor c                                         ; $5f1f: $a9
    ld c, h                                       ; $5f20: $4c
    ld bc, $3228                                  ; $5f21: $01 $28 $32
    ld c, $2c                                     ; $5f24: $0e $2c
    ld h, c                                       ; $5f26: $61
    rst $38                                       ; $5f27: $ff

jr_0b4_5f28:
    rrca                                          ; $5f28: $0f
    ld [bc], a                                    ; $5f29: $02
    jr z, jr_0b4_5f5e                             ; $5f2a: $28 $32

    ld c, $0b                                     ; $5f2c: $0e $0b
    ld e, c                                       ; $5f2e: $59
    ld a, b                                       ; $5f2f: $78
    ld a, [hl]                                    ; $5f30: $7e
    nop                                           ; $5f31: $00
    inc e                                         ; $5f32: $1c
    dec b                                         ; $5f33: $05
    dec a                                         ; $5f34: $3d
    sub e                                         ; $5f35: $93
    ld e, [hl]                                    ; $5f36: $5e
    xor e                                         ; $5f37: $ab
    ld c, c                                       ; $5f38: $49
    nop                                           ; $5f39: $00
    inc d                                         ; $5f3a: $14
    call nc, $fe00                                ; $5f3b: $d4 $00 $fe
    ld a, [de]                                    ; $5f3e: $1a
    xor d                                         ; $5f3f: $aa
    ld [$2000], sp                                ; $5f40: $08 $00 $20
    call nc, $fe00                                ; $5f43: $d4 $00 $fe
    ld a, [de]                                    ; $5f46: $1a
    xor d                                         ; $5f47: $aa
    ld [$0c00], sp                                ; $5f48: $08 $00 $0c
    dec e                                         ; $5f4b: $1d
    ld a, a                                       ; $5f4c: $7f
    add sp, $2c                                   ; $5f4d: $e8 $2c
    nop                                           ; $5f4f: $00
    jr nz, @+$28                                  ; $5f50: $20 $26

    ld b, h                                       ; $5f52: $44
    ld d, [hl]                                    ; $5f53: $56
    ld a, [hl]                                    ; $5f54: $7e
    adc c                                         ; $5f55: $89
    ld d, b                                       ; $5f56: $50
    ei                                            ; $5f57: $fb
    ld a, [hl]                                    ; $5f58: $7e
    nop                                           ; $5f59: $00
    db $10                                        ; $5f5a: $10
    ld [hl-], a                                   ; $5f5b: $32
    ld c, $ff                                     ; $5f5c: $0e $ff

jr_0b4_5f5e:
    inc de                                        ; $5f5e: $13
    inc h                                         ; $5f5f: $24
    ld c, h                                       ; $5f60: $4c
    nop                                           ; $5f61: $00
    jr nz, jr_0b4_5f96                            ; $5f62: $20 $32

    ld c, $88                                     ; $5f64: $0e $88
    ld c, h                                       ; $5f66: $4c
    xor d                                         ; $5f67: $aa
    ld e, b                                       ; $5f68: $58
    nop                                           ; $5f69: $00
    db $10                                        ; $5f6a: $10

jr_0b4_5f6b:
    xor d                                         ; $5f6b: $aa
    ld e, h                                       ; $5f6c: $5c
    ld [hl], d                                    ; $5f6d: $72
    ld e, [hl]                                    ; $5f6e: $5e
    sbc l                                         ; $5f6f: $9d
    dec b                                         ; $5f70: $05
    inc hl                                        ; $5f71: $23
    ld [$013d], sp                                ; $5f72: $08 $3d $01
    or c                                          ; $5f75: $b1
    nop                                           ; $5f76: $00
    ld a, $1f                                     ; $5f77: $3e $1f
    nop                                           ; $5f79: $00
    jr nz, @+$3f                                  ; $5f7a: $20 $3d

    ld bc, $00b1                                  ; $5f7c: $01 $b1 $00
    ld a, $1f                                     ; $5f7f: $3e $1f
    nop                                           ; $5f81: $00
    inc c                                         ; $5f82: $0c
    dec a                                         ; $5f83: $3d
    ld a, a                                       ; $5f84: $7f
    rst $00                                       ; $5f85: $c7
    inc l                                         ; $5f86: $2c
    nop                                           ; $5f87: $00
    jr nz, jr_0b4_5f8c                            ; $5f88: $20 $02

    jr z, jr_0b4_5fc1                             ; $5f8a: $28 $35

jr_0b4_5f8c:
    ld a, d                                       ; $5f8c: $7a
    ld l, b                                       ; $5f8d: $68
    ld c, h                                       ; $5f8e: $4c
    jp z, SerialTransferCompleteInterrupt         ; $5f8f: $ca $58 $00

    inc e                                         ; $5f92: $1c
    ld [hl-], a                                   ; $5f93: $32
    ld c, $ff                                     ; $5f94: $0e $ff

jr_0b4_5f96:
    rla                                           ; $5f96: $17
    dec h                                         ; $5f97: $25
    ld c, h                                       ; $5f98: $4c
    ld bc, $8820                                  ; $5f99: $01 $20 $88
    ld c, h                                       ; $5f9c: $4c
    ld b, [hl]                                    ; $5f9d: $46
    jr c, jr_0b4_5f6b                             ; $5f9e: $38 $cb

    ld e, h                                       ; $5fa0: $5c
    ld l, e                                       ; $5fa1: $6b
    inc b                                         ; $5fa2: $04
    adc b                                         ; $5fa3: $88
    ld e, b                                       ; $5fa4: $58
    cp l                                          ; $5fa5: $bd
    dec b                                         ; $5fa6: $05
    ld e, d                                       ; $5fa7: $5a
    ld l, e                                       ; $5fa8: $6b
    ld bc, $1518                                  ; $5fa9: $01 $18 $15
    dec b                                         ; $5fac: $05
    ld l, h                                       ; $5fad: $6c
    nop                                           ; $5fae: $00
    rst $38                                       ; $5faf: $ff
    ld e, $00                                     ; $5fb0: $1e $00
    jr nz, jr_0b4_5fc9                            ; $5fb2: $20 $15

    dec b                                         ; $5fb4: $05
    ld l, h                                       ; $5fb5: $6c
    nop                                           ; $5fb6: $00
    rst $38                                       ; $5fb7: $ff
    ld e, $00                                     ; $5fb8: $1e $00
    inc c                                         ; $5fba: $0c
    dec e                                         ; $5fbb: $1d
    ld a, a                                       ; $5fbc: $7f
    nop                                           ; $5fbd: $00
    jr nz, @+$40                                  ; $5fbe: $20 $3e

    ld a, a                                       ; $5fc0: $7f

jr_0b4_5fc1:
    nop                                           ; $5fc1: $00
    inc c                                         ; $5fc2: $0c
    rla                                           ; $5fc3: $17
    ld d, $34                                     ; $5fc4: $16 $34
    ld [hl], d                                    ; $5fc6: $72
    ld b, l                                       ; $5fc7: $45
    ld c, b                                       ; $5fc8: $48

jr_0b4_5fc9:
    nop                                           ; $5fc9: $00
    ld [$0df2], sp                                ; $5fca: $08 $f2 $0d
    rst $38                                       ; $5fcd: $ff
    rla                                           ; $5fce: $17
    ld a, [hl-]                                   ; $5fcf: $3a
    ld a, [de]                                    ; $5fd0: $1a
    nop                                           ; $5fd1: $00
    db $10                                        ; $5fd2: $10
    adc b                                         ; $5fd3: $88
    ld c, h                                       ; $5fd4: $4c

jr_0b4_5fd5:
    xor e                                         ; $5fd5: $ab
    nop                                           ; $5fd6: $00
    ld bc, $8a24                                  ; $5fd7: $01 $24 $8a
    nop                                           ; $5fda: $00
    ret c                                         ; $5fdb: $d8

    nop                                           ; $5fdc: $00

jr_0b4_5fdd:
    ld h, [hl]                                    ; $5fdd: $66
    ld d, b                                       ; $5fde: $50
    db $dd                                        ; $5fdf: $dd
    ld d, $01                                     ; $5fe0: $16 $01
    jr jr_0b4_5fd5                                ; $5fe2: $18 $f1

    inc b                                         ; $5fe4: $04
    cp l                                          ; $5fe5: $bd
    ld a, e                                       ; $5fe6: $7b
    rst $10                                       ; $5fe7: $d7
    nop                                           ; $5fe8: $00
    nop                                           ; $5fe9: $00
    jr nz, jr_0b4_5fdd                            ; $5fea: $20 $f1

    inc b                                         ; $5fec: $04
    cp l                                          ; $5fed: $bd
    ld a, e                                       ; $5fee: $7b
    rst $10                                       ; $5fef: $d7
    nop                                           ; $5ff0: $00
    nop                                           ; $5ff1: $00
    inc c                                         ; $5ff2: $0c
    ret                                           ; $5ff3: $c9


    ld [$2000], sp                                ; $5ff4: $08 $00 $20
    ld a, [hl-]                                   ; $5ff7: $3a
    ld a, [de]                                    ; $5ff8: $1a
    inc b                                         ; $5ff9: $04
    inc b                                         ; $5ffa: $04
    inc e                                         ; $5ffb: $1c
    ld de, $0d11                                  ; $5ffc: $11 $11 $0d
    sbc $26                                       ; $5fff: $de $26
    xor l                                         ; $6001: $ad
    nop                                           ; $6002: $00
    sbc [hl]                                      ; $6003: $9e
    ld h, $b7                                     ; $6004: $26 $b7
    dec d                                         ; $6006: $15
    ld a, [c]                                     ; $6007: $f2
    ld [$1c00], sp                                ; $6008: $08 $00 $1c
    ld l, e                                       ; $600b: $6b
    nop                                           ; $600c: $00

Jump_0b4_600d:
    ld [hl-], a                                   ; $600d: $32
    ld c, $d3                                     ; $600e: $0e $d3
    inc b                                         ; $6010: $04
    ld bc, $5c10                                  ; $6011: $01 $10 $5c
    ld c, $4d                                     ; $6014: $0e $4d
    nop                                           ; $6016: $00
    or e                                          ; $6017: $b3
    nop                                           ; $6018: $00
    ld [bc], a                                    ; $6019: $02
    db $10                                        ; $601a: $10
    rra                                           ; $601b: $1f
    dec de                                        ; $601c: $1b
    rst $30                                       ; $601d: $f7
    ld l, d                                       ; $601e: $6a
    sbc $7b                                       ; $601f: $de $7b
    nop                                           ; $6021: $00
    jr nz, jr_0b4_6043                            ; $6022: $20 $1f

    dec de                                        ; $6024: $1b
    rst $30                                       ; $6025: $f7
    ld l, d                                       ; $6026: $6a
    sbc $7b                                       ; $6027: $de $7b
    nop                                           ; $6029: $00
    jr nz, @-$35                                  ; $602a: $20 $c9

    ld [$0dd5], sp                                ; $602c: $08 $d5 $0d
    ld a, [c]                                     ; $602f: $f2
    ld [$0004], sp                                ; $6030: $08 $04 $00
    cp b                                          ; $6033: $b8

Call_0b4_6034:
    dec e                                         ; $6034: $1d
    cp a                                          ; $6035: $bf
    ld d, $ca                                     ; $6036: $16 $ca
    ld [$0004], sp                                ; $6038: $08 $04 $00
    sbc d                                         ; $603b: $9a
    add hl, de                                    ; $603c: $19
    adc [hl]                                      ; $603d: $8e
    inc b                                         ; $603e: $04
    ld e, [hl]                                    ; $603f: $5e
    ld a, [de]                                    ; $6040: $1a
    nop                                           ; $6041: $00

Call_0b4_6042:
    inc c                                         ; $6042: $0c

jr_0b4_6043:
    ld [hl-], a                                   ; $6043: $32
    ld c, $ff                                     ; $6044: $0e $ff
    rra                                           ; $6046: $1f
    ld c, b                                       ; $6047: $48
    nop                                           ; $6048: $00

jr_0b4_6049:
    nop                                           ; $6049: $00
    inc c                                         ; $604a: $0c
    ld b, l                                       ; $604b: $45
    inc d                                         ; $604c: $14
    ld bc, $0020                                  ; $604d: $01 $20 $00
    jr z, jr_0b4_6052                             ; $6050: $28 $00

jr_0b4_6052:
    db $10                                        ; $6052: $10
    ld [hl], e                                    ; $6053: $73
    ld e, [hl]                                    ; $6054: $5e
    sbc $7b                                       ; $6055: $de $7b
    ld b, a                                       ; $6057: $47
    dec d                                         ; $6058: $15
    nop                                           ; $6059: $00
    jr nz, jr_0b4_6049                            ; $605a: $20 $ed

    ld d, c                                       ; $605c: $51
    or h                                          ; $605d: $b4
    ld h, d                                       ; $605e: $62
    rst $30                                       ; $605f: $f7
    ld l, d                                       ; $6060: $6a
    nop                                           ; $6061: $00
    jr nz, @-$3f                                  ; $6062: $20 $bf

    ld e, $c9                                     ; $6064: $1e $c9
    ld [$3ce5], sp                                ; $6066: $08 $e5 $3c
    ld b, a                                       ; $6069: $47
    inc b                                         ; $606a: $04
    dec sp                                        ; $606b: $3b
    ld [hl-], a                                   ; $606c: $32
    cp $4a                                        ; $606d: $fe $4a
    ld e, a                                       ; $606f: $5f
    dec e                                         ; $6070: $1d
    ld c, b                                       ; $6071: $48
    inc b                                         ; $6072: $04
    ld hl, sp+$10                                 ; $6073: $f8 $10
    dec sp                                        ; $6075: $3b
    ld [hl-], a                                   ; $6076: $32
    sbc a                                         ; $6077: $9f
    dec e                                         ; $6078: $1d
    ld [bc], a                                    ; $6079: $02
    ld [$0db2], sp                                ; $607a: $08 $b2 $0d
    db $fc                                        ; $607d: $fc
    add hl, hl                                    ; $607e: $29
    ld l, c                                       ; $607f: $69
    inc b                                         ; $6080: $04
    nop                                           ; $6081: $00
    inc c                                         ; $6082: $0c
    ld l, c                                       ; $6083: $69
    nop                                           ; $6084: $00
    nop                                           ; $6085: $00
    inc l                                         ; $6086: $2c
    ld [bc], a                                    ; $6087: $02
    jr nz, jr_0b4_608a                            ; $6088: $20 $00

jr_0b4_608a:
    inc b                                         ; $608a: $04
    ld e, d                                       ; $608b: $5a
    ld [hl], e                                    ; $608c: $73
    db $e3                                        ; $608d: $e3
    ld de, $2802                                  ; $608e: $11 $02 $28
    nop                                           ; $6091: $00
    jr nz, jr_0b4_60dd                            ; $6092: $20 $49

    ld c, c                                       ; $6094: $49
    ld [hl], d                                    ; $6095: $72
    ld e, [hl]                                    ; $6096: $5e
    dec b                                         ; $6097: $05
    dec a                                         ; $6098: $3d
    ld [hl+], a                                   ; $6099: $22
    jr @+$75                                      ; $609a: $18 $73

    ld l, d                                       ; $609c: $6a
    rra                                           ; $609d: $1f
    ld [hl+], a                                   ; $609e: $22
    ld h, $41                                     ; $609f: $26 $41
    ld h, $00                                     ; $60a1: $26 $00
    ld e, [hl]                                    ; $60a3: $5e
    dec d                                         ; $60a4: $15
    cp l                                          ; $60a5: $bd
    ld b, d                                       ; $60a6: $42
    adc a                                         ; $60a7: $8f
    db $10                                        ; $60a8: $10
    ld b, [hl]                                    ; $60a9: $46
    nop                                           ; $60aa: $00
    sbc $21                                       ; $60ab: $de $21
    cp $4a                                        ; $60ad: $fe $4a
    adc a                                         ; $60af: $8f
    db $10                                        ; $60b0: $10
    ld h, $00                                     ; $60b1: $26 $00
    ld a, [hl]                                    ; $60b3: $7e
    dec d                                         ; $60b4: $15
    rst $08                                       ; $60b5: $cf
    inc b                                         ; $60b6: $04
    inc a                                         ; $60b7: $3c
    ld l, $00                                     ; $60b8: $2e $00
    inc c                                         ; $60ba: $0c
    ld c, c                                       ; $60bb: $49
    nop                                           ; $60bc: $00
    ld bc, $0224                                  ; $60bd: $01 $24 $02
    inc [hl]                                      ; $60c0: $34
    nop                                           ; $60c1: $00
    inc c                                         ; $60c2: $0c
    db $e3                                        ; $60c3: $e3
    dec d                                         ; $60c4: $15
    inc bc                                        ; $60c5: $03
    inc l                                         ; $60c6: $2c
    inc bc                                        ; $60c7: $03
    ld d, $00                                     ; $60c8: $16 $00
    inc e                                         ; $60ca: $1c
    ld c, b                                       ; $60cb: $48
    ld b, l                                       ; $60cc: $45
    ld sp, $0462                                  ; $60cd: $31 $62 $04
    ld d, $21                                     ; $60d0: $16 $21
    ld [$165d], sp                                ; $60d2: $08 $5d $16
    jr jr_0b4_614a                                ; $60d5: $18 $73

    push bc                                       ; $60d7: $c5
    dec h                                         ; $60d8: $25
    ld l, l                                       ; $60d9: $6d
    inc c                                         ; $60da: $0c
    cp $4a                                        ; $60db: $fe $4a

jr_0b4_60dd:
    sbc $14                                       ; $60dd: $de $14
    rst $18                                       ; $60df: $df
    ld hl, $088b                                  ; $60e0: $21 $8b $08
    call c, $ff19                                 ; $60e3: $dc $19 $ff
    ld a, a                                       ; $60e6: $7f
    add l                                         ; $60e7: $85
    ld a, [de]                                    ; $60e8: $1a
    nop                                           ; $60e9: $00
    nop                                           ; $60ea: $00
    push af                                       ; $60eb: $f5
    inc c                                         ; $60ec: $0c
    db $fc                                        ; $60ed: $fc
    ld hl, $0049                                  ; $60ee: $21 $49 $00
    nop                                           ; $60f1: $00
    inc c                                         ; $60f2: $0c
    ld e, h                                       ; $60f3: $5c
    dec d                                         ; $60f4: $15
    inc b                                         ; $60f5: $04
    ld d, $49                                     ; $60f6: $16 $49
    nop                                           ; $60f8: $00
    inc b                                         ; $60f9: $04
    ld d, $24                                     ; $60fa: $16 $24
    ld d, $04                                     ; $60fc: $16 $04
    ld d, $49                                     ; $60fe: $16 $49
    nop                                           ; $6100: $00
    nop                                           ; $6101: $00
    inc e                                         ; $6102: $1c
    db $10                                        ; $6103: $10
    ld h, d                                       ; $6104: $62
    inc b                                         ; $6105: $04
    ld d, $9c                                     ; $6106: $16 $9c
    ld a, e                                       ; $6108: $7b
    ld b, e                                       ; $6109: $43
    nop                                           ; $610a: $00
    sub h                                         ; $610b: $94
    ld l, [hl]                                    ; $610c: $6e
    inc b                                         ; $610d: $04
    ld d, $bd                                     ; $610e: $16 $bd
    ld a, e                                       ; $6110: $7b
    ld l, b                                       ; $6111: $68
    inc b                                         ; $6112: $04
    cp a                                          ; $6113: $bf
    ld l, $ff                                     ; $6114: $2e $ff
    ld a, a                                       ; $6116: $7f
    add l                                         ; $6117: $85
    ld a, [de]                                    ; $6118: $1a
    xor d                                         ; $6119: $aa
    ld [$327d], sp                                ; $611a: $08 $7d $32
    rst $38                                       ; $611d: $ff
    ld a, a                                       ; $611e: $7f
    add l                                         ; $611f: $85
    ld a, [de]                                    ; $6120: $1a
    add hl, hl                                    ; $6121: $29
    nop                                           ; $6122: $00
    dec sp                                        ; $6123: $3b
    dec c                                         ; $6124: $0d
    ldh a, [rNR14]                                ; $6125: $f0 $14
    dec a                                         ; $6127: $3d
    ld [hl+], a                                   ; $6128: $22
    ld [bc], a                                    ; $6129: $02
    ld [$04b2], sp                                ; $612a: $08 $b2 $04
    inc h                                         ; $612d: $24
    ld d, $9f                                     ; $612e: $16 $9f
    ld hl, $1624                                  ; $6130: $21 $24 $16
    or d                                          ; $6133: $b2
    inc b                                         ; $6134: $04
    inc h                                         ; $6135: $24
    ld d, $9f                                     ; $6136: $16 $9f
    ld hl, $0000                                  ; $6138: $21 $00 $00
    inc b                                         ; $613b: $04
    ld a, [de]                                    ; $613c: $1a
    sub h                                         ; $613d: $94
    ld l, [hl]                                    ; $613e: $6e
    nop                                           ; $613f: $00
    jr nz, jr_0b4_6142                            ; $6140: $20 $00

jr_0b4_6142:
    ld [$6610], sp                                ; $6142: $08 $10 $66
    inc h                                         ; $6145: $24
    ld d, $18                                     ; $6146: $16 $18
    ld [hl], a                                    ; $6148: $77
    inc h                                         ; $6149: $24

jr_0b4_614a:
    ld d, $fe                                     ; $614a: $16 $fe
    ld c, d                                       ; $614c: $4a
    ld l, d                                       ; $614d: $6a
    inc b                                         ; $614e: $04
    rra                                           ; $614f: $1f
    dec de                                        ; $6150: $1b
    dec sp                                        ; $6151: $3b
    ld [hl-], a                                   ; $6152: $32
    cp $4a                                        ; $6153: $fe $4a
    ld l, d                                       ; $6155: $6a
    inc b                                         ; $6156: $04
    rra                                           ; $6157: $1f
    dec de                                        ; $6158: $1b
    ld l, b                                       ; $6159: $68
    inc b                                         ; $615a: $04
    dec e                                         ; $615b: $1d
    dec d                                         ; $615c: $15
    ld e, [hl]                                    ; $615d: $5e
    ld e, $92                                     ; $615e: $1e $92
    ld [$0023], sp                                ; $6160: $08 $23 $00
    or d                                          ; $6163: $b2
    nop                                           ; $6164: $00
    ld b, h                                       ; $6165: $44
    ld d, $5f                                     ; $6166: $16 $5f
    add hl, de                                    ; $6168: $19
    ld b, h                                       ; $6169: $44
    ld d, $44                                     ; $616a: $16 $44
    ld a, [de]                                    ; $616c: $1a
    ld b, h                                       ; $616d: $44
    ld d, $5f                                     ; $616e: $16 $5f
    add hl, de                                    ; $6170: $19
    nop                                           ; $6171: $00
    inc e                                         ; $6172: $1c
    ld b, h                                       ; $6173: $44
    ld d, $e5                                     ; $6174: $16 $e5
    inc a                                         ; $6176: $3c
    adc $59                                       ; $6177: $ce $59
    nop                                           ; $6179: $00
    db $10                                        ; $617a: $10
    ld d, c                                       ; $617b: $51
    ld h, [hl]                                    ; $617c: $66
    ld b, h                                       ; $617d: $44
    ld d, $06                                     ; $617e: $16 $06
    dec a                                         ; $6180: $3d
    ld b, h                                       ; $6181: $44
    ld d, $bd                                     ; $6182: $16 $bd
    ld b, d                                       ; $6184: $42
    adc b                                         ; $6185: $88
    inc b                                         ; $6186: $04
    ccf                                           ; $6187: $3f
    dec de                                        ; $6188: $1b
    cp $4a                                        ; $6189: $fe $4a
    cp l                                          ; $618b: $bd
    ld b, d                                       ; $618c: $42
    adc b                                         ; $618d: $88
    inc b                                         ; $618e: $04
    ccf                                           ; $618f: $3f
    dec de                                        ; $6190: $1b
    ld b, $00                                     ; $6191: $06 $00
    rra                                           ; $6193: $1f
    add hl, de                                    ; $6194: $19
    inc a                                         ; $6195: $3c
    ld [hl+], a                                   ; $6196: $22
    db $eb                                        ; $6197: $eb
    ld [$0023], sp                                ; $6198: $08 $23 $00
    inc a                                         ; $619b: $3c
    dec d                                         ; $619c: $15
    ld h, h                                       ; $619d: $64
    ld a, [de]                                    ; $619e: $1a
    adc l                                         ; $619f: $8d
    nop                                           ; $61a0: $00
    ld h, h                                       ; $61a1: $64
    ld a, [de]                                    ; $61a2: $1a
    inc a                                         ; $61a3: $3c
    dec d                                         ; $61a4: $15
    ld h, h                                       ; $61a5: $64
    ld a, [de]                                    ; $61a6: $1a
    adc l                                         ; $61a7: $8d
    nop                                           ; $61a8: $00
    nop                                           ; $61a9: $00
    inc e                                         ; $61aa: $1c
    ld h, h                                       ; $61ab: $64
    ld a, [de]                                    ; $61ac: $1a
    ld h, $3d                                     ; $61ad: $26 $3d
    cpl                                           ; $61af: $2f
    ld d, [hl]                                    ; $61b0: $56
    nop                                           ; $61b1: $00
    inc d                                         ; $61b2: $14
    ld h, h                                       ; $61b3: $64
    ld a, [de]                                    ; $61b4: $1a
    ld c, b                                       ; $61b5: $48
    ld b, l                                       ; $61b6: $45
    ld d, c                                       ; $61b7: $51
    ld e, d                                       ; $61b8: $5a
    ld h, a                                       ; $61b9: $67
    inc b                                         ; $61ba: $04
    sbc l                                         ; $61bb: $9d
    ld d, $64                                     ; $61bc: $16 $64
    ld a, [de]                                    ; $61be: $1a
    cp e                                          ; $61bf: $bb
    ld b, d                                       ; $61c0: $42
    ld [hl], c                                    ; $61c1: $71
    db $10                                        ; $61c2: $10
    sub a                                         ; $61c3: $97
    ld a, $fe                                     ; $61c4: $3e $fe
    ld c, d                                       ; $61c6: $4a
    dec sp                                        ; $61c7: $3b
    ld [hl-], a                                   ; $61c8: $32

jr_0b4_61c9:
    xor e                                         ; $61c9: $ab
    inc b                                         ; $61ca: $04
    cp $14                                        ; $61cb: $fe $14
    dec sp                                        ; $61cd: $3b
    ld [hl-], a                                   ; $61ce: $32
    ld a, $16                                     ; $61cf: $3e $16
    inc hl                                        ; $61d1: $23
    nop                                           ; $61d2: $00
    ld a, $19                                     ; $61d3: $3e $19
    ld h, h                                       ; $61d5: $64
    ld a, [de]                                    ; $61d6: $1a
    ld l, l                                       ; $61d7: $6d
    nop                                           ; $61d8: $00
    ld h, h                                       ; $61d9: $64
    ld a, [de]                                    ; $61da: $1a
    add l                                         ; $61db: $85
    ld a, [de]                                    ; $61dc: $1a
    ld h, l                                       ; $61dd: $65
    ld a, [de]                                    ; $61de: $1a
    ld l, l                                       ; $61df: $6d
    nop                                           ; $61e0: $00
    nop                                           ; $61e1: $00
    inc e                                         ; $61e2: $1c
    dec h                                         ; $61e3: $25
    ld [hl+], a                                   ; $61e4: $22
    rrca                                          ; $61e5: $0f
    ld e, d                                       ; $61e6: $5a
    ld e, d                                       ; $61e7: $5a
    ld [hl], e                                    ; $61e8: $73
    nop                                           ; $61e9: $00
    inc d                                         ; $61ea: $14
    add l                                         ; $61eb: $85
    ld a, [de]                                    ; $61ec: $1a
    ld c, b                                       ; $61ed: $48
    ld b, l                                       ; $61ee: $45
    ld d, c                                       ; $61ef: $51
    ld e, d                                       ; $61f0: $5a
    add a                                         ; $61f1: $87
    ld [$14ff], sp                                ; $61f2: $08 $ff $14
    add l                                         ; $61f5: $85
    ld a, [de]                                    ; $61f6: $1a
    sbc a                                         ; $61f7: $9f
    ld a, [de]                                    ; $61f8: $1a
    ld [hl], $08                                  ; $61f9: $36 $08
    dec sp                                        ; $61fb: $3b
    ld [hl-], a                                   ; $61fc: $32
    inc l                                         ; $61fd: $2c
    dec e                                         ; $61fe: $1d
    cp $4a                                        ; $61ff: $fe $4a
    ld l, d                                       ; $6201: $6a
    inc b                                         ; $6202: $04
    rst $30                                       ; $6203: $f7
    add hl, hl                                    ; $6204: $29
    sbc $15                                       ; $6205: $de $15
    sub b                                         ; $6207: $90
    add hl, bc                                    ; $6208: $09
    inc h                                         ; $6209: $24
    nop                                           ; $620a: $00
    ld a, l                                       ; $620b: $7d
    dec d                                         ; $620c: $15
    or d                                          ; $620d: $b2
    inc b                                         ; $620e: $04
    add l                                         ; $620f: $85
    ld a, [de]                                    ; $6210: $1a
    add l                                         ; $6211: $85
    ld a, [de]                                    ; $6212: $1a
    and l                                         ; $6213: $a5
    ld a, [de]                                    ; $6214: $1a
    or d                                          ; $6215: $b2
    inc b                                         ; $6216: $04
    add l                                         ; $6217: $85
    ld a, [de]                                    ; $6218: $1a
    nop                                           ; $6219: $00
    inc e                                         ; $621a: $1c
    add l                                         ; $621b: $85
    ld a, [de]                                    ; $621c: $1a
    jr nc, @+$5c                                  ; $621d: $30 $5a

    ld e, c                                       ; $621f: $59
    ld l, a                                       ; $6220: $6f

jr_0b4_6221:
    nop                                           ; $6221: $00
    jr jr_0b4_61c9                                ; $6222: $18 $a5

    ld a, [de]                                    ; $6224: $1a
    ld [hl], d                                    ; $6225: $72
    ld e, [hl]                                    ; $6226: $5e
    daa                                           ; $6227: $27
    ld b, c                                       ; $6228: $41
    and l                                         ; $6229: $a5
    ld a, [de]                                    ; $622a: $1a
    ld e, $15                                     ; $622b: $1e $15
    ret                                           ; $622d: $c9


    ld [$1ebf], sp                                ; $622e: $08 $bf $1e
    dec h                                         ; $6231: $25
    nop                                           ; $6232: $00
    dec sp                                        ; $6233: $3b
    ld [hl-], a                                   ; $6234: $32
    pop de                                        ; $6235: $d1
    inc c                                         ; $6236: $0c
    cp $4a                                        ; $6237: $fe $4a
    ld h, [hl]                                    ; $6239: $66
    nop                                           ; $623a: $00
    sbc $18                                       ; $623b: $de $18
    dec sp                                        ; $623d: $3b
    ld [hl-], a                                   ; $623e: $32
    ld e, a                                       ; $623f: $5f
    ld d, $24                                     ; $6240: $16 $24
    nop                                           ; $6242: $00
    ld d, $09                                     ; $6243: $16 $09
    xor a                                         ; $6245: $af
    nop                                           ; $6246: $00
    ld a, $19                                     ; $6247: $3e $19
    inc hl                                        ; $6249: $23
    nop                                           ; $624a: $00
    and l                                         ; $624b: $a5
    ld a, [de]                                    ; $624c: $1a
    push bc                                       ; $624d: $c5
    ld e, $a5                                     ; $624e: $1e $a5
    ld e, $00                                     ; $6250: $1e $00
    inc e                                         ; $6252: $1c
    or h                                          ; $6253: $b4
    ld h, d                                       ; $6254: $62
    and l                                         ; $6255: $a5
    ld e, $ff                                     ; $6256: $1e $ff
    ld a, a                                       ; $6258: $7f
    nop                                           ; $6259: $00
    jr jr_0b4_6221                                ; $625a: $18 $c5

    ld e, $ab                                     ; $625c: $1e $ab
    ld c, l                                       ; $625e: $4d
    sub $66                                       ; $625f: $d6 $66
    push bc                                       ; $6261: $c5
    ld e, $3e                                     ; $6262: $1e $3e
    dec d                                         ; $6264: $15
    ret                                           ; $6265: $c9


    ld [$1f1f], sp                                ; $6266: $08 $1f $1f
    inc b                                         ; $6269: $04
    nop                                           ; $626a: $00
    inc a                                         ; $626b: $3c
    ld de, $323b                                  ; $626c: $11 $3b $32
    cp $4a                                        ; $626f: $fe $4a
    xor c                                         ; $6271: $a9
    inc b                                         ; $6272: $04
    cp $18                                        ; $6273: $fe $18
    ld e, e                                       ; $6275: $5b
    ld [hl], $7f                                  ; $6276: $36 $7f
    ld d, $23                                     ; $6278: $16 $23
    nop                                           ; $627a: $00
    jp c, $ae0c                                   ; $627b: $da $0c $ae

    nop                                           ; $627e: $00
    sbc a                                         ; $627f: $9f
    add hl, de                                    ; $6280: $19
    inc hl                                        ; $6281: $23
    nop                                           ; $6282: $00
    push bc                                       ; $6283: $c5
    ld e, $b2                                     ; $6284: $1e $b2
    nop                                           ; $6286: $00
    push hl                                       ; $6287: $e5
    ld e, $00                                     ; $6288: $1e $00
    inc e                                         ; $628a: $1c
    or h                                          ; $628b: $b4
    ld h, d                                       ; $628c: $62
    push bc                                       ; $628d: $c5
    ld e, $bd                                     ; $628e: $1e $bd
    ld [hl], a                                    ; $6290: $77
    nop                                           ; $6291: $00
    jr @-$74                                      ; $6292: $18 $8a

    ld c, c                                       ; $6294: $49
    ld a, d                                       ; $6295: $7a
    ld [hl], e                                    ; $6296: $73
    ld [hl], d                                    ; $6297: $72
    ld e, d                                       ; $6298: $5a
    push bc                                       ; $6299: $c5
    ld e, $3e                                     ; $629a: $1e $3e
    dec d                                         ; $629c: $15
    ret                                           ; $629d: $c9


    ld [$1aff], sp                                ; $629e: $08 $ff $1a
    ld h, $00                                     ; $62a1: $26 $00
    ld hl, sp+$0c                                 ; $62a3: $f8 $0c
    cp l                                          ; $62a5: $bd

jr_0b4_62a6:
    ld b, d                                       ; $62a6: $42
    ld a, a                                       ; $62a7: $7f
    ld hl, $04a8                                  ; $62a8: $21 $a8 $04
    ld a, [hl]                                    ; $62ab: $7e
    add hl, de                                    ; $62ac: $19
    cp $4a                                        ; $62ad: $fe $4a
    sbc l                                         ; $62af: $9d
    ld [hl+], a                                   ; $62b0: $22
    inc bc                                        ; $62b1: $03
    nop                                           ; $62b2: $00
    ei                                            ; $62b3: $fb
    inc c                                         ; $62b4: $0c
    rst $18                                       ; $62b5: $df
    dec e                                         ; $62b6: $1d
    adc l                                         ; $62b7: $8d
    nop                                           ; $62b8: $00
    inc hl                                        ; $62b9: $23
    nop                                           ; $62ba: $00
    push hl                                       ; $62bb: $e5
    ld e, $8d                                     ; $62bc: $1e $8d
    nop                                           ; $62be: $00
    or b                                          ; $62bf: $b0
    nop                                           ; $62c0: $00
    nop                                           ; $62c1: $00
    nop                                           ; $62c2: $00
    rla                                           ; $62c3: $17
    ld l, e                                       ; $62c4: $6b
    nop                                           ; $62c5: $00
    jr nz, jr_0b4_62a6                            ; $62c6: $20 $de

    ld a, a                                       ; $62c8: $7f
    nop                                           ; $62c9: $00
    inc e                                         ; $62ca: $1c
    xor h                                         ; $62cb: $ac
    ld c, l                                       ; $62cc: $4d
    ret                                           ; $62cd: $c9


    ld [$62b4], sp                                ; $62ce: $08 $b4 $62
    ret                                           ; $62d1: $c9


    ld [$193e], sp                                ; $62d2: $08 $3e $19
    ld a, [hl]                                    ; $62d5: $7e
    ld d, $3f                                     ; $62d6: $16 $3f
    rra                                           ; $62d8: $1f
    ld b, a                                       ; $62d9: $47
    nop                                           ; $62da: $00
    cp $4a                                        ; $62db: $fe $4a
    or d                                          ; $62dd: $b2
    inc b                                         ; $62de: $04
    ld a, a                                       ; $62df: $7f
    ld hl, $04cb                                  ; $62e0: $21 $cb $04
    sbc [hl]                                      ; $62e3: $9e
    dec d                                         ; $62e4: $15
    cp $4a                                        ; $62e5: $fe $4a
    ld a, l                                       ; $62e7: $7d
    ld h, $27                                     ; $62e8: $26 $27
    nop                                           ; $62ea: $00
    ret c                                         ; $62eb: $d8

    inc b                                         ; $62ec: $04
    rrca                                          ; $62ed: $0f
    dec b                                         ; $62ee: $05
    ld e, a                                       ; $62ef: $5f
    add hl, de                                    ; $62f0: $19
    ld c, b                                       ; $62f1: $48
    nop                                           ; $62f2: $00
    ld b, $1f                                     ; $62f3: $06 $1f
    rst $38                                       ; $62f5: $ff
    ld a, [de]                                    ; $62f6: $1a
    adc a                                         ; $62f7: $8f
    nop                                           ; $62f8: $00
    nop                                           ; $62f9: $00
    inc e                                         ; $62fa: $1c
    sub e                                         ; $62fb: $93
    ld e, [hl]                                    ; $62fc: $5e
    ret                                           ; $62fd: $c9


    ld [$1d9f], sp                                ; $62fe: $08 $9f $1d
    nop                                           ; $6301: $00
    jr nz, @+$01                                  ; $6302: $20 $ff

    ld e, $8b                                     ; $6304: $1e $8b
    ld c, c                                       ; $6306: $49

jr_0b4_6307:
    ld bc, $c908                                  ; $6307: $01 $08 $c9
    ld [$153d], sp                                ; $630a: $08 $3d $15
    ld d, $12                                     ; $630d: $16 $12

jr_0b4_630f:
    sbc a                                         ; $630f: $9f
    ld d, $26                                     ; $6310: $16 $26
    nop                                           ; $6312: $00
    cp $4a                                        ; $6313: $fe $4a
    or d                                          ; $6315: $b2
    inc b                                         ; $6316: $04
    ld a, a                                       ; $6317: $7f
    dec e                                         ; $6318: $1d
    rst $08                                       ; $6319: $cf
    ld [$195f], sp                                ; $631a: $08 $5f $19
    cp $4a                                        ; $631d: $fe $4a
    ld a, [hl]                                    ; $631f: $7e
    ld e, $68                                     ; $6320: $1e $68
    nop                                           ; $6322: $00
    ld a, $15                                     ; $6323: $3e $15
    add hl, de                                    ; $6325: $19
    ld d, $11                                     ; $6326: $16 $11
    dec b                                         ; $6328: $05
    ret                                           ; $6329: $c9


    ld [$15bd], sp                                ; $632a: $08 $bd $15
    call nc, $ff0d                                ; $632d: $d4 $0d $ff
    ld a, [de]                                    ; $6330: $1a
    nop                                           ; $6331: $00

jr_0b4_6332:
    jr nz, jr_0b4_6307                            ; $6332: $20 $d3

    nop                                           ; $6334: $00
    ld a, $19                                     ; $6335: $3e $19
    ld bc, $0008                                  ; $6337: $01 $08 $00
    jr nz, jr_0b4_630f                            ; $633a: $20 $d3

    dec c                                         ; $633c: $0d
    sbc a                                         ; $633d: $9f
    add hl, de                                    ; $633e: $19
    ld bc, $8b08                                  ; $633f: $01 $08 $8b
    inc b                                         ; $6342: $04
    ld a, $19                                     ; $6343: $3e $19
    inc d                                         ; $6345: $14
    ld [de], a                                    ; $6346: $12
    ld a, [hl]                                    ; $6347: $7e
    ld a, [de]                                    ; $6348: $1a
    nop                                           ; $6349: $00
    db $10                                        ; $634a: $10

jr_0b4_634b:
    cp l                                          ; $634b: $bd
    dec h                                         ; $634c: $25
    ld l, h                                       ; $634d: $6c
    nop                                           ; $634e: $00
    cp $4a                                        ; $634f: $fe $4a
    dec bc                                        ; $6351: $0b
    add hl, bc                                    ; $6352: $09
    ld e, $15                                     ; $6353: $1e $15
    ld a, [hl]                                    ; $6355: $7e
    ld d, $7c                                     ; $6356: $16 $7c
    ld a, [hl-]                                   ; $6358: $3a
    jp z, Jump_000_3f04                           ; $6359: $ca $04 $3f

    add hl, de                                    ; $635c: $19
    cp [hl]                                       ; $635d: $be
    ld d, $92                                     ; $635e: $16 $92
    nop                                           ; $6360: $00
    ret                                           ; $6361: $c9


    ld [$153d], sp                                ; $6362: $08 $3d $15
    ld e, [hl]                                    ; $6365: $5e
    ld a, [de]                                    ; $6366: $1a
    sub d                                         ; $6367: $92
    inc c                                         ; $6368: $0c
    nop                                           ; $6369: $00
    jr nz, jr_0b4_63d9                            ; $636a: $20 $6d

    nop                                           ; $636c: $00
    ld e, [hl]                                    ; $636d: $5e
    add hl, de                                    ; $636e: $19
    ld bc, $0008                                  ; $636f: $01 $08 $00
    jr nz, @-$47                                  ; $6372: $20 $b7

    ld de, $0801                                  ; $6374: $11 $01 $08
    dec de                                        ; $6377: $1b
    dec d                                         ; $6378: $15
    ld bc, $3c00                                  ; $6379: $01 $00 $3c
    dec d                                         ; $637c: $15
    sbc a                                         ; $637d: $9f
    ld a, [de]                                    ; $637e: $1a
    ld l, c                                       ; $637f: $69
    inc b                                         ; $6380: $04
    nop                                           ; $6381: $00
    jr nz, jr_0b4_6402                            ; $6382: $20 $7e

    add hl, de                                    ; $6384: $19
    ld a, h                                       ; $6385: $7c
    ld a, [hl-]                                   ; $6386: $3a
    ld c, b                                       ; $6387: $48
    inc b                                         ; $6388: $04
    nop                                           ; $6389: $00
    db $10                                        ; $638a: $10
    ld e, $15                                     ; $638b: $1e $15
    ld a, [hl]                                    ; $638d: $7e
    ld [de], a                                    ; $638e: $12
    db $eb                                        ; $638f: $eb
    inc b                                         ; $6390: $04
    ret                                           ; $6391: $c9


    ld [$14fe], sp                                ; $6392: $08 $fe $14
    dec e                                         ; $6395: $1d
    ld d, $be                                     ; $6396: $16 $be
    ld d, $d4                                     ; $6398: $16 $d4
    inc c                                         ; $639a: $0c
    dec a                                         ; $639b: $3d
    ld de, $195f                                  ; $639c: $11 $5f $19
    jr jr_0b4_63b2                                ; $639f: $18 $11

    nop                                           ; $63a1: $00
    jr nz, jr_0b4_6332                            ; $63a2: $20 $8e

    nop                                           ; $63a4: $00
    dec sp                                        ; $63a5: $3b
    dec d                                         ; $63a6: $15
    ld bc, $0008                                  ; $63a7: $01 $08 $00
    jr nz, jr_0b4_634b                            ; $63aa: $20 $9f

    dec e                                         ; $63ac: $1d
    ld bc, $4808                                  ; $63ad: $01 $08 $48
    inc b                                         ; $63b0: $04
    nop                                           ; $63b1: $00

jr_0b4_63b2:
    nop                                           ; $63b2: $00
    rst $30                                       ; $63b3: $f7
    inc c                                         ; $63b4: $0c
    ld a, $15                                     ; $63b5: $3e $15
    sbc a                                         ; $63b7: $9f
    dec e                                         ; $63b8: $1d
    nop                                           ; $63b9: $00
    inc d                                         ; $63ba: $14
    ei                                            ; $63bb: $fb
    add hl, hl                                    ; $63bc: $29
    dec h                                         ; $63bd: $25
    ld [hl], b                                    ; $63be: $70
    ld c, c                                       ; $63bf: $49
    nop                                           ; $63c0: $00
    ret                                           ; $63c1: $c9


    ld [$153e], sp                                ; $63c2: $08 $3e $15
    ld e, e                                       ; $63c5: $5b
    ld a, [bc]                                    ; $63c6: $0a
    sbc [hl]                                      ; $63c7: $9e
    ld d, $c9                                     ; $63c8: $16 $c9
    ld [$153d], sp                                ; $63ca: $08 $3d $15
    cp h                                          ; $63cd: $bc
    ld d, $be                                     ; $63ce: $16 $be
    add hl, de                                    ; $63d0: $19
    ld bc, $f708                                  ; $63d1: $01 $08 $f7
    inc c                                         ; $63d4: $0c
    ld l, e                                       ; $63d5: $6b
    nop                                           ; $63d6: $00
    ld a, a                                       ; $63d7: $7f
    dec e                                         ; $63d8: $1d

jr_0b4_63d9:
    nop                                           ; $63d9: $00
    jr nz, @+$6f                                  ; $63da: $20 $6d

    nop                                           ; $63dc: $00
    ld bc, $b008                                  ; $63dd: $01 $08 $b0
    nop                                           ; $63e0: $00
    nop                                           ; $63e1: $00
    jr nz, jr_0b4_63fd                            ; $63e2: $20 $19

    ld de, $0801                                  ; $63e4: $11 $01 $08
    ld c, c                                       ; $63e7: $49
    nop                                           ; $63e8: $00
    rlca                                          ; $63e9: $07
    nop                                           ; $63ea: $00
    ld a, $15                                     ; $63eb: $3e $15
    call nc, $9f04                                ; $63ed: $d4 $04 $9f
    dec e                                         ; $63f0: $1d
    nop                                           ; $63f1: $00
    jr jr_0b4_645b                                ; $63f2: $18 $67

    ld d, h                                       ; $63f4: $54
    dec sp                                        ; $63f5: $3b
    ld [hl-], a                                   ; $63f6: $32
    adc b                                         ; $63f7: $88
    inc b                                         ; $63f8: $04
    db $eb                                        ; $63f9: $eb
    ld [$153e], sp                                ; $63fa: $08 $3e $15

jr_0b4_63fd:
    ld e, l                                       ; $63fd: $5d
    ld d, $df                                     ; $63fe: $16 $df
    ld d, $02                                     ; $6400: $16 $02

jr_0b4_6402:
    inc b                                         ; $6402: $04
    ld e, $15                                     ; $6403: $1e $15
    sub b                                         ; $6405: $90
    nop                                           ; $6406: $00
    ld a, [hl]                                    ; $6407: $7e
    add hl, de                                    ; $6408: $19
    ld bc, $6b08                                  ; $6409: $01 $08 $6b
    nop                                           ; $640c: $00
    ld b, a                                       ; $640d: $47
    nop                                           ; $640e: $00
    adc l                                         ; $640f: $8d
    nop                                           ; $6410: $00
    nop                                           ; $6411: $00
    inc e                                         ; $6412: $1c
    adc [hl]                                      ; $6413: $8e
    nop                                           ; $6414: $00
    ld bc, $b108                                  ; $6415: $01 $08 $b1
    nop                                           ; $6418: $00
    nop                                           ; $6419: $00
    jr nz, @+$69                                  ; $641a: $20 $67

    ld d, h                                       ; $641c: $54
    dec sp                                        ; $641d: $3b
    ld [hl-], a                                   ; $641e: $32
    adc b                                         ; $641f: $88
    inc b                                         ; $6420: $04
    nop                                           ; $6421: $00
    db $10                                        ; $6422: $10
    dec sp                                        ; $6423: $3b
    dec c                                         ; $6424: $0d
    cp a                                          ; $6425: $bf
    ld a, a                                       ; $6426: $7f

jr_0b4_6427:
    jr z, jr_0b4_6429                             ; $6427: $28 $00

jr_0b4_6429:
    ret                                           ; $6429: $c9


    ld [$4c47], sp                                ; $642a: $08 $47 $4c
    ld a, [c]                                     ; $642d: $f2
    ld a, c                                       ; $642e: $79
    ld a, [hl]                                    ; $642f: $7e
    ld a, [bc]                                    ; $6430: $0a
    ret                                           ; $6431: $c9


    ld [$153d], sp                                ; $6432: $08 $3d $15
    ld a, h                                       ; $6435: $7c
    ld d, $de                                     ; $6436: $16 $de
    ld a, [de]                                    ; $6438: $1a
    ld bc, $fb08                                  ; $6439: $01 $08 $fb
    db $10                                        ; $643c: $10
    adc h                                         ; $643d: $8c
    nop                                           ; $643e: $00
    ld a, l                                       ; $643f: $7d
    add hl, de                                    ; $6440: $19
    nop                                           ; $6441: $00
    jr nz, @+$01                                  ; $6442: $20 $ff

    ld a, a                                       ; $6444: $7f
    adc l                                         ; $6445: $8d
    nop                                           ; $6446: $00
    ld bc, $0008                                  ; $6447: $01 $08 $00
    jr nz, @+$03                                  ; $644a: $20 $01

    ld [$008d], sp                                ; $644c: $08 $8d $00
    ld bc, $0008                                  ; $644f: $01 $08 $00
    jr nz, jr_0b4_649b                            ; $6452: $20 $47

    ld c, h                                       ; $6454: $4c
    ld a, [c]                                     ; $6455: $f2
    ld a, c                                       ; $6456: $79
    ld a, [hl]                                    ; $6457: $7e
    ld a, [bc]                                    ; $6458: $0a
    nop                                           ; $6459: $00
    nop                                           ; $645a: $00

jr_0b4_645b:
    ld d, h                                       ; $645b: $54
    halt                                          ; $645c: $76
    sbc h                                         ; $645d: $9c
    ld [hl], a                                    ; $645e: $77
    nop                                           ; $645f: $00
    jr nz, jr_0b4_6463                            ; $6460: $20 $01

    nop                                           ; $6462: $00

jr_0b4_6463:
    ld e, e                                       ; $6463: $5b
    ld [de], a                                    ; $6464: $12
    inc sp                                        ; $6465: $33
    ld l, d                                       ; $6466: $6a
    ld b, h                                       ; $6467: $44
    ld b, b                                       ; $6468: $40
    nop                                           ; $6469: $00
    nop                                           ; $646a: $00
    rrca                                          ; $646b: $0f
    ld h, d                                       ; $646c: $62
    sbc h                                         ; $646d: $9c
    ld a, e                                       ; $646e: $7b
    or l                                          ; $646f: $b5
    ld l, [hl]                                    ; $6470: $6e
    nop                                           ; $6471: $00
    nop                                           ; $6472: $00
    push hl                                       ; $6473: $e5
    inc a                                         ; $6474: $3c
    rrca                                          ; $6475: $0f
    ld e, d                                       ; $6476: $5a
    ld c, c                                       ; $6477: $49
    ld c, c                                       ; $6478: $49
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00

jr_0b4_647b:
    rst $30                                       ; $647b: $f7
    ld [hl], d                                    ; $647c: $72
    sbc $7b                                       ; $647d: $de $7b
    nop                                           ; $647f: $00
    jr nz, jr_0b4_6482                            ; $6480: $20 $00

jr_0b4_6482:
    jr nz, jr_0b4_647b                            ; $6482: $20 $f7

    ld [hl], d                                    ; $6484: $72
    sbc $7b                                       ; $6485: $de $7b
    nop                                           ; $6487: $00
    jr nz, jr_0b4_648a                            ; $6488: $20 $00

jr_0b4_648a:
    jr nz, jr_0b4_64e7                            ; $648a: $20 $5b

    ld [de], a                                    ; $648c: $12
    inc sp                                        ; $648d: $33
    ld l, d                                       ; $648e: $6a
    ld b, h                                       ; $648f: $44
    ld b, b                                       ; $6490: $40
    nop                                           ; $6491: $00
    jr nz, jr_0b4_6427                            ; $6492: $20 $93

    ld h, d                                       ; $6494: $62
    sbc h                                         ; $6495: $9c
    ld [hl], a                                    ; $6496: $77
    ld l, c                                       ; $6497: $69
    ld b, l                                       ; $6498: $45
    push hl                                       ; $6499: $e5
    inc a                                         ; $649a: $3c

jr_0b4_649b:
    ld sp, $f766                                  ; $649b: $31 $66 $f7
    ld [hl], d                                    ; $649e: $72
    ld c, c                                       ; $649f: $49
    ld c, l                                       ; $64a0: $4d

jr_0b4_64a1:
    daa                                           ; $64a1: $27
    ld b, l                                       ; $64a2: $45
    sub l                                         ; $64a3: $95
    ld [hl], d                                    ; $64a4: $72
    sbc h                                         ; $64a5: $9c
    ld a, e                                       ; $64a6: $7b
    adc $5d                                       ; $64a7: $ce $5d

jr_0b4_64a9:
    ld l, d                                       ; $64a9: $6a
    ld c, l                                       ; $64aa: $4d
    sub h                                         ; $64ab: $94
    ld l, [hl]                                    ; $64ac: $6e
    jr nc, jr_0b4_650d                            ; $64ad: $30 $5e

    ld e, d                                       ; $64af: $5a
    ld [hl], e                                    ; $64b0: $73

jr_0b4_64b1:
    nop                                           ; $64b1: $00
    jr nz, jr_0b4_6527                            ; $64b2: $20 $73

    ld e, [hl]                                    ; $64b4: $5e
    cp h                                          ; $64b5: $bc
    ld a, e                                       ; $64b6: $7b
    push hl                                       ; $64b7: $e5
    inc a                                         ; $64b8: $3c
    nop                                           ; $64b9: $00
    jr nz, jr_0b4_652f                            ; $64ba: $20 $73

    ld e, [hl]                                    ; $64bc: $5e
    cp h                                          ; $64bd: $bc
    ld a, e                                       ; $64be: $7b
    push hl                                       ; $64bf: $e5
    inc a                                         ; $64c0: $3c
    nop                                           ; $64c1: $00
    jr nz, jr_0b4_64c4                            ; $64c2: $20 $00

jr_0b4_64c4:
    jr nz, jr_0b4_64c6                            ; $64c4: $20 $00

jr_0b4_64c6:
    jr nz, jr_0b4_64a1                            ; $64c6: $20 $d9

    ld b, $00                                     ; $64c8: $06 $00
    jr nz, jr_0b4_64cc                            ; $64ca: $20 $00

jr_0b4_64cc:
    jr nz, jr_0b4_64ce                            ; $64cc: $20 $00

jr_0b4_64ce:
    jr nz, jr_0b4_64a9                            ; $64ce: $20 $d9

    ld b, $00                                     ; $64d0: $06 $00
    inc d                                         ; $64d2: $14
    dec hl                                        ; $64d3: $2b
    inc b                                         ; $64d4: $04
    nop                                           ; $64d5: $00
    jr nz, jr_0b4_64b1                            ; $64d6: $20 $d9

    ld b, $4d                                     ; $64d8: $06 $4d
    inc b                                         ; $64da: $04
    db $dd                                        ; $64db: $dd
    add hl, bc                                    ; $64dc: $09
    rst $18                                       ; $64dd: $df
    ld b, $df                                     ; $64de: $06 $df
    inc bc                                        ; $64e0: $03

jr_0b4_64e1:
    nop                                           ; $64e1: $00
    inc e                                         ; $64e2: $1c
    cp l                                          ; $64e3: $bd
    add hl, bc                                    ; $64e4: $09
    dec hl                                        ; $64e5: $2b
    inc b                                         ; $64e6: $04

jr_0b4_64e7:
    ld e, $07                                     ; $64e7: $1e $07
    nop                                           ; $64e9: $00
    jr nz, jr_0b4_6517                            ; $64ea: $20 $2b

    inc b                                         ; $64ec: $04
    dec hl                                        ; $64ed: $2b
    inc b                                         ; $64ee: $04
    ld e, $07                                     ; $64ef: $1e $07
    nop                                           ; $64f1: $00
    jr nz, jr_0b4_651f                            ; $64f2: $20 $2b

    inc b                                         ; $64f4: $04
    dec hl                                        ; $64f5: $2b
    inc b                                         ; $64f6: $04
    ld e, $07                                     ; $64f7: $1e $07
    nop                                           ; $64f9: $00
    jr nz, jr_0b4_6527                            ; $64fa: $20 $2b

    inc b                                         ; $64fc: $04
    nop                                           ; $64fd: $00
    jr nz, @-$25                                  ; $64fe: $20 $d9

    ld b, $00                                     ; $6500: $06 $00
    jr nz, jr_0b4_652f                            ; $6502: $20 $2b

    inc b                                         ; $6504: $04
    nop                                           ; $6505: $00
    jr nz, jr_0b4_64e1                            ; $6506: $20 $d9

    ld b, $2a                                     ; $6508: $06 $2a
    inc b                                         ; $650a: $04
    or $08                                        ; $650b: $f6 $08

jr_0b4_650d:
    sbc a                                         ; $650d: $9f
    add hl, bc                                    ; $650e: $09
    inc e                                         ; $650f: $1c
    add hl, bc                                    ; $6510: $09
    ld c, l                                       ; $6511: $4d
    inc b                                         ; $6512: $04
    sbc a                                         ; $6513: $9f
    dec c                                         ; $6514: $0d
    ld a, l                                       ; $6515: $7d
    inc bc                                        ; $6516: $03

jr_0b4_6517:
    ld a, [hl]                                    ; $6517: $7e
    ld a, [bc]                                    ; $6518: $0a
    dec hl                                        ; $6519: $2b
    inc b                                         ; $651a: $04
    sub l                                         ; $651b: $95
    dec b                                         ; $651c: $05
    cp $06                                        ; $651d: $fe $06

jr_0b4_651f:
    cp $09                                        ; $651f: $fe $09
    nop                                           ; $6521: $00
    inc e                                         ; $6522: $1c
    cp a                                          ; $6523: $bf
    add hl, bc                                    ; $6524: $09
    dec hl                                        ; $6525: $2b
    inc b                                         ; $6526: $04

jr_0b4_6527:
    ccf                                           ; $6527: $3f
    ld c, $00                                     ; $6528: $0e $00

jr_0b4_652a:
    jr nz, @-$3f                                  ; $652a: $20 $bf

    add hl, bc                                    ; $652c: $09
    dec hl                                        ; $652d: $2b
    inc b                                         ; $652e: $04

jr_0b4_652f:
    ccf                                           ; $652f: $3f
    ld c, $00                                     ; $6530: $0e $00
    jr nz, jr_0b4_652a                            ; $6532: $20 $f6

    ld [$099f], sp                                ; $6534: $08 $9f $09
    inc e                                         ; $6537: $1c
    add hl, bc                                    ; $6538: $09
    nop                                           ; $6539: $00
    inc e                                         ; $653a: $1c
    ld a, a                                       ; $653b: $7f
    dec c                                         ; $653c: $0d
    dec hl                                        ; $653d: $2b
    inc b                                         ; $653e: $04
    ld a, [hl]                                    ; $653f: $7e
    ld b, $2b                                     ; $6540: $06 $2b
    inc b                                         ; $6542: $04
    dec e                                         ; $6543: $1d
    ld b, $3e                                     ; $6544: $06 $3e
    inc bc                                        ; $6546: $03
    sbc [hl]                                      ; $6547: $9e
    ld b, $8c                                     ; $6548: $06 $8c
    nop                                           ; $654a: $00
    ld e, a                                       ; $654b: $5f
    dec c                                         ; $654c: $0d
    ld e, [hl]                                    ; $654d: $5e
    inc bc                                        ; $654e: $03
    ld a, [hl]                                    ; $654f: $7e
    ld b, $2b                                     ; $6550: $06 $2b
    inc b                                         ; $6552: $04
    ld a, a                                       ; $6553: $7f
    add hl, bc                                    ; $6554: $09
    ld e, $03                                     ; $6555: $1e $03
    sub d                                         ; $6557: $92
    inc b                                         ; $6558: $04
    nop                                           ; $6559: $00
    jr nz, jr_0b4_65b5                            ; $655a: $20 $59

    dec b                                         ; $655c: $05
    ld c, e                                       ; $655d: $4b
    nop                                           ; $655e: $00
    ccf                                           ; $655f: $3f
    ld a, [bc]                                    ; $6560: $0a

jr_0b4_6561:
    nop                                           ; $6561: $00
    jr nz, jr_0b4_658f                            ; $6562: $20 $2b

    inc b                                         ; $6564: $04
    ld c, e                                       ; $6565: $4b
    nop                                           ; $6566: $00
    ccf                                           ; $6567: $3f
    ld a, [bc]                                    ; $6568: $0a
    nop                                           ; $6569: $00
    jr nz, @+$1f                                  ; $656a: $20 $1d

    ld b, $3e                                     ; $656c: $06 $3e
    inc bc                                        ; $656e: $03
    sbc [hl]                                      ; $656f: $9e
    ld b, $00                                     ; $6570: $06 $00
    jr nz, @-$41                                  ; $6572: $20 $bd

    add hl, bc                                    ; $6574: $09
    dec hl                                        ; $6575: $2b
    inc b                                         ; $6576: $04
    ld e, a                                       ; $6577: $5f
    ld a, [bc]                                    ; $6578: $0a
    dec hl                                        ; $6579: $2b
    inc b                                         ; $657a: $04
    ld hl, sp+$05                                 ; $657b: $f8 $05
    ld a, $0a                                     ; $657d: $3e $0a
    cp [hl]                                       ; $657f: $be
    ld b, $4d                                     ; $6580: $06 $4d
    inc b                                         ; $6582: $04
    sbc a                                         ; $6583: $9f
    add hl, bc                                    ; $6584: $09
    dec e                                         ; $6585: $1d
    inc bc                                        ; $6586: $03
    dec a                                         ; $6587: $3d
    ld b, $2b                                     ; $6588: $06 $2b
    inc b                                         ; $658a: $04
    or l                                          ; $658b: $b5
    dec b                                         ; $658c: $05
    ld e, a                                       ; $658d: $5f
    rlca                                          ; $658e: $07

jr_0b4_658f:
    ld e, [hl]                                    ; $658f: $5e
    add hl, bc                                    ; $6590: $09
    cp [hl]                                       ; $6591: $be
    add hl, bc                                    ; $6592: $09
    ld a, l                                       ; $6593: $7d
    ld b, $1d                                     ; $6594: $06 $1d
    inc bc                                        ; $6596: $03
    ld e, $0a                                     ; $6597: $1e $0a
    nop                                           ; $6599: $00
    jr nz, @+$53                                  ; $659a: $20 $51

    dec b                                         ; $659c: $05
    dec hl                                        ; $659d: $2b
    inc b                                         ; $659e: $04
    sbc a                                         ; $659f: $9f
    rlca                                          ; $65a0: $07
    nop                                           ; $65a1: $00
    jr nz, jr_0b4_65cf                            ; $65a2: $20 $2b

    inc b                                         ; $65a4: $04
    ld a, $0a                                     ; $65a5: $3e $0a
    cp [hl]                                       ; $65a7: $be
    ld b, $2b                                     ; $65a8: $06 $2b
    inc b                                         ; $65aa: $04
    inc sp                                        ; $65ab: $33
    ld [bc], a                                    ; $65ac: $02
    cp [hl]                                       ; $65ad: $be
    inc bc                                        ; $65ae: $03
    db $dd                                        ; $65af: $dd
    add hl, bc                                    ; $65b0: $09
    adc d                                         ; $65b1: $8a
    nop                                           ; $65b2: $00
    jr c, jr_0b4_65b7                             ; $65b3: $38 $02

jr_0b4_65b5:
    cp $02                                        ; $65b5: $fe $02

jr_0b4_65b7:
    rst $38                                       ; $65b7: $ff
    inc bc                                        ; $65b8: $03
    dec hl                                        ; $65b9: $2b
    inc b                                         ; $65ba: $04

jr_0b4_65bb:
    sbc [hl]                                      ; $65bb: $9e
    add hl, bc                                    ; $65bc: $09
    ld e, [hl]                                    ; $65bd: $5e
    inc bc                                        ; $65be: $03
    sub l                                         ; $65bf: $95
    ld [$042b], sp                                ; $65c0: $08 $2b $04
    ld e, l                                       ; $65c3: $5d
    add hl, bc                                    ; $65c4: $09
    sbc a                                         ; $65c5: $9f
    ld a, [bc]                                    ; $65c6: $0a

jr_0b4_65c7:
    jp nc, $dd04                                  ; $65c7: $d2 $04 $dd

    ld [$02bd], sp                                ; $65ca: $08 $bd $02
    ld a, l                                       ; $65cd: $7d
    add hl, bc                                    ; $65ce: $09

jr_0b4_65cf:
    cp l                                          ; $65cf: $bd
    inc bc                                        ; $65d0: $03
    nop                                           ; $65d1: $00
    jr nz, jr_0b4_6561                            ; $65d2: $20 $8d

    ld bc, $0a3e                                  ; $65d4: $01 $3e $0a
    dec hl                                        ; $65d7: $2b
    inc b                                         ; $65d8: $04
    nop                                           ; $65d9: $00
    jr nz, jr_0b4_65bb                            ; $65da: $20 $df

    rlca                                          ; $65dc: $07
    dec hl                                        ; $65dd: $2b
    inc b                                         ; $65de: $04
    rst $38                                       ; $65df: $ff
    inc bc                                        ; $65e0: $03
    inc l                                         ; $65e1: $2c
    inc b                                         ; $65e2: $04
    ld e, $0a                                     ; $65e3: $1e $0a
    ld a, $03                                     ; $65e5: $3e $03
    cp b                                          ; $65e7: $b8
    ld [$0492], sp                                ; $65e8: $08 $92 $04
    ld e, h                                       ; $65eb: $5c
    ld b, $5e                                     ; $65ec: $06 $5e
    add hl, bc                                    ; $65ee: $09
    dec e                                         ; $65ef: $1d
    inc bc                                        ; $65f0: $03
    dec hl                                        ; $65f1: $2b
    inc b                                         ; $65f2: $04

jr_0b4_65f3:
    ld e, $0a                                     ; $65f3: $1e $0a
    ld a, a                                       ; $65f5: $7f
    rlca                                          ; $65f6: $07
    or d                                          ; $65f7: $b2
    inc b                                         ; $65f8: $04
    nop                                           ; $65f9: $00
    nop                                           ; $65fa: $00
    inc e                                         ; $65fb: $1c
    dec b                                         ; $65fc: $05
    inc l                                         ; $65fd: $2c
    nop                                           ; $65fe: $00
    cp $0d                                        ; $65ff: $fe $0d
    ld l, c                                       ; $6601: $69
    ld [$09de], sp                                ; $6602: $08 $de $09
    ld sp, $de0d                                  ; $6605: $31 $0d $de
    ld [bc], a                                    ; $6608: $02
    nop                                           ; $6609: $00
    jr nz, jr_0b4_65c7                            ; $660a: $20 $bb

    add hl, bc                                    ; $660c: $09
    dec hl                                        ; $660d: $2b
    inc b                                         ; $660e: $04
    db $dd                                        ; $660f: $dd
    ld b, $00                                     ; $6610: $06 $00
    jr nz, jr_0b4_65f3                            ; $6612: $20 $df

    dec c                                         ; $6614: $0d
    dec hl                                        ; $6615: $2b

Call_0b4_6616:
    inc b                                         ; $6616: $04
    rra                                           ; $6617: $1f
    rlca                                          ; $6618: $07
    dec hl                                        ; $6619: $2b
    inc b                                         ; $661a: $04
    cp h                                          ; $661b: $bc
    inc b                                         ; $661c: $04
    cp $09                                        ; $661d: $fe $09
    ld d, l                                       ; $661f: $55
    ld [$042b], sp                                ; $6620: $08 $2b $04
    halt                                          ; $6623: $76
    ld [bc], a                                    ; $6624: $02
    ld e, a                                       ; $6625: $5f
    inc bc                                        ; $6626: $03
    ld l, [hl]                                    ; $6627: $6e
    ld bc, $0083                                  ; $6628: $01 $83 $00
    cp [hl]                                       ; $662b: $be
    add hl, bc                                    ; $662c: $09
    dec l                                         ; $662d: $2d
    inc b                                         ; $662e: $04

jr_0b4_662f:
    ld a, l                                       ; $662f: $7d
    ld b, $00                                     ; $6630: $06 $00
    nop                                           ; $6632: $00
    or l                                          ; $6633: $b5
    dec h                                         ; $6634: $25
    adc e                                         ; $6635: $8b
    inc b                                         ; $6636: $04
    db $dd                                        ; $6637: $dd
    ld b, [hl]                                    ; $6638: $46
    dec h                                         ; $6639: $25
    inc b                                         ; $663a: $04
    ei                                            ; $663b: $fb
    inc b                                         ; $663c: $04
    sbc a                                         ; $663d: $9f
    ld b, $bc                                     ; $663e: $06 $bc
    ld b, d                                       ; $6640: $42
    nop                                           ; $6641: $00
    jr nz, jr_0b4_665a                            ; $6642: $20 $16

Jump_0b4_6644:
    add hl, bc                                    ; $6644: $09
    sbc $06                                       ; $6645: $de $06
    dec hl                                        ; $6647: $2b
    inc b                                         ; $6648: $04
    nop                                           ; $6649: $00
    inc e                                         ; $664a: $1c
    ccf                                           ; $664b: $3f
    ld b, $22                                     ; $664c: $06 $22
    ld a, l                                       ; $664e: $7d
    dec hl                                        ; $664f: $2b
    inc b                                         ; $6650: $04
    ld e, c                                       ; $6651: $59
    ld bc, $2000                                  ; $6652: $01 $00 $20
    dec b                                         ; $6655: $05
    ld l, l                                       ; $6656: $6d
    ld [hl], c                                    ; $6657: $71
    inc b                                         ; $6658: $04
    ld h, c                                       ; $6659: $61

jr_0b4_665a:
    inc l                                         ; $665a: $2c
    sbc $09                                       ; $665b: $de $09
    ld [hl+], a                                   ; $665d: $22
    ld a, l                                       ; $665e: $7d
    sbc d                                         ; $665f: $9a
    ld [bc], a                                    ; $6660: $02
    nop                                           ; $6661: $00
    nop                                           ; $6662: $00
    rst $38                                       ; $6663: $ff
    add hl, bc                                    ; $6664: $09
    ld [hl], e                                    ; $6665: $73
    nop                                           ; $6666: $00
    sbc d                                         ; $6667: $9a
    ld a, $45                                     ; $6668: $3e $45
    inc b                                         ; $666a: $04
    cp [hl]                                       ; $666b: $be
    ld c, d                                       ; $666c: $4a
    sub d                                         ; $666d: $92
    dec h                                         ; $666e: $25
    rst $38                                       ; $666f: $ff
    ld h, e                                       ; $6670: $63
    inc b                                         ; $6671: $04
    nop                                           ; $6672: $00
    db $10                                        ; $6673: $10
    ld a, [de]                                    ; $6674: $1a
    ld a, a                                       ; $6675: $7f
    inc hl                                        ; $6676: $23
    ld a, [hl-]                                   ; $6677: $3a
    add hl, bc                                    ; $6678: $09

jr_0b4_6679:
    nop                                           ; $6679: $00
    jr nz, @+$7e                                  ; $667a: $20 $7c

    add hl, bc                                    ; $667c: $09
    dec hl                                        ; $667d: $2b
    inc b                                         ; $667e: $04
    rst $38                                       ; $667f: $ff
    ld b, $00                                     ; $6680: $06 $00
    nop                                           ; $6682: $00
    inc hl                                        ; $6683: $23
    ld a, l                                       ; $6684: $7d

jr_0b4_6685:
    nop                                           ; $6685: $00
    jr nz, jr_0b4_662f                            ; $6686: $20 $a7

    inc b                                         ; $6688: $04
    nop                                           ; $6689: $00
    inc c                                         ; $668a: $0c
    adc d                                         ; $668b: $8a
    ld a, c                                       ; $668c: $79
    sub l                                         ; $668d: $95
    ld a, [hl]                                    ; $668e: $7e
    ld b, d                                       ; $668f: $42
    jr nc, @+$2b                                  ; $6690: $30 $29

jr_0b4_6692:
    nop                                           ; $6692: $00
    call nz, Call_0b4_5b60                        ; $6693: $c4 $60 $5b
    ld a, a                                       ; $6696: $7f
    dec e                                         ; $6697: $1d
    dec b                                         ; $6698: $05
    ld bc, $d300                                  ; $6699: $01 $00 $d3
    dec h                                         ; $669c: $25
    ld a, [hl]                                    ; $669d: $7e
    ld d, a                                       ; $669e: $57
    inc e                                         ; $669f: $1c
    add hl, bc                                    ; $66a0: $09
    ld b, e                                       ; $66a1: $43
    ld [$4a9f], sp                                ; $66a2: $08 $9f $4a
    and e                                         ; $66a5: $a3
    ld d, b                                       ; $66a6: $50
    cp l                                          ; $66a7: $bd
    ld l, a                                       ; $66a8: $6f
    ld b, [hl]                                    ; $66a9: $46
    nop                                           ; $66aa: $00
    or [hl]                                       ; $66ab: $b6
    inc b                                         ; $66ac: $04
    sbc d                                         ; $66ad: $9a
    ld b, d                                       ; $66ae: $42
    sbc a                                         ; $66af: $9f
    add hl, bc                                    ; $66b0: $09
    nop                                           ; $66b1: $00
    jr nz, jr_0b4_6685                            ; $66b2: $20 $d1

    ld bc, $002a                                  ; $66b4: $01 $2a $00
    dec a                                         ; $66b7: $3d
    ld a, [bc]                                    ; $66b8: $0a
    nop                                           ; $66b9: $00
    jr jr_0b4_6679                                ; $66ba: $18 $bd

    ld [hl], a                                    ; $66bc: $77
    dec hl                                        ; $66bd: $2b
    nop                                           ; $66be: $00
    ccf                                           ; $66bf: $3f
    ld b, $21                                     ; $66c0: $06 $21
    jr z, jr_0b4_6692                             ; $66c2: $28 $ce

    ld a, c                                       ; $66c4: $79
    xor a                                         ; $66c5: $af
    inc c                                         ; $66c6: $0c
    rst $00                                       ; $66c7: $c7
    ld c, b                                       ; $66c8: $48
    nop                                           ; $66c9: $00
    jr jr_0b4_66fd                                ; $66ca: $18 $31

    ld bc, $7107                                  ; $66cc: $01 $07 $71
    ld a, $06                                     ; $66cf: $3e $06
    nop                                           ; $66d1: $00
    nop                                           ; $66d2: $00
    ld e, c                                       ; $66d3: $59
    ld de, $3e5d                                  ; $66d4: $11 $5d $3e
    ld l, [hl]                                    ; $66d7: $6e
    nop                                           ; $66d8: $00
    ld [bc], a                                    ; $66d9: $02
    inc b                                         ; $66da: $04
    or $2d                                        ; $66db: $f6 $2d
    ld a, a                                       ; $66dd: $7f
    ld e, e                                       ; $66de: $5b
    ld e, l                                       ; $66df: $5d
    ld [hl], $00                                  ; $66e0: $36 $00
    nop                                           ; $66e2: $00
    inc a                                         ; $66e3: $3c
    add hl, bc                                    ; $66e4: $09
    sbc h                                         ; $66e5: $9c
    ld a, $ad                                     ; $66e6: $3e $ad
    inc b                                         ; $66e8: $04
    nop                                           ; $66e9: $00
    inc e                                         ; $66ea: $1c
    sbc [hl]                                      ; $66eb: $9e
    dec c                                         ; $66ec: $0d
    ld a, [hl+]                                   ; $66ed: $2a
    nop                                           ; $66ee: $00
    ld e, l                                       ; $66ef: $5d
    ld b, $00                                     ; $66f0: $06 $00
    ld [$0a7f], sp                                ; $66f2: $08 $7f $0a
    rst $38                                       ; $66f5: $ff
    ld a, a                                       ; $66f6: $7f
    ld l, $04                                     ; $66f7: $2e $04
    nop                                           ; $66f9: $00
    ld [$05be], sp                                ; $66fa: $08 $be $05

jr_0b4_66fd:
    ld h, d                                       ; $66fd: $62
    ld e, b                                       ; $66fe: $58
    adc e                                         ; $66ff: $8b
    nop                                           ; $6700: $00
    nop                                           ; $6701: $00
    nop                                           ; $6702: $00
    ld c, d                                       ; $6703: $4a
    ld [hl], c                                    ; $6704: $71
    ld sp, $0001                                  ; $6705: $31 $01 $00
    jr nc, jr_0b4_670d                            ; $6708: $30 $03

    inc b                                         ; $670a: $04
    cp d                                          ; $670b: $ba
    inc b                                         ; $670c: $04

jr_0b4_670d:
    rst $38                                       ; $670d: $ff
    ld a, a                                       ; $670e: $7f
    and e                                         ; $670f: $a3
    ld d, h                                       ; $6710: $54
    inc b                                         ; $6711: $04
    nop                                           ; $6712: $00
    or $2d                                        ; $6713: $f6 $2d
    ld e, a                                       ; $6715: $5f
    ld d, a                                       ; $6716: $57
    ld e, [hl]                                    ; $6717: $5e
    ld a, [hl-]                                   ; $6718: $3a
    nop                                           ; $6719: $00
    nop                                           ; $671a: $00
    dec a                                         ; $671b: $3d
    add hl, bc                                    ; $671c: $09
    cp l                                          ; $671d: $bd
    ld b, d                                       ; $671e: $42
    sub d                                         ; $671f: $92
    inc b                                         ; $6720: $04
    inc b                                         ; $6721: $04
    nop                                           ; $6722: $00
    sbc h                                         ; $6723: $9c
    add hl, bc                                    ; $6724: $09
    nop                                           ; $6725: $00
    jr nz, jr_0b4_6766                            ; $6726: $20 $3e

    rlca                                          ; $6728: $07
    inc bc                                        ; $6729: $03
    nop                                           ; $672a: $00
    rst $18                                       ; $672b: $df
    add hl, bc                                    ; $672c: $09
    rst $38                                       ; $672d: $ff
    ld a, a                                       ; $672e: $7f
    add c                                         ; $672f: $81
    ld de, $040e                                  ; $6730: $11 $0e $04
    di                                            ; $6733: $f3
    ld bc, $073f                                  ; $6734: $01 $3f $07
    ld a, [hl]                                    ; $6737: $7e
    dec b                                         ; $6738: $05
    ld hl, $ff10                                  ; $6739: $21 $10 $ff
    ld b, $06                                     ; $673c: $06 $06
    ld d, l                                       ; $673e: $55
    ld a, [c]                                     ; $673f: $f2
    inc b                                         ; $6740: $04
    ld b, b                                       ; $6741: $40
    inc d                                         ; $6742: $14
    ld a, d                                       ; $6743: $7a
    add hl, bc                                    ; $6744: $09
    cp e                                          ; $6745: $bb
    ld d, d                                       ; $6746: $52
    ld [hl+], a                                   ; $6747: $22
    ld a, l                                       ; $6748: $7d
    ld b, e                                       ; $6749: $43
    ld [$4afe], sp                                ; $674a: $08 $fe $4a
    or c                                          ; $674d: $b1
    add hl, hl                                    ; $674e: $29
    rst $38                                       ; $674f: $ff
    ld a, e                                       ; $6750: $7b
    nop                                           ; $6751: $00
    nop                                           ; $6752: $00
    dec a                                         ; $6753: $3d
    ld c, a                                       ; $6754: $4f
    ld e, h                                       ; $6755: $5c
    add hl, bc                                    ; $6756: $09
    adc $04                                       ; $6757: $ce $04
    nop                                           ; $6759: $00
    inc e                                         ; $675a: $1c
    cp h                                          ; $675b: $bc
    add hl, bc                                    ; $675c: $09
    dec a                                         ; $675d: $3d
    inc bc                                        ; $675e: $03
    add hl, hl                                    ; $675f: $29
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    ld [$7fff], sp                                ; $6762: $08 $ff $7f
    add c                                         ; $6765: $81

jr_0b4_6766:
    ld de, $042b                                  ; $6766: $11 $2b $04
    xor h                                         ; $6769: $ac
    nop                                           ; $676a: $00
    ld e, [hl]                                    ; $676b: $5e
    add hl, bc                                    ; $676c: $09
    sbc l                                         ; $676d: $9d
    ld b, $7f                                     ; $676e: $06 $7f
    inc bc                                        ; $6770: $03
    ld [hl+], a                                   ; $6771: $22
    inc d                                         ; $6772: $14
    ld a, l                                       ; $6773: $7d
    add hl, bc                                    ; $6774: $09
    sbc $02                                       ; $6775: $de $02
    ld l, [hl]                                    ; $6777: $6e
    ld bc, $0424                                  ; $6778: $01 $24 $04
    ld [hl-], a                                   ; $677b: $32
    ld a, [hl]                                    ; $677c: $7e
    sbc l                                         ; $677d: $9d
    dec c                                         ; $677e: $0d
    ld [hl+], a                                   ; $677f: $22
    ld a, l                                       ; $6780: $7d
    ld b, l                                       ; $6781: $45
    inc b                                         ; $6782: $04
    or [hl]                                       ; $6783: $b6
    add hl, hl                                    ; $6784: $29
    sbc $46                                       ; $6785: $de $46
    ldh a, [rNR23]                                ; $6787: $f0 $18
    dec h                                         ; $6789: $25
    nop                                           ; $678a: $00
    ld [hl], c                                    ; $678b: $71
    dec e                                         ; $678c: $1d
    ld a, a                                       ; $678d: $7f
    ld d, e                                       ; $678e: $53
    sbc l                                         ; $678f: $9d
    add hl, bc                                    ; $6790: $09
    nop                                           ; $6791: $00
    inc e                                         ; $6792: $1c
    ei                                            ; $6793: $fb
    dec b                                         ; $6794: $05
    ld e, l                                       ; $6795: $5d
    inc bc                                        ; $6796: $03
    dec hl                                        ; $6797: $2b
    inc b                                         ; $6798: $04
    nop                                           ; $6799: $00
    nop                                           ; $679a: $00
    rst $38                                       ; $679b: $ff
    ld a, a                                       ; $679c: $7f
    add c                                         ; $679d: $81
    ld de, $2000                                  ; $679e: $11 $00 $20
    dec hl                                        ; $67a1: $2b
    inc b                                         ; $67a2: $04
    sbc a                                         ; $67a3: $9f
    dec c                                         ; $67a4: $0d
    ld a, [hl]                                    ; $67a5: $7e
    inc bc                                        ; $67a6: $03
    dec a                                         ; $67a7: $3d
    ld b, $6d                                     ; $67a8: $06 $6d
    nop                                           ; $67aa: $00
    db $fd                                        ; $67ab: $fd
    ld [$069e], sp                                ; $67ac: $08 $9e $06
    call c, $0105                                 ; $67af: $dc $05 $01
    inc c                                         ; $67b2: $0c
    sbc [hl]                                      ; $67b3: $9e
    add hl, bc                                    ; $67b4: $09
    xor d                                         ; $67b5: $aa
    ld a, l                                       ; $67b6: $7d
    rst $28                                       ; $67b7: $ef
    nop                                           ; $67b8: $00
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    inc a                                         ; $67bb: $3c
    ld de, $42dd                                  ; $67bc: $11 $dd $42
    dec l                                         ; $67bf: $2d
    dec e                                         ; $67c0: $1d
    ld [hl+], a                                   ; $67c1: $22
    nop                                           ; $67c2: $00
    ld a, c                                       ; $67c3: $79
    inc b                                         ; $67c4: $04
    ld e, $2f                                     ; $67c5: $1e $2f
    cp [hl]                                       ; $67c7: $be
    add hl, bc                                    ; $67c8: $09
    nop                                           ; $67c9: $00
    jr nz, @-$21                                  ; $67ca: $20 $dd

    dec b                                         ; $67cc: $05
    ld a, $03                                     ; $67cd: $3e $03
    dec hl                                        ; $67cf: $2b
    inc b                                         ; $67d0: $04
    nop                                           ; $67d1: $00
    nop                                           ; $67d2: $00
    rst $38                                       ; $67d3: $ff
    ld a, a                                       ; $67d4: $7f
    add c                                         ; $67d5: $81
    dec d                                         ; $67d6: $15
    nop                                           ; $67d7: $00
    jr nz, jr_0b4_67e2                            ; $67d8: $20 $08

    nop                                           ; $67da: $00
    ccf                                           ; $67db: $3f
    rlca                                          ; $67dc: $07
    and c                                         ; $67dd: $a1
    dec d                                         ; $67de: $15
    ld d, d                                       ; $67df: $52
    dec b                                         ; $67e0: $05
    nop                                           ; $67e1: $00

jr_0b4_67e2:
    nop                                           ; $67e2: $00
    sub a                                         ; $67e3: $97
    dec b                                         ; $67e4: $05
    adc e                                         ; $67e5: $8b
    db $10                                        ; $67e6: $10
    cp a                                          ; $67e7: $bf
    ld [bc], a                                    ; $67e8: $02
    nop                                           ; $67e9: $00
    ld [$5e52], sp                                ; $67ea: $08 $52 $5e
    ld e, [hl]                                    ; $67ed: $5e
    ld b, $22                                     ; $67ee: $06 $22
    ld a, l                                       ; $67f0: $7d
    jr nz, jr_0b4_67f3                            ; $67f1: $20 $00

jr_0b4_67f3:
    ld e, $01                                     ; $67f3: $1e $01
    sbc d                                         ; $67f5: $9a
    ld e, d                                       ; $67f6: $5a
    ld [hl], c                                    ; $67f7: $71
    jr nz, jr_0b4_67fb                            ; $67f8: $20 $01

    nop                                           ; $67fa: $00

jr_0b4_67fb:
    ld e, $09                                     ; $67fb: $1e $09
    db $dd                                        ; $67fd: $dd
    ld [de], a                                    ; $67fe: $12
    ld c, b                                       ; $67ff: $48
    add hl, bc                                    ; $6800: $09
    dec b                                         ; $6801: $05
    nop                                           ; $6802: $00
    ld a, $09                                     ; $6803: $3e $09
    nop                                           ; $6805: $00
    jr nz, @+$7f                                  ; $6806: $20 $7d

    ld b, $00                                     ; $6808: $06 $00
    jr @+$01                                      ; $680a: $18 $ff

Jump_0b4_680c:
    ld a, a                                       ; $680c: $7f
    and d                                         ; $680d: $a2
    dec d                                         ; $680e: $15
    dec hl                                        ; $680f: $2b
    inc b                                         ; $6810: $04
    rlca                                          ; $6811: $07
    nop                                           ; $6812: $00
    rst $18                                       ; $6813: $df
    add hl, bc                                    ; $6814: $09
    and d                                         ; $6815: $a2
    dec d                                         ; $6816: $15
    rra                                           ; $6817: $1f
    rlca                                          ; $6818: $07
    ld bc, $5600                                  ; $6819: $01 $00 $56
    ld l, $2a                                     ; $681c: $2e $2a
    dec c                                         ; $681e: $0d
    sbc $6b                                       ; $681f: $de $6b
    nop                                           ; $6821: $00
    ld [$05be], sp                                ; $6822: $08 $be $05
    ld hl, sp+$5a                                 ; $6825: $f8 $5a
    ld [hl+], a                                   ; $6827: $22
    ld a, l                                       ; $6828: $7d
    nop                                           ; $6829: $00
    nop                                           ; $682a: $00
    ld a, [hl]                                    ; $682b: $7e
    ld a, d                                       ; $682c: $7a
    adc c                                         ; $682d: $89
    ld [$242a], sp                                ; $682e: $08 $2a $24
    inc h                                         ; $6831: $24
    nop                                           ; $6832: $00
    ld a, a                                       ; $6833: $7f
    inc b                                         ; $6834: $04
    dec [hl]                                      ; $6835: $35
    ld [hl-], a                                   ; $6836: $32
    db $fd                                        ; $6837: $fd
    add hl, bc                                    ; $6838: $09
    dec b                                         ; $6839: $05
    nop                                           ; $683a: $00
    ld a, l                                       ; $683b: $7d
    add hl, bc                                    ; $683c: $09
    rst $38                                       ; $683d: $ff
    ld a, a                                       ; $683e: $7f
    nop                                           ; $683f: $00
    jr nz, jr_0b4_68a2                            ; $6840: $20 $60

    inc e                                         ; $6842: $1c
    ld e, h                                       ; $6843: $5c
    ld b, $6b                                     ; $6844: $06 $6b
    nop                                           ; $6846: $00
    ccf                                           ; $6847: $3f
    dec bc                                        ; $6848: $0b
    jp nz, $7e19                                  ; $6849: $c2 $19 $7e

    add hl, bc                                    ; $684c: $09
    ld c, h                                       ; $684d: $4c
    inc b                                         ; $684e: $04
    rra                                           ; $684f: $1f
    rlca                                          ; $6850: $07
    nop                                           ; $6851: $00
    nop                                           ; $6852: $00
    xor [hl]                                      ; $6853: $ae
    ld de, $4296                                  ; $6854: $11 $96 $42
    halt                                          ; $6857: $76
    ld [bc], a                                    ; $6858: $02
    nop                                           ; $6859: $00
    ld [$4252], sp                                ; $685a: $08 $52 $42
    rst $18                                       ; $685d: $df
    dec c                                         ; $685e: $0d
    ld [hl+], a                                   ; $685f: $22
    ld a, l                                       ; $6860: $7d
    nop                                           ; $6861: $00
    nop                                           ; $6862: $00
    dec a                                         ; $6863: $3d
    halt                                          ; $6864: $76
    adc b                                         ; $6865: $88
    inc d                                         ; $6866: $14
    ld l, a                                       ; $6867: $6f
    nop                                           ; $6868: $00
    nop                                           ; $6869: $00
    nop                                           ; $686a: $00
    ld a, l                                       ; $686b: $7d
    ld [$10cc], sp                                ; $686c: $08 $cc $10
    sbc [hl]                                      ; $686f: $9e
    add hl, bc                                    ; $6870: $09
    ld [bc], a                                    ; $6871: $02
    nop                                           ; $6872: $00
    db $fd                                        ; $6873: $fd
    ld b, $ff                                     ; $6874: $06 $ff
    ld a, a                                       ; $6876: $7f
    nop                                           ; $6877: $00
    jr nz, jr_0b4_687a                            ; $6878: $20 $00

jr_0b4_687a:
    db $10                                        ; $687a: $10
    db $dd                                        ; $687b: $dd
    ld b, $2b                                     ; $687c: $06 $2b
    inc b                                         ; $687e: $04
    inc l                                         ; $687f: $2c
    ld bc, $19c3                                  ; $6880: $01 $c3 $19
    db $fc                                        ; $6883: $fc
    ld [$042b], sp                                ; $6884: $08 $2b $04
    ld a, $06                                     ; $6887: $3e $06
    nop                                           ; $6889: $00
    nop                                           ; $688a: $00
    dec sp                                        ; $688b: $3b
    inc bc                                        ; $688c: $03
    and l                                         ; $688d: $a5
    ld l, h                                       ; $688e: $6c
    ld c, e                                       ; $688f: $4b
    ld de, $0000                                  ; $6890: $11 $00 $00
    ld [hl+], a                                   ; $6893: $22
    ld a, l                                       ; $6894: $7d
    ld de, $3f2e                                  ; $6895: $11 $2e $3f
    inc bc                                        ; $6898: $03
    ld bc, $1e00                                  ; $6899: $01 $00 $1e
    halt                                          ; $689c: $76
    ld c, $34                                     ; $689d: $0e $34
    dec bc                                        ; $689f: $0b
    dec d                                         ; $68a0: $15
    nop                                           ; $68a1: $00

jr_0b4_68a2:
    nop                                           ; $68a2: $00
    ld [hl], b                                    ; $68a3: $70
    ld a, [hl-]                                   ; $68a4: $3a
    ld a, $05                                     ; $68a5: $3e $05
    and a                                         ; $68a7: $a7
    stop                                          ; $68a8: $10 $00
    nop                                           ; $68aa: $00
    rst $38                                       ; $68ab: $ff
    ld a, a                                       ; $68ac: $7f
    nop                                           ; $68ad: $00
    inc e                                         ; $68ae: $1c
    ld hl, $0000                                  ; $68af: $21 $00 $00
    inc c                                         ; $68b2: $0c
    cp a                                          ; $68b3: $bf
    ld a, [bc]                                    ; $68b4: $0a
    sbc $7b                                       ; $68b5: $de $7b
    dec hl                                        ; $68b7: $2b
    inc b                                         ; $68b8: $04
    db $e3                                        ; $68b9: $e3
    dec e                                         ; $68ba: $1d
    ld e, [hl]                                    ; $68bb: $5e
    add hl, bc                                    ; $68bc: $09
    dec hl                                        ; $68bd: $2b
    inc b                                         ; $68be: $04
    rra                                           ; $68bf: $1f
    ld b, $00                                     ; $68c0: $06 $00
    nop                                           ; $68c2: $00
    sbc [hl]                                      ; $68c3: $9e
    inc bc                                        ; $68c4: $03
    add l                                         ; $68c5: $85
    ld d, b                                       ; $68c6: $50
    xor [hl]                                      ; $68c7: $ae
    ld a, l                                       ; $68c8: $7d
    ld b, d                                       ; $68c9: $42
    inc b                                         ; $68ca: $04
    pop af                                        ; $68cb: $f1
    dec d                                         ; $68cc: $15
    ld a, a                                       ; $68cd: $7f
    ld e, a                                       ; $68ce: $5f
    rst $38                                       ; $68cf: $ff
    inc bc                                        ; $68d0: $03
    ld [bc], a                                    ; $68d1: $02
    inc b                                         ; $68d2: $04
    db $dd                                        ; $68d3: $dd
    ld [hl], b                                    ; $68d4: $70
    ld [hl], b                                    ; $68d5: $70
    add hl, de                                    ; $68d6: $19
    rst $38                                       ; $68d7: $ff
    ld h, e                                       ; $68d8: $63
    nop                                           ; $68d9: $00
    nop                                           ; $68da: $00
    rst $08                                       ; $68db: $cf
    ld sp, $575a                                  ; $68dc: $31 $5a $57
    ld l, l                                       ; $68df: $6d
    dec c                                         ; $68e0: $0d
    nop                                           ; $68e1: $00
    nop                                           ; $68e2: $00
    ld c, h                                       ; $68e3: $4c
    dec b                                         ; $68e4: $05
    nop                                           ; $68e5: $00
    inc e                                         ; $68e6: $1c
    pop de                                        ; $68e7: $d1
    dec b                                         ; $68e8: $05
    nop                                           ; $68e9: $00
    db $10                                        ; $68ea: $10
    rra                                           ; $68eb: $1f
    dec bc                                        ; $68ec: $0b
    rst $38                                       ; $68ed: $ff
    ld a, a                                       ; $68ee: $7f
    ld l, d                                       ; $68ef: $6a
    inc b                                         ; $68f0: $04
    rlca                                          ; $68f1: $07
    nop                                           ; $68f2: $00
    sbc $05                                       ; $68f3: $de $05
    db $e4                                        ; $68f5: $e4
    ld hl, $02de                                  ; $68f6: $21 $de $02
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    add hl, bc                                    ; $68fb: $09
    ld l, l                                       ; $68fc: $6d
    add h                                         ; $68fd: $84
    ld b, b                                       ; $68fe: $40
    ld d, d                                       ; $68ff: $52
    ld a, [hl]                                    ; $6900: $7e
    ld hl, $1300                                  ; $6901: $21 $00 $13
    ld [hl-], a                                   ; $6904: $32
    ld e, d                                       ; $6905: $5a
    ld a, a                                       ; $6906: $7f
    ld e, e                                       ; $6907: $5b
    inc bc                                        ; $6908: $03
    nop                                           ; $6909: $00
    nop                                           ; $690a: $00
    ld [hl], l                                    ; $690b: $75
    dec e                                         ; $690c: $1d
    halt                                          ; $690d: $76
    ld c, d                                       ; $690e: $4a
    sbc a                                         ; $690f: $9f
    ld d, a                                       ; $6910: $57
    nop                                           ; $6911: $00
    nop                                           ; $6912: $00
    ld d, l                                       ; $6913: $55
    ld [bc], a                                    ; $6914: $02
    sbc l                                         ; $6915: $9d
    inc bc                                        ; $6916: $03
    ld c, e                                       ; $6917: $4b
    add hl, hl                                    ; $6918: $29
    nop                                           ; $6919: $00
    nop                                           ; $691a: $00
    nop                                           ; $691b: $00
    jr nz, jr_0b4_698a                            ; $691c: $20 $6c

    ld bc, $294b                                  ; $691e: $01 $4b $29
    nop                                           ; $6921: $00
    inc d                                         ; $6922: $14
    ld a, a                                       ; $6923: $7f
    rlca                                          ; $6924: $07
    rst $38                                       ; $6925: $ff
    ld a, a                                       ; $6926: $7f
    ld c, d                                       ; $6927: $4a
    inc b                                         ; $6928: $04
    dec b                                         ; $6929: $05
    nop                                           ; $692a: $00
    ld a, l                                       ; $692b: $7d
    dec b                                         ; $692c: $05
    inc b                                         ; $692d: $04
    ld [hl+], a                                   ; $692e: $22
    cp $02                                        ; $692f: $fe $02
    ld hl, $e800                                  ; $6931: $21 $00 $e8
    ld h, h                                       ; $6934: $64
    ld b, d                                       ; $6935: $42
    inc a                                         ; $6936: $3c
    ld sp, $217e                                  ; $6937: $31 $7e $21
    nop                                           ; $693a: $00
    dec sp                                        ; $693b: $3b
    inc bc                                        ; $693c: $03
    or [hl]                                       ; $693d: $b6
    ld l, [hl]                                    ; $693e: $6e
    ld c, h                                       ; $693f: $4c
    add hl, de                                    ; $6940: $19
    nop                                           ; $6941: $00
    nop                                           ; $6942: $00
    cp c                                          ; $6943: $b9
    ld [bc], a                                    ; $6944: $02
    cp a                                          ; $6945: $bf
    inc bc                                        ; $6946: $03
    add sp, $00                                   ; $6947: $e8 $00
    nop                                           ; $6949: $00
    nop                                           ; $694a: $00
    ld [hl+], a                                   ; $694b: $22
    ld c, h                                       ; $694c: $4c
    ld a, [de]                                    ; $694d: $1a
    inc bc                                        ; $694e: $03
    ld h, h                                       ; $694f: $64
    ld l, h                                       ; $6950: $6c
    nop                                           ; $6951: $00
    nop                                           ; $6952: $00
    ld h, h                                       ; $6953: $64
    ld b, h                                       ; $6954: $44
    nop                                           ; $6955: $00
    jr nz, @-$37                                  ; $6956: $20 $c7

    ld a, h                                       ; $6958: $7c
    nop                                           ; $6959: $00
    db $10                                        ; $695a: $10
    sbc l                                         ; $695b: $9d
    ld b, $ff                                     ; $695c: $06 $ff
    ld a, a                                       ; $695e: $7f
    ld c, e                                       ; $695f: $4b
    nop                                           ; $6960: $00
    dec hl                                        ; $6961: $2b
    inc b                                         ; $6962: $04
    ld e, h                                       ; $6963: $5c
    add hl, bc                                    ; $6964: $09
    rst $38                                       ; $6965: $ff
    ld a, a                                       ; $6966: $7f
    ld a, [hl]                                    ; $6967: $7e
    ld [bc], a                                    ; $6968: $02
    nop                                           ; $6969: $00
    ld [$79ce], sp                                ; $696a: $08 $ce $79
    ld hl, $093c                                  ; $696d: $21 $3c $09
    dec b                                         ; $6970: $05
    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    or [hl]                                       ; $6973: $b6
    ld a, [hl]                                    ; $6974: $7e
    ld a, [hl+]                                   ; $6975: $2a
    ld sp, $36fd                                  ; $6976: $31 $fd $36
    nop                                           ; $6979: $00
    nop                                           ; $697a: $00
    add $70                                       ; $697b: $c6 $70
    sub h                                         ; $697d: $94
    ld a, [hl]                                    ; $697e: $7e
    adc l                                         ; $697f: $8d
    ld [hl], l                                    ; $6980: $75
    jp hl                                         ; $6981: $e9


    nop                                           ; $6982: $00
    ld hl, $fd44                                  ; $6983: $21 $44 $fd
    ld [bc], a                                    ; $6986: $02

jr_0b4_6987:
    rst $20                                       ; $6987: $e7
    ld a, b                                       ; $6988: $78
    nop                                           ; $6989: $00

jr_0b4_698a:
    nop                                           ; $698a: $00

jr_0b4_698b:
    nop                                           ; $698b: $00
    jr nz, jr_0b4_698b                            ; $698c: $20 $fd

    ld [bc], a                                    ; $698e: $02
    rst $20                                       ; $698f: $e7
    ld a, b                                       ; $6990: $78
    nop                                           ; $6991: $00
    jr nz, jr_0b4_69ec                            ; $6992: $20 $58

    dec b                                         ; $6994: $05
    ld e, a                                       ; $6995: $5f
    ld a, [bc]                                    ; $6996: $0a
    dec hl                                        ; $6997: $2b
    inc b                                         ; $6998: $04
    dec hl                                        ; $6999: $2b
    inc b                                         ; $699a: $04
    rst $38                                       ; $699b: $ff
    inc c                                         ; $699c: $0c
    sub a                                         ; $699d: $97
    ld [$099e], sp                                ; $699e: $08 $9e $09
    nop                                           ; $69a1: $00
    nop                                           ; $69a2: $00
    nop                                           ; $69a3: $00
    ld c, b                                       ; $69a4: $48
    ld d, l                                       ; $69a5: $55
    ld [$6dad], sp                                ; $69a6: $08 $ad $6d
    nop                                           ; $69a9: $00
    nop                                           ; $69aa: $00
    ld c, e                                       ; $69ab: $4b
    ld d, c                                       ; $69ac: $51
    cp b                                          ; $69ad: $b8
    ld e, [hl]                                    ; $69ae: $5e
    sub b                                         ; $69af: $90
    add hl, bc                                    ; $69b0: $09
    ld hl, $112c                                  ; $69b1: $21 $2c $11
    ld a, [hl]                                    ; $69b4: $7e
    call nc, Call_000_1901                        ; $69b5: $d4 $01 $19
    ld a, a                                       ; $69b8: $7f
    ld h, h                                       ; $69b9: $64
    db $10                                        ; $69ba: $10
    or b                                          ; $69bb: $b0
    nop                                           ; $69bc: $00
    nop                                           ; $69bd: $00
    ld b, h                                       ; $69be: $44
    ld e, e                                       ; $69bf: $5b
    ld d, $00                                     ; $69c0: $16 $00
    nop                                           ; $69c2: $00
    nop                                           ; $69c3: $00
    jr nz, jr_0b4_69c6                            ; $69c4: $20 $00

jr_0b4_69c6:
    ld b, h                                       ; $69c6: $44
    ld e, e                                       ; $69c7: $5b
    ld d, $00                                     ; $69c8: $16 $00
    jr nz, jr_0b4_6987                            ; $69ca: $20 $bb

    add hl, bc                                    ; $69cc: $09
    dec hl                                        ; $69cd: $2b
    inc b                                         ; $69ce: $04
    ccf                                           ; $69cf: $3f
    ld b, $4a                                     ; $69d0: $06 $4a
    inc b                                         ; $69d2: $04
    dec e                                         ; $69d3: $1d
    add hl, bc                                    ; $69d4: $09
    dec e                                         ; $69d5: $1d
    ld b, $76                                     ; $69d6: $06 $76
    ld [$0000], sp                                ; $69d8: $08 $00 $00
    rst $20                                       ; $69db: $e7
    ld h, h                                       ; $69dc: $64
    add hl, bc                                    ; $69dd: $09
    ld bc, $087b                                  ; $69de: $01 $7b $08
    nop                                           ; $69e1: $00
    nop                                           ; $69e2: $00
    xor [hl]                                      ; $69e3: $ae
    ld [hl], l                                    ; $69e4: $75
    cp $3e                                        ; $69e5: $fe $3e
    dec hl                                        ; $69e7: $2b
    dec b                                         ; $69e8: $05
    ld h, l                                       ; $69e9: $65
    inc b                                         ; $69ea: $04
    and h                                         ; $69eb: $a4

jr_0b4_69ec:
    ld l, h                                       ; $69ec: $6c
    sub a                                         ; $69ed: $97
    dec b                                         ; $69ee: $05
    ld de, $007a                                  ; $69ef: $11 $7a $00
    nop                                           ; $69f2: $00
    sbc $02                                       ; $69f3: $de $02
    ld b, d                                       ; $69f5: $42
    jr nc, jr_0b4_6a41                            ; $69f6: $30 $49

    inc b                                         ; $69f8: $04
    nop                                           ; $69f9: $00
    jr nz, @-$20                                  ; $69fa: $20 $de

    ld [bc], a                                    ; $69fc: $02
    ld b, d                                       ; $69fd: $42
    jr nc, jr_0b4_6a49                            ; $69fe: $30 $49

    inc b                                         ; $6a00: $04
    nop                                           ; $6a01: $00
    jr nz, jr_0b4_6a1a                            ; $6a02: $20 $16

    dec b                                         ; $6a04: $05
    dec hl                                        ; $6a05: $2b
    inc b                                         ; $6a06: $04
    rst $18                                       ; $6a07: $df
    add hl, bc                                    ; $6a08: $09
    ld h, a                                       ; $6a09: $67
    ld l, $5f                                     ; $6a0a: $2e $5f
    add hl, bc                                    ; $6a0c: $09
    dec hl                                        ; $6a0d: $2b
    inc b                                         ; $6a0e: $04
    rst $38                                       ; $6a0f: $ff
    add hl, bc                                    ; $6a10: $09
    nop                                           ; $6a11: $00
    nop                                           ; $6a12: $00
    ld c, d                                       ; $6a13: $4a
    dec b                                         ; $6a14: $05
    add sp, $6c                                   ; $6a15: $e8 $6c
    ld d, h                                       ; $6a17: $54
    ld [bc], a                                    ; $6a18: $02
    nop                                           ; $6a19: $00

jr_0b4_6a1a:
    nop                                           ; $6a1a: $00
    ld c, e                                       ; $6a1b: $4b
    ld bc, $794b                                  ; $6a1c: $01 $4b $79
    rst $18                                       ; $6a1f: $df
    inc bc                                        ; $6a20: $03
    adc c                                         ; $6a21: $89
    nop                                           ; $6a22: $00
    ld h, e                                       ; $6a23: $63
    ld e, b                                       ; $6a24: $58
    cp l                                          ; $6a25: $bd
    ld [bc], a                                    ; $6a26: $02
    adc $7d                                       ; $6a27: $ce $7d
    dec h                                         ; $6a29: $25
    nop                                           ; $6a2a: $00
    inc a                                         ; $6a2b: $3c
    ld [bc], a                                    ; $6a2c: $02
    sbc $7b                                       ; $6a2d: $de $7b
    ld b, d                                       ; $6a2f: $42
    inc [hl]                                      ; $6a30: $34
    nop                                           ; $6a31: $00
    jr nz, jr_0b4_6a70                            ; $6a32: $20 $3c

    ld [bc], a                                    ; $6a34: $02
    sbc $7b                                       ; $6a35: $de $7b
    ld b, d                                       ; $6a37: $42
    inc [hl]                                      ; $6a38: $34
    nop                                           ; $6a39: $00
    jr nz, jr_0b4_6a67                            ; $6a3a: $20 $2b

    inc b                                         ; $6a3c: $04
    add sp, $6c                                   ; $6a3d: $e8 $6c
    ld d, h                                       ; $6a3f: $54
    ld [bc], a                                    ; $6a40: $02

jr_0b4_6a41:
    nop                                           ; $6a41: $00
    ld [$2e67], sp                                ; $6a42: $08 $67 $2e
    rst $38                                       ; $6a45: $ff
    ld a, a                                       ; $6a46: $7f
    dec hl                                        ; $6a47: $2b
    inc b                                         ; $6a48: $04

jr_0b4_6a49:
    ld b, d                                       ; $6a49: $42
    nop                                           ; $6a4a: $00
    inc de                                        ; $6a4b: $13
    ld [bc], a                                    ; $6a4c: $02
    ld h, a                                       ; $6a4d: $67
    ld l, $fa                                     ; $6a4e: $2e $fa
    ld [bc], a                                    ; $6a50: $02
    nop                                           ; $6a51: $00
    nop                                           ; $6a52: $00
    adc a                                         ; $6a53: $8f
    dec b                                         ; $6a54: $05
    and l                                         ; $6a55: $a5
    ld a, h                                       ; $6a56: $7c
    db $fc                                        ; $6a57: $fc
    ld a, [de]                                    ; $6a58: $1a
    ld l, a                                       ; $6a59: $6f
    ld bc, $4421                                  ; $6a5a: $01 $21 $44
    ld c, d                                       ; $6a5d: $4a
    ld [hl], l                                    ; $6a5e: $75
    ccf                                           ; $6a5f: $3f
    inc bc                                        ; $6a60: $03
    ld hl, $5910                                  ; $6a61: $21 $10 $59
    ld [bc], a                                    ; $6a64: $02
    sbc h                                         ; $6a65: $9c
    ld [hl], e                                    ; $6a66: $73

jr_0b4_6a67:
    nop                                           ; $6a67: $00
    ld c, b                                       ; $6a68: $48
    nop                                           ; $6a69: $00
    jr nz, @+$5b                                  ; $6a6a: $20 $59

    ld [bc], a                                    ; $6a6c: $02
    sbc h                                         ; $6a6d: $9c
    ld [hl], e                                    ; $6a6e: $73
    nop                                           ; $6a6f: $00

jr_0b4_6a70:
    ld c, b                                       ; $6a70: $48
    nop                                           ; $6a71: $00
    jr nz, jr_0b4_6a87                            ; $6a72: $20 $13

    ld [bc], a                                    ; $6a74: $02
    ld h, a                                       ; $6a75: $67
    ld l, $fa                                     ; $6a76: $2e $fa
    ld [bc], a                                    ; $6a78: $02
    nop                                           ; $6a79: $00
    nop                                           ; $6a7a: $00
    rst $38                                       ; $6a7b: $ff
    ld a, a                                       ; $6a7c: $7f
    ld l, b                                       ; $6a7d: $68
    ld l, $00                                     ; $6a7e: $2e $00
    jr nz, jr_0b4_6a82                            ; $6a80: $20 $00

jr_0b4_6a82:
    nop                                           ; $6a82: $00
    ld l, b                                       ; $6a83: $68
    ld l, $b8                                     ; $6a84: $2e $b8
    ld a, [bc]                                    ; $6a86: $0a

jr_0b4_6a87:
    reti                                          ; $6a87: $d9


    ld b, $00                                     ; $6a88: $06 $00
    nop                                           ; $6a8a: $00
    rst $38                                       ; $6a8b: $ff
    ld a, a                                       ; $6a8c: $7f
    sbc h                                         ; $6a8d: $9c
    ld [hl], e                                    ; $6a8e: $73
    nop                                           ; $6a8f: $00
    ld c, b                                       ; $6a90: $48

jr_0b4_6a91:
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ld a, a                                       ; $6a94: $7f
    sbc h                                         ; $6a95: $9c
    ld [hl], e                                    ; $6a96: $73
    nop                                           ; $6a97: $00
    ld c, b                                       ; $6a98: $48

jr_0b4_6a99:
    nop                                           ; $6a99: $00
    nop                                           ; $6a9a: $00
    rst $38                                       ; $6a9b: $ff
    ld a, a                                       ; $6a9c: $7f
    nop                                           ; $6a9d: $00
    jr nz, jr_0b4_6aa0                            ; $6a9e: $20 $00

jr_0b4_6aa0:
    ld c, b                                       ; $6aa0: $48
    nop                                           ; $6aa1: $00
    jr nz, @+$01                                  ; $6aa2: $20 $ff

    ld a, a                                       ; $6aa4: $7f
    nop                                           ; $6aa5: $00
    jr nz, jr_0b4_6aa8                            ; $6aa6: $20 $00

jr_0b4_6aa8:
    ld c, b                                       ; $6aa8: $48
    nop                                           ; $6aa9: $00
    jr nz, jr_0b4_6b14                            ; $6aaa: $20 $68

    ld l, $b8                                     ; $6aac: $2e $b8
    ld a, [bc]                                    ; $6aae: $0a
    reti                                          ; $6aaf: $d9


    ld b, $00                                     ; $6ab0: $06 $00
    nop                                           ; $6ab2: $00
    rst $38                                       ; $6ab3: $ff
    ld a, a                                       ; $6ab4: $7f
    nop                                           ; $6ab5: $00
    jr nz, jr_0b4_6a91                            ; $6ab6: $20 $d9

    ld b, $00                                     ; $6ab8: $06 $00
    nop                                           ; $6aba: $00
    rst $38                                       ; $6abb: $ff
    ld a, a                                       ; $6abc: $7f
    nop                                           ; $6abd: $00
    jr nz, jr_0b4_6a99                            ; $6abe: $20 $d9

    ld b, $00                                     ; $6ac0: $06 $00
    nop                                           ; $6ac2: $00
    nop                                           ; $6ac3: $00
    jr nz, jr_0b4_6ac6                            ; $6ac4: $20 $00

jr_0b4_6ac6:
    jr nz, jr_0b4_6ac8                            ; $6ac6: $20 $00

jr_0b4_6ac8:
    ld c, b                                       ; $6ac8: $48
    nop                                           ; $6ac9: $00
    nop                                           ; $6aca: $00
    nop                                           ; $6acb: $00
    jr nz, jr_0b4_6ace                            ; $6acc: $20 $00

jr_0b4_6ace:
    jr nz, jr_0b4_6ad0                            ; $6ace: $20 $00

jr_0b4_6ad0:
    ld c, b                                       ; $6ad0: $48
    nop                                           ; $6ad1: $00
    nop                                           ; $6ad2: $00
    nop                                           ; $6ad3: $00
    jr nz, jr_0b4_6ad6                            ; $6ad4: $20 $00

jr_0b4_6ad6:
    jr nz, jr_0b4_6ad8                            ; $6ad6: $20 $00

jr_0b4_6ad8:
    ld c, b                                       ; $6ad8: $48
    nop                                           ; $6ad9: $00
    jr nz, jr_0b4_6adc                            ; $6ada: $20 $00

jr_0b4_6adc:
    jr nz, jr_0b4_6ade                            ; $6adc: $20 $00

jr_0b4_6ade:
    jr nz, jr_0b4_6ae0                            ; $6ade: $20 $00

jr_0b4_6ae0:
    ld c, b                                       ; $6ae0: $48
    nop                                           ; $6ae1: $00
    jr nz, jr_0b4_6ae4                            ; $6ae2: $20 $00

jr_0b4_6ae4:
    jr nz, jr_0b4_6ae6                            ; $6ae4: $20 $00

jr_0b4_6ae6:
    jr nz, @+$22                                  ; $6ae6: $20 $20

    nop                                           ; $6ae8: $00
    nop                                           ; $6ae9: $00
    jr nz, jr_0b4_6aec                            ; $6aea: $20 $00

jr_0b4_6aec:
    jr nz, jr_0b4_6aee                            ; $6aec: $20 $00

jr_0b4_6aee:
    jr nz, @+$22                                  ; $6aee: $20 $20

    nop                                           ; $6af0: $00
    nop                                           ; $6af1: $00
    jr nz, jr_0b4_6af4                            ; $6af2: $20 $00

jr_0b4_6af4:
    jr nz, jr_0b4_6af6                            ; $6af4: $20 $00

jr_0b4_6af6:
    jr nz, @+$22                                  ; $6af6: $20 $20

    nop                                           ; $6af8: $00
    ld bc, $1f14                                  ; $6af9: $01 $14 $1f
    ld [$671f], sp                                ; $6afc: $08 $1f $67
    rst $38                                       ; $6aff: $ff
    daa                                           ; $6b00: $27
    nop                                           ; $6b01: $00
    jr nz, @+$01                                  ; $6b02: $20 $ff

    daa                                           ; $6b04: $27
    xor l                                         ; $6b05: $ad
    ld de, $27ff                                  ; $6b06: $11 $ff $27
    nop                                           ; $6b09: $00
    jr nz, @+$01                                  ; $6b0a: $20 $ff

    daa                                           ; $6b0c: $27
    xor l                                         ; $6b0d: $ad
    ld de, $27ff                                  ; $6b0e: $11 $ff $27
    nop                                           ; $6b11: $00
    jr nz, @+$01                                  ; $6b12: $20 $ff

jr_0b4_6b14:
    daa                                           ; $6b14: $27
    xor l                                         ; $6b15: $ad
    ld de, $27ff                                  ; $6b16: $11 $ff $27
    nop                                           ; $6b19: $00
    jr nz, jr_0b4_6b1c                            ; $6b1a: $20 $00

jr_0b4_6b1c:
    jr nz, jr_0b4_6b1e                            ; $6b1c: $20 $00

jr_0b4_6b1e:
    jr nz, @+$22                                  ; $6b1e: $20 $20

    nop                                           ; $6b20: $00
    nop                                           ; $6b21: $00
    jr nz, jr_0b4_6b24                            ; $6b22: $20 $00

jr_0b4_6b24:
    jr nz, jr_0b4_6b26                            ; $6b24: $20 $00

jr_0b4_6b26:
    jr nz, @+$22                                  ; $6b26: $20 $20

    nop                                           ; $6b28: $00
    nop                                           ; $6b29: $00
    jr nz, @+$01                                  ; $6b2a: $20 $ff

    daa                                           ; $6b2c: $27
    xor l                                         ; $6b2d: $ad
    ld de, $0020                                  ; $6b2e: $11 $20 $00
    nop                                           ; $6b31: $00
    inc b                                         ; $6b32: $04
    sbc h                                         ; $6b33: $9c
    ld [hl], e                                    ; $6b34: $73
    dec c                                         ; $6b35: $0d
    ld [bc], a                                    ; $6b36: $02
    ld [$0000], sp                                ; $6b37: $08 $00 $00
    nop                                           ; $6b3a: $00
    rst $38                                       ; $6b3b: $ff
    daa                                           ; $6b3c: $27
    xor l                                         ; $6b3d: $ad
    ld de, $2000                                  ; $6b3e: $11 $00 $20
    nop                                           ; $6b41: $00
    jr nz, @+$01                                  ; $6b42: $20 $ff

    daa                                           ; $6b44: $27
    xor l                                         ; $6b45: $ad
    ld de, $2000                                  ; $6b46: $11 $00 $20
    nop                                           ; $6b49: $00
    jr nz, @+$01                                  ; $6b4a: $20 $ff

    daa                                           ; $6b4c: $27
    xor l                                         ; $6b4d: $ad
    ld de, $2000                                  ; $6b4e: $11 $00 $20
    nop                                           ; $6b51: $00
    jr nz, @+$01                                  ; $6b52: $20 $ff

    daa                                           ; $6b54: $27
    xor l                                         ; $6b55: $ad
    ld de, $0020                                  ; $6b56: $11 $20 $00
    nop                                           ; $6b59: $00
    jr nz, @+$01                                  ; $6b5a: $20 $ff

    daa                                           ; $6b5c: $27
    xor l                                         ; $6b5d: $ad
    ld de, $0020                                  ; $6b5e: $11 $20 $00

jr_0b4_6b61:
    nop                                           ; $6b61: $00
    jr @+$01                                      ; $6b62: $18 $ff

    daa                                           ; $6b64: $27
    xor l                                         ; $6b65: $ad
    ld de, $7fff                                  ; $6b66: $11 $ff $7f

jr_0b4_6b69:
    ld h, c                                       ; $6b69: $61
    nop                                           ; $6b6a: $00
    ld e, d                                       ; $6b6b: $5a
    dec hl                                        ; $6b6c: $2b
    ld a, l                                       ; $6b6d: $7d
    ld l, e                                       ; $6b6e: $6b
    xor l                                         ; $6b6f: $ad
    add hl, bc                                    ; $6b70: $09
    nop                                           ; $6b71: $00
    jr @+$01                                      ; $6b72: $18 $ff

    daa                                           ; $6b74: $27
    rst $30                                       ; $6b75: $f7
    ld e, [hl]                                    ; $6b76: $5e
    rst $38                                       ; $6b77: $ff
    ld a, a                                       ; $6b78: $7f
    nop                                           ; $6b79: $00
    jr nz, @+$01                                  ; $6b7a: $20 $ff

    daa                                           ; $6b7c: $27
    rst $30                                       ; $6b7d: $f7
    ld e, [hl]                                    ; $6b7e: $5e
    rst $38                                       ; $6b7f: $ff
    ld a, a                                       ; $6b80: $7f
    nop                                           ; $6b81: $00
    jr nz, @+$01                                  ; $6b82: $20 $ff

    daa                                           ; $6b84: $27
    rst $30                                       ; $6b85: $f7
    ld e, [hl]                                    ; $6b86: $5e
    rst $38                                       ; $6b87: $ff
    ld a, a                                       ; $6b88: $7f
    nop                                           ; $6b89: $00
    jr nz, @+$01                                  ; $6b8a: $20 $ff

    daa                                           ; $6b8c: $27
    xor l                                         ; $6b8d: $ad
    ld de, $7fff                                  ; $6b8e: $11 $ff $7f
    nop                                           ; $6b91: $00
    jr nz, @+$01                                  ; $6b92: $20 $ff

    daa                                           ; $6b94: $27
    xor l                                         ; $6b95: $ad
    ld de, $7fff                                  ; $6b96: $11 $ff $7f
    jr nz, jr_0b4_6b9b                            ; $6b99: $20 $00

jr_0b4_6b9b:
    add hl, sp                                    ; $6b9b: $39
    dec de                                        ; $6b9c: $1b
    rst $38                                       ; $6b9d: $ff
    ld a, a                                       ; $6b9e: $7f
    nop                                           ; $6b9f: $00
    jr nz, jr_0b4_6bc8                            ; $6ba0: $20 $26

    nop                                           ; $6ba2: $00
    call Call_000_1f01                            ; $6ba3: $cd $01 $1f
    ld [$0294], sp                                ; $6ba6: $08 $94 $02
    jr nz, @+$0a                                  ; $6ba9: $20 $08

    rst $28                                       ; $6bab: $ef
    dec c                                         ; $6bac: $0d
    or l                                          ; $6bad: $b5
    ld d, [hl]                                    ; $6bae: $56
    jr jr_0b4_6bc4                                ; $6baf: $18 $13

    nop                                           ; $6bb1: $00
    jr nz, jr_0b4_6b61                            ; $6bb2: $20 $ad

    ld de, $56b5                                  ; $6bb4: $11 $b5 $56
    jr jr_0b4_6bcc                                ; $6bb7: $18 $13

    nop                                           ; $6bb9: $00
    jr nz, jr_0b4_6b69                            ; $6bba: $20 $ad

    ld de, $56b5                                  ; $6bbc: $11 $b5 $56
    jr @+$15                                      ; $6bbf: $18 $13

    nop                                           ; $6bc1: $00
    jr nz, jr_0b4_6bfd                            ; $6bc2: $20 $39

jr_0b4_6bc4:
    dec de                                        ; $6bc4: $1b
    rst $38                                       ; $6bc5: $ff
    ld a, a                                       ; $6bc6: $7f
    nop                                           ; $6bc7: $00

jr_0b4_6bc8:
    jr nz, jr_0b4_6bca                            ; $6bc8: $20 $00

jr_0b4_6bca:
    jr nz, @+$01                                  ; $6bca: $20 $ff

jr_0b4_6bcc:
    daa                                           ; $6bcc: $27
    xor l                                         ; $6bcd: $ad
    ld de, $2000                                  ; $6bce: $11 $00 $20
    jr nz, jr_0b4_6bd3                            ; $6bd1: $20 $00

jr_0b4_6bd3:
    sub $5a                                       ; $6bd3: $d6 $5a
    rst $38                                       ; $6bd5: $ff
    daa                                           ; $6bd6: $27
    adc h                                         ; $6bd7: $8c
    dec c                                         ; $6bd8: $0d
    ld h, h                                       ; $6bd9: $64
    nop                                           ; $6bda: $00
    cp $17                                        ; $6bdb: $fe $17
    rra                                           ; $6bdd: $1f
    ld [$7fff], sp                                ; $6bde: $08 $ff $7f
    ld h, c                                       ; $6be1: $61
    nop                                           ; $6be2: $00
    rst $38                                       ; $6be3: $ff
    daa                                           ; $6be4: $27
    sub h                                         ; $6be5: $94
    ld d, d                                       ; $6be6: $52
    rst $38                                       ; $6be7: $ff
    ld a, a                                       ; $6be8: $7f
    nop                                           ; $6be9: $00
    nop                                           ; $6bea: $00
    rst $38                                       ; $6beb: $ff
    daa                                           ; $6bec: $27
    nop                                           ; $6bed: $00
    jr jr_0b4_6bf0                                ; $6bee: $18 $00

jr_0b4_6bf0:
    jr nz, jr_0b4_6bf2                            ; $6bf0: $20 $00

jr_0b4_6bf2:
    jr nz, @+$01                                  ; $6bf2: $20 $ff

    daa                                           ; $6bf4: $27
    nop                                           ; $6bf5: $00
    jr jr_0b4_6bf8                                ; $6bf6: $18 $00

jr_0b4_6bf8:
    jr nz, jr_0b4_6bfa                            ; $6bf8: $20 $00

jr_0b4_6bfa:
    jr nz, @-$28                                  ; $6bfa: $20 $d6

    ld e, d                                       ; $6bfc: $5a

jr_0b4_6bfd:
    rst $38                                       ; $6bfd: $ff
    daa                                           ; $6bfe: $27
    adc h                                         ; $6bff: $8c
    dec c                                         ; $6c00: $0d
    nop                                           ; $6c01: $00
    nop                                           ; $6c02: $00
    rst $38                                       ; $6c03: $ff
    ld a, a                                       ; $6c04: $7f
    nop                                           ; $6c05: $00
    jr jr_0b4_6c08                                ; $6c06: $18 $00

jr_0b4_6c08:
    jr nz, jr_0b4_6c2a                            ; $6c08: $20 $20

    nop                                           ; $6c0a: $00
    rst $38                                       ; $6c0b: $ff
    daa                                           ; $6c0c: $27
    dec b                                         ; $6c0d: $05
    ld [de], a                                    ; $6c0e: $12
    rst $38                                       ; $6c0f: $ff
    ld a, a                                       ; $6c10: $7f
    ld a, [bc]                                    ; $6c11: $0a
    nop                                           ; $6c12: $00
    sbc e                                         ; $6c13: $9b
    rrca                                          ; $6c14: $0f
    rst $18                                       ; $6c15: $df
    ld e, e                                       ; $6c16: $5b
    dec c                                         ; $6c17: $0d
    ld [bc], a                                    ; $6c18: $02
    jr nz, jr_0b4_6c1b                            ; $6c19: $20 $00

jr_0b4_6c1b:
    sbc $27                                       ; $6c1b: $de $27
    and $11                                       ; $6c1d: $e6 $11
    rst $38                                       ; $6c1f: $ff
    ld a, a                                       ; $6c20: $7f
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    rst $38                                       ; $6c23: $ff
    ld a, a                                       ; $6c24: $7f
    nop                                           ; $6c25: $00
    jr nz, @+$01                                  ; $6c26: $20 $ff

    ld a, a                                       ; $6c28: $7f
    nop                                           ; $6c29: $00

jr_0b4_6c2a:
    jr nz, @+$01                                  ; $6c2a: $20 $ff

    ld a, a                                       ; $6c2c: $7f
    nop                                           ; $6c2d: $00
    jr nz, @+$01                                  ; $6c2e: $20 $ff

    ld a, a                                       ; $6c30: $7f
    nop                                           ; $6c31: $00
    jr nz, @+$01                                  ; $6c32: $20 $ff

    daa                                           ; $6c34: $27
    dec b                                         ; $6c35: $05
    ld [de], a                                    ; $6c36: $12
    rst $38                                       ; $6c37: $ff
    ld a, a                                       ; $6c38: $7f
    nop                                           ; $6c39: $00
    nop                                           ; $6c3a: $00
    rst $38                                       ; $6c3b: $ff
    ld a, a                                       ; $6c3c: $7f
    nop                                           ; $6c3d: $00
    jr nz, @+$01                                  ; $6c3e: $20 $ff

    ld a, a                                       ; $6c40: $7f
    nop                                           ; $6c41: $00
    nop                                           ; $6c42: $00
    sbc $1f                                       ; $6c43: $de $1f
    dec b                                         ; $6c45: $05
    ld [de], a                                    ; $6c46: $12
    ld l, e                                       ; $6c47: $6b
    add hl, bc                                    ; $6c48: $09
    nop                                           ; $6c49: $00
    nop                                           ; $6c4a: $00
    db $10                                        ; $6c4b: $10
    ld a, [de]                                    ; $6c4c: $1a
    add hl, sp                                    ; $6c4d: $39
    dec bc                                        ; $6c4e: $0b
    add hl, hl                                    ; $6c4f: $29
    ld bc, $0020                                  ; $6c50: $01 $20 $00
    sbc $1b                                       ; $6c53: $de $1b
    inc b                                         ; $6c55: $04
    ld c, $6b                                     ; $6c56: $0e $6b
    add hl, bc                                    ; $6c58: $09
    nop                                           ; $6c59: $00
    nop                                           ; $6c5a: $00
    rst $38                                       ; $6c5b: $ff
    ld a, a                                       ; $6c5c: $7f
    inc b                                         ; $6c5d: $04
    ld c, $00                                     ; $6c5e: $0e $00
    jr nz, jr_0b4_6c62                            ; $6c60: $20 $00

jr_0b4_6c62:
    jr nz, @+$01                                  ; $6c62: $20 $ff

    ld a, a                                       ; $6c64: $7f
    inc b                                         ; $6c65: $04
    ld c, $00                                     ; $6c66: $0e $00
    jr nz, jr_0b4_6c6a                            ; $6c68: $20 $00

jr_0b4_6c6a:
    jr nz, @-$50                                  ; $6c6a: $20 $ae

    nop                                           ; $6c6c: $00
    dec b                                         ; $6c6d: $05
    ld [de], a                                    ; $6c6e: $12
    ld l, e                                       ; $6c6f: $6b
    add hl, bc                                    ; $6c70: $09
    nop                                           ; $6c71: $00
    nop                                           ; $6c72: $00
    rst $38                                       ; $6c73: $ff
    ld a, a                                       ; $6c74: $7f
    inc b                                         ; $6c75: $04
    ld c, $00                                     ; $6c76: $0e $00
    jr nz, jr_0b4_6c7a                            ; $6c78: $20 $00

jr_0b4_6c7a:
    nop                                           ; $6c7a: $00
    sbc $17                                       ; $6c7b: $de $17
    inc b                                         ; $6c7d: $04
    ld c, $4a                                     ; $6c7e: $0e $4a
    dec b                                         ; $6c80: $05
    jr nz, jr_0b4_6c83                            ; $6c81: $20 $00

jr_0b4_6c83:
    ld sp, $bd4a                                  ; $6c83: $31 $4a $bd
    ld a, e                                       ; $6c86: $7b
    add hl, hl                                    ; $6c87: $29
    dec h                                         ; $6c88: $25
    nop                                           ; $6c89: $00
    nop                                           ; $6c8a: $00
    sbc $0f                                       ; $6c8b: $de $0f
    inc b                                         ; $6c8d: $04
    ld c, $29                                     ; $6c8e: $0e $29
    ld bc, $0000                                  ; $6c90: $01 $00 $00
    rst $38                                       ; $6c93: $ff
    ld a, a                                       ; $6c94: $7f
    inc b                                         ; $6c95: $04
    ld c, $04                                     ; $6c96: $0e $04
    ld [de], a                                    ; $6c98: $12
    nop                                           ; $6c99: $00
    jr nz, jr_0b4_6cb5                            ; $6c9a: $20 $19

    ld [hl-], a                                   ; $6c9c: $32
    ld c, b                                       ; $6c9d: $48
    nop                                           ; $6c9e: $00
    ld e, a                                       ; $6c9f: $5f
    ld c, a                                       ; $6ca0: $4f
    nop                                           ; $6ca1: $00
    jr nz, jr_0b4_6cc3                            ; $6ca2: $20 $1f

    ld d, e                                       ; $6ca4: $53
    xor [hl]                                      ; $6ca5: $ae
    nop                                           ; $6ca6: $00
    rst $18                                       ; $6ca7: $df
    ld l, e                                       ; $6ca8: $6b
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    rst $38                                       ; $6cab: $ff
    ld a, a                                       ; $6cac: $7f
    db $e4                                        ; $6cad: $e4
    dec c                                         ; $6cae: $0d
    xor [hl]                                      ; $6caf: $ae
    nop                                           ; $6cb0: $00
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    sbc $0f                                       ; $6cb3: $de $0f

jr_0b4_6cb5:
    push bc                                       ; $6cb5: $c5
    add hl, bc                                    ; $6cb6: $09
    xor [hl]                                      ; $6cb7: $ae
    add hl, sp                                    ; $6cb8: $39
    nop                                           ; $6cb9: $00
    nop                                           ; $6cba: $00
    sbc $7b                                       ; $6cbb: $de $7b
    adc $5d                                       ; $6cbd: $ce $5d
    add $1c                                       ; $6cbf: $c6 $1c
    nop                                           ; $6cc1: $00
    nop                                           ; $6cc2: $00

jr_0b4_6cc3:
    jr jr_0b4_6cf0                                ; $6cc3: $18 $2b

    cp l                                          ; $6cc5: $bd
    ld [hl], a                                    ; $6cc6: $77
    ld h, a                                       ; $6cc7: $67
    dec b                                         ; $6cc8: $05
    nop                                           ; $6cc9: $00

jr_0b4_6cca:
    nop                                           ; $6cca: $00
    rst $38                                       ; $6ccb: $ff
    ld a, a                                       ; $6ccc: $7f
    db $e4                                        ; $6ccd: $e4
    dec c                                         ; $6cce: $0d
    inc b                                         ; $6ccf: $04
    ld c, $25                                     ; $6cd0: $0e $25
    nop                                           ; $6cd2: $00
    cp h                                          ; $6cd3: $bc
    ld b, d                                       ; $6cd4: $42
    nop                                           ; $6cd5: $00
    jr nz, @-$3f                                  ; $6cd6: $20 $bf

    ld l, a                                       ; $6cd8: $6f
    nop                                           ; $6cd9: $00
    inc b                                         ; $6cda: $04
    db $f4                                        ; $6cdb: $f4
    dec [hl]                                      ; $6cdc: $35
    xor a                                         ; $6cdd: $af
    inc b                                         ; $6cde: $04
    sbc h                                         ; $6cdf: $9c
    ld b, d                                       ; $6ce0: $42
    nop                                           ; $6ce1: $00
    nop                                           ; $6ce2: $00
    db $e4                                        ; $6ce3: $e4
    dec c                                         ; $6ce4: $0d
    xor a                                         ; $6ce5: $af
    inc b                                         ; $6ce6: $04
    sbc h                                         ; $6ce7: $9c
    ld b, d                                       ; $6ce8: $42
    nop                                           ; $6ce9: $00
    nop                                           ; $6cea: $00
    sbc h                                         ; $6ceb: $9c
    ld [hl], e                                    ; $6cec: $73
    db $e4                                        ; $6ced: $e4
    dec c                                         ; $6cee: $0d
    rst $20                                       ; $6cef: $e7

jr_0b4_6cf0:
    inc e                                         ; $6cf0: $1c
    nop                                           ; $6cf1: $00
    nop                                           ; $6cf2: $00
    sub l                                         ; $6cf3: $95
    ld a, [hl]                                    ; $6cf4: $7e
    ld c, c                                       ; $6cf5: $49
    inc d                                         ; $6cf6: $14
    cp a                                          ; $6cf7: $bf
    ld a, [hl-]                                   ; $6cf8: $3a
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    db $10                                        ; $6cfb: $10
    ld c, [hl]                                    ; $6cfc: $4e
    sbc h                                         ; $6cfd: $9c
    ld [hl], e                                    ; $6cfe: $73
    db $e4                                        ; $6cff: $e4
    dec c                                         ; $6d00: $0d
    db $e4                                        ; $6d01: $e4
    dec c                                         ; $6d02: $0d
    db $10                                        ; $6d03: $10
    ld c, [hl]                                    ; $6d04: $4e
    sbc h                                         ; $6d05: $9c
    ld [hl], e                                    ; $6d06: $73
    db $e4                                        ; $6d07: $e4
    dec c                                         ; $6d08: $0d
    nop                                           ; $6d09: $00
    inc e                                         ; $6d0a: $1c
    ld a, c                                       ; $6d0b: $79
    ld b, d                                       ; $6d0c: $42
    xor b                                         ; $6d0d: $a8
    ld [$67bf], sp                                ; $6d0e: $08 $bf $67
    db $e4                                        ; $6d11: $e4
    dec c                                         ; $6d12: $0d
    ld a, [$5f2d]                                 ; $6d13: $fa $2d $5f
    ld e, e                                       ; $6d16: $5b
    xor [hl]                                      ; $6d17: $ae
    nop                                           ; $6d18: $00
    db $e4                                        ; $6d19: $e4
    dec c                                         ; $6d1a: $0d
    ld a, [$5f2d]                                 ; $6d1b: $fa $2d $5f
    ld e, e                                       ; $6d1e: $5b
    xor [hl]                                      ; $6d1f: $ae
    nop                                           ; $6d20: $00
    nop                                           ; $6d21: $00
    nop                                           ; $6d22: $00
    ld d, d                                       ; $6d23: $52
    ld c, d                                       ; $6d24: $4a
    and h                                         ; $6d25: $a4
    dec d                                         ; $6d26: $15
    sbc $7b                                       ; $6d27: $de $7b
    add d                                         ; $6d29: $82
    jr nc, jr_0b4_6cca                            ; $6d2a: $30 $9e

    ld a, [hl-]                                   ; $6d2c: $3a
    rst $18                                       ; $6d2d: $df
    ld [hl], a                                    ; $6d2e: $77
    ld d, c                                       ; $6d2f: $51
    add hl, de                                    ; $6d30: $19
    nop                                           ; $6d31: $00
    nop                                           ; $6d32: $00
    or d                                          ; $6d33: $b2
    add hl, hl                                    ; $6d34: $29
    rst $38                                       ; $6d35: $ff
    ld a, a                                       ; $6d36: $7f
    and l                                         ; $6d37: $a5
    dec c                                         ; $6d38: $0d
    nop                                           ; $6d39: $00
    nop                                           ; $6d3a: $00
    db $e3                                        ; $6d3b: $e3
    dec c                                         ; $6d3c: $0d
    db $e4                                        ; $6d3d: $e4
    dec c                                         ; $6d3e: $0d
    and l                                         ; $6d3f: $a5
    dec c                                         ; $6d40: $0d
    ld h, h                                       ; $6d41: $64
    nop                                           ; $6d42: $00
    ld l, a                                       ; $6d43: $6f
    dec h                                         ; $6d44: $25
    ld e, l                                       ; $6d45: $5d
    ld [hl-], a                                   ; $6d46: $32
    nop                                           ; $6d47: $00
    jr nz, jr_0b4_6d4a                            ; $6d48: $20 $00

jr_0b4_6d4a:
    nop                                           ; $6d4a: $00
    ld a, [$ff29]                                 ; $6d4b: $fa $29 $ff
    ld a, a                                       ; $6d4e: $7f
    xor [hl]                                      ; $6d4f: $ae
    nop                                           ; $6d50: $00
    nop                                           ; $6d51: $00
    nop                                           ; $6d52: $00
    rst $38                                       ; $6d53: $ff
    ld a, a                                       ; $6d54: $7f
    db $e3                                        ; $6d55: $e3
    dec c                                         ; $6d56: $0d
    db $e4                                        ; $6d57: $e4
    dec c                                         ; $6d58: $0d
    nop                                           ; $6d59: $00
    nop                                           ; $6d5a: $00
    ld a, [de]                                    ; $6d5b: $1a
    ld e, a                                       ; $6d5c: $5f
    db $e3                                        ; $6d5d: $e3
    dec c                                         ; $6d5e: $0d
    ld [hl], b                                    ; $6d5f: $70
    ld hl, $0887                                  ; $6d60: $21 $87 $08
    dec d                                         ; $6d63: $15
    ld a, [hl-]                                   ; $6d64: $3a
    sbc [hl]                                      ; $6d65: $9e
    ld a, $ec                                     ; $6d66: $3e $ec
    inc d                                         ; $6d68: $14
    nop                                           ; $6d69: $00
    nop                                           ; $6d6a: $00
    inc [hl]                                      ; $6d6b: $34
    ld b, [hl]                                    ; $6d6c: $46
    dec a                                         ; $6d6d: $3d
    ld e, a                                       ; $6d6e: $5f
    db $e3                                        ; $6d6f: $e3
    dec c                                         ; $6d70: $0d
    nop                                           ; $6d71: $00
    nop                                           ; $6d72: $00
    rst $38                                       ; $6d73: $ff
    ld a, a                                       ; $6d74: $7f
    db $e3                                        ; $6d75: $e3
    dec c                                         ; $6d76: $0d
    xor l                                         ; $6d77: $ad
    dec [hl]                                      ; $6d78: $35
    nop                                           ; $6d79: $00
    inc e                                         ; $6d7a: $1c
    ld a, $2e                                     ; $6d7b: $3e $2e
    ld l, c                                       ; $6d7d: $69
    inc b                                         ; $6d7e: $04
    cp $7f                                        ; $6d7f: $fe $7f
    nop                                           ; $6d81: $00
    inc c                                         ; $6d82: $0c
    ccf                                           ; $6d83: $3f
    ld a, [hl+]                                   ; $6d84: $2a
    xor [hl]                                      ; $6d85: $ae
    nop                                           ; $6d86: $00
    db $dd                                        ; $6d87: $dd
    ld a, a                                       ; $6d88: $7f
    nop                                           ; $6d89: $00
    nop                                           ; $6d8a: $00
    rst $38                                       ; $6d8b: $ff
    ld a, a                                       ; $6d8c: $7f
    jp $ad09                                      ; $6d8d: $c3 $09 $ad


    dec [hl]                                      ; $6d90: $35
    nop                                           ; $6d91: $00
    nop                                           ; $6d92: $00
    ld [hl], $3e                                  ; $6d93: $36 $3e
    call nz, Call_000_3911                        ; $6d95: $c4 $11 $39
    ld l, e                                       ; $6d98: $6b
    nop                                           ; $6d99: $00
    nop                                           ; $6d9a: $00
    ld a, [de]                                    ; $6d9b: $1a
    ld a, [hl+]                                   ; $6d9c: $2a
    rst $38                                       ; $6d9d: $ff
    ld a, a                                       ; $6d9e: $7f
    sbc $4a                                       ; $6d9f: $de $4a
    nop                                           ; $6da1: $00
    nop                                           ; $6da2: $00
    sbc [hl]                                      ; $6da3: $9e
    ld a, [hl-]                                   ; $6da4: $3a
    jp $2809                                      ; $6da5: $c3 $09 $28


    dec [hl]                                      ; $6da8: $35
    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00
    sub h                                         ; $6dab: $94
    ld d, d                                       ; $6dac: $52
    jp $ff09                                      ; $6dad: $c3 $09 $ff


    ld a, a                                       ; $6db0: $7f
    ld bc, $3100                                  ; $6db1: $01 $00 $31
    ld b, [hl]                                    ; $6db4: $46
    cp l                                          ; $6db5: $bd
    ld a, a                                       ; $6db6: $7f
    nop                                           ; $6db7: $00
    jr nz, jr_0b4_6dba                            ; $6db8: $20 $00

jr_0b4_6dba:
    inc c                                         ; $6dba: $0c
    xor [hl]                                      ; $6dbb: $ae
    ld d, c                                       ; $6dbc: $51
    rst $38                                       ; $6dbd: $ff

jr_0b4_6dbe:
    ld a, a                                       ; $6dbe: $7f
    or [hl]                                       ; $6dbf: $b6
    ld h, d                                       ; $6dc0: $62
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    sub $5a                                       ; $6dc3: $d6 $5a
    jp Jump_0b4_5a09                              ; $6dc5: $c3 $09 $5a


    ld l, e                                       ; $6dc8: $6b
    nop                                           ; $6dc9: $00
    nop                                           ; $6dca: $00
    jp $0709                                      ; $6dcb: $c3 $09 $07


    add hl, sp                                    ; $6dce: $39
    ld e, d                                       ; $6dcf: $5a
    ld l, e                                       ; $6dd0: $6b
    ld h, l                                       ; $6dd1: $65
    ld [$2a1a], sp                                ; $6dd2: $08 $1a $2a
    rra                                           ; $6dd5: $1f
    ld [$14eb], sp                                ; $6dd6: $08 $eb $14
    nop                                           ; $6dd9: $00
    nop                                           ; $6dda: $00
    jp $6009                                      ; $6ddb: $c3 $09 $60


    nop                                           ; $6dde: $00
    ld bc, $0000                                  ; $6ddf: $01 $00 $00
    nop                                           ; $6de2: $00
    adc $39                                       ; $6de3: $ce $39
    rst $38                                       ; $6de5: $ff
    ld a, a                                       ; $6de6: $7f
    ld [$0021], sp                                ; $6de7: $08 $21 $00
    nop                                           ; $6dea: $00
    reti                                          ; $6deb: $d9


    ld a, [hl]                                    ; $6dec: $7e
    nop                                           ; $6ded: $00
    jr nz, jr_0b4_6df8                            ; $6dee: $20 $08

    add hl, hl                                    ; $6df0: $29
    nop                                           ; $6df1: $00
    nop                                           ; $6df2: $00
    add hl, sp                                    ; $6df3: $39
    ld l, e                                       ; $6df4: $6b
    nop                                           ; $6df5: $00
    jr nz, jr_0b4_6dbe                            ; $6df6: $20 $c6

jr_0b4_6df8:
    jr jr_0b4_6dfa                                ; $6df8: $18 $00

jr_0b4_6dfa:
    nop                                           ; $6dfa: $00
    sub h                                         ; $6dfb: $94
    ld d, d                                       ; $6dfc: $52
    add hl, hl                                    ; $6dfd: $29
    dec l                                         ; $6dfe: $2d
    rst $38                                       ; $6dff: $ff
    ld a, a                                       ; $6e00: $7f
    nop                                           ; $6e01: $00
    nop                                           ; $6e02: $00
    sbc [hl]                                      ; $6e03: $9e
    ld a, a                                       ; $6e04: $7f
    jp $ff09                                      ; $6e05: $c3 $09 $ff


    ld a, a                                       ; $6e08: $7f
    nop                                           ; $6e09: $00
    nop                                           ; $6e0a: $00
    rst $18                                       ; $6e0b: $df
    ld c, d                                       ; $6e0c: $4a
    adc b                                         ; $6e0d: $88
    ld [$7fff], sp                                ; $6e0e: $08 $ff $7f
    jr nz, jr_0b4_6e13                            ; $6e11: $20 $00

jr_0b4_6e13:
    sub h                                         ; $6e13: $94
    ld d, [hl]                                    ; $6e14: $56
    sbc $7f                                       ; $6e15: $de $7f
    jr z, jr_0b4_6e3a                             ; $6e17: $28 $21

    nop                                           ; $6e19: $00
    nop                                           ; $6e1a: $00
    or l                                          ; $6e1b: $b5
    ld d, [hl]                                    ; $6e1c: $56
    rst $38                                       ; $6e1d: $ff
    ld a, a                                       ; $6e1e: $7f
    and l                                         ; $6e1f: $a5
    inc d                                         ; $6e20: $14
    nop                                           ; $6e21: $00
    nop                                           ; $6e22: $00
    ld d, e                                       ; $6e23: $53
    ld e, d                                       ; $6e24: $5a
    nop                                           ; $6e25: $00
    inc e                                         ; $6e26: $1c
    rst $18                                       ; $6e27: $df
    ld a, a                                       ; $6e28: $7f
    nop                                           ; $6e29: $00
    nop                                           ; $6e2a: $00
    rst $18                                       ; $6e2b: $df
    ld a, a                                       ; $6e2c: $7f
    nop                                           ; $6e2d: $00
    inc e                                         ; $6e2e: $1c
    add l                                         ; $6e2f: $85
    jr jr_0b4_6e32                                ; $6e30: $18 $00

jr_0b4_6e32:
    nop                                           ; $6e32: $00
    sub h                                         ; $6e33: $94
    ld d, d                                       ; $6e34: $52
    ld l, e                                       ; $6e35: $6b
    dec [hl]                                      ; $6e36: $35
    cp [hl]                                       ; $6e37: $be
    ld a, a                                       ; $6e38: $7f
    nop                                           ; $6e39: $00

jr_0b4_6e3a:
    nop                                           ; $6e3a: $00
    ld sp, $ff4a                                  ; $6e3b: $31 $4a $ff
    ld a, a                                       ; $6e3e: $7f
    ld l, h                                       ; $6e3f: $6c
    dec [hl]                                      ; $6e40: $35
    ld hl, $ee04                                  ; $6e41: $21 $04 $ee
    ld d, c                                       ; $6e44: $51
    add hl, sp                                    ; $6e45: $39

jr_0b4_6e46:
    ld a, e                                       ; $6e46: $7b
    or a                                          ; $6e47: $b7
    ld hl, $0000                                  ; $6e48: $21 $00 $00
    or [hl]                                       ; $6e4b: $b6
    ld h, [hl]                                    ; $6e4c: $66
    add sp, $28                                   ; $6e4d: $e8 $28
    rst $38                                       ; $6e4f: $ff
    ld a, a                                       ; $6e50: $7f
    nop                                           ; $6e51: $00
    nop                                           ; $6e52: $00
    or l                                          ; $6e53: $b5
    ld d, [hl]                                    ; $6e54: $56
    sbc $7b                                       ; $6e55: $de $7b
    ld c, d                                       ; $6e57: $4a
    add hl, hl                                    ; $6e58: $29
    nop                                           ; $6e59: $00
    nop                                           ; $6e5a: $00
    ld a, l                                       ; $6e5b: $7d
    ld a, a                                       ; $6e5c: $7f
    nop                                           ; $6e5d: $00
    jr nz, jr_0b4_6e46                            ; $6e5e: $20 $e6

    jr jr_0b4_6e62                                ; $6e60: $18 $00

jr_0b4_6e62:
    nop                                           ; $6e62: $00
    rst $18                                       ; $6e63: $df
    ld a, a                                       ; $6e64: $7f
    ld l, h                                       ; $6e65: $6c
    ld b, c                                       ; $6e66: $41
    nop                                           ; $6e67: $00
    inc e                                         ; $6e68: $1c
    nop                                           ; $6e69: $00
    nop                                           ; $6e6a: $00
    rst $38                                       ; $6e6b: $ff
    ld a, a                                       ; $6e6c: $7f
    ld c, d                                       ; $6e6d: $4a
    dec l                                         ; $6e6e: $2d
    ldh a, [rLYC]                                 ; $6e6f: $f0 $45
    nop                                           ; $6e71: $00
    nop                                           ; $6e72: $00
    rst $38                                       ; $6e73: $ff
    ld a, a                                       ; $6e74: $7f
    add $14                                       ; $6e75: $c6 $14
    ld l, h                                       ; $6e77: $6c
    dec [hl]                                      ; $6e78: $35
    nop                                           ; $6e79: $00
    nop                                           ; $6e7a: $00
    ld l, c                                       ; $6e7b: $69
    ld sp, $0f7b                                  ; $6e7c: $31 $7b $0f
    adc h                                         ; $6e7f: $8c
    ld bc, $0000                                  ; $6e80: $01 $00 $00
    jr jr_0b4_6eec                                ; $6e83: $18 $67

    add l                                         ; $6e85: $85
    inc d                                         ; $6e86: $14
    rst $38                                       ; $6e87: $ff
    ld a, a                                       ; $6e88: $7f
    nop                                           ; $6e89: $00
    nop                                           ; $6e8a: $00
    db $10                                        ; $6e8b: $10
    ld b, d                                       ; $6e8c: $42
    cp l                                          ; $6e8d: $bd
    ld [hl], a                                    ; $6e8e: $77
    ld [$2121], sp                                ; $6e8f: $08 $21 $21
    inc b                                         ; $6e92: $04
    ld a, l                                       ; $6e93: $7d
    ld a, a                                       ; $6e94: $7f
    ld l, e                                       ; $6e95: $6b
    dec l                                         ; $6e96: $2d
    nop                                           ; $6e97: $00
    jr nz, jr_0b4_6e9a                            ; $6e98: $20 $00

jr_0b4_6e9a:
    inc d                                         ; $6e9a: $14
    sub $62                                       ; $6e9b: $d6 $62
    ld [$de2d], sp                                ; $6e9d: $08 $2d $de
    ld a, e                                       ; $6ea0: $7b
    nop                                           ; $6ea1: $00
    nop                                           ; $6ea2: $00
    db $10                                        ; $6ea3: $10
    ld a, $ff                                     ; $6ea4: $3e $ff
    ld a, a                                       ; $6ea6: $7f
    rst $20                                       ; $6ea7: $e7
    inc e                                         ; $6ea8: $1c
    nop                                           ; $6ea9: $00
    nop                                           ; $6eaa: $00
    ld a, [hl]                                    ; $6eab: $7e
    ld a, a                                       ; $6eac: $7f
    ld a, [hl+]                                   ; $6ead: $2a
    dec [hl]                                      ; $6eae: $35
    rst $38                                       ; $6eaf: $ff
    ld a, a                                       ; $6eb0: $7f
    and l                                         ; $6eb1: $a5
    inc b                                         ; $6eb2: $04
    rst $38                                       ; $6eb3: $ff
    dec de                                        ; $6eb4: $1b
    ld [hl], l                                    ; $6eb5: $75
    ld l, d                                       ; $6eb6: $6a
    cp [hl]                                       ; $6eb7: $be
    ld a, a                                       ; $6eb8: $7f
    nop                                           ; $6eb9: $00
    nop                                           ; $6eba: $00
    ld [hl], l                                    ; $6ebb: $75
    ld h, [hl]                                    ; $6ebc: $66
    add sp, $24                                   ; $6ebd: $e8 $24
    sbc [hl]                                      ; $6ebf: $9e
    ld a, a                                       ; $6ec0: $7f
    nop                                           ; $6ec1: $00
    nop                                           ; $6ec2: $00
    xor [hl]                                      ; $6ec3: $ae
    ld c, l                                       ; $6ec4: $4d
    rst $38                                       ; $6ec5: $ff
    ld a, a                                       ; $6ec6: $7f
    rst $00                                       ; $6ec7: $c7
    inc h                                         ; $6ec8: $24
    nop                                           ; $6ec9: $00
    inc e                                         ; $6eca: $1c

jr_0b4_6ecb:
    ld d, d                                       ; $6ecb: $52
    ld c, d                                       ; $6ecc: $4a
    ld l, e                                       ; $6ecd: $6b
    ld sp, $7fff                                  ; $6ece: $31 $ff $7f
    nop                                           ; $6ed1: $00
    jr jr_0b4_6ecb                                ; $6ed2: $18 $f7

    ld e, [hl]                                    ; $6ed4: $5e
    rst $20                                       ; $6ed5: $e7
    inc e                                         ; $6ed6: $1c
    rst $38                                       ; $6ed7: $ff
    ld a, a                                       ; $6ed8: $7f
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    sbc $7b                                       ; $6edb: $de $7b
    rst $00                                       ; $6edd: $c7
    jr nz, jr_0b4_6f0b                            ; $6ede: $20 $2b

    add hl, sp                                    ; $6ee0: $39
    nop                                           ; $6ee1: $00
    nop                                           ; $6ee2: $00
    or l                                          ; $6ee3: $b5
    ld d, [hl]                                    ; $6ee4: $56
    ld [$ff29], sp                                ; $6ee5: $08 $29 $ff
    ld a, a                                       ; $6ee8: $7f
    nop                                           ; $6ee9: $00
    nop                                           ; $6eea: $00
    adc h                                         ; $6eeb: $8c

jr_0b4_6eec:
    ld sp, $4631                                  ; $6eec: $31 $31 $46
    sub l                                         ; $6eef: $95
    ld e, d                                       ; $6ef0: $5a
    nop                                           ; $6ef1: $00
    nop                                           ; $6ef2: $00
    ld [hl], e                                    ; $6ef3: $73
    ld c, [hl]                                    ; $6ef4: $4e
    rst $38                                       ; $6ef5: $ff
    ld a, a                                       ; $6ef6: $7f
    ld l, e                                       ; $6ef7: $6b
    dec l                                         ; $6ef8: $2d
    nop                                           ; $6ef9: $00
    nop                                           ; $6efa: $00
    rst $28                                       ; $6efb: $ef
    add hl, sp                                    ; $6efc: $39
    add hl, hl                                    ; $6efd: $29
    add hl, hl                                    ; $6efe: $29
    ld a, [de]                                    ; $6eff: $1a
    ld [hl], e                                    ; $6f00: $73
    nop                                           ; $6f01: $00
    ld [$7fff], sp                                ; $6f02: $08 $ff $7f
    adc h                                         ; $6f05: $8c
    dec l                                         ; $6f06: $2d
    nop                                           ; $6f07: $00
    jr nz, jr_0b4_6f4c                            ; $6f08: $20 $42

    inc c                                         ; $6f0a: $0c

jr_0b4_6f0b:
    sbc $7f                                       ; $6f0b: $de $7f
    adc $3d                                       ; $6f0d: $ce $3d
    nop                                           ; $6f0f: $00
    jr nz, jr_0b4_6f12                            ; $6f10: $20 $00

jr_0b4_6f12:
    nop                                           ; $6f12: $00
    ret nc                                        ; $6f13: $d0

    ld c, l                                       ; $6f14: $4d
    ld h, e                                       ; $6f15: $63
    ld de, $735b                                  ; $6f16: $11 $5b $73
    nop                                           ; $6f19: $00
    nop                                           ; $6f1a: $00
    ld sp, $de46                                  ; $6f1b: $31 $46 $de
    ld a, e                                       ; $6f1e: $7b
    rst $30                                       ; $6f1f: $f7
    ld e, [hl]                                    ; $6f20: $5e
    nop                                           ; $6f21: $00
    nop                                           ; $6f22: $00
    ld a, e                                       ; $6f23: $7b
    rrca                                          ; $6f24: $0f
    and l                                         ; $6f25: $a5
    jr jr_0b4_6f93                                ; $6f26: $18 $6b

    dec e                                         ; $6f28: $1d

Jump_0b4_6f29:
    nop                                           ; $6f29: $00
    nop                                           ; $6f2a: $00
    add hl, sp                                    ; $6f2b: $39
    ld h, a                                       ; $6f2c: $67
    add $18                                       ; $6f2d: $c6 $18
    sbc $7b                                       ; $6f2f: $de $7b
    nop                                           ; $6f31: $00
    nop                                           ; $6f32: $00
    and c                                         ; $6f33: $a1
    dec b                                         ; $6f34: $05
    add hl, hl                                    ; $6f35: $29
    add hl, hl                                    ; $6f36: $29
    xor l                                         ; $6f37: $ad
    dec a                                         ; $6f38: $3d
    nop                                           ; $6f39: $00
    nop                                           ; $6f3a: $00
    rst $10                                       ; $6f3b: $d7
    ld l, d                                       ; $6f3c: $6a
    nop                                           ; $6f3d: $00
    inc e                                         ; $6f3e: $1c
    ld b, d                                       ; $6f3f: $42
    inc c                                         ; $6f40: $0c
    nop                                           ; $6f41: $00
    nop                                           ; $6f42: $00
    nop                                           ; $6f43: $00
    inc e                                         ; $6f44: $1c
    nop                                           ; $6f45: $00
    inc c                                         ; $6f46: $0c
    nop                                           ; $6f47: $00
    jr nz, jr_0b4_6f4a                            ; $6f48: $20 $00

jr_0b4_6f4a:
    nop                                           ; $6f4a: $00
    add c                                         ; $6f4b: $81

jr_0b4_6f4c:
    dec b                                         ; $6f4c: $05
    and c                                         ; $6f4d: $a1
    dec b                                         ; $6f4e: $05
    nop                                           ; $6f4f: $00
    jr nz, jr_0b4_6f52                            ; $6f50: $20 $00

jr_0b4_6f52:
    nop                                           ; $6f52: $00
    sub h                                         ; $6f53: $94
    ld d, d                                       ; $6f54: $52
    rst $20                                       ; $6f55: $e7
    inc e                                         ; $6f56: $1c
    rst $38                                       ; $6f57: $ff
    ld a, a                                       ; $6f58: $7f
    add h                                         ; $6f59: $84
    db $10                                        ; $6f5a: $10
    rst $38                                       ; $6f5b: $ff
    rla                                           ; $6f5c: $17
    cp l                                          ; $6f5d: $bd
    ld a, e                                       ; $6f5e: $7b
    adc l                                         ; $6f5f: $8d
    dec l                                         ; $6f60: $2d
    nop                                           ; $6f61: $00
    nop                                           ; $6f62: $00
    ld [hl], e                                    ; $6f63: $73
    ld c, [hl]                                    ; $6f64: $4e
    rst $38                                       ; $6f65: $ff

jr_0b4_6f66:
    ld a, a                                       ; $6f66: $7f
    and l                                         ; $6f67: $a5
    inc d                                         ; $6f68: $14
    nop                                           ; $6f69: $00
    nop                                           ; $6f6a: $00
    rst $30                                       ; $6f6b: $f7
    ld e, [hl]                                    ; $6f6c: $5e
    add c                                         ; $6f6d: $81
    dec b                                         ; $6f6e: $05
    rst $38                                       ; $6f6f: $ff
    ld a, a                                       ; $6f70: $7f
    nop                                           ; $6f71: $00
    nop                                           ; $6f72: $00
    rst $38                                       ; $6f73: $ff
    ld a, a                                       ; $6f74: $7f
    nop                                           ; $6f75: $00
    jr jr_0b4_6f78                                ; $6f76: $18 $00

jr_0b4_6f78:
    jr nz, jr_0b4_6f7a                            ; $6f78: $20 $00

jr_0b4_6f7a:
    nop                                           ; $6f7a: $00
    ld d, d                                       ; $6f7b: $52
    ld c, d                                       ; $6f7c: $4a
    nop                                           ; $6f7d: $00
    inc d                                         ; $6f7e: $14
    nop                                           ; $6f7f: $00
    jr nz, jr_0b4_6f82                            ; $6f80: $20 $00

jr_0b4_6f82:
    nop                                           ; $6f82: $00
    sub $5a                                       ; $6f83: $d6 $5a
    add b                                         ; $6f85: $80
    dec b                                         ; $6f86: $05
    rst $38                                       ; $6f87: $ff
    ld a, a                                       ; $6f88: $7f
    nop                                           ; $6f89: $00
    nop                                           ; $6f8a: $00
    db $10                                        ; $6f8b: $10
    ld b, d                                       ; $6f8c: $42
    sbc $7b                                       ; $6f8d: $de $7b
    add $18                                       ; $6f8f: $c6 $18
    add $14                                       ; $6f91: $c6 $14

jr_0b4_6f93:
    sub l                                         ; $6f93: $95

jr_0b4_6f94:
    ld e, [hl]                                    ; $6f94: $5e
    sbc $7f                                       ; $6f95: $de $7f
    adc $39                                       ; $6f97: $ce $39
    nop                                           ; $6f99: $00
    nop                                           ; $6f9a: $00
    rst $38                                       ; $6f9b: $ff
    ld a, a                                       ; $6f9c: $7f

jr_0b4_6f9d:
    and l                                         ; $6f9d: $a5
    inc d                                         ; $6f9e: $14
    ld [$0021], sp                                ; $6f9f: $08 $21 $00
    nop                                           ; $6fa2: $00
    sbc $7b                                       ; $6fa3: $de $7b
    rst $28                                       ; $6fa5: $ef
    ld b, c                                       ; $6fa6: $41
    add b                                         ; $6fa7: $80
    dec b                                         ; $6fa8: $05
    nop                                           ; $6fa9: $00
    nop                                           ; $6faa: $00
    nop                                           ; $6fab: $00
    jr nz, jr_0b4_6f9d                            ; $6fac: $20 $ef

    ld b, c                                       ; $6fae: $41
    add b                                         ; $6faf: $80
    dec b                                         ; $6fb0: $05
    nop                                           ; $6fb1: $00
    nop                                           ; $6fb2: $00
    nop                                           ; $6fb3: $00
    jr nz, jr_0b4_6f94                            ; $6fb4: $20 $de

    ld a, e                                       ; $6fb6: $7b
    add $18                                       ; $6fb7: $c6 $18
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    ld e, h                                       ; $6fbb: $5c
    ld a, a                                       ; $6fbc: $7f
    add b                                         ; $6fbd: $80
    ld bc, $7fdf                                  ; $6fbe: $01 $df $7f
    nop                                           ; $6fc1: $00
    nop                                           ; $6fc2: $00
    sub h                                         ; $6fc3: $94
    ld d, d                                       ; $6fc4: $52
    rst $38                                       ; $6fc5: $ff
    ld a, a                                       ; $6fc6: $7f
    add hl, hl                                    ; $6fc7: $29
    dec h                                         ; $6fc8: $25
    nop                                           ; $6fc9: $00
    nop                                           ; $6fca: $00
    ld c, d                                       ; $6fcb: $4a
    add hl, hl                                    ; $6fcc: $29
    sub $5e                                       ; $6fcd: $d6 $5e
    ld b, e                                       ; $6fcf: $43
    inc c                                         ; $6fd0: $0c
    nop                                           ; $6fd1: $00
    nop                                           ; $6fd2: $00
    ld sp, $bd46                                  ; $6fd3: $31 $46 $bd
    ld [hl], a                                    ; $6fd6: $77
    rst $20                                       ; $6fd7: $e7
    inc e                                         ; $6fd8: $1c
    nop                                           ; $6fd9: $00
    nop                                           ; $6fda: $00
    sbc [hl]                                      ; $6fdb: $9e
    ld a, a                                       ; $6fdc: $7f
    add b                                         ; $6fdd: $80
    dec b                                         ; $6fde: $05
    rst $38                                       ; $6fdf: $ff
    ld a, a                                       ; $6fe0: $7f
    nop                                           ; $6fe1: $00
    nop                                           ; $6fe2: $00
    nop                                           ; $6fe3: $00
    jr nz, jr_0b4_6f66                            ; $6fe4: $20 $80

    dec b                                         ; $6fe6: $05
    rst $38                                       ; $6fe7: $ff
    ld a, a                                       ; $6fe8: $7f
    nop                                           ; $6fe9: $00
    nop                                           ; $6fea: $00
    nop                                           ; $6feb: $00
    jr nz, @+$01                                  ; $6fec: $20 $ff

    ld a, a                                       ; $6fee: $7f
    add hl, hl                                    ; $6fef: $29
    dec h                                         ; $6ff0: $25
    nop                                           ; $6ff1: $00

jr_0b4_6ff2:
    nop                                           ; $6ff2: $00
    rst $18                                       ; $6ff3: $df
    ld a, a                                       ; $6ff4: $7f
    xor l                                         ; $6ff5: $ad
    ld sp, $0180                                  ; $6ff6: $31 $80 $01
    nop                                           ; $6ff9: $00
    nop                                           ; $6ffa: $00
    ld [hl], e                                    ; $6ffb: $73
    ld c, [hl]                                    ; $6ffc: $4e
    sbc $7b                                       ; $6ffd: $de $7b
    rst $20                                       ; $6fff: $e7
    inc e                                         ; $7000: $1c
    nop                                           ; $7001: $00
    nop                                           ; $7002: $00
    rla                                           ; $7003: $17
    dec bc                                        ; $7004: $0b
    ld l, e                                       ; $7005: $6b
    dec b                                         ; $7006: $05
    rst $38                                       ; $7007: $ff
    dec de                                        ; $7008: $1b
    nop                                           ; $7009: $00
    nop                                           ; $700a: $00
    rst $38                                       ; $700b: $ff
    ld a, a                                       ; $700c: $7f
    xor l                                         ; $700d: $ad
    dec [hl]                                      ; $700e: $35
    rst $38                                       ; $700f: $ff
    dec de                                        ; $7010: $1b
    nop                                           ; $7011: $00
    nop                                           ; $7012: $00
    sub $5e                                       ; $7013: $d6 $5e
    rst $38                                       ; $7015: $ff
    ld a, a                                       ; $7016: $7f
    and l                                         ; $7017: $a5
    jr jr_0b4_701a                                ; $7018: $18 $00

jr_0b4_701a:
    jr nz, jr_0b4_6ff2                            ; $701a: $20 $d6

    ld e, [hl]                                    ; $701c: $5e
    rst $38                                       ; $701d: $ff
    ld a, a                                       ; $701e: $7f
    and l                                         ; $701f: $a5
    jr jr_0b4_7022                                ; $7020: $18 $00

jr_0b4_7022:
    jr nz, jr_0b4_7097                            ; $7022: $20 $73

    ld c, [hl]                                    ; $7024: $4e
    sbc $7b                                       ; $7025: $de $7b
    rst $20                                       ; $7027: $e7
    inc e                                         ; $7028: $1c
    nop                                           ; $7029: $00
    nop                                           ; $702a: $00
    dec sp                                        ; $702b: $3b
    ld a, a                                       ; $702c: $7f
    add b                                         ; $702d: $80
    ld bc, $7fff                                  ; $702e: $01 $ff $7f
    nop                                           ; $7031: $00
    nop                                           ; $7032: $00
    ld d, d                                       ; $7033: $52
    ld c, d                                       ; $7034: $4a
    sbc $7b                                       ; $7035: $de $7b
    ld c, d                                       ; $7037: $4a
    add hl, hl                                    ; $7038: $29
    add $14                                       ; $7039: $c6 $14
    sub [hl]                                      ; $703b: $96
    ld l, d                                       ; $703c: $6a
    adc $41                                       ; $703d: $ce $41

jr_0b4_703f:
    rst $38                                       ; $703f: $ff
    ld a, a                                       ; $7040: $7f
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    rst $38                                       ; $7043: $ff
    ld a, a                                       ; $7044: $7f
    ld l, e                                       ; $7045: $6b
    dec l                                         ; $7046: $2d

jr_0b4_7047:
    rst $28                                       ; $7047: $ef
    dec a                                         ; $7048: $3d
    nop                                           ; $7049: $00
    nop                                           ; $704a: $00
    rst $38                                       ; $704b: $ff
    ld a, a                                       ; $704c: $7f
    nop                                           ; $704d: $00
    jr nz, jr_0b4_703f                            ; $704e: $20 $ef

    dec a                                         ; $7050: $3d
    nop                                           ; $7051: $00
    jr nz, @+$01                                  ; $7052: $20 $ff

    ld a, a                                       ; $7054: $7f
    nop                                           ; $7055: $00
    jr nz, jr_0b4_7047                            ; $7056: $20 $ef

    dec a                                         ; $7058: $3d
    nop                                           ; $7059: $00
    jr nz, jr_0b4_70ae                            ; $705a: $20 $52

    ld c, d                                       ; $705c: $4a
    sbc $7b                                       ; $705d: $de $7b
    ld c, d                                       ; $705f: $4a
    add hl, hl                                    ; $7060: $29
    nop                                           ; $7061: $00
    nop                                           ; $7062: $00
    rst $38                                       ; $7063: $ff
    ld a, a                                       ; $7064: $7f
    nop                                           ; $7065: $00
    jr nz, jr_0b4_70ab                            ; $7066: $20 $43

    stop                                          ; $7068: $10 $00
    nop                                           ; $706a: $00
    rst $38                                       ; $706b: $ff
    ld a, a                                       ; $706c: $7f
    and l                                         ; $706d: $a5
    inc d                                         ; $706e: $14
    ld [$6a21], sp                                ; $706f: $08 $21 $6a
    dec l                                         ; $7072: $2d
    rst $10                                       ; $7073: $d7
    ld l, d                                       ; $7074: $6a
    ld de, $ff4a                                  ; $7075: $11 $4a $ff
    ld a, a                                       ; $7078: $7f
    nop                                           ; $7079: $00
    nop                                           ; $707a: $00
    cp h                                          ; $707b: $bc
    ld l, a                                       ; $707c: $6f
    ld c, c                                       ; $707d: $49
    add hl, hl                                    ; $707e: $29
    rst $38                                       ; $707f: $ff
    ld a, a                                       ; $7080: $7f
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    add hl, de                                    ; $7083: $19
    ld l, a                                       ; $7084: $6f
    ld b, d                                       ; $7085: $42
    jr nz, @+$01                                  ; $7086: $20 $ff

    ld a, a                                       ; $7088: $7f
    nop                                           ; $7089: $00
    jr nz, jr_0b4_70a5                            ; $708a: $20 $19

    ld l, a                                       ; $708c: $6f
    ld b, d                                       ; $708d: $42
    jr nz, @+$01                                  ; $708e: $20 $ff

    ld a, a                                       ; $7090: $7f
    nop                                           ; $7091: $00
    jr nz, @+$01                                  ; $7092: $20 $ff

    ld a, a                                       ; $7094: $7f
    and l                                         ; $7095: $a5
    inc d                                         ; $7096: $14

jr_0b4_7097:
    ld [$0021], sp                                ; $7097: $08 $21 $00
    nop                                           ; $709a: $00
    cp l                                          ; $709b: $bd
    ld a, e                                       ; $709c: $7b
    adc l                                         ; $709d: $8d
    dec a                                         ; $709e: $3d
    nop                                           ; $709f: $00
    jr nz, jr_0b4_70a2                            ; $70a0: $20 $00

jr_0b4_70a2:
    nop                                           ; $70a2: $00
    jr jr_0b4_7114                                ; $70a3: $18 $6f

jr_0b4_70a5:
    sbc e                                         ; $70a5: $9b
    ld [hl], e                                    ; $70a6: $73
    jr nz, jr_0b4_70a9                            ; $70a7: $20 $00

jr_0b4_70a9:
    nop                                           ; $70a9: $00
    nop                                           ; $70aa: $00

jr_0b4_70ab:
    rst $38                                       ; $70ab: $ff
    ld a, a                                       ; $70ac: $7f
    ld b, d                                       ; $70ad: $42

jr_0b4_70ae:
    jr nz, @+$01                                  ; $70ae: $20 $ff

    ld a, a                                       ; $70b0: $7f
    nop                                           ; $70b1: $00
    nop                                           ; $70b2: $00
    rst $38                                       ; $70b3: $ff
    ld a, a                                       ; $70b4: $7f
    ld b, d                                       ; $70b5: $42
    jr nz, @+$01                                  ; $70b6: $20 $ff

    ld a, a                                       ; $70b8: $7f
    nop                                           ; $70b9: $00
    nop                                           ; $70ba: $00
    rst $38                                       ; $70bb: $ff
    ld a, a                                       ; $70bc: $7f
    nop                                           ; $70bd: $00
    jr nz, @+$01                                  ; $70be: $20 $ff

    ld a, a                                       ; $70c0: $7f
    nop                                           ; $70c1: $00
    jr nz, @+$01                                  ; $70c2: $20 $ff

    ld a, a                                       ; $70c4: $7f
    nop                                           ; $70c5: $00
    jr nz, @+$01                                  ; $70c6: $20 $ff

    ld a, a                                       ; $70c8: $7f
    nop                                           ; $70c9: $00
    jr nz, jr_0b4_70e4                            ; $70ca: $20 $18

    ld l, a                                       ; $70cc: $6f
    sbc e                                         ; $70cd: $9b
    ld [hl], e                                    ; $70ce: $73
    jr nz, jr_0b4_70d1                            ; $70cf: $20 $00

jr_0b4_70d1:
    nop                                           ; $70d1: $00
    nop                                           ; $70d2: $00
    rst $38                                       ; $70d3: $ff
    ld a, a                                       ; $70d4: $7f
    nop                                           ; $70d5: $00
    jr nz, jr_0b4_70f8                            ; $70d6: $20 $20

    nop                                           ; $70d8: $00
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    rst $38                                       ; $70db: $ff
    ld a, a                                       ; $70dc: $7f
    nop                                           ; $70dd: $00
    jr nz, jr_0b4_7100                            ; $70de: $20 $20

    nop                                           ; $70e0: $00
    nop                                           ; $70e1: $00
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00

jr_0b4_70e4:
    jr nz, jr_0b4_70e6                            ; $70e4: $20 $00

jr_0b4_70e6:
    jr nz, @+$01                                  ; $70e6: $20 $ff

    ld a, a                                       ; $70e8: $7f
    nop                                           ; $70e9: $00
    nop                                           ; $70ea: $00
    nop                                           ; $70eb: $00

jr_0b4_70ec:
    jr nz, jr_0b4_70ee                            ; $70ec: $20 $00

jr_0b4_70ee:
    jr nz, @+$01                                  ; $70ee: $20 $ff

    ld a, a                                       ; $70f0: $7f
    nop                                           ; $70f1: $00
    nop                                           ; $70f2: $00
    nop                                           ; $70f3: $00

jr_0b4_70f4:
    jr nz, jr_0b4_70f6                            ; $70f4: $20 $00

jr_0b4_70f6:
    jr nz, @+$01                                  ; $70f6: $20 $ff

jr_0b4_70f8:
    ld a, a                                       ; $70f8: $7f
    nop                                           ; $70f9: $00
    jr nz, jr_0b4_70fc                            ; $70fa: $20 $00

jr_0b4_70fc:
    jr nz, jr_0b4_70fe                            ; $70fc: $20 $00

jr_0b4_70fe:
    jr nz, @+$01                                  ; $70fe: $20 $ff

jr_0b4_7100:
    ld a, a                                       ; $7100: $7f
    nop                                           ; $7101: $00
    jr nz, jr_0b4_7104                            ; $7102: $20 $00

jr_0b4_7104:
    jr nz, @-$1f                                  ; $7104: $20 $df

    ccf                                           ; $7106: $3f
    rst $38                                       ; $7107: $ff
    ld l, a                                       ; $7108: $6f
    nop                                           ; $7109: $00
    jr nz, jr_0b4_710c                            ; $710a: $20 $00

jr_0b4_710c:
    jr nz, @-$1f                                  ; $710c: $20 $df

    ccf                                           ; $710e: $3f
    rst $38                                       ; $710f: $ff
    ld l, a                                       ; $7110: $6f
    nop                                           ; $7111: $00
    jr nz, jr_0b4_7114                            ; $7112: $20 $00

jr_0b4_7114:
    jr nz, @-$1f                                  ; $7114: $20 $df

    ccf                                           ; $7116: $3f
    rst $38                                       ; $7117: $ff
    ld l, a                                       ; $7118: $6f
    nop                                           ; $7119: $00
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    jr nz, jr_0b4_7164                            ; $711c: $20 $46

    nop                                           ; $711e: $00
    add [hl]                                      ; $711f: $86
    stop                                          ; $7120: $10 $00
    nop                                           ; $7122: $00
    nop                                           ; $7123: $00

jr_0b4_7124:
    jr nz, jr_0b4_7149                            ; $7124: $20 $23

    nop                                           ; $7126: $00
    add [hl]                                      ; $7127: $86
    stop                                          ; $7128: $10 $00
    jr nz, jr_0b4_712c                            ; $712a: $20 $00

jr_0b4_712c:
    jr nz, jr_0b4_7151                            ; $712c: $20 $23

    nop                                           ; $712e: $00
    add [hl]                                      ; $712f: $86
    stop                                          ; $7130: $10 $00
    jr nz, jr_0b4_7134                            ; $7132: $20 $00

jr_0b4_7134:
    jr nz, jr_0b4_7159                            ; $7134: $20 $23

    nop                                           ; $7136: $00
    add [hl]                                      ; $7137: $86
    stop                                          ; $7138: $10 $00
    jr nz, @+$03                                  ; $713a: $20 $01

    jr nz, @-$1f                                  ; $713c: $20 $df

    ccf                                           ; $713e: $3f
    rst $38                                       ; $713f: $ff
    ld l, a                                       ; $7140: $6f
    nop                                           ; $7141: $00
    jr nz, @+$03                                  ; $7142: $20 $01

    jr nz, @-$1f                                  ; $7144: $20 $df

    ccf                                           ; $7146: $3f
    rst $38                                       ; $7147: $ff
    ld l, a                                       ; $7148: $6f

jr_0b4_7149:
    nop                                           ; $7149: $00
    nop                                           ; $714a: $00
    nop                                           ; $714b: $00
    jr nz, jr_0b4_7151                            ; $714c: $20 $03

    nop                                           ; $714e: $00
    rst $38                                       ; $714f: $ff
    ld l, a                                       ; $7150: $6f

jr_0b4_7151:
    ld bc, $8700                                  ; $7151: $01 $00 $87
    inc c                                         ; $7154: $0c
    cpl                                           ; $7155: $2f
    ld hl, $0865                                  ; $7156: $21 $65 $08

jr_0b4_7159:
    nop                                           ; $7159: $00
    nop                                           ; $715a: $00
    ld h, [hl]                                    ; $715b: $66
    inc b                                         ; $715c: $04
    xor b                                         ; $715d: $a8

jr_0b4_715e:
    db $10                                        ; $715e: $10
    ld b, e                                       ; $715f: $43
    inc b                                         ; $7160: $04
    nop                                           ; $7161: $00
    nop                                           ; $7162: $00
    nop                                           ; $7163: $00

jr_0b4_7164:
    jr nz, jr_0b4_70ec                            ; $7164: $20 $86

jr_0b4_7166:
    db $10                                        ; $7166: $10
    ld b, e                                       ; $7167: $43
    inc b                                         ; $7168: $04
    nop                                           ; $7169: $00
    jr nz, jr_0b4_716c                            ; $716a: $20 $00

jr_0b4_716c:
    jr nz, jr_0b4_70f4                            ; $716c: $20 $86

    db $10                                        ; $716e: $10
    ld b, e                                       ; $716f: $43
    inc b                                         ; $7170: $04
    nop                                           ; $7171: $00
    jr nz, @+$03                                  ; $7172: $20 $01

    jr nz, jr_0b4_7178                            ; $7174: $20 $02

    jr nz, @+$01                                  ; $7176: $20 $ff

jr_0b4_7178:
    ld l, a                                       ; $7178: $6f
    nop                                           ; $7179: $00
    jr nz, jr_0b4_717e                            ; $717a: $20 $02

    jr nz, @+$03                                  ; $717c: $20 $01

jr_0b4_717e:
    jr nz, @+$01                                  ; $717e: $20 $ff

    ld l, a                                       ; $7180: $6f
    nop                                           ; $7181: $00
    nop                                           ; $7182: $00
    dec c                                         ; $7183: $0d
    dec e                                         ; $7184: $1d
    nop                                           ; $7185: $00
    jr nz, jr_0b4_71ec                            ; $7186: $20 $64

    ld [$0422], sp                                ; $7188: $08 $22 $04
    rl h                                          ; $718b: $cb $14
    add a                                         ; $718d: $87
    inc c                                         ; $718e: $0c
    dec c                                         ; $718f: $0d
    add hl, de                                    ; $7190: $19
    ld h, [hl]                                    ; $7191: $66
    ld [$18ed], sp                                ; $7192: $08 $ed $18
    xor b                                         ; $7195: $a8
    db $10                                        ; $7196: $10
    jp z, RST_10                                  ; $7197: $ca $10 $00

    nop                                           ; $719a: $00
    nop                                           ; $719b: $00
    jr nz, jr_0b4_7124                            ; $719c: $20 $86

    db $10                                        ; $719e: $10
    ld b, e                                       ; $719f: $43
    ld [$2000], sp                                ; $71a0: $08 $00 $20
    nop                                           ; $71a3: $00
    jr nz, jr_0b4_712c                            ; $71a4: $20 $86

    db $10                                        ; $71a6: $10
    ld b, e                                       ; $71a7: $43
    ld [$2001], sp                                ; $71a8: $08 $01 $20
    ld [bc], a                                    ; $71ab: $02
    jr nz, jr_0b4_71b1                            ; $71ac: $20 $03

    inc h                                         ; $71ae: $24
    inc hl                                        ; $71af: $23
    inc h                                         ; $71b0: $24

jr_0b4_71b1:
    ld bc, $2320                                  ; $71b1: $01 $20 $23
    inc h                                         ; $71b4: $24
    ld [bc], a                                    ; $71b5: $02
    jr nz, @+$25                                  ; $71b6: $20 $23

    inc h                                         ; $71b8: $24
    inc hl                                        ; $71b9: $23
    inc b                                         ; $71ba: $04
    jp z, $0114                                   ; $71bb: $ca $14 $01

    jr nz, @-$6b                                  ; $71be: $20 $93

    dec h                                         ; $71c0: $25
    ld b, h                                       ; $71c1: $44
    inc b                                         ; $71c2: $04
    db $eb                                        ; $71c3: $eb
    inc d                                         ; $71c4: $14
    ld [hl], d                                    ; $71c5: $72
    ld hl, $0c87                                  ; $71c6: $21 $87 $0c
    ld h, [hl]                                    ; $71c9: $66
    ld [$14ec], sp                                ; $71ca: $08 $ec $14
    cpl                                           ; $71cd: $2f
    add hl, de                                    ; $71ce: $19
    xor b                                         ; $71cf: $a8
    stop                                          ; $71d0: $10 $00
    nop                                           ; $71d2: $00

jr_0b4_71d3:
    cpl                                           ; $71d3: $2f
    dec e                                         ; $71d4: $1d
    nop                                           ; $71d5: $00

jr_0b4_71d6:
    jr nz, jr_0b4_715e                            ; $71d6: $20 $86

    stop                                          ; $71d8: $10 $00
    jr nz, jr_0b4_720b                            ; $71da: $20 $2f

    dec e                                         ; $71dc: $1d
    nop                                           ; $71dd: $00

jr_0b4_71de:
    jr nz, jr_0b4_7166                            ; $71de: $20 $86

    stop                                          ; $71e0: $10 $00
    jr nz, jr_0b4_71e7                            ; $71e2: $20 $03

    inc h                                         ; $71e4: $24
    inc b                                         ; $71e5: $04
    inc h                                         ; $71e6: $24

jr_0b4_71e7:
    ld [bc], a                                    ; $71e7: $02
    jr nz, @+$03                                  ; $71e8: $20 $01

    jr nz, jr_0b4_7210                            ; $71ea: $20 $24

jr_0b4_71ec:
    inc h                                         ; $71ec: $24
    inc bc                                        ; $71ed: $03
    jr nz, @+$47                                  ; $71ee: $20 $45

    jr z, jr_0b4_7215                             ; $71f0: $28 $23

    inc b                                         ; $71f2: $04
    ret                                           ; $71f3: $c9


    db $10                                        ; $71f4: $10
    ld bc, $2f20                                  ; $71f5: $01 $20 $2f
    dec e                                         ; $71f8: $1d
    inc hl                                        ; $71f9: $23
    inc b                                         ; $71fa: $04
    db $ec                                        ; $71fb: $ec
    inc d                                         ; $71fc: $14
    xor b                                         ; $71fd: $a8
    inc c                                         ; $71fe: $0c
    ld d, b                                       ; $71ff: $50
    dec e                                         ; $7200: $1d
    ld hl, $0e00                                  ; $7201: $21 $00 $0e
    add hl, de                                    ; $7204: $19
    ld h, [hl]                                    ; $7205: $66
    ld [$10a8], sp                                ; $7206: $08 $a8 $10
    ld [hl+], a                                   ; $7209: $22
    inc b                                         ; $720a: $04

jr_0b4_720b:
    jp z, $300c                                   ; $720b: $ca $0c $30

    dec e                                         ; $720e: $1d
    nop                                           ; $720f: $00

jr_0b4_7210:
    jr nz, jr_0b4_7212                            ; $7210: $20 $00

jr_0b4_7212:
    jr nz, jr_0b4_71de                            ; $7212: $20 $ca

    inc c                                         ; $7214: $0c

jr_0b4_7215:
    jr nc, jr_0b4_7234                            ; $7215: $30 $1d

    nop                                           ; $7217: $00
    jr nz, jr_0b4_721c                            ; $7218: $20 $02

    jr nz, jr_0b4_7241                            ; $721a: $20 $25

jr_0b4_721c:
    inc h                                         ; $721c: $24
    ld c, b                                       ; $721d: $48
    jr z, jr_0b4_7244                             ; $721e: $28 $24

    inc h                                         ; $7220: $24
    inc h                                         ; $7221: $24

jr_0b4_7222:
    inc h                                         ; $7222: $24
    rst $10                                       ; $7223: $d7
    ld c, $7d                                     ; $7224: $0e $7d
    inc bc                                        ; $7226: $03
    ld b, a                                       ; $7227: $47
    jr z, jr_0b4_724d                             ; $7228: $28 $23

    nop                                           ; $722a: $00
    db $ec                                        ; $722b: $ec
    jr jr_0b4_71d6                                ; $722c: $18 $a8

    inc c                                         ; $722e: $0c
    ld d, c                                       ; $722f: $51
    ld hl, $0c86                                  ; $7230: $21 $86 $0c
    db $ec                                        ; $7233: $ec

jr_0b4_7234:
    jr @+$31                                      ; $7234: $18 $2f

    dec e                                         ; $7236: $1d
    xor b                                         ; $7237: $a8
    stop                                          ; $7238: $10 $00
    nop                                           ; $723a: $00
    xor b                                         ; $723b: $a8
    db $10                                        ; $723c: $10
    xor [hl]                                      ; $723d: $ae
    db $10                                        ; $723e: $10
    ld d, b                                       ; $723f: $50
    dec e                                         ; $7240: $1d

jr_0b4_7241:
    nop                                           ; $7241: $00
    nop                                           ; $7242: $00
    add a                                         ; $7243: $87

jr_0b4_7244:
    inc b                                         ; $7244: $04
    db $ec                                        ; $7245: $ec
    inc d                                         ; $7246: $14
    xor c                                         ; $7247: $a9
    stop                                          ; $7248: $10 $00
    jr nz, jr_0b4_71d3                            ; $724a: $20 $87

    inc b                                         ; $724c: $04

jr_0b4_724d:
    db $ec                                        ; $724d: $ec
    inc d                                         ; $724e: $14
    xor c                                         ; $724f: $a9
    db $10                                        ; $7250: $10
    ld bc, $6820                                  ; $7251: $01 $20 $68
    jr z, jr_0b4_7222                             ; $7254: $28 $cc

    inc [hl]                                      ; $7256: $34
    dec h                                         ; $7257: $25
    inc h                                         ; $7258: $24
    dec h                                         ; $7259: $25
    inc b                                         ; $725a: $04
    ld a, [de]                                    ; $725b: $1a
    rrca                                          ; $725c: $0f
    cp a                                          ; $725d: $bf
    scf                                           ; $725e: $37
    xor e                                         ; $725f: $ab
    jr nc, jr_0b4_7284                            ; $7260: $30 $22

    inc b                                         ; $7262: $04
    jp z, Jump_0b4_5210                           ; $7263: $ca $10 $52

    ld hl, $0c88                                  ; $7266: $21 $88 $0c
    nop                                           ; $7269: $00
    nop                                           ; $726a: $00
    db $eb                                        ; $726b: $eb
    inc d                                         ; $726c: $14
    ld c, $19                                     ; $726d: $0e $19
    ld d, b                                       ; $726f: $50
    ld hl, $0000                                  ; $7270: $21 $00 $00
    ld d, e                                       ; $7273: $53
    ld hl, $14cc                                  ; $7274: $21 $cc $14
    inc a                                         ; $7277: $3c
    ld a, $00                                     ; $7278: $3e $00
    nop                                           ; $727a: $00
    ld h, [hl]                                    ; $727b: $66
    db $10                                        ; $727c: $10
    ld b, e                                       ; $727d: $43
    inc b                                         ; $727e: $04
    jp z, RST_10                                  ; $727f: $ca $10 $00

    jr nz, jr_0b4_72ea                            ; $7282: $20 $66

jr_0b4_7284:
    db $10                                        ; $7284: $10
    ld b, e                                       ; $7285: $43
    inc b                                         ; $7286: $04
    jp z, Jump_000_0310                           ; $7287: $ca $10 $03

    inc h                                         ; $728a: $24
    sub b                                         ; $728b: $90
    ld b, c                                       ; $728c: $41
    rst $10                                       ; $728d: $d7
    ld e, [hl]                                    ; $728e: $5e
    ld l, c                                       ; $728f: $69
    jr z, jr_0b4_721c                             ; $7290: $28 $8a

    ld [$45d2], sp                                ; $7292: $08 $d2 $45
    ld a, l                                       ; $7295: $7d
    inc hl                                        ; $7296: $23
    ld a, h                                       ; $7297: $7c
    ld c, a                                       ; $7298: $4f
    ld bc, $cb00                                  ; $7299: $01 $00 $cb
    inc d                                         ; $729c: $14
    ld [hl], e                                    ; $729d: $73
    ld hl, $0846                                  ; $729e: $21 $46 $08
    ld bc, $5400                                  ; $72a1: $01 $00 $54
    ld hl, $427e                                  ; $72a4: $21 $7e $42
    rl h                                          ; $72a7: $cb $14
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    rra                                           ; $72ab: $1f
    ld d, a                                       ; $72ac: $57
    xor l                                         ; $72ad: $ad
    db $10                                        ; $72ae: $10
    ld d, h                                       ; $72af: $54
    ld hl, $0000                                  ; $72b0: $21 $00 $00
    ld h, l                                       ; $72b3: $65
    ld [$10c9], sp                                ; $72b4: $08 $c9 $10
    ld b, e                                       ; $72b7: $43
    ld [$2000], sp                                ; $72b8: $08 $00 $20
    ldh a, [$15]                                  ; $72bb: $f0 $15
    ld [hl-], a                                   ; $72bd: $32
    ld [de], a                                    ; $72be: $12
    ld b, e                                       ; $72bf: $43
    ld [$2004], sp                                ; $72c0: $08 $04 $20

jr_0b4_72c3:
    inc [hl]                                      ; $72c3: $34
    ld c, [hl]                                    ; $72c4: $4e
    db $ed                                        ; $72c5: $ed
    inc [hl]                                      ; $72c6: $34
    rst $18                                       ; $72c7: $df
    ld e, a                                       ; $72c8: $5f
    dec h                                         ; $72c9: $25
    inc b                                         ; $72ca: $04
    ld e, e                                       ; $72cb: $5b
    ld b, a                                       ; $72cc: $47
    inc d                                         ; $72cd: $14
    ld h, $de                                     ; $72ce: $26 $de
    ld [hl], e                                    ; $72d0: $73
    nop                                           ; $72d1: $00
    nop                                           ; $72d2: $00
    adc b                                         ; $72d3: $88
    inc c                                         ; $72d4: $0c
    call z, Call_0b4_4514                         ; $72d5: $cc $14 $45
    inc b                                         ; $72d8: $04
    ld bc, $1b00                                  ; $72d9: $01 $00 $1b
    ld l, $ca                                     ; $72dc: $2e $ca
    db $10                                        ; $72de: $10
    rst $38                                       ; $72df: $ff
    ld d, [hl]                                    ; $72e0: $56
    ld bc, $b800                                  ; $72e1: $01 $00 $b8
    dec l                                         ; $72e4: $2d
    cp $52                                        ; $72e5: $fe $52
    xor h                                         ; $72e7: $ac
    stop                                          ; $72e8: $10 $00

jr_0b4_72ea:
    nop                                           ; $72ea: $00
    ld e, h                                       ; $72eb: $5c
    inc bc                                        ; $72ec: $03
    add a                                         ; $72ed: $87
    inc c                                         ; $72ee: $0c
    db $ec                                        ; $72ef: $ec
    inc d                                         ; $72f0: $14
    nop                                           ; $72f1: $00
    jr nz, jr_0b4_72c3                            ; $72f2: $20 $cf

    dec d                                         ; $72f4: $15
    ld e, h                                       ; $72f5: $5c
    inc bc                                        ; $72f6: $03
    ld d, e                                       ; $72f7: $53
    ld c, $01                                     ; $72f8: $0e $01
    jr nz, @+$7e                                  ; $72fa: $20 $7c

    ccf                                           ; $72fc: $3f
    sbc $6b                                       ; $72fd: $de $6b
    ld l, c                                       ; $72ff: $69
    inc l                                         ; $7300: $2c
    dec h                                         ; $7301: $25
    inc b                                         ; $7302: $04
    cp b                                          ; $7303: $b8
    ld a, [bc]                                    ; $7304: $0a
    ld a, [hl-]                                   ; $7305: $3a
    ld c, a                                       ; $7306: $4f
    ld e, h                                       ; $7307: $5c
    dec de                                        ; $7308: $1b
    ld [bc], a                                    ; $7309: $02
    nop                                           ; $730a: $00
    sub $2d                                       ; $730b: $d6 $2d
    call z, $bf14                                 ; $730d: $cc $14 $bf
    ld b, [hl]                                    ; $7310: $46
    ld hl, $1800                                  ; $7311: $21 $00 $18
    ld [hl-], a                                   ; $7314: $32
    sbc a                                         ; $7315: $9f
    ld c, d                                       ; $7316: $4a
    rst $38                                       ; $7317: $ff
    ld d, [hl]                                    ; $7318: $56
    nop                                           ; $7319: $00
    nop                                           ; $731a: $00
    ld d, d                                       ; $731b: $52
    add hl, de                                    ; $731c: $19
    ld a, [$de31]                                 ; $731d: $fa $31 $de
    ld c, d                                       ; $7320: $4a
    nop                                           ; $7321: $00
    nop                                           ; $7322: $00
    ld c, [hl]                                    ; $7323: $4e
    add hl, de                                    ; $7324: $19
    dec sp                                        ; $7325: $3b
    inc bc                                        ; $7326: $03
    add a                                         ; $7327: $87
    inc c                                         ; $7328: $0c
    ld b, d                                       ; $7329: $42
    nop                                           ; $732a: $00
    ld d, h                                       ; $732b: $54
    ld c, $be                                     ; $732c: $0e $be
    dec hl                                        ; $732e: $2b
    nop                                           ; $732f: $00
    jr nz, @+$48                                  ; $7330: $20 $46

    jr jr_0b4_736f                                ; $7332: $18 $3b

    inc hl                                        ; $7334: $23
    rst $38                                       ; $7335: $ff
    ld e, a                                       ; $7336: $5f
    ld [hl], b                                    ; $7337: $70
    add hl, de                                    ; $7338: $19
    inc b                                         ; $7339: $04
    inc b                                         ; $733a: $04
    ld a, l                                       ; $733b: $7d
    dec bc                                        ; $733c: $0b
    inc a                                         ; $733d: $3c
    inc hl                                        ; $733e: $23
    ld sp, hl                                     ; $733f: $f9
    ld b, d                                       ; $7340: $42
    ld [bc], a                                    ; $7341: $02
    nop                                           ; $7342: $00
    rst $10                                       ; $7343: $d7
    dec l                                         ; $7344: $2d
    adc c                                         ; $7345: $89
    inc c                                         ; $7346: $0c
    sbc a                                         ; $7347: $9f
    ld b, [hl]                                    ; $7348: $46
    ld bc, $3400                                  ; $7349: $01 $00 $34
    ld de, $20e5                                  ; $734c: $11 $e5 $20
    push af                                       ; $734f: $f5
    ld sp, $0000                                  ; $7350: $31 $00 $00
    ld e, l                                       ; $7353: $5d
    ld [hl], $cc                                  ; $7354: $36 $cc
    inc d                                         ; $7356: $14
    ccf                                           ; $7357: $3f
    ld e, a                                       ; $7358: $5f
    nop                                           ; $7359: $00
    nop                                           ; $735a: $00
    ld sp, hl                                     ; $735b: $f9
    ld [bc], a                                    ; $735c: $02
    dec bc                                        ; $735d: $0b
    ld hl, $035c                                  ; $735e: $21 $5c $03
    nop                                           ; $7361: $00
    inc e                                         ; $7362: $1c
    ld [hl], h                                    ; $7363: $74
    ld c, $de                                     ; $7364: $0e $de
    ld b, a                                       ; $7366: $47
    ld [$a901], sp                                ; $7367: $08 $01 $a9
    inc b                                         ; $736a: $04
    rst $38                                       ; $736b: $ff
    ld h, a                                       ; $736c: $67
    di                                            ; $736d: $f3
    dec e                                         ; $736e: $1d

jr_0b4_736f:
    dec de                                        ; $736f: $1b
    rrca                                          ; $7370: $0f
    ret c                                         ; $7371: $d8

    ld a, [bc]                                    ; $7372: $0a
    ld e, e                                       ; $7373: $5b
    ccf                                           ; $7374: $3f
    ld a, l                                       ; $7375: $7d
    rlca                                          ; $7376: $07
    sbc $6f                                       ; $7377: $de $6f
    ld b, l                                       ; $7379: $45
    inc b                                         ; $737a: $04
    cp b                                          ; $737b: $b8
    ld hl, $3e9e                                  ; $737c: $21 $9e $3e
    ld a, l                                       ; $737f: $7d
    inc bc                                        ; $7380: $03
    ld bc, $da00                                  ; $7381: $01 $00 $da
    dec h                                         ; $7384: $25
    ld e, a                                       ; $7385: $5f
    ld [hl], $9e                                  ; $7386: $36 $9e
    ld b, [hl]                                    ; $7388: $46
    nop                                           ; $7389: $00
    nop                                           ; $738a: $00
    ld a, e                                       ; $738b: $7b
    ld l, a                                       ; $738c: $6f
    inc b                                         ; $738d: $04
    ld a, [bc]                                    ; $738e: $0a
    xor b                                         ; $738f: $a8
    ld [$0022], sp                                ; $7390: $08 $22 $00
    or [hl]                                       ; $7393: $b6
    ld a, [bc]                                    ; $7394: $0a
    ld hl, sp+$5f                                 ; $7395: $f8 $5f
    ld b, l                                       ; $7397: $45
    ld c, $00                                     ; $7398: $0e $00
    inc e                                         ; $739a: $1c
    rst $10                                       ; $739b: $d7
    ld b, $df                                     ; $739c: $06 $df
    ld c, e                                       ; $739e: $4b
    ld [$0301], sp                                ; $739f: $08 $01 $03
    inc c                                         ; $73a2: $0c
    ld a, [de]                                    ; $73a3: $1a
    rlca                                          ; $73a4: $07
    rst $18                                       ; $73a5: $df
    ld d, a                                       ; $73a6: $57
    ld l, [hl]                                    ; $73a7: $6e
    dec c                                         ; $73a8: $0d
    sub a                                         ; $73a9: $97
    ld [bc], a                                    ; $73aa: $02
    sbc h                                         ; $73ab: $9c
    ld e, a                                       ; $73ac: $5f
    ld sp, hl                                     ; $73ad: $f9
    ld a, [hl+]                                   ; $73ae: $2a
    rst $38                                       ; $73af: $ff
    ld a, a                                       ; $73b0: $7f
    ld [bc], a                                    ; $73b1: $02
    nop                                           ; $73b2: $00
    ret c                                         ; $73b3: $d8

    ld [bc], a                                    ; $73b4: $02
    ld hl, sp+$31                                 ; $73b5: $f8 $31
    db $ed                                        ; $73b7: $ed
    inc d                                         ; $73b8: $14
    ld b, h                                       ; $73b9: $44
    inc b                                         ; $73ba: $04
    rst $10                                       ; $73bb: $d7
    add hl, hl                                    ; $73bc: $29
    sbc [hl]                                      ; $73bd: $9e
    ld b, [hl]                                    ; $73be: $46
    dec de                                        ; $73bf: $1b
    ld [hl-], a                                   ; $73c0: $32
    nop                                           ; $73c1: $00
    nop                                           ; $73c2: $00
    rst $10                                       ; $73c3: $d7
    dec l                                         ; $73c4: $2d
    xor e                                         ; $73c5: $ab
    inc c                                         ; $73c6: $0c
    cp a                                          ; $73c7: $bf
    ld b, d                                       ; $73c8: $42
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    sub [hl]                                      ; $73cb: $96
    ld [bc], a                                    ; $73cc: $02
    sbc h                                         ; $73cd: $9c
    ld e, e                                       ; $73ce: $5b
    ld [$0009], sp                                ; $73cf: $08 $09 $00
    inc e                                         ; $73d2: $1c
    ld d, e                                       ; $73d3: $53
    ld c, $be                                     ; $73d4: $0e $be
    ld b, e                                       ; $73d6: $43
    ld [$4401], sp                                ; $73d7: $08 $01 $44
    inc c                                         ; $73da: $0c
    inc sp                                        ; $73db: $33
    ld d, $ff                                     ; $73dc: $16 $ff
    ld a, a                                       ; $73de: $7f
    sbc [hl]                                      ; $73df: $9e
    rrca                                          ; $73e0: $0f
    or a                                          ; $73e1: $b7
    ld [bc], a                                    ; $73e2: $02
    ld e, e                                       ; $73e3: $5b
    ld c, e                                       ; $73e4: $4b
    ld e, h                                       ; $73e5: $5c
    inc bc                                        ; $73e6: $03
    rst $38                                       ; $73e7: $ff
    ld a, a                                       ; $73e8: $7f
    nop                                           ; $73e9: $00
    nop                                           ; $73ea: $00
    rla                                           ; $73eb: $17
    ld h, $9d                                     ; $73ec: $26 $9d
    ld e, a                                       ; $73ee: $5f
    db $ed                                        ; $73ef: $ed
    inc d                                         ; $73f0: $14
    cp b                                          ; $73f1: $b8
    ld hl, $427e                                  ; $73f2: $21 $7e $42
    inc a                                         ; $73f5: $3c
    ld [hl], $bf                                  ; $73f6: $36 $bf
    ld c, d                                       ; $73f8: $4a
    nop                                           ; $73f9: $00
    nop                                           ; $73fa: $00
    rra                                           ; $73fb: $1f
    ld d, a                                       ; $73fc: $57
    rst $38                                       ; $73fd: $ff
    ld a, a                                       ; $73fe: $7f
    dec bc                                        ; $73ff: $0b
    add hl, de                                    ; $7400: $19
    ld [hl+], a                                   ; $7401: $22
    nop                                           ; $7402: $00
    add hl, de                                    ; $7403: $19
    ld l, $b7                                     ; $7404: $2e $b7
    ld [bc], a                                    ; $7406: $02
    ld e, e                                       ; $7407: $5b
    inc bc                                        ; $7408: $03
    nop                                           ; $7409: $00
    inc e                                         ; $740a: $1c
    ld [hl-], a                                   ; $740b: $32
    ld c, $08                                     ; $740c: $0e $08
    ld bc, $1fbe                                  ; $740e: $01 $be $1f
    ld bc, $1214                                  ; $7411: $01 $14 $12
    ld [de], a                                    ; $7414: $12
    ld a, h                                       ; $7415: $7c
    rlca                                          ; $7416: $07
    add hl, bc                                    ; $7417: $09
    ld bc, $0296                                  ; $7418: $01 $96 $02
    dec sp                                        ; $741b: $3b
    inc bc                                        ; $741c: $03
    ld a, l                                       ; $741d: $7d
    inc bc                                        ; $741e: $03
    ld sp, hl                                     ; $741f: $f9
    ld [bc], a                                    ; $7420: $02
    nop                                           ; $7421: $00
    nop                                           ; $7422: $00
    sub l                                         ; $7423: $95
    ld a, [bc]                                    ; $7424: $0a
    cp l                                          ; $7425: $bd
    ld l, e                                       ; $7426: $6b
    ld l, b                                       ; $7427: $68
    inc b                                         ; $7428: $04
    ld sp, $1b15                                  ; $7429: $31 $15 $1b
    ld l, $7e                                     ; $742c: $2e $7e
    ld b, d                                       ; $742e: $42
    cp a                                          ; $742f: $bf
    ld c, d                                       ; $7430: $4a
    ld h, $00                                     ; $7431: $26 $00
    sbc l                                         ; $7433: $9d
    ld b, d                                       ; $7434: $42
    inc sp                                        ; $7435: $33
    dec d                                         ; $7436: $15
    rst $18                                       ; $7437: $df
    ld d, d                                       ; $7438: $52
    ld l, b                                       ; $7439: $68
    inc b                                         ; $743a: $04
    ld e, e                                       ; $743b: $5b
    ld a, $5b                                     ; $743c: $3e $5b
    inc bc                                        ; $743e: $03
    cpl                                           ; $743f: $2f
    dec e                                         ; $7440: $1d
    nop                                           ; $7441: $00
    inc e                                         ; $7442: $1c
    ld de, $0812                                  ; $7443: $11 $12 $08
    ld bc, $037c                                  ; $7446: $01 $7c $03
    nop                                           ; $7449: $00
    nop                                           ; $744a: $00
    add hl, bc                                    ; $744b: $09
    ld bc, $1212                                  ; $744c: $01 $12 $12
    nop                                           ; $744f: $00
    jr nz, jr_0b4_74c7                            ; $7450: $20 $75

    ld [bc], a                                    ; $7452: $02
    ld a, h                                       ; $7453: $7c
    inc bc                                        ; $7454: $03
    rst $10                                       ; $7455: $d7
    ld e, $f8                                     ; $7456: $1e $f8
    ld [bc], a                                    ; $7458: $02
    ld [hl+], a                                   ; $7459: $22
    nop                                           ; $745a: $00
    sub [hl]                                      ; $745b: $96
    ld [bc], a                                    ; $745c: $02
    ld hl, sp+$2a                                 ; $745d: $f8 $2a
    dec sp                                        ; $745f: $3b
    inc bc                                        ; $7460: $03
    nop                                           ; $7461: $00
    nop                                           ; $7462: $00
    inc a                                         ; $7463: $3c
    ld [hl-], a                                   ; $7464: $32
    call $be10                                    ; $7465: $cd $10 $be
    ld b, [hl]                                    ; $7468: $46
    rrca                                          ; $7469: $0f
    dec d                                         ; $746a: $15
    ld a, e                                       ; $746b: $7b
    ld b, d                                       ; $746c: $42
    cp $56                                        ; $746d: $fe $56
    or e                                          ; $746f: $b3
    add hl, hl                                    ; $7470: $29
    adc d                                         ; $7471: $8a
    ld [$02b7], sp                                ; $7472: $08 $b7 $02
    dec e                                         ; $7475: $1d
    ld e, e                                       ; $7476: $5b
    ld e, b                                       ; $7477: $58
    ld a, [hl+]                                   ; $7478: $2a
    nop                                           ; $7479: $00
    inc e                                         ; $747a: $1c
    ld de, $0812                                  ; $747b: $11 $12 $08
    ld bc, $035c                                  ; $747e: $01 $5c $03
    nop                                           ; $7481: $00
    jr jr_0b4_74b6                                ; $7482: $18 $32

    ld [de], a                                    ; $7484: $12
    ld [$3b01], sp                                ; $7485: $08 $01 $3b
    inc bc                                        ; $7488: $03
    rst $08                                       ; $7489: $cf
    dec d                                         ; $748a: $15
    ld e, e                                       ; $748b: $5b
    ld c, a                                       ; $748c: $4f
    or a                                          ; $748d: $b7
    ld [bc], a                                    ; $748e: $02
    rst $38                                       ; $748f: $ff
    ld a, e                                       ; $7490: $7b
    ld hl, $0e08                                  ; $7491: $21 $08 $0e
    ld b, d                                       ; $7494: $42
    ld e, h                                       ; $7495: $5c
    inc bc                                        ; $7496: $03
    ld d, h                                       ; $7497: $54
    add hl, de                                    ; $7498: $19
    nop                                           ; $7499: $00
    nop                                           ; $749a: $00
    inc a                                         ; $749b: $3c
    ld [hl], $ed                                  ; $749c: $36 $ed
    db $10                                        ; $749e: $10
    cp [hl]                                       ; $749f: $be
    ld b, d                                       ; $74a0: $42
    xor e                                         ; $74a1: $ab
    inc b                                         ; $74a2: $04
    ret c                                         ; $74a3: $d8

    dec l                                         ; $74a4: $2d
    cp [hl]                                       ; $74a5: $be
    ld b, [hl]                                    ; $74a6: $46
    jr nc, jr_0b4_74c2                            ; $74a7: $30 $19

    dec l                                         ; $74a9: $2d
    dec c                                         ; $74aa: $0d
    add hl, de                                    ; $74ab: $19

jr_0b4_74ac:
    scf                                           ; $74ac: $37
    sub [hl]                                      ; $74ad: $96
    ld a, [bc]                                    ; $74ae: $0a
    cp l                                          ; $74af: $bd
    ld h, a                                       ; $74b0: $67
    nop                                           ; $74b1: $00
    inc e                                         ; $74b2: $1c
    ld [hl-], a                                   ; $74b3: $32
    ld [de], a                                    ; $74b4: $12
    add hl, bc                                    ; $74b5: $09

jr_0b4_74b6:
    ld bc, $135c                                  ; $74b6: $01 $5c $13
    nop                                           ; $74b9: $00
    jr jr_0b4_74ac                                ; $74ba: $18 $f0

    ld de, $0108                                  ; $74bc: $11 $08 $01
    ld sp, hl                                     ; $74bf: $f9
    ld [bc], a                                    ; $74c0: $02
    rst $08                                       ; $74c1: $cf

jr_0b4_74c2:
    dec d                                         ; $74c2: $15
    cp [hl]                                       ; $74c3: $be
    ld l, a                                       ; $74c4: $6f
    ld hl, sp+$2e                                 ; $74c5: $f8 $2e

jr_0b4_74c7:
    sub l                                         ; $74c7: $95
    ld [bc], a                                    ; $74c8: $02
    nop                                           ; $74c9: $00
    inc b                                         ; $74ca: $04
    ld [hl], h                                    ; $74cb: $74
    ld [hl+], a                                   ; $74cc: $22
    ld e, d                                       ; $74cd: $5a
    ld l, e                                       ; $74ce: $6b

jr_0b4_74cf:
    dec l                                         ; $74cf: $2d
    dec e                                         ; $74d0: $1d
    ld bc, $1a00                                  ; $74d1: $01 $00 $1a
    ld l, $bf                                     ; $74d4: $2e $bf
    ld b, [hl]                                    ; $74d6: $46
    call z, $8b10                                 ; $74d7: $cc $10 $8b
    inc b                                         ; $74da: $04
    inc a                                         ; $74db: $3c
    ld a, [hl-]                                   ; $74dc: $3a
    ld e, h                                       ; $74dd: $5c
    inc bc                                        ; $74de: $03
    rst $18                                       ; $74df: $df
    ld c, [hl]                                    ; $74e0: $4e
    adc [hl]                                      ; $74e1: $8e
    ld de, $02b7                                  ; $74e2: $11 $b7 $02
    ld e, d                                       ; $74e5: $5a
    ld b, e                                       ; $74e6: $43
    ld e, h                                       ; $74e7: $5c
    inc bc                                        ; $74e8: $03
    ld b, h                                       ; $74e9: $44
    nop                                           ; $74ea: $00
    ld a, [hl-]                                   ; $74eb: $3a
    dec bc                                        ; $74ec: $0b
    nop                                           ; $74ed: $00
    jr nz, jr_0b4_74cf                            ; $74ee: $20 $df

    ld c, e                                       ; $74f0: $4b
    nop                                           ; $74f1: $00
    nop                                           ; $74f2: $00
    ld [hl-], a                                   ; $74f3: $32
    ld c, $7c                                     ; $74f4: $0e $7c
    inc bc                                        ; $74f6: $03
    nop                                           ; $74f7: $00
    jr nz, jr_0b4_74fa                            ; $74f8: $20 $00

jr_0b4_74fa:
    nop                                           ; $74fa: $00
    ld de, $3a0a                                  ; $74fb: $11 $0a $3a
    inc bc                                        ; $74fe: $03
    ld [$0001], sp                                ; $74ff: $08 $01 $00
    nop                                           ; $7502: $00
    xor l                                         ; $7503: $ad
    dec [hl]                                      ; $7504: $35
    cp l                                          ; $7505: $bd
    ld [hl], a                                    ; $7506: $77
    sub h                                         ; $7507: $94
    ld d, d                                       ; $7508: $52
    nop                                           ; $7509: $00
    nop                                           ; $750a: $00
    sbc l                                         ; $750b: $9d
    ld b, d                                       ; $750c: $42
    ld c, $19                                     ; $750d: $0e $19
    rst $38                                       ; $750f: $ff
    ld a, a                                       ; $7510: $7f
    ld [hl+], a                                   ; $7511: $22
    nop                                           ; $7512: $00
    or [hl]                                       ; $7513: $b6

jr_0b4_7514:
    ld b, $73                                     ; $7514: $06 $73
    ld hl, $3abb                                  ; $7516: $21 $bb $3a
    dec bc                                        ; $7519: $0b
    dec b                                         ; $751a: $05
    ld sp, hl                                     ; $751b: $f9
    ld [bc], a                                    ; $751c: $02
    ld a, l                                       ; $751d: $7d
    inc bc                                        ; $751e: $03
    pop af                                        ; $751f: $f1
    add hl, de                                    ; $7520: $19
    ld [bc], a                                    ; $7521: $02
    nop                                           ; $7522: $00
    ld sp, hl                                     ; $7523: $f9
    ld b, $be                                     ; $7524: $06 $be
    inc hl                                        ; $7526: $23
    nop                                           ; $7527: $00
    jr nz, jr_0b4_752a                            ; $7528: $20 $00

jr_0b4_752a:
    nop                                           ; $752a: $00
    ldh a, [rNR11]                                ; $752b: $f0 $11
    add hl, de                                    ; $752d: $19
    rlca                                          ; $752e: $07
    nop                                           ; $752f: $00
    jr nz, jr_0b4_7532                            ; $7530: $20 $00

jr_0b4_7532:
    nop                                           ; $7532: $00

jr_0b4_7533:
    rst $08                                       ; $7533: $cf
    dec d                                         ; $7534: $15
    rst $20                                       ; $7535: $e7
    db $10                                        ; $7536: $10
    sbc l                                         ; $7537: $9d
    inc bc                                        ; $7538: $03
    ld hl, $7304                                  ; $7539: $21 $04 $73
    ld c, [hl]                                    ; $753c: $4e
    cp l                                          ; $753d: $bd
    ld [hl], a                                    ; $753e: $77
    rst $20                                       ; $753f: $e7
    inc e                                         ; $7540: $1c
    ld [hl+], a                                   ; $7541: $22
    inc b                                         ; $7542: $04
    rla                                           ; $7543: $17
    ld [hl], $ff                                  ; $7544: $36 $ff
    ld a, a                                       ; $7546: $7f
    sbc l                                         ; $7547: $9d
    ld a, $00                                     ; $7548: $3e $00
    nop                                           ; $754a: $00
    dec [hl]                                      ; $754b: $35

jr_0b4_754c:
    ld a, [hl+]                                   ; $754c: $2a
    ld a, h                                       ; $754d: $7c
    ld e, a                                       ; $754e: $5f
    inc c                                         ; $754f: $0c
    dec e                                         ; $7550: $1d
    ret                                           ; $7551: $c9


    ld [$19f2], sp                                ; $7552: $08 $f2 $19
    ld a, h                                       ; $7555: $7c
    ld d, e                                       ; $7556: $53
    ret c                                         ; $7557: $d8

    ld b, $00                                     ; $7558: $06 $00
    jr nz, jr_0b4_7514                            ; $755a: $20 $b8

    ld c, $bf                                     ; $755c: $0e $bf
    inc sp                                        ; $755e: $33
    ld e, h                                       ; $755f: $5c
    inc bc                                        ; $7560: $03
    nop                                           ; $7561: $00
    jr nz, jr_0b4_7533                            ; $7562: $20 $cf

    dec d                                         ; $7564: $15
    ld hl, sp+$06                                 ; $7565: $f8 $06
    ld d, e                                       ; $7567: $53
    ld [de], a                                    ; $7568: $12

jr_0b4_7569:
    nop                                           ; $7569: $00
    nop                                           ; $756a: $00

jr_0b4_756b:
    ld [$4a21], sp                                ; $756b: $08 $21 $4a
    dec h                                         ; $756e: $25
    ld l, e                                       ; $756f: $6b
    dec l                                         ; $7570: $2d
    nop                                           ; $7571: $00
    nop                                           ; $7572: $00
    ld sp, $7b46                                  ; $7573: $31 $46 $7b
    ld l, a                                       ; $7576: $6f
    rst $20                                       ; $7577: $e7
    inc e                                         ; $7578: $1c
    nop                                           ; $7579: $00
    nop                                           ; $757a: $00
    or a                                          ; $757b: $b7
    ld d, d                                       ; $757c: $52
    rst $38                                       ; $757d: $ff
    ld a, a                                       ; $757e: $7f
    inc c                                         ; $757f: $0c
    add hl, de                                    ; $7580: $19
    ld [bc], a                                    ; $7581: $02
    inc b                                         ; $7582: $04
    or a                                          ; $7583: $b7

jr_0b4_7584:
    ld a, [bc]                                    ; $7584: $0a
    sub $5a                                       ; $7585: $d6 $5a
    rst $38                                       ; $7587: $ff
    ld a, a                                       ; $7588: $7f
    db $ec                                        ; $7589: $ec
    inc c                                         ; $758a: $0c
    ld e, h                                       ; $758b: $5c
    cpl                                           ; $758c: $2f
    halt                                          ; $758d: $76
    ld [de], a                                    ; $758e: $12
    sbc $73                                       ; $758f: $de $73
    nop                                           ; $7591: $00
    jr nz, jr_0b4_754c                            ; $7592: $20 $b8

    ld [de], a                                    ; $7594: $12
    inc bc                                        ; $7595: $03
    jr nz, jr_0b4_75f4                            ; $7596: $20 $5c

    rlca                                          ; $7598: $07
    nop                                           ; $7599: $00
    jr nz, jr_0b4_756b                            ; $759a: $20 $cf

    dec d                                         ; $759c: $15
    sub l                                         ; $759d: $95
    ld c, $32                                     ; $759e: $0e $32
    ld [de], a                                    ; $75a0: $12
    nop                                           ; $75a1: $00
    nop                                           ; $75a2: $00
    ld l, e                                       ; $75a3: $6b
    dec l                                         ; $75a4: $2d
    ret c                                         ; $75a5: $d8

    ld b, $ce                                     ; $75a6: $06 $ce
    add hl, sp                                    ; $75a8: $39
    nop                                           ; $75a9: $00
    nop                                           ; $75aa: $00
    sub $5a                                       ; $75ab: $d6 $5a
    rst $20                                       ; $75ad: $e7
    inc e                                         ; $75ae: $1c
    ld l, e                                       ; $75af: $6b
    dec l                                         ; $75b0: $2d
    inc bc                                        ; $75b1: $03
    nop                                           ; $75b2: $00
    cp l                                          ; $75b3: $bd
    ld [hl], a                                    ; $75b4: $77
    ld a, [hl]                                    ; $75b5: $7e
    ld [$2106], sp                                ; $75b6: $08 $06 $21
    inc hl                                        ; $75b9: $23
    inc b                                         ; $75ba: $04
    ld d, d                                       ; $75bb: $52
    ld c, d                                       ; $75bc: $4a
    push de                                       ; $75bd: $d5
    inc d                                         ; $75be: $14
    ld a, d                                       ; $75bf: $7a
    ld l, a                                       ; $75c0: $6f
    adc c                                         ; $75c1: $89
    db $10                                        ; $75c2: $10
    ld d, h                                       ; $75c3: $54
    ld [hl], $1b                                  ; $75c4: $36 $1b
    rla                                           ; $75c6: $17
    dec sp                                        ; $75c7: $3b
    ccf                                           ; $75c8: $3f
    nop                                           ; $75c9: $00

jr_0b4_75ca:
    jr nz, jr_0b4_7584                            ; $75ca: $20 $b8

    ld h, $25                                     ; $75cc: $26 $25
    inc h                                         ; $75ce: $24
    adc d                                         ; $75cf: $8a
    jr z, jr_0b4_75d2                             ; $75d0: $28 $00

jr_0b4_75d2:
    jr nz, jr_0b4_7569                            ; $75d2: $20 $95

    ld c, $7c                                     ; $75d4: $0e $7c
    inc bc                                        ; $75d6: $03
    ld l, e                                       ; $75d7: $6b
    dec l                                         ; $75d8: $2d
    ld b, d                                       ; $75d9: $42
    ld [$11f0], sp                                ; $75da: $08 $f0 $11
    or l                                          ; $75dd: $b5
    ld d, [hl]                                    ; $75de: $56
    xor l                                         ; $75df: $ad
    dec [hl]                                      ; $75e0: $35
    nop                                           ; $75e1: $00
    nop                                           ; $75e2: $00
    ld c, d                                       ; $75e3: $4a
    add hl, hl                                    ; $75e4: $29
    ld d, d                                       ; $75e5: $52
    ld c, d                                       ; $75e6: $4a
    add h                                         ; $75e7: $84
    db $10                                        ; $75e8: $10
    inc hl                                        ; $75e9: $23
    nop                                           ; $75ea: $00
    sub [hl]                                      ; $75eb: $96
    ld d, [hl]                                    ; $75ec: $56
    inc a                                         ; $75ed: $3c
    nop                                           ; $75ee: $00
    ld c, d                                       ; $75ef: $4a
    dec l                                         ; $75f0: $2d
    inc hl                                        ; $75f1: $23
    inc b                                         ; $75f2: $04
    ld l, [hl]                                    ; $75f3: $6e

jr_0b4_75f4:
    dec l                                         ; $75f4: $2d
    inc a                                         ; $75f5: $3c
    nop                                           ; $75f6: $00
    ld [hl], l                                    ; $75f7: $75
    ld c, [hl]                                    ; $75f8: $4e
    dec c                                         ; $75f9: $0d
    add hl, de                                    ; $75fa: $19
    dec sp                                        ; $75fb: $3b
    ld d, e                                       ; $75fc: $53
    cp l                                          ; $75fd: $bd
    ld [hl], e                                    ; $75fe: $73
    inc de                                        ; $75ff: $13
    ld a, $00                                     ; $7600: $3e $00
    jr nz, jr_0b4_7653                            ; $7602: $20 $4f

jr_0b4_7604:
    dec a                                         ; $7604: $3d
    daa                                           ; $7605: $27
    inc h                                         ; $7606: $24
    ld a, h                                       ; $7607: $7c
    ld b, e                                       ; $7608: $43
    nop                                           ; $7609: $00
    jr nz, jr_0b4_75ca                            ; $760a: $20 $be

    dec hl                                        ; $760c: $2b
    rst $38                                       ; $760d: $ff
    ld e, a                                       ; $760e: $5f
    add h                                         ; $760f: $84

jr_0b4_7610:
    stop                                          ; $7610: $10 $00
    nop                                           ; $7612: $00
    rst $10                                       ; $7613: $d7
    ld c, $b5                                     ; $7614: $0e $b5
    ld d, [hl]                                    ; $7616: $56
    add hl, hl                                    ; $7617: $29
    dec h                                         ; $7618: $25
    ld b, d                                       ; $7619: $42
    ld [$2108], sp                                ; $761a: $08 $08 $21
    ld d, d                                       ; $761d: $52
    ld c, d                                       ; $761e: $4a
    ld l, e                                       ; $761f: $6b
    dec l                                         ; $7620: $2d
    nop                                           ; $7621: $00
    nop                                           ; $7622: $00
    xor l                                         ; $7623: $ad
    dec [hl]                                      ; $7624: $35
    dec sp                                        ; $7625: $3b
    nop                                           ; $7626: $00
    sbc b                                         ; $7627: $98
    ld a, [bc]                                    ; $7628: $0a
    ld bc, $8f00                                  ; $7629: $01 $00 $8f
    ld sp, $5b7c                                  ; $762c: $31 $7c $5b
    ret z                                         ; $762f: $c8

    jr jr_0b4_7604                                ; $7630: $18 $d2

    add hl, sp                                    ; $7632: $39
    ld a, h                                       ; $7633: $7c
    ld e, a                                       ; $7634: $5f
    sbc $7b                                       ; $7635: $de $7b
    halt                                          ; $7637: $76
    ld c, [hl]                                    ; $7638: $4e
    nop                                           ; $7639: $00
    jr nz, jr_0b4_768b                            ; $763a: $20 $4f

    dec a                                         ; $763c: $3d
    cp [hl]                                       ; $763d: $be
    ccf                                           ; $763e: $3f
    ld h, $24                                     ; $763f: $26 $24
    nop                                           ; $7641: $00
    jr nz, jr_0b4_764c                            ; $7642: $20 $08

    ld hl, $4a52                                  ; $7644: $21 $52 $4a
    ld l, e                                       ; $7647: $6b
    dec l                                         ; $7648: $2d
    nop                                           ; $7649: $00
    nop                                           ; $764a: $00
    cp [hl]                                       ; $764b: $be

jr_0b4_764c:
    inc de                                        ; $764c: $13
    rst $18                                       ; $764d: $df
    ld h, e                                       ; $764e: $63
    add hl, hl                                    ; $764f: $29
    dec h                                         ; $7650: $25
    nop                                           ; $7651: $00
    nop                                           ; $7652: $00

jr_0b4_7653:
    sub h                                         ; $7653: $94
    ld d, d                                       ; $7654: $52
    ld [$6b21], sp                                ; $7655: $08 $21 $6b
    ld sp, $0000                                  ; $7658: $31 $00 $00
    cp h                                          ; $765b: $bc
    ld [hl], a                                    ; $765c: $77
    call Call_0b4_5e18                            ; $765d: $cd $18 $5e
    dec de                                        ; $7660: $1b
    ld [bc], a                                    ; $7661: $02
    nop                                           ; $7662: $00
    ld d, e                                       ; $7663: $53
    ld c, d                                       ; $7664: $4a
    jp hl                                         ; $7665: $e9


    inc e                                         ; $7666: $1c
    cp $3d                                        ; $7667: $fe $3d
    ld l, c                                       ; $7669: $69
    inc c                                         ; $766a: $0c
    sbc $3f                                       ; $766b: $de $3f
    ld l, a                                       ; $766d: $6f
    dec h                                         ; $766e: $25
    rst $38                                       ; $766f: $ff
    ld l, e                                       ; $7670: $6b
    nop                                           ; $7671: $00
    jr nz, jr_0b4_76bc                            ; $7672: $20 $48

    inc h                                         ; $7674: $24
    ld c, $39                                     ; $7675: $0e $39
    inc bc                                        ; $7677: $03
    jr nz, jr_0b4_767a                            ; $7678: $20 $00

jr_0b4_767a:
    jr nz, jr_0b4_7610                            ; $767a: $20 $94

    ld d, d                                       ; $767c: $52
    ld [$6b21], sp                                ; $767d: $08 $21 $6b
    ld sp, $0821                                  ; $7680: $31 $21 $08
    cp [hl]                                       ; $7683: $be
    scf                                           ; $7684: $37
    rst $38                                       ; $7685: $ff
    ld l, e                                       ; $7686: $6b
    and l                                         ; $7687: $a5
    inc d                                         ; $7688: $14
    nop                                           ; $7689: $00
    inc b                                         ; $768a: $04

jr_0b4_768b:
    ld l, e                                       ; $768b: $6b
    dec l                                         ; $768c: $2d
    rst $30                                       ; $768d: $f7
    ld h, d                                       ; $768e: $62
    xor l                                         ; $768f: $ad
    add hl, sp                                    ; $7690: $39
    inc b                                         ; $7691: $04
    nop                                           ; $7692: $00
    or a                                          ; $7693: $b7
    ld [hl+], a                                   ; $7694: $22
    ld [$df19], sp                                ; $7695: $08 $19 $df
    ccf                                           ; $7698: $3f
    ld bc, $af00                                  ; $7699: $01 $00 $af
    dec [hl]                                      ; $769c: $35
    ld a, [hl-]                                   ; $769d: $3a
    nop                                           ; $769e: $00
    and l                                         ; $769f: $a5
    inc d                                         ; $76a0: $14
    adc c                                         ; $76a1: $89
    db $10                                        ; $76a2: $10
    cp a                                          ; $76a3: $bf
    cpl                                           ; $76a4: $2f
    rst $38                                       ; $76a5: $ff
    ld [hl], e                                    ; $76a6: $73
    adc d                                         ; $76a7: $8a
    inc l                                         ; $76a8: $2c
    nop                                           ; $76a9: $00
    jr nz, jr_0b4_76b0                            ; $76aa: $20 $04

    inc h                                         ; $76ac: $24
    ld [bc], a                                    ; $76ad: $02
    jr nz, jr_0b4_76d6                            ; $76ae: $20 $26

jr_0b4_76b0:
    inc h                                         ; $76b0: $24
    nop                                           ; $76b1: $00
    jr nz, jr_0b4_771f                            ; $76b2: $20 $6b

    dec l                                         ; $76b4: $2d
    rst $30                                       ; $76b5: $f7
    ld h, d                                       ; $76b6: $62
    xor l                                         ; $76b7: $ad
    add hl, sp                                    ; $76b8: $39
    nop                                           ; $76b9: $00
    nop                                           ; $76ba: $00
    sbc l                                         ; $76bb: $9d

jr_0b4_76bc:
    rrca                                          ; $76bc: $0f

jr_0b4_76bd:
    rst $38                                       ; $76bd: $ff
    ld h, e                                       ; $76be: $63
    ld h, e                                       ; $76bf: $63
    jr jr_0b4_76c2                                ; $76c0: $18 $00

jr_0b4_76c2:
    inc b                                         ; $76c2: $04
    add hl, hl                                    ; $76c3: $29
    add hl, hl                                    ; $76c4: $29
    or l                                          ; $76c5: $b5
    ld d, [hl]                                    ; $76c6: $56
    adc h                                         ; $76c7: $8c

jr_0b4_76c8:
    ld sp, $0000                                  ; $76c8: $31 $00 $00
    ld de, $5312                                  ; $76cb: $11 $12 $53
    ld [de], a                                    ; $76ce: $12
    ld [hl], h                                    ; $76cf: $74

jr_0b4_76d0:
    ld c, $01                                     ; $76d0: $0e $01
    nop                                           ; $76d2: $00
    ld de, $7c12                                  ; $76d3: $11 $12 $7c

jr_0b4_76d6:
    inc bc                                        ; $76d6: $03
    rst $38                                       ; $76d7: $ff

jr_0b4_76d8:
    inc sp                                        ; $76d8: $33
    dec h                                         ; $76d9: $25
    inc c                                         ; $76da: $0c
    halt                                          ; $76db: $76
    ld [de], a                                    ; $76dc: $12
    rst $18                                       ; $76dd: $df
    ld e, e                                       ; $76de: $5b
    sbc [hl]                                      ; $76df: $9e

jr_0b4_76e0:
    rrca                                          ; $76e0: $0f
    nop                                           ; $76e1: $00
    jr nz, @+$05                                  ; $76e2: $20 $03

    jr nz, jr_0b4_772c                            ; $76e4: $20 $46

    jr z, @+$03                                   ; $76e6: $28 $01

    jr nz, jr_0b4_76ea                            ; $76e8: $20 $00

jr_0b4_76ea:
    jr nz, jr_0b4_7715                            ; $76ea: $20 $29

    add hl, hl                                    ; $76ec: $29
    or l                                          ; $76ed: $b5
    ld d, [hl]                                    ; $76ee: $56
    adc h                                         ; $76ef: $8c
    ld sp, $2000                                  ; $76f0: $31 $00 $20
    ld d, e                                       ; $76f3: $53
    ld [de], a                                    ; $76f4: $12
    rst $18                                       ; $76f5: $df
    ld d, a                                       ; $76f6: $57
    ld a, l                                       ; $76f7: $7d
    dec bc                                        ; $76f8: $0b
    ld de, $df16                                  ; $76f9: $11 $16 $df

jr_0b4_76fc:
    ld e, a                                       ; $76fc: $5f
    ld e, h                                       ; $76fd: $5c
    rlca                                          ; $76fe: $07
    cp a                                          ; $76ff: $bf
    daa                                           ; $7700: $27
    ld de, $7412                                  ; $7701: $11 $12 $74

jr_0b4_7704:
    ld c, $b6                                     ; $7704: $0e $b6
    ld c, $32                                     ; $7706: $0e $32
    ld [de], a                                    ; $7708: $12
    rst $10                                       ; $7709: $d7
    ld a, [bc]                                    ; $770a: $0a
    rst $18                                       ; $770b: $df

jr_0b4_770c:
    dec sp                                        ; $770c: $3b
    rst $38                                       ; $770d: $ff
    ld l, a                                       ; $770e: $6f
    ld a, l                                       ; $770f: $7d
    dec bc                                        ; $7710: $0b
    inc bc                                        ; $7711: $03
    jr nz, jr_0b4_7726                            ; $7712: $20 $12

    ld [de], a                                    ; $7714: $12

jr_0b4_7715:
    rst $18                                       ; $7715: $df
    ld d, a                                       ; $7716: $57
    ld e, e                                       ; $7717: $5b
    rrca                                          ; $7718: $0f

jr_0b4_7719:
    nop                                           ; $7719: $00
    jr nz, jr_0b4_771e                            ; $771a: $20 $02

    jr nz, jr_0b4_7741                            ; $771c: $20 $23

jr_0b4_771e:
    inc h                                         ; $771e: $24

jr_0b4_771f:
    ld bc, $0020                                  ; $771f: $01 $20 $00
    jr nz, jr_0b4_76bd                            ; $7722: $20 $99

    ld l, $45                                     ; $7724: $2e $45

jr_0b4_7726:
    nop                                           ; $7726: $00
    xor e                                         ; $7727: $ab
    ld c, c                                       ; $7728: $49
    nop                                           ; $7729: $00
    jr nz, jr_0b4_7719                            ; $772a: $20 $ed

jr_0b4_772c:
    nop                                           ; $772c: $00
    ld a, b                                       ; $772d: $78
    ld a, [hl+]                                   ; $772e: $2a
    ld b, l                                       ; $772f: $45
    nop                                           ; $7730: $00
    nop                                           ; $7731: $00
    jr nz, @-$11                                  ; $7732: $20 $ed

    nop                                           ; $7734: $00
    ld a, b                                       ; $7735: $78
    ld a, [hl+]                                   ; $7736: $2a
    ld b, l                                       ; $7737: $45
    nop                                           ; $7738: $00
    nop                                           ; $7739: $00

jr_0b4_773a:
    nop                                           ; $773a: $00
    rst $38                                       ; $773b: $ff
    ld a, a                                       ; $773c: $7f
    nop                                           ; $773d: $00
    jr nz, jr_0b4_76c8                            ; $773e: $20 $88

    nop                                           ; $7740: $00

jr_0b4_7741:
    nop                                           ; $7741: $00
    jr nz, @+$01                                  ; $7742: $20 $ff

    ld a, a                                       ; $7744: $7f
    nop                                           ; $7745: $00
    jr nz, jr_0b4_76d0                            ; $7746: $20 $88

    nop                                           ; $7748: $00

jr_0b4_7749:
    nop                                           ; $7749: $00
    jr nz, @+$01                                  ; $774a: $20 $ff

    ld a, a                                       ; $774c: $7f
    nop                                           ; $774d: $00
    jr nz, jr_0b4_76d8                            ; $774e: $20 $88

    nop                                           ; $7750: $00
    nop                                           ; $7751: $00
    jr nz, jr_0b4_77ab                            ; $7752: $20 $57

    ld h, $00                                     ; $7754: $26 $00
    jr nz, jr_0b4_76e0                            ; $7756: $20 $88

    nop                                           ; $7758: $00
    nop                                           ; $7759: $00
    jr nz, jr_0b4_7749                            ; $775a: $20 $ed

    nop                                           ; $775c: $00
    ld b, l                                       ; $775d: $45
    nop                                           ; $775e: $00
    ld d, $22                                     ; $775f: $16 $22
    inc hl                                        ; $7761: $23
    ld [$1590], sp                                ; $7762: $08 $90 $15
    dec c                                         ; $7765: $0d
    dec b                                         ; $7766: $05
    cp d                                          ; $7767: $ba
    ld l, $00                                     ; $7768: $2e $00
    jr nz, jr_0b4_76fc                            ; $776a: $20 $90

    dec d                                         ; $776c: $15
    dec c                                         ; $776d: $0d
    dec b                                         ; $776e: $05
    cp d                                          ; $776f: $ba
    ld l, $00                                     ; $7770: $2e $00
    inc b                                         ; $7772: $04
    rst $38                                       ; $7773: $ff
    daa                                           ; $7774: $27
    ld [$ff04], a                                 ; $7775: $ea $04 $ff
    ld a, a                                       ; $7778: $7f
    nop                                           ; $7779: $00
    jr nz, jr_0b4_7704                            ; $777a: $20 $88

    nop                                           ; $777c: $00

jr_0b4_777d:
    rst $08                                       ; $777d: $cf
    ld de, $7fff                                  ; $777e: $11 $ff $7f
    nop                                           ; $7781: $00
    jr nz, jr_0b4_770c                            ; $7782: $20 $88

    nop                                           ; $7784: $00

jr_0b4_7785:
    rst $08                                       ; $7785: $cf
    ld de, $7fff                                  ; $7786: $11 $ff $7f

jr_0b4_7789:
    nop                                           ; $7789: $00
    jr nz, jr_0b4_77e3                            ; $778a: $20 $57

    ld h, $a8                                     ; $778c: $26 $a8
    nop                                           ; $778e: $00
    ld b, e                                       ; $778f: $43
    inc d                                         ; $7790: $14
    nop                                           ; $7791: $00
    jr nz, jr_0b4_77d9                            ; $7792: $20 $45

    nop                                           ; $7794: $00
    db $ed                                        ; $7795: $ed
    nop                                           ; $7796: $00
    cp d                                          ; $7797: $ba
    ld l, $00                                     ; $7798: $2e $00
    jr nz, jr_0b4_7789                            ; $779a: $20 $ed

    nop                                           ; $779c: $00
    ld h, [hl]                                    ; $779d: $66
    nop                                           ; $779e: $00
    sub d                                         ; $779f: $92
    ld de, $0000                                  ; $77a0: $11 $00 $00
    rst $38                                       ; $77a3: $ff
    ld a, a                                       ; $77a4: $7f
    nop                                           ; $77a5: $00
    jr nz, jr_0b4_773a                            ; $77a6: $20 $92

    ld de, $0022                                  ; $77a8: $11 $22 $00

jr_0b4_77ab:
    rst $38                                       ; $77ab: $ff
    daa                                           ; $77ac: $27
    ld d, b                                       ; $77ad: $50
    nop                                           ; $77ae: $00
    rst $38                                       ; $77af: $ff
    ld a, a                                       ; $77b0: $7f
    nop                                           ; $77b1: $00
    jr nz, jr_0b4_7806                            ; $77b2: $20 $52

    ld d, $20                                     ; $77b4: $16 $20
    ld [bc], a                                    ; $77b6: $02
    rst $38                                       ; $77b7: $ff
    daa                                           ; $77b8: $27
    nop                                           ; $77b9: $00
    jr nz, @+$01                                  ; $77ba: $20 $ff

    daa                                           ; $77bc: $27
    add $00                                       ; $77bd: $c6 $00
    ret nc                                        ; $77bf: $d0

    ld de, $2000                                  ; $77c0: $11 $00 $20
    xor b                                         ; $77c3: $a8
    nop                                           ; $77c4: $00
    ld l, a                                       ; $77c5: $6f
    dec d                                         ; $77c6: $15
    ld d, a                                       ; $77c7: $57
    ld h, $00                                     ; $77c8: $26 $00
    jr nz, jr_0b4_777d                            ; $77ca: $20 $b1

    dec e                                         ; $77cc: $1d
    cp d                                          ; $77cd: $ba
    ld l, $45                                     ; $77ce: $2e $45
    nop                                           ; $77d0: $00
    nop                                           ; $77d1: $00
    jr nz, jr_0b4_7785                            ; $77d2: $20 $b1

    dec d                                         ; $77d4: $15
    rst $38                                       ; $77d5: $ff
    dec hl                                        ; $77d6: $2b
    ld b, [hl]                                    ; $77d7: $46
    nop                                           ; $77d8: $00

jr_0b4_77d9:
    ld [hl+], a                                   ; $77d9: $22
    nop                                           ; $77da: $00
    rst $38                                       ; $77db: $ff
    ld a, a                                       ; $77dc: $7f
    or [hl]                                       ; $77dd: $b6
    ld bc, $2000                                  ; $77de: $01 $00 $20
    add b                                         ; $77e1: $80
    nop                                           ; $77e2: $00

jr_0b4_77e3:
    stop                                          ; $77e3: $10 $00
    adc b                                         ; $77e5: $88
    nop                                           ; $77e6: $00
    ld d, a                                       ; $77e7: $57
    ld h, $80                                     ; $77e8: $26 $80
    nop                                           ; $77ea: $00
    add b                                         ; $77eb: $80
    ld bc, $0280                                  ; $77ec: $01 $80 $02
    nop                                           ; $77ef: $00
    ld [bc], a                                    ; $77f0: $02
    ld h, [hl]                                    ; $77f1: $66
    inc b                                         ; $77f2: $04
    rst $38                                       ; $77f3: $ff
    daa                                           ; $77f4: $27
    ld h, b                                       ; $77f5: $60
    ld [bc], a                                    ; $77f6: $02
    pop de                                        ; $77f7: $d1
    ld de, $2000                                  ; $77f8: $11 $00 $20
    xor b                                         ; $77fb: $a8
    nop                                           ; $77fc: $00
    db $d3                                        ; $77fd: $d3
    dec e                                         ; $77fe: $1d
    ld b, h                                       ; $77ff: $44
    nop                                           ; $7800: $00
    nop                                           ; $7801: $00
    inc e                                         ; $7802: $1c
    db $ed                                        ; $7803: $ed
    nop                                           ; $7804: $00
    cp d                                          ; $7805: $ba

jr_0b4_7806:
    ld l, $b1                                     ; $7806: $2e $b1
    add hl, de                                    ; $7808: $19
    nop                                           ; $7809: $00
    jr nz, @-$11                                  ; $780a: $20 $ed

    nop                                           ; $780c: $00
    ld h, [hl]                                    ; $780d: $66
    nop                                           ; $780e: $00
    or d                                          ; $780f: $b2
    dec c                                         ; $7810: $0d
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    rst $38                                       ; $7813: $ff
    dec hl                                        ; $7814: $2b
    rst $38                                       ; $7815: $ff
    ld a, a                                       ; $7816: $7f
    inc l                                         ; $7817: $2c
    nop                                           ; $7818: $00
    and [hl]                                      ; $7819: $a6
    nop                                           ; $781a: $00
    rst $38                                       ; $781b: $ff
    dec de                                        ; $781c: $1b
    jp Jump_000_1060                              ; $781d: $c3 $60 $10


    nop                                           ; $7820: $00
    add b                                         ; $7821: $80
    nop                                           ; $7822: $00
    inc b                                         ; $7823: $04
    ld [hl], l                                    ; $7824: $75
    jr nz, jr_0b4_7857                            ; $7825: $20 $30

    jp nz, $8444                                  ; $7827: $c2 $44 $84

    nop                                           ; $782a: $00
    rst $38                                       ; $782b: $ff
    daa                                           ; $782c: $27
    jp nc, $c015                                  ; $782d: $d2 $15 $c0

    ld bc, $2000                                  ; $7830: $01 $00 $20
    xor c                                         ; $7833: $a9
    nop                                           ; $7834: $00

jr_0b4_7835:
    or d                                          ; $7835: $b2
    add hl, de                                    ; $7836: $19
    ld b, h                                       ; $7837: $44
    nop                                           ; $7838: $00
    nop                                           ; $7839: $00
    jr nz, @-$11                                  ; $783a: $20 $ed

jr_0b4_783c:
    nop                                           ; $783c: $00
    ld b, l                                       ; $783d: $45
    nop                                           ; $783e: $00
    or d                                          ; $783f: $b2
    dec d                                         ; $7840: $15
    nop                                           ; $7841: $00
    nop                                           ; $7842: $00
    nop                                           ; $7843: $00
    jr nz, jr_0b4_788b                            ; $7844: $20 $45

    nop                                           ; $7846: $00
    adc b                                         ; $7847: $88
    nop                                           ; $7848: $00
    ld b, h                                       ; $7849: $44
    nop                                           ; $784a: $00
    ld e, h                                       ; $784b: $5c
    rra                                           ; $784c: $1f
    stop                                          ; $784d: $10 $00
    rst $38                                       ; $784f: $ff
    ld a, a                                       ; $7850: $7f
    jr nz, jr_0b4_7883                            ; $7851: $20 $30

    or e                                          ; $7853: $b3
    dec h                                         ; $7854: $25
    rst $38                                       ; $7855: $ff
    rra                                           ; $7856: $1f

jr_0b4_7857:
    ld a, [hl+]                                   ; $7857: $2a
    nop                                           ; $7858: $00
    jr nz, jr_0b4_788b                            ; $7859: $20 $30

    sub a                                         ; $785b: $97
    ld h, c                                       ; $785c: $61
    rst $38                                       ; $785d: $ff
    daa                                           ; $785e: $27
    jp nz, Jump_0b4_6644                          ; $785f: $c2 $44 $66

    inc b                                         ; $7862: $04
    rst $38                                       ; $7863: $ff
    daa                                           ; $7864: $27
    ld h, c                                       ; $7865: $61
    ld a, h                                       ; $7866: $7c
    jp nc, Jump_000_0015                          ; $7867: $d2 $15 $00

    jr nz, jr_0b4_7835                            ; $786a: $20 $c9

    inc b                                         ; $786c: $04
    db $d3                                        ; $786d: $d3
    add hl, de                                    ; $786e: $19
    ld b, h                                       ; $786f: $44
    nop                                           ; $7870: $00
    nop                                           ; $7871: $00
    jr nz, @+$47                                  ; $7872: $20 $45

    nop                                           ; $7874: $00
    xor b                                         ; $7875: $a8
    nop                                           ; $7876: $00
    db $ed                                        ; $7877: $ed
    nop                                           ; $7878: $00
    nop                                           ; $7879: $00
    nop                                           ; $787a: $00
    rst $38                                       ; $787b: $ff
    ld a, a                                       ; $787c: $7f
    nop                                           ; $787d: $00
    jr nz, jr_0b4_78c6                            ; $787e: $20 $46

    nop                                           ; $7880: $00
    ld b, h                                       ; $7881: $44
    nop                                           ; $7882: $00

jr_0b4_7883:
    or b                                          ; $7883: $b0
    add hl, de                                    ; $7884: $19
    inc c                                         ; $7885: $0c
    dec b                                         ; $7886: $05
    stop                                          ; $7887: $10 $00
    ld b, l                                       ; $7889: $45
    nop                                           ; $788a: $00

jr_0b4_788b:
    inc d                                         ; $788b: $14
    ld [hl+], a                                   ; $788c: $22
    ld a, a                                       ; $788d: $7f
    ld a, [hl]                                    ; $788e: $7e
    ld h, [hl]                                    ; $788f: $66
    inc l                                         ; $7890: $2c
    ld l, b                                       ; $7891: $68
    inc l                                         ; $7892: $2c
    push af                                       ; $7893: $f5
    ld e, c                                       ; $7894: $59
    ld d, b                                       ; $7895: $50
    dec [hl]                                      ; $7896: $35
    ld a, a                                       ; $7897: $7f
    ld a, a                                       ; $7898: $7f
    nop                                           ; $7899: $00
    jr nz, @+$01                                  ; $789a: $20 $ff

    inc hl                                        ; $789c: $23
    jp nc, $8815                                  ; $789d: $d2 $15 $88

    nop                                           ; $78a0: $00
    nop                                           ; $78a1: $00
    jr nz, @+$0d                                  ; $78a2: $20 $0b

    add hl, bc                                    ; $78a4: $09
    ld b, h                                       ; $78a5: $44
    nop                                           ; $78a6: $00
    db $d3                                        ; $78a7: $d3
    add hl, de                                    ; $78a8: $19
    nop                                           ; $78a9: $00
    jr nz, jr_0b4_783c                            ; $78aa: $20 $90

    add hl, de                                    ; $78ac: $19
    cp d                                          ; $78ad: $ba
    ld l, $45                                     ; $78ae: $2e $45
    nop                                           ; $78b0: $00
    ld bc, $ff04                                  ; $78b1: $01 $04 $ff
    ld a, a                                       ; $78b4: $7f
    ld de, $d100                                  ; $78b5: $11 $00 $d1
    ld hl, $0044                                  ; $78b8: $21 $44 $00
    pop de                                        ; $78bb: $d1
    ld hl, $2657                                  ; $78bc: $21 $57 $26
    xor b                                         ; $78bf: $a8
    nop                                           ; $78c0: $00
    jp z, $ff14                                   ; $78c1: $ca $14 $ff

    ld a, a                                       ; $78c4: $7f
    pop de                                        ; $78c5: $d1

jr_0b4_78c6:
    dec e                                         ; $78c6: $1d
    ld d, [hl]                                    ; $78c7: $56
    ld h, $2e                                     ; $78c8: $26 $2e
    jr c, jr_0b4_7929                             ; $78ca: $38 $5d

    ld a, d                                       ; $78cc: $7a
    ld e, e                                       ; $78cd: $5b
    ld l, h                                       ; $78ce: $6c
    rst $38                                       ; $78cf: $ff
    ld a, a                                       ; $78d0: $7f
    ld b, l                                       ; $78d1: $45
    db $10                                        ; $78d2: $10
    cp a                                          ; $78d3: $bf
    ld a, a                                       ; $78d4: $7f
    ld [de], a                                    ; $78d5: $12
    ld h, b                                       ; $78d6: $60
    jp nc, Jump_000_0015                          ; $78d7: $d2 $15 $00

    jr nz, jr_0b4_78c6                            ; $78da: $20 $ea

    ld [$19b2], sp                                ; $78dc: $08 $b2 $19
    ld b, h                                       ; $78df: $44
    nop                                           ; $78e0: $00
    nop                                           ; $78e1: $00
    jr nz, jr_0b4_7929                            ; $78e2: $20 $45

    nop                                           ; $78e4: $00
    db $ed                                        ; $78e5: $ed
    nop                                           ; $78e6: $00
    ld l, a                                       ; $78e7: $6f
    dec d                                         ; $78e8: $15
    ld b, e                                       ; $78e9: $43
    nop                                           ; $78ea: $00
    ld d, a                                       ; $78eb: $57
    ld h, $71                                     ; $78ec: $26 $71
    ld [$7fff], sp                                ; $78ee: $08 $ff $7f
    ld b, h                                       ; $78f1: $44
    nop                                           ; $78f2: $00
    xor b                                         ; $78f3: $a8
    nop                                           ; $78f4: $00
    pop de                                        ; $78f5: $d1
    ld hl, $04ca                                  ; $78f6: $21 $ca $04
    ld l, b                                       ; $78f9: $68
    inc c                                         ; $78fa: $0c
    di                                            ; $78fb: $f3
    ld hl, $156e                                  ; $78fc: $21 $6e $15
    rst $10                                       ; $78ff: $d7
    ld e, c                                       ; $7900: $59
    ld [$9524], sp                                ; $7901: $08 $24 $95
    ld e, c                                       ; $7904: $59
    ld d, d                                       ; $7905: $52
    ld e, h                                       ; $7906: $5c
    sbc a                                         ; $7907: $9f
    ld a, [hl]                                    ; $7908: $7e
    ld b, e                                       ; $7909: $43
    nop                                           ; $790a: $00
    ld [de], a                                    ; $790b: $12
    ld h, b                                       ; $790c: $60
    ccf                                           ; $790d: $3f
    ld a, a                                       ; $790e: $7f
    ld l, b                                       ; $790f: $68
    jr nz, jr_0b4_7912                            ; $7910: $20 $00

jr_0b4_7912:
    jr nz, jr_0b4_7940                            ; $7912: $20 $2c

    dec c                                         ; $7914: $0d

jr_0b4_7915:
    dec d                                         ; $7915: $15
    ld [hl+], a                                   ; $7916: $22
    ld b, h                                       ; $7917: $44
    nop                                           ; $7918: $00
    nop                                           ; $7919: $00
    jr jr_0b4_7956                                ; $791a: $18 $3a

    rra                                           ; $791c: $1f
    ret                                           ; $791d: $c9


    nop                                           ; $791e: $00
    rst $38                                       ; $791f: $ff
    ld a, a                                       ; $7920: $7f
    ld b, h                                       ; $7921: $44
    nop                                           ; $7922: $00
    ld d, d                                       ; $7923: $52
    inc b                                         ; $7924: $04
    ld d, a                                       ; $7925: $57
    ld h, $c8                                     ; $7926: $26 $c8
    nop                                           ; $7928: $00

jr_0b4_7929:
    jp z, $9004                                   ; $7929: $ca $04 $90

    dec d                                         ; $792c: $15
    ld a, [c]                                     ; $792d: $f2
    dec h                                         ; $792e: $25
    dec c                                         ; $792f: $0d
    ld bc, $2808                                  ; $7930: $01 $08 $28
    ld [de], a                                    ; $7933: $12
    ld h, b                                       ; $7934: $60
    jp nc, $8821                                  ; $7935: $d2 $21 $88

    nop                                           ; $7938: $00
    ld [$9f28], sp                                ; $7939: $08 $28 $9f
    ld a, [hl]                                    ; $793c: $7e
    ld [de], a                                    ; $793d: $12
    ld h, b                                       ; $793e: $60
    adc b                                         ; $793f: $88

jr_0b4_7940:
    nop                                           ; $7940: $00
    ld b, l                                       ; $7941: $45
    inc c                                         ; $7942: $0c
    dec d                                         ; $7943: $15
    ld [hl+], a                                   ; $7944: $22
    ld [de], a                                    ; $7945: $12
    ld h, b                                       ; $7946: $60
    sbc a                                         ; $7947: $9f
    ld a, [hl]                                    ; $7948: $7e
    nop                                           ; $7949: $00
    jr nz, jr_0b4_7915                            ; $794a: $20 $c9

    inc b                                         ; $794c: $04
    ld b, h                                       ; $794d: $44
    nop                                           ; $794e: $00
    ld l, a                                       ; $794f: $6f
    ld de, $0822                                  ; $7950: $11 $22 $08
    rst $38                                       ; $7953: $ff
    daa                                           ; $7954: $27
    rst $38                                       ; $7955: $ff

jr_0b4_7956:
    ld a, a                                       ; $7956: $7f
    or [hl]                                       ; $7957: $b6
    ld bc, $00a8                                  ; $7958: $01 $a8 $00
    ld a, [c]                                     ; $795b: $f2
    dec h                                         ; $795c: $25
    ld d, d                                       ; $795d: $52
    ld [$010d], sp                                ; $795e: $08 $0d $01
    ld b, h                                       ; $7961: $44
    nop                                           ; $7962: $00
    xor b                                         ; $7963: $a8
    nop                                           ; $7964: $00
    db $eb                                        ; $7965: $eb
    nop                                           ; $7966: $00
    dec c                                         ; $7967: $0d
    ld bc, $0443                                  ; $7968: $01 $43 $04
    ld a, [c]                                     ; $796b: $f2
    ld hl, $00ec                                  ; $796c: $21 $ec $00
    ld [$2428], sp                                ; $796f: $08 $28 $24
    inc e                                         ; $7972: $1c
    ld a, [hl]                                    ; $7973: $7e
    ld a, d                                       ; $7974: $7a
    adc l                                         ; $7975: $8d
    inc a                                         ; $7976: $3c
    ld d, h                                       ; $7977: $54
    ld d, l                                       ; $7978: $55
    ld b, e                                       ; $7979: $43
    ld [$114d], sp                                ; $797a: $08 $4d $11
    ld c, $52                                     ; $797d: $0e $52
    db $d3                                        ; $797f: $d3
    dec e                                         ; $7980: $1d
    ld [hl+], a                                   ; $7981: $22
    nop                                           ; $7982: $00
    ld [hl], b                                    ; $7983: $70
    ld de, $7fff                                  ; $7984: $11 $ff $7f
    nop                                           ; $7987: $00
    jr nz, jr_0b4_79ac                            ; $7988: $20 $22

    nop                                           ; $798a: $00
    rst $38                                       ; $798b: $ff
    dec hl                                        ; $798c: $2b
    inc d                                         ; $798d: $14
    dec b                                         ; $798e: $05
    rst $38                                       ; $798f: $ff
    ld a, a                                       ; $7990: $7f
    ld b, h                                       ; $7991: $44
    nop                                           ; $7992: $00
    ld [hl], e                                    ; $7993: $73
    inc c                                         ; $7994: $0c
    call nc, $a811                                ; $7995: $d4 $11 $a8
    nop                                           ; $7998: $00
    xor b                                         ; $7999: $a8
    nop                                           ; $799a: $00
    ld [hl], $22                                  ; $799b: $36 $22
    ld [hl], e                                    ; $799d: $73
    inc c                                         ; $799e: $0c
    adc a                                         ; $799f: $8f
    add hl, de                                    ; $79a0: $19
    ld b, d                                       ; $79a1: $42
    ld [$21d2], sp                                ; $79a2: $08 $d2 $21
    inc c                                         ; $79a5: $0c
    dec b                                         ; $79a6: $05
    ld d, b                                       ; $79a7: $50
    ld e, [hl]                                    ; $79a8: $5e
    ld b, c                                       ; $79a9: $41
    db $10                                        ; $79aa: $10
    inc sp                                        ; $79ab: $33

jr_0b4_79ac:
    ld c, $8b                                     ; $79ac: $0e $8b
    ld e, c                                       ; $79ae: $59
    ccf                                           ; $79af: $3f
    ld a, [hl]                                    ; $79b0: $7e
    ld h, h                                       ; $79b1: $64
    ld [$19d2], sp                                ; $79b2: $08 $d2 $19
    ld b, [hl]                                    ; $79b5: $46
    ld e, l                                       ; $79b6: $5d
    ld d, b                                       ; $79b7: $50
    ld e, [hl]                                    ; $79b8: $5e
    nop                                           ; $79b9: $00
    inc e                                         ; $79ba: $1c
    rst $38                                       ; $79bb: $ff
    ld a, a                                       ; $79bc: $7f
    add [hl]                                      ; $79bd: $86
    nop                                           ; $79be: $00
    ld c, [hl]                                    ; $79bf: $4e
    ld de, $0822                                  ; $79c0: $11 $22 $08
    rst $38                                       ; $79c3: $ff
    dec hl                                        ; $79c4: $2b
    ld [hl], e                                    ; $79c5: $73
    inc c                                         ; $79c6: $0c
    rst $38                                       ; $79c7: $ff
    ld a, a                                       ; $79c8: $7f
    add [hl]                                      ; $79c9: $86

jr_0b4_79ca:
    nop                                           ; $79ca: $00
    rst $38                                       ; $79cb: $ff
    daa                                           ; $79cc: $27
    ld [hl], e                                    ; $79cd: $73
    inc c                                         ; $79ce: $0c
    sub d                                         ; $79cf: $92
    dec c                                         ; $79d0: $0d
    ld b, h                                       ; $79d1: $44
    nop                                           ; $79d2: $00
    ld c, [hl]                                    ; $79d3: $4e
    dec d                                         ; $79d4: $15
    dec bc                                        ; $79d5: $0b
    dec c                                         ; $79d6: $0d
    db $f4                                        ; $79d7: $f4
    ld hl, $1c61                                  ; $79d8: $21 $61 $1c
    adc c                                         ; $79db: $89
    ld e, l                                       ; $79dc: $5d
    dec [hl]                                      ; $79dd: $35
    ld [hl+], a                                   ; $79de: $22
    adc b                                         ; $79df: $88
    nop                                           ; $79e0: $00
    ld b, c                                       ; $79e1: $41

jr_0b4_79e2:
    db $10                                        ; $79e2: $10
    pop de                                        ; $79e3: $d1
    ld hl, $0739                                  ; $79e4: $21 $39 $07
    db $e3                                        ; $79e7: $e3
    ld b, b                                       ; $79e8: $40
    ld h, h                                       ; $79e9: $64
    ld [$1570], sp                                ; $79ea: $08 $70 $15
    dec bc                                        ; $79ed: $0b
    dec c                                         ; $79ee: $0d
    db $f4                                        ; $79ef: $f4
    dec e                                         ; $79f0: $1d
    nop                                           ; $79f1: $00
    nop                                           ; $79f2: $00
    rst $38                                       ; $79f3: $ff
    ld a, a                                       ; $79f4: $7f
    nop                                           ; $79f5: $00
    jr nz, @-$78                                  ; $79f6: $20 $86

    nop                                           ; $79f8: $00

jr_0b4_79f9:
    ld [hl+], a                                   ; $79f9: $22
    nop                                           ; $79fa: $00
    rst $38                                       ; $79fb: $ff
    ld a, a                                       ; $79fc: $7f
    call nc, Call_000_000c                        ; $79fd: $d4 $0c $00
    jr nz, jr_0b4_79ca                            ; $7a00: $20 $c8

    nop                                           ; $7a02: $00
    ld [hl], $22                                  ; $7a03: $36 $22
    db $d3                                        ; $7a05: $d3
    db $10                                        ; $7a06: $10
    rst $38                                       ; $7a07: $ff
    dec hl                                        ; $7a08: $2b
    ld b, h                                       ; $7a09: $44
    nop                                           ; $7a0a: $00
    sub h                                         ; $7a0b: $94
    db $10                                        ; $7a0c: $10
    dec d                                         ; $7a0d: $15
    ld [hl+], a                                   ; $7a0e: $22
    adc b                                         ; $7a0f: $88
    nop                                           ; $7a10: $00
    ld h, h                                       ; $7a11: $64
    inc b                                         ; $7a12: $04
    bit 3, l                                      ; $7a13: $cb $5d
    jr nc, @+$17                                  ; $7a15: $30 $15

    ld d, a                                       ; $7a17: $57
    ld h, $41                                     ; $7a18: $26 $41
    db $10                                        ; $7a1a: $10
    dec d                                         ; $7a1b: $15
    ld [hl+], a                                   ; $7a1c: $22
    dec d                                         ; $7a1d: $15
    ld e, [hl]                                    ; $7a1e: $5e
    inc c                                         ; $7a1f: $0c
    add hl, de                                    ; $7a20: $19
    add [hl]                                      ; $7a21: $86
    nop                                           ; $7a22: $00
    sub b                                         ; $7a23: $90
    dec d                                         ; $7a24: $15
    inc de                                        ; $7a25: $13
    ld e, $0b                                     ; $7a26: $1e $0b
    dec c                                         ; $7a28: $0d
    nop                                           ; $7a29: $00
    nop                                           ; $7a2a: $00
    ldh a, [rNR34]                                ; $7a2b: $f0 $1e
    nop                                           ; $7a2d: $00
    jr nz, @+$01                                  ; $7a2e: $20 $ff

    ld a, a                                       ; $7a30: $7f
    ld [hl+], a                                   ; $7a31: $22
    nop                                           ; $7a32: $00
    rst $38                                       ; $7a33: $ff
    ld a, a                                       ; $7a34: $7f
    or h                                          ; $7a35: $b4
    inc d                                         ; $7a36: $14
    nop                                           ; $7a37: $00
    jr nz, jr_0b4_79e2                            ; $7a38: $20 $a8

    inc b                                         ; $7a3a: $04
    rst $38                                       ; $7a3b: $ff
    daa                                           ; $7a3c: $27
    or h                                          ; $7a3d: $b4
    inc d                                         ; $7a3e: $14
    sub e                                         ; $7a3f: $93
    add hl, bc                                    ; $7a40: $09
    ld b, h                                       ; $7a41: $44
    nop                                           ; $7a42: $00
    or h                                          ; $7a43: $b4
    inc d                                         ; $7a44: $14
    ret z                                         ; $7a45: $c8

    nop                                           ; $7a46: $00
    or l                                          ; $7a47: $b5
    inc d                                         ; $7a48: $14
    ld h, e                                       ; $7a49: $63
    ld [$5d45], sp                                ; $7a4a: $08 $45 $5d
    ld l, $11                                     ; $7a4d: $2e $11
    ld d, b                                       ; $7a4f: $50
    ld e, [hl]                                    ; $7a50: $5e
    ld h, e                                       ; $7a51: $63

jr_0b4_7a52:
    ld [$1df4], sp                                ; $7a52: $08 $f4 $1d
    ld l, b                                       ; $7a55: $68
    ld d, c                                       ; $7a56: $51
    jr nc, jr_0b4_7ab3                            ; $7a57: $30 $5a

    jr nz, jr_0b4_7a5c                            ; $7a59: $20 $01

    or c                                          ; $7a5b: $b1

jr_0b4_7a5c:
    add hl, de                                    ; $7a5c: $19
    add [hl]                                      ; $7a5d: $86
    nop                                           ; $7a5e: $00
    rst $28                                       ; $7a5f: $ef
    ld a, [de]                                    ; $7a60: $1a
    nop                                           ; $7a61: $00
    nop                                           ; $7a62: $00
    adc $1a                                       ; $7a63: $ce $1a
    nop                                           ; $7a65: $00
    jr nz, jr_0b4_7aad                            ; $7a66: $20 $45

    add hl, bc                                    ; $7a68: $09
    nop                                           ; $7a69: $00

jr_0b4_7a6a:
    nop                                           ; $7a6a: $00
    rst $38                                       ; $7a6b: $ff
    ld a, a                                       ; $7a6c: $7f
    or l                                          ; $7a6d: $b5
    inc d                                         ; $7a6e: $14
    nop                                           ; $7a6f: $00
    jr nz, jr_0b4_79f9                            ; $7a70: $20 $87

    nop                                           ; $7a72: $00
    rst $38                                       ; $7a73: $ff
    daa                                           ; $7a74: $27
    or l                                          ; $7a75: $b5
    inc d                                         ; $7a76: $14
    or [hl]                                       ; $7a77: $b6
    ld bc, $00a6                                  ; $7a78: $01 $a6 $00
    rst $38                                       ; $7a7b: $ff
    daa                                           ; $7a7c: $27
    or l                                          ; $7a7d: $b5
    inc d                                         ; $7a7e: $14
    or [hl]                                       ; $7a7f: $b6
    ld bc, $0cc7                                  ; $7a80: $01 $c7 $0c
    daa                                           ; $7a83: $27
    ld b, l                                       ; $7a84: $45
    cpl                                           ; $7a85: $2f
    ld e, d                                       ; $7a86: $5a
    ld d, a                                       ; $7a87: $57
    ld h, $a5                                     ; $7a88: $26 $a5
    nop                                           ; $7a8a: $00
    ld b, [hl]                                    ; $7a8b: $46
    ld e, l                                       ; $7a8c: $5d
    ld l, a                                       ; $7a8d: $6f
    ld de, $1e15                                  ; $7a8e: $11 $15 $1e
    add d                                         ; $7a91: $82
    nop                                           ; $7a92: $00
    adc c                                         ; $7a93: $89
    ld [de], a                                    ; $7a94: $12
    ld b, b                                       ; $7a95: $40
    ld bc, $1acf                                  ; $7a96: $01 $cf $1a
    ld b, c                                       ; $7a99: $41
    nop                                           ; $7a9a: $00
    dec h                                         ; $7a9b: $25
    ld a, [bc]                                    ; $7a9c: $0a
    xor l                                         ; $7a9d: $ad
    ld d, $00                                     ; $7a9e: $16 $00
    jr nz, jr_0b4_7aa2                            ; $7aa0: $20 $00

jr_0b4_7aa2:
    nop                                           ; $7aa2: $00
    rst $38                                       ; $7aa3: $ff
    ld a, a                                       ; $7aa4: $7f
    sub $18                                       ; $7aa5: $d6 $18
    nop                                           ; $7aa7: $00
    jr nz, jr_0b4_7a52                            ; $7aa8: $20 $a8

    nop                                           ; $7aaa: $00
    rst $38                                       ; $7aab: $ff
    daa                                           ; $7aac: $27

jr_0b4_7aad:
    sub $18                                       ; $7aad: $d6 $18
    or [hl]                                       ; $7aaf: $b6
    ld bc, $00a4                                  ; $7ab0: $01 $a4 $00

jr_0b4_7ab3:
    ldh a, [rNR34]                                ; $7ab3: $f0 $1e
    inc d                                         ; $7ab5: $14
    ld de, $27ff                                  ; $7ab6: $11 $ff $27
    add h                                         ; $7ab9: $84
    jr jr_0b4_7aeb                                ; $7aba: $18 $2f

    ld e, d                                       ; $7abc: $5a
    ld b, [hl]                                    ; $7abd: $46
    ld d, l                                       ; $7abe: $55
    ld d, a                                       ; $7abf: $57
    ld h, $e0                                     ; $7ac0: $26 $e0
    nop                                           ; $7ac2: $00
    di                                            ; $7ac3: $f3
    dec e                                         ; $7ac4: $1d
    rst $28                                       ; $7ac5: $ef
    ld e, $86                                     ; $7ac6: $1e $86
    nop                                           ; $7ac8: $00
    and b                                         ; $7ac9: $a0
    nop                                           ; $7aca: $00
    xor c                                         ; $7acb: $a9
    ld [de], a                                    ; $7acc: $12
    pop bc                                        ; $7acd: $c1
    ld bc, $1ecf                                  ; $7ace: $01 $cf $1e
    nop                                           ; $7ad1: $00
    inc e                                         ; $7ad2: $1c
    ldh [rSB], a                                  ; $7ad3: $e0 $01
    ldh a, [rNR34]                                ; $7ad5: $f0 $1e
    xor b                                         ; $7ad7: $a8
    dec c                                         ; $7ad8: $0d
    nop                                           ; $7ad9: $00
    nop                                           ; $7ada: $00
    rst $38                                       ; $7adb: $ff
    ld a, a                                       ; $7adc: $7f
    sub $18                                       ; $7add: $d6 $18
    nop                                           ; $7adf: $00
    jr nz, jr_0b4_7a6a                            ; $7ae0: $20 $88

    nop                                           ; $7ae2: $00
    rst $38                                       ; $7ae3: $ff
    daa                                           ; $7ae4: $27
    sub $18                                       ; $7ae5: $d6 $18
    or [hl]                                       ; $7ae7: $b6
    ld bc, $00c2                                  ; $7ae8: $01 $c2 $00

jr_0b4_7aeb:
    ld c, h                                       ; $7aeb: $4c
    dec d                                         ; $7aec: $15
    ldh a, [rNR34]                                ; $7aed: $f0 $1e
    ld d, $15                                     ; $7aef: $16 $15
    add e                                         ; $7af1: $83
    inc d                                         ; $7af2: $14
    ld b, [hl]                                    ; $7af3: $46
    ld e, l                                       ; $7af4: $5d
    ld d, a                                       ; $7af5: $57
    ld h, $2f                                     ; $7af6: $26 $2f
    ld e, d                                       ; $7af8: $5a
    jp nz, $d300                                  ; $7af9: $c2 $00 $d3

    dec e                                         ; $7afc: $1d
    adc b                                         ; $7afd: $88
    ld c, $ef                                     ; $7afe: $0e $ef
    ld e, $e0                                     ; $7b00: $1e $e0
    nop                                           ; $7b02: $00
    ld h, [hl]                                    ; $7b03: $66
    ld a, [bc]                                    ; $7b04: $0a
    pop hl                                        ; $7b05: $e1
    ld bc, $1eef                                  ; $7b06: $01 $ef $1e
    ld b, b                                       ; $7b09: $40
    nop                                           ; $7b0a: $00
    pop bc                                        ; $7b0b: $c1

jr_0b4_7b0c:
    ld bc, $1acf                                  ; $7b0c: $01 $cf $1a
    nop                                           ; $7b0f: $00
    jr nz, jr_0b4_7b12                            ; $7b10: $20 $00

jr_0b4_7b12:
    nop                                           ; $7b12: $00
    rst $38                                       ; $7b13: $ff
    ld a, a                                       ; $7b14: $7f
    nop                                           ; $7b15: $00
    jr nz, jr_0b4_7b2e                            ; $7b16: $20 $16

    dec d                                         ; $7b18: $15
    adc b                                         ; $7b19: $88
    nop                                           ; $7b1a: $00
    rst $38                                       ; $7b1b: $ff
    daa                                           ; $7b1c: $27
    or h                                          ; $7b1d: $b4
    add hl, bc                                    ; $7b1e: $09
    rst $30                                       ; $7b1f: $f7
    inc e                                         ; $7b20: $1c
    ret nz                                        ; $7b21: $c0

    nop                                           ; $7b22: $00
    ld [de], a                                    ; $7b23: $12
    add hl, de                                    ; $7b24: $19
    ldh a, [rNR34]                                ; $7b25: $f0 $1e
    jr nz, jr_0b4_7b2b                            ; $7b27: $20 $02

    ld h, d                                       ; $7b29: $62
    inc c                                         ; $7b2a: $0c

jr_0b4_7b2b:
    ld b, a                                       ; $7b2b: $47
    ld d, c                                       ; $7b2c: $51
    ld d, a                                       ; $7b2d: $57

jr_0b4_7b2e:
    ld h, $2f                                     ; $7b2e: $26 $2f
    ld e, d                                       ; $7b30: $5a
    ret nz                                        ; $7b31: $c0

    nop                                           ; $7b32: $00
    adc $1a                                       ; $7b33: $ce $1a
    ld b, d                                       ; $7b35: $42
    ld [bc], a                                    ; $7b36: $02
    xor b                                         ; $7b37: $a8
    nop                                           ; $7b38: $00
    and b                                         ; $7b39: $a0
    nop                                           ; $7b3a: $00
    xor [hl]                                      ; $7b3b: $ae
    ld a, [de]                                    ; $7b3c: $1a
    ld hl, $4002                                  ; $7b3d: $21 $02 $40
    ld bc, $0040                                  ; $7b40: $01 $40 $00
    pop bc                                        ; $7b43: $c1
    ld bc, $2000                                  ; $7b44: $01 $00 $20
    ld l, h                                       ; $7b47: $6c
    ld d, $00                                     ; $7b48: $16 $00
    nop                                           ; $7b4a: $00
    rst $38                                       ; $7b4b: $ff
    ld a, a                                       ; $7b4c: $7f
    nop                                           ; $7b4d: $00
    jr nz, @+$22                                  ; $7b4e: $20 $20

    ld [bc], a                                    ; $7b50: $02
    nop                                           ; $7b51: $00
    nop                                           ; $7b52: $00
    or [hl]                                       ; $7b53: $b6
    ld bc, $0088                                  ; $7b54: $01 $88 $00

jr_0b4_7b57:
    jr @+$23                                      ; $7b57: $18 $21

    ld h, b                                       ; $7b59: $60
    nop                                           ; $7b5a: $00
    ld c, h                                       ; $7b5b: $4c
    dec d                                         ; $7b5c: $15
    nop                                           ; $7b5d: $00
    ld [bc], a                                    ; $7b5e: $02
    rst $08                                       ; $7b5f: $cf
    ld a, [de]                                    ; $7b60: $1a
    ld b, b                                       ; $7b61: $40
    ld [$5dcb], sp                                ; $7b62: $08 $cb $5d
    ld d, a                                       ; $7b65: $57
    ld h, $86                                     ; $7b66: $26 $86
    nop                                           ; $7b68: $00
    ret nz                                        ; $7b69: $c0

    nop                                           ; $7b6a: $00
    rst $28                                       ; $7b6b: $ef
    ld e, $c0                                     ; $7b6c: $1e $c0
    ld bc, $0a64                                  ; $7b6e: $01 $64 $0a
    ld b, b                                       ; $7b71: $40
    nop                                           ; $7b72: $00
    inc b                                         ; $7b73: $04
    ld b, $ad                                     ; $7b74: $06 $ad
    ld d, $40                                     ; $7b76: $16 $40
    ld bc, $0060                                  ; $7b78: $01 $60 $00
    nop                                           ; $7b7b: $00
    ld [bc], a                                    ; $7b7c: $02
    nop                                           ; $7b7d: $00
    jr nz, jr_0b4_7b0c                            ; $7b7e: $20 $8c

    ld d, $00                                     ; $7b80: $16 $00
    nop                                           ; $7b82: $00
    rst $38                                       ; $7b83: $ff
    ld a, a                                       ; $7b84: $7f
    nop                                           ; $7b85: $00
    jr nz, jr_0b4_7b57                            ; $7b86: $20 $cf

    ld a, [de]                                    ; $7b88: $1a
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    add hl, sp                                    ; $7b8b: $39
    dec h                                         ; $7b8c: $25
    call c, $9f75                                 ; $7b8d: $dc $75 $9f
    ld a, [hl]                                    ; $7b90: $7e
    add b                                         ; $7b91: $80
    nop                                           ; $7b92: $00
    ld e, a                                       ; $7b93: $5f
    ld a, [hl]                                    ; $7b94: $7e
    ld b, b                                       ; $7b95: $40
    ld [bc], a                                    ; $7b96: $02
    dec l                                         ; $7b97: $2d
    ld d, $62                                     ; $7b98: $16 $62
    inc b                                         ; $7b9a: $04
    dec c                                         ; $7b9b: $0d
    dec d                                         ; $7b9c: $15
    ret nz                                        ; $7b9d: $c0

    ld bc, $1aae                                  ; $7b9e: $01 $ae $1a
    jr nz, jr_0b4_7ba3                            ; $7ba1: $20 $00

jr_0b4_7ba3:
    ld a, [bc]                                    ; $7ba3: $0a
    ld [de], a                                    ; $7ba4: $12
    ld b, e                                       ; $7ba5: $43
    dec b                                         ; $7ba6: $05
    xor [hl]                                      ; $7ba7: $ae
    ld a, [de]                                    ; $7ba8: $1a
    ld h, b                                       ; $7ba9: $60
    nop                                           ; $7baa: $00
    add [hl]                                      ; $7bab: $86
    ld a, [bc]                                    ; $7bac: $0a
    and d                                         ; $7bad: $a2
    ld bc, $1aad                                  ; $7bae: $01 $ad $1a
    nop                                           ; $7bb1: $00
    nop                                           ; $7bb2: $00
    ld hl, $ad02                                  ; $7bb3: $21 $02 $ad
    ld a, [de]                                    ; $7bb6: $1a
    nop                                           ; $7bb7: $00
    jr nz, jr_0b4_7bba                            ; $7bb8: $20 $00

jr_0b4_7bba:
    nop                                           ; $7bba: $00
    rst $38                                       ; $7bbb: $ff
    ld a, a                                       ; $7bbc: $7f
    nop                                           ; $7bbd: $00
    jr nz, jr_0b4_7bed                            ; $7bbe: $20 $2d

    ld d, $00                                     ; $7bc0: $16 $00
    nop                                           ; $7bc2: $00
    cp d                                          ; $7bc3: $ba
    ld l, l                                       ; $7bc4: $6d
    rst $38                                       ; $7bc5: $ff
    ld a, a                                       ; $7bc6: $7f
    ld e, $7e                                     ; $7bc7: $1e $7e
    ld h, b                                       ; $7bc9: $60
    inc b                                         ; $7bca: $04
    ld l, a                                       ; $7bcb: $6f
    ld [hl+], a                                   ; $7bcc: $22
    ccf                                           ; $7bcd: $3f
    ld a, [hl]                                    ; $7bce: $7e
    jr nz, jr_0b4_7bd3                            ; $7bcf: $20 $02

    add b                                         ; $7bd1: $80
    nop                                           ; $7bd2: $00

jr_0b4_7bd3:
    rst $08                                       ; $7bd3: $cf
    ld a, [de]                                    ; $7bd4: $1a
    inc e                                         ; $7bd5: $1c
    rra                                           ; $7bd6: $1f
    ld b, b                                       ; $7bd7: $40
    ld [bc], a                                    ; $7bd8: $02
    add b                                         ; $7bd9: $80
    ld bc, $0e89                                  ; $7bda: $01 $89 $0e
    ld b, e                                       ; $7bdd: $43
    ld b, $cd                                     ; $7bde: $06 $cd
    ld d, $40                                     ; $7be0: $16 $40
    nop                                           ; $7be2: $00
    ld b, c                                       ; $7be3: $41
    ld [bc], a                                    ; $7be4: $02
    call Call_0b4_6616                            ; $7be5: $cd $16 $66
    ld a, [bc]                                    ; $7be8: $0a
    nop                                           ; $7be9: $00

jr_0b4_7bea:
    nop                                           ; $7bea: $00
    ld b, b                                       ; $7beb: $40
    ld [bc], a                                    ; $7bec: $02

jr_0b4_7bed:
    adc $1a                                       ; $7bed: $ce $1a
    nop                                           ; $7bef: $00
    jr nz, jr_0b4_7bf2                            ; $7bf0: $20 $00

jr_0b4_7bf2:
    nop                                           ; $7bf2: $00
    nop                                           ; $7bf3: $00
    jr nz, jr_0b4_7c35                            ; $7bf4: $20 $3f

    ld a, [hl]                                    ; $7bf6: $7e
    jr nz, jr_0b4_7bfb                            ; $7bf7: $20 $02

    nop                                           ; $7bf9: $00
    nop                                           ; $7bfa: $00

jr_0b4_7bfb:
    db $fc                                        ; $7bfb: $fc
    ld [hl], l                                    ; $7bfc: $75
    rst $38                                       ; $7bfd: $ff
    ld a, a                                       ; $7bfe: $7f
    db $ed                                        ; $7bff: $ed
    inc [hl]                                      ; $7c00: $34
    ld hl, $4008                                  ; $7c01: $21 $08 $40
    ld [bc], a                                    ; $7c04: $02
    ld l, b                                       ; $7c05: $68
    ld d, c                                       ; $7c06: $51
    ldh a, [rNR34]                                ; $7c07: $f0 $1e
    ret nz                                        ; $7c09: $c0

    nop                                           ; $7c0a: $00
    adc b                                         ; $7c0b: $88
    ld c, $21                                     ; $7c0c: $0e $21
    ld [bc], a                                    ; $7c0e: $02
    rst $28                                       ; $7c0f: $ef
    ld a, [de]                                    ; $7c10: $1a
    jr nz, @+$03                                  ; $7c11: $20 $01

    ldh [rSB], a                                  ; $7c13: $e0 $01
    ld h, l                                       ; $7c15: $65
    ld a, [bc]                                    ; $7c16: $0a
    ld hl, $0002                                  ; $7c17: $21 $02 $00
    nop                                           ; $7c1a: $00
    ld b, c                                       ; $7c1b: $41
    ld [bc], a                                    ; $7c1c: $02
    ld l, b                                       ; $7c1d: $68
    ld c, $cd                                     ; $7c1e: $0e $cd
    ld a, [de]                                    ; $7c20: $1a
    nop                                           ; $7c21: $00

jr_0b4_7c22:
    nop                                           ; $7c22: $00
    inc hl                                        ; $7c23: $23
    ld b, $ce                                     ; $7c24: $06 $ce
    ld a, [de]                                    ; $7c26: $1a
    nop                                           ; $7c27: $00
    jr nz, jr_0b4_7c2a                            ; $7c28: $20 $00

jr_0b4_7c2a:
    nop                                           ; $7c2a: $00
    nop                                           ; $7c2b: $00
    jr nz, jr_0b4_7c96                            ; $7c2c: $20 $68

    ld d, c                                       ; $7c2e: $51
    ldh a, [rNR34]                                ; $7c2f: $f0 $1e
    nop                                           ; $7c31: $00
    nop                                           ; $7c32: $00
    ld d, e                                       ; $7c33: $53
    ld c, l                                       ; $7c34: $4d

jr_0b4_7c35:
    cp $7e                                        ; $7c35: $fe $7e
    call Call_0b4_6034                            ; $7c37: $cd $34 $60
    nop                                           ; $7c3a: $00
    add [hl]                                      ; $7c3b: $86
    jr nc, @+$42                                  ; $7c3c: $30 $40

    ld [bc], a                                    ; $7c3e: $02
    ld l, b                                       ; $7c3f: $68
    ld d, c                                       ; $7c40: $51
    nop                                           ; $7c41: $00
    nop                                           ; $7c42: $00
    nop                                           ; $7c43: $00
    ld [bc], a                                    ; $7c44: $02
    add b                                         ; $7c45: $80
    nop                                           ; $7c46: $00
    ld b, b                                       ; $7c47: $40
    ld [bc], a                                    ; $7c48: $02
    nop                                           ; $7c49: $00
    nop                                           ; $7c4a: $00
    jr nz, @+$03                                  ; $7c4b: $20 $01

    ldh [rSB], a                                  ; $7c4d: $e0 $01
    and b                                         ; $7c4f: $a0
    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    nop                                           ; $7c52: $00
    adc $1a                                       ; $7c53: $ce $1a
    ld b, b                                       ; $7c55: $40
    ld [bc], a                                    ; $7c56: $02
    ld b, e                                       ; $7c57: $43
    ld b, $00                                     ; $7c58: $06 $00

jr_0b4_7c5a:
    nop                                           ; $7c5a: $00
    pop hl                                        ; $7c5b: $e1
    ld bc, $16ab                                  ; $7c5c: $01 $ab $16
    nop                                           ; $7c5f: $00
    jr nz, jr_0b4_7c62                            ; $7c60: $20 $00

jr_0b4_7c62:
    jr nz, jr_0b4_7bea                            ; $7c62: $20 $86

    jr nc, jr_0b4_7ca6                            ; $7c64: $30 $40

    ld [bc], a                                    ; $7c66: $02
    ld l, b                                       ; $7c67: $68
    ld d, c                                       ; $7c68: $51
    nop                                           ; $7c69: $00
    nop                                           ; $7c6a: $00
    rst $38                                       ; $7c6b: $ff
    ld a, a                                       ; $7c6c: $7f
    add hl, bc                                    ; $7c6d: $09
    ld bc, $01b6                                  ; $7c6e: $01 $b6 $01
    nop                                           ; $7c71: $00
    nop                                           ; $7c72: $00
    add [hl]                                      ; $7c73: $86
    jr nc, jr_0b4_7cb6                            ; $7c74: $30 $40

    ld bc, $5168                                  ; $7c76: $01 $68 $51
    nop                                           ; $7c79: $00
    nop                                           ; $7c7a: $00
    nop                                           ; $7c7b: $00
    ld bc, $01a0                                  ; $7c7c: $01 $a0 $01
    add b                                         ; $7c7f: $80
    nop                                           ; $7c80: $00
    nop                                           ; $7c81: $00
    nop                                           ; $7c82: $00
    ld b, b                                       ; $7c83: $40
    ld bc, $0240                                  ; $7c84: $01 $40 $02
    add b                                         ; $7c87: $80
    nop                                           ; $7c88: $00
    add b                                         ; $7c89: $80
    nop                                           ; $7c8a: $00
    ld b, b                                       ; $7c8b: $40
    ld [bc], a                                    ; $7c8c: $02
    jr nz, jr_0b4_7c90                            ; $7c8d: $20 $01

    ld [bc], a                                    ; $7c8f: $02

jr_0b4_7c90:
    dec b                                         ; $7c90: $05
    nop                                           ; $7c91: $00

jr_0b4_7c92:
    nop                                           ; $7c92: $00
    jr nz, jr_0b4_7c96                            ; $7c93: $20 $01

    nop                                           ; $7c95: $00

jr_0b4_7c96:
    jr nz, @+$22                                  ; $7c96: $20 $20

    ld [bc], a                                    ; $7c98: $02
    nop                                           ; $7c99: $00
    jr nz, jr_0b4_7c22                            ; $7c9a: $20 $86

    jr nc, jr_0b4_7cde                            ; $7c9c: $30 $40

    ld bc, $5168                                  ; $7c9e: $01 $68 $51
    nop                                           ; $7ca1: $00
    inc b                                         ; $7ca2: $04
    rst $38                                       ; $7ca3: $ff
    daa                                           ; $7ca4: $27
    sub d                                         ; $7ca5: $92

jr_0b4_7ca6:
    ld bc, $7fff                                  ; $7ca6: $01 $ff $7f
    ld h, d                                       ; $7ca9: $62
    nop                                           ; $7caa: $00
    add [hl]                                      ; $7cab: $86
    jr nc, jr_0b4_7cfd                            ; $7cac: $30 $4f

    ld bc, $4d89                                  ; $7cae: $01 $89 $4d
    nop                                           ; $7cb1: $00
    nop                                           ; $7cb2: $00
    cp a                                          ; $7cb3: $bf
    cpl                                           ; $7cb4: $2f
    ld c, a                                       ; $7cb5: $4f

jr_0b4_7cb6:
    ld bc, $00c4                                  ; $7cb6: $01 $c4 $00
    add b                                         ; $7cb9: $80
    nop                                           ; $7cba: $00
    ld b, c                                       ; $7cbb: $41
    ld [bc], a                                    ; $7cbc: $02
    ld c, a                                       ; $7cbd: $4f
    ld bc, $00a5                                  ; $7cbe: $01 $a5 $00
    nop                                           ; $7cc1: $00
    nop                                           ; $7cc2: $00

jr_0b4_7cc3:
    jr nz, @+$03                                  ; $7cc3: $20 $01

    jr nz, jr_0b4_7cc9                            ; $7cc5: $20 $02

    add b                                         ; $7cc7: $80
    nop                                           ; $7cc8: $00

jr_0b4_7cc9:
    nop                                           ; $7cc9: $00
    nop                                           ; $7cca: $00

jr_0b4_7ccb:
    ldh [rP1], a                                  ; $7ccb: $e0 $00
    nop                                           ; $7ccd: $00
    jr nz, jr_0b4_7cd0                            ; $7cce: $20 $00

jr_0b4_7cd0:
    ld [bc], a                                    ; $7cd0: $02
    nop                                           ; $7cd1: $00
    jr nz, jr_0b4_7c5a                            ; $7cd2: $20 $86

    jr nc, @+$51                                  ; $7cd4: $30 $4f

    ld bc, $4d89                                  ; $7cd6: $01 $89 $4d
    ld bc, $ff00                                  ; $7cd9: $01 $00 $ff
    ld a, a                                       ; $7cdc: $7f
    or [hl]                                       ; $7cdd: $b6

jr_0b4_7cde:
    ld bc, $2000                                  ; $7cde: $01 $00 $20
    nop                                           ; $7ce1: $00
    nop                                           ; $7ce2: $00
    add [hl]                                      ; $7ce3: $86
    jr nc, @+$51                                  ; $7ce4: $30 $4f

    ld bc, $49ab                                  ; $7ce6: $01 $ab $49
    nop                                           ; $7ce9: $00
    nop                                           ; $7cea: $00
    rst $38                                       ; $7ceb: $ff
    ld a, a                                       ; $7cec: $7f
    nop                                           ; $7ced: $00
    jr nz, jr_0b4_7cf0                            ; $7cee: $20 $00

jr_0b4_7cf0:
    ld [bc], a                                    ; $7cf0: $02
    nop                                           ; $7cf1: $00
    nop                                           ; $7cf2: $00
    rst $38                                       ; $7cf3: $ff
    ld a, a                                       ; $7cf4: $7f
    nop                                           ; $7cf5: $00
    jr nz, jr_0b4_7cf8                            ; $7cf6: $20 $00

jr_0b4_7cf8:
    ld [bc], a                                    ; $7cf8: $02
    nop                                           ; $7cf9: $00
    nop                                           ; $7cfa: $00
    rst $38                                       ; $7cfb: $ff
    ld a, a                                       ; $7cfc: $7f

jr_0b4_7cfd:
    nop                                           ; $7cfd: $00
    jr nz, jr_0b4_7d00                            ; $7cfe: $20 $00

jr_0b4_7d00:
    ld [bc], a                                    ; $7d00: $02
    nop                                           ; $7d01: $00
    nop                                           ; $7d02: $00
    nop                                           ; $7d03: $00
    jr nz, jr_0b4_7d06                            ; $7d04: $20 $00

jr_0b4_7d06:
    jr nz, jr_0b4_7d08                            ; $7d06: $20 $00

jr_0b4_7d08:
    ld [bc], a                                    ; $7d08: $02
    nop                                           ; $7d09: $00
    jr nz, jr_0b4_7c92                            ; $7d0a: $20 $86

    jr nc, @+$51                                  ; $7d0c: $30 $4f

    ld bc, $49ab                                  ; $7d0e: $01 $ab $49
    nop                                           ; $7d11: $00
    nop                                           ; $7d12: $00
    rst $38                                       ; $7d13: $ff
    ld a, a                                       ; $7d14: $7f
    nop                                           ; $7d15: $00
    jr nz, jr_0b4_7cc3                            ; $7d16: $20 $ab

    ld c, c                                       ; $7d18: $49
    nop                                           ; $7d19: $00
    nop                                           ; $7d1a: $00
    rst $38                                       ; $7d1b: $ff
    ld a, a                                       ; $7d1c: $7f
    nop                                           ; $7d1d: $00
    jr nz, jr_0b4_7ccb                            ; $7d1e: $20 $ab

    ld c, c                                       ; $7d20: $49
    nop                                           ; $7d21: $00
    nop                                           ; $7d22: $00
    nop                                           ; $7d23: $00
    jr nz, jr_0b4_7d26                            ; $7d24: $20 $00

jr_0b4_7d26:
    jr nz, jr_0b4_7d28                            ; $7d26: $20 $00

jr_0b4_7d28:
    ld [bc], a                                    ; $7d28: $02
    nop                                           ; $7d29: $00
    nop                                           ; $7d2a: $00
    nop                                           ; $7d2b: $00
    jr nz, jr_0b4_7d2e                            ; $7d2c: $20 $00

jr_0b4_7d2e:
    jr nz, jr_0b4_7d30                            ; $7d2e: $20 $00

jr_0b4_7d30:
    ld [bc], a                                    ; $7d30: $02
    nop                                           ; $7d31: $00
    nop                                           ; $7d32: $00
    nop                                           ; $7d33: $00
    jr nz, jr_0b4_7d36                            ; $7d34: $20 $00

jr_0b4_7d36:
    jr nz, jr_0b4_7d38                            ; $7d36: $20 $00

jr_0b4_7d38:
    ld [bc], a                                    ; $7d38: $02
    nop                                           ; $7d39: $00
    jr nz, jr_0b4_7d3c                            ; $7d3a: $20 $00

jr_0b4_7d3c:
    jr nz, jr_0b4_7d3e                            ; $7d3c: $20 $00

jr_0b4_7d3e:
    jr nz, jr_0b4_7d40                            ; $7d3e: $20 $00

jr_0b4_7d40:
    ld [bc], a                                    ; $7d40: $02

    db $30, $02, $5b, $01, $0a, $b5, $ff, $ef, $ff, $01, $18, $fd, $0a, $00, $d6, $0c
    db $fb, $d5, $ff, $7f, $0a, $00, $0f, $08, $fd, $fd, $01, $7d, $f8, $d0, $e0, $bb
    db $ff, $df, $20, $30, $05, $d7, $ff, $6b, $3f, $d9, $20, $00, $bf, $32, $10, $00
    db $f7, $ff, $bb, $ff, $77, $ff, $98, $fb, $00, $0a, $f1, $20, $c0, $aa, $f1, $01
    db $fb, $00, $44, $fb, $88, $77, $52, $ad, $cd, $f8, $00, $84, $fc, $a3, $7c, $10
    db $ff, $84, $ff, $00, $08, $f7, $40, $bf, $14, $eb, $63, $3f, $00, $16, $ff, $22
    db $ff, $49, $ff, $02, $ff, $00, $10, $ff, $44, $bb, $1a, $e5, $c3, $ff, $00, $54
    db $ff, $01, $ff, $98, $ff, $2e, $ff, $00, $11, $ff, $48, $b7, $a0, $5f, $dd, $22
    db $00, $aa, $55, $ff, $00, $ff, $00, $7f, $80, $00, $a8, $57, $df, $20, $a3, $5c
    db $87, $78, $20, $e9, $16, $10, $08, $7a, $85, $c7, $38, $b4, $00, $48, $6d, $92
    db $c7, $38, $bd, $42, $57, $40, $a8, $20, $00, $00, $4d, $32, $1f, $00, $53, $00
    db $2c, $a1, $5e, $ff, $00, $ba, $45, $ff, $00, $00, $fd, $02, $e6, $19, $bb, $44
    db $4c, $02, $b3, $96, $69, $00, $ff, $20, $52, $00, $8c, $00, $ff, $28, $ff, $c7
    db $ff, $7b, $ff, $24, $00, $db, $42, $bd, $00, $ff, $08, $ff, $c2, $00, $ff, $18
    db $ff, $27, $ff, $32, $ff, $12, $00, $6d, $80, $7f, $20, $ff, $86, $ff, $14, $08
    db $ff, $ae, $ff, $59, $10, $00, $50, $af, $81, $02, $7e, $40, $ff, $04, $ff, $c9
    db $04, $00, $50, $38, $ff, $f6, $7b, $08, $04, $50, $03, $08, $40, $ff, $c0, $1b
    db $e0, $40, $e0, $04, $18, $13, $18, $00, $01, $30, $18, $28, $e2, $20, $28, $1a
    db $38, $24, $30, $01, $00, $01, $01, $08, $10, $00, $1f, $4f, $70, $bd, $ca, $00
    db $c0, $c0, $00, $20, $40, $a0, $20, $e0, $e0, $e0, $c0, $00, $cc, $88, $56, $cc
    db $32, $57, $ad, $72, $00, $8f, $78, $bf, $70, $8f, $b8, $c7, $f5, $00, $fa, $c7
    db $fe, $39, $47, $d2, $be, $ee, $00, $1e, $cc, $bc, $60, $d0, $d0, $30, $f0, $00
    db $30, $30, $f0, $e0, $e0, $76, $89, $7a, $00, $b5, $4e, $b1, $77, $89, $bd, $c3
    db $c3, $04, $ff, $7e, $7e, $3c, $3c, $38, $08, $84, $9a, $00, $8c, $92, $12, $1e
    db $1e, $1e, $0c, $0c, $8c, $80, $48, $df, $e0, $7f, $9a, $50, $bd, $20, $ff, $7f
    db $01, $7f, $bf, $00, $20, $1f, $a0, $1f, $04, $18, $f8, $dd, $11, $1d, $10, $04
    db $98, $28, $28, $08, $78, $3f, $1f, $a0, $60, $20, $3a, $48, $47, $18

    inc d                                         ; $7eef: $14
    nop                                           ; $7ef0: $00
    ld [de], a                                    ; $7ef1: $12
    nop                                           ; $7ef2: $00
    sub c                                         ; $7ef3: $91
    nop                                           ; $7ef4: $00
    ld [hl], b                                    ; $7ef5: $70
    add b                                         ; $7ef6: $80
    ld bc, $23f8                                  ; $7ef7: $01 $f8 $23
    ld hl, sp+$45                                 ; $7efa: $f8 $45
    ld e, b                                       ; $7efc: $58
    add c                                         ; $7efd: $81
    add d                                         ; $7efe: $82
    add e                                         ; $7eff: $83
    add h                                         ; $7f00: $84
    nop                                           ; $7f01: $00
    add l                                         ; $7f02: $85
    add [hl]                                      ; $7f03: $86
    add a                                         ; $7f04: $87
    add a                                         ; $7f05: $87
    adc b                                         ; $7f06: $88
    adc c                                         ; $7f07: $89
    adc d                                         ; $7f08: $8a
    adc e                                         ; $7f09: $8b
    ld b, d                                       ; $7f0a: $42
    adc h                                         ; $7f0b: $8c
    ld h, b                                       ; $7f0c: $60
    db $10                                        ; $7f0d: $10
    sbc b                                         ; $7f0e: $98
    sbc c                                         ; $7f0f: $99
    sbc d                                         ; $7f10: $9a
    sbc e                                         ; $7f11: $9b
    ld l, c                                       ; $7f12: $69
    jr c, @-$62                                   ; $7f13: $38 $9c

    nop                                           ; $7f15: $00
    sbc l                                         ; $7f16: $9d
    sbc [hl]                                      ; $7f17: $9e
    add b                                         ; $7f18: $80
    add b                                         ; $7f19: $80
    xor d                                         ; $7f1a: $aa
    xor e                                         ; $7f1b: $ab
    xor h                                         ; $7f1c: $ac
    xor l                                         ; $7f1d: $ad
    nop                                           ; $7f1e: $00
    xor [hl]                                      ; $7f1f: $ae
    xor a                                         ; $7f20: $af
    or b                                          ; $7f21: $b0
    add b                                         ; $7f22: $80
    or c                                          ; $7f23: $b1
    or d                                          ; $7f24: $b2
    or e                                          ; $7f25: $b3
    or h                                          ; $7f26: $b4
    nop                                           ; $7f27: $00
    or l                                          ; $7f28: $b5
    add b                                         ; $7f29: $80
    or [hl]                                       ; $7f2a: $b6
    or a                                          ; $7f2b: $b7
    cp b                                          ; $7f2c: $b8
    cp c                                          ; $7f2d: $b9
    add b                                         ; $7f2e: $80
    cp e                                          ; $7f2f: $bb
    nop                                           ; $7f30: $00
    ret z                                         ; $7f31: $c8

    add b                                         ; $7f32: $80
    ret                                           ; $7f33: $c9


    jp z, $cccb                                   ; $7f34: $ca $cb $cc

    call Call_000_00ce                            ; $7f37: $cd $ce $00
    rst $08                                       ; $7f3a: $cf
    ret nc                                        ; $7f3b: $d0

    pop de                                        ; $7f3c: $d1
    jp nc, $d4d3                                  ; $7f3d: $d2 $d3 $d4

    push de                                       ; $7f40: $d5
    sub $00                                       ; $7f41: $d6 $00
    rst $10                                       ; $7f43: $d7
    ret c                                         ; $7f44: $d8

    add b                                         ; $7f45: $80
    reti                                          ; $7f46: $d9


    add sp, -$19                                  ; $7f47: $e8 $e7
    and $e5                                       ; $7f49: $e6 $e5
    nop                                           ; $7f4b: $00
    db $e4                                        ; $7f4c: $e4
    db $e3                                        ; $7f4d: $e3
    ld [c], a                                     ; $7f4e: $e2
    pop hl                                        ; $7f4f: $e1
    ldh [$df], a                                  ; $7f50: $e0 $df
    sbc $dd                                       ; $7f52: $de $dd
    nop                                           ; $7f54: $00
    call c, $dadb                                 ; $7f55: $dc $db $da
    rst $00                                       ; $7f58: $c7
    add $c5                                       ; $7f59: $c6 $c5
    call nz, $00c3                                ; $7f5b: $c4 $c3 $00
    add b                                         ; $7f5e: $80
    add b                                         ; $7f5f: $80
    jp nz, $c0c1                                  ; $7f60: $c2 $c1 $c0

    cp a                                          ; $7f63: $bf
    cp [hl]                                       ; $7f64: $be
    cp l                                          ; $7f65: $bd
    nop                                           ; $7f66: $00
    cp h                                          ; $7f67: $bc
    cp d                                          ; $7f68: $ba
    xor c                                         ; $7f69: $a9
    ret nz                                        ; $7f6a: $c0

    xor b                                         ; $7f6b: $a8
    and a                                         ; $7f6c: $a7
    and [hl]                                      ; $7f6d: $a6
    and l                                         ; $7f6e: $a5
    db $10                                        ; $7f6f: $10
    and h                                         ; $7f70: $a4
    and e                                         ; $7f71: $a3
    and d                                         ; $7f72: $a2
    rst $00                                       ; $7f73: $c7
    ld [$a0a1], sp                                ; $7f74: $08 $a1 $a0
    sbc a                                         ; $7f77: $9f
    sub a                                         ; $7f78: $97
    nop                                           ; $7f79: $00
    sub [hl]                                      ; $7f7a: $96
    sub l                                         ; $7f7b: $95
    sub h                                         ; $7f7c: $94
    sub e                                         ; $7f7d: $93
    sub d                                         ; $7f7e: $92
    sub c                                         ; $7f7f: $91
    sub b                                         ; $7f80: $90
    adc a                                         ; $7f81: $8f
    ld a, $8e                                     ; $7f82: $3e $8e
    adc l                                         ; $7f84: $8d
    reti                                          ; $7f85: $d9


    ld hl, sp-$05                                 ; $7f86: $f8 $fb
    ld hl, sp+$1d                                 ; $7f88: $f8 $1d
    ld sp, hl                                     ; $7f8a: $f9
    ccf                                           ; $7f8b: $3f
    ld sp, hl                                     ; $7f8c: $f9
    ld h, c                                       ; $7f8d: $61
    ld hl, $f500                                  ; $7f8e: $21 $00 $f5
    ld bc, $23f8                                  ; $7f91: $01 $f8 $23
    ld hl, sp+$45                                 ; $7f94: $f8 $45
    ld hl, sp+$67                                 ; $7f96: $f8 $67
    add b                                         ; $7f98: $80
    ld bc, $1001                                  ; $7f99: $01 $01 $10
    ld [bc], a                                    ; $7f9c: $02
    ld bc, $ff30                                  ; $7f9d: $01 $30 $ff
    inc d                                         ; $7fa0: $14
    jr c, jr_0b4_7fb8                             ; $7fa1: $38 $15

    jr c, @+$16                                   ; $7fa3: $38 $14

    xor b                                         ; $7fa5: $a8
    or [hl]                                       ; $7fa6: $b6
    ld hl, sp-$28                                 ; $7fa7: $f8 $d8
    ld hl, sp-$06                                 ; $7fa9: $f8 $fa
    ld hl, sp+$1c                                 ; $7fab: $f8 $1c
    ld sp, hl                                     ; $7fad: $f9
    ld a, $f9                                     ; $7fae: $3e $f9
    add b                                         ; $7fb0: $80
    ld h, b                                       ; $7fb1: $60
    add hl, hl                                    ; $7fb2: $29
    stop                                          ; $7fb3: $10 $00
    ld [bc], a                                    ; $7fb5: $02
    nop                                           ; $7fb6: $00
    db $f4                                        ; $7fb7: $f4

jr_0b4_7fb8:
    xor $ef                                       ; $7fb8: $ee $ef
    ldh a, [$f1]                                  ; $7fba: $f0 $f1
    di                                            ; $7fbc: $f3
    ld a, [c]                                     ; $7fbd: $f2
    db $ed                                        ; $7fbe: $ed
    db $ed                                        ; $7fbf: $ed
    db $ed                                        ; $7fc0: $ed
    db $ed                                        ; $7fc1: $ed
    db $ed                                        ; $7fc2: $ed
    db $ed                                        ; $7fc3: $ed
    db $ed                                        ; $7fc4: $ed
    db $ed                                        ; $7fc5: $ed
    db $ed                                        ; $7fc6: $ed
    push af                                       ; $7fc7: $f5
    or $f7                                        ; $7fc8: $f6 $f7
    ld hl, sp-$07                                 ; $7fca: $f8 $f9
    ld a, [$edfb]                                 ; $7fcc: $fa $fb $ed
    db $ed                                        ; $7fcf: $ed
    db $ed                                        ; $7fd0: $ed
    db $ed                                        ; $7fd1: $ed
    db $ed                                        ; $7fd2: $ed
    db $ed                                        ; $7fd3: $ed
    db $ed                                        ; $7fd4: $ed
    db $ed                                        ; $7fd5: $ed
    db $ed                                        ; $7fd6: $ed
    ld [$0808], sp                                ; $7fd7: $08 $08 $08
    ld [$0808], sp                                ; $7fda: $08 $08 $08
    ld [$0808], sp                                ; $7fdd: $08 $08 $08
    ld [$0808], sp                                ; $7fe0: $08 $08 $08
    ld [$0808], sp                                ; $7fe3: $08 $08 $08
    ld [$0808], sp                                ; $7fe6: $08 $08 $08
    ld [$0808], sp                                ; $7fe9: $08 $08 $08
    ld [$0808], sp                                ; $7fec: $08 $08 $08
    ld [$0808], sp                                ; $7fef: $08 $08 $08
    ld [$0808], sp                                ; $7ff2: $08 $08 $08
    ld [$4b08], sp                                ; $7ff5: $08 $08 $4b
    add hl, sp                                    ; $7ff8: $39
    add hl, hl                                    ; $7ff9: $29
    dec h                                         ; $7ffa: $25
    add h                                         ; $7ffb: $84
    jr jr_0b4_7ffe                                ; $7ffc: $18 $00

jr_0b4_7ffe:
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
