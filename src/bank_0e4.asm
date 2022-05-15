; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0e4", ROMX[$4000], BANK[$e4]

    db $e4                                        ; $4000: $e4
    dec c                                         ; $4001: $0d
    inc b                                         ; $4002: $04
    ei                                            ; $4003: $fb
    dec b                                         ; $4004: $05
    ld a, [c]                                     ; $4005: $f2
    ei                                            ; $4006: $fb
    db $e3                                        ; $4007: $e3
    ld a, [$fee3]                                 ; $4008: $fa $e3 $fe
    di                                            ; $400b: $f3
    ld a, [$fef3]                                 ; $400c: $fa $f3 $fe
    ld [bc], a                                    ; $400f: $02
    rlca                                          ; $4010: $07
    adc e                                         ; $4011: $8b
    inc e                                         ; $4012: $1c
    rra                                           ; $4013: $1f
    jr z, jr_0e4_4055                             ; $4014: $28 $3f

    ld [hl], b                                    ; $4016: $70
    ld a, a                                       ; $4017: $7f
    ld d, b                                       ; $4018: $50
    ld a, a                                       ; $4019: $7f
    adc c                                         ; $401a: $89
    rst $38                                       ; $401b: $ff
    rst $28                                       ; $401c: $ef
    ld [bc], a                                    ; $401d: $02
    rst $38                                       ; $401e: $ff
    sub c                                         ; $401f: $91
    cp $7f                                        ; $4020: $fe $7f
    ld a, h                                       ; $4022: $7c
    cpl                                           ; $4023: $2f
    ld a, $2f                                     ; $4024: $3e $2f
    ld a, $1f                                     ; $4026: $3e $1f
    dec e                                         ; $4028: $1d
    inc hl                                        ; $4029: $23
    ccf                                           ; $402a: $3f
    ld e, h                                       ; $402b: $5c
    ld a, a                                       ; $402c: $7f
    ld [hl], a                                    ; $402d: $77
    ld a, a                                       ; $402e: $7f
    ld [hl], $3f                                  ; $402f: $36 $3f
    ld [bc], a                                    ; $4031: $02
    inc c                                         ; $4032: $0c
    add a                                         ; $4033: $87
    ld [bc], a                                    ; $4034: $02
    ld c, $01                                     ; $4035: $0e $01
    rrca                                          ; $4037: $0f
    inc bc                                        ; $4038: $03
    rrca                                          ; $4039: $0f
    ld b, $02                                     ; $403a: $06 $02
    ld c, $8b                                     ; $403c: $0e $8b
    ld a, [bc]                                    ; $403e: $0a
    ld c, $06                                     ; $403f: $0e $06
    rrca                                          ; $4041: $0f
    ld bc, $020e                                  ; $4042: $01 $0e $02
    ld c, $02                                     ; $4045: $0e $02
    inc c                                         ; $4047: $0c
    inc b                                         ; $4048: $04
    inc b                                         ; $4049: $04
    ld [$0483], sp                                ; $404a: $08 $83 $04
    inc c                                         ; $404d: $0c
    inc b                                         ; $404e: $04
    inc bc                                        ; $404f: $03
    inc c                                         ; $4050: $0c
    sbc h                                         ; $4051: $9c
    inc h                                         ; $4052: $24
    ccf                                           ; $4053: $3f
    inc l                                         ; $4054: $2c

jr_0e4_4055:
    ccf                                           ; $4055: $3f
    inc h                                         ; $4056: $24
    ccf                                           ; $4057: $3f
    inc h                                         ; $4058: $24
    ccf                                           ; $4059: $3f
    ld b, h                                       ; $405a: $44
    ld a, a                                       ; $405b: $7f
    inc a                                         ; $405c: $3c
    ccf                                           ; $405d: $3f
    ld b, h                                       ; $405e: $44
    ld a, a                                       ; $405f: $7f
    inc a                                         ; $4060: $3c
    daa                                           ; $4061: $27
    jr c, jr_0e4_40a3                             ; $4062: $38 $3f

    jr nz, jr_0e4_40a5                            ; $4064: $20 $3f

    ld hl, $413f                                  ; $4066: $21 $3f $41
    ld a, a                                       ; $4069: $7f
    ld sp, hl                                     ; $406a: $f9
    rst $38                                       ; $406b: $ff
    add e                                         ; $406c: $83
    rst $38                                       ; $406d: $ff
    ld [bc], a                                    ; $406e: $02
    ld a, a                                       ; $406f: $7f
    ld [bc], a                                    ; $4070: $02
    nop                                           ; $4071: $00
    inc b                                         ; $4072: $04
    ld [$0c08], sp                                ; $4073: $08 $08 $0c
    ld b, $08                                     ; $4076: $06 $08
    ld [$040c], sp                                ; $4078: $08 $0c $04
    rrca                                          ; $407b: $0f
    ld [bc], a                                    ; $407c: $02
    nop                                           ; $407d: $00
    rst $38                                       ; $407e: $ff
    dec c                                         ; $407f: $0d
    inc b                                         ; $4080: $04
    ei                                            ; $4081: $fb
    dec b                                         ; $4082: $05
    ld a, [c]                                     ; $4083: $f2
    ei                                            ; $4084: $fb
    ld [c], a                                     ; $4085: $e2
    ld a, [$fee2]                                 ; $4086: $fa $e2 $fe
    ld a, [c]                                     ; $4089: $f2
    ld a, [$fcf2]                                 ; $408a: $fa $f2 $fc
    ld [bc], a                                    ; $408d: $02
    rlca                                          ; $408e: $07
    sbc [hl]                                      ; $408f: $9e
    jr jr_0e4_40b1                                ; $4090: $18 $1f

    jr nc, jr_0e4_40d3                            ; $4092: $30 $3f

    ld [hl], b                                    ; $4094: $70
    ld a, a                                       ; $4095: $7f
    ld d, b                                       ; $4096: $50
    ld a, a                                       ; $4097: $7f
    sub c                                         ; $4098: $91
    rst $38                                       ; $4099: $ff
    set 7, [hl]                                   ; $409a: $cb $fe
    rst $38                                       ; $409c: $ff
    cp $7f                                        ; $409d: $fe $7f
    ld a, h                                       ; $409f: $7c
    cpl                                           ; $40a0: $2f
    ld a, $2f                                     ; $40a1: $3e $2f

jr_0e4_40a3:
    ld a, $1f                                     ; $40a3: $3e $1f

jr_0e4_40a5:
    dec e                                         ; $40a5: $1d
    inc hl                                        ; $40a6: $23
    ccf                                           ; $40a7: $3f
    ld e, h                                       ; $40a8: $5c
    ld a, a                                       ; $40a9: $7f
    ld [hl], a                                    ; $40aa: $77
    ld a, a                                       ; $40ab: $7f
    ld [hl], $3f                                  ; $40ac: $36 $3f
    ld [bc], a                                    ; $40ae: $02
    inc c                                         ; $40af: $0c
    add [hl]                                      ; $40b0: $86

jr_0e4_40b1:
    ld [bc], a                                    ; $40b1: $02
    ld c, $03                                     ; $40b2: $0e $03
    rrca                                          ; $40b4: $0f
    dec b                                         ; $40b5: $05
    rrca                                          ; $40b6: $0f
    inc bc                                        ; $40b7: $03
    ld c, $8b                                     ; $40b8: $0e $8b
    ld a, [bc]                                    ; $40ba: $0a
    ld c, $06                                     ; $40bb: $0e $06
    rrca                                          ; $40bd: $0f
    ld bc, $020e                                  ; $40be: $01 $0e $02
    ld c, $02                                     ; $40c1: $0e $02
    inc c                                         ; $40c3: $0c
    inc b                                         ; $40c4: $04
    ld b, $08                                     ; $40c5: $06 $08
    add c                                         ; $40c7: $81
    inc b                                         ; $40c8: $04
    inc bc                                        ; $40c9: $03
    inc c                                         ; $40ca: $0c
    sbc [hl]                                      ; $40cb: $9e
    ld [hl-], a                                   ; $40cc: $32
    ccf                                           ; $40cd: $3f
    ld [hl], $3f                                  ; $40ce: $36 $3f
    ld [hl-], a                                   ; $40d0: $32
    ccf                                           ; $40d1: $3f
    ld [hl-], a                                   ; $40d2: $32

jr_0e4_40d3:
    ccf                                           ; $40d3: $3f
    ld sp, $373f                                  ; $40d4: $31 $3f $37
    ccf                                           ; $40d7: $3f
    add hl, hl                                    ; $40d8: $29
    ccf                                           ; $40d9: $3f
    cpl                                           ; $40da: $2f
    add hl, sp                                    ; $40db: $39
    ld h, $3f                                     ; $40dc: $26 $3f
    jr nz, jr_0e4_411f                            ; $40de: $20 $3f

    jr nz, jr_0e4_4121                            ; $40e0: $20 $3f

    ld b, b                                       ; $40e2: $40
    ld a, a                                       ; $40e3: $7f
    ld b, h                                       ; $40e4: $44
    ld a, a                                       ; $40e5: $7f
    ld sp, hl                                     ; $40e6: $f9
    rst $38                                       ; $40e7: $ff
    add c                                         ; $40e8: $81
    rst $38                                       ; $40e9: $ff
    ld [bc], a                                    ; $40ea: $02
    ld a, a                                       ; $40eb: $7f
    ld [bc], a                                    ; $40ec: $02
    inc bc                                        ; $40ed: $03
    ld [bc], a                                    ; $40ee: $02
    ld [bc], a                                    ; $40ef: $02
    inc d                                         ; $40f0: $14
    inc bc                                        ; $40f1: $03
    inc b                                         ; $40f2: $04
    ld [bc], a                                    ; $40f3: $02
    inc b                                         ; $40f4: $04
    inc bc                                        ; $40f5: $03
    rst $38                                       ; $40f6: $ff
    dec c                                         ; $40f7: $0d
    inc b                                         ; $40f8: $04
    ld sp, hl                                     ; $40f9: $f9
    ld [$01f2], sp                                ; $40fa: $08 $f2 $01
    ld [c], a                                     ; $40fd: $e2
    ld a, [$fee2]                                 ; $40fe: $fa $e2 $fe
    ld a, [c]                                     ; $4101: $f2
    ld a, [$fef2]                                 ; $4102: $fa $f2 $fe
    ld [bc], a                                    ; $4105: $02
    rlca                                          ; $4106: $07
    sbc [hl]                                      ; $4107: $9e
    jr jr_0e4_4129                                ; $4108: $18 $1f

    jr nc, jr_0e4_414b                            ; $410a: $30 $3f

    ld h, b                                       ; $410c: $60
    ld a, a                                       ; $410d: $7f
    ld h, b                                       ; $410e: $60
    ld a, a                                       ; $410f: $7f
    and c                                         ; $4110: $a1
    rst $38                                       ; $4111: $ff
    sub a                                         ; $4112: $97
    cp $ff                                        ; $4113: $fe $ff
    db $fc                                        ; $4115: $fc
    ld a, a                                       ; $4116: $7f
    ld a, h                                       ; $4117: $7c
    ccf                                           ; $4118: $3f
    inc a                                         ; $4119: $3c
    cpl                                           ; $411a: $2f
    ld a, $1f                                     ; $411b: $3e $1f
    dec e                                         ; $411d: $1d
    inc hl                                        ; $411e: $23

jr_0e4_411f:
    ccf                                           ; $411f: $3f
    ld e, h                                       ; $4120: $5c

jr_0e4_4121:
    ld a, a                                       ; $4121: $7f
    ld [hl], a                                    ; $4122: $77
    ld a, a                                       ; $4123: $7f
    ld [hl], $3f                                  ; $4124: $36 $3f
    ld [bc], a                                    ; $4126: $02
    inc c                                         ; $4127: $0c
    add [hl]                                      ; $4128: $86

jr_0e4_4129:
    ld [bc], a                                    ; $4129: $02
    ld c, $07                                     ; $412a: $0e $07
    rrca                                          ; $412c: $0f
    dec c                                         ; $412d: $0d
    rrca                                          ; $412e: $0f
    inc bc                                        ; $412f: $03
    ld c, $8b                                     ; $4130: $0e $8b
    ld [bc], a                                    ; $4132: $02
    ld c, $0a                                     ; $4133: $0e $0a
    rrca                                          ; $4135: $0f
    ld bc, $020e                                  ; $4136: $01 $0e $02
    ld c, $02                                     ; $4139: $0e $02
    inc c                                         ; $413b: $0c
    inc b                                         ; $413c: $04
    ld b, $0c                                     ; $413d: $06 $0c
    add c                                         ; $413f: $81
    inc b                                         ; $4140: $04
    inc bc                                        ; $4141: $03
    inc c                                         ; $4142: $0c
    sbc [hl]                                      ; $4143: $9e
    ld [hl-], a                                   ; $4144: $32
    ccf                                           ; $4145: $3f
    ld [hl], $3f                                  ; $4146: $36 $3f
    ld [hl], $3f                                  ; $4148: $36 $3f
    ld [hl-], a                                   ; $414a: $32

jr_0e4_414b:
    ccf                                           ; $414b: $3f
    ld [hl+], a                                   ; $414c: $22
    ccf                                           ; $414d: $3f
    ld l, $3f                                     ; $414e: $2e $3f
    ld [hl-], a                                   ; $4150: $32
    ccf                                           ; $4151: $3f
    ld a, $33                                     ; $4152: $3e $33
    ld l, $3f                                     ; $4154: $2e $3f
    jr nz, jr_0e4_4197                            ; $4156: $20 $3f

    jr nz, jr_0e4_4199                            ; $4158: $20 $3f

    ld b, b                                       ; $415a: $40
    ld a, a                                       ; $415b: $7f
    ld c, b                                       ; $415c: $48
    ld a, a                                       ; $415d: $7f
    pop af                                        ; $415e: $f1
    rst $38                                       ; $415f: $ff
    add a                                         ; $4160: $87
    rst $38                                       ; $4161: $ff
    ld [bc], a                                    ; $4162: $02
    ld a, a                                       ; $4163: $7f
    ld [bc], a                                    ; $4164: $02
    ld [$0c04], sp                                ; $4165: $08 $04 $0c
    ld [bc], a                                    ; $4168: $02
    ld c, $84                                     ; $4169: $0e $84
    rrca                                          ; $416b: $0f
    dec c                                         ; $416c: $0d
    rrca                                          ; $416d: $0f
    dec c                                         ; $416e: $0d
    ld [bc], a                                    ; $416f: $02
    ld c, $02                                     ; $4170: $0e $02
    inc c                                         ; $4172: $0c
    inc c                                         ; $4173: $0c
    ld [$0c04], sp                                ; $4174: $08 $04 $0c
    rst $38                                       ; $4177: $ff
    dec c                                         ; $4178: $0d
    inc b                                         ; $4179: $04
    ld sp, hl                                     ; $417a: $f9
    ld [$01f2], sp                                ; $417b: $08 $f2 $01
    ld [c], a                                     ; $417e: $e2
    ld a, [$fee2]                                 ; $417f: $fa $e2 $fe
    ld a, [c]                                     ; $4182: $f2
    ld a, [$fff2]                                 ; $4183: $fa $f2 $ff
    ld [bc], a                                    ; $4186: $02
    rlca                                          ; $4187: $07
    sub h                                         ; $4188: $94
    jr jr_0e4_41aa                                ; $4189: $18 $1f

    jr nc, jr_0e4_41cc                            ; $418b: $30 $3f

    ld h, b                                       ; $418d: $60
    ld a, a                                       ; $418e: $7f
    ld h, c                                       ; $418f: $61
    ld a, a                                       ; $4190: $7f
    or e                                          ; $4191: $b3
    cp $df                                        ; $4192: $fe $df
    db $fc                                        ; $4194: $fc
    rst $38                                       ; $4195: $ff
    db $fc                                        ; $4196: $fc

jr_0e4_4197:
    ld a, a                                       ; $4197: $7f
    ld a, b                                       ; $4198: $78

jr_0e4_4199:
    cpl                                           ; $4199: $2f
    jr c, @+$21                                   ; $419a: $38 $1f

    inc e                                         ; $419c: $1c
    ld [bc], a                                    ; $419d: $02
    ccf                                           ; $419e: $3f
    adc b                                         ; $419f: $88
    ld e, a                                       ; $41a0: $5f
    ld a, l                                       ; $41a1: $7d
    ld b, e                                       ; $41a2: $43
    ld a, a                                       ; $41a3: $7f
    ld a, h                                       ; $41a4: $7c
    ld a, a                                       ; $41a5: $7f
    scf                                           ; $41a6: $37
    ccf                                           ; $41a7: $3f
    ld [bc], a                                    ; $41a8: $02
    inc c                                         ; $41a9: $0c

jr_0e4_41aa:
    add a                                         ; $41aa: $87
    ld b, $0e                                     ; $41ab: $06 $0e
    dec b                                         ; $41ad: $05
    rrca                                          ; $41ae: $0f
    dec c                                         ; $41af: $0d
    rrca                                          ; $41b0: $0f
    rlca                                          ; $41b1: $07
    ld [bc], a                                    ; $41b2: $02
    rrca                                          ; $41b3: $0f
    add a                                         ; $41b4: $87
    inc bc                                        ; $41b5: $03
    ld c, $0a                                     ; $41b6: $0e $0a
    rrca                                          ; $41b8: $0f
    ld bc, $020e                                  ; $41b9: $01 $0e $02
    inc bc                                        ; $41bc: $03
    ld c, $88                                     ; $41bd: $0e $88
    ld b, $0a                                     ; $41bf: $06 $0a
    ld c, $0a                                     ; $41c1: $0e $0a
    ld c, $0a                                     ; $41c3: $0e $0a
    ld c, $04                                     ; $41c5: $0e $04
    inc bc                                        ; $41c7: $03
    inc c                                         ; $41c8: $0c
    sbc [hl]                                      ; $41c9: $9e
    inc sp                                        ; $41ca: $33
    ccf                                           ; $41cb: $3f

jr_0e4_41cc:
    ld [hl], $3f                                  ; $41cc: $36 $3f
    ld [hl], $3f                                  ; $41ce: $36 $3f
    ld [hl-], a                                   ; $41d0: $32
    ccf                                           ; $41d1: $3f
    ld [hl+], a                                   ; $41d2: $22
    ccf                                           ; $41d3: $3f
    ld l, $3f                                     ; $41d4: $2e $3f
    ld [hl-], a                                   ; $41d6: $32
    ccf                                           ; $41d7: $3f
    ld a, $33                                     ; $41d8: $3e $33
    ld l, $3f                                     ; $41da: $2e $3f
    jr nz, jr_0e4_421d                            ; $41dc: $20 $3f

    jr nz, jr_0e4_421f                            ; $41de: $20 $3f

    jr nz, @+$41                                  ; $41e0: $20 $3f

    ld c, b                                       ; $41e2: $48
    ld a, a                                       ; $41e3: $7f
    pop af                                        ; $41e4: $f1
    rst $38                                       ; $41e5: $ff
    add a                                         ; $41e6: $87
    rst $38                                       ; $41e7: $ff
    ld [bc], a                                    ; $41e8: $02
    ld a, a                                       ; $41e9: $7f
    ld [bc], a                                    ; $41ea: $02
    db $10                                        ; $41eb: $10
    ld [bc], a                                    ; $41ec: $02
    inc e                                         ; $41ed: $1c
    add [hl]                                      ; $41ee: $86
    ld [de], a                                    ; $41ef: $12
    ld e, $17                                     ; $41f0: $1e $17
    dec e                                         ; $41f2: $1d
    rla                                           ; $41f3: $17
    dec e                                         ; $41f4: $1d
    ld [bc], a                                    ; $41f5: $02
    rra                                           ; $41f6: $1f
    inc b                                         ; $41f7: $04
    jr jr_0e4_4206                                ; $41f8: $18 $0c

    db $10                                        ; $41fa: $10
    inc b                                         ; $41fb: $04
    jr @+$01                                      ; $41fc: $18 $ff

    dec c                                         ; $41fe: $0d
    inc b                                         ; $41ff: $04
    ld sp, hl                                     ; $4200: $f9
    ld [$01f2], sp                                ; $4201: $08 $f2 $01
    ld [c], a                                     ; $4204: $e2
    ld sp, hl                                     ; $4205: $f9

jr_0e4_4206:
    ld [c], a                                     ; $4206: $e2
    ld bc, $faf2                                  ; $4207: $01 $f2 $fa
    ld a, [c]                                     ; $420a: $f2
    ld bc, $0702                                  ; $420b: $01 $02 $07
    sub h                                         ; $420e: $94
    jr jr_0e4_4230                                ; $420f: $18 $1f

    jr nc, jr_0e4_4252                            ; $4211: $30 $3f

    ld h, b                                       ; $4213: $60
    ld a, a                                       ; $4214: $7f
    ld h, c                                       ; $4215: $61
    ld a, a                                       ; $4216: $7f
    or e                                          ; $4217: $b3
    cp $df                                        ; $4218: $fe $df
    db $fc                                        ; $421a: $fc
    rst $38                                       ; $421b: $ff
    db $fc                                        ; $421c: $fc

jr_0e4_421d:
    ld a, a                                       ; $421d: $7f
    ld a, b                                       ; $421e: $78

jr_0e4_421f:
    cpl                                           ; $421f: $2f
    jr c, @+$21                                   ; $4220: $38 $1f

    inc e                                         ; $4222: $1c
    ld [bc], a                                    ; $4223: $02
    ccf                                           ; $4224: $3f
    adc b                                         ; $4225: $88
    cpl                                           ; $4226: $2f
    ld a, $25                                     ; $4227: $3e $25
    ccf                                           ; $4229: $3f
    ld a, [hl-]                                   ; $422a: $3a
    ccf                                           ; $422b: $3f
    rla                                           ; $422c: $17
    rra                                           ; $422d: $1f
    ld [bc], a                                    ; $422e: $02
    ret nz                                        ; $422f: $c0

jr_0e4_4230:
    add a                                         ; $4230: $87
    ld h, b                                       ; $4231: $60
    ldh [$50], a                                  ; $4232: $e0 $50
    ldh a, [$d0]                                  ; $4234: $f0 $d0
    ldh a, [rSVBK]                                ; $4236: $f0 $70
    ld [bc], a                                    ; $4238: $02
    ldh a, [$87]                                  ; $4239: $f0 $87
    jr nc, jr_0e4_421d                            ; $423b: $30 $e0

    and b                                         ; $423d: $a0
    ldh a, [rNR10]                                ; $423e: $f0 $10
    ldh [rNR41], a                                ; $4240: $e0 $20
    inc bc                                        ; $4242: $03
    ldh [$a9], a                                  ; $4243: $e0 $a9
    ld h, b                                       ; $4245: $60
    and b                                         ; $4246: $a0
    ldh [$d0], a                                  ; $4247: $e0 $d0
    ldh a, [$d0]                                  ; $4249: $f0 $d0
    ldh a, [$ae]                                  ; $424b: $f0 $ae
    xor $ff                                       ; $424d: $ee $ff
    pop af                                        ; $424f: $f1
    daa                                           ; $4250: $27
    ccf                                           ; $4251: $3f

jr_0e4_4252:
    inc l                                         ; $4252: $2c
    ccf                                           ; $4253: $3f
    inc l                                         ; $4254: $2c
    ccf                                           ; $4255: $3f
    inc h                                         ; $4256: $24
    ccf                                           ; $4257: $3f
    ld b, h                                       ; $4258: $44
    ld a, a                                       ; $4259: $7f
    ld e, h                                       ; $425a: $5c
    ld a, a                                       ; $425b: $7f
    inc h                                         ; $425c: $24
    ccf                                           ; $425d: $3f
    inc a                                         ; $425e: $3c
    daa                                           ; $425f: $27
    inc e                                         ; $4260: $1c
    rra                                           ; $4261: $1f
    db $10                                        ; $4262: $10
    rra                                           ; $4263: $1f
    jr nz, jr_0e4_42a5                            ; $4264: $20 $3f

    jr nz, @+$41                                  ; $4266: $20 $3f

    ld c, c                                       ; $4268: $49
    ld a, a                                       ; $4269: $7f
    pop af                                        ; $426a: $f1
    rst $38                                       ; $426b: $ff
    add a                                         ; $426c: $87
    rst $38                                       ; $426d: $ff
    ld [bc], a                                    ; $426e: $02
    ld a, a                                       ; $426f: $7f
    add [hl]                                      ; $4270: $86
    ld e, a                                       ; $4271: $5f
    ld a, c                                       ; $4272: $79
    halt                                          ; $4273: $76
    ld a, [hl]                                    ; $4274: $7e
    ld [hl], d                                    ; $4275: $72
    ld a, [hl]                                    ; $4276: $7e
    ld [bc], a                                    ; $4277: $02
    ld l, h                                       ; $4278: $6c
    inc c                                         ; $4279: $0c
    ld h, b                                       ; $427a: $60
    ld [$0440], sp                                ; $427b: $08 $40 $04
    ld h, b                                       ; $427e: $60
    rst $38                                       ; $427f: $ff
    rrca                                          ; $4280: $0f
    dec b                                         ; $4281: $05
    ld sp, hl                                     ; $4282: $f9
    ld [$01f2], sp                                ; $4283: $08 $f2 $01
    db $e3                                        ; $4286: $e3
    ld hl, sp-$1d                                 ; $4287: $f8 $e3
    nop                                           ; $4289: $00
    db $ed                                        ; $428a: $ed
    ld [bc], a                                    ; $428b: $02
    di                                            ; $428c: $f3
    ld a, [$fcf3]                                 ; $428d: $fa $f3 $fc
    ld [bc], a                                    ; $4290: $02
    rlca                                          ; $4291: $07
    sub h                                         ; $4292: $94
    jr jr_0e4_42b4                                ; $4293: $18 $1f

    jr nc, jr_0e4_42d6                            ; $4295: $30 $3f

    ld h, b                                       ; $4297: $60
    ld a, a                                       ; $4298: $7f
    ld h, c                                       ; $4299: $61
    ld a, a                                       ; $429a: $7f
    or e                                          ; $429b: $b3
    cp $9f                                        ; $429c: $fe $9f
    db $fc                                        ; $429e: $fc
    rst $38                                       ; $429f: $ff
    db $fc                                        ; $42a0: $fc

jr_0e4_42a1:
    ld a, a                                       ; $42a1: $7f
    ld a, b                                       ; $42a2: $78
    rla                                           ; $42a3: $17
    inc e                                         ; $42a4: $1c

jr_0e4_42a5:
    rra                                           ; $42a5: $1f
    ld e, $02                                     ; $42a6: $1e $02
    rra                                           ; $42a8: $1f
    adc b                                         ; $42a9: $88
    rla                                           ; $42aa: $17
    rra                                           ; $42ab: $1f
    ld [de], a                                    ; $42ac: $12
    rra                                           ; $42ad: $1f
    dec e                                         ; $42ae: $1d
    rra                                           ; $42af: $1f
    dec bc                                        ; $42b0: $0b
    rrca                                          ; $42b1: $0f
    ld [bc], a                                    ; $42b2: $02
    ret nz                                        ; $42b3: $c0

jr_0e4_42b4:
    add a                                         ; $42b4: $87
    ld h, b                                       ; $42b5: $60
    ldh [$d0], a                                  ; $42b6: $e0 $d0
    ldh a, [$d0]                                  ; $42b8: $f0 $d0
    ldh a, [rSVBK]                                ; $42ba: $f0 $70
    ld [bc], a                                    ; $42bc: $02
    ldh a, [$95]                                  ; $42bd: $f0 $95
    jr nc, jr_0e4_42a1                            ; $42bf: $30 $e0

    and b                                         ; $42c1: $a0
    ldh a, [rNR10]                                ; $42c2: $f0 $10
    ldh [rNR41], a                                ; $42c4: $e0 $20
    ldh a, [rSVBK]                                ; $42c6: $f0 $70
    di                                            ; $42c8: $f3
    inc sp                                        ; $42c9: $33
    rst $10                                       ; $42ca: $d7
    db $f4                                        ; $42cb: $f4
    rst $28                                       ; $42cc: $ef
    ld a, [hl]                                    ; $42cd: $7e
    db $ed                                        ; $42ce: $ed
    rst $38                                       ; $42cf: $ff
    ld d, h                                       ; $42d0: $54
    rst $38                                       ; $42d1: $ff
    rst $30                                       ; $42d2: $f7
    rst $38                                       ; $42d3: $ff
    ld [bc], a                                    ; $42d4: $02
    ld [bc], a                                    ; $42d5: $02

jr_0e4_42d6:
    add h                                         ; $42d6: $84
    inc bc                                        ; $42d7: $03
    ld bc, $0103                                  ; $42d8: $01 $03 $01
    inc b                                         ; $42db: $04
    ld [bc], a                                    ; $42dc: $02
    ld [bc], a                                    ; $42dd: $02
    nop                                           ; $42de: $00
    ld [bc], a                                    ; $42df: $02
    ld hl, sp+$02                                 ; $42e0: $f8 $02
    ret nz                                        ; $42e2: $c0

    add l                                         ; $42e3: $85
    ld b, b                                       ; $42e4: $40
    ret nz                                        ; $42e5: $c0

    ld b, b                                       ; $42e6: $40
    ret nz                                        ; $42e7: $c0

    ld b, b                                       ; $42e8: $40
    dec b                                         ; $42e9: $05
    ret nz                                        ; $42ea: $c0

    inc b                                         ; $42eb: $04
    ldh [rSC], a                                  ; $42ec: $e0 $02
    ret nz                                        ; $42ee: $c0

    sbc h                                         ; $42ef: $9c
    daa                                           ; $42f0: $27
    ccf                                           ; $42f1: $3f
    dec l                                         ; $42f2: $2d
    ccf                                           ; $42f3: $3f
    dec l                                         ; $42f4: $2d
    ccf                                           ; $42f5: $3f
    dec h                                         ; $42f6: $25
    ccf                                           ; $42f7: $3f
    ld b, l                                       ; $42f8: $45
    ld a, a                                       ; $42f9: $7f
    ld e, h                                       ; $42fa: $5c
    ld a, a                                       ; $42fb: $7f
    inc h                                         ; $42fc: $24
    ccf                                           ; $42fd: $3f
    inc a                                         ; $42fe: $3c
    daa                                           ; $42ff: $27
    inc e                                         ; $4300: $1c
    rra                                           ; $4301: $1f
    db $10                                        ; $4302: $10
    rra                                           ; $4303: $1f
    ld hl, $493f                                  ; $4304: $21 $3f $49
    ld a, a                                       ; $4307: $7f
    di                                            ; $4308: $f3
    rst $38                                       ; $4309: $ff
    add a                                         ; $430a: $87
    rst $38                                       ; $430b: $ff
    ld [bc], a                                    ; $430c: $02
    ld a, a                                       ; $430d: $7f
    ld d, $00                                     ; $430e: $16 $00
    ld [bc], a                                    ; $4310: $02
    inc bc                                        ; $4311: $03
    inc b                                         ; $4312: $04
    ld [bc], a                                    ; $4313: $02
    inc b                                         ; $4314: $04
    inc bc                                        ; $4315: $03
    ld [bc], a                                    ; $4316: $02
    nop                                           ; $4317: $00
    rst $38                                       ; $4318: $ff
    rrca                                          ; $4319: $0f
    dec b                                         ; $431a: $05
    ld sp, hl                                     ; $431b: $f9
    ld [$01f2], sp                                ; $431c: $08 $f2 $01
    db $e4                                        ; $431f: $e4
    ld hl, sp-$1c                                 ; $4320: $f8 $e4
    nop                                           ; $4322: $00
    ldh a, [rSB]                                  ; $4323: $f0 $01
    db $f4                                        ; $4325: $f4
    ld a, [$fcf4]                                 ; $4326: $fa $f4 $fc
    ld [bc], a                                    ; $4329: $02
    rlca                                          ; $432a: $07
    sub h                                         ; $432b: $94
    jr jr_0e4_434d                                ; $432c: $18 $1f

    jr nc, @+$41                                  ; $432e: $30 $3f

    ld h, b                                       ; $4330: $60
    ld a, a                                       ; $4331: $7f
    ld h, c                                       ; $4332: $61
    ld a, a                                       ; $4333: $7f
    or e                                          ; $4334: $b3
    cp $9f                                        ; $4335: $fe $9f
    db $fc                                        ; $4337: $fc
    rst $38                                       ; $4338: $ff
    db $fc                                        ; $4339: $fc
    ld a, a                                       ; $433a: $7f
    ld a, b                                       ; $433b: $78
    rla                                           ; $433c: $17
    inc e                                         ; $433d: $1c
    rra                                           ; $433e: $1f
    ld e, $02                                     ; $433f: $1e $02
    rra                                           ; $4341: $1f
    add e                                         ; $4342: $83
    dec d                                         ; $4343: $15
    rra                                           ; $4344: $1f
    ld [de], a                                    ; $4345: $12
    inc bc                                        ; $4346: $03
    rra                                           ; $4347: $1f
    add d                                         ; $4348: $82
    dec bc                                        ; $4349: $0b
    rrca                                          ; $434a: $0f
    ld [bc], a                                    ; $434b: $02
    ret nz                                        ; $434c: $c0

jr_0e4_434d:
    sbc h                                         ; $434d: $9c
    ld h, b                                       ; $434e: $60
    ldh [$d0], a                                  ; $434f: $e0 $d0
    ldh a, [$d0]                                  ; $4351: $f0 $d0
    ldh a, [rSVBK]                                ; $4353: $f0 $70
    ldh a, [$fe]                                  ; $4355: $f0 $fe
    cp [hl]                                       ; $4357: $be
    rst $38                                       ; $4358: $ff
    cp c                                          ; $4359: $b9
    rst $38                                       ; $435a: $ff
    ld de, $2fef                                  ; $435b: $11 $ef $2f
    ld sp, hl                                     ; $435e: $f9
    ld a, a                                       ; $435f: $7f
    rst $38                                       ; $4360: $ff
    ccf                                           ; $4361: $3f
    db $dd                                        ; $4362: $dd
    rst $38                                       ; $4363: $ff
    db $ec                                        ; $4364: $ec
    ld a, a                                       ; $4365: $7f
    ld [$9fff], a                                 ; $4366: $ea $ff $9f
    rst $38                                       ; $4369: $ff
    ld [bc], a                                    ; $436a: $02
    db $fc                                        ; $436b: $fc
    inc b                                         ; $436c: $04
    ld bc, $0004                                  ; $436d: $01 $04 $00
    inc b                                         ; $4370: $04
    ldh [$81], a                                  ; $4371: $e0 $81
    and b                                         ; $4373: $a0
    ld [bc], a                                    ; $4374: $02
    ldh [rSC], a                                  ; $4375: $e0 $02
    and b                                         ; $4377: $a0
    add c                                         ; $4378: $81
    ldh [$08], a                                  ; $4379: $e0 $08
    ldh a, [rSC]                                  ; $437b: $f0 $02
    ldh [rDIV], a                                 ; $437d: $e0 $04
    ret nz                                        ; $437f: $c0

    sbc d                                         ; $4380: $9a
    ld h, $3e                                     ; $4381: $26 $3e
    inc l                                         ; $4383: $2c
    ld a, $4c                                     ; $4384: $3e $4c
    ld a, [hl]                                    ; $4386: $7e
    ld b, h                                       ; $4387: $44
    ld a, [hl]                                    ; $4388: $7e
    ld d, h                                       ; $4389: $54
    ld a, [hl]                                    ; $438a: $7e
    inc l                                         ; $438b: $2c
    ld [hl], $3c                                  ; $438c: $36 $3c
    ld h, $1c                                     ; $438e: $26 $1c
    ld e, $10                                     ; $4390: $1e $10
    ld e, $20                                     ; $4392: $1e $20
    ld a, $5a                                     ; $4394: $3e $5a
    ld a, [hl]                                    ; $4396: $7e
    ld a, [c]                                     ; $4397: $f2
    cp $8f                                        ; $4398: $fe $8f
    rst $38                                       ; $439a: $ff
    ld [bc], a                                    ; $439b: $02
    ld a, a                                       ; $439c: $7f
    inc e                                         ; $439d: $1c
    nop                                           ; $439e: $00
    inc b                                         ; $439f: $04
    inc bc                                        ; $43a0: $03
    inc b                                         ; $43a1: $04
    nop                                           ; $43a2: $00
    rst $38                                       ; $43a3: $ff
    dec c                                         ; $43a4: $0d
    inc b                                         ; $43a5: $04
    ld sp, hl                                     ; $43a6: $f9
    ld [$01f2], sp                                ; $43a7: $08 $f2 $01
    db $e4                                        ; $43aa: $e4
    ld hl, sp-$1c                                 ; $43ab: $f8 $e4
    nop                                           ; $43ad: $00
    db $f4                                        ; $43ae: $f4
    ld a, [$fdf4]                                 ; $43af: $fa $f4 $fd
    ld [bc], a                                    ; $43b2: $02
    rlca                                          ; $43b3: $07
    sub h                                         ; $43b4: $94
    jr jr_0e4_43d6                                ; $43b5: $18 $1f

    jr nc, jr_0e4_43f8                            ; $43b7: $30 $3f

    ld h, b                                       ; $43b9: $60
    ld a, a                                       ; $43ba: $7f
    ld h, c                                       ; $43bb: $61
    ld a, a                                       ; $43bc: $7f
    or e                                          ; $43bd: $b3
    cp $9f                                        ; $43be: $fe $9f
    db $fc                                        ; $43c0: $fc
    rst $38                                       ; $43c1: $ff
    db $fc                                        ; $43c2: $fc
    ld a, a                                       ; $43c3: $7f
    ld a, b                                       ; $43c4: $78
    rla                                           ; $43c5: $17
    inc e                                         ; $43c6: $1c
    rra                                           ; $43c7: $1f
    ld e, $02                                     ; $43c8: $1e $02
    rra                                           ; $43ca: $1f
    add e                                         ; $43cb: $83
    dec d                                         ; $43cc: $15
    rra                                           ; $43cd: $1f
    ld a, [de]                                    ; $43ce: $1a
    inc bc                                        ; $43cf: $03
    rra                                           ; $43d0: $1f
    add d                                         ; $43d1: $82
    add hl, bc                                    ; $43d2: $09
    rrca                                          ; $43d3: $0f
    ld [bc], a                                    ; $43d4: $02
    ret nz                                        ; $43d5: $c0

jr_0e4_43d6:
    sbc h                                         ; $43d6: $9c
    ld h, b                                       ; $43d7: $60
    ldh [$d0], a                                  ; $43d8: $e0 $d0
    ldh a, [$d8]                                  ; $43da: $f0 $d8
    ld hl, sp+$7c                                 ; $43dc: $f8 $7c
    db $e4                                        ; $43de: $e4
    ld hl, sp-$58                                 ; $43df: $f8 $a8
    ld hl, sp+$28                                 ; $43e1: $f8 $28
    db $fc                                        ; $43e3: $fc
    inc e                                         ; $43e4: $1c
    db $f4                                        ; $43e5: $f4
    inc a                                         ; $43e6: $3c
    db $fc                                        ; $43e7: $fc
    ld a, h                                       ; $43e8: $7c
    ld a, [$da3e]                                 ; $43e9: $fa $3e $da
    cp $ed                                        ; $43ec: $fe $ed
    ld a, a                                       ; $43ee: $7f
    jp hl                                         ; $43ef: $e9


    rst $38                                       ; $43f0: $ff
    ld e, $fe                                     ; $43f1: $1e $fe
    ld [bc], a                                    ; $43f3: $02
    ld hl, sp-$66                                 ; $43f4: $f8 $9a
    cpl                                           ; $43f6: $2f
    ccf                                           ; $43f7: $3f

jr_0e4_43f8:
    ld b, l                                       ; $43f8: $45
    ld a, a                                       ; $43f9: $7f
    inc hl                                        ; $43fa: $23
    ccf                                           ; $43fb: $3f
    cpl                                           ; $43fc: $2f
    ccf                                           ; $43fd: $3f
    scf                                           ; $43fe: $37
    ccf                                           ; $43ff: $3f
    cpl                                           ; $4400: $2f
    dec sp                                        ; $4401: $3b
    rra                                           ; $4402: $1f
    inc de                                        ; $4403: $13
    dec e                                         ; $4404: $1d
    rra                                           ; $4405: $1f
    ld de, $211f                                  ; $4406: $11 $1f $21
    ccf                                           ; $4409: $3f
    ld e, e                                       ; $440a: $5b
    ld a, a                                       ; $440b: $7f
    db $e3                                        ; $440c: $e3
    rst $38                                       ; $440d: $ff
    adc a                                         ; $440e: $8f
    rst $38                                       ; $440f: $ff
    ld [bc], a                                    ; $4410: $02
    ld a, a                                       ; $4411: $7f
    inc b                                         ; $4412: $04
    nop                                           ; $4413: $00
    inc b                                         ; $4414: $04
    ld b, $81                                     ; $4415: $06 $81
    ld [bc], a                                    ; $4417: $02
    ld [bc], a                                    ; $4418: $02
    ld b, $02                                     ; $4419: $06 $02
    ld [bc], a                                    ; $441b: $02
    add c                                         ; $441c: $81
    ld b, $08                                     ; $441d: $06 $08
    rlca                                          ; $441f: $07
    ld [bc], a                                    ; $4420: $02
    ld b, $04                                     ; $4421: $06 $04
    inc b                                         ; $4423: $04
    inc b                                         ; $4424: $04
    ld b, $04                                     ; $4425: $06 $04
    nop                                           ; $4427: $00
    rst $38                                       ; $4428: $ff
    dec c                                         ; $4429: $0d
    inc b                                         ; $442a: $04
    ld sp, hl                                     ; $442b: $f9
    ld [$01f2], sp                                ; $442c: $08 $f2 $01
    push hl                                       ; $442f: $e5
    ld hl, sp-$1b                                 ; $4430: $f8 $e5
    nop                                           ; $4432: $00
    push af                                       ; $4433: $f5
    ld a, [$fdf5]                                 ; $4434: $fa $f5 $fd
    ld [bc], a                                    ; $4437: $02
    rlca                                          ; $4438: $07
    sub h                                         ; $4439: $94
    jr jr_0e4_445b                                ; $443a: $18 $1f

    jr nc, jr_0e4_447d                            ; $443c: $30 $3f

    ld h, b                                       ; $443e: $60
    ld a, a                                       ; $443f: $7f
    ld h, e                                       ; $4440: $63
    ld a, a                                       ; $4441: $7f
    rst $30                                       ; $4442: $f7
    db $fd                                        ; $4443: $fd
    rst $18                                       ; $4444: $df
    db $fc                                        ; $4445: $fc
    ld a, a                                       ; $4446: $7f
    ld a, b                                       ; $4447: $78
    ccf                                           ; $4448: $3f
    jr c, @+$19                                   ; $4449: $38 $17

    inc e                                         ; $444b: $1c
    rra                                           ; $444c: $1f
    inc e                                         ; $444d: $1c
    ld [bc], a                                    ; $444e: $02
    rra                                           ; $444f: $1f
    adc b                                         ; $4450: $88
    rla                                           ; $4451: $17
    rra                                           ; $4452: $1f
    ld a, [de]                                    ; $4453: $1a
    rra                                           ; $4454: $1f
    dec c                                         ; $4455: $0d
    rrca                                          ; $4456: $0f
    dec bc                                        ; $4457: $0b
    rrca                                          ; $4458: $0f
    ld [bc], a                                    ; $4459: $02
    ret nz                                        ; $445a: $c0

jr_0e4_445b:
    sbc h                                         ; $445b: $9c
    ld h, b                                       ; $445c: $60
    ldh [$50], a                                  ; $445d: $e0 $50
    ldh a, [$d8]                                  ; $445f: $f0 $d8
    ld hl, sp+$7c                                 ; $4461: $f8 $7c
    db $e4                                        ; $4463: $e4
    ld hl, sp+$48                                 ; $4464: $f8 $48
    ld hl, sp+$28                                 ; $4466: $f8 $28
    db $fc                                        ; $4468: $fc
    inc e                                         ; $4469: $1c
    db $f4                                        ; $446a: $f4
    ld a, h                                       ; $446b: $7c
    db $fc                                        ; $446c: $fc
    call c, Call_000_3eea                         ; $446d: $dc $ea $3e
    ld [$edfe], a                                 ; $4470: $ea $fe $ed
    ccf                                           ; $4473: $3f
    jp hl                                         ; $4474: $e9


    rst $38                                       ; $4475: $ff
    ld e, $fe                                     ; $4476: $1e $fe
    ld [bc], a                                    ; $4478: $02
    ld hl, sp+$02                                 ; $4479: $f8 $02
    ccf                                           ; $447b: $3f
    sub [hl]                                      ; $447c: $96

jr_0e4_447d:
    ld b, l                                       ; $447d: $45
    ld a, a                                       ; $447e: $7f
    inc hl                                        ; $447f: $23
    ccf                                           ; $4480: $3f
    daa                                           ; $4481: $27
    ccf                                           ; $4482: $3f
    dec de                                        ; $4483: $1b
    rra                                           ; $4484: $1f
    rla                                           ; $4485: $17
    dec e                                         ; $4486: $1d
    rra                                           ; $4487: $1f
    add hl, de                                    ; $4488: $19
    rla                                           ; $4489: $17
    rra                                           ; $448a: $1f
    ld hl, $5b3f                                  ; $448b: $21 $3f $5b
    ld a, a                                       ; $448e: $7f
    db $e3                                        ; $448f: $e3
    rst $38                                       ; $4490: $ff
    adc a                                         ; $4491: $8f
    rst $38                                       ; $4492: $ff
    ld [bc], a                                    ; $4493: $02
    ld a, a                                       ; $4494: $7f
    ld b, $00                                     ; $4495: $06 $00
    inc b                                         ; $4497: $04
    ld b, $81                                     ; $4498: $06 $81
    ld [bc], a                                    ; $449a: $02
    ld [bc], a                                    ; $449b: $02
    ld b, $82                                     ; $449c: $06 $82
    ld [bc], a                                    ; $449e: $02
    inc bc                                        ; $449f: $03
    add hl, bc                                    ; $44a0: $09
    rlca                                          ; $44a1: $07
    ld [bc], a                                    ; $44a2: $02
    ld b, $02                                     ; $44a3: $06 $02
    inc b                                         ; $44a5: $04
    inc b                                         ; $44a6: $04
    ld b, $06                                     ; $44a7: $06 $06
    nop                                           ; $44a9: $00
    rst $38                                       ; $44aa: $ff
    dec c                                         ; $44ab: $0d
    inc b                                         ; $44ac: $04
    ld sp, hl                                     ; $44ad: $f9
    ld [$01f2], sp                                ; $44ae: $08 $f2 $01
    db $e4                                        ; $44b1: $e4
    ld a, [$01e4]                                 ; $44b2: $fa $e4 $01
    db $f4                                        ; $44b5: $f4
    ld a, [$00f4]                                 ; $44b6: $fa $f4 $00
    ld [bc], a                                    ; $44b9: $02
    rrca                                          ; $44ba: $0f
    add a                                         ; $44bb: $87
    jr nc, jr_0e4_44fd                            ; $44bc: $30 $3f

    ld h, b                                       ; $44be: $60
    ld a, a                                       ; $44bf: $7f
    ld b, e                                       ; $44c0: $43
    ld a, a                                       ; $44c1: $7f
    call nz, $ff02                                ; $44c2: $c4 $02 $ff
    adc e                                         ; $44c5: $8b
    ld a, [$f0ff]                                 ; $44c6: $fa $ff $f0
    ld a, a                                       ; $44c9: $7f
    ld h, b                                       ; $44ca: $60
    ccf                                           ; $44cb: $3f
    ld sp, $131f                                  ; $44cc: $31 $1f $13
    ccf                                           ; $44cf: $3f
    jr c, jr_0e4_44d4                             ; $44d0: $38 $02

    ld a, a                                       ; $44d2: $7f
    adc b                                         ; $44d3: $88

jr_0e4_44d4:
    ld e, a                                       ; $44d4: $5f
    ld a, h                                       ; $44d5: $7c
    ld l, e                                       ; $44d6: $6b
    ld a, a                                       ; $44d7: $7f
    inc [hl]                                      ; $44d8: $34
    ccf                                           ; $44d9: $3f
    ld c, e                                       ; $44da: $4b
    ld a, a                                       ; $44db: $7f
    ld [bc], a                                    ; $44dc: $02
    ld b, b                                       ; $44dd: $40
    xor [hl]                                      ; $44de: $ae
    jr nc, @+$72                                  ; $44df: $30 $70

    ld l, b                                       ; $44e1: $68
    ld a, b                                       ; $44e2: $78
    ld e, b                                       ; $44e3: $58
    ld a, b                                       ; $44e4: $78
    ld a, h                                       ; $44e5: $7c
    ld h, h                                       ; $44e6: $64
    ld a, h                                       ; $44e7: $7c
    ld l, h                                       ; $44e8: $6c
    ld a, h                                       ; $44e9: $7c
    inc h                                         ; $44ea: $24
    ld a, h                                       ; $44eb: $7c
    ld d, h                                       ; $44ec: $54
    ld a, h                                       ; $44ed: $7c
    inc e                                         ; $44ee: $1c
    ld a, [hl]                                    ; $44ef: $7e
    ld a, $7a                                     ; $44f0: $3e $7a
    ld a, $6e                                     ; $44f2: $3e $6e
    ld a, [hl]                                    ; $44f4: $7e
    ld l, l                                       ; $44f5: $6d
    ld a, a                                       ; $44f6: $7f
    ld e, c                                       ; $44f7: $59
    ld a, a                                       ; $44f8: $7f
    dec [hl]                                      ; $44f9: $35
    ld a, a                                       ; $44fa: $7f
    ld a, c                                       ; $44fb: $79
    ld a, a                                       ; $44fc: $7f

jr_0e4_44fd:
    ld e, a                                       ; $44fd: $5f
    ld a, a                                       ; $44fe: $7f
    ld e, a                                       ; $44ff: $5f
    ld a, a                                       ; $4500: $7f
    ld e, e                                       ; $4501: $5b
    ld a, a                                       ; $4502: $7f
    adc d                                         ; $4503: $8a
    rst $38                                       ; $4504: $ff
    adc [hl]                                      ; $4505: $8e
    rst $38                                       ; $4506: $ff
    ld d, a                                       ; $4507: $57
    ld a, a                                       ; $4508: $7f
    cpl                                           ; $4509: $2f
    scf                                           ; $450a: $37
    ccf                                           ; $450b: $3f
    daa                                           ; $450c: $27
    ld [bc], a                                    ; $450d: $02
    ccf                                           ; $450e: $3f
    adc b                                         ; $450f: $88
    inc hl                                        ; $4510: $23
    ccf                                           ; $4511: $3f
    ld b, a                                       ; $4512: $47
    ld a, a                                       ; $4513: $7f
    ld [hl], a                                    ; $4514: $77
    ld a, a                                       ; $4515: $7f
    adc a                                         ; $4516: $8f
    rst $38                                       ; $4517: $ff
    ld [bc], a                                    ; $4518: $02
    ld a, a                                       ; $4519: $7f
    inc b                                         ; $451a: $04
    nop                                           ; $451b: $00
    ld [bc], a                                    ; $451c: $02
    ccf                                           ; $451d: $3f
    add l                                         ; $451e: $85

jr_0e4_451f:
    ld [$0838], sp                                ; $451f: $08 $38 $08
    jr c, @+$2a                                   ; $4522: $38 $28

    ld [bc], a                                    ; $4524: $02
    jr @+$0b                                      ; $4525: $18 $09

    jr c, jr_0e4_452d                             ; $4527: $38 $04

    jr nc, jr_0e4_452d                            ; $4529: $30 $02

    jr nz, jr_0e4_452f                            ; $452b: $20 $02

jr_0e4_452d:
    jr nc, jr_0e4_4531                            ; $452d: $30 $02

jr_0e4_452f:
    jr nz, jr_0e4_4535                            ; $452f: $20 $04

jr_0e4_4531:
    nop                                           ; $4531: $00
    rst $38                                       ; $4532: $ff
    dec c                                         ; $4533: $0d
    inc b                                         ; $4534: $04

jr_0e4_4535:
    ld sp, hl                                     ; $4535: $f9
    ld [$01f2], sp                                ; $4536: $08 $f2 $01
    db $e4                                        ; $4539: $e4
    ei                                            ; $453a: $fb
    db $e4                                        ; $453b: $e4
    ld bc, $fbf4                                  ; $453c: $01 $f4 $fb
    db $f4                                        ; $453f: $f4
    ld bc, $0f02                                  ; $4540: $01 $02 $0f
    add a                                         ; $4543: $87
    jr nc, jr_0e4_4585                            ; $4544: $30 $3f

    ld b, b                                       ; $4546: $40
    ld a, a                                       ; $4547: $7f
    ld b, e                                       ; $4548: $43
    ld a, a                                       ; $4549: $7f
    call $ff02                                    ; $454a: $cd $02 $ff
    adc e                                         ; $454d: $8b
    ld hl, sp-$01                                 ; $454e: $f8 $ff
    ldh a, [$7f]                                  ; $4550: $f0 $7f
    ld h, c                                       ; $4552: $61
    ccf                                           ; $4553: $3f
    ld [hl-], a                                   ; $4554: $32
    rra                                           ; $4555: $1f
    rla                                           ; $4556: $17
    ccf                                           ; $4557: $3f
    jr c, jr_0e4_455c                             ; $4558: $38 $02

    ld a, a                                       ; $455a: $7f
    adc b                                         ; $455b: $88

jr_0e4_455c:
    ld d, a                                       ; $455c: $57
    ld a, h                                       ; $455d: $7c
    ld l, e                                       ; $455e: $6b
    ld a, a                                       ; $455f: $7f
    inc [hl]                                      ; $4560: $34
    ccf                                           ; $4561: $3f
    ld e, e                                       ; $4562: $5b
    ld a, a                                       ; $4563: $7f
    ld [bc], a                                    ; $4564: $02
    jr nz, jr_0e4_451f                            ; $4565: $20 $b8

    jr jr_0e4_45a1                                ; $4567: $18 $38

    inc [hl]                                      ; $4569: $34
    inc a                                         ; $456a: $3c
    inc e                                         ; $456b: $1c
    inc a                                         ; $456c: $3c
    ld h, $3e                                     ; $456d: $26 $3e
    ld a, [hl-]                                   ; $456f: $3a
    ld e, $3e                                     ; $4570: $1e $3e
    ld e, $3e                                     ; $4572: $1e $3e
    ld [de], a                                    ; $4574: $12
    ld a, $12                                     ; $4575: $3e $12
    ld a, $0a                                     ; $4577: $3e $0a
    ccf                                           ; $4579: $3f
    rra                                           ; $457a: $1f
    dec [hl]                                      ; $457b: $35
    ccf                                           ; $457c: $3f
    cpl                                           ; $457d: $2f
    ccf                                           ; $457e: $3f
    dec c                                         ; $457f: $0d
    ccf                                           ; $4580: $3f
    dec d                                         ; $4581: $15
    ccf                                           ; $4582: $3f
    dec [hl]                                      ; $4583: $35
    ccf                                           ; $4584: $3f

jr_0e4_4585:
    ld d, a                                       ; $4585: $57
    ld a, a                                       ; $4586: $7f
    ld d, l                                       ; $4587: $55
    ld a, [hl]                                    ; $4588: $7e
    or h                                          ; $4589: $b4
    rst $38                                       ; $458a: $ff
    sub l                                         ; $458b: $95
    cp $bc                                        ; $458c: $fe $bc
    rst $38                                       ; $458e: $ff
    call $b7ff                                    ; $458f: $cd $ff $b7
    rst $38                                       ; $4592: $ff
    ld a, a                                       ; $4593: $7f
    ld c, a                                       ; $4594: $4f
    ld [hl], a                                    ; $4595: $77
    ld e, a                                       ; $4596: $5f
    daa                                           ; $4597: $27
    ccf                                           ; $4598: $3f
    ld b, a                                       ; $4599: $47
    ld a, a                                       ; $459a: $7f
    ld l, a                                       ; $459b: $6f
    ld a, a                                       ; $459c: $7f
    adc a                                         ; $459d: $8f
    rst $38                                       ; $459e: $ff
    ld [bc], a                                    ; $459f: $02
    ld a, a                                       ; $45a0: $7f

jr_0e4_45a1:
    inc b                                         ; $45a1: $04
    nop                                           ; $45a2: $00
    adc c                                         ; $45a3: $89
    add hl, sp                                    ; $45a4: $39
    ccf                                           ; $45a5: $3f
    rra                                           ; $45a6: $1f
    ccf                                           ; $45a7: $3f
    jr jr_0e4_45e2                                ; $45a8: $18 $38

    jr jr_0e4_45e4                                ; $45aa: $18 $38

    jr jr_0e4_45b7                                ; $45ac: $18 $09

    jr c, jr_0e4_45b6                             ; $45ae: $38 $06

    jr nc, jr_0e4_45b4                            ; $45b0: $30 $02

    jr nz, @+$08                                  ; $45b2: $20 $06

jr_0e4_45b4:
    nop                                           ; $45b4: $00
    rst $38                                       ; $45b5: $ff

jr_0e4_45b6:
    rrca                                          ; $45b6: $0f

jr_0e4_45b7:
    dec b                                         ; $45b7: $05
    ld sp, hl                                     ; $45b8: $f9
    ld [$01f2], sp                                ; $45b9: $08 $f2 $01
    push hl                                       ; $45bc: $e5
    db $fc                                        ; $45bd: $fc
    push hl                                       ; $45be: $e5
    inc b                                         ; $45bf: $04
    push af                                       ; $45c0: $f5
    ei                                            ; $45c1: $fb
    push af                                       ; $45c2: $f5
    inc bc                                        ; $45c3: $03
    push af                                       ; $45c4: $f5
    inc b                                         ; $45c5: $04
    ld [bc], a                                    ; $45c6: $02
    rra                                           ; $45c7: $1f
    adc c                                         ; $45c8: $89
    ld h, b                                       ; $45c9: $60
    ld a, a                                       ; $45ca: $7f
    ld b, b                                       ; $45cb: $40
    ld a, a                                       ; $45cc: $7f
    pop bc                                        ; $45cd: $c1
    rst $38                                       ; $45ce: $ff
    rst $08                                       ; $45cf: $cf
    rst $38                                       ; $45d0: $ff
    ld a, c                                       ; $45d1: $79
    ld [bc], a                                    ; $45d2: $02
    ld a, a                                       ; $45d3: $7f
    sub e                                         ; $45d4: $93
    ld [hl], b                                    ; $45d5: $70
    ccf                                           ; $45d6: $3f
    jr nc, jr_0e4_4618                            ; $45d7: $30 $3f

    inc hl                                        ; $45d9: $23
    ccf                                           ; $45da: $3f
    scf                                           ; $45db: $37
    ld e, a                                       ; $45dc: $5f
    ld a, b                                       ; $45dd: $78
    ld e, a                                       ; $45de: $5f
    ld a, a                                       ; $45df: $7f
    ld l, e                                       ; $45e0: $6b
    ld a, a                                       ; $45e1: $7f

jr_0e4_45e2:
    ld [hl], b                                    ; $45e2: $70
    ld a, a                                       ; $45e3: $7f

jr_0e4_45e4:
    sbc a                                         ; $45e4: $9f
    rst $38                                       ; $45e5: $ff
    xor a                                         ; $45e6: $af
    rst $38                                       ; $45e7: $ff
    ld [bc], a                                    ; $45e8: $02
    add b                                         ; $45e9: $80
    adc c                                         ; $45ea: $89
    ld h, b                                       ; $45eb: $60
    ldh [rSVBK], a                                ; $45ec: $e0 $70
    ldh a, [$d0]                                  ; $45ee: $f0 $d0
    ldh a, [$28]                                  ; $45f0: $f0 $28
    ld hl, sp-$28                                 ; $45f2: $f8 $d8
    ld [bc], a                                    ; $45f4: $02
    ld hl, sp-$55                                 ; $45f5: $f8 $ab
    ld a, b                                       ; $45f7: $78
    ldh a, [$30]                                  ; $45f8: $f0 $30
    db $fc                                        ; $45fa: $fc
    inc a                                         ; $45fb: $3c
    cp $32                                        ; $45fc: $fe $32
    rst $38                                       ; $45fe: $ff
    ld a, c                                       ; $45ff: $79
    sbc $fe                                       ; $4600: $de $fe
    add hl, sp                                    ; $4602: $39
    rst $38                                       ; $4603: $ff
    halt                                          ; $4604: $76
    cp $fa                                        ; $4605: $fe $fa
    cp $f2                                        ; $4607: $fe $f2
    cp $b6                                        ; $4609: $fe $b6
    rst $38                                       ; $460b: $ff
    or [hl]                                       ; $460c: $b6
    rst $38                                       ; $460d: $ff
    sub l                                         ; $460e: $95
    cp $f4                                        ; $460f: $fe $f4
    rst $38                                       ; $4611: $ff
    sub l                                         ; $4612: $95
    rst $38                                       ; $4613: $ff
    rst $30                                       ; $4614: $f7
    rst $38                                       ; $4615: $ff
    rst $30                                       ; $4616: $f7
    sbc a                                         ; $4617: $9f

jr_0e4_4618:
    ld h, a                                       ; $4618: $67
    ld a, a                                       ; $4619: $7f
    ld c, a                                       ; $461a: $4f
    ld a, a                                       ; $461b: $7f
    ld c, a                                       ; $461c: $4f
    ld a, a                                       ; $461d: $7f
    adc a                                         ; $461e: $8f
    rst $38                                       ; $461f: $ff
    rst $18                                       ; $4620: $df
    rst $38                                       ; $4621: $ff
    ld [bc], a                                    ; $4622: $02
    dec a                                         ; $4623: $3d
    ld b, $00                                     ; $4624: $06 $00
    adc c                                         ; $4626: $89
    db $fc                                        ; $4627: $fc
    ld a, a                                       ; $4628: $7f
    ld d, a                                       ; $4629: $57
    rst $30                                       ; $462a: $f7
    ld d, b                                       ; $462b: $50
    ldh a, [$50]                                  ; $462c: $f0 $50
    ldh a, [$50]                                  ; $462e: $f0 $50
    dec bc                                        ; $4630: $0b
    ldh a, [$82]                                  ; $4631: $f0 $82
    ret nc                                        ; $4633: $d0

    ldh a, [rSC]                                  ; $4634: $f0 $02
    ldh [rSC], a                                  ; $4636: $e0 $02
    ret nz                                        ; $4638: $c0

    ld b, $00                                     ; $4639: $06 $00
    ld [bc], a                                    ; $463b: $02
    ld bc, $001e                                  ; $463c: $01 $1e $00
    rst $38                                       ; $463f: $ff
    rrca                                          ; $4640: $0f
    dec b                                         ; $4641: $05
    ld sp, hl                                     ; $4642: $f9
    ld [$01f2], sp                                ; $4643: $08 $f2 $01
    and $fb                                       ; $4646: $e6 $fb
    and $03                                       ; $4648: $e6 $03
    ld a, [c]                                     ; $464a: $f2
    dec b                                         ; $464b: $05
    or $fa                                        ; $464c: $f6 $fa
    or $fd                                        ; $464e: $f6 $fd
    ld [bc], a                                    ; $4650: $02
    inc bc                                        ; $4651: $03
    sbc [hl]                                      ; $4652: $9e
    ld c, $0f                                     ; $4653: $0e $0f
    dec de                                        ; $4655: $1b
    rra                                           ; $4656: $1f
    ld a, $3f                                     ; $4657: $3e $3f
    scf                                           ; $4659: $37
    ccf                                           ; $465a: $3f
    inc sp                                        ; $465b: $33
    ccf                                           ; $465c: $3f
    jr nc, jr_0e4_469e                            ; $465d: $30 $3f

    jr @+$21                                      ; $465f: $18 $1f

    inc e                                         ; $4661: $1c
    rra                                           ; $4662: $1f
    cpl                                           ; $4663: $2f
    dec sp                                        ; $4664: $3b
    cpl                                           ; $4665: $2f
    inc a                                         ; $4666: $3c
    scf                                           ; $4667: $37
    ccf                                           ; $4668: $3f
    ld d, c                                       ; $4669: $51
    ld a, a                                       ; $466a: $7f
    ld e, b                                       ; $466b: $58
    ld a, a                                       ; $466c: $7f
    cp a                                          ; $466d: $bf
    rst $38                                       ; $466e: $ff
    or a                                          ; $466f: $b7
    rst $38                                       ; $4670: $ff
    ld [bc], a                                    ; $4671: $02
    ldh [$90], a                                  ; $4672: $e0 $90
    sbc b                                         ; $4674: $98
    ld hl, sp-$0c                                 ; $4675: $f8 $f4
    db $fc                                        ; $4677: $fc
    inc d                                         ; $4678: $14
    db $fc                                        ; $4679: $fc
    ld [hl-], a                                   ; $467a: $32
    cp $f6                                        ; $467b: $fe $f6
    cp $1a                                        ; $467d: $fe $1a
    cp $14                                        ; $467f: $fe $14
    db $fc                                        ; $4681: $fc
    ld l, b                                       ; $4682: $68
    ld hl, sp+$02                                 ; $4683: $f8 $02
    ldh a, [$8c]                                  ; $4685: $f0 $8c
    ld hl, sp+$38                                 ; $4687: $f8 $38
    db $db                                        ; $4689: $db
    ei                                            ; $468a: $fb
    ccf                                           ; $468b: $3f
    db $fc                                        ; $468c: $fc
    ei                                            ; $468d: $fb
    cp $f9                                        ; $468e: $fe $f9
    rst $38                                       ; $4690: $ff
    db $ed                                        ; $4691: $ed
    rst $38                                       ; $4692: $ff
    ld [bc], a                                    ; $4693: $02
    ld [bc], a                                    ; $4694: $02
    add d                                         ; $4695: $82
    inc bc                                        ; $4696: $03
    ld bc, $0202                                  ; $4697: $01 $02 $02
    ld [bc], a                                    ; $469a: $02
    nop                                           ; $469b: $00
    adc e                                         ; $469c: $8b
    cp h                                          ; $469d: $bc

jr_0e4_469e:
    db $fc                                        ; $469e: $fc
    xor b                                         ; $469f: $a8
    add sp, -$60                                  ; $46a0: $e8 $a0
    ldh [$a0], a                                  ; $46a2: $e0 $a0
    ldh [$a0], a                                  ; $46a4: $e0 $a0
    ldh [$a0], a                                  ; $46a6: $e0 $a0
    dec b                                         ; $46a8: $05
    ldh [$82], a                                  ; $46a9: $e0 $82
    and b                                         ; $46ab: $a0
    ldh [rSC], a                                  ; $46ac: $e0 $02
    ret nz                                        ; $46ae: $c0

    add d                                         ; $46af: $82
    ld b, b                                       ; $46b0: $40
    ret nz                                        ; $46b1: $c0

    ld [bc], a                                    ; $46b2: $02
    add b                                         ; $46b3: $80
    sub [hl]                                      ; $46b4: $96
    cp e                                          ; $46b5: $bb
    rst $38                                       ; $46b6: $ff
    jp c, $b2ff                                   ; $46b7: $da $ff $b2

    rst $38                                       ; $46ba: $ff
    jp nc, $f3ff                                  ; $46bb: $d2 $ff $f3

    cp a                                          ; $46be: $bf
    ld [hl], e                                    ; $46bf: $73
    ld e, a                                       ; $46c0: $5f
    daa                                           ; $46c1: $27
    ccf                                           ; $46c2: $3f
    daa                                           ; $46c3: $27
    ccf                                           ; $46c4: $3f
    daa                                           ; $46c5: $27
    ccf                                           ; $46c6: $3f
    ld c, a                                       ; $46c7: $4f
    ld a, a                                       ; $46c8: $7f
    ld c, a                                       ; $46c9: $4f
    ld a, a                                       ; $46ca: $7f
    ld [bc], a                                    ; $46cb: $02
    ld a, $08                                     ; $46cc: $3e $08
    nop                                           ; $46ce: $00
    add a                                         ; $46cf: $87
    ld [bc], a                                    ; $46d0: $02
    dec b                                         ; $46d1: $05
    ld bc, $0507                                  ; $46d2: $01 $07 $05
    inc bc                                        ; $46d5: $03
    ld bc, $0711                                  ; $46d6: $01 $11 $07
    ld [$ff00], sp                                ; $46d9: $08 $00 $ff
    rrca                                          ; $46dc: $0f
    dec b                                         ; $46dd: $05
    ld sp, hl                                     ; $46de: $f9
    ld [$01f2], sp                                ; $46df: $08 $f2 $01
    db $eb                                        ; $46e2: $eb
    ld a, [$02ea]                                 ; $46e3: $fa $ea $02
    db $ec                                        ; $46e6: $ec
    ld b, $fa                                     ; $46e7: $06 $fa
    ei                                            ; $46e9: $fb
    ld a, [$0200]                                 ; $46ea: $fa $00 $02
    ld bc, $0302                                  ; $46ed: $01 $02 $03
    adc b                                         ; $46f0: $88
    ld b, $07                                     ; $46f1: $06 $07
    ld b, $07                                     ; $46f3: $06 $07
    ld b, $07                                     ; $46f5: $06 $07
    ld b, $07                                     ; $46f7: $06 $07
    ld [bc], a                                    ; $46f9: $02
    rrca                                          ; $46fa: $0f
    sub d                                         ; $46fb: $92
    dec d                                         ; $46fc: $15
    rra                                           ; $46fd: $1f
    inc l                                         ; $46fe: $2c
    ccf                                           ; $46ff: $3f
    ld c, [hl]                                    ; $4700: $4e
    ld a, a                                       ; $4701: $7f
    rst $18                                       ; $4702: $df
    rst $38                                       ; $4703: $ff
    cp c                                          ; $4704: $b9
    rst $38                                       ; $4705: $ff
    ld e, e                                       ; $4706: $5b
    ld a, a                                       ; $4707: $7f
    ld a, d                                       ; $4708: $7a
    ld e, a                                       ; $4709: $5f
    ld [hl-], a                                   ; $470a: $32
    ccf                                           ; $470b: $3f
    inc de                                        ; $470c: $13
    rra                                           ; $470d: $1f
    ld [bc], a                                    ; $470e: $02
    ld a, h                                       ; $470f: $7c
    sub b                                         ; $4710: $90
    jp $7eff                                      ; $4711: $c3 $ff $7e


    rst $38                                       ; $4714: $ff
    rst $00                                       ; $4715: $c7
    rst $38                                       ; $4716: $ff
    jp Jump_0e4_67ff                              ; $4717: $c3 $ff $67


    rst $38                                       ; $471a: $ff
    ld a, $ff                                     ; $471b: $3e $ff
    ld a, [bc]                                    ; $471d: $0a
    rst $38                                       ; $471e: $ff
    or l                                          ; $471f: $b5
    rst $38                                       ; $4720: $ff
    ld [bc], a                                    ; $4721: $02
    cp $8c                                        ; $4722: $fe $8c
    ld e, $fe                                     ; $4724: $1e $fe
    push af                                       ; $4726: $f5
    rst $38                                       ; $4727: $ff
    or [hl]                                       ; $4728: $b6
    rst $38                                       ; $4729: $ff
    ld d, [hl]                                    ; $472a: $56
    cp a                                          ; $472b: $bf
    or a                                          ; $472c: $b7
    ld a, a                                       ; $472d: $7f
    inc [hl]                                      ; $472e: $34
    db $fc                                        ; $472f: $fc
    ld [bc], a                                    ; $4730: $02
    ld [$0488], sp                                ; $4731: $08 $88 $04
    inc c                                         ; $4734: $0c
    inc b                                         ; $4735: $04
    inc c                                         ; $4736: $0c
    inc b                                         ; $4737: $04
    inc c                                         ; $4738: $0c
    inc b                                         ; $4739: $04
    inc c                                         ; $473a: $0c
    ld [bc], a                                    ; $473b: $02
    ld [$0008], sp                                ; $473c: $08 $08 $00
    ld [bc], a                                    ; $473f: $02
    inc c                                         ; $4740: $0c
    inc bc                                        ; $4741: $03
    ld c, $95                                     ; $4742: $0e $95
    ld a, [bc]                                    ; $4744: $0a
    rrca                                          ; $4745: $0f
    add hl, bc                                    ; $4746: $09
    ld b, [hl]                                    ; $4747: $46
    add $40                                       ; $4748: $c6 $40
    ret nz                                        ; $474a: $c0

    nop                                           ; $474b: $00
    ld bc, $7f4f                                  ; $474c: $01 $4f $7f
    ld c, a                                       ; $474f: $4f
    ld a, a                                       ; $4750: $7f
    ld c, a                                       ; $4751: $4f
    ld a, a                                       ; $4752: $7f
    sbc a                                         ; $4753: $9f
    rst $38                                       ; $4754: $ff
    sbc a                                         ; $4755: $9f
    rst $38                                       ; $4756: $ff
    cp a                                          ; $4757: $bf
    rst $38                                       ; $4758: $ff
    ld [bc], a                                    ; $4759: $02
    ld a, e                                       ; $475a: $7b
    stop                                          ; $475b: $10 $00
    inc b                                         ; $475d: $04
    inc e                                         ; $475e: $1c
    add c                                         ; $475f: $81
    dec e                                         ; $4760: $1d
    dec b                                         ; $4761: $05
    rra                                           ; $4762: $1f
    add h                                         ; $4763: $84
    dec e                                         ; $4764: $1d
    rra                                           ; $4765: $1f
    add hl, de                                    ; $4766: $19
    rra                                           ; $4767: $1f
    ld [bc], a                                    ; $4768: $02
    ld e, $10                                     ; $4769: $1e $10
    nop                                           ; $476b: $00
    rst $38                                       ; $476c: $ff
    dec c                                         ; $476d: $0d
    inc b                                         ; $476e: $04
    ld sp, hl                                     ; $476f: $f9
    ld [$01f2], sp                                ; $4770: $08 $f2 $01
    ld a, [c]                                     ; $4773: $f2
    ld a, [$02ef]                                 ; $4774: $fa $ef $02
    rst $38                                       ; $4777: $ff
    ld [bc], a                                    ; $4778: $02
    ldh a, [$0a]                                  ; $4779: $f0 $0a
    inc b                                         ; $477b: $04
    ld bc, $0302                                  ; $477c: $01 $02 $03
    sub [hl]                                      ; $477f: $96
    dec b                                         ; $4780: $05
    rlca                                          ; $4781: $07
    dec de                                        ; $4782: $1b
    rra                                           ; $4783: $1f
    ld l, $3f                                     ; $4784: $2e $3f
    inc [hl]                                      ; $4786: $34
    ccf                                           ; $4787: $3f
    add hl, sp                                    ; $4788: $39
    cpl                                           ; $4789: $2f
    ld de, $121f                                  ; $478a: $11 $1f $12
    rra                                           ; $478d: $1f
    daa                                           ; $478e: $27
    ccf                                           ; $478f: $3f
    cpl                                           ; $4790: $2f
    ccf                                           ; $4791: $3f
    ld c, a                                       ; $4792: $4f
    ld a, a                                       ; $4793: $7f
    ld c, a                                       ; $4794: $4f
    ld a, a                                       ; $4795: $7f
    ld [bc], a                                    ; $4796: $02
    ccf                                           ; $4797: $3f
    ld [bc], a                                    ; $4798: $02
    dec sp                                        ; $4799: $3b
    ld [bc], a                                    ; $479a: $02
    rra                                           ; $479b: $1f
    adc a                                         ; $479c: $8f
    ld h, h                                       ; $479d: $64
    ld a, a                                       ; $479e: $7f
    sbc a                                         ; $479f: $9f
    rst $38                                       ; $47a0: $ff
    jr c, @+$01                                   ; $47a1: $38 $ff

    jr nc, @+$01                                  ; $47a3: $30 $ff

    add hl, sp                                    ; $47a5: $39
    rst $38                                       ; $47a6: $ff
    ld c, a                                       ; $47a7: $4f
    rst $38                                       ; $47a8: $ff
    ret c                                         ; $47a9: $d8

    rst $38                                       ; $47aa: $ff
    ldh [$03], a                                  ; $47ab: $e0 $03
    rst $38                                       ; $47ad: $ff
    sub b                                         ; $47ae: $90
    db $fd                                        ; $47af: $fd
    rst $38                                       ; $47b0: $ff
    ld e, h                                       ; $47b1: $5c
    cp a                                          ; $47b2: $bf
    dec sp                                        ; $47b3: $3b
    rst $38                                       ; $47b4: $ff
    or $ff                                        ; $47b5: $f6 $ff
    rst $30                                       ; $47b7: $f7
    db $fd                                        ; $47b8: $fd
    rst $38                                       ; $47b9: $ff
    ld hl, sp-$01                                 ; $47ba: $f8 $ff
    db $fd                                        ; $47bc: $fd
    ld [$02fa], a                                 ; $47bd: $ea $fa $02
    ldh a, [rNR30]                                ; $47c0: $f0 $1a
    nop                                           ; $47c2: $00
    ld [bc], a                                    ; $47c3: $02
    ret nz                                        ; $47c4: $c0

    add l                                         ; $47c5: $85
    and b                                         ; $47c6: $a0
    ldh [$d0], a                                  ; $47c7: $e0 $d0
    ldh a, [$d0]                                  ; $47c9: $f0 $d0
    inc bc                                        ; $47cb: $03
    ldh a, [$84]                                  ; $47cc: $f0 $84

jr_0e4_47ce:
    ret nc                                        ; $47ce: $d0

    ldh a, [rNR41]                                ; $47cf: $f0 $20
    ldh [rSC], a                                  ; $47d1: $e0 $02
    ret nz                                        ; $47d3: $c0

    ld [bc], a                                    ; $47d4: $02
    add b                                         ; $47d5: $80
    ld [bc], a                                    ; $47d6: $02
    nop                                           ; $47d7: $00
    ld [bc], a                                    ; $47d8: $02
    add b                                         ; $47d9: $80
    add c                                         ; $47da: $81
    ld b, b                                       ; $47db: $40
    inc bc                                        ; $47dc: $03
    ret nz                                        ; $47dd: $c0

    add d                                         ; $47de: $82
    ld b, b                                       ; $47df: $40
    ret nz                                        ; $47e0: $c0

    ld [bc], a                                    ; $47e1: $02
    add b                                         ; $47e2: $80
    ld [bc], a                                    ; $47e3: $02
    nop                                           ; $47e4: $00
    rst $38                                       ; $47e5: $ff
    dec c                                         ; $47e6: $0d
    inc b                                         ; $47e7: $04
    ld sp, hl                                     ; $47e8: $f9
    ld [$01f2], sp                                ; $47e9: $08 $f2 $01
    ld sp, hl                                     ; $47ec: $f9
    ei                                            ; $47ed: $fb
    db $f4                                        ; $47ee: $f4
    inc bc                                        ; $47ef: $03
    db $f4                                        ; $47f0: $f4
    ld [$0404], sp                                ; $47f1: $08 $04 $04
    ld [bc], a                                    ; $47f4: $02
    inc bc                                        ; $47f5: $03
    adc h                                         ; $47f6: $8c
    inc e                                         ; $47f7: $1c
    rra                                           ; $47f8: $1f
    jr z, jr_0e4_483a                             ; $47f9: $28 $3f

    ld [hl], l                                    ; $47fb: $75
    ld a, a                                       ; $47fc: $7f
    cp e                                          ; $47fd: $bb
    rst $28                                       ; $47fe: $ef
    cp a                                          ; $47ff: $bf
    rst $38                                       ; $4800: $ff
    cp a                                          ; $4801: $bf
    rst $38                                       ; $4802: $ff
    ld [bc], a                                    ; $4803: $02
    ld a, a                                       ; $4804: $7f
    ld [bc], a                                    ; $4805: $02
    ld [hl], a                                    ; $4806: $77
    ld [bc], a                                    ; $4807: $02
    ld bc, $000c                                  ; $4808: $01 $0c $00
    ld [bc], a                                    ; $480b: $02
    rrca                                          ; $480c: $0f
    sub c                                         ; $480d: $91
    ld [hl-], a                                   ; $480e: $32
    ccf                                           ; $480f: $3f
    ld l, a                                       ; $4810: $6f
    ld a, a                                       ; $4811: $7f
    ret c                                         ; $4812: $d8

    rst $38                                       ; $4813: $ff
    ret c                                         ; $4814: $d8

    rst $38                                       ; $4815: $ff
    ld hl, sp-$01                                 ; $4816: $f8 $ff
    ld c, h                                       ; $4818: $4c
    rst $38                                       ; $4819: $ff
    rst $00                                       ; $481a: $c7
    rst $38                                       ; $481b: $ff
    ldh [rIE], a                                  ; $481c: $e0 $ff
    ldh a, [$03]                                  ; $481e: $f0 $03
    rst $38                                       ; $4820: $ff
    adc d                                         ; $4821: $8a
    db $fc                                        ; $4822: $fc
    rst $38                                       ; $4823: $ff
    db $fd                                        ; $4824: $fd
    rst $38                                       ; $4825: $ff
    or $f7                                        ; $4826: $f6 $f7
    jp c, Jump_000_3ddb                           ; $4828: $da $db $3d

    daa                                           ; $482b: $27
    ld [bc], a                                    ; $482c: $02
    db $10                                        ; $482d: $10
    adc c                                         ; $482e: $89
    inc c                                         ; $482f: $0c
    inc e                                         ; $4830: $1c
    ld a, [de]                                    ; $4831: $1a
    ld e, $1d                                     ; $4832: $1e $1d
    rra                                           ; $4834: $1f
    dec e                                         ; $4835: $1d
    rra                                           ; $4836: $1f
    dec c                                         ; $4837: $0d
    inc bc                                        ; $4838: $03
    rra                                           ; $4839: $1f

jr_0e4_483a:
    add [hl]                                      ; $483a: $86
    dec e                                         ; $483b: $1d
    rra                                           ; $483c: $1f
    ld a, [bc]                                    ; $483d: $0a
    ld e, $0c                                     ; $483e: $1e $0c
    inc e                                         ; $4840: $1c
    ld [bc], a                                    ; $4841: $02
    jr @+$06                                      ; $4842: $18 $04

    db $10                                        ; $4844: $10
    add e                                         ; $4845: $83
    ld [$0818], sp                                ; $4846: $08 $18 $08
    inc bc                                        ; $4849: $03
    jr jr_0e4_47ce                                ; $484a: $18 $82

    ei                                            ; $484c: $fb
    adc a                                         ; $484d: $8f
    ld [bc], a                                    ; $484e: $02
    ld a, h                                       ; $484f: $7c
    inc e                                         ; $4850: $1c
    nop                                           ; $4851: $00
    rst $38                                       ; $4852: $ff
    dec bc                                        ; $4853: $0b
    inc bc                                        ; $4854: $03
    ld sp, hl                                     ; $4855: $f9
    ld [$01f2], sp                                ; $4856: $08 $f2 $01
    ei                                            ; $4859: $fb
    db $fc                                        ; $485a: $fc
    ei                                            ; $485b: $fb
    inc b                                         ; $485c: $04
    ei                                            ; $485d: $fb
    add hl, bc                                    ; $485e: $09
    ld [bc], a                                    ; $485f: $02
    ld bc, $7e89                                  ; $4860: $01 $89 $7e
    ld a, a                                       ; $4863: $7f
    jp c, $95ff                                   ; $4864: $da $ff $95

    rst $38                                       ; $4867: $ff
    add [hl]                                      ; $4868: $86
    rst $38                                       ; $4869: $ff
    sbc h                                         ; $486a: $9c
    ld [bc], a                                    ; $486b: $02
    rst $38                                       ; $486c: $ff
    add a                                         ; $486d: $87
    rst $20                                       ; $486e: $e7
    add hl, sp                                    ; $486f: $39
    cpl                                           ; $4870: $2f
    ld a, [de]                                    ; $4871: $1a
    rra                                           ; $4872: $1f
    ld b, $07                                     ; $4873: $06 $07
    ld [bc], a                                    ; $4875: $02
    ld bc, $000a                                  ; $4876: $01 $0a $00
    ld [bc], a                                    ; $4879: $02
    ldh a, [$96]                                  ; $487a: $f0 $96
    ld [$87f8], sp                                ; $487c: $08 $f8 $87
    rst $38                                       ; $487f: $ff
    ld hl, sp-$01                                 ; $4880: $f8 $ff
    ld c, a                                       ; $4882: $4f
    rst $38                                       ; $4883: $ff
    ret c                                         ; $4884: $d8

    rst $38                                       ; $4885: $ff

jr_0e4_4886:
    adc b                                         ; $4886: $88
    rst $38                                       ; $4887: $ff
    adc h                                         ; $4888: $8c
    rst $38                                       ; $4889: $ff
    rst $00                                       ; $488a: $c7
    rst $38                                       ; $488b: $ff
    call nz, $f4ff                                ; $488c: $c4 $ff $f4
    rst $38                                       ; $488f: $ff
    inc a                                         ; $4890: $3c
    ccf                                           ; $4891: $3f
    ld [bc], a                                    ; $4892: $02
    rrca                                          ; $4893: $0f
    inc c                                         ; $4894: $0c
    nop                                           ; $4895: $00
    ld [bc], a                                    ; $4896: $02
    jr @-$6e                                      ; $4897: $18 $90

    inc d                                         ; $4899: $14
    inc e                                         ; $489a: $1c
    ld a, [bc]                                    ; $489b: $0a
    ld e, $0f                                     ; $489c: $1e $0f
    rra                                           ; $489e: $1f
    add hl, de                                    ; $489f: $19
    rra                                           ; $48a0: $1f
    add hl, de                                    ; $48a1: $19
    rra                                           ; $48a2: $1f
    rlca                                          ; $48a3: $07
    rra                                           ; $48a4: $1f
    ld [bc], a                                    ; $48a5: $02
    ld e, $0c                                     ; $48a6: $1e $0c
    inc e                                         ; $48a8: $1c
    ld [bc], a                                    ; $48a9: $02
    jr jr_0e4_48b2                                ; $48aa: $18 $06

    nop                                           ; $48ac: $00
    rst $38                                       ; $48ad: $ff
    dec bc                                        ; $48ae: $0b
    inc bc                                        ; $48af: $03
    cp $0d                                        ; $48b0: $fe $0d

jr_0e4_48b2:
    cp $05                                        ; $48b2: $fe $05
    ei                                            ; $48b4: $fb
    db $fc                                        ; $48b5: $fc
    ei                                            ; $48b6: $fb
    inc b                                         ; $48b7: $04
    ei                                            ; $48b8: $fb
    add hl, bc                                    ; $48b9: $09
    ld [bc], a                                    ; $48ba: $02
    nop                                           ; $48bb: $00
    ld [bc], a                                    ; $48bc: $02
    inc bc                                        ; $48bd: $03
    adc d                                         ; $48be: $8a
    ld a, h                                       ; $48bf: $7c
    ld a, a                                       ; $48c0: $7f
    ld a, [c]                                     ; $48c1: $f2
    rst $38                                       ; $48c2: $ff
    sub e                                         ; $48c3: $93
    rst $38                                       ; $48c4: $ff
    adc h                                         ; $48c5: $8c
    rst $38                                       ; $48c6: $ff
    db $dd                                        ; $48c7: $dd
    rst $30                                       ; $48c8: $f7
    ld [bc], a                                    ; $48c9: $02
    ld a, a                                       ; $48ca: $7f
    add h                                         ; $48cb: $84
    push af                                       ; $48cc: $f5
    cp a                                          ; $48cd: $bf
    ldh a, [$df]                                  ; $48ce: $f0 $df
    ld [bc], a                                    ; $48d0: $02
    ccf                                           ; $48d1: $3f
    ld a, [bc]                                    ; $48d2: $0a
    nop                                           ; $48d3: $00
    ld [bc], a                                    ; $48d4: $02
    ld hl, sp-$7d                                 ; $48d5: $f8 $83
    ld b, h                                       ; $48d7: $44
    db $fc                                        ; $48d8: $fc
    add e                                         ; $48d9: $83
    inc bc                                        ; $48da: $03
    rst $38                                       ; $48db: $ff
    sub b                                         ; $48dc: $90
    jr c, @+$01                                   ; $48dd: $38 $ff

    rst $08                                       ; $48df: $cf
    rst $38                                       ; $48e0: $ff
    call c, $88ff                                 ; $48e1: $dc $ff $88
    rst $38                                       ; $48e4: $ff
    add [hl]                                      ; $48e5: $86
    rst $38                                       ; $48e6: $ff
    push bc                                       ; $48e7: $c5
    rst $38                                       ; $48e8: $ff
    db $e4                                        ; $48e9: $e4
    rst $38                                       ; $48ea: $ff
    ld a, [hl-]                                   ; $48eb: $3a
    ccf                                           ; $48ec: $3f
    ld [bc], a                                    ; $48ed: $02
    rrca                                          ; $48ee: $0f
    ld a, [bc]                                    ; $48ef: $0a
    nop                                           ; $48f0: $00
    ld [bc], a                                    ; $48f1: $02
    db $10                                        ; $48f2: $10
    ld [bc], a                                    ; $48f3: $02
    jr jr_0e4_4886                                ; $48f4: $18 $90

    ld [$1418], sp                                ; $48f6: $08 $18 $14
    inc e                                         ; $48f9: $1c
    ld a, [bc]                                    ; $48fa: $0a
    ld e, $0e                                     ; $48fb: $1e $0e
    ld e, $19                                     ; $48fd: $1e $19
    rra                                           ; $48ff: $1f
    dec e                                         ; $4900: $1d
    rra                                           ; $4901: $1f
    ld [bc], a                                    ; $4902: $02
    ld e, $06                                     ; $4903: $1e $06
    ld e, $02                                     ; $4905: $1e $02
    inc e                                         ; $4907: $1c
    ld b, $00                                     ; $4908: $06 $00
    rst $38                                       ; $490a: $ff
    dec c                                         ; $490b: $0d
    inc b                                         ; $490c: $04
    ld hl, sp+$07                                 ; $490d: $f8 $07
    ld a, [c]                                     ; $490f: $f2
    ld bc, $fae2                                  ; $4910: $01 $e2 $fa
    ld [c], a                                     ; $4913: $e2
    cp $f2                                        ; $4914: $fe $f2
    ld a, [$fef2]                                 ; $4916: $fa $f2 $fe
    ld [bc], a                                    ; $4919: $02
    rlca                                          ; $491a: $07
    sbc [hl]                                      ; $491b: $9e
    jr jr_0e4_493d                                ; $491c: $18 $1f

    jr nc, jr_0e4_495f                            ; $491e: $30 $3f

    ld h, b                                       ; $4920: $60
    ld a, a                                       ; $4921: $7f
    ld h, b                                       ; $4922: $60
    ld a, a                                       ; $4923: $7f
    and c                                         ; $4924: $a1
    rst $38                                       ; $4925: $ff
    sub a                                         ; $4926: $97
    cp $ff                                        ; $4927: $fe $ff
    db $fc                                        ; $4929: $fc
    ld a, a                                       ; $492a: $7f
    ld a, h                                       ; $492b: $7c
    ccf                                           ; $492c: $3f
    inc a                                         ; $492d: $3c
    cpl                                           ; $492e: $2f
    ld a, $1f                                     ; $492f: $3e $1f
    dec e                                         ; $4931: $1d
    inc hl                                        ; $4932: $23
    ccf                                           ; $4933: $3f
    ld e, h                                       ; $4934: $5c
    ld a, a                                       ; $4935: $7f
    ld [hl], a                                    ; $4936: $77
    ld a, a                                       ; $4937: $7f
    ld [hl], $3f                                  ; $4938: $36 $3f
    ld [bc], a                                    ; $493a: $02
    inc c                                         ; $493b: $0c
    add [hl]                                      ; $493c: $86

jr_0e4_493d:
    ld [bc], a                                    ; $493d: $02
    ld c, $07                                     ; $493e: $0e $07
    rrca                                          ; $4940: $0f
    dec c                                         ; $4941: $0d
    rrca                                          ; $4942: $0f
    inc bc                                        ; $4943: $03
    ld c, $8b                                     ; $4944: $0e $8b
    ld [bc], a                                    ; $4946: $02
    ld c, $0a                                     ; $4947: $0e $0a
    rrca                                          ; $4949: $0f
    ld bc, $020e                                  ; $494a: $01 $0e $02
    ld c, $02                                     ; $494d: $0e $02
    inc c                                         ; $494f: $0c
    inc b                                         ; $4950: $04
    ld b, $0c                                     ; $4951: $06 $0c
    add c                                         ; $4953: $81
    inc b                                         ; $4954: $04
    inc bc                                        ; $4955: $03
    inc c                                         ; $4956: $0c
    sbc [hl]                                      ; $4957: $9e
    ld [hl-], a                                   ; $4958: $32
    ccf                                           ; $4959: $3f
    ld [hl], $3f                                  ; $495a: $36 $3f
    ld [hl], $3f                                  ; $495c: $36 $3f
    ld [hl-], a                                   ; $495e: $32

jr_0e4_495f:
    ccf                                           ; $495f: $3f
    ld [hl+], a                                   ; $4960: $22
    ccf                                           ; $4961: $3f
    ld l, $3f                                     ; $4962: $2e $3f
    ld [hl-], a                                   ; $4964: $32
    ccf                                           ; $4965: $3f
    ld a, $33                                     ; $4966: $3e $33
    ld l, $3f                                     ; $4968: $2e $3f
    jr nz, jr_0e4_49ab                            ; $496a: $20 $3f

    jr nz, jr_0e4_49ad                            ; $496c: $20 $3f

    ld b, b                                       ; $496e: $40
    ld a, a                                       ; $496f: $7f
    ld c, b                                       ; $4970: $48
    ld a, a                                       ; $4971: $7f
    pop af                                        ; $4972: $f1
    rst $38                                       ; $4973: $ff
    add a                                         ; $4974: $87
    rst $38                                       ; $4975: $ff
    ld [bc], a                                    ; $4976: $02
    ld a, a                                       ; $4977: $7f
    ld [bc], a                                    ; $4978: $02
    ld [$0c04], sp                                ; $4979: $08 $04 $0c
    ld [bc], a                                    ; $497c: $02
    ld c, $84                                     ; $497d: $0e $84
    rrca                                          ; $497f: $0f
    dec c                                         ; $4980: $0d
    rrca                                          ; $4981: $0f
    dec c                                         ; $4982: $0d
    ld [bc], a                                    ; $4983: $02
    ld c, $02                                     ; $4984: $0e $02
    inc c                                         ; $4986: $0c
    inc c                                         ; $4987: $0c
    ld [$0c04], sp                                ; $4988: $08 $04 $0c
    rst $38                                       ; $498b: $ff
    dec c                                         ; $498c: $0d
    inc b                                         ; $498d: $04
    ld hl, sp+$07                                 ; $498e: $f8 $07
    ld a, [c]                                     ; $4990: $f2
    ld bc, $fae2                                  ; $4991: $01 $e2 $fa
    ld [c], a                                     ; $4994: $e2
    cp $f2                                        ; $4995: $fe $f2
    ld a, [$fff2]                                 ; $4997: $fa $f2 $ff
    ld [bc], a                                    ; $499a: $02
    rlca                                          ; $499b: $07
    sub h                                         ; $499c: $94
    jr jr_0e4_49be                                ; $499d: $18 $1f

    jr nc, jr_0e4_49e0                            ; $499f: $30 $3f

    ld h, b                                       ; $49a1: $60
    ld a, a                                       ; $49a2: $7f
    ld h, c                                       ; $49a3: $61
    ld a, a                                       ; $49a4: $7f
    or e                                          ; $49a5: $b3
    cp $df                                        ; $49a6: $fe $df
    db $fc                                        ; $49a8: $fc
    rst $38                                       ; $49a9: $ff
    db $fc                                        ; $49aa: $fc

jr_0e4_49ab:
    ld a, a                                       ; $49ab: $7f
    ld a, b                                       ; $49ac: $78

jr_0e4_49ad:
    cpl                                           ; $49ad: $2f
    jr c, @+$21                                   ; $49ae: $38 $1f

    inc e                                         ; $49b0: $1c
    ld [bc], a                                    ; $49b1: $02
    ccf                                           ; $49b2: $3f
    adc b                                         ; $49b3: $88
    ld e, a                                       ; $49b4: $5f
    ld a, l                                       ; $49b5: $7d
    ld b, e                                       ; $49b6: $43
    ld a, a                                       ; $49b7: $7f
    ld a, h                                       ; $49b8: $7c
    ld a, a                                       ; $49b9: $7f
    scf                                           ; $49ba: $37
    ccf                                           ; $49bb: $3f
    ld [bc], a                                    ; $49bc: $02
    inc c                                         ; $49bd: $0c

jr_0e4_49be:
    add a                                         ; $49be: $87
    ld b, $0e                                     ; $49bf: $06 $0e
    dec b                                         ; $49c1: $05
    rrca                                          ; $49c2: $0f
    dec c                                         ; $49c3: $0d
    rrca                                          ; $49c4: $0f
    rlca                                          ; $49c5: $07
    ld [bc], a                                    ; $49c6: $02
    rrca                                          ; $49c7: $0f
    add a                                         ; $49c8: $87
    inc bc                                        ; $49c9: $03
    ld c, $0a                                     ; $49ca: $0e $0a
    rrca                                          ; $49cc: $0f
    ld bc, $020e                                  ; $49cd: $01 $0e $02
    inc bc                                        ; $49d0: $03
    ld c, $88                                     ; $49d1: $0e $88
    ld b, $0a                                     ; $49d3: $06 $0a
    ld c, $0a                                     ; $49d5: $0e $0a
    ld c, $0a                                     ; $49d7: $0e $0a
    ld c, $04                                     ; $49d9: $0e $04
    inc bc                                        ; $49db: $03
    inc c                                         ; $49dc: $0c
    sbc [hl]                                      ; $49dd: $9e
    inc sp                                        ; $49de: $33
    ccf                                           ; $49df: $3f

jr_0e4_49e0:
    ld [hl], $3f                                  ; $49e0: $36 $3f
    ld [hl], $3f                                  ; $49e2: $36 $3f
    ld [hl-], a                                   ; $49e4: $32
    ccf                                           ; $49e5: $3f
    ld [hl+], a                                   ; $49e6: $22
    ccf                                           ; $49e7: $3f
    ld l, $3f                                     ; $49e8: $2e $3f
    ld [hl-], a                                   ; $49ea: $32
    ccf                                           ; $49eb: $3f
    ld a, $33                                     ; $49ec: $3e $33
    ld l, $3f                                     ; $49ee: $2e $3f
    jr nz, jr_0e4_4a31                            ; $49f0: $20 $3f

    jr nz, jr_0e4_4a33                            ; $49f2: $20 $3f

    ld hl, $493f                                  ; $49f4: $21 $3f $49
    ld a, a                                       ; $49f7: $7f
    pop af                                        ; $49f8: $f1
    rst $38                                       ; $49f9: $ff
    add a                                         ; $49fa: $87
    rst $38                                       ; $49fb: $ff
    ld [bc], a                                    ; $49fc: $02
    ld a, a                                       ; $49fd: $7f
    ld [bc], a                                    ; $49fe: $02
    db $10                                        ; $49ff: $10
    ld [bc], a                                    ; $4a00: $02
    inc e                                         ; $4a01: $1c
    add [hl]                                      ; $4a02: $86
    ld [de], a                                    ; $4a03: $12
    ld e, $17                                     ; $4a04: $1e $17
    dec e                                         ; $4a06: $1d
    rla                                           ; $4a07: $17
    dec e                                         ; $4a08: $1d
    ld [bc], a                                    ; $4a09: $02
    rra                                           ; $4a0a: $1f
    inc b                                         ; $4a0b: $04
    jr jr_0e4_4a1a                                ; $4a0c: $18 $0c

    db $10                                        ; $4a0e: $10
    inc b                                         ; $4a0f: $04
    jr @+$01                                      ; $4a10: $18 $ff

    dec c                                         ; $4a12: $0d
    inc b                                         ; $4a13: $04
    ld hl, sp+$07                                 ; $4a14: $f8 $07
    ld a, [c]                                     ; $4a16: $f2
    ld bc, $fae2                                  ; $4a17: $01 $e2 $fa

jr_0e4_4a1a:
    ld [c], a                                     ; $4a1a: $e2
    ld bc, $faf2                                  ; $4a1b: $01 $f2 $fa
    ld a, [c]                                     ; $4a1e: $f2
    nop                                           ; $4a1f: $00
    ld [bc], a                                    ; $4a20: $02
    rrca                                          ; $4a21: $0f
    add a                                         ; $4a22: $87
    jr nc, jr_0e4_4a64                            ; $4a23: $30 $3f

    ld h, b                                       ; $4a25: $60
    ld a, a                                       ; $4a26: $7f
    ld b, e                                       ; $4a27: $43
    ld a, a                                       ; $4a28: $7f
    db $ec                                        ; $4a29: $ec
    ld [bc], a                                    ; $4a2a: $02
    rst $38                                       ; $4a2b: $ff
    adc e                                         ; $4a2c: $8b
    ld hl, sp-$01                                 ; $4a2d: $f8 $ff
    ld a, [c]                                     ; $4a2f: $f2
    ld a, a                                       ; $4a30: $7f

jr_0e4_4a31:
    ld h, b                                       ; $4a31: $60
    ccf                                           ; $4a32: $3f

jr_0e4_4a33:
    ld sp, $131f                                  ; $4a33: $31 $1f $13
    ccf                                           ; $4a36: $3f
    jr c, jr_0e4_4a3b                             ; $4a37: $38 $02

    ld a, a                                       ; $4a39: $7f
    adc b                                         ; $4a3a: $88

jr_0e4_4a3b:
    ld e, a                                       ; $4a3b: $5f
    ld a, h                                       ; $4a3c: $7c
    ld l, e                                       ; $4a3d: $6b
    ld a, a                                       ; $4a3e: $7f
    inc [hl]                                      ; $4a3f: $34
    ccf                                           ; $4a40: $3f
    dec hl                                        ; $4a41: $2b
    ccf                                           ; $4a42: $3f
    ld [bc], a                                    ; $4a43: $02
    ld b, b                                       ; $4a44: $40
    add a                                         ; $4a45: $87
    jr nc, @+$72                                  ; $4a46: $30 $70

    ld l, b                                       ; $4a48: $68
    ld a, b                                       ; $4a49: $78
    ld e, b                                       ; $4a4a: $58
    ld a, b                                       ; $4a4b: $78
    ld l, h                                       ; $4a4c: $6c
    ld [bc], a                                    ; $4a4d: $02
    ld a, h                                       ; $4a4e: $7c
    add c                                         ; $4a4f: $81
    inc a                                         ; $4a50: $3c

jr_0e4_4a51:
    inc bc                                        ; $4a51: $03
    ld a, b                                       ; $4a52: $78
    xor a                                         ; $4a53: $af
    ld e, b                                       ; $4a54: $58
    ld a, b                                       ; $4a55: $78
    jr @+$7a                                      ; $4a56: $18 $78

    jr jr_0e4_4ac2                                ; $4a58: $18 $68

    jr c, jr_0e4_4ac8                             ; $4a5a: $38 $6c

    ld a, h                                       ; $4a5c: $7c
    ld l, [hl]                                    ; $4a5d: $6e
    ld a, d                                       ; $4a5e: $7a
    ld e, a                                       ; $4a5f: $5f
    ld a, c                                       ; $4a60: $79
    ld [hl], $7e                                  ; $4a61: $36 $7e
    halt                                          ; $4a63: $76

jr_0e4_4a64:
    ld a, [hl]                                    ; $4a64: $7e
    ld l, a                                       ; $4a65: $6f
    ld a, a                                       ; $4a66: $7f
    ld h, l                                       ; $4a67: $65
    ld a, a                                       ; $4a68: $7f
    ld l, l                                       ; $4a69: $6d
    ld a, a                                       ; $4a6a: $7f
    ld c, l                                       ; $4a6b: $4d
    ld a, a                                       ; $4a6c: $7f
    ld b, l                                       ; $4a6d: $45
    ld a, a                                       ; $4a6e: $7f
    ld e, l                                       ; $4a6f: $5d
    ld a, a                                       ; $4a70: $7f
    ld h, l                                       ; $4a71: $65
    ld a, a                                       ; $4a72: $7f
    dec a                                         ; $4a73: $3d
    daa                                           ; $4a74: $27
    add hl, sp                                    ; $4a75: $39
    ccf                                           ; $4a76: $3f
    ld hl, $213f                                  ; $4a77: $21 $3f $21
    ccf                                           ; $4a7a: $3f
    ld hl, $533f                                  ; $4a7b: $21 $3f $53
    ld a, a                                       ; $4a7e: $7f
    di                                            ; $4a7f: $f3
    rst $38                                       ; $4a80: $ff
    add a                                         ; $4a81: $87
    rst $38                                       ; $4a82: $ff
    ld [bc], a                                    ; $4a83: $02
    ld a, a                                       ; $4a84: $7f
    add [hl]                                      ; $4a85: $86
    dec [hl]                                      ; $4a86: $35
    ccf                                           ; $4a87: $3f
    ld [hl-], a                                   ; $4a88: $32
    ld a, $32                                     ; $4a89: $3e $32
    ld a, $02                                     ; $4a8b: $3e $02
    inc a                                         ; $4a8d: $3c
    inc c                                         ; $4a8e: $0c
    jr nc, jr_0e4_4a99                            ; $4a8f: $30 $08

    jr nz, jr_0e4_4a97                            ; $4a91: $20 $04

    jr nc, @+$01                                  ; $4a93: $30 $ff

    dec c                                         ; $4a95: $0d
    inc b                                         ; $4a96: $04

jr_0e4_4a97:
    ld hl, sp+$07                                 ; $4a97: $f8 $07

jr_0e4_4a99:
    ld a, [c]                                     ; $4a99: $f2
    ld bc, $fae3                                  ; $4a9a: $01 $e3 $fa
    db $e3                                        ; $4a9d: $e3
    nop                                           ; $4a9e: $00
    di                                            ; $4a9f: $f3
    ld a, [$00f3]                                 ; $4aa0: $fa $f3 $00
    ld [bc], a                                    ; $4aa3: $02
    rra                                           ; $4aa4: $1f
    adc c                                         ; $4aa5: $89
    jr nc, jr_0e4_4ae7                            ; $4aa6: $30 $3f

    ld b, b                                       ; $4aa8: $40
    ld a, a                                       ; $4aa9: $7f
    pop bc                                        ; $4aaa: $c1
    rst $38                                       ; $4aab: $ff
    rst $28                                       ; $4aac: $ef
    rst $38                                       ; $4aad: $ff
    ld sp, hl                                     ; $4aae: $f9
    ld [bc], a                                    ; $4aaf: $02
    rst $38                                       ; $4ab0: $ff
    sub e                                         ; $4ab1: $93
    ld a, [$707f]                                 ; $4ab2: $fa $7f $70
    ccf                                           ; $4ab5: $3f
    ld hl, $333f                                  ; $4ab6: $21 $3f $33
    ld a, a                                       ; $4ab9: $7f
    ld a, b                                       ; $4aba: $78
    ld e, a                                       ; $4abb: $5f
    ld a, a                                       ; $4abc: $7f
    ld l, a                                       ; $4abd: $6f
    ld a, a                                       ; $4abe: $7f
    inc [hl]                                      ; $4abf: $34
    ccf                                           ; $4ac0: $3f
    ld l, b                                       ; $4ac1: $68

jr_0e4_4ac2:
    ld a, a                                       ; $4ac2: $7f
    ld l, a                                       ; $4ac3: $6f
    ld a, a                                       ; $4ac4: $7f
    ld [bc], a                                    ; $4ac5: $02
    jr nz, jr_0e4_4a51                            ; $4ac6: $20 $89

jr_0e4_4ac8:
    jr jr_0e4_4b02                                ; $4ac8: $18 $38

    inc e                                         ; $4aca: $1c
    inc a                                         ; $4acb: $3c
    inc [hl]                                      ; $4acc: $34
    inc a                                         ; $4acd: $3c
    ld a, [bc]                                    ; $4ace: $0a
    ld a, $36                                     ; $4acf: $3e $36
    inc bc                                        ; $4ad1: $03

jr_0e4_4ad2:
    ld a, $ae                                     ; $4ad2: $3e $ae
    inc a                                         ; $4ad4: $3c
    inc c                                         ; $4ad5: $0c
    inc a                                         ; $4ad6: $3c
    inc c                                         ; $4ad7: $0c
    inc a                                         ; $4ad8: $3c

jr_0e4_4ad9:
    inc c                                         ; $4ad9: $0c
    ld [hl], $1e                                  ; $4ada: $36 $1e
    ld [hl], $3e                                  ; $4adc: $36 $3e
    ld a, [hl+]                                   ; $4ade: $2a
    ld a, $1d                                     ; $4adf: $3e $1d
    ccf                                           ; $4ae1: $3f
    dec sp                                        ; $4ae2: $3b
    ccf                                           ; $4ae3: $3f
    ld sp, $653f                                  ; $4ae4: $31 $3f $65

jr_0e4_4ae7:
    ld a, a                                       ; $4ae7: $7f
    ld c, l                                       ; $4ae8: $4d
    ld a, a                                       ; $4ae9: $7f
    ld c, l                                       ; $4aea: $4d
    ld a, a                                       ; $4aeb: $7f
    ld c, l                                       ; $4aec: $4d
    ld a, a                                       ; $4aed: $7f
    ld a, l                                       ; $4aee: $7d
    ld a, a                                       ; $4aef: $7f
    ld c, c                                       ; $4af0: $49
    ld a, a                                       ; $4af1: $7f
    ld a, c                                       ; $4af2: $79
    ld c, a                                       ; $4af3: $4f
    add hl, sp                                    ; $4af4: $39
    ccf                                           ; $4af5: $3f
    ld hl, $213f                                  ; $4af6: $21 $3f $21
    ccf                                           ; $4af9: $3f
    inc hl                                        ; $4afa: $23
    ccf                                           ; $4afb: $3f
    ld d, e                                       ; $4afc: $53
    ld a, a                                       ; $4afd: $7f
    di                                            ; $4afe: $f3
    rst $38                                       ; $4aff: $ff
    add a                                         ; $4b00: $87
    rst $38                                       ; $4b01: $ff

jr_0e4_4b02:
    ld [bc], a                                    ; $4b02: $02
    ld a, a                                       ; $4b03: $7f
    ld [bc], a                                    ; $4b04: $02
    nop                                           ; $4b05: $00
    add d                                         ; $4b06: $82
    add hl, sp                                    ; $4b07: $39
    ccf                                           ; $4b08: $3f
    ld [bc], a                                    ; $4b09: $02
    ld a, $0c                                     ; $4b0a: $3e $0c
    jr nc, jr_0e4_4b18                            ; $4b0c: $30 $0a

    jr nz, jr_0e4_4b14                            ; $4b0e: $20 $04

    jr nc, jr_0e4_4b14                            ; $4b10: $30 $02

    nop                                           ; $4b12: $00
    rst $38                                       ; $4b13: $ff

jr_0e4_4b14:
    dec c                                         ; $4b14: $0d
    inc b                                         ; $4b15: $04
    ld hl, sp+$07                                 ; $4b16: $f8 $07

jr_0e4_4b18:
    ld a, [c]                                     ; $4b18: $f2
    ld bc, $fbe4                                  ; $4b19: $01 $e4 $fb
    db $e4                                        ; $4b1c: $e4
    ld bc, $faf4                                  ; $4b1d: $01 $f4 $fa
    db $f4                                        ; $4b20: $f4
    db $fd                                        ; $4b21: $fd
    ld [bc], a                                    ; $4b22: $02
    rra                                           ; $4b23: $1f
    add e                                         ; $4b24: $83
    ld h, a                                       ; $4b25: $67
    ld a, a                                       ; $4b26: $7f
    ret c                                         ; $4b27: $d8

    inc bc                                        ; $4b28: $03
    rst $38                                       ; $4b29: $ff
    add [hl]                                      ; $4b2a: $86
    ret nz                                        ; $4b2b: $c0

    rst $38                                       ; $4b2c: $ff
    ret nz                                        ; $4b2d: $c0

    rst $38                                       ; $4b2e: $ff
    pop bc                                        ; $4b2f: $c1
    rst $38                                       ; $4b30: $ff
    inc bc                                        ; $4b31: $03
    ld a, a                                       ; $4b32: $7f
    adc a                                         ; $4b33: $8f
    ld h, e                                       ; $4b34: $63
    rst $38                                       ; $4b35: $ff
    and $bf                                       ; $4b36: $e6 $bf
    ldh a, [$df]                                  ; $4b38: $f0 $df
    rst $38                                       ; $4b3a: $ff
    ld l, [hl]                                    ; $4b3b: $6e
    ld a, a                                       ; $4b3c: $7f
    pop de                                        ; $4b3d: $d1
    rst $38                                       ; $4b3e: $ff
    rst $18                                       ; $4b3f: $df
    rst $38                                       ; $4b40: $ff
    set 7, a                                      ; $4b41: $cb $ff
    ld [bc], a                                    ; $4b43: $02
    jr nz, jr_0e4_4ad2                            ; $4b44: $20 $8c

    jr jr_0e4_4b80                                ; $4b46: $18 $38

    inc [hl]                                      ; $4b48: $34
    inc a                                         ; $4b49: $3c
    inc [hl]                                      ; $4b4a: $34
    inc a                                         ; $4b4b: $3c
    ld e, $3e                                     ; $4b4c: $1e $3e
    ld d, $3e                                     ; $4b4e: $16 $3e
    inc l                                         ; $4b50: $2c

jr_0e4_4b51:
    inc a                                         ; $4b51: $3c
    ld [bc], a                                    ; $4b52: $02
    jr c, jr_0e4_4ad9                             ; $4b53: $38 $84

    jr nc, jr_0e4_4b67                            ; $4b55: $30 $10

    jr nc, jr_0e4_4b69                            ; $4b57: $30 $10

    ld [bc], a                                    ; $4b59: $02
    inc a                                         ; $4b5a: $3c
    add c                                         ; $4b5b: $81
    ld [hl-], a                                   ; $4b5c: $32
    inc bc                                        ; $4b5d: $03
    ld a, $84                                     ; $4b5e: $3e $84
    ld sp, $313f                                  ; $4b60: $31 $3f $31
    ccf                                           ; $4b63: $3f
    ld [bc], a                                    ; $4b64: $02
    ld a, $9a                                     ; $4b65: $3e $9a

jr_0e4_4b67:
    ld c, l                                       ; $4b67: $4d
    ld a, a                                       ; $4b68: $7f

jr_0e4_4b69:
    ld c, l                                       ; $4b69: $4d
    ld a, a                                       ; $4b6a: $7f
    ld c, l                                       ; $4b6b: $4d
    ld a, a                                       ; $4b6c: $7f
    ld a, l                                       ; $4b6d: $7d
    ld a, a                                       ; $4b6e: $7f
    ld c, c                                       ; $4b6f: $49
    ld a, a                                       ; $4b70: $7f
    ld a, c                                       ; $4b71: $79
    ld c, a                                       ; $4b72: $4f
    add hl, sp                                    ; $4b73: $39
    ccf                                           ; $4b74: $3f
    ld hl, $213f                                  ; $4b75: $21 $3f $21
    ccf                                           ; $4b78: $3f
    inc hl                                        ; $4b79: $23
    ccf                                           ; $4b7a: $3f
    ld d, e                                       ; $4b7b: $53
    ld a, a                                       ; $4b7c: $7f
    di                                            ; $4b7d: $f3
    rst $38                                       ; $4b7e: $ff
    add a                                         ; $4b7f: $87

jr_0e4_4b80:
    rst $38                                       ; $4b80: $ff
    ld [bc], a                                    ; $4b81: $02
    ld a, a                                       ; $4b82: $7f
    inc b                                         ; $4b83: $04
    nop                                           ; $4b84: $00
    ld [bc], a                                    ; $4b85: $02
    rlca                                          ; $4b86: $07
    inc c                                         ; $4b87: $0c
    ld b, $0a                                     ; $4b88: $06 $0a
    inc b                                         ; $4b8a: $04
    inc b                                         ; $4b8b: $04
    ld b, $04                                     ; $4b8c: $06 $04
    nop                                           ; $4b8e: $00
    rst $38                                       ; $4b8f: $ff
    dec c                                         ; $4b90: $0d
    inc b                                         ; $4b91: $04
    ld hl, sp+$07                                 ; $4b92: $f8 $07
    ld a, [c]                                     ; $4b94: $f2
    ld bc, $fbe4                                  ; $4b95: $01 $e4 $fb
    db $e4                                        ; $4b98: $e4
    ld bc, $faf4                                  ; $4b99: $01 $f4 $fa
    db $f4                                        ; $4b9c: $f4
    nop                                           ; $4b9d: $00
    ld [bc], a                                    ; $4b9e: $02
    rrca                                          ; $4b9f: $0f
    sbc [hl]                                      ; $4ba0: $9e
    ld a, [hl-]                                   ; $4ba1: $3a
    ccf                                           ; $4ba2: $3f
    ld l, a                                       ; $4ba3: $6f
    ld a, a                                       ; $4ba4: $7f
    ld hl, sp-$01                                 ; $4ba5: $f8 $ff
    call c, $cfff                                 ; $4ba7: $dc $ff $cf
    rst $38                                       ; $4baa: $ff
    ret nz                                        ; $4bab: $c0

    rst $38                                       ; $4bac: $ff
    ld h, b                                       ; $4bad: $60
    ld a, a                                       ; $4bae: $7f
    ld sp, $7f3f                                  ; $4baf: $31 $3f $7f
    ld l, a                                       ; $4bb2: $6f
    rst $38                                       ; $4bb3: $ff
    ldh a, [$df]                                  ; $4bb4: $f0 $df
    rst $38                                       ; $4bb6: $ff
    ld l, a                                       ; $4bb7: $6f
    ld a, a                                       ; $4bb8: $7f
    ret nc                                        ; $4bb9: $d0

    rst $38                                       ; $4bba: $ff
    rst $18                                       ; $4bbb: $df
    rst $38                                       ; $4bbc: $ff
    set 7, a                                      ; $4bbd: $cb $ff
    ld [bc], a                                    ; $4bbf: $02
    jr nz, jr_0e4_4b51                            ; $4bc0: $20 $8f

    jr jr_0e4_4bfc                                ; $4bc2: $18 $38

    inc [hl]                                      ; $4bc4: $34
    inc a                                         ; $4bc5: $3c
    inc d                                         ; $4bc6: $14
    inc a                                         ; $4bc7: $3c
    ld [hl-], a                                   ; $4bc8: $32
    ld a, $36                                     ; $4bc9: $3e $36
    ld a, $1a                                     ; $4bcb: $3e $1a

jr_0e4_4bcd:
    ld a, $14                                     ; $4bcd: $3e $14
    inc a                                         ; $4bcf: $3c
    inc l                                         ; $4bd0: $2c
    inc bc                                        ; $4bd1: $03
    inc a                                         ; $4bd2: $3c
    add l                                         ; $4bd3: $85
    ld a, $3a                                     ; $4bd4: $3e $3a
    ld [hl], $3e                                  ; $4bd6: $36 $3e
    add hl, bc                                    ; $4bd8: $09
    inc bc                                        ; $4bd9: $03
    ccf                                           ; $4bda: $3f
    sbc [hl]                                      ; $4bdb: $9e
    ld sp, $313f                                  ; $4bdc: $31 $3f $31
    ccf                                           ; $4bdf: $3f
    ld c, l                                       ; $4be0: $4d
    ld a, a                                       ; $4be1: $7f
    ld c, l                                       ; $4be2: $4d
    ld a, a                                       ; $4be3: $7f
    ld c, l                                       ; $4be4: $4d
    ld a, a                                       ; $4be5: $7f
    ld a, l                                       ; $4be6: $7d
    ld a, a                                       ; $4be7: $7f
    ld c, c                                       ; $4be8: $49
    ld a, a                                       ; $4be9: $7f
    ld a, c                                       ; $4bea: $79
    ld c, a                                       ; $4beb: $4f
    add hl, sp                                    ; $4bec: $39
    ccf                                           ; $4bed: $3f
    ld hl, $213f                                  ; $4bee: $21 $3f $21
    ccf                                           ; $4bf1: $3f
    inc hl                                        ; $4bf2: $23
    ccf                                           ; $4bf3: $3f
    ld d, e                                       ; $4bf4: $53
    ld a, a                                       ; $4bf5: $7f
    di                                            ; $4bf6: $f3
    rst $38                                       ; $4bf7: $ff
    add a                                         ; $4bf8: $87
    rst $38                                       ; $4bf9: $ff
    ld [bc], a                                    ; $4bfa: $02
    ld a, a                                       ; $4bfb: $7f

jr_0e4_4bfc:
    inc b                                         ; $4bfc: $04
    nop                                           ; $4bfd: $00
    ld [bc], a                                    ; $4bfe: $02
    ccf                                           ; $4bff: $3f
    inc c                                         ; $4c00: $0c
    jr nc, jr_0e4_4c0d                            ; $4c01: $30 $0a

    jr nz, jr_0e4_4c09                            ; $4c03: $20 $04

    jr nc, jr_0e4_4c0b                            ; $4c05: $30 $04

    nop                                           ; $4c07: $00
    rst $38                                       ; $4c08: $ff

jr_0e4_4c09:
    dec c                                         ; $4c09: $0d
    inc b                                         ; $4c0a: $04

jr_0e4_4c0b:
    ld hl, sp+$07                                 ; $4c0b: $f8 $07

jr_0e4_4c0d:
    ld a, [c]                                     ; $4c0d: $f2
    ld bc, $fbe4                                  ; $4c0e: $01 $e4 $fb
    db $e4                                        ; $4c11: $e4
    ld bc, $faf4                                  ; $4c12: $01 $f4 $fa
    db $f4                                        ; $4c15: $f4
    ld bc, $0f02                                  ; $4c16: $01 $02 $0f
    adc a                                         ; $4c19: $8f
    ld a, [hl-]                                   ; $4c1a: $3a
    ccf                                           ; $4c1b: $3f
    ld l, a                                       ; $4c1c: $6f
    ld a, a                                       ; $4c1d: $7f
    ld hl, sp-$01                                 ; $4c1e: $f8 $ff
    call c, $cfff                                 ; $4c20: $dc $ff $cf
    rst $38                                       ; $4c23: $ff
    ret nz                                        ; $4c24: $c0

    rst $38                                       ; $4c25: $ff
    ld h, b                                       ; $4c26: $60
    ld a, a                                       ; $4c27: $7f
    ld sp, $3f02                                  ; $4c28: $31 $02 $3f
    adc l                                         ; $4c2b: $8d
    cpl                                           ; $4c2c: $2f
    ld a, a                                       ; $4c2d: $7f
    ld [hl], b                                    ; $4c2e: $70
    rst $18                                       ; $4c2f: $df
    rst $38                                       ; $4c30: $ff
    ld h, a                                       ; $4c31: $67
    ld a, a                                       ; $4c32: $7f
    ret nc                                        ; $4c33: $d0

    rst $38                                       ; $4c34: $ff
    rst $18                                       ; $4c35: $df
    rst $38                                       ; $4c36: $ff
    set 7, a                                      ; $4c37: $cb $ff
    ld [bc], a                                    ; $4c39: $02
    jr nz, jr_0e4_4bcd                            ; $4c3a: $20 $91

    jr jr_0e4_4c76                                ; $4c3c: $18 $38

    inc [hl]                                      ; $4c3e: $34
    inc a                                         ; $4c3f: $3c
    inc d                                         ; $4c40: $14
    inc a                                         ; $4c41: $3c
    ld [hl-], a                                   ; $4c42: $32
    ld a, $36                                     ; $4c43: $3e $36
    ld a, $1a                                     ; $4c45: $3e $1a
    ld a, $14                                     ; $4c47: $3e $14
    inc a                                         ; $4c49: $3c
    inc l                                         ; $4c4a: $2c
    inc a                                         ; $4c4b: $3c
    ld [hl], $02                                  ; $4c4c: $36 $02
    ld a, $86                                     ; $4c4e: $3e $86
    ld a, [hl-]                                   ; $4c50: $3a
    ccf                                           ; $4c51: $3f
    dec a                                         ; $4c52: $3d
    daa                                           ; $4c53: $27
    ccf                                           ; $4c54: $3f
    add hl, bc                                    ; $4c55: $09
    inc bc                                        ; $4c56: $03
    ccf                                           ; $4c57: $3f
    sbc h                                         ; $4c58: $9c
    ld sp, $4d3f                                  ; $4c59: $31 $3f $4d
    ld a, a                                       ; $4c5c: $7f
    ld c, l                                       ; $4c5d: $4d
    ld a, a                                       ; $4c5e: $7f
    ld c, l                                       ; $4c5f: $4d
    ld a, a                                       ; $4c60: $7f
    ld a, l                                       ; $4c61: $7d
    ld a, a                                       ; $4c62: $7f
    ld c, c                                       ; $4c63: $49
    ld a, a                                       ; $4c64: $7f
    ld a, c                                       ; $4c65: $79
    ld c, a                                       ; $4c66: $4f
    add hl, sp                                    ; $4c67: $39
    ccf                                           ; $4c68: $3f
    ld hl, $213f                                  ; $4c69: $21 $3f $21
    ccf                                           ; $4c6c: $3f
    inc hl                                        ; $4c6d: $23
    ccf                                           ; $4c6e: $3f
    ld d, e                                       ; $4c6f: $53
    ld a, a                                       ; $4c70: $7f
    di                                            ; $4c71: $f3
    rst $38                                       ; $4c72: $ff
    add a                                         ; $4c73: $87
    rst $38                                       ; $4c74: $ff
    ld [bc], a                                    ; $4c75: $02

jr_0e4_4c76:
    ld a, a                                       ; $4c76: $7f
    inc b                                         ; $4c77: $04
    nop                                           ; $4c78: $00
    add d                                         ; $4c79: $82
    ld a, c                                       ; $4c7a: $79
    ld a, a                                       ; $4c7b: $7f
    ld [bc], a                                    ; $4c7c: $02
    ld h, [hl]                                    ; $4c7d: $66
    ld a, [bc]                                    ; $4c7e: $0a
    ld h, b                                       ; $4c7f: $60
    ld a, [bc]                                    ; $4c80: $0a
    ld b, b                                       ; $4c81: $40
    inc b                                         ; $4c82: $04
    ld h, b                                       ; $4c83: $60
    inc b                                         ; $4c84: $04
    nop                                           ; $4c85: $00
    rst $38                                       ; $4c86: $ff
    dec c                                         ; $4c87: $0d
    inc b                                         ; $4c88: $04
    ld hl, sp+$07                                 ; $4c89: $f8 $07
    ld a, [c]                                     ; $4c8b: $f2
    ld bc, $fbe4                                  ; $4c8c: $01 $e4 $fb
    db $e4                                        ; $4c8f: $e4
    ld [bc], a                                    ; $4c90: $02
    db $f4                                        ; $4c91: $f4
    ld a, [$01f4]                                 ; $4c92: $fa $f4 $01
    ld [bc], a                                    ; $4c95: $02
    rra                                           ; $4c96: $1f
    add e                                         ; $4c97: $83
    ld h, a                                       ; $4c98: $67
    ld a, a                                       ; $4c99: $7f
    ret c                                         ; $4c9a: $d8

    inc bc                                        ; $4c9b: $03
    rst $38                                       ; $4c9c: $ff
    add [hl]                                      ; $4c9d: $86
    ret nz                                        ; $4c9e: $c0

    rst $38                                       ; $4c9f: $ff
    ret nz                                        ; $4ca0: $c0

    rst $38                                       ; $4ca1: $ff
    pop bc                                        ; $4ca2: $c1
    rst $38                                       ; $4ca3: $ff
    inc bc                                        ; $4ca4: $03
    ld a, a                                       ; $4ca5: $7f
    add l                                         ; $4ca6: $85
    ld h, e                                       ; $4ca7: $63
    ccf                                           ; $4ca8: $3f
    ld [hl], $3f                                  ; $4ca9: $36 $3f
    jr nc, jr_0e4_4caf                            ; $4cab: $30 $02

    ld a, a                                       ; $4cad: $7f
    adc b                                         ; $4cae: $88

jr_0e4_4caf:
    rst $28                                       ; $4caf: $ef
    rst $38                                       ; $4cb0: $ff
    ret nc                                        ; $4cb1: $d0

    rst $38                                       ; $4cb2: $ff
    sbc h                                         ; $4cb3: $9c
    rst $38                                       ; $4cb4: $ff
    sbc e                                         ; $4cb5: $9b
    rst $38                                       ; $4cb6: $ff
    ld [bc], a                                    ; $4cb7: $02
    ld b, b                                       ; $4cb8: $40
    adc h                                         ; $4cb9: $8c
    jr nc, jr_0e4_4d2c                            ; $4cba: $30 $70

    ld l, b                                       ; $4cbc: $68
    ld a, b                                       ; $4cbd: $78
    ld l, b                                       ; $4cbe: $68
    ld a, b                                       ; $4cbf: $78
    inc a                                         ; $4cc0: $3c
    ld a, h                                       ; $4cc1: $7c
    inc l                                         ; $4cc2: $2c
    ld a, h                                       ; $4cc3: $7c
    ld e, b                                       ; $4cc4: $58
    ld a, b                                       ; $4cc5: $78
    ld [bc], a                                    ; $4cc6: $02
    ld [hl], b                                    ; $4cc7: $70
    xor d                                         ; $4cc8: $aa
    ld a, b                                       ; $4cc9: $78
    jr c, jr_0e4_4d38                             ; $4cca: $38 $6c

    inc a                                         ; $4ccc: $3c
    ld d, [hl]                                    ; $4ccd: $56
    ld e, [hl]                                    ; $4cce: $5e
    ld a, a                                       ; $4ccf: $7f
    ld a, c                                       ; $4cd0: $79
    ld h, a                                       ; $4cd1: $67
    ld a, l                                       ; $4cd2: $7d
    rra                                           ; $4cd3: $1f
    ld a, a                                       ; $4cd4: $7f
    ld a, c                                       ; $4cd5: $79
    ld a, a                                       ; $4cd6: $7f
    ld h, a                                       ; $4cd7: $67
    ld a, a                                       ; $4cd8: $7f
    ld a, l                                       ; $4cd9: $7d
    ld a, a                                       ; $4cda: $7f
    reti                                          ; $4cdb: $d9


    rst $38                                       ; $4cdc: $ff
    xor c                                         ; $4cdd: $a9
    rst $38                                       ; $4cde: $ff
    ld sp, hl                                     ; $4cdf: $f9
    sbc a                                         ; $4ce0: $9f
    pop af                                        ; $4ce1: $f1
    cp a                                          ; $4ce2: $bf
    ld h, c                                       ; $4ce3: $61
    ld a, a                                       ; $4ce4: $7f
    ld hl, $213f                                  ; $4ce5: $21 $3f $21
    ccf                                           ; $4ce8: $3f
    ld hl, $233f                                  ; $4ce9: $21 $3f $23
    ccf                                           ; $4cec: $3f
    ld d, e                                       ; $4ced: $53
    ld a, a                                       ; $4cee: $7f
    di                                            ; $4cef: $f3
    rst $38                                       ; $4cf0: $ff
    add a                                         ; $4cf1: $87
    rst $38                                       ; $4cf2: $ff
    ld [bc], a                                    ; $4cf3: $02
    ld a, a                                       ; $4cf4: $7f
    inc b                                         ; $4cf5: $04
    nop                                           ; $4cf6: $00
    add d                                         ; $4cf7: $82
    ld [hl], c                                    ; $4cf8: $71
    ld a, a                                       ; $4cf9: $7f
    ld [bc], a                                    ; $4cfa: $02
    ld l, [hl]                                    ; $4cfb: $6e
    ld a, [bc]                                    ; $4cfc: $0a
    ld h, b                                       ; $4cfd: $60
    ld a, [bc]                                    ; $4cfe: $0a
    ld b, b                                       ; $4cff: $40
    inc b                                         ; $4d00: $04
    ld h, b                                       ; $4d01: $60
    inc b                                         ; $4d02: $04
    nop                                           ; $4d03: $00
    rst $38                                       ; $4d04: $ff
    rrca                                          ; $4d05: $0f
    dec b                                         ; $4d06: $05
    ld hl, sp+$07                                 ; $4d07: $f8 $07
    ld a, [c]                                     ; $4d09: $f2
    ld bc, $f9e4                                  ; $4d0a: $01 $e4 $f9
    db $e4                                        ; $4d0d: $e4
    ld bc, $03ef                                  ; $4d0e: $01 $ef $03
    db $f4                                        ; $4d11: $f4
    ld sp, hl                                     ; $4d12: $f9
    db $f4                                        ; $4d13: $f4
    db $fc                                        ; $4d14: $fc
    ld [bc], a                                    ; $4d15: $02
    rlca                                          ; $4d16: $07
    sub h                                         ; $4d17: $94
    dec de                                        ; $4d18: $1b
    rra                                           ; $4d19: $1f
    cpl                                           ; $4d1a: $2f
    ccf                                           ; $4d1b: $3f
    ld a, b                                       ; $4d1c: $78
    ld a, a                                       ; $4d1d: $7f
    ld [hl], b                                    ; $4d1e: $70
    ld a, a                                       ; $4d1f: $7f
    jr nc, jr_0e4_4d61                            ; $4d20: $30 $3f

    dec sp                                        ; $4d22: $3b
    ccf                                           ; $4d23: $3f
    rra                                           ; $4d24: $1f
    dec e                                         ; $4d25: $1d
    rra                                           ; $4d26: $1f
    jr jr_0e4_4d38                                ; $4d27: $18 $0f

    add hl, bc                                    ; $4d29: $09
    rrca                                          ; $4d2a: $0f
    inc c                                         ; $4d2b: $0c

jr_0e4_4d2c:
    ld [bc], a                                    ; $4d2c: $02
    rra                                           ; $4d2d: $1f
    adc b                                         ; $4d2e: $88
    dec hl                                        ; $4d2f: $2b
    ccf                                           ; $4d30: $3f
    inc [hl]                                      ; $4d31: $34
    ccf                                           ; $4d32: $3f
    ld a, [hl]                                    ; $4d33: $7e
    ld a, a                                       ; $4d34: $7f
    di                                            ; $4d35: $f3
    rst $18                                       ; $4d36: $df
    ld [bc], a                                    ; $4d37: $02

jr_0e4_4d38:
    ldh [rSC], a                                  ; $4d38: $e0 $02
    ld hl, sp-$64                                 ; $4d3a: $f8 $9c
    inc a                                         ; $4d3c: $3c
    db $fc                                        ; $4d3d: $fc
    inc d                                         ; $4d3e: $14
    db $fc                                        ; $4d3f: $fc
    inc e                                         ; $4d40: $1c
    db $fc                                        ; $4d41: $fc
    ld [hl], h                                    ; $4d42: $74
    db $fc                                        ; $4d43: $fc
    call z, $f8fc                                 ; $4d44: $cc $fc $f8
    ld a, b                                       ; $4d47: $78
    db $fc                                        ; $4d48: $fc
    sbc h                                         ; $4d49: $9c
    or $9e                                        ; $4d4a: $f6 $9e
    jp hl                                         ; $4d4c: $e9


    cpl                                           ; $4d4d: $2f
    db $f4                                        ; $4d4e: $f4
    rst $30                                       ; $4d4f: $f7
    rst $18                                       ; $4d50: $df
    cp $fd                                        ; $4d51: $fe $fd
    rst $38                                       ; $4d53: $ff
    inc bc                                        ; $4d54: $03
    rst $38                                       ; $4d55: $ff
    dec c                                         ; $4d56: $0d
    rst $38                                       ; $4d57: $ff
    ld [bc], a                                    ; $4d58: $02
    ld [bc], a                                    ; $4d59: $02
    add h                                         ; $4d5a: $84
    inc bc                                        ; $4d5b: $03
    ld bc, $0103                                  ; $4d5c: $01 $03 $01
    ld [bc], a                                    ; $4d5f: $02
    inc bc                                        ; $4d60: $03

jr_0e4_4d61:
    add h                                         ; $4d61: $84
    ld bc, $c603                                  ; $4d62: $01 $03 $c6
    cp $02                                        ; $4d65: $fe $02
    ld hl, sp+$0a                                 ; $4d67: $f8 $0a
    add b                                         ; $4d69: $80
    ld [$9a00], sp                                ; $4d6a: $08 $00 $9a
    xor $bf                                       ; $4d6d: $ee $bf
    xor $bf                                       ; $4d6f: $ee $bf
    call c, $7cff                                 ; $4d71: $dc $ff $7c
    ld a, a                                       ; $4d74: $7f
    db $10                                        ; $4d75: $10
    rra                                           ; $4d76: $1f
    db $10                                        ; $4d77: $10
    rra                                           ; $4d78: $1f
    db $10                                        ; $4d79: $10
    rra                                           ; $4d7a: $1f
    db $10                                        ; $4d7b: $10
    rra                                           ; $4d7c: $1f
    db $10                                        ; $4d7d: $10
    rra                                           ; $4d7e: $1f
    ld de, $291f                                  ; $4d7f: $11 $1f $29
    ccf                                           ; $4d82: $3f
    ld a, c                                       ; $4d83: $79
    ld a, a                                       ; $4d84: $7f
    ld b, e                                       ; $4d85: $43
    ld a, a                                       ; $4d86: $7f
    ld [bc], a                                    ; $4d87: $02
    ccf                                           ; $4d88: $3f
    inc b                                         ; $4d89: $04
    nop                                           ; $4d8a: $00
    jr jr_0e4_4d93                                ; $4d8b: $18 $06

    inc b                                         ; $4d8d: $04
    rlca                                          ; $4d8e: $07
    inc b                                         ; $4d8f: $04
    nop                                           ; $4d90: $00
    rst $38                                       ; $4d91: $ff
    rrca                                          ; $4d92: $0f

jr_0e4_4d93:
    dec b                                         ; $4d93: $05
    ld hl, sp+$07                                 ; $4d94: $f8 $07
    ld a, [c]                                     ; $4d96: $f2
    ld bc, $f9e3                                  ; $4d97: $01 $e3 $f9
    db $e3                                        ; $4d9a: $e3
    ld bc, $03f0                                  ; $4d9b: $01 $f0 $03
    di                                            ; $4d9e: $f3
    ld sp, hl                                     ; $4d9f: $f9
    di                                            ; $4da0: $f3
    db $fc                                        ; $4da1: $fc
    ld [bc], a                                    ; $4da2: $02
    rrca                                          ; $4da3: $0f
    adc c                                         ; $4da4: $89
    jr jr_0e4_4dc6                                ; $4da5: $18 $1f

    jr nz, jr_0e4_4de8                            ; $4da7: $20 $3f

    ld h, b                                       ; $4da9: $60
    ld a, a                                       ; $4daa: $7f
    ld [hl], a                                    ; $4dab: $77
    ld a, a                                       ; $4dac: $7f
    ld a, h                                       ; $4dad: $7c
    ld [bc], a                                    ; $4dae: $02
    ld a, a                                       ; $4daf: $7f
    sub e                                         ; $4db0: $93
    ld a, l                                       ; $4db1: $7d
    ccf                                           ; $4db2: $3f
    jr c, jr_0e4_4e34                             ; $4db3: $38 $7f

    ld c, b                                       ; $4db5: $48
    ld a, a                                       ; $4db6: $7f
    ld e, c                                       ; $4db7: $59
    ld a, a                                       ; $4db8: $7f

jr_0e4_4db9:
    ld e, h                                       ; $4db9: $5c
    cp a                                          ; $4dba: $bf
    cp $b7                                        ; $4dbb: $fe $b7
    rst $38                                       ; $4dbd: $ff
    push de                                       ; $4dbe: $d5
    rst $38                                       ; $4dbf: $ff
    xor [hl]                                      ; $4dc0: $ae
    rst $38                                       ; $4dc1: $ff
    sbc a                                         ; $4dc2: $9f

jr_0e4_4dc3:
    rst $38                                       ; $4dc3: $ff
    ld [bc], a                                    ; $4dc4: $02
    ret nz                                        ; $4dc5: $c0

jr_0e4_4dc6:
    adc c                                         ; $4dc6: $89
    jr nc, jr_0e4_4db9                            ; $4dc7: $30 $f0

    jr c, jr_0e4_4dc3                             ; $4dc9: $38 $f8

    add sp, -$08                                  ; $4dcb: $e8 $f8
    sub h                                         ; $4dcd: $94
    db $fc                                        ; $4dce: $fc
    db $ec                                        ; $4dcf: $ec
    ld [bc], a                                    ; $4dd0: $02
    db $fc                                        ; $4dd1: $fc
    sub e                                         ; $4dd2: $93
    ld a, h                                       ; $4dd3: $7c
    ld hl, sp+$18                                 ; $4dd4: $f8 $18
    db $fc                                        ; $4dd6: $fc
    sbc h                                         ; $4dd7: $9c
    db $fc                                        ; $4dd8: $fc
    sbc h                                         ; $4dd9: $9c
    db $f4                                        ; $4dda: $f4
    inc a                                         ; $4ddb: $3c
    ld [$f9ee], a                                 ; $4ddc: $ea $ee $f9
    rst $38                                       ; $4ddf: $ff
    call c, $efff                                 ; $4de0: $dc $ff $ef
    cp $7d                                        ; $4de3: $fe $7d
    rst $38                                       ; $4de5: $ff
    ld [bc], a                                    ; $4de6: $02
    ld [bc], a                                    ; $4de7: $02

jr_0e4_4de8:
    adc d                                         ; $4de8: $8a
    inc bc                                        ; $4de9: $03
    ld bc, $0103                                  ; $4dea: $01 $03 $01
    rst $28                                       ; $4ded: $ef
    rst $38                                       ; $4dee: $ff
    rla                                           ; $4def: $17
    rst $38                                       ; $4df0: $ff
    inc a                                         ; $4df1: $3c
    db $fc                                        ; $4df2: $fc
    ld [bc], a                                    ; $4df3: $02
    ret nz                                        ; $4df4: $c0

    ld [$0a80], sp                                ; $4df5: $08 $80 $0a
    nop                                           ; $4df8: $00
    sbc h                                         ; $4df9: $9c
    sbc d                                         ; $4dfa: $9a
    rst $38                                       ; $4dfb: $ff
    ld [hl], c                                    ; $4dfc: $71
    ld a, a                                       ; $4dfd: $7f
    db $10                                        ; $4dfe: $10
    rra                                           ; $4dff: $1f
    db $10                                        ; $4e00: $10
    rra                                           ; $4e01: $1f
    db $10                                        ; $4e02: $10
    rra                                           ; $4e03: $1f
    db $10                                        ; $4e04: $10
    rra                                           ; $4e05: $1f
    db $10                                        ; $4e06: $10
    rra                                           ; $4e07: $1f
    db $10                                        ; $4e08: $10
    rra                                           ; $4e09: $1f
    db $10                                        ; $4e0a: $10
    rra                                           ; $4e0b: $1f
    db $10                                        ; $4e0c: $10
    rra                                           ; $4e0d: $1f
    ld de, $291f                                  ; $4e0e: $11 $1f $29
    ccf                                           ; $4e11: $3f
    ld a, c                                       ; $4e12: $79
    ld a, a                                       ; $4e13: $7f
    ld b, e                                       ; $4e14: $43
    ld a, a                                       ; $4e15: $7f
    ld [bc], a                                    ; $4e16: $02
    ccf                                           ; $4e17: $3f
    ld [bc], a                                    ; $4e18: $02
    nop                                           ; $4e19: $00
    add l                                         ; $4e1a: $85
    inc b                                         ; $4e1b: $04
    ld b, $00                                     ; $4e1c: $06 $00
    ld b, $04                                     ; $4e1e: $06 $04
    dec d                                         ; $4e20: $15
    ld b, $04                                     ; $4e21: $06 $04
    rlca                                          ; $4e23: $07
    ld [bc], a                                    ; $4e24: $02
    nop                                           ; $4e25: $00
    rst $38                                       ; $4e26: $ff
    rrca                                          ; $4e27: $0f
    dec b                                         ; $4e28: $05
    ld hl, sp+$07                                 ; $4e29: $f8 $07
    ld a, [c]                                     ; $4e2b: $f2
    ld bc, $f8e3                                  ; $4e2c: $01 $e3 $f8
    db $e3                                        ; $4e2f: $e3
    nop                                           ; $4e30: $00
    ldh a, [$03]                                  ; $4e31: $f0 $03
    di                                            ; $4e33: $f3

jr_0e4_4e34:
    ld sp, hl                                     ; $4e34: $f9
    di                                            ; $4e35: $f3
    db $fc                                        ; $4e36: $fc
    ld [bc], a                                    ; $4e37: $02
    inc bc                                        ; $4e38: $03
    ld [bc], a                                    ; $4e39: $02
    rrca                                          ; $4e3a: $0f
    add l                                         ; $4e3b: $85
    jr @+$21                                      ; $4e3c: $18 $1f

    jr nc, jr_0e4_4e7f                            ; $4e3e: $30 $3f

    inc [hl]                                      ; $4e40: $34
    ld [bc], a                                    ; $4e41: $02
    ccf                                           ; $4e42: $3f
    sub l                                         ; $4e43: $95
    dec sp                                        ; $4e44: $3b
    ccf                                           ; $4e45: $3f
    scf                                           ; $4e46: $37
    rra                                           ; $4e47: $1f
    ld [de], a                                    ; $4e48: $12
    ccf                                           ; $4e49: $3f
    inc [hl]                                      ; $4e4a: $34
    ccf                                           ; $4e4b: $3f
    inc a                                         ; $4e4c: $3c
    ld e, a                                       ; $4e4d: $5f
    ld a, [hl]                                    ; $4e4e: $7e
    ld e, a                                       ; $4e4f: $5f
    ld a, a                                       ; $4e50: $7f
    ld c, c                                       ; $4e51: $49
    ld a, a                                       ; $4e52: $7f
    cp e                                          ; $4e53: $bb
    rst $38                                       ; $4e54: $ff
    adc [hl]                                      ; $4e55: $8e

jr_0e4_4e56:
    rst $38                                       ; $4e56: $ff
    adc [hl]                                      ; $4e57: $8e
    rst $38                                       ; $4e58: $ff
    ld [bc], a                                    ; $4e59: $02
    ldh [$9e], a                                  ; $4e5a: $e0 $9e
    jr c, jr_0e4_4e56                             ; $4e5c: $38 $f8

    inc e                                         ; $4e5e: $1c
    db $fc                                        ; $4e5f: $fc
    inc d                                         ; $4e60: $14
    db $fc                                        ; $4e61: $fc
    ld a, d                                       ; $4e62: $7a
    cp $ca                                        ; $4e63: $fe $ca
    cp $36                                        ; $4e65: $fe $36
    cp $fc                                        ; $4e67: $fe $fc
    xor h                                         ; $4e69: $ac
    db $fc                                        ; $4e6a: $fc
    ld c, h                                       ; $4e6b: $4c
    db $fc                                        ; $4e6c: $fc
    call z, $1cfc                                 ; $4e6d: $cc $fc $1c
    db $f4                                        ; $4e70: $f4
    ld a, h                                       ; $4e71: $7c
    ld a, [$ebfe]                                 ; $4e72: $fa $fe $eb
    rst $38                                       ; $4e75: $ff
    db $ed                                        ; $4e76: $ed
    rst $38                                       ; $4e77: $ff
    ld sp, hl                                     ; $4e78: $f9
    rst $38                                       ; $4e79: $ff
    ld [bc], a                                    ; $4e7a: $02
    inc b                                         ; $4e7b: $04
    adc h                                         ; $4e7c: $8c
    ld b, $02                                     ; $4e7d: $06 $02

Call_0e4_4e7f:
jr_0e4_4e7f:
    rlca                                          ; $4e7f: $07
    dec b                                         ; $4e80: $05
    rst $10                                       ; $4e81: $d7
    db $fd                                        ; $4e82: $fd
    sbc [hl]                                      ; $4e83: $9e
    cp $30                                        ; $4e84: $fe $30
    ldh a, [rNR41]                                ; $4e86: $f0 $20
    ldh [rSC], a                                  ; $4e88: $e0 $02
    ret nz                                        ; $4e8a: $c0

    ld [$0880], sp                                ; $4e8b: $08 $80 $08
    nop                                           ; $4e8e: $00
    sbc h                                         ; $4e8f: $9c
    ld a, [c]                                     ; $4e90: $f2
    rst $38                                       ; $4e91: $ff
    inc sp                                        ; $4e92: $33
    ccf                                           ; $4e93: $3f
    ld de, $101f                                  ; $4e94: $11 $1f $10
    rra                                           ; $4e97: $1f
    db $10                                        ; $4e98: $10
    rra                                           ; $4e99: $1f
    db $10                                        ; $4e9a: $10
    rra                                           ; $4e9b: $1f
    db $10                                        ; $4e9c: $10
    rra                                           ; $4e9d: $1f
    db $10                                        ; $4e9e: $10
    rra                                           ; $4e9f: $1f
    db $10                                        ; $4ea0: $10
    rra                                           ; $4ea1: $1f
    db $10                                        ; $4ea2: $10
    rra                                           ; $4ea3: $1f
    ld de, $291f                                  ; $4ea4: $11 $1f $29
    ccf                                           ; $4ea7: $3f
    ld a, c                                       ; $4ea8: $79
    ld a, a                                       ; $4ea9: $7f
    ld b, e                                       ; $4eaa: $43
    ld a, a                                       ; $4eab: $7f
    ld [bc], a                                    ; $4eac: $02
    ccf                                           ; $4ead: $3f
    ld [bc], a                                    ; $4eae: $02
    nop                                           ; $4eaf: $00
    ld [bc], a                                    ; $4eb0: $02
    ld b, $85                                     ; $4eb1: $06 $85
    ld [bc], a                                    ; $4eb3: $02
    ld b, $00                                     ; $4eb4: $06 $00
    ld b, $04                                     ; $4eb6: $06 $04
    inc de                                        ; $4eb8: $13
    ld b, $04                                     ; $4eb9: $06 $04
    rlca                                          ; $4ebb: $07
    ld [bc], a                                    ; $4ebc: $02
    nop                                           ; $4ebd: $00
    rst $38                                       ; $4ebe: $ff
    rrca                                          ; $4ebf: $0f
    dec b                                         ; $4ec0: $05
    ld hl, sp+$07                                 ; $4ec1: $f8 $07
    ld a, [c]                                     ; $4ec3: $f2
    ld bc, $f8e4                                  ; $4ec4: $01 $e4 $f8
    db $e4                                        ; $4ec7: $e4
    nop                                           ; $4ec8: $00
    ld a, [c]                                     ; $4ec9: $f2
    inc bc                                        ; $4eca: $03
    db $f4                                        ; $4ecb: $f4
    ld a, [$fbf4]                                 ; $4ecc: $fa $f4 $fb
    ld [bc], a                                    ; $4ecf: $02
    inc bc                                        ; $4ed0: $03
    adc d                                         ; $4ed1: $8a
    dec c                                         ; $4ed2: $0d
    rrca                                          ; $4ed3: $0f
    rla                                           ; $4ed4: $17
    rra                                           ; $4ed5: $1f
    ld a, $3b                                     ; $4ed6: $3e $3b
    ccf                                           ; $4ed8: $3f
    ld sp, $131e                                  ; $4ed9: $31 $1e $13
    ld [bc], a                                    ; $4edc: $02
    rra                                           ; $4edd: $1f
    sub d                                         ; $4ede: $92
    ccf                                           ; $4edf: $3f
    inc a                                         ; $4ee0: $3c
    ld e, a                                       ; $4ee1: $5f
    ld a, h                                       ; $4ee2: $7c
    ld e, a                                       ; $4ee3: $5f
    ld a, h                                       ; $4ee4: $7c
    ld c, a                                       ; $4ee5: $4f
    ld a, [hl]                                    ; $4ee6: $7e
    cp c                                          ; $4ee7: $b9
    rst $38                                       ; $4ee8: $ff
    sbc d                                         ; $4ee9: $9a
    rst $38                                       ; $4eea: $ff
    adc a                                         ; $4eeb: $8f
    rst $38                                       ; $4eec: $ff
    sbc l                                         ; $4eed: $9d
    rst $38                                       ; $4eee: $ff
    ld a, e                                       ; $4eef: $7b
    ld a, a                                       ; $4ef0: $7f
    ld [bc], a                                    ; $4ef1: $02
    ldh a, [rSC]                                  ; $4ef2: $f0 $02
    db $fc                                        ; $4ef4: $fc
    sbc h                                         ; $4ef5: $9c
    sbc [hl]                                      ; $4ef6: $9e
    cp $0a                                        ; $4ef7: $fe $0a
    cp $0e                                        ; $4ef9: $fe $0e
    cp $3a                                        ; $4efb: $fe $3a

jr_0e4_4efd:
    cp $e6                                        ; $4efd: $fe $e6
    cp $fc                                        ; $4eff: $fe $fc
    cp h                                          ; $4f01: $bc
    db $fc                                        ; $4f02: $fc
    ld c, h                                       ; $4f03: $4c
    db $fc                                        ; $4f04: $fc
    call z, Call_000_1cf4                         ; $4f05: $cc $f4 $1c
    or $fe                                        ; $4f08: $f6 $fe
    or $fe                                        ; $4f0a: $f6 $fe
    di                                            ; $4f0c: $f3
    rst $38                                       ; $4f0d: $ff
    ld a, [$7aff]                                 ; $4f0e: $fa $ff $7a
    rst $38                                       ; $4f11: $ff
    ld [bc], a                                    ; $4f12: $02
    ld b, $88                                     ; $4f13: $06 $88
    rlca                                          ; $4f15: $07
    dec b                                         ; $4f16: $05
    sbc a                                         ; $4f17: $9f
    db $fd                                        ; $4f18: $fd
    ld d, $f6                                     ; $4f19: $16 $f6
    jr nz, jr_0e4_4efd                            ; $4f1b: $20 $e0

    ld [bc], a                                    ; $4f1d: $02
    ret nz                                        ; $4f1e: $c0

    ld [$0880], sp                                ; $4f1f: $08 $80 $08
    nop                                           ; $4f22: $00
    inc b                                         ; $4f23: $04
    add b                                         ; $4f24: $80
    sbc d                                         ; $4f25: $9a
    dec hl                                        ; $4f26: $2b
    ccf                                           ; $4f27: $3f
    ld a, [hl+]                                   ; $4f28: $2a
    ccf                                           ; $4f29: $3f
    dec h                                         ; $4f2a: $25
    ccf                                           ; $4f2b: $3f
    ld h, $3f                                     ; $4f2c: $26 $3f
    inc hl                                        ; $4f2e: $23
    ccf                                           ; $4f2f: $3f
    ld hl, $213f                                  ; $4f30: $21 $3f $21
    ccf                                           ; $4f33: $3f
    ld hl, $213f                                  ; $4f34: $21 $3f $21
    ccf                                           ; $4f37: $3f
    inc hl                                        ; $4f38: $23
    ccf                                           ; $4f39: $3f
    ld d, e                                       ; $4f3a: $53
    ld a, a                                       ; $4f3b: $7f
    di                                            ; $4f3c: $f3
    rst $38                                       ; $4f3d: $ff
    add a                                         ; $4f3e: $87
    rst $38                                       ; $4f3f: $ff
    ld [bc], a                                    ; $4f40: $02
    ld a, a                                       ; $4f41: $7f
    inc b                                         ; $4f42: $04
    nop                                           ; $4f43: $00
    ld [bc], a                                    ; $4f44: $02
    ld bc, $0085                                  ; $4f45: $01 $85 $00
    ld bc, $0100                                  ; $4f48: $01 $00 $01
    nop                                           ; $4f4b: $00
    dec d                                         ; $4f4c: $15
    ld bc, $0004                                  ; $4f4d: $01 $04 $00
    rst $38                                       ; $4f50: $ff
    dec c                                         ; $4f51: $0d
    inc b                                         ; $4f52: $04
    ld hl, sp+$07                                 ; $4f53: $f8 $07
    ld a, [c]                                     ; $4f55: $f2
    ld bc, $f8e4                                  ; $4f56: $01 $e4 $f8
    db $e4                                        ; $4f59: $e4
    nop                                           ; $4f5a: $00
    db $f4                                        ; $4f5b: $f4
    ld a, [$01f4]                                 ; $4f5c: $fa $f4 $01
    ld [bc], a                                    ; $4f5f: $02
    inc bc                                        ; $4f60: $03
    add l                                         ; $4f61: $85
    dec c                                         ; $4f62: $0d
    rrca                                          ; $4f63: $0f
    rla                                           ; $4f64: $17
    rra                                           ; $4f65: $1f
    ld a, $02                                     ; $4f66: $3e $02
    ccf                                           ; $4f68: $3f
    sub a                                         ; $4f69: $97
    add hl, sp                                    ; $4f6a: $39
    rra                                           ; $4f6b: $1f
    add hl, de                                    ; $4f6c: $19
    rra                                           ; $4f6d: $1f
    rla                                           ; $4f6e: $17
    ccf                                           ; $4f6f: $3f
    ld a, $5f                                     ; $4f70: $3e $5f
    ld a, h                                       ; $4f72: $7c
    ld e, a                                       ; $4f73: $5f
    ld a, h                                       ; $4f74: $7c
    rst $08                                       ; $4f75: $cf
    cp $b9                                        ; $4f76: $fe $b9
    rst $38                                       ; $4f78: $ff
    sbc d                                         ; $4f79: $9a
    rst $38                                       ; $4f7a: $ff
    adc h                                         ; $4f7b: $8c
    rst $38                                       ; $4f7c: $ff
    ld a, h                                       ; $4f7d: $7c
    ld a, a                                       ; $4f7e: $7f
    jr @+$21                                      ; $4f7f: $18 $1f

    ld [bc], a                                    ; $4f81: $02
    ldh a, [rSC]                                  ; $4f82: $f0 $02
    db $fc                                        ; $4f84: $fc
    or [hl]                                       ; $4f85: $b6
    sbc [hl]                                      ; $4f86: $9e
    cp $0a                                        ; $4f87: $fe $0a
    cp $0e                                        ; $4f89: $fe $0e
    cp $3a                                        ; $4f8b: $fe $3a
    cp $e6                                        ; $4f8d: $fe $e6
    cp $fc                                        ; $4f8f: $fe $fc
    cp h                                          ; $4f91: $bc
    ld hl, sp+$48                                 ; $4f92: $f8 $48
    db $fc                                        ; $4f94: $fc
    call z, Call_000_1cf4                         ; $4f95: $cc $f4 $1c
    db $f4                                        ; $4f98: $f4
    db $fc                                        ; $4f99: $fc
    db $f4                                        ; $4f9a: $f4
    db $fc                                        ; $4f9b: $fc
    halt                                          ; $4f9c: $76
    cp $76                                        ; $4f9d: $fe $76
    cp $75                                        ; $4f9f: $fe $75
    rst $38                                       ; $4fa1: $ff
    ld hl, $213f                                  ; $4fa2: $21 $3f $21
    ccf                                           ; $4fa5: $3f
    ld hl, $273f                                  ; $4fa6: $21 $3f $27
    ccf                                           ; $4fa9: $3f
    inc h                                         ; $4faa: $24
    ccf                                           ; $4fab: $3f
    inc hl                                        ; $4fac: $23
    ccf                                           ; $4fad: $3f
    ld [hl+], a                                   ; $4fae: $22
    ccf                                           ; $4faf: $3f
    ld hl, $213f                                  ; $4fb0: $21 $3f $21
    ccf                                           ; $4fb3: $3f
    inc hl                                        ; $4fb4: $23
    ccf                                           ; $4fb5: $3f
    ld d, e                                       ; $4fb6: $53
    ld a, a                                       ; $4fb7: $7f
    di                                            ; $4fb8: $f3
    rst $38                                       ; $4fb9: $ff
    add a                                         ; $4fba: $87
    rst $38                                       ; $4fbb: $ff
    ld [bc], a                                    ; $4fbc: $02
    ld a, a                                       ; $4fbd: $7f
    inc b                                         ; $4fbe: $04
    nop                                           ; $4fbf: $00
    adc l                                         ; $4fc0: $8d
    ld h, [hl]                                    ; $4fc1: $66
    ld a, [hl]                                    ; $4fc2: $7e
    ld h, a                                       ; $4fc3: $67
    ld a, l                                       ; $4fc4: $7d
    ld d, a                                       ; $4fc5: $57
    ld a, a                                       ; $4fc6: $7f
    ld d, $7e                                     ; $4fc7: $16 $7e
    jr z, jr_0e4_5043                             ; $4fc9: $28 $78

    ld d, b                                       ; $4fcb: $50
    ld [hl], b                                    ; $4fcc: $70
    jr nz, @+$05                                  ; $4fcd: $20 $03

    ld h, b                                       ; $4fcf: $60
    ld [$0440], sp                                ; $4fd0: $08 $40 $04
    ld h, b                                       ; $4fd3: $60
    inc b                                         ; $4fd4: $04
    nop                                           ; $4fd5: $00
    rst $38                                       ; $4fd6: $ff
    dec c                                         ; $4fd7: $0d
    inc b                                         ; $4fd8: $04
    ld hl, sp+$07                                 ; $4fd9: $f8 $07
    ld a, [c]                                     ; $4fdb: $f2
    ld bc, $f8e4                                  ; $4fdc: $01 $e4 $f8
    db $e4                                        ; $4fdf: $e4
    rst $38                                       ; $4fe0: $ff
    db $f4                                        ; $4fe1: $f4
    ld a, [$fff4]                                 ; $4fe2: $fa $f4 $ff
    ld [bc], a                                    ; $4fe5: $02
    inc bc                                        ; $4fe6: $03
    sbc [hl]                                      ; $4fe7: $9e
    dec c                                         ; $4fe8: $0d
    rrca                                          ; $4fe9: $0f
    rla                                           ; $4fea: $17
    rra                                           ; $4feb: $1f
    inc a                                         ; $4fec: $3c
    ccf                                           ; $4fed: $3f
    ld a, $33                                     ; $4fee: $3e $33
    ld e, $13                                     ; $4ff0: $1e $13
    ccf                                           ; $4ff2: $3f
    cpl                                           ; $4ff3: $2f
    ld a, a                                       ; $4ff4: $7f
    ld a, [hl]                                    ; $4ff5: $7e
    cp a                                          ; $4ff6: $bf
    db $fc                                        ; $4ff7: $fc
    xor a                                         ; $4ff8: $af
    db $fc                                        ; $4ff9: $fc
    rst $18                                       ; $4ffa: $df
    cp $bb                                        ; $4ffb: $fe $bb
    rst $38                                       ; $4ffd: $ff
    sub [hl]                                      ; $4ffe: $96
    rst $38                                       ; $4fff: $ff
    sbc h                                         ; $5000: $9c
    rst $38                                       ; $5001: $ff
    ld a, b                                       ; $5002: $78
    ld a, a                                       ; $5003: $7f
    ld [$020f], sp                                ; $5004: $08 $0f $02
    ld a, b                                       ; $5007: $78
    ld [bc], a                                    ; $5008: $02
    ld a, [hl]                                    ; $5009: $7e
    adc c                                         ; $500a: $89
    rrca                                          ; $500b: $0f
    ld a, a                                       ; $500c: $7f
    dec b                                         ; $500d: $05
    ld a, a                                       ; $500e: $7f
    rrca                                          ; $500f: $0f
    ld a, a                                       ; $5010: $7f
    add hl, de                                    ; $5011: $19
    ld a, a                                       ; $5012: $7f
    ld [hl], d                                    ; $5013: $72
    ld [bc], a                                    ; $5014: $02
    ld a, [hl]                                    ; $5015: $7e
    xor e                                         ; $5016: $ab
    ld e, [hl]                                    ; $5017: $5e
    ld a, h                                       ; $5018: $7c
    inc h                                         ; $5019: $24
    ld a, h                                       ; $501a: $7c
    ld h, h                                       ; $501b: $64
    ld a, d                                       ; $501c: $7a
    ld c, $7a                                     ; $501d: $0e $7a
    ld a, [hl]                                    ; $501f: $7e
    ld a, d                                       ; $5020: $7a
    ld a, [hl]                                    ; $5021: $7e
    ld a, [hl-]                                   ; $5022: $3a
    ld a, [hl]                                    ; $5023: $7e
    ld a, [hl-]                                   ; $5024: $3a
    ld a, [hl]                                    ; $5025: $7e
    inc sp                                        ; $5026: $33
    ld a, a                                       ; $5027: $7f
    ld hl, $213f                                  ; $5028: $21 $3f $21
    ccf                                           ; $502b: $3f
    ld hl, $213f                                  ; $502c: $21 $3f $21
    ccf                                           ; $502f: $3f
    ld hl, $213f                                  ; $5030: $21 $3f $21
    ccf                                           ; $5033: $3f
    ld hl, $213f                                  ; $5034: $21 $3f $21
    ccf                                           ; $5037: $3f
    ld hl, $233f                                  ; $5038: $21 $3f $23
    ccf                                           ; $503b: $3f
    ld d, e                                       ; $503c: $53
    ld a, a                                       ; $503d: $7f
    di                                            ; $503e: $f3
    rst $38                                       ; $503f: $ff
    add a                                         ; $5040: $87
    rst $38                                       ; $5041: $ff
    ld [bc], a                                    ; $5042: $02

jr_0e4_5043:
    ld a, a                                       ; $5043: $7f
    inc b                                         ; $5044: $04
    nop                                           ; $5045: $00
    sub d                                         ; $5046: $92
    inc de                                        ; $5047: $13
    rra                                           ; $5048: $1f
    inc de                                        ; $5049: $13
    rra                                           ; $504a: $1f
    rla                                           ; $504b: $17
    rra                                           ; $504c: $1f
    rla                                           ; $504d: $17
    rra                                           ; $504e: $1f
    ld d, $1e                                     ; $504f: $16 $1e
    ld [de], a                                    ; $5051: $12
    ld e, $11                                     ; $5052: $1e $11
    rra                                           ; $5054: $1f
    ld [de], a                                    ; $5055: $12
    ld e, $1a                                     ; $5056: $1e $1a
    ld e, $02                                     ; $5058: $1e $02
    inc d                                         ; $505a: $14
    inc b                                         ; $505b: $04
    db $10                                        ; $505c: $10
    inc b                                         ; $505d: $04
    jr jr_0e4_5064                                ; $505e: $18 $04

    nop                                           ; $5060: $00
    rst $38                                       ; $5061: $ff
    dec c                                         ; $5062: $0d
    inc b                                         ; $5063: $04

jr_0e4_5064:
    ld hl, sp+$07                                 ; $5064: $f8 $07
    ld a, [c]                                     ; $5066: $f2
    ld bc, $f8e4                                  ; $5067: $01 $e4 $f8
    db $e4                                        ; $506a: $e4
    rst $38                                       ; $506b: $ff
    db $f4                                        ; $506c: $f4
    ld a, [$fff4]                                 ; $506d: $fa $f4 $ff
    ld [bc], a                                    ; $5070: $02
    rlca                                          ; $5071: $07
    sbc [hl]                                      ; $5072: $9e
    dec bc                                        ; $5073: $0b
    rrca                                          ; $5074: $0f
    ld d, $1f                                     ; $5075: $16 $1f
    inc e                                         ; $5077: $1c
    rra                                           ; $5078: $1f
    inc a                                         ; $5079: $3c
    scf                                           ; $507a: $37
    ld a, $23                                     ; $507b: $3e $23
    dec a                                         ; $507d: $3d
    daa                                           ; $507e: $27
    ccf                                           ; $507f: $3f
    ld l, $7f                                     ; $5080: $2e $7f
    ld a, h                                       ; $5082: $7c
    cp a                                          ; $5083: $bf
    db $fc                                        ; $5084: $fc
    xor a                                         ; $5085: $af
    cp $db                                        ; $5086: $fe $db
    rst $38                                       ; $5088: $ff
    or [hl]                                       ; $5089: $b6
    rst $38                                       ; $508a: $ff
    adc h                                         ; $508b: $8c
    rst $38                                       ; $508c: $ff
    ld a, h                                       ; $508d: $7c
    ld a, a                                       ; $508e: $7f
    ld [$020f], sp                                ; $508f: $08 $0f $02
    ld a, b                                       ; $5092: $78
    ld [bc], a                                    ; $5093: $02
    ld a, [hl]                                    ; $5094: $7e
    adc d                                         ; $5095: $8a
    dec b                                         ; $5096: $05
    ld a, a                                       ; $5097: $7f
    dec c                                         ; $5098: $0d
    ld a, a                                       ; $5099: $7f
    rrca                                          ; $509a: $0f
    ld a, a                                       ; $509b: $7f
    ld [hl-], a                                   ; $509c: $32
    ld a, [hl]                                    ; $509d: $7e
    ld l, d                                       ; $509e: $6a
    ld a, [hl]                                    ; $509f: $7e
    inc bc                                        ; $50a0: $03
    ld a, h                                       ; $50a1: $7c
    xor c                                         ; $50a2: $a9
    inc h                                         ; $50a3: $24
    ld a, h                                       ; $50a4: $7c
    ld h, h                                       ; $50a5: $64
    ld a, d                                       ; $50a6: $7a
    ld c, $7a                                     ; $50a7: $0e $7a
    ld a, [hl]                                    ; $50a9: $7e
    ld a, d                                       ; $50aa: $7a
    ld a, [hl]                                    ; $50ab: $7e
    ld a, [hl-]                                   ; $50ac: $3a
    ld a, [hl]                                    ; $50ad: $7e
    ld [hl-], a                                   ; $50ae: $32
    ld a, [hl]                                    ; $50af: $7e
    ld [hl-], a                                   ; $50b0: $32
    ld a, [hl]                                    ; $50b1: $7e
    ld hl, $213f                                  ; $50b2: $21 $3f $21
    ccf                                           ; $50b5: $3f
    ld hl, $213f                                  ; $50b6: $21 $3f $21
    ccf                                           ; $50b9: $3f
    ld hl, $213f                                  ; $50ba: $21 $3f $21
    ccf                                           ; $50bd: $3f
    ld hl, $213f                                  ; $50be: $21 $3f $21
    ccf                                           ; $50c1: $3f
    ld hl, $233f                                  ; $50c2: $21 $3f $23
    ccf                                           ; $50c5: $3f
    ld d, e                                       ; $50c6: $53
    ld a, a                                       ; $50c7: $7f
    di                                            ; $50c8: $f3
    rst $38                                       ; $50c9: $ff
    add a                                         ; $50ca: $87
    rst $38                                       ; $50cb: $ff
    ld [bc], a                                    ; $50cc: $02
    ld a, a                                       ; $50cd: $7f
    inc b                                         ; $50ce: $04
    nop                                           ; $50cf: $00
    sub b                                         ; $50d0: $90
    ld [de], a                                    ; $50d1: $12
    ld e, $12                                     ; $50d2: $1e $12
    ld e, $06                                     ; $50d4: $1e $06
    ld e, $06                                     ; $50d6: $1e $06
    ld e, $06                                     ; $50d8: $1e $06
    ld e, $01                                     ; $50da: $1e $01
    rra                                           ; $50dc: $1f
    dec d                                         ; $50dd: $15
    rra                                           ; $50de: $1f
    ld a, [de]                                    ; $50df: $1a
    ld e, $02                                     ; $50e0: $1e $02
    inc d                                         ; $50e2: $14
    ld b, $10                                     ; $50e3: $06 $10
    inc b                                         ; $50e5: $04
    jr jr_0e4_50ec                                ; $50e6: $18 $04

    nop                                           ; $50e8: $00
    rst $38                                       ; $50e9: $ff
    dec c                                         ; $50ea: $0d
    inc b                                         ; $50eb: $04

jr_0e4_50ec:
    ld hl, sp+$07                                 ; $50ec: $f8 $07
    ld a, [c]                                     ; $50ee: $f2
    ld bc, $f8e4                                  ; $50ef: $01 $e4 $f8
    db $e4                                        ; $50f2: $e4
    rst $38                                       ; $50f3: $ff
    db $f4                                        ; $50f4: $f4
    ld sp, hl                                     ; $50f5: $f9
    db $f4                                        ; $50f6: $f4
    rst $38                                       ; $50f7: $ff
    ld [bc], a                                    ; $50f8: $02
    rlca                                          ; $50f9: $07
    ld [bc], a                                    ; $50fa: $02
    rrca                                          ; $50fb: $0f
    sbc h                                         ; $50fc: $9c
    ld d, $1f                                     ; $50fd: $16 $1f
    jr jr_0e4_5120                                ; $50ff: $18 $1f

    jr nc, jr_0e4_5142                            ; $5101: $30 $3f

    jr c, jr_0e4_5134                             ; $5103: $38 $2f

    ld a, a                                       ; $5105: $7f
    ld b, a                                       ; $5106: $47
    ld a, a                                       ; $5107: $7f
    ld c, a                                       ; $5108: $4f
    ld a, a                                       ; $5109: $7f
    ld e, h                                       ; $510a: $5c
    ld a, a                                       ; $510b: $7f
    ld a, h                                       ; $510c: $7c
    cp a                                          ; $510d: $bf
    cp $ab                                        ; $510e: $fe $ab
    rst $38                                       ; $5110: $ff
    sbc $ff                                       ; $5111: $de $ff
    cp h                                          ; $5113: $bc
    rst $38                                       ; $5114: $ff
    adc h                                         ; $5115: $8c
    rst $38                                       ; $5116: $ff
    sbc b                                         ; $5117: $98
    rst $38                                       ; $5118: $ff
    ld [bc], a                                    ; $5119: $02
    ld a, b                                       ; $511a: $78
    ld [bc], a                                    ; $511b: $02
    ld a, [hl]                                    ; $511c: $7e
    adc c                                         ; $511d: $89
    dec bc                                        ; $511e: $0b
    ld a, a                                       ; $511f: $7f

jr_0e4_5120:
    dec c                                         ; $5120: $0d
    ld a, a                                       ; $5121: $7f
    ld a, [de]                                    ; $5122: $1a
    ld a, [hl]                                    ; $5123: $7e
    ld h, d                                       ; $5124: $62
    ld a, [hl]                                    ; $5125: $7e
    inc [hl]                                      ; $5126: $34
    inc b                                         ; $5127: $04
    ld a, h                                       ; $5128: $7c
    xor c                                         ; $5129: $a9
    inc d                                         ; $512a: $14
    ld a, h                                       ; $512b: $7c
    ld [hl], h                                    ; $512c: $74
    ld a, d                                       ; $512d: $7a
    ld c, $7a                                     ; $512e: $0e $7a
    ld a, [hl]                                    ; $5130: $7e
    ld a, d                                       ; $5131: $7a
    ld a, [hl]                                    ; $5132: $7e
    ld a, [hl-]                                   ; $5133: $3a

jr_0e4_5134:
    ld a, [hl]                                    ; $5134: $7e
    add hl, sp                                    ; $5135: $39
    ld a, a                                       ; $5136: $7f
    ld sp, $d07f                                  ; $5137: $31 $7f $d0
    rst $18                                       ; $513a: $df
    db $10                                        ; $513b: $10
    rra                                           ; $513c: $1f
    db $10                                        ; $513d: $10
    rra                                           ; $513e: $1f
    db $10                                        ; $513f: $10
    rra                                           ; $5140: $1f
    db $10                                        ; $5141: $10

jr_0e4_5142:
    rra                                           ; $5142: $1f
    db $10                                        ; $5143: $10
    rra                                           ; $5144: $1f
    db $10                                        ; $5145: $10
    rra                                           ; $5146: $1f
    db $10                                        ; $5147: $10
    rra                                           ; $5148: $1f
    db $10                                        ; $5149: $10
    rra                                           ; $514a: $1f
    ld de, $291f                                  ; $514b: $11 $1f $29
    ccf                                           ; $514e: $3f
    ld a, c                                       ; $514f: $79
    ld a, a                                       ; $5150: $7f
    ld b, e                                       ; $5151: $43
    ld a, a                                       ; $5152: $7f
    ld [bc], a                                    ; $5153: $02
    ccf                                           ; $5154: $3f
    inc b                                         ; $5155: $04
    nop                                           ; $5156: $00
    sub b                                         ; $5157: $90
    ld [hl-], a                                   ; $5158: $32
    ld a, $32                                     ; $5159: $3e $32
    ld a, $32                                     ; $515b: $3e $32
    ld a, $22                                     ; $515d: $3e $22
    ld a, $22                                     ; $515f: $3e $22
    ld a, $32                                     ; $5161: $3e $32
    ld a, $31                                     ; $5163: $3e $31
    ccf                                           ; $5165: $3f
    add hl, sp                                    ; $5166: $39
    ccf                                           ; $5167: $3f
    ld [bc], a                                    ; $5168: $02
    ld [hl], $06                                  ; $5169: $36 $06
    jr nc, jr_0e4_5171                            ; $516b: $30 $04

    jr c, jr_0e4_5173                             ; $516d: $38 $04

    nop                                           ; $516f: $00
    rst $38                                       ; $5170: $ff

jr_0e4_5171:
    dec c                                         ; $5171: $0d
    inc b                                         ; $5172: $04

jr_0e4_5173:
    ld hl, sp+$07                                 ; $5173: $f8 $07
    ld a, [c]                                     ; $5175: $f2
    ld bc, $f8e4                                  ; $5176: $01 $e4 $f8
    db $e4                                        ; $5179: $e4
    rst $38                                       ; $517a: $ff
    db $f4                                        ; $517b: $f4
    ld sp, hl                                     ; $517c: $f9
    db $f4                                        ; $517d: $f4
    rst $38                                       ; $517e: $ff
    ld [bc], a                                    ; $517f: $02
    rlca                                          ; $5180: $07
    sub d                                         ; $5181: $92
    inc c                                         ; $5182: $0c
    rrca                                          ; $5183: $0f
    rla                                           ; $5184: $17
    rra                                           ; $5185: $1f
    inc l                                         ; $5186: $2c
    ccf                                           ; $5187: $3f
    jr nc, jr_0e4_51c9                            ; $5188: $30 $3f

    jr nc, jr_0e4_51cb                            ; $518a: $30 $3f

    ld a, e                                       ; $518c: $7b
    ld c, a                                       ; $518d: $4f
    ld a, [hl]                                    ; $518e: $7e
    ld c, a                                       ; $518f: $4f
    ld a, a                                       ; $5190: $7f
    ld e, a                                       ; $5191: $5f
    rst $38                                       ; $5192: $ff
    db $fc                                        ; $5193: $fc
    ld [bc], a                                    ; $5194: $02
    rst $38                                       ; $5195: $ff
    adc d                                         ; $5196: $8a
    xor e                                         ; $5197: $ab
    rst $38                                       ; $5198: $ff
    sbc $ff                                       ; $5199: $de $ff
    cp h                                          ; $519b: $bc
    rst $38                                       ; $519c: $ff
    adc h                                         ; $519d: $8c
    rst $38                                       ; $519e: $ff
    sbc b                                         ; $519f: $98
    rst $38                                       ; $51a0: $ff
    ld [bc], a                                    ; $51a1: $02
    ld [hl], b                                    ; $51a2: $70
    ld [bc], a                                    ; $51a3: $02
    ld a, h                                       ; $51a4: $7c
    adc c                                         ; $51a5: $89
    ld a, [de]                                    ; $51a6: $1a
    ld a, [hl]                                    ; $51a7: $7e
    ld c, $7e                                     ; $51a8: $0e $7e
    ld a, [de]                                    ; $51aa: $1a
    ld a, [hl]                                    ; $51ab: $7e
    halt                                          ; $51ac: $76
    ld a, [hl]                                    ; $51ad: $7e
    ld b, h                                       ; $51ae: $44
    inc b                                         ; $51af: $04
    ld a, h                                       ; $51b0: $7c
    xor c                                         ; $51b1: $a9
    inc d                                         ; $51b2: $14
    ld a, h                                       ; $51b3: $7c
    inc [hl]                                      ; $51b4: $34
    ld a, h                                       ; $51b5: $7c
    inc c                                         ; $51b6: $0c
    ld a, d                                       ; $51b7: $7a
    ld a, [hl]                                    ; $51b8: $7e
    ld a, d                                       ; $51b9: $7a
    ld a, [hl]                                    ; $51ba: $7e
    ld a, [hl-]                                   ; $51bb: $3a
    ld a, [hl]                                    ; $51bc: $7e
    ld a, [hl-]                                   ; $51bd: $3a
    ld a, [hl]                                    ; $51be: $7e
    add hl, sp                                    ; $51bf: $39
    ld a, a                                       ; $51c0: $7f
    ldh a, [rIE]                                  ; $51c1: $f0 $ff
    db $10                                        ; $51c3: $10
    rra                                           ; $51c4: $1f
    db $10                                        ; $51c5: $10
    rra                                           ; $51c6: $1f
    db $10                                        ; $51c7: $10
    rra                                           ; $51c8: $1f

jr_0e4_51c9:
    db $10                                        ; $51c9: $10
    rra                                           ; $51ca: $1f

jr_0e4_51cb:
    db $10                                        ; $51cb: $10
    rra                                           ; $51cc: $1f
    db $10                                        ; $51cd: $10
    rra                                           ; $51ce: $1f
    db $10                                        ; $51cf: $10
    rra                                           ; $51d0: $1f
    db $10                                        ; $51d1: $10
    rra                                           ; $51d2: $1f
    ld de, $291f                                  ; $51d3: $11 $1f $29
    ccf                                           ; $51d6: $3f
    ld a, c                                       ; $51d7: $79
    ld a, a                                       ; $51d8: $7f
    ld b, e                                       ; $51d9: $43
    ld a, a                                       ; $51da: $7f
    ld [bc], a                                    ; $51db: $02
    ccf                                           ; $51dc: $3f
    inc b                                         ; $51dd: $04
    nop                                           ; $51de: $00
    adc [hl]                                      ; $51df: $8e
    ld sp, $313f                                  ; $51e0: $31 $3f $31
    ccf                                           ; $51e3: $3f
    ld sp, $323f                                  ; $51e4: $31 $3f $32
    ld a, $32                                     ; $51e7: $3e $32
    ld a, $32                                     ; $51e9: $3e $32
    ld a, $31                                     ; $51eb: $3e $31
    ccf                                           ; $51ed: $3f
    ld [bc], a                                    ; $51ee: $02
    ld a, $08                                     ; $51ef: $3e $08
    jr nc, jr_0e4_51f7                            ; $51f1: $30 $04

    jr c, jr_0e4_51f9                             ; $51f3: $38 $04

    nop                                           ; $51f5: $00
    rst $38                                       ; $51f6: $ff

jr_0e4_51f7:
    dec c                                         ; $51f7: $0d
    inc b                                         ; $51f8: $04

jr_0e4_51f9:
    ld hl, sp+$07                                 ; $51f9: $f8 $07
    ld a, [c]                                     ; $51fb: $f2
    ld bc, $f8e4                                  ; $51fc: $01 $e4 $f8
    db $e4                                        ; $51ff: $e4
    cp $f4                                        ; $5200: $fe $f4
    ld hl, sp-$0c                                 ; $5202: $f8 $f4
    cp $02                                        ; $5204: $fe $02
    rlca                                          ; $5206: $07
    sub d                                         ; $5207: $92
    ld c, $0f                                     ; $5208: $0e $0f
    dec e                                         ; $520a: $1d
    rra                                           ; $520b: $1f
    ld a, [hl+]                                   ; $520c: $2a
    ccf                                           ; $520d: $3f
    inc l                                         ; $520e: $2c
    ccf                                           ; $520f: $3f
    jr c, jr_0e4_5251                             ; $5210: $38 $3f

    ld sp, $7a3f                                  ; $5212: $31 $3f $7a
    ld c, a                                       ; $5215: $4f
    ld a, a                                       ; $5216: $7f
    ld c, a                                       ; $5217: $4f
    rst $38                                       ; $5218: $ff
    adc $02                                       ; $5219: $ce $02
    rst $38                                       ; $521b: $ff
    adc d                                         ; $521c: $8a
    cp e                                          ; $521d: $bb
    rst $38                                       ; $521e: $ff
    sbc [hl]                                      ; $521f: $9e
    rst $38                                       ; $5220: $ff
    db $fc                                        ; $5221: $fc
    rst $38                                       ; $5222: $ff
    adc h                                         ; $5223: $8c
    rst $38                                       ; $5224: $ff
    adc b                                         ; $5225: $88
    rst $38                                       ; $5226: $ff
    ld [bc], a                                    ; $5227: $02
    jr nc, jr_0e4_522c                            ; $5228: $30 $02

    ld a, $92                                     ; $522a: $3e $92

jr_0e4_522c:
    dec l                                         ; $522c: $2d
    ccf                                           ; $522d: $3f
    rlca                                          ; $522e: $07
    ccf                                           ; $522f: $3f
    dec c                                         ; $5230: $0d
    ccf                                           ; $5231: $3f
    ld a, [de]                                    ; $5232: $1a
    ld a, $36                                     ; $5233: $3e $36
    ld a, $1f                                     ; $5235: $3e $1f
    dec a                                         ; $5237: $3d
    ld a, $32                                     ; $5238: $3e $32
    ld a, $0e                                     ; $523a: $3e $0e
    ld a, $06                                     ; $523c: $3e $06
    ld [bc], a                                    ; $523e: $02
    ld a, $a2                                     ; $523f: $3e $a2
    dec a                                         ; $5241: $3d
    ccf                                           ; $5242: $3f
    dec e                                         ; $5243: $1d
    ccf                                           ; $5244: $3f
    dec e                                         ; $5245: $1d

jr_0e4_5246:
    ccf                                           ; $5246: $3f
    add hl, de                                    ; $5247: $19
    ccf                                           ; $5248: $3f
    ld hl, sp-$01                                 ; $5249: $f8 $ff
    ld c, b                                       ; $524b: $48
    ld c, a                                       ; $524c: $4f
    ld [$080f], sp                                ; $524d: $08 $0f $08
    rrca                                          ; $5250: $0f

jr_0e4_5251:
    ld [$080f], sp                                ; $5251: $08 $0f $08
    rrca                                          ; $5254: $0f
    ld [$080f], sp                                ; $5255: $08 $0f $08
    rrca                                          ; $5258: $0f
    ld [$080f], sp                                ; $5259: $08 $0f $08
    rrca                                          ; $525c: $0f
    inc d                                         ; $525d: $14
    rra                                           ; $525e: $1f
    inc a                                         ; $525f: $3c
    ccf                                           ; $5260: $3f
    ld hl, $023f                                  ; $5261: $21 $3f $02
    rra                                           ; $5264: $1f
    inc b                                         ; $5265: $04
    nop                                           ; $5266: $00
    sub c                                         ; $5267: $91
    add hl, de                                    ; $5268: $19
    ccf                                           ; $5269: $3f
    add hl, de                                    ; $526a: $19
    ccf                                           ; $526b: $3f
    add hl, de                                    ; $526c: $19
    ccf                                           ; $526d: $3f
    add hl, de                                    ; $526e: $19
    ccf                                           ; $526f: $3f
    add hl, de                                    ; $5270: $19
    ccf                                           ; $5271: $3f
    dec e                                         ; $5272: $1d
    ccf                                           ; $5273: $3f
    ld e, $3e                                     ; $5274: $1e $3e
    inc e                                         ; $5276: $1c
    inc a                                         ; $5277: $3c
    jr jr_0e4_5281                                ; $5278: $18 $07

    jr c, jr_0e4_5280                             ; $527a: $38 $04

    inc a                                         ; $527c: $3c
    inc b                                         ; $527d: $04
    nop                                           ; $527e: $00
    rst $38                                       ; $527f: $ff

jr_0e4_5280:
    dec c                                         ; $5280: $0d

jr_0e4_5281:
    inc b                                         ; $5281: $04
    ld hl, sp+$07                                 ; $5282: $f8 $07
    ld a, [c]                                     ; $5284: $f2
    ld bc, $f8e4                                  ; $5285: $01 $e4 $f8
    db $e4                                        ; $5288: $e4
    cp $f4                                        ; $5289: $fe $f4
    ld hl, sp-$0c                                 ; $528b: $f8 $f4
    cp $02                                        ; $528d: $fe $02
    rlca                                          ; $528f: $07
    sbc [hl]                                      ; $5290: $9e
    dec bc                                        ; $5291: $0b
    rrca                                          ; $5292: $0f
    inc d                                         ; $5293: $14
    rra                                           ; $5294: $1f
    add hl, de                                    ; $5295: $19
    rra                                           ; $5296: $1f
    dec hl                                        ; $5297: $2b
    ccf                                           ; $5298: $3f
    ld l, $3f                                     ; $5299: $2e $3f
    inc a                                         ; $529b: $3c
    ccf                                           ; $529c: $3f
    ld [hl], b                                    ; $529d: $70
    ld a, a                                       ; $529e: $7f
    ld h, e                                       ; $529f: $63
    ld a, a                                       ; $52a0: $7f
    rst $38                                       ; $52a1: $ff
    rst $08                                       ; $52a2: $cf
    rst $38                                       ; $52a3: $ff
    rst $08                                       ; $52a4: $cf
    ei                                            ; $52a5: $fb
    rst $38                                       ; $52a6: $ff
    cp d                                          ; $52a7: $ba
    rst $38                                       ; $52a8: $ff
    sbc h                                         ; $52a9: $9c
    rst $38                                       ; $52aa: $ff
    db $ec                                        ; $52ab: $ec
    rst $38                                       ; $52ac: $ff
    adc h                                         ; $52ad: $8c
    rst $38                                       ; $52ae: $ff
    ld [bc], a                                    ; $52af: $02
    jr c, jr_0e4_5246                             ; $52b0: $38 $94

    ld h, $3e                                     ; $52b2: $26 $3e
    dec a                                         ; $52b4: $3d
    ccf                                           ; $52b5: $3f
    dec l                                         ; $52b6: $2d
    ccf                                           ; $52b7: $3f
    ld c, $3e                                     ; $52b8: $0e $3e
    ld a, [bc]                                    ; $52ba: $0a
    ld a, $1b                                     ; $52bb: $3e $1b

jr_0e4_52bd:
    ccf                                           ; $52bd: $3f
    rra                                           ; $52be: $1f
    dec a                                         ; $52bf: $3d
    ld a, $3a                                     ; $52c0: $3e $3a
    ld a, $2e                                     ; $52c2: $3e $2e
    inc a                                         ; $52c4: $3c
    inc b                                         ; $52c5: $04
    inc b                                         ; $52c6: $04
    ld a, $a0                                     ; $52c7: $3e $a0
    dec e                                         ; $52c9: $1d
    ccf                                           ; $52ca: $3f
    add hl, de                                    ; $52cb: $19
    ccf                                           ; $52cc: $3f
    add hl, de                                    ; $52cd: $19
    ccf                                           ; $52ce: $3f
    ret c                                         ; $52cf: $d8

    rst $38                                       ; $52d0: $ff
    ld l, b                                       ; $52d1: $68
    ld l, a                                       ; $52d2: $6f
    ld [$080f], sp                                ; $52d3: $08 $0f $08
    rrca                                          ; $52d6: $0f
    ld [$080f], sp                                ; $52d7: $08 $0f $08
    rrca                                          ; $52da: $0f
    ld [$080f], sp                                ; $52db: $08 $0f $08
    rrca                                          ; $52de: $0f
    ld [$080f], sp                                ; $52df: $08 $0f $08
    rrca                                          ; $52e2: $0f
    inc d                                         ; $52e3: $14
    rra                                           ; $52e4: $1f
    inc a                                         ; $52e5: $3c
    ccf                                           ; $52e6: $3f
    ld hl, $023f                                  ; $52e7: $21 $3f $02
    rra                                           ; $52ea: $1f
    inc b                                         ; $52eb: $04
    nop                                           ; $52ec: $00
    sub c                                         ; $52ed: $91
    add hl, de                                    ; $52ee: $19
    ccf                                           ; $52ef: $3f
    add hl, de                                    ; $52f0: $19
    ccf                                           ; $52f1: $3f
    add hl, de                                    ; $52f2: $19
    ccf                                           ; $52f3: $3f
    add hl, de                                    ; $52f4: $19
    ccf                                           ; $52f5: $3f
    ld e, $3e                                     ; $52f6: $1e $3e
    inc e                                         ; $52f8: $1c
    inc a                                         ; $52f9: $3c
    inc e                                         ; $52fa: $1c
    inc a                                         ; $52fb: $3c
    inc e                                         ; $52fc: $1c
    inc a                                         ; $52fd: $3c
    jr jr_0e4_5307                                ; $52fe: $18 $07

    jr c, jr_0e4_5306                             ; $5300: $38 $04

    inc a                                         ; $5302: $3c
    inc b                                         ; $5303: $04
    nop                                           ; $5304: $00
    rst $38                                       ; $5305: $ff

jr_0e4_5306:
    dec c                                         ; $5306: $0d

jr_0e4_5307:
    inc b                                         ; $5307: $04
    ld hl, sp+$07                                 ; $5308: $f8 $07
    ld a, [c]                                     ; $530a: $f2
    ld bc, $f8e4                                  ; $530b: $01 $e4 $f8
    db $e4                                        ; $530e: $e4
    cp $f4                                        ; $530f: $fe $f4
    ld hl, sp-$0c                                 ; $5311: $f8 $f4
    cp $02                                        ; $5313: $fe $02
    rlca                                          ; $5315: $07
    sbc [hl]                                      ; $5316: $9e
    inc e                                         ; $5317: $1c
    rra                                           ; $5318: $1f
    ld l, $3f                                     ; $5319: $2e $3f
    dec sp                                        ; $531b: $3b
    ccf                                           ; $531c: $3f
    ld d, d                                       ; $531d: $52
    ld a, a                                       ; $531e: $7f
    ld d, d                                       ; $531f: $52
    ld a, a                                       ; $5320: $7f
    ld [hl], h                                    ; $5321: $74
    ld a, a                                       ; $5322: $7f
    ld a, h                                       ; $5323: $7c
    ld a, a                                       ; $5324: $7f
    ld e, b                                       ; $5325: $58
    ld a, a                                       ; $5326: $7f
    ld d, c                                       ; $5327: $51
    ld a, a                                       ; $5328: $7f
    ld h, a                                       ; $5329: $67
    ld a, a                                       ; $532a: $7f
    rst $38                                       ; $532b: $ff
    rst $08                                       ; $532c: $cf
    ld a, [$baff]                                 ; $532d: $fa $ff $ba
    rst $38                                       ; $5330: $ff
    sbc [hl]                                      ; $5331: $9e
    rst $38                                       ; $5332: $ff
    db $ec                                        ; $5333: $ec
    rst $38                                       ; $5334: $ff
    ld [bc], a                                    ; $5335: $02
    jr c, jr_0e4_52bd                             ; $5336: $38 $85

    ld h, $3e                                     ; $5338: $26 $3e
    ld a, [hl-]                                   ; $533a: $3a
    ld a, $16                                     ; $533b: $3e $16
    ld [bc], a                                    ; $533d: $02
    ld a, $8d                                     ; $533e: $3e $8d
    ld a, [hl-]                                   ; $5340: $3a
    ld e, $36                                     ; $5341: $1e $36
    rra                                           ; $5343: $1f
    ld sp, $223e                                  ; $5344: $31 $3e $22
    ld a, $22                                     ; $5347: $3e $22
    inc a                                         ; $5349: $3c
    inc h                                         ; $534a: $24
    inc a                                         ; $534b: $3c
    inc e                                         ; $534c: $1c
    inc b                                         ; $534d: $04
    ld a, $a0                                     ; $534e: $3e $a0
    ld a, [de]                                    ; $5350: $1a
    ld a, $1a                                     ; $5351: $3e $1a
    ld a, $1a                                     ; $5353: $3e $1a
    ld a, $98                                     ; $5355: $3e $98
    rst $38                                       ; $5357: $ff
    ld l, b                                       ; $5358: $68
    ld l, a                                       ; $5359: $6f
    ld [$080f], sp                                ; $535a: $08 $0f $08
    rrca                                          ; $535d: $0f
    ld [$080f], sp                                ; $535e: $08 $0f $08
    rrca                                          ; $5361: $0f
    ld [$080f], sp                                ; $5362: $08 $0f $08
    rrca                                          ; $5365: $0f
    ld [$080f], sp                                ; $5366: $08 $0f $08
    rrca                                          ; $5369: $0f
    inc d                                         ; $536a: $14
    rra                                           ; $536b: $1f
    inc a                                         ; $536c: $3c
    ccf                                           ; $536d: $3f
    ld hl, $023f                                  ; $536e: $21 $3f $02
    rra                                           ; $5371: $1f
    inc b                                         ; $5372: $04
    nop                                           ; $5373: $00
    sub c                                         ; $5374: $91
    add hl, de                                    ; $5375: $19
    ccf                                           ; $5376: $3f
    add hl, de                                    ; $5377: $19
    ccf                                           ; $5378: $3f
    ld e, $3e                                     ; $5379: $1e $3e
    inc e                                         ; $537b: $1c
    inc a                                         ; $537c: $3c
    inc e                                         ; $537d: $1c
    inc a                                         ; $537e: $3c
    inc e                                         ; $537f: $1c
    inc a                                         ; $5380: $3c
    inc e                                         ; $5381: $1c
    inc a                                         ; $5382: $3c
    inc e                                         ; $5383: $1c
    inc a                                         ; $5384: $3c
    jr jr_0e4_538e                                ; $5385: $18 $07

    jr c, jr_0e4_538d                             ; $5387: $38 $04

    inc a                                         ; $5389: $3c
    inc b                                         ; $538a: $04
    nop                                           ; $538b: $00
    rst $38                                       ; $538c: $ff

jr_0e4_538d:
    dec c                                         ; $538d: $0d

jr_0e4_538e:
    inc b                                         ; $538e: $04
    ld hl, sp+$07                                 ; $538f: $f8 $07
    ld a, [c]                                     ; $5391: $f2
    ld bc, $f8e4                                  ; $5392: $01 $e4 $f8
    db $e4                                        ; $5395: $e4
    cp $f4                                        ; $5396: $fe $f4
    ld hl, sp-$0c                                 ; $5398: $f8 $f4
    db $fd                                        ; $539a: $fd
    ld [bc], a                                    ; $539b: $02
    inc bc                                        ; $539c: $03
    ld [bc], a                                    ; $539d: $02
    rra                                           ; $539e: $1f
    sbc h                                         ; $539f: $9c
    jr z, jr_0e4_53e1                             ; $53a0: $28 $3f

    ld e, l                                       ; $53a2: $5d
    ld a, a                                       ; $53a3: $7f
    ld e, [hl]                                    ; $53a4: $5e
    ld a, a                                       ; $53a5: $7f
    di                                            ; $53a6: $f3
    rst $38                                       ; $53a7: $ff
    and d                                         ; $53a8: $a2
    rst $38                                       ; $53a9: $ff
    db $e4                                        ; $53aa: $e4
    rst $38                                       ; $53ab: $ff
    or h                                          ; $53ac: $b4
    rst $38                                       ; $53ad: $ff
    cp c                                          ; $53ae: $b9
    rst $38                                       ; $53af: $ff
    ld e, c                                       ; $53b0: $59
    ld a, a                                       ; $53b1: $7f
    ld d, e                                       ; $53b2: $53
    ld a, a                                       ; $53b3: $7f
    and $ff                                       ; $53b4: $e6 $ff
    cp $df                                        ; $53b6: $fe $df
    sbc [hl]                                      ; $53b8: $9e
    rst $38                                       ; $53b9: $ff
    db $ec                                        ; $53ba: $ec
    rst $38                                       ; $53bb: $ff
    ld [bc], a                                    ; $53bc: $02
    jr c, @-$6e                                   ; $53bd: $38 $90

    inc c                                         ; $53bf: $0c
    inc a                                         ; $53c0: $3c
    ld l, $3a                                     ; $53c1: $2e $3a
    ld a, $32                                     ; $53c3: $3e $32
    ld a, $36                                     ; $53c5: $3e $36
    rra                                           ; $53c7: $1f
    ld sp, $323e                                  ; $53c8: $31 $3e $32
    ld a, $32                                     ; $53cb: $3e $32
    inc a                                         ; $53cd: $3c
    inc h                                         ; $53ce: $24
    ld b, $3c                                     ; $53cf: $06 $3c
    and d                                         ; $53d1: $a2
    ld a, [hl-]                                   ; $53d2: $3a
    ld a, $1a                                     ; $53d3: $3e $1a
    ld a, $1a                                     ; $53d5: $3e $1a
    ld a, $1a                                     ; $53d7: $3e $1a
    ld a, $9c                                     ; $53d9: $3e $9c
    rst $38                                       ; $53db: $ff
    ld a, b                                       ; $53dc: $78
    ld a, a                                       ; $53dd: $7f
    ld [$080f], sp                                ; $53de: $08 $0f $08

jr_0e4_53e1:
    rrca                                          ; $53e1: $0f
    ld [$080f], sp                                ; $53e2: $08 $0f $08
    rrca                                          ; $53e5: $0f
    ld [$080f], sp                                ; $53e6: $08 $0f $08
    rrca                                          ; $53e9: $0f
    ld [$080f], sp                                ; $53ea: $08 $0f $08
    rrca                                          ; $53ed: $0f
    inc d                                         ; $53ee: $14
    rra                                           ; $53ef: $1f
    inc a                                         ; $53f0: $3c
    ccf                                           ; $53f1: $3f
    ld hl, $023f                                  ; $53f2: $21 $3f $02
    rra                                           ; $53f5: $1f
    inc b                                         ; $53f6: $04
    nop                                           ; $53f7: $00
    sub c                                         ; $53f8: $91
    rrca                                          ; $53f9: $0f
    rra                                           ; $53fa: $1f
    ld c, $1e                                     ; $53fb: $0e $1e
    ld c, $1e                                     ; $53fd: $0e $1e
    ld c, $1e                                     ; $53ff: $0e $1e
    ld c, $1e                                     ; $5401: $0e $1e
    ld c, $1e                                     ; $5403: $0e $1e
    ld c, $1e                                     ; $5405: $0e $1e
    inc c                                         ; $5407: $0c
    inc e                                         ; $5408: $1c
    inc c                                         ; $5409: $0c
    rlca                                          ; $540a: $07
    inc e                                         ; $540b: $1c
    inc b                                         ; $540c: $04
    ld e, $04                                     ; $540d: $1e $04
    nop                                           ; $540f: $00
    rst $38                                       ; $5410: $ff
    dec c                                         ; $5411: $0d
    inc b                                         ; $5412: $04
    ld hl, sp+$07                                 ; $5413: $f8 $07
    ld a, [c]                                     ; $5415: $f2
    ld bc, $f7e5                                  ; $5416: $01 $e5 $f7
    db $e4                                        ; $5419: $e4
    cp $f4                                        ; $541a: $fe $f4
    ld sp, hl                                     ; $541c: $f9
    db $f4                                        ; $541d: $f4
    db $fc                                        ; $541e: $fc
    ld [bc], a                                    ; $541f: $02
    ld bc, $069e                                  ; $5420: $01 $9e $06
    rlca                                          ; $5423: $07
    ld c, $0f                                     ; $5424: $0e $0f
    inc sp                                        ; $5426: $33
    ccf                                           ; $5427: $3f
    ld c, h                                       ; $5428: $4c
    ld a, a                                       ; $5429: $7f
    ld e, [hl]                                    ; $542a: $5e
    ld a, a                                       ; $542b: $7f
    or e                                          ; $542c: $b3
    rst $38                                       ; $542d: $ff
    pop hl                                        ; $542e: $e1
    rst $38                                       ; $542f: $ff
    and e                                         ; $5430: $a3
    rst $38                                       ; $5431: $ff
    and h                                         ; $5432: $a4
    rst $38                                       ; $5433: $ff
    ld a, b                                       ; $5434: $78
    ld a, a                                       ; $5435: $7f
    ld d, c                                       ; $5436: $51
    ld a, a                                       ; $5437: $7f
    dec sp                                        ; $5438: $3b
    ccf                                           ; $5439: $3f
    ld a, a                                       ; $543a: $7f
    ld [hl], a                                    ; $543b: $77
    ld e, d                                       ; $543c: $5a
    ld a, a                                       ; $543d: $7f
    ld h, [hl]                                    ; $543e: $66
    ld a, a                                       ; $543f: $7f
    ld [bc], a                                    ; $5440: $02
    ld a, b                                       ; $5441: $78
    cp b                                          ; $5442: $b8
    ld a, h                                       ; $5443: $7c
    inc d                                         ; $5444: $14
    ld a, [hl]                                    ; $5445: $7e
    ld c, d                                       ; $5446: $4a
    ld e, [hl]                                    ; $5447: $5e
    ld h, d                                       ; $5448: $62
    ld a, [hl]                                    ; $5449: $7e
    ld b, [hl]                                    ; $544a: $46
    ccf                                           ; $544b: $3f
    ld h, c                                       ; $544c: $61
    ld a, $62                                     ; $544d: $3e $62
    ld a, $62                                     ; $544f: $3e $62
    ld a, h                                       ; $5451: $7c
    ld h, h                                       ; $5452: $64
    inc a                                         ; $5453: $3c
    ld a, h                                       ; $5454: $7c
    inc a                                         ; $5455: $3c
    ld a, h                                       ; $5456: $7c
    ld a, d                                       ; $5457: $7a
    ld a, [hl]                                    ; $5458: $7e
    ld a, d                                       ; $5459: $7a
    ld a, [hl]                                    ; $545a: $7e
    inc e                                         ; $545b: $1c
    ld a, h                                       ; $545c: $7c
    inc c                                         ; $545d: $0c
    ld a, h                                       ; $545e: $7c
    inc c                                         ; $545f: $0c
    ld a, h                                       ; $5460: $7c
    nop                                           ; $5461: $00
    inc bc                                        ; $5462: $03
    ldh a, [rIE]                                  ; $5463: $f0 $ff
    jr nc, @+$41                                  ; $5465: $30 $3f

    db $10                                        ; $5467: $10
    rra                                           ; $5468: $1f
    db $10                                        ; $5469: $10
    rra                                           ; $546a: $1f
    db $10                                        ; $546b: $10
    rra                                           ; $546c: $1f
    db $10                                        ; $546d: $10
    rra                                           ; $546e: $1f
    db $10                                        ; $546f: $10
    rra                                           ; $5470: $1f
    db $10                                        ; $5471: $10
    rra                                           ; $5472: $1f
    db $10                                        ; $5473: $10
    rra                                           ; $5474: $1f
    add hl, hl                                    ; $5475: $29
    ccf                                           ; $5476: $3f
    ld a, c                                       ; $5477: $79
    ld a, a                                       ; $5478: $7f
    ld b, e                                       ; $5479: $43
    ld a, a                                       ; $547a: $7f
    ld [bc], a                                    ; $547b: $02
    ccf                                           ; $547c: $3f
    inc b                                         ; $547d: $04
    nop                                           ; $547e: $00
    adc a                                         ; $547f: $8f
    inc bc                                        ; $5480: $03
    rlca                                          ; $5481: $07
    inc bc                                        ; $5482: $03
    rlca                                          ; $5483: $07
    inc bc                                        ; $5484: $03
    rlca                                          ; $5485: $07
    inc bc                                        ; $5486: $03
    rlca                                          ; $5487: $07
    inc bc                                        ; $5488: $03
    rlca                                          ; $5489: $07
    inc bc                                        ; $548a: $03
    rlca                                          ; $548b: $07
    inc bc                                        ; $548c: $03
    rlca                                          ; $548d: $07
    ld [bc], a                                    ; $548e: $02
    add hl, bc                                    ; $548f: $09
    ld b, $04                                     ; $5490: $06 $04
    rlca                                          ; $5492: $07
    inc b                                         ; $5493: $04
    nop                                           ; $5494: $00
    rst $38                                       ; $5495: $ff
    dec c                                         ; $5496: $0d
    inc b                                         ; $5497: $04
    ld hl, sp+$07                                 ; $5498: $f8 $07
    ld a, [c]                                     ; $549a: $f2
    ld bc, $f6e6                                  ; $549b: $01 $e6 $f6
    db $e4                                        ; $549e: $e4
    cp $f4                                        ; $549f: $fe $f4
    ld a, [$fcf4]                                 ; $54a1: $fa $f4 $fc
    inc b                                         ; $54a4: $04
    ld bc, $0388                                  ; $54a5: $01 $88 $03
    ld [bc], a                                    ; $54a8: $02
    rlca                                          ; $54a9: $07
    inc b                                         ; $54aa: $04
    rlca                                          ; $54ab: $07
    ld b, $19                                     ; $54ac: $06 $19
    rra                                           ; $54ae: $1f
    ld [bc], a                                    ; $54af: $02
    ccf                                           ; $54b0: $3f
    adc d                                         ; $54b1: $8a
    ld h, h                                       ; $54b2: $64
    ld a, a                                       ; $54b3: $7f
    sub h                                         ; $54b4: $94
    rst $38                                       ; $54b5: $ff
    sbc [hl]                                      ; $54b6: $9e
    rst $38                                       ; $54b7: $ff
    di                                            ; $54b8: $f3
    rst $38                                       ; $54b9: $ff
    ld a, c                                       ; $54ba: $79
    ld a, a                                       ; $54bb: $7f
    ld [bc], a                                    ; $54bc: $02
    ccf                                           ; $54bd: $3f
    add [hl]                                      ; $54be: $86
    cpl                                           ; $54bf: $2f
    ccf                                           ; $54c0: $3f
    dec l                                         ; $54c1: $2d
    ccf                                           ; $54c2: $3f
    inc de                                        ; $54c3: $13
    rra                                           ; $54c4: $1f
    ld [bc], a                                    ; $54c5: $02
    ld a, b                                       ; $54c6: $78
    cp b                                          ; $54c7: $b8
    db $fc                                        ; $54c8: $fc
    sub h                                         ; $54c9: $94
    cp $0a                                        ; $54ca: $fe $0a
    sbc $62                                       ; $54cc: $de $62
    cp $c6                                        ; $54ce: $fe $c6
    rst $38                                       ; $54d0: $ff
    ld hl, $02fe                                  ; $54d1: $21 $fe $02
    sbc $22                                       ; $54d4: $de $22
    db $fc                                        ; $54d6: $fc
    add h                                         ; $54d7: $84
    ld a, b                                       ; $54d8: $78
    ret c                                         ; $54d9: $d8

    inc a                                         ; $54da: $3c
    db $fc                                        ; $54db: $fc
    ld a, h                                       ; $54dc: $7c
    db $fc                                        ; $54dd: $fc
    cp b                                          ; $54de: $b8
    ld hl, sp+$18                                 ; $54df: $f8 $18
    ld hl, sp-$48                                 ; $54e1: $f8 $b8
    ld hl, sp-$14                                 ; $54e3: $f8 $ec
    db $fc                                        ; $54e5: $fc
    ld [$000f], sp                                ; $54e6: $08 $0f $00
    rrca                                          ; $54e9: $0f
    ldh [rIE], a                                  ; $54ea: $e0 $ff
    and b                                         ; $54ec: $a0
    rst $38                                       ; $54ed: $ff
    ld h, b                                       ; $54ee: $60
    ld a, a                                       ; $54ef: $7f
    jr nz, jr_0e4_5531                            ; $54f0: $20 $3f

    jr nz, jr_0e4_5533                            ; $54f2: $20 $3f

    jr nz, jr_0e4_5535                            ; $54f4: $20 $3f

    jr nz, jr_0e4_5537                            ; $54f6: $20 $3f

    ld hl, $493f                                  ; $54f8: $21 $3f $49
    ld a, a                                       ; $54fb: $7f
    pop af                                        ; $54fc: $f1
    rst $38                                       ; $54fd: $ff
    add a                                         ; $54fe: $87
    rst $38                                       ; $54ff: $ff
    ld [bc], a                                    ; $5500: $02
    ld a, a                                       ; $5501: $7f
    inc b                                         ; $5502: $04
    nop                                           ; $5503: $00
    ld a, [bc]                                    ; $5504: $0a
    inc bc                                        ; $5505: $03
    ld c, $02                                     ; $5506: $0e $02
    inc b                                         ; $5508: $04
    inc bc                                        ; $5509: $03
    inc b                                         ; $550a: $04
    nop                                           ; $550b: $00
    rst $38                                       ; $550c: $ff
    dec c                                         ; $550d: $0d
    inc b                                         ; $550e: $04
    ld hl, sp+$07                                 ; $550f: $f8 $07
    ld a, [c]                                     ; $5511: $f2
    ld bc, $f6e6                                  ; $5512: $01 $e6 $f6
    db $e4                                        ; $5515: $e4
    cp $f4                                        ; $5516: $fe $f4
    push af                                       ; $5518: $f5
    db $f4                                        ; $5519: $f4
    db $fc                                        ; $551a: $fc
    inc b                                         ; $551b: $04
    ld bc, $0386                                  ; $551c: $01 $86 $03
    ld [bc], a                                    ; $551f: $02
    rlca                                          ; $5520: $07
    inc b                                         ; $5521: $04
    inc bc                                        ; $5522: $03
    ld [bc], a                                    ; $5523: $02
    ld [bc], a                                    ; $5524: $02
    ld bc, $0382                                  ; $5525: $01 $82 $03
    ld [bc], a                                    ; $5528: $02
    ld [bc], a                                    ; $5529: $02
    ld bc, $0302                                  ; $552a: $01 $02 $03
    adc [hl]                                      ; $552d: $8e
    ld [bc], a                                    ; $552e: $02
    inc bc                                        ; $552f: $03
    dec b                                         ; $5530: $05

jr_0e4_5531:
    rlca                                          ; $5531: $07
    inc e                                         ; $5532: $1c

jr_0e4_5533:
    rra                                           ; $5533: $1f
    ld l, a                                       ; $5534: $6f

jr_0e4_5535:
    ld a, a                                       ; $5535: $7f
    sub c                                         ; $5536: $91

jr_0e4_5537:
    rst $38                                       ; $5537: $ff
    db $10                                        ; $5538: $10
    rst $38                                       ; $5539: $ff
    ld e, c                                       ; $553a: $59
    rst $38                                       ; $553b: $ff
    ld [bc], a                                    ; $553c: $02
    ld a, b                                       ; $553d: $78
    sub d                                         ; $553e: $92
    db $fc                                        ; $553f: $fc
    sub h                                         ; $5540: $94
    cp $0a                                        ; $5541: $fe $0a
    sbc $62                                       ; $5543: $de $62
    cp $c6                                        ; $5545: $fe $c6
    rst $38                                       ; $5547: $ff
    ld hl, $02fe                                  ; $5548: $21 $fe $02
    sbc $22                                       ; $554b: $de $22
    db $fc                                        ; $554d: $fc
    inc b                                         ; $554e: $04
    ld hl, sp-$28                                 ; $554f: $f8 $d8
    ld [bc], a                                    ; $5551: $02
    ldh a, [$8a]                                  ; $5552: $f0 $8a
    sbc b                                         ; $5554: $98
    ld hl, sp-$78                                 ; $5555: $f8 $88
    ld hl, sp-$78                                 ; $5557: $f8 $88
    ld hl, sp-$78                                 ; $5559: $f8 $88
    ld hl, sp-$78                                 ; $555b: $f8 $88
    ld hl, sp+$04                                 ; $555d: $f8 $04
    add b                                         ; $555f: $80
    add d                                         ; $5560: $82
    di                                            ; $5561: $f3
    rst $38                                       ; $5562: $ff
    ld [bc], a                                    ; $5563: $02
    ld a, a                                       ; $5564: $7f
    add h                                         ; $5565: $84
    inc d                                         ; $5566: $14
    rra                                           ; $5567: $1f
    dec bc                                        ; $5568: $0b
    rrca                                          ; $5569: $0f
    ld [bc], a                                    ; $556a: $02
    rlca                                          ; $556b: $07
    inc b                                         ; $556c: $04
    ld bc, $0284                                  ; $556d: $01 $84 $02
    inc bc                                        ; $5570: $03
    ld [bc], a                                    ; $5571: $02
    inc bc                                        ; $5572: $03
    ld [bc], a                                    ; $5573: $02
    rlca                                          ; $5574: $07
    add d                                         ; $5575: $82
    inc b                                         ; $5576: $04
    rlca                                          ; $5577: $07
    ld [bc], a                                    ; $5578: $02
    inc bc                                        ; $5579: $03
    inc b                                         ; $557a: $04
    nop                                           ; $557b: $00
    sbc c                                         ; $557c: $99
    inc sp                                        ; $557d: $33
    ccf                                           ; $557e: $3f
    dec hl                                        ; $557f: $2b
    ccf                                           ; $5580: $3f
    ld e, e                                       ; $5581: $5b
    ld a, a                                       ; $5582: $7f
    ld [hl], e                                    ; $5583: $73
    ld a, a                                       ; $5584: $7f
    ld b, d                                       ; $5585: $42
    ld a, [hl]                                    ; $5586: $7e
    ld [bc], a                                    ; $5587: $02
    ld a, [hl]                                    ; $5588: $7e
    ld [bc], a                                    ; $5589: $02
    ld a, [hl]                                    ; $558a: $7e
    ld [bc], a                                    ; $558b: $02
    ld a, [hl]                                    ; $558c: $7e
    ld [bc], a                                    ; $558d: $02
    ld a, [hl]                                    ; $558e: $7e
    ld [bc], a                                    ; $558f: $02
    ld a, [hl]                                    ; $5590: $7e
    ld [hl+], a                                   ; $5591: $22
    ld a, [hl]                                    ; $5592: $7e
    ld b, [hl]                                    ; $5593: $46
    ld a, [hl]                                    ; $5594: $7e
    rra                                           ; $5595: $1f
    inc bc                                        ; $5596: $03
    ld a, a                                       ; $5597: $7f
    inc b                                         ; $5598: $04
    nop                                           ; $5599: $00
    rst $38                                       ; $559a: $ff
    dec c                                         ; $559b: $0d
    inc b                                         ; $559c: $04
    ld hl, sp+$07                                 ; $559d: $f8 $07
    ld a, [c]                                     ; $559f: $f2
    ld bc, $fae4                                  ; $55a0: $01 $e4 $fa
    db $e4                                        ; $55a3: $e4
    cp $f4                                        ; $55a4: $fe $f4
    or $f4                                        ; $55a6: $f6 $f4
    db $fc                                        ; $55a8: $fc
    ld [bc], a                                    ; $55a9: $02
    rlca                                          ; $55aa: $07
    sub d                                         ; $55ab: $92
    rrca                                          ; $55ac: $0f
    add hl, bc                                    ; $55ad: $09
    rra                                           ; $55ae: $1f
    db $10                                        ; $55af: $10
    dec e                                         ; $55b0: $1d
    ld d, $3f                                     ; $55b1: $16 $3f
    inc l                                         ; $55b3: $2c
    ld a, a                                       ; $55b4: $7f
    ld b, d                                       ; $55b5: $42
    ccf                                           ; $55b6: $3f
    jr nz, jr_0e4_55d6                            ; $55b7: $20 $1d

    ld [de], a                                    ; $55b9: $12
    ccf                                           ; $55ba: $3f
    jr nz, jr_0e4_55dc                            ; $55bb: $20 $1f

    dec e                                         ; $55bd: $1d
    ld [bc], a                                    ; $55be: $02
    ccf                                           ; $55bf: $3f
    adc d                                         ; $55c0: $8a
    ld hl, $483f                                  ; $55c1: $21 $3f $48
    ld a, a                                       ; $55c4: $7f
    ld e, b                                       ; $55c5: $58
    ld a, a                                       ; $55c6: $7f
    ld a, b                                       ; $55c7: $78
    ld a, a                                       ; $55c8: $7f
    sbc b                                         ; $55c9: $98
    rst $38                                       ; $55ca: $ff
    ld [bc], a                                    ; $55cb: $02
    ld [$0c90], sp                                ; $55cc: $08 $90 $0c
    inc b                                         ; $55cf: $04
    ld c, $0a                                     ; $55d0: $0e $0a
    ld c, $02                                     ; $55d2: $0e $02
    ld c, $06                                     ; $55d4: $0e $06

jr_0e4_55d6:
    rrca                                          ; $55d6: $0f
    ld bc, $020e                                  ; $55d7: $01 $0e $02
    ld c, $02                                     ; $55da: $0e $02

jr_0e4_55dc:
    inc c                                         ; $55dc: $0c
    inc b                                         ; $55dd: $04
    ld [bc], a                                    ; $55de: $02
    ld [$0004], sp                                ; $55df: $08 $04 $00
    ld [$0208], sp                                ; $55e2: $08 $08 $02
    rra                                           ; $55e5: $1f
    sub b                                         ; $55e6: $90
    ld de, $3f1f                                  ; $55e7: $11 $1f $3f
    dec a                                         ; $55ea: $3d
    ld c, e                                       ; $55eb: $4b
    ld a, a                                       ; $55ec: $7f
    add $ff                                       ; $55ed: $c6 $ff
    and a                                         ; $55ef: $a7
    rst $38                                       ; $55f0: $ff
    rst $20                                       ; $55f1: $e7
    rst $38                                       ; $55f2: $ff
    sbc h                                         ; $55f3: $9c
    rst $38                                       ; $55f4: $ff
    adc b                                         ; $55f5: $88
    rst $38                                       ; $55f6: $ff
    ld [bc], a                                    ; $55f7: $02
    ld a, a                                       ; $55f8: $7f
    add c                                         ; $55f9: $81
    inc d                                         ; $55fa: $14
    inc bc                                        ; $55fb: $03
    rra                                           ; $55fc: $1f
    add d                                         ; $55fd: $82
    ld [$020f], sp                                ; $55fe: $08 $0f $02
    rlca                                          ; $5601: $07
    inc b                                         ; $5602: $04
    nop                                           ; $5603: $00
    sbc c                                         ; $5604: $99
    inc hl                                        ; $5605: $23
    ccf                                           ; $5606: $3f
    inc hl                                        ; $5607: $23
    ccf                                           ; $5608: $3f
    inc hl                                        ; $5609: $23
    ccf                                           ; $560a: $3f
    inc hl                                        ; $560b: $23
    ccf                                           ; $560c: $3f
    ld [de], a                                    ; $560d: $12
    ld a, $0a                                     ; $560e: $3e $0a
    ld a, $2a                                     ; $5610: $3e $2a
    ld a, $2a                                     ; $5612: $3e $2a
    ld a, $3a                                     ; $5614: $3e $3a
    ld a, $32                                     ; $5616: $3e $32
    ld a, $22                                     ; $5618: $3e $22
    ld a, $06                                     ; $561a: $3e $06
    ld a, $1f                                     ; $561c: $3e $1f
    inc bc                                        ; $561e: $03
    ccf                                           ; $561f: $3f
    inc b                                         ; $5620: $04
    nop                                           ; $5621: $00
    rst $38                                       ; $5622: $ff
    dec c                                         ; $5623: $0d
    inc b                                         ; $5624: $04
    ld hl, sp+$07                                 ; $5625: $f8 $07
    ld a, [c]                                     ; $5627: $f2
    ld bc, $fae4                                  ; $5628: $01 $e4 $fa
    db $e4                                        ; $562b: $e4
    cp $f4                                        ; $562c: $fe $f4
    or $f4                                        ; $562e: $f6 $f4
    db $fc                                        ; $5630: $fc
    ld [bc], a                                    ; $5631: $02
    rlca                                          ; $5632: $07
    sub d                                         ; $5633: $92
    rrca                                          ; $5634: $0f
    add hl, bc                                    ; $5635: $09
    rra                                           ; $5636: $1f
    db $10                                        ; $5637: $10
    dec e                                         ; $5638: $1d
    ld d, $3f                                     ; $5639: $16 $3f
    inc l                                         ; $563b: $2c
    ld a, a                                       ; $563c: $7f
    ld b, d                                       ; $563d: $42
    ccf                                           ; $563e: $3f
    jr nz, jr_0e4_565e                            ; $563f: $20 $1d

    ld [de], a                                    ; $5641: $12
    ccf                                           ; $5642: $3f
    jr nz, jr_0e4_5664                            ; $5643: $20 $1f

    dec e                                         ; $5645: $1d
    ld [bc], a                                    ; $5646: $02
    ccf                                           ; $5647: $3f
    adc d                                         ; $5648: $8a
    ld hl, $683f                                  ; $5649: $21 $3f $68
    ld a, a                                       ; $564c: $7f
    ld c, b                                       ; $564d: $48
    ld a, a                                       ; $564e: $7f
    ld a, b                                       ; $564f: $78
    ld a, a                                       ; $5650: $7f
    sbc b                                         ; $5651: $98
    rst $38                                       ; $5652: $ff
    ld [bc], a                                    ; $5653: $02
    ld [$0c90], sp                                ; $5654: $08 $90 $0c
    inc b                                         ; $5657: $04
    ld c, $0a                                     ; $5658: $0e $0a
    ld c, $02                                     ; $565a: $0e $02
    ld c, $06                                     ; $565c: $0e $06

jr_0e4_565e:
    rrca                                          ; $565e: $0f
    ld bc, $020e                                  ; $565f: $01 $0e $02
    ld c, $02                                     ; $5662: $0e $02

jr_0e4_5664:
    inc c                                         ; $5664: $0c
    inc b                                         ; $5665: $04
    ld [bc], a                                    ; $5666: $02
    ld [$0004], sp                                ; $5667: $08 $04 $00
    ld [$0208], sp                                ; $566a: $08 $08 $02
    rra                                           ; $566d: $1f
    add c                                         ; $566e: $81
    ld de, $1f02                                  ; $566f: $11 $02 $1f
    sub l                                         ; $5672: $95
    dec de                                        ; $5673: $1b
    dec h                                         ; $5674: $25
    ccf                                           ; $5675: $3f
    ld l, l                                       ; $5676: $6d
    ld a, a                                       ; $5677: $7f
    or [hl]                                       ; $5678: $b6
    rst $38                                       ; $5679: $ff
    sbc a                                         ; $567a: $9f
    rst $38                                       ; $567b: $ff
    adc a                                         ; $567c: $8f
    rst $38                                       ; $567d: $ff
    add $ff                                       ; $567e: $c6 $ff
    cp b                                          ; $5680: $b8
    rst $38                                       ; $5681: $ff
    ld [hl], c                                    ; $5682: $71
    ld a, a                                       ; $5683: $7f
    ld c, a                                       ; $5684: $4f
    ld a, a                                       ; $5685: $7f
    jr c, jr_0e4_56c7                             ; $5686: $38 $3f

    ld [bc], a                                    ; $5688: $02
    rlca                                          ; $5689: $07
    inc b                                         ; $568a: $04
    nop                                           ; $568b: $00
    sbc c                                         ; $568c: $99
    inc hl                                        ; $568d: $23
    ccf                                           ; $568e: $3f
    inc hl                                        ; $568f: $23
    ccf                                           ; $5690: $3f
    inc hl                                        ; $5691: $23
    ccf                                           ; $5692: $3f
    inc hl                                        ; $5693: $23
    ccf                                           ; $5694: $3f
    ld [hl+], a                                   ; $5695: $22
    ld a, $12                                     ; $5696: $3e $12
    ld a, $12                                     ; $5698: $3e $12
    ld a, $0a                                     ; $569a: $3e $0a
    ld a, $2a                                     ; $569c: $3e $2a
    ld a, $32                                     ; $569e: $3e $32
    ld a, $22                                     ; $56a0: $3e $22
    ld a, $06                                     ; $56a2: $3e $06
    ld a, $1f                                     ; $56a4: $3e $1f
    inc bc                                        ; $56a6: $03
    ccf                                           ; $56a7: $3f
    inc b                                         ; $56a8: $04
    nop                                           ; $56a9: $00
    rst $38                                       ; $56aa: $ff
    rrca                                          ; $56ab: $0f
    dec b                                         ; $56ac: $05
    ld hl, sp+$07                                 ; $56ad: $f8 $07
    ld a, [c]                                     ; $56af: $f2
    ld bc, $f9e4                                  ; $56b0: $01 $e4 $f9
    db $e4                                        ; $56b3: $e4
    cp $f4                                        ; $56b4: $fe $f4
    ld a, [c]                                     ; $56b6: $f2
    db $f4                                        ; $56b7: $f4
    ld a, [$fcf4]                                 ; $56b8: $fa $f4 $fc
    ld [bc], a                                    ; $56bb: $02
    inc bc                                        ; $56bc: $03
    sub d                                         ; $56bd: $92
    rlca                                          ; $56be: $07
    inc b                                         ; $56bf: $04
    rrca                                          ; $56c0: $0f
    ld [$0b0e], sp                                ; $56c1: $08 $0e $0b
    rra                                           ; $56c4: $1f
    ld d, $3f                                     ; $56c5: $16 $3f

jr_0e4_56c7:
    ld hl, $101f                                  ; $56c7: $21 $1f $10
    ld c, $09                                     ; $56ca: $0e $09
    rra                                           ; $56cc: $1f
    db $10                                        ; $56cd: $10
    rrca                                          ; $56ce: $0f
    ld c, $02                                     ; $56cf: $0e $02
    rra                                           ; $56d1: $1f
    adc d                                         ; $56d2: $8a
    jr nc, jr_0e4_5714                            ; $56d3: $30 $3f

    inc h                                         ; $56d5: $24
    ccf                                           ; $56d6: $3f
    inc h                                         ; $56d7: $24
    ccf                                           ; $56d8: $3f
    ld a, h                                       ; $56d9: $7c
    ld a, a                                       ; $56da: $7f
    call z, Call_000_02ff                         ; $56db: $cc $ff $02
    jr @-$6e                                      ; $56de: $18 $90

    inc e                                         ; $56e0: $1c
    inc d                                         ; $56e1: $14
    ld e, $0a                                     ; $56e2: $1e $0a
    ld e, $02                                     ; $56e4: $1e $02
    ld e, $06                                     ; $56e6: $1e $06
    rra                                           ; $56e8: $1f
    ld bc, $021e                                  ; $56e9: $01 $1e $02
    ld e, $02                                     ; $56ec: $1e $02
    inc e                                         ; $56ee: $1c
    inc b                                         ; $56ef: $04
    ld [bc], a                                    ; $56f0: $02
    jr @+$06                                      ; $56f1: $18 $04

    db $10                                        ; $56f3: $10
    adc b                                         ; $56f4: $88
    ld [$0818], sp                                ; $56f5: $08 $18 $08
    jr @+$0a                                      ; $56f8: $18 $08

    jr jr_0e4_5704                                ; $56fa: $18 $08

    jr @+$04                                      ; $56fc: $18 $02

    ld bc, $1f96                                  ; $56fe: $01 $96 $1f
    ld e, $29                                     ; $5701: $1e $29
    ccf                                           ; $5703: $3f

jr_0e4_5704:
    ld b, l                                       ; $5704: $45
    ld a, a                                       ; $5705: $7f
    ld c, a                                       ; $5706: $4f
    ld a, a                                       ; $5707: $7f
    rst $08                                       ; $5708: $cf
    rst $38                                       ; $5709: $ff
    cp c                                          ; $570a: $b9
    rst $38                                       ; $570b: $ff
    ld h, e                                       ; $570c: $63
    ld a, a                                       ; $570d: $7f
    ld b, h                                       ; $570e: $44
    ld a, a                                       ; $570f: $7f
    ld c, h                                       ; $5710: $4c
    ld a, a                                       ; $5711: $7f
    dec hl                                        ; $5712: $2b
    dec sp                                        ; $5713: $3b

jr_0e4_5714:
    inc l                                         ; $5714: $2c
    ccf                                           ; $5715: $3f
    ld [bc], a                                    ; $5716: $02
    rra                                           ; $5717: $1f
    ld b, $00                                     ; $5718: $06 $00
    sbc d                                         ; $571a: $9a
    ld e, b                                       ; $571b: $58
    rst $38                                       ; $571c: $ff
    or b                                          ; $571d: $b0
    rst $38                                       ; $571e: $ff
    ldh a, [$3f]                                  ; $571f: $f0 $3f
    ret nc                                        ; $5721: $d0

    rst $38                                       ; $5722: $ff
    ld h, b                                       ; $5723: $60
    rst $38                                       ; $5724: $ff
    and b                                         ; $5725: $a0
    rst $38                                       ; $5726: $ff
    ret nc                                        ; $5727: $d0

    rst $38                                       ; $5728: $ff
    ld d, b                                       ; $5729: $50
    rst $38                                       ; $572a: $ff
    jr nc, @+$01                                  ; $572b: $30 $ff

    ld h, b                                       ; $572d: $60
    rst $38                                       ; $572e: $ff
    ret z                                         ; $572f: $c8

    rst $38                                       ; $5730: $ff
    pop af                                        ; $5731: $f1
    rst $38                                       ; $5732: $ff
    add a                                         ; $5733: $87
    rst $38                                       ; $5734: $ff
    ld [bc], a                                    ; $5735: $02
    ld a, a                                       ; $5736: $7f
    inc b                                         ; $5737: $04
    nop                                           ; $5738: $00
    ld [$1003], sp                                ; $5739: $08 $03 $10
    ld [bc], a                                    ; $573c: $02
    inc b                                         ; $573d: $04
    inc bc                                        ; $573e: $03
    inc b                                         ; $573f: $04
    nop                                           ; $5740: $00
    rst $38                                       ; $5741: $ff
    rrca                                          ; $5742: $0f
    dec b                                         ; $5743: $05
    ld hl, sp+$07                                 ; $5744: $f8 $07
    ld a, [c]                                     ; $5746: $f2
    ld bc, $fbe4                                  ; $5747: $01 $e4 $fb
    push hl                                       ; $574a: $e5
    cp $f4                                        ; $574b: $fe $f4
    pop af                                        ; $574d: $f1
    db $f4                                        ; $574e: $f4
    ld sp, hl                                     ; $574f: $f9
    db $f4                                        ; $5750: $f4
    db $fc                                        ; $5751: $fc
    ld [bc], a                                    ; $5752: $02
    rrca                                          ; $5753: $0f
    sub d                                         ; $5754: $92
    rra                                           ; $5755: $1f
    ld [de], a                                    ; $5756: $12
    ccf                                           ; $5757: $3f
    ld hl, $2c3b                                  ; $5758: $21 $3b $2c
    ld a, a                                       ; $575b: $7f
    ld e, b                                       ; $575c: $58
    rst $38                                       ; $575d: $ff
    add h                                         ; $575e: $84
    ld a, a                                       ; $575f: $7f
    ld b, b                                       ; $5760: $40
    dec sp                                        ; $5761: $3b
    inc h                                         ; $5762: $24
    ld a, a                                       ; $5763: $7f
    ld b, b                                       ; $5764: $40
    ccf                                           ; $5765: $3f
    dec sp                                        ; $5766: $3b
    ld [bc], a                                    ; $5767: $02
    ld a, $8a                                     ; $5768: $3e $8a
    ld h, d                                       ; $576a: $62
    ld a, [hl]                                    ; $576b: $7e
    ld c, c                                       ; $576c: $49
    ld a, a                                       ; $576d: $7f
    ld e, c                                       ; $576e: $59
    ld a, a                                       ; $576f: $7f
    reti                                          ; $5770: $d9


    rst $38                                       ; $5771: $ff
    ret                                           ; $5772: $c9


    rst $38                                       ; $5773: $ff
    ld [bc], a                                    ; $5774: $02
    inc b                                         ; $5775: $04
    add h                                         ; $5776: $84
    ld b, $02                                     ; $5777: $06 $02
    ld b, $02                                     ; $5779: $06 $02
    ld [bc], a                                    ; $577b: $02
    ld b, $86                                     ; $577c: $06 $86
    rlca                                          ; $577e: $07
    ld bc, $0206                                  ; $577f: $01 $06 $02
    ld b, $02                                     ; $5782: $06 $02
    ld [bc], a                                    ; $5784: $02
    inc b                                         ; $5785: $04
    ld c, $00                                     ; $5786: $0e $00
    add d                                         ; $5788: $82
    call z, $06fc                                 ; $5789: $cc $fc $06
    nop                                           ; $578c: $00
    ld [bc], a                                    ; $578d: $02
    rra                                           ; $578e: $1f
    sub b                                         ; $578f: $90
    ld [hl+], a                                   ; $5790: $22
    ccf                                           ; $5791: $3f
    ld e, h                                       ; $5792: $5c
    ld a, a                                       ; $5793: $7f
    adc [hl]                                      ; $5794: $8e
    rst $38                                       ; $5795: $ff
    sub a                                         ; $5796: $97
    rst $38                                       ; $5797: $ff
    sbc a                                         ; $5798: $9f
    rst $38                                       ; $5799: $ff
    ld h, e                                       ; $579a: $63
    ld a, a                                       ; $579b: $7f
    add [hl]                                      ; $579c: $86
    rst $38                                       ; $579d: $ff
    ld h, h                                       ; $579e: $64
    ld a, a                                       ; $579f: $7f
    ld [bc], a                                    ; $57a0: $02
    rra                                           ; $57a1: $1f
    ld b, $00                                     ; $57a2: $06 $00
    sbc d                                         ; $57a4: $9a
    jr nz, jr_0e4_57df                            ; $57a5: $20 $38

    ld h, $3f                                     ; $57a7: $26 $3f
    ld a, $3f                                     ; $57a9: $3e $3f
    ld h, $3f                                     ; $57ab: $26 $3f
    cp h                                          ; $57ad: $bc
    and a                                         ; $57ae: $a7
    ld a, h                                       ; $57af: $7c
    rst $38                                       ; $57b0: $ff
    call c, $b0df                                 ; $57b1: $dc $df $b0
    rst $38                                       ; $57b4: $ff
    ret nc                                        ; $57b5: $d0

    rst $38                                       ; $57b6: $ff
    ret nc                                        ; $57b7: $d0

    rst $38                                       ; $57b8: $ff
    inc h                                         ; $57b9: $24
    rst $38                                       ; $57ba: $ff
    ld a, b                                       ; $57bb: $78
    rst $38                                       ; $57bc: $ff
    jp Jump_000_02ff                              ; $57bd: $c3 $ff $02


    ccf                                           ; $57c0: $3f
    ld b, $00                                     ; $57c1: $06 $00
    sub e                                         ; $57c3: $93

jr_0e4_57c4:
    inc bc                                        ; $57c4: $03
    rlca                                          ; $57c5: $07
    inc bc                                        ; $57c6: $03
    rlca                                          ; $57c7: $07
    inc bc                                        ; $57c8: $03
    rlca                                          ; $57c9: $07
    ld [bc], a                                    ; $57ca: $02
    ld b, $02                                     ; $57cb: $06 $02
    ld b, $02                                     ; $57cd: $06 $02
    ld b, $02                                     ; $57cf: $06 $02
    ld b, $02                                     ; $57d1: $06 $02
    ld b, $02                                     ; $57d3: $06 $02
    ld b, $02                                     ; $57d5: $06 $02
    inc bc                                        ; $57d7: $03
    ld b, $04                                     ; $57d8: $06 $04
    rlca                                          ; $57da: $07
    inc b                                         ; $57db: $04
    nop                                           ; $57dc: $00
    rst $38                                       ; $57dd: $ff
    rrca                                          ; $57de: $0f

jr_0e4_57df:
    dec b                                         ; $57df: $05
    ld hl, sp+$07                                 ; $57e0: $f8 $07
    ld a, [c]                                     ; $57e2: $f2
    ld bc, $fbe4                                  ; $57e3: $01 $e4 $fb
    push hl                                       ; $57e6: $e5
    cp $f4                                        ; $57e7: $fe $f4
    pop af                                        ; $57e9: $f1
    db $f4                                        ; $57ea: $f4
    ld sp, hl                                     ; $57eb: $f9
    db $f4                                        ; $57ec: $f4
    db $fc                                        ; $57ed: $fc
    ld [bc], a                                    ; $57ee: $02
    rrca                                          ; $57ef: $0f
    sub d                                         ; $57f0: $92
    rra                                           ; $57f1: $1f
    ld [de], a                                    ; $57f2: $12
    ccf                                           ; $57f3: $3f
    ld hl, $2c3b                                  ; $57f4: $21 $3b $2c
    ld a, a                                       ; $57f7: $7f
    ld e, b                                       ; $57f8: $58
    rst $38                                       ; $57f9: $ff
    add h                                         ; $57fa: $84
    ld a, a                                       ; $57fb: $7f
    ld b, b                                       ; $57fc: $40
    dec sp                                        ; $57fd: $3b
    inc h                                         ; $57fe: $24
    ld a, a                                       ; $57ff: $7f
    ld b, b                                       ; $5800: $40
    ccf                                           ; $5801: $3f
    dec sp                                        ; $5802: $3b
    ld [bc], a                                    ; $5803: $02
    ld a, $8a                                     ; $5804: $3e $8a
    ld [hl], d                                    ; $5806: $72
    ld a, [hl]                                    ; $5807: $7e
    ld l, l                                       ; $5808: $6d
    ld a, a                                       ; $5809: $7f
    ld c, l                                       ; $580a: $4d
    ld a, a                                       ; $580b: $7f
    ld h, l                                       ; $580c: $65
    ld a, a                                       ; $580d: $7f
    ld l, l                                       ; $580e: $6d
    ld a, a                                       ; $580f: $7f
    ld [bc], a                                    ; $5810: $02
    inc b                                         ; $5811: $04
    add h                                         ; $5812: $84
    ld b, $02                                     ; $5813: $06 $02
    ld b, $02                                     ; $5815: $06 $02
    ld [bc], a                                    ; $5817: $02
    ld b, $86                                     ; $5818: $06 $86
    rlca                                          ; $581a: $07
    ld bc, $0206                                  ; $581b: $01 $06 $02
    ld b, $02                                     ; $581e: $06 $02
    ld [bc], a                                    ; $5820: $02
    inc b                                         ; $5821: $04
    ld c, $00                                     ; $5822: $0e $00
    add d                                         ; $5824: $82
    ld l, h                                       ; $5825: $6c
    db $fc                                        ; $5826: $fc
    stop                                          ; $5827: $10 $00
    ld [bc], a                                    ; $5829: $02
    ld a, $8c                                     ; $582a: $3e $8c
    ld d, c                                       ; $582c: $51
    ld a, a                                       ; $582d: $7f
    sbc l                                         ; $582e: $9d
    rst $38                                       ; $582f: $ff
    adc a                                         ; $5830: $8f
    rst $38                                       ; $5831: $ff
    or c                                          ; $5832: $b1
    rst $38                                       ; $5833: $ff
    ld b, [hl]                                    ; $5834: $46
    ld a, a                                       ; $5835: $7f
    add h                                         ; $5836: $84
    rst $38                                       ; $5837: $ff
    ld [bc], a                                    ; $5838: $02
    ld a, a                                       ; $5839: $7f
    ld [bc], a                                    ; $583a: $02
    jr jr_0e4_57c4                                ; $583b: $18 $87

    add hl, de                                    ; $583d: $19
    rra                                           ; $583e: $1f
    ld de, $171f                                  ; $583f: $11 $1f $17
    rra                                           ; $5842: $1f
    add hl, de                                    ; $5843: $19
    ld [bc], a                                    ; $5844: $02
    rra                                           ; $5845: $1f
    sub e                                         ; $5846: $93
    add hl, de                                    ; $5847: $19
    rla                                           ; $5848: $17
    rra                                           ; $5849: $1f
    db $10                                        ; $584a: $10
    rra                                           ; $584b: $1f
    db $10                                        ; $584c: $10
    rra                                           ; $584d: $1f
    ldh [rIE], a                                  ; $584e: $e0 $ff
    and h                                         ; $5850: $a4
    rst $38                                       ; $5851: $ff
    ret c                                         ; $5852: $d8

    rst $38                                       ; $5853: $ff
    sub e                                         ; $5854: $93
    rst $38                                       ; $5855: $ff
    ld e, a                                       ; $5856: $5f
    rst $38                                       ; $5857: $ff
    ld h, b                                       ; $5858: $60
    ldh [rSC], a                                  ; $5859: $e0 $02
    add b                                         ; $585b: $80
    ld [bc], a                                    ; $585c: $02

jr_0e4_585d:
    nop                                           ; $585d: $00
    sub e                                         ; $585e: $93
    inc bc                                        ; $585f: $03
    rlca                                          ; $5860: $07
    inc bc                                        ; $5861: $03
    rlca                                          ; $5862: $07
    inc bc                                        ; $5863: $03
    rlca                                          ; $5864: $07
    ld [bc], a                                    ; $5865: $02
    ld b, $02                                     ; $5866: $06 $02
    ld b, $02                                     ; $5868: $06 $02
    ld b, $02                                     ; $586a: $06 $02
    ld b, $02                                     ; $586c: $06 $02
    ld b, $02                                     ; $586e: $06 $02
    ld b, $02                                     ; $5870: $06 $02
    inc bc                                        ; $5872: $03
    ld b, $04                                     ; $5873: $06 $04
    rlca                                          ; $5875: $07
    inc b                                         ; $5876: $04
    nop                                           ; $5877: $00
    rst $38                                       ; $5878: $ff
    rrca                                          ; $5879: $0f
    dec b                                         ; $587a: $05
    ld hl, sp+$07                                 ; $587b: $f8 $07
    ld a, [c]                                     ; $587d: $f2
    ld bc, $fbe4                                  ; $587e: $01 $e4 $fb
    push hl                                       ; $5881: $e5
    cp $f4                                        ; $5882: $fe $f4
    pop af                                        ; $5884: $f1
    db $f4                                        ; $5885: $f4
    ld sp, hl                                     ; $5886: $f9
    db $f4                                        ; $5887: $f4
    db $fc                                        ; $5888: $fc
    ld [bc], a                                    ; $5889: $02
    rrca                                          ; $588a: $0f
    sub d                                         ; $588b: $92
    rra                                           ; $588c: $1f
    ld [de], a                                    ; $588d: $12
    ccf                                           ; $588e: $3f
    ld hl, $2c3b                                  ; $588f: $21 $3b $2c
    ld a, a                                       ; $5892: $7f
    ld e, b                                       ; $5893: $58
    rst $38                                       ; $5894: $ff
    add h                                         ; $5895: $84
    ld a, a                                       ; $5896: $7f
    ld b, b                                       ; $5897: $40
    dec sp                                        ; $5898: $3b
    inc h                                         ; $5899: $24
    ld a, a                                       ; $589a: $7f
    ld b, b                                       ; $589b: $40
    ccf                                           ; $589c: $3f
    dec sp                                        ; $589d: $3b
    ld [bc], a                                    ; $589e: $02
    ld a, $8a                                     ; $589f: $3e $8a
    ld [hl], d                                    ; $58a1: $72
    ld a, [hl]                                    ; $58a2: $7e
    ld l, l                                       ; $58a3: $6d
    ld a, a                                       ; $58a4: $7f
    ld c, l                                       ; $58a5: $4d
    ld a, a                                       ; $58a6: $7f
    ld h, l                                       ; $58a7: $65
    ld a, a                                       ; $58a8: $7f
    ld l, l                                       ; $58a9: $6d
    ld a, a                                       ; $58aa: $7f
    ld [bc], a                                    ; $58ab: $02
    inc b                                         ; $58ac: $04
    add h                                         ; $58ad: $84
    ld b, $02                                     ; $58ae: $06 $02
    ld b, $02                                     ; $58b0: $06 $02
    ld [bc], a                                    ; $58b2: $02
    ld b, $86                                     ; $58b3: $06 $86
    rlca                                          ; $58b5: $07
    ld bc, $0206                                  ; $58b6: $01 $06 $02
    ld b, $02                                     ; $58b9: $06 $02
    ld [bc], a                                    ; $58bb: $02
    inc b                                         ; $58bc: $04
    ld c, $00                                     ; $58bd: $0e $00
    add d                                         ; $58bf: $82
    ld l, h                                       ; $58c0: $6c
    db $fc                                        ; $58c1: $fc
    ld [de], a                                    ; $58c2: $12
    nop                                           ; $58c3: $00
    ld [bc], a                                    ; $58c4: $02
    ld e, $8a                                     ; $58c5: $1e $8a
    ld [hl], c                                    ; $58c7: $71
    ld a, a                                       ; $58c8: $7f
    adc h                                         ; $58c9: $8c
    rst $38                                       ; $58ca: $ff
    sbc a                                         ; $58cb: $9f
    rst $38                                       ; $58cc: $ff
    db $e3                                        ; $58cd: $e3
    rst $38                                       ; $58ce: $ff
    call nz, Call_000_02ff                        ; $58cf: $c4 $ff $02
    ccf                                           ; $58d2: $3f
    ld [bc], a                                    ; $58d3: $02
    jr jr_0e4_585d                                ; $58d4: $18 $87

    add hl, de                                    ; $58d6: $19
    rra                                           ; $58d7: $1f
    ld de, $171f                                  ; $58d8: $11 $1f $17
    rra                                           ; $58db: $1f
    add hl, de                                    ; $58dc: $19
    ld [bc], a                                    ; $58dd: $02
    rra                                           ; $58de: $1f
    sub e                                         ; $58df: $93
    add hl, de                                    ; $58e0: $19
    rla                                           ; $58e1: $17
    rra                                           ; $58e2: $1f
    db $10                                        ; $58e3: $10
    rra                                           ; $58e4: $1f
    db $10                                        ; $58e5: $10
    rra                                           ; $58e6: $1f
    jr nz, @+$41                                  ; $58e7: $20 $3f

    db $e4                                        ; $58e9: $e4
    rst $38                                       ; $58ea: $ff
    cp b                                          ; $58eb: $b8
    rst $38                                       ; $58ec: $ff
    db $d3                                        ; $58ed: $d3
    rst $38                                       ; $58ee: $ff
    ccf                                           ; $58ef: $3f
    rst $38                                       ; $58f0: $ff
    db $10                                        ; $58f1: $10
    ldh a, [rSC]                                  ; $58f2: $f0 $02

jr_0e4_58f4:
    ldh [rSC], a                                  ; $58f4: $e0 $02
    nop                                           ; $58f6: $00
    sub e                                         ; $58f7: $93
    inc bc                                        ; $58f8: $03
    rlca                                          ; $58f9: $07
    inc bc                                        ; $58fa: $03
    rlca                                          ; $58fb: $07
    inc bc                                        ; $58fc: $03
    rlca                                          ; $58fd: $07
    ld [bc], a                                    ; $58fe: $02
    ld b, $02                                     ; $58ff: $06 $02
    ld b, $02                                     ; $5901: $06 $02
    ld b, $02                                     ; $5903: $06 $02
    ld b, $02                                     ; $5905: $06 $02
    ld b, $02                                     ; $5907: $06 $02
    ld b, $02                                     ; $5909: $06 $02
    inc bc                                        ; $590b: $03
    ld b, $04                                     ; $590c: $06 $04
    rlca                                          ; $590e: $07
    inc b                                         ; $590f: $04
    nop                                           ; $5910: $00
    rst $38                                       ; $5911: $ff
    dec c                                         ; $5912: $0d
    inc b                                         ; $5913: $04
    ld hl, sp+$07                                 ; $5914: $f8 $07
    ld a, [c]                                     ; $5916: $f2
    ld bc, $fbe4                                  ; $5917: $01 $e4 $fb
    push hl                                       ; $591a: $e5
    cp $f4                                        ; $591b: $fe $f4
    ld a, [$fcf4]                                 ; $591d: $fa $f4 $fc
    ld [bc], a                                    ; $5920: $02
    rrca                                          ; $5921: $0f
    sub d                                         ; $5922: $92
    rra                                           ; $5923: $1f
    ld [de], a                                    ; $5924: $12
    ccf                                           ; $5925: $3f
    ld hl, $2c3b                                  ; $5926: $21 $3b $2c
    ld a, a                                       ; $5929: $7f
    ld e, b                                       ; $592a: $58
    rst $38                                       ; $592b: $ff
    add h                                         ; $592c: $84
    ld a, a                                       ; $592d: $7f
    ld b, b                                       ; $592e: $40
    dec sp                                        ; $592f: $3b
    inc h                                         ; $5930: $24
    ld a, a                                       ; $5931: $7f
    ld b, b                                       ; $5932: $40
    ccf                                           ; $5933: $3f
    dec sp                                        ; $5934: $3b
    ld [bc], a                                    ; $5935: $02
    ld a, $8a                                     ; $5936: $3e $8a
    ld [hl], d                                    ; $5938: $72
    ld a, [hl]                                    ; $5939: $7e
    ld l, l                                       ; $593a: $6d
    ld a, a                                       ; $593b: $7f
    ld c, l                                       ; $593c: $4d
    ld a, a                                       ; $593d: $7f
    ld h, l                                       ; $593e: $65
    ld a, a                                       ; $593f: $7f
    ld l, l                                       ; $5940: $6d
    ld a, a                                       ; $5941: $7f
    ld [bc], a                                    ; $5942: $02
    inc b                                         ; $5943: $04
    add h                                         ; $5944: $84
    ld b, $02                                     ; $5945: $06 $02
    ld b, $02                                     ; $5947: $06 $02
    ld [bc], a                                    ; $5949: $02
    ld b, $86                                     ; $594a: $06 $86
    rlca                                          ; $594c: $07
    ld bc, $0206                                  ; $594d: $01 $06 $02
    ld b, $02                                     ; $5950: $06 $02
    ld [bc], a                                    ; $5952: $02
    inc b                                         ; $5953: $04
    ld c, $00                                     ; $5954: $0e $00
    add d                                         ; $5956: $82
    ld l, h                                       ; $5957: $6c
    db $fc                                        ; $5958: $fc
    ld [bc], a                                    ; $5959: $02
    jr nc, jr_0e4_58f4                            ; $595a: $30 $98

    ld [hl-], a                                   ; $595c: $32
    ccf                                           ; $595d: $3f
    ld [hl+], a                                   ; $595e: $22
    ccf                                           ; $595f: $3f
    ld l, $3f                                     ; $5960: $2e $3f
    ld [hl-], a                                   ; $5962: $32
    ccf                                           ; $5963: $3f
    ld a, $33                                     ; $5964: $3e $33
    ld l, $3f                                     ; $5966: $2e $3f
    jr nz, jr_0e4_59a9                            ; $5968: $20 $3f

    jr nz, jr_0e4_59ab                            ; $596a: $20 $3f

    ld b, b                                       ; $596c: $40
    ld a, a                                       ; $596d: $7f
    ld c, b                                       ; $596e: $48
    ld a, a                                       ; $596f: $7f
    pop af                                        ; $5970: $f1
    rst $38                                       ; $5971: $ff
    add a                                         ; $5972: $87
    rst $38                                       ; $5973: $ff
    ld [bc], a                                    ; $5974: $02
    ld a, a                                       ; $5975: $7f
    ld b, $00                                     ; $5976: $06 $00
    ld b, $03                                     ; $5978: $06 $03
    db $10                                        ; $597a: $10
    ld [bc], a                                    ; $597b: $02
    inc b                                         ; $597c: $04
    inc bc                                        ; $597d: $03
    inc b                                         ; $597e: $04
    nop                                           ; $597f: $00
    rst $38                                       ; $5980: $ff
    rrca                                          ; $5981: $0f
    dec b                                         ; $5982: $05
    ld a, [$f209]                                 ; $5983: $fa $09 $f2
    ld bc, $f8e6                                  ; $5986: $01 $e6 $f8
    rst $20                                       ; $5989: $e7
    nop                                           ; $598a: $00
    ld a, [c]                                     ; $598b: $f2
    ld [bc], a                                    ; $598c: $02
    or $f9                                        ; $598d: $f6 $f9
    or $fa                                        ; $598f: $f6 $fa
    ld [bc], a                                    ; $5991: $02
    rrca                                          ; $5992: $0f
    sbc [hl]                                      ; $5993: $9e
    rra                                           ; $5994: $1f
    inc d                                         ; $5995: $14
    ccf                                           ; $5996: $3f
    jr z, jr_0e4_59d6                             ; $5997: $28 $3d

    ld [hl+], a                                   ; $5999: $22
    ld l, $31                                     ; $599a: $2e $31
    ld a, a                                       ; $599c: $7f
    ld b, d                                       ; $599d: $42
    ccf                                           ; $599e: $3f
    jr nz, @+$3f                                  ; $599f: $20 $3d

    ld [hl+], a                                   ; $59a1: $22
    rra                                           ; $59a2: $1f
    db $10                                        ; $59a3: $10
    inc e                                         ; $59a4: $1c
    rra                                           ; $59a5: $1f
    dec de                                        ; $59a6: $1b
    rra                                           ; $59a7: $1f
    ld a, d                                       ; $59a8: $7a

jr_0e4_59a9:
    ld a, a                                       ; $59a9: $7f
    ei                                            ; $59aa: $fb

jr_0e4_59ab:
    sbc $fa                                       ; $59ab: $de $fa
    cp a                                          ; $59ad: $bf
    db $db                                        ; $59ae: $db
    xor [hl]                                      ; $59af: $ae
    db $eb                                        ; $59b0: $eb
    rst $38                                       ; $59b1: $ff
    ld [bc], a                                    ; $59b2: $02
    add b                                         ; $59b3: $80
    sbc [hl]                                      ; $59b4: $9e
    ret nz                                        ; $59b5: $c0

    ld b, b                                       ; $59b6: $40
    ret nz                                        ; $59b7: $c0

    ld b, b                                       ; $59b8: $40
    ld h, b                                       ; $59b9: $60
    and b                                         ; $59ba: $a0
    ldh a, [rNR10]                                ; $59bb: $f0 $10
    ldh [rNR41], a                                ; $59bd: $e0 $20
    ldh a, [rSVBK]                                ; $59bf: $f0 $70
    add sp, $38                                   ; $59c1: $e8 $38
    call nz, $d4fc                                ; $59c3: $c4 $fc $d4
    db $fc                                        ; $59c6: $fc
    ld d, a                                       ; $59c7: $57
    rst $38                                       ; $59c8: $ff
    ld e, a                                       ; $59c9: $5f
    db $fc                                        ; $59ca: $fc
    ld e, d                                       ; $59cb: $5a
    rst $38                                       ; $59cc: $ff
    ld d, a                                       ; $59cd: $57
    db $fd                                        ; $59ce: $fd

jr_0e4_59cf:
    ld d, [hl]                                    ; $59cf: $56
    rst $38                                       ; $59d0: $ff
    ret z                                         ; $59d1: $c8

    rst $38                                       ; $59d2: $ff
    ld [bc], a                                    ; $59d3: $02
    ld [bc], a                                    ; $59d4: $02
    add d                                         ; $59d5: $82

jr_0e4_59d6:
    inc bc                                        ; $59d6: $03
    ld bc, $0206                                  ; $59d7: $01 $06 $02
    sub d                                         ; $59da: $92
    inc a                                         ; $59db: $3c
    db $fc                                        ; $59dc: $fc
    jr nc, jr_0e4_59cf                            ; $59dd: $30 $f0

    ld [hl], b                                    ; $59df: $70
    ldh a, [rNR10]                                ; $59e0: $f0 $10
    ldh a, [$88]                                  ; $59e2: $f0 $88
    ld hl, sp-$78                                 ; $59e4: $f8 $88
    ld hl, sp-$38                                 ; $59e6: $f8 $c8
    ld hl, sp-$28                                 ; $59e8: $f8 $d8
    ld hl, sp-$3c                                 ; $59ea: $f8 $c4
    db $fc                                        ; $59ec: $fc
    ld [bc], a                                    ; $59ed: $02
    ld hl, sp+$02                                 ; $59ee: $f8 $02
    ld [hl], b                                    ; $59f0: $70
    sub d                                         ; $59f1: $92
    sub [hl]                                      ; $59f2: $96
    cp $f7                                        ; $59f3: $fe $f7
    rst $38                                       ; $59f5: $ff
    cpl                                           ; $59f6: $2f
    ccf                                           ; $59f7: $3f
    cpl                                           ; $59f8: $2f
    ccf                                           ; $59f9: $3f
    ld e, a                                       ; $59fa: $5f
    ld a, a                                       ; $59fb: $7f
    ld e, a                                       ; $59fc: $5f
    ld a, a                                       ; $59fd: $7f
    ld e, a                                       ; $59fe: $5f
    ld a, a                                       ; $59ff: $7f
    ld e, [hl]                                    ; $5a00: $5e
    ld a, a                                       ; $5a01: $7f
    ld l, $3f                                     ; $5a02: $2e $3f
    ld [bc], a                                    ; $5a04: $02
    ld a, a                                       ; $5a05: $7f
    ld [bc], a                                    ; $5a06: $02
    ld a, $0c                                     ; $5a07: $3e $0c
    nop                                           ; $5a09: $00
    ld c, $01                                     ; $5a0a: $0e $01
    add c                                         ; $5a0c: $81
    nop                                           ; $5a0d: $00
    inc bc                                        ; $5a0e: $03
    ld bc, $000c                                  ; $5a0f: $01 $0c $00
    rst $38                                       ; $5a12: $ff
    rrca                                          ; $5a13: $0f
    dec b                                         ; $5a14: $05
    ld a, [$f209]                                 ; $5a15: $fa $09 $f2
    ld bc, $f9e5                                  ; $5a18: $01 $e5 $f9
    rst $20                                       ; $5a1b: $e7
    ld bc, $03f0                                  ; $5a1c: $01 $f0 $03
    push af                                       ; $5a1f: $f5
    ld sp, hl                                     ; $5a20: $f9
    push af                                       ; $5a21: $f5
    rst $38                                       ; $5a22: $ff
    ld [bc], a                                    ; $5a23: $02
    ld e, $9e                                     ; $5a24: $1e $9e
    ccf                                           ; $5a26: $3f
    add hl, hl                                    ; $5a27: $29
    ld a, a                                       ; $5a28: $7f
    ld d, b                                       ; $5a29: $50
    ld a, c                                       ; $5a2a: $79
    ld b, [hl]                                    ; $5a2b: $46
    ld e, [hl]                                    ; $5a2c: $5e
    ld h, e                                       ; $5a2d: $63
    rst $38                                       ; $5a2e: $ff
    add h                                         ; $5a2f: $84
    ld a, a                                       ; $5a30: $7f
    ld b, b                                       ; $5a31: $40
    ld a, e                                       ; $5a32: $7b
    ld b, h                                       ; $5a33: $44
    ccf                                           ; $5a34: $3f
    jr nz, jr_0e4_5a50                            ; $5a35: $20 $19

    rra                                           ; $5a37: $1f
    scf                                           ; $5a38: $37
    ccf                                           ; $5a39: $3f
    inc [hl]                                      ; $5a3a: $34
    ccf                                           ; $5a3b: $3f
    halt                                          ; $5a3c: $76
    ld a, l                                       ; $5a3d: $7d
    db $f4                                        ; $5a3e: $f4
    rst $18                                       ; $5a3f: $df
    or $bd                                        ; $5a40: $f6 $bd
    sub $af                                       ; $5a42: $d6 $af
    inc b                                         ; $5a44: $04
    add b                                         ; $5a45: $80
    add [hl]                                      ; $5a46: $86
    ret nz                                        ; $5a47: $c0

    ld b, b                                       ; $5a48: $40
    ldh [rNR41], a                                ; $5a49: $e0 $20
    ret nz                                        ; $5a4b: $c0

    ld b, b                                       ; $5a4c: $40
    ld [bc], a                                    ; $5a4d: $02
    ldh [$94], a                                  ; $5a4e: $e0 $94

jr_0e4_5a50:
    ret nc                                        ; $5a50: $d0

    ld [hl], b                                    ; $5a51: $70

jr_0e4_5a52:
    sub b                                         ; $5a52: $90
    ldh a, [$ab]                                  ; $5a53: $f0 $ab
    ei                                            ; $5a55: $fb
    xor a                                         ; $5a56: $af
    db $fc                                        ; $5a57: $fc
    cp d                                          ; $5a58: $ba
    rst $38                                       ; $5a59: $ff
    cp e                                          ; $5a5a: $bb
    db $fd                                        ; $5a5b: $fd
    xor d                                         ; $5a5c: $aa
    rst $38                                       ; $5a5d: $ff
    or h                                          ; $5a5e: $b4
    rst $38                                       ; $5a5f: $ff
    sbc a                                         ; $5a60: $9f
    rst $38                                       ; $5a61: $ff
    sub b                                         ; $5a62: $90
    ldh a, [rSC]                                  ; $5a63: $f0 $02
    ld [bc], a                                    ; $5a65: $02
    add d                                         ; $5a66: $82
    inc bc                                        ; $5a67: $03
    ld bc, $0206                                  ; $5a68: $01 $06 $02
    inc b                                         ; $5a6b: $04
    nop                                           ; $5a6c: $00
    and l                                         ; $5a6d: $a5
    ld b, b                                       ; $5a6e: $40
    ret nz                                        ; $5a6f: $c0

    jr nz, jr_0e4_5a52                            ; $5a70: $20 $e0

    ld h, b                                       ; $5a72: $60
    ldh [rNR41], a                                ; $5a73: $e0 $20
    ldh [$30], a                                  ; $5a75: $e0 $30
    ldh a, [rNR10]                                ; $5a77: $f0 $10
    ldh a, [$90]                                  ; $5a79: $f0 $90
    ldh a, [$b0]                                  ; $5a7b: $f0 $b0
    ldh a, [$88]                                  ; $5a7d: $f0 $88
    ld hl, sp-$09                                 ; $5a7f: $f8 $f7
    rst $38                                       ; $5a81: $ff
    sub a                                         ; $5a82: $97
    rst $38                                       ; $5a83: $ff
    ld a, e                                       ; $5a84: $7b
    ld a, a                                       ; $5a85: $7f
    rla                                           ; $5a86: $17
    rra                                           ; $5a87: $1f
    cpl                                           ; $5a88: $2f
    ccf                                           ; $5a89: $3f
    cpl                                           ; $5a8a: $2f
    ccf                                           ; $5a8b: $3f
    ld e, a                                       ; $5a8c: $5f
    ld a, a                                       ; $5a8d: $7f
    ld e, a                                       ; $5a8e: $5f
    ld a, a                                       ; $5a8f: $7f
    ld e, [hl]                                    ; $5a90: $5e
    ld a, a                                       ; $5a91: $7f
    cpl                                           ; $5a92: $2f
    inc bc                                        ; $5a93: $03
    ccf                                           ; $5a94: $3f
    ld [bc], a                                    ; $5a95: $02
    ld a, $0c                                     ; $5a96: $3e $0c
    nop                                           ; $5a98: $00
    add a                                         ; $5a99: $87
    jr nz, jr_0e4_5acc                            ; $5a9a: $20 $30

    jr nz, jr_0e4_5ace                            ; $5a9c: $20 $30

    jr nz, jr_0e4_5ad0                            ; $5a9e: $20 $30

    jr nz, jr_0e4_5aa9                            ; $5aa0: $20 $07

    jr nc, @-$7d                                  ; $5aa2: $30 $81

    db $10                                        ; $5aa4: $10
    inc bc                                        ; $5aa5: $03
    jr nc, jr_0e4_5aaa                            ; $5aa6: $30 $02

    rra                                           ; $5aa8: $1f

jr_0e4_5aa9:
    ld [bc], a                                    ; $5aa9: $02

jr_0e4_5aaa:
    ld c, $06                                     ; $5aaa: $0e $06
    nop                                           ; $5aac: $00
    rst $38                                       ; $5aad: $ff
    rrca                                          ; $5aae: $0f
    dec b                                         ; $5aaf: $05
    ld a, [$f209]                                 ; $5ab0: $fa $09 $f2
    ld bc, $fae3                                  ; $5ab3: $01 $e3 $fa
    db $e4                                        ; $5ab6: $e4
    ld [bc], a                                    ; $5ab7: $02
    db $ed                                        ; $5ab8: $ed
    ld b, $f3                                     ; $5ab9: $06 $f3
    ld a, [$00f3]                                 ; $5abb: $fa $f3 $00
    ld [bc], a                                    ; $5abe: $02
    rrca                                          ; $5abf: $0f
    sbc [hl]                                      ; $5ac0: $9e
    rra                                           ; $5ac1: $1f
    inc d                                         ; $5ac2: $14
    ccf                                           ; $5ac3: $3f
    jr z, jr_0e4_5b03                             ; $5ac4: $28 $3d

    inc hl                                        ; $5ac6: $23
    cpl                                           ; $5ac7: $2f
    ld sp, $427f                                  ; $5ac8: $31 $7f $42
    ccf                                           ; $5acb: $3f

jr_0e4_5acc:
    jr nz, jr_0e4_5b0b                            ; $5acc: $20 $3d

jr_0e4_5ace:
    ld [hl+], a                                   ; $5ace: $22
    rra                                           ; $5acf: $1f

jr_0e4_5ad0:
    db $10                                        ; $5ad0: $10
    rrca                                          ; $5ad1: $0f
    dec c                                         ; $5ad2: $0d
    rla                                           ; $5ad3: $17
    rra                                           ; $5ad4: $1f
    inc [hl]                                      ; $5ad5: $34
    ccf                                           ; $5ad6: $3f
    inc [hl]                                      ; $5ad7: $34
    ccf                                           ; $5ad8: $3f
    ld d, [hl]                                    ; $5ad9: $56
    ld a, l                                       ; $5ada: $7d
    ld [hl], h                                    ; $5adb: $74
    ld a, a                                       ; $5adc: $7f
    or $dd                                        ; $5add: $f6 $dd
    ld [bc], a                                    ; $5adf: $02
    add b                                         ; $5ae0: $80
    adc [hl]                                      ; $5ae1: $8e
    ret nz                                        ; $5ae2: $c0

    ld b, b                                       ; $5ae3: $40
    ret nz                                        ; $5ae4: $c0

    ld b, b                                       ; $5ae5: $40
    ldh [$a0], a                                  ; $5ae6: $e0 $a0
    ldh a, [rNR10]                                ; $5ae8: $f0 $10
    ldh [rNR41], a                                ; $5aea: $e0 $20
    ret nz                                        ; $5aec: $c0

    ld b, b                                       ; $5aed: $40
    ldh [rNR41], a                                ; $5aee: $e0 $20
    ld [bc], a                                    ; $5af0: $02
    ldh [$8e], a                                  ; $5af1: $e0 $8e
    sub b                                         ; $5af3: $90
    ldh a, [$89]                                  ; $5af4: $f0 $89
    ld sp, hl                                     ; $5af6: $f9
    xor a                                         ; $5af7: $af
    cp $ab                                        ; $5af8: $fe $ab
    cp $bb                                        ; $5afa: $fe $bb
    rst $38                                       ; $5afc: $ff
    cp e                                          ; $5afd: $bb
    rst $38                                       ; $5afe: $ff
    and h                                         ; $5aff: $a4
    rst $38                                       ; $5b00: $ff
    ld [bc], a                                    ; $5b01: $02
    inc c                                         ; $5b02: $0c

jr_0e4_5b03:
    adc b                                         ; $5b03: $88
    ld b, $0a                                     ; $5b04: $06 $0a
    rrca                                          ; $5b06: $0f
    dec c                                         ; $5b07: $0d
    ld [bc], a                                    ; $5b08: $02
    ld c, $0c                                     ; $5b09: $0e $0c

jr_0e4_5b0b:
    inc b                                         ; $5b0b: $04
    inc b                                         ; $5b0c: $04
    ld [$7082], sp                                ; $5b0d: $08 $82 $70
    ldh a, [rSC]                                  ; $5b10: $f0 $02
    add b                                         ; $5b12: $80
    inc c                                         ; $5b13: $0c
    nop                                           ; $5b14: $00
    ld [bc], a                                    ; $5b15: $02
    add b                                         ; $5b16: $80
    sbc b                                         ; $5b17: $98
    db $f4                                        ; $5b18: $f4
    cp a                                          ; $5b19: $bf
    jp c, $efaf                                   ; $5b1a: $da $af $ef

    rst $38                                       ; $5b1d: $ff
    sub a                                         ; $5b1e: $97
    rst $38                                       ; $5b1f: $ff
    ld [hl], a                                    ; $5b20: $77
    ld a, a                                       ; $5b21: $7f
    rla                                           ; $5b22: $17
    rra                                           ; $5b23: $1f
    rla                                           ; $5b24: $17
    rra                                           ; $5b25: $1f
    daa                                           ; $5b26: $27
    ccf                                           ; $5b27: $3f
    cpl                                           ; $5b28: $2f
    ccf                                           ; $5b29: $3f
    cpl                                           ; $5b2a: $2f
    ccf                                           ; $5b2b: $3f
    ld l, $3f                                     ; $5b2c: $2e $3f
    cpl                                           ; $5b2e: $2f
    ccf                                           ; $5b2f: $3f
    ld [bc], a                                    ; $5b30: $02
    ld a, a                                       ; $5b31: $7f
    ld [bc], a                                    ; $5b32: $02
    ld a, h                                       ; $5b33: $7c
    ld b, $00                                     ; $5b34: $06 $00
    sbc b                                         ; $5b36: $98
    inc l                                         ; $5b37: $2c
    inc a                                         ; $5b38: $3c
    inc h                                         ; $5b39: $24
    inc a                                         ; $5b3a: $3c
    inc h                                         ; $5b3b: $24
    inc a                                         ; $5b3c: $3c
    inc h                                         ; $5b3d: $24
    inc a                                         ; $5b3e: $3c
    inc l                                         ; $5b3f: $2c
    inc a                                         ; $5b40: $3c
    inc l                                         ; $5b41: $2c
    inc a                                         ; $5b42: $3c
    inc h                                         ; $5b43: $24
    inc a                                         ; $5b44: $3c
    inc h                                         ; $5b45: $24
    inc a                                         ; $5b46: $3c
    jr nz, jr_0e4_5b85                            ; $5b47: $20 $3c

    ld [hl+], a                                   ; $5b49: $22
    ld a, $2d                                     ; $5b4a: $3e $2d
    ccf                                           ; $5b4c: $3f
    ld sp, $023f                                  ; $5b4d: $31 $3f $02
    ld a, $02                                     ; $5b50: $3e $02
    inc e                                         ; $5b52: $1c
    ld [bc], a                                    ; $5b53: $02
    nop                                           ; $5b54: $00
    rst $38                                       ; $5b55: $ff
    ld de, $fa06                                  ; $5b56: $11 $06 $fa
    add hl, bc                                    ; $5b59: $09
    ld a, [c]                                     ; $5b5a: $f2
    ld bc, $f7e3                                  ; $5b5b: $01 $e3 $f7
    db $e3                                        ; $5b5e: $e3
    rst $38                                       ; $5b5f: $ff
    db $eb                                        ; $5b60: $eb
    dec b                                         ; $5b61: $05
    di                                            ; $5b62: $f3
    rst $30                                       ; $5b63: $f7
    di                                            ; $5b64: $f3
    rst $38                                       ; $5b65: $ff
    di                                            ; $5b66: $f3
    nop                                           ; $5b67: $00
    ld [bc], a                                    ; $5b68: $02
    ld bc, $0792                                  ; $5b69: $01 $92 $07
    ld b, $0d                                     ; $5b6c: $06 $0d
    ld a, [bc]                                    ; $5b6e: $0a
    rra                                           ; $5b6f: $1f
    inc d                                         ; $5b70: $14
    rra                                           ; $5b71: $1f
    ld de, $0c0b                                  ; $5b72: $11 $0b $0c
    ld c, $09                                     ; $5b75: $0e $09
    ld e, $11                                     ; $5b77: $1e $11
    rrca                                          ; $5b79: $0f
    ld [$0407], sp                                ; $5b7a: $08 $07 $04
    ld [bc], a                                    ; $5b7d: $02
    inc bc                                        ; $5b7e: $03
    adc d                                         ; $5b7f: $8a
    ld b, $07                                     ; $5b80: $06 $07
    ld b, $07                                     ; $5b82: $06 $07
    ld e, d                                       ; $5b84: $5a

jr_0e4_5b85:
    ld e, a                                       ; $5b85: $5f
    ld a, [$febf]                                 ; $5b86: $fa $bf $fe
    xor a                                         ; $5b89: $af
    ld [bc], a                                    ; $5b8a: $02
    ret nz                                        ; $5b8b: $c0

    sbc [hl]                                      ; $5b8c: $9e
    ldh [rNR41], a                                ; $5b8d: $e0 $20
    ld [hl], b                                    ; $5b8f: $70
    sub b                                         ; $5b90: $90
    ret c                                         ; $5b91: $d8

    add sp, -$04                                  ; $5b92: $e8 $fc

jr_0e4_5b94:
    inc b                                         ; $5b94: $04
    ld hl, sp+$08                                 ; $5b95: $f8 $08
    ldh a, [rNR10]                                ; $5b97: $f0 $10
    ret c                                         ; $5b99: $d8

    jr c, jr_0e4_5b94                             ; $5b9a: $38 $f8

    ld [$7cfc], sp                                ; $5b9c: $08 $fc $7c
    ld a, [c]                                     ; $5b9f: $f2
    cp $d5                                        ; $5ba0: $fe $d5
    rst $38                                       ; $5ba2: $ff
    sub a                                         ; $5ba3: $97
    rst $38                                       ; $5ba4: $ff
    rst $10                                       ; $5ba5: $d7
    cp a                                          ; $5ba6: $bf
    sub [hl]                                      ; $5ba7: $96
    rst $38                                       ; $5ba8: $ff
    sub $bf                                       ; $5ba9: $d6 $bf
    ld [bc], a                                    ; $5bab: $02
    inc b                                         ; $5bac: $04
    adc h                                         ; $5bad: $8c
    ld e, $1a                                     ; $5bae: $1e $1a
    ccf                                           ; $5bb0: $3f
    dec l                                         ; $5bb1: $2d
    rla                                           ; $5bb2: $17
    dec l                                         ; $5bb3: $2d
    ld a, [de]                                    ; $5bb4: $1a
    ld [hl], $1c                                  ; $5bb5: $36 $1c
    inc a                                         ; $5bb7: $3c
    inc h                                         ; $5bb8: $24
    inc a                                         ; $5bb9: $3c
    ld [bc], a                                    ; $5bba: $02
    jr c, jr_0e4_5bbf                             ; $5bbb: $38 $02

    ldh [$0e], a                                  ; $5bbd: $e0 $0e

jr_0e4_5bbf:
    add b                                         ; $5bbf: $80
    sbc b                                         ; $5bc0: $98
    or $df                                        ; $5bc1: $f6 $df
    halt                                          ; $5bc3: $76
    ld a, a                                       ; $5bc4: $7f
    ld c, [hl]                                    ; $5bc5: $4e
    ld a, a                                       ; $5bc6: $7f
    ld a, [hl-]                                   ; $5bc7: $3a
    dec sp                                        ; $5bc8: $3b
    ld [bc], a                                    ; $5bc9: $02
    inc bc                                        ; $5bca: $03
    ld [bc], a                                    ; $5bcb: $02
    inc bc                                        ; $5bcc: $03
    ld [bc], a                                    ; $5bcd: $02
    inc bc                                        ; $5bce: $03
    inc b                                         ; $5bcf: $04
    rlca                                          ; $5bd0: $07
    dec b                                         ; $5bd1: $05
    rlca                                          ; $5bd2: $07
    dec b                                         ; $5bd3: $05
    rlca                                          ; $5bd4: $07
    dec b                                         ; $5bd5: $05
    rlca                                          ; $5bd6: $07
    dec b                                         ; $5bd7: $05
    rlca                                          ; $5bd8: $07
    inc b                                         ; $5bd9: $04
    rrca                                          ; $5bda: $0f
    inc b                                         ; $5bdb: $04
    nop                                           ; $5bdc: $00
    sbc d                                         ; $5bdd: $9a
    sub h                                         ; $5bde: $94
    db $fc                                        ; $5bdf: $fc
    ld d, h                                       ; $5be0: $54
    db $fc                                        ; $5be1: $fc
    ldh a, [$fc]                                  ; $5be2: $f0 $fc
    ldh a, [$fc]                                  ; $5be4: $f0 $fc
    ldh a, [$fc]                                  ; $5be6: $f0 $fc
    db $f4                                        ; $5be8: $f4
    db $fc                                        ; $5be9: $fc
    db $f4                                        ; $5bea: $f4
    db $fc                                        ; $5beb: $fc
    ldh a, [$fc]                                  ; $5bec: $f0 $fc
    ld a, [c]                                     ; $5bee: $f2
    cp $f1                                        ; $5bef: $fe $f1
    rst $38                                       ; $5bf1: $ff
    pop de                                        ; $5bf2: $d1
    rst $38                                       ; $5bf3: $ff
    or $ff                                        ; $5bf4: $f6 $ff
    ld hl, sp-$01                                 ; $5bf6: $f8 $ff
    ld [bc], a                                    ; $5bf8: $02
    sbc a                                         ; $5bf9: $9f
    ld [bc], a                                    ; $5bfa: $02
    ld c, $18                                     ; $5bfb: $0e $18
    nop                                           ; $5bfd: $00
    inc b                                         ; $5bfe: $04
    ld bc, $0006                                  ; $5bff: $01 $06 $00
    rst $38                                       ; $5c02: $ff
    rrca                                          ; $5c03: $0f
    dec b                                         ; $5c04: $05
    ld a, [$f209]                                 ; $5c05: $fa $09 $f2
    ld bc, $f6e4                                  ; $5c08: $01 $e4 $f6
    db $e3                                        ; $5c0b: $e3
    cp $ea                                        ; $5c0c: $fe $ea
    dec b                                         ; $5c0e: $05
    di                                            ; $5c0f: $f3
    ld hl, sp-$0d                                 ; $5c10: $f8 $f3
    nop                                           ; $5c12: $00
    ld [bc], a                                    ; $5c13: $02
    inc bc                                        ; $5c14: $03
    sub b                                         ; $5c15: $90
    ld b, $05                                     ; $5c16: $06 $05
    rrca                                          ; $5c18: $0f
    ld a, [bc]                                    ; $5c19: $0a
    rrca                                          ; $5c1a: $0f
    ld [$0605], sp                                ; $5c1b: $08 $05 $06
    rlca                                          ; $5c1e: $07
    inc b                                         ; $5c1f: $04
    rrca                                          ; $5c20: $0f
    ld [$0407], sp                                ; $5c21: $08 $07 $04
    inc bc                                        ; $5c24: $03
    ld [bc], a                                    ; $5c25: $02
    ld [bc], a                                    ; $5c26: $02
    ld bc, $0302                                  ; $5c27: $01 $02 $03
    ld [bc], a                                    ; $5c2a: $02
    ld d, a                                       ; $5c2b: $57
    adc b                                         ; $5c2c: $88
    db $fd                                        ; $5c2d: $fd
    xor a                                         ; $5c2e: $af
    push af                                       ; $5c2f: $f5
    cp a                                          ; $5c30: $bf
    ld a, e                                       ; $5c31: $7b
    ld c, a                                       ; $5c32: $4f
    dec sp                                        ; $5c33: $3b
    ccf                                           ; $5c34: $3f
    ld [bc], a                                    ; $5c35: $02
    ldh [$9e], a                                  ; $5c36: $e0 $9e
    ldh a, [rNR10]                                ; $5c38: $f0 $10
    cp b                                          ; $5c3a: $b8
    ld c, b                                       ; $5c3b: $48
    db $ec                                        ; $5c3c: $ec
    ld [hl], h                                    ; $5c3d: $74
    cp $82                                        ; $5c3e: $fe $82
    db $fc                                        ; $5c40: $fc
    inc b                                         ; $5c41: $04
    ld a, b                                       ; $5c42: $78
    adc b                                         ; $5c43: $88
    ld l, h                                       ; $5c44: $6c
    sbc h                                         ; $5c45: $9c
    db $fc                                        ; $5c46: $fc
    inc b                                         ; $5c47: $04
    cp $3e                                        ; $5c48: $fe $3e
    ld sp, hl                                     ; $5c4a: $f9
    rst $38                                       ; $5c4b: $ff
    ld l, d                                       ; $5c4c: $6a
    rst $38                                       ; $5c4d: $ff
    ld c, e                                       ; $5c4e: $4b
    rst $38                                       ; $5c4f: $ff
    ld l, e                                       ; $5c50: $6b
    rst $18                                       ; $5c51: $df
    ld c, e                                       ; $5c52: $4b
    rst $38                                       ; $5c53: $ff
    ld l, e                                       ; $5c54: $6b
    rst $18                                       ; $5c55: $df
    ld [bc], a                                    ; $5c56: $02
    inc b                                         ; $5c57: $04
    adc [hl]                                      ; $5c58: $8e
    ld e, $1a                                     ; $5c59: $1e $1a
    ccf                                           ; $5c5b: $3f
    dec l                                         ; $5c5c: $2d
    ld d, a                                       ; $5c5d: $57
    ld l, l                                       ; $5c5e: $6d
    ld e, d                                       ; $5c5f: $5a
    halt                                          ; $5c60: $76
    ld e, h                                       ; $5c61: $5c
    ld a, h                                       ; $5c62: $7c
    ld h, h                                       ; $5c63: $64
    ld a, h                                       ; $5c64: $7c
    jr c, jr_0e4_5cdf                             ; $5c65: $38 $78

    ld [bc], a                                    ; $5c67: $02
    ld h, b                                       ; $5c68: $60
    ld c, $80                                     ; $5c69: $0e $80
    sbc b                                         ; $5c6b: $98
    ld bc, $9c03                                  ; $5c6c: $01 $03 $9c
    rst $38                                       ; $5c6f: $ff
    ld a, l                                       ; $5c70: $7d
    ld a, a                                       ; $5c71: $7f
    dec b                                         ; $5c72: $05
    rlca                                          ; $5c73: $07
    dec b                                         ; $5c74: $05
    rlca                                          ; $5c75: $07
    dec b                                         ; $5c76: $05
    rlca                                          ; $5c77: $07
    dec b                                         ; $5c78: $05
    rlca                                          ; $5c79: $07
    add hl, bc                                    ; $5c7a: $09
    rrca                                          ; $5c7b: $0f
    dec bc                                        ; $5c7c: $0b
    rrca                                          ; $5c7d: $0f
    dec bc                                        ; $5c7e: $0b
    rrca                                          ; $5c7f: $0f
    dec bc                                        ; $5c80: $0b
    rrca                                          ; $5c81: $0f
    dec bc                                        ; $5c82: $0b

jr_0e4_5c83:
    rrca                                          ; $5c83: $0f
    inc b                                         ; $5c84: $04
    rra                                           ; $5c85: $1f
    inc b                                         ; $5c86: $04
    nop                                           ; $5c87: $00
    sbc d                                         ; $5c88: $9a
    jr z, jr_0e4_5c83                             ; $5c89: $28 $f8

    xor b                                         ; $5c8b: $a8
    ld hl, sp-$20                                 ; $5c8c: $f8 $e0
    ld hl, sp-$20                                 ; $5c8e: $f8 $e0
    ld hl, sp-$20                                 ; $5c90: $f8 $e0
    ld hl, sp-$18                                 ; $5c92: $f8 $e8
    ld hl, sp-$18                                 ; $5c94: $f8 $e8
    ld hl, sp-$1c                                 ; $5c96: $f8 $e4
    db $fc                                        ; $5c98: $fc
    db $e4                                        ; $5c99: $e4
    db $fc                                        ; $5c9a: $fc
    ld [c], a                                     ; $5c9b: $e2
    cp $a2                                        ; $5c9c: $fe $a2
    cp $ed                                        ; $5c9e: $fe $ed
    rst $38                                       ; $5ca0: $ff
    pop af                                        ; $5ca1: $f1
    rst $38                                       ; $5ca2: $ff
    ld [bc], a                                    ; $5ca3: $02
    ld a, $02                                     ; $5ca4: $3e $02
    inc e                                         ; $5ca6: $1c
    ld [bc], a                                    ; $5ca7: $02
    nop                                           ; $5ca8: $00
    rst $38                                       ; $5ca9: $ff
    rrca                                          ; $5caa: $0f
    dec b                                         ; $5cab: $05
    ld a, [$f209]                                 ; $5cac: $fa $09 $f2
    ld bc, $f9e3                                  ; $5caf: $01 $e3 $f9
    db $e3                                        ; $5cb2: $e3
    ld bc, $09ea                                  ; $5cb3: $01 $ea $09
    di                                            ; $5cb6: $f3
    ld sp, hl                                     ; $5cb7: $f9
    di                                            ; $5cb8: $f3
    nop                                           ; $5cb9: $00
    ld [bc], a                                    ; $5cba: $02
    ld bc, $0792                                  ; $5cbb: $01 $92 $07
    ld b, $0d                                     ; $5cbe: $06 $0d
    ld a, [bc]                                    ; $5cc0: $0a
    rra                                           ; $5cc1: $1f
    inc d                                         ; $5cc2: $14
    rra                                           ; $5cc3: $1f
    ld de, $0c0b                                  ; $5cc4: $11 $0b $0c
    ld c, $09                                     ; $5cc7: $0e $09
    ld e, $11                                     ; $5cc9: $1e $11
    rrca                                          ; $5ccb: $0f
    ld [$0407], sp                                ; $5ccc: $08 $07 $04
    ld [bc], a                                    ; $5ccf: $02
    rlca                                          ; $5cd0: $07
    adc d                                         ; $5cd1: $8a
    dec c                                         ; $5cd2: $0d
    rrca                                          ; $5cd3: $0f
    dec c                                         ; $5cd4: $0d
    rrca                                          ; $5cd5: $0f
    dec d                                         ; $5cd6: $15
    rra                                           ; $5cd7: $1f
    ld [hl], l                                    ; $5cd8: $75
    ld a, a                                       ; $5cd9: $7f
    sbc l                                         ; $5cda: $9d
    rst $38                                       ; $5cdb: $ff
    ld [bc], a                                    ; $5cdc: $02
    ret nz                                        ; $5cdd: $c0

    sbc [hl]                                      ; $5cde: $9e

jr_0e4_5cdf:
    ldh [rNR41], a                                ; $5cdf: $e0 $20
    ld [hl], b                                    ; $5ce1: $70
    sub b                                         ; $5ce2: $90
    ret c                                         ; $5ce3: $d8

    add sp, -$04                                  ; $5ce4: $e8 $fc

jr_0e4_5ce6:
    inc b                                         ; $5ce6: $04
    ld hl, sp+$08                                 ; $5ce7: $f8 $08
    ldh a, [rNR10]                                ; $5ce9: $f0 $10
    ret c                                         ; $5ceb: $d8

    jr c, jr_0e4_5ce6                             ; $5cec: $38 $f8

    ld [$7cfc], sp                                ; $5cee: $08 $fc $7c
    ld [$43fe], a                                 ; $5cf1: $ea $fe $43
    rst $38                                       ; $5cf4: $ff
    ld c, h                                       ; $5cf5: $4c
    rst $38                                       ; $5cf6: $ff
    call z, Call_0e4_4e7f                         ; $5cf7: $cc $7f $4e
    rst $38                                       ; $5cfa: $ff
    rst $08                                       ; $5cfb: $cf
    ld a, a                                       ; $5cfc: $7f
    ld [bc], a                                    ; $5cfd: $02
    inc c                                         ; $5cfe: $0c
    adc [hl]                                      ; $5cff: $8e
    ld d, $1a                                     ; $5d00: $16 $1a
    ld a, a                                       ; $5d02: $7f
    ld l, l                                       ; $5d03: $6d
    or d                                          ; $5d04: $b2
    xor $bc                                       ; $5d05: $ee $bc
    db $f4                                        ; $5d07: $f4
    cp b                                          ; $5d08: $b8
    ld hl, sp-$70                                 ; $5d09: $f8 $90
    ldh a, [$60]                                  ; $5d0b: $f0 $60
    ldh [rSC], a                                  ; $5d0d: $e0 $02
    add b                                         ; $5d0f: $80
    ld c, $00                                     ; $5d10: $0e $00
    sub l                                         ; $5d12: $95
    db $fd                                        ; $5d13: $fd
    rst $08                                       ; $5d14: $cf
    db $dd                                        ; $5d15: $dd
    cp a                                          ; $5d16: $bf
    db $fd                                        ; $5d17: $fd
    rst $28                                       ; $5d18: $ef
    ld e, a                                       ; $5d19: $5f
    ld a, a                                       ; $5d1a: $7f
    dec sp                                        ; $5d1b: $3b
    ccf                                           ; $5d1c: $3f
    dec bc                                        ; $5d1d: $0b
    rrca                                          ; $5d1e: $0f
    dec bc                                        ; $5d1f: $0b
    rrca                                          ; $5d20: $0f
    dec bc                                        ; $5d21: $0b
    rrca                                          ; $5d22: $0f
    rla                                           ; $5d23: $17
    rra                                           ; $5d24: $1f
    rla                                           ; $5d25: $17
    rra                                           ; $5d26: $1f
    rla                                           ; $5d27: $17
    inc bc                                        ; $5d28: $03
    rra                                           ; $5d29: $1f
    ld [bc], a                                    ; $5d2a: $02
    ccf                                           ; $5d2b: $3f
    ld [bc], a                                    ; $5d2c: $02
    inc a                                         ; $5d2d: $3c
    inc b                                         ; $5d2e: $04
    nop                                           ; $5d2f: $00
    sbc d                                         ; $5d30: $9a
    ld h, $7e                                     ; $5d31: $26 $7e

jr_0e4_5d33:
    ld [hl+], a                                   ; $5d33: $22
    ld a, [hl]                                    ; $5d34: $7e
    ld h, [hl]                                    ; $5d35: $66
    ld a, [hl]                                    ; $5d36: $7e
    ld h, [hl]                                    ; $5d37: $66
    ld a, [hl]                                    ; $5d38: $7e
    ld h, d                                       ; $5d39: $62
    ld a, [hl]                                    ; $5d3a: $7e
    ld h, d                                       ; $5d3b: $62
    ld a, [hl]                                    ; $5d3c: $7e
    ld [hl], d                                    ; $5d3d: $72
    ld a, [hl]                                    ; $5d3e: $7e
    ld [hl], d                                    ; $5d3f: $72
    ld a, [hl]                                    ; $5d40: $7e
    ld sp, $537f                                  ; $5d41: $31 $7f $53
    ld a, a                                       ; $5d44: $7f
    ld [de], a                                    ; $5d45: $12
    ld a, [hl]                                    ; $5d46: $7e
    ld [hl], $7e                                  ; $5d47: $36 $7e
    ld [hl], c                                    ; $5d49: $71
    ld a, a                                       ; $5d4a: $7f
    ld [bc], a                                    ; $5d4b: $02
    ld a, $02                                     ; $5d4c: $3e $02
    inc a                                         ; $5d4e: $3c
    ld [bc], a                                    ; $5d4f: $02
    nop                                           ; $5d50: $00
    rst $38                                       ; $5d51: $ff
    rrca                                          ; $5d52: $0f
    dec b                                         ; $5d53: $05
    ld a, [$f209]                                 ; $5d54: $fa $09 $f2
    ld bc, $fae3                                  ; $5d57: $01 $e3 $fa
    db $e3                                        ; $5d5a: $e3
    ld [bc], a                                    ; $5d5b: $02
    rst $20                                       ; $5d5c: $e7
    ld a, [bc]                                    ; $5d5d: $0a
    di                                            ; $5d5e: $f3
    ld hl, sp-$0d                                 ; $5d5f: $f8 $f3
    rst $38                                       ; $5d61: $ff
    ld [bc], a                                    ; $5d62: $02
    rlca                                          ; $5d63: $07
    sub d                                         ; $5d64: $92
    rrca                                          ; $5d65: $0f
    ld a, [bc]                                    ; $5d66: $0a
    rra                                           ; $5d67: $1f
    inc d                                         ; $5d68: $14
    ld e, $11                                     ; $5d69: $1e $11
    rla                                           ; $5d6b: $17
    jr jr_0e4_5dad                                ; $5d6c: $18 $3f

    ld hl, $101f                                  ; $5d6e: $21 $1f $10
    dec e                                         ; $5d71: $1d
    ld [de], a                                    ; $5d72: $12
    rrca                                          ; $5d73: $0f
    ld [$0607], sp                                ; $5d74: $08 $07 $06
    ld [bc], a                                    ; $5d77: $02
    rrca                                          ; $5d78: $0f
    adc d                                         ; $5d79: $8a
    ld a, [de]                                    ; $5d7a: $1a
    rra                                           ; $5d7b: $1f
    ld a, [hl+]                                   ; $5d7c: $2a
    ccf                                           ; $5d7d: $3f
    ld [hl], $3d                                  ; $5d7e: $36 $3d
    ld d, h                                       ; $5d80: $54
    ld a, a                                       ; $5d81: $7f
    or [hl]                                       ; $5d82: $b6
    db $fd                                        ; $5d83: $fd
    ld [bc], a                                    ; $5d84: $02
    add b                                         ; $5d85: $80
    adc h                                         ; $5d86: $8c
    ret nz                                        ; $5d87: $c0

    ld b, b                                       ; $5d88: $40
    ldh [rNR41], a                                ; $5d89: $e0 $20
    ld h, b                                       ; $5d8b: $60
    and b                                         ; $5d8c: $a0
    ldh a, [$d0]                                  ; $5d8d: $f0 $d0
    ld hl, sp+$08                                 ; $5d8f: $f8 $08
    or b                                          ; $5d91: $b0
    ld d, b                                       ; $5d92: $50
    ld [bc], a                                    ; $5d93: $02
    ldh [$90], a                                  ; $5d94: $e0 $90
    pop de                                        ; $5d96: $d1
    ld sp, $fbfa                                  ; $5d97: $31 $fa $fb
    sub [hl]                                      ; $5d9a: $96
    rst $38                                       ; $5d9b: $ff
    adc c                                         ; $5d9c: $89
    rst $38                                       ; $5d9d: $ff
    sbc b                                         ; $5d9e: $98
    rst $38                                       ; $5d9f: $ff
    sbc a                                         ; $5da0: $9f
    rst $38                                       ; $5da1: $ff
    sub b                                         ; $5da2: $90
    ldh a, [$90]                                  ; $5da3: $f0 $90
    ldh a, [rSC]                                  ; $5da5: $f0 $02
    jr jr_0e4_5d33                                ; $5da7: $18 $8a

    ld a, $26                                     ; $5da9: $3e $26
    ld a, e                                       ; $5dab: $7b
    ld a, l                                       ; $5dac: $7d

jr_0e4_5dad:
    adc $be                                       ; $5dad: $ce $be
    ld a, b                                       ; $5daf: $78
    ret z                                         ; $5db0: $c8

    ldh a, [$b0]                                  ; $5db1: $f0 $b0
    ld [bc], a                                    ; $5db3: $02
    ldh [$82], a                                  ; $5db4: $e0 $82
    jr nz, @-$1e                                  ; $5db6: $20 $e0

    ld [bc], a                                    ; $5db8: $02
    ret nz                                        ; $5db9: $c0

    ld c, $00                                     ; $5dba: $0e $00
    sub h                                         ; $5dbc: $94
    ld a, l                                       ; $5dbd: $7d
    ld a, a                                       ; $5dbe: $7f
    db $dd                                        ; $5dbf: $dd
    rst $38                                       ; $5dc0: $ff
    db $ed                                        ; $5dc1: $ed
    sbc a                                         ; $5dc2: $9f
    db $eb                                        ; $5dc3: $eb
    rst $18                                       ; $5dc4: $df
    ld e, e                                       ; $5dc5: $5b
    ld a, a                                       ; $5dc6: $7f
    dec sp                                        ; $5dc7: $3b
    ccf                                           ; $5dc8: $3f
    inc de                                        ; $5dc9: $13
    rra                                           ; $5dca: $1f
    ld d, $1f                                     ; $5dcb: $16 $1f
    cpl                                           ; $5dcd: $2f
    ccf                                           ; $5dce: $3f
    ld l, $3f                                     ; $5dcf: $2e $3f
    ld [bc], a                                    ; $5dd1: $02
    rra                                           ; $5dd2: $1f
    ld [bc], a                                    ; $5dd3: $02
    ccf                                           ; $5dd4: $3f
    ld [bc], a                                    ; $5dd5: $02
    jr jr_0e4_5dde                                ; $5dd6: $18 $06

    nop                                           ; $5dd8: $00
    sbc d                                         ; $5dd9: $9a
    ld [de], a                                    ; $5dda: $12
    ld a, [hl]                                    ; $5ddb: $7e
    ld d, d                                       ; $5ddc: $52
    ld a, [hl]                                    ; $5ddd: $7e

jr_0e4_5dde:
    ld [hl], d                                    ; $5dde: $72
    ld a, [hl]                                    ; $5ddf: $7e
    halt                                          ; $5de0: $76
    ld a, [hl]                                    ; $5de1: $7e
    halt                                          ; $5de2: $76
    ld a, [hl]                                    ; $5de3: $7e
    ld [hl], d                                    ; $5de4: $72
    ld a, [hl]                                    ; $5de5: $7e
    inc sp                                        ; $5de6: $33
    ld a, a                                       ; $5de7: $7f
    dec sp                                        ; $5de8: $3b
    ld a, a                                       ; $5de9: $7f
    add hl, de                                    ; $5dea: $19
    ld a, a                                       ; $5deb: $7f
    add hl, de                                    ; $5dec: $19
    ld a, a                                       ; $5ded: $7f
    add hl, sp                                    ; $5dee: $39
    ld a, a                                       ; $5def: $7f
    ld a, [hl-]                                   ; $5df0: $3a
    ld a, [hl]                                    ; $5df1: $7e
    ld [hl], c                                    ; $5df2: $71
    ld a, a                                       ; $5df3: $7f
    ld [bc], a                                    ; $5df4: $02
    ld a, [hl]                                    ; $5df5: $7e
    ld [bc], a                                    ; $5df6: $02
    jr c, jr_0e4_5dfb                             ; $5df7: $38 $02

    nop                                           ; $5df9: $00
    rst $38                                       ; $5dfa: $ff

jr_0e4_5dfb:
    ld de, $fa06                                  ; $5dfb: $11 $06 $fa
    add hl, bc                                    ; $5dfe: $09
    ld a, [c]                                     ; $5dff: $f2
    ld bc, $f9e3                                  ; $5e00: $01 $e3 $f9
    db $e3                                        ; $5e03: $e3
    ld bc, $09e9                                  ; $5e04: $01 $e9 $09
    ld [$f30b], a                                 ; $5e07: $ea $0b $f3
    ld hl, sp-$0d                                 ; $5e0a: $f8 $f3
    db $fd                                        ; $5e0c: $fd
    ld [bc], a                                    ; $5e0d: $02
    inc bc                                        ; $5e0e: $03
    sub b                                         ; $5e0f: $90
    rlca                                          ; $5e10: $07
    dec b                                         ; $5e11: $05
    rrca                                          ; $5e12: $0f
    ld a, [bc]                                    ; $5e13: $0a
    rrca                                          ; $5e14: $0f
    ld [$0c0b], sp                                ; $5e15: $08 $0b $0c
    rra                                           ; $5e18: $1f
    db $10                                        ; $5e19: $10
    rrca                                          ; $5e1a: $0f
    ld [$090e], sp                                ; $5e1b: $08 $0e $09
    rlca                                          ; $5e1e: $07
    inc b                                         ; $5e1f: $04
    ld [bc], a                                    ; $5e20: $02
    inc bc                                        ; $5e21: $03
    ld [bc], a                                    ; $5e22: $02
    rlca                                          ; $5e23: $07
    adc d                                         ; $5e24: $8a
    ld a, [bc]                                    ; $5e25: $0a
    rrca                                          ; $5e26: $0f
    ld d, $1d                                     ; $5e27: $16 $1d
    inc d                                         ; $5e29: $14
    rra                                           ; $5e2a: $1f
    scf                                           ; $5e2b: $37
    dec a                                         ; $5e2c: $3d
    push de                                       ; $5e2d: $d5
    rst $38                                       ; $5e2e: $ff

jr_0e4_5e2f:
    ld [bc], a                                    ; $5e2f: $02
    ret nz                                        ; $5e30: $c0

    sbc [hl]                                      ; $5e31: $9e
    ldh [rNR41], a                                ; $5e32: $e0 $20
    ldh a, [rNR10]                                ; $5e34: $f0 $10
    jr nc, @-$2e                                  ; $5e36: $30 $d0

    ld hl, sp+$68                                 ; $5e38: $f8 $68
    db $fc                                        ; $5e3a: $fc
    add h                                         ; $5e3b: $84
    ret c                                         ; $5e3c: $d8

    jr z, jr_0e4_5e2f                             ; $5e3d: $28 $f0

    ld [hl], b                                    ; $5e3f: $70
    ldh a, [rNR10]                                ; $5e40: $f0 $10
    db $fc                                        ; $5e42: $fc
    ld a, h                                       ; $5e43: $7c
    rst $00                                       ; $5e44: $c7
    rst $38                                       ; $5e45: $ff
    adc c                                         ; $5e46: $89
    rst $38                                       ; $5e47: $ff
    sbc l                                         ; $5e48: $9d
    rst $38                                       ; $5e49: $ff
    adc a                                         ; $5e4a: $8f
    rst $38                                       ; $5e4b: $ff
    ld [$18f8], sp                                ; $5e4c: $08 $f8 $18
    ld hl, sp+$02                                 ; $5e4f: $f8 $02
    ld b, $8c                                     ; $5e51: $06 $8c
    rrca                                          ; $5e53: $0f
    add hl, bc                                    ; $5e54: $09
    ld e, $1f                                     ; $5e55: $1e $1f
    di                                            ; $5e57: $f3
    rst $28                                       ; $5e58: $ef
    dec a                                         ; $5e59: $3d
    di                                            ; $5e5a: $f3
    ld a, [hl]                                    ; $5e5b: $7e
    xor $30                                       ; $5e5c: $ee $30
    ldh a, [rSC]                                  ; $5e5e: $f0 $02
    ret nz                                        ; $5e60: $c0

    stop                                          ; $5e61: $10 $00
    ld [bc], a                                    ; $5e63: $02
    ld [bc], a                                    ; $5e64: $02
    add d                                         ; $5e65: $82
    inc bc                                        ; $5e66: $03
    ld bc, $0202                                  ; $5e67: $01 $02 $02
    ld a, [de]                                    ; $5e6a: $1a
    nop                                           ; $5e6b: $00
    sbc b                                         ; $5e6c: $98
    call nc, $f6ff                                ; $5e6d: $d4 $ff $f6
    cp a                                          ; $5e70: $bf
    rst $30                                       ; $5e71: $f7
    cp a                                          ; $5e72: $bf
    ld h, a                                       ; $5e73: $67
    ld a, a                                       ; $5e74: $7f
    cpl                                           ; $5e75: $2f
    ccf                                           ; $5e76: $3f
    cpl                                           ; $5e77: $2f
    ccf                                           ; $5e78: $3f
    ld e, a                                       ; $5e79: $5f
    ld a, a                                       ; $5e7a: $7f
    ld e, l                                       ; $5e7b: $5d
    ld a, a                                       ; $5e7c: $7f
    ld e, a                                       ; $5e7d: $5f
    ld a, a                                       ; $5e7e: $7f
    cp a                                          ; $5e7f: $bf
    rst $38                                       ; $5e80: $ff
    ld a, l                                       ; $5e81: $7d
    ld a, a                                       ; $5e82: $7f
    dec a                                         ; $5e83: $3d
    ccf                                           ; $5e84: $3f
    ld [bc], a                                    ; $5e85: $02
    dec sp                                        ; $5e86: $3b
    inc b                                         ; $5e87: $04
    inc bc                                        ; $5e88: $03
    ld [bc], a                                    ; $5e89: $02
    nop                                           ; $5e8a: $00
    sbc d                                         ; $5e8b: $9a
    ld de, $111f                                  ; $5e8c: $11 $1f $11
    rra                                           ; $5e8f: $1f
    ld de, $111f                                  ; $5e90: $11 $1f $11
    rra                                           ; $5e93: $1f
    inc de                                        ; $5e94: $13
    rra                                           ; $5e95: $1f
    inc de                                        ; $5e96: $13
    rra                                           ; $5e97: $1f
    inc de                                        ; $5e98: $13
    rra                                           ; $5e99: $1f
    ld [de], a                                    ; $5e9a: $12
    ld e, $12                                     ; $5e9b: $1e $12
    ld e, $12                                     ; $5e9d: $1e $12
    ld e, $12                                     ; $5e9f: $1e $12
    ld e, $06                                     ; $5ea1: $1e $06
    ld e, $02                                     ; $5ea3: $1e $02
    ld e, $02                                     ; $5ea5: $1e $02
    inc e                                         ; $5ea7: $1c
    ld [bc], a                                    ; $5ea8: $02
    db $10                                        ; $5ea9: $10
    ld [bc], a                                    ; $5eaa: $02
    nop                                           ; $5eab: $00
    rst $38                                       ; $5eac: $ff
    ld de, $fa06                                  ; $5ead: $11 $06 $fa
    add hl, bc                                    ; $5eb0: $09
    ld a, [c]                                     ; $5eb1: $f2
    ld bc, $f9e3                                  ; $5eb2: $01 $e3 $f9
    db $e3                                        ; $5eb5: $e3
    ld bc, $09e9                                  ; $5eb6: $01 $e9 $09
    ld [$f30b], a                                 ; $5eb9: $ea $0b $f3
    rst $30                                       ; $5ebc: $f7
    di                                            ; $5ebd: $f3
    db $fd                                        ; $5ebe: $fd
    ld [bc], a                                    ; $5ebf: $02
    inc bc                                        ; $5ec0: $03
    sub b                                         ; $5ec1: $90
    rlca                                          ; $5ec2: $07
    dec b                                         ; $5ec3: $05
    rrca                                          ; $5ec4: $0f
    ld a, [bc]                                    ; $5ec5: $0a
    rrca                                          ; $5ec6: $0f
    ld [$0c0b], sp                                ; $5ec7: $08 $0b $0c
    rra                                           ; $5eca: $1f
    db $10                                        ; $5ecb: $10
    rrca                                          ; $5ecc: $0f
    ld [$090e], sp                                ; $5ecd: $08 $0e $09
    rlca                                          ; $5ed0: $07
    inc b                                         ; $5ed1: $04
    ld [bc], a                                    ; $5ed2: $02
    inc bc                                        ; $5ed3: $03
    ld [bc], a                                    ; $5ed4: $02
    rlca                                          ; $5ed5: $07
    adc d                                         ; $5ed6: $8a
    ld a, [bc]                                    ; $5ed7: $0a
    rrca                                          ; $5ed8: $0f
    ld d, $1d                                     ; $5ed9: $16 $1d
    inc d                                         ; $5edb: $14
    rra                                           ; $5edc: $1f
    scf                                           ; $5edd: $37
    dec a                                         ; $5ede: $3d
    jp hl                                         ; $5edf: $e9


    rst $38                                       ; $5ee0: $ff

jr_0e4_5ee1:
    ld [bc], a                                    ; $5ee1: $02
    ret nz                                        ; $5ee2: $c0

    sbc [hl]                                      ; $5ee3: $9e
    ldh [rNR41], a                                ; $5ee4: $e0 $20
    ldh a, [rNR10]                                ; $5ee6: $f0 $10
    jr nc, @-$2e                                  ; $5ee8: $30 $d0

    ld hl, sp+$68                                 ; $5eea: $f8 $68
    db $fc                                        ; $5eec: $fc
    add h                                         ; $5eed: $84
    ret c                                         ; $5eee: $d8

    jr z, jr_0e4_5ee1                             ; $5eef: $28 $f0

    ld [hl], b                                    ; $5ef1: $70
    ldh a, [rNR10]                                ; $5ef2: $f0 $10
    db $fc                                        ; $5ef4: $fc
    ld a, h                                       ; $5ef5: $7c
    rst $00                                       ; $5ef6: $c7
    rst $38                                       ; $5ef7: $ff

jr_0e4_5ef8:
    adc c                                         ; $5ef8: $89
    rst $38                                       ; $5ef9: $ff
    sbc l                                         ; $5efa: $9d
    rst $38                                       ; $5efb: $ff
    sbc a                                         ; $5efc: $9f
    rst $38                                       ; $5efd: $ff
    jr jr_0e4_5ef8                                ; $5efe: $18 $f8

    db $10                                        ; $5f00: $10
    ldh a, [rSC]                                  ; $5f01: $f0 $02
    ld b, $8c                                     ; $5f03: $06 $8c
    rrca                                          ; $5f05: $0f
    add hl, bc                                    ; $5f06: $09
    ld e, $1f                                     ; $5f07: $1e $1f
    di                                            ; $5f09: $f3
    rst $28                                       ; $5f0a: $ef
    dec a                                         ; $5f0b: $3d
    di                                            ; $5f0c: $f3
    ld a, [hl]                                    ; $5f0d: $7e
    xor $30                                       ; $5f0e: $ee $30
    ldh a, [rSC]                                  ; $5f10: $f0 $02
    ret nz                                        ; $5f12: $c0

    stop                                          ; $5f13: $10 $00
    ld [bc], a                                    ; $5f15: $02
    ld [bc], a                                    ; $5f16: $02
    add d                                         ; $5f17: $82
    inc bc                                        ; $5f18: $03
    ld bc, $0202                                  ; $5f19: $01 $02 $02
    ld a, [de]                                    ; $5f1c: $1a
    nop                                           ; $5f1d: $00
    sub h                                         ; $5f1e: $94
    ld l, d                                       ; $5f1f: $6a
    ld a, a                                       ; $5f20: $7f
    ld a, e                                       ; $5f21: $7b
    ld e, a                                       ; $5f22: $5f
    ld [hl], a                                    ; $5f23: $77
    ld e, a                                       ; $5f24: $5f
    scf                                           ; $5f25: $37
    ccf                                           ; $5f26: $3f
    daa                                           ; $5f27: $27
    ccf                                           ; $5f28: $3f
    cpl                                           ; $5f29: $2f
    ccf                                           ; $5f2a: $3f
    ld c, a                                       ; $5f2b: $4f
    ld a, a                                       ; $5f2c: $7f
    ld e, a                                       ; $5f2d: $5f
    ld a, a                                       ; $5f2e: $7f
    cp a                                          ; $5f2f: $bf
    rst $38                                       ; $5f30: $ff
    cp a                                          ; $5f31: $bf
    rst $38                                       ; $5f32: $ff
    ld [bc], a                                    ; $5f33: $02
    ld e, a                                       ; $5f34: $5f
    ld [bc], a                                    ; $5f35: $02
    rrca                                          ; $5f36: $0f
    ld [bc], a                                    ; $5f37: $02
    rra                                           ; $5f38: $1f
    ld [bc], a                                    ; $5f39: $02
    rrca                                          ; $5f3a: $0f
    ld [bc], a                                    ; $5f3b: $02
    inc bc                                        ; $5f3c: $03
    ld [bc], a                                    ; $5f3d: $02
    nop                                           ; $5f3e: $00
    sbc d                                         ; $5f3f: $9a
    ld de, $113f                                  ; $5f40: $11 $3f $11
    ccf                                           ; $5f43: $3f
    ld hl, $233f                                  ; $5f44: $21 $3f $23
    ccf                                           ; $5f47: $3f
    inc hl                                        ; $5f48: $23
    ccf                                           ; $5f49: $3f
    ld [hl+], a                                   ; $5f4a: $22
    ld a, $22                                     ; $5f4b: $3e $22
    ld a, $22                                     ; $5f4d: $3e $22
    ld a, $26                                     ; $5f4f: $3e $26
    ld a, $24                                     ; $5f51: $3e $24
    inc a                                         ; $5f53: $3c
    inc h                                         ; $5f54: $24
    inc a                                         ; $5f55: $3c
    inc l                                         ; $5f56: $2c
    inc a                                         ; $5f57: $3c
    ld [$0238], sp                                ; $5f58: $08 $38 $02
    jr nc, jr_0e4_5f5f                            ; $5f5b: $30 $02

    jr nz, jr_0e4_5f61                            ; $5f5d: $20 $02

jr_0e4_5f5f:
    nop                                           ; $5f5f: $00
    rst $38                                       ; $5f60: $ff

jr_0e4_5f61:
    ld de, $fa06                                  ; $5f61: $11 $06 $fa
    add hl, bc                                    ; $5f64: $09
    ld a, [c]                                     ; $5f65: $f2
    ld bc, $f9e4                                  ; $5f66: $01 $e4 $f9
    db $e4                                        ; $5f69: $e4
    ld bc, $09ea                                  ; $5f6a: $01 $ea $09
    db $ed                                        ; $5f6d: $ed

jr_0e4_5f6e:
    ld a, [bc]                                    ; $5f6e: $0a
    db $f4                                        ; $5f6f: $f4
    rst $30                                       ; $5f70: $f7
    db $f4                                        ; $5f71: $f4
    db $fd                                        ; $5f72: $fd
    ld [bc], a                                    ; $5f73: $02
    inc bc                                        ; $5f74: $03
    sub b                                         ; $5f75: $90
    rlca                                          ; $5f76: $07
    dec b                                         ; $5f77: $05
    rrca                                          ; $5f78: $0f
    ld a, [bc]                                    ; $5f79: $0a
    rrca                                          ; $5f7a: $0f
    ld [$0c0b], sp                                ; $5f7b: $08 $0b $0c
    rra                                           ; $5f7e: $1f
    db $10                                        ; $5f7f: $10
    rrca                                          ; $5f80: $0f
    ld [$090e], sp                                ; $5f81: $08 $0e $09
    rlca                                          ; $5f84: $07
    inc b                                         ; $5f85: $04
    ld [bc], a                                    ; $5f86: $02
    rlca                                          ; $5f87: $07
    adc h                                         ; $5f88: $8c
    ld a, [bc]                                    ; $5f89: $0a
    rrca                                          ; $5f8a: $0f
    ld d, $1d                                     ; $5f8b: $16 $1d
    inc d                                         ; $5f8d: $14
    rra                                           ; $5f8e: $1f
    cpl                                           ; $5f8f: $2f
    dec a                                         ; $5f90: $3d
    jp hl                                         ; $5f91: $e9


    rst $38                                       ; $5f92: $ff
    xor c                                         ; $5f93: $a9
    rst $38                                       ; $5f94: $ff

jr_0e4_5f95:
    ld [bc], a                                    ; $5f95: $02
    ret nz                                        ; $5f96: $c0

    sbc [hl]                                      ; $5f97: $9e
    ldh [rNR41], a                                ; $5f98: $e0 $20
    ldh a, [rNR10]                                ; $5f9a: $f0 $10
    jr nc, jr_0e4_5f6e                            ; $5f9c: $30 $d0

    ld hl, sp+$68                                 ; $5f9e: $f8 $68
    db $fc                                        ; $5fa0: $fc
    add h                                         ; $5fa1: $84
    ret c                                         ; $5fa2: $d8

    jr z, jr_0e4_5f95                             ; $5fa3: $28 $f0

    ld [hl], b                                    ; $5fa5: $70
    db $fc                                        ; $5fa6: $fc
    inc e                                         ; $5fa7: $1c
    rst $20                                       ; $5fa8: $e7
    ld a, a                                       ; $5fa9: $7f

jr_0e4_5faa:
    adc c                                         ; $5faa: $89
    rst $38                                       ; $5fab: $ff
    sbc c                                         ; $5fac: $99
    rst $38                                       ; $5fad: $ff
    sbc a                                         ; $5fae: $9f
    rst $38                                       ; $5faf: $ff
    jr jr_0e4_5faa                                ; $5fb0: $18 $f8

    db $10                                        ; $5fb2: $10
    ldh a, [rNR10]                                ; $5fb3: $f0 $10

jr_0e4_5fb5:
    ldh a, [rSC]                                  ; $5fb5: $f0 $02
    inc b                                         ; $5fb7: $04
    adc h                                         ; $5fb8: $8c
    ld c, $0a                                     ; $5fb9: $0e $0a
    rra                                           ; $5fbb: $1f
    dec d                                         ; $5fbc: $15
    rst $30                                       ; $5fbd: $f7
    xor $37                                       ; $5fbe: $ee $37
    ei                                            ; $5fc0: $fb
    ld a, h                                       ; $5fc1: $7c
    db $ec                                        ; $5fc2: $ec
    jr nc, jr_0e4_5fb5                            ; $5fc3: $30 $f0

    ld [bc], a                                    ; $5fc5: $02
    ret nz                                        ; $5fc6: $c0

    stop                                          ; $5fc7: $10 $00
    ld [bc], a                                    ; $5fc9: $02
    ld bc, $001e                                  ; $5fca: $01 $1e $00
    sub d                                         ; $5fcd: $92
    ld a, e                                       ; $5fce: $7b
    ld e, a                                       ; $5fcf: $5f
    ld [hl], a                                    ; $5fd0: $77
    ld a, a                                       ; $5fd1: $7f
    scf                                           ; $5fd2: $37
    ccf                                           ; $5fd3: $3f
    scf                                           ; $5fd4: $37
    ccf                                           ; $5fd5: $3f
    cpl                                           ; $5fd6: $2f
    ccf                                           ; $5fd7: $3f
    ld c, a                                       ; $5fd8: $4f
    ld a, a                                       ; $5fd9: $7f
    sbc a                                         ; $5fda: $9f
    rst $38                                       ; $5fdb: $ff
    xor a                                         ; $5fdc: $af
    rst $38                                       ; $5fdd: $ff
    cp a                                          ; $5fde: $bf
    rst $38                                       ; $5fdf: $ff
    ld [bc], a                                    ; $5fe0: $02
    rst $00                                       ; $5fe1: $c7
    inc b                                         ; $5fe2: $04
    rlca                                          ; $5fe3: $07
    ld [bc], a                                    ; $5fe4: $02
    rrca                                          ; $5fe5: $0f
    ld [bc], a                                    ; $5fe6: $02
    rlca                                          ; $5fe7: $07
    inc b                                         ; $5fe8: $04
    nop                                           ; $5fe9: $00
    sub d                                         ; $5fea: $92
    inc de                                        ; $5feb: $13
    ccf                                           ; $5fec: $3f
    inc hl                                        ; $5fed: $23
    ccf                                           ; $5fee: $3f
    inc hl                                        ; $5fef: $23
    ccf                                           ; $5ff0: $3f
    inc hl                                        ; $5ff1: $23
    ccf                                           ; $5ff2: $3f
    ld hl, $313f                                  ; $5ff3: $21 $3f $31
    ccf                                           ; $5ff6: $3f
    add hl, sp                                    ; $5ff7: $39
    ccf                                           ; $5ff8: $3f
    dec a                                         ; $5ff9: $3d
    ccf                                           ; $5ffa: $3f
    ld a, [hl-]                                   ; $5ffb: $3a
    ld a, $02                                     ; $5ffc: $3e $02
    inc a                                         ; $5ffe: $3c
    ld [bc], a                                    ; $5fff: $02
    jr nc, jr_0e4_6004                            ; $6000: $30 $02

    jr nz, @+$0a                                  ; $6002: $20 $08

jr_0e4_6004:
    nop                                           ; $6004: $00
    rst $38                                       ; $6005: $ff
    ld de, $fa06                                  ; $6006: $11 $06 $fa
    add hl, bc                                    ; $6009: $09
    ld a, [c]                                     ; $600a: $f2
    ld bc, $f3f2                                  ; $600b: $01 $f2 $f3
    db $e3                                        ; $600e: $e3
    ei                                            ; $600f: $fb
    di                                            ; $6010: $f3
    ei                                            ; $6011: $fb
    db $e4                                        ; $6012: $e4
    inc bc                                        ; $6013: $03
    db $f4                                        ; $6014: $f4
    inc bc                                        ; $6015: $03
    ld [$020b], a                                 ; $6016: $ea $0b $02
    inc bc                                        ; $6019: $03
    add h                                         ; $601a: $84
    ld [bc], a                                    ; $601b: $02
    inc bc                                        ; $601c: $03
    rlca                                          ; $601d: $07
    dec b                                         ; $601e: $05
    ld [bc], a                                    ; $601f: $02
    rlca                                          ; $6020: $07
    adc [hl]                                      ; $6021: $8e
    ld [bc], a                                    ; $6022: $02
    inc bc                                        ; $6023: $03
    ld [bc], a                                    ; $6024: $02
    inc bc                                        ; $6025: $03
    dec b                                         ; $6026: $05
    rlca                                          ; $6027: $07
    add hl, bc                                    ; $6028: $09
    rrca                                          ; $6029: $0f
    inc de                                        ; $602a: $13
    rra                                           ; $602b: $1f
    rla                                           ; $602c: $17
    rra                                           ; $602d: $1f
    cpl                                           ; $602e: $2f
    ccf                                           ; $602f: $3f
    ld [bc], a                                    ; $6030: $02
    ld de, $0104                             ; $6031: $11 $04 $01
    inc b                                         ; $6034: $04
    inc bc                                        ; $6035: $03
    ld [bc], a                                    ; $6036: $02
    rrca                                          ; $6037: $0f
    sub d                                         ; $6038: $92
    rra                                           ; $6039: $1f
    inc d                                         ; $603a: $14
    ccf                                           ; $603b: $3f
    jr z, jr_0e4_607a                             ; $603c: $28 $3c

    inc hl                                        ; $603e: $23
    cpl                                           ; $603f: $2f
    ld sp, $427f                                  ; $6040: $31 $7f $42
    ccf                                           ; $6043: $3f
    jr nz, jr_0e4_6081                            ; $6044: $20 $3b

    dec h                                         ; $6046: $25
    rra                                           ; $6047: $1f
    db $10                                        ; $6048: $10
    rrca                                          ; $6049: $0f
    dec c                                         ; $604a: $0d
    ld [bc], a                                    ; $604b: $02
    rra                                           ; $604c: $1f
    sub a                                         ; $604d: $97
    ld a, [hl+]                                   ; $604e: $2a
    ccf                                           ; $604f: $3f
    ld e, d                                       ; $6050: $5a
    ld [hl], a                                    ; $6051: $77
    ld d, d                                       ; $6052: $52
    ld a, a                                       ; $6053: $7f
    cp h                                          ; $6054: $bc
    rst $30                                       ; $6055: $f7
    and h                                         ; $6056: $a4
    rst $38                                       ; $6057: $ff
    and h                                         ; $6058: $a4
    rst $38                                       ; $6059: $ff
    ld [hl], h                                    ; $605a: $74
    rst $38                                       ; $605b: $ff
    ld a, b                                       ; $605c: $78
    rst $38                                       ; $605d: $ff
    ld sp, hl                                     ; $605e: $f9
    rst $38                                       ; $605f: $ff
    ld hl, sp-$01                                 ; $6060: $f8 $ff
    db $fc                                        ; $6062: $fc
    rst $38                                       ; $6063: $ff
    cp $03                                        ; $6064: $fe $03
    rst $38                                       ; $6066: $ff
    add c                                         ; $6067: $81
    rst $30                                       ; $6068: $f7
    inc bc                                        ; $6069: $03
    rst $38                                       ; $606a: $ff
    inc b                                         ; $606b: $04
    rst $28                                       ; $606c: $ef
    ld [bc], a                                    ; $606d: $02
    and $04                                       ; $606e: $e6 $04
    ret nz                                        ; $6070: $c0

    ld [bc], a                                    ; $6071: $02
    nop                                           ; $6072: $00
    ld [bc], a                                    ; $6073: $02
    add b                                         ; $6074: $80
    adc d                                         ; $6075: $8a
    ret nz                                        ; $6076: $c0

    ld b, b                                       ; $6077: $40
    ret nz                                        ; $6078: $c0

    ld b, b                                       ; $6079: $40

jr_0e4_607a:
    ldh [$a0], a                                  ; $607a: $e0 $a0
    ldh a, [rNR10]                                ; $607c: $f0 $10
    ld h, b                                       ; $607e: $60

jr_0e4_607f:
    and b                                         ; $607f: $a0
    inc bc                                        ; $6080: $03

jr_0e4_6081:
    ret nz                                        ; $6081: $c0

    add c                                         ; $6082: $81
    ld b, b                                       ; $6083: $40
    ld [bc], a                                    ; $6084: $02
    ldh a, [$8f]                                  ; $6085: $f0 $8f
    rra                                           ; $6087: $1f
    rst $38                                       ; $6088: $ff
    inc h                                         ; $6089: $24
    rst $38                                       ; $608a: $ff
    ld h, l                                       ; $608b: $65
    rst $38                                       ; $608c: $ff
    ld a, h                                       ; $608d: $7c
    rst $38                                       ; $608e: $ff
    ld h, e                                       ; $608f: $63
    db $e3                                        ; $6090: $e3
    ld b, b                                       ; $6091: $40
    ret nz                                        ; $6092: $c0

    ld b, b                                       ; $6093: $40
    ret nz                                        ; $6094: $c0

    ld b, b                                       ; $6095: $40
    rlca                                          ; $6096: $07
    ret nz                                        ; $6097: $c0

    adc b                                         ; $6098: $88
    jr nz, @-$1e                                  ; $6099: $20 $e0

    jr nz, @-$1e                                  ; $609b: $20 $e0

    jr nz, jr_0e4_607f                            ; $609d: $20 $e0

    jr nz, jr_0e4_6081                            ; $609f: $20 $e0

    ld [bc], a                                    ; $60a1: $02
    ret nz                                        ; $60a2: $c0

    ld [bc], a                                    ; $60a3: $02
    add b                                         ; $60a4: $80
    inc c                                         ; $60a5: $0c
    nop                                           ; $60a6: $00
    ld [bc], a                                    ; $60a7: $02
    db $10                                        ; $60a8: $10
    adc d                                         ; $60a9: $8a
    jr c, @+$2a                                   ; $60aa: $38 $28

    ld a, h                                       ; $60ac: $7c
    ld d, h                                       ; $60ad: $54
    sbc $ba                                       ; $60ae: $de $ba
    call c, $f0ec                                 ; $60b0: $dc $ec $f0
    or b                                          ; $60b3: $b0
    ld [bc], a                                    ; $60b4: $02
    ret nz                                        ; $60b5: $c0

    ld [de], a                                    ; $60b6: $12
    nop                                           ; $60b7: $00
    rst $38                                       ; $60b8: $ff
    ld de, $fa06                                  ; $60b9: $11 $06 $fa
    add hl, bc                                    ; $60bc: $09
    ld a, [c]                                     ; $60bd: $f2
    ld bc, $f9e3                                  ; $60be: $01 $e3 $f9
    db $e3                                        ; $60c1: $e3
    ld bc, $09ea                                  ; $60c2: $01 $ea $09
    db $ed                                        ; $60c5: $ed

jr_0e4_60c6:
    ld a, [bc]                                    ; $60c6: $0a
    di                                            ; $60c7: $f3
    push af                                       ; $60c8: $f5
    di                                            ; $60c9: $f3
    db $fd                                        ; $60ca: $fd
    ld [bc], a                                    ; $60cb: $02
    inc bc                                        ; $60cc: $03
    sub b                                         ; $60cd: $90
    rlca                                          ; $60ce: $07
    dec b                                         ; $60cf: $05
    rrca                                          ; $60d0: $0f
    ld a, [bc]                                    ; $60d1: $0a
    rrca                                          ; $60d2: $0f
    ld [$0c0b], sp                                ; $60d3: $08 $0b $0c
    rra                                           ; $60d6: $1f
    db $10                                        ; $60d7: $10
    rrca                                          ; $60d8: $0f
    ld [$090e], sp                                ; $60d9: $08 $0e $09
    rlca                                          ; $60dc: $07
    inc b                                         ; $60dd: $04
    ld [bc], a                                    ; $60de: $02
    inc bc                                        ; $60df: $03
    ld [bc], a                                    ; $60e0: $02
    rlca                                          ; $60e1: $07
    adc d                                         ; $60e2: $8a
    ld a, [bc]                                    ; $60e3: $0a
    rrca                                          ; $60e4: $0f
    ld d, $1d                                     ; $60e5: $16 $1d
    inc d                                         ; $60e7: $14
    rra                                           ; $60e8: $1f
    cpl                                           ; $60e9: $2f
    dec a                                         ; $60ea: $3d
    jp hl                                         ; $60eb: $e9


    rst $38                                       ; $60ec: $ff

jr_0e4_60ed:
    ld [bc], a                                    ; $60ed: $02
    ret nz                                        ; $60ee: $c0

    sbc [hl]                                      ; $60ef: $9e
    ldh [rNR41], a                                ; $60f0: $e0 $20
    ldh a, [rNR10]                                ; $60f2: $f0 $10
    jr nc, jr_0e4_60c6                            ; $60f4: $30 $d0

    ld hl, sp+$68                                 ; $60f6: $f8 $68
    db $fc                                        ; $60f8: $fc
    add h                                         ; $60f9: $84
    ret c                                         ; $60fa: $d8

    jr z, jr_0e4_60ed                             ; $60fb: $28 $f0

    ld [hl], b                                    ; $60fd: $70
    ldh a, [rNR10]                                ; $60fe: $f0 $10
    db $fc                                        ; $6100: $fc
    ld a, h                                       ; $6101: $7c
    rst $00                                       ; $6102: $c7
    rst $38                                       ; $6103: $ff

jr_0e4_6104:
    adc c                                         ; $6104: $89
    rst $38                                       ; $6105: $ff
    sbc c                                         ; $6106: $99
    rst $38                                       ; $6107: $ff
    sbc a                                         ; $6108: $9f
    rst $38                                       ; $6109: $ff
    jr jr_0e4_6104                                ; $610a: $18 $f8

    db $10                                        ; $610c: $10

jr_0e4_610d:
    ldh a, [rSC]                                  ; $610d: $f0 $02
    inc b                                         ; $610f: $04
    adc h                                         ; $6110: $8c
    ld c, $0a                                     ; $6111: $0e $0a
    rra                                           ; $6113: $1f
    dec d                                         ; $6114: $15
    rst $30                                       ; $6115: $f7
    xor $37                                       ; $6116: $ee $37
    ei                                            ; $6118: $fb
    ld a, h                                       ; $6119: $7c
    db $ec                                        ; $611a: $ec
    jr nc, jr_0e4_610d                            ; $611b: $30 $f0

    ld [bc], a                                    ; $611d: $02
    ret nz                                        ; $611e: $c0

    stop                                          ; $611f: $10 $00
    ld [bc], a                                    ; $6121: $02
    ld bc, $001e                                  ; $6122: $01 $1e $00
    sub b                                         ; $6125: $90
    ld a, [bc]                                    ; $6126: $0a
    rrca                                          ; $6127: $0f
    ld e, $17                                     ; $6128: $1e $17
    dec e                                         ; $612a: $1d
    rra                                           ; $612b: $1f
    add hl, bc                                    ; $612c: $09
    rrca                                          ; $612d: $0f
    ld de, $331f                                  ; $612e: $11 $1f $33
    ccf                                           ; $6131: $3f
    ld b, a                                       ; $6132: $47
    ld a, a                                       ; $6133: $7f
    adc a                                         ; $6134: $8f
    rst $38                                       ; $6135: $ff
    ld [bc], a                                    ; $6136: $02
    ld a, a                                       ; $6137: $7f
    ld [bc], a                                    ; $6138: $02
    rra                                           ; $6139: $1f
    ld [bc], a                                    ; $613a: $02
    rrca                                          ; $613b: $0f
    ld [bc], a                                    ; $613c: $02
    rra                                           ; $613d: $1f
    ld [bc], a                                    ; $613e: $02
    inc c                                         ; $613f: $0c
    ld b, $00                                     ; $6140: $06 $00
    sbc d                                         ; $6142: $9a
    sub c                                         ; $6143: $91
    rst $38                                       ; $6144: $ff
    db $d3                                        ; $6145: $d3
    rst $38                                       ; $6146: $ff
    ld a, [c]                                     ; $6147: $f2
    cp $f6                                        ; $6148: $fe $f6
    cp $f6                                        ; $614a: $fe $f6
    cp $f2                                        ; $614c: $fe $f2
    cp $b3                                        ; $614e: $fe $b3
    rst $38                                       ; $6150: $ff
    dec sp                                        ; $6151: $3b
    rst $38                                       ; $6152: $ff
    sbc c                                         ; $6153: $99
    rst $38                                       ; $6154: $ff
    add hl, de                                    ; $6155: $19
    rst $38                                       ; $6156: $ff
    cp c                                          ; $6157: $b9
    rst $38                                       ; $6158: $ff
    cp d                                          ; $6159: $ba
    cp $72                                        ; $615a: $fe $72
    ld a, [hl]                                    ; $615c: $7e
    ld [bc], a                                    ; $615d: $02
    ld a, h                                       ; $615e: $7c
    ld [bc], a                                    ; $615f: $02
    jr c, jr_0e4_6164                             ; $6160: $38 $02

    nop                                           ; $6162: $00
    rst $38                                       ; $6163: $ff

jr_0e4_6164:
    dec c                                         ; $6164: $0d
    inc b                                         ; $6165: $04
    ld sp, hl                                     ; $6166: $f9
    ld [$01f2], sp                                ; $6167: $08 $f2 $01
    ld [c], a                                     ; $616a: $e2
    ld sp, hl                                     ; $616b: $f9
    ld [c], a                                     ; $616c: $e2
    nop                                           ; $616d: $00
    ld a, [c]                                     ; $616e: $f2
    ld sp, hl                                     ; $616f: $f9
    ld a, [c]                                     ; $6170: $f2
    nop                                           ; $6171: $00
    ld [bc], a                                    ; $6172: $02
    ld b, $81                                     ; $6173: $06 $81
    dec bc                                        ; $6175: $0b
    inc bc                                        ; $6176: $03
    rrca                                          ; $6177: $0f
    add c                                         ; $6178: $81
    ld e, $05                                     ; $6179: $1e $05
    rra                                           ; $617b: $1f
    add [hl]                                      ; $617c: $86
    rla                                           ; $617d: $17
    rra                                           ; $617e: $1f
    dec de                                        ; $617f: $1b
    rra                                           ; $6180: $1f
    ld c, $0f                                     ; $6181: $0e $0f
    ld [bc], a                                    ; $6183: $02
    rra                                           ; $6184: $1f
    adc h                                         ; $6185: $8c
    ld [$370f], sp                                ; $6186: $08 $0f $37
    ccf                                           ; $6189: $3f
    ld e, b                                       ; $618a: $58
    ld a, a                                       ; $618b: $7f
    ld c, h                                       ; $618c: $4c
    ld a, a                                       ; $618d: $7f
    or a                                          ; $618e: $b7
    rst $38                                       ; $618f: $ff
    add a                                         ; $6190: $87
    rst $38                                       ; $6191: $ff
    ld [bc], a                                    ; $6192: $02
    ld h, b                                       ; $6193: $60
    add h                                         ; $6194: $84
    ld d, b                                       ; $6195: $50
    ld [hl], b                                    ; $6196: $70
    jr nc, jr_0e4_6209                            ; $6197: $30 $70

    ld b, $78                                     ; $6199: $06 $78
    add [hl]                                      ; $619b: $86
    ld l, b                                       ; $619c: $68
    ld a, b                                       ; $619d: $78
    ld c, b                                       ; $619e: $48
    ld a, b                                       ; $619f: $78
    ld d, b                                       ; $61a0: $50
    ld [hl], b                                    ; $61a1: $70
    ld [bc], a                                    ; $61a2: $02
    ld a, b                                       ; $61a3: $78
    xor d                                         ; $61a4: $aa
    db $10                                        ; $61a5: $10
    ld [hl], b                                    ; $61a6: $70
    ld l, h                                       ; $61a7: $6c
    ld a, h                                       ; $61a8: $7c
    ld a, [de]                                    ; $61a9: $1a
    ld a, [hl]                                    ; $61aa: $7e
    ld [hl-], a                                   ; $61ab: $32
    ld a, [hl]                                    ; $61ac: $7e
    ld l, l                                       ; $61ad: $6d
    ld a, a                                       ; $61ae: $7f
    ld h, c                                       ; $61af: $61
    ld a, a                                       ; $61b0: $7f
    add l                                         ; $61b1: $85
    rst $38                                       ; $61b2: $ff
    adc e                                         ; $61b3: $8b
    rst $38                                       ; $61b4: $ff
    sub d                                         ; $61b5: $92
    rst $38                                       ; $61b6: $ff
    add d                                         ; $61b7: $82
    rst $38                                       ; $61b8: $ff
    add h                                         ; $61b9: $84
    rst $38                                       ; $61ba: $ff
    add b                                         ; $61bb: $80
    rst $38                                       ; $61bc: $ff
    ret z                                         ; $61bd: $c8

    rst $38                                       ; $61be: $ff
    ret nz                                        ; $61bf: $c0

    rst $38                                       ; $61c0: $ff
    ret nz                                        ; $61c1: $c0

    rst $38                                       ; $61c2: $ff
    ret nz                                        ; $61c3: $c0

    rst $38                                       ; $61c4: $ff
    ld b, e                                       ; $61c5: $43
    ld a, a                                       ; $61c6: $7f
    ld d, b                                       ; $61c7: $50
    ld a, a                                       ; $61c8: $7f
    call z, $87ff                                 ; $61c9: $cc $ff $87
    rst $38                                       ; $61cc: $ff
    ld b, b                                       ; $61cd: $40
    ld a, a                                       ; $61ce: $7f
    ld [bc], a                                    ; $61cf: $02
    ccf                                           ; $61d0: $3f
    sbc [hl]                                      ; $61d1: $9e
    ld hl, $517f                                  ; $61d2: $21 $7f $51
    ld a, a                                       ; $61d5: $7f
    ld c, c                                       ; $61d6: $49
    ld a, a                                       ; $61d7: $7f
    ld b, c                                       ; $61d8: $41
    ld a, a                                       ; $61d9: $7f
    ld hl, $017f                                  ; $61da: $21 $7f $01
    ld a, a                                       ; $61dd: $7f
    inc de                                        ; $61de: $13
    ld a, a                                       ; $61df: $7f
    inc bc                                        ; $61e0: $03
    ld a, a                                       ; $61e1: $7f
    inc bc                                        ; $61e2: $03
    ld a, a                                       ; $61e3: $7f
    inc hl                                        ; $61e4: $23
    ld a, a                                       ; $61e5: $7f
    ld b, d                                       ; $61e6: $42
    ld a, [hl]                                    ; $61e7: $7e
    ld a, [bc]                                    ; $61e8: $0a
    ld a, [hl]                                    ; $61e9: $7e
    inc sp                                        ; $61ea: $33
    ld a, a                                       ; $61eb: $7f
    ld h, c                                       ; $61ec: $61
    ld a, a                                       ; $61ed: $7f
    ld [bc], a                                    ; $61ee: $02
    ld a, [hl]                                    ; $61ef: $7e
    ld [bc], a                                    ; $61f0: $02
    ld a, h                                       ; $61f1: $7c
    rst $38                                       ; $61f2: $ff
    dec c                                         ; $61f3: $0d
    inc b                                         ; $61f4: $04
    ld sp, hl                                     ; $61f5: $f9
    ld [$01f2], sp                                ; $61f6: $08 $f2 $01
    ld [c], a                                     ; $61f9: $e2
    ld sp, hl                                     ; $61fa: $f9
    ld [c], a                                     ; $61fb: $e2
    nop                                           ; $61fc: $00
    ld a, [c]                                     ; $61fd: $f2
    ld sp, hl                                     ; $61fe: $f9
    ld a, [c]                                     ; $61ff: $f2
    nop                                           ; $6200: $00
    ld [bc], a                                    ; $6201: $02
    rlca                                          ; $6202: $07
    add d                                         ; $6203: $82
    add hl, bc                                    ; $6204: $09
    rrca                                          ; $6205: $0f
    ld [bc], a                                    ; $6206: $02
    rra                                           ; $6207: $1f
    add c                                         ; $6208: $81

jr_0e4_6209:
    ld e, $05                                     ; $6209: $1e $05
    rra                                           ; $620b: $1f
    add l                                         ; $620c: $85
    rla                                           ; $620d: $17
    rra                                           ; $620e: $1f
    scf                                           ; $620f: $37
    ccf                                           ; $6210: $3f
    dec e                                         ; $6211: $1d
    inc bc                                        ; $6212: $03
    rra                                           ; $6213: $1f
    adc h                                         ; $6214: $8c
    ld [$370f], sp                                ; $6215: $08 $0f $37
    ccf                                           ; $6218: $3f
    ld c, b                                       ; $6219: $48
    ld a, a                                       ; $621a: $7f
    ld b, [hl]                                    ; $621b: $46
    ld a, a                                       ; $621c: $7f
    ld e, e                                       ; $621d: $5b
    ld a, a                                       ; $621e: $7f
    add e                                         ; $621f: $83
    rst $38                                       ; $6220: $ff
    ld [bc], a                                    ; $6221: $02
    ld h, b                                       ; $6222: $60
    add e                                         ; $6223: $83
    ld d, b                                       ; $6224: $50
    ld [hl], b                                    ; $6225: $70
    db $10                                        ; $6226: $10
    inc bc                                        ; $6227: $03
    ld [hl], b                                    ; $6228: $70
    inc b                                         ; $6229: $04
    ld a, b                                       ; $622a: $78
    add [hl]                                      ; $622b: $86
    ld e, b                                       ; $622c: $58
    ld a, b                                       ; $622d: $78
    ld c, b                                       ; $622e: $48
    ld a, b                                       ; $622f: $78
    jr c, jr_0e4_62aa                             ; $6230: $38 $78

    ld [bc], a                                    ; $6232: $02
    ld [hl], b                                    ; $6233: $70
    xor d                                         ; $6234: $aa
    db $10                                        ; $6235: $10
    ld [hl], b                                    ; $6236: $70
    ld l, h                                       ; $6237: $6c
    ld a, h                                       ; $6238: $7c
    ld a, [de]                                    ; $6239: $1a
    ld a, [hl]                                    ; $623a: $7e
    ld a, [de]                                    ; $623b: $1a
    ld a, [hl]                                    ; $623c: $7e
    ld h, l                                       ; $623d: $65
    ld a, a                                       ; $623e: $7f
    ld [hl], c                                    ; $623f: $71
    ld a, a                                       ; $6240: $7f
    add d                                         ; $6241: $82
    rst $38                                       ; $6242: $ff
    add h                                         ; $6243: $84
    rst $38                                       ; $6244: $ff
    add l                                         ; $6245: $85
    rst $38                                       ; $6246: $ff
    adc c                                         ; $6247: $89
    rst $38                                       ; $6248: $ff
    add c                                         ; $6249: $81
    rst $38                                       ; $624a: $ff
    add d                                         ; $624b: $82
    rst $38                                       ; $624c: $ff
    call nz, $c8ff                                ; $624d: $c4 $ff $c8
    rst $38                                       ; $6250: $ff
    ld b, b                                       ; $6251: $40
    ld a, a                                       ; $6252: $7f
    ld b, b                                       ; $6253: $40
    ld a, a                                       ; $6254: $7f
    ld b, c                                       ; $6255: $41
    ld a, a                                       ; $6256: $7f
    ret nc                                        ; $6257: $d0

    rst $38                                       ; $6258: $ff
    adc a                                         ; $6259: $8f
    rst $38                                       ; $625a: $ff
    add e                                         ; $625b: $83
    rst $38                                       ; $625c: $ff
    ld [hl], b                                    ; $625d: $70
    ld a, a                                       ; $625e: $7f
    ld [bc], a                                    ; $625f: $02
    rrca                                          ; $6260: $0f
    sbc [hl]                                      ; $6261: $9e
    ld l, c                                       ; $6262: $69
    ld a, a                                       ; $6263: $7f
    ld h, l                                       ; $6264: $65
    ld a, a                                       ; $6265: $7f
    ld d, c                                       ; $6266: $51
    ld a, a                                       ; $6267: $7f
    ld de, $117f                                  ; $6268: $11 $7f $11
    ld a, a                                       ; $626b: $7f
    ld de, $017f                                  ; $626c: $11 $7f $01
    ld a, a                                       ; $626f: $7f
    ld de, $037f                                  ; $6270: $11 $7f $03
    ld a, a                                       ; $6273: $7f
    inc bc                                        ; $6274: $03
    ld a, a                                       ; $6275: $7f
    ld [hl+], a                                   ; $6276: $22
    ld a, [hl]                                    ; $6277: $7e
    ld [bc], a                                    ; $6278: $02
    ld a, [hl]                                    ; $6279: $7e
    ld h, d                                       ; $627a: $62
    ld a, [hl]                                    ; $627b: $7e
    ld [bc], a                                    ; $627c: $02
    ld a, [hl]                                    ; $627d: $7e
    ld [hl-], a                                   ; $627e: $32
    ld a, [hl]                                    ; $627f: $7e
    ld [bc], a                                    ; $6280: $02
    ld a, h                                       ; $6281: $7c
    rst $38                                       ; $6282: $ff
    dec c                                         ; $6283: $0d
    inc b                                         ; $6284: $04
    ld sp, hl                                     ; $6285: $f9
    ld [$01f2], sp                                ; $6286: $08 $f2 $01
    db $e3                                        ; $6289: $e3
    ld sp, hl                                     ; $628a: $f9
    db $e3                                        ; $628b: $e3
    nop                                           ; $628c: $00
    di                                            ; $628d: $f3
    ld sp, hl                                     ; $628e: $f9
    di                                            ; $628f: $f3
    nop                                           ; $6290: $00
    ld [bc], a                                    ; $6291: $02
    rlca                                          ; $6292: $07
    add e                                         ; $6293: $83
    dec bc                                        ; $6294: $0b
    rrca                                          ; $6295: $0f
    ld e, $07                                     ; $6296: $1e $07
    rra                                           ; $6298: $1f
    add l                                         ; $6299: $85
    scf                                           ; $629a: $37
    ccf                                           ; $629b: $3f
    dec [hl]                                      ; $629c: $35
    ccf                                           ; $629d: $3f
    dec e                                         ; $629e: $1d
    inc bc                                        ; $629f: $03
    rra                                           ; $62a0: $1f
    adc h                                         ; $62a1: $8c
    ld [$370f], sp                                ; $62a2: $08 $0f $37
    ccf                                           ; $62a5: $3f
    ld c, b                                       ; $62a6: $48
    ld a, a                                       ; $62a7: $7f
    ld a, h                                       ; $62a8: $7c
    ld a, a                                       ; $62a9: $7f

jr_0e4_62aa:
    add e                                         ; $62aa: $83
    rst $38                                       ; $62ab: $ff
    add l                                         ; $62ac: $85
    rst $38                                       ; $62ad: $ff
    ld [bc], a                                    ; $62ae: $02
    ld h, b                                       ; $62af: $60
    add h                                         ; $62b0: $84
    ld d, b                                       ; $62b1: $50
    ld [hl], b                                    ; $62b2: $70
    db $10                                        ; $62b3: $10
    ld [hl], b                                    ; $62b4: $70
    ld b, $78                                     ; $62b5: $06 $78
    add [hl]                                      ; $62b7: $86
    ld e, b                                       ; $62b8: $58
    ld a, b                                       ; $62b9: $78
    db $10                                        ; $62ba: $10
    ld [hl], b                                    ; $62bb: $70
    jr c, jr_0e4_6336                             ; $62bc: $38 $78

    ld [bc], a                                    ; $62be: $02
    ld [hl], b                                    ; $62bf: $70
    xor b                                         ; $62c0: $a8
    db $10                                        ; $62c1: $10
    ld [hl], b                                    ; $62c2: $70
    ld l, h                                       ; $62c3: $6c
    ld a, h                                       ; $62c4: $7c
    ld [de], a                                    ; $62c5: $12
    ld a, [hl]                                    ; $62c6: $7e
    ld e, $7e                                     ; $62c7: $1e $7e
    ld h, c                                       ; $62c9: $61
    ld a, a                                       ; $62ca: $7f
    ld de, $857f                                  ; $62cb: $11 $7f $85
    rst $38                                       ; $62ce: $ff
    adc c                                         ; $62cf: $89
    rst $38                                       ; $62d0: $ff
    sub d                                         ; $62d1: $92
    rst $38                                       ; $62d2: $ff
    add d                                         ; $62d3: $82
    rst $38                                       ; $62d4: $ff
    add d                                         ; $62d5: $82
    rst $38                                       ; $62d6: $ff
    ret nz                                        ; $62d7: $c0

    rst $38                                       ; $62d8: $ff
    call nz, $c0ff                                ; $62d9: $c4 $ff $c0
    rst $38                                       ; $62dc: $ff
    ld b, b                                       ; $62dd: $40
    ld a, a                                       ; $62de: $7f
    ld b, b                                       ; $62df: $40
    ld a, a                                       ; $62e0: $7f
    ld b, b                                       ; $62e1: $40
    ld a, a                                       ; $62e2: $7f
    call c, $87ff                                 ; $62e3: $dc $ff $87
    rst $38                                       ; $62e6: $ff
    ld b, b                                       ; $62e7: $40
    ld a, a                                       ; $62e8: $7f
    ld [bc], a                                    ; $62e9: $02
    ccf                                           ; $62ea: $3f
    ld [bc], a                                    ; $62eb: $02
    nop                                           ; $62ec: $00
    sbc h                                         ; $62ed: $9c
    ld c, c                                       ; $62ee: $49
    ld a, a                                       ; $62ef: $7f
    ld b, l                                       ; $62f0: $45
    ld a, a                                       ; $62f1: $7f
    ld hl, $217f                                  ; $62f2: $21 $7f $21
    ld a, a                                       ; $62f5: $7f
    ld de, $017f                                  ; $62f6: $11 $7f $01
    ld a, a                                       ; $62f9: $7f
    add hl, bc                                    ; $62fa: $09
    ld a, a                                       ; $62fb: $7f
    ld bc, $017f                                  ; $62fc: $01 $7f $01
    ld a, a                                       ; $62ff: $7f
    ld [bc], a                                    ; $6300: $02
    ld a, [hl]                                    ; $6301: $7e
    ld [bc], a                                    ; $6302: $02
    ld a, [hl]                                    ; $6303: $7e
    ld [hl], d                                    ; $6304: $72
    ld a, [hl]                                    ; $6305: $7e
    ld [bc], a                                    ; $6306: $02
    ld a, [hl]                                    ; $6307: $7e
    ld [hl], h                                    ; $6308: $74
    ld a, h                                       ; $6309: $7c
    ld [bc], a                                    ; $630a: $02
    ld a, b                                       ; $630b: $78
    ld [bc], a                                    ; $630c: $02
    nop                                           ; $630d: $00
    rst $38                                       ; $630e: $ff
    dec c                                         ; $630f: $0d
    inc b                                         ; $6310: $04
    ld sp, hl                                     ; $6311: $f9
    ld [$01f2], sp                                ; $6312: $08 $f2 $01
    ld [c], a                                     ; $6315: $e2
    ld sp, hl                                     ; $6316: $f9
    ld [c], a                                     ; $6317: $e2
    nop                                           ; $6318: $00
    ld a, [c]                                     ; $6319: $f2
    ld sp, hl                                     ; $631a: $f9
    ld a, [c]                                     ; $631b: $f2
    nop                                           ; $631c: $00
    ld [bc], a                                    ; $631d: $02
    ld b, $81                                     ; $631e: $06 $81
    dec bc                                        ; $6320: $0b
    inc bc                                        ; $6321: $03
    rrca                                          ; $6322: $0f
    add c                                         ; $6323: $81
    ld e, $05                                     ; $6324: $1e $05
    rra                                           ; $6326: $1f
    add [hl]                                      ; $6327: $86
    rla                                           ; $6328: $17
    rra                                           ; $6329: $1f
    dec de                                        ; $632a: $1b
    rra                                           ; $632b: $1f
    ld c, $0f                                     ; $632c: $0e $0f
    ld [bc], a                                    ; $632e: $02
    rra                                           ; $632f: $1f
    adc h                                         ; $6330: $8c
    ld [$370f], sp                                ; $6331: $08 $0f $37
    ccf                                           ; $6334: $3f
    ld e, b                                       ; $6335: $58

jr_0e4_6336:
    ld a, a                                       ; $6336: $7f
    ld c, h                                       ; $6337: $4c
    ld a, a                                       ; $6338: $7f
    or a                                          ; $6339: $b7
    rst $38                                       ; $633a: $ff
    add a                                         ; $633b: $87
    rst $38                                       ; $633c: $ff
    ld [bc], a                                    ; $633d: $02
    ld h, b                                       ; $633e: $60
    add h                                         ; $633f: $84
    ld d, b                                       ; $6340: $50
    ld [hl], b                                    ; $6341: $70
    jr nc, jr_0e4_63b4                            ; $6342: $30 $70

    ld b, $78                                     ; $6344: $06 $78
    add [hl]                                      ; $6346: $86
    ld l, b                                       ; $6347: $68
    ld a, b                                       ; $6348: $78
    ld c, b                                       ; $6349: $48
    ld a, b                                       ; $634a: $78
    ld d, b                                       ; $634b: $50
    ld [hl], b                                    ; $634c: $70
    ld [bc], a                                    ; $634d: $02
    ld a, b                                       ; $634e: $78
    xor d                                         ; $634f: $aa
    db $10                                        ; $6350: $10
    ld [hl], b                                    ; $6351: $70
    ld l, h                                       ; $6352: $6c
    ld a, h                                       ; $6353: $7c
    ld a, [de]                                    ; $6354: $1a
    ld a, [hl]                                    ; $6355: $7e
    ld [hl-], a                                   ; $6356: $32
    ld a, [hl]                                    ; $6357: $7e
    ld l, l                                       ; $6358: $6d
    ld a, a                                       ; $6359: $7f
    ld h, c                                       ; $635a: $61
    ld a, a                                       ; $635b: $7f
    add l                                         ; $635c: $85
    rst $38                                       ; $635d: $ff
    adc e                                         ; $635e: $8b
    rst $38                                       ; $635f: $ff
    sub d                                         ; $6360: $92
    rst $38                                       ; $6361: $ff
    add d                                         ; $6362: $82
    rst $38                                       ; $6363: $ff
    add d                                         ; $6364: $82
    rst $38                                       ; $6365: $ff
    add d                                         ; $6366: $82
    rst $38                                       ; $6367: $ff
    jp nz, $c0ff                                  ; $6368: $c2 $ff $c0

    rst $38                                       ; $636b: $ff
    jp nz, $c4ff                                  ; $636c: $c2 $ff $c4

    rst $38                                       ; $636f: $ff
    ld b, e                                       ; $6370: $43
    ld a, a                                       ; $6371: $7f
    ld d, b                                       ; $6372: $50
    ld a, a                                       ; $6373: $7f
    ld c, h                                       ; $6374: $4c
    ld a, a                                       ; $6375: $7f
    add a                                         ; $6376: $87
    rst $38                                       ; $6377: $ff
    ld b, b                                       ; $6378: $40
    ld a, a                                       ; $6379: $7f
    ld [bc], a                                    ; $637a: $02
    ccf                                           ; $637b: $3f
    sbc [hl]                                      ; $637c: $9e
    ld hl, $517f                                  ; $637d: $21 $7f $51
    ld a, a                                       ; $6380: $7f
    ld c, c                                       ; $6381: $49
    ld a, a                                       ; $6382: $7f
    ld b, c                                       ; $6383: $41
    ld a, a                                       ; $6384: $7f
    ld hl, $017f                                  ; $6385: $21 $7f $01
    ld a, a                                       ; $6388: $7f
    ld de, $017f                                  ; $6389: $11 $7f $01
    ld a, a                                       ; $638c: $7f
    inc bc                                        ; $638d: $03
    ld a, a                                       ; $638e: $7f
    ld [bc], a                                    ; $638f: $02
    ld a, [hl]                                    ; $6390: $7e
    ld b, d                                       ; $6391: $42
    ld a, [hl]                                    ; $6392: $7e
    ld a, [bc]                                    ; $6393: $0a
    ld a, [hl]                                    ; $6394: $7e
    inc sp                                        ; $6395: $33
    ld a, a                                       ; $6396: $7f
    ld h, c                                       ; $6397: $61
    ld a, a                                       ; $6398: $7f
    ld b, $7e                                     ; $6399: $06 $7e
    ld [bc], a                                    ; $639b: $02
    ld a, b                                       ; $639c: $78
    rst $38                                       ; $639d: $ff
    dec c                                         ; $639e: $0d
    inc b                                         ; $639f: $04
    ld sp, hl                                     ; $63a0: $f9
    ld [$01f2], sp                                ; $63a1: $08 $f2 $01
    ld [c], a                                     ; $63a4: $e2
    ld sp, hl                                     ; $63a5: $f9
    ld [c], a                                     ; $63a6: $e2
    nop                                           ; $63a7: $00
    ld a, [c]                                     ; $63a8: $f2
    ld sp, hl                                     ; $63a9: $f9
    ld a, [c]                                     ; $63aa: $f2
    nop                                           ; $63ab: $00
    ld [bc], a                                    ; $63ac: $02
    rlca                                          ; $63ad: $07
    add e                                         ; $63ae: $83
    dec bc                                        ; $63af: $0b
    rrca                                          ; $63b0: $0f
    dec c                                         ; $63b1: $0d
    inc bc                                        ; $63b2: $03
    rrca                                          ; $63b3: $0f

jr_0e4_63b4:
    ld b, $1f                                     ; $63b4: $06 $1f
    add h                                         ; $63b6: $84
    dec de                                        ; $63b7: $1b
    rra                                           ; $63b8: $1f
    add hl, de                                    ; $63b9: $19
    rra                                           ; $63ba: $1f
    ld [bc], a                                    ; $63bb: $02
    rrca                                          ; $63bc: $0f
    adc h                                         ; $63bd: $8c
    ld [$370f], sp                                ; $63be: $08 $0f $37
    ccf                                           ; $63c1: $3f
    ld e, b                                       ; $63c2: $58
    ld a, a                                       ; $63c3: $7f
    ld e, b                                       ; $63c4: $58
    ld a, a                                       ; $63c5: $7f
    and a                                         ; $63c6: $a7
    rst $38                                       ; $63c7: $ff
    adc a                                         ; $63c8: $8f
    rst $38                                       ; $63c9: $ff
    ld [bc], a                                    ; $63ca: $02
    ld h, b                                       ; $63cb: $60
    add e                                         ; $63cc: $83
    ld d, b                                       ; $63cd: $50
    ld [hl], b                                    ; $63ce: $70
    ld c, b                                       ; $63cf: $48
    rlca                                          ; $63d0: $07
    ld a, b                                       ; $63d1: $78
    add l                                         ; $63d2: $85
    ld l, b                                       ; $63d3: $68
    ld a, b                                       ; $63d4: $78
    ld h, h                                       ; $63d5: $64
    ld a, h                                       ; $63d6: $7c
    jr z, jr_0e4_63dc                             ; $63d7: $28 $03

    ld a, b                                       ; $63d9: $78
    xor d                                         ; $63da: $aa
    db $10                                        ; $63db: $10

jr_0e4_63dc:
    ld [hl], b                                    ; $63dc: $70
    ld l, h                                       ; $63dd: $6c
    ld a, h                                       ; $63de: $7c
    ld [de], a                                    ; $63df: $12
    ld a, [hl]                                    ; $63e0: $7e
    ld h, d                                       ; $63e1: $62
    ld a, [hl]                                    ; $63e2: $7e
    ld e, d                                       ; $63e3: $5a
    ld a, [hl]                                    ; $63e4: $7e
    ld b, c                                       ; $63e5: $41
    ld a, a                                       ; $63e6: $7f
    sub [hl]                                      ; $63e7: $96
    rst $38                                       ; $63e8: $ff
    and [hl]                                      ; $63e9: $a6
    rst $38                                       ; $63ea: $ff
    adc e                                         ; $63eb: $8b
    rst $38                                       ; $63ec: $ff
    adc c                                         ; $63ed: $89
    rst $38                                       ; $63ee: $ff
    adc c                                         ; $63ef: $89
    rst $38                                       ; $63f0: $ff
    adc b                                         ; $63f1: $88
    rst $38                                       ; $63f2: $ff
    add b                                         ; $63f3: $80
    rst $38                                       ; $63f4: $ff
    adc b                                         ; $63f5: $88
    rst $38                                       ; $63f6: $ff
    ret nz                                        ; $63f7: $c0

    rst $38                                       ; $63f8: $ff
    ret nz                                        ; $63f9: $c0

    rst $38                                       ; $63fa: $ff
    ld b, l                                       ; $63fb: $45
    ld a, a                                       ; $63fc: $7f
    ld b, b                                       ; $63fd: $40
    ld a, a                                       ; $63fe: $7f
    ld b, a                                       ; $63ff: $47
    ld a, a                                       ; $6400: $7f
    ld b, c                                       ; $6401: $41
    ld a, a                                       ; $6402: $7f
    ld c, h                                       ; $6403: $4c
    ld a, a                                       ; $6404: $7f
    ld [bc], a                                    ; $6405: $02
    ccf                                           ; $6406: $3f
    sbc [hl]                                      ; $6407: $9e
    ld b, c                                       ; $6408: $41
    ld a, a                                       ; $6409: $7f
    ld hl, $217f                                  ; $640a: $21 $7f $21
    ld a, a                                       ; $640d: $7f
    ld de, $017f                                  ; $640e: $11 $7f $01
    ld a, a                                       ; $6411: $7f
    ld b, c                                       ; $6412: $41
    ld a, a                                       ; $6413: $7f
    inc hl                                        ; $6414: $23
    ld a, a                                       ; $6415: $7f
    inc de                                        ; $6416: $13
    ld a, a                                       ; $6417: $7f
    ld [bc], a                                    ; $6418: $02
    ld a, [hl]                                    ; $6419: $7e
    ld [bc], a                                    ; $641a: $02
    ld a, [hl]                                    ; $641b: $7e
    ld [bc], a                                    ; $641c: $02
    ld a, [hl]                                    ; $641d: $7e
    dec bc                                        ; $641e: $0b
    ld a, a                                       ; $641f: $7f
    ld [hl], c                                    ; $6420: $71
    ld a, a                                       ; $6421: $7f
    ld b, c                                       ; $6422: $41
    ld a, a                                       ; $6423: $7f
    ld c, $7e                                     ; $6424: $0e $7e
    ld [bc], a                                    ; $6426: $02
    ld [hl], b                                    ; $6427: $70
    rst $38                                       ; $6428: $ff
    dec c                                         ; $6429: $0d
    inc b                                         ; $642a: $04
    ld sp, hl                                     ; $642b: $f9
    ld [$01f2], sp                                ; $642c: $08 $f2 $01
    db $e3                                        ; $642f: $e3
    ld sp, hl                                     ; $6430: $f9
    db $e3                                        ; $6431: $e3
    nop                                           ; $6432: $00
    di                                            ; $6433: $f3
    ld sp, hl                                     ; $6434: $f9
    di                                            ; $6435: $f3
    nop                                           ; $6436: $00
    ld [bc], a                                    ; $6437: $02
    rlca                                          ; $6438: $07
    add h                                         ; $6439: $84
    dec bc                                        ; $643a: $0b
    rrca                                          ; $643b: $0f
    dec c                                         ; $643c: $0d
    rrca                                          ; $643d: $0f
    ld [$841f], sp                                ; $643e: $08 $1f $84
    dec bc                                        ; $6441: $0b
    rrca                                          ; $6442: $0f
    dec e                                         ; $6443: $1d
    rra                                           ; $6444: $1f
    ld [bc], a                                    ; $6445: $02
    rrca                                          ; $6446: $0f
    adc h                                         ; $6447: $8c
    ld [$370f], sp                                ; $6448: $08 $0f $37
    ccf                                           ; $644b: $3f
    ld c, b                                       ; $644c: $48
    ld a, a                                       ; $644d: $7f
    ld a, b                                       ; $644e: $78
    ld a, a                                       ; $644f: $7f
    add a                                         ; $6450: $87
    rst $38                                       ; $6451: $ff
    adc c                                         ; $6452: $89
    rst $38                                       ; $6453: $ff
    ld [bc], a                                    ; $6454: $02
    ld h, b                                       ; $6455: $60
    add e                                         ; $6456: $83
    ld d, b                                       ; $6457: $50
    ld [hl], b                                    ; $6458: $70
    ld c, b                                       ; $6459: $48
    rlca                                          ; $645a: $07
    ld a, b                                       ; $645b: $78
    add l                                         ; $645c: $85
    ld l, h                                       ; $645d: $6c
    ld a, h                                       ; $645e: $7c
    inc h                                         ; $645f: $24
    ld a, h                                       ; $6460: $7c
    jr c, jr_0e4_6466                             ; $6461: $38 $03

    ld a, b                                       ; $6463: $78
    xor b                                         ; $6464: $a8
    db $10                                        ; $6465: $10

jr_0e4_6466:
    ld [hl], b                                    ; $6466: $70
    ld l, h                                       ; $6467: $6c
    ld a, h                                       ; $6468: $7c
    ld [de], a                                    ; $6469: $12
    ld a, [hl]                                    ; $646a: $7e
    ld a, $7e                                     ; $646b: $3e $7e
    ld b, c                                       ; $646d: $41
    ld a, a                                       ; $646e: $7f
    ld hl, $937f                                  ; $646f: $21 $7f $93
    rst $38                                       ; $6472: $ff
    and e                                         ; $6473: $a3
    rst $38                                       ; $6474: $ff
    add h                                         ; $6475: $84
    rst $38                                       ; $6476: $ff
    add h                                         ; $6477: $84
    rst $38                                       ; $6478: $ff
    adc b                                         ; $6479: $88
    rst $38                                       ; $647a: $ff
    add b                                         ; $647b: $80
    rst $38                                       ; $647c: $ff
    sub b                                         ; $647d: $90
    rst $38                                       ; $647e: $ff
    add b                                         ; $647f: $80
    rst $38                                       ; $6480: $ff
    add b                                         ; $6481: $80
    rst $38                                       ; $6482: $ff
    ld b, b                                       ; $6483: $40
    ld a, a                                       ; $6484: $7f
    ld b, b                                       ; $6485: $40
    ld a, a                                       ; $6486: $7f
    ld c, [hl]                                    ; $6487: $4e
    ld a, a                                       ; $6488: $7f
    ld b, c                                       ; $6489: $41
    ld a, a                                       ; $648a: $7f
    ld l, $3f                                     ; $648b: $2e $3f
    ld [bc], a                                    ; $648d: $02
    rra                                           ; $648e: $1f
    ld [bc], a                                    ; $648f: $02
    nop                                           ; $6490: $00
    sbc h                                         ; $6491: $9c
    ld hl, $117f                                  ; $6492: $21 $7f $11
    ld a, a                                       ; $6495: $7f
    ld c, c                                       ; $6496: $49
    ld a, a                                       ; $6497: $7f
    ld b, c                                       ; $6498: $41
    ld a, a                                       ; $6499: $7f
    ld b, c                                       ; $649a: $41
    ld a, a                                       ; $649b: $7f
    inc bc                                        ; $649c: $03
    ld a, a                                       ; $649d: $7f
    inc hl                                        ; $649e: $23
    ld a, a                                       ; $649f: $7f
    inc bc                                        ; $64a0: $03
    ld a, a                                       ; $64a1: $7f
    ld [bc], a                                    ; $64a2: $02
    ld a, [hl]                                    ; $64a3: $7e
    ld [bc], a                                    ; $64a4: $02
    ld a, [hl]                                    ; $64a5: $7e
    ld [bc], a                                    ; $64a6: $02
    ld a, [hl]                                    ; $64a7: $7e
    dec sp                                        ; $64a8: $3b
    ld a, a                                       ; $64a9: $7f
    ld h, c                                       ; $64aa: $61
    ld a, a                                       ; $64ab: $7f
    ld [bc], a                                    ; $64ac: $02
    ld a, [hl]                                    ; $64ad: $7e
    ld [bc], a                                    ; $64ae: $02
    ld a, h                                       ; $64af: $7c
    ld [bc], a                                    ; $64b0: $02
    nop                                           ; $64b1: $00
    rst $38                                       ; $64b2: $ff
    dec c                                         ; $64b3: $0d
    inc b                                         ; $64b4: $04
    ld sp, hl                                     ; $64b5: $f9
    ld [$01f2], sp                                ; $64b6: $08 $f2 $01
    ld [c], a                                     ; $64b9: $e2
    ld sp, hl                                     ; $64ba: $f9
    ld [c], a                                     ; $64bb: $e2
    nop                                           ; $64bc: $00
    ld a, [c]                                     ; $64bd: $f2
    ld sp, hl                                     ; $64be: $f9
    ld a, [c]                                     ; $64bf: $f2
    nop                                           ; $64c0: $00
    ld [bc], a                                    ; $64c1: $02
    ld b, $81                                     ; $64c2: $06 $81
    dec bc                                        ; $64c4: $0b
    inc bc                                        ; $64c5: $03
    rrca                                          ; $64c6: $0f
    add c                                         ; $64c7: $81
    ld e, $05                                     ; $64c8: $1e $05
    rra                                           ; $64ca: $1f
    add [hl]                                      ; $64cb: $86
    rla                                           ; $64cc: $17
    rra                                           ; $64cd: $1f
    dec de                                        ; $64ce: $1b
    rra                                           ; $64cf: $1f
    ld c, $0f                                     ; $64d0: $0e $0f
    ld [bc], a                                    ; $64d2: $02
    rra                                           ; $64d3: $1f
    adc h                                         ; $64d4: $8c
    ld [$370f], sp                                ; $64d5: $08 $0f $37
    ccf                                           ; $64d8: $3f
    ld e, b                                       ; $64d9: $58
    ld a, a                                       ; $64da: $7f
    ld c, h                                       ; $64db: $4c
    ld a, a                                       ; $64dc: $7f
    or a                                          ; $64dd: $b7
    rst $38                                       ; $64de: $ff
    add a                                         ; $64df: $87
    rst $38                                       ; $64e0: $ff
    ld [bc], a                                    ; $64e1: $02
    ld h, b                                       ; $64e2: $60
    add h                                         ; $64e3: $84
    ld d, b                                       ; $64e4: $50
    ld [hl], b                                    ; $64e5: $70
    jr nc, jr_0e4_6558                            ; $64e6: $30 $70

    ld b, $78                                     ; $64e8: $06 $78
    add [hl]                                      ; $64ea: $86
    ld l, b                                       ; $64eb: $68
    ld a, b                                       ; $64ec: $78
    ld c, b                                       ; $64ed: $48
    ld a, b                                       ; $64ee: $78
    ld d, b                                       ; $64ef: $50
    ld [hl], b                                    ; $64f0: $70
    ld [bc], a                                    ; $64f1: $02
    ld a, b                                       ; $64f2: $78
    xor d                                         ; $64f3: $aa
    db $10                                        ; $64f4: $10
    ld [hl], b                                    ; $64f5: $70
    ld l, h                                       ; $64f6: $6c
    ld a, h                                       ; $64f7: $7c
    ld a, [de]                                    ; $64f8: $1a
    ld a, [hl]                                    ; $64f9: $7e
    ld [hl-], a                                   ; $64fa: $32
    ld a, [hl]                                    ; $64fb: $7e
    ld l, l                                       ; $64fc: $6d
    ld a, a                                       ; $64fd: $7f
    ld h, c                                       ; $64fe: $61
    ld a, a                                       ; $64ff: $7f
    add l                                         ; $6500: $85
    rst $38                                       ; $6501: $ff
    adc e                                         ; $6502: $8b
    rst $38                                       ; $6503: $ff
    sub d                                         ; $6504: $92
    rst $38                                       ; $6505: $ff
    add d                                         ; $6506: $82
    rst $38                                       ; $6507: $ff
    add h                                         ; $6508: $84
    rst $38                                       ; $6509: $ff
    add b                                         ; $650a: $80
    rst $38                                       ; $650b: $ff
    adc b                                         ; $650c: $88
    rst $38                                       ; $650d: $ff
    add b                                         ; $650e: $80
    rst $38                                       ; $650f: $ff
    ret nz                                        ; $6510: $c0

    rst $38                                       ; $6511: $ff
    ld b, b                                       ; $6512: $40
    ld a, a                                       ; $6513: $7f
    ld b, e                                       ; $6514: $43
    ld a, a                                       ; $6515: $7f
    ld d, b                                       ; $6516: $50
    ld a, a                                       ; $6517: $7f
    call z, $87ff                                 ; $6518: $cc $ff $87
    rst $38                                       ; $651b: $ff
    ld h, b                                       ; $651c: $60
    ld a, a                                       ; $651d: $7f
    ld [bc], a                                    ; $651e: $02
    rra                                           ; $651f: $1f
    sbc [hl]                                      ; $6520: $9e
    ld hl, $517f                                  ; $6521: $21 $7f $51
    ld a, a                                       ; $6524: $7f
    ld c, c                                       ; $6525: $49
    ld a, a                                       ; $6526: $7f
    ld b, c                                       ; $6527: $41
    ld a, a                                       ; $6528: $7f
    ld b, c                                       ; $6529: $41
    ld a, a                                       ; $652a: $7f
    ld b, c                                       ; $652b: $41
    ld a, a                                       ; $652c: $7f
    ld b, e                                       ; $652d: $43
    ld a, a                                       ; $652e: $7f
    inc bc                                        ; $652f: $03
    ld a, a                                       ; $6530: $7f
    ld b, e                                       ; $6531: $43
    ld a, a                                       ; $6532: $7f
    inc hl                                        ; $6533: $23
    ld a, a                                       ; $6534: $7f
    ld b, d                                       ; $6535: $42
    ld a, [hl]                                    ; $6536: $7e
    ld a, [bc]                                    ; $6537: $0a
    ld a, [hl]                                    ; $6538: $7e
    ld [hl-], a                                   ; $6539: $32
    ld a, [hl]                                    ; $653a: $7e
    ld h, c                                       ; $653b: $61
    ld a, a                                       ; $653c: $7f
    ld [bc], a                                    ; $653d: $02
    ld a, [hl]                                    ; $653e: $7e
    ld [bc], a                                    ; $653f: $02
    ld a, h                                       ; $6540: $7c
    rst $38                                       ; $6541: $ff
    dec c                                         ; $6542: $0d
    inc b                                         ; $6543: $04
    ld sp, hl                                     ; $6544: $f9
    ld [$01f2], sp                                ; $6545: $08 $f2 $01
    ld [c], a                                     ; $6548: $e2
    ld sp, hl                                     ; $6549: $f9
    ld [c], a                                     ; $654a: $e2
    nop                                           ; $654b: $00
    ld a, [c]                                     ; $654c: $f2
    ld sp, hl                                     ; $654d: $f9
    ld a, [c]                                     ; $654e: $f2
    nop                                           ; $654f: $00
    ld [bc], a                                    ; $6550: $02
    ld b, $81                                     ; $6551: $06 $81
    dec bc                                        ; $6553: $0b
    ld [bc], a                                    ; $6554: $02
    rrca                                          ; $6555: $0f
    sbc e                                         ; $6556: $9b
    inc c                                         ; $6557: $0c

jr_0e4_6558:
    rra                                           ; $6558: $1f
    jr jr_0e4_6572                                ; $6559: $18 $17

    jr jr_0e4_6578                                ; $655b: $18 $1b

    ld e, $1f                                     ; $655d: $1e $1f
    jr jr_0e4_6580                                ; $655f: $18 $1f

    add hl, de                                    ; $6561: $19
    rrca                                          ; $6562: $0f
    add hl, bc                                    ; $6563: $09
    rra                                           ; $6564: $1f
    inc e                                         ; $6565: $1c
    dec bc                                        ; $6566: $0b
    rrca                                          ; $6567: $0f
    dec [hl]                                      ; $6568: $35
    ccf                                           ; $6569: $3f
    ld c, [hl]                                    ; $656a: $4e
    ld a, a                                       ; $656b: $7f
    ld e, c                                       ; $656c: $59
    ld a, a                                       ; $656d: $7f
    or b                                          ; $656e: $b0
    rst $38                                       ; $656f: $ff
    pop de                                        ; $6570: $d1
    rst $38                                       ; $6571: $ff

jr_0e4_6572:
    ld [bc], a                                    ; $6572: $02
    ld h, b                                       ; $6573: $60
    adc c                                         ; $6574: $89
    ld d, b                                       ; $6575: $50
    ld [hl], b                                    ; $6576: $70
    ld h, b                                       ; $6577: $60

jr_0e4_6578:
    jr nc, jr_0e4_65f2                            ; $6578: $30 $78

    jr jr_0e4_65e4                                ; $657a: $18 $68

    jr jr_0e4_65d6                                ; $657c: $18 $58

    ld [bc], a                                    ; $657e: $02
    ld a, b                                       ; $657f: $78

jr_0e4_6580:
    or c                                          ; $6580: $b1
    ld e, b                                       ; $6581: $58
    ld a, b                                       ; $6582: $78
    jr jr_0e4_65f5                                ; $6583: $18 $70

    ld d, b                                       ; $6585: $50
    ld a, b                                       ; $6586: $78
    jr c, jr_0e4_65d9                             ; $6587: $38 $50

    ld [hl], b                                    ; $6589: $70
    inc l                                         ; $658a: $2c
    ld a, h                                       ; $658b: $7c
    ld [hl], d                                    ; $658c: $72
    ld a, [hl]                                    ; $658d: $7e
    ld a, [hl-]                                   ; $658e: $3a
    ld a, [hl]                                    ; $658f: $7e
    dec e                                         ; $6590: $1d
    ld a, a                                       ; $6591: $7f
    dec de                                        ; $6592: $1b
    ld a, a                                       ; $6593: $7f
    or b                                          ; $6594: $b0
    rst $38                                       ; $6595: $ff
    or c                                          ; $6596: $b1
    rst $38                                       ; $6597: $ff
    sub b                                         ; $6598: $90
    rst $38                                       ; $6599: $ff
    xor c                                         ; $659a: $a9
    rst $38                                       ; $659b: $ff
    ldh a, [rIE]                                  ; $659c: $f0 $ff
    pop af                                        ; $659e: $f1
    cp a                                          ; $659f: $bf
    pop hl                                        ; $65a0: $e1
    rst $38                                       ; $65a1: $ff
    pop hl                                        ; $65a2: $e1
    rst $38                                       ; $65a3: $ff
    and e                                         ; $65a4: $a3
    rst $38                                       ; $65a5: $ff
    or e                                          ; $65a6: $b3
    rst $38                                       ; $65a7: $ff
    ld a, l                                       ; $65a8: $7d
    ld a, a                                       ; $65a9: $7f
    ld e, e                                       ; $65aa: $5b
    ld a, a                                       ; $65ab: $7f
    ld d, e                                       ; $65ac: $53
    ld a, a                                       ; $65ad: $7f
    cp l                                          ; $65ae: $bd
    rst $38                                       ; $65af: $ff
    ld h, [hl]                                    ; $65b0: $66
    ld a, [hl]                                    ; $65b1: $7e
    ld [bc], a                                    ; $65b2: $02
    inc e                                         ; $65b3: $1c
    sbc [hl]                                      ; $65b4: $9e
    dec c                                         ; $65b5: $0d
    ld a, a                                       ; $65b6: $7f
    dec c                                         ; $65b7: $0d
    ld a, a                                       ; $65b8: $7f
    add hl, bc                                    ; $65b9: $09
    ld a, a                                       ; $65ba: $7f
    dec d                                         ; $65bb: $15
    ld a, a                                       ; $65bc: $7f
    rrca                                          ; $65bd: $0f
    ld a, a                                       ; $65be: $7f
    rlca                                          ; $65bf: $07
    ld a, l                                       ; $65c0: $7d
    rlca                                          ; $65c1: $07
    ld a, a                                       ; $65c2: $7f
    rlca                                          ; $65c3: $07
    ld a, a                                       ; $65c4: $7f
    ld b, l                                       ; $65c5: $45
    ld a, a                                       ; $65c6: $7f
    ld c, l                                       ; $65c7: $4d
    ld a, a                                       ; $65c8: $7f
    ld a, d                                       ; $65c9: $7a
    ld a, [hl]                                    ; $65ca: $7e
    ld c, d                                       ; $65cb: $4a
    ld a, [hl]                                    ; $65cc: $7e
    ld c, d                                       ; $65cd: $4a
    ld a, [hl]                                    ; $65ce: $7e
    dec a                                         ; $65cf: $3d
    ld a, a                                       ; $65d0: $7f
    ld h, [hl]                                    ; $65d1: $66
    ld a, [hl]                                    ; $65d2: $7e
    ld [bc], a                                    ; $65d3: $02
    jr c, @+$01                                   ; $65d4: $38 $ff

jr_0e4_65d6:
    dec c                                         ; $65d6: $0d
    inc b                                         ; $65d7: $04
    ld sp, hl                                     ; $65d8: $f9

jr_0e4_65d9:
    ld [$01f2], sp                                ; $65d9: $08 $f2 $01
    ld [c], a                                     ; $65dc: $e2
    ld sp, hl                                     ; $65dd: $f9
    ld [c], a                                     ; $65de: $e2
    nop                                           ; $65df: $00
    ld a, [c]                                     ; $65e0: $f2
    ld sp, hl                                     ; $65e1: $f9
    ld a, [c]                                     ; $65e2: $f2
    nop                                           ; $65e3: $00

jr_0e4_65e4:
    ld [bc], a                                    ; $65e4: $02
    rlca                                          ; $65e5: $07
    add c                                         ; $65e6: $81
    dec bc                                        ; $65e7: $0b
    ld [bc], a                                    ; $65e8: $02
    rrca                                          ; $65e9: $0f
    sbc e                                         ; $65ea: $9b
    inc c                                         ; $65eb: $0c
    rrca                                          ; $65ec: $0f
    ld [$181f], sp                                ; $65ed: $08 $1f $18
    dec de                                        ; $65f0: $1b
    dec e                                         ; $65f1: $1d

jr_0e4_65f2:
    rra                                           ; $65f2: $1f
    add hl, de                                    ; $65f3: $19
    rra                                           ; $65f4: $1f

jr_0e4_65f5:
    dec de                                        ; $65f5: $1b
    rrca                                          ; $65f6: $0f
    add hl, bc                                    ; $65f7: $09
    rra                                           ; $65f8: $1f
    inc e                                         ; $65f9: $1c
    dec bc                                        ; $65fa: $0b
    rrca                                          ; $65fb: $0f
    dec [hl]                                      ; $65fc: $35
    ccf                                           ; $65fd: $3f
    ld b, [hl]                                    ; $65fe: $46
    ld a, a                                       ; $65ff: $7f
    ld e, c                                       ; $6600: $59
    ld a, a                                       ; $6601: $7f
    ld [hl], b                                    ; $6602: $70
    ld a, a                                       ; $6603: $7f
    pop de                                        ; $6604: $d1
    rst $38                                       ; $6605: $ff
    ld [bc], a                                    ; $6606: $02
    ld h, b                                       ; $6607: $60
    add e                                         ; $6608: $83
    db $10                                        ; $6609: $10
    ld [hl], b                                    ; $660a: $70
    ld c, b                                       ; $660b: $48
    ld [bc], a                                    ; $660c: $02
    ld a, b                                       ; $660d: $78
    add h                                         ; $660e: $84
    jr c, jr_0e4_6679                             ; $660f: $38 $68

    jr jr_0e4_664b                                ; $6611: $18 $38

    ld [bc], a                                    ; $6613: $02
    ld a, b                                       ; $6614: $78
    xor a                                         ; $6615: $af
    jr jr_0e4_6694                                ; $6616: $18 $7c

    inc e                                         ; $6618: $1c
    ld a, b                                       ; $6619: $78
    ld e, b                                       ; $661a: $58
    ld a, b                                       ; $661b: $78
    jr c, jr_0e4_666e                             ; $661c: $38 $50

    ld [hl], b                                    ; $661e: $70
    inc l                                         ; $661f: $2c
    ld a, h                                       ; $6620: $7c
    ld h, d                                       ; $6621: $62
    ld a, [hl]                                    ; $6622: $7e
    ld a, [hl-]                                   ; $6623: $3a
    ld a, [hl]                                    ; $6624: $7e
    dec e                                         ; $6625: $1d
    ld a, a                                       ; $6626: $7f
    dec de                                        ; $6627: $1b
    ld a, a                                       ; $6628: $7f
    ret nc                                        ; $6629: $d0

    rst $38                                       ; $662a: $ff
    or c                                          ; $662b: $b1
    rst $38                                       ; $662c: $ff
    sub b                                         ; $662d: $90
    rst $38                                       ; $662e: $ff
    sbc c                                         ; $662f: $99
    rst $38                                       ; $6630: $ff
    or b                                          ; $6631: $b0
    rst $38                                       ; $6632: $ff
    or c                                          ; $6633: $b1
    rst $18                                       ; $6634: $df
    pop hl                                        ; $6635: $e1
    cp a                                          ; $6636: $bf
    pop hl                                        ; $6637: $e1
    rst $38                                       ; $6638: $ff
    and e                                         ; $6639: $a3
    rst $38                                       ; $663a: $ff
    or e                                          ; $663b: $b3
    rst $38                                       ; $663c: $ff
    ld a, l                                       ; $663d: $7d
    ld a, a                                       ; $663e: $7f
    ld e, e                                       ; $663f: $5b
    ld a, a                                       ; $6640: $7f
    ld e, a                                       ; $6641: $5f
    ld a, a                                       ; $6642: $7f
    rst $30                                       ; $6643: $f7
    rst $38                                       ; $6644: $ff
    ld [bc], a                                    ; $6645: $02
    ld l, $02                                     ; $6646: $2e $02
    nop                                           ; $6648: $00
    sbc h                                         ; $6649: $9c
    dec c                                         ; $664a: $0d

jr_0e4_664b:
    ld a, a                                       ; $664b: $7f
    add hl, bc                                    ; $664c: $09
    ld a, a                                       ; $664d: $7f
    dec c                                         ; $664e: $0d
    ld a, a                                       ; $664f: $7f
    rla                                           ; $6650: $17
    ld a, a                                       ; $6651: $7f
    rrca                                          ; $6652: $0f
    ld a, l                                       ; $6653: $7d
    rrca                                          ; $6654: $0f
    ld a, a                                       ; $6655: $7f
    ld b, a                                       ; $6656: $47
    ld a, a                                       ; $6657: $7f
    ld b, a                                       ; $6658: $47
    ld a, a                                       ; $6659: $7f
    ld h, l                                       ; $665a: $65
    ld a, a                                       ; $665b: $7f
    ld a, l                                       ; $665c: $7d
    ld a, a                                       ; $665d: $7f
    ld c, c                                       ; $665e: $49
    ld a, a                                       ; $665f: $7f
    ld l, d                                       ; $6660: $6a
    ld a, [hl]                                    ; $6661: $7e
    ld e, d                                       ; $6662: $5a
    ld a, [hl]                                    ; $6663: $7e
    ld h, a                                       ; $6664: $67
    ld a, a                                       ; $6665: $7f
    ld [bc], a                                    ; $6666: $02
    ld a, h                                       ; $6667: $7c
    ld [bc], a                                    ; $6668: $02
    ld [hl], b                                    ; $6669: $70
    rst $38                                       ; $666a: $ff
    dec c                                         ; $666b: $0d
    inc b                                         ; $666c: $04
    ld sp, hl                                     ; $666d: $f9

jr_0e4_666e:
    ld [$01f2], sp                                ; $666e: $08 $f2 $01
    db $e3                                        ; $6671: $e3
    ld sp, hl                                     ; $6672: $f9
    db $e3                                        ; $6673: $e3
    nop                                           ; $6674: $00
    di                                            ; $6675: $f3
    ld sp, hl                                     ; $6676: $f9
    di                                            ; $6677: $f3
    nop                                           ; $6678: $00

jr_0e4_6679:
    ld [bc], a                                    ; $6679: $02
    rlca                                          ; $667a: $07
    add c                                         ; $667b: $81
    dec bc                                        ; $667c: $0b
    ld [bc], a                                    ; $667d: $02
    rrca                                          ; $667e: $0f
    sbc e                                         ; $667f: $9b
    inc c                                         ; $6680: $0c
    rra                                           ; $6681: $1f
    jr jr_0e4_66a3                                ; $6682: $18 $1f

    jr jr_0e4_66a1                                ; $6684: $18 $1b

    dec e                                         ; $6686: $1d
    rra                                           ; $6687: $1f
    add hl, de                                    ; $6688: $19
    rrca                                          ; $6689: $0f
    dec bc                                        ; $668a: $0b
    rra                                           ; $668b: $1f
    add hl, de                                    ; $668c: $19
    rlca                                          ; $668d: $07
    inc b                                         ; $668e: $04
    dec bc                                        ; $668f: $0b
    rrca                                          ; $6690: $0f
    dec [hl]                                      ; $6691: $35
    ccf                                           ; $6692: $3f
    ld c, [hl]                                    ; $6693: $4e

jr_0e4_6694:
    ld a, a                                       ; $6694: $7f
    ld e, c                                       ; $6695: $59
    ld a, a                                       ; $6696: $7f
    or b                                          ; $6697: $b0
    rst $38                                       ; $6698: $ff
    pop de                                        ; $6699: $d1
    rst $38                                       ; $669a: $ff
    ld [bc], a                                    ; $669b: $02
    ld h, b                                       ; $669c: $60
    add e                                         ; $669d: $83
    db $10                                        ; $669e: $10
    ld [hl], b                                    ; $669f: $70
    ld c, b                                       ; $66a0: $48

jr_0e4_66a1:
    ld [bc], a                                    ; $66a1: $02
    ld a, b                                       ; $66a2: $78

jr_0e4_66a3:
    xor e                                         ; $66a3: $ab
    jr c, @+$6a                                   ; $66a4: $38 $68

    jr jr_0e4_66e0                                ; $66a6: $18 $38

    ld a, b                                       ; $66a8: $78
    ld a, h                                       ; $66a9: $7c
    inc e                                         ; $66aa: $1c
    ld a, h                                       ; $66ab: $7c
    inc e                                         ; $66ac: $1c
    ld a, b                                       ; $66ad: $78
    ld e, b                                       ; $66ae: $58
    ld l, b                                       ; $66af: $68
    jr z, @+$52                                   ; $66b0: $28 $50

    ld [hl], b                                    ; $66b2: $70
    inc l                                         ; $66b3: $2c
    ld a, h                                       ; $66b4: $7c
    ld [hl], d                                    ; $66b5: $72
    ld a, [hl]                                    ; $66b6: $7e
    add hl, sp                                    ; $66b7: $39
    ld a, a                                       ; $66b8: $7f
    dec e                                         ; $66b9: $1d
    ld a, a                                       ; $66ba: $7f
    dec de                                        ; $66bb: $1b
    ld a, a                                       ; $66bc: $7f
    ldh a, [rIE]                                  ; $66bd: $f0 $ff
    or c                                          ; $66bf: $b1
    rst $38                                       ; $66c0: $ff
    sub b                                         ; $66c1: $90
    rst $38                                       ; $66c2: $ff
    xor c                                         ; $66c3: $a9
    rst $38                                       ; $66c4: $ff
    or b                                          ; $66c5: $b0
    rst $38                                       ; $66c6: $ff
    pop af                                        ; $66c7: $f1
    sbc a                                         ; $66c8: $9f
    pop hl                                        ; $66c9: $e1
    rst $38                                       ; $66ca: $ff
    and e                                         ; $66cb: $a3
    rst $38                                       ; $66cc: $ff
    or e                                          ; $66cd: $b3
    rst $38                                       ; $66ce: $ff
    ld [bc], a                                    ; $66cf: $02
    ld a, a                                       ; $66d0: $7f
    add [hl]                                      ; $66d1: $86
    ld d, e                                       ; $66d2: $53
    ld a, a                                       ; $66d3: $7f
    ld e, a                                       ; $66d4: $5f
    ld a, a                                       ; $66d5: $7f
    cp a                                          ; $66d6: $bf
    rst $38                                       ; $66d7: $ff
    ld [bc], a                                    ; $66d8: $02
    ld l, h                                       ; $66d9: $6c
    inc b                                         ; $66da: $04
    nop                                           ; $66db: $00
    sbc h                                         ; $66dc: $9c
    dec c                                         ; $66dd: $0d
    ld a, a                                       ; $66de: $7f
    dec c                                         ; $66df: $0d

jr_0e4_66e0:
    ld a, a                                       ; $66e0: $7f
    add hl, bc                                    ; $66e1: $09
    ld a, a                                       ; $66e2: $7f
    dec d                                         ; $66e3: $15
    ld a, a                                       ; $66e4: $7f
    rrca                                          ; $66e5: $0f
    ld a, l                                       ; $66e6: $7d
    rrca                                          ; $66e7: $0f
    ld a, a                                       ; $66e8: $7f
    ld b, a                                       ; $66e9: $47
    ld a, a                                       ; $66ea: $7f
    ld b, l                                       ; $66eb: $45
    ld a, a                                       ; $66ec: $7f
    ld l, l                                       ; $66ed: $6d
    ld a, a                                       ; $66ee: $7f
    ld a, l                                       ; $66ef: $7d
    ld a, a                                       ; $66f0: $7f
    ld c, l                                       ; $66f1: $4d
    ld a, a                                       ; $66f2: $7f
    ld c, d                                       ; $66f3: $4a
    ld a, [hl]                                    ; $66f4: $7e
    ccf                                           ; $66f5: $3f
    ld a, a                                       ; $66f6: $7f
    ld b, h                                       ; $66f7: $44
    ld a, h                                       ; $66f8: $7c
    ld [bc], a                                    ; $66f9: $02
    ld a, b                                       ; $66fa: $78
    ld [bc], a                                    ; $66fb: $02
    nop                                           ; $66fc: $00
    rst $38                                       ; $66fd: $ff
    dec c                                         ; $66fe: $0d
    inc b                                         ; $66ff: $04
    ld sp, hl                                     ; $6700: $f9
    ld [$01f2], sp                                ; $6701: $08 $f2 $01
    ld [c], a                                     ; $6704: $e2
    ld sp, hl                                     ; $6705: $f9
    ld [c], a                                     ; $6706: $e2
    nop                                           ; $6707: $00
    ld a, [c]                                     ; $6708: $f2
    ld sp, hl                                     ; $6709: $f9
    ld a, [c]                                     ; $670a: $f2
    nop                                           ; $670b: $00
    ld [bc], a                                    ; $670c: $02
    ld b, $81                                     ; $670d: $06 $81
    dec bc                                        ; $670f: $0b
    ld [bc], a                                    ; $6710: $02
    rrca                                          ; $6711: $0f
    sbc e                                         ; $6712: $9b
    inc c                                         ; $6713: $0c
    rra                                           ; $6714: $1f
    jr jr_0e4_672e                                ; $6715: $18 $17

    jr jr_0e4_6734                                ; $6717: $18 $1b

    ld e, $1f                                     ; $6719: $1e $1f
    jr jr_0e4_673c                                ; $671b: $18 $1f

    add hl, de                                    ; $671d: $19
    rrca                                          ; $671e: $0f
    add hl, bc                                    ; $671f: $09
    rra                                           ; $6720: $1f
    inc e                                         ; $6721: $1c
    dec bc                                        ; $6722: $0b
    rrca                                          ; $6723: $0f
    dec [hl]                                      ; $6724: $35
    ccf                                           ; $6725: $3f
    ld b, [hl]                                    ; $6726: $46
    ld a, a                                       ; $6727: $7f
    ld c, c                                       ; $6728: $49
    ld a, a                                       ; $6729: $7f
    or b                                          ; $672a: $b0
    rst $38                                       ; $672b: $ff
    pop de                                        ; $672c: $d1
    rst $38                                       ; $672d: $ff

jr_0e4_672e:
    ld [bc], a                                    ; $672e: $02
    ld h, b                                       ; $672f: $60
    adc c                                         ; $6730: $89
    ld d, b                                       ; $6731: $50
    ld [hl], b                                    ; $6732: $70
    ld h, b                                       ; $6733: $60

jr_0e4_6734:
    jr nc, jr_0e4_67ae                            ; $6734: $30 $78

    jr jr_0e4_67a0                                ; $6736: $18 $68

    jr jr_0e4_6792                                ; $6738: $18 $58

    ld [bc], a                                    ; $673a: $02
    ld a, b                                       ; $673b: $78

jr_0e4_673c:
    and h                                         ; $673c: $a4
    ld e, b                                       ; $673d: $58
    ld a, b                                       ; $673e: $78
    jr jr_0e4_67b1                                ; $673f: $18 $70

    ld d, b                                       ; $6741: $50
    ld a, b                                       ; $6742: $78
    jr c, jr_0e4_6795                             ; $6743: $38 $50

    ld [hl], b                                    ; $6745: $70
    inc l                                         ; $6746: $2c
    ld a, h                                       ; $6747: $7c
    ld h, d                                       ; $6748: $62
    ld a, [hl]                                    ; $6749: $7e
    ld [hl-], a                                   ; $674a: $32
    ld a, [hl]                                    ; $674b: $7e
    dec e                                         ; $674c: $1d
    ld a, a                                       ; $674d: $7f
    dec de                                        ; $674e: $1b
    ld a, a                                       ; $674f: $7f
    or b                                          ; $6750: $b0
    rst $38                                       ; $6751: $ff
    or c                                          ; $6752: $b1
    rst $38                                       ; $6753: $ff
    sub b                                         ; $6754: $90
    rst $38                                       ; $6755: $ff
    xor c                                         ; $6756: $a9
    rst $38                                       ; $6757: $ff
    ldh a, [rIE]                                  ; $6758: $f0 $ff
    pop af                                        ; $675a: $f1
    cp a                                          ; $675b: $bf
    pop hl                                        ; $675c: $e1
    rst $38                                       ; $675d: $ff
    db $e3                                        ; $675e: $e3
    rst $38                                       ; $675f: $ff
    and e                                         ; $6760: $a3
    inc bc                                        ; $6761: $03
    rst $38                                       ; $6762: $ff
    adc b                                         ; $6763: $88
    ld [hl], c                                    ; $6764: $71
    ld a, a                                       ; $6765: $7f
    ld d, e                                       ; $6766: $53
    ld a, a                                       ; $6767: $7f
    rst $18                                       ; $6768: $df
    rst $38                                       ; $6769: $ff
    or e                                          ; $676a: $b3
    rst $38                                       ; $676b: $ff
    ld [bc], a                                    ; $676c: $02
    ld l, [hl]                                    ; $676d: $6e
    ld [bc], a                                    ; $676e: $02
    nop                                           ; $676f: $00
    sbc c                                         ; $6770: $99
    dec c                                         ; $6771: $0d
    ld a, a                                       ; $6772: $7f
    dec c                                         ; $6773: $0d
    ld a, a                                       ; $6774: $7f
    add hl, bc                                    ; $6775: $09
    ld a, a                                       ; $6776: $7f
    dec d                                         ; $6777: $15
    ld a, a                                       ; $6778: $7f
    rrca                                          ; $6779: $0f
    ld a, a                                       ; $677a: $7f
    rlca                                          ; $677b: $07
    ld a, l                                       ; $677c: $7d
    rlca                                          ; $677d: $07
    ld a, a                                       ; $677e: $7f
    rlca                                          ; $677f: $07
    ld a, a                                       ; $6780: $7f
    ld b, l                                       ; $6781: $45
    ld a, a                                       ; $6782: $7f
    ld c, l                                       ; $6783: $4d
    ld a, a                                       ; $6784: $7f
    ld a, e                                       ; $6785: $7b
    ld a, a                                       ; $6786: $7f
    ld c, d                                       ; $6787: $4a
    ld a, [hl]                                    ; $6788: $7e
    ld e, d                                       ; $6789: $5a
    inc bc                                        ; $678a: $03
    ld a, [hl]                                    ; $678b: $7e
    add d                                         ; $678c: $82
    ld h, h                                       ; $678d: $64
    ld a, h                                       ; $678e: $7c
    ld [bc], a                                    ; $678f: $02
    jr c, @+$01                                   ; $6790: $38 $ff

jr_0e4_6792:
    dec c                                         ; $6792: $0d
    inc b                                         ; $6793: $04
    ld sp, hl                                     ; $6794: $f9

jr_0e4_6795:
    ld [$01f2], sp                                ; $6795: $08 $f2 $01
    ld [c], a                                     ; $6798: $e2
    ld sp, hl                                     ; $6799: $f9
    ld [c], a                                     ; $679a: $e2
    nop                                           ; $679b: $00
    ld a, [c]                                     ; $679c: $f2
    ld sp, hl                                     ; $679d: $f9
    ld a, [c]                                     ; $679e: $f2
    nop                                           ; $679f: $00

jr_0e4_67a0:
    ld [bc], a                                    ; $67a0: $02
    rlca                                          ; $67a1: $07
    adc c                                         ; $67a2: $89
    add hl, bc                                    ; $67a3: $09
    rrca                                          ; $67a4: $0f
    inc de                                        ; $67a5: $13
    ld e, $1f                                     ; $67a6: $1e $1f
    inc e                                         ; $67a8: $1c
    rla                                           ; $67a9: $17
    jr jr_0e4_67c9                                ; $67aa: $18 $1d

    ld [bc], a                                    ; $67ac: $02
    rra                                           ; $67ad: $1f

jr_0e4_67ae:
    sub e                                         ; $67ae: $93
    add hl, de                                    ; $67af: $19
    ccf                                           ; $67b0: $3f

jr_0e4_67b1:
    jr c, @+$21                                   ; $67b1: $38 $1f

    add hl, de                                    ; $67b3: $19
    rra                                           ; $67b4: $1f
    inc e                                         ; $67b5: $1c
    dec bc                                        ; $67b6: $0b
    rrca                                          ; $67b7: $0f
    dec [hl]                                      ; $67b8: $35
    ccf                                           ; $67b9: $3f
    ld b, [hl]                                    ; $67ba: $46
    ld a, a                                       ; $67bb: $7f
    ld e, c                                       ; $67bc: $59
    ld a, a                                       ; $67bd: $7f
    or b                                          ; $67be: $b0
    rst $38                                       ; $67bf: $ff
    pop de                                        ; $67c0: $d1
    rst $38                                       ; $67c1: $ff
    ld [bc], a                                    ; $67c2: $02
    ld h, b                                       ; $67c3: $60
    add c                                         ; $67c4: $81
    ld d, b                                       ; $67c5: $50
    ld [bc], a                                    ; $67c6: $02
    ld [hl], b                                    ; $67c7: $70
    or a                                          ; $67c8: $b7

jr_0e4_67c9:
    jr nc, @+$72                                  ; $67c9: $30 $70

    db $10                                        ; $67cb: $10
    ld a, b                                       ; $67cc: $78
    jr jr_0e4_6827                                ; $67cd: $18 $58

    jr c, jr_0e4_6849                             ; $67cf: $38 $78

    jr jr_0e4_684b                                ; $67d1: $18 $78

    ld e, b                                       ; $67d3: $58
    ld [hl], b                                    ; $67d4: $70
    ld d, b                                       ; $67d5: $50
    ld a, b                                       ; $67d6: $78
    jr c, jr_0e4_6829                             ; $67d7: $38 $50

    ld [hl], b                                    ; $67d9: $70
    inc l                                         ; $67da: $2c
    ld a, h                                       ; $67db: $7c
    ld h, d                                       ; $67dc: $62
    ld a, [hl]                                    ; $67dd: $7e
    ld a, [hl-]                                   ; $67de: $3a
    ld a, [hl]                                    ; $67df: $7e
    ld e, $7e                                     ; $67e0: $1e $7e
    dec de                                        ; $67e2: $1b
    ld a, a                                       ; $67e3: $7f
    or b                                          ; $67e4: $b0
    rst $38                                       ; $67e5: $ff
    sub c                                         ; $67e6: $91
    rst $38                                       ; $67e7: $ff
    or b                                          ; $67e8: $b0
    rst $38                                       ; $67e9: $ff
    jp hl                                         ; $67ea: $e9


    rst $38                                       ; $67eb: $ff
    ldh a, [$bf]                                  ; $67ec: $f0 $bf
    pop af                                        ; $67ee: $f1
    rst $38                                       ; $67ef: $ff
    di                                            ; $67f0: $f3
    rst $38                                       ; $67f1: $ff
    db $e3                                        ; $67f2: $e3
    rst $38                                       ; $67f3: $ff
    and a                                         ; $67f4: $a7
    rst $38                                       ; $67f5: $ff
    cp l                                          ; $67f6: $bd
    rst $38                                       ; $67f7: $ff
    or e                                          ; $67f8: $b3
    rst $38                                       ; $67f9: $ff
    ld d, a                                       ; $67fa: $57
    ld a, a                                       ; $67fb: $7f
    ld e, e                                       ; $67fc: $5b
    ld a, a                                       ; $67fd: $7f
    rst $20                                       ; $67fe: $e7

Jump_0e4_67ff:
    rst $38                                       ; $67ff: $ff
    ld [bc], a                                    ; $6800: $02
    ld a, $02                                     ; $6801: $3e $02
    ld c, $9c                                     ; $6803: $0e $9c
    dec bc                                        ; $6805: $0b
    ld a, a                                       ; $6806: $7f
    dec c                                         ; $6807: $0d
    ld a, a                                       ; $6808: $7f
    add hl, bc                                    ; $6809: $09
    ld a, a                                       ; $680a: $7f
    add hl, de                                    ; $680b: $19
    ld a, a                                       ; $680c: $7f
    dec c                                         ; $680d: $0d
    ld a, a                                       ; $680e: $7f
    dec c                                         ; $680f: $0d
    ld a, e                                       ; $6810: $7b
    rlca                                          ; $6811: $07
    ld a, l                                       ; $6812: $7d
    rlca                                          ; $6813: $07
    ld a, a                                       ; $6814: $7f
    ld b, l                                       ; $6815: $45
    ld a, a                                       ; $6816: $7f
    ld c, l                                       ; $6817: $4d
    ld a, a                                       ; $6818: $7f
    ld a, d                                       ; $6819: $7a
    ld a, [hl]                                    ; $681a: $7e
    ld e, d                                       ; $681b: $5a
    ld a, [hl]                                    ; $681c: $7e
    ld a, d                                       ; $681d: $7a
    ld a, [hl]                                    ; $681e: $7e
    ld l, a                                       ; $681f: $6f
    ld a, a                                       ; $6820: $7f
    ld [bc], a                                    ; $6821: $02
    ld [hl], h                                    ; $6822: $74
    ld [bc], a                                    ; $6823: $02
    nop                                           ; $6824: $00
    rst $38                                       ; $6825: $ff
    dec c                                         ; $6826: $0d

jr_0e4_6827:
    inc b                                         ; $6827: $04
    ld sp, hl                                     ; $6828: $f9

jr_0e4_6829:
    ld [$01f2], sp                                ; $6829: $08 $f2 $01
    db $e3                                        ; $682c: $e3
    ld sp, hl                                     ; $682d: $f9
    db $e3                                        ; $682e: $e3
    nop                                           ; $682f: $00
    di                                            ; $6830: $f3
    ld sp, hl                                     ; $6831: $f9
    di                                            ; $6832: $f3
    nop                                           ; $6833: $00
    ld [bc], a                                    ; $6834: $02
    rlca                                          ; $6835: $07
    sbc [hl]                                      ; $6836: $9e
    add hl, bc                                    ; $6837: $09
    rrca                                          ; $6838: $0f
    inc de                                        ; $6839: $13
    ld e, $1f                                     ; $683a: $1e $1f
    inc e                                         ; $683c: $1c
    rla                                           ; $683d: $17
    jr @+$1f                                      ; $683e: $18 $1d

    rra                                           ; $6840: $1f
    ccf                                           ; $6841: $3f
    add hl, sp                                    ; $6842: $39
    ccf                                           ; $6843: $3f
    jr c, @+$21                                   ; $6844: $38 $1f

    add hl, de                                    ; $6846: $19
    rla                                           ; $6847: $17
    inc d                                         ; $6848: $14

jr_0e4_6849:
    dec bc                                        ; $6849: $0b
    rrca                                          ; $684a: $0f

jr_0e4_684b:
    dec [hl]                                      ; $684b: $35
    ccf                                           ; $684c: $3f
    ld c, [hl]                                    ; $684d: $4e
    ld a, a                                       ; $684e: $7f
    sbc c                                         ; $684f: $99
    rst $38                                       ; $6850: $ff
    or b                                          ; $6851: $b0
    rst $38                                       ; $6852: $ff
    pop de                                        ; $6853: $d1
    rst $38                                       ; $6854: $ff
    ld [bc], a                                    ; $6855: $02
    ld h, b                                       ; $6856: $60
    add c                                         ; $6857: $81
    ld d, b                                       ; $6858: $50
    ld [bc], a                                    ; $6859: $02
    ld [hl], b                                    ; $685a: $70
    or a                                          ; $685b: $b7
    jr nc, jr_0e4_68d6                            ; $685c: $30 $78

    jr jr_0e4_68d8                                ; $685e: $18 $78

    jr jr_0e4_68ba                                ; $6860: $18 $58

    jr c, jr_0e4_68dc                             ; $6862: $38 $78

    jr jr_0e4_68d6                                ; $6864: $18 $70

    ld d, b                                       ; $6866: $50
    ld a, b                                       ; $6867: $78
    ld e, b                                       ; $6868: $58
    ld h, b                                       ; $6869: $60
    jr nz, @+$52                                  ; $686a: $20 $50

    ld [hl], b                                    ; $686c: $70
    inc l                                         ; $686d: $2c
    ld a, h                                       ; $686e: $7c
    ld [hl], d                                    ; $686f: $72
    ld a, [hl]                                    ; $6870: $7e
    ld a, [hl-]                                   ; $6871: $3a
    ld a, [hl]                                    ; $6872: $7e
    dec e                                         ; $6873: $1d
    ld a, a                                       ; $6874: $7f
    dec de                                        ; $6875: $1b
    ld a, a                                       ; $6876: $7f
    or b                                          ; $6877: $b0
    rst $38                                       ; $6878: $ff
    or c                                          ; $6879: $b1
    rst $38                                       ; $687a: $ff
    sub b                                         ; $687b: $90
    rst $38                                       ; $687c: $ff
    xor c                                         ; $687d: $a9
    rst $38                                       ; $687e: $ff
    ldh a, [$bf]                                  ; $687f: $f0 $bf
    pop af                                        ; $6881: $f1
    rst $38                                       ; $6882: $ff
    db $e3                                        ; $6883: $e3
    rst $38                                       ; $6884: $ff
    and e                                         ; $6885: $a3
    rst $38                                       ; $6886: $ff
    or a                                          ; $6887: $b7
    rst $38                                       ; $6888: $ff
    cp l                                          ; $6889: $bd
    rst $38                                       ; $688a: $ff
    cp e                                          ; $688b: $bb
    rst $38                                       ; $688c: $ff
    ld d, e                                       ; $688d: $53
    ld a, a                                       ; $688e: $7f
    db $fd                                        ; $688f: $fd
    rst $38                                       ; $6890: $ff
    ld [hl+], a                                   ; $6891: $22
    ld a, $02                                     ; $6892: $3e $02
    ld e, $02                                     ; $6894: $1e $02
    nop                                           ; $6896: $00
    sbc d                                         ; $6897: $9a
    rrca                                          ; $6898: $0f
    ld a, a                                       ; $6899: $7f
    dec c                                         ; $689a: $0d
    ld a, a                                       ; $689b: $7f
    add hl, bc                                    ; $689c: $09
    ld a, a                                       ; $689d: $7f
    dec d                                         ; $689e: $15
    ld a, a                                       ; $689f: $7f
    dec c                                         ; $68a0: $0d
    ld a, a                                       ; $68a1: $7f
    rrca                                          ; $68a2: $0f
    ld a, c                                       ; $68a3: $79
    rlca                                          ; $68a4: $07
    ld a, a                                       ; $68a5: $7f
    ld b, l                                       ; $68a6: $45
    ld a, a                                       ; $68a7: $7f
    ld c, l                                       ; $68a8: $4d
    ld a, a                                       ; $68a9: $7f
    ld a, d                                       ; $68aa: $7a
    ld a, [hl]                                    ; $68ab: $7e
    ld c, d                                       ; $68ac: $4a
    ld a, [hl]                                    ; $68ad: $7e
    ld a, d                                       ; $68ae: $7a
    ld a, [hl]                                    ; $68af: $7e
    ld a, l                                       ; $68b0: $7d
    ld a, a                                       ; $68b1: $7f
    ld [bc], a                                    ; $68b2: $02
    ld [hl], $04                                  ; $68b3: $36 $04
    nop                                           ; $68b5: $00
    rst $38                                       ; $68b6: $ff
    dec c                                         ; $68b7: $0d
    inc b                                         ; $68b8: $04
    ld sp, hl                                     ; $68b9: $f9

jr_0e4_68ba:
    ld [$01f2], sp                                ; $68ba: $08 $f2 $01
    ld [c], a                                     ; $68bd: $e2
    ld sp, hl                                     ; $68be: $f9
    ld [c], a                                     ; $68bf: $e2
    nop                                           ; $68c0: $00
    ld a, [c]                                     ; $68c1: $f2
    ld sp, hl                                     ; $68c2: $f9
    ld a, [c]                                     ; $68c3: $f2
    nop                                           ; $68c4: $00
    ld [bc], a                                    ; $68c5: $02
    ld b, $81                                     ; $68c6: $06 $81
    dec bc                                        ; $68c8: $0b
    ld [bc], a                                    ; $68c9: $02
    rrca                                          ; $68ca: $0f
    sbc e                                         ; $68cb: $9b
    inc c                                         ; $68cc: $0c
    rra                                           ; $68cd: $1f
    jr jr_0e4_68e7                                ; $68ce: $18 $17

    jr jr_0e4_68ed                                ; $68d0: $18 $1b

    ld e, $1f                                     ; $68d2: $1e $1f
    jr jr_0e4_68f5                                ; $68d4: $18 $1f

jr_0e4_68d6:
    add hl, de                                    ; $68d6: $19
    rrca                                          ; $68d7: $0f

jr_0e4_68d8:
    add hl, bc                                    ; $68d8: $09
    rra                                           ; $68d9: $1f
    inc e                                         ; $68da: $1c
    dec bc                                        ; $68db: $0b

jr_0e4_68dc:
    rrca                                          ; $68dc: $0f
    dec [hl]                                      ; $68dd: $35
    ccf                                           ; $68de: $3f
    ld b, [hl]                                    ; $68df: $46
    ld a, a                                       ; $68e0: $7f
    ld c, c                                       ; $68e1: $49
    ld a, a                                       ; $68e2: $7f
    or b                                          ; $68e3: $b0
    rst $38                                       ; $68e4: $ff
    pop de                                        ; $68e5: $d1
    rst $38                                       ; $68e6: $ff

jr_0e4_68e7:
    ld [bc], a                                    ; $68e7: $02
    ld h, b                                       ; $68e8: $60
    adc c                                         ; $68e9: $89
    ld d, b                                       ; $68ea: $50
    ld [hl], b                                    ; $68eb: $70
    ld h, b                                       ; $68ec: $60

jr_0e4_68ed:
    jr nc, jr_0e4_6967                            ; $68ed: $30 $78

    jr @+$6a                                      ; $68ef: $18 $68

    jr jr_0e4_694b                                ; $68f1: $18 $58

    ld [bc], a                                    ; $68f3: $02
    ld a, b                                       ; $68f4: $78

jr_0e4_68f5:
    xor h                                         ; $68f5: $ac
    ld e, b                                       ; $68f6: $58
    ld a, b                                       ; $68f7: $78
    jr @+$72                                      ; $68f8: $18 $70

    ld d, b                                       ; $68fa: $50
    ld a, b                                       ; $68fb: $78
    jr c, jr_0e4_694e                             ; $68fc: $38 $50

    ld [hl], b                                    ; $68fe: $70
    inc l                                         ; $68ff: $2c
    ld a, h                                       ; $6900: $7c
    ld h, d                                       ; $6901: $62
    ld a, [hl]                                    ; $6902: $7e
    ld [hl-], a                                   ; $6903: $32
    ld a, [hl]                                    ; $6904: $7e
    dec e                                         ; $6905: $1d
    ld a, a                                       ; $6906: $7f
    dec de                                        ; $6907: $1b
    ld a, a                                       ; $6908: $7f
    or b                                          ; $6909: $b0
    rst $38                                       ; $690a: $ff
    or c                                          ; $690b: $b1
    rst $38                                       ; $690c: $ff
    sub b                                         ; $690d: $90
    rst $38                                       ; $690e: $ff
    xor c                                         ; $690f: $a9
    rst $38                                       ; $6910: $ff
    ldh a, [rIE]                                  ; $6911: $f0 $ff
    pop af                                        ; $6913: $f1
    cp a                                          ; $6914: $bf
    pop hl                                        ; $6915: $e1
    rst $38                                       ; $6916: $ff
    pop hl                                        ; $6917: $e1
    rst $38                                       ; $6918: $ff
    and e                                         ; $6919: $a3
    rst $38                                       ; $691a: $ff
    or e                                          ; $691b: $b3
    rst $38                                       ; $691c: $ff
    db $fd                                        ; $691d: $fd
    rst $38                                       ; $691e: $ff
    ld d, e                                       ; $691f: $53
    ld a, a                                       ; $6920: $7f
    ld e, e                                       ; $6921: $5b
    inc bc                                        ; $6922: $03
    ld a, a                                       ; $6923: $7f
    add d                                         ; $6924: $82
    ld h, $3e                                     ; $6925: $26 $3e
    ld [bc], a                                    ; $6927: $02
    inc e                                         ; $6928: $1c
    sub c                                         ; $6929: $91
    dec c                                         ; $692a: $0d
    ld a, a                                       ; $692b: $7f
    dec c                                         ; $692c: $0d
    ld a, a                                       ; $692d: $7f
    add hl, bc                                    ; $692e: $09
    ld a, a                                       ; $692f: $7f
    dec d                                         ; $6930: $15
    ld a, a                                       ; $6931: $7f
    rrca                                          ; $6932: $0f
    ld a, a                                       ; $6933: $7f
    rlca                                          ; $6934: $07
    ld a, l                                       ; $6935: $7d
    rlca                                          ; $6936: $07
    ld a, a                                       ; $6937: $7f
    ld b, a                                       ; $6938: $47
    ld a, a                                       ; $6939: $7f
    ld b, l                                       ; $693a: $45
    inc bc                                        ; $693b: $03
    ld a, a                                       ; $693c: $7f
    adc b                                         ; $693d: $88
    ld c, d                                       ; $693e: $4a
    ld a, [hl]                                    ; $693f: $7e
    ld c, d                                       ; $6940: $4a
    ld a, [hl]                                    ; $6941: $7e
    ld a, e                                       ; $6942: $7b
    ld a, a                                       ; $6943: $7f
    ld c, l                                       ; $6944: $4d
    ld a, a                                       ; $6945: $7f
    ld [bc], a                                    ; $6946: $02
    halt                                          ; $6947: $76
    ld [bc], a                                    ; $6948: $02
    nop                                           ; $6949: $00
    rst $38                                       ; $694a: $ff

jr_0e4_694b:
    dec c                                         ; $694b: $0d
    inc b                                         ; $694c: $04
    ld sp, hl                                     ; $694d: $f9

jr_0e4_694e:
    ld [$01f2], sp                                ; $694e: $08 $f2 $01
    ld [c], a                                     ; $6951: $e2
    db $fc                                        ; $6952: $fc
    db $e3                                        ; $6953: $e3
    rst $38                                       ; $6954: $ff
    ld a, [c]                                     ; $6955: $f2
    ld sp, hl                                     ; $6956: $f9

jr_0e4_6957:
    ld a, [c]                                     ; $6957: $f2
    cp $02                                        ; $6958: $fe $02
    rra                                           ; $695a: $1f
    sbc [hl]                                      ; $695b: $9e
    daa                                           ; $695c: $27
    ccf                                           ; $695d: $3f
    ld [hl], e                                    ; $695e: $73
    ld a, [hl]                                    ; $695f: $7e
    ld a, a                                       ; $6960: $7f
    ld a, [hl]                                    ; $6961: $7e
    ld [hl], a                                    ; $6962: $77
    ld a, [hl]                                    ; $6963: $7e
    cp $ff                                        ; $6964: $fe $ff
    ld a, a                                       ; $6966: $7f

jr_0e4_6967:
    ld a, [hl]                                    ; $6967: $7e
    cp a                                          ; $6968: $bf
    cp $57                                        ; $6969: $fe $57
    ld a, h                                       ; $696b: $7c
    ccf                                           ; $696c: $3f
    inc a                                         ; $696d: $3c
    inc de                                        ; $696e: $13
    rra                                           ; $696f: $1f
    dec a                                         ; $6970: $3d
    ccf                                           ; $6971: $3f
    ld b, d                                       ; $6972: $42
    ld a, a                                       ; $6973: $7f
    ld l, a                                       ; $6974: $6f
    ld a, a                                       ; $6975: $7f
    jp nc, $b6ff                                  ; $6976: $d2 $ff $b6

    rst $38                                       ; $6979: $ff
    ld [bc], a                                    ; $697a: $02
    inc b                                         ; $697b: $04
    add [hl]                                      ; $697c: $86
    ld b, $02                                     ; $697d: $06 $02
    ld b, $02                                     ; $697f: $06 $02
    ld b, $02                                     ; $6981: $06 $02
    ld [bc], a                                    ; $6983: $02
    ld b, $84                                     ; $6984: $06 $84
    rlca                                          ; $6986: $07
    ld bc, $0206                                  ; $6987: $01 $06 $02
    inc bc                                        ; $698a: $03
    ld b, $81                                     ; $698b: $06 $81
    ld [bc], a                                    ; $698d: $02
    ld [bc], a                                    ; $698e: $02
    inc b                                         ; $698f: $04
    ld [bc], a                                    ; $6990: $02
    nop                                           ; $6991: $00
    inc b                                         ; $6992: $04
    inc b                                         ; $6993: $04
    add c                                         ; $6994: $81
    ld [bc], a                                    ; $6995: $02
    inc bc                                        ; $6996: $03
    ld b, $a0                                     ; $6997: $06 $a0
    ld h, d                                       ; $6999: $62
    cp $14                                        ; $699a: $fe $14
    inc e                                         ; $699c: $1c
    ld d, $1f                                     ; $699d: $16 $1f
    inc d                                         ; $699f: $14
    rra                                           ; $69a0: $1f
    dec d                                         ; $69a1: $15
    rra                                           ; $69a2: $1f
    rla                                           ; $69a3: $17
    rra                                           ; $69a4: $1f
    rla                                           ; $69a5: $17
    inc e                                         ; $69a6: $1c
    rla                                           ; $69a7: $17
    rra                                           ; $69a8: $1f
    ld d, $1f                                     ; $69a9: $16 $1f
    ld d, $1f                                     ; $69ab: $16 $1f
    ld d, $1f                                     ; $69ad: $16 $1f
    daa                                           ; $69af: $27
    ccf                                           ; $69b0: $3f
    daa                                           ; $69b1: $27
    ccf                                           ; $69b2: $3f
    ld l, $3f                                     ; $69b3: $2e $3f
    ld c, a                                       ; $69b5: $4f
    ld a, a                                       ; $69b6: $7f
    cp l                                          ; $69b7: $bd
    rst $38                                       ; $69b8: $ff
    ld [bc], a                                    ; $69b9: $02
    ld [hl], a                                    ; $69ba: $77
    ld [bc], a                                    ; $69bb: $02
    nop                                           ; $69bc: $00
    sub d                                         ; $69bd: $92
    inc de                                        ; $69be: $13
    rra                                           ; $69bf: $1f
    ld de, $131f                                  ; $69c0: $11 $1f $13
    rra                                           ; $69c3: $1f
    add hl, de                                    ; $69c4: $19
    rra                                           ; $69c5: $1f
    ld [de], a                                    ; $69c6: $12
    ld e, $02                                     ; $69c7: $1e $02
    ld e, $02                                     ; $69c9: $1e $02
    ld e, $04                                     ; $69cb: $1e $04
    inc e                                         ; $69cd: $1c
    inc b                                         ; $69ce: $04
    inc e                                         ; $69cf: $1c
    ld [bc], a                                    ; $69d0: $02
    jr jr_0e4_6957                                ; $69d1: $18 $84

    ld [$0818], sp                                ; $69d3: $08 $18 $08
    jr jr_0e4_69da                                ; $69d6: $18 $02

    inc e                                         ; $69d8: $1c
    add c                                         ; $69d9: $81

jr_0e4_69da:
    ld [de], a                                    ; $69da: $12
    inc bc                                        ; $69db: $03
    ld e, $ff                                     ; $69dc: $1e $ff
    dec c                                         ; $69de: $0d
    inc b                                         ; $69df: $04
    ld sp, hl                                     ; $69e0: $f9
    ld [$01f2], sp                                ; $69e1: $08 $f2 $01
    ld [c], a                                     ; $69e4: $e2
    db $fc                                        ; $69e5: $fc
    db $e3                                        ; $69e6: $e3
    rst $38                                       ; $69e7: $ff
    ld a, [c]                                     ; $69e8: $f2
    ld sp, hl                                     ; $69e9: $f9
    ld a, [c]                                     ; $69ea: $f2
    ld bc, $1f02                                  ; $69eb: $01 $02 $1f
    sbc [hl]                                      ; $69ee: $9e
    ld [hl+], a                                   ; $69ef: $22
    ccf                                           ; $69f0: $3f
    ld [hl], a                                    ; $69f1: $77
    ld a, [hl]                                    ; $69f2: $7e
    ld a, a                                       ; $69f3: $7f
    ld a, [hl]                                    ; $69f4: $7e
    ld [hl], a                                    ; $69f5: $77
    ld a, h                                       ; $69f6: $7c
    ld [hl], l                                    ; $69f7: $75
    ld a, a                                       ; $69f8: $7f
    rst $38                                       ; $69f9: $ff
    db $fc                                        ; $69fa: $fc
    cp a                                          ; $69fb: $bf
    db $fc                                        ; $69fc: $fc
    ld d, a                                       ; $69fd: $57
    ld a, h                                       ; $69fe: $7c
    ld a, a                                       ; $69ff: $7f
    ld a, h                                       ; $6a00: $7c
    inc de                                        ; $6a01: $13
    rra                                           ; $6a02: $1f
    dec a                                         ; $6a03: $3d
    ccf                                           ; $6a04: $3f
    ld b, d                                       ; $6a05: $42
    ld a, a                                       ; $6a06: $7f
    ld l, a                                       ; $6a07: $6f
    ld a, a                                       ; $6a08: $7f
    db $d3                                        ; $6a09: $d3
    rst $38                                       ; $6a0a: $ff
    or [hl]                                       ; $6a0b: $b6
    rst $38                                       ; $6a0c: $ff
    inc bc                                        ; $6a0d: $03
    ld b, $8b                                     ; $6a0e: $06 $8b
    ld [bc], a                                    ; $6a10: $02
    ld b, $02                                     ; $6a11: $06 $02
    ld b, $02                                     ; $6a13: $06 $02
    ld b, $02                                     ; $6a15: $06 $02
    rlca                                          ; $6a17: $07
    ld bc, $0206                                  ; $6a18: $01 $06 $02
    inc bc                                        ; $6a1b: $03
    ld b, $81                                     ; $6a1c: $06 $81
    ld [bc], a                                    ; $6a1e: $02
    ld [bc], a                                    ; $6a1f: $02
    inc b                                         ; $6a20: $04
    ld [bc], a                                    ; $6a21: $02
    nop                                           ; $6a22: $00
    inc b                                         ; $6a23: $04
    inc b                                         ; $6a24: $04
    add c                                         ; $6a25: $81
    ld [bc], a                                    ; $6a26: $02
    inc bc                                        ; $6a27: $03
    ld b, $9f                                     ; $6a28: $06 $9f
    ld [hl], d                                    ; $6a2a: $72
    cp $14                                        ; $6a2b: $fe $14
    inc e                                         ; $6a2d: $1c
    ld d, $1f                                     ; $6a2e: $16 $1f
    inc d                                         ; $6a30: $14
    rra                                           ; $6a31: $1f
    ld d, $1f                                     ; $6a32: $16 $1f
    rla                                           ; $6a34: $17
    rra                                           ; $6a35: $1f
    rla                                           ; $6a36: $17
    rra                                           ; $6a37: $1f
    daa                                           ; $6a38: $27
    ccf                                           ; $6a39: $3f
    ld h, $3f                                     ; $6a3a: $26 $3f
    ld h, $3f                                     ; $6a3c: $26 $3f
    ld h, $3f                                     ; $6a3e: $26 $3f
    cpl                                           ; $6a40: $2f
    ccf                                           ; $6a41: $3f
    ld l, $3f                                     ; $6a42: $2e $3f
    ld c, h                                       ; $6a44: $4c
    ld a, a                                       ; $6a45: $7f
    ld d, a                                       ; $6a46: $57
    ld a, a                                       ; $6a47: $7f
    cp h                                          ; $6a48: $bc
    inc bc                                        ; $6a49: $03
    rst $38                                       ; $6a4a: $ff
    ld [bc], a                                    ; $6a4b: $02
    nop                                           ; $6a4c: $00
    sub h                                         ; $6a4d: $94
    sbc b                                         ; $6a4e: $98
    ld hl, sp+$48                                 ; $6a4f: $f8 $48
    ld hl, sp+$58                                 ; $6a51: $f8 $58
    ld hl, sp-$18                                 ; $6a53: $f8 $e8
    cp b                                          ; $6a55: $b8
    ret nc                                        ; $6a56: $d0

    ld [hl], b                                    ; $6a57: $70
    sbc b                                         ; $6a58: $98
    ld hl, sp+$18                                 ; $6a59: $f8 $18
    ld hl, sp+$18                                 ; $6a5b: $f8 $18
    ld hl, sp+$34                                 ; $6a5d: $f8 $34
    db $fc                                        ; $6a5f: $fc
    db $f4                                        ; $6a60: $f4
    db $fc                                        ; $6a61: $fc
    ld [bc], a                                    ; $6a62: $02
    cp a                                          ; $6a63: $bf
    add h                                         ; $6a64: $84
    cp c                                          ; $6a65: $b9
    cp a                                          ; $6a66: $bf
    ld l, $3e                                     ; $6a67: $2e $3e
    ld [bc], a                                    ; $6a69: $02
    sub b                                         ; $6a6a: $90
    ld [bc], a                                    ; $6a6b: $02
    add b                                         ; $6a6c: $80
    rst $38                                       ; $6a6d: $ff
    dec c                                         ; $6a6e: $0d
    inc b                                         ; $6a6f: $04
    ld sp, hl                                     ; $6a70: $f9
    ld [$01f2], sp                                ; $6a71: $08 $f2 $01
    db $e3                                        ; $6a74: $e3
    db $fc                                        ; $6a75: $fc
    db $e3                                        ; $6a76: $e3
    rst $38                                       ; $6a77: $ff
    di                                            ; $6a78: $f3
    ld sp, hl                                     ; $6a79: $f9
    di                                            ; $6a7a: $f3
    nop                                           ; $6a7b: $00
    ld [bc], a                                    ; $6a7c: $02
    rra                                           ; $6a7d: $1f
    sbc [hl]                                      ; $6a7e: $9e
    ld [hl+], a                                   ; $6a7f: $22
    ccf                                           ; $6a80: $3f
    ld a, a                                       ; $6a81: $7f
    ld a, [hl]                                    ; $6a82: $7e
    ld [hl], a                                    ; $6a83: $77
    ld a, [hl]                                    ; $6a84: $7e
    ld [hl], a                                    ; $6a85: $77
    ld a, h                                       ; $6a86: $7c
    db $fd                                        ; $6a87: $fd
    rst $38                                       ; $6a88: $ff
    cp a                                          ; $6a89: $bf
    db $fc                                        ; $6a8a: $fc
    rst $38                                       ; $6a8b: $ff
    db $fc                                        ; $6a8c: $fc
    ld d, a                                       ; $6a8d: $57
    ld a, h                                       ; $6a8e: $7c
    ccf                                           ; $6a8f: $3f
    inc a                                         ; $6a90: $3c
    inc de                                        ; $6a91: $13
    rra                                           ; $6a92: $1f
    dec a                                         ; $6a93: $3d
    ccf                                           ; $6a94: $3f
    ld h, d                                       ; $6a95: $62
    ld a, a                                       ; $6a96: $7f
    ld c, a                                       ; $6a97: $4f
    ld a, a                                       ; $6a98: $7f
    or e                                          ; $6a99: $b3
    rst $38                                       ; $6a9a: $ff
    or [hl]                                       ; $6a9b: $b6
    rst $38                                       ; $6a9c: $ff
    ld [bc], a                                    ; $6a9d: $02
    inc b                                         ; $6a9e: $04
    inc bc                                        ; $6a9f: $03
    ld b, $8b                                     ; $6aa0: $06 $8b
    ld [bc], a                                    ; $6aa2: $02
    ld b, $02                                     ; $6aa3: $06 $02
    ld b, $02                                     ; $6aa5: $06 $02
    ld b, $02                                     ; $6aa7: $06 $02
    rlca                                          ; $6aa9: $07
    ld bc, $0206                                  ; $6aaa: $01 $06 $02
    inc bc                                        ; $6aad: $03
    ld b, $81                                     ; $6aae: $06 $81
    ld [bc], a                                    ; $6ab0: $02
    ld [bc], a                                    ; $6ab1: $02
    inc b                                         ; $6ab2: $04
    ld [bc], a                                    ; $6ab3: $02
    nop                                           ; $6ab4: $00
    inc b                                         ; $6ab5: $04
    inc b                                         ; $6ab6: $04
    add c                                         ; $6ab7: $81
    ld [bc], a                                    ; $6ab8: $02
    inc bc                                        ; $6ab9: $03
    ld b, $9c                                     ; $6aba: $06 $9c
    dec d                                         ; $6abc: $15
    rra                                           ; $6abd: $1f
    ld d, $1f                                     ; $6abe: $16 $1f
    inc d                                         ; $6ac0: $14
    rra                                           ; $6ac1: $1f
    inc d                                         ; $6ac2: $14
    rra                                           ; $6ac3: $1f
    rla                                           ; $6ac4: $17
    rra                                           ; $6ac5: $1f
    rla                                           ; $6ac6: $17
    ld e, $27                                     ; $6ac7: $1e $27
    ccf                                           ; $6ac9: $3f
    ld h, $3f                                     ; $6aca: $26 $3f
    ld h, $3f                                     ; $6acc: $26 $3f
    daa                                           ; $6ace: $27
    ccf                                           ; $6acf: $3f
    ld h, $3f                                     ; $6ad0: $26 $3f
    ld c, d                                       ; $6ad2: $4a
    ld a, a                                       ; $6ad3: $7f
    ld c, a                                       ; $6ad4: $4f
    ld a, a                                       ; $6ad5: $7f
    cp [hl]                                       ; $6ad6: $be
    rst $38                                       ; $6ad7: $ff
    ld [bc], a                                    ; $6ad8: $02
    db $e3                                        ; $6ad9: $e3
    ld [bc], a                                    ; $6ada: $02
    nop                                           ; $6adb: $00
    sub c                                         ; $6adc: $91
    ld b, h                                       ; $6add: $44
    ld a, h                                       ; $6ade: $7c
    ld c, h                                       ; $6adf: $4c
    ld a, h                                       ; $6ae0: $7c
    ld b, h                                       ; $6ae1: $44
    ld a, h                                       ; $6ae2: $7c
    inc l                                         ; $6ae3: $2c
    ld a, h                                       ; $6ae4: $7c
    ld h, h                                       ; $6ae5: $64
    ld a, h                                       ; $6ae6: $7c
    ld l, b                                       ; $6ae7: $68
    jr c, @+$4a                                   ; $6ae8: $38 $48

    ld a, b                                       ; $6aea: $78
    ld [$1c78], sp                                ; $6aeb: $08 $78 $1c
    inc bc                                        ; $6aee: $03
    ld a, h                                       ; $6aef: $7c
    add d                                         ; $6af0: $82
    inc [hl]                                      ; $6af1: $34
    ld a, h                                       ; $6af2: $7c
    ld [bc], a                                    ; $6af3: $02
    ld a, [hl]                                    ; $6af4: $7e
    add h                                         ; $6af5: $84
    ld a, c                                       ; $6af6: $79
    ld a, a                                       ; $6af7: $7f
    ccf                                           ; $6af8: $3f
    ld a, a                                       ; $6af9: $7f
    ld [bc], a                                    ; $6afa: $02
    ld b, b                                       ; $6afb: $40
    ld [bc], a                                    ; $6afc: $02
    nop                                           ; $6afd: $00
    rst $38                                       ; $6afe: $ff
    dec c                                         ; $6aff: $0d
    inc b                                         ; $6b00: $04
    ld sp, hl                                     ; $6b01: $f9
    ld [$01f2], sp                                ; $6b02: $08 $f2 $01
    ld [c], a                                     ; $6b05: $e2
    db $fc                                        ; $6b06: $fc
    db $e3                                        ; $6b07: $e3
    rst $38                                       ; $6b08: $ff
    ld a, [c]                                     ; $6b09: $f2
    ld sp, hl                                     ; $6b0a: $f9
    ld a, [c]                                     ; $6b0b: $f2
    cp $02                                        ; $6b0c: $fe $02
    rra                                           ; $6b0e: $1f
    sbc [hl]                                      ; $6b0f: $9e
    daa                                           ; $6b10: $27
    ccf                                           ; $6b11: $3f
    ld [hl], e                                    ; $6b12: $73
    ld a, [hl]                                    ; $6b13: $7e
    ld a, a                                       ; $6b14: $7f
    ld a, [hl]                                    ; $6b15: $7e
    ld [hl], a                                    ; $6b16: $77
    ld a, [hl]                                    ; $6b17: $7e
    cp $ff                                        ; $6b18: $fe $ff
    ld a, a                                       ; $6b1a: $7f
    ld a, [hl]                                    ; $6b1b: $7e
    cp a                                          ; $6b1c: $bf
    cp $57                                        ; $6b1d: $fe $57
    ld a, h                                       ; $6b1f: $7c
    ccf                                           ; $6b20: $3f
    inc a                                         ; $6b21: $3c
    inc de                                        ; $6b22: $13
    rra                                           ; $6b23: $1f
    dec a                                         ; $6b24: $3d
    ccf                                           ; $6b25: $3f
    ld b, d                                       ; $6b26: $42
    ld a, a                                       ; $6b27: $7f
    ld l, a                                       ; $6b28: $6f
    ld a, a                                       ; $6b29: $7f
    sub d                                         ; $6b2a: $92
    rst $38                                       ; $6b2b: $ff
    or [hl]                                       ; $6b2c: $b6
    rst $38                                       ; $6b2d: $ff
    ld [bc], a                                    ; $6b2e: $02
    inc b                                         ; $6b2f: $04
    add [hl]                                      ; $6b30: $86
    ld b, $02                                     ; $6b31: $06 $02
    ld b, $02                                     ; $6b33: $06 $02
    ld b, $02                                     ; $6b35: $06 $02
    ld [bc], a                                    ; $6b37: $02
    ld b, $84                                     ; $6b38: $06 $84
    rlca                                          ; $6b3a: $07
    ld bc, $0206                                  ; $6b3b: $01 $06 $02
    inc bc                                        ; $6b3e: $03
    ld b, $81                                     ; $6b3f: $06 $81
    ld [bc], a                                    ; $6b41: $02
    ld [bc], a                                    ; $6b42: $02
    inc b                                         ; $6b43: $04
    ld [bc], a                                    ; $6b44: $02
    nop                                           ; $6b45: $00
    inc b                                         ; $6b46: $04
    inc b                                         ; $6b47: $04
    add c                                         ; $6b48: $81
    ld [bc], a                                    ; $6b49: $02
    inc bc                                        ; $6b4a: $03
    ld b, $a0                                     ; $6b4b: $06 $a0
    ld h, d                                       ; $6b4d: $62
    cp $14                                        ; $6b4e: $fe $14
    inc e                                         ; $6b50: $1c
    ld d, $1f                                     ; $6b51: $16 $1f
    inc d                                         ; $6b53: $14
    rra                                           ; $6b54: $1f
    dec d                                         ; $6b55: $15
    rra                                           ; $6b56: $1f
    rla                                           ; $6b57: $17
    rra                                           ; $6b58: $1f
    rla                                           ; $6b59: $17
    inc e                                         ; $6b5a: $1c
    rla                                           ; $6b5b: $17
    rra                                           ; $6b5c: $1f
    ld d, $1f                                     ; $6b5d: $16 $1f
    ld h, $3f                                     ; $6b5f: $26 $3f
    ld h, $3f                                     ; $6b61: $26 $3f
    daa                                           ; $6b63: $27
    ccf                                           ; $6b64: $3f
    daa                                           ; $6b65: $27
    ccf                                           ; $6b66: $3f
    cpl                                           ; $6b67: $2f
    ccf                                           ; $6b68: $3f
    ld c, a                                       ; $6b69: $4f
    ld a, a                                       ; $6b6a: $7f
    cp e                                          ; $6b6b: $bb
    ei                                            ; $6b6c: $fb
    ld [bc], a                                    ; $6b6d: $02
    ldh [rSC], a                                  ; $6b6e: $e0 $02
    nop                                           ; $6b70: $00
    sub c                                         ; $6b71: $91
    inc de                                        ; $6b72: $13
    rra                                           ; $6b73: $1f
    ld de, $131f                                  ; $6b74: $11 $1f $13
    rra                                           ; $6b77: $1f
    add hl, de                                    ; $6b78: $19
    rra                                           ; $6b79: $1f
    ld [de], a                                    ; $6b7a: $12
    ld e, $02                                     ; $6b7b: $1e $02
    ld e, $06                                     ; $6b7d: $1e $06
    ld e, $06                                     ; $6b7f: $1e $06
    ld e, $0a                                     ; $6b81: $1e $0a
    inc bc                                        ; $6b83: $03
    ld e, $02                                     ; $6b84: $1e $02
    inc e                                         ; $6b86: $1c
    add e                                         ; $6b87: $83
    ld c, $1e                                     ; $6b88: $0e $1e
    add hl, de                                    ; $6b8a: $19
    inc bc                                        ; $6b8b: $03
    rra                                           ; $6b8c: $1f
    ld [bc], a                                    ; $6b8d: $02
    inc b                                         ; $6b8e: $04
    rst $38                                       ; $6b8f: $ff
    dec c                                         ; $6b90: $0d
    inc b                                         ; $6b91: $04
    ld sp, hl                                     ; $6b92: $f9
    ld [$01f2], sp                                ; $6b93: $08 $f2 $01
    ld [c], a                                     ; $6b96: $e2
    db $fc                                        ; $6b97: $fc
    db $e3                                        ; $6b98: $e3
    rst $38                                       ; $6b99: $ff
    ld a, [c]                                     ; $6b9a: $f2
    ld sp, hl                                     ; $6b9b: $f9
    ld a, [c]                                     ; $6b9c: $f2
    ld bc, $1f02                                  ; $6b9d: $01 $02 $1f
    add h                                         ; $6ba0: $84
    daa                                           ; $6ba1: $27
    ccf                                           ; $6ba2: $3f
    add hl, sp                                    ; $6ba3: $39
    ccf                                           ; $6ba4: $3f
    ld [bc], a                                    ; $6ba5: $02
    ld a, a                                       ; $6ba6: $7f
    add c                                         ; $6ba7: $81
    ld a, e                                       ; $6ba8: $7b
    inc bc                                        ; $6ba9: $03
    ld a, a                                       ; $6baa: $7f
    ld [bc], a                                    ; $6bab: $02
    rst $38                                       ; $6bac: $ff
    sub d                                         ; $6bad: $92
    ld a, a                                       ; $6bae: $7f
    ld a, [hl]                                    ; $6baf: $7e
    set 7, [hl]                                   ; $6bb0: $cb $fe
    ld a, a                                       ; $6bb2: $7f
    ld a, [hl]                                    ; $6bb3: $7e
    inc de                                        ; $6bb4: $13
    rra                                           ; $6bb5: $1f
    dec a                                         ; $6bb6: $3d
    ccf                                           ; $6bb7: $3f
    ld b, d                                       ; $6bb8: $42
    ld a, a                                       ; $6bb9: $7f
    ld l, a                                       ; $6bba: $6f
    ld a, a                                       ; $6bbb: $7f
    jp nc, $aeff                                  ; $6bbc: $d2 $ff $ae

    rst $38                                       ; $6bbf: $ff
    ld [bc], a                                    ; $6bc0: $02
    inc b                                         ; $6bc1: $04
    add l                                         ; $6bc2: $85
    ld b, $02                                     ; $6bc3: $06 $02
    ld b, $02                                     ; $6bc5: $06 $02
    ld b, $02                                     ; $6bc7: $06 $02
    ld [bc], a                                    ; $6bc9: $02
    adc c                                         ; $6bca: $89
    ld b, $07                                     ; $6bcb: $06 $07
    ld bc, $0206                                  ; $6bcd: $01 $06 $02
    ld b, $02                                     ; $6bd0: $06 $02
    ld b, $02                                     ; $6bd2: $06 $02
    ld [bc], a                                    ; $6bd4: $02
    inc b                                         ; $6bd5: $04
    ld [bc], a                                    ; $6bd6: $02
    nop                                           ; $6bd7: $00
    inc b                                         ; $6bd8: $04
    inc b                                         ; $6bd9: $04
    add c                                         ; $6bda: $81
    ld [bc], a                                    ; $6bdb: $02
    inc bc                                        ; $6bdc: $03
    ld b, $89                                     ; $6bdd: $06 $89
    ld [c], a                                     ; $6bdf: $e2
    cp $14                                        ; $6be0: $fe $14
    inc e                                         ; $6be2: $1c
    dec d                                         ; $6be3: $15
    rra                                           ; $6be4: $1f
    dec d                                         ; $6be5: $15
    rra                                           ; $6be6: $1f
    add hl, de                                    ; $6be7: $19
    inc b                                         ; $6be8: $04
    rra                                           ; $6be9: $1f
    sub e                                         ; $6bea: $93
    add hl, de                                    ; $6beb: $19
    ld d, $1f                                     ; $6bec: $16 $1f
    ld d, $1f                                     ; $6bee: $16 $1f
    ld d, $1f                                     ; $6bf0: $16 $1f
    ld d, $1f                                     ; $6bf2: $16 $1f
    rla                                           ; $6bf4: $17
    rra                                           ; $6bf5: $1f
    daa                                           ; $6bf6: $27
    ccf                                           ; $6bf7: $3f
    daa                                           ; $6bf8: $27
    ccf                                           ; $6bf9: $3f
    ld l, a                                       ; $6bfa: $6f
    ld a, a                                       ; $6bfb: $7f
    sbc a                                         ; $6bfc: $9f
    rst $38                                       ; $6bfd: $ff
    ld [bc], a                                    ; $6bfe: $02
    ld [hl], b                                    ; $6bff: $70
    ld [bc], a                                    ; $6c00: $02
    nop                                           ; $6c01: $00
    sbc d                                         ; $6c02: $9a
    sbc b                                         ; $6c03: $98
    ld hl, sp+$08                                 ; $6c04: $f8 $08
    ld hl, sp+$18                                 ; $6c06: $f8 $18
    ld hl, sp-$38                                 ; $6c08: $f8 $c8
    ld hl, sp-$70                                 ; $6c0a: $f8 $90
    ldh a, [$30]                                  ; $6c0c: $f0 $30
    ldh a, [$30]                                  ; $6c0e: $f0 $30
    ldh a, [$30]                                  ; $6c10: $f0 $30
    ldh a, [rBCPS]                                ; $6c12: $f0 $68
    ld hl, sp-$38                                 ; $6c14: $f8 $c8
    ld hl, sp-$32                                 ; $6c16: $f8 $ce
    cp $f3                                        ; $6c18: $fe $f3
    rst $38                                       ; $6c1a: $ff
    sbc $fe                                       ; $6c1b: $de $fe
    ld [bc], a                                    ; $6c1d: $02
    ldh [rSC], a                                  ; $6c1e: $e0 $02
    nop                                           ; $6c20: $00
    rst $38                                       ; $6c21: $ff
    dec c                                         ; $6c22: $0d
    inc b                                         ; $6c23: $04
    ld sp, hl                                     ; $6c24: $f9
    ld [$01f2], sp                                ; $6c25: $08 $f2 $01
    db $e3                                        ; $6c28: $e3
    db $fc                                        ; $6c29: $fc
    db $e4                                        ; $6c2a: $e4
    rst $38                                       ; $6c2b: $ff
    di                                            ; $6c2c: $f3
    ld sp, hl                                     ; $6c2d: $f9
    di                                            ; $6c2e: $f3
    nop                                           ; $6c2f: $00
    ld [bc], a                                    ; $6c30: $02
    rra                                           ; $6c31: $1f
    add h                                         ; $6c32: $84
    daa                                           ; $6c33: $27
    ccf                                           ; $6c34: $3f
    add hl, sp                                    ; $6c35: $39
    ccf                                           ; $6c36: $3f
    ld [bc], a                                    ; $6c37: $02
    ld a, a                                       ; $6c38: $7f
    add c                                         ; $6c39: $81
    ld a, e                                       ; $6c3a: $7b
    inc bc                                        ; $6c3b: $03
    ld a, a                                       ; $6c3c: $7f
    ld [bc], a                                    ; $6c3d: $02
    rst $38                                       ; $6c3e: $ff
    sub d                                         ; $6c3f: $92
    db $db                                        ; $6c40: $db
    cp $6f                                        ; $6c41: $fe $6f
    ld a, [hl]                                    ; $6c43: $7e
    ccf                                           ; $6c44: $3f
    ld a, $13                                     ; $6c45: $3e $13
    rra                                           ; $6c47: $1f
    dec a                                         ; $6c48: $3d
    ccf                                           ; $6c49: $3f
    ld h, d                                       ; $6c4a: $62
    ld a, a                                       ; $6c4b: $7f
    ld c, a                                       ; $6c4c: $4f
    ld a, a                                       ; $6c4d: $7f
    or d                                          ; $6c4e: $b2
    rst $38                                       ; $6c4f: $ff
    xor [hl]                                      ; $6c50: $ae
    rst $38                                       ; $6c51: $ff
    ld [bc], a                                    ; $6c52: $02
    inc b                                         ; $6c53: $04
    add l                                         ; $6c54: $85
    ld b, $02                                     ; $6c55: $06 $02
    ld b, $02                                     ; $6c57: $06 $02
    ld b, $02                                     ; $6c59: $06 $02
    ld [bc], a                                    ; $6c5b: $02
    adc c                                         ; $6c5c: $89
    ld b, $07                                     ; $6c5d: $06 $07
    ld bc, $0206                                  ; $6c5f: $01 $06 $02
    ld b, $02                                     ; $6c62: $06 $02
    ld b, $02                                     ; $6c64: $06 $02
    ld [bc], a                                    ; $6c66: $02
    inc b                                         ; $6c67: $04
    ld [bc], a                                    ; $6c68: $02
    nop                                           ; $6c69: $00
    inc b                                         ; $6c6a: $04
    inc b                                         ; $6c6b: $04
    add c                                         ; $6c6c: $81
    ld [bc], a                                    ; $6c6d: $02
    inc bc                                        ; $6c6e: $03
    ld b, $89                                     ; $6c6f: $06 $89
    ld [c], a                                     ; $6c71: $e2
    cp $14                                        ; $6c72: $fe $14
    inc e                                         ; $6c74: $1c
    inc d                                         ; $6c75: $14
    rra                                           ; $6c76: $1f
    dec d                                         ; $6c77: $15
    rra                                           ; $6c78: $1f
    add hl, de                                    ; $6c79: $19
    inc bc                                        ; $6c7a: $03
    rra                                           ; $6c7b: $1f
    sub d                                         ; $6c7c: $92
    rla                                           ; $6c7d: $17
    dec e                                         ; $6c7e: $1d
    ld d, $1f                                     ; $6c7f: $16 $1f
    ld d, $1f                                     ; $6c81: $16 $1f
    ld d, $1f                                     ; $6c83: $16 $1f
    daa                                           ; $6c85: $27
    ccf                                           ; $6c86: $3f
    daa                                           ; $6c87: $27
    ccf                                           ; $6c88: $3f
    cpl                                           ; $6c89: $2f
    ccf                                           ; $6c8a: $3f
    ld c, a                                       ; $6c8b: $4f
    ld a, a                                       ; $6c8c: $7f
    cp e                                          ; $6c8d: $bb
    ei                                            ; $6c8e: $fb
    ld [bc], a                                    ; $6c8f: $02
    ld [hl], b                                    ; $6c90: $70
    inc b                                         ; $6c91: $04
    nop                                           ; $6c92: $00
    sub [hl]                                      ; $6c93: $96
    ld c, h                                       ; $6c94: $4c
    ld a, h                                       ; $6c95: $7c
    ld b, h                                       ; $6c96: $44
    ld a, h                                       ; $6c97: $7c
    inc c                                         ; $6c98: $0c
    ld a, h                                       ; $6c99: $7c
    ld h, h                                       ; $6c9a: $64
    ld a, h                                       ; $6c9b: $7c
    ld [$1878], sp                                ; $6c9c: $08 $78 $18
    ld a, b                                       ; $6c9f: $78
    jr jr_0e4_6d1a                                ; $6ca0: $18 $78

    jr z, jr_0e4_6d1c                             ; $6ca2: $28 $78

    ld l, b                                       ; $6ca4: $68
    ld a, b                                       ; $6ca5: $78
    ld c, b                                       ; $6ca6: $48
    ld a, b                                       ; $6ca7: $78
    ld c, b                                       ; $6ca8: $48
    ld a, b                                       ; $6ca9: $78
    ld [bc], a                                    ; $6caa: $02
    ld a, [hl]                                    ; $6cab: $7e
    add c                                         ; $6cac: $81
    ld e, c                                       ; $6cad: $59
    inc bc                                        ; $6cae: $03
    ld a, a                                       ; $6caf: $7f
    ld [bc], a                                    ; $6cb0: $02
    nop                                           ; $6cb1: $00
    rst $38                                       ; $6cb2: $ff
    dec c                                         ; $6cb3: $0d
    inc b                                         ; $6cb4: $04
    ld sp, hl                                     ; $6cb5: $f9
    ld [$01f2], sp                                ; $6cb6: $08 $f2 $01
    ld [c], a                                     ; $6cb9: $e2
    db $fc                                        ; $6cba: $fc
    db $e3                                        ; $6cbb: $e3
    rst $38                                       ; $6cbc: $ff
    ld a, [c]                                     ; $6cbd: $f2
    ld sp, hl                                     ; $6cbe: $f9
    ld a, [c]                                     ; $6cbf: $f2
    cp $02                                        ; $6cc0: $fe $02
    rra                                           ; $6cc2: $1f
    sbc [hl]                                      ; $6cc3: $9e
    daa                                           ; $6cc4: $27
    ccf                                           ; $6cc5: $3f
    ld [hl], e                                    ; $6cc6: $73
    ld a, [hl]                                    ; $6cc7: $7e
    ld a, a                                       ; $6cc8: $7f
    ld a, [hl]                                    ; $6cc9: $7e
    ld [hl], a                                    ; $6cca: $77
    ld a, [hl]                                    ; $6ccb: $7e
    cp $ff                                        ; $6ccc: $fe $ff
    ld a, a                                       ; $6cce: $7f
    ld a, [hl]                                    ; $6ccf: $7e
    cp a                                          ; $6cd0: $bf
    cp $57                                        ; $6cd1: $fe $57
    ld a, h                                       ; $6cd3: $7c
    ccf                                           ; $6cd4: $3f
    inc a                                         ; $6cd5: $3c
    inc de                                        ; $6cd6: $13
    rra                                           ; $6cd7: $1f
    dec a                                         ; $6cd8: $3d
    ccf                                           ; $6cd9: $3f
    ld b, d                                       ; $6cda: $42
    ld a, a                                       ; $6cdb: $7f
    ld l, a                                       ; $6cdc: $6f
    ld a, a                                       ; $6cdd: $7f
    sub d                                         ; $6cde: $92
    rst $38                                       ; $6cdf: $ff
    or [hl]                                       ; $6ce0: $b6
    rst $38                                       ; $6ce1: $ff
    ld [bc], a                                    ; $6ce2: $02
    inc b                                         ; $6ce3: $04
    add [hl]                                      ; $6ce4: $86
    ld b, $02                                     ; $6ce5: $06 $02
    ld b, $02                                     ; $6ce7: $06 $02
    ld b, $02                                     ; $6ce9: $06 $02
    ld [bc], a                                    ; $6ceb: $02
    ld b, $84                                     ; $6cec: $06 $84
    rlca                                          ; $6cee: $07
    ld bc, $0206                                  ; $6cef: $01 $06 $02
    inc bc                                        ; $6cf2: $03
    ld b, $81                                     ; $6cf3: $06 $81
    ld [bc], a                                    ; $6cf5: $02
    ld [bc], a                                    ; $6cf6: $02
    inc b                                         ; $6cf7: $04
    ld [bc], a                                    ; $6cf8: $02
    nop                                           ; $6cf9: $00
    inc b                                         ; $6cfa: $04
    inc b                                         ; $6cfb: $04
    add c                                         ; $6cfc: $81
    ld [bc], a                                    ; $6cfd: $02
    inc bc                                        ; $6cfe: $03
    ld b, $a0                                     ; $6cff: $06 $a0
    ld h, d                                       ; $6d01: $62
    cp $14                                        ; $6d02: $fe $14
    inc e                                         ; $6d04: $1c
    ld d, $1f                                     ; $6d05: $16 $1f
    inc d                                         ; $6d07: $14
    rra                                           ; $6d08: $1f
    dec d                                         ; $6d09: $15
    rra                                           ; $6d0a: $1f
    rla                                           ; $6d0b: $17
    rra                                           ; $6d0c: $1f
    rla                                           ; $6d0d: $17
    inc e                                         ; $6d0e: $1c
    rla                                           ; $6d0f: $17
    rra                                           ; $6d10: $1f
    ld d, $1f                                     ; $6d11: $16 $1f
    ld h, $3f                                     ; $6d13: $26 $3f
    ld h, $3f                                     ; $6d15: $26 $3f
    daa                                           ; $6d17: $27
    ccf                                           ; $6d18: $3f
    cpl                                           ; $6d19: $2f

jr_0e4_6d1a:
    ccf                                           ; $6d1a: $3f
    ld c, a                                       ; $6d1b: $4f

jr_0e4_6d1c:
    ld a, a                                       ; $6d1c: $7f
    ld e, a                                       ; $6d1d: $5f
    ld a, a                                       ; $6d1e: $7f
    cp d                                          ; $6d1f: $ba
    ei                                            ; $6d20: $fb
    ld [bc], a                                    ; $6d21: $02
    ld [hl], e                                    ; $6d22: $73
    ld [bc], a                                    ; $6d23: $02
    nop                                           ; $6d24: $00
    sub c                                         ; $6d25: $91
    inc de                                        ; $6d26: $13
    rra                                           ; $6d27: $1f
    ld de, $131f                                  ; $6d28: $11 $1f $13
    rra                                           ; $6d2b: $1f
    add hl, de                                    ; $6d2c: $19
    rra                                           ; $6d2d: $1f
    ld [de], a                                    ; $6d2e: $12
    ld e, $03                                     ; $6d2f: $1e $03
    rra                                           ; $6d31: $1f
    inc bc                                        ; $6d32: $03
    rra                                           ; $6d33: $1f
    dec b                                         ; $6d34: $05
    rra                                           ; $6d35: $1f
    dec b                                         ; $6d36: $05
    inc bc                                        ; $6d37: $03
    rra                                           ; $6d38: $1f
    add h                                         ; $6d39: $84
    ld d, $1e                                     ; $6d3a: $16 $1e
    rlca                                          ; $6d3c: $07
    rra                                           ; $6d3d: $1f
    ld [bc], a                                    ; $6d3e: $02
    ld e, $81                                     ; $6d3f: $1e $81
    add hl, de                                    ; $6d41: $19
    inc bc                                        ; $6d42: $03
    rra                                           ; $6d43: $1f
    rst $38                                       ; $6d44: $ff
    dec c                                         ; $6d45: $0d
    inc b                                         ; $6d46: $04
    ld sp, hl                                     ; $6d47: $f9
    ld [$01f2], sp                                ; $6d48: $08 $f2 $01
    ld [c], a                                     ; $6d4b: $e2
    ld a, [$ffe3]                                 ; $6d4c: $fa $e3 $ff
    ld a, [c]                                     ; $6d4f: $f2
    ld sp, hl                                     ; $6d50: $f9
    ld a, [c]                                     ; $6d51: $f2
    nop                                           ; $6d52: $00
    ld [bc], a                                    ; $6d53: $02
    rlca                                          ; $6d54: $07
    adc b                                         ; $6d55: $88
    inc c                                         ; $6d56: $0c
    rrca                                          ; $6d57: $0f
    dec c                                         ; $6d58: $0d
    rrca                                          ; $6d59: $0f
    dec e                                         ; $6d5a: $1d
    rra                                           ; $6d5b: $1f
    dec d                                         ; $6d5c: $15
    rra                                           ; $6d5d: $1f
    ld [bc], a                                    ; $6d5e: $02
    cpl                                           ; $6d5f: $2f
    ld [bc], a                                    ; $6d60: $02
    ld b, d                                       ; $6d61: $42
    ld [bc], a                                    ; $6d62: $02
    add b                                         ; $6d63: $80
    inc b                                         ; $6d64: $04
    ld b, b                                       ; $6d65: $40
    ld [bc], a                                    ; $6d66: $02
    ld h, b                                       ; $6d67: $60
    ld [bc], a                                    ; $6d68: $02
    ld b, b                                       ; $6d69: $40
    inc b                                         ; $6d6a: $04
    ld h, b                                       ; $6d6b: $60
    add h                                         ; $6d6c: $84
    ret c                                         ; $6d6d: $d8

    ld hl, sp-$6b                                 ; $6d6e: $f8 $95
    push af                                       ; $6d70: $f5
    inc b                                         ; $6d71: $04
    db $10                                        ; $6d72: $10
    add h                                         ; $6d73: $84
    ld [$0818], sp                                ; $6d74: $08 $18 $08
    jr jr_0e4_6d7b                                ; $6d77: $18 $02

    inc d                                         ; $6d79: $14
    ld [bc], a                                    ; $6d7a: $02

jr_0e4_6d7b:
    ld [bc], a                                    ; $6d7b: $02
    ld [bc], a                                    ; $6d7c: $02
    ld bc, $0204                                  ; $6d7d: $01 $04 $02
    ld [bc], a                                    ; $6d80: $02
    ld b, $02                                     ; $6d81: $06 $02
    ld [bc], a                                    ; $6d83: $02
    inc b                                         ; $6d84: $04
    ld b, $a4                                     ; $6d85: $06 $a4
    dec bc                                        ; $6d87: $0b
    rrca                                          ; $6d88: $0f
    add hl, bc                                    ; $6d89: $09
    rrca                                          ; $6d8a: $0f
    ld e, l                                       ; $6d8b: $5d
    rst $38                                       ; $6d8c: $ff
    ld e, h                                       ; $6d8d: $5c
    ld a, h                                       ; $6d8e: $7c
    ld e, [hl]                                    ; $6d8f: $5e
    ld a, a                                       ; $6d90: $7f
    sbc $ff                                       ; $6d91: $de $ff
    cp l                                          ; $6d93: $bd
    rst $38                                       ; $6d94: $ff
    db $dd                                        ; $6d95: $dd
    rst $38                                       ; $6d96: $ff
    cp $bf                                        ; $6d97: $fe $bf
    ld a, [hl]                                    ; $6d99: $7e
    ld a, a                                       ; $6d9a: $7f
    dec a                                         ; $6d9b: $3d
    ccf                                           ; $6d9c: $3f
    dec a                                         ; $6d9d: $3d
    ccf                                           ; $6d9e: $3f
    ld a, $3f                                     ; $6d9f: $3e $3f
    ld a, [hl]                                    ; $6da1: $7e
    ld a, a                                       ; $6da2: $7f
    ld a, l                                       ; $6da3: $7d
    ld a, a                                       ; $6da4: $7f
    ld a, [hl]                                    ; $6da5: $7e
    ld a, a                                       ; $6da6: $7f
    ld e, a                                       ; $6da7: $5f
    ld a, a                                       ; $6da8: $7f
    jr nc, jr_0e4_6dea                            ; $6da9: $30 $3f

    ld [bc], a                                    ; $6dab: $02
    rrca                                          ; $6dac: $0f
    ld [bc], a                                    ; $6dad: $02
    nop                                           ; $6dae: $00
    add a                                         ; $6daf: $87
    ld a, d                                       ; $6db0: $7a
    ld a, [hl]                                    ; $6db1: $7e
    ld a, e                                       ; $6db2: $7b
    ld a, a                                       ; $6db3: $7f
    dec a                                         ; $6db4: $3d
    ld a, a                                       ; $6db5: $7f
    dec sp                                        ; $6db6: $3b
    ld [bc], a                                    ; $6db7: $02
    ld a, a                                       ; $6db8: $7f
    adc c                                         ; $6db9: $89
    ld a, l                                       ; $6dba: $7d
    halt                                          ; $6dbb: $76
    ld a, [hl]                                    ; $6dbc: $7e
    inc [hl]                                      ; $6dbd: $34
    ld a, h                                       ; $6dbe: $7c
    inc a                                         ; $6dbf: $3c
    ld a, h                                       ; $6dc0: $7c
    ld [hl], h                                    ; $6dc1: $74
    ld a, h                                       ; $6dc2: $7c
    ld [bc], a                                    ; $6dc3: $02
    ld a, [hl]                                    ; $6dc4: $7e
    add c                                         ; $6dc5: $81
    ld a, [hl-]                                   ; $6dc6: $3a
    inc bc                                        ; $6dc7: $03
    ld a, [hl]                                    ; $6dc8: $7e
    add h                                         ; $6dc9: $84
    ld a, d                                       ; $6dca: $7a
    ld a, [hl]                                    ; $6dcb: $7e
    inc c                                         ; $6dcc: $0c
    ld a, h                                       ; $6dcd: $7c
    ld [bc], a                                    ; $6dce: $02
    ld [hl], b                                    ; $6dcf: $70
    rst $38                                       ; $6dd0: $ff
    dec c                                         ; $6dd1: $0d
    inc b                                         ; $6dd2: $04
    ld sp, hl                                     ; $6dd3: $f9
    ld [$01f2], sp                                ; $6dd4: $08 $f2 $01
    ld [c], a                                     ; $6dd7: $e2
    ld a, [$ffe3]                                 ; $6dd8: $fa $e3 $ff
    ld a, [c]                                     ; $6ddb: $f2
    ld sp, hl                                     ; $6ddc: $f9
    ld a, [c]                                     ; $6ddd: $f2
    nop                                           ; $6dde: $00
    ld [bc], a                                    ; $6ddf: $02
    rlca                                          ; $6de0: $07
    adc b                                         ; $6de1: $88
    inc c                                         ; $6de2: $0c
    rrca                                          ; $6de3: $0f
    dec c                                         ; $6de4: $0d
    rrca                                          ; $6de5: $0f
    dec e                                         ; $6de6: $1d
    rra                                           ; $6de7: $1f
    dec d                                         ; $6de8: $15
    rra                                           ; $6de9: $1f

jr_0e4_6dea:
    ld [bc], a                                    ; $6dea: $02
    cpl                                           ; $6deb: $2f
    ld [bc], a                                    ; $6dec: $02
    ld b, d                                       ; $6ded: $42
    ld [bc], a                                    ; $6dee: $02
    add b                                         ; $6def: $80
    inc b                                         ; $6df0: $04
    ld b, b                                       ; $6df1: $40
    ld [bc], a                                    ; $6df2: $02
    ld h, b                                       ; $6df3: $60
    ld [bc], a                                    ; $6df4: $02
    ld b, b                                       ; $6df5: $40
    inc b                                         ; $6df6: $04
    ld h, b                                       ; $6df7: $60
    add h                                         ; $6df8: $84
    ret c                                         ; $6df9: $d8

    ld hl, sp-$6b                                 ; $6dfa: $f8 $95
    push af                                       ; $6dfc: $f5
    inc b                                         ; $6dfd: $04
    db $10                                        ; $6dfe: $10
    add h                                         ; $6dff: $84
    ld [$0818], sp                                ; $6e00: $08 $18 $08
    jr jr_0e4_6e07                                ; $6e03: $18 $02

    inc d                                         ; $6e05: $14
    ld [bc], a                                    ; $6e06: $02

jr_0e4_6e07:
    ld [bc], a                                    ; $6e07: $02
    ld [bc], a                                    ; $6e08: $02
    ld bc, $0204                                  ; $6e09: $01 $04 $02
    ld [bc], a                                    ; $6e0c: $02
    ld b, $02                                     ; $6e0d: $06 $02
    ld [bc], a                                    ; $6e0f: $02
    inc b                                         ; $6e10: $04
    ld b, $a4                                     ; $6e11: $06 $a4
    ld a, [bc]                                    ; $6e13: $0a
    ld c, $0d                                     ; $6e14: $0e $0d
    rrca                                          ; $6e16: $0f
    ld e, l                                       ; $6e17: $5d
    rst $38                                       ; $6e18: $ff
    ld e, h                                       ; $6e19: $5c
    ld a, h                                       ; $6e1a: $7c
    sbc $ff                                       ; $6e1b: $de $ff
    adc [hl]                                      ; $6e1d: $8e
    rst $38                                       ; $6e1e: $ff
    db $dd                                        ; $6e1f: $dd
    rst $38                                       ; $6e20: $ff
    cp l                                          ; $6e21: $bd
    rst $38                                       ; $6e22: $ff
    sbc $ff                                       ; $6e23: $de $ff
    db $fd                                        ; $6e25: $fd
    sbc a                                         ; $6e26: $9f
    ld a, l                                       ; $6e27: $7d
    ld a, a                                       ; $6e28: $7f
    ld a, $3f                                     ; $6e29: $3e $3f
    dec a                                         ; $6e2b: $3d
    ccf                                           ; $6e2c: $3f
    dec a                                         ; $6e2d: $3d
    ccf                                           ; $6e2e: $3f
    ld a, [hl]                                    ; $6e2f: $7e
    ld a, a                                       ; $6e30: $7f
    ld e, l                                       ; $6e31: $5d
    ld a, a                                       ; $6e32: $7f
    ld e, a                                       ; $6e33: $5f
    ld a, a                                       ; $6e34: $7f
    ld h, b                                       ; $6e35: $60
    ld a, a                                       ; $6e36: $7f
    ld [bc], a                                    ; $6e37: $02
    rra                                           ; $6e38: $1f
    ld [bc], a                                    ; $6e39: $02
    nop                                           ; $6e3a: $00
    adc b                                         ; $6e3b: $88
    ld a, c                                       ; $6e3c: $79
    ld a, a                                       ; $6e3d: $7f
    ld a, l                                       ; $6e3e: $7d
    ld a, a                                       ; $6e3f: $7f
    dec a                                         ; $6e40: $3d
    ld a, a                                       ; $6e41: $7f

jr_0e4_6e42:
    ccf                                           ; $6e42: $3f
    ld a, a                                       ; $6e43: $7f
    ld [bc], a                                    ; $6e44: $02
    ld a, [hl]                                    ; $6e45: $7e
    add e                                         ; $6e46: $83
    inc a                                         ; $6e47: $3c
    ld a, h                                       ; $6e48: $7c
    ld [hl], h                                    ; $6e49: $74
    inc bc                                        ; $6e4a: $03
    ld a, h                                       ; $6e4b: $7c
    add c                                         ; $6e4c: $81
    ld l, h                                       ; $6e4d: $6c
    inc bc                                        ; $6e4e: $03
    ld a, h                                       ; $6e4f: $7c
    adc b                                         ; $6e50: $88
    ld e, h                                       ; $6e51: $5c
    ld a, h                                       ; $6e52: $7c
    ld [hl], h                                    ; $6e53: $74
    ld a, h                                       ; $6e54: $7c
    ld [hl], h                                    ; $6e55: $74
    ld a, h                                       ; $6e56: $7c
    jr c, jr_0e4_6ed1                             ; $6e57: $38 $78

    ld [bc], a                                    ; $6e59: $02
    ld b, b                                       ; $6e5a: $40
    rst $38                                       ; $6e5b: $ff
    add hl, bc                                    ; $6e5c: $09
    ld [bc], a                                    ; $6e5d: $02
    ld sp, hl                                     ; $6e5e: $f9
    ld [$01f2], sp                                ; $6e5f: $08 $f2 $01
    rst $20                                       ; $6e62: $e7
    ei                                            ; $6e63: $fb
    rst $20                                       ; $6e64: $e7
    cp $96                                        ; $6e65: $fe $96
    nop                                           ; $6e67: $00
    jr nz, jr_0e4_6e8d                            ; $6e68: $20 $23

    ld e, b                                       ; $6e6a: $58
    scf                                           ; $6e6b: $37
    ret z                                         ; $6e6c: $c8

    ld l, e                                       ; $6e6d: $6b
    inc d                                         ; $6e6e: $14
    ccf                                           ; $6e6f: $3f
    ld b, b                                       ; $6e70: $40
    rra                                           ; $6e71: $1f
    jr nz, jr_0e4_6eaa                            ; $6e72: $20 $36

    ld c, c                                       ; $6e74: $49
    dec de                                        ; $6e75: $1b
    inc h                                         ; $6e76: $24
    ld a, [bc]                                    ; $6e77: $0a
    dec [hl]                                      ; $6e78: $35
    inc b                                         ; $6e79: $04
    dec bc                                        ; $6e7a: $0b
    nop                                           ; $6e7b: $00
    dec d                                         ; $6e7c: $15
    dec bc                                        ; $6e7d: $0b
    nop                                           ; $6e7e: $00
    ld [bc], a                                    ; $6e7f: $02
    inc b                                         ; $6e80: $04
    adc a                                         ; $6e81: $8f
    ld [bc], a                                    ; $6e82: $02
    inc b                                         ; $6e83: $04
    inc bc                                        ; $6e84: $03
    ld b, $00                                     ; $6e85: $06 $00
    inc b                                         ; $6e87: $04
    ld [bc], a                                    ; $6e88: $02
    inc b                                         ; $6e89: $04
    nop                                           ; $6e8a: $00
    inc b                                         ; $6e8b: $04
    ld [bc], a                                    ; $6e8c: $02

jr_0e4_6e8d:
    nop                                           ; $6e8d: $00
    inc b                                         ; $6e8e: $04
    nop                                           ; $6e8f: $00
    inc b                                         ; $6e90: $04
    ld c, $00                                     ; $6e91: $0e $00
    rst $38                                       ; $6e93: $ff
    dec c                                         ; $6e94: $0d
    inc b                                         ; $6e95: $04
    ld sp, hl                                     ; $6e96: $f9
    ld [$01f2], sp                                ; $6e97: $08 $f2 $01
    db $e3                                        ; $6e9a: $e3
    ld a, [$ffe4]                                 ; $6e9b: $fa $e4 $ff
    di                                            ; $6e9e: $f3
    ld sp, hl                                     ; $6e9f: $f9
    di                                            ; $6ea0: $f3
    nop                                           ; $6ea1: $00
    ld [bc], a                                    ; $6ea2: $02
    rlca                                          ; $6ea3: $07
    adc b                                         ; $6ea4: $88
    inc c                                         ; $6ea5: $0c
    rrca                                          ; $6ea6: $0f
    dec c                                         ; $6ea7: $0d
    rrca                                          ; $6ea8: $0f
    dec e                                         ; $6ea9: $1d

jr_0e4_6eaa:
    rra                                           ; $6eaa: $1f
    dec d                                         ; $6eab: $15
    rra                                           ; $6eac: $1f
    ld [bc], a                                    ; $6ead: $02
    cpl                                           ; $6eae: $2f
    ld [bc], a                                    ; $6eaf: $02
    ld b, d                                       ; $6eb0: $42
    ld [bc], a                                    ; $6eb1: $02
    add b                                         ; $6eb2: $80
    inc b                                         ; $6eb3: $04
    ld b, b                                       ; $6eb4: $40
    ld [bc], a                                    ; $6eb5: $02
    add b                                         ; $6eb6: $80
    ld [bc], a                                    ; $6eb7: $02
    ld h, b                                       ; $6eb8: $60
    ld [bc], a                                    ; $6eb9: $02
    jr nz, jr_0e4_6e42                            ; $6eba: $20 $86

    ld d, b                                       ; $6ebc: $50
    ld [hl], b                                    ; $6ebd: $70
    jp c, $b8fa                                   ; $6ebe: $da $fa $b8

    rst $38                                       ; $6ec1: $ff
    inc b                                         ; $6ec2: $04
    db $10                                        ; $6ec3: $10
    add h                                         ; $6ec4: $84
    ld [$0818], sp                                ; $6ec5: $08 $18 $08
    jr jr_0e4_6ecc                                ; $6ec8: $18 $02

    inc d                                         ; $6eca: $14
    ld [bc], a                                    ; $6ecb: $02

jr_0e4_6ecc:
    ld [bc], a                                    ; $6ecc: $02
    ld [bc], a                                    ; $6ecd: $02
    ld bc, $0202                                  ; $6ece: $01 $02 $02

jr_0e4_6ed1:
    ld [bc], a                                    ; $6ed1: $02
    ld bc, $0202                                  ; $6ed2: $01 $02 $02
    ld [bc], a                                    ; $6ed5: $02
    ld b, $02                                     ; $6ed6: $06 $02
    inc b                                         ; $6ed8: $04
    add d                                         ; $6ed9: $82
    ld a, [bc]                                    ; $6eda: $0a
    ld c, $02                                     ; $6edb: $0e $02
    ld e, $a0                                     ; $6edd: $1e $a0
    dec e                                         ; $6edf: $1d
    rra                                           ; $6ee0: $1f
    cp l                                          ; $6ee1: $bd
    rst $38                                       ; $6ee2: $ff
    ld e, h                                       ; $6ee3: $5c
    ld a, h                                       ; $6ee4: $7c
    db $dd                                        ; $6ee5: $dd
    rst $38                                       ; $6ee6: $ff
    adc l                                         ; $6ee7: $8d
    rst $38                                       ; $6ee8: $ff
    sbc $ff                                       ; $6ee9: $de $ff
    cp [hl]                                       ; $6eeb: $be
    rst $38                                       ; $6eec: $ff
    db $dd                                        ; $6eed: $dd
    rst $38                                       ; $6eee: $ff
    db $fd                                        ; $6eef: $fd
    cp a                                          ; $6ef0: $bf
    ld a, [hl]                                    ; $6ef1: $7e
    ld a, a                                       ; $6ef2: $7f
    ld a, $3f                                     ; $6ef3: $3e $3f
    dec a                                         ; $6ef5: $3d
    ccf                                           ; $6ef6: $3f
    ld a, d                                       ; $6ef7: $7a
    ld a, a                                       ; $6ef8: $7f
    ld a, l                                       ; $6ef9: $7d
    ld a, a                                       ; $6efa: $7f
    ld e, a                                       ; $6efb: $5f
    ld a, a                                       ; $6efc: $7f
    ld h, b                                       ; $6efd: $60
    ld a, a                                       ; $6efe: $7f
    ld [bc], a                                    ; $6eff: $02
    rra                                           ; $6f00: $1f
    inc b                                         ; $6f01: $04
    nop                                           ; $6f02: $00
    adc a                                         ; $6f03: $8f
    ld a, [hl-]                                   ; $6f04: $3a
    ld a, [hl]                                    ; $6f05: $7e
    dec a                                         ; $6f06: $3d
    ld a, a                                       ; $6f07: $7f
    ld a, c                                       ; $6f08: $79
    ld a, a                                       ; $6f09: $7f
    ld a, l                                       ; $6f0a: $7d
    ld a, a                                       ; $6f0b: $7f
    ld a, $7e                                     ; $6f0c: $3e $7e
    ld a, $7e                                     ; $6f0e: $3e $7e
    ld [hl], h                                    ; $6f10: $74
    ld a, h                                       ; $6f11: $7c
    ld [hl], h                                    ; $6f12: $74
    dec b                                         ; $6f13: $05
    ld a, h                                       ; $6f14: $7c
    ld [bc], a                                    ; $6f15: $02
    ld a, [hl]                                    ; $6f16: $7e
    add h                                         ; $6f17: $84
    ld [hl], d                                    ; $6f18: $72
    ld a, [hl]                                    ; $6f19: $7e
    inc e                                         ; $6f1a: $1c
    ld a, h                                       ; $6f1b: $7c
    ld [bc], a                                    ; $6f1c: $02
    ld h, b                                       ; $6f1d: $60
    ld [bc], a                                    ; $6f1e: $02
    nop                                           ; $6f1f: $00
    rst $38                                       ; $6f20: $ff
    add hl, bc                                    ; $6f21: $09
    ld [bc], a                                    ; $6f22: $02
    ld sp, hl                                     ; $6f23: $f9
    ld [$01f2], sp                                ; $6f24: $08 $f2 $01
    add sp, -$05                                  ; $6f27: $e8 $fb
    add sp, -$02                                  ; $6f29: $e8 $fe
    sub h                                         ; $6f2b: $94
    nop                                           ; $6f2c: $00
    jr nz, @+$65                                  ; $6f2d: $20 $63

    jr jr_0e4_6fa8                                ; $6f2f: $18 $77

    adc b                                         ; $6f31: $88
    ld l, a                                       ; $6f32: $6f
    db $10                                        ; $6f33: $10
    ccf                                           ; $6f34: $3f
    ld b, b                                       ; $6f35: $40
    ccf                                           ; $6f36: $3f
    ret nz                                        ; $6f37: $c0

    ccf                                           ; $6f38: $3f
    nop                                           ; $6f39: $00
    dec de                                        ; $6f3a: $1b
    inc h                                         ; $6f3b: $24
    inc b                                         ; $6f3c: $04
    dec de                                        ; $6f3d: $1b
    nop                                           ; $6f3e: $00
    ld a, [bc]                                    ; $6f3f: $0a
    dec c                                         ; $6f40: $0d
    nop                                           ; $6f41: $00
    adc h                                         ; $6f42: $8c
    inc b                                         ; $6f43: $04
    ld b, $00                                     ; $6f44: $06 $00
    ld b, $01                                     ; $6f46: $06 $01
    inc b                                         ; $6f48: $04
    ld [bc], a                                    ; $6f49: $02
    inc b                                         ; $6f4a: $04
    inc bc                                        ; $6f4b: $03
    inc b                                         ; $6f4c: $04
    ld [bc], a                                    ; $6f4d: $02
    inc b                                         ; $6f4e: $04
    ld [bc], a                                    ; $6f4f: $02
    nop                                           ; $6f50: $00
    add c                                         ; $6f51: $81
    inc b                                         ; $6f52: $04
    stop                                          ; $6f53: $10 $00
    rst $38                                       ; $6f55: $ff
    dec c                                         ; $6f56: $0d
    inc b                                         ; $6f57: $04
    ld sp, hl                                     ; $6f58: $f9
    ld [$01f2], sp                                ; $6f59: $08 $f2 $01
    ld [c], a                                     ; $6f5c: $e2
    ld a, [$ffe3]                                 ; $6f5d: $fa $e3 $ff
    ld a, [c]                                     ; $6f60: $f2
    ld sp, hl                                     ; $6f61: $f9
    ld a, [c]                                     ; $6f62: $f2
    nop                                           ; $6f63: $00
    ld [bc], a                                    ; $6f64: $02
    rlca                                          ; $6f65: $07
    adc b                                         ; $6f66: $88
    inc c                                         ; $6f67: $0c
    rrca                                          ; $6f68: $0f
    dec c                                         ; $6f69: $0d
    rrca                                          ; $6f6a: $0f
    dec e                                         ; $6f6b: $1d
    rra                                           ; $6f6c: $1f
    dec d                                         ; $6f6d: $15
    rra                                           ; $6f6e: $1f
    ld [bc], a                                    ; $6f6f: $02
    cpl                                           ; $6f70: $2f
    ld [bc], a                                    ; $6f71: $02
    ld [hl+], a                                   ; $6f72: $22
    ld [bc], a                                    ; $6f73: $02
    ld b, b                                       ; $6f74: $40
    inc b                                         ; $6f75: $04
    add b                                         ; $6f76: $80
    ld [bc], a                                    ; $6f77: $02
    ld h, b                                       ; $6f78: $60
    ld [bc], a                                    ; $6f79: $02
    ld b, b                                       ; $6f7a: $40
    inc b                                         ; $6f7b: $04
    ld h, b                                       ; $6f7c: $60
    add h                                         ; $6f7d: $84
    ret c                                         ; $6f7e: $d8

    ld hl, sp-$6b                                 ; $6f7f: $f8 $95
    push af                                       ; $6f81: $f5
    inc b                                         ; $6f82: $04
    db $10                                        ; $6f83: $10
    add h                                         ; $6f84: $84
    ld [$0818], sp                                ; $6f85: $08 $18 $08
    jr jr_0e4_6f8c                                ; $6f88: $18 $02

    inc d                                         ; $6f8a: $14
    ld [bc], a                                    ; $6f8b: $02

jr_0e4_6f8c:
    inc b                                         ; $6f8c: $04
    ld [bc], a                                    ; $6f8d: $02
    ld [bc], a                                    ; $6f8e: $02
    inc b                                         ; $6f8f: $04
    ld bc, $0602                                  ; $6f90: $01 $02 $06
    ld [bc], a                                    ; $6f93: $02
    ld [bc], a                                    ; $6f94: $02
    inc b                                         ; $6f95: $04
    ld b, $a4                                     ; $6f96: $06 $a4
    dec bc                                        ; $6f98: $0b
    rrca                                          ; $6f99: $0f
    add hl, bc                                    ; $6f9a: $09
    rrca                                          ; $6f9b: $0f
    ld e, l                                       ; $6f9c: $5d
    rst $38                                       ; $6f9d: $ff
    ld e, h                                       ; $6f9e: $5c
    ld a, h                                       ; $6f9f: $7c
    ld e, [hl]                                    ; $6fa0: $5e
    ld a, a                                       ; $6fa1: $7f
    sbc $ff                                       ; $6fa2: $de $ff
    cp l                                          ; $6fa4: $bd
    rst $38                                       ; $6fa5: $ff
    db $dd                                        ; $6fa6: $dd
    rst $38                                       ; $6fa7: $ff

jr_0e4_6fa8:
    cp $bf                                        ; $6fa8: $fe $bf
    ld a, [hl]                                    ; $6faa: $7e
    ld a, a                                       ; $6fab: $7f
    dec a                                         ; $6fac: $3d
    ccf                                           ; $6fad: $3f
    dec a                                         ; $6fae: $3d
    ccf                                           ; $6faf: $3f
    ld a, $3f                                     ; $6fb0: $3e $3f
    ld a, $3f                                     ; $6fb2: $3e $3f
    dec a                                         ; $6fb4: $3d
    ccf                                           ; $6fb5: $3f
    ld a, $3f                                     ; $6fb6: $3e $3f
    ld e, a                                       ; $6fb8: $5f
    ld a, a                                       ; $6fb9: $7f
    jr nc, jr_0e4_6ffb                            ; $6fba: $30 $3f

    ld [bc], a                                    ; $6fbc: $02
    rrca                                          ; $6fbd: $0f
    ld [bc], a                                    ; $6fbe: $02
    nop                                           ; $6fbf: $00
    add a                                         ; $6fc0: $87
    ld a, d                                       ; $6fc1: $7a
    ld a, [hl]                                    ; $6fc2: $7e
    ld a, e                                       ; $6fc3: $7b
    ld a, a                                       ; $6fc4: $7f
    dec a                                         ; $6fc5: $3d
    ld a, a                                       ; $6fc6: $7f
    dec sp                                        ; $6fc7: $3b
    ld [bc], a                                    ; $6fc8: $02
    ld a, a                                       ; $6fc9: $7f
    adc c                                         ; $6fca: $89
    ld a, l                                       ; $6fcb: $7d
    halt                                          ; $6fcc: $76
    ld a, [hl]                                    ; $6fcd: $7e
    inc [hl]                                      ; $6fce: $34
    ld a, h                                       ; $6fcf: $7c
    inc a                                         ; $6fd0: $3c
    ld a, h                                       ; $6fd1: $7c
    ld l, h                                       ; $6fd2: $6c
    ld a, h                                       ; $6fd3: $7c
    ld [bc], a                                    ; $6fd4: $02
    ld a, [hl]                                    ; $6fd5: $7e
    add c                                         ; $6fd6: $81
    ld a, [hl-]                                   ; $6fd7: $3a
    inc bc                                        ; $6fd8: $03
    ld a, [hl]                                    ; $6fd9: $7e
    add h                                         ; $6fda: $84
    ld a, d                                       ; $6fdb: $7a
    ld a, [hl]                                    ; $6fdc: $7e
    inc c                                         ; $6fdd: $0c
    ld a, h                                       ; $6fde: $7c
    ld [bc], a                                    ; $6fdf: $02
    ld [hl], b                                    ; $6fe0: $70
    rst $38                                       ; $6fe1: $ff
    add hl, bc                                    ; $6fe2: $09
    ld [bc], a                                    ; $6fe3: $02
    ld sp, hl                                     ; $6fe4: $f9
    ld [$01f2], sp                                ; $6fe5: $08 $f2 $01
    rst $20                                       ; $6fe8: $e7
    ei                                            ; $6fe9: $fb
    rst $20                                       ; $6fea: $e7
    cp $96                                        ; $6feb: $fe $96
    nop                                           ; $6fed: $00
    jr nz, jr_0e4_7013                            ; $6fee: $20 $23

    jr jr_0e4_7029                                ; $6ff0: $18 $37

    ld c, b                                       ; $6ff2: $48
    ld l, e                                       ; $6ff3: $6b
    sub h                                         ; $6ff4: $94
    ccf                                           ; $6ff5: $3f
    ret nz                                        ; $6ff6: $c0

    rra                                           ; $6ff7: $1f
    jr nz, jr_0e4_7039                            ; $6ff8: $20 $3f

    ld b, b                                       ; $6ffa: $40

jr_0e4_6ffb:
    scf                                           ; $6ffb: $37
    ld [$340b], sp                                ; $6ffc: $08 $0b $34
    inc b                                         ; $6fff: $04
    dec bc                                        ; $7000: $0b
    nop                                           ; $7001: $00
    dec d                                         ; $7002: $15
    dec bc                                        ; $7003: $0b
    nop                                           ; $7004: $00
    ld [bc], a                                    ; $7005: $02
    inc b                                         ; $7006: $04
    adc a                                         ; $7007: $8f
    nop                                           ; $7008: $00
    inc b                                         ; $7009: $04
    ld [bc], a                                    ; $700a: $02
    ld b, $01                                     ; $700b: $06 $01
    inc b                                         ; $700d: $04
    inc bc                                        ; $700e: $03
    inc b                                         ; $700f: $04
    nop                                           ; $7010: $00
    inc b                                         ; $7011: $04
    ld [bc], a                                    ; $7012: $02

jr_0e4_7013:
    nop                                           ; $7013: $00
    inc b                                         ; $7014: $04
    nop                                           ; $7015: $00
    inc b                                         ; $7016: $04
    ld c, $00                                     ; $7017: $0e $00
    rst $38                                       ; $7019: $ff
    dec c                                         ; $701a: $0d
    inc b                                         ; $701b: $04
    ld sp, hl                                     ; $701c: $f9
    ld [$01f2], sp                                ; $701d: $08 $f2 $01
    ld [c], a                                     ; $7020: $e2
    ld a, [$ffe3]                                 ; $7021: $fa $e3 $ff
    ld a, [c]                                     ; $7024: $f2
    ld sp, hl                                     ; $7025: $f9
    ld a, [c]                                     ; $7026: $f2
    nop                                           ; $7027: $00
    ld [bc], a                                    ; $7028: $02

jr_0e4_7029:
    rlca                                          ; $7029: $07
    adc b                                         ; $702a: $88
    inc c                                         ; $702b: $0c
    rrca                                          ; $702c: $0f
    dec c                                         ; $702d: $0d
    rrca                                          ; $702e: $0f
    dec e                                         ; $702f: $1d
    rra                                           ; $7030: $1f
    dec d                                         ; $7031: $15
    rra                                           ; $7032: $1f
    ld [bc], a                                    ; $7033: $02
    cpl                                           ; $7034: $2f
    ld [bc], a                                    ; $7035: $02
    ld b, d                                       ; $7036: $42
    ld [bc], a                                    ; $7037: $02
    add b                                         ; $7038: $80

jr_0e4_7039:
    inc b                                         ; $7039: $04
    ld b, b                                       ; $703a: $40
    ld [bc], a                                    ; $703b: $02
    ld h, b                                       ; $703c: $60
    ld [bc], a                                    ; $703d: $02
    ld b, b                                       ; $703e: $40
    inc b                                         ; $703f: $04
    ld h, b                                       ; $7040: $60
    add h                                         ; $7041: $84
    ld e, b                                       ; $7042: $58
    ld a, b                                       ; $7043: $78
    or l                                          ; $7044: $b5
    push af                                       ; $7045: $f5
    inc b                                         ; $7046: $04
    db $10                                        ; $7047: $10
    add h                                         ; $7048: $84
    ld [$0818], sp                                ; $7049: $08 $18 $08
    jr jr_0e4_7050                                ; $704c: $18 $02

    inc d                                         ; $704e: $14
    ld [bc], a                                    ; $704f: $02

jr_0e4_7050:
    ld [bc], a                                    ; $7050: $02
    ld [bc], a                                    ; $7051: $02
    ld bc, $0204                                  ; $7052: $01 $04 $02
    ld [bc], a                                    ; $7055: $02
    ld b, $02                                     ; $7056: $06 $02
    ld [bc], a                                    ; $7058: $02
    inc b                                         ; $7059: $04
    ld b, $93                                     ; $705a: $06 $93
    dec bc                                        ; $705c: $0b
    rrca                                          ; $705d: $0f
    add hl, bc                                    ; $705e: $09
    rrca                                          ; $705f: $0f
    ld e, l                                       ; $7060: $5d
    rst $38                                       ; $7061: $ff
    ld e, h                                       ; $7062: $5c
    ld a, h                                       ; $7063: $7c
    sbc [hl]                                      ; $7064: $9e
    rst $38                                       ; $7065: $ff
    cp [hl]                                       ; $7066: $be
    rst $38                                       ; $7067: $ff
    cp l                                          ; $7068: $bd
    rst $38                                       ; $7069: $ff
    db $fd                                        ; $706a: $fd
    rst $38                                       ; $706b: $ff
    ld a, [hl]                                    ; $706c: $7e
    ld a, a                                       ; $706d: $7f
    dec a                                         ; $706e: $3d
    inc bc                                        ; $706f: $03
    ccf                                           ; $7070: $3f
    add c                                         ; $7071: $81
    ld a, $05                                     ; $7072: $3e $05
    ccf                                           ; $7074: $3f
    adc b                                         ; $7075: $88
    ld a, [hl-]                                   ; $7076: $3a
    ccf                                           ; $7077: $3f
    cpl                                           ; $7078: $2f
    ccf                                           ; $7079: $3f
    cpl                                           ; $707a: $2f
    ccf                                           ; $707b: $3f
    inc e                                         ; $707c: $1c
    rra                                           ; $707d: $1f
    ld [bc], a                                    ; $707e: $02
    inc bc                                        ; $707f: $03
    ld [bc], a                                    ; $7080: $02
    nop                                           ; $7081: $00
    sub h                                         ; $7082: $94
    ld a, e                                       ; $7083: $7b
    ld a, a                                       ; $7084: $7f
    ld [hl], c                                    ; $7085: $71
    ld a, a                                       ; $7086: $7f
    dec sp                                        ; $7087: $3b
    ld a, a                                       ; $7088: $7f

jr_0e4_7089:
    dec a                                         ; $7089: $3d
    ld a, a                                       ; $708a: $7f
    ld a, e                                       ; $708b: $7b
    ld a, a                                       ; $708c: $7f
    ccf                                           ; $708d: $3f
    ld a, c                                       ; $708e: $79
    ld a, $7e                                     ; $708f: $3e $7e
    ld [hl], h                                    ; $7091: $74
    ld a, h                                       ; $7092: $7c
    inc a                                         ; $7093: $3c
    ld a, h                                       ; $7094: $7c
    inc [hl]                                      ; $7095: $34
    ld a, h                                       ; $7096: $7c
    ld [bc], a                                    ; $7097: $02
    ld a, [hl]                                    ; $7098: $7e
    add [hl]                                      ; $7099: $86
    ld a, [hl-]                                   ; $709a: $3a
    ld a, [hl]                                    ; $709b: $7e
    ld a, d                                       ; $709c: $7a
    ld a, [hl]                                    ; $709d: $7e
    ld b, $7e                                     ; $709e: $06 $7e
    ld [bc], a                                    ; $70a0: $02
    ld a, b                                       ; $70a1: $78
    rst $38                                       ; $70a2: $ff
    add hl, bc                                    ; $70a3: $09
    ld [bc], a                                    ; $70a4: $02
    ld sp, hl                                     ; $70a5: $f9
    ld [$01f2], sp                                ; $70a6: $08 $f2 $01
    rst $20                                       ; $70a9: $e7
    ei                                            ; $70aa: $fb
    rst $20                                       ; $70ab: $e7
    cp $96                                        ; $70ac: $fe $96
    nop                                           ; $70ae: $00
    jr nz, jr_0e4_70d4                            ; $70af: $20 $23

    ld e, b                                       ; $70b1: $58
    scf                                           ; $70b2: $37
    ret z                                         ; $70b3: $c8

    ld l, e                                       ; $70b4: $6b
    inc d                                         ; $70b5: $14
    ccf                                           ; $70b6: $3f
    ld b, b                                       ; $70b7: $40
    rra                                           ; $70b8: $1f
    jr nz, jr_0e4_70f1                            ; $70b9: $20 $36

    ld c, c                                       ; $70bb: $49
    dec de                                        ; $70bc: $1b
    inc h                                         ; $70bd: $24
    ld a, [bc]                                    ; $70be: $0a
    dec [hl]                                      ; $70bf: $35
    inc b                                         ; $70c0: $04
    dec bc                                        ; $70c1: $0b
    nop                                           ; $70c2: $00
    dec d                                         ; $70c3: $15
    dec bc                                        ; $70c4: $0b
    nop                                           ; $70c5: $00
    ld [bc], a                                    ; $70c6: $02
    inc b                                         ; $70c7: $04
    adc a                                         ; $70c8: $8f
    ld [bc], a                                    ; $70c9: $02
    inc b                                         ; $70ca: $04
    inc bc                                        ; $70cb: $03
    ld b, $00                                     ; $70cc: $06 $00
    inc b                                         ; $70ce: $04
    ld [bc], a                                    ; $70cf: $02
    inc b                                         ; $70d0: $04
    nop                                           ; $70d1: $00
    inc b                                         ; $70d2: $04
    ld [bc], a                                    ; $70d3: $02

jr_0e4_70d4:
    nop                                           ; $70d4: $00
    inc b                                         ; $70d5: $04
    nop                                           ; $70d6: $00
    inc b                                         ; $70d7: $04
    ld c, $00                                     ; $70d8: $0e $00
    rst $38                                       ; $70da: $ff
    dec c                                         ; $70db: $0d
    inc b                                         ; $70dc: $04
    ld sp, hl                                     ; $70dd: $f9
    ld [$01f2], sp                                ; $70de: $08 $f2 $01
    db $e3                                        ; $70e1: $e3
    ld a, [$ffe4]                                 ; $70e2: $fa $e4 $ff
    di                                            ; $70e5: $f3
    ld sp, hl                                     ; $70e6: $f9
    di                                            ; $70e7: $f3
    nop                                           ; $70e8: $00
    ld [bc], a                                    ; $70e9: $02
    rlca                                          ; $70ea: $07
    adc b                                         ; $70eb: $88
    inc c                                         ; $70ec: $0c
    rrca                                          ; $70ed: $0f
    dec c                                         ; $70ee: $0d
    rrca                                          ; $70ef: $0f
    dec e                                         ; $70f0: $1d

jr_0e4_70f1:
    rra                                           ; $70f1: $1f
    dec d                                         ; $70f2: $15
    rra                                           ; $70f3: $1f
    ld [bc], a                                    ; $70f4: $02
    cpl                                           ; $70f5: $2f
    ld [bc], a                                    ; $70f6: $02
    ld b, d                                       ; $70f7: $42
    ld [bc], a                                    ; $70f8: $02
    add b                                         ; $70f9: $80
    inc b                                         ; $70fa: $04
    ld b, b                                       ; $70fb: $40
    ld [bc], a                                    ; $70fc: $02
    add b                                         ; $70fd: $80
    ld [bc], a                                    ; $70fe: $02
    ld h, b                                       ; $70ff: $60
    ld [bc], a                                    ; $7100: $02
    jr nz, jr_0e4_7089                            ; $7101: $20 $86

    ld d, b                                       ; $7103: $50
    ld [hl], b                                    ; $7104: $70
    ld e, d                                       ; $7105: $5a
    ld a, d                                       ; $7106: $7a
    cp b                                          ; $7107: $b8
    rst $38                                       ; $7108: $ff
    inc b                                         ; $7109: $04
    db $10                                        ; $710a: $10
    add h                                         ; $710b: $84
    ld [$0818], sp                                ; $710c: $08 $18 $08
    jr jr_0e4_7113                                ; $710f: $18 $02

    inc d                                         ; $7111: $14
    ld [bc], a                                    ; $7112: $02

jr_0e4_7113:
    ld [bc], a                                    ; $7113: $02
    ld [bc], a                                    ; $7114: $02
    ld bc, $0202                                  ; $7115: $01 $02 $02
    ld [bc], a                                    ; $7118: $02
    ld bc, $0202                                  ; $7119: $01 $02 $02
    ld [bc], a                                    ; $711c: $02
    ld b, $02                                     ; $711d: $06 $02
    inc b                                         ; $711f: $04
    add d                                         ; $7120: $82
    ld a, [bc]                                    ; $7121: $0a
    ld c, $02                                     ; $7122: $0e $02
    rra                                           ; $7124: $1f
    sub l                                         ; $7125: $95
    dec e                                         ; $7126: $1d
    rra                                           ; $7127: $1f
    cp l                                          ; $7128: $bd
    rst $38                                       ; $7129: $ff
    ld e, h                                       ; $712a: $5c
    ld a, h                                       ; $712b: $7c
    ld e, l                                       ; $712c: $5d
    ld a, a                                       ; $712d: $7f
    cp l                                          ; $712e: $bd
    rst $38                                       ; $712f: $ff
    sbc [hl]                                      ; $7130: $9e
    rst $38                                       ; $7131: $ff
    cp [hl]                                       ; $7132: $be
    rst $38                                       ; $7133: $ff
    ld a, l                                       ; $7134: $7d
    ld a, a                                       ; $7135: $7f
    ld a, l                                       ; $7136: $7d
    ld a, a                                       ; $7137: $7f
    ld a, $3f                                     ; $7138: $3e $3f
    ld a, $03                                     ; $713a: $3e $03
    ccf                                           ; $713c: $3f
    add d                                         ; $713d: $82
    ld a, $3f                                     ; $713e: $3e $3f
    ld [bc], a                                    ; $7140: $02
    ld a, a                                       ; $7141: $7f
    add h                                         ; $7142: $84
    ld c, a                                       ; $7143: $4f
    ld a, a                                       ; $7144: $7f
    jr c, jr_0e4_7186                             ; $7145: $38 $3f

    ld [bc], a                                    ; $7147: $02
    rlca                                          ; $7148: $07
    inc b                                         ; $7149: $04
    nop                                           ; $714a: $00
    adc h                                         ; $714b: $8c
    dec sp                                        ; $714c: $3b
    ld a, a                                       ; $714d: $7f
    ld sp, $7b7f                                  ; $714e: $31 $7f $7b
    ld a, a                                       ; $7151: $7f
    ld a, l                                       ; $7152: $7d
    ld a, a                                       ; $7153: $7f
    dec sp                                        ; $7154: $3b
    ld a, a                                       ; $7155: $7f
    ccf                                           ; $7156: $3f
    ld a, l                                       ; $7157: $7d
    ld [bc], a                                    ; $7158: $02
    ld a, [hl]                                    ; $7159: $7e
    adc h                                         ; $715a: $8c
    ld [hl], h                                    ; $715b: $74
    ld a, h                                       ; $715c: $7c
    inc [hl]                                      ; $715d: $34
    ld a, h                                       ; $715e: $7c
    ld e, [hl]                                    ; $715f: $5e
    ld a, [hl]                                    ; $7160: $7e
    ld a, $7e                                     ; $7161: $3e $7e
    ld a, d                                       ; $7163: $7a
    ld a, [hl]                                    ; $7164: $7e
    ld b, $7e                                     ; $7165: $06 $7e
    ld [bc], a                                    ; $7167: $02
    ld a, b                                       ; $7168: $78
    ld [bc], a                                    ; $7169: $02
    nop                                           ; $716a: $00
    rst $38                                       ; $716b: $ff
    add hl, bc                                    ; $716c: $09
    ld [bc], a                                    ; $716d: $02
    ld sp, hl                                     ; $716e: $f9
    ld [$01f2], sp                                ; $716f: $08 $f2 $01
    add sp, -$05                                  ; $7172: $e8 $fb
    add sp, -$02                                  ; $7174: $e8 $fe
    sub h                                         ; $7176: $94
    nop                                           ; $7177: $00
    jr nz, @+$65                                  ; $7178: $20 $63

    jr jr_0e4_71f3                                ; $717a: $18 $77

    adc b                                         ; $717c: $88
    ld l, a                                       ; $717d: $6f
    db $10                                        ; $717e: $10
    ccf                                           ; $717f: $3f
    ld b, b                                       ; $7180: $40
    ccf                                           ; $7181: $3f
    ret nz                                        ; $7182: $c0

    ccf                                           ; $7183: $3f
    nop                                           ; $7184: $00
    dec de                                        ; $7185: $1b

jr_0e4_7186:
    inc h                                         ; $7186: $24
    inc b                                         ; $7187: $04
    dec de                                        ; $7188: $1b
    nop                                           ; $7189: $00
    ld a, [bc]                                    ; $718a: $0a
    dec c                                         ; $718b: $0d
    nop                                           ; $718c: $00
    adc h                                         ; $718d: $8c
    inc b                                         ; $718e: $04
    ld b, $00                                     ; $718f: $06 $00
    ld b, $01                                     ; $7191: $06 $01
    inc b                                         ; $7193: $04
    ld [bc], a                                    ; $7194: $02
    inc b                                         ; $7195: $04
    inc bc                                        ; $7196: $03
    inc b                                         ; $7197: $04
    ld [bc], a                                    ; $7198: $02
    inc b                                         ; $7199: $04
    ld [bc], a                                    ; $719a: $02
    nop                                           ; $719b: $00
    add c                                         ; $719c: $81
    inc b                                         ; $719d: $04
    stop                                          ; $719e: $10 $00
    rst $38                                       ; $71a0: $ff
    dec c                                         ; $71a1: $0d
    inc b                                         ; $71a2: $04
    ld sp, hl                                     ; $71a3: $f9
    ld [$01f2], sp                                ; $71a4: $08 $f2 $01
    ld [c], a                                     ; $71a7: $e2
    ld a, [$ffe3]                                 ; $71a8: $fa $e3 $ff
    ld a, [c]                                     ; $71ab: $f2
    ld sp, hl                                     ; $71ac: $f9
    ld a, [c]                                     ; $71ad: $f2
    nop                                           ; $71ae: $00
    ld [bc], a                                    ; $71af: $02
    rlca                                          ; $71b0: $07
    adc b                                         ; $71b1: $88
    inc c                                         ; $71b2: $0c
    rrca                                          ; $71b3: $0f
    dec c                                         ; $71b4: $0d
    rrca                                          ; $71b5: $0f
    dec e                                         ; $71b6: $1d
    rra                                           ; $71b7: $1f
    dec d                                         ; $71b8: $15
    rra                                           ; $71b9: $1f
    ld [bc], a                                    ; $71ba: $02
    cpl                                           ; $71bb: $2f
    ld [bc], a                                    ; $71bc: $02
    ld [hl+], a                                   ; $71bd: $22
    ld [bc], a                                    ; $71be: $02
    ld b, b                                       ; $71bf: $40
    inc b                                         ; $71c0: $04
    add b                                         ; $71c1: $80
    ld [bc], a                                    ; $71c2: $02
    ld h, b                                       ; $71c3: $60
    ld [bc], a                                    ; $71c4: $02
    ld b, b                                       ; $71c5: $40
    inc b                                         ; $71c6: $04
    ld h, b                                       ; $71c7: $60
    add h                                         ; $71c8: $84
    ret c                                         ; $71c9: $d8

    ld hl, sp-$6b                                 ; $71ca: $f8 $95
    push af                                       ; $71cc: $f5
    inc b                                         ; $71cd: $04
    db $10                                        ; $71ce: $10
    add h                                         ; $71cf: $84
    ld [$0818], sp                                ; $71d0: $08 $18 $08
    jr jr_0e4_71d7                                ; $71d3: $18 $02

    inc d                                         ; $71d5: $14
    ld [bc], a                                    ; $71d6: $02

jr_0e4_71d7:
    inc b                                         ; $71d7: $04
    ld [bc], a                                    ; $71d8: $02
    ld [bc], a                                    ; $71d9: $02
    inc b                                         ; $71da: $04
    ld bc, $0602                                  ; $71db: $01 $02 $06
    ld [bc], a                                    ; $71de: $02
    ld [bc], a                                    ; $71df: $02
    inc b                                         ; $71e0: $04
    ld b, $a4                                     ; $71e1: $06 $a4
    dec bc                                        ; $71e3: $0b
    rrca                                          ; $71e4: $0f
    add hl, bc                                    ; $71e5: $09
    rrca                                          ; $71e6: $0f
    ld e, l                                       ; $71e7: $5d
    rst $38                                       ; $71e8: $ff
    ld e, h                                       ; $71e9: $5c
    ld a, h                                       ; $71ea: $7c
    ld e, [hl]                                    ; $71eb: $5e
    ld a, a                                       ; $71ec: $7f
    sbc $ff                                       ; $71ed: $de $ff
    cp l                                          ; $71ef: $bd
    rst $38                                       ; $71f0: $ff
    db $dd                                        ; $71f1: $dd
    rst $38                                       ; $71f2: $ff

jr_0e4_71f3:
    cp $bf                                        ; $71f3: $fe $bf
    ld a, [hl]                                    ; $71f5: $7e
    ld a, a                                       ; $71f6: $7f
    dec a                                         ; $71f7: $3d
    ccf                                           ; $71f8: $3f
    dec a                                         ; $71f9: $3d
    ccf                                           ; $71fa: $3f
    ld a, $3f                                     ; $71fb: $3e $3f
    ld a, [hl]                                    ; $71fd: $7e
    ld a, a                                       ; $71fe: $7f
    ld a, l                                       ; $71ff: $7d
    ld a, a                                       ; $7200: $7f
    ld a, [hl]                                    ; $7201: $7e
    ld a, a                                       ; $7202: $7f
    ld e, a                                       ; $7203: $5f
    ld a, a                                       ; $7204: $7f
    jr nc, jr_0e4_7246                            ; $7205: $30 $3f

    ld [bc], a                                    ; $7207: $02
    rrca                                          ; $7208: $0f
    ld [bc], a                                    ; $7209: $02
    nop                                           ; $720a: $00
    add a                                         ; $720b: $87
    ld a, d                                       ; $720c: $7a
    ld a, [hl]                                    ; $720d: $7e
    ld a, e                                       ; $720e: $7b
    ld a, a                                       ; $720f: $7f
    dec a                                         ; $7210: $3d
    ld a, a                                       ; $7211: $7f
    dec sp                                        ; $7212: $3b
    ld [bc], a                                    ; $7213: $02
    ld a, a                                       ; $7214: $7f
    adc b                                         ; $7215: $88
    ld a, l                                       ; $7216: $7d
    halt                                          ; $7217: $76
    ld a, [hl]                                    ; $7218: $7e
    inc [hl]                                      ; $7219: $34
    ld a, h                                       ; $721a: $7c
    inc a                                         ; $721b: $3c
    ld a, h                                       ; $721c: $7c
    ld [hl], h                                    ; $721d: $74
    inc bc                                        ; $721e: $03
    ld a, h                                       ; $721f: $7c
    add c                                         ; $7220: $81
    inc a                                         ; $7221: $3c
    inc bc                                        ; $7222: $03
    ld a, h                                       ; $7223: $7c
    add h                                         ; $7224: $84
    ld a, d                                       ; $7225: $7a
    ld a, [hl]                                    ; $7226: $7e
    inc c                                         ; $7227: $0c
    ld a, h                                       ; $7228: $7c
    ld [bc], a                                    ; $7229: $02
    ld [hl], b                                    ; $722a: $70
    rst $38                                       ; $722b: $ff
    add hl, bc                                    ; $722c: $09
    ld [bc], a                                    ; $722d: $02
    ld sp, hl                                     ; $722e: $f9
    ld [$01f2], sp                                ; $722f: $08 $f2 $01
    rst $20                                       ; $7232: $e7
    ei                                            ; $7233: $fb
    rst $20                                       ; $7234: $e7
    cp $96                                        ; $7235: $fe $96
    nop                                           ; $7237: $00
    jr nz, jr_0e4_725d                            ; $7238: $20 $23

    jr jr_0e4_7273                                ; $723a: $18 $37

    ld c, b                                       ; $723c: $48
    ld l, e                                       ; $723d: $6b
    sub h                                         ; $723e: $94
    ccf                                           ; $723f: $3f
    ret nz                                        ; $7240: $c0

    rra                                           ; $7241: $1f
    jr nz, jr_0e4_7283                            ; $7242: $20 $3f

    ld b, b                                       ; $7244: $40
    scf                                           ; $7245: $37

jr_0e4_7246:
    ld [$340b], sp                                ; $7246: $08 $0b $34
    inc b                                         ; $7249: $04
    dec bc                                        ; $724a: $0b
    nop                                           ; $724b: $00
    dec d                                         ; $724c: $15
    dec bc                                        ; $724d: $0b
    nop                                           ; $724e: $00
    ld [bc], a                                    ; $724f: $02
    inc b                                         ; $7250: $04
    adc a                                         ; $7251: $8f
    nop                                           ; $7252: $00
    inc b                                         ; $7253: $04
    ld [bc], a                                    ; $7254: $02
    ld b, $01                                     ; $7255: $06 $01
    inc b                                         ; $7257: $04
    inc bc                                        ; $7258: $03
    inc b                                         ; $7259: $04
    nop                                           ; $725a: $00
    inc b                                         ; $725b: $04
    ld [bc], a                                    ; $725c: $02

jr_0e4_725d:
    nop                                           ; $725d: $00
    inc b                                         ; $725e: $04
    nop                                           ; $725f: $00
    inc b                                         ; $7260: $04
    ld c, $00                                     ; $7261: $0e $00
    rst $38                                       ; $7263: $ff
    dec c                                         ; $7264: $0d
    inc b                                         ; $7265: $04
    ld sp, hl                                     ; $7266: $f9
    ld [$01f2], sp                                ; $7267: $08 $f2 $01
    ld [c], a                                     ; $726a: $e2
    ld a, [$ffe3]                                 ; $726b: $fa $e3 $ff
    ld a, [c]                                     ; $726e: $f2
    ld sp, hl                                     ; $726f: $f9
    ld a, [c]                                     ; $7270: $f2
    nop                                           ; $7271: $00
    ld [bc], a                                    ; $7272: $02

jr_0e4_7273:
    rlca                                          ; $7273: $07
    add h                                         ; $7274: $84
    inc c                                         ; $7275: $0c
    rrca                                          ; $7276: $0f
    inc c                                         ; $7277: $0c
    rrca                                          ; $7278: $0f
    ld [bc], a                                    ; $7279: $02
    rra                                           ; $727a: $1f
    adc b                                         ; $727b: $88
    ld [hl-], a                                   ; $727c: $32
    jr nc, jr_0e4_72de                            ; $727d: $30 $5f

    ld d, l                                       ; $727f: $55
    ld d, d                                       ; $7280: $52
    ld d, b                                       ; $7281: $50
    sbc a                                         ; $7282: $9f

jr_0e4_7283:
    sub l                                         ; $7283: $95
    ld [bc], a                                    ; $7284: $02
    ld e, d                                       ; $7285: $5a
    add h                                         ; $7286: $84
    ld d, a                                       ; $7287: $57
    ld d, l                                       ; $7288: $55
    ld h, a                                       ; $7289: $67
    ld h, d                                       ; $728a: $62
    ld [bc], a                                    ; $728b: $02
    ld b, l                                       ; $728c: $45
    inc b                                         ; $728d: $04
    ld b, b                                       ; $728e: $40
    add d                                         ; $728f: $82
    and b                                         ; $7290: $a0
    ldh [rSC], a                                  ; $7291: $e0 $02
    ret nz                                        ; $7293: $c0

    inc b                                         ; $7294: $04
    db $10                                        ; $7295: $10
    add d                                         ; $7296: $82
    ld [$0218], sp                                ; $7297: $08 $18 $02
    inc c                                         ; $729a: $0c
    add c                                         ; $729b: $81
    ld a, [de]                                    ; $729c: $1a
    inc bc                                        ; $729d: $03
    ld a, [bc]                                    ; $729e: $0a
    add d                                         ; $729f: $82
    add hl, de                                    ; $72a0: $19
    add hl, bc                                    ; $72a1: $09
    ld [bc], a                                    ; $72a2: $02
    ld a, [de]                                    ; $72a3: $1a
    ld [bc], a                                    ; $72a4: $02
    ld a, [bc]                                    ; $72a5: $0a
    ld [bc], a                                    ; $72a6: $02
    ld b, $06                                     ; $72a7: $06 $06
    ld [bc], a                                    ; $72a9: $02
    ld [bc], a                                    ; $72aa: $02
    inc bc                                        ; $72ab: $03
    add d                                         ; $72ac: $82
    dec b                                         ; $72ad: $05
    rlca                                          ; $72ae: $07
    ld [bc], a                                    ; $72af: $02
    inc bc                                        ; $72b0: $03
    sbc [hl]                                      ; $72b1: $9e
    ld e, b                                       ; $72b2: $58
    ld a, b                                       ; $72b3: $78
    sbc e                                         ; $72b4: $9b
    ei                                            ; $72b5: $fb
    sub $fe                                       ; $72b6: $d6 $fe
    cp h                                          ; $72b8: $bc
    db $fc                                        ; $72b9: $fc
    rst $30                                       ; $72ba: $f7
    sbc a                                         ; $72bb: $9f
    halt                                          ; $72bc: $76
    ld e, [hl]                                    ; $72bd: $5e
    ld [hl], h                                    ; $72be: $74
    ld a, h                                       ; $72bf: $7c
    dec [hl]                                      ; $72c0: $35
    dec a                                         ; $72c1: $3d
    inc [hl]                                      ; $72c2: $34
    inc a                                         ; $72c3: $3c
    ld [hl], $3e                                  ; $72c4: $36 $3e
    add hl, hl                                    ; $72c6: $29
    add hl, sp                                    ; $72c7: $39
    ld a, [hl+]                                   ; $72c8: $2a
    ld a, [hl-]                                   ; $72c9: $3a
    ld d, c                                       ; $72ca: $51
    ld [hl], c                                    ; $72cb: $71
    ld e, h                                       ; $72cc: $5c
    ld a, h                                       ; $72cd: $7c
    inc sp                                        ; $72ce: $33
    scf                                           ; $72cf: $37
    ld [bc], a                                    ; $72d0: $02
    inc c                                         ; $72d1: $0c
    ld [bc], a                                    ; $72d2: $02
    nop                                           ; $72d3: $00
    sbc h                                         ; $72d4: $9c
    add hl, de                                    ; $72d5: $19
    rra                                           ; $72d6: $1f
    ld l, e                                       ; $72d7: $6b
    ld a, a                                       ; $72d8: $7f
    dec a                                         ; $72d9: $3d
    ccf                                           ; $72da: $3f
    ld l, a                                       ; $72db: $6f
    ld a, c                                       ; $72dc: $79
    ld l, [hl]                                    ; $72dd: $6e

jr_0e4_72de:
    ld a, d                                       ; $72de: $7a
    ld l, $3e                                     ; $72df: $2e $3e
    inc l                                         ; $72e1: $2c
    inc a                                         ; $72e2: $3c
    inc l                                         ; $72e3: $2c
    inc a                                         ; $72e4: $3c
    ld l, h                                       ; $72e5: $6c
    ld a, h                                       ; $72e6: $7c
    inc d                                         ; $72e7: $14
    inc e                                         ; $72e8: $1c
    ld d, h                                       ; $72e9: $54
    ld e, h                                       ; $72ea: $5c
    ld a, [bc]                                    ; $72eb: $0a
    ld c, $3a                                     ; $72ec: $0e $3a
    ld a, $4c                                     ; $72ee: $3e $4c
    ld l, h                                       ; $72f0: $6c
    ld [bc], a                                    ; $72f1: $02
    jr nc, @+$01                                  ; $72f2: $30 $ff

    dec bc                                        ; $72f4: $0b
    inc bc                                        ; $72f5: $03
    ld sp, hl                                     ; $72f6: $f9
    ld [$01f2], sp                                ; $72f7: $08 $f2 $01
    and $fb                                       ; $72fa: $e6 $fb
    rst $20                                       ; $72fc: $e7
    cp $f6                                        ; $72fd: $fe $f6
    db $fc                                        ; $72ff: $fc
    and l                                         ; $7300: $a5
    dec de                                        ; $7301: $1b
    nop                                           ; $7302: $00
    ld b, b                                       ; $7303: $40
    nop                                           ; $7304: $00
    ld b, b                                       ; $7305: $40
    dec de                                        ; $7306: $1b
    add b                                         ; $7307: $80
    ld b, b                                       ; $7308: $40
    ld c, d                                       ; $7309: $4a

jr_0e4_730a:
    nop                                           ; $730a: $00
    ld de, $2040                                  ; $730b: $11 $40 $20

jr_0e4_730e:
    ld de, $5520                                  ; $730e: $11 $20 $55
    dec [hl]                                      ; $7311: $35
    ld c, d                                       ; $7312: $4a
    ccf                                           ; $7313: $3f
    ld b, b                                       ; $7314: $40
    rra                                           ; $7315: $1f
    jr nz, @+$31                                  ; $7316: $20 $2f

    ld d, b                                       ; $7318: $50
    ld a, [bc]                                    ; $7319: $0a
    dec d                                         ; $731a: $15
    nop                                           ; $731b: $00
    inc de                                        ; $731c: $13
    nop                                           ; $731d: $00
    inc b                                         ; $731e: $04
    nop                                           ; $731f: $00
    ld c, $02                                     ; $7320: $0e $02
    nop                                           ; $7322: $00
    ld [bc], a                                    ; $7323: $02
    nop                                           ; $7324: $00
    ld bc, $0202                                  ; $7325: $01 $02 $02
    ld [bc], a                                    ; $7328: $02
    nop                                           ; $7329: $00
    adc h                                         ; $732a: $8c
    ld [bc], a                                    ; $732b: $02
    inc b                                         ; $732c: $04
    nop                                           ; $732d: $00
    inc b                                         ; $732e: $04
    ld [bc], a                                    ; $732f: $02
    ld b, $00                                     ; $7330: $06 $00
    inc b                                         ; $7332: $04
    ld [bc], a                                    ; $7333: $02
    inc b                                         ; $7334: $04
    ld [bc], a                                    ; $7335: $02
    nop                                           ; $7336: $00
    ld [bc], a                                    ; $7337: $02
    inc b                                         ; $7338: $04
    add c                                         ; $7339: $81
    ld [bc], a                                    ; $733a: $02
    dec bc                                        ; $733b: $0b
    nop                                           ; $733c: $00
    sub d                                         ; $733d: $92
    ld [$1c00], sp                                ; $733e: $08 $00 $1c
    nop                                           ; $7341: $00
    inc d                                         ; $7342: $14
    nop                                           ; $7343: $00
    inc e                                         ; $7344: $1c
    nop                                           ; $7345: $00
    ld [$3600], sp                                ; $7346: $08 $00 $36
    nop                                           ; $7349: $00
    ld a, [hl+]                                   ; $734a: $2a
    nop                                           ; $734b: $00
    ld [hl], a                                    ; $734c: $77
    nop                                           ; $734d: $00
    inc e                                         ; $734e: $1c
    ld b, c                                       ; $734f: $41
    dec bc                                        ; $7350: $0b
    nop                                           ; $7351: $00
    rst $38                                       ; $7352: $ff
    dec c                                         ; $7353: $0d
    inc b                                         ; $7354: $04
    ld sp, hl                                     ; $7355: $f9
    ld [$01f2], sp                                ; $7356: $08 $f2 $01
    ld [c], a                                     ; $7359: $e2
    ld a, [$00e3]                                 ; $735a: $fa $e3 $00
    ld a, [c]                                     ; $735d: $f2
    ld sp, hl                                     ; $735e: $f9
    ld a, [c]                                     ; $735f: $f2
    nop                                           ; $7360: $00
    ld [bc], a                                    ; $7361: $02
    rlca                                          ; $7362: $07
    add h                                         ; $7363: $84
    inc c                                         ; $7364: $0c
    rrca                                          ; $7365: $0f
    inc c                                         ; $7366: $0c
    rrca                                          ; $7367: $0f
    ld [bc], a                                    ; $7368: $02
    rra                                           ; $7369: $1f
    adc b                                         ; $736a: $88
    ld [hl-], a                                   ; $736b: $32
    jr nc, jr_0e4_73cd                            ; $736c: $30 $5f

    ld d, l                                       ; $736e: $55
    ld d, d                                       ; $736f: $52
    ld d, b                                       ; $7370: $50
    sbc a                                         ; $7371: $9f
    sub l                                         ; $7372: $95
    ld [bc], a                                    ; $7373: $02
    ld e, d                                       ; $7374: $5a
    add [hl]                                      ; $7375: $86
    ld d, a                                       ; $7376: $57
    ld d, l                                       ; $7377: $55
    ld h, a                                       ; $7378: $67
    ld h, d                                       ; $7379: $62
    ld h, c                                       ; $737a: $61
    ld h, l                                       ; $737b: $65
    ld [bc], a                                    ; $737c: $02
    ld b, b                                       ; $737d: $40
    ld [bc], a                                    ; $737e: $02
    ld h, b                                       ; $737f: $60
    add h                                         ; $7380: $84
    and b                                         ; $7381: $a0
    ldh [$a0], a                                  ; $7382: $e0 $a0
    ldh [rDIV], a                                 ; $7384: $e0 $04
    jr nz, jr_0e4_730a                            ; $7386: $20 $82

    db $10                                        ; $7388: $10
    jr nc, jr_0e4_738d                            ; $7389: $30 $02

    jr jr_0e4_730e                                ; $738b: $18 $81

jr_0e4_738d:
    inc [hl]                                      ; $738d: $34
    inc bc                                        ; $738e: $03
    inc d                                         ; $738f: $14
    add d                                         ; $7390: $82
    ld [hl-], a                                   ; $7391: $32
    ld [de], a                                    ; $7392: $12
    ld [bc], a                                    ; $7393: $02
    inc [hl]                                      ; $7394: $34
    ld [bc], a                                    ; $7395: $02
    inc d                                         ; $7396: $14
    ld [bc], a                                    ; $7397: $02
    inc c                                         ; $7398: $0c
    inc b                                         ; $7399: $04
    inc b                                         ; $739a: $04
    ld [bc], a                                    ; $739b: $02
    ld [bc], a                                    ; $739c: $02
    inc b                                         ; $739d: $04
    ld b, $9e                                     ; $739e: $06 $9e
    dec b                                         ; $73a0: $05
    rlca                                          ; $73a1: $07
    ld e, h                                       ; $73a2: $5c
    ld a, h                                       ; $73a3: $7c
    ld d, l                                       ; $73a4: $55
    ld a, l                                       ; $73a5: $7d
    or $fe                                        ; $73a6: $f6 $fe
    sbc h                                         ; $73a8: $9c
    db $fc                                        ; $73a9: $fc
    rst $30                                       ; $73aa: $f7
    rst $38                                       ; $73ab: $ff
    or $8e                                        ; $73ac: $f6 $8e
    ld [hl], h                                    ; $73ae: $74
    ld e, h                                       ; $73af: $5c
    dec [hl]                                      ; $73b0: $35
    dec a                                         ; $73b1: $3d
    inc [hl]                                      ; $73b2: $34
    inc a                                         ; $73b3: $3c
    ld [hl], $3e                                  ; $73b4: $36 $3e
    dec [hl]                                      ; $73b6: $35
    dec a                                         ; $73b7: $3d
    ld l, e                                       ; $73b8: $6b
    ld a, e                                       ; $73b9: $7b
    ld l, d                                       ; $73ba: $6a
    ld a, d                                       ; $73bb: $7a
    ld c, b                                       ; $73bc: $48
    ld a, b                                       ; $73bd: $78
    ld [bc], a                                    ; $73be: $02
    ccf                                           ; $73bf: $3f
    inc b                                         ; $73c0: $04
    nop                                           ; $73c1: $00
    sub d                                         ; $73c2: $92
    ld e, c                                       ; $73c3: $59
    ld e, a                                       ; $73c4: $5f
    ld l, l                                       ; $73c5: $6d
    ld a, a                                       ; $73c6: $7f
    dec sp                                        ; $73c7: $3b
    ccf                                           ; $73c8: $3f
    ld l, a                                       ; $73c9: $6f
    ld a, l                                       ; $73ca: $7d
    ld l, $3e                                     ; $73cb: $2e $3e

jr_0e4_73cd:
    ld l, $3e                                     ; $73cd: $2e $3e
    inc d                                         ; $73cf: $14
    inc e                                         ; $73d0: $1c
    ld d, h                                       ; $73d1: $54
    ld e, h                                       ; $73d2: $5c
    inc d                                         ; $73d3: $14
    inc e                                         ; $73d4: $1c
    ld [bc], a                                    ; $73d5: $02
    ld c, h                                       ; $73d6: $4c
    ld [bc], a                                    ; $73d7: $02
    inc c                                         ; $73d8: $0c
    ld [bc], a                                    ; $73d9: $02
    ld [hl], $82                                  ; $73da: $36 $82
    ld c, d                                       ; $73dc: $4a
    ld l, [hl]                                    ; $73dd: $6e
    ld [bc], a                                    ; $73de: $02
    ld a, h                                       ; $73df: $7c
    ld [bc], a                                    ; $73e0: $02
    ld [hl], b                                    ; $73e1: $70
    rst $38                                       ; $73e2: $ff
    dec bc                                        ; $73e3: $0b
    inc bc                                        ; $73e4: $03
    ld sp, hl                                     ; $73e5: $f9
    ld [$01f2], sp                                ; $73e6: $08 $f2 $01
    and $fb                                       ; $73e9: $e6 $fb
    rst $20                                       ; $73eb: $e7
    cp $f6                                        ; $73ec: $fe $f6
    db $fd                                        ; $73ee: $fd
    and l                                         ; $73ef: $a5
    dec de                                        ; $73f0: $1b
    nop                                           ; $73f1: $00
    ld b, b                                       ; $73f2: $40
    nop                                           ; $73f3: $00
    ld b, b                                       ; $73f4: $40

jr_0e4_73f5:
    dec de                                        ; $73f5: $1b
    add b                                         ; $73f6: $80
    ld b, b                                       ; $73f7: $40
    ld c, d                                       ; $73f8: $4a
    nop                                           ; $73f9: $00

jr_0e4_73fa:
    ld de, $2040                                  ; $73fa: $11 $40 $20
    ld de, $1520                                  ; $73fd: $11 $20 $15
    dec [hl]                                      ; $7400: $35
    ld c, d                                       ; $7401: $4a
    rra                                           ; $7402: $1f
    jr nz, jr_0e4_7424                            ; $7403: $20 $1f

    jr nz, jr_0e4_741e                            ; $7405: $20 $17

    jr z, jr_0e4_740d                             ; $7407: $28 $04

    dec bc                                        ; $7409: $0b
    nop                                           ; $740a: $00
    add hl, bc                                    ; $740b: $09
    nop                                           ; $740c: $00

jr_0e4_740d:
    inc b                                         ; $740d: $04
    nop                                           ; $740e: $00
    ld c, $02                                     ; $740f: $0e $02
    nop                                           ; $7411: $00
    ld [bc], a                                    ; $7412: $02
    nop                                           ; $7413: $00
    ld bc, $0202                                  ; $7414: $01 $02 $02
    ld [bc], a                                    ; $7417: $02
    nop                                           ; $7418: $00
    adc a                                         ; $7419: $8f
    ld [bc], a                                    ; $741a: $02
    inc b                                         ; $741b: $04
    nop                                           ; $741c: $00
    inc b                                         ; $741d: $04

jr_0e4_741e:
    ld [bc], a                                    ; $741e: $02
    ld b, $00                                     ; $741f: $06 $00
    ld b, $01                                     ; $7421: $06 $01
    inc b                                         ; $7423: $04

jr_0e4_7424:
    ld [bc], a                                    ; $7424: $02
    inc b                                         ; $7425: $04
    ld [bc], a                                    ; $7426: $02
    inc b                                         ; $7427: $04
    ld [bc], a                                    ; $7428: $02
    dec bc                                        ; $7429: $0b
    nop                                           ; $742a: $00
    sub c                                         ; $742b: $91
    jr jr_0e4_742e                                ; $742c: $18 $00

jr_0e4_742e:
    jr c, jr_0e4_7430                             ; $742e: $38 $00

jr_0e4_7430:
    inc l                                         ; $7430: $2c
    nop                                           ; $7431: $00
    inc [hl]                                      ; $7432: $34
    nop                                           ; $7433: $00
    inc e                                         ; $7434: $1c
    nop                                           ; $7435: $00
    ld h, $00                                     ; $7436: $26 $00
    ld c, [hl]                                    ; $7438: $4e
    nop                                           ; $7439: $00
    ld e, c                                       ; $743a: $59
    ld [bc], a                                    ; $743b: $02
    ld [hl], b                                    ; $743c: $70
    inc c                                         ; $743d: $0c
    nop                                           ; $743e: $00
    rst $38                                       ; $743f: $ff
    dec c                                         ; $7440: $0d
    inc b                                         ; $7441: $04
    ld sp, hl                                     ; $7442: $f9
    ld [$01f2], sp                                ; $7443: $08 $f2 $01
    db $e3                                        ; $7446: $e3
    ld a, [$00e4]                                 ; $7447: $fa $e4 $00
    di                                            ; $744a: $f3
    ld sp, hl                                     ; $744b: $f9
    di                                            ; $744c: $f3
    nop                                           ; $744d: $00
    ld [bc], a                                    ; $744e: $02
    rlca                                          ; $744f: $07
    add h                                         ; $7450: $84
    inc c                                         ; $7451: $0c
    rrca                                          ; $7452: $0f
    inc c                                         ; $7453: $0c
    rrca                                          ; $7454: $0f
    ld [bc], a                                    ; $7455: $02
    rra                                           ; $7456: $1f
    adc b                                         ; $7457: $88
    ld [hl-], a                                   ; $7458: $32
    jr nc, @+$61                                  ; $7459: $30 $5f

    ld d, l                                       ; $745b: $55
    sub d                                         ; $745c: $92
    sub b                                         ; $745d: $90
    sbc a                                         ; $745e: $9f
    sub l                                         ; $745f: $95
    ld [bc], a                                    ; $7460: $02
    ld e, d                                       ; $7461: $5a
    add h                                         ; $7462: $84
    ld d, a                                       ; $7463: $57
    ld d, l                                       ; $7464: $55
    ld h, a                                       ; $7465: $67
    ld h, d                                       ; $7466: $62
    ld [bc], a                                    ; $7467: $02
    ld b, c                                       ; $7468: $41
    inc b                                         ; $7469: $04
    ld b, b                                       ; $746a: $40
    ld [bc], a                                    ; $746b: $02
    ldh [$82], a                                  ; $746c: $e0 $82
    xor b                                         ; $746e: $a8
    add sp, $04                                   ; $746f: $e8 $04
    jr nz, jr_0e4_73f5                            ; $7471: $20 $82

    db $10                                        ; $7473: $10
    jr nc, jr_0e4_7478                            ; $7474: $30 $02

    jr jr_0e4_73fa                                ; $7476: $18 $82

jr_0e4_7478:
    inc [hl]                                      ; $7478: $34
    inc d                                         ; $7479: $14
    ld [bc], a                                    ; $747a: $02
    ld [de], a                                    ; $747b: $12
    add d                                         ; $747c: $82
    ld [hl-], a                                   ; $747d: $32
    ld [de], a                                    ; $747e: $12
    ld [bc], a                                    ; $747f: $02
    inc [hl]                                      ; $7480: $34
    ld [bc], a                                    ; $7481: $02
    inc d                                         ; $7482: $14
    ld [bc], a                                    ; $7483: $02
    inc c                                         ; $7484: $0c
    ld [bc], a                                    ; $7485: $02
    inc b                                         ; $7486: $04
    ld [bc], a                                    ; $7487: $02
    ld [bc], a                                    ; $7488: $02
    ld [bc], a                                    ; $7489: $02
    inc b                                         ; $748a: $04
    inc b                                         ; $748b: $04
    ld b, $9c                                     ; $748c: $06 $9c
    call $54cf                                    ; $748e: $cd $cf $54
    ld a, h                                       ; $7491: $7c
    ld d, a                                       ; $7492: $57
    ld a, a                                       ; $7493: $7f
    or $fe                                        ; $7494: $f6 $fe
    sbc h                                         ; $7496: $9c
    db $fc                                        ; $7497: $fc
    rst $30                                       ; $7498: $f7
    rst $38                                       ; $7499: $ff
    or $9e                                        ; $749a: $f6 $9e
    ld [hl], l                                    ; $749c: $75
    ld e, l                                       ; $749d: $5d
    inc [hl]                                      ; $749e: $34
    inc a                                         ; $749f: $3c
    ld [hl], $3e                                  ; $74a0: $36 $3e
    ld l, c                                       ; $74a2: $69
    ld a, c                                       ; $74a3: $79
    ld l, d                                       ; $74a4: $6a
    ld a, d                                       ; $74a5: $7a
    ld d, c                                       ; $74a6: $51
    ld [hl], c                                    ; $74a7: $71
    ld e, h                                       ; $74a8: $5c
    ld a, h                                       ; $74a9: $7c
    ld [bc], a                                    ; $74aa: $02
    ccf                                           ; $74ab: $3f
    ld b, $00                                     ; $74ac: $06 $00
    sub d                                         ; $74ae: $92
    ld a, c                                       ; $74af: $79
    ld a, a                                       ; $74b0: $7f
    dec l                                         ; $74b1: $2d
    ccf                                           ; $74b2: $3f
    dec sp                                        ; $74b3: $3b
    ccf                                           ; $74b4: $3f
    ld l, a                                       ; $74b5: $6f
    ld a, l                                       ; $74b6: $7d
    ld l, a                                       ; $74b7: $6f
    ld a, l                                       ; $74b8: $7d
    ld l, $3e                                     ; $74b9: $2e $3e
    inc d                                         ; $74bb: $14
    inc e                                         ; $74bc: $1c
    ld d, h                                       ; $74bd: $54
    ld e, h                                       ; $74be: $5c
    inc d                                         ; $74bf: $14
    inc e                                         ; $74c0: $1c
    ld [bc], a                                    ; $74c1: $02
    ld c, h                                       ; $74c2: $4c
    ld [bc], a                                    ; $74c3: $02
    inc c                                         ; $74c4: $0c
    add d                                         ; $74c5: $82
    ld a, [hl-]                                   ; $74c6: $3a
    ld a, $02                                     ; $74c7: $3e $02
    ld c, h                                       ; $74c9: $4c
    ld [bc], a                                    ; $74ca: $02
    ld [hl], b                                    ; $74cb: $70
    ld [bc], a                                    ; $74cc: $02
    nop                                           ; $74cd: $00
    rst $38                                       ; $74ce: $ff
    dec bc                                        ; $74cf: $0b
    inc bc                                        ; $74d0: $03
    ld sp, hl                                     ; $74d1: $f9
    ld [$01f2], sp                                ; $74d2: $08 $f2 $01
    rst $20                                       ; $74d5: $e7
    ei                                            ; $74d6: $fb
    add sp, -$02                                  ; $74d7: $e8 $fe
    rst $30                                       ; $74d9: $f7
    db $fc                                        ; $74da: $fc
    sbc d                                         ; $74db: $9a
    dec de                                        ; $74dc: $1b
    nop                                           ; $74dd: $00
    ld b, b                                       ; $74de: $40
    nop                                           ; $74df: $00
    ret nz                                        ; $74e0: $c0

    dec de                                        ; $74e1: $1b
    nop                                           ; $74e2: $00
    ret nz                                        ; $74e3: $c0

    ld c, d                                       ; $74e4: $4a
    nop                                           ; $74e5: $00
    ld de, $2040                                  ; $74e6: $11 $40 $20
    ld de, $4d30                                  ; $74e9: $11 $30 $4d
    ld [hl], l                                    ; $74ec: $75
    ld a, [bc]                                    ; $74ed: $0a
    ccf                                           ; $74ee: $3f
    ld b, b                                       ; $74ef: $40
    rra                                           ; $74f0: $1f
    jr nz, jr_0e4_74f8                            ; $74f1: $20 $05

    ld a, [hl+]                                   ; $74f3: $2a
    nop                                           ; $74f4: $00
    add hl, bc                                    ; $74f5: $09
    inc bc                                        ; $74f6: $03
    nop                                           ; $74f7: $00

jr_0e4_74f8:
    add [hl]                                      ; $74f8: $86
    ld b, $00                                     ; $74f9: $06 $00
    ld c, $02                                     ; $74fb: $0e $02
    nop                                           ; $74fd: $00
    inc bc                                        ; $74fe: $03
    ld [bc], a                                    ; $74ff: $02
    nop                                           ; $7500: $00
    add d                                         ; $7501: $82
    inc bc                                        ; $7502: $03
    ld [bc], a                                    ; $7503: $02
    ld [bc], a                                    ; $7504: $02
    nop                                           ; $7505: $00
    adc a                                         ; $7506: $8f
    ld [bc], a                                    ; $7507: $02
    inc b                                         ; $7508: $04
    nop                                           ; $7509: $00
    inc b                                         ; $750a: $04
    ld [bc], a                                    ; $750b: $02
    ld b, $01                                     ; $750c: $06 $01
    ld b, $00                                     ; $750e: $06 $00
    ld b, $00                                     ; $7510: $06 $00
    inc b                                         ; $7512: $04
    ld [bc], a                                    ; $7513: $02
    nop                                           ; $7514: $00
    inc b                                         ; $7515: $04
    dec bc                                        ; $7516: $0b
    nop                                           ; $7517: $00
    sub b                                         ; $7518: $90
    ld [$1400], sp                                ; $7519: $08 $00 $14
    nop                                           ; $751c: $00
    ld e, $00                                     ; $751d: $1e $00
    ld a, [bc]                                    ; $751f: $0a
    nop                                           ; $7520: $00
    ld [hl], $00                                  ; $7521: $36 $00
    dec hl                                        ; $7523: $2b
    nop                                           ; $7524: $00
    ld [hl], a                                    ; $7525: $77
    nop                                           ; $7526: $00
    inc e                                         ; $7527: $1c
    inc bc                                        ; $7528: $03
    dec c                                         ; $7529: $0d
    nop                                           ; $752a: $00
    rst $38                                       ; $752b: $ff
    dec c                                         ; $752c: $0d
    inc b                                         ; $752d: $04
    ld sp, hl                                     ; $752e: $f9
    ld [$01f2], sp                                ; $752f: $08 $f2 $01
    ld [c], a                                     ; $7532: $e2
    ld a, [$ffe3]                                 ; $7533: $fa $e3 $ff
    ld a, [c]                                     ; $7536: $f2
    ld sp, hl                                     ; $7537: $f9
    ld a, [c]                                     ; $7538: $f2
    nop                                           ; $7539: $00
    ld [bc], a                                    ; $753a: $02
    rlca                                          ; $753b: $07
    add h                                         ; $753c: $84
    inc c                                         ; $753d: $0c
    rrca                                          ; $753e: $0f
    inc c                                         ; $753f: $0c
    rrca                                          ; $7540: $0f
    ld [bc], a                                    ; $7541: $02
    rra                                           ; $7542: $1f
    adc b                                         ; $7543: $88
    ld [hl-], a                                   ; $7544: $32
    jr nc, @+$61                                  ; $7545: $30 $5f

    ld d, l                                       ; $7547: $55
    ld d, d                                       ; $7548: $52
    ld d, b                                       ; $7549: $50
    ld e, a                                       ; $754a: $5f
    ld d, l                                       ; $754b: $55
    ld [bc], a                                    ; $754c: $02
    sbc d                                         ; $754d: $9a
    add h                                         ; $754e: $84
    ld d, a                                       ; $754f: $57
    ld d, l                                       ; $7550: $55
    ld h, a                                       ; $7551: $67
    ld h, d                                       ; $7552: $62
    ld [bc], a                                    ; $7553: $02
    ld b, l                                       ; $7554: $45
    inc b                                         ; $7555: $04
    ld b, b                                       ; $7556: $40
    add d                                         ; $7557: $82
    and b                                         ; $7558: $a0
    ldh [rSC], a                                  ; $7559: $e0 $02
    ret nz                                        ; $755b: $c0

    inc b                                         ; $755c: $04
    db $10                                        ; $755d: $10
    add d                                         ; $755e: $82
    ld [$0218], sp                                ; $755f: $08 $18 $02
    inc c                                         ; $7562: $0c
    add c                                         ; $7563: $81
    ld a, [de]                                    ; $7564: $1a
    inc bc                                        ; $7565: $03
    ld a, [bc]                                    ; $7566: $0a
    add d                                         ; $7567: $82
    ld a, [de]                                    ; $7568: $1a
    ld a, [bc]                                    ; $7569: $0a
    ld [bc], a                                    ; $756a: $02
    add hl, de                                    ; $756b: $19
    ld [bc], a                                    ; $756c: $02
    ld a, [bc]                                    ; $756d: $0a
    ld [bc], a                                    ; $756e: $02
    ld b, $06                                     ; $756f: $06 $06
    ld [bc], a                                    ; $7571: $02
    ld [bc], a                                    ; $7572: $02
    inc bc                                        ; $7573: $03
    add d                                         ; $7574: $82
    dec b                                         ; $7575: $05
    rlca                                          ; $7576: $07
    ld [bc], a                                    ; $7577: $02
    inc bc                                        ; $7578: $03
    sbc h                                         ; $7579: $9c
    ld e, b                                       ; $757a: $58
    ld a, b                                       ; $757b: $78
    sbc e                                         ; $757c: $9b
    ei                                            ; $757d: $fb
    sub $fe                                       ; $757e: $d6 $fe
    cp h                                          ; $7580: $bc
    db $fc                                        ; $7581: $fc
    rst $30                                       ; $7582: $f7
    sbc a                                         ; $7583: $9f
    ld [hl], h                                    ; $7584: $74
    ld e, h                                       ; $7585: $5c
    ld [hl], l                                    ; $7586: $75
    ld a, l                                       ; $7587: $7d
    dec [hl]                                      ; $7588: $35
    dec a                                         ; $7589: $3d
    ld [hl], $3e                                  ; $758a: $36 $3e
    ld a, [hl+]                                   ; $758c: $2a
    ld a, [hl-]                                   ; $758d: $3a
    add hl, hl                                    ; $758e: $29
    add hl, sp                                    ; $758f: $39
    ld d, d                                       ; $7590: $52
    ld [hl], d                                    ; $7591: $72
    ld d, c                                       ; $7592: $51
    ld [hl], c                                    ; $7593: $71
    ld e, [hl]                                    ; $7594: $5e
    ld a, [hl]                                    ; $7595: $7e
    ld [bc], a                                    ; $7596: $02
    ccf                                           ; $7597: $3f
    inc b                                         ; $7598: $04
    nop                                           ; $7599: $00
    sbc h                                         ; $759a: $9c
    add hl, de                                    ; $759b: $19
    rra                                           ; $759c: $1f
    ld l, e                                       ; $759d: $6b
    ld a, a                                       ; $759e: $7f
    dec a                                         ; $759f: $3d
    ccf                                           ; $75a0: $3f
    ld l, a                                       ; $75a1: $6f
    ld a, c                                       ; $75a2: $79
    ld l, [hl]                                    ; $75a3: $6e
    ld a, d                                       ; $75a4: $7a
    ld l, $3e                                     ; $75a5: $2e $3e
    inc l                                         ; $75a7: $2c
    inc a                                         ; $75a8: $3c
    inc l                                         ; $75a9: $2c
    inc a                                         ; $75aa: $3c
    ld l, h                                       ; $75ab: $6c
    ld a, h                                       ; $75ac: $7c
    inc d                                         ; $75ad: $14
    inc e                                         ; $75ae: $1c
    ld d, h                                       ; $75af: $54
    ld e, h                                       ; $75b0: $5c
    ld c, d                                       ; $75b1: $4a
    ld c, [hl]                                    ; $75b2: $4e
    ld a, [hl-]                                   ; $75b3: $3a
    ld a, $4c                                     ; $75b4: $3e $4c
    ld e, h                                       ; $75b6: $5c
    ld [bc], a                                    ; $75b7: $02
    jr nc, @+$01                                  ; $75b8: $30 $ff

    dec bc                                        ; $75ba: $0b
    inc bc                                        ; $75bb: $03
    ld sp, hl                                     ; $75bc: $f9
    ld [$01f2], sp                                ; $75bd: $08 $f2 $01
    and $fb                                       ; $75c0: $e6 $fb
    rst $20                                       ; $75c2: $e7
    cp $f6                                        ; $75c3: $fe $f6
    db $fc                                        ; $75c5: $fc
    add c                                         ; $75c6: $81
    dec de                                        ; $75c7: $1b
    ld [bc], a                                    ; $75c8: $02
    nop                                           ; $75c9: $00
    ld [bc], a                                    ; $75ca: $02
    ld b, b                                       ; $75cb: $40
    sbc h                                         ; $75cc: $9c
    dec de                                        ; $75cd: $1b
    ld b, b                                       ; $75ce: $40
    nop                                           ; $75cf: $00
    adc d                                         ; $75d0: $8a
    ld b, b                                       ; $75d1: $40
    ld de, $2040                                  ; $75d2: $11 $40 $20
    ld de, $5520                                  ; $75d5: $11 $20 $55
    dec [hl]                                      ; $75d8: $35
    ld c, d                                       ; $75d9: $4a
    ccf                                           ; $75da: $3f
    ld b, b                                       ; $75db: $40
    rra                                           ; $75dc: $1f
    jr nz, @+$31                                  ; $75dd: $20 $2f

    ld d, b                                       ; $75df: $50
    ld a, [bc]                                    ; $75e0: $0a
    dec d                                         ; $75e1: $15
    nop                                           ; $75e2: $00
    inc de                                        ; $75e3: $13
    nop                                           ; $75e4: $00
    inc b                                         ; $75e5: $04
    nop                                           ; $75e6: $00
    ld c, $00                                     ; $75e7: $0e $00
    ld [bc], a                                    ; $75e9: $02
    ld [bc], a                                    ; $75ea: $02
    sub d                                         ; $75eb: $92
    nop                                           ; $75ec: $00
    ld [bc], a                                    ; $75ed: $02
    nop                                           ; $75ee: $00
    ld bc, $0002                                  ; $75ef: $01 $02 $00
    ld [bc], a                                    ; $75f2: $02
    inc b                                         ; $75f3: $04
    nop                                           ; $75f4: $00
    inc b                                         ; $75f5: $04
    ld [bc], a                                    ; $75f6: $02
    ld b, $00                                     ; $75f7: $06 $00
    inc b                                         ; $75f9: $04
    ld [bc], a                                    ; $75fa: $02
    inc b                                         ; $75fb: $04
    ld [bc], a                                    ; $75fc: $02
    nop                                           ; $75fd: $00
    ld [bc], a                                    ; $75fe: $02
    inc b                                         ; $75ff: $04
    add c                                         ; $7600: $81
    ld [bc], a                                    ; $7601: $02
    dec bc                                        ; $7602: $0b
    nop                                           ; $7603: $00
    sub d                                         ; $7604: $92
    jr jr_0e4_7607                                ; $7605: $18 $00

jr_0e4_7607:
    inc d                                         ; $7607: $14
    nop                                           ; $7608: $00
    inc d                                         ; $7609: $14
    nop                                           ; $760a: $00
    inc c                                         ; $760b: $0c
    nop                                           ; $760c: $00
    jr z, jr_0e4_760f                             ; $760d: $28 $00

jr_0e4_760f:
    ld [hl], $00                                  ; $760f: $36 $00
    ld l, d                                       ; $7611: $6a
    nop                                           ; $7612: $00
    ld [hl], e                                    ; $7613: $73
    nop                                           ; $7614: $00
    inc c                                         ; $7615: $0c
    ld [bc], a                                    ; $7616: $02
    dec bc                                        ; $7617: $0b
    nop                                           ; $7618: $00
    rst $38                                       ; $7619: $ff
    dec c                                         ; $761a: $0d
    inc b                                         ; $761b: $04
    ld sp, hl                                     ; $761c: $f9
    ld [$01f2], sp                                ; $761d: $08 $f2 $01
    ld [c], a                                     ; $7620: $e2
    ld a, [$ffe3]                                 ; $7621: $fa $e3 $ff
    ld a, [c]                                     ; $7624: $f2
    ld sp, hl                                     ; $7625: $f9
    ld a, [c]                                     ; $7626: $f2
    nop                                           ; $7627: $00
    ld [bc], a                                    ; $7628: $02
    rlca                                          ; $7629: $07
    add h                                         ; $762a: $84
    inc c                                         ; $762b: $0c
    rrca                                          ; $762c: $0f
    inc c                                         ; $762d: $0c
    rrca                                          ; $762e: $0f
    ld [bc], a                                    ; $762f: $02
    rra                                           ; $7630: $1f
    adc b                                         ; $7631: $88
    ld [hl-], a                                   ; $7632: $32
    jr nc, jr_0e4_7694                            ; $7633: $30 $5f

    ld d, l                                       ; $7635: $55
    ld d, d                                       ; $7636: $52
    ld d, b                                       ; $7637: $50
    sbc a                                         ; $7638: $9f
    sub l                                         ; $7639: $95
    ld [bc], a                                    ; $763a: $02
    ld e, d                                       ; $763b: $5a
    add [hl]                                      ; $763c: $86
    ld d, a                                       ; $763d: $57
    ld d, l                                       ; $763e: $55
    ld h, a                                       ; $763f: $67
    ld h, d                                       ; $7640: $62
    ld b, h                                       ; $7641: $44
    ld b, l                                       ; $7642: $45
    ld [bc], a                                    ; $7643: $02
    add b                                         ; $7644: $80
    ld [bc], a                                    ; $7645: $02
    ld b, b                                       ; $7646: $40
    ld [bc], a                                    ; $7647: $02
    ret nz                                        ; $7648: $c0

    ld [bc], a                                    ; $7649: $02
    add b                                         ; $764a: $80
    inc b                                         ; $764b: $04
    db $10                                        ; $764c: $10
    add d                                         ; $764d: $82
    ld [$0218], sp                                ; $764e: $08 $18 $02
    inc c                                         ; $7651: $0c
    add c                                         ; $7652: $81
    ld a, [de]                                    ; $7653: $1a
    inc bc                                        ; $7654: $03
    ld a, [bc]                                    ; $7655: $0a
    add d                                         ; $7656: $82
    add hl, de                                    ; $7657: $19
    add hl, bc                                    ; $7658: $09
    ld [bc], a                                    ; $7659: $02
    ld a, [de]                                    ; $765a: $1a
    ld [bc], a                                    ; $765b: $02
    ld a, [bc]                                    ; $765c: $0a
    inc b                                         ; $765d: $04
    ld b, $04                                     ; $765e: $06 $04
    ld [bc], a                                    ; $7660: $02
    ld [bc], a                                    ; $7661: $02
    rlca                                          ; $7662: $07
    sbc b                                         ; $7663: $98
    dec b                                         ; $7664: $05
    rlca                                          ; $7665: $07
    dec b                                         ; $7666: $05
    rlca                                          ; $7667: $07
    or b                                          ; $7668: $b0
    ldh a, [$9b]                                  ; $7669: $f0 $9b
    ei                                            ; $766b: $fb
    or a                                          ; $766c: $b7
    rst $38                                       ; $766d: $ff
    call c, $f7fc                                 ; $766e: $dc $fc $f7
    cp a                                          ; $7671: $bf
    ld [hl], h                                    ; $7672: $74
    ld a, h                                       ; $7673: $7c
    ld [hl], h                                    ; $7674: $74
    ld a, h                                       ; $7675: $7c
    add hl, hl                                    ; $7676: $29
    add hl, sp                                    ; $7677: $39
    ld a, [hl+]                                   ; $7678: $2a
    ld a, [hl-]                                   ; $7679: $3a
    jr z, jr_0e4_76b4                             ; $767a: $28 $38

    ld [bc], a                                    ; $767c: $02
    inc sp                                        ; $767d: $33
    ld [bc], a                                    ; $767e: $02
    ld sp, $6c02                                  ; $767f: $31 $02 $6c
    add d                                         ; $7682: $82
    ld d, d                                       ; $7683: $52
    halt                                          ; $7684: $76
    ld [bc], a                                    ; $7685: $02
    ccf                                           ; $7686: $3f
    ld [bc], a                                    ; $7687: $02
    ld c, $02                                     ; $7688: $0e $02
    nop                                           ; $768a: $00
    sbc d                                         ; $768b: $9a
    ld a, [hl-]                                   ; $768c: $3a
    ld a, $6f                                     ; $768d: $3e $6f
    ld a, a                                       ; $768f: $7f
    add hl, sp                                    ; $7690: $39
    ccf                                           ; $7691: $3f
    ld l, a                                       ; $7692: $6f
    ld a, a                                       ; $7693: $7f

jr_0e4_7694:
    ld l, a                                       ; $7694: $6f
    ld [hl], c                                    ; $7695: $71
    ld l, $3a                                     ; $7696: $2e $3a
    inc l                                         ; $7698: $2c
    inc a                                         ; $7699: $3c
    inc l                                         ; $769a: $2c
    inc a                                         ; $769b: $3c
    ld l, h                                       ; $769c: $6c
    ld a, h                                       ; $769d: $7c
    inc l                                         ; $769e: $2c
    inc a                                         ; $769f: $3c
    ld d, [hl]                                    ; $76a0: $56
    ld e, [hl]                                    ; $76a1: $5e
    ld d, [hl]                                    ; $76a2: $56
    ld e, [hl]                                    ; $76a3: $5e
    ld [de], a                                    ; $76a4: $12
    ld e, $02                                     ; $76a5: $1e $02
    ld a, h                                       ; $76a7: $7c
    ld [bc], a                                    ; $76a8: $02
    nop                                           ; $76a9: $00
    rst $38                                       ; $76aa: $ff
    dec bc                                        ; $76ab: $0b
    inc bc                                        ; $76ac: $03
    ld sp, hl                                     ; $76ad: $f9
    ld [$01f2], sp                                ; $76ae: $08 $f2 $01
    and $fb                                       ; $76b1: $e6 $fb
    rst $20                                       ; $76b3: $e7

jr_0e4_76b4:
    cp $f6                                        ; $76b4: $fe $f6
    ei                                            ; $76b6: $fb
    sbc h                                         ; $76b7: $9c
    dec de                                        ; $76b8: $1b
    nop                                           ; $76b9: $00
    ld b, b                                       ; $76ba: $40
    nop                                           ; $76bb: $00
    ld b, b                                       ; $76bc: $40
    dec de                                        ; $76bd: $1b
    add b                                         ; $76be: $80
    ld b, b                                       ; $76bf: $40
    ld c, d                                       ; $76c0: $4a
    nop                                           ; $76c1: $00
    ld de, $2040                                  ; $76c2: $11 $40 $20
    ld de, $5520                                  ; $76c5: $11 $20 $55
    ld [hl], l                                    ; $76c8: $75
    adc d                                         ; $76c9: $8a
    ccf                                           ; $76ca: $3f
    ld b, b                                       ; $76cb: $40
    ccf                                           ; $76cc: $3f
    ld b, b                                       ; $76cd: $40
    ld e, a                                       ; $76ce: $5f
    and b                                         ; $76cf: $a0
    dec d                                         ; $76d0: $15
    ld a, [hl+]                                   ; $76d1: $2a
    nop                                           ; $76d2: $00
    ld [de], a                                    ; $76d3: $12
    inc bc                                        ; $76d4: $03
    nop                                           ; $76d5: $00
    add [hl]                                      ; $76d6: $86
    ld c, $02                                     ; $76d7: $0e $02
    nop                                           ; $76d9: $00
    ld [bc], a                                    ; $76da: $02
    nop                                           ; $76db: $00
    ld bc, $0202                                  ; $76dc: $01 $02 $02
    ld [bc], a                                    ; $76df: $02
    nop                                           ; $76e0: $00
    adc d                                         ; $76e1: $8a
    ld [bc], a                                    ; $76e2: $02
    inc b                                         ; $76e3: $04
    nop                                           ; $76e4: $00
    inc b                                         ; $76e5: $04
    nop                                           ; $76e6: $00
    ld b, $00                                     ; $76e7: $06 $00
    inc b                                         ; $76e9: $04
    ld [bc], a                                    ; $76ea: $02
    nop                                           ; $76eb: $00
    ld [bc], a                                    ; $76ec: $02
    inc b                                         ; $76ed: $04
    ld [bc], a                                    ; $76ee: $02
    nop                                           ; $76ef: $00
    add c                                         ; $76f0: $81
    inc b                                         ; $76f1: $04
    dec bc                                        ; $76f2: $0b
    nop                                           ; $76f3: $00
    sub c                                         ; $76f4: $91
    inc c                                         ; $76f5: $0c
    nop                                           ; $76f6: $00
    ld c, $00                                     ; $76f7: $0e $00
    ld a, [de]                                    ; $76f9: $1a
    nop                                           ; $76fa: $00
    ld d, $00                                     ; $76fb: $16 $00
    inc e                                         ; $76fd: $1c
    nop                                           ; $76fe: $00
    ld [hl-], a                                   ; $76ff: $32
    nop                                           ; $7700: $00
    add hl, sp                                    ; $7701: $39
    nop                                           ; $7702: $00
    ld c, l                                       ; $7703: $4d
    jr nz, @+$09                                  ; $7704: $20 $07

    inc c                                         ; $7706: $0c
    nop                                           ; $7707: $00
    rst $38                                       ; $7708: $ff
    dec c                                         ; $7709: $0d
    inc b                                         ; $770a: $04
    ld sp, hl                                     ; $770b: $f9
    ld [$01f2], sp                                ; $770c: $08 $f2 $01
    db $e3                                        ; $770f: $e3
    ld a, [$ffe4]                                 ; $7710: $fa $e4 $ff
    di                                            ; $7713: $f3
    ld sp, hl                                     ; $7714: $f9
    di                                            ; $7715: $f3
    nop                                           ; $7716: $00
    ld [bc], a                                    ; $7717: $02
    rlca                                          ; $7718: $07
    add h                                         ; $7719: $84
    inc c                                         ; $771a: $0c
    rrca                                          ; $771b: $0f
    inc c                                         ; $771c: $0c
    rrca                                          ; $771d: $0f
    ld [bc], a                                    ; $771e: $02
    rra                                           ; $771f: $1f
    adc b                                         ; $7720: $88
    ld [hl-], a                                   ; $7721: $32
    jr nc, @+$61                                  ; $7722: $30 $5f

    ld d, l                                       ; $7724: $55
    sub d                                         ; $7725: $92
    sub b                                         ; $7726: $90
    sbc a                                         ; $7727: $9f
    sub l                                         ; $7728: $95
    ld [bc], a                                    ; $7729: $02
    ld e, d                                       ; $772a: $5a
    add h                                         ; $772b: $84
    ld d, a                                       ; $772c: $57
    ld d, l                                       ; $772d: $55
    ld h, a                                       ; $772e: $67
    ld h, d                                       ; $772f: $62
    ld [bc], a                                    ; $7730: $02
    add h                                         ; $7731: $84
    inc b                                         ; $7732: $04
    ld b, b                                       ; $7733: $40
    ld [bc], a                                    ; $7734: $02
    add b                                         ; $7735: $80
    ld [bc], a                                    ; $7736: $02
    ldh [rDIV], a                                 ; $7737: $e0 $04
    db $10                                        ; $7739: $10
    add d                                         ; $773a: $82
    ld [$0218], sp                                ; $773b: $08 $18 $02
    inc c                                         ; $773e: $0c
    add d                                         ; $773f: $82
    ld a, [de]                                    ; $7740: $1a
    ld a, [bc]                                    ; $7741: $0a
    ld [bc], a                                    ; $7742: $02
    add hl, bc                                    ; $7743: $09
    add d                                         ; $7744: $82
    add hl, de                                    ; $7745: $19
    add hl, bc                                    ; $7746: $09
    ld [bc], a                                    ; $7747: $02
    ld a, [de]                                    ; $7748: $1a
    ld [bc], a                                    ; $7749: $02
    ld a, [bc]                                    ; $774a: $0a
    ld [bc], a                                    ; $774b: $02
    ld b, $06                                     ; $774c: $06 $06
    ld [bc], a                                    ; $774e: $02
    ld [bc], a                                    ; $774f: $02
    rlca                                          ; $7750: $07
    sbc b                                         ; $7751: $98
    dec b                                         ; $7752: $05
    rlca                                          ; $7753: $07
    sbc l                                         ; $7754: $9d
    sbc a                                         ; $7755: $9f
    or b                                          ; $7756: $b0
    ldh a, [$9f]                                  ; $7757: $f0 $9f
    rst $38                                       ; $7759: $ff
    or h                                          ; $775a: $b4
    db $fc                                        ; $775b: $fc
    call c, $f7fc                                 ; $775c: $dc $fc $f7
    cp a                                          ; $775f: $bf
    or $be                                        ; $7760: $f6 $be
    ld [hl], l                                    ; $7762: $75
    ld a, l                                       ; $7763: $7d
    jr z, @+$3a                                   ; $7764: $28 $38

    ld a, [hl+]                                   ; $7766: $2a
    ld a, [hl-]                                   ; $7767: $3a
    add hl, hl                                    ; $7768: $29
    add hl, sp                                    ; $7769: $39
    ld [bc], a                                    ; $776a: $02
    ld [hl-], a                                   ; $776b: $32
    ld [bc], a                                    ; $776c: $02
    ld sp, $5c82                                  ; $776d: $31 $82 $5c
    ld a, h                                       ; $7770: $7c
    ld [bc], a                                    ; $7771: $02
    inc sp                                        ; $7772: $33
    ld [bc], a                                    ; $7773: $02
    ld c, $04                                     ; $7774: $0e $04
    nop                                           ; $7776: $00
    sbc b                                         ; $7777: $98
    ld l, d                                       ; $7778: $6a
    ld a, [hl]                                    ; $7779: $7e
    ld l, a                                       ; $777a: $6f
    ld a, a                                       ; $777b: $7f
    add hl, sp                                    ; $777c: $39
    ccf                                           ; $777d: $3f
    ld l, a                                       ; $777e: $6f
    ld a, a                                       ; $777f: $7f
    ld l, a                                       ; $7780: $6f
    ld a, c                                       ; $7781: $79
    ld l, $3a                                     ; $7782: $2e $3a
    inc l                                         ; $7784: $2c
    inc a                                         ; $7785: $3c
    ld l, h                                       ; $7786: $6c
    ld a, h                                       ; $7787: $7c
    ld d, $1e                                     ; $7788: $16 $1e
    ld d, [hl]                                    ; $778a: $56
    ld e, [hl]                                    ; $778b: $5e
    ld a, [bc]                                    ; $778c: $0a
    ld c, $3a                                     ; $778d: $0e $3a
    ld a, $02                                     ; $778f: $3e $02
    ld a, h                                       ; $7791: $7c
    inc b                                         ; $7792: $04
    nop                                           ; $7793: $00
    rst $38                                       ; $7794: $ff
    dec bc                                        ; $7795: $0b
    inc bc                                        ; $7796: $03
    ld sp, hl                                     ; $7797: $f9
    ld [$01f2], sp                                ; $7798: $08 $f2 $01
    rst $20                                       ; $779b: $e7
    ei                                            ; $779c: $fb
    add sp, -$02                                  ; $779d: $e8 $fe
    rst $30                                       ; $779f: $f7
    db $fc                                        ; $77a0: $fc
    sbc d                                         ; $77a1: $9a
    dec de                                        ; $77a2: $1b
    nop                                           ; $77a3: $00
    ld b, b                                       ; $77a4: $40
    nop                                           ; $77a5: $00
    ret nz                                        ; $77a6: $c0

    dec de                                        ; $77a7: $1b
    nop                                           ; $77a8: $00
    ret nz                                        ; $77a9: $c0

    ld c, d                                       ; $77aa: $4a
    nop                                           ; $77ab: $00
    ld de, $2040                                  ; $77ac: $11 $40 $20
    ld de, $9661                                  ; $77af: $11 $61 $96
    ld [hl], l                                    ; $77b2: $75
    ld a, [bc]                                    ; $77b3: $0a
    ccf                                           ; $77b4: $3f
    ld b, b                                       ; $77b5: $40
    ld a, a                                       ; $77b6: $7f
    add b                                         ; $77b7: $80
    rla                                           ; $77b8: $17
    jr z, jr_0e4_77bb                             ; $77b9: $28 $00

jr_0e4_77bb:
    ld [hl], $03                                  ; $77bb: $36 $03
    nop                                           ; $77bd: $00
    add [hl]                                      ; $77be: $86
    inc c                                         ; $77bf: $0c
    nop                                           ; $77c0: $00
    ld c, $02                                     ; $77c1: $0e $02
    nop                                           ; $77c3: $00
    inc bc                                        ; $77c4: $03
    ld [bc], a                                    ; $77c5: $02
    nop                                           ; $77c6: $00
    add d                                         ; $77c7: $82
    inc bc                                        ; $77c8: $03
    ld [bc], a                                    ; $77c9: $02
    ld [bc], a                                    ; $77ca: $02
    nop                                           ; $77cb: $00
    adc d                                         ; $77cc: $8a
    ld [bc], a                                    ; $77cd: $02
    inc b                                         ; $77ce: $04
    nop                                           ; $77cf: $00
    inc b                                         ; $77d0: $04
    ld [bc], a                                    ; $77d1: $02
    ld b, $00                                     ; $77d2: $06 $00
    ld b, $00                                     ; $77d4: $06 $00
    inc b                                         ; $77d6: $04
    ld [bc], a                                    ; $77d7: $02
    nop                                           ; $77d8: $00
    add c                                         ; $77d9: $81
    inc b                                         ; $77da: $04
    dec c                                         ; $77db: $0d
    nop                                           ; $77dc: $00
    sub b                                         ; $77dd: $90
    ld [$1400], sp                                ; $77de: $08 $00 $14
    nop                                           ; $77e1: $00
    inc a                                         ; $77e2: $3c
    nop                                           ; $77e3: $00
    jr z, jr_0e4_77e6                             ; $77e4: $28 $00

jr_0e4_77e6:
    ld [hl], $00                                  ; $77e6: $36 $00
    ld l, d                                       ; $77e8: $6a
    nop                                           ; $77e9: $00
    ld [hl], a                                    ; $77ea: $77
    nop                                           ; $77eb: $00
    inc e                                         ; $77ec: $1c
    ld h, b                                       ; $77ed: $60
    dec c                                         ; $77ee: $0d
    nop                                           ; $77ef: $00
    rst $38                                       ; $77f0: $ff
    dec c                                         ; $77f1: $0d
    inc b                                         ; $77f2: $04
    ld sp, hl                                     ; $77f3: $f9
    ld [$01f2], sp                                ; $77f4: $08 $f2 $01
    ld [c], a                                     ; $77f7: $e2
    ld a, [$ffe3]                                 ; $77f8: $fa $e3 $ff
    ld a, [c]                                     ; $77fb: $f2
    ld sp, hl                                     ; $77fc: $f9
    ld a, [c]                                     ; $77fd: $f2
    nop                                           ; $77fe: $00
    ld [bc], a                                    ; $77ff: $02
    rlca                                          ; $7800: $07
    add h                                         ; $7801: $84
    inc c                                         ; $7802: $0c
    rrca                                          ; $7803: $0f
    inc c                                         ; $7804: $0c
    rrca                                          ; $7805: $0f
    ld [bc], a                                    ; $7806: $02
    rra                                           ; $7807: $1f
    adc b                                         ; $7808: $88
    ld [hl-], a                                   ; $7809: $32
    jr nc, @+$61                                  ; $780a: $30 $5f

    ld d, l                                       ; $780c: $55
    ld d, d                                       ; $780d: $52
    ld d, b                                       ; $780e: $50
    ld e, a                                       ; $780f: $5f
    ld d, l                                       ; $7810: $55
    ld [bc], a                                    ; $7811: $02
    sbc d                                         ; $7812: $9a
    add h                                         ; $7813: $84
    ld d, a                                       ; $7814: $57
    ld d, l                                       ; $7815: $55
    ld h, a                                       ; $7816: $67
    ld h, d                                       ; $7817: $62
    ld [bc], a                                    ; $7818: $02
    ld b, l                                       ; $7819: $45
    inc b                                         ; $781a: $04
    ld b, b                                       ; $781b: $40
    add d                                         ; $781c: $82
    and b                                         ; $781d: $a0
    ldh [rSC], a                                  ; $781e: $e0 $02
    ret nz                                        ; $7820: $c0

    inc b                                         ; $7821: $04
    db $10                                        ; $7822: $10
    add d                                         ; $7823: $82
    ld [$0218], sp                                ; $7824: $08 $18 $02
    inc c                                         ; $7827: $0c
    add c                                         ; $7828: $81
    ld a, [de]                                    ; $7829: $1a
    inc bc                                        ; $782a: $03
    ld a, [bc]                                    ; $782b: $0a
    add d                                         ; $782c: $82
    ld a, [de]                                    ; $782d: $1a
    ld a, [bc]                                    ; $782e: $0a
    ld [bc], a                                    ; $782f: $02
    add hl, de                                    ; $7830: $19
    ld [bc], a                                    ; $7831: $02
    ld a, [bc]                                    ; $7832: $0a
    ld [bc], a                                    ; $7833: $02
    ld b, $06                                     ; $7834: $06 $06
    ld [bc], a                                    ; $7836: $02
    ld [bc], a                                    ; $7837: $02
    inc bc                                        ; $7838: $03
    add d                                         ; $7839: $82
    dec b                                         ; $783a: $05
    rlca                                          ; $783b: $07
    ld [bc], a                                    ; $783c: $02
    inc bc                                        ; $783d: $03
    sbc [hl]                                      ; $783e: $9e
    ld e, b                                       ; $783f: $58
    ld a, b                                       ; $7840: $78
    sbc e                                         ; $7841: $9b
    ei                                            ; $7842: $fb
    sub $fe                                       ; $7843: $d6 $fe
    cp h                                          ; $7845: $bc
    db $fc                                        ; $7846: $fc
    rst $30                                       ; $7847: $f7
    sbc a                                         ; $7848: $9f
    halt                                          ; $7849: $76
    ld e, [hl]                                    ; $784a: $5e
    ld [hl], l                                    ; $784b: $75
    ld a, l                                       ; $784c: $7d
    dec [hl]                                      ; $784d: $35
    dec a                                         ; $784e: $3d
    inc [hl]                                      ; $784f: $34
    inc a                                         ; $7850: $3c
    ld [hl], $3e                                  ; $7851: $36 $3e
    add hl, hl                                    ; $7853: $29
    add hl, sp                                    ; $7854: $39
    ld a, [hl+]                                   ; $7855: $2a
    ld a, [hl-]                                   ; $7856: $3a
    ld d, e                                       ; $7857: $53
    ld [hl], e                                    ; $7858: $73
    ld e, h                                       ; $7859: $5c
    ld a, h                                       ; $785a: $7c
    inc sp                                        ; $785b: $33
    dec sp                                        ; $785c: $3b
    ld [bc], a                                    ; $785d: $02
    inc c                                         ; $785e: $0c
    ld [bc], a                                    ; $785f: $02
    nop                                           ; $7860: $00
    sbc d                                         ; $7861: $9a
    add hl, de                                    ; $7862: $19
    rra                                           ; $7863: $1f
    ld l, e                                       ; $7864: $6b
    ld a, a                                       ; $7865: $7f
    dec a                                         ; $7866: $3d
    ccf                                           ; $7867: $3f
    ld l, a                                       ; $7868: $6f
    ld a, c                                       ; $7869: $79
    ld l, $3a                                     ; $786a: $2e $3a
    ld l, $3e                                     ; $786c: $2e $3e
    inc l                                         ; $786e: $2c
    inc a                                         ; $786f: $3c
    ld l, h                                       ; $7870: $6c
    ld a, h                                       ; $7871: $7c
    ld d, h                                       ; $7872: $54
    ld e, h                                       ; $7873: $5c
    inc d                                         ; $7874: $14
    inc e                                         ; $7875: $1c
    ld c, d                                       ; $7876: $4a
    ld c, [hl]                                    ; $7877: $4e
    ld a, [bc]                                    ; $7878: $0a
    ld c, $7a                                     ; $7879: $0e $7a
    ld a, [hl]                                    ; $787b: $7e
    ld [bc], a                                    ; $787c: $02
    ld a, h                                       ; $787d: $7c
    ld [bc], a                                    ; $787e: $02
    nop                                           ; $787f: $00
    rst $38                                       ; $7880: $ff
    dec bc                                        ; $7881: $0b
    inc bc                                        ; $7882: $03
    ld sp, hl                                     ; $7883: $f9
    ld [$01f2], sp                                ; $7884: $08 $f2 $01
    and $fb                                       ; $7887: $e6 $fb
    rst $20                                       ; $7889: $e7
    cp $f6                                        ; $788a: $fe $f6
    db $fc                                        ; $788c: $fc
    add c                                         ; $788d: $81
    dec de                                        ; $788e: $1b
    ld [bc], a                                    ; $788f: $02
    nop                                           ; $7890: $00
    ld [bc], a                                    ; $7891: $02
    ld b, b                                       ; $7892: $40
    sbc h                                         ; $7893: $9c
    dec de                                        ; $7894: $1b
    ld b, b                                       ; $7895: $40
    nop                                           ; $7896: $00
    adc d                                         ; $7897: $8a
    ld b, b                                       ; $7898: $40
    ld de, $2040                                  ; $7899: $11 $40 $20
    ld de, $5520                                  ; $789c: $11 $20 $55
    dec [hl]                                      ; $789f: $35
    ld c, d                                       ; $78a0: $4a
    ccf                                           ; $78a1: $3f
    ld b, b                                       ; $78a2: $40
    rra                                           ; $78a3: $1f
    jr nz, jr_0e4_78d5                            ; $78a4: $20 $2f

    ld d, b                                       ; $78a6: $50
    ld a, [bc]                                    ; $78a7: $0a
    dec d                                         ; $78a8: $15
    nop                                           ; $78a9: $00
    inc de                                        ; $78aa: $13
    nop                                           ; $78ab: $00
    inc b                                         ; $78ac: $04
    nop                                           ; $78ad: $00
    ld c, $00                                     ; $78ae: $0e $00
    ld [bc], a                                    ; $78b0: $02
    ld [bc], a                                    ; $78b1: $02
    sub d                                         ; $78b2: $92
    nop                                           ; $78b3: $00
    ld [bc], a                                    ; $78b4: $02
    nop                                           ; $78b5: $00
    ld bc, $0002                                  ; $78b6: $01 $02 $00
    ld [bc], a                                    ; $78b9: $02
    inc b                                         ; $78ba: $04
    nop                                           ; $78bb: $00
    inc b                                         ; $78bc: $04
    ld [bc], a                                    ; $78bd: $02
    ld b, $00                                     ; $78be: $06 $00
    inc b                                         ; $78c0: $04
    ld [bc], a                                    ; $78c1: $02
    inc b                                         ; $78c2: $04
    ld [bc], a                                    ; $78c3: $02
    nop                                           ; $78c4: $00
    ld [bc], a                                    ; $78c5: $02
    inc b                                         ; $78c6: $04
    add c                                         ; $78c7: $81
    ld [bc], a                                    ; $78c8: $02
    dec bc                                        ; $78c9: $0b
    nop                                           ; $78ca: $00
    sub d                                         ; $78cb: $92
    inc c                                         ; $78cc: $0c
    nop                                           ; $78cd: $00
    inc d                                         ; $78ce: $14
    nop                                           ; $78cf: $00
    inc d                                         ; $78d0: $14
    nop                                           ; $78d1: $00
    jr jr_0e4_78d4                                ; $78d2: $18 $00

jr_0e4_78d4:
    ld a, [bc]                                    ; $78d4: $0a

jr_0e4_78d5:
    nop                                           ; $78d5: $00
    ld [hl], $00                                  ; $78d6: $36 $00
    dec hl                                        ; $78d8: $2b
    nop                                           ; $78d9: $00
    ld h, a                                       ; $78da: $67
    nop                                           ; $78db: $00
    jr jr_0e4_78fe                                ; $78dc: $18 $20

    dec bc                                        ; $78de: $0b
    nop                                           ; $78df: $00
    rst $38                                       ; $78e0: $ff
    dec c                                         ; $78e1: $0d
    inc b                                         ; $78e2: $04
    ld sp, hl                                     ; $78e3: $f9
    ld [$01f2], sp                                ; $78e4: $08 $f2 $01
    ld [c], a                                     ; $78e7: $e2
    ld a, [$fee5]                                 ; $78e8: $fa $e5 $fe
    ld a, [c]                                     ; $78eb: $f2
    ld sp, hl                                     ; $78ec: $f9
    ld a, [c]                                     ; $78ed: $f2
    cp $02                                        ; $78ee: $fe $02
    inc e                                         ; $78f0: $1c
    sub b                                         ; $78f1: $90
    ld [hl+], a                                   ; $78f2: $22
    ld a, $59                                     ; $78f3: $3e $59
    ld a, a                                       ; $78f5: $7f
    ei                                            ; $78f6: $fb
    rst $38                                       ; $78f7: $ff
    ld d, [hl]                                    ; $78f8: $56
    ld e, h                                       ; $78f9: $5c
    rra                                           ; $78fa: $1f
    add hl, de                                    ; $78fb: $19
    ld l, $2a                                     ; $78fc: $2e $2a

jr_0e4_78fe:
    daa                                           ; $78fe: $27
    inc h                                         ; $78ff: $24
    ld c, e                                       ; $7900: $4b
    ld c, d                                       ; $7901: $4a
    ld [bc], a                                    ; $7902: $02
    ld c, c                                       ; $7903: $49
    ld [bc], a                                    ; $7904: $02
    ld e, b                                       ; $7905: $58
    ld [bc], a                                    ; $7906: $02
    ld h, b                                       ; $7907: $60
    ld [bc], a                                    ; $7908: $02
    cp b                                          ; $7909: $b8
    add [hl]                                      ; $790a: $86
    ld l, b                                       ; $790b: $68
    ld a, b                                       ; $790c: $78
    db $ec                                        ; $790d: $ec
    db $fc                                        ; $790e: $fc
    ld e, [hl]                                    ; $790f: $5e
    ld a, [hl]                                    ; $7910: $7e
    ld [bc], a                                    ; $7911: $02
    ld [$0402], sp                                ; $7912: $08 $02 $04
    add [hl]                                      ; $7915: $86
    inc c                                         ; $7916: $0c
    inc b                                         ; $7917: $04
    ld b, $02                                     ; $7918: $06 $02
    rrca                                          ; $791a: $0f
    dec b                                         ; $791b: $05
    ld [bc], a                                    ; $791c: $02
    ld a, [bc]                                    ; $791d: $0a
    ld [bc], a                                    ; $791e: $02
    ld b, $82                                     ; $791f: $06 $82
    dec c                                         ; $7921: $0d
    add hl, bc                                    ; $7922: $09
    ld [bc], a                                    ; $7923: $02
    ld [bc], a                                    ; $7924: $02
    ld b, $01                                     ; $7925: $06 $01
    ld [bc], a                                    ; $7927: $02
    ld [bc], a                                    ; $7928: $02
    and h                                         ; $7929: $a4
    push de                                       ; $792a: $d5
    push af                                       ; $792b: $f5
    sbc $fe                                       ; $792c: $de $fe
    ld d, d                                       ; $792e: $52
    ld a, [c]                                     ; $792f: $f2
    ld l, b                                       ; $7930: $68
    ld a, b                                       ; $7931: $78
    jr nz, jr_0e4_796c                            ; $7932: $20 $38

    jr z, @+$3a                                   ; $7934: $28 $38

    rla                                           ; $7936: $17
    rra                                           ; $7937: $1f
    ld l, $3b                                     ; $7938: $2e $3b
    ld e, $17                                     ; $793a: $1e $17
    ld e, $1f                                     ; $793c: $1e $1f
    ld e, $1f                                     ; $793e: $1e $1f
    ld a, $3f                                     ; $7940: $3e $3f
    ld a, $3f                                     ; $7942: $3e $3f
    ld a, $3f                                     ; $7944: $3e $3f
    ld a, l                                       ; $7946: $7d
    ld a, a                                       ; $7947: $7f
    ld a, l                                       ; $7948: $7d
    ld a, a                                       ; $7949: $7f
    cp l                                          ; $794a: $bd
    rst $38                                       ; $794b: $ff
    ld l, d                                       ; $794c: $6a
    ld a, [hl]                                    ; $794d: $7e
    ld [bc], a                                    ; $794e: $02
    ccf                                           ; $794f: $3f
    ld b, $00                                     ; $7950: $06 $00
    inc b                                         ; $7952: $04
    inc e                                         ; $7953: $1c
    inc b                                         ; $7954: $04
    inc d                                         ; $7955: $14
    ld [bc], a                                    ; $7956: $02
    inc e                                         ; $7957: $1c
    ld [bc], a                                    ; $7958: $02
    inc d                                         ; $7959: $14
    ld [bc], a                                    ; $795a: $02
    ld d, $02                                     ; $795b: $16 $02
    ld a, [de]                                    ; $795d: $1a
    ld [bc], a                                    ; $795e: $02
    ld b, $02                                     ; $795f: $06 $02
    ld [bc], a                                    ; $7961: $02
    ld [bc], a                                    ; $7962: $02
    rrca                                          ; $7963: $0f
    add d                                         ; $7964: $82
    inc de                                        ; $7965: $13
    dec de                                        ; $7966: $1b
    ld [bc], a                                    ; $7967: $02
    ld e, $ff                                     ; $7968: $1e $ff
    dec bc                                        ; $796a: $0b
    inc bc                                        ; $796b: $03

jr_0e4_796c:
    ld sp, hl                                     ; $796c: $f9
    ld [$01f2], sp                                ; $796d: $08 $f2 $01
    and $fb                                       ; $7970: $e6 $fb
    ld [$f6fd], a                                 ; $7972: $ea $fd $f6
    db $fc                                        ; $7975: $fc
    add c                                         ; $7976: $81
    inc bc                                        ; $7977: $03
    inc b                                         ; $7978: $04
    nop                                           ; $7979: $00
    sub l                                         ; $797a: $95
    inc hl                                        ; $797b: $23
    jr nz, @+$12                                  ; $797c: $20 $10

    ld l, b                                       ; $797e: $68
    nop                                           ; $797f: $00
    dec h                                         ; $7980: $25
    ld c, b                                       ; $7981: $48
    ld a, [bc]                                    ; $7982: $0a
    ld b, h                                       ; $7983: $44
    ld d, $29                                     ; $7984: $16 $29
    rlca                                          ; $7986: $07
    adc b                                         ; $7987: $88
    dec bc                                        ; $7988: $0b
    inc b                                         ; $7989: $04
    rlca                                          ; $798a: $07
    nop                                           ; $798b: $00
    ld bc, $0002                                  ; $798c: $01 $02 $00
    ld bc, $0003                                  ; $798f: $01 $03 $00
    add c                                         ; $7992: $81
    ld bc, $0002                                  ; $7993: $01 $02 $00
    add c                                         ; $7996: $81
    ld [bc], a                                    ; $7997: $02
    inc b                                         ; $7998: $04
    nop                                           ; $7999: $00
    adc l                                         ; $799a: $8d
    ld bc, $0002                                  ; $799b: $01 $02 $00
    ld [bc], a                                    ; $799e: $02
    ld bc, $0003                                  ; $799f: $01 $03 $00
    ld [bc], a                                    ; $79a2: $02
    ld bc, $0200                                  ; $79a3: $01 $00 $02
    nop                                           ; $79a6: $00
    ld bc, $0003                                  ; $79a7: $01 $03 $00
    add c                                         ; $79aa: $81
    ld [bc], a                                    ; $79ab: $02
    dec b                                         ; $79ac: $05
    nop                                           ; $79ad: $00
    add e                                         ; $79ae: $83
    inc b                                         ; $79af: $04
    nop                                           ; $79b0: $00
    inc b                                         ; $79b1: $04
    dec bc                                        ; $79b2: $0b
    nop                                           ; $79b3: $00
    adc l                                         ; $79b4: $8d
    ld [bc], a                                    ; $79b5: $02
    nop                                           ; $79b6: $00
    ld [bc], a                                    ; $79b7: $02
    nop                                           ; $79b8: $00
    ld bc, $0600                                  ; $79b9: $01 $00 $06
    nop                                           ; $79bc: $00
    rlca                                          ; $79bd: $07
    nop                                           ; $79be: $00
    inc b                                         ; $79bf: $04
    ld bc, $0a08                                  ; $79c0: $01 $08 $0a
    nop                                           ; $79c3: $00
    rst $38                                       ; $79c4: $ff
    dec c                                         ; $79c5: $0d
    inc b                                         ; $79c6: $04
    ld sp, hl                                     ; $79c7: $f9
    ld [$01f2], sp                                ; $79c8: $08 $f2 $01
    ld [c], a                                     ; $79cb: $e2
    ld a, [$ffe5]                                 ; $79cc: $fa $e5 $ff
    ld a, [c]                                     ; $79cf: $f2
    ld a, [$fff2]                                 ; $79d0: $fa $f2 $ff
    ld [bc], a                                    ; $79d3: $02
    inc e                                         ; $79d4: $1c
    sub b                                         ; $79d5: $90
    ld [hl+], a                                   ; $79d6: $22
    ld a, $59                                     ; $79d7: $3e $59
    ld a, a                                       ; $79d9: $7f
    ei                                            ; $79da: $fb
    rst $38                                       ; $79db: $ff
    ld d, [hl]                                    ; $79dc: $56
    ld e, h                                       ; $79dd: $5c
    rra                                           ; $79de: $1f
    add hl, de                                    ; $79df: $19
    ld l, $2a                                     ; $79e0: $2e $2a
    daa                                           ; $79e2: $27
    inc h                                         ; $79e3: $24
    ld c, e                                       ; $79e4: $4b
    ld c, d                                       ; $79e5: $4a
    ld [bc], a                                    ; $79e6: $02
    ld c, c                                       ; $79e7: $49
    ld [bc], a                                    ; $79e8: $02
    ld e, b                                       ; $79e9: $58
    ld [bc], a                                    ; $79ea: $02
    ld [hl], b                                    ; $79eb: $70
    ld [bc], a                                    ; $79ec: $02
    cp b                                          ; $79ed: $b8
    add [hl]                                      ; $79ee: $86
    ld l, h                                       ; $79ef: $6c
    ld a, h                                       ; $79f0: $7c
    db $ec                                        ; $79f1: $ec
    db $fc                                        ; $79f2: $fc
    ld c, a                                       ; $79f3: $4f
    ld a, a                                       ; $79f4: $7f
    ld [bc], a                                    ; $79f5: $02
    db $10                                        ; $79f6: $10
    ld [bc], a                                    ; $79f7: $02
    ld [$1886], sp                                ; $79f8: $08 $86 $18
    ld [$040c], sp                                ; $79fb: $08 $0c $04
    ld e, $0a                                     ; $79fe: $1e $0a
    ld [bc], a                                    ; $7a00: $02
    inc d                                         ; $7a01: $14
    ld [bc], a                                    ; $7a02: $02
    inc c                                         ; $7a03: $0c
    add d                                         ; $7a04: $82
    ld a, [de]                                    ; $7a05: $1a
    ld [de], a                                    ; $7a06: $12
    ld [bc], a                                    ; $7a07: $02
    inc b                                         ; $7a08: $04
    ld b, $02                                     ; $7a09: $06 $02
    ld [bc], a                                    ; $7a0b: $02
    ld bc, $b6a4                                  ; $7a0c: $01 $a4 $b6
    or $bc                                        ; $7a0f: $f6 $bc
    db $fc                                        ; $7a11: $fc
    and h                                         ; $7a12: $a4
    db $e4                                        ; $7a13: $e4
    ret z                                         ; $7a14: $c8

    ld hl, sp+$20                                 ; $7a15: $f8 $20
    jr c, jr_0e4_7a41                             ; $7a17: $38 $28

    jr c, jr_0e4_7a4e                             ; $7a19: $38 $33

    ccf                                           ; $7a1b: $3f
    cpl                                           ; $7a1c: $2f
    add hl, sp                                    ; $7a1d: $39
    ccf                                           ; $7a1e: $3f
    dec sp                                        ; $7a1f: $3b
    dec a                                         ; $7a20: $3d
    ccf                                           ; $7a21: $3f
    dec a                                         ; $7a22: $3d
    ccf                                           ; $7a23: $3f
    dec a                                         ; $7a24: $3d
    ccf                                           ; $7a25: $3f
    ld a, l                                       ; $7a26: $7d
    ld a, a                                       ; $7a27: $7f
    ld a, l                                       ; $7a28: $7d
    ld a, a                                       ; $7a29: $7f
    ld a, l                                       ; $7a2a: $7d
    ld a, a                                       ; $7a2b: $7f
    ld a, [$fafe]                                 ; $7a2c: $fa $fe $fa
    cp $97                                        ; $7a2f: $fe $97
    rst $38                                       ; $7a31: $ff
    ld [bc], a                                    ; $7a32: $02
    ld a, a                                       ; $7a33: $7f
    ld b, $00                                     ; $7a34: $06 $00
    inc b                                         ; $7a36: $04
    jr @+$04                                      ; $7a37: $18 $02

    ld [$1402], sp                                ; $7a39: $08 $02 $14
    inc b                                         ; $7a3c: $04
    inc b                                         ; $7a3d: $04
    ld [bc], a                                    ; $7a3e: $02
    ld c, $02                                     ; $7a3f: $0e $02

jr_0e4_7a41:
    ld a, [de]                                    ; $7a41: $1a
    ld [bc], a                                    ; $7a42: $02
    ld a, [bc]                                    ; $7a43: $0a
    ld [bc], a                                    ; $7a44: $02
    dec c                                         ; $7a45: $0d
    add d                                         ; $7a46: $82
    dec bc                                        ; $7a47: $0b
    rrca                                          ; $7a48: $0f
    ld [bc], a                                    ; $7a49: $02
    inc e                                         ; $7a4a: $1c
    ld [bc], a                                    ; $7a4b: $02
    nop                                           ; $7a4c: $00
    rst $38                                       ; $7a4d: $ff

jr_0e4_7a4e:
    dec bc                                        ; $7a4e: $0b
    inc bc                                        ; $7a4f: $03
    ld sp, hl                                     ; $7a50: $f9
    ld [$01f2], sp                                ; $7a51: $08 $f2 $01
    and $fb                                       ; $7a54: $e6 $fb
    ld [$f6fe], a                                 ; $7a56: $ea $fe $f6
    cp $81                                        ; $7a59: $fe $81
    inc bc                                        ; $7a5b: $03
    inc b                                         ; $7a5c: $04
    nop                                           ; $7a5d: $00
    sub e                                         ; $7a5e: $93
    inc hl                                        ; $7a5f: $23
    jr nz, @+$12                                  ; $7a60: $20 $10

    ld l, b                                       ; $7a62: $68
    nop                                           ; $7a63: $00
    dec h                                         ; $7a64: $25
    ld c, b                                       ; $7a65: $48
    ld a, [bc]                                    ; $7a66: $0a
    ld b, h                                       ; $7a67: $44
    ld c, $11                                     ; $7a68: $0e $11
    rlca                                          ; $7a6a: $07
    adc b                                         ; $7a6b: $88
    dec b                                         ; $7a6c: $05
    ld [bc], a                                    ; $7a6d: $02
    inc bc                                        ; $7a6e: $03
    inc b                                         ; $7a6f: $04
    nop                                           ; $7a70: $00
    ld bc, $0005                                  ; $7a71: $01 $05 $00
    add c                                         ; $7a74: $81
    ld bc, $0002                                  ; $7a75: $01 $02 $00
    add c                                         ; $7a78: $81
    inc b                                         ; $7a79: $04
    inc b                                         ; $7a7a: $04
    nop                                           ; $7a7b: $00
    adc l                                         ; $7a7c: $8d
    ld [bc], a                                    ; $7a7d: $02
    inc b                                         ; $7a7e: $04
    nop                                           ; $7a7f: $00
    inc b                                         ; $7a80: $04
    ld [bc], a                                    ; $7a81: $02
    ld b, $00                                     ; $7a82: $06 $00
    ld b, $00                                     ; $7a84: $06 $00
    ld b, $01                                     ; $7a86: $06 $01
    nop                                           ; $7a88: $00
    inc b                                         ; $7a89: $04
    inc bc                                        ; $7a8a: $03
    nop                                           ; $7a8b: $00
    add c                                         ; $7a8c: $81
    inc b                                         ; $7a8d: $04
    dec b                                         ; $7a8e: $05
    nop                                           ; $7a8f: $00
    add l                                         ; $7a90: $85
    ld [$0400], sp                                ; $7a91: $08 $00 $04
    nop                                           ; $7a94: $00
    inc c                                         ; $7a95: $0c
    add hl, bc                                    ; $7a96: $09
    nop                                           ; $7a97: $00
    adc e                                         ; $7a98: $8b
    inc c                                         ; $7a99: $0c
    nop                                           ; $7a9a: $00
    ld [$0200], sp                                ; $7a9b: $08 $00 $02
    nop                                           ; $7a9e: $00
    ld a, [bc]                                    ; $7a9f: $0a
    ld bc, $0018                                  ; $7aa0: $01 $18 $00
    jr jr_0e4_7ab1                                ; $7aa3: $18 $0c

    nop                                           ; $7aa5: $00
    rst $38                                       ; $7aa6: $ff
    dec c                                         ; $7aa7: $0d
    inc b                                         ; $7aa8: $04
    ld sp, hl                                     ; $7aa9: $f9
    ld [$01f2], sp                                ; $7aaa: $08 $f2 $01
    db $e3                                        ; $7aad: $e3
    ld a, [$ffe6]                                 ; $7aae: $fa $e6 $ff

jr_0e4_7ab1:
    di                                            ; $7ab1: $f3
    ld sp, hl                                     ; $7ab2: $f9
    di                                            ; $7ab3: $f3
    cp $02                                        ; $7ab4: $fe $02
    inc e                                         ; $7ab6: $1c
    sub b                                         ; $7ab7: $90
    ld [hl+], a                                   ; $7ab8: $22
    ld a, $59                                     ; $7ab9: $3e $59
    ld a, a                                       ; $7abb: $7f
    ei                                            ; $7abc: $fb
    rst $38                                       ; $7abd: $ff
    ld d, [hl]                                    ; $7abe: $56
    ld e, h                                       ; $7abf: $5c
    rra                                           ; $7ac0: $1f
    add hl, de                                    ; $7ac1: $19
    ld l, $2a                                     ; $7ac2: $2e $2a
    ld b, a                                       ; $7ac4: $47
    ld b, h                                       ; $7ac5: $44
    ld c, e                                       ; $7ac6: $4b
    ld c, d                                       ; $7ac7: $4a
    ld [bc], a                                    ; $7ac8: $02
    adc c                                         ; $7ac9: $89
    ld [bc], a                                    ; $7aca: $02
    ld e, b                                       ; $7acb: $58
    ld [bc], a                                    ; $7acc: $02
    or b                                          ; $7acd: $b0
    ld [bc], a                                    ; $7ace: $02
    cp b                                          ; $7acf: $b8
    add [hl]                                      ; $7ad0: $86
    ld l, h                                       ; $7ad1: $6c
    ld a, h                                       ; $7ad2: $7c
    db $ec                                        ; $7ad3: $ec
    db $fc                                        ; $7ad4: $fc
    rst $18                                       ; $7ad5: $df
    rst $38                                       ; $7ad6: $ff
    ld [bc], a                                    ; $7ad7: $02
    db $10                                        ; $7ad8: $10
    ld [bc], a                                    ; $7ad9: $02
    ld [$1886], sp                                ; $7ada: $08 $86 $18
    ld [$040c], sp                                ; $7add: $08 $0c $04
    ld e, $0a                                     ; $7ae0: $1e $0a
    ld [bc], a                                    ; $7ae2: $02
    inc d                                         ; $7ae3: $14
    ld [bc], a                                    ; $7ae4: $02
    inc c                                         ; $7ae5: $0c
    add d                                         ; $7ae6: $82
    ld a, [de]                                    ; $7ae7: $1a
    ld [de], a                                    ; $7ae8: $12
    ld [bc], a                                    ; $7ae9: $02
    inc b                                         ; $7aea: $04
    ld b, $02                                     ; $7aeb: $06 $02
    ld [bc], a                                    ; $7aed: $02
    dec b                                         ; $7aee: $05
    and d                                         ; $7aef: $a2
    cp [hl]                                       ; $7af0: $be
    cp $b4                                        ; $7af1: $fe $b4
    db $f4                                        ; $7af3: $f4
    and h                                         ; $7af4: $a4
    db $e4                                        ; $7af5: $e4
    inc h                                         ; $7af6: $24
    inc a                                         ; $7af7: $3c
    db $10                                        ; $7af8: $10
    inc e                                         ; $7af9: $1c
    inc d                                         ; $7afa: $14
    inc e                                         ; $7afb: $1c
    dec de                                        ; $7afc: $1b
    rra                                           ; $7afd: $1f
    rla                                           ; $7afe: $17
    dec e                                         ; $7aff: $1d
    rra                                           ; $7b00: $1f
    add hl, de                                    ; $7b01: $19
    ld e, $1f                                     ; $7b02: $1e $1f
    ld a, $3f                                     ; $7b04: $3e $3f
    ld a, $3f                                     ; $7b06: $3e $3f
    ld a, $3f                                     ; $7b08: $3e $3f
    ld a, l                                       ; $7b0a: $7d
    ld a, a                                       ; $7b0b: $7f
    ld a, l                                       ; $7b0c: $7d
    ld a, a                                       ; $7b0d: $7f
    cp l                                          ; $7b0e: $bd
    rst $38                                       ; $7b0f: $ff
    ld l, e                                       ; $7b10: $6b
    ld a, a                                       ; $7b11: $7f
    ld [bc], a                                    ; $7b12: $02
    ccf                                           ; $7b13: $3f
    ld [$0400], sp                                ; $7b14: $08 $00 $04
    inc e                                         ; $7b17: $1c
    ld [bc], a                                    ; $7b18: $02
    inc d                                         ; $7b19: $14
    ld [bc], a                                    ; $7b1a: $02
    inc e                                         ; $7b1b: $1c
    ld [bc], a                                    ; $7b1c: $02
    inc d                                         ; $7b1d: $14
    ld [bc], a                                    ; $7b1e: $02
    ld a, [de]                                    ; $7b1f: $1a
    ld [bc], a                                    ; $7b20: $02
    ld [de], a                                    ; $7b21: $12
    ld [bc], a                                    ; $7b22: $02
    ld b, $02                                     ; $7b23: $06 $02
    ld c, $82                                     ; $7b25: $0e $82
    add hl, bc                                    ; $7b27: $09
    dec c                                         ; $7b28: $0d
    ld [bc], a                                    ; $7b29: $02
    rra                                           ; $7b2a: $1f
    inc b                                         ; $7b2b: $04
    nop                                           ; $7b2c: $00
    rst $38                                       ; $7b2d: $ff
    dec bc                                        ; $7b2e: $0b
    inc bc                                        ; $7b2f: $03
    ld sp, hl                                     ; $7b30: $f9
    ld [$01f2], sp                                ; $7b31: $08 $f2 $01
    rst $20                                       ; $7b34: $e7
    ei                                            ; $7b35: $fb
    db $eb                                        ; $7b36: $eb
    cp $f7                                        ; $7b37: $fe $f7
    db $fd                                        ; $7b39: $fd
    add c                                         ; $7b3a: $81
    inc bc                                        ; $7b3b: $03
    inc b                                         ; $7b3c: $04
    nop                                           ; $7b3d: $00
    sub e                                         ; $7b3e: $93
    inc hl                                        ; $7b3f: $23
    ld h, b                                       ; $7b40: $60
    db $10                                        ; $7b41: $10
    ld l, b                                       ; $7b42: $68
    nop                                           ; $7b43: $00
    dec b                                         ; $7b44: $05
    add sp, $0e                                   ; $7b45: $e8 $0e
    ld b, b                                       ; $7b47: $40
    ld c, $91                                     ; $7b48: $0e $91
    rlca                                          ; $7b4a: $07
    adc b                                         ; $7b4b: $88
    inc bc                                        ; $7b4c: $03
    inc b                                         ; $7b4d: $04
    inc bc                                        ; $7b4e: $03
    inc b                                         ; $7b4f: $04
    nop                                           ; $7b50: $00
    ld bc, $0005                                  ; $7b51: $01 $05 $00
    add c                                         ; $7b54: $81
    ld bc, $0002                                  ; $7b55: $01 $02 $00
    add c                                         ; $7b58: $81
    inc b                                         ; $7b59: $04
    inc b                                         ; $7b5a: $04
    nop                                           ; $7b5b: $00
    adc e                                         ; $7b5c: $8b
    ld [bc], a                                    ; $7b5d: $02
    inc b                                         ; $7b5e: $04
    nop                                           ; $7b5f: $00
    ld b, $00                                     ; $7b60: $06 $00
    ld b, $00                                     ; $7b62: $06 $00
    ld b, $00                                     ; $7b64: $06 $00
    inc b                                         ; $7b66: $04
    ld bc, $0003                                  ; $7b67: $01 $03 $00
    add e                                         ; $7b6a: $83
    inc b                                         ; $7b6b: $04
    nop                                           ; $7b6c: $00
    inc b                                         ; $7b6d: $04
    dec b                                         ; $7b6e: $05
    nop                                           ; $7b6f: $00
    add c                                         ; $7b70: $81
    ld [$0003], sp                                ; $7b71: $08 $03 $00
    add c                                         ; $7b74: $81
    ld [$0009], sp                                ; $7b75: $08 $09 $00
    adc c                                         ; $7b78: $89
    ld [bc], a                                    ; $7b79: $02
    nop                                           ; $7b7a: $00
    ld b, $00                                     ; $7b7b: $06 $00
    inc c                                         ; $7b7d: $0c
    nop                                           ; $7b7e: $00
    ld [$0900], sp                                ; $7b7f: $08 $00 $09
    ld c, $00                                     ; $7b82: $0e $00
    rst $38                                       ; $7b84: $ff
    dec c                                         ; $7b85: $0d
    inc b                                         ; $7b86: $04
    ld sp, hl                                     ; $7b87: $f9
    ld [$01f2], sp                                ; $7b88: $08 $f2 $01
    ld [c], a                                     ; $7b8b: $e2
    ld a, [$fee5]                                 ; $7b8c: $fa $e5 $fe
    ld a, [c]                                     ; $7b8f: $f2
    ld sp, hl                                     ; $7b90: $f9
    ld a, [c]                                     ; $7b91: $f2
    cp $02                                        ; $7b92: $fe $02
    inc e                                         ; $7b94: $1c
    sub b                                         ; $7b95: $90
    ld [hl+], a                                   ; $7b96: $22
    ld a, $59                                     ; $7b97: $3e $59
    ld a, a                                       ; $7b99: $7f
    ei                                            ; $7b9a: $fb
    rst $38                                       ; $7b9b: $ff
    ld d, [hl]                                    ; $7b9c: $56
    ld e, h                                       ; $7b9d: $5c
    rra                                           ; $7b9e: $1f
    add hl, de                                    ; $7b9f: $19
    ld l, $2a                                     ; $7ba0: $2e $2a
    daa                                           ; $7ba2: $27
    inc h                                         ; $7ba3: $24
    ld c, e                                       ; $7ba4: $4b
    ld c, d                                       ; $7ba5: $4a
    ld [bc], a                                    ; $7ba6: $02
    ld c, c                                       ; $7ba7: $49
    ld [bc], a                                    ; $7ba8: $02
    ld e, b                                       ; $7ba9: $58
    ld [bc], a                                    ; $7baa: $02
    ld h, b                                       ; $7bab: $60
    ld [bc], a                                    ; $7bac: $02
    cp b                                          ; $7bad: $b8
    add [hl]                                      ; $7bae: $86
    ld l, b                                       ; $7baf: $68
    ld a, b                                       ; $7bb0: $78
    db $ec                                        ; $7bb1: $ec
    db $fc                                        ; $7bb2: $fc
    ld e, [hl]                                    ; $7bb3: $5e
    ld a, [hl]                                    ; $7bb4: $7e
    ld [bc], a                                    ; $7bb5: $02
    ld [$0402], sp                                ; $7bb6: $08 $02 $04
    add [hl]                                      ; $7bb9: $86
    inc c                                         ; $7bba: $0c
    inc b                                         ; $7bbb: $04
    ld b, $02                                     ; $7bbc: $06 $02
    rrca                                          ; $7bbe: $0f
    dec b                                         ; $7bbf: $05
    ld [bc], a                                    ; $7bc0: $02
    ld a, [bc]                                    ; $7bc1: $0a
    ld [bc], a                                    ; $7bc2: $02
    ld b, $82                                     ; $7bc3: $06 $82
    dec c                                         ; $7bc5: $0d
    add hl, bc                                    ; $7bc6: $09
    ld [bc], a                                    ; $7bc7: $02
    ld [bc], a                                    ; $7bc8: $02
    ld b, $01                                     ; $7bc9: $06 $01
    ld [bc], a                                    ; $7bcb: $02
    ld [bc], a                                    ; $7bcc: $02
    and h                                         ; $7bcd: $a4
    push de                                       ; $7bce: $d5
    push af                                       ; $7bcf: $f5
    sbc $fe                                       ; $7bd0: $de $fe
    ld d, d                                       ; $7bd2: $52
    ld a, [c]                                     ; $7bd3: $f2
    ld l, b                                       ; $7bd4: $68
    ld a, b                                       ; $7bd5: $78
    jr nz, jr_0e4_7c10                            ; $7bd6: $20 $38

    jr z, jr_0e4_7c12                             ; $7bd8: $28 $38

    rla                                           ; $7bda: $17
    rra                                           ; $7bdb: $1f
    ld l, $3b                                     ; $7bdc: $2e $3b
    ld e, $17                                     ; $7bde: $1e $17
    ld e, $1f                                     ; $7be0: $1e $1f
    ld e, $1f                                     ; $7be2: $1e $1f
    ld a, $3f                                     ; $7be4: $3e $3f
    dec a                                         ; $7be6: $3d
    ccf                                           ; $7be7: $3f
    dec a                                         ; $7be8: $3d
    ccf                                           ; $7be9: $3f
    ld a, l                                       ; $7bea: $7d
    ld a, a                                       ; $7beb: $7f
    db $fd                                        ; $7bec: $fd
    rst $38                                       ; $7bed: $ff
    cp e                                          ; $7bee: $bb
    rst $38                                       ; $7bef: $ff
    ld l, e                                       ; $7bf0: $6b
    ld a, a                                       ; $7bf1: $7f
    ld [bc], a                                    ; $7bf2: $02
    ld a, $06                                     ; $7bf3: $3e $06
    nop                                           ; $7bf5: $00
    ld [bc], a                                    ; $7bf6: $02
    ld e, $02                                     ; $7bf7: $1e $02
    ld d, $02                                     ; $7bf9: $16 $02
    inc d                                         ; $7bfb: $14
    ld [bc], a                                    ; $7bfc: $02
    ld [de], a                                    ; $7bfd: $12
    ld [bc], a                                    ; $7bfe: $02
    ld d, $02                                     ; $7bff: $16 $02
    inc de                                        ; $7c01: $13
    ld [bc], a                                    ; $7c02: $02
    dec b                                         ; $7c03: $05
    ld [bc], a                                    ; $7c04: $02
    ld bc, $0204                                  ; $7c05: $01 $04 $02
    ld [bc], a                                    ; $7c08: $02
    inc e                                         ; $7c09: $1c
    ld [bc], a                                    ; $7c0a: $02
    db $10                                        ; $7c0b: $10
    ld [bc], a                                    ; $7c0c: $02
    nop                                           ; $7c0d: $00
    rst $38                                       ; $7c0e: $ff
    dec bc                                        ; $7c0f: $0b

jr_0e4_7c10:
    inc bc                                        ; $7c10: $03
    ld sp, hl                                     ; $7c11: $f9

jr_0e4_7c12:
    ld [$01f2], sp                                ; $7c12: $08 $f2 $01
    and $fb                                       ; $7c15: $e6 $fb
    ld [$f6fd], a                                 ; $7c17: $ea $fd $f6
    db $fd                                        ; $7c1a: $fd
    add c                                         ; $7c1b: $81
    inc bc                                        ; $7c1c: $03
    inc b                                         ; $7c1d: $04
    nop                                           ; $7c1e: $00
    sub l                                         ; $7c1f: $95
    inc hl                                        ; $7c20: $23
    jr nz, @+$12                                  ; $7c21: $20 $10

    jr z, @+$42                                   ; $7c23: $28 $40

    ld b, l                                       ; $7c25: $45
    jr z, @+$0c                                   ; $7c26: $28 $0a

    ld b, h                                       ; $7c28: $44
    ld d, $29                                     ; $7c29: $16 $29
    rlca                                          ; $7c2b: $07
    adc b                                         ; $7c2c: $88
    dec bc                                        ; $7c2d: $0b
    inc b                                         ; $7c2e: $04
    rlca                                          ; $7c2f: $07
    nop                                           ; $7c30: $00
    ld bc, $0002                                  ; $7c31: $01 $02 $00
    ld bc, $0003                                  ; $7c34: $01 $03 $00
    add c                                         ; $7c37: $81
    ld bc, $0002                                  ; $7c38: $01 $02 $00
    add c                                         ; $7c3b: $81
    ld [bc], a                                    ; $7c3c: $02
    inc b                                         ; $7c3d: $04
    nop                                           ; $7c3e: $00
    adc l                                         ; $7c3f: $8d
    ld bc, $0002                                  ; $7c40: $01 $02 $00
    ld [bc], a                                    ; $7c43: $02
    ld bc, $0003                                  ; $7c44: $01 $03 $00
    ld [bc], a                                    ; $7c47: $02
    ld bc, $0200                                  ; $7c48: $01 $00 $02
    nop                                           ; $7c4b: $00
    ld bc, $0003                                  ; $7c4c: $01 $03 $00
    add c                                         ; $7c4f: $81
    ld [bc], a                                    ; $7c50: $02
    inc bc                                        ; $7c51: $03
    nop                                           ; $7c52: $00
    add a                                         ; $7c53: $87
    inc b                                         ; $7c54: $04
    nop                                           ; $7c55: $00
    inc b                                         ; $7c56: $04
    nop                                           ; $7c57: $00
    ld b, $00                                     ; $7c58: $06 $00
    inc b                                         ; $7c5a: $04
    add hl, bc                                    ; $7c5b: $09
    nop                                           ; $7c5c: $00
    adc c                                         ; $7c5d: $89
    ld b, $00                                     ; $7c5e: $06 $00
    dec c                                         ; $7c60: $0d
    nop                                           ; $7c61: $00
    rrca                                          ; $7c62: $0f
    nop                                           ; $7c63: $00
    ld c, $00                                     ; $7c64: $0e $00
    ld c, $0e                                     ; $7c66: $0e $0e
    nop                                           ; $7c68: $00
    rst $38                                       ; $7c69: $ff
    dec c                                         ; $7c6a: $0d
    inc b                                         ; $7c6b: $04
    ld sp, hl                                     ; $7c6c: $f9
    ld [$01f2], sp                                ; $7c6d: $08 $f2 $01
    ld [c], a                                     ; $7c70: $e2
    ld a, [$fee5]                                 ; $7c71: $fa $e5 $fe
    ld a, [c]                                     ; $7c74: $f2
    ld sp, hl                                     ; $7c75: $f9
    ld a, [c]                                     ; $7c76: $f2
    rst $38                                       ; $7c77: $ff
    ld [bc], a                                    ; $7c78: $02
    inc e                                         ; $7c79: $1c
    sub b                                         ; $7c7a: $90
    ld [hl+], a                                   ; $7c7b: $22
    ld a, $59                                     ; $7c7c: $3e $59
    ld a, a                                       ; $7c7e: $7f
    ei                                            ; $7c7f: $fb
    rst $38                                       ; $7c80: $ff
    ld d, [hl]                                    ; $7c81: $56
    ld e, h                                       ; $7c82: $5c
    rra                                           ; $7c83: $1f
    add hl, de                                    ; $7c84: $19
    ld l, $2a                                     ; $7c85: $2e $2a
    daa                                           ; $7c87: $27
    inc h                                         ; $7c88: $24
    ld c, e                                       ; $7c89: $4b
    ld c, d                                       ; $7c8a: $4a
    ld [bc], a                                    ; $7c8b: $02
    ld c, c                                       ; $7c8c: $49
    ld [bc], a                                    ; $7c8d: $02
    ld e, b                                       ; $7c8e: $58
    ld [bc], a                                    ; $7c8f: $02
    ld h, b                                       ; $7c90: $60
    ld [bc], a                                    ; $7c91: $02
    cp b                                          ; $7c92: $b8
    add [hl]                                      ; $7c93: $86
    ld l, b                                       ; $7c94: $68
    ld a, b                                       ; $7c95: $78
    db $ec                                        ; $7c96: $ec
    db $fc                                        ; $7c97: $fc
    ld c, h                                       ; $7c98: $4c
    ld a, h                                       ; $7c99: $7c
    ld [bc], a                                    ; $7c9a: $02
    ld [$0402], sp                                ; $7c9b: $08 $02 $04
    add [hl]                                      ; $7c9e: $86
    inc c                                         ; $7c9f: $0c
    inc b                                         ; $7ca0: $04
    ld b, $02                                     ; $7ca1: $06 $02
    rrca                                          ; $7ca3: $0f
    dec b                                         ; $7ca4: $05
    ld [bc], a                                    ; $7ca5: $02
    ld a, [bc]                                    ; $7ca6: $0a
    ld [bc], a                                    ; $7ca7: $02
    ld b, $82                                     ; $7ca8: $06 $82
    dec c                                         ; $7caa: $0d
    add hl, bc                                    ; $7cab: $09
    ld [bc], a                                    ; $7cac: $02
    ld [bc], a                                    ; $7cad: $02
    inc b                                         ; $7cae: $04
    ld bc, $0302                                  ; $7caf: $01 $02 $03
    ld [bc], a                                    ; $7cb2: $02
    ld [bc], a                                    ; $7cb3: $02
    ld [bc], a                                    ; $7cb4: $02
    ld [$de8a], a                                 ; $7cb5: $ea $8a $de
    cp $d3                                        ; $7cb8: $fe $d3
    di                                            ; $7cba: $f3
    ld l, b                                       ; $7cbb: $68
    ld a, b                                       ; $7cbc: $78
    jr z, jr_0e4_7cf7                             ; $7cbd: $28 $38

    ld b, b                                       ; $7cbf: $40
    ld a, b                                       ; $7cc0: $78
    ld [bc], a                                    ; $7cc1: $02
    ld a, a                                       ; $7cc2: $7f
    sub [hl]                                      ; $7cc3: $96
    ld c, [hl]                                    ; $7cc4: $4e
    ld a, a                                       ; $7cc5: $7f
    ld a, [hl]                                    ; $7cc6: $7e
    ld c, a                                       ; $7cc7: $4f
    ld a, $3f                                     ; $7cc8: $3e $3f
    ld a, $3f                                     ; $7cca: $3e $3f
    ld a, $3f                                     ; $7ccc: $3e $3f
    dec a                                         ; $7cce: $3d
    ccf                                           ; $7ccf: $3f
    ld a, l                                       ; $7cd0: $7d
    ld a, a                                       ; $7cd1: $7f
    ld a, l                                       ; $7cd2: $7d
    ld a, a                                       ; $7cd3: $7f
    ld a, [$bafe]                                 ; $7cd4: $fa $fe $ba
    cp $45                                        ; $7cd7: $fe $45
    ld a, l                                       ; $7cd9: $7d
    ld [bc], a                                    ; $7cda: $02
    ld a, $06                                     ; $7cdb: $3e $06
    nop                                           ; $7cdd: $00
    add h                                         ; $7cde: $84
    ld a, [hl-]                                   ; $7cdf: $3a
    ld a, $2e                                     ; $7ce0: $3e $2e
    ld a, [hl+]                                   ; $7ce2: $2a
    ld [bc], a                                    ; $7ce3: $02
    inc l                                         ; $7ce4: $2c
    ld [bc], a                                    ; $7ce5: $02
    jr z, jr_0e4_7cea                             ; $7ce6: $28 $02

    inc h                                         ; $7ce8: $24
    ld [bc], a                                    ; $7ce9: $02

jr_0e4_7cea:
    inc l                                         ; $7cea: $2c
    ld [bc], a                                    ; $7ceb: $02
    inc d                                         ; $7cec: $14
    ld [bc], a                                    ; $7ced: $02
    ld c, $02                                     ; $7cee: $0e $02
    ld [bc], a                                    ; $7cf0: $02
    ld [bc], a                                    ; $7cf1: $02
    rlca                                          ; $7cf2: $07
    add d                                         ; $7cf3: $82
    add hl, bc                                    ; $7cf4: $09
    dec c                                         ; $7cf5: $0d
    ld [bc], a                                    ; $7cf6: $02

jr_0e4_7cf7:
    ld a, $02                                     ; $7cf7: $3e $02
    nop                                           ; $7cf9: $00
    rst $38                                       ; $7cfa: $ff
    dec bc                                        ; $7cfb: $0b
    inc bc                                        ; $7cfc: $03
    ld sp, hl                                     ; $7cfd: $f9
    ld [$01f2], sp                                ; $7cfe: $08 $f2 $01
    and $fb                                       ; $7d01: $e6 $fb
    ld [$f6fd], a                                 ; $7d03: $ea $fd $f6
    cp $81                                        ; $7d06: $fe $81
    inc bc                                        ; $7d08: $03
    inc b                                         ; $7d09: $04
    nop                                           ; $7d0a: $00
    sub l                                         ; $7d0b: $95
    inc hl                                        ; $7d0c: $23
    jr nz, jr_0e4_7d1f                            ; $7d0d: $20 $10

    ld l, b                                       ; $7d0f: $68
    nop                                           ; $7d10: $00
    dec h                                         ; $7d11: $25
    ld c, b                                       ; $7d12: $48
    ld a, [bc]                                    ; $7d13: $0a
    ld b, h                                       ; $7d14: $44
    ld d, $29                                     ; $7d15: $16 $29
    rrca                                          ; $7d17: $0f
    add b                                         ; $7d18: $80
    rrca                                          ; $7d19: $0f
    nop                                           ; $7d1a: $00
    rlca                                          ; $7d1b: $07
    nop                                           ; $7d1c: $00
    inc bc                                        ; $7d1d: $03
    inc b                                         ; $7d1e: $04

jr_0e4_7d1f:
    nop                                           ; $7d1f: $00
    ld [bc], a                                    ; $7d20: $02
    inc bc                                        ; $7d21: $03
    nop                                           ; $7d22: $00
    add c                                         ; $7d23: $81
    ld bc, $0002                                  ; $7d24: $01 $02 $00
    add c                                         ; $7d27: $81
    ld [bc], a                                    ; $7d28: $02
    inc b                                         ; $7d29: $04
    nop                                           ; $7d2a: $00
    adc l                                         ; $7d2b: $8d
    ld bc, $0002                                  ; $7d2c: $01 $02 $00
    ld [bc], a                                    ; $7d2f: $02
    ld bc, $0102                                  ; $7d30: $01 $02 $01
    nop                                           ; $7d33: $00
    ld [bc], a                                    ; $7d34: $02
    nop                                           ; $7d35: $00
    ld [bc], a                                    ; $7d36: $02
    nop                                           ; $7d37: $00
    ld [bc], a                                    ; $7d38: $02
    inc bc                                        ; $7d39: $03
    nop                                           ; $7d3a: $00
    add c                                         ; $7d3b: $81
    ld [bc], a                                    ; $7d3c: $02
    inc bc                                        ; $7d3d: $03
    nop                                           ; $7d3e: $00
    add a                                         ; $7d3f: $87
    inc b                                         ; $7d40: $04
    nop                                           ; $7d41: $00
    inc b                                         ; $7d42: $04
    nop                                           ; $7d43: $00
    inc b                                         ; $7d44: $04
    nop                                           ; $7d45: $00
    ld b, $09                                     ; $7d46: $06 $09
    nop                                           ; $7d48: $00
    adc l                                         ; $7d49: $8d
    ld [$1400], sp                                ; $7d4a: $08 $00 $14
    nop                                           ; $7d4d: $00
    jr jr_0e4_7d50                                ; $7d4e: $18 $00

jr_0e4_7d50:
    ld e, $00                                     ; $7d50: $1e $00
    inc a                                         ; $7d52: $3c
    ld bc, $0038                                  ; $7d53: $01 $38 $00
    ld b, b                                       ; $7d56: $40
    ld a, [bc]                                    ; $7d57: $0a
    nop                                           ; $7d58: $00
    rst $38                                       ; $7d59: $ff
    dec c                                         ; $7d5a: $0d
    inc b                                         ; $7d5b: $04
    ld sp, hl                                     ; $7d5c: $f9
    ld [$01f2], sp                                ; $7d5d: $08 $f2 $01
    db $e3                                        ; $7d60: $e3
    ld a, [$fee6]                                 ; $7d61: $fa $e6 $fe
    di                                            ; $7d64: $f3
    ld sp, hl                                     ; $7d65: $f9
    di                                            ; $7d66: $f3
    cp $02                                        ; $7d67: $fe $02
    inc e                                         ; $7d69: $1c
    sub b                                         ; $7d6a: $90
    ld [hl+], a                                   ; $7d6b: $22
    ld a, $59                                     ; $7d6c: $3e $59
    ld a, a                                       ; $7d6e: $7f
    ei                                            ; $7d6f: $fb
    rst $38                                       ; $7d70: $ff
    ld d, [hl]                                    ; $7d71: $56
    ld e, h                                       ; $7d72: $5c
    rra                                           ; $7d73: $1f
    add hl, de                                    ; $7d74: $19
    ld l, $2a                                     ; $7d75: $2e $2a
    ld b, a                                       ; $7d77: $47
    ld b, h                                       ; $7d78: $44
    ld c, e                                       ; $7d79: $4b
    ld c, d                                       ; $7d7a: $4a
    ld [bc], a                                    ; $7d7b: $02
    adc c                                         ; $7d7c: $89
    ld [bc], a                                    ; $7d7d: $02
    ld e, b                                       ; $7d7e: $58
    ld [bc], a                                    ; $7d7f: $02
    and b                                         ; $7d80: $a0
    ld [bc], a                                    ; $7d81: $02
    cp b                                          ; $7d82: $b8
    ld [bc], a                                    ; $7d83: $02
    ld [hl], b                                    ; $7d84: $70
    add h                                         ; $7d85: $84
    add sp, -$08                                  ; $7d86: $e8 $f8
    call z, Call_000_02fc                         ; $7d88: $cc $fc $02
    ld [$0402], sp                                ; $7d8b: $08 $02 $04
    add [hl]                                      ; $7d8e: $86
    inc c                                         ; $7d8f: $0c
    inc b                                         ; $7d90: $04
    ld b, $02                                     ; $7d91: $06 $02
    rrca                                          ; $7d93: $0f
    dec b                                         ; $7d94: $05
    ld [bc], a                                    ; $7d95: $02
    ld a, [bc]                                    ; $7d96: $0a
    ld [bc], a                                    ; $7d97: $02
    ld b, $82                                     ; $7d98: $06 $82
    dec c                                         ; $7d9a: $0d
    add hl, bc                                    ; $7d9b: $09
    ld [bc], a                                    ; $7d9c: $02
    ld [bc], a                                    ; $7d9d: $02
    inc b                                         ; $7d9e: $04
    ld bc, $0204                                  ; $7d9f: $01 $04 $02
    ld [bc], a                                    ; $7da2: $02
    cp $a0                                        ; $7da3: $fe $a0
    jp c, $d2fa                                   ; $7da5: $da $fa $d2

    ld a, [c]                                     ; $7da8: $f2
    jr z, jr_0e4_7de3                             ; $7da9: $28 $38

    jr nz, jr_0e4_7de5                            ; $7dab: $20 $38

    ld b, b                                       ; $7dad: $40
    ld a, b                                       ; $7dae: $78
    scf                                           ; $7daf: $37
    ccf                                           ; $7db0: $3f
    ld c, [hl]                                    ; $7db1: $4e
    ld a, a                                       ; $7db2: $7f
    ld a, $27                                     ; $7db3: $3e $27
    ld a, $3f                                     ; $7db5: $3e $3f
    ld a, $3f                                     ; $7db7: $3e $3f
    ld a, $3f                                     ; $7db9: $3e $3f
    dec a                                         ; $7dbb: $3d
    ccf                                           ; $7dbc: $3f
    ld a, l                                       ; $7dbd: $7d
    ld a, a                                       ; $7dbe: $7f
    db $fd                                        ; $7dbf: $fd
    rst $38                                       ; $7dc0: $ff
    ld a, [$84fe]                                 ; $7dc1: $fa $fe $84
    db $fc                                        ; $7dc4: $fc
    ld [bc], a                                    ; $7dc5: $02
    ld a, a                                       ; $7dc6: $7f
    ld [$0300], sp                                ; $7dc7: $08 $00 $03
    rra                                           ; $7dca: $1f
    add c                                         ; $7dcb: $81
    dec e                                         ; $7dcc: $1d
    ld [bc], a                                    ; $7dcd: $02
    ld d, $04                                     ; $7dce: $16 $04
    ld [de], a                                    ; $7dd0: $12
    ld [bc], a                                    ; $7dd1: $02
    ld d, $02                                     ; $7dd2: $16 $02
    ld a, [bc]                                    ; $7dd4: $0a
    ld [bc], a                                    ; $7dd5: $02
    ld [bc], a                                    ; $7dd6: $02
    ld [bc], a                                    ; $7dd7: $02
    ld bc, $0f02                                  ; $7dd8: $01 $02 $0f
    add d                                         ; $7ddb: $82
    ld de, $0219                                  ; $7ddc: $11 $19 $02
    ld e, $02                                     ; $7ddf: $1e $02
    nop                                           ; $7de1: $00
    rst $38                                       ; $7de2: $ff

jr_0e4_7de3:
    dec bc                                        ; $7de3: $0b
    inc bc                                        ; $7de4: $03

jr_0e4_7de5:
    ld sp, hl                                     ; $7de5: $f9
    ld [$01f2], sp                                ; $7de6: $08 $f2 $01
    rst $20                                       ; $7de9: $e7
    ei                                            ; $7dea: $fb
    db $eb                                        ; $7deb: $eb
    db $fd                                        ; $7dec: $fd
    rst $30                                       ; $7ded: $f7
    db $fd                                        ; $7dee: $fd
    add c                                         ; $7def: $81
    inc bc                                        ; $7df0: $03
    inc b                                         ; $7df1: $04
    nop                                           ; $7df2: $00
    sub e                                         ; $7df3: $93
    inc hl                                        ; $7df4: $23
    ld h, b                                       ; $7df5: $60
    db $10                                        ; $7df6: $10
    ld l, b                                       ; $7df7: $68
    nop                                           ; $7df8: $00
    dec b                                         ; $7df9: $05
    add sp, $0a                                   ; $7dfa: $e8 $0a
    ld b, h                                       ; $7dfc: $44
    ld d, $a9                                     ; $7dfd: $16 $a9
    rrca                                          ; $7dff: $0f
    add b                                         ; $7e00: $80
    rrca                                          ; $7e01: $0f
    db $10                                        ; $7e02: $10
    rrca                                          ; $7e03: $0f
    nop                                           ; $7e04: $00
    ld [bc], a                                    ; $7e05: $02
    dec b                                         ; $7e06: $05
    dec b                                         ; $7e07: $05
    nop                                           ; $7e08: $00
    add c                                         ; $7e09: $81
    ld bc, $0002                                  ; $7e0a: $01 $02 $00
    add c                                         ; $7e0d: $81
    ld [bc], a                                    ; $7e0e: $02
    inc b                                         ; $7e0f: $04
    nop                                           ; $7e10: $00
    adc b                                         ; $7e11: $88
    ld bc, $0002                                  ; $7e12: $01 $02 $00
    inc bc                                        ; $7e15: $03
    nop                                           ; $7e16: $00
    ld [bc], a                                    ; $7e17: $02
    ld bc, $0202                                  ; $7e18: $01 $02 $02
    nop                                           ; $7e1b: $00
    add c                                         ; $7e1c: $81
    ld [bc], a                                    ; $7e1d: $02
    inc bc                                        ; $7e1e: $03
    nop                                           ; $7e1f: $00
    add e                                         ; $7e20: $83
    ld [bc], a                                    ; $7e21: $02
    nop                                           ; $7e22: $00
    ld [bc], a                                    ; $7e23: $02
    dec b                                         ; $7e24: $05
    nop                                           ; $7e25: $00
    add l                                         ; $7e26: $85
    inc b                                         ; $7e27: $04
    nop                                           ; $7e28: $00
    ld b, $00                                     ; $7e29: $06 $00
    ld b, $09                                     ; $7e2b: $06 $09
    nop                                           ; $7e2d: $00
    adc e                                         ; $7e2e: $8b
    inc b                                         ; $7e2f: $04
    nop                                           ; $7e30: $00
    ld a, [bc]                                    ; $7e31: $0a
    nop                                           ; $7e32: $00
    ld c, $00                                     ; $7e33: $0e $00
    rrca                                          ; $7e35: $0f
    nop                                           ; $7e36: $00
    jr jr_0e4_7e3c                                ; $7e37: $18 $03

    jr nc, jr_0e4_7e47                            ; $7e39: $30 $0c

    nop                                           ; $7e3b: $00

jr_0e4_7e3c:
    rst $38                                       ; $7e3c: $ff
    dec c                                         ; $7e3d: $0d
    inc b                                         ; $7e3e: $04
    ld sp, hl                                     ; $7e3f: $f9
    ld [$01f2], sp                                ; $7e40: $08 $f2 $01
    ld [c], a                                     ; $7e43: $e2
    ld a, [$fee5]                                 ; $7e44: $fa $e5 $fe

jr_0e4_7e47:
    ld a, [c]                                     ; $7e47: $f2
    ld sp, hl                                     ; $7e48: $f9
    ld a, [c]                                     ; $7e49: $f2
    cp $02                                        ; $7e4a: $fe $02
    inc e                                         ; $7e4c: $1c
    sub b                                         ; $7e4d: $90
    ld [hl+], a                                   ; $7e4e: $22
    ld a, $59                                     ; $7e4f: $3e $59
    ld a, a                                       ; $7e51: $7f
    ei                                            ; $7e52: $fb
    rst $38                                       ; $7e53: $ff
    ld d, [hl]                                    ; $7e54: $56
    ld e, h                                       ; $7e55: $5c
    rra                                           ; $7e56: $1f
    add hl, de                                    ; $7e57: $19
    ld l, $2a                                     ; $7e58: $2e $2a
    daa                                           ; $7e5a: $27
    inc h                                         ; $7e5b: $24
    ld c, e                                       ; $7e5c: $4b
    ld c, d                                       ; $7e5d: $4a
    ld [bc], a                                    ; $7e5e: $02
    ld c, c                                       ; $7e5f: $49
    ld [bc], a                                    ; $7e60: $02
    ld e, b                                       ; $7e61: $58
    ld [bc], a                                    ; $7e62: $02
    ld h, b                                       ; $7e63: $60
    ld [bc], a                                    ; $7e64: $02
    cp b                                          ; $7e65: $b8
    add [hl]                                      ; $7e66: $86
    ld l, b                                       ; $7e67: $68
    ld a, b                                       ; $7e68: $78
    db $ec                                        ; $7e69: $ec
    db $fc                                        ; $7e6a: $fc
    ld e, [hl]                                    ; $7e6b: $5e
    ld a, [hl]                                    ; $7e6c: $7e
    ld [bc], a                                    ; $7e6d: $02
    ld [$0402], sp                                ; $7e6e: $08 $02 $04
    add [hl]                                      ; $7e71: $86
    inc c                                         ; $7e72: $0c
    inc b                                         ; $7e73: $04
    ld b, $02                                     ; $7e74: $06 $02
    rrca                                          ; $7e76: $0f
    dec b                                         ; $7e77: $05
    ld [bc], a                                    ; $7e78: $02
    ld a, [bc]                                    ; $7e79: $0a
    ld [bc], a                                    ; $7e7a: $02
    ld b, $82                                     ; $7e7b: $06 $82
    dec c                                         ; $7e7d: $0d
    add hl, bc                                    ; $7e7e: $09
    ld [bc], a                                    ; $7e7f: $02
    ld [bc], a                                    ; $7e80: $02
    ld b, $01                                     ; $7e81: $06 $01
    ld [bc], a                                    ; $7e83: $02
    ld [bc], a                                    ; $7e84: $02
    and h                                         ; $7e85: $a4
    push de                                       ; $7e86: $d5
    push af                                       ; $7e87: $f5
    sbc $fe                                       ; $7e88: $de $fe
    ld d, d                                       ; $7e8a: $52
    ld a, [c]                                     ; $7e8b: $f2
    ld l, b                                       ; $7e8c: $68
    ld a, b                                       ; $7e8d: $78
    jr nz, jr_0e4_7ec8                            ; $7e8e: $20 $38

    jr z, jr_0e4_7eca                             ; $7e90: $28 $38

    rla                                           ; $7e92: $17
    rra                                           ; $7e93: $1f
    ld l, $3b                                     ; $7e94: $2e $3b
    ld e, $17                                     ; $7e96: $1e $17
    ld e, $1f                                     ; $7e98: $1e $1f
    ld e, $1f                                     ; $7e9a: $1e $1f
    ld a, $3f                                     ; $7e9c: $3e $3f
    ld a, $3f                                     ; $7e9e: $3e $3f
    ld a, $3f                                     ; $7ea0: $3e $3f
    ld a, l                                       ; $7ea2: $7d
    ld a, a                                       ; $7ea3: $7f
    ld a, l                                       ; $7ea4: $7d
    ld a, a                                       ; $7ea5: $7f
    db $fd                                        ; $7ea6: $fd
    rst $38                                       ; $7ea7: $ff
    adc e                                         ; $7ea8: $8b
    rst $38                                       ; $7ea9: $ff
    ld [bc], a                                    ; $7eaa: $02
    ld a, a                                       ; $7eab: $7f
    ld b, $00                                     ; $7eac: $06 $00
    ld [bc], a                                    ; $7eae: $02
    inc e                                         ; $7eaf: $1c
    ld [bc], a                                    ; $7eb0: $02
    inc d                                         ; $7eb1: $14
    ld [bc], a                                    ; $7eb2: $02
    ld d, $02                                     ; $7eb3: $16 $02
    ld a, [de]                                    ; $7eb5: $1a
    ld [bc], a                                    ; $7eb6: $02
    ld [de], a                                    ; $7eb7: $12
    ld [bc], a                                    ; $7eb8: $02
    dec d                                         ; $7eb9: $15
    ld [bc], a                                    ; $7eba: $02
    rla                                           ; $7ebb: $17
    ld [bc], a                                    ; $7ebc: $02
    dec e                                         ; $7ebd: $1d
    inc b                                         ; $7ebe: $04
    ld b, $02                                     ; $7ebf: $06 $02
    inc e                                         ; $7ec1: $1c
    add d                                         ; $7ec2: $82
    inc b                                         ; $7ec3: $04
    inc d                                         ; $7ec4: $14
    ld [bc], a                                    ; $7ec5: $02
    inc e                                         ; $7ec6: $1c
    rst $38                                       ; $7ec7: $ff

jr_0e4_7ec8:
    dec bc                                        ; $7ec8: $0b
    inc bc                                        ; $7ec9: $03

jr_0e4_7eca:
    ld sp, hl                                     ; $7eca: $f9
    ld [$01f2], sp                                ; $7ecb: $08 $f2 $01
    and $fb                                       ; $7ece: $e6 $fb
    ld [$f6fd], a                                 ; $7ed0: $ea $fd $f6
    db $fd                                        ; $7ed3: $fd
    add c                                         ; $7ed4: $81
    inc bc                                        ; $7ed5: $03
    inc b                                         ; $7ed6: $04
    nop                                           ; $7ed7: $00
    sub l                                         ; $7ed8: $95
    inc hl                                        ; $7ed9: $23
    jr nz, @+$12                                  ; $7eda: $20 $10

jr_0e4_7edc:
    jr z, jr_0e4_7f1e                             ; $7edc: $28 $40

    ld b, l                                       ; $7ede: $45
    jr z, @+$0c                                   ; $7edf: $28 $0a

    ld b, h                                       ; $7ee1: $44
    ld d, $29                                     ; $7ee2: $16 $29
    rlca                                          ; $7ee4: $07
    adc b                                         ; $7ee5: $88
    dec bc                                        ; $7ee6: $0b
    inc b                                         ; $7ee7: $04
    rlca                                          ; $7ee8: $07
    nop                                           ; $7ee9: $00
    ld bc, $0002                                  ; $7eea: $01 $02 $00
    ld bc, $0003                                  ; $7eed: $01 $03 $00
    add c                                         ; $7ef0: $81
    ld bc, $0002                                  ; $7ef1: $01 $02 $00
    add c                                         ; $7ef4: $81

jr_0e4_7ef5:
    ld [bc], a                                    ; $7ef5: $02
    inc b                                         ; $7ef6: $04
    nop                                           ; $7ef7: $00
    adc l                                         ; $7ef8: $8d
    ld bc, $0002                                  ; $7ef9: $01 $02 $00
    ld [bc], a                                    ; $7efc: $02
    ld bc, $0003                                  ; $7efd: $01 $03 $00
    ld [bc], a                                    ; $7f00: $02
    ld bc, $0200                                  ; $7f01: $01 $00 $02
    nop                                           ; $7f04: $00
    ld bc, $0003                                  ; $7f05: $01 $03 $00
    add c                                         ; $7f08: $81
    ld [bc], a                                    ; $7f09: $02
    inc bc                                        ; $7f0a: $03
    nop                                           ; $7f0b: $00
    add a                                         ; $7f0c: $87
    inc b                                         ; $7f0d: $04
    nop                                           ; $7f0e: $00
    inc b                                         ; $7f0f: $04
    nop                                           ; $7f10: $00
    ld [bc], a                                    ; $7f11: $02
    nop                                           ; $7f12: $00
    ld b, $09                                     ; $7f13: $06 $09
    nop                                           ; $7f15: $00
    adc c                                         ; $7f16: $89
    dec b                                         ; $7f17: $05
    nop                                           ; $7f18: $00
    inc b                                         ; $7f19: $04
    nop                                           ; $7f1a: $00
    ld bc, $0c00                                  ; $7f1b: $01 $00 $0c

jr_0e4_7f1e:
    nop                                           ; $7f1e: $00
    inc c                                         ; $7f1f: $0c
    ld [bc], a                                    ; $7f20: $02
    nop                                           ; $7f21: $00
    add c                                         ; $7f22: $81
    inc b                                         ; $7f23: $04
    dec bc                                        ; $7f24: $0b
    nop                                           ; $7f25: $00
    rst $38                                       ; $7f26: $ff
    dec c                                         ; $7f27: $0d
    inc b                                         ; $7f28: $04
    ld sp, hl                                     ; $7f29: $f9
    ld [$01f2], sp                                ; $7f2a: $08 $f2 $01
    rst $20                                       ; $7f2d: $e7
    ld a, [$00e7]                                 ; $7f2e: $fa $e7 $00
    rst $30                                       ; $7f31: $f7
    ld a, [$00f7]                                 ; $7f32: $fa $f7 $00
    ld [bc], a                                    ; $7f35: $02
    rrca                                          ; $7f36: $0f
    ld [bc], a                                    ; $7f37: $02
    rra                                           ; $7f38: $1f
    ld b, $3f                                     ; $7f39: $06 $3f
    dec b                                         ; $7f3b: $05
    rra                                           ; $7f3c: $1f
    add e                                         ; $7f3d: $83
    rla                                           ; $7f3e: $17
    rra                                           ; $7f3f: $1f
    jr jr_0e4_7f44                                ; $7f40: $18 $02

    rrca                                          ; $7f42: $0f
    adc h                                         ; $7f43: $8c

jr_0e4_7f44:
    jr nc, jr_0e4_7f85                            ; $7f44: $30 $3f

    ld b, b                                       ; $7f46: $40
    ld a, a                                       ; $7f47: $7f
    ld b, b                                       ; $7f48: $40
    ld a, a                                       ; $7f49: $7f
    ret nc                                        ; $7f4a: $d0

    rst $38                                       ; $7f4b: $ff
    ldh a, [$bf]                                  ; $7f4c: $f0 $bf
    db $f4                                        ; $7f4e: $f4
    sbc a                                         ; $7f4f: $9f
    ld [bc], a                                    ; $7f50: $02
    db $10                                        ; $7f51: $10
    ld [bc], a                                    ; $7f52: $02
    jr c, jr_0e4_7f5b                             ; $7f53: $38 $06

    inc a                                         ; $7f55: $3c
    dec b                                         ; $7f56: $05
    jr c, jr_0e4_7edc                             ; $7f57: $38 $83

    jr z, @+$3a                                   ; $7f59: $28 $38

jr_0e4_7f5b:
    jr jr_0e4_7f5f                                ; $7f5b: $18 $02

    jr nc, jr_0e4_7ef5                            ; $7f5d: $30 $96

jr_0e4_7f5f:
    inc c                                         ; $7f5f: $0c
    inc a                                         ; $7f60: $3c
    ld [bc], a                                    ; $7f61: $02
    ld a, $02                                     ; $7f62: $3e $02
    ld a, $0b                                     ; $7f64: $3e $0b
    ccf                                           ; $7f66: $3f
    rrca                                          ; $7f67: $0f
    dec a                                         ; $7f68: $3d
    rrca                                          ; $7f69: $0f
    add hl, sp                                    ; $7f6a: $39
    di                                            ; $7f6b: $f3
    sbc a                                         ; $7f6c: $9f
    ldh a, [$9f]                                  ; $7f6d: $f0 $9f
    rst $28                                       ; $7f6f: $ef
    cp a                                          ; $7f70: $bf
    rst $38                                       ; $7f71: $ff
    cp a                                          ; $7f72: $bf
    ld a, a                                       ; $7f73: $7f
    ld e, a                                       ; $7f74: $5f
    ld [bc], a                                    ; $7f75: $02
    ccf                                           ; $7f76: $3f
    ld [bc], a                                    ; $7f77: $02
    rra                                           ; $7f78: $1f
    ld [bc], a                                    ; $7f79: $02
    ld a, $84                                     ; $7f7a: $3e $84
    ld a, [hl]                                    ; $7f7c: $7e
    ld e, [hl]                                    ; $7f7d: $5e
    ld l, h                                       ; $7f7e: $6c
    ld [hl], h                                    ; $7f7f: $74
    ld [bc], a                                    ; $7f80: $02
    inc a                                         ; $7f81: $3c
    ld a, [bc]                                    ; $7f82: $0a
    nop                                           ; $7f83: $00
    adc d                                         ; $7f84: $8a

jr_0e4_7f85:
    cpl                                           ; $7f85: $2f
    add hl, sp                                    ; $7f86: $39
    rrca                                          ; $7f87: $0f
    add hl, sp                                    ; $7f88: $39
    scf                                           ; $7f89: $37
    dec a                                         ; $7f8a: $3d
    ccf                                           ; $7f8b: $3f
    dec a                                         ; $7f8c: $3d
    ld a, $3a                                     ; $7f8d: $3e $3a
    ld [bc], a                                    ; $7f8f: $02
    inc a                                         ; $7f90: $3c
    ld [bc], a                                    ; $7f91: $02
    jr c, jr_0e4_7f96                             ; $7f92: $38 $02

    inc a                                         ; $7f94: $3c
    add h                                         ; $7f95: $84

jr_0e4_7f96:
    ld a, $3a                                     ; $7f96: $3e $3a
    ld [hl], $2e                                  ; $7f98: $36 $2e
    ld [bc], a                                    ; $7f9a: $02
    inc a                                         ; $7f9b: $3c
    ld a, [bc]                                    ; $7f9c: $0a
    nop                                           ; $7f9d: $00
    rst $38                                       ; $7f9e: $ff
    dec bc                                        ; $7f9f: $0b
    inc bc                                        ; $7fa0: $03
    ld sp, hl                                     ; $7fa1: $f9
    ld [$01f2], sp                                ; $7fa2: $08 $f2 $01
    rst $20                                       ; $7fa5: $e7
    db $fc                                        ; $7fa6: $fc
    add sp, -$02                                  ; $7fa7: $e8 $fe
    rst $30                                       ; $7fa9: $f7
    db $fd                                        ; $7faa: $fd
    ld [bc], a                                    ; $7fab: $02
    rra                                           ; $7fac: $1f
    ld [bc], a                                    ; $7fad: $02
    ld a, a                                       ; $7fae: $7f
    inc bc                                        ; $7faf: $03
    rst $38                                       ; $7fb0: $ff
    adc l                                         ; $7fb1: $8d
    db $fd                                        ; $7fb2: $fd
    rst $38                                       ; $7fb3: $ff
    db $ec                                        ; $7fb4: $ec
    rst $38                                       ; $7fb5: $ff
    or $7f                                        ; $7fb6: $f6 $7f
    ld h, b                                       ; $7fb8: $60
    ld a, a                                       ; $7fb9: $7f
    ld b, b                                       ; $7fba: $40
    ccf                                           ; $7fbb: $3f
    inc hl                                        ; $7fbc: $23
    ccf                                           ; $7fbd: $3f
    ld hl, $3e02                                  ; $7fbe: $21 $02 $3e
    adc d                                         ; $7fc1: $8a
    ld d, e                                       ; $7fc2: $53
    ld a, a                                       ; $7fc3: $7f
    ld c, c                                       ; $7fc4: $49
    ld a, a                                       ; $7fc5: $7f
    ld a, c                                       ; $7fc6: $79
    ld a, a                                       ; $7fc7: $7f
    ld a, b                                       ; $7fc8: $78
    ld e, a                                       ; $7fc9: $5f
    ld a, b                                       ; $7fca: $78
    ld c, a                                       ; $7fcb: $4f
    ld [bc], a                                    ; $7fcc: $02
    inc bc                                        ; $7fcd: $03
    ld [bc], a                                    ; $7fce: $02
    ld [bc], a                                    ; $7fcf: $02
    ld [bc], a                                    ; $7fd0: $02
    inc bc                                        ; $7fd1: $03
    ld [bc], a                                    ; $7fd2: $02
    ld [bc], a                                    ; $7fd3: $02
    inc bc                                        ; $7fd4: $03
    inc bc                                        ; $7fd5: $03
    add c                                         ; $7fd6: $81
    ld bc, $0204                                  ; $7fd7: $01 $04 $02
    ld [$0600], sp                                ; $7fda: $08 $00 $06
    ld [bc], a                                    ; $7fdd: $02
    add d                                         ; $7fde: $82
    ld [c], a                                     ; $7fdf: $e2
    ld a, $02                                     ; $7fe0: $3e $02
    add b                                         ; $7fe2: $80
    adc b                                         ; $7fe3: $88
    pop af                                        ; $7fe4: $f1
    sbc a                                         ; $7fe5: $9f
    ld a, c                                       ; $7fe6: $79
    ld c, a                                       ; $7fe7: $4f
    ld a, [hl]                                    ; $7fe8: $7e
    ld c, [hl]                                    ; $7fe9: $4e
    db $fc                                        ; $7fea: $fc
    sbc h                                         ; $7feb: $9c
    inc b                                         ; $7fec: $04
    ld a, h                                       ; $7fed: $7c
    inc b                                         ; $7fee: $04
    db $fc                                        ; $7fef: $fc
    add d                                         ; $7ff0: $82
    xor $b2                                       ; $7ff1: $ee $b2
    ld [bc], a                                    ; $7ff3: $02
    cp $0a                                        ; $7ff4: $fe $0a
    nop                                           ; $7ff6: $00
    rst $38                                       ; $7ff7: $ff
    rst $38                                       ; $7ff8: $ff
    rst $38                                       ; $7ff9: $ff
    rst $38                                       ; $7ffa: $ff
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
