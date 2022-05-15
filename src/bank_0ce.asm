; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0ce", ROMX[$4000], BANK[$ce]

    adc $20                                       ; $4000: $ce $20
    nop                                           ; $4002: $00
    jr nz, jr_0ce_4005                            ; $4003: $20 $00

jr_0ce_4005:
    ld d, $02                                     ; $4005: $16 $02
    nop                                           ; $4007: $00
    ld b, b                                       ; $4008: $40
    ld b, b                                       ; $4009: $40
    ld b, b                                       ; $400a: $40
    ld b, c                                       ; $400b: $41
    ld b, d                                       ; $400c: $42
    ld b, e                                       ; $400d: $43
    ld b, h                                       ; $400e: $44
    ld b, l                                       ; $400f: $45
    nop                                           ; $4010: $00
    ld b, l                                       ; $4011: $45
    ld b, [hl]                                    ; $4012: $46
    ld b, a                                       ; $4013: $47
    ld c, b                                       ; $4014: $48
    ld c, c                                       ; $4015: $49
    ld c, d                                       ; $4016: $4a
    ld c, e                                       ; $4017: $4b
    ld c, h                                       ; $4018: $4c
    nop                                           ; $4019: $00
    ld c, l                                       ; $401a: $4d
    ld c, [hl]                                    ; $401b: $4e
    ld c, a                                       ; $401c: $4f
    ld c, c                                       ; $401d: $49
    ld c, b                                       ; $401e: $48
    ld b, a                                       ; $401f: $47
    ld b, [hl]                                    ; $4020: $46
    ld b, l                                       ; $4021: $45
    ld b, $45                                     ; $4022: $06 $45
    ld b, h                                       ; $4024: $44
    ld b, e                                       ; $4025: $43
    ld b, d                                       ; $4026: $42
    ld b, c                                       ; $4027: $41
    dec e                                         ; $4028: $1d
    nop                                           ; $4029: $00
    jr nz, jr_0ce_404c                            ; $402a: $20 $20

    ld d, c                                       ; $402c: $51
    nop                                           ; $402d: $00
    ld d, c                                       ; $402e: $51
    ld b, [hl]                                    ; $402f: $46
    ld d, d                                       ; $4030: $52
    ld d, e                                       ; $4031: $53
    ld d, h                                       ; $4032: $54
    ld c, a                                       ; $4033: $4f
    ld c, [hl]                                    ; $4034: $4e
    ld c, l                                       ; $4035: $4d
    nop                                           ; $4036: $00
    ld c, h                                       ; $4037: $4c
    ld c, e                                       ; $4038: $4b
    ld c, d                                       ; $4039: $4a
    ld d, h                                       ; $403a: $54
    ld d, e                                       ; $403b: $53
    ld d, d                                       ; $403c: $52
    ld b, [hl]                                    ; $403d: $46
    ld d, c                                       ; $403e: $51
    ld b, b                                       ; $403f: $40
    ld d, c                                       ; $4040: $51
    jr nz, jr_0ce_4093                            ; $4041: $20 $50

    ld d, b                                       ; $4043: $50
    ld d, l                                       ; $4044: $55
    ld d, l                                       ; $4045: $55
    ld d, [hl]                                    ; $4046: $56
    ld d, a                                       ; $4047: $57
    ld e, b                                       ; $4048: $58
    nop                                           ; $4049: $00
    ld e, c                                       ; $404a: $59
    ld e, d                                       ; $404b: $5a

jr_0ce_404c:
    ld e, e                                       ; $404c: $5b
    ld e, h                                       ; $404d: $5c
    ld e, l                                       ; $404e: $5d
    ld e, [hl]                                    ; $404f: $5e
    ld e, a                                       ; $4050: $5f
    ld e, c                                       ; $4051: $59
    inc bc                                        ; $4052: $03
    ld e, b                                       ; $4053: $58
    ld d, a                                       ; $4054: $57
    ld d, [hl]                                    ; $4055: $56
    ld d, l                                       ; $4056: $55
    ld d, l                                       ; $4057: $55
    ld d, b                                       ; $4058: $50
    ld b, b                                       ; $4059: $40
    jr nc, jr_0ce_40bd                            ; $405a: $30 $61

    jr jr_0ce_405e                                ; $405c: $18 $00

jr_0ce_405e:
    ld h, b                                       ; $405e: $60
    ld h, c                                       ; $405f: $61
    ld d, e                                       ; $4060: $53
    ld h, d                                       ; $4061: $62
    ld c, d                                       ; $4062: $4a
    ld h, e                                       ; $4063: $63
    ld h, h                                       ; $4064: $64
    ld h, l                                       ; $4065: $65
    inc bc                                        ; $4066: $03
    ld e, d                                       ; $4067: $5a
    ld h, [hl]                                    ; $4068: $66
    ld h, d                                       ; $4069: $62
    ld d, e                                       ; $406a: $53
    ld h, c                                       ; $406b: $61
    ld h, b                                       ; $406c: $60
    ld e, a                                       ; $406d: $5f
    ld b, b                                       ; $406e: $40
    add c                                         ; $406f: $81
    jr jr_0ce_4072                                ; $4070: $18 $00

jr_0ce_4072:
    ld d, l                                       ; $4072: $55
    ld b, [hl]                                    ; $4073: $46
    ld h, c                                       ; $4074: $61
    ld e, b                                       ; $4075: $58
    ld e, c                                       ; $4076: $59
    ld h, a                                       ; $4077: $67
    ld d, c                                       ; $4078: $51
    ld l, b                                       ; $4079: $68
    ld bc, $4a69                                  ; $407a: $01 $69 $4a
    ld e, d                                       ; $407d: $5a
    ld e, c                                       ; $407e: $59
    ld e, b                                       ; $407f: $58
    ld h, c                                       ; $4080: $61
    ld b, [hl]                                    ; $4081: $46
    ld e, a                                       ; $4082: $5f
    ld b, b                                       ; $4083: $40
    add b                                         ; $4084: $80
    ld h, c                                       ; $4085: $61
    jr jr_0ce_40d9                                ; $4086: $18 $51

    ld d, [hl]                                    ; $4088: $56
    ld d, a                                       ; $4089: $57
    ld l, d                                       ; $408a: $6a
    ld h, d                                       ; $408b: $62
    ld l, e                                       ; $408c: $6b
    ld l, h                                       ; $408d: $6c
    nop                                           ; $408e: $00
    ld l, l                                       ; $408f: $6d
    ld l, [hl]                                    ; $4090: $6e
    ld l, a                                       ; $4091: $6f
    ld c, d                                       ; $4092: $4a

jr_0ce_4093:
    ld h, d                                       ; $4093: $62
    ld l, d                                       ; $4094: $6a
    ld d, a                                       ; $4095: $57
    ld d, [hl]                                    ; $4096: $56
    ld h, b                                       ; $4097: $60
    ld d, c                                       ; $4098: $51
    ld e, a                                       ; $4099: $5f
    ld b, b                                       ; $409a: $40
    ld b, b                                       ; $409b: $40
    jr nz, jr_0ce_40e5                            ; $409c: $20 $47

    ld d, e                                       ; $409e: $53
    ld c, c                                       ; $409f: $49
    ld c, d                                       ; $40a0: $4a
    ld [hl], b                                    ; $40a1: $70
    nop                                           ; $40a2: $00
    ld e, l                                       ; $40a3: $5d
    ld e, h                                       ; $40a4: $5c
    ld [hl], c                                    ; $40a5: $71
    ld [hl], d                                    ; $40a6: $72
    ld c, c                                       ; $40a7: $49
    ld d, e                                       ; $40a8: $53
    ld b, a                                       ; $40a9: $47
    ld b, [hl]                                    ; $40aa: $46
    ld h, b                                       ; $40ab: $60
    ld d, l                                       ; $40ac: $55
    ld h, b                                       ; $40ad: $60
    ld b, b                                       ; $40ae: $40
    and b                                         ; $40af: $a0
    ld [$4545], sp                                ; $40b0: $08 $45 $45
    ld h, b                                       ; $40b3: $60
    ld d, d                                       ; $40b4: $52
    ld c, b                                       ; $40b5: $48
    nop                                           ; $40b6: $00
    ld d, h                                       ; $40b7: $54
    ld e, d                                       ; $40b8: $5a
    ld [hl], e                                    ; $40b9: $73
    ld [hl], h                                    ; $40ba: $74
    ld [hl], l                                    ; $40bb: $75
    halt                                          ; $40bc: $76

jr_0ce_40bd:
    ld d, c                                       ; $40bd: $51
    ld d, h                                       ; $40be: $54
    ld b, $48                                     ; $40bf: $06 $48
    ld d, d                                       ; $40c1: $52
    ld h, b                                       ; $40c2: $60
    ld b, l                                       ; $40c3: $45
    ld b, l                                       ; $40c4: $45
    and b                                         ; $40c5: $a0
    jr c, jr_0ce_40c8                             ; $40c6: $38 $00

jr_0ce_40c8:
    add hl, sp                                    ; $40c8: $39
    ld [hl], a                                    ; $40c9: $77
    inc b                                         ; $40ca: $04
    ld d, c                                       ; $40cb: $51
    ld a, b                                       ; $40cc: $78
    ld l, c                                       ; $40cd: $69
    ld c, d                                       ; $40ce: $4a
    ld a, c                                       ; $40cf: $79
    nop                                           ; $40d0: $00
    xor c                                         ; $40d1: $a9
    ld l, d                                       ; $40d2: $6a
    ld d, h                                       ; $40d3: $54
    nop                                           ; $40d4: $00
    ld h, [hl]                                    ; $40d5: $66
    ld e, d                                       ; $40d6: $5a
    ld h, l                                       ; $40d7: $65
    ld h, h                                       ; $40d8: $64

jr_0ce_40d9:
    ld h, e                                       ; $40d9: $63
    ld c, d                                       ; $40da: $4a
    ld d, h                                       ; $40db: $54
    ld l, d                                       ; $40dc: $6a
    add e                                         ; $40dd: $83
    nop                                           ; $40de: $00
    xor c                                         ; $40df: $a9
    ld e, a                                       ; $40e0: $5f
    ld e, [hl]                                    ; $40e1: $5e
    ld e, l                                       ; $40e2: $5d
    ld e, h                                       ; $40e3: $5c
    ld e, e                                       ; $40e4: $5b

jr_0ce_40e5:
    ret nz                                        ; $40e5: $c0

    nop                                           ; $40e6: $00
    nop                                           ; $40e7: $00
    add c                                         ; $40e8: $81
    ld a, b                                       ; $40e9: $78
    ld d, c                                       ; $40ea: $51
    nop                                           ; $40eb: $00
    ld de, $1160                                  ; $40ec: $11 $60 $11
    nop                                           ; $40ef: $00
    add hl, bc                                    ; $40f0: $09
    ldh [rBCPS], a                                ; $40f1: $e0 $68
    ld b, h                                       ; $40f3: $44
    ld b, l                                       ; $40f4: $45
    ld a, d                                       ; $40f5: $7a
    db $10                                        ; $40f6: $10
    ld d, d                                       ; $40f7: $52
    ld c, b                                       ; $40f8: $48
    ld h, d                                       ; $40f9: $62
    ld h, b                                       ; $40fa: $60
    add hl, de                                    ; $40fb: $19
    ld h, d                                       ; $40fc: $62
    ld c, b                                       ; $40fd: $48
    ld d, d                                       ; $40fe: $52
    ld a, d                                       ; $40ff: $7a
    add c                                         ; $4100: $81
    jr nz, jr_0ce_416c                            ; $4101: $20 $69

    ld d, b                                       ; $4103: $50
    ld d, c                                       ; $4104: $51
    ld b, [hl]                                    ; $4105: $46
    ld b, a                                       ; $4106: $47
    ld e, b                                       ; $4107: $58
    ld c, c                                       ; $4108: $49
    ld h, b                                       ; $4109: $60
    add hl, de                                    ; $410a: $19
    dec c                                         ; $410b: $0d
    ld c, c                                       ; $410c: $49
    ld e, b                                       ; $410d: $58
    ld b, a                                       ; $410e: $47
    ld b, [hl]                                    ; $410f: $46
    nop                                           ; $4110: $00
    ld [hl], c                                    ; $4111: $71
    ld h, b                                       ; $4112: $60
    add hl, bc                                    ; $4113: $09
    ld d, h                                       ; $4114: $54
    ld h, b                                       ; $4115: $60
    add hl, de                                    ; $4116: $19
    halt                                          ; $4117: $76
    ld d, h                                       ; $4118: $54
    ld h, b                                       ; $4119: $60
    ld h, c                                       ; $411a: $61
    nop                                           ; $411b: $00
    ld de, $01a0                                  ; $411c: $11 $a0 $01
    ld l, d                                       ; $411f: $6a
    ld h, b                                       ; $4120: $60
    add hl, hl                                    ; $4121: $29
    ld b, b                                       ; $4122: $40
    ld bc, $ff55                                  ; $4123: $01 $55 $ff
    nop                                           ; $4126: $00
    sub c                                         ; $4127: $91
    ld h, b                                       ; $4128: $60
    add hl, de                                    ; $4129: $19
    nop                                           ; $412a: $00
    cp d                                          ; $412b: $ba
    ld h, b                                       ; $412c: $60
    add hl, de                                    ; $412d: $19
    nop                                           ; $412e: $00
    jp nz, $1160                                  ; $412f: $c2 $60 $11

    nop                                           ; $4132: $00
    cp c                                          ; $4133: $b9
    ld h, b                                       ; $4134: $60
    add hl, de                                    ; $4135: $19
    ret nz                                        ; $4136: $c0

    nop                                           ; $4137: $00
    sbc c                                         ; $4138: $99
    nop                                           ; $4139: $00
    ld a, [bc]                                    ; $413a: $0a
    ld e, d                                       ; $413b: $5a
    ld c, d                                       ; $413c: $4a
    ld l, c                                       ; $413d: $69
    ld l, b                                       ; $413e: $68
    ld d, c                                       ; $413f: $51
    ld h, a                                       ; $4140: $67
    rst $38                                       ; $4141: $ff
    nop                                           ; $4142: $00
    ld a, [bc]                                    ; $4143: $0a
    nop                                           ; $4144: $00
    ld a, c                                       ; $4145: $79
    nop                                           ; $4146: $00
    ld a, [bc]                                    ; $4147: $0a
    add b                                         ; $4148: $80
    add hl, de                                    ; $4149: $19
    nop                                           ; $414a: $00
    cp d                                          ; $414b: $ba
    add b                                         ; $414c: $80
    add hl, de                                    ; $414d: $19
    nop                                           ; $414e: $00
    cp d                                          ; $414f: $ba
    ldh [rNR30], a                                ; $4150: $e0 $1a
    cp $00                                        ; $4152: $fe $00
    cp d                                          ; $4154: $ba
    ldh [rNR30], a                                ; $4155: $e0 $1a
    nop                                           ; $4157: $00
    cp d                                          ; $4158: $ba
    ldh [rNR30], a                                ; $4159: $e0 $1a
    nop                                           ; $415b: $00
    cp d                                          ; $415c: $ba
    ldh [rNR30], a                                ; $415d: $e0 $1a
    nop                                           ; $415f: $00
    adc e                                         ; $4160: $8b
    ld d, b                                       ; $4161: $50
    rst $38                                       ; $4162: $ff
    nop                                           ; $4163: $00
    ld [de], a                                    ; $4164: $12
    ldh [rNR30], a                                ; $4165: $e0 $1a
    nop                                           ; $4167: $00
    inc de                                        ; $4168: $13
    ret nz                                        ; $4169: $c0

    ld [hl], c                                    ; $416a: $71
    nop                                           ; $416b: $00

jr_0ce_416c:
    ld a, [bc]                                    ; $416c: $0a
    ldh [rNR43], a                                ; $416d: $e0 $22
    nop                                           ; $416f: $00
    ld [bc], a                                    ; $4170: $02
    nop                                           ; $4171: $00
    ld [hl], e                                    ; $4172: $73
    cp a                                          ; $4173: $bf
    and b                                         ; $4174: $a0
    inc bc                                        ; $4175: $03
    ld e, b                                       ; $4176: $58
    ldh [$2a], a                                  ; $4177: $e0 $2a
    nop                                           ; $4179: $00
    sub d                                         ; $417a: $92
    ret nz                                        ; $417b: $c0

    ld h, e                                       ; $417c: $63
    nop                                           ; $417d: $00
    ld l, e                                       ; $417e: $6b
    add b                                         ; $417f: $80
    ld l, c                                       ; $4180: $69
    nop                                           ; $4181: $00
    dec hl                                        ; $4182: $2b
    ld b, b                                       ; $4183: $40
    ld c, $01                                     ; $4184: $0e $01
    db $10                                        ; $4186: $10
    inc c                                         ; $4187: $0c
    ld c, h                                       ; $4188: $4c
    inc c                                         ; $4189: $0c
    ld [$0a08], sp                                ; $418a: $08 $08 $0a
    nop                                           ; $418d: $00
    ld a, [bc]                                    ; $418e: $0a
    ld a, [bc]                                    ; $418f: $0a
    dec bc                                        ; $4190: $0b
    inc c                                         ; $4191: $0c
    dec bc                                        ; $4192: $0b
    ld c, $0a                                     ; $4193: $0e $0a
    ld a, [hl+]                                   ; $4195: $2a
    nop                                           ; $4196: $00
    dec l                                         ; $4197: $2d
    jr z, jr_0ce_41c2                             ; $4198: $28 $28

    inc l                                         ; $419a: $2c
    ld l, h                                       ; $419b: $6c
    inc l                                         ; $419c: $2c
    ld l, $2e                                     ; $419d: $2e $2e
    ld a, b                                       ; $419f: $78
    ld l, $1d                                     ; $41a0: $2e $1d
    jr jr_0ce_41c4                                ; $41a2: $18 $20

    ld [$0001], sp                                ; $41a4: $08 $01 $00
    ld hl, $6a00                                  ; $41a7: $21 $00 $6a
    ld l, h                                       ; $41aa: $6c
    ld l, e                                       ; $41ab: $6b
    nop                                           ; $41ac: $00
    ld l, h                                       ; $41ad: $6c
    ld l, e                                       ; $41ae: $6b
    ld l, d                                       ; $41af: $6a
    ld a, [hl+]                                   ; $41b0: $2a
    jr z, @+$2a                                   ; $41b1: $28 $28

    jr z, jr_0ce_41c1                             ; $41b3: $28 $0c

    ld b, h                                       ; $41b5: $44
    inc c                                         ; $41b6: $0c
    jr nz, jr_0ce_4221                            ; $41b7: $20 $68

    ld [$0d08], sp                                ; $41b9: $08 $08 $0d
    ld b, c                                       ; $41bc: $41
    nop                                           ; $41bd: $00
    ld a, [bc]                                    ; $41be: $0a
    ld a, [bc]                                    ; $41bf: $0a
    inc bc                                        ; $41c0: $03

jr_0ce_41c1:
    inc c                                         ; $41c1: $0c

jr_0ce_41c2:
    dec bc                                        ; $41c2: $0b
    ld a, [hl+]                                   ; $41c3: $2a

jr_0ce_41c4:
    ld a, [hl+]                                   ; $41c4: $2a
    jr z, jr_0ce_41f3                             ; $41c5: $28 $2c

    ld bc, $4000                                  ; $41c7: $01 $00 $40
    ld c, b                                       ; $41ca: $48
    add b                                         ; $41cb: $80
    ld b, c                                       ; $41cc: $41
    nop                                           ; $41cd: $00
    ld [$4a08], sp                                ; $41ce: $08 $08 $4a
    ld a, [bc]                                    ; $41d1: $0a
    ld l, d                                       ; $41d2: $6a
    ld c, $0b                                     ; $41d3: $0e $0b
    sbc h                                         ; $41d5: $9c
    ld h, h                                       ; $41d6: $64
    nop                                           ; $41d7: $00
    ld a, [hl+]                                   ; $41d8: $2a
    ld l, l                                       ; $41d9: $6d
    jr nz, jr_0ce_41e4                            ; $41da: $20 $08

    rra                                           ; $41dc: $1f
    ld d, b                                       ; $41dd: $50
    add c                                         ; $41de: $81
    nop                                           ; $41df: $00
    ld [$0008], sp                                ; $41e0: $08 $08 $00
    ld c, b                                       ; $41e3: $48

jr_0ce_41e4:
    ld [$0a0b], sp                                ; $41e4: $08 $0b $0a
    dec bc                                        ; $41e7: $0b
    ld a, [bc]                                    ; $41e8: $0a

jr_0ce_41e9:
    ld l, d                                       ; $41e9: $6a
    dec c                                         ; $41ea: $0d
    dec c                                         ; $41eb: $0d
    ld a, [hl+]                                   ; $41ec: $2a
    ld l, d                                       ; $41ed: $6a
    jr z, jr_0ce_421c                             ; $41ee: $28 $2c

    ld e, a                                       ; $41f0: $5f
    ld e, b                                       ; $41f1: $58
    add c                                         ; $41f2: $81

jr_0ce_41f3:
    db $10                                        ; $41f3: $10
    ld c, b                                       ; $41f4: $48
    ld h, b                                       ; $41f5: $60
    nop                                           ; $41f6: $00
    add c                                         ; $41f7: $81
    and b                                         ; $41f8: $a0
    nop                                           ; $41f9: $00
    inc c                                         ; $41fa: $0c
    ld c, d                                       ; $41fb: $4a
    ld a, [hl+]                                   ; $41fc: $2a
    dec l                                         ; $41fd: $2d
    ld l, b                                       ; $41fe: $68
    jr z, jr_0ce_4221                             ; $41ff: $28 $20

    ld [hl], b                                    ; $4201: $70
    nop                                           ; $4202: $00
    ld c, h                                       ; $4203: $4c
    ld c, h                                       ; $4204: $4c
    ld [$4a48], sp                                ; $4205: $08 $48 $4a
    ld a, [hl+]                                   ; $4208: $2a
    ld a, [bc]                                    ; $4209: $0a
    ld a, [hl+]                                   ; $420a: $2a
    ld bc, $0e2a                                  ; $420b: $01 $2a $0e
    dec bc                                        ; $420e: $0b
    ld l, d                                       ; $420f: $6a
    ld l, b                                       ; $4210: $68
    jr z, jr_0ce_427f                             ; $4211: $28 $6c

    cp a                                          ; $4213: $bf
    ld e, b                                       ; $4214: $58
    sub h                                         ; $4215: $94
    rra                                           ; $4216: $1f
    ld [$4848], sp                                ; $4217: $08 $48 $48
    add b                                         ; $421a: $80
    nop                                           ; $421b: $00

jr_0ce_421c:
    dec bc                                        ; $421c: $0b
    ld h, d                                       ; $421d: $62
    nop                                           ; $421e: $00
    inc c                                         ; $421f: $0c
    ld a, [hl+]                                   ; $4220: $2a

jr_0ce_4221:
    inc e                                         ; $4221: $1c
    ld l, d                                       ; $4222: $6a
    ld l, b                                       ; $4223: $68
    ld l, b                                       ; $4224: $68
    ld hl, $3f60                                  ; $4225: $21 $60 $3f
    nop                                           ; $4228: $00
    ld bc, $0c09                                  ; $4229: $01 $09 $0c
    ld a, [bc]                                    ; $422c: $0a
    jr c, @+$0e                                   ; $422d: $38 $0c

    inc l                                         ; $422f: $2c
    and b                                         ; $4230: $a0
    nop                                           ; $4231: $00
    ldh [rP1], a                                  ; $4232: $e0 $00
    nop                                           ; $4234: $00
    ld a, c                                       ; $4235: $79
    ld [$4d08], sp                                ; $4236: $08 $08 $4d
    ld bc, $6b0a                                  ; $4239: $01 $0a $6b
    ld l, d                                       ; $423c: $6a
    ld l, d                                       ; $423d: $6a
    ld l, e                                       ; $423e: $6b
    ld l, e                                       ; $423f: $6b
    ld a, [bc]                                    ; $4240: $0a
    and b                                         ; $4241: $a0
    db $10                                        ; $4242: $10
    rst $00                                       ; $4243: $c7
    nop                                           ; $4244: $00
    ld [hl], c                                    ; $4245: $71
    ld b, c                                       ; $4246: $41
    add hl, bc                                    ; $4247: $09
    ld l, e                                       ; $4248: $6b
    ld l, h                                       ; $4249: $6c
    ld l, d                                       ; $424a: $6a
    ld bc, $2000                                  ; $424b: $01 $00 $20
    ld bc, $8100                                  ; $424e: $01 $00 $81
    ld a, b                                       ; $4251: $78
    inc c                                         ; $4252: $0c
    ld b, b                                       ; $4253: $40
    nop                                           ; $4254: $00
    ret nz                                        ; $4255: $c0

    db $10                                        ; $4256: $10
    ld b, b                                       ; $4257: $40
    ld [$80c0], sp                                ; $4258: $08 $c0 $80
    ld [$2a08], sp                                ; $425b: $08 $08 $2a
    ld a, [bc]                                    ; $425e: $0a
    ld a, [bc]                                    ; $425f: $0a
    ld l, d                                       ; $4260: $6a
    ld l, [hl]                                    ; $4261: $6e
    ld l, h                                       ; $4262: $6c
    ld h, b                                       ; $4263: $60
    add hl, bc                                    ; $4264: $09
    ld a, [bc]                                    ; $4265: $0a
    jr nz, jr_0ce_41e9                            ; $4266: $20 $81

    inc c                                         ; $4268: $0c
    add hl, hl                                    ; $4269: $29
    ld [$4048], sp                                ; $426a: $08 $48 $40
    nop                                           ; $426d: $00
    inc c                                         ; $426e: $0c
    ld h, b                                       ; $426f: $60
    ld de, $686d                                  ; $4270: $11 $6d $68
    jr nz, @-$6d                                  ; $4273: $20 $91

    jp z, $18e0                                   ; $4275: $ca $e0 $18

    ld h, b                                       ; $4278: $60
    ld bc, $686a                                  ; $4279: $01 $6a $68
    ld a, a                                       ; $427c: $7f
    ld [hl], c                                    ; $427d: $71
    ld c, h                                       ; $427e: $4c

jr_0ce_427f:
    ld b, b                                       ; $427f: $40
    ld bc, $df48                                  ; $4280: $01 $48 $df
    ld e, [hl]                                    ; $4283: $5e
    ld bc, $1160                                  ; $4284: $01 $60 $11
    ld l, b                                       ; $4287: $68
    jr nz, jr_0ce_428a                            ; $4288: $20 $00

jr_0ce_428a:
    nop                                           ; $428a: $00
    ld l, c                                       ; $428b: $69
    ret nz                                        ; $428c: $c0

    add hl, de                                    ; $428d: $19
    ld h, b                                       ; $428e: $60
    add hl, de                                    ; $428f: $19
    pop bc                                        ; $4290: $c1
    ld [$009e], sp                                ; $4291: $08 $9e $00
    add d                                         ; $4294: $82
    ld a, [bc]                                    ; $4295: $0a
    ld a, [bc]                                    ; $4296: $0a
    ld h, b                                       ; $4297: $60
    add hl, bc                                    ; $4298: $09
    ldh [rSB], a                                  ; $4299: $e0 $01
    nop                                           ; $429b: $00
    or d                                          ; $429c: $b2
    ld h, b                                       ; $429d: $60
    ld de, $ec0e                                  ; $429e: $11 $0e $ec
    nop                                           ; $42a1: $00
    sbc d                                         ; $42a2: $9a
    nop                                           ; $42a3: $00
    add hl, bc                                    ; $42a4: $09
    ld h, b                                       ; $42a5: $60
    ld hl, $006d                                  ; $42a6: $21 $6d $00
    adc c                                         ; $42a9: $89
    pop hl                                        ; $42aa: $e1
    nop                                           ; $42ab: $00
    ld a, [bc]                                    ; $42ac: $0a
    ld l, l                                       ; $42ad: $6d
    ld b, $0a                                     ; $42ae: $06 $0a
    ld l, d                                       ; $42b0: $6a
    ld l, e                                       ; $42b1: $6b
    ld a, [bc]                                    ; $42b2: $0a
    ld l, e                                       ; $42b3: $6b
    nop                                           ; $42b4: $00
    ld a, [bc]                                    ; $42b5: $0a
    nop                                           ; $42b6: $00
    adc c                                         ; $42b7: $89
    dec c                                         ; $42b8: $0d
    add hl, hl                                    ; $42b9: $29
    ld a, [bc]                                    ; $42ba: $0a
    ld l, [hl]                                    ; $42bb: $6e
    add b                                         ; $42bc: $80
    add hl, bc                                    ; $42bd: $09
    inc c                                         ; $42be: $0c
    nop                                           ; $42bf: $00
    xor d                                         ; $42c0: $aa
    ld c, d                                       ; $42c1: $4a
    ld c, d                                       ; $42c2: $4a
    add b                                         ; $42c3: $80
    ld de, $84ef                                  ; $42c4: $11 $ef $84
    ld bc, $9a00                                  ; $42c7: $01 $00 $9a
    add b                                         ; $42ca: $80
    ld sp, $ff6d                                  ; $42cb: $31 $6d $ff
    ld bc, $8100                                  ; $42ce: $01 $00 $81
    ldh [$0a], a                                  ; $42d1: $e0 $0a
    add b                                         ; $42d3: $80
    ld de, $00fe                                  ; $42d4: $11 $fe $00
    sub c                                         ; $42d7: $91
    ret nz                                        ; $42d8: $c0

    ld a, [bc]                                    ; $42d9: $0a
    add b                                         ; $42da: $80
    ld hl, $b200                                  ; $42db: $21 $00 $b2
    add b                                         ; $42de: $80
    ld hl, $0a40                                  ; $42df: $21 $40 $0a
    nop                                           ; $42e2: $00
    add d                                         ; $42e3: $82
    ld c, d                                       ; $42e4: $4a
    db $ec                                        ; $42e5: $ec
    add b                                         ; $42e6: $80
    add hl, hl                                    ; $42e7: $29
    nop                                           ; $42e8: $00
    ld [bc], a                                    ; $42e9: $02
    nop                                           ; $42ea: $00
    adc e                                         ; $42eb: $8b
    ld a, [hl+]                                   ; $42ec: $2a
    add b                                         ; $42ed: $80
    inc bc                                        ; $42ee: $03
    ld l, d                                       ; $42ef: $6a
    inc bc                                        ; $42f0: $03
    ld c, d                                       ; $42f1: $4a
    ld a, [hl+]                                   ; $42f2: $2a
    ld d, e                                       ; $42f3: $53
    ld [$8300], sp                                ; $42f4: $08 $00 $83
    ld c, h                                       ; $42f7: $4c
    ldh [$09], a                                  ; $42f8: $e0 $09
    ld a, [hl+]                                   ; $42fa: $2a
    inc c                                         ; $42fb: $0c
    add b                                         ; $42fc: $80
    ld de, $02e1                                  ; $42fd: $11 $e1 $02

Call_0ce_4300:
    ld a, h                                       ; $4300: $7c
    ld [$7a20], sp                                ; $4301: $08 $20 $7a
    ret nz                                        ; $4304: $c0

    ld e, e                                       ; $4305: $5b
    nop                                           ; $4306: $00
    ld a, d                                       ; $4307: $7a
    add b                                         ; $4308: $80
    ld e, c                                       ; $4309: $59
    ldh [$2b], a                                  ; $430a: $e0 $2b
    jr nz, jr_0ce_430e                            ; $430c: $20 $00

jr_0ce_430e:
    ld c, $00                                     ; $430e: $0e $00
    rst $00                                       ; $4310: $c7
    ld bc, $4032                                  ; $4311: $01 $32 $40
    ld b, c                                       ; $4314: $41
    ld bc, $0608                                  ; $4315: $01 $08 $06
    nop                                           ; $4318: $00
    ld b, b                                       ; $4319: $40
    ld b, d                                       ; $431a: $42
    ld bc, $4010                                  ; $431b: $01 $10 $40
    ldh a, [rSB]                                  ; $431e: $f0 $01
    jr c, jr_0ce_4331                             ; $4320: $38 $0f

    db $10                                        ; $4322: $10
    ld de, $1718                                  ; $4323: $11 $18 $17
    nop                                           ; $4326: $00
    ld b, d                                       ; $4327: $42
    ld b, d                                       ; $4328: $42
    ld b, e                                       ; $4329: $43
    ld b, h                                       ; $432a: $44
    nop                                           ; $432b: $00
    ld b, l                                       ; $432c: $45
    ld b, [hl]                                    ; $432d: $46
    ld b, a                                       ; $432e: $47
    ld b, d                                       ; $432f: $42
    ld b, d                                       ; $4330: $42

jr_0ce_4331:
    ld b, a                                       ; $4331: $47
    ld b, d                                       ; $4332: $42
    ld b, h                                       ; $4333: $44
    add c                                         ; $4334: $81
    dec hl                                        ; $4335: $2b
    jr jr_0ce_437a                                ; $4336: $18 $42

    ld b, a                                       ; $4338: $47
    ld b, e                                       ; $4339: $43
    ld b, h                                       ; $433a: $44
    ld b, d                                       ; $433b: $42
    ld b, e                                       ; $433c: $43
    ld a, [bc]                                    ; $433d: $0a
    jr jr_0ce_4340                                ; $433e: $18 $00

jr_0ce_4340:
    ld b, d                                       ; $4340: $42
    ld b, d                                       ; $4341: $42
    ld b, h                                       ; $4342: $44
    ld b, h                                       ; $4343: $44
    ld c, b                                       ; $4344: $48
    ld c, c                                       ; $4345: $49
    ld c, d                                       ; $4346: $4a
    ld c, e                                       ; $4347: $4b
    nop                                           ; $4348: $00
    ld c, h                                       ; $4349: $4c
    ld b, l                                       ; $434a: $45
    ld b, h                                       ; $434b: $44
    ld b, e                                       ; $434c: $43
    ld b, h                                       ; $434d: $44
    ld b, [hl]                                    ; $434e: $46
    ld b, [hl]                                    ; $434f: $46
    ld b, a                                       ; $4350: $47
    ld b, b                                       ; $4351: $40
    ld b, e                                       ; $4352: $43
    daa                                           ; $4353: $27
    nop                                           ; $4354: $00
    ld b, e                                       ; $4355: $43
    ld b, a                                       ; $4356: $47
    ld b, [hl]                                    ; $4357: $46
    ld b, l                                       ; $4358: $45
    ld b, h                                       ; $4359: $44
    ld c, h                                       ; $435a: $4c
    ld h, b                                       ; $435b: $60
    ld b, h                                       ; $435c: $44
    add hl, bc                                    ; $435d: $09
    nop                                           ; $435e: $00
    add hl, sp                                    ; $435f: $39
    ld [$4948], sp                                ; $4360: $08 $48 $49
    ld c, l                                       ; $4363: $4d
    ld c, [hl]                                    ; $4364: $4e
    ld c, a                                       ; $4365: $4f
    nop                                           ; $4366: $00
    ld d, b                                       ; $4367: $50
    ld d, c                                       ; $4368: $51
    ld c, d                                       ; $4369: $4a
    ld c, c                                       ; $436a: $49
    ld c, b                                       ; $436b: $48
    ld c, c                                       ; $436c: $49
    ld c, e                                       ; $436d: $4b
    ld c, e                                       ; $436e: $4b
    ld b, b                                       ; $436f: $40
    ld c, h                                       ; $4370: $4c
    dec de                                        ; $4371: $1b
    ld [$4c48], sp                                ; $4372: $08 $48 $4c
    ld c, e                                       ; $4375: $4b
    ld c, d                                       ; $4376: $4a
    ld c, c                                       ; $4377: $49
    ld d, c                                       ; $4378: $51
    ld h, b                                       ; $4379: $60

jr_0ce_437a:
    ld d, d                                       ; $437a: $52
    ld d, l                                       ; $437b: $55
    nop                                           ; $437c: $00
    add hl, sp                                    ; $437d: $39
    ld [$4e4d], sp                                ; $437e: $08 $4d $4e
    ld d, e                                       ; $4381: $53
    ld d, h                                       ; $4382: $54
    ld d, l                                       ; $4383: $55
    nop                                           ; $4384: $00
    ld d, [hl]                                    ; $4385: $56
    ld d, a                                       ; $4386: $57
    ld e, b                                       ; $4387: $58
    ld e, c                                       ; $4388: $59
    ld e, d                                       ; $4389: $5a
    ld e, e                                       ; $438a: $5b
    ld d, b                                       ; $438b: $50
    ld d, b                                       ; $438c: $50
    ld b, b                                       ; $438d: $40
    ld d, c                                       ; $438e: $51
    dec de                                        ; $438f: $1b
    ld [$514d], sp                                ; $4390: $08 $4d $51
    ld d, b                                       ; $4393: $50
    ld c, a                                       ; $4394: $4f
    ld c, [hl]                                    ; $4395: $4e
    ld e, h                                       ; $4396: $5c
    db $10                                        ; $4397: $10
    ld e, l                                       ; $4398: $5d
    ld e, [hl]                                    ; $4399: $5e
    ld e, a                                       ; $439a: $5f
    add hl, sp                                    ; $439b: $39
    db $10                                        ; $439c: $10
    ld d, e                                       ; $439d: $53
    ld d, h                                       ; $439e: $54
    ld h, b                                       ; $439f: $60
    ld h, c                                       ; $43a0: $61
    nop                                           ; $43a1: $00
    ld h, d                                       ; $43a2: $62
    ld h, e                                       ; $43a3: $63
    ld h, b                                       ; $43a4: $60
    ld h, h                                       ; $43a5: $64
    ld h, l                                       ; $43a6: $65
    ld h, b                                       ; $43a7: $60
    ld h, [hl]                                    ; $43a8: $66
    ld d, [hl]                                    ; $43a9: $56
    jr nz, jr_0ce_4402                            ; $43aa: $20 $56

    ld d, a                                       ; $43ac: $57
    dec de                                        ; $43ad: $1b
    ld [$6756], sp                                ; $43ae: $08 $56 $67
    ld l, b                                       ; $43b1: $68
    ld l, c                                       ; $43b2: $69
    ld l, d                                       ; $43b3: $6a
    nop                                           ; $43b4: $00
    ld l, e                                       ; $43b5: $6b
    ld l, h                                       ; $43b6: $6c
    ld e, b                                       ; $43b7: $58
    ld e, c                                       ; $43b8: $59
    ld l, h                                       ; $43b9: $6c
    ld h, c                                       ; $43ba: $61
    ld l, l                                       ; $43bb: $6d
    ld l, b                                       ; $43bc: $68
    ld [$6c67], sp                                ; $43bd: $08 $67 $6c
    ld l, [hl]                                    ; $43c0: $6e
    ld l, a                                       ; $43c1: $6f
    ld c, $00                                     ; $43c2: $0e $00
    ld [hl], b                                    ; $43c4: $70
    ld l, a                                       ; $43c5: $6f
    ld l, [hl]                                    ; $43c6: $6e
    nop                                           ; $43c7: $00
    ld [hl], c                                    ; $43c8: $71
    ld l, l                                       ; $43c9: $6d
    ld l, e                                       ; $43ca: $6b
    ld l, h                                       ; $43cb: $6c
    ld h, b                                       ; $43cc: $60
    ld h, a                                       ; $43cd: $67
    ld l, b                                       ; $43ce: $68
    ld l, l                                       ; $43cf: $6d
    nop                                           ; $43d0: $00
    ld h, c                                       ; $43d1: $61
    ld l, h                                       ; $43d2: $6c
    ld [hl], d                                    ; $43d3: $72
    ld h, b                                       ; $43d4: $60
    ld l, l                                       ; $43d5: $6d
    ld [hl], e                                    ; $43d6: $73
    ld c, [hl]                                    ; $43d7: $4e
    ld [hl], h                                    ; $43d8: $74
    nop                                           ; $43d9: $00
    ld h, a                                       ; $43da: $67
    ld [hl], d                                    ; $43db: $72
    ld [hl], h                                    ; $43dc: $74
    ld e, h                                       ; $43dd: $5c
    ld l, b                                       ; $43de: $68
    ld h, b                                       ; $43df: $60
    ld [hl], d                                    ; $43e0: $72
    ld [hl], h                                    ; $43e1: $74
    jr nz, jr_0ce_4459                            ; $43e2: $20 $75

    halt                                          ; $43e4: $76
    add hl, de                                    ; $43e5: $19
    nop                                           ; $43e6: $00
    ld l, d                                       ; $43e7: $6a
    halt                                          ; $43e8: $76
    ld [hl], l                                    ; $43e9: $75
    ld h, b                                       ; $43ea: $60
    ld [hl], d                                    ; $43eb: $72
    nop                                           ; $43ec: $00
    ld [hl], a                                    ; $43ed: $77
    ld [hl], e                                    ; $43ee: $73
    ld h, b                                       ; $43ef: $60
    ld [hl], d                                    ; $43f0: $72
    ld h, a                                       ; $43f1: $67
    ld l, b                                       ; $43f2: $68
    ld e, h                                       ; $43f3: $5c
    ld l, l                                       ; $43f4: $6d
    nop                                           ; $43f5: $00
    ld e, c                                       ; $43f6: $59
    ld e, b                                       ; $43f7: $58
    ld e, l                                       ; $43f8: $5d
    ld d, c                                       ; $43f9: $51
    ld c, c                                       ; $43fa: $49
    ld c, a                                       ; $43fb: $4f
    ld l, b                                       ; $43fc: $68
    ld h, a                                       ; $43fd: $67
    db $10                                        ; $43fe: $10
    ld d, b                                       ; $43ff: $50
    ld d, c                                       ; $4400: $51
    ld e, l                                       ; $4401: $5d

jr_0ce_4402:
    ld a, [hl]                                    ; $4402: $7e
    ld [$6160], sp                                ; $4403: $08 $60 $61
    ld a, b                                       ; $4406: $78
    ld [hl], e                                    ; $4407: $73
    nop                                           ; $4408: $00
    ld h, b                                       ; $4409: $60
    ld a, c                                       ; $440a: $79
    ld h, a                                       ; $440b: $67
    ld l, d                                       ; $440c: $6a
    ld [hl], c                                    ; $440d: $71
    ld l, l                                       ; $440e: $6d
    ld d, [hl]                                    ; $440f: $56
    ld d, a                                       ; $4410: $57
    add b                                         ; $4411: $80
    dec de                                        ; $4412: $1b
    ld [$5f50], sp                                ; $4413: $08 $50 $5f
    ld e, [hl]                                    ; $4416: $5e
    ld d, d                                       ; $4417: $52
    ld c, h                                       ; $4418: $4c
    ld b, h                                       ; $4419: $44
    ld c, d                                       ; $441a: $4a
    ld b, $50                                     ; $441b: $06 $50
    ld d, c                                       ; $441d: $51
    ld c, e                                       ; $441e: $4b
    ld c, h                                       ; $441f: $4c
    ld d, d                                       ; $4420: $52
    cp [hl]                                       ; $4421: $be
    ld [$10a0], sp                                ; $4422: $08 $a0 $10
    ld a, d                                       ; $4425: $7a
    ld [bc], a                                    ; $4426: $02
    ld h, h                                       ; $4427: $64
    ld h, l                                       ; $4428: $65
    ld a, e                                       ; $4429: $7b
    ld h, [hl]                                    ; $442a: $66
    ld d, b                                       ; $442b: $50
    ld d, c                                       ; $442c: $51
    dec de                                        ; $442d: $1b
    ld [$884b], sp                                ; $442e: $08 $4b $88
    rst $18                                       ; $4431: $df
    nop                                           ; $4432: $00
    ld b, d                                       ; $4433: $42
    ld b, e                                       ; $4434: $43
    ld b, l                                       ; $4435: $45
    db $f4                                        ; $4436: $f4
    nop                                           ; $4437: $00
    ld b, a                                       ; $4438: $47
    ld a, h                                       ; $4439: $7c
    ld b, d                                       ; $443a: $42
    ret nz                                        ; $443b: $c0

    cp $00                                        ; $443c: $fe $00
    ldh [rNR10], a                                ; $443e: $e0 $10
    ld e, l                                       ; $4440: $5d
    ld e, b                                       ; $4441: $58
    ld e, c                                       ; $4442: $59
    ld c, a                                       ; $4443: $4f
    ld d, b                                       ; $4444: $50
    ld c, e                                       ; $4445: $4b
    ld sp, $434c                                  ; $4446: $31 $4c $43
    dec l                                         ; $4449: $2d
    add hl, bc                                    ; $444a: $09
    ld d, d                                       ; $444b: $52
    ld de, $4644                                  ; $444c: $11 $44 $46
    ld b, a                                       ; $444f: $47
    inc bc                                        ; $4450: $03
    ld bc, $3ec0                                  ; $4451: $01 $c0 $3e
    add hl, bc                                    ; $4454: $09
    jr nz, @+$13                                  ; $4455: $20 $11

    ld d, d                                       ; $4457: $52
    ld e, [hl]                                    ; $4458: $5e

jr_0ce_4459:
    ld e, a                                       ; $4459: $5f
    ld c, d                                       ; $445a: $4a
    ld a, l                                       ; $445b: $7d
    ld b, [hl]                                    ; $445c: $46
    dec de                                        ; $445d: $1b
    ld b, a                                       ; $445e: $47
    ld b, a                                       ; $445f: $47
    ld b, d                                       ; $4460: $42
    ld c, h                                       ; $4461: $4c
    ld de, $0966                                  ; $4462: $11 $66 $09
    ld b, e                                       ; $4465: $43
    ld [$5710], sp                                ; $4466: $08 $10 $57
    ld bc, $4541                                  ; $4469: $01 $41 $45
    ld h, b                                       ; $446c: $60
    add hl, bc                                    ; $446d: $09
    ld a, h                                       ; $446e: $7c
    ld a, [hl]                                    ; $446f: $7e
    ld b, a                                       ; $4470: $47
    ld a, h                                       ; $4471: $7c
    ld b, l                                       ; $4472: $45
    ld d, l                                       ; $4473: $55
    ld bc, $11fe                                  ; $4474: $01 $fe $11
    ld [$098d], sp                                ; $4477: $08 $8d $09
    sbc b                                         ; $447a: $98
    add hl, bc                                    ; $447b: $09
    ld b, $00                                     ; $447c: $06 $00
    sbc a                                         ; $447e: $9f
    ld bc, $09a1                                  ; $447f: $01 $a1 $09
    ld a, d                                       ; $4482: $7a

jr_0ce_4483:
    add hl, bc                                    ; $4483: $09
    ld b, a                                       ; $4484: $47
    and d                                         ; $4485: $a2
    and h                                         ; $4486: $a4
    ld de, $a941                                  ; $4487: $11 $41 $a9
    ld de, $4141                                  ; $448a: $11 $41 $41
    ld a, [bc]                                    ; $448d: $0a
    ld bc, $0830                                  ; $448e: $01 $30 $08
    rlca                                          ; $4491: $07
    ld [$0b0b], sp                                ; $4492: $08 $0b $0b
    ld [$1008], sp                                ; $4495: $08 $08 $10
    jr c, jr_0ce_44ab                             ; $4498: $38 $11

    nop                                           ; $449a: $00
    rrca                                          ; $449b: $0f
    nop                                           ; $449c: $00
    pop af                                        ; $449d: $f1
    ld de, $1718                                  ; $449e: $11 $18 $17
    nop                                           ; $44a1: $00
    rra                                           ; $44a2: $1f
    ld [$0002], sp                                ; $44a3: $08 $02 $00
    ld [$2808], sp                                ; $44a6: $08 $08 $28
    jr jr_0ce_44b3                                ; $44a9: $18 $08

jr_0ce_44ab:
    cp [hl]                                       ; $44ab: $be
    inc b                                         ; $44ac: $04
    db $10                                        ; $44ad: $10
    dec hl                                        ; $44ae: $2b
    jr nc, jr_0ce_44b1                            ; $44af: $30 $00

jr_0ce_44b1:
    inc sp                                        ; $44b1: $33
    nop                                           ; $44b2: $00

jr_0ce_44b3:
    ld a, [bc]                                    ; $44b3: $0a
    ld [$002c], sp                                ; $44b4: $08 $2c $00
    ld a, $08                                     ; $44b7: $3e $08
    dec bc                                        ; $44b9: $0b
    dec bc                                        ; $44ba: $0b
    dec bc                                        ; $44bb: $0b
    dec hl                                        ; $44bc: $2b
    dec hl                                        ; $44bd: $2b
    dec hl                                        ; $44be: $2b
    jr z, @+$0a                                   ; $44bf: $28 $08

    ld c, e                                       ; $44c1: $4b
    ld c, h                                       ; $44c2: $4c
    nop                                           ; $44c3: $00
    dec bc                                        ; $44c4: $0b
    nop                                           ; $44c5: $00
    di                                            ; $44c6: $f3
    dec c                                         ; $44c7: $0d
    ld [$1010], sp                                ; $44c8: $08 $10 $10
    dec sp                                        ; $44cb: $3b
    jr jr_0ce_4520                                ; $44cc: $18 $52

    nop                                           ; $44ce: $00
    jr z, jr_0ce_44f9                             ; $44cf: $28 $28

    jr nz, jr_0ce_44e3                            ; $44d1: $20 $10

    inc e                                         ; $44d3: $1c
    db $10                                        ; $44d4: $10
    ei                                            ; $44d5: $fb
    ld hl, $5708                                  ; $44d6: $21 $08 $57
    db $10                                        ; $44d9: $10
    ld a, e                                       ; $44da: $7b
    jr jr_0ce_44df                                ; $44db: $18 $02

    ld b, b                                       ; $44dd: $40
    ld b, a                                       ; $44de: $47

jr_0ce_44df:
    ld [$0128], sp                                ; $44df: $08 $28 $01
    db $10                                        ; $44e2: $10

jr_0ce_44e3:
    rla                                           ; $44e3: $17
    ld b, b                                       ; $44e4: $40
    ld b, a                                       ; $44e5: $47
    add hl, bc                                    ; $44e6: $09
    ld bc, $0808                                  ; $44e7: $01 $08 $08
    ld [$4769], sp                                ; $44ea: $08 $69 $47
    jr @+$1d                                      ; $44ed: $18 $1b

    db $10                                        ; $44ef: $10
    ld [de], a                                    ; $44f0: $12
    jr jr_0ce_4483                                ; $44f1: $18 $90

    dec d                                         ; $44f3: $15
    nop                                           ; $44f4: $00
    jr z, jr_0ce_451f                             ; $44f5: $28 $28

    ld e, $10                                     ; $44f7: $1e $10

jr_0ce_44f9:
    add hl, hl                                    ; $44f9: $29
    add hl, bc                                    ; $44fa: $09
    add hl, hl                                    ; $44fb: $29
    add hl, hl                                    ; $44fc: $29
    ret nz                                        ; $44fd: $c0

    ld [hl+], a                                   ; $44fe: $22
    ld [$1012], sp                                ; $44ff: $08 $12 $10
    jr z, jr_0ce_450c                             ; $4502: $28 $08

    add hl, bc                                    ; $4504: $09
    jr z, jr_0ce_450f                             ; $4505: $28 $08

    ld c, b                                       ; $4507: $48
    ld bc, $2809                                  ; $4508: $01 $09 $28
    ld l, b                                       ; $450b: $68

jr_0ce_450c:
    add hl, bc                                    ; $450c: $09
    ld c, b                                       ; $450d: $48
    ld l, b                                       ; $450e: $68

jr_0ce_450f:
    add hl, bc                                    ; $450f: $09
    jr nz, jr_0ce_451a                            ; $4510: $20 $08

    ld [hl+], a                                   ; $4512: $22
    jr z, jr_0ce_457e                             ; $4513: $28 $69

    rra                                           ; $4515: $1f
    nop                                           ; $4516: $00
    add hl, hl                                    ; $4517: $29
    add hl, bc                                    ; $4518: $09
    ld l, b                                       ; $4519: $68

jr_0ce_451a:
    ld b, a                                       ; $451a: $47
    ld [$0f48], sp                                ; $451b: $08 $48 $0f
    ld c, b                                       ; $451e: $48

jr_0ce_451f:
    ld l, b                                       ; $451f: $68

jr_0ce_4520:
    ld c, b                                       ; $4520: $48
    ld l, b                                       ; $4521: $68
    ld bc, $0800                                  ; $4522: $01 $00 $08
    nop                                           ; $4525: $00
    inc b                                         ; $4526: $04
    nop                                           ; $4527: $00
    ld [bc], a                                    ; $4528: $02
    stop                                          ; $4529: $10 $00
    ld l, c                                       ; $452b: $69
    ld c, b                                       ; $452c: $48
    add hl, bc                                    ; $452d: $09
    add hl, bc                                    ; $452e: $09
    ld l, c                                       ; $452f: $69
    add hl, bc                                    ; $4530: $09
    ld l, b                                       ; $4531: $68
    ld c, c                                       ; $4532: $49
    db $e4                                        ; $4533: $e4
    rrca                                          ; $4534: $0f
    ld [$081b], sp                                ; $4535: $08 $1b $08
    rra                                           ; $4538: $1f
    ld [$4b6b], sp                                ; $4539: $08 $6b $4b
    dec e                                         ; $453c: $1d
    nop                                           ; $453d: $00
    ld c, e                                       ; $453e: $4b
    ld c, e                                       ; $453f: $4b
    ld a, [$0803]                                 ; $4540: $fa $03 $08
    ld h, $18                                     ; $4543: $26 $18
    add hl, sp                                    ; $4545: $39
    nop                                           ; $4546: $00
    inc a                                         ; $4547: $3c
    nop                                           ; $4548: $00
    dec sp                                        ; $4549: $3b
    ld [$016b], sp                                ; $454a: $08 $6b $01
    ld [$3f0b], sp                                ; $454d: $08 $0b $3f
    ld l, e                                       ; $4550: $6b
    ld c, e                                       ; $4551: $4b
    ld bc, $f108                                  ; $4552: $01 $08 $f1
    nop                                           ; $4555: $00
    ld hl, $4d28                                  ; $4556: $21 $28 $4d
    ld [$0011], sp                                ; $4559: $08 $11 $00
    dec d                                         ; $455c: $15
    db $10                                        ; $455d: $10
    xor a                                         ; $455e: $af
    ld b, d                                       ; $455f: $42
    add hl, bc                                    ; $4560: $09
    ld l, b                                       ; $4561: $68
    ld hl, $6b00                                  ; $4562: $21 $00 $6b
    ld e, h                                       ; $4565: $5c
    ld bc, $0028                                  ; $4566: $01 $28 $00
    ld c, d                                       ; $4569: $4a
    db $10                                        ; $456a: $10
    ld l, l                                       ; $456b: $6d
    nop                                           ; $456c: $00
    or c                                          ; $456d: $b1
    dec l                                         ; $456e: $2d
    ld [$3608], sp                                ; $456f: $08 $08 $36
    ld [$096e], sp                                ; $4572: $08 $6e $09
    ld [$4868], sp                                ; $4575: $08 $68 $48
    halt                                          ; $4578: $76
    add hl, bc                                    ; $4579: $09
    dec de                                        ; $457a: $1b
    ld [$0868], sp                                ; $457b: $08 $68 $08

jr_0ce_457e:
    ld c, e                                       ; $457e: $4b
    db $10                                        ; $457f: $10
    dec sp                                        ; $4580: $3b
    add hl, bc                                    ; $4581: $09
    ld l, b                                       ; $4582: $68
    ld a, c                                       ; $4583: $79
    ld de, $0006                                  ; $4584: $11 $06 $00
    db $f4                                        ; $4587: $f4
    sbc b                                         ; $4588: $98
    ld hl, $2183                                  ; $4589: $21 $83 $21
    ld b, l                                       ; $458c: $45
    ld [$01a2], sp                                ; $458d: $08 $a2 $01
    ld l, b                                       ; $4590: $68
    and h                                         ; $4591: $a4
    ld c, c                                       ; $4592: $49
    ld a, [bc]                                    ; $4593: $0a
    jr nz, jr_0ce_4596                            ; $4594: $20 $00

jr_0ce_4596:
    jr nz, jr_0ce_4598                            ; $4596: $20 $00

jr_0ce_4598:
    xor b                                         ; $4598: $a8
    ld bc, $4058                                  ; $4599: $01 $58 $40
    ld bc, $4108                                  ; $459c: $01 $08 $41
    ld [bc], a                                    ; $459f: $02
    nop                                           ; $45a0: $00
    add hl, bc                                    ; $45a1: $09
    nop                                           ; $45a2: $00
    ld b, d                                       ; $45a3: $42
    ld b, e                                       ; $45a4: $43
    ld b, h                                       ; $45a5: $44
    ld b, $45                                     ; $45a6: $06 $45
    ld b, l                                       ; $45a8: $45
    ld b, [hl]                                    ; $45a9: $46
    ld b, a                                       ; $45aa: $47
    ld c, b                                       ; $45ab: $48
    inc de                                        ; $45ac: $13
    ld b, b                                       ; $45ad: $40
    dec de                                        ; $45ae: $1b
    db $10                                        ; $45af: $10
    ld b, c                                       ; $45b0: $41
    and b                                         ; $45b1: $a0
    ld bc, $4900                                  ; $45b2: $01 $00 $49
    add hl, hl                                    ; $45b5: $29
    ld [$4b4a], sp                                ; $45b6: $08 $4a $4b
    ld c, h                                       ; $45b9: $4c
    ld c, h                                       ; $45ba: $4c
    ld c, l                                       ; $45bb: $4d
    ld e, h                                       ; $45bc: $5c
    ld c, [hl]                                    ; $45bd: $4e
    inc sp                                        ; $45be: $33
    ld [$1449], sp                                ; $45bf: $08 $49 $14
    ld [$201b], sp                                ; $45c2: $08 $1b $20
    rra                                           ; $45c5: $1f
    jr nc, jr_0ce_4617                            ; $45c6: $30 $4f

    ld d, b                                       ; $45c8: $50
    adc [hl]                                      ; $45c9: $8e
    jr nz, jr_0ce_45cc                            ; $45ca: $20 $00

jr_0ce_45cc:
    ld b, l                                       ; $45cc: $45
    ld d, b                                       ; $45cd: $50
    ld c, a                                       ; $45ce: $4f
    ld hl, $0430                                  ; $45cf: $21 $30 $04
    jr c, jr_0ce_4613                             ; $45d2: $38 $3f

    db $10                                        ; $45d4: $10
    ld d, c                                       ; $45d5: $51
    ld bc, $5352                                  ; $45d6: $01 $52 $53
    ld d, e                                       ; $45d9: $53
    ld d, h                                       ; $45da: $54
    ld d, h                                       ; $45db: $54
    ld d, d                                       ; $45dc: $52
    ld d, c                                       ; $45dd: $51
    jr nz, jr_0ce_4650                            ; $45de: $20 $70

    db $10                                        ; $45e0: $10
    ld d, l                                       ; $45e1: $55
    ld b, c                                       ; $45e2: $41
    ld d, l                                       ; $45e3: $55
    ld h, b                                       ; $45e4: $60
    ld [$5756], sp                                ; $45e5: $08 $56 $57
    ld e, b                                       ; $45e8: $58
    ld e, c                                       ; $45e9: $59
    inc e                                         ; $45ea: $1c
    ld c, l                                       ; $45eb: $4d
    ld e, d                                       ; $45ec: $5a
    ld e, e                                       ; $45ed: $5b
    ld h, b                                       ; $45ee: $60
    db $10                                        ; $45ef: $10
    inc de                                        ; $45f0: $13
    nop                                           ; $45f1: $00
    dec de                                        ; $45f2: $1b

jr_0ce_45f3:
    jr z, @+$43                                   ; $45f3: $28 $41

    ld d, l                                       ; $45f5: $55
    add b                                         ; $45f6: $80
    ld bc, $5c00                                  ; $45f7: $01 $00 $5c
    ld b, b                                       ; $45fa: $40
    ld b, b                                       ; $45fb: $40
    ld e, l                                       ; $45fc: $5d
    ld e, [hl]                                    ; $45fd: $5e
    ld e, a                                       ; $45fe: $5f
    ld h, b                                       ; $45ff: $60
    dec bc                                        ; $4600: $0b
    ld h, b                                       ; $4601: $60
    ld e, a                                       ; $4602: $5f
    ld h, c                                       ; $4603: $61
    ld h, d                                       ; $4604: $62

jr_0ce_4605:
    or e                                          ; $4605: $b3
    ld [$145c], sp                                ; $4606: $08 $5c $14
    ld [$201b], sp                                ; $4609: $08 $1b $20
    and b                                         ; $460c: $a0
    rra                                           ; $460d: $1f
    nop                                           ; $460e: $00
    ld h, e                                       ; $460f: $63
    rra                                           ; $4610: $1f
    nop                                           ; $4611: $00
    ld b, b                                       ; $4612: $40

jr_0ce_4613:
    ld h, h                                       ; $4613: $64
    ld h, l                                       ; $4614: $65
    ld e, d                                       ; $4615: $5a
    ld h, c                                       ; $4616: $61

jr_0ce_4617:
    add hl, bc                                    ; $4617: $09
    ld h, b                                       ; $4618: $60
    ld h, [hl]                                    ; $4619: $66
    ld d, a                                       ; $461a: $57
    ld h, h                                       ; $461b: $64
    db $d3                                        ; $461c: $d3
    db $10                                        ; $461d: $10
    ld e, h                                       ; $461e: $5c
    ld h, e                                       ; $461f: $63

jr_0ce_4620:
    ld a, [de]                                    ; $4620: $1a
    jr nz, jr_0ce_45f3                            ; $4621: $20 $d0

    dec e                                         ; $4623: $1d
    nop                                           ; $4624: $00
    ld bc, $6700                                  ; $4625: $01 $00 $67
    add sp, $08                                   ; $4628: $e8 $08
    ld l, b                                       ; $462a: $68
    ld l, c                                       ; $462b: $69
    ld c, l                                       ; $462c: $4d
    ld c, h                                       ; $462d: $4c
    rla                                           ; $462e: $17

jr_0ce_462f:
    ld l, d                                       ; $462f: $6a
    ld d, a                                       ; $4630: $57
    ld l, e                                       ; $4631: $6b
    ld hl, $6710                                  ; $4632: $21 $10 $67
    ld d, $08                                     ; $4635: $16 $08
    inc e                                         ; $4637: $1c
    jr jr_0ce_4642                                ; $4638: $18 $08

    nop                                           ; $463a: $00
    jr nz, jr_0ce_46a0                            ; $463b: $20 $63

    ld d, l                                       ; $463d: $55
    ld hl, $6c08                                  ; $463e: $21 $08 $6c
    ld l, l                                       ; $4641: $6d

jr_0ce_4642:
    ld e, c                                       ; $4642: $59
    ld b, l                                       ; $4643: $45
    ld b, l                                       ; $4644: $45
    rra                                           ; $4645: $1f
    ld l, [hl]                                    ; $4646: $6e
    ld l, a                                       ; $4647: $6f
    ld [hl], b                                    ; $4648: $70
    rra                                           ; $4649: $1f
    ld [$0039], sp                                ; $464a: $08 $39 $00
    dec de                                        ; $464d: $1b
    jr z, jr_0ce_469a                             ; $464e: $28 $4a

jr_0ce_4650:
    db $10                                        ; $4650: $10
    ld h, c                                       ; $4651: $61
    ld [$4023], sp                                ; $4652: $08 $23 $40
    ld h, d                                       ; $4655: $62
    jr nz, jr_0ce_4659                            ; $4656: $20 $01

    ld c, l                                       ; $4658: $4d

jr_0ce_4659:
    ld [hl], c                                    ; $4659: $71
    ld [hl], d                                    ; $465a: $72
    add b                                         ; $465b: $80
    jr z, jr_0ce_4679                             ; $465c: $28 $1b

    jr nz, jr_0ce_4620                            ; $465e: $20 $c0

    adc d                                         ; $4660: $8a
    ld [$101f], sp                                ; $4661: $08 $1f $10
    ld b, b                                       ; $4664: $40
    ld h, h                                       ; $4665: $64
    ld [hl], e                                    ; $4666: $73
    ld c, l                                       ; $4667: $4d
    ld b, l                                       ; $4668: $45
    ld e, c                                       ; $4669: $59
    inc a                                         ; $466a: $3c
    ld [hl], h                                    ; $466b: $74
    ld [hl], l                                    ; $466c: $75
    and c                                         ; $466d: $a1
    db $10                                        ; $466e: $10
    sbc e                                         ; $466f: $9b
    jr nz, jr_0ce_462f                            ; $4670: $20 $bd

    nop                                           ; $4672: $00
    ccf                                           ; $4673: $3f
    ld sp, $7640                                  ; $4674: $31 $40 $76
    rlca                                          ; $4677: $07
    ld [hl], a                                    ; $4678: $77

jr_0ce_4679:
    ld b, l                                       ; $4679: $45
    ld c, h                                       ; $467a: $4c
    ld b, [hl]                                    ; $467b: $46
    ld a, b                                       ; $467c: $78
    ld h, b                                       ; $467d: $60
    ld [$1941], sp                                ; $467e: $08 $41 $19
    inc e                                         ; $4681: $1c
    jr jr_0ce_4605                                ; $4682: $18 $81

    ld b, c                                       ; $4684: $41
    ld sp, $4342                                  ; $4685: $31 $42 $43
    ld d, e                                       ; $4688: $53
    ld c, h                                       ; $4689: $4c
    ld e, c                                       ; $468a: $59
    ld l, d                                       ; $468b: $6a
    add b                                         ; $468c: $80
    ld de, $3fda                                  ; $468d: $11 $da $3f
    ld h, c                                       ; $4690: $61
    add b                                         ; $4691: $80
    ld b, c                                       ; $4692: $41
    ld l, d                                       ; $4693: $6a
    add b                                         ; $4694: $80
    add hl, sp                                    ; $4695: $39
    ld h, e                                       ; $4696: $63
    add hl, sp                                    ; $4697: $39
    ld b, b                                       ; $4698: $40
    add b                                         ; $4699: $80

jr_0ce_469a:
    add hl, hl                                    ; $469a: $29
    ld b, l                                       ; $469b: $45
    ld a, h                                       ; $469c: $7c
    ld e, c                                       ; $469d: $59
    add b                                         ; $469e: $80
    add hl, hl                                    ; $469f: $29

jr_0ce_46a0:
    sbc e                                         ; $46a0: $9b
    ld hl, $01bd                                  ; $46a1: $21 $bd $01
    db $e3                                        ; $46a4: $e3
    ld de, $2180                                  ; $46a5: $11 $80 $21
    ld c, h                                       ; $46a8: $4c
    ld c, l                                       ; $46a9: $4d
    ei                                            ; $46aa: $fb
    add b                                         ; $46ab: $80
    ld hl, $19f8                                  ; $46ac: $21 $f8 $19
    inc e                                         ; $46af: $1c
    jr nz, jr_0ce_46b2                            ; $46b0: $20 $00

jr_0ce_46b2:
    ld [hl+], a                                   ; $46b2: $22
    add b                                         ; $46b3: $80
    ld de, $804d                                  ; $46b4: $11 $4d $80
    ld de, $8a00                                  ; $46b7: $11 $00 $8a
    sbc b                                         ; $46ba: $98
    add b                                         ; $46bb: $80
    ld hl, $5d5e                                  ; $46bc: $21 $5e $5d
    nop                                           ; $46bf: $00
    and d                                         ; $46c0: $a2
    add b                                         ; $46c1: $80
    add hl, bc                                    ; $46c2: $09
    ld h, c                                       ; $46c3: $61
    ld h, [hl]                                    ; $46c4: $66
    ld d, a                                       ; $46c5: $57
    ld h, c                                       ; $46c6: $61
    ld d, [hl]                                    ; $46c7: $56
    ld d, e                                       ; $46c8: $53
    ld [de], a                                    ; $46c9: $12
    nop                                           ; $46ca: $00
    adc d                                         ; $46cb: $8a
    ld l, b                                       ; $46cc: $68
    ld l, c                                       ; $46cd: $69
    ld a, c                                       ; $46ce: $79
    ld e, c                                       ; $46cf: $59
    add b                                         ; $46d0: $80
    add hl, hl                                    ; $46d1: $29
    add c                                         ; $46d2: $81
    nop                                           ; $46d3: $00
    adc d                                         ; $46d4: $8a
    ld l, h                                       ; $46d5: $6c
    ld l, l                                       ; $46d6: $6d
    ld d, e                                       ; $46d7: $53
    ld l, [hl]                                    ; $46d8: $6e
    ld c, l                                       ; $46d9: $4d
    ld b, l                                       ; $46da: $45
    add b                                         ; $46db: $80
    ld de, $00c3                                  ; $46dc: $11 $c3 $00
    adc d                                         ; $46df: $8a
    add b                                         ; $46e0: $80
    add hl, bc                                    ; $46e1: $09
    ld e, c                                       ; $46e2: $59
    ld l, [hl]                                    ; $46e3: $6e
    ld c, l                                       ; $46e4: $4d
    ld l, d                                       ; $46e5: $6a
    add b                                         ; $46e6: $80
    ld sp, $6200                                  ; $46e7: $31 $00 $62
    adc [hl]                                      ; $46ea: $8e
    add b                                         ; $46eb: $80
    add hl, bc                                    ; $46ec: $09
    ld b, l                                       ; $46ed: $45
    ld c, h                                       ; $46ee: $4c
    ld b, l                                       ; $46ef: $45
    add b                                         ; $46f0: $80
    ld hl, $8200                                  ; $46f1: $21 $00 $82
    add b                                         ; $46f4: $80
    ld bc, $394d                                  ; $46f5: $01 $4d $39
    ld c, h                                       ; $46f8: $4c
    ld d, e                                       ; $46f9: $53
    add b                                         ; $46fa: $80
    add hl, de                                    ; $46fb: $19
    nop                                           ; $46fc: $00
    adc d                                         ; $46fd: $8a
    add b                                         ; $46fe: $80
    add hl, bc                                    ; $46ff: $09
    ld c, h                                       ; $4700: $4c
    ld a, d                                       ; $4701: $7a
    nop                                           ; $4702: $00
    inc de                                        ; $4703: $13
    sbc [hl]                                      ; $4704: $9e
    nop                                           ; $4705: $00
    sbc d                                         ; $4706: $9a
    ld c, d                                       ; $4707: $4a
    ld l, [hl]                                    ; $4708: $6e
    jr nz, jr_0ce_470e                            ; $4709: $20 $03

    nop                                           ; $470b: $00
    inc de                                        ; $470c: $13
    nop                                           ; $470d: $00

jr_0ce_470e:
    sub d                                         ; $470e: $92
    add b                                         ; $470f: $80
    add hl, bc                                    ; $4710: $09
    ld b, l                                       ; $4711: $45
    jr c, jr_0ce_4760                             ; $4712: $38 $4c

    ld a, e                                       ; $4714: $7b
    add b                                         ; $4715: $80
    ld a, [de]                                    ; $4716: $1a
    nop                                           ; $4717: $00
    add d                                         ; $4718: $82
    add b                                         ; $4719: $80
    add hl, bc                                    ; $471a: $09
    ld c, h                                       ; $471b: $4c
    ld b, l                                       ; $471c: $45
    ld a, h                                       ; $471d: $7c
    ret nz                                        ; $471e: $c0

    jr nz, @+$3b                                  ; $471f: $20 $39

    nop                                           ; $4721: $00
    ld h, d                                       ; $4722: $62
    ld b, b                                       ; $4723: $40
    ld e, e                                       ; $4724: $5b
    ld b, l                                       ; $4725: $45
    ld c, h                                       ; $4726: $4c
    ld c, h                                       ; $4727: $4c
    ld e, c                                       ; $4728: $59
    ei                                            ; $4729: $fb
    nop                                           ; $472a: $00
    dec de                                        ; $472b: $1b
    nop                                           ; $472c: $00
    sub d                                         ; $472d: $92
    add b                                         ; $472e: $80
    ld a, [de]                                    ; $472f: $1a
    nop                                           ; $4730: $00
    or d                                          ; $4731: $b2
    add b                                         ; $4732: $80
    ld [bc], a                                    ; $4733: $02
    ld d, e                                       ; $4734: $53
    nop                                           ; $4735: $00

jr_0ce_4736:
    add hl, hl                                    ; $4736: $29
    nop                                           ; $4737: $00
    adc d                                         ; $4738: $8a
    sbc d                                         ; $4739: $9a
    add b                                         ; $473a: $80
    ld a, [bc]                                    ; $473b: $0a
    ld b, l                                       ; $473c: $45
    ld e, c                                       ; $473d: $59
    add b                                         ; $473e: $80
    ld a, [de]                                    ; $473f: $1a
    nop                                           ; $4740: $00
    ld a, [hl+]                                   ; $4741: $2a
    inc c                                         ; $4742: $0c
    ld bc, $0a08                                  ; $4743: $01 $08 $0a
    and c                                         ; $4746: $a1
    ld [bc], a                                    ; $4747: $02
    nop                                           ; $4748: $00
    dec bc                                        ; $4749: $0b
    ld bc, $0908                                  ; $474a: $01 $08 $09
    add hl, bc                                    ; $474d: $09
    add hl, hl                                    ; $474e: $29
    add hl, bc                                    ; $474f: $09
    add hl, bc                                    ; $4750: $09
    db $10                                        ; $4751: $10
    jp c, Jump_000_1013                           ; $4752: $da $13 $10

    dec de                                        ; $4755: $1b
    jr z, jr_0ce_4762                             ; $4756: $28 $0a

    ld bc, $2008                                  ; $4758: $01 $08 $20
    jr nz, jr_0ce_4766                            ; $475b: $20 $09

    jr nz, jr_0ce_4777                            ; $475d: $20 $18

    ld a, [hl+]                                   ; $475f: $2a

jr_0ce_4760:
    ldh a, [rNR14]                                ; $4760: $f0 $14

jr_0ce_4762:
    ld [$281b], sp                                ; $4762: $08 $1b $28
    ld a, [bc]                                    ; $4765: $0a

jr_0ce_4766:
    ld [$103f], sp                                ; $4766: $08 $3f $10
    dec bc                                        ; $4769: $0b
    ld c, c                                       ; $476a: $49
    ld c, c                                       ; $476b: $49
    add hl, hl                                    ; $476c: $29
    rra                                           ; $476d: $1f
    add hl, bc                                    ; $476e: $09
    dec hl                                        ; $476f: $2b
    dec hl                                        ; $4770: $2b
    ld hl, $1b10                                  ; $4771: $21 $10 $1b
    jr nz, jr_0ce_47b3                            ; $4774: $20 $3d

    nop                                           ; $4776: $00

jr_0ce_4777:
    ld h, e                                       ; $4777: $63
    db $10                                        ; $4778: $10
    jr nz, @+$1a                                  ; $4779: $20 $18

    call c, Call_000_0840                         ; $477b: $dc $40 $08
    jr nz, jr_0ce_4798                            ; $477e: $20 $18

    inc l                                         ; $4780: $2c
    ld a, b                                       ; $4781: $78
    db $10                                        ; $4782: $10
    ld h, h                                       ; $4783: $64
    jr jr_0ce_47a7                                ; $4784: $18 $21

    jr c, jr_0ce_4791                             ; $4786: $38 $09

    add hl, bc                                    ; $4788: $09
    ld a, e                                       ; $4789: $7b
    ld c, c                                       ; $478a: $49
    add b                                         ; $478b: $80
    jr jr_0ce_47ad                                ; $478c: $18 $1f

    db $10                                        ; $478e: $10
    inc b                                         ; $478f: $04
    ld d, b                                       ; $4790: $50

jr_0ce_4791:
    ld a, a                                       ; $4791: $7f
    jr nz, jr_0ce_47fd                            ; $4792: $20 $69

    jr nz, jr_0ce_4736                            ; $4794: $20 $a0

    cp a                                          ; $4796: $bf
    db $10                                        ; $4797: $10

jr_0ce_4798:
    ld e, h                                       ; $4798: $5c
    ld l, c                                       ; $4799: $69
    ld a, $00                                     ; $479a: $3e $00
    ld l, e                                       ; $479c: $6b
    ld a, a                                       ; $479d: $7f
    db $10                                        ; $479e: $10
    ld b, c                                       ; $479f: $41
    ld [hl], b                                    ; $47a0: $70
    and b                                         ; $47a1: $a0
    jr jr_0ce_480d                                ; $47a2: $18 $69

    ld l, c                                       ; $47a4: $69
    add hl, bc                                    ; $47a5: $09
    add hl, bc                                    ; $47a6: $09

jr_0ce_47a7:
    dec hl                                        ; $47a7: $2b
    dec bc                                        ; $47a8: $0b
    ld l, e                                       ; $47a9: $6b
    ld b, c                                       ; $47aa: $41
    cp b                                          ; $47ab: $b8
    add hl, bc                                    ; $47ac: $09

jr_0ce_47ad:
    ld c, c                                       ; $47ad: $49
    ld h, b                                       ; $47ae: $60
    xor b                                         ; $47af: $a8
    add e                                         ; $47b0: $83
    jr nz, jr_0ce_47c4                            ; $47b1: $20 $11

jr_0ce_47b3:
    dec hl                                        ; $47b3: $2b
    ld c, c                                       ; $47b4: $49
    add hl, bc                                    ; $47b5: $09
    add hl, hl                                    ; $47b6: $29
    ld c, c                                       ; $47b7: $49
    add b                                         ; $47b8: $80
    ret nz                                        ; $47b9: $c0

    add d                                         ; $47ba: $82
    ld [$a1ff], sp                                ; $47bb: $08 $ff $a1
    and b                                         ; $47be: $a0
    jr nz, jr_0ce_47f1                            ; $47bf: $20 $30

    ld h, b                                       ; $47c1: $60
    add hl, de                                    ; $47c2: $19
    pop hl                                        ; $47c3: $e1

jr_0ce_47c4:
    ld e, b                                       ; $47c4: $58
    add b                                         ; $47c5: $80
    ld sp, $0140                                  ; $47c6: $31 $40 $01
    ld h, b                                       ; $47c9: $60
    jr nz, @-$7e                                  ; $47ca: $20 $80

    and c                                         ; $47cc: $a1
    ld [hl], e                                    ; $47cd: $73
    ld l, c                                       ; $47ce: $69
    add b                                         ; $47cf: $80
    jp hl                                         ; $47d0: $e9


    pop hl                                        ; $47d1: $e1
    nop                                           ; $47d2: $00
    add b                                         ; $47d3: $80
    ret                                           ; $47d4: $c9


    ld c, c                                       ; $47d5: $49
    ld c, c                                       ; $47d6: $49
    and b                                         ; $47d7: $a0
    ld hl, $19f8                                  ; $47d8: $21 $f8 $19
    ei                                            ; $47db: $fb
    add b                                         ; $47dc: $80
    ld hl, $4200                                  ; $47dd: $21 $00 $42
    add b                                         ; $47e0: $80
    ld hl, $9a00                                  ; $47e1: $21 $00 $9a
    add b                                         ; $47e4: $80
    ld de, $406b                                  ; $47e5: $11 $6b $40
    add hl, bc                                    ; $47e8: $09
    nop                                           ; $47e9: $00
    sbc d                                         ; $47ea: $9a
    rrca                                          ; $47eb: $0f
    ld l, c                                       ; $47ec: $69
    ld c, c                                       ; $47ed: $49
    ld c, c                                       ; $47ee: $49
    dec bc                                        ; $47ef: $0b
    rra                                           ; $47f0: $1f

jr_0ce_47f1:
    stop                                          ; $47f1: $10 $00
    jp nz, Jump_0ce_4980                          ; $47f3: $c2 $80 $49

    nop                                           ; $47f6: $00
    ld [hl], d                                    ; $47f7: $72
    call z, Call_000_0a40                         ; $47f8: $cc $40 $0a
    add b                                         ; $47fb: $80
    pop de                                        ; $47fc: $d1

jr_0ce_47fd:
    add hl, hl                                    ; $47fd: $29
    add hl, hl                                    ; $47fe: $29
    ld hl, $801a                                  ; $47ff: $21 $1a $80
    xor c                                         ; $4802: $a9
    add hl, hl                                    ; $4803: $29
    add hl, hl                                    ; $4804: $29
    cp $a1                                        ; $4805: $fe $a1
    ld [hl+], a                                   ; $4807: $22
    add b                                         ; $4808: $80
    and c                                         ; $4809: $a1
    ld b, c                                       ; $480a: $41
    nop                                           ; $480b: $00
    add b                                         ; $480c: $80

jr_0ce_480d:
    add c                                         ; $480d: $81
    add b                                         ; $480e: $80
    jr c, jr_0ce_4811                             ; $480f: $38 $00

jr_0ce_4811:
    dec hl                                        ; $4811: $2b
    add b                                         ; $4812: $80
    sbc d                                         ; $4813: $9a
    dec bc                                        ; $4814: $0b
    ld a, e                                       ; $4815: $7b
    add hl, hl                                    ; $4816: $29
    jr nz, @-$4c                                  ; $4817: $20 $b2

    nop                                           ; $4819: $00
    inc hl                                        ; $481a: $23
    ld b, b                                       ; $481b: $40
    dec hl                                        ; $481c: $2b
    add b                                         ; $481d: $80
    and d                                         ; $481e: $a2
    add hl, bc                                    ; $481f: $09
    and b                                         ; $4820: $a0
    nop                                           ; $4821: $00
    nop                                           ; $4822: $00
    jp nz, $2b03                                  ; $4823: $c2 $03 $2b

    add hl, hl                                    ; $4826: $29
    add hl, bc                                    ; $4827: $09
    add hl, hl                                    ; $4828: $29
    ld l, c                                       ; $4829: $69
    ld c, e                                       ; $482a: $4b
    nop                                           ; $482b: $00
    cp d                                          ; $482c: $ba
    add b                                         ; $482d: $80
    ld a, [hl-]                                   ; $482e: $3a
    ei                                            ; $482f: $fb
    add b                                         ; $4830: $80
    and e                                         ; $4831: $a3
    ld h, c                                       ; $4832: $61
    nop                                           ; $4833: $00
    and c                                         ; $4834: $a1
    dec hl                                        ; $4835: $2b
    add b                                         ; $4836: $80
    sub e                                         ; $4837: $93
    jr nz, jr_0ce_483b                            ; $4838: $20 $01

    ld l, c                                       ; $483a: $69

jr_0ce_483b:
    xor d                                         ; $483b: $aa
    dec de                                        ; $483c: $1b
    nop                                           ; $483d: $00
    ld a, [hl+]                                   ; $483e: $2a
    jr nz, jr_0ce_4841                            ; $483f: $20 $00

jr_0ce_4841:
    dec c                                         ; $4841: $0d
    nop                                           ; $4842: $00
    dec bc                                        ; $4843: $0b
    ld [bc], a                                    ; $4844: $02
    inc b                                         ; $4845: $04
    ld b, b                                       ; $4846: $40
    ld b, c                                       ; $4847: $41
    ld b, d                                       ; $4848: $42
    ld b, e                                       ; $4849: $43
    ld b, b                                       ; $484a: $40
    ld bc, $4310                                  ; $484b: $01 $10 $43
    ld b, h                                       ; $484e: $44
    jr nz, jr_0ce_4892                            ; $484f: $20 $41

    ld b, l                                       ; $4851: $45
    ld a, [bc]                                    ; $4852: $0a
    nop                                           ; $4853: $00
    ld b, [hl]                                    ; $4854: $46
    ld b, e                                       ; $4855: $43
    ld b, a                                       ; $4856: $47
    ld c, b                                       ; $4857: $48
    ld c, c                                       ; $4858: $49
    nop                                           ; $4859: $00
    ld c, d                                       ; $485a: $4a
    ld c, e                                       ; $485b: $4b
    ld c, b                                       ; $485c: $48
    ld c, h                                       ; $485d: $4c
    ld c, l                                       ; $485e: $4d
    ld c, h                                       ; $485f: $4c
    ld c, [hl]                                    ; $4860: $4e
    ld c, a                                       ; $4861: $4f
    ld b, d                                       ; $4862: $42
    ld b, c                                       ; $4863: $41
    ld d, $00                                     ; $4864: $16 $00
    ld c, h                                       ; $4866: $4c
    ld b, c                                       ; $4867: $41
    ld b, [hl]                                    ; $4868: $46
    ld b, b                                       ; $4869: $40
    ld [bc], a                                    ; $486a: $02
    nop                                           ; $486b: $00
    ld b, [hl]                                    ; $486c: $46
    ld [$4c4d], sp                                ; $486d: $08 $4d $4c
    ld c, l                                       ; $4870: $4d
    ld d, b                                       ; $4871: $50
    ld a, [bc]                                    ; $4872: $0a
    nop                                           ; $4873: $00
    ld d, c                                       ; $4874: $51
    ld c, a                                       ; $4875: $4f
    ld d, d                                       ; $4876: $52
    nop                                           ; $4877: $00
    ld d, e                                       ; $4878: $53
    ld d, h                                       ; $4879: $54
    ld d, l                                       ; $487a: $55
    ld d, [hl]                                    ; $487b: $56
    ld c, e                                       ; $487c: $4b
    ld d, a                                       ; $487d: $57
    ld b, a                                       ; $487e: $47
    ld e, b                                       ; $487f: $58
    nop                                           ; $4880: $00
    ld e, c                                       ; $4881: $59
    ld e, b                                       ; $4882: $58
    ld b, d                                       ; $4883: $42
    ld c, l                                       ; $4884: $4d
    ld c, h                                       ; $4885: $4c
    ld d, d                                       ; $4886: $52
    ld e, d                                       ; $4887: $5a
    ld b, d                                       ; $4888: $42
    dec b                                         ; $4889: $05
    ld e, e                                       ; $488a: $5b
    ld e, h                                       ; $488b: $5c
    ld d, c                                       ; $488c: $51
    ld e, l                                       ; $488d: $5d
    ld d, c                                       ; $488e: $51
    jr jr_0ce_4891                                ; $488f: $18 $00

jr_0ce_4891:
    ld e, d                                       ; $4891: $5a

jr_0ce_4892:
    add hl, bc                                    ; $4892: $09
    nop                                           ; $4893: $00
    nop                                           ; $4894: $00
    ld e, [hl]                                    ; $4895: $5e
    ld e, a                                       ; $4896: $5f
    ld e, b                                       ; $4897: $58
    ld h, b                                       ; $4898: $60
    ld d, h                                       ; $4899: $54
    ld h, c                                       ; $489a: $61
    ld h, d                                       ; $489b: $62
    ld h, c                                       ; $489c: $61
    nop                                           ; $489d: $00
    ld d, [hl]                                    ; $489e: $56
    ld c, e                                       ; $489f: $4b
    ld d, d                                       ; $48a0: $52
    ld h, e                                       ; $48a1: $63
    ld c, d                                       ; $48a2: $4a
    ld c, d                                       ; $48a3: $4a
    ld c, e                                       ; $48a4: $4b
    ld d, d                                       ; $48a5: $52
    nop                                           ; $48a6: $00
    ld d, a                                       ; $48a7: $57
    ld h, h                                       ; $48a8: $64
    ld d, d                                       ; $48a9: $52
    ld d, a                                       ; $48aa: $57
    ld c, [hl]                                    ; $48ab: $4e
    ld c, h                                       ; $48ac: $4c
    ld c, h                                       ; $48ad: $4c
    ld b, h                                       ; $48ae: $44
    nop                                           ; $48af: $00
    ld d, d                                       ; $48b0: $52
    ld c, b                                       ; $48b1: $48
    ld d, d                                       ; $48b2: $52
    ld h, h                                       ; $48b3: $64
    ld c, b                                       ; $48b4: $48
    ld c, b                                       ; $48b5: $48
    ld c, [hl]                                    ; $48b6: $4e
    ld c, h                                       ; $48b7: $4c
    ld bc, $5744                                  ; $48b8: $01 $44 $57
    ld h, e                                       ; $48bb: $63
    ld d, h                                       ; $48bc: $54
    ld h, c                                       ; $48bd: $61
    ld d, [hl]                                    ; $48be: $56
    ld h, l                                       ; $48bf: $65
    inc b                                         ; $48c0: $04
    stop                                          ; $48c1: $10 $00
    ld d, l                                       ; $48c3: $55
    ld d, l                                       ; $48c4: $55
    ld d, [hl]                                    ; $48c5: $56
    ld h, [hl]                                    ; $48c6: $66
    ld c, e                                       ; $48c7: $4b
    ld e, c                                       ; $48c8: $59
    ld h, h                                       ; $48c9: $64
    ld h, a                                       ; $48ca: $67
    ld bc, $4852                                  ; $48cb: $01 $52 $48
    ld c, [hl]                                    ; $48ce: $4e
    ld d, a                                       ; $48cf: $57
    ld h, e                                       ; $48d0: $63
    ld c, d                                       ; $48d1: $4a
    ld c, e                                       ; $48d2: $4b
    inc bc                                        ; $48d3: $03
    nop                                           ; $48d4: $00
    ld [de], a                                    ; $48d5: $12
    ld d, a                                       ; $48d6: $57
    ld c, h                                       ; $48d7: $4c
    ld d, d                                       ; $48d8: $52
    rra                                           ; $48d9: $1f
    ld [$674b], sp                                ; $48da: $08 $4b $67
    dec h                                         ; $48dd: $25
    nop                                           ; $48de: $00
    ld h, d                                       ; $48df: $62
    ld a, [hl+]                                   ; $48e0: $2a
    ld h, c                                       ; $48e1: $61
    ld h, d                                       ; $48e2: $62
    ld b, a                                       ; $48e3: $47
    nop                                           ; $48e4: $00
    ld d, [hl]                                    ; $48e5: $56
    rla                                           ; $48e6: $17
    ld [$1664], sp                                ; $48e7: $08 $64 $16
    nop                                           ; $48ea: $00
    ld d, l                                       ; $48eb: $55
    ld h, b                                       ; $48ec: $60
    ld d, [hl]                                    ; $48ed: $56
    halt                                          ; $48ee: $76
    ld [$181f], sp                                ; $48ef: $08 $1f $18
    ld l, b                                       ; $48f2: $68
    ld d, d                                       ; $48f3: $52
    ld e, c                                       ; $48f4: $59
    ld h, e                                       ; $48f5: $63
    ld d, h                                       ; $48f6: $54
    rla                                           ; $48f7: $17
    ld h, d                                       ; $48f8: $62
    ld d, [hl]                                    ; $48f9: $56
    ld h, l                                       ; $48fa: $65
    ld b, a                                       ; $48fb: $47
    nop                                           ; $48fc: $00
    ld h, c                                       ; $48fd: $61
    rla                                           ; $48fe: $17
    db $10                                        ; $48ff: $10
    cpl                                           ; $4900: $2f
    db $10                                        ; $4901: $10
    halt                                          ; $4902: $76
    ld [$5997], sp                                ; $4903: $08 $97 $59
    ld [$674b], sp                                ; $4906: $08 $4b $67
    ld b, a                                       ; $4909: $47
    nop                                           ; $490a: $00
    ld l, b                                       ; $490b: $68
    scf                                           ; $490c: $37
    ld [$006c], sp                                ; $490d: $08 $6c $00
    ld [hl+], a                                   ; $4910: $22
    nop                                           ; $4911: $00
    ldh a, [$8d]                                  ; $4912: $f0 $8d
    nop                                           ; $4914: $00
    ld [hl], e                                    ; $4915: $73
    db $10                                        ; $4916: $10
    halt                                          ; $4917: $76
    ld [$0899], sp                                ; $4918: $08 $99 $08
    ld l, b                                       ; $491b: $68
    ld c, b                                       ; $491c: $48
    ld c, [hl]                                    ; $491d: $4e
    ld b, h                                       ; $491e: $44
    nop                                           ; $491f: $00
    ld c, h                                       ; $4920: $4c
    ld c, b                                       ; $4921: $48
    ld l, b                                       ; $4922: $68
    ld c, b                                       ; $4923: $48
    ld e, b                                       ; $4924: $58
    ld d, d                                       ; $4925: $52
    ld e, a                                       ; $4926: $5f
    ld e, b                                       ; $4927: $58
    ld [hl-], a                                   ; $4928: $32
    ld h, e                                       ; $4929: $63
    ld h, e                                       ; $492a: $63
    rla                                           ; $492b: $17
    db $10                                        ; $492c: $10
    ld [hl], e                                    ; $492d: $73
    db $10                                        ; $492e: $10
    ld c, e                                       ; $492f: $4b
    ld h, h                                       ; $4930: $64
    ld d, l                                       ; $4931: $55
    ld [$114b], sp                                ; $4932: $08 $4b $11
    ld h, a                                       ; $4935: $67
    ld d, d                                       ; $4936: $52
    ld d, d                                       ; $4937: $52
    rst $00                                       ; $4938: $c7
    nop                                           ; $4939: $00
    ld c, h                                       ; $493a: $4c
    ld c, a                                       ; $493b: $4f
    ld c, h                                       ; $493c: $4c
    call Call_000_1500                            ; $493d: $cd $00 $15
    ld d, d                                       ; $4940: $52
    ld e, c                                       ; $4941: $59
    ld h, h                                       ; $4942: $64
    rla                                           ; $4943: $17
    db $10                                        ; $4944: $10
    ld d, [hl]                                    ; $4945: $56
    and a                                         ; $4946: $a7
    ld [$7657], sp                                ; $4947: $08 $57 $76
    nop                                           ; $494a: $00
    nop                                           ; $494b: $00
    ld c, d                                       ; $494c: $4a
    ld c, e                                       ; $494d: $4b
    ld l, b                                       ; $494e: $68
    ld d, a                                       ; $494f: $57
    ld d, d                                       ; $4950: $52
    ld c, h                                       ; $4951: $4c
    ld d, c                                       ; $4952: $51
    ld b, b                                       ; $4953: $40
    ld [$4d46], sp                                ; $4954: $08 $46 $4d
    ld d, c                                       ; $4957: $51
    ld d, c                                       ; $4958: $51
    rla                                           ; $4959: $17
    ld bc, $524f                                  ; $495a: $01 $4f $52
    ld d, d                                       ; $495d: $52
    ld de, $5752                                  ; $495e: $11 $52 $57
    ld d, d                                       ; $4961: $52
    dec sp                                        ; $4962: $3b
    ld [$5252], sp                                ; $4963: $08 $52 $52
    ld c, b                                       ; $4966: $48
    cp l                                          ; $4967: $bd
    nop                                           ; $4968: $00
    nop                                           ; $4969: $00
    ld c, b                                       ; $496a: $48
    ld d, d                                       ; $496b: $52
    ld d, d                                       ; $496c: $52
    ld e, b                                       ; $496d: $58
    ld c, a                                       ; $496e: $4f
    ld b, h                                       ; $496f: $44
    ld c, l                                       ; $4970: $4d
    ld b, [hl]                                    ; $4971: $46
    ld h, b                                       ; $4972: $60
    ld b, [hl]                                    ; $4973: $46
    ld c, b                                       ; $4974: $48
    ld bc, $0004                                  ; $4975: $01 $04 $00
    ld b, b                                       ; $4978: $40
    ld d, c                                       ; $4979: $51
    ld e, a                                       ; $497a: $5f
    ld d, c                                       ; $497b: $51
    ld e, h                                       ; $497c: $5c
    ld de, $6457                                  ; $497d: $11 $57 $64

Jump_0ce_4980:
    ld e, c                                       ; $4980: $59
    inc bc                                        ; $4981: $03
    ld bc, $4c4f                                  ; $4982: $01 $4f $4c
    ld e, d                                       ; $4985: $5a
    dec e                                         ; $4986: $1d
    ld bc, $4403                                  ; $4987: $01 $03 $44
    ld c, a                                       ; $498a: $4f
    ld d, c                                       ; $498b: $51
    ld e, e                                       ; $498c: $5b
    ld c, l                                       ; $498d: $4d
    ld e, e                                       ; $498e: $5b
    ld a, [hl-]                                   ; $498f: $3a
    nop                                           ; $4990: $00
    ld [hl], e                                    ; $4991: $73
    add hl, de                                    ; $4992: $19
    jr nz, jr_0ce_49db                            ; $4993: $20 $46

    ld b, [hl]                                    ; $4995: $46
    ld c, d                                       ; $4996: $4a
    nop                                           ; $4997: $00
    ld c, h                                       ; $4998: $4c
    ld d, d                                       ; $4999: $52
    ld h, h                                       ; $499a: $64
    ld c, [hl]                                    ; $499b: $4e
    ld b, d                                       ; $499c: $42
    cpl                                           ; $499d: $2f
    ld e, e                                       ; $499e: $5b
    ld c, l                                       ; $499f: $4d
    ld [hl], $00                                  ; $49a0: $36 $00
    ld b, b                                       ; $49a2: $40
    ld b, [hl]                                    ; $49a3: $46
    ld bc, $003b                                  ; $49a4: $01 $3b $00
    ld h, [hl]                                    ; $49a7: $66
    ld bc, $3001                                  ; $49a8: $01 $01 $30
    inc d                                         ; $49ab: $14
    ld b, [hl]                                    ; $49ac: $46
    add hl, bc                                    ; $49ad: $09
    inc c                                         ; $49ae: $0c
    ld bc, $0900                                  ; $49af: $01 $00 $09
    ld b, $00                                     ; $49b2: $06 $00
    add hl, bc                                    ; $49b4: $09
    add hl, hl                                    ; $49b5: $29
    ret                                           ; $49b6: $c9


    ld [bc], a                                    ; $49b7: $02
    nop                                           ; $49b8: $00
    ld c, $08                                     ; $49b9: $0e $08
    inc l                                         ; $49bb: $2c
    ld [$0801], sp                                ; $49bc: $08 $01 $08
    jr z, jr_0ce_49cd                             ; $49bf: $28 $0c

    ld a, [de]                                    ; $49c1: $1a
    ld [$14d0], sp                                ; $49c2: $08 $d0 $14
    nop                                           ; $49c5: $00
    ld de, $4c00                                  ; $49c6: $11 $00 $4c
    ld hl, $2900                                  ; $49c9: $21 $00 $29
    ld l, c                                       ; $49cc: $69

jr_0ce_49cd:
    add hl, bc                                    ; $49cd: $09
    inc c                                         ; $49ce: $0c
    nop                                           ; $49cf: $00
    inc l                                         ; $49d0: $2c
    inc c                                         ; $49d1: $0c
    ld c, h                                       ; $49d2: $4c
    inc c                                         ; $49d3: $0c
    ld l, h                                       ; $49d4: $6c
    inc c                                         ; $49d5: $0c
    add hl, bc                                    ; $49d6: $09
    ld [$0808], sp                                ; $49d7: $08 $08 $08
    ld a, [bc]                                    ; $49da: $0a

jr_0ce_49db:
    ld a, [bc]                                    ; $49db: $0a
    ld a, [bc]                                    ; $49dc: $0a
    dec h                                         ; $49dd: $25
    ld [$080c], sp                                ; $49de: $08 $0c $08
    add hl, bc                                    ; $49e1: $09
    jr nz, jr_0ce_4a0d                            ; $49e2: $20 $29

    ld [$103f], sp                                ; $49e4: $08 $3f $10
    ld l, c                                       ; $49e7: $69
    add hl, bc                                    ; $49e8: $09
    ld l, c                                       ; $49e9: $69
    add hl, hl                                    ; $49ea: $29
    add hl, bc                                    ; $49eb: $09
    ld h, b                                       ; $49ec: $60
    ld [$004c], sp                                ; $49ed: $08 $4c $00
    rra                                           ; $49f0: $1f
    db $10                                        ; $49f1: $10
    dec bc                                        ; $49f2: $0b
    ld a, [bc]                                    ; $49f3: $0a
    ld a, [bc]                                    ; $49f4: $0a
    ld c, d                                       ; $49f5: $4a
    dec bc                                        ; $49f6: $0b
    add b                                         ; $49f7: $80
    ld b, [hl]                                    ; $49f8: $46
    ld [$0b0a], sp                                ; $49f9: $08 $0a $0b
    dec c                                         ; $49fc: $0d
    jr z, @+$0a                                   ; $49fd: $28 $08

    inc l                                         ; $49ff: $2c
    inc c                                         ; $4a00: $0c
    nop                                           ; $4a01: $00
    ld l, h                                       ; $4a02: $6c
    ld [$0908], sp                                ; $4a03: $08 $08 $09
    ld [$0828], sp                                ; $4a06: $08 $28 $08
    dec c                                         ; $4a09: $0d
    add b                                         ; $4a0a: $80
    inc b                                         ; $4a0b: $04
    nop                                           ; $4a0c: $00

jr_0ce_4a0d:
    inc c                                         ; $4a0d: $0c
    add hl, bc                                    ; $4a0e: $09
    jr z, jr_0ce_4a19                             ; $4a0f: $28 $08

    dec bc                                        ; $4a11: $0b
    dec bc                                        ; $4a12: $0b
    ld c, d                                       ; $4a13: $4a
    inc b                                         ; $4a14: $04
    ld [$4b4a], sp                                ; $4a15: $08 $4a $4b
    dec bc                                        ; $4a18: $0b

jr_0ce_4a19:
    ld c, b                                       ; $4a19: $48
    ld b, [hl]                                    ; $4a1a: $46
    nop                                           ; $4a1b: $00
    dec bc                                        ; $4a1c: $0b
    add hl, bc                                    ; $4a1d: $09
    ld d, $0b                                     ; $4a1e: $16 $0b
    inc c                                         ; $4a20: $0c
    jr z, @+$6f                                   ; $4a21: $28 $6d

    nop                                           ; $4a23: $00
    ld l, l                                       ; $4a24: $6d
    dec b                                         ; $4a25: $05
    nop                                           ; $4a26: $00
    ld [bc], a                                    ; $4a27: $02
    jr z, jr_0ce_4a35                             ; $4a28: $28 $0b

    nop                                           ; $4a2a: $00
    dec bc                                        ; $4a2b: $0b
    ld c, e                                       ; $4a2c: $4b
    ld c, b                                       ; $4a2d: $48
    ld [$4b48], sp                                ; $4a2e: $08 $48 $4b
    ld c, e                                       ; $4a31: $4b
    ld c, d                                       ; $4a32: $4a
    sub e                                         ; $4a33: $93
    ld h, [hl]                                    ; $4a34: $66

jr_0ce_4a35:
    nop                                           ; $4a35: $00
    ld c, e                                       ; $4a36: $4b
    dec bc                                        ; $4a37: $0b
    ld bc, $0a00                                  ; $4a38: $01 $00 $0a
    dec bc                                        ; $4a3b: $0b
    ld e, h                                       ; $4a3c: $5c
    nop                                           ; $4a3d: $00
    rlca                                          ; $4a3e: $07
    ld [$0a60], sp                                ; $4a3f: $08 $60 $0a
    ld d, l                                       ; $4a42: $55
    ld [$181f], sp                                ; $4a43: $08 $1f $18
    ld c, b                                       ; $4a46: $48
    ld c, b                                       ; $4a47: $48
    ld c, e                                       ; $4a48: $4b
    ld a, [bc]                                    ; $4a49: $0a
    ld c, d                                       ; $4a4a: $4a
    ld c, $08                                     ; $4a4b: $0e $08
    ld a, [bc]                                    ; $4a4d: $0a
    ld c, e                                       ; $4a4e: $4b
    ld c, e                                       ; $4a4f: $4b
    ld [hl+], a                                   ; $4a50: $22
    nop                                           ; $4a51: $00
    ld b, a                                       ; $4a52: $47
    nop                                           ; $4a53: $00
    ld d, h                                       ; $4a54: $54
    nop                                           ; $4a55: $00
    dec bc                                        ; $4a56: $0b
    ld h, $4a                                     ; $4a57: $26 $4a
    dec bc                                        ; $4a59: $0b
    cpl                                           ; $4a5a: $2f
    nop                                           ; $4a5b: $00
    ld c, b                                       ; $4a5c: $48
    ld a, [bc]                                    ; $4a5d: $0a
    ld a, $10                                     ; $4a5e: $3e $10
    ld [bc], a                                    ; $4a60: $02
    ld [$1348], sp                                ; $4a61: $08 $48 $13
    ld c, b                                       ; $4a64: $48
    ld l, b                                       ; $4a65: $68
    ld l, b                                       ; $4a66: $68
    jr nz, jr_0ce_4a69                            ; $4a67: $20 $00

jr_0ce_4a69:
    ld c, e                                       ; $4a69: $4b
    dec bc                                        ; $4a6a: $0b
    adc l                                         ; $4a6b: $8d
    nop                                           ; $4a6c: $00
    ld d, $00                                     ; $4a6d: $16 $00
    or b                                          ; $4a6f: $b0
    ld [hl], e                                    ; $4a70: $73
    nop                                           ; $4a71: $00
    ld [$0855], sp                                ; $4a72: $08 $55 $08
    ld e, l                                       ; $4a75: $5d
    nop                                           ; $4a76: $00
    ld l, b                                       ; $4a77: $68
    ld c, b                                       ; $4a78: $48
    ld c, h                                       ; $4a79: $4c
    ld [$4d02], sp                                ; $4a7a: $08 $02 $4d
    add hl, bc                                    ; $4a7d: $09
    ld l, b                                       ; $4a7e: $68
    ld c, b                                       ; $4a7f: $48
    ld l, b                                       ; $4a80: $68
    ld c, c                                       ; $4a81: $49
    ld h, a                                       ; $4a82: $67
    nop                                           ; $4a83: $00
    ld c, e                                       ; $4a84: $4b
    cp h                                          ; $4a85: $bc
    ld c, c                                       ; $4a86: $49
    nop                                           ; $4a87: $00
    ld c, e                                       ; $4a88: $4b
    ld d, $08                                     ; $4a89: $16 $08
    ld d, h                                       ; $4a8b: $54
    nop                                           ; $4a8c: $00
    ld d, l                                       ; $4a8d: $55
    ld [$007c], sp                                ; $4a8e: $08 $7c $00
    ld l, b                                       ; $4a91: $68
    ld c, c                                       ; $4a92: $49
    nop                                           ; $4a93: $00
    inc l                                         ; $4a94: $2c
    ld c, h                                       ; $4a95: $4c
    ld [$0849], sp                                ; $4a96: $08 $49 $08
    ld c, c                                       ; $4a99: $49
    add hl, hl                                    ; $4a9a: $29
    ld c, c                                       ; $4a9b: $49
    ld c, b                                       ; $4a9c: $48
    ld c, l                                       ; $4a9d: $4d
    ld l, b                                       ; $4a9e: $68
    nop                                           ; $4a9f: $00
    ld c, e                                       ; $4aa0: $4b
    ld c, c                                       ; $4aa1: $49
    adc h                                         ; $4aa2: $8c
    nop                                           ; $4aa3: $00
    ld c, b                                       ; $4aa4: $48
    ld l, b                                       ; $4aa5: $68
    ld c, h                                       ; $4aa6: $4c
    and a                                         ; $4aa7: $a7
    ld hl, $4810                                  ; $4aa8: $21 $10 $48
    ld a, h                                       ; $4aab: $7c
    ld [$2c09], sp                                ; $4aac: $08 $09 $2c
    inc d                                         ; $4aaf: $14
    ld bc, $0111                                  ; $4ab0: $01 $11 $01
    inc sp                                        ; $4ab3: $33
    ld bc, $4c01                                  ; $4ab4: $01 $01 $4c
    ld c, b                                       ; $4ab7: $48
    ld c, b                                       ; $4ab8: $48
    ld c, h                                       ; $4ab9: $4c
    ld c, h                                       ; $4aba: $4c
    ld [$1f4b], sp                                ; $4abb: $08 $4b $1f
    nop                                           ; $4abe: $00
    ret nz                                        ; $4abf: $c0

    ld bc, $3a00                                  ; $4ac0: $01 $00 $3a
    nop                                           ; $4ac3: $00
    ld c, b                                       ; $4ac4: $48
    ld c, b                                       ; $4ac5: $48
    ld l, l                                       ; $4ac6: $6d
    ld l, l                                       ; $4ac7: $6d
    add hl, bc                                    ; $4ac8: $09
    ld l, h                                       ; $4ac9: $6c
    or b                                          ; $4aca: $b0
    jr z, jr_0ce_4ace                             ; $4acb: $28 $01

    inc c                                         ; $4acd: $0c

jr_0ce_4ace:
    ld de, $5401                                  ; $4ace: $11 $01 $54
    ld bc, $0949                                  ; $4ad1: $01 $49 $09
    ld l, c                                       ; $4ad4: $69
    ld l, b                                       ; $4ad5: $68
    ld [$4d48], sp                                ; $4ad6: $08 $48 $4d
    ld l, b                                       ; $4ad9: $68
    ld c, b                                       ; $4ada: $48
    ld b, h                                       ; $4adb: $44
    ld bc, $4c4c                                  ; $4adc: $01 $4c $4c
    inc l                                         ; $4adf: $2c
    ld b, e                                       ; $4ae0: $43
    ld c, h                                       ; $4ae1: $4c
    daa                                           ; $4ae2: $27
    ld bc, $4949                                  ; $4ae3: $01 $49 $49
    ld c, c                                       ; $4ae6: $49
    inc l                                         ; $4ae7: $2c
    ld [hl], h                                    ; $4ae8: $74
    add hl, bc                                    ; $4ae9: $09
    ld [hl], l                                    ; $4aea: $75
    add hl, bc                                    ; $4aeb: $09
    ld [de], a                                    ; $4aec: $12
    inc l                                         ; $4aed: $2c
    inc l                                         ; $4aee: $2c
    ld c, c                                       ; $4aef: $49
    ld b, d                                       ; $4af0: $42
    ld bc, $6d4d                                  ; $4af1: $01 $4d $6d
    ld b, h                                       ; $4af4: $44
    nop                                           ; $4af5: $00
    ld c, h                                       ; $4af6: $4c
    ld bc, $6c4c                                  ; $4af7: $01 $4c $6c
    inc c                                         ; $4afa: $0c
    inc c                                         ; $4afb: $0c
    ld c, h                                       ; $4afc: $4c
    inc l                                         ; $4afd: $2c
    ld l, c                                       ; $4afe: $69
    ld c, b                                       ; $4aff: $48
    ld bc, $0ac0                                  ; $4b00: $01 $c0 $0a
    ld [$2996], sp                                ; $4b03: $08 $96 $29
    ld c, c                                       ; $4b06: $49
    jr nz, jr_0ce_4b09                            ; $4b07: $20 $00

jr_0ce_4b09:
    inc d                                         ; $4b09: $14
    nop                                           ; $4b0a: $00
    xor l                                         ; $4b0b: $ad
    ld bc, $4000                                  ; $4b0c: $01 $00 $40
    ld b, c                                       ; $4b0f: $41
    ld b, d                                       ; $4b10: $42
    ld b, e                                       ; $4b11: $43
    ld b, e                                       ; $4b12: $43
    ld b, h                                       ; $4b13: $44
    ld b, l                                       ; $4b14: $45
    ld b, e                                       ; $4b15: $43
    nop                                           ; $4b16: $00
    ld b, [hl]                                    ; $4b17: $46
    ld b, a                                       ; $4b18: $47
    ld b, [hl]                                    ; $4b19: $46
    ld b, c                                       ; $4b1a: $41
    ld b, b                                       ; $4b1b: $40
    ld c, b                                       ; $4b1c: $48
    ld c, c                                       ; $4b1d: $49
    ld c, c                                       ; $4b1e: $49
    nop                                           ; $4b1f: $00
    ld b, c                                       ; $4b20: $41
    ld b, c                                       ; $4b21: $41
    ld b, c                                       ; $4b22: $41
    ld b, b                                       ; $4b23: $40
    ld b, c                                       ; $4b24: $41
    ld b, c                                       ; $4b25: $41
    ld b, [hl]                                    ; $4b26: $46
    ld c, d                                       ; $4b27: $4a
    jr nz, jr_0ce_4b73                            ; $4b28: $20 $49

    ld b, b                                       ; $4b2a: $40
    ld bc, $4110                                  ; $4b2b: $01 $10 $41
    ld c, e                                       ; $4b2e: $4b
    ld b, e                                       ; $4b2f: $43
    ld b, e                                       ; $4b30: $43
    ld b, e                                       ; $4b31: $43
    ld b, b                                       ; $4b32: $40
    ld c, h                                       ; $4b33: $4c
    inc b                                         ; $4b34: $04
    nop                                           ; $4b35: $00
    ld c, l                                       ; $4b36: $4d
    ld c, e                                       ; $4b37: $4b
    ld b, h                                       ; $4b38: $44
    ld c, d                                       ; $4b39: $4a
    ld c, c                                       ; $4b3a: $49
    ld c, [hl]                                    ; $4b3b: $4e
    nop                                           ; $4b3c: $00
    ld b, a                                       ; $4b3d: $47
    ld c, l                                       ; $4b3e: $4d
    ld c, c                                       ; $4b3f: $49
    ld b, d                                       ; $4b40: $42
    ld c, d                                       ; $4b41: $4a
    ld c, c                                       ; $4b42: $49
    ld b, [hl]                                    ; $4b43: $46
    ld c, c                                       ; $4b44: $49
    ld h, b                                       ; $4b45: $60
    ld c, c                                       ; $4b46: $49
    dec b                                         ; $4b47: $05
    nop                                           ; $4b48: $00
    rra                                           ; $4b49: $1f
    db $10                                        ; $4b4a: $10
    ld c, c                                       ; $4b4b: $49
    ld c, a                                       ; $4b4c: $4f
    ld b, e                                       ; $4b4d: $43
    ld d, b                                       ; $4b4e: $50
    ld d, c                                       ; $4b4f: $51
    nop                                           ; $4b50: $00
    ld c, h                                       ; $4b51: $4c
    ld c, h                                       ; $4b52: $4c
    ld c, h                                       ; $4b53: $4c

jr_0ce_4b54:
    ld b, e                                       ; $4b54: $43
    ld b, a                                       ; $4b55: $47
    ld b, e                                       ; $4b56: $43
    ld b, l                                       ; $4b57: $45
    ld c, e                                       ; $4b58: $4b
    inc b                                         ; $4b59: $04
    ld c, a                                       ; $4b5a: $4f
    ld b, e                                       ; $4b5b: $43
    ld d, d                                       ; $4b5c: $52
    ld b, e                                       ; $4b5d: $43
    ld b, e                                       ; $4b5e: $43
    ld sp, $4f00                                  ; $4b5f: $31 $00 $4f
    ld c, l                                       ; $4b62: $4d
    sub b                                         ; $4b63: $90
    rla                                           ; $4b64: $17
    nop                                           ; $4b65: $00
    ld b, e                                       ; $4b66: $43
    ld b, [hl]                                    ; $4b67: $46
    ld [hl+], a                                   ; $4b68: $22
    nop                                           ; $4b69: $00
    ld c, c                                       ; $4b6a: $49
    ld d, e                                       ; $4b6b: $53
    ld b, e                                       ; $4b6c: $43
    ld d, b                                       ; $4b6d: $50
    ld [$5554], sp                                ; $4b6e: $08 $54 $55
    ld d, c                                       ; $4b71: $51
    ld d, [hl]                                    ; $4b72: $56

jr_0ce_4b73:
    ld a, [de]                                    ; $4b73: $1a
    ld [$434f], sp                                ; $4b74: $08 $4f $43
    ld c, a                                       ; $4b77: $4f
    dec b                                         ; $4b78: $05
    ld d, b                                       ; $4b79: $50
    ld d, c                                       ; $4b7a: $51
    ld b, e                                       ; $4b7b: $43
    ld c, a                                       ; $4b7c: $4f
    ld c, a                                       ; $4b7d: $4f
    ld c, [hl]                                    ; $4b7e: $4e
    nop                                           ; $4b7f: $00
    ld d, a                                       ; $4b80: $57
    dec [hl]                                      ; $4b81: $35
    nop                                           ; $4b82: $00
    adc b                                         ; $4b83: $88
    ld e, b                                       ; $4b84: $58
    nop                                           ; $4b85: $00
    ld b, [hl]                                    ; $4b86: $46
    ld b, c                                       ; $4b87: $41
    ld b, e                                       ; $4b88: $43
    rra                                           ; $4b89: $1f
    nop                                           ; $4b8a: $00
    ld e, b                                       ; $4b8b: $58
    ld e, b                                       ; $4b8c: $58
    ld d, l                                       ; $4b8d: $55
    inc d                                         ; $4b8e: $14
    ld d, c                                       ; $4b8f: $51
    ld b, l                                       ; $4b90: $45
    ld d, d                                       ; $4b91: $52
    jr c, jr_0ce_4b94                             ; $4b92: $38 $00

jr_0ce_4b94:
    ld e, c                                       ; $4b94: $59
    dec hl                                        ; $4b95: $2b
    ld [$574c], sp                                ; $4b96: $08 $4c $57
    and b                                         ; $4b99: $a0
    ld l, [hl]                                    ; $4b9a: $6e
    nop                                           ; $4b9b: $00
    ld d, [hl]                                    ; $4b9c: $56
    dec [hl]                                      ; $4b9d: $35
    ld [$4345], sp                                ; $4b9e: $08 $45 $43
    ld c, l                                       ; $4ba1: $4d
    ld e, d                                       ; $4ba2: $5a
    ld b, e                                       ; $4ba3: $43
    ld [$5443], sp                                ; $4ba4: $08 $43 $54
    ld e, b                                       ; $4ba7: $58
    ld d, l                                       ; $4ba8: $55
    inc bc                                        ; $4ba9: $03
    nop                                           ; $4baa: $00
    ld d, c                                       ; $4bab: $51
    ld e, c                                       ; $4bac: $59
    ld b, e                                       ; $4bad: $43
    ld l, $4f                                     ; $4bae: $2e $4f
    ld c, h                                       ; $4bb0: $4c
    dec hl                                        ; $4bb1: $2b
    jr jr_0ce_4c0a                                ; $4bb2: $18 $56

    adc a                                         ; $4bb4: $8f
    nop                                           ; $4bb5: $00
    dec [hl]                                      ; $4bb6: $35
    jr nz, jr_0ce_4b54                            ; $4bb7: $20 $9b

    nop                                           ; $4bb9: $00
    ld d, b                                       ; $4bba: $50
    rst $38                                       ; $4bbb: $ff
    dec a                                         ; $4bbc: $3d
    nop                                           ; $4bbd: $00
    ld b, e                                       ; $4bbe: $43
    nop                                           ; $4bbf: $00
    jr c, jr_0ce_4bc2                             ; $4bc0: $38 $00

jr_0ce_4bc2:
    ld c, d                                       ; $4bc2: $4a
    ld [$102b], sp                                ; $4bc3: $08 $2b $10
    ld a, [bc]                                    ; $4bc6: $0a
    ld e, b                                       ; $4bc7: $58
    rra                                           ; $4bc8: $1f
    nop                                           ; $4bc9: $00
    ld hl, $ff18                                  ; $4bca: $21 $18 $ff
    dec b                                         ; $4bcd: $05
    and b                                         ; $4bce: $a0
    ld a, $00                                     ; $4bcf: $3e $00
    ld b, d                                       ; $4bd1: $42
    jr jr_0ce_4bf8                                ; $4bd2: $18 $24

    db $10                                        ; $4bd4: $10
    ld a, [bc]                                    ; $4bd5: $0a
    ld a, b                                       ; $4bd6: $78
    and b                                         ; $4bd7: $a0
    jr @+$08                                      ; $4bd8: $18 $06

    jr z, @+$0c                                   ; $4bda: $28 $0a

    ld a, b                                       ; $4bdc: $78
    ld hl, sp+$3a                                 ; $4bdd: $f8 $3a
    jr z, @+$1d                                   ; $4bdf: $28 $1b

    add b                                         ; $4be1: $80
    ld a, l                                       ; $4be2: $7d
    db $10                                        ; $4be3: $10
    ld a, d                                       ; $4be4: $7a
    jr nc, jr_0ce_4c4c                            ; $4be5: $30 $65

    and b                                         ; $4be7: $a0
    ld d, l                                       ; $4be8: $55
    ld d, c                                       ; $4be9: $51
    ld b, e                                       ; $4bea: $43
    ld hl, sp-$27                                 ; $4beb: $f8 $d9
    ld [$b8a0], sp                                ; $4bed: $08 $a0 $b8
    ld a, [hl]                                    ; $4bf0: $7e
    add hl, bc                                    ; $4bf1: $09
    db $db                                        ; $4bf2: $db
    sbc b                                         ; $4bf3: $98
    ld a, [de]                                    ; $4bf4: $1a
    ld de, $454c                                  ; $4bf5: $11 $4c $45

jr_0ce_4bf8:
    ld c, h                                       ; $4bf8: $4c
    cp c                                          ; $4bf9: $b9
    ld de, $4c41                                  ; $4bfa: $11 $41 $4c
    dec h                                         ; $4bfd: $25
    ld hl, $016d                                  ; $4bfe: $21 $6d $01
    cpl                                           ; $4c01: $2f
    ld hl, $4d5a                                  ; $4c02: $21 $5a $4d
    dec d                                         ; $4c05: $15
    nop                                           ; $4c06: $00
    sub $09                                       ; $4c07: $d6 $09
    add hl, de                                    ; $4c09: $19

jr_0ce_4c0a:
    jr nc, jr_0ce_4c0d                            ; $4c0a: $30 $01

    ld b, l                                       ; $4c0c: $45

jr_0ce_4c0d:
    ld e, e                                       ; $4c0d: $5b
    ld hl, $175b                                  ; $4c0e: $21 $5b $17
    nop                                           ; $4c11: $00
    ld h, l                                       ; $4c12: $65
    add hl, de                                    ; $4c13: $19
    ld b, c                                       ; $4c14: $41
    ld [hl], c                                    ; $4c15: $71
    ld b, [hl]                                    ; $4c16: $46
    rst $18                                       ; $4c17: $df
    ld de, $01c6                                  ; $4c18: $11 $c6 $01
    and l                                         ; $4c1b: $a5
    ld de, $5743                                  ; $4c1c: $11 $43 $57
    ld e, c                                       ; $4c1f: $59
    and l                                         ; $4c20: $a5
    ld bc, $4a30                                  ; $4c21: $01 $30 $4a
    ld c, c                                       ; $4c24: $49
    rla                                           ; $4c25: $17
    nop                                           ; $4c26: $00
    and l                                         ; $4c27: $a5
    add hl, bc                                    ; $4c28: $09
    ld d, [hl]                                    ; $4c29: $56
    ld b, l                                       ; $4c2a: $45
    ld b, b                                       ; $4c2b: $40
    ld b, b                                       ; $4c2c: $40
    ld h, e                                       ; $4c2d: $63
    ld b, [hl]                                    ; $4c2e: $46
    rra                                           ; $4c2f: $1f
    ld a, [bc]                                    ; $4c30: $0a
    ret nc                                        ; $4c31: $d0

    ld bc, $4f45                                  ; $4c32: $01 $45 $4f
    ld c, e                                       ; $4c35: $4b
    ld hl, $da10                                  ; $4c36: $21 $10 $da
    ld bc, $1d99                                  ; $4c39: $01 $99 $1d
    ld a, [bc]                                    ; $4c3c: $0a
    ld b, [hl]                                    ; $4c3d: $46
    ld e, e                                       ; $4c3e: $5b
    inc d                                         ; $4c3f: $14
    db $10                                        ; $4c40: $10
    ld a, [bc]                                    ; $4c41: $0a
    ld [$4942], sp                                ; $4c42: $08 $42 $49
    ld d, b                                       ; $4c45: $50
    ld [$20d4], sp                                ; $4c46: $08 $d4 $20
    ld a, [hl+]                                   ; $4c49: $2a
    rrca                                          ; $4c4a: $0f
    nop                                           ; $4c4b: $00

jr_0ce_4c4c:
    ld b, c                                       ; $4c4c: $41
    dec a                                         ; $4c4d: $3d
    ld a, [bc]                                    ; $4c4e: $0a
    ld b, [hl]                                    ; $4c4f: $46
    ld b, l                                       ; $4c50: $45
    ld [bc], a                                    ; $4c51: $02
    ld b, a                                       ; $4c52: $47
    ld c, l                                       ; $4c53: $4d
    add a                                         ; $4c54: $87
    ld b, a                                       ; $4c55: $47
    ld a, [bc]                                    ; $4c56: $0a
    ld e, h                                       ; $4c57: $5c
    ld b, c                                       ; $4c58: $41
    ld b, [hl]                                    ; $4c59: $46
    ld b, d                                       ; $4c5a: $42
    ld h, b                                       ; $4c5b: $60
    ld a, [hl-]                                   ; $4c5c: $3a
    rrca                                          ; $4c5d: $0f
    nop                                           ; $4c5e: $00
    ld e, h                                       ; $4c5f: $5c
    ld a, [de]                                    ; $4c60: $1a
    adc e                                         ; $4c61: $8b
    ld e, e                                       ; $4c62: $5b
    nop                                           ; $4c63: $00
    ld c, d                                       ; $4c64: $4a
    ld c, c                                       ; $4c65: $49
    ld [$0001], sp                                ; $4c66: $08 $01 $00
    jr z, jr_0ce_4c6e                             ; $4c69: $28 $03

    jr jr_0ce_4c74                                ; $4c6b: $18 $07

    nop                                           ; $4c6d: $00

jr_0ce_4c6e:
    ld d, $08                                     ; $4c6e: $16 $08
    ld c, b                                       ; $4c70: $48
    ld c, b                                       ; $4c71: $48
    ld c, $00                                     ; $4c72: $0e $00

jr_0ce_4c74:
    ld c, b                                       ; $4c74: $48
    ld a, [bc]                                    ; $4c75: $0a
    ld [$1803], sp                                ; $4c76: $08 $03 $18
    ld l, b                                       ; $4c79: $68
    db $eb                                        ; $4c7a: $eb
    jr @+$1a                                      ; $4c7b: $18 $18

    dec de                                        ; $4c7d: $1b
    ld [$101f], sp                                ; $4c7e: $08 $1f $10
    jr z, @+$2f                                   ; $4c81: $28 $2d

    db $10                                        ; $4c83: $10
    ld c, b                                       ; $4c84: $48
    rrca                                          ; $4c85: $0f
    jr nz, jr_0ce_4ca8                            ; $4c86: $20 $20

    ld [$281f], sp                                ; $4c88: $08 $1f $28
    ld c, $0e                                     ; $4c8b: $0e $0e
    ld b, c                                       ; $4c8d: $41
    nop                                           ; $4c8e: $00
    inc de                                        ; $4c8f: $13
    db $10                                        ; $4c90: $10

jr_0ce_4c91:
    ld [hl], $20                                  ; $4c91: $36 $20
    inc h                                         ; $4c93: $24
    jr jr_0ce_4c97                                ; $4c94: $18 $01

    nop                                           ; $4c96: $00

jr_0ce_4c97:
    add h                                         ; $4c97: $84
    ld b, [hl]                                    ; $4c98: $46
    db $10                                        ; $4c99: $10
    rrca                                          ; $4c9a: $0f
    rrca                                          ; $4c9b: $0f
    rrca                                          ; $4c9c: $0f
    dec bc                                        ; $4c9d: $0b
    ld h, d                                       ; $4c9e: $62
    ld [$6868], sp                                ; $4c9f: $08 $68 $68
    ld [bc], a                                    ; $4ca2: $02
    jr z, jr_0ce_4cad                             ; $4ca3: $28 $08

    dec bc                                        ; $4ca5: $0b
    dec bc                                        ; $4ca6: $0b

jr_0ce_4ca7:
    ld l, b                                       ; $4ca7: $68

jr_0ce_4ca8:
    ld l, b                                       ; $4ca8: $68
    ld h, c                                       ; $4ca9: $61
    ld [$0408], sp                                ; $4caa: $08 $08 $04

jr_0ce_4cad:
    jr z, jr_0ce_4cba                             ; $4cad: $28 $0b

    ld c, $28                                     ; $4caf: $0e $28
    ld c, b                                       ; $4cb1: $48
    ld [hl+], a                                   ; $4cb2: $22
    db $10                                        ; $4cb3: $10
    ld c, $0f                                     ; $4cb4: $0e $0f
    ld [$4f0f], sp                                ; $4cb6: $08 $0f $4f
    rrca                                          ; $4cb9: $0f

jr_0ce_4cba:
    ld c, $71                                     ; $4cba: $0e $71
    jr jr_0ce_4cc9                                ; $4cbc: $18 $0b

    rrca                                          ; $4cbe: $0f
    rrca                                          ; $4cbf: $0f
    db $ec                                        ; $4cc0: $ec
    ld c, h                                       ; $4cc1: $4c
    nop                                           ; $4cc2: $00
    add a                                         ; $4cc3: $87
    ld [$000a], sp                                ; $4cc4: $08 $0a $00
    dec bc                                        ; $4cc7: $0b
    ld b, c                                       ; $4cc8: $41

jr_0ce_4cc9:
    jr jr_0ce_4cea                                ; $4cc9: $18 $1f

    nop                                           ; $4ccb: $00
    ld c, a                                       ; $4ccc: $4f
    ld c, a                                       ; $4ccd: $4f
    and e                                         ; $4cce: $a3
    ld b, d                                       ; $4ccf: $42
    db $10                                        ; $4cd0: $10
    jr z, @+$21                                   ; $4cd1: $28 $1f

    nop                                           ; $4cd3: $00
    ld c, a                                       ; $4cd4: $4f
    rrca                                          ; $4cd5: $0f
    rrca                                          ; $4cd6: $0f
    ld e, d                                       ; $4cd7: $5a
    ld [$100a], sp                                ; $4cd8: $08 $0a $10
    cpl                                           ; $4cdb: $2f
    dec bc                                        ; $4cdc: $0b
    jr z, jr_0ce_4d5c                             ; $4cdd: $28 $7d

    nop                                           ; $4cdf: $00
    dec bc                                        ; $4ce0: $0b
    rra                                           ; $4ce1: $1f
    ld [$1021], sp                                ; $4ce2: $08 $21 $10
    ld l, c                                       ; $4ce5: $69
    ld [$200a], sp                                ; $4ce6: $08 $0a $20
    adc e                                         ; $4ce9: $8b

jr_0ce_4cea:
    add hl, hl                                    ; $4cea: $29
    ld [$4f4f], sp                                ; $4ceb: $08 $4f $4f
    dec bc                                        ; $4cee: $0b
    ld a, [bc]                                    ; $4cef: $0a
    ld [$3d0b], sp                                ; $4cf0: $08 $0b $3d
    nop                                           ; $4cf3: $00
    ld b, d                                       ; $4cf4: $42
    jr @+$01                                      ; $4cf5: $18 $ff

    rra                                           ; $4cf7: $1f
    jr jr_0ce_4d46                                ; $4cf8: $18 $4c

jr_0ce_4cfa:
    ld [$181f], sp                                ; $4cfa: $08 $1f $18
    ld a, [bc]                                    ; $4cfd: $0a
    db $10                                        ; $4cfe: $10
    ccf                                           ; $4cff: $3f
    nop                                           ; $4d00: $00
    and b                                         ; $4d01: $a0
    nop                                           ; $4d02: $00
    ld h, e                                       ; $4d03: $63
    db $10                                        ; $4d04: $10
    ld l, c                                       ; $4d05: $69
    ld [$0aff], sp                                ; $4d06: $08 $ff $0a
    add b                                         ; $4d09: $80
    inc b                                         ; $4d0a: $04
    jr jr_0ce_4c91                                ; $4d0b: $18 $84

    ld [$1024], sp                                ; $4d0d: $08 $24 $10

jr_0ce_4d10:
    ld a, [bc]                                    ; $4d10: $0a
    add b                                         ; $4d11: $80
    dec a                                         ; $4d12: $3d
    db $10                                        ; $4d13: $10
    add l                                         ; $4d14: $85
    db $10                                        ; $4d15: $10
    dec hl                                        ; $4d16: $2b
    jr z, jr_0ce_4ca7                             ; $4d17: $28 $8e

    ld a, [bc]                                    ; $4d19: $0a
    ld d, b                                       ; $4d1a: $50
    ld c, a                                       ; $4d1b: $4f
    ld c, e                                       ; $4d1c: $4b
    ld c, e                                       ; $4d1d: $4b
    add h                                         ; $4d1e: $84
    jr @+$6a                                      ; $4d1f: $18 $68

    jr z, @+$0c                                   ; $4d21: $28 $0a

    ld e, b                                       ; $4d23: $58
    ld c, a                                       ; $4d24: $4f
    add hl, de                                    ; $4d25: $19
    ld c, e                                       ; $4d26: $4b
    ld l, b                                       ; $4d27: $68
    ld l, b                                       ; $4d28: $68
    ld a, a                                       ; $4d29: $7f
    jr jr_0ce_4d35                                ; $4d2a: $18 $09

    ld bc, $4e4e                                  ; $4d2c: $01 $4e $4e
    ld a, [bc]                                    ; $4d2f: $0a
    jr nc, jr_0ce_4cfa                            ; $4d30: $30 $c8

    inc d                                         ; $4d32: $14
    jr z, @+$21                                   ; $4d33: $28 $1f

jr_0ce_4d35:
    nop                                           ; $4d35: $00
    ld c, b                                       ; $4d36: $48
    ld c, b                                       ; $4d37: $48
    and b                                         ; $4d38: $a0
    jr nz, @+$50                                  ; $4d39: $20 $4e

    ld c, b                                       ; $4d3b: $48
    ld c, b                                       ; $4d3c: $48
    sbc c                                         ; $4d3d: $99
    ld hl, $4f18                                  ; $4d3e: $21 $18 $4f
    ld c, e                                       ; $4d41: $4b
    inc d                                         ; $4d42: $14
    jr nc, jr_0ce_4d63                            ; $4d43: $30 $1e

    nop                                           ; $4d45: $00

jr_0ce_4d46:
    ld l, b                                       ; $4d46: $68
    ld c, b                                       ; $4d47: $48
    ld b, d                                       ; $4d48: $42
    db $10                                        ; $4d49: $10
    rra                                           ; $4d4a: $1f
    ld c, a                                       ; $4d4b: $4f
    ld c, [hl]                                    ; $4d4c: $4e
    ld l, b                                       ; $4d4d: $68
    ld bc, $0a00                                  ; $4d4e: $01 $00 $0a
    jr z, jr_0ce_4d67                             ; $4d51: $28 $14

    jr nz, @+$22                                  ; $4d53: $20 $20

    ld [$0821], sp                                ; $4d55: $08 $21 $08
    xor l                                         ; $4d58: $ad
    ld e, c                                       ; $4d59: $59
    nop                                           ; $4d5a: $00
    ld c, [hl]                                    ; $4d5b: $4e

jr_0ce_4d5c:
    dec bc                                        ; $4d5c: $0b
    ld [$1148], sp                                ; $4d5d: $08 $48 $11
    ld bc, $0073                                  ; $4d60: $01 $73 $00

jr_0ce_4d63:
    ld [$0055], sp                                ; $4d63: $08 $55 $00
    db $ed                                        ; $4d66: $ed

jr_0ce_4d67:
    ld a, [bc]                                    ; $4d67: $0a
    jr jr_0ce_4d7e                                ; $4d68: $18 $14

    ld [$1021], sp                                ; $4d6a: $08 $21 $10
    ld c, e                                       ; $4d6d: $4b
    inc d                                         ; $4d6e: $14
    ld [$082d], sp                                ; $4d6f: $08 $2d $08
    ld c, [hl]                                    ; $4d72: $4e
    add hl, hl                                    ; $4d73: $29
    jr jr_0ce_4d10                                ; $4d74: $18 $9a

    ld e, b                                       ; $4d76: $58
    nop                                           ; $4d77: $00
    ld c, e                                       ; $4d78: $4b
    ld c, [hl]                                    ; $4d79: $4e
    nop                                           ; $4d7a: $00
    ld a, [bc]                                    ; $4d7b: $0a
    ld h, b                                       ; $4d7c: $60
    nop                                           ; $4d7d: $00

jr_0ce_4d7e:
    ld c, b                                       ; $4d7e: $48
    add l                                         ; $4d7f: $85
    ld [$7f48], sp                                ; $4d80: $08 $48 $7f
    ld l, b                                       ; $4d83: $68
    ld e, $02                                     ; $4d84: $1e $02
    ld l, $10                                     ; $4d86: $2e $10
    call nz, Call_000_2a01                        ; $4d88: $c4 $01 $2a
    ld [bc], a                                    ; $4d8b: $02
    jr nc, jr_0ce_4d9e                            ; $4d8c: $30 $10

    jr nz, @+$04                                  ; $4d8e: $20 $02

    ld hl, $ff08                                  ; $4d90: $21 $08 $ff
    ld d, b                                       ; $4d93: $50
    nop                                           ; $4d94: $00
    inc hl                                        ; $4d95: $23
    db $10                                        ; $4d96: $10
    ld [$9008], sp                                ; $4d97: $08 $08 $90
    ld [$0a56], sp                                ; $4d9a: $08 $56 $0a
    ld l, [hl]                                    ; $4d9d: $6e

jr_0ce_4d9e:
    ld [$0a40], sp                                ; $4d9e: $08 $40 $0a
    ld b, a                                       ; $4da1: $47
    ld [de], a                                    ; $4da2: $12
    ld hl, sp+$37                                 ; $4da3: $f8 $37
    db $10                                        ; $4da5: $10
    ld e, [hl]                                    ; $4da6: $5e
    ld a, [bc]                                    ; $4da7: $0a
    jr c, jr_0ce_4daa                             ; $4da8: $38 $00

jr_0ce_4daa:
    ld a, [hl+]                                   ; $4daa: $2a
    ld a, [hl-]                                   ; $4dab: $3a
    sbc h                                         ; $4dac: $9c
    nop                                           ; $4dad: $00
    jr nz, jr_0ce_4db0                            ; $4dae: $20 $00

jr_0ce_4db0:
    dec d                                         ; $4db0: $15
    nop                                           ; $4db1: $00
    ld a, [hl+]                                   ; $4db2: $2a
    ld bc, $4010                                  ; $4db3: $01 $10 $40
    ld b, c                                       ; $4db6: $41
    ld b, d                                       ; $4db7: $42
    ld bc, $4388                                  ; $4db8: $01 $88 $43
    ld b, h                                       ; $4dbb: $44
    ld b, l                                       ; $4dbc: $45
    ld b, [hl]                                    ; $4dbd: $46
    nop                                           ; $4dbe: $00
    ld b, a                                       ; $4dbf: $47
    ld c, b                                       ; $4dc0: $48
    ld c, c                                       ; $4dc1: $49
    ld c, d                                       ; $4dc2: $4a
    ld c, e                                       ; $4dc3: $4b
    ld c, l                                       ; $4dc4: $4d
    ld c, [hl]                                    ; $4dc5: $4e
    ld c, a                                       ; $4dc6: $4f
    pop bc                                        ; $4dc7: $c1
    ld hl, $2c38                                  ; $4dc8: $21 $38 $2c
    jr nz, jr_0ce_4e0e                            ; $4dcb: $20 $41

    ld d, b                                       ; $4dcd: $50
    ld d, c                                       ; $4dce: $51
    ld c, b                                       ; $4dcf: $48
    ld d, d                                       ; $4dd0: $52
    jr nz, jr_0ce_4dd3                            ; $4dd1: $20 $00

jr_0ce_4dd3:
    nop                                           ; $4dd3: $00
    ld d, e                                       ; $4dd4: $53
    ld d, h                                       ; $4dd5: $54
    ld b, l                                       ; $4dd6: $45
    ld d, l                                       ; $4dd7: $55
    ld c, l                                       ; $4dd8: $4d
    ld d, [hl]                                    ; $4dd9: $56
    ld c, c                                       ; $4dda: $49
    ld d, a                                       ; $4ddb: $57
    nop                                           ; $4ddc: $00
    ld e, b                                       ; $4ddd: $58
    ld e, c                                       ; $4dde: $59
    ld e, c                                       ; $4ddf: $59
    ld e, d                                       ; $4de0: $5a
    ld e, e                                       ; $4de1: $5b
    ld e, c                                       ; $4de2: $59
    ld e, c                                       ; $4de3: $59
    ld e, c                                       ; $4de4: $59
    jr nz, jr_0ce_4e42                            ; $4de5: $20 $5b

    ld c, [hl]                                    ; $4de7: $4e
    dec b                                         ; $4de8: $05
    nop                                           ; $4de9: $00
    ld e, c                                       ; $4dea: $59
    ld e, h                                       ; $4deb: $5c
    ld e, l                                       ; $4dec: $5d
    ld e, [hl]                                    ; $4ded: $5e
    ld d, d                                       ; $4dee: $52
    nop                                           ; $4def: $00
    ld e, a                                       ; $4df0: $5f
    ld d, e                                       ; $4df1: $53
    ld d, d                                       ; $4df2: $52
    ld b, l                                       ; $4df3: $45
    ld h, b                                       ; $4df4: $60
    ld b, a                                       ; $4df5: $47
    ld b, a                                       ; $4df6: $47
    ld h, c                                       ; $4df7: $61
    nop                                           ; $4df8: $00
    ld b, l                                       ; $4df9: $45
    ld h, d                                       ; $4dfa: $62
    ld c, l                                       ; $4dfb: $4d
    ld h, e                                       ; $4dfc: $63
    ld c, b                                       ; $4dfd: $48
    ld c, c                                       ; $4dfe: $49
    ld b, a                                       ; $4dff: $47
    ld c, b                                       ; $4e00: $48
    ld [bc], a                                    ; $4e01: $02
    ld h, h                                       ; $4e02: $64
    ld c, d                                       ; $4e03: $4a
    ld h, l                                       ; $4e04: $65
    ld h, h                                       ; $4e05: $64
    ld h, h                                       ; $4e06: $64
    ld h, h                                       ; $4e07: $64
    inc b                                         ; $4e08: $04
    nop                                           ; $4e09: $00
    ld c, b                                       ; $4e0a: $48
    nop                                           ; $4e0b: $00
    ld h, h                                       ; $4e0c: $64
    ld h, h                                       ; $4e0d: $64

jr_0ce_4e0e:
    ld h, [hl]                                    ; $4e0e: $66
    ld h, a                                       ; $4e0f: $67
    ld l, b                                       ; $4e10: $68
    ld d, d                                       ; $4e11: $52
    ld e, a                                       ; $4e12: $5f
    ld l, c                                       ; $4e13: $69
    nop                                           ; $4e14: $00
    ld d, d                                       ; $4e15: $52
    ld l, d                                       ; $4e16: $6a
    ld l, e                                       ; $4e17: $6b
    ld e, b                                       ; $4e18: $58
    ld e, b                                       ; $4e19: $58
    ld l, h                                       ; $4e1a: $6c
    ld b, l                                       ; $4e1b: $45
    ld c, d                                       ; $4e1c: $4a
    inc bc                                        ; $4e1d: $03
    ld l, l                                       ; $4e1e: $6d
    ld h, e                                       ; $4e1f: $63
    ld d, e                                       ; $4e20: $53
    ld c, c                                       ; $4e21: $49
    ld b, a                                       ; $4e22: $47
    ld d, e                                       ; $4e23: $53
    inc e                                         ; $4e24: $1c
    db $10                                        ; $4e25: $10
    jr nz, jr_0ce_4e30                            ; $4e26: $20 $08

    ld [de], a                                    ; $4e28: $12
    ld d, e                                       ; $4e29: $53
    ld h, h                                       ; $4e2a: $64
    ld c, b                                       ; $4e2b: $48
    jr nz, jr_0ce_4e3e                            ; $4e2c: $20 $10

    ld l, [hl]                                    ; $4e2e: $6e
    ld d, b                                       ; $4e2f: $50

jr_0ce_4e30:
    sub a                                         ; $4e30: $97
    db $10                                        ; $4e31: $10
    ld c, a                                       ; $4e32: $4f
    ld [bc], a                                    ; $4e33: $02
    ld c, e                                       ; $4e34: $4b
    ld l, a                                       ; $4e35: $6f
    ld [hl], b                                    ; $4e36: $70
    ld d, a                                       ; $4e37: $57
    ld c, c                                       ; $4e38: $49
    ld b, a                                       ; $4e39: $47
    inc a                                         ; $4e3a: $3c
    jr jr_0ce_4e9f                                ; $4e3b: $18 $62

    sub d                                         ; $4e3d: $92

jr_0ce_4e3e:
    ld b, h                                       ; $4e3e: $44
    ld [$5364], sp                                ; $4e3f: $08 $64 $53

jr_0ce_4e42:
    ld b, b                                       ; $4e42: $40
    nop                                           ; $4e43: $00
    ld b, h                                       ; $4e44: $44
    ld [hl], c                                    ; $4e45: $71
    or l                                          ; $4e46: $b5
    ld c, b                                       ; $4e47: $48
    ld c, a                                       ; $4e48: $4f
    nop                                           ; $4e49: $00
    ld [hl], d                                    ; $4e4a: $72
    ld [hl], e                                    ; $4e4b: $73
    ld [hl], e                                    ; $4e4c: $73

jr_0ce_4e4d:
    ld [hl], e                                    ; $4e4d: $73
    ld [hl], h                                    ; $4e4e: $74
    ld [hl], e                                    ; $4e4f: $73
    ld [hl], e                                    ; $4e50: $73
    ld [hl], l                                    ; $4e51: $75
    ret z                                         ; $4e52: $c8

    inc b                                         ; $4e53: $04
    nop                                           ; $4e54: $00
    ld [bc], a                                    ; $4e55: $02
    ld [$7650], sp                                ; $4e56: $08 $50 $76
    db $d3                                        ; $4e59: $d3
    ld [$7877], sp                                ; $4e5a: $08 $77 $78
    ld [hl], d                                    ; $4e5d: $72
    ld a, [bc]                                    ; $4e5e: $0a
    ld [hl], d                                    ; $4e5f: $72
    ld a, c                                       ; $4e60: $79
    ld b, c                                       ; $4e61: $41
    ld b, d                                       ; $4e62: $42
    ldh [$d0], a                                  ; $4e63: $e0 $d0
    ld h, c                                       ; $4e65: $61
    ldh [$e0], a                                  ; $4e66: $e0 $e0
    ld h, c                                       ; $4e68: $61
    or $e0                                        ; $4e69: $f6 $e0
    ld hl, sp-$20                                 ; $4e6b: $f8 $e0
    ld hl, sp-$20                                 ; $4e6d: $f8 $e0
    ld hl, sp-$20                                 ; $4e6f: $f8 $e0
    jr @+$64                                      ; $4e71: $18 $62

    inc b                                         ; $4e73: $04
    ld de, $b8e0                                  ; $4e74: $11 $e0 $b8
    ld [hl], l                                    ; $4e77: $75
    rst $38                                       ; $4e78: $ff
    db $e4                                        ; $4e79: $e4
    ld [$f8e0], sp                                ; $4e7a: $08 $e0 $f8
    ldh [$f8], a                                  ; $4e7d: $e0 $f8
    ldh [$f8], a                                  ; $4e7f: $e0 $f8
    ret nz                                        ; $4e81: $c0

    ld sp, hl                                     ; $4e82: $f9
    ret nz                                        ; $4e83: $c0

    ld sp, hl                                     ; $4e84: $f9
    ret nz                                        ; $4e85: $c0

    ld a, c                                       ; $4e86: $79
    ldh [$e0], a                                  ; $4e87: $e0 $e0
    ret z                                         ; $4e89: $c8

    inc b                                         ; $4e8a: $04
    jr jr_0ce_4e4d                                ; $4e8b: $18 $c0

    ld l, c                                       ; $4e8d: $69
    inc c                                         ; $4e8e: $0c
    add hl, bc                                    ; $4e8f: $09
    ld bc, $0a08                                  ; $4e90: $01 $08 $0a
    add hl, bc                                    ; $4e93: $09
    ld a, [bc]                                    ; $4e94: $0a
    ldh [rSB], a                                  ; $4e95: $e0 $01
    db $10                                        ; $4e97: $10
    add hl, bc                                    ; $4e98: $09
    nop                                           ; $4e99: $00
    stop                                          ; $4e9a: $10 $00
    ld [$0909], sp                                ; $4e9c: $08 $09 $09

jr_0ce_4e9f:
    dec bc                                        ; $4e9f: $0b
    dec bc                                        ; $4ea0: $0b
    nop                                           ; $4ea1: $00
    dec bc                                        ; $4ea2: $0b
    rrca                                          ; $4ea3: $0f
    ld [$080e], sp                                ; $4ea4: $08 $0e $08
    dec bc                                        ; $4ea7: $0b
    dec bc                                        ; $4ea8: $0b
    inc c                                         ; $4ea9: $0c
    ld [c], a                                     ; $4eaa: $e2
    ld hl, $0120                                  ; $4eab: $21 $20 $01
    jr nz, jr_0ce_4ede                            ; $4eae: $20 $2e

    db $10                                        ; $4eb0: $10
    add hl, bc                                    ; $4eb1: $09
    add hl, bc                                    ; $4eb2: $09
    rrca                                          ; $4eb3: $0f
    jr nz, @+$1a                                  ; $4eb4: $20 $18

    rrca                                          ; $4eb6: $0f
    ld b, l                                       ; $4eb7: $45
    ld c, e                                       ; $4eb8: $4b
    jr nz, @+$22                                  ; $4eb9: $20 $20

    ld a, [bc]                                    ; $4ebb: $0a
    add hl, bc                                    ; $4ebc: $09
    dec c                                         ; $4ebd: $0d
    ld bc, $2d00                                  ; $4ebe: $01 $00 $2d
    ld b, b                                       ; $4ec1: $40
    jr z, jr_0ce_4f14                             ; $4ec2: $28 $50

    ld l, b                                       ; $4ec4: $68
    jr nz, @+$1a                                  ; $4ec5: $20 $18

    ld [$1020], sp                                ; $4ec7: $08 $20 $10
    ld a, [bc]                                    ; $4eca: $0a
    ld l, b                                       ; $4ecb: $68
    ld c, b                                       ; $4ecc: $48
    ld [$0824], sp                                ; $4ecd: $08 $24 $08
    ld [$1820], sp                                ; $4ed0: $08 $20 $18
    ld a, [bc]                                    ; $4ed3: $0a
    ld c, $0b                                     ; $4ed4: $0e $0b
    nop                                           ; $4ed6: $00
    ld [$9509], sp                                ; $4ed7: $08 $09 $95
    jr nz, jr_0ce_4ef4                            ; $4eda: $20 $18

    ld c, b                                       ; $4edc: $48
    ld c, b                                       ; $4edd: $48

jr_0ce_4ede:
    jr nz, jr_0ce_4f48                            ; $4ede: $20 $68

    ld [$0073], sp                                ; $4ee0: $08 $73 $00
    add hl, bc                                    ; $4ee3: $09
    jr nz, jr_0ce_4efe                            ; $4ee4: $20 $18

    ld b, b                                       ; $4ee6: $40
    ld l, e                                       ; $4ee7: $6b
    add hl, hl                                    ; $4ee8: $29
    ld [$6e08], sp                                ; $4ee9: $08 $08 $6e
    ld l, e                                       ; $4eec: $6b
    inc c                                         ; $4eed: $0c
    inc c                                         ; $4eee: $0c
    ld l, c                                       ; $4eef: $69
    db $fd                                        ; $4ef0: $fd
    jr nz, @+$4a                                  ; $4ef1: $20 $48

    dec a                                         ; $4ef3: $3d

jr_0ce_4ef4:
    nop                                           ; $4ef4: $00
    ld b, b                                       ; $4ef5: $40
    db $10                                        ; $4ef6: $10
    ld e, $10                                     ; $4ef7: $1e $10
    ld c, e                                       ; $4ef9: $4b
    ld [$00bf], sp                                ; $4efa: $08 $bf $00
    ld l, c                                       ; $4efd: $69

jr_0ce_4efe:
    or l                                          ; $4efe: $b5
    nop                                           ; $4eff: $00
    ld [hl], b                                    ; $4f00: $70
    ld a, [bc]                                    ; $4f01: $0a
    ld h, b                                       ; $4f02: $60
    jr nz, jr_0ce_4f15                            ; $4f03: $20 $10

    db $10                                        ; $4f05: $10
    jp nz, Jump_000_0808                          ; $4f06: $c2 $08 $08

    rrca                                          ; $4f09: $0f
    rrca                                          ; $4f0a: $0f
    ld c, b                                       ; $4f0b: $48
    dec bc                                        ; $4f0c: $0b
    ld c, c                                       ; $4f0d: $49
    rrca                                          ; $4f0e: $0f
    ld [$e009], sp                                ; $4f0f: $08 $09 $e0
    ret z                                         ; $4f12: $c8

    ld a, [bc]                                    ; $4f13: $0a

jr_0ce_4f14:
    rst $00                                       ; $4f14: $c7

jr_0ce_4f15:
    nop                                           ; $4f15: $00
    ldh [$c8], a                                  ; $4f16: $e0 $c8
    ld h, e                                       ; $4f18: $63
    ld a, [bc]                                    ; $4f19: $0a
    ldh [$f8], a                                  ; $4f1a: $e0 $f8
    jr nz, @+$03                                  ; $4f1c: $20 $01

    ld [$4868], sp                                ; $4f1e: $08 $68 $48
    or h                                          ; $4f21: $b4
    nop                                           ; $4f22: $00
    ldh [rNR41], a                                ; $4f23: $e0 $20
    ld h, e                                       ; $4f25: $63
    ld a, [bc]                                    ; $4f26: $0a
    ldh [$78], a                                  ; $4f27: $e0 $78
    jr nz, jr_0ce_4f6b                            ; $4f29: $20 $40

    ld [$0a08], sp                                ; $4f2b: $08 $08 $0a
    ld d, l                                       ; $4f2e: $55
    ld bc, $d8e0                                  ; $4f2f: $01 $e0 $d8
    db $d3                                        ; $4f32: $d3
    jr nz, jr_0ce_4f4d                            ; $4f33: $20 $18

    ldh [$f8], a                                  ; $4f35: $e0 $f8
    ld [$0940], sp                                ; $4f37: $08 $40 $09
    ld [$8008], sp                                ; $4f3a: $08 $08 $80
    add hl, hl                                    ; $4f3d: $29
    ret nz                                        ; $4f3e: $c0

    adc c                                         ; $4f3f: $89
    ld [hl], c                                    ; $4f40: $71
    ld [$e0e0], sp                                ; $4f41: $08 $e0 $e0
    and b                                         ; $4f44: $a0
    add hl, de                                    ; $4f45: $19
    ret nz                                        ; $4f46: $c0

    jp hl                                         ; $4f47: $e9


jr_0ce_4f48:
    add hl, bc                                    ; $4f48: $09
    ld l, b                                       ; $4f49: $68
    ld c, b                                       ; $4f4a: $48
    sub $00                                       ; $4f4b: $d6 $00

jr_0ce_4f4d:
    rst $38                                       ; $4f4d: $ff
    ret nz                                        ; $4f4e: $c0

    ld hl, $1975                                  ; $4f4f: $21 $75 $19
    ret nz                                        ; $4f52: $c0

    ld d, c                                       ; $4f53: $51
    jr nz, jr_0ce_4f96                            ; $4f54: $20 $40

    db $dd                                        ; $4f56: $dd
    add hl, bc                                    ; $4f57: $09
    ld [bc], a                                    ; $4f58: $02
    ld bc, $d1c0                                  ; $4f59: $01 $c0 $d1
    jr nz, jr_0ce_4f76                            ; $4f5c: $20 $18

    ret nz                                        ; $4f5e: $c0

    ret nz                                        ; $4f5f: $c0

    ld sp, hl                                     ; $4f60: $f9
    ret nz                                        ; $4f61: $c0

    ld hl, $0020                                  ; $4f62: $21 $20 $00
    jr nz, jr_0ce_4f67                            ; $4f65: $20 $00

jr_0ce_4f67:
    xor [hl]                                      ; $4f67: $ae
    nop                                           ; $4f68: $00
    ld a, a                                       ; $4f69: $7f
    ld c, d                                       ; $4f6a: $4a

jr_0ce_4f6b:
    ld bc, $23f8                                  ; $4f6b: $01 $f8 $23
    ld hl, sp+$45                                 ; $4f6e: $f8 $45
    ld hl, sp+$67                                 ; $4f70: $f8 $67
    ld hl, sp-$77                                 ; $4f72: $f8 $89
    ld hl, sp-$55                                 ; $4f74: $f8 $ab

jr_0ce_4f76:
    ld hl, sp-$33                                 ; $4f76: $f8 $cd
    ld hl, sp-$20                                 ; $4f78: $f8 $e0
    rst $28                                       ; $4f7a: $ef
    ld hl, sp+$11                                 ; $4f7b: $f8 $11
    ld sp, hl                                     ; $4f7d: $f9
    inc sp                                        ; $4f7e: $33
    cp c                                          ; $4f7f: $b9
    ld b, h                                       ; $4f80: $44
    ld b, l                                       ; $4f81: $45
    ld b, [hl]                                    ; $4f82: $46
    ld c, d                                       ; $4f83: $4a
    ld c, d                                       ; $4f84: $4a
    ld b, b                                       ; $4f85: $40
    ld b, c                                       ; $4f86: $41
    ld d, e                                       ; $4f87: $53
    xor c                                         ; $4f88: $a9
    ld h, e                                       ; $4f89: $63
    ld d, h                                       ; $4f8a: $54
    ld c, h                                       ; $4f8b: $4c
    ld c, l                                       ; $4f8c: $4d
    ld c, [hl]                                    ; $4f8d: $4e
    ld c, a                                       ; $4f8e: $4f
    db $10                                        ; $4f8f: $10
    ld d, b                                       ; $4f90: $50
    ld d, h                                       ; $4f91: $54
    ld d, e                                       ; $4f92: $53
    ld [hl], h                                    ; $4f93: $74
    and c                                         ; $4f94: $a1
    ld d, e                                       ; $4f95: $53

jr_0ce_4f96:
    ld d, h                                       ; $4f96: $54
    ld d, l                                       ; $4f97: $55
    ld d, [hl]                                    ; $4f98: $56
    inc b                                         ; $4f99: $04
    ld d, a                                       ; $4f9a: $57
    ld e, b                                       ; $4f9b: $58
    ld e, c                                       ; $4f9c: $59
    ld e, l                                       ; $4f9d: $5d
    ld e, h                                       ; $4f9e: $5c
    sub h                                         ; $4f9f: $94
    and c                                         ; $4fa0: $a1
    ld e, h                                       ; $4fa1: $5c
    ld e, l                                       ; $4fa2: $5d
    ld bc, $5f5e                                  ; $4fa3: $01 $5e $5f
    ld a, e                                       ; $4fa6: $7b
    ld e, [hl]                                    ; $4fa7: $5e
    ld h, d                                       ; $4fa8: $62
    ld h, a                                       ; $4fa9: $67
    ld h, [hl]                                    ; $4faa: $66
    or h                                          ; $4fab: $b4
    and c                                         ; $4fac: $a1
    nop                                           ; $4fad: $00
    ld h, [hl]                                    ; $4fae: $66
    ld h, a                                       ; $4faf: $67
    ld l, b                                       ; $4fb0: $68
    ld l, c                                       ; $4fb1: $69
    ld l, d                                       ; $4fb2: $6a
    ld h, b                                       ; $4fb3: $60
    ld l, h                                       ; $4fb4: $6c
    ld [hl], c                                    ; $4fb5: $71
    ld b, b                                       ; $4fb6: $40
    ld [hl], b                                    ; $4fb7: $70
    call nc, Call_0ce_70a1                        ; $4fb8: $d4 $a1 $70
    ld [hl], c                                    ; $4fbb: $71
    ld [hl], d                                    ; $4fbc: $72
    ld [hl], e                                    ; $4fbd: $73
    ld [hl], h                                    ; $4fbe: $74
    ld [hl], l                                    ; $4fbf: $75
    db $10                                        ; $4fc0: $10
    ld e, [hl]                                    ; $4fc1: $5e
    ld [hl], a                                    ; $4fc2: $77
    ld a, d                                       ; $4fc3: $7a
    db $f4                                        ; $4fc4: $f4
    and c                                         ; $4fc5: $a1
    ld a, d                                       ; $4fc6: $7a
    ld a, e                                       ; $4fc7: $7b
    ld a, h                                       ; $4fc8: $7c
    ld a, l                                       ; $4fc9: $7d
    ld [$7f7e], sp                                ; $4fca: $08 $7e $7f
    ld h, b                                       ; $4fcd: $60
    ld c, e                                       ; $4fce: $4b
    and b                                         ; $4fcf: $a0
    xor b                                         ; $4fd0: $a8
    ld h, [hl]                                    ; $4fd1: $66
    ld h, a                                       ; $4fd2: $67
    ld h, c                                       ; $4fd3: $61
    ld [bc], a                                    ; $4fd4: $02
    ld b, a                                       ; $4fd5: $47
    ld a, b                                       ; $4fd6: $78
    ld l, e                                       ; $4fd7: $6b
    ld c, c                                       ; $4fd8: $49
    ld b, e                                       ; $4fd9: $43
    ld h, e                                       ; $4fda: $63
    and b                                         ; $4fdb: $a0
    or b                                          ; $4fdc: $b0
    ld d, c                                       ; $4fdd: $51
    inc c                                         ; $4fde: $0c
    halt                                          ; $4fdf: $76
    ld l, l                                       ; $4fe0: $6d
    ld e, [hl]                                    ; $4fe1: $5e
    ld l, [hl]                                    ; $4fe2: $6e
    sbc a                                         ; $4fe3: $9f
    xor b                                         ; $4fe4: $a8
    ldh [rP1], a                                  ; $4fe5: $e0 $00
    ld e, e                                       ; $4fe7: $5b
    ld e, d                                       ; $4fe8: $5a
    jr @+$53                                      ; $4fe9: $18 $51

    ld [hl], l                                    ; $4feb: $75
    ld h, h                                       ; $4fec: $64
    sbc a                                         ; $4fed: $9f
    xor b                                         ; $4fee: $a8
    ld bc, $7909                                  ; $4fef: $01 $09 $79
    ld l, a                                       ; $4ff2: $6f
    ld c, b                                       ; $4ff3: $48
    ld hl, $6542                                  ; $4ff4: $21 $42 $65
    sub e                                         ; $4ff7: $93
    cp d                                          ; $4ff8: $ba
    ld b, c                                       ; $4ff9: $41
    ld b, c                                       ; $4ffa: $41
    ld d, d                                       ; $4ffb: $52
    ld d, d                                       ; $4ffc: $52
    or c                                          ; $4ffd: $b1
    ld a, [$d3ff]                                 ; $4ffe: $fa $ff $d3
    ld a, [$faf5]                                 ; $5001: $fa $f5 $fa
    rla                                           ; $5004: $17
    ei                                            ; $5005: $fb
    add hl, sp                                    ; $5006: $39
    ei                                            ; $5007: $fb
    ld e, e                                       ; $5008: $5b
    ei                                            ; $5009: $fb
    ld a, l                                       ; $500a: $7d
    ei                                            ; $500b: $fb
    sbc a                                         ; $500c: $9f
    ei                                            ; $500d: $fb
    pop bc                                        ; $500e: $c1
    ei                                            ; $500f: $fb
    cp a                                          ; $5010: $bf
    db $e3                                        ; $5011: $e3
    db $d3                                        ; $5012: $d3
    inc c                                         ; $5013: $0c
    ld bc, $23f8                                  ; $5014: $01 $f8 $23
    ld hl, sp+$45                                 ; $5017: $f8 $45
    ld hl, sp+$67                                 ; $5019: $f8 $67
    ld hl, sp-$77                                 ; $501b: $f8 $89
    ld hl, sp-$55                                 ; $501d: $f8 $ab
    ld hl, sp-$0c                                 ; $501f: $f8 $f4

jr_0ce_5021:
    call $eff8                                    ; $5021: $cd $f8 $ef
    ld hl, sp+$11                                 ; $5024: $f8 $11
    ld sp, hl                                     ; $5026: $f9
    inc sp                                        ; $5027: $33
    pop hl                                        ; $5028: $e1
    ld c, h                                       ; $5029: $4c
    ld d, e                                       ; $502a: $53
    xor c                                         ; $502b: $a9
    ld l, h                                       ; $502c: $6c
    jr z, jr_0ce_5075                             ; $502d: $28 $46

    ld [$0001], sp                                ; $502f: $08 $01 $00
    inc c                                         ; $5032: $0c
    jr z, jr_0ce_5061                             ; $5033: $28 $2c

    ld [hl], h                                    ; $5035: $74
    xor c                                         ; $5036: $a9
    rra                                           ; $5037: $1f
    ld [$5e08], sp                                ; $5038: $08 $08 $5e
    ld [$d020], sp                                ; $503b: $08 $20 $d0
    ld c, b                                       ; $503e: $48
    jr nz, jr_0ce_5021                            ; $503f: $20 $e0

    ld b, b                                       ; $5041: $40
    add sp, -$7e                                  ; $5042: $e8 $82
    ld [$e820], sp                                ; $5044: $08 $20 $e8
    ld l, h                                       ; $5047: $6c
    rst $30                                       ; $5048: $f7
    reti                                          ; $5049: $d9


    xor b                                         ; $504a: $a8
    ld a, l                                       ; $504b: $7d
    nop                                           ; $504c: $00
    jp nz, $2010                                  ; $504d: $c2 $10 $20

    or b                                          ; $5050: $b0
    ld l, b                                       ; $5051: $68
    cp [hl]                                       ; $5052: $be
    nop                                           ; $5053: $00
    ld e, a                                       ; $5054: $5f
    cp b                                          ; $5055: $b8
    ld b, b                                       ; $5056: $40
    jr nz, @+$01                                  ; $5057: $20 $ff

    rst $38                                       ; $5059: $ff
    or b                                          ; $505a: $b0
    ld h, c                                       ; $505b: $61
    jr nz, @-$6c                                  ; $505c: $20 $92

    jp nz, $b83b                                  ; $505e: $c2 $3b $b8

jr_0ce_5061:
    rst $00                                       ; $5061: $c7
    ld a, [$fae9]                                 ; $5062: $fa $e9 $fa
    dec bc                                        ; $5065: $0b
    ei                                            ; $5066: $fb
    dec l                                         ; $5067: $2d
    ei                                            ; $5068: $fb
    db $fc                                        ; $5069: $fc
    ld c, a                                       ; $506a: $4f
    ei                                            ; $506b: $fb
    ld [hl], c                                    ; $506c: $71
    ei                                            ; $506d: $fb
    sub e                                         ; $506e: $93
    ei                                            ; $506f: $fb
    or l                                          ; $5070: $b5
    ei                                            ; $5071: $fb
    rst $10                                       ; $5072: $d7
    ei                                            ; $5073: $fb
    ld sp, hl                                     ; $5074: $f9

jr_0ce_5075:
    inc hl                                        ; $5075: $23
    jr nz, jr_0ce_5078                            ; $5076: $20 $00

jr_0ce_5078:
    dec c                                         ; $5078: $0d
    nop                                           ; $5079: $00
    or a                                          ; $507a: $b7
    nop                                           ; $507b: $00
    ld b, b                                       ; $507c: $40
    ld b, b                                       ; $507d: $40
    ld bc, $4168                                  ; $507e: $01 $68 $41
    ld b, d                                       ; $5081: $42
    ld b, e                                       ; $5082: $43
    ld b, h                                       ; $5083: $44
    ld b, l                                       ; $5084: $45
    ld b, c                                       ; $5085: $41
    add b                                         ; $5086: $80
    db $10                                        ; $5087: $10
    ld c, b                                       ; $5088: $48
    ld b, [hl]                                    ; $5089: $46
    ld b, a                                       ; $508a: $47
    ld c, b                                       ; $508b: $48
    ld c, c                                       ; $508c: $49
    ld c, d                                       ; $508d: $4a
    ld c, e                                       ; $508e: $4b
    ld c, h                                       ; $508f: $4c
    add c                                         ; $5090: $81
    ld a, [hl+]                                   ; $5091: $2a
    jr nz, @+$4f                                  ; $5092: $20 $4d

    ld c, [hl]                                    ; $5094: $4e
    ld c, a                                       ; $5095: $4f
    ld d, b                                       ; $5096: $50
    ld d, c                                       ; $5097: $51
    ld d, d                                       ; $5098: $52
    scf                                           ; $5099: $37
    jr c, jr_0ce_509e                             ; $509a: $38 $02

    ld d, e                                       ; $509c: $53
    ld d, h                                       ; $509d: $54

jr_0ce_509e:
    ld d, l                                       ; $509e: $55
    ld d, [hl]                                    ; $509f: $56
    ld d, a                                       ; $50a0: $57
    ld e, b                                       ; $50a1: $58
    inc de                                        ; $50a2: $13
    db $10                                        ; $50a3: $10
    ld e, c                                       ; $50a4: $59
    ret nz                                        ; $50a5: $c0

    ld a, [hl-]                                   ; $50a6: $3a
    ld e, b                                       ; $50a7: $58
    ld e, e                                       ; $50a8: $5b
    jr nc, jr_0ce_5105                            ; $50a9: $30 $5a

    ld e, e                                       ; $50ab: $5b
    ld e, h                                       ; $50ac: $5c
    ld e, l                                       ; $50ad: $5d
    ld e, c                                       ; $50ae: $59
    ld e, [hl]                                    ; $50af: $5e
    ld b, b                                       ; $50b0: $40
    ld e, a                                       ; $50b1: $5f
    dec sp                                        ; $50b2: $3b
    ld [$5360], sp                                ; $50b3: $08 $60 $53
    ld b, b                                       ; $50b6: $40
    ld b, b                                       ; $50b7: $40
    ld c, h                                       ; $50b8: $4c
    ld c, e                                       ; $50b9: $4b
    ld [bc], a                                    ; $50ba: $02
    ld c, d                                       ; $50bb: $4a
    ld c, c                                       ; $50bc: $49
    ld c, b                                       ; $50bd: $48
    ld b, a                                       ; $50be: $47
    ld b, [hl]                                    ; $50bf: $46
    ld b, d                                       ; $50c0: $42
    ld h, l                                       ; $50c1: $65
    db $10                                        ; $50c2: $10
    ld h, c                                       ; $50c3: $61
    adc b                                         ; $50c4: $88
    ld bc, $4d20                                  ; $50c5: $01 $20 $4d
    ld h, d                                       ; $50c8: $62
    ld h, e                                       ; $50c9: $63
    dec bc                                        ; $50ca: $0b
    jr z, @+$54                                   ; $50cb: $28 $52

    ld d, c                                       ; $50cd: $51
    ld d, b                                       ; $50ce: $50
    nop                                           ; $50cf: $00
    ld e, b                                       ; $50d0: $58
    ld d, a                                       ; $50d1: $57
    ld d, [hl]                                    ; $50d2: $56
    ld d, l                                       ; $50d3: $55
    ld d, h                                       ; $50d4: $54
    ld d, e                                       ; $50d5: $53
    ld h, h                                       ; $50d6: $64
    ld h, l                                       ; $50d7: $65
    jr c, @+$68                                   ; $50d8: $38 $66

    ld h, c                                       ; $50da: $61
    ld d, l                                       ; $50db: $55
    db $10                                        ; $50dc: $10
    inc a                                         ; $50dd: $3c
    nop                                           ; $50de: $00
    xor b                                         ; $50df: $a8
    jr c, jr_0ce_5141                             ; $50e0: $38 $5f

    ld e, [hl]                                    ; $50e2: $5e
    ld e, c                                       ; $50e3: $59
    add hl, bc                                    ; $50e4: $09

jr_0ce_50e5:
    ld e, l                                       ; $50e5: $5d
    ld e, h                                       ; $50e6: $5c
    ld e, e                                       ; $50e7: $5b
    ld e, d                                       ; $50e8: $5a
    ld a, e                                       ; $50e9: $7b
    db $10                                        ; $50ea: $10
    ld h, d                                       ; $50eb: $62

jr_0ce_50ec:
    ld h, e                                       ; $50ec: $63
    ld d, l                                       ; $50ed: $55
    db $10                                        ; $50ee: $10
    call nz, Call_000_0007                        ; $50ef: $c4 $07 $00
    ret z                                         ; $50f2: $c8

    jr c, @+$65                                   ; $50f3: $38 $63

    ld h, d                                       ; $50f5: $62
    ld c, l                                       ; $50f6: $4d
    push de                                       ; $50f7: $d5
    ld b, b                                       ; $50f8: $40
    ld h, a                                       ; $50f9: $67
    ld l, b                                       ; $50fa: $68
    db $10                                        ; $50fb: $10
    ld l, c                                       ; $50fc: $69
    ld l, d                                       ; $50fd: $6a
    ld l, e                                       ; $50fe: $6b
    ld bc, $6c00                                  ; $50ff: $01 $00 $6c
    ld l, l                                       ; $5102: $6d
    ld l, [hl]                                    ; $5103: $6e
    ld l, a                                       ; $5104: $6f

jr_0ce_5105:
    rlca                                          ; $5105: $07
    ld [hl], b                                    ; $5106: $70
    ld [hl], c                                    ; $5107: $71
    ld [hl], d                                    ; $5108: $72
    ld [hl], e                                    ; $5109: $73
    ld [hl], h                                    ; $510a: $74
    dec c                                         ; $510b: $0d
    nop                                           ; $510c: $00
    inc d                                         ; $510d: $14
    jr z, jr_0ce_5128                             ; $510e: $28 $18

    ld [$c7bf], sp                                ; $5110: $08 $bf $c7
    ld b, b                                       ; $5113: $40
    ld c, a                                       ; $5114: $4f
    rst $00                                       ; $5115: $c7
    jr nz, jr_0ce_512b                            ; $5116: $20 $13

    ld de, $00cc                                  ; $5118: $11 $cc $00
    db $f4                                        ; $511b: $f4
    jr c, jr_0ce_50e5                             ; $511c: $38 $c7

    jr c, @+$31                                   ; $511e: $38 $2f

    ld sp, $0780                                  ; $5120: $31 $80 $07
    add hl, hl                                    ; $5123: $29
    ld [hl], l                                    ; $5124: $75
    halt                                          ; $5125: $76
    ld [hl], a                                    ; $5126: $77
    ld a, b                                       ; $5127: $78

jr_0ce_5128:
    ld a, c                                       ; $5128: $79
    ld a, d                                       ; $5129: $7a
    ld a, e                                       ; $512a: $7b

jr_0ce_512b:
    db $fd                                        ; $512b: $fd
    ld bc, $1fb0                                  ; $512c: $01 $b0 $1f
    ld bc, $292f                                  ; $512f: $01 $2f $29
    adc e                                         ; $5132: $8b
    ld [$811e], sp                                ; $5133: $08 $1e $81
    inc de                                        ; $5136: $13
    ret c                                         ; $5137: $d8

    ld [$9001], sp                                ; $5138: $08 $01 $90
    ld [hl], l                                    ; $513b: $75
    jr z, jr_0ce_5155                             ; $513c: $28 $17

    sbc b                                         ; $513e: $98
    ld d, $f8                                     ; $513f: $16 $f8

jr_0ce_5141:
    ld a, [hl-]                                   ; $5141: $3a
    ldh [$28], a                                  ; $5142: $e0 $28
    ld e, d                                       ; $5144: $5a
    ld [$0128], sp                                ; $5145: $08 $28 $01
    jr z, jr_0ce_50ec                             ; $5148: $28 $a2

    ld a, h                                       ; $514a: $7c
    ld [$010a], sp                                ; $514b: $08 $0a $01
    jr nz, jr_0ce_5159                            ; $514e: $20 $09

    add hl, bc                                    ; $5150: $09
    add hl, bc                                    ; $5151: $09
    dec bc                                        ; $5152: $0b
    jr z, jr_0ce_517e                             ; $5153: $28 $29

jr_0ce_5155:
    adc a                                         ; $5155: $8f
    ld bc, $0d28                                  ; $5156: $01 $28 $0d

jr_0ce_5159:
    dec c                                         ; $5159: $0d
    dec c                                         ; $515a: $0d
    jr @+$0a                                      ; $515b: $18 $08

    inc bc                                        ; $515d: $03
    ld h, b                                       ; $515e: $60
    rra                                           ; $515f: $1f
    jr nz, jr_0ce_5173                            ; $5160: $20 $11

    ld b, b                                       ; $5162: $40
    db $db                                        ; $5163: $db
    jr nz, jr_0ce_51d6                            ; $5164: $20 $70

    dec [hl]                                      ; $5166: $35
    ld b, b                                       ; $5167: $40
    dec bc                                        ; $5168: $0b
    ld bc, $6400                                  ; $5169: $01 $00 $64
    ld [$010e], sp                                ; $516c: $08 $0e $01
    jr z, jr_0ce_51e2                             ; $516f: $28 $71

    nop                                           ; $5171: $00
    rst $30                                       ; $5172: $f7

jr_0ce_5173:
    inc d                                         ; $5173: $14
    jr z, jr_0ce_51f2                             ; $5174: $28 $7c

    ld [$0820], sp                                ; $5176: $08 $20 $08
    inc b                                         ; $5179: $04
    jr nz, jr_0ce_51a7                            ; $517a: $20 $2b

    inc c                                         ; $517c: $0c
    ld b, b                                       ; $517d: $40

jr_0ce_517e:
    rrca                                          ; $517e: $0f
    ld a, b                                       ; $517f: $78
    ld c, $a0                                     ; $5180: $0e $a0
    halt                                          ; $5182: $76
    rrca                                          ; $5183: $0f
    ld bc, $c610                                  ; $5184: $01 $10 $c6
    jr z, jr_0ce_5191                             ; $5187: $28 $08

    ld a, b                                       ; $5189: $78
    inc c                                         ; $518a: $0c
    ld bc, $23f8                                  ; $518b: $01 $f8 $23
    ret nc                                        ; $518e: $d0

    inc d                                         ; $518f: $14
    nop                                           ; $5190: $00

jr_0ce_5191:
    dec c                                         ; $5191: $0d
    nop                                           ; $5192: $00
    dec [hl]                                      ; $5193: $35
    ld bc, $4000                                  ; $5194: $01 $00 $40
    ld b, b                                       ; $5197: $40
    ld b, c                                       ; $5198: $41
    ld b, d                                       ; $5199: $42
    ld b, c                                       ; $519a: $41
    ld b, d                                       ; $519b: $42
    ld b, e                                       ; $519c: $43
    ld b, h                                       ; $519d: $44
    ld a, [hl+]                                   ; $519e: $2a
    ld b, b                                       ; $519f: $40
    ld b, d                                       ; $51a0: $42
    add hl, bc                                    ; $51a1: $09
    ld [$0f45], sp                                ; $51a2: $08 $45 $0f
    nop                                           ; $51a5: $00
    ld b, b                                       ; $51a6: $40

jr_0ce_51a7:
    ld bc, $4600                                  ; $51a7: $01 $00 $46
    inc c                                         ; $51aa: $0c
    ld b, a                                       ; $51ab: $47
    ld c, b                                       ; $51ac: $48
    ld b, a                                       ; $51ad: $47
    ld b, b                                       ; $51ae: $40
    inc de                                        ; $51af: $13
    nop                                           ; $51b0: $00
    dec e                                         ; $51b1: $1d
    jr jr_0ce_51f4                                ; $51b2: $18 $40

    ld b, h                                       ; $51b4: $44
    nop                                           ; $51b5: $00
    ld b, c                                       ; $51b6: $41
    ld b, e                                       ; $51b7: $43
    ld c, c                                       ; $51b8: $49
    ld b, b                                       ; $51b9: $40
    ld b, h                                       ; $51ba: $44
    ld c, d                                       ; $51bb: $4a
    ld c, d                                       ; $51bc: $4a
    ld b, d                                       ; $51bd: $42
    nop                                           ; $51be: $00
    ld c, e                                       ; $51bf: $4b
    ld c, c                                       ; $51c0: $49
    ld c, d                                       ; $51c1: $4a
    ld b, b                                       ; $51c2: $40
    ld b, c                                       ; $51c3: $41
    ld c, h                                       ; $51c4: $4c
    ld b, a                                       ; $51c5: $47
    ld c, l                                       ; $51c6: $4d
    nop                                           ; $51c7: $00
    ld c, l                                       ; $51c8: $4d
    ld b, d                                       ; $51c9: $42
    ld c, [hl]                                    ; $51ca: $4e
    ld c, d                                       ; $51cb: $4a
    ld c, a                                       ; $51cc: $4f
    ld b, e                                       ; $51cd: $43
    ld b, b                                       ; $51ce: $40
    ld d, b                                       ; $51cf: $50
    nop                                           ; $51d0: $00
    ld d, c                                       ; $51d1: $51
    ld d, c                                       ; $51d2: $51
    ld d, c                                       ; $51d3: $51
    ld d, d                                       ; $51d4: $52
    ld d, b                                       ; $51d5: $50

jr_0ce_51d6:
    ld d, c                                       ; $51d6: $51
    ld d, d                                       ; $51d7: $52
    ld b, b                                       ; $51d8: $40
    ld bc, $5346                                  ; $51d9: $01 $46 $53
    ld b, a                                       ; $51dc: $47
    ld d, e                                       ; $51dd: $53
    ld d, h                                       ; $51de: $54
    ld c, b                                       ; $51df: $48
    ld b, a                                       ; $51e0: $47
    dec hl                                        ; $51e1: $2b

jr_0ce_51e2:
    nop                                           ; $51e2: $00
    nop                                           ; $51e3: $00
    ld b, b                                       ; $51e4: $40
    ld d, l                                       ; $51e5: $55
    ld d, [hl]                                    ; $51e6: $56
    ld d, [hl]                                    ; $51e7: $56
    ld d, a                                       ; $51e8: $57
    ld e, b                                       ; $51e9: $58
    ld d, l                                       ; $51ea: $55
    ld d, a                                       ; $51eb: $57
    nop                                           ; $51ec: $00
    ld e, b                                       ; $51ed: $58
    ld b, b                                       ; $51ee: $40
    ld c, c                                       ; $51ef: $49
    ld b, a                                       ; $51f0: $47
    ld c, l                                       ; $51f1: $4d

jr_0ce_51f2:
    ld b, a                                       ; $51f2: $47
    ld c, l                                       ; $51f3: $4d

jr_0ce_51f4:
    ld c, h                                       ; $51f4: $4c
    nop                                           ; $51f5: $00
    ld c, [hl]                                    ; $51f6: $4e
    ld b, e                                       ; $51f7: $43
    ld c, d                                       ; $51f8: $4a
    ld b, b                                       ; $51f9: $40
    ld b, b                                       ; $51fa: $40
    ld e, c                                       ; $51fb: $59
    ld e, d                                       ; $51fc: $5a
    ld e, e                                       ; $51fd: $5b
    nop                                           ; $51fe: $00
    ld e, h                                       ; $51ff: $5c
    ld e, l                                       ; $5200: $5d
    ld e, [hl]                                    ; $5201: $5e
    ld e, a                                       ; $5202: $5f
    ld h, b                                       ; $5203: $60
    ld h, c                                       ; $5204: $61
    ld b, h                                       ; $5205: $44
    ld c, [hl]                                    ; $5206: $4e
    inc c                                         ; $5207: $0c

Call_0ce_5208:
    ld b, h                                       ; $5208: $44
    ld b, b                                       ; $5209: $40
    ld b, e                                       ; $520a: $43
    ld h, c                                       ; $520b: $61
    ld [de], a                                    ; $520c: $12
    nop                                           ; $520d: $00
    ld h, a                                       ; $520e: $67
    nop                                           ; $520f: $00
    ld h, d                                       ; $5210: $62
    ld h, e                                       ; $5211: $63
    ld [bc], a                                    ; $5212: $02
    ld h, h                                       ; $5213: $64
    ld b, [hl]                                    ; $5214: $46
    ld h, l                                       ; $5215: $65
    ld h, [hl]                                    ; $5216: $66
    ld h, a                                       ; $5217: $67
    ld b, [hl]                                    ; $5218: $46
    jr nz, jr_0ce_521b                            ; $5219: $20 $00

jr_0ce_521b:
    ld b, c                                       ; $521b: $41
    nop                                           ; $521c: $00
    ld b, b                                       ; $521d: $40
    ld b, h                                       ; $521e: $44
    ld c, e                                       ; $521f: $4b
    ld b, b                                       ; $5220: $40
    ld b, [hl]                                    ; $5221: $46
    ld c, c                                       ; $5222: $49
    ld c, d                                       ; $5223: $4a
    ld b, d                                       ; $5224: $42
    ld [bc], a                                    ; $5225: $02
    ld l, b                                       ; $5226: $68
    ld l, c                                       ; $5227: $69
    ld l, d                                       ; $5228: $6a
    ld l, e                                       ; $5229: $6b
    ld l, h                                       ; $522a: $6c
    ld l, l                                       ; $522b: $6d
    ld d, e                                       ; $522c: $53
    db $10                                        ; $522d: $10
    ld c, [hl]                                    ; $522e: $4e
    ld b, c                                       ; $522f: $41
    ld b, b                                       ; $5230: $40
    ld e, a                                       ; $5231: $5f
    ld [$4650], sp                                ; $5232: $08 $50 $46
    ld c, h                                       ; $5235: $4c
    ld l, [hl]                                    ; $5236: $6e
    ld l, a                                       ; $5237: $6f
    ld d, e                                       ; $5238: $53
    ld [$5568], sp                                ; $5239: $08 $68 $55
    ld d, e                                       ; $523c: $53
    ld [$009c], sp                                ; $523d: $08 $9c $00
    ld d, l                                       ; $5240: $55
    ld e, [hl]                                    ; $5241: $5e
    nop                                           ; $5242: $00
    ld c, c                                       ; $5243: $49
    ld c, d                                       ; $5244: $4a
    ld [hl], b                                    ; $5245: $70
    nop                                           ; $5246: $00
    ld [hl], c                                    ; $5247: $71
    ld [hl], d                                    ; $5248: $72
    ld e, d                                       ; $5249: $5a
    ld e, e                                       ; $524a: $5b
    ld [hl], e                                    ; $524b: $73
    ld e, l                                       ; $524c: $5d
    ld e, [hl]                                    ; $524d: $5e
    ld [hl], h                                    ; $524e: $74
    nop                                           ; $524f: $00
    ld [hl], l                                    ; $5250: $75
    ld b, e                                       ; $5251: $43
    ld c, d                                       ; $5252: $4a
    ld b, d                                       ; $5253: $42
    ld b, e                                       ; $5254: $43
    ld e, [hl]                                    ; $5255: $5e
    ld e, d                                       ; $5256: $5a
    ld e, e                                       ; $5257: $5b
    ld [bc], a                                    ; $5258: $02
    ld e, [hl]                                    ; $5259: $5e
    ld c, c                                       ; $525a: $49
    ld c, c                                       ; $525b: $49
    ld h, l                                       ; $525c: $65
    ld h, [hl]                                    ; $525d: $66
    halt                                          ; $525e: $76
    ld d, e                                       ; $525f: $53
    nop                                           ; $5260: $00
    ld h, c                                       ; $5261: $61
    ld h, b                                       ; $5262: $60
    ld [hl], a                                    ; $5263: $77
    ld d, e                                       ; $5264: $53
    nop                                           ; $5265: $00
    adc h                                         ; $5266: $8c
    nop                                           ; $5267: $00
    ld c, c                                       ; $5268: $49
    ld h, d                                       ; $5269: $62
    ld h, h                                       ; $526a: $64
    ld b, e                                       ; $526b: $43
    ld c, e                                       ; $526c: $4b
    nop                                           ; $526d: $00
    ld d, b                                       ; $526e: $50
    ld a, b                                       ; $526f: $78
    ld l, l                                       ; $5270: $6d
    ld a, c                                       ; $5271: $79
    ld a, d                                       ; $5272: $7a
    ld a, e                                       ; $5273: $7b
    ld a, h                                       ; $5274: $7c
    ld d, d                                       ; $5275: $52
    ld [$697d], sp                                ; $5276: $08 $7d $69
    ld a, [hl]                                    ; $5279: $7e
    ld b, b                                       ; $527a: $40
    adc h                                         ; $527b: $8c
    nop                                           ; $527c: $00
    ld b, b                                       ; $527d: $40
    ld l, b                                       ; $527e: $68
    ld h, h                                       ; $527f: $64
    ld h, b                                       ; $5280: $60
    ld b, [hl]                                    ; $5281: $46
    and b                                         ; $5282: $a0
    jr nc, jr_0ce_5300                            ; $5283: $30 $7b

    nop                                           ; $5285: $00
    ld b, e                                       ; $5286: $43
    ld c, h                                       ; $5287: $4c
    ld c, d                                       ; $5288: $4a
    ld a, a                                       ; $5289: $7f
    ld b, b                                       ; $528a: $40
    inc b                                         ; $528b: $04
    ld l, [hl]                                    ; $528c: $6e
    ld l, [hl]                                    ; $528d: $6e
    ld c, [hl]                                    ; $528e: $4e
    add hl, bc                                    ; $528f: $09
    ld c, $01                                     ; $5290: $0e $01
    jr nz, jr_0ce_52e2                            ; $5292: $20 $4e

    ld c, $00                                     ; $5294: $0e $00
    ld c, [hl]                                    ; $5296: $4e
    ld c, [hl]                                    ; $5297: $4e
    ld c, [hl]                                    ; $5298: $4e
    ld c, $09                                     ; $5299: $0e $09
    add hl, bc                                    ; $529b: $09
    ld c, [hl]                                    ; $529c: $4e
    add hl, bc                                    ; $529d: $09
    ld b, a                                       ; $529e: $47
    add hl, bc                                    ; $529f: $09
    inc d                                         ; $52a0: $14
    db $10                                        ; $52a1: $10
    ld l, [hl]                                    ; $52a2: $6e
    ld c, $09                                     ; $52a3: $0e $09
    ld [bc], a                                    ; $52a5: $02
    nop                                           ; $52a6: $00
    add hl, de                                    ; $52a7: $19
    db $10                                        ; $52a8: $10
    inc bc                                        ; $52a9: $03
    ld [$0e1a], sp                                ; $52aa: $08 $1a $0e
    ld c, $2e                                     ; $52ad: $0e $2e
    ld [$3118], sp                                ; $52af: $08 $18 $31
    nop                                           ; $52b2: $00
    ld l, [hl]                                    ; $52b3: $6e
    ld l, $08                                     ; $52b4: $2e $08
    ld l, $01                                     ; $52b6: $2e $01
    ld c, $4e                                     ; $52b8: $0e $4e
    add hl, bc                                    ; $52ba: $09
    ld [$0808], sp                                ; $52bb: $08 $08 $08
    jr z, jr_0ce_52c3                             ; $52be: $28 $03

    ld [$45c4], sp                                ; $52c0: $08 $c4 $45

jr_0ce_52c3:
    jr nz, jr_0ce_52dd                            ; $52c3: $20 $18

    nop                                           ; $52c5: $00
    ld c, $09                                     ; $52c6: $0e $09
    ld a, [bc]                                    ; $52c8: $0a
    dec d                                         ; $52c9: $15
    nop                                           ; $52ca: $00
    ld a, [bc]                                    ; $52cb: $0a
    ld a, [bc]                                    ; $52cc: $0a
    cpl                                           ; $52cd: $2f
    ld [$280a], sp                                ; $52ce: $08 $0a $28
    db $10                                        ; $52d1: $10
    ld l, [hl]                                    ; $52d2: $6e
    ld bc, $3300                                  ; $52d3: $01 $00 $33
    nop                                           ; $52d6: $00
    ld bc, $1028                                  ; $52d7: $01 $28 $10
    nop                                           ; $52da: $00
    ldh a, [$37]                                  ; $52db: $f0 $37

jr_0ce_52dd:
    nop                                           ; $52dd: $00
    ld h, [hl]                                    ; $52de: $66
    ld [$005c], sp                                ; $52df: $08 $5c $00

jr_0ce_52e2:
    dec b                                         ; $52e2: $05
    jr nz, jr_0ce_52f3                            ; $52e3: $20 $0e

    ld l, [hl]                                    ; $52e5: $6e
    add hl, bc                                    ; $52e6: $09
    ld c, $24                                     ; $52e7: $0e $24
    ld l, $09                                     ; $52e9: $2e $09
    ld e, l                                       ; $52eb: $5d
    nop                                           ; $52ec: $00
    ld c, $2e                                     ; $52ed: $0e $2e
    ld a, a                                       ; $52ef: $7f
    ld [$080c], sp                                ; $52f0: $08 $0c $08

jr_0ce_52f3:
    add hl, sp                                    ; $52f3: $39
    ld [$560d], sp                                ; $52f4: $08 $0d $56
    ld [$005e], sp                                ; $52f7: $08 $5e $00
    ld e, a                                       ; $52fa: $5f
    nop                                           ; $52fb: $00
    jr z, jr_0ce_5326                             ; $52fc: $28 $28

    ld a, $08                                     ; $52fe: $3e $08

jr_0ce_5300:
    or a                                          ; $5300: $b7
    ld d, e                                       ; $5301: $53
    ld [$532a], sp                                ; $5302: $08 $2a $53
    db $10                                        ; $5305: $10
    inc c                                         ; $5306: $0c
    db $10                                        ; $5307: $10
    ld a, [bc]                                    ; $5308: $0a
    inc e                                         ; $5309: $1c
    ld [$2854], sp                                ; $530a: $08 $54 $28
    dec [hl]                                      ; $530d: $35
    nop                                           ; $530e: $00
    cp h                                          ; $530f: $bc
    ld h, b                                       ; $5310: $60
    ld [$4429], sp                                ; $5311: $08 $29 $44
    nop                                           ; $5314: $00
    ld h, a                                       ; $5315: $67
    db $10                                        ; $5316: $10
    cp a                                          ; $5317: $bf
    jr z, @+$11                                   ; $5318: $28 $0f

    nop                                           ; $531a: $00
    ld l, $0e                                     ; $531b: $2e $0e
    add h                                         ; $531d: $84
    ld c, h                                       ; $531e: $4c
    ld [$0b0b], sp                                ; $531f: $08 $0b $0b
    ld [$d30c], sp                                ; $5322: $08 $0c $d3
    db $10                                        ; $5325: $10

jr_0ce_5326:
    ld l, [hl]                                    ; $5326: $6e
    ld l, [hl]                                    ; $5327: $6e
    ldh [rPCM34], a                               ; $5328: $e0 $77
    db $10                                        ; $532a: $10
    and b                                         ; $532b: $a0
    jr nc, jr_0ce_536a                            ; $532c: $30 $3c

    jr z, @+$2b                                   ; $532e: $28 $29

    ld l, [hl]                                    ; $5330: $6e
    jr nz, jr_0ce_5333                            ; $5331: $20 $00

jr_0ce_5333:
    dec c                                         ; $5333: $0d
    nop                                           ; $5334: $00
    sbc e                                         ; $5335: $9b
    nop                                           ; $5336: $00
    ld e, l                                       ; $5337: $5d
    ld b, d                                       ; $5338: $42
    ld bc, $43e8                                  ; $5339: $01 $e8 $43
    dec b                                         ; $533c: $05
    jr nc, @+$08                                  ; $533d: $30 $06

    jr nz, @+$0f                                  ; $533f: $20 $0d

    ld e, b                                       ; $5341: $58
    ld b, h                                       ; $5342: $44
    ld bc, $0fe0                                  ; $5343: $01 $e0 $0f
    ld b, l                                       ; $5346: $45
    ld b, l                                       ; $5347: $45
    ld b, [hl]                                    ; $5348: $46
    ld b, l                                       ; $5349: $45
    ld bc, $0608                                  ; $534a: $01 $08 $06
    jr @+$0f                                      ; $534d: $18 $0d

    ld e, b                                       ; $534f: $58
    dec de                                        ; $5350: $1b
    ld [$4757], sp                                ; $5351: $08 $57 $47
    ld bc, $48e0                                  ; $5354: $01 $e0 $48
    ld bc, $4300                                  ; $5357: $01 $00 $43
    dec b                                         ; $535a: $05
    ld [$2807], sp                                ; $535b: $08 $07 $28
    dec c                                         ; $535e: $0d
    jr nz, @-$75                                  ; $535f: $20 $89

    dec d                                         ; $5361: $15
    jr jr_0ce_53a7                                ; $5362: $18 $43

    ld c, b                                       ; $5364: $48
    ld c, c                                       ; $5365: $49
    ld bc, $46e0                                  ; $5366: $01 $e0 $46
    ld c, d                                       ; $5369: $4a

jr_0ce_536a:
    ld bc, $c810                                  ; $536a: $01 $10 $c8
    rlca                                          ; $536d: $07
    jr jr_0ce_537d                                ; $536e: $18 $0d

    jr nz, jr_0ce_53bc                            ; $5370: $20 $4a

    ld b, e                                       ; $5372: $43
    dec b                                         ; $5373: $05
    jr nc, @+$4c                                  ; $5374: $30 $4a

    ld c, e                                       ; $5376: $4b
    ld c, e                                       ; $5377: $4b
    ld sp, $434b                                  ; $5378: $31 $4b $43
    inc b                                         ; $537b: $04
    nop                                           ; $537c: $00

jr_0ce_537d:
    ld b, $28                                     ; $537d: $06 $28
    ld c, e                                       ; $537f: $4b
    ld c, e                                       ; $5380: $4b
    ld c, h                                       ; $5381: $4c
    dec b                                         ; $5382: $05
    jr nc, @-$56                                  ; $5383: $30 $a8

    add hl, de                                    ; $5385: $19
    db $10                                        ; $5386: $10
    ld c, l                                       ; $5387: $4d
    ld bc, $4e08                                  ; $5388: $01 $08 $4e
    ld b, $10                                     ; $538b: $06 $10
    ld c, l                                       ; $538d: $4d
    ld c, l                                       ; $538e: $4d
    ld c, a                                       ; $538f: $4f
    ret nz                                        ; $5390: $c0

    dec b                                         ; $5391: $05
    jr nc, jr_0ce_53a7                            ; $5392: $30 $13

    jr z, jr_0ce_53e4                             ; $5394: $28 $4e

    ld d, b                                       ; $5396: $50
    ld d, c                                       ; $5397: $51
    ld d, d                                       ; $5398: $52
    ld d, e                                       ; $5399: $53
    ld d, h                                       ; $539a: $54
    nop                                           ; $539b: $00
    ld d, l                                       ; $539c: $55
    ld d, [hl]                                    ; $539d: $56
    ld d, a                                       ; $539e: $57
    ld e, b                                       ; $539f: $58
    ld e, c                                       ; $53a0: $59
    ld e, d                                       ; $53a1: $5a
    ld e, e                                       ; $53a2: $5b
    ld e, b                                       ; $53a3: $58
    nop                                           ; $53a4: $00
    ld e, h                                       ; $53a5: $5c
    ld e, c                                       ; $53a6: $59

jr_0ce_53a7:
    ld e, l                                       ; $53a7: $5d
    ld e, [hl]                                    ; $53a8: $5e
    ld e, a                                       ; $53a9: $5f
    ld h, b                                       ; $53aa: $60
    ld h, c                                       ; $53ab: $61
    ld h, d                                       ; $53ac: $62
    nop                                           ; $53ad: $00
    ld h, e                                       ; $53ae: $63
    ld h, h                                       ; $53af: $64
    ld h, l                                       ; $53b0: $65
    ld h, [hl]                                    ; $53b1: $66
    ld h, a                                       ; $53b2: $67
    ld l, b                                       ; $53b3: $68
    ld l, c                                       ; $53b4: $69
    ld l, d                                       ; $53b5: $6a
    nop                                           ; $53b6: $00
    ld l, e                                       ; $53b7: $6b
    ld l, h                                       ; $53b8: $6c
    ld l, l                                       ; $53b9: $6d
    ld l, [hl]                                    ; $53ba: $6e
    ld l, a                                       ; $53bb: $6f

jr_0ce_53bc:
    ld [hl], b                                    ; $53bc: $70
    ld [hl], c                                    ; $53bd: $71
    ld [hl], d                                    ; $53be: $72
    ld l, $73                                     ; $53bf: $2e $73
    ld [hl], h                                    ; $53c1: $74
    inc b                                         ; $53c2: $04
    nop                                           ; $53c3: $00

jr_0ce_53c4:
    ld [hl], l                                    ; $53c4: $75
    inc b                                         ; $53c5: $04
    db $10                                        ; $53c6: $10
    db $10                                        ; $53c7: $10
    ld [$4804], sp                                ; $53c8: $08 $04 $48
    halt                                          ; $53cb: $76
    dec d                                         ; $53cc: $15
    ld [hl], a                                    ; $53cd: $77
    ld a, b                                       ; $53ce: $78
    ld a, c                                       ; $53cf: $79
    inc b                                         ; $53d0: $04
    ret z                                         ; $53d1: $c8

    ld [$e801], sp                                ; $53d2: $08 $01 $e8
    dec c                                         ; $53d5: $0d
    dec b                                         ; $53d6: $05
    jr nc, jr_0ce_53c4                            ; $53d7: $30 $eb

    ld b, $20                                     ; $53d9: $06 $20
    dec c                                         ; $53db: $0d
    ld e, b                                       ; $53dc: $58
    ld b, $f8                                     ; $53dd: $06 $f8
    ld a, [bc]                                    ; $53df: $0a
    ld h, e                                       ; $53e0: $63
    db $10                                        ; $53e1: $10
    inc c                                         ; $53e2: $0c
    dec c                                         ; $53e3: $0d

jr_0ce_53e4:
    add b                                         ; $53e4: $80
    ld [$ef30], sp                                ; $53e5: $08 $30 $ef
    ld b, d                                       ; $53e8: $42
    ld hl, sp+$3c                                 ; $53e9: $f8 $3c
    and b                                         ; $53eb: $a0
    ld b, c                                       ; $53ec: $41
    ld hl, sp+$0b                                 ; $53ed: $f8 $0b
    rlca                                          ; $53ef: $07
    ld c, b                                       ; $53f0: $48
    dec c                                         ; $53f1: $0d
    jr nz, jr_0ce_5409                            ; $53f2: $20 $15

    jr @+$0f                                      ; $53f4: $18 $0d

    jr z, @-$22                                   ; $53f6: $28 $dc

    inc e                                         ; $53f8: $1c
    cp b                                          ; $53f9: $b8
    ld [hl+], a                                   ; $53fa: $22
    jr nc, jr_0ce_540c                            ; $53fb: $30 $0f

    ld [$0d48], sp                                ; $53fd: $08 $48 $0d

Jump_0ce_5400:
    jr @+$15                                      ; $5400: $18 $13

    jr nz, jr_0ce_5413                            ; $5402: $20 $0f

    add hl, bc                                    ; $5404: $09
    rlca                                          ; $5405: $07
    rrca                                          ; $5406: $0f
    add hl, bc                                    ; $5407: $09
    add hl, bc                                    ; $5408: $09

jr_0ce_5409:
    add hl, bc                                    ; $5409: $09
    rrca                                          ; $540a: $0f
    dec b                                         ; $540b: $05

jr_0ce_540c:
    nop                                           ; $540c: $00
    ld [$0918], sp                                ; $540d: $08 $18 $09
    ld [$0eff], sp                                ; $5410: $08 $ff $0e

jr_0ce_5413:
    nop                                           ; $5413: $00
    ld [$1918], sp                                ; $5414: $08 $18 $19
    db $10                                        ; $5417: $10
    ld c, $08                                     ; $5418: $0e $08
    ld e, $08                                     ; $541a: $1e $08
    jr z, jr_0ce_5426                             ; $541c: $28 $08

    ld a, [hl+]                                   ; $541e: $2a
    jr jr_0ce_5431                                ; $541f: $18 $10

    db $10                                        ; $5421: $10
    ldh [rIF], a                                  ; $5422: $e0 $0f
    db $10                                        ; $5424: $10
    inc d                                         ; $5425: $14

jr_0ce_5426:
    jr jr_0ce_542d                                ; $5426: $18 $05

    ret nc                                        ; $5428: $d0

    jr nz, jr_0ce_542b                            ; $5429: $20 $00

jr_0ce_542b:
    ld c, $00                                     ; $542b: $0e $00

jr_0ce_542d:
    sub e                                         ; $542d: $93
    nop                                           ; $542e: $00
    ld d, a                                       ; $542f: $57
    ld b, b                                       ; $5430: $40

jr_0ce_5431:
    ld bc, $41e0                                  ; $5431: $01 $e0 $41
    inc b                                         ; $5434: $04
    db $10                                        ; $5435: $10
    ld b, c                                       ; $5436: $41
    rlca                                          ; $5437: $07
    jr nc, jr_0ce_544a                            ; $5438: $30 $10

    ld l, b                                       ; $543a: $68
    inc d                                         ; $543b: $14
    db $10                                        ; $543c: $10
    ld c, [hl]                                    ; $543d: $4e
    ld b, d                                       ; $543e: $42
    jr jr_0ce_5449                                ; $543f: $18 $08

    ld b, c                                       ; $5441: $41
    ld b, c                                       ; $5442: $41
    ld [$2400], sp                                ; $5443: $08 $00 $24
    jr jr_0ce_5458                                ; $5446: $18 $10

    ld b, b                                       ; $5448: $40

jr_0ce_5449:
    ld b, c                                       ; $5449: $41

jr_0ce_544a:
    ld [bc], a                                    ; $544a: $02
    ld b, e                                       ; $544b: $43
    ld b, h                                       ; $544c: $44
    ld b, c                                       ; $544d: $41
    ld b, b                                       ; $544e: $40
    ld b, l                                       ; $544f: $45
    ld b, [hl]                                    ; $5450: $46
    ld [$4028], sp                                ; $5451: $08 $28 $40
    add b                                         ; $5454: $80
    db $10                                        ; $5455: $10
    ld l, b                                       ; $5456: $68
    ld b, b                                       ; $5457: $40

jr_0ce_5458:
    ld b, a                                       ; $5458: $47
    ld c, b                                       ; $5459: $48
    ld b, c                                       ; $545a: $41
    ld b, c                                       ; $545b: $41
    ld c, c                                       ; $545c: $49
    ld c, d                                       ; $545d: $4a
    ld b, b                                       ; $545e: $40
    ld b, c                                       ; $545f: $41
    ld [$41a8], sp                                ; $5460: $08 $a8 $41
    ld b, c                                       ; $5463: $41
    ld c, e                                       ; $5464: $4b
    ld c, h                                       ; $5465: $4c
    ld b, c                                       ; $5466: $41
    ld c, l                                       ; $5467: $4d
    ld b, b                                       ; $5468: $40
    ld c, [hl]                                    ; $5469: $4e
    ld [$4fb8], sp                                ; $546a: $08 $b8 $4f
    ld d, b                                       ; $546d: $50
    ld d, c                                       ; $546e: $51
    ld b, c                                       ; $546f: $41
    ld d, d                                       ; $5470: $52
    ld d, e                                       ; $5471: $53
    add c                                         ; $5472: $81
    ld [$54b8], sp                                ; $5473: $08 $b8 $54
    ld d, l                                       ; $5476: $55
    ld b, c                                       ; $5477: $41
    ld d, [hl]                                    ; $5478: $56
    ld d, b                                       ; $5479: $50
    ld d, a                                       ; $547a: $57
    ld [$02b8], sp                                ; $547b: $08 $b8 $02
    ld e, b                                       ; $547e: $58
    ld e, c                                       ; $547f: $59
    ld e, d                                       ; $5480: $5a
    ld e, e                                       ; $5481: $5b
    ld e, h                                       ; $5482: $5c
    ld e, l                                       ; $5483: $5d
    ld [$5eb8], sp                                ; $5484: $08 $b8 $5e
    ld [bc], a                                    ; $5487: $02
    ld e, h                                       ; $5488: $5c
    ld e, a                                       ; $5489: $5f
    ld h, b                                       ; $548a: $60
    ld h, c                                       ; $548b: $61
    ld h, d                                       ; $548c: $62
    ld h, e                                       ; $548d: $63
    ld [$64b0], sp                                ; $548e: $08 $b0 $64
    ld [bc], a                                    ; $5491: $02
    ld h, l                                       ; $5492: $65
    ld h, [hl]                                    ; $5493: $66
    ld b, c                                       ; $5494: $41
    ld h, a                                       ; $5495: $67
    ld h, l                                       ; $5496: $65
    ld l, c                                       ; $5497: $69
    ld [$6aa8], sp                                ; $5498: $08 $a8 $6a
    ld bc, $6c6b                                  ; $549b: $01 $6b $6c
    ld l, l                                       ; $549e: $6d
    ld l, [hl]                                    ; $549f: $6e
    ld l, a                                       ; $54a0: $6f
    ld [hl], b                                    ; $54a1: $70
    ld [hl], c                                    ; $54a2: $71
    ld [$00a8], sp                                ; $54a3: $08 $a8 $00
    ld [hl], d                                    ; $54a6: $72
    ld [hl], e                                    ; $54a7: $73
    ld [hl], h                                    ; $54a8: $74
    ld [hl], l                                    ; $54a9: $75
    ld [hl], d                                    ; $54aa: $72
    ld [hl], e                                    ; $54ab: $73
    halt                                          ; $54ac: $76
    ld [hl], a                                    ; $54ad: $77
    add b                                         ; $54ae: $80
    ld [$78a8], sp                                ; $54af: $08 $a8 $78
    ld a, c                                       ; $54b2: $79
    ld a, d                                       ; $54b3: $7a
    ld a, e                                       ; $54b4: $7b
    ld a, h                                       ; $54b5: $7c
    ld a, c                                       ; $54b6: $79
    ld a, l                                       ; $54b7: $7d
    ld d, l                                       ; $54b8: $55
    ld a, [hl]                                    ; $54b9: $7e
    ld [$0da8], sp                                ; $54ba: $08 $a8 $0d
    ld bc, $0ee0                                  ; $54bd: $01 $e0 $0e
    inc b                                         ; $54c0: $04
    db $10                                        ; $54c1: $10
    ld c, $07                                     ; $54c2: $0e $07
    jr nc, @+$01                                  ; $54c4: $30 $ff

    db $10                                        ; $54c6: $10
    ld l, b                                       ; $54c7: $68
    inc d                                         ; $54c8: $14
    db $10                                        ; $54c9: $10
    jr @+$12                                      ; $54ca: $18 $10

    ld b, $00                                     ; $54cc: $06 $00
    add hl, bc                                    ; $54ce: $09
    db $10                                        ; $54cf: $10
    db $10                                        ; $54d0: $10
    ld e, b                                       ; $54d1: $58
    inc d                                         ; $54d2: $14
    jr nz, @+$1e                                  ; $54d3: $20 $1c

    ld c, b                                       ; $54d5: $48
    ld hl, sp+$10                                 ; $54d6: $f8 $10
    ld d, b                                       ; $54d8: $50
    inc e                                         ; $54d9: $1c
    ld b, b                                       ; $54da: $40
    ld [$0790], sp                                ; $54db: $08 $90 $07
    ld hl, sp+$29                                 ; $54de: $f8 $29
    ldh [rIF], a                                  ; $54e0: $e0 $0f
    rrca                                          ; $54e2: $0f
    ld c, $ff                                     ; $54e3: $0e $ff
    ld [bc], a                                    ; $54e5: $02
    nop                                           ; $54e6: $00
    inc bc                                        ; $54e7: $03
    jr nz, jr_0ce_54f2                            ; $54e8: $20 $08

    jr nz, jr_0ce_54fc                            ; $54ea: $20 $10

    ld b, b                                       ; $54ec: $40
    inc b                                         ; $54ed: $04
    ld hl, sp+$26                                 ; $54ee: $f8 $26
    jr z, jr_0ce_5521                             ; $54f0: $28 $2f

jr_0ce_54f2:
    ld l, b                                       ; $54f2: $68
    ccf                                           ; $54f3: $3f
    jr z, @+$01                                   ; $54f4: $28 $ff

    ld h, e                                       ; $54f6: $63
    ld [$4824], sp                                ; $54f7: $08 $24 $48
    db $10                                        ; $54fa: $10
    ld l, b                                       ; $54fb: $68

jr_0ce_54fc:
    ld h, [hl]                                    ; $54fc: $66
    ld hl, sp-$62                                 ; $54fd: $f8 $9e
    jr @-$6f                                      ; $54ff: $18 $8f

    ld c, b                                       ; $5501: $48
    db $10                                        ; $5502: $10
    ld b, b                                       ; $5503: $40
    dec de                                        ; $5504: $1b
    db $10                                        ; $5505: $10
    ldh [rNR41], a                                ; $5506: $e0 $20
    jr jr_0ce_5574                                ; $5508: $18 $6a

    db $10                                        ; $550a: $10
    db $10                                        ; $550b: $10
    ld h, b                                       ; $550c: $60
    jr nz, jr_0ce_550f                            ; $550d: $20 $00

jr_0ce_550f:
    inc d                                         ; $550f: $14
    nop                                           ; $5510: $00
    daa                                           ; $5511: $27
    ld bc, $7842                                  ; $5512: $01 $42 $78
    ld bc, $4108                                  ; $5515: $01 $08 $41
    ld b, c                                       ; $5518: $41
    ld a, b                                       ; $5519: $78
    ld b, c                                       ; $551a: $41
    rlca                                          ; $551b: $07
    and b                                         ; $551c: $a0
    ld b, d                                       ; $551d: $42
    add hl, sp                                    ; $551e: $39
    ld b, b                                       ; $551f: $40
    ld b, b                                       ; $5520: $40

jr_0ce_5521:
    dec e                                         ; $5521: $1d
    db $10                                        ; $5522: $10
    ld [hl+], a                                   ; $5523: $22
    ld [$8007], sp                                ; $5524: $08 $07 $80
    ld a, b                                       ; $5527: $78
    ld b, b                                       ; $5528: $40
    ld b, $10                                     ; $5529: $06 $10
    di                                            ; $552b: $f3
    ld b, b                                       ; $552c: $40
    nop                                           ; $552d: $00
    ld b, h                                       ; $552e: $44
    nop                                           ; $552f: $00
    rlca                                          ; $5530: $07
    adc b                                         ; $5531: $88
    ld b, b                                       ; $5532: $40
    nop                                           ; $5533: $00
    ld b, b                                       ; $5534: $40
    ld b, d                                       ; $5535: $42
    ld b, l                                       ; $5536: $45
    nop                                           ; $5537: $00
    inc b                                         ; $5538: $04
    nop                                           ; $5539: $00
    db $fd                                        ; $553a: $fd
    dec l                                         ; $553b: $2d
    nop                                           ; $553c: $00
    inc c                                         ; $553d: $0c
    ld [$0829], sp                                ; $553e: $08 $29 $08
    ld a, [bc]                                    ; $5541: $0a
    ld [$003a], sp                                ; $5542: $08 $3a $00
    ld de, $4200                                  ; $5545: $11 $00 $42
    ld bc, $cc38                                  ; $5548: $01 $38 $cc
    dec c                                         ; $554b: $0d
    jr nc, @+$1f                                  ; $554c: $30 $1d

    ld [$4240], sp                                ; $554e: $08 $40 $42
    ld [bc], a                                    ; $5551: $02
    nop                                           ; $5552: $00
    ld e, $10                                     ; $5553: $1e $10
    ld b, e                                       ; $5555: $43
    ld b, h                                       ; $5556: $44
    db $e3                                        ; $5557: $e3
    inc b                                         ; $5558: $04
    jr jr_0ce_5567                                ; $5559: $18 $0c

    jr z, jr_0ce_5587                             ; $555b: $28 $2a

    ld c, b                                       ; $555d: $48
    ld b, h                                       ; $555e: $44
    ld b, d                                       ; $555f: $42
    ld b, e                                       ; $5560: $43
    ld bc, $2520                                  ; $5561: $01 $20 $25
    ld [$09e1], sp                                ; $5564: $08 $e1 $09

jr_0ce_5567:
    jr z, jr_0ce_5582                             ; $5567: $28 $19

    db $10                                        ; $5569: $10
    ld de, $4520                                  ; $556a: $11 $20 $45
    ld b, [hl]                                    ; $556d: $46
    ld b, a                                       ; $556e: $47
    ld c, b                                       ; $556f: $48
    ld [$e048], sp                                ; $5570: $08 $48 $e0
    ld a, [hl+]                                   ; $5573: $2a

jr_0ce_5574:
    jr nc, jr_0ce_558f                            ; $5574: $30 $19

    ld [$001d], sp                                ; $5576: $08 $1d $00
    ld c, c                                       ; $5579: $49
    ld c, d                                       ; $557a: $4a
    ld c, d                                       ; $557b: $4a
    ld c, e                                       ; $557c: $4b
    ld c, h                                       ; $557d: $4c
    and b                                         ; $557e: $a0
    inc h                                         ; $557f: $24
    nop                                           ; $5580: $00
    ld c, d                                       ; $5581: $4a

jr_0ce_5582:
    ld [$4d00], sp                                ; $5582: $08 $00 $4d
    ld b, e                                       ; $5585: $43
    ld b, e                                       ; $5586: $43

jr_0ce_5587:
    ld c, [hl]                                    ; $5587: $4e
    ld c, [hl]                                    ; $5588: $4e
    ret nz                                        ; $5589: $c0

    jr @+$22                                      ; $558a: $18 $20

    ld de, $4f00                                  ; $558c: $11 $00 $4f

jr_0ce_558f:
    ld d, b                                       ; $558f: $50
    ld c, d                                       ; $5590: $4a
    ld c, d                                       ; $5591: $4a
    ld c, c                                       ; $5592: $49
    ld c, c                                       ; $5593: $49
    nop                                           ; $5594: $00
    ld c, c                                       ; $5595: $49
    ld d, c                                       ; $5596: $51
    ld d, d                                       ; $5597: $52
    ld c, c                                       ; $5598: $49
    ld c, c                                       ; $5599: $49
    ld c, d                                       ; $559a: $4a
    ld d, b                                       ; $559b: $50
    ld d, e                                       ; $559c: $53
    nop                                           ; $559d: $00
    ld d, e                                       ; $559e: $53
    ld d, c                                       ; $559f: $51
    ld d, h                                       ; $55a0: $54
    ld c, c                                       ; $55a1: $49
    ld d, l                                       ; $55a2: $55
    ld d, [hl]                                    ; $55a3: $56
    ld d, a                                       ; $55a4: $57
    ld e, b                                       ; $55a5: $58
    ld d, b                                       ; $55a6: $50
    ld e, c                                       ; $55a7: $59
    ld sp, $4a00                                  ; $55a8: $31 $00 $4a
    ld de, $5408                                  ; $55ab: $11 $08 $54
    ld e, d                                       ; $55ae: $5a
    ld e, e                                       ; $55af: $5b
    ld c, c                                       ; $55b0: $49
    nop                                           ; $55b1: $00
    ld d, c                                       ; $55b2: $51
    ld d, c                                       ; $55b3: $51
    ld e, h                                       ; $55b4: $5c
    ld e, l                                       ; $55b5: $5d
    ld e, [hl]                                    ; $55b6: $5e
    ld e, a                                       ; $55b7: $5f
    ld h, b                                       ; $55b8: $60
    ld c, c                                       ; $55b9: $49
    nop                                           ; $55ba: $00
    ld d, e                                       ; $55bb: $53
    ld h, c                                       ; $55bc: $61
    ld h, d                                       ; $55bd: $62
    ld h, e                                       ; $55be: $63
    ld h, h                                       ; $55bf: $64
    ld h, l                                       ; $55c0: $65
    ld h, [hl]                                    ; $55c1: $66
    ld h, a                                       ; $55c2: $67
    nop                                           ; $55c3: $00
    ld l, b                                       ; $55c4: $68
    ld l, c                                       ; $55c5: $69
    ld l, d                                       ; $55c6: $6a
    ld l, e                                       ; $55c7: $6b
    ld d, e                                       ; $55c8: $53
    ld d, h                                       ; $55c9: $54
    ld e, e                                       ; $55ca: $5b
    ld d, c                                       ; $55cb: $51
    ld b, b                                       ; $55cc: $40
    ld d, e                                       ; $55cd: $53
    ld de, $5e08                                  ; $55ce: $11 $08 $5e
    ld l, h                                       ; $55d1: $6c
    ld e, h                                       ; $55d2: $5c
    ld h, e                                       ; $55d3: $63
    ld e, [hl]                                    ; $55d4: $5e
    ld l, l                                       ; $55d5: $6d
    nop                                           ; $55d6: $00
    ld l, [hl]                                    ; $55d7: $6e
    ld l, a                                       ; $55d8: $6f
    ld l, a                                       ; $55d9: $6f
    ld [hl], b                                    ; $55da: $70
    ld [hl], c                                    ; $55db: $71
    ld [hl], d                                    ; $55dc: $72
    ld [hl], e                                    ; $55dd: $73
    ld l, a                                       ; $55de: $6f
    nop                                           ; $55df: $00
    ld l, a                                       ; $55e0: $6f
    ld l, a                                       ; $55e1: $6f
    ld [hl], e                                    ; $55e2: $73
    ld [hl], h                                    ; $55e3: $74
    ld [hl], h                                    ; $55e4: $74
    ld [hl], h                                    ; $55e5: $74
    ld l, b                                       ; $55e6: $68
    ld l, b                                       ; $55e7: $68
    dec b                                         ; $55e8: $05
    ld h, d                                       ; $55e9: $62
    ld [hl], c                                    ; $55ea: $71
    ld e, [hl]                                    ; $55eb: $5e
    ld e, a                                       ; $55ec: $5f
    ld h, d                                       ; $55ed: $62
    ld de, $6d10                                  ; $55ee: $11 $10 $6d
    inc e                                         ; $55f1: $1c
    nop                                           ; $55f2: $00
    ld h, b                                       ; $55f3: $60
    ld l, l                                       ; $55f4: $6d
    jr jr_0ce_55f7                                ; $55f5: $18 $00

jr_0ce_55f7:
    inc bc                                        ; $55f7: $03
    jr z, jr_0ce_566f                             ; $55f8: $28 $75

    halt                                          ; $55fa: $76
    ld [hl], a                                    ; $55fb: $77
    ld [hl], d                                    ; $55fc: $72
    ld [hl], e                                    ; $55fd: $73
    ld h, h                                       ; $55fe: $64
    ld [hl], d                                    ; $55ff: $72
    ld de, $1940                                  ; $5600: $11 $40 $19
    jr nc, jr_0ce_567a                            ; $5603: $30 $75

    ld l, a                                       ; $5605: $6f
    ld [bc], a                                    ; $5606: $02
    nop                                           ; $5607: $00
    ld a, b                                       ; $5608: $78
    ld [hl], l                                    ; $5609: $75
    rst $38                                       ; $560a: $ff
    ld [$1100], sp                                ; $560b: $08 $00 $11
    jr nc, @+$37                                  ; $560e: $30 $35

    jr nc, @+$1b                                  ; $5610: $30 $19

    ld [$0002], sp                                ; $5612: $08 $02 $00
    pop bc                                        ; $5615: $c1
    add hl, bc                                    ; $5616: $09
    ld hl, $2200                                  ; $5617: $21 $00 $22
    nop                                           ; $561a: $00
    rst $38                                       ; $561b: $ff
    inc c                                         ; $561c: $0c
    nop                                           ; $561d: $00
    ld [$0418], sp                                ; $561e: $08 $18 $04
    db $10                                        ; $5621: $10
    sbc a                                         ; $5622: $9f
    add hl, hl                                    ; $5623: $29
    db $e4                                        ; $5624: $e4
    add hl, bc                                    ; $5625: $09
    ld [hl+], a                                   ; $5626: $22
    ld [$09ee], sp                                ; $5627: $08 $ee $09
    ld [$bf18], sp                                ; $562a: $08 $18 $bf
    inc c                                         ; $562d: $0c
    db $10                                        ; $562e: $10
    ld [hl], l                                    ; $562f: $75
    add hl, de                                    ; $5630: $19
    db $10                                        ; $5631: $10
    cp a                                          ; $5632: $bf
    ld de, $1198                                  ; $5633: $11 $98 $11
    db $eb                                        ; $5636: $eb
    ld de, $120c                                  ; $5637: $11 $0c $12
    inc b                                         ; $563a: $04
    jr nz, @+$01                                  ; $563b: $20 $ff

    jr c, jr_0ce_564f                             ; $563d: $38 $10

    ld [c], a                                     ; $563f: $e2
    ld hl, $2229                                  ; $5640: $21 $29 $22
    inc l                                         ; $5643: $2c
    jr jr_0ce_566f                                ; $5644: $18 $29

    db $10                                        ; $5646: $10
    add hl, bc                                    ; $5647: $09
    db $10                                        ; $5648: $10
    inc bc                                        ; $5649: $03
    ld c, b                                       ; $564a: $48
    ld c, $22                                     ; $564b: $0e $22
    db $fd                                        ; $564d: $fd
    ld c, c                                       ; $564e: $49

jr_0ce_564f:
    jr nz, jr_0ce_56be                            ; $564f: $20 $6d

    db $10                                        ; $5651: $10
    dec a                                         ; $5652: $3d
    jr z, jr_0ce_565f                             ; $5653: $28 $0a

    ld b, b                                       ; $5655: $40
    sub b                                         ; $5656: $90
    jr nz, jr_0ce_56ce                            ; $5657: $20 $75

    ld [$0109], sp                                ; $5659: $08 $09 $01
    ld hl, sp-$31                                 ; $565c: $f8 $cf
    inc hl                                        ; $565e: $23

jr_0ce_565f:
    ld hl, sp+$45                                 ; $565f: $f8 $45
    ldh a, [$08]                                  ; $5661: $f0 $08
    ld [$380b], sp                                ; $5663: $08 $0b $38
    ld c, $08                                     ; $5666: $0e $08
    rrca                                          ; $5668: $0f
    jr c, @+$1d                                   ; $5669: $38 $1b

    ld [$1dff], sp                                ; $566b: $08 $ff $1d
    db $10                                        ; $566e: $10

jr_0ce_566f:
    inc hl                                        ; $566f: $23
    db $10                                        ; $5670: $10
    inc c                                         ; $5671: $0c
    nop                                           ; $5672: $00
    rrca                                          ; $5673: $0f
    jr nz, @+$12                                  ; $5674: $20 $10

    jr z, @+$2f                                   ; $5676: $28 $2d

    jr jr_0ce_56ac                                ; $5678: $18 $32

jr_0ce_567a:
    nop                                           ; $567a: $00
    dec de                                        ; $567b: $1b
    ld [$1fe6], sp                                ; $567c: $08 $e6 $1f
    db $10                                        ; $567f: $10
    inc sp                                        ; $5680: $33
    jr jr_0ce_5687                                ; $5681: $18 $04

    jr c, jr_0ce_5691                             ; $5683: $38 $0c

    ld c, $04                                     ; $5685: $0e $04

jr_0ce_5687:
    nop                                           ; $5687: $00
    dec b                                         ; $5688: $05
    ld [$340e], sp                                ; $5689: $08 $0e $34
    ld [$040c], sp                                ; $568c: $08 $0c $04
    nop                                           ; $568f: $00
    inc bc                                        ; $5690: $03

jr_0ce_5691:
    ld [$0a09], sp                                ; $5691: $08 $09 $0a
    db $10                                        ; $5694: $10
    ld c, $0c                                     ; $5695: $0e $0c
    rst $18                                       ; $5697: $df
    ld de, $0108                                  ; $5698: $11 $08 $01
    ld e, b                                       ; $569b: $58
    dec bc                                        ; $569c: $0b
    db $10                                        ; $569d: $10
    db $10                                        ; $569e: $10
    inc sp                                        ; $569f: $33
    nop                                           ; $56a0: $00
    dec l                                         ; $56a1: $2d
    nop                                           ; $56a2: $00
    ld a, [bc]                                    ; $56a3: $0a
    jr @+$03                                      ; $56a4: $18 $01

    ld hl, sp-$43                                 ; $56a6: $f8 $bd
    inc hl                                        ; $56a8: $23
    ret nz                                        ; $56a9: $c0

    ld l, $55                                     ; $56aa: $2e $55

jr_0ce_56ac:
    ld b, b                                       ; $56ac: $40
    add hl, bc                                    ; $56ad: $09
    ld c, b                                       ; $56ae: $48
    ld d, [hl]                                    ; $56af: $56
    ld hl, sp+$78                                 ; $56b0: $f8 $78
    add b                                         ; $56b2: $80
    ld a, [bc]                                    ; $56b3: $0a
    dec bc                                        ; $56b4: $0b
    sub b                                         ; $56b5: $90
    add e                                         ; $56b6: $83
    jr jr_0ce_56b9                                ; $56b7: $18 $00

jr_0ce_56b9:
    ld a, [bc]                                    ; $56b9: $0a
    ld a, [bc]                                    ; $56ba: $0a
    ld c, $0a                                     ; $56bb: $0e $0a
    dec c                                         ; $56bd: $0d

jr_0ce_56be:
    ld b, $00                                     ; $56be: $06 $00
    ld [$cf00], sp                                ; $56c0: $08 $00 $cf
    ld [de], a                                    ; $56c3: $12
    jr z, jr_0ce_56f6                             ; $56c4: $28 $30

    jr z, jr_0ce_56d2                             ; $56c6: $28 $0a

    dec c                                         ; $56c8: $0d
    add hl, de                                    ; $56c9: $19
    nop                                           ; $56ca: $00
    inc bc                                        ; $56cb: $03
    jr nc, @+$0d                                  ; $56cc: $30 $0b

jr_0ce_56ce:
    nop                                           ; $56ce: $00
    ld l, $08                                     ; $56cf: $2e $08
    rst $38                                       ; $56d1: $ff

jr_0ce_56d2:
    dec l                                         ; $56d2: $2d
    ld [$101a], sp                                ; $56d3: $08 $1a $10
    ld [bc], a                                    ; $56d6: $02
    nop                                           ; $56d7: $00
    ld bc, $0500                                  ; $56d8: $01 $00 $05
    jr nc, jr_0ce_570a                            ; $56db: $30 $2d

    jr jr_0ce_56e0                                ; $56dd: $18 $01

    db $10                                        ; $56df: $10

jr_0ce_56e0:
    ld [$fe28], sp                                ; $56e0: $08 $28 $fe
    ld b, $80                                     ; $56e3: $06 $80
    dec de                                        ; $56e5: $1b
    ld e, b                                       ; $56e6: $58
    add hl, hl                                    ; $56e7: $29
    jr nc, @+$34                                  ; $56e8: $30 $32

    ld a, b                                       ; $56ea: $78
    ld b, h                                       ; $56eb: $44
    ret nz                                        ; $56ec: $c0

    add hl, de                                    ; $56ed: $19
    ld hl, sp+$7f                                 ; $56ee: $f8 $7f
    jr z, @+$22                                   ; $56f0: $28 $20

    nop                                           ; $56f2: $00
    rrca                                          ; $56f3: $0f
    nop                                           ; $56f4: $00
    ld [hl], l                                    ; $56f5: $75

jr_0ce_56f6:
    ld bc, $4002                                  ; $56f6: $01 $02 $40
    ld b, c                                       ; $56f9: $41
    ld b, c                                       ; $56fa: $41
    ld b, d                                       ; $56fb: $42
    ld b, e                                       ; $56fc: $43
    ld b, c                                       ; $56fd: $41
    ld bc, $4430                                  ; $56fe: $01 $30 $44
    inc c                                         ; $5701: $0c
    ld b, h                                       ; $5702: $44
    ld b, c                                       ; $5703: $41
    ld b, c                                       ; $5704: $41
    ld b, l                                       ; $5705: $45
    inc d                                         ; $5706: $14
    jr nz, jr_0ce_5715                            ; $5707: $20 $0c

    db $10                                        ; $5709: $10

jr_0ce_570a:
    ld b, [hl]                                    ; $570a: $46
    ld b, c                                       ; $570b: $41
    db $10                                        ; $570c: $10
    ld b, c                                       ; $570d: $41
    ld b, a                                       ; $570e: $47
    ld c, b                                       ; $570f: $48
    ld a, [de]                                    ; $5710: $1a
    jr c, jr_0ce_5757                             ; $5711: $38 $44

    ld b, h                                       ; $5713: $44
    ld b, d                                       ; $5714: $42

jr_0ce_5715:
    ld b, e                                       ; $5715: $43
    ld l, [hl]                                    ; $5716: $6e
    ld c, c                                       ; $5717: $49
    inc d                                         ; $5718: $14
    jr nz, jr_0ce_5747                            ; $5719: $20 $2c

    ld [$3a49], sp                                ; $571b: $08 $49 $3a
    ld d, b                                       ; $571e: $50
    ld a, [de]                                    ; $571f: $1a
    jr z, jr_0ce_5724                             ; $5720: $28 $02

    ld b, b                                       ; $5722: $40
    ld c, d                                       ; $5723: $4a

jr_0ce_5724:
    add b                                         ; $5724: $80
    ld bc, $4450                                  ; $5725: $01 $50 $44
    ld b, h                                       ; $5728: $44
    ld c, d                                       ; $5729: $4a
    ld c, d                                       ; $572a: $4a
    ld b, l                                       ; $572b: $45
    ld b, b                                       ; $572c: $40
    ld c, d                                       ; $572d: $4a
    db $10                                        ; $572e: $10
    ld c, d                                       ; $572f: $4a
    ld b, d                                       ; $5730: $42
    ld b, e                                       ; $5731: $43
    ld [$4418], sp                                ; $5732: $08 $18 $44
    ld b, h                                       ; $5735: $44
    ld b, h                                       ; $5736: $44
    ld c, e                                       ; $5737: $4b
    ld bc, $454b                                  ; $5738: $01 $4b $45
    ld b, b                                       ; $573b: $40
    ld c, e                                       ; $573c: $4b
    ld c, e                                       ; $573d: $4b
    ld b, d                                       ; $573e: $42
    ld b, e                                       ; $573f: $43
    ld [$0010], sp                                ; $5740: $08 $10 $00
    ld b, h                                       ; $5743: $44
    ld c, h                                       ; $5744: $4c
    ld b, h                                       ; $5745: $44
    ld c, e                                       ; $5746: $4b

jr_0ce_5747:
    ld c, c                                       ; $5747: $49
    ld b, [hl]                                    ; $5748: $46
    ld c, e                                       ; $5749: $4b
    ld c, e                                       ; $574a: $4b
    jr @+$49                                      ; $574b: $18 $47

    ld c, b                                       ; $574d: $48
    ld c, e                                       ; $574e: $4b
    ld [$1010], sp                                ; $574f: $08 $10 $10
    nop                                           ; $5752: $00
    ld c, [hl]                                    ; $5753: $4e
    ld c, [hl]                                    ; $5754: $4e
    ld c, c                                       ; $5755: $49
    dec b                                         ; $5756: $05

jr_0ce_5757:
    ld b, [hl]                                    ; $5757: $46
    ld c, [hl]                                    ; $5758: $4e
    ld c, [hl]                                    ; $5759: $4e
    ld b, a                                       ; $575a: $47
    ld c, b                                       ; $575b: $48
    ld [$4418], sp                                ; $575c: $08 $18 $44
    stop                                          ; $575f: $10 $00
    ret nz                                        ; $5761: $c0

    ld [bc], a                                    ; $5762: $02
    nop                                           ; $5763: $00
    rlca                                          ; $5764: $07
    ld [$4045], sp                                ; $5765: $08 $45 $40
    ld c, [hl]                                    ; $5768: $4e
    ld c, [hl]                                    ; $5769: $4e
    ld b, d                                       ; $576a: $42
    ld c, l                                       ; $576b: $4d
    ld b, b                                       ; $576c: $40
    ld d, b                                       ; $576d: $50
    ld bc, $4410                                  ; $576e: $01 $10 $44
    ld b, h                                       ; $5771: $44
    ld d, b                                       ; $5772: $50
    ld d, b                                       ; $5773: $50
    ld b, l                                       ; $5774: $45
    ld b, b                                       ; $5775: $40
    ld [$5050], sp                                ; $5776: $08 $50 $50
    ld b, d                                       ; $5779: $42
    ld b, e                                       ; $577a: $43
    db $10                                        ; $577b: $10
    jr c, jr_0ce_57c7                             ; $577c: $38 $49

    ld b, [hl]                                    ; $577e: $46
    ld d, b                                       ; $577f: $50
    ld [$4750], sp                                ; $5780: $08 $50 $47
    ld c, b                                       ; $5783: $48
    ld d, c                                       ; $5784: $51
    ld bc, $4410                                  ; $5785: $01 $10 $44
    ld b, h                                       ; $5788: $44
    ld d, c                                       ; $5789: $51
    ld b, $51                                     ; $578a: $06 $51
    ld c, c                                       ; $578c: $49
    ld b, [hl]                                    ; $578d: $46
    ld d, c                                       ; $578e: $51
    ld d, c                                       ; $578f: $51
    db $10                                        ; $5790: $10
    jr jr_0ce_57a1                                ; $5791: $18 $0e

    ld [$0045], sp                                ; $5793: $08 $45 $00
    ld b, b                                       ; $5796: $40
    ld d, c                                       ; $5797: $51
    ld d, c                                       ; $5798: $51
    ld b, d                                       ; $5799: $42
    ld b, e                                       ; $579a: $43
    ld d, c                                       ; $579b: $51
    ld d, c                                       ; $579c: $51
    ld d, d                                       ; $579d: $52
    nop                                           ; $579e: $00
    ld b, h                                       ; $579f: $44
    ld b, h                                       ; $57a0: $44

jr_0ce_57a1:
    ld d, d                                       ; $57a1: $52
    ld d, d                                       ; $57a2: $52
    ld b, l                                       ; $57a3: $45
    ld b, b                                       ; $57a4: $40
    ld d, d                                       ; $57a5: $52
    ld d, d                                       ; $57a6: $52
    jr jr_0ce_57eb                                ; $57a7: $18 $42

    ld b, e                                       ; $57a9: $43
    ld d, d                                       ; $57aa: $52
    ld bc, $1328                                  ; $57ab: $01 $28 $13
    ld [$4649], sp                                ; $57ae: $08 $49 $46
    ld d, d                                       ; $57b1: $52
    nop                                           ; $57b2: $00
    ld d, d                                       ; $57b3: $52
    ld b, a                                       ; $57b4: $47
    ld c, b                                       ; $57b5: $48
    ld d, d                                       ; $57b6: $52
    ld d, d                                       ; $57b7: $52
    ld d, e                                       ; $57b8: $53
    ld b, h                                       ; $57b9: $44
    ld b, h                                       ; $57ba: $44
    nop                                           ; $57bb: $00
    ld d, e                                       ; $57bc: $53
    ld d, e                                       ; $57bd: $53
    ld c, c                                       ; $57be: $49
    ld b, [hl]                                    ; $57bf: $46
    ld d, e                                       ; $57c0: $53
    ld d, e                                       ; $57c1: $53
    ld b, a                                       ; $57c2: $47
    ld c, b                                       ; $57c3: $48
    ld b, b                                       ; $57c4: $40
    ld d, e                                       ; $57c5: $53
    inc c                                         ; $57c6: $0c

jr_0ce_57c7:
    db $10                                        ; $57c7: $10
    ld b, l                                       ; $57c8: $45
    ld b, b                                       ; $57c9: $40
    ld d, e                                       ; $57ca: $53
    ld d, e                                       ; $57cb: $53
    ld b, d                                       ; $57cc: $42
    ld b, e                                       ; $57cd: $43
    ld d, b                                       ; $57ce: $50
    ld d, e                                       ; $57cf: $53
    ld bc, $5428                                  ; $57d0: $01 $28 $54
    ld bc, $4448                                  ; $57d3: $01 $48 $44
    ld b, h                                       ; $57d6: $44
    ld d, h                                       ; $57d7: $54
    ld d, h                                       ; $57d8: $54
    ld [bc], a                                    ; $57d9: $02
    ld c, c                                       ; $57da: $49
    ld b, [hl]                                    ; $57db: $46
    ld d, h                                       ; $57dc: $54
    ld d, h                                       ; $57dd: $54
    ld b, a                                       ; $57de: $47
    ld c, b                                       ; $57df: $48
    rla                                           ; $57e0: $17
    jr nc, jr_0ce_5838                            ; $57e1: $30 $55

    nop                                           ; $57e3: $00
    ld d, [hl]                                    ; $57e4: $56
    ld d, a                                       ; $57e5: $57
    ld e, b                                       ; $57e6: $58
    ld e, c                                       ; $57e7: $59
    ld e, d                                       ; $57e8: $5a
    ld e, e                                       ; $57e9: $5b
    ld e, h                                       ; $57ea: $5c

jr_0ce_57eb:
    ld e, c                                       ; $57eb: $59
    nop                                           ; $57ec: $00
    ld e, l                                       ; $57ed: $5d
    ld e, [hl]                                    ; $57ee: $5e
    ld e, h                                       ; $57ef: $5c
    ld e, c                                       ; $57f0: $59
    ld e, a                                       ; $57f1: $5f
    ld h, b                                       ; $57f2: $60
    ld h, c                                       ; $57f3: $61
    ld h, d                                       ; $57f4: $62
    nop                                           ; $57f5: $00
    ld h, e                                       ; $57f6: $63
    ld h, h                                       ; $57f7: $64
    ld h, l                                       ; $57f8: $65
    ld h, [hl]                                    ; $57f9: $66
    ld h, a                                       ; $57fa: $67
    ld l, b                                       ; $57fb: $68
    ld l, c                                       ; $57fc: $69
    ld l, d                                       ; $57fd: $6a
    nop                                           ; $57fe: $00
    ld l, e                                       ; $57ff: $6b
    ld l, h                                       ; $5800: $6c
    ld l, l                                       ; $5801: $6d
    ld l, [hl]                                    ; $5802: $6e
    ld l, e                                       ; $5803: $6b
    ld l, a                                       ; $5804: $6f
    ld [hl], b                                    ; $5805: $70
    ld [hl], c                                    ; $5806: $71
    rlca                                          ; $5807: $07
    ld [hl], d                                    ; $5808: $72
    ld [hl], e                                    ; $5809: $73
    ld [hl], h                                    ; $580a: $74
    ld [hl], c                                    ; $580b: $71
    ld [hl], l                                    ; $580c: $75
    inc b                                         ; $580d: $04
    ld b, b                                       ; $580e: $40
    db $10                                        ; $580f: $10
    ld [$4004], sp                                ; $5810: $08 $04 $40
    inc l                                         ; $5813: $2c
    halt                                          ; $5814: $76
    ld [hl], a                                    ; $5815: $77
    ld [bc], a                                    ; $5816: $02
    jr c, jr_0ce_5868                             ; $5817: $38 $4f

    inc b                                         ; $5819: $04
    jr nz, jr_0ce_581e                            ; $581a: $20 $02

    ld d, b                                       ; $581c: $50
    halt                                          ; $581d: $76

jr_0ce_581e:
    halt                                          ; $581e: $76
    ld a, c                                       ; $581f: $79
    ld c, a                                       ; $5820: $4f
    inc b                                         ; $5821: $04
    nop                                           ; $5822: $00
    jr nz, jr_0ce_583d                            ; $5823: $20 $18

    ld [$0e18], sp                                ; $5825: $08 $18 $0e
    ld [$4f76], sp                                ; $5828: $08 $76 $4f
    ld c, $00                                     ; $582b: $0e $00
    add e                                         ; $582d: $83
    jr nc, jr_0ce_5830                            ; $582e: $30 $00

jr_0ce_5830:
    halt                                          ; $5830: $76
    dec c                                         ; $5831: $0d
    ld [$0d08], sp                                ; $5832: $08 $08 $0d
    inc b                                         ; $5835: $04
    nop                                           ; $5836: $00
    ld [bc], a                                    ; $5837: $02

jr_0ce_5838:
    jr z, jr_0ce_5859                             ; $5838: $28 $1f

    dec c                                         ; $583a: $0d
    dec l                                         ; $583b: $2d
    dec c                                         ; $583c: $0d

jr_0ce_583d:
    stop                                          ; $583d: $10 $00
    ld [bc], a                                    ; $583f: $02
    ld [$100c], sp                                ; $5840: $08 $0c $10
    ld [$2018], sp                                ; $5843: $08 $18 $20
    ld [$0d13], sp                                ; $5846: $08 $13 $0d
    dec c                                         ; $5849: $0d
    dec l                                         ; $584a: $2d
    ld a, [hl+]                                   ; $584b: $2a
    ld [$6d4d], sp                                ; $584c: $08 $4d $6d
    inc d                                         ; $584f: $14
    jr z, jr_0ce_585e                             ; $5850: $28 $0c

    ld [$3cfe], sp                                ; $5852: $08 $fe $3c
    nop                                           ; $5855: $00
    dec sp                                        ; $5856: $3b
    jr nc, @+$10                                  ; $5857: $30 $0e

jr_0ce_5859:
    db $10                                        ; $5859: $10
    ld c, [hl]                                    ; $585a: $4e
    ld h, b                                       ; $585b: $60
    ld a, [bc]                                    ; $585c: $0a
    ld [hl], b                                    ; $585d: $70

jr_0ce_585e:
    ld b, l                                       ; $585e: $45
    jr jr_0ce_5865                                ; $585f: $18 $04

    ld b, b                                       ; $5861: $40
    dec l                                         ; $5862: $2d
    inc b                                         ; $5863: $04
    inc l                                         ; $5864: $2c

jr_0ce_5865:
    ld [$0c08], sp                                ; $5865: $08 $08 $0c

jr_0ce_5868:
    inc c                                         ; $5868: $0c
    inc b                                         ; $5869: $04
    jr nc, @+$50                                  ; $586a: $30 $4e

    ld c, $04                                     ; $586c: $0e $04
    inc l                                         ; $586e: $2c
    ld [$0e0e], sp                                ; $586f: $08 $0e $0e
    ld [$3004], sp                                ; $5872: $08 $04 $30
    ld c, [hl]                                    ; $5875: $4e
    ld c, $4d                                     ; $5876: $0e $4d
    ld l, h                                       ; $5878: $6c
    jr nz, jr_0ce_58cb                            ; $5879: $20 $50

    ld [$104c], sp                                ; $587b: $08 $4c $10
    nop                                           ; $587e: $00
    xor [hl]                                      ; $587f: $ae
    nop                                           ; $5880: $00
    inc c                                         ; $5881: $0c
    scf                                           ; $5882: $37
    ld b, b                                       ; $5883: $40
    ldh [rNR10], a                                ; $5884: $e0 $10
    adc b                                         ; $5886: $88
    daa                                           ; $5887: $27
    ld [$4820], sp                                ; $5888: $08 $20 $48
    ld c, e                                       ; $588b: $4b
    ld l, e                                       ; $588c: $6b
    ld [$0b08], sp                                ; $588d: $08 $08 $0b
    ld l, a                                       ; $5890: $6f
    dec bc                                        ; $5891: $0b
    inc b                                         ; $5892: $04
    jr jr_0ce_589f                                ; $5893: $18 $0a

    nop                                           ; $5895: $00
    dec hl                                        ; $5896: $2b
    ld c, $40                                     ; $5897: $0e $40
    dec c                                         ; $5899: $0d
    ld d, b                                       ; $589a: $50
    ld l, $80                                     ; $589b: $2e $80
    dec sp                                        ; $589d: $3b
    ld c, b                                       ; $589e: $48

jr_0ce_589f:
    ret nz                                        ; $589f: $c0

    inc l                                         ; $58a0: $2c
    add b                                         ; $58a1: $80
    db $ed                                        ; $58a2: $ed
    ld d, b                                       ; $58a3: $50
    ld c, a                                       ; $58a4: $4f
    ld l, a                                       ; $58a5: $6f
    ld [$0a08], sp                                ; $58a6: $08 $08 $0a
    ld a, [bc]                                    ; $58a9: $0a
    ret nz                                        ; $58aa: $c0

    inc b                                         ; $58ab: $04
    jr jr_0ce_5902                                ; $58ac: $18 $54

    ld hl, $0f09                                  ; $58ae: $21 $09 $0f
    add hl, bc                                    ; $58b1: $09
    add hl, bc                                    ; $58b2: $09
    add hl, bc                                    ; $58b3: $09
    rrca                                          ; $58b4: $0f
    rst $28                                       ; $58b5: $ef
    dec b                                         ; $58b6: $05
    nop                                           ; $58b7: $00
    ld [$0e18], sp                                ; $58b8: $08 $18 $0e
    nop                                           ; $58bb: $00
    ld a, [bc]                                    ; $58bc: $0a
    ld c, $00                                     ; $58bd: $0e $00
    ld de, $0410                                  ; $58bf: $11 $10 $04
    jr jr_0ce_58d2                                ; $58c2: $18 $0e

    ld [$1e85], sp                                ; $58c4: $08 $85 $1e
    ld [$090f], sp                                ; $58c7: $08 $0f $09
    ld a, [bc]                                    ; $58ca: $0a

jr_0ce_58cb:
    ld a, [bc]                                    ; $58cb: $0a
    ld a, [hl+]                                   ; $58cc: $2a
    db $10                                        ; $58cd: $10
    ld a, [bc]                                    ; $58ce: $0a
    db $10                                        ; $58cf: $10
    db $10                                        ; $58d0: $10
    adc a                                         ; $58d1: $8f

jr_0ce_58d2:
    add hl, hl                                    ; $58d2: $29
    ld [$0f09], sp                                ; $58d3: $08 $09 $0f
    ld a, [bc]                                    ; $58d6: $0a
    ld c, $00                                     ; $58d7: $0e $00
    ld de, $1900                                  ; $58d9: $11 $00 $19
    nop                                           ; $58dc: $00
    rrca                                          ; $58dd: $0f
    ld [$13b0], sp                                ; $58de: $08 $b0 $13
    ld [$0749], sp                                ; $58e1: $08 $49 $07
    jr jr_0ce_58f5                                ; $58e4: $18 $0f

    jr z, jr_0ce_58f2                             ; $58e6: $28 $0a

    add hl, bc                                    ; $58e8: $09
    ld l, c                                       ; $58e9: $69
    ld a, [bc]                                    ; $58ea: $0a
    inc de                                        ; $58eb: $13
    ld c, c                                       ; $58ec: $49
    add hl, bc                                    ; $58ed: $09
    ld l, c                                       ; $58ee: $69
    ld e, $18                                     ; $58ef: $1e $18
    ld c, c                                       ; $58f1: $49

jr_0ce_58f2:
    add hl, hl                                    ; $58f2: $29
    ld h, $10                                     ; $58f3: $26 $10

jr_0ce_58f5:
    ld b, $08                                     ; $58f5: $06 $08
    and b                                         ; $58f7: $a0
    ld [de], a                                    ; $58f8: $12
    nop                                           ; $58f9: $00
    ld c, c                                       ; $58fa: $49
    ld d, $00                                     ; $58fb: $16 $00
    add hl, bc                                    ; $58fd: $09
    ld l, c                                       ; $58fe: $69
    jr nz, jr_0ce_5901                            ; $58ff: $20 $00

jr_0ce_5901:
    dec c                                         ; $5901: $0d

jr_0ce_5902:
    nop                                           ; $5902: $00
    add hl, hl                                    ; $5903: $29
    ld bc, $4000                                  ; $5904: $01 $00 $40
    ld b, c                                       ; $5907: $41
    ld b, d                                       ; $5908: $42
    ld b, e                                       ; $5909: $43
    ld b, h                                       ; $590a: $44
    ld b, e                                       ; $590b: $43
    ld b, l                                       ; $590c: $45
    ld b, [hl]                                    ; $590d: $46
    nop                                           ; $590e: $00
    ld b, l                                       ; $590f: $45
    ld b, a                                       ; $5910: $47
    ld c, b                                       ; $5911: $48
    ld c, c                                       ; $5912: $49
    ld b, e                                       ; $5913: $43
    ld b, b                                       ; $5914: $40
    ld b, [hl]                                    ; $5915: $46
    ld b, e                                       ; $5916: $43
    ld bc, $4642                                  ; $5917: $01 $42 $46
    ld b, l                                       ; $591a: $45
    ld b, l                                       ; $591b: $45
    ld b, e                                       ; $591c: $43
    ld c, c                                       ; $591d: $49
    ld b, l                                       ; $591e: $45
    inc c                                         ; $591f: $0c
    stop                                          ; $5920: $10 $00
    ld c, d                                       ; $5922: $4a
    ld c, c                                       ; $5923: $49
    ld b, e                                       ; $5924: $43
    ld b, l                                       ; $5925: $45
    ld b, l                                       ; $5926: $45
    ld b, h                                       ; $5927: $44
    ld c, c                                       ; $5928: $49
    ld b, l                                       ; $5929: $45
    nop                                           ; $592a: $00
    ld c, e                                       ; $592b: $4b
    ld b, [hl]                                    ; $592c: $46
    ld c, h                                       ; $592d: $4c
    ld b, e                                       ; $592e: $43
    ld c, e                                       ; $592f: $4b
    ld c, h                                       ; $5930: $4c
    ld c, l                                       ; $5931: $4d
    ld c, [hl]                                    ; $5932: $4e
    dec bc                                        ; $5933: $0b
    ld b, [hl]                                    ; $5934: $46
    ld b, l                                       ; $5935: $45
    ld c, c                                       ; $5936: $49
    ld b, [hl]                                    ; $5937: $46
    ld a, [hl+]                                   ; $5938: $2a
    nop                                           ; $5939: $00
    ld b, [hl]                                    ; $593a: $46
    ld [hl-], a                                   ; $593b: $32
    nop                                           ; $593c: $00
    rlca                                          ; $593d: $07
    ld [$4500], sp                                ; $593e: $08 $00 $45
    ld b, l                                       ; $5941: $45
    ld c, h                                       ; $5942: $4c
    ld b, l                                       ; $5943: $45
    ld b, [hl]                                    ; $5944: $46
    ld b, c                                       ; $5945: $41
    ld b, e                                       ; $5946: $43
    ld c, a                                       ; $5947: $4f
    nop                                           ; $5948: $00
    ld b, e                                       ; $5949: $43
    ld d, b                                       ; $594a: $50
    ld c, d                                       ; $594b: $4a
    ld b, l                                       ; $594c: $45
    ld b, d                                       ; $594d: $42
    ld b, l                                       ; $594e: $45
    ld c, c                                       ; $594f: $49
    ld d, c                                       ; $5950: $51
    push hl                                       ; $5951: $e5
    stop                                          ; $5952: $10 $00
    dec a                                         ; $5954: $3d
    nop                                           ; $5955: $00
    dec de                                        ; $5956: $1b
    jr jr_0ce_59ab                                ; $5957: $18 $52

    ld d, e                                       ; $5959: $53
    dec l                                         ; $595a: $2d
    nop                                           ; $595b: $00
    ld b, l                                       ; $595c: $45
    ld d, a                                       ; $595d: $57
    nop                                           ; $595e: $00
    db $10                                        ; $595f: $10
    ld d, h                                       ; $5960: $54
    ld b, l                                       ; $5961: $45
    ld c, h                                       ; $5962: $4c
    ld [$4500], sp                                ; $5963: $08 $00 $45
    ld b, a                                       ; $5966: $47
    ld b, l                                       ; $5967: $45
    ld b, c                                       ; $5968: $41
    ld b, c                                       ; $5969: $41
    ld c, a                                       ; $596a: $4f
    ld e, e                                       ; $596b: $5b
    nop                                           ; $596c: $00
    ld b, h                                       ; $596d: $44
    ld b, c                                       ; $596e: $41
    ld b, l                                       ; $596f: $45
    ld c, c                                       ; $5970: $49
    ld b, c                                       ; $5971: $41
    ld c, $08                                     ; $5972: $0e $08
    rlca                                          ; $5974: $07
    ld d, l                                       ; $5975: $55
    ld d, [hl]                                    ; $5976: $56
    ld b, l                                       ; $5977: $45
    ld c, d                                       ; $5978: $4a
    ld b, l                                       ; $5979: $45
    ld [hl+], a                                   ; $597a: $22
    ld [$0847], sp                                ; $597b: $08 $47 $08
    ld c, b                                       ; $597e: $48
    nop                                           ; $597f: $00
    cp d                                          ; $5980: $ba
    scf                                           ; $5981: $37
    nop                                           ; $5982: $00
    ld d, h                                       ; $5983: $54
    ld a, [bc]                                    ; $5984: $0a
    ld [$0803], sp                                ; $5985: $08 $03 $08
    add hl, de                                    ; $5988: $19
    db $10                                        ; $5989: $10
    ld b, h                                       ; $598a: $44
    ld e, l                                       ; $598b: $5d
    nop                                           ; $598c: $00
    ld b, c                                       ; $598d: $41
    ld de, $4f48                                  ; $598e: $11 $48 $4f
    ld b, d                                       ; $5991: $42
    rrca                                          ; $5992: $0f
    db $10                                        ; $5993: $10
    ld d, a                                       ; $5994: $57
    ld e, b                                       ; $5995: $58
    ld e, c                                       ; $5996: $59
    ld b, h                                       ; $5997: $44
    nop                                           ; $5998: $00
    ld e, [hl]                                    ; $5999: $5e
    ld b, c                                       ; $599a: $41
    ld c, e                                       ; $599b: $4b
    ld [$785a], sp                                ; $599c: $08 $5a $78
    ld [$0852], sp                                ; $599f: $08 $52 $08
    scf                                           ; $59a2: $37
    ld [$0093], sp                                ; $59a3: $08 $93 $00
    ld d, h                                       ; $59a6: $54
    ld b, d                                       ; $59a7: $42
    ld b, l                                       ; $59a8: $45
    or d                                          ; $59a9: $b2
    nop                                           ; $59aa: $00

jr_0ce_59ab:
    ld e, e                                       ; $59ab: $5b
    ld e, h                                       ; $59ac: $5c
    ld e, l                                       ; $59ad: $5d
    ld c, a                                       ; $59ae: $4f
    sub h                                         ; $59af: $94

jr_0ce_59b0:
    nop                                           ; $59b0: $00
    ld c, c                                       ; $59b1: $49
    and d                                         ; $59b2: $a2
    ld h, a                                       ; $59b3: $67
    nop                                           ; $59b4: $00
    ld b, l                                       ; $59b5: $45
    adc e                                         ; $59b6: $8b
    nop                                           ; $59b7: $00
    ld b, h                                       ; $59b8: $44
    ld b, l                                       ; $59b9: $45
    ld c, a                                       ; $59ba: $4f
    adc e                                         ; $59bb: $8b
    ld [$3949], sp                                ; $59bc: $08 $49 $39
    ld b, l                                       ; $59bf: $45
    ld d, c                                       ; $59c0: $51
    and d                                         ; $59c1: $a2
    nop                                           ; $59c2: $00
    ld b, a                                       ; $59c3: $47
    nop                                           ; $59c4: $00
    xor e                                         ; $59c5: $ab
    ld [$4254], sp                                ; $59c6: $08 $54 $42
    xor [hl]                                      ; $59c9: $ae
    nop                                           ; $59ca: $00
    ld [hl], a                                    ; $59cb: $77
    ld d, h                                       ; $59cc: $54
    ld h, d                                       ; $59cd: $62
    db $10                                        ; $59ce: $10
    ld b, $00                                     ; $59cf: $06 $00
    add hl, bc                                    ; $59d1: $09
    jr jr_0ce_5a2e                                ; $59d2: $18 $5a

    xor l                                         ; $59d4: $ad
    nop                                           ; $59d5: $00
    add c                                         ; $59d6: $81
    jr jr_0ce_5a54                                ; $59d7: $18 $7b

    jr z, jr_0ce_59b0                             ; $59d9: $28 $d5

    add hl, bc                                    ; $59db: $09
    add b                                         ; $59dc: $80
    ld [$5ee0], sp                                ; $59dd: $08 $e0 $5e
    ld bc, $5fe0                                  ; $59e0: $01 $e0 $5f
    ld bc, $60e0                                  ; $59e3: $01 $e0 $60
    ld bc, $40e0                                  ; $59e6: $01 $e0 $40
    dec bc                                        ; $59e9: $0b
    ld bc, $0a00                                  ; $59ea: $01 $00 $0a
    ld l, e                                       ; $59ed: $6b
    ld [$080b], sp                                ; $59ee: $08 $0b $08
    dec bc                                        ; $59f1: $0b
    nop                                           ; $59f2: $00
    add hl, bc                                    ; $59f3: $09
    dec bc                                        ; $59f4: $0b
    dec bc                                        ; $59f5: $0b
    dec hl                                        ; $59f6: $2b
    ld l, e                                       ; $59f7: $6b
    dec bc                                        ; $59f8: $0b
    ld c, e                                       ; $59f9: $4b
    ld l, e                                       ; $59fa: $6b
    nop                                           ; $59fb: $00
    ld [$0b08], sp                                ; $59fc: $08 $08 $0b
    dec bc                                        ; $59ff: $0b
    ld [$6b0e], sp                                ; $5a00: $08 $0e $6b
    dec hl                                        ; $5a03: $2b
    nop                                           ; $5a04: $00
    dec bc                                        ; $5a05: $0b
    ld l, e                                       ; $5a06: $6b
    add hl, bc                                    ; $5a07: $09
    dec bc                                        ; $5a08: $0b
    dec hl                                        ; $5a09: $2b
    dec bc                                        ; $5a0a: $0b
    ld [$000a], sp                                ; $5a0b: $08 $0a $00
    ld c, $08                                     ; $5a0e: $0e $08
    dec bc                                        ; $5a10: $0b
    ld l, e                                       ; $5a11: $6b
    ld [$2b6b], sp                                ; $5a12: $08 $6b $2b
    add hl, hl                                    ; $5a15: $29
    inc d                                         ; $5a16: $14
    add hl, bc                                    ; $5a17: $09
    add hl, bc                                    ; $5a18: $09
    ld l, e                                       ; $5a19: $6b
    rla                                           ; $5a1a: $17
    nop                                           ; $5a1b: $00
    ld [$080c], sp                                ; $5a1c: $08 $0c $08
    ld l, e                                       ; $5a1f: $6b
    ld a, [bc]                                    ; $5a20: $0a
    and d                                         ; $5a21: $a2
    rlca                                          ; $5a22: $07
    ld [$0108], sp                                ; $5a23: $08 $08 $01
    nop                                           ; $5a26: $00
    ld l, e                                       ; $5a27: $6b
    dec hl                                        ; $5a28: $2b
    dec hl                                        ; $5a29: $2b
    ld b, d                                       ; $5a2a: $42
    nop                                           ; $5a2b: $00
    add hl, bc                                    ; $5a2c: $09
    inc b                                         ; $5a2d: $04

jr_0ce_5a2e:
    ld [$082e], sp                                ; $5a2e: $08 $2e $08
    ld c, $09                                     ; $5a31: $0e $09
    rrca                                          ; $5a33: $0f
    ld [$0808], sp                                ; $5a34: $08 $08 $08
    call z, $001b                                 ; $5a37: $cc $1b $00
    ld b, b                                       ; $5a3a: $40
    nop                                           ; $5a3b: $00
    inc c                                         ; $5a3c: $0c
    inc c                                         ; $5a3d: $0c
    dec l                                         ; $5a3e: $2d
    nop                                           ; $5a3f: $00
    db $10                                        ; $5a40: $10
    ld [$080b], sp                                ; $5a41: $08 $0b $08
    ld [c], a                                     ; $5a44: $e2
    ld [$6008], sp                                ; $5a45: $08 $08 $60
    nop                                           ; $5a48: $00
    jr z, jr_0ce_5a4b                             ; $5a49: $28 $00

jr_0ce_5a4b:
    ld l, e                                       ; $5a4b: $6b
    ld [$5a0a], sp                                ; $5a4c: $08 $0a $5a
    nop                                           ; $5a4f: $00
    ld c, e                                       ; $5a50: $4b
    sbc $6c                                       ; $5a51: $de $6c
    nop                                           ; $5a53: $00

jr_0ce_5a54:
    jr nz, jr_0ce_5a56                            ; $5a54: $20 $00

jr_0ce_5a56:
    ld [$0030], sp                                ; $5a56: $08 $30 $00
    ld a, [de]                                    ; $5a59: $1a
    ld [$1047], sp                                ; $5a5a: $08 $47 $10
    scf                                           ; $5a5d: $37
    ld [$f62b], sp                                ; $5a5e: $08 $2b $f6
    ld a, [bc]                                    ; $5a61: $0a
    jr nz, jr_0ce_5a7d                            ; $5a62: $20 $19

    ld [$0077], sp                                ; $5a64: $08 $77 $00
    ld e, [hl]                                    ; $5a67: $5e
    nop                                           ; $5a68: $00
    dec hl                                        ; $5a69: $2b
    sub e                                         ; $5a6a: $93
    nop                                           ; $5a6b: $00
    rrca                                          ; $5a6c: $0f
    db $10                                        ; $5a6d: $10
    dec c                                         ; $5a6e: $0d
    dec hl                                        ; $5a6f: $2b
    dec c                                         ; $5a70: $0d
    dec c                                         ; $5a71: $0d
    ld l, l                                       ; $5a72: $6d
    nop                                           ; $5a73: $00
    ld c, e                                       ; $5a74: $4b

jr_0ce_5a75:
    inc bc                                        ; $5a75: $03
    ld [$780b], sp                                ; $5a76: $08 $0b $78
    ld [$0852], sp                                ; $5a79: $08 $52 $08
    rst $08                                       ; $5a7c: $cf

jr_0ce_5a7d:
    ld a, [hl]                                    ; $5a7d: $7e
    nop                                           ; $5a7e: $00
    sub e                                         ; $5a7f: $93
    ld [$080b], sp                                ; $5a80: $08 $0b $08
    or d                                          ; $5a83: $b2
    nop                                           ; $5a84: $00
    jr nz, jr_0ce_5a87                            ; $5a85: $20 $00

jr_0ce_5a87:
    add $00                                       ; $5a87: $c6 $00
    ld [hl], c                                    ; $5a89: $71
    nop                                           ; $5a8a: $00
    sbc d                                         ; $5a8b: $9a
    ld l, [hl]                                    ; $5a8c: $6e
    nop                                           ; $5a8d: $00
    ld [$832b], sp                                ; $5a8e: $08 $2b $83
    nop                                           ; $5a91: $00
    halt                                          ; $5a92: $76
    nop                                           ; $5a93: $00
    ld l, e                                       ; $5a94: $6b
    jr nc, jr_0ce_5a97                            ; $5a95: $30 $00

jr_0ce_5a97:
    add hl, bc                                    ; $5a97: $09
    rst $38                                       ; $5a98: $ff
    db $10                                        ; $5a99: $10
    ld [$0038], sp                                ; $5a9a: $08 $38 $00
    call nc, $ca00                                ; $5a9d: $d4 $00 $ca
    nop                                           ; $5aa0: $00
    dec de                                        ; $5aa1: $1b
    ld [$08b4], sp                                ; $5aa2: $08 $b4 $08
    ld b, $00                                     ; $5aa5: $06 $00
    add hl, bc                                    ; $5aa7: $09
    jr @+$01                                      ; $5aa8: $18 $ff

    ld h, [hl]                                    ; $5aaa: $66
    jr jr_0ce_5a75                                ; $5aab: $18 $c8

    ld [$287b], sp                                ; $5aad: $08 $7b $28
    add hl, bc                                    ; $5ab0: $09
    add b                                         ; $5ab1: $80
    ld [$40e0], sp                                ; $5ab2: $08 $e0 $40
    add hl, bc                                    ; $5ab5: $09
    inc b                                         ; $5ab6: $04
    ld hl, sp+$26                                 ; $5ab7: $f8 $26
    ld hl, sp-$80                                 ; $5ab9: $f8 $80
    ld c, b                                       ; $5abb: $48
    xor b                                         ; $5abc: $a8
    jr nz, jr_0ce_5abf                            ; $5abd: $20 $00

jr_0ce_5abf:
    ld c, $00                                     ; $5abf: $0e $00
    adc [hl]                                      ; $5ac1: $8e
    nop                                           ; $5ac2: $00
    nop                                           ; $5ac3: $00
    ld b, b                                       ; $5ac4: $40
    ld b, c                                       ; $5ac5: $41
    ld b, d                                       ; $5ac6: $42
    ld b, e                                       ; $5ac7: $43
    ld b, h                                       ; $5ac8: $44
    ld b, l                                       ; $5ac9: $45
    ld b, [hl]                                    ; $5aca: $46
    ld b, a                                       ; $5acb: $47
    ld [$4948], sp                                ; $5acc: $08 $48 $49
    ld c, d                                       ; $5acf: $4a
    ld c, e                                       ; $5ad0: $4b
    ld [$4c08], sp                                ; $5ad1: $08 $08 $4c
    ld c, l                                       ; $5ad4: $4d
    ld c, [hl]                                    ; $5ad5: $4e
    ld b, d                                       ; $5ad6: $42
    ld c, a                                       ; $5ad7: $4f
    db $10                                        ; $5ad8: $10
    ld [$5150], sp                                ; $5ad9: $08 $50 $51
    ld d, d                                       ; $5adc: $52
    ld d, e                                       ; $5add: $53
    jr jr_0ce_5ae8                                ; $5ade: $18 $08

    ld d, h                                       ; $5ae0: $54
    nop                                           ; $5ae1: $00
    ld d, l                                       ; $5ae2: $55
    ld d, [hl]                                    ; $5ae3: $56
    ld d, a                                       ; $5ae4: $57
    ld e, b                                       ; $5ae5: $58
    ld e, c                                       ; $5ae6: $59
    ld e, d                                       ; $5ae7: $5a

jr_0ce_5ae8:
    ld e, e                                       ; $5ae8: $5b
    ld e, h                                       ; $5ae9: $5c
    db $10                                        ; $5aea: $10
    ld e, l                                       ; $5aeb: $5d
    ld e, [hl]                                    ; $5aec: $5e
    ld d, e                                       ; $5aed: $53
    ld [$5f08], sp                                ; $5aee: $08 $08 $5f
    ld h, b                                       ; $5af1: $60
    ld h, c                                       ; $5af2: $61
    ld h, d                                       ; $5af3: $62
    add h                                         ; $5af4: $84
    db $10                                        ; $5af5: $10
    ld [$6463], sp                                ; $5af6: $08 $63 $64
    ld h, l                                       ; $5af9: $65
    ld h, [hl]                                    ; $5afa: $66
    jr @+$0a                                      ; $5afb: $18 $08

    ld h, a                                       ; $5afd: $67
    ld l, b                                       ; $5afe: $68

jr_0ce_5aff:
    jr nc, jr_0ce_5b6a                            ; $5aff: $30 $69

    ld l, d                                       ; $5b01: $6a
    ld b, b                                       ; $5b02: $40
    ld [$a848], sp                                ; $5b03: $08 $48 $a8
    ld l, e                                       ; $5b06: $6b
    ld l, h                                       ; $5b07: $6c
    ld l, l                                       ; $5b08: $6d
    ld l, [hl]                                    ; $5b09: $6e

jr_0ce_5b0a:
    db $fc                                        ; $5b0a: $fc
    ld c, b                                       ; $5b0b: $48
    jr z, @+$6a                                   ; $5b0c: $28 $68

    ld [$0848], sp                                ; $5b0e: $08 $48 $08
    ld [hl], b                                    ; $5b11: $70
    ld [$0848], sp                                ; $5b12: $08 $48 $08
    ld a, b                                       ; $5b15: $78
    ld [$706f], sp                                ; $5b16: $08 $6f $70
    ccf                                           ; $5b19: $3f
    ld [hl], c                                    ; $5b1a: $71
    ld [hl], d                                    ; $5b1b: $72
    ld c, b                                       ; $5b1c: $48
    jr z, @+$6a                                   ; $5b1d: $28 $68

    ld [$0890], sp                                ; $5b1f: $08 $90 $08
    ld [hl], b                                    ; $5b22: $70
    ld [$0890], sp                                ; $5b23: $08 $90 $08
    ld a, b                                       ; $5b26: $78
    ld [$7308], sp                                ; $5b27: $08 $08 $73
    ld [hl], h                                    ; $5b2a: $74
    ld [hl], l                                    ; $5b2b: $75
    halt                                          ; $5b2c: $76
    ld c, b                                       ; $5b2d: $48
    ret z                                         ; $5b2e: $c8

    ld [hl], a                                    ; $5b2f: $77
    ld a, b                                       ; $5b30: $78
    ld a, c                                       ; $5b31: $79
    ld [hl], b                                    ; $5b32: $70
    ld a, d                                       ; $5b33: $7a
    ld c, b                                       ; $5b34: $48
    jr z, jr_0ce_5aff                             ; $5b35: $28 $c8

    ld [$6890], sp                                ; $5b37: $08 $90 $68
    ld a, e                                       ; $5b3a: $7b
    ld a, h                                       ; $5b3b: $7c
    ld a, l                                       ; $5b3c: $7d
    ld a, [hl]                                    ; $5b3d: $7e
    rst $38                                       ; $5b3e: $ff
    ld c, b                                       ; $5b3f: $48
    jr z, jr_0ce_5b0a                             ; $5b40: $28 $c8

    ld [$0890], sp                                ; $5b42: $08 $90 $08
    ret nc                                        ; $5b45: $d0

    ld [$28d8], sp                                ; $5b46: $08 $d8 $28
    add sp, $28                                   ; $5b49: $e8 $28
    ld c, b                                       ; $5b4b: $48

jr_0ce_5b4c:
    xor b                                         ; $5b4c: $a8
    add sp, $08                                   ; $5b4d: $e8 $08
    rst $38                                       ; $5b4f: $ff
    ld c, b                                       ; $5b50: $48
    jr z, @+$2a                                   ; $5b51: $28 $28

    add hl, bc                                    ; $5b53: $09
    sub b                                         ; $5b54: $90
    ld l, b                                       ; $5b55: $68
    jr nc, @+$0b                                  ; $5b56: $30 $09

    ld c, b                                       ; $5b58: $48
    jr z, @+$2a                                   ; $5b59: $28 $28

    add hl, bc                                    ; $5b5b: $09
    sub b                                         ; $5b5c: $90
    ld [$0930], sp                                ; $5b5d: $08 $30 $09
    cp $d8                                        ; $5b60: $fe $d8
    jr z, jr_0ce_5b4c                             ; $5b62: $28 $e8

    jr z, @+$4a                                   ; $5b64: $28 $48

    xor b                                         ; $5b66: $a8
    ld a, b                                       ; $5b67: $78
    xor c                                         ; $5b68: $a9
    ret c                                         ; $5b69: $d8

jr_0ce_5b6a:
    jr z, jr_0ce_5be4                             ; $5b6a: $28 $78

    xor c                                         ; $5b6c: $a9
    ret c                                         ; $5b6d: $d8

    jr z, @+$0b                                   ; $5b6e: $28 $09

    xor d                                         ; $5b70: $aa
    ld bc, $0a00                                  ; $5b71: $01 $00 $0a
    ld bc, $0b00                                  ; $5b74: $01 $00 $0b
    ld bc, $0c00                                  ; $5b77: $01 $00 $0c
    ld bc, $0d00                                  ; $5b7a: $01 $00 $0d
    ei                                            ; $5b7d: $fb
    ld bc, $0800                                  ; $5b7e: $01 $00 $08
    ld [$0810], sp                                ; $5b81: $08 $10 $08
    jr jr_0ce_5b8e                                ; $5b84: $18 $08

    jr nz, jr_0ce_5bc8                            ; $5b86: $20 $40

    ld c, e                                       ; $5b88: $4b
    jr nz, @-$1e                                  ; $5b89: $20 $e0

    ld b, b                                       ; $5b8b: $40
    add sp, -$41                                  ; $5b8c: $e8 $bf

jr_0ce_5b8e:
    ld h, b                                       ; $5b8e: $60
    jr z, jr_0ce_5bde                             ; $5b8f: $28 $4d

    ld b, b                                       ; $5b91: $40
    ld hl, sp+$60                                 ; $5b92: $f8 $60
    ld hl, sp-$70                                 ; $5b94: $f8 $90
    ld [$f880], sp                                ; $5b96: $08 $80 $f8

jr_0ce_5b99:
    and b                                         ; $5b99: $a0
    ld hl, sp+$00                                 ; $5b9a: $f8 $00
    ld sp, hl                                     ; $5b9c: $f9
    db $f4                                        ; $5b9d: $f4
    jr nz, jr_0ce_5b99                            ; $5b9e: $20 $f9

    ld b, b                                       ; $5ba0: $40
    ld sp, hl                                     ; $5ba1: $f9
    ld h, b                                       ; $5ba2: $60
    ld sp, hl                                     ; $5ba3: $f9
    add b                                         ; $5ba4: $80
    pop bc                                        ; $5ba5: $c1
    ld c, c                                       ; $5ba6: $49
    and b                                         ; $5ba7: $a0
    ret                                           ; $5ba8: $c9


    jr nz, jr_0ce_5bab                            ; $5ba9: $20 $00

jr_0ce_5bab:
    dec c                                         ; $5bab: $0d
    nop                                           ; $5bac: $00
    jp z, Jump_000_0d01                           ; $5bad: $ca $01 $0d

    ld b, b                                       ; $5bb0: $40
    ld b, b                                       ; $5bb1: $40
    ld b, b                                       ; $5bb2: $40
    ld b, c                                       ; $5bb3: $41
    inc b                                         ; $5bb4: $04
    nop                                           ; $5bb5: $00
    dec b                                         ; $5bb6: $05
    jr jr_0ce_5bfb                                ; $5bb7: $18 $42

    ld [bc], a                                    ; $5bb9: $02
    nop                                           ; $5bba: $00
    and b                                         ; $5bbb: $a0
    ld bc, $4118                                  ; $5bbc: $01 $18 $41
    ld a, [bc]                                    ; $5bbf: $0a
    jr nz, jr_0ce_5c03                            ; $5bc0: $20 $41

    ld b, e                                       ; $5bc2: $43
    ld b, h                                       ; $5bc3: $44
    ld b, e                                       ; $5bc4: $43
    ld b, l                                       ; $5bc5: $45
    nop                                           ; $5bc6: $00
    ld b, [hl]                                    ; $5bc7: $46

jr_0ce_5bc8:
    ld b, e                                       ; $5bc8: $43
    ld b, e                                       ; $5bc9: $43
    ld b, l                                       ; $5bca: $45
    ld b, l                                       ; $5bcb: $45
    ld b, e                                       ; $5bcc: $43
    ld b, a                                       ; $5bcd: $47
    ld b, l                                       ; $5bce: $45
    ld b, d                                       ; $5bcf: $42
    ld b, a                                       ; $5bd0: $47
    dec c                                         ; $5bd1: $0d
    nop                                           ; $5bd2: $00
    ld b, e                                       ; $5bd3: $43
    ld b, e                                       ; $5bd4: $43
    ld c, b                                       ; $5bd5: $48
    ld b, e                                       ; $5bd6: $43
    add hl, bc                                    ; $5bd7: $09
    jr jr_0ce_5c20                                ; $5bd8: $18 $46

    nop                                           ; $5bda: $00
    ld b, a                                       ; $5bdb: $47
    ld c, b                                       ; $5bdc: $48
    ld b, [hl]                                    ; $5bdd: $46

jr_0ce_5bde:
    ld b, l                                       ; $5bde: $45
    ld b, [hl]                                    ; $5bdf: $46
    ld b, a                                       ; $5be0: $47
    ld c, c                                       ; $5be1: $49
    ld c, c                                       ; $5be2: $49
    nop                                           ; $5be3: $00

jr_0ce_5be4:
    ld c, b                                       ; $5be4: $48
    ld c, d                                       ; $5be5: $4a
    ld b, c                                       ; $5be6: $41
    ld b, l                                       ; $5be7: $45
    ld c, e                                       ; $5be8: $4b
    ld b, e                                       ; $5be9: $43
    ld b, d                                       ; $5bea: $42
    ld c, c                                       ; $5beb: $49
    db $10                                        ; $5bec: $10
    ld b, d                                       ; $5bed: $42
    ld c, c                                       ; $5bee: $49
    ld c, b                                       ; $5bef: $48
    dec c                                         ; $5bf0: $0d
    nop                                           ; $5bf1: $00
    ld b, a                                       ; $5bf2: $47
    ld b, e                                       ; $5bf3: $43
    ld b, e                                       ; $5bf4: $43
    ld b, c                                       ; $5bf5: $41
    ld b, b                                       ; $5bf6: $40
    ld c, c                                       ; $5bf7: $49
    ld d, $10                                     ; $5bf8: $16 $10
    ld c, c                                       ; $5bfa: $49

jr_0ce_5bfb:
    ld b, l                                       ; $5bfb: $45
    ld b, h                                       ; $5bfc: $44
    ld b, e                                       ; $5bfd: $43
    ld c, c                                       ; $5bfe: $49
    ld b, d                                       ; $5bff: $42
    nop                                           ; $5c00: $00
    ld b, l                                       ; $5c01: $45
    ld b, [hl]                                    ; $5c02: $46

jr_0ce_5c03:
    ld b, l                                       ; $5c03: $45
    ld b, b                                       ; $5c04: $40
    ld c, h                                       ; $5c05: $4c
    ld c, l                                       ; $5c06: $4d
    ld c, [hl]                                    ; $5c07: $4e
    ld b, b                                       ; $5c08: $40
    jr nc, @+$47                                  ; $5c09: $30 $45

    ld b, h                                       ; $5c0b: $44
    ld [bc], a                                    ; $5c0c: $02
    nop                                           ; $5c0d: $00
    dec c                                         ; $5c0e: $0d
    nop                                           ; $5c0f: $00
    ld b, d                                       ; $5c10: $42
    ld b, [hl]                                    ; $5c11: $46
    ld b, a                                       ; $5c12: $47
    ld b, l                                       ; $5c13: $45
    jr nz, jr_0ce_5c59                            ; $5c14: $20 $43

    ld b, d                                       ; $5c16: $42
    inc de                                        ; $5c17: $13
    db $10                                        ; $5c18: $10
    ld b, e                                       ; $5c19: $43
    ld b, l                                       ; $5c1a: $45
    ld b, d                                       ; $5c1b: $42
    ld b, e                                       ; $5c1c: $43
    ld b, l                                       ; $5c1d: $45
    nop                                           ; $5c1e: $00
    ld c, b                                       ; $5c1f: $48

jr_0ce_5c20:
    ld b, h                                       ; $5c20: $44
    ld b, l                                       ; $5c21: $45
    ld c, b                                       ; $5c22: $48
    ld b, b                                       ; $5c23: $40
    ld c, a                                       ; $5c24: $4f
    ld b, b                                       ; $5c25: $40
    ld b, l                                       ; $5c26: $45
    ld h, [hl]                                    ; $5c27: $66
    ld c, b                                       ; $5c28: $48
    ld [bc], a                                    ; $5c29: $02
    nop                                           ; $5c2a: $00
    add hl, hl                                    ; $5c2b: $29
    db $10                                        ; $5c2c: $10
    ld b, h                                       ; $5c2d: $44
    ld d, b                                       ; $5c2e: $50
    ld h, d                                       ; $5c2f: $62
    nop                                           ; $5c30: $00
    inc de                                        ; $5c31: $13
    ld [$4048], sp                                ; $5c32: $08 $48 $40
    ld d, c                                       ; $5c35: $51
    halt                                          ; $5c36: $76
    nop                                           ; $5c37: $00
    ld b, e                                       ; $5c38: $43
    ld b, e                                       ; $5c39: $43
    ld b, a                                       ; $5c3a: $47
    ld d, d                                       ; $5c3b: $52
    ld b, l                                       ; $5c3c: $45
    ld b, d                                       ; $5c3d: $42
    nop                                           ; $5c3e: $00
    ld b, b                                       ; $5c3f: $40
    ld d, d                                       ; $5c40: $52
    ld b, h                                       ; $5c41: $44
    ld b, l                                       ; $5c42: $45
    ld b, e                                       ; $5c43: $43
    ld b, l                                       ; $5c44: $45
    ld b, e                                       ; $5c45: $43
    ld d, d                                       ; $5c46: $52
    add d                                         ; $5c47: $82
    add hl, hl                                    ; $5c48: $29
    nop                                           ; $5c49: $00
    ld b, c                                       ; $5c4a: $41
    ld b, a                                       ; $5c4b: $47
    ld b, l                                       ; $5c4c: $45
    ld b, d                                       ; $5c4d: $42
    ld d, d                                       ; $5c4e: $52
    ld d, $00                                     ; $5c4f: $16 $00
    ld b, b                                       ; $5c51: $40
    ld [bc], a                                    ; $5c52: $02
    ld b, l                                       ; $5c53: $45
    ld b, d                                       ; $5c54: $42
    ld b, a                                       ; $5c55: $47
    ld d, d                                       ; $5c56: $52
    ld b, h                                       ; $5c57: $44
    ld d, d                                       ; $5c58: $52

jr_0ce_5c59:
    cp a                                          ; $5c59: $bf
    nop                                           ; $5c5a: $00
    ld b, c                                       ; $5c5b: $41
    ld de, $4153                                  ; $5c5c: $11 $53 $41
    ld b, e                                       ; $5c5f: $43
    rst $00                                       ; $5c60: $c7
    jr jr_0ce_5ca4                                ; $5c61: $18 $41

    ld b, l                                       ; $5c63: $45
    ld b, e                                       ; $5c64: $43
    inc bc                                        ; $5c65: $03
    nop                                           ; $5c66: $00
    ldh [$0c], a                                  ; $5c67: $e0 $0c
    jr nz, jr_0ce_5c81                            ; $5c69: $20 $16

    nop                                           ; $5c6b: $00
    jp c, Jump_0ce_5400                           ; $5c6c: $da $00 $54

    ld d, l                                       ; $5c6f: $55
    ld d, [hl]                                    ; $5c70: $56
    ld d, a                                       ; $5c71: $57
    ld e, b                                       ; $5c72: $58
    nop                                           ; $5c73: $00
    ld e, c                                       ; $5c74: $59
    ld e, d                                       ; $5c75: $5a
    ld e, e                                       ; $5c76: $5b
    ld e, h                                       ; $5c77: $5c
    ld e, l                                       ; $5c78: $5d
    ld e, [hl]                                    ; $5c79: $5e
    ld e, a                                       ; $5c7a: $5f
    ld e, [hl]                                    ; $5c7b: $5e
    db $10                                        ; $5c7c: $10
    ld d, a                                       ; $5c7d: $57
    ld d, [hl]                                    ; $5c7e: $56
    ld d, l                                       ; $5c7f: $55
    dec c                                         ; $5c80: $0d

jr_0ce_5c81:
    ld [$5556], sp                                ; $5c81: $08 $56 $55
    ld e, h                                       ; $5c84: $5c
    ld e, l                                       ; $5c85: $5d
    ld [$5857], sp                                ; $5c86: $08 $57 $58
    ld d, a                                       ; $5c89: $57
    ld d, [hl]                                    ; $5c8a: $56
    inc e                                         ; $5c8b: $1c
    ld [$6160], sp                                ; $5c8c: $08 $60 $61
    ld h, d                                       ; $5c8f: $62
    ld bc, $6463                                  ; $5c90: $01 $63 $64
    ld h, b                                       ; $5c93: $60
    ld h, c                                       ; $5c94: $61
    ld h, l                                       ; $5c95: $65
    ld h, l                                       ; $5c96: $65
    ld h, c                                       ; $5c97: $61
    ld b, $00                                     ; $5c98: $06 $00
    dec b                                         ; $5c9a: $05
    ld h, e                                       ; $5c9b: $63
    ld h, d                                       ; $5c9c: $62
    ld h, c                                       ; $5c9d: $61
    ld h, c                                       ; $5c9e: $61
    ld h, h                                       ; $5c9f: $64
    inc bc                                        ; $5ca0: $03
    nop                                           ; $5ca1: $00
    ld h, h                                       ; $5ca2: $64
    dec d                                         ; $5ca3: $15

jr_0ce_5ca4:
    ld [$6120], sp                                ; $5ca4: $08 $20 $61
    ld h, b                                       ; $5ca7: $60
    inc c                                         ; $5ca8: $0c
    nop                                           ; $5ca9: $00
    ld h, h                                       ; $5caa: $64
    ld h, [hl]                                    ; $5cab: $66
    ld h, a                                       ; $5cac: $67
    ld l, b                                       ; $5cad: $68
    ld l, c                                       ; $5cae: $69
    ld [bc], a                                    ; $5caf: $02
    ld l, d                                       ; $5cb0: $6a
    ld h, [hl]                                    ; $5cb1: $66
    ld l, e                                       ; $5cb2: $6b
    ld l, h                                       ; $5cb3: $6c
    ld l, h                                       ; $5cb4: $6c
    ld l, l                                       ; $5cb5: $6d
    ld b, $00                                     ; $5cb6: $06 $00
    ld l, c                                       ; $5cb8: $69
    dec h                                         ; $5cb9: $25
    ld l, b                                       ; $5cba: $68
    ld h, a                                       ; $5cbb: $67
    rlca                                          ; $5cbc: $07
    ld [$6a6e], sp                                ; $5cbd: $08 $6e $6a
    dec d                                         ; $5cc0: $15
    nop                                           ; $5cc1: $00
    ld l, [hl]                                    ; $5cc2: $6e
    ld d, $00                                     ; $5cc3: $16 $00
    nop                                           ; $5cc5: $00
    ld l, d                                       ; $5cc6: $6a
    ld l, [hl]                                    ; $5cc7: $6e
    ld l, d                                       ; $5cc8: $6a
    ld l, a                                       ; $5cc9: $6f
    ld [hl], b                                    ; $5cca: $70
    ld [hl], c                                    ; $5ccb: $71
    ld [hl], d                                    ; $5ccc: $72
    ld [hl], e                                    ; $5ccd: $73
    add hl, bc                                    ; $5cce: $09
    ld [hl], b                                    ; $5ccf: $70
    ld l, a                                       ; $5cd0: $6f
    ld [hl], h                                    ; $5cd1: $74
    ld [hl], h                                    ; $5cd2: $74
    add hl, bc                                    ; $5cd3: $09
    ld [$4b71], sp                                ; $5cd4: $08 $71 $4b
    inc b                                         ; $5cd7: $04
    nop                                           ; $5cd8: $00
    add c                                         ; $5cd9: $81
    rlca                                          ; $5cda: $07
    nop                                           ; $5cdb: $00
    ld [hl], b                                    ; $5cdc: $70
    ld [hl], b                                    ; $5cdd: $70
    ld [hl], c                                    ; $5cde: $71
    ld [hl], c                                    ; $5cdf: $71
    ld [hl], b                                    ; $5ce0: $70
    ld [hl], e                                    ; $5ce1: $73
    dec c                                         ; $5ce2: $0d
    ld [$4b12], sp                                ; $5ce3: $08 $12 $4b
    ld [hl], l                                    ; $5ce6: $75
    halt                                          ; $5ce7: $76
    ld [bc], a                                    ; $5ce8: $02
    nop                                           ; $5ce9: $00
    ld [hl], l                                    ; $5cea: $75
    ld [hl], a                                    ; $5ceb: $77
    ld b, $00                                     ; $5cec: $06 $00
    ld [hl], a                                    ; $5cee: $77
    adc $09                                       ; $5cef: $ce $09
    ld [$0806], sp                                ; $5cf1: $08 $06 $08
    ld [hl], a                                    ; $5cf4: $77
    halt                                          ; $5cf5: $76
    inc d                                         ; $5cf6: $14
    nop                                           ; $5cf7: $00
    rla                                           ; $5cf8: $17
    db $10                                        ; $5cf9: $10
    ld a, [de]                                    ; $5cfa: $1a
    ld [$0c78], sp                                ; $5cfb: $08 $78 $0c
    ld a, c                                       ; $5cfe: $79
    ld a, d                                       ; $5cff: $7a
    ld [hl], a                                    ; $5d00: $77
    ld a, b                                       ; $5d01: $78
    inc bc                                        ; $5d02: $03
    nop                                           ; $5d03: $00
    rlca                                          ; $5d04: $07
    jr c, jr_0ce_5d7e                             ; $5d05: $38 $77

    ld [hl], a                                    ; $5d07: $77
    ld h, c                                       ; $5d08: $61
    ld [hl], l                                    ; $5d09: $75
    inc d                                         ; $5d0a: $14
    ld [$1818], sp                                ; $5d0b: $08 $18 $18
    inc c                                         ; $5d0e: $0c
    rrca                                          ; $5d0f: $0f
    inc l                                         ; $5d10: $2c
    rrca                                          ; $5d11: $0f
    inc b                                         ; $5d12: $04
    nop                                           ; $5d13: $00
    ld bc, $0f2f                                  ; $5d14: $01 $2f $0f
    inc c                                         ; $5d17: $0c
    inc c                                         ; $5d18: $0c
    inc c                                         ; $5d19: $0c
    inc l                                         ; $5d1a: $2c
    rrca                                          ; $5d1b: $0f
    dec bc                                        ; $5d1c: $0b
    nop                                           ; $5d1d: $00
    add d                                         ; $5d1e: $82
    add hl, bc                                    ; $5d1f: $09
    nop                                           ; $5d20: $00
    rrca                                          ; $5d21: $0f
    inc c                                         ; $5d22: $0c
    inc l                                         ; $5d23: $2c
    inc c                                         ; $5d24: $0c
    cpl                                           ; $5d25: $2f
    inc c                                         ; $5d26: $0c
    ld [$3f0c], sp                                ; $5d27: $08 $0c $3f
    cpl                                           ; $5d2a: $2f
    ld c, a                                       ; $5d2b: $4f
    rrca                                          ; $5d2c: $0f
    db $10                                        ; $5d2d: $10
    inc c                                         ; $5d2e: $0c
    db $10                                        ; $5d2f: $10
    ld a, [de]                                    ; $5d30: $1a
    db $10                                        ; $5d31: $10
    ld hl, $0208                                  ; $5d32: $21 $08 $02
    ld [$0807], sp                                ; $5d35: $08 $07 $08
    adc $3b                                       ; $5d38: $ce $3b
    ld [$083d], sp                                ; $5d3a: $08 $3d $08
    rrca                                          ; $5d3d: $0f
    rrca                                          ; $5d3e: $0f
    ld h, $00                                     ; $5d3f: $26 $00
    dec h                                         ; $5d41: $25
    jr jr_0ce_5d64                                ; $5d42: $18 $20

    jr jr_0ce_5d92                                ; $5d44: $18 $4c

    ldh [rNR52], a                                ; $5d46: $e0 $26
    jr jr_0ce_5d83                                ; $5d48: $18 $39

    db $10                                        ; $5d4a: $10
    ld b, h                                       ; $5d4b: $44
    nop                                           ; $5d4c: $00
    inc c                                         ; $5d4d: $0c
    rrca                                          ; $5d4e: $0f
    ld [$0808], sp                                ; $5d4f: $08 $08 $08
    cp $45                                        ; $5d52: $fe $45
    jr nz, jr_0ce_5d63                            ; $5d54: $20 $0d

    nop                                           ; $5d56: $00
    stop                                          ; $5d57: $10 $00
    ld [hl], d                                    ; $5d59: $72
    nop                                           ; $5d5a: $00
    inc de                                        ; $5d5b: $13
    nop                                           ; $5d5c: $00
    ld c, e                                       ; $5d5d: $4b
    jr nz, jr_0ce_5dd4                            ; $5d5e: $20 $74

    ld [$b60e], sp                                ; $5d60: $08 $0e $b6

jr_0ce_5d63:
    ld d, e                                       ; $5d63: $53

jr_0ce_5d64:
    jr jr_0ce_5d72                                ; $5d64: $18 $0c

    add hl, hl                                    ; $5d66: $29
    ld [$204a], sp                                ; $5d67: $08 $4a $20
    ld c, $80                                     ; $5d6a: $0e $80
    ld [$187c], sp                                ; $5d6c: $08 $7c $18
    cpl                                           ; $5d6f: $2f
    ld b, b                                       ; $5d70: $40
    ld l, h                                       ; $5d71: $6c

jr_0ce_5d72:
    add c                                         ; $5d72: $81
    jr z, jr_0ce_5d84                             ; $5d73: $28 $0f

    ld c, $2f                                     ; $5d75: $0e $2f
    cpl                                           ; $5d77: $2f
    rrca                                          ; $5d78: $0f
    inc l                                         ; $5d79: $2c
    ld h, c                                       ; $5d7a: $61
    ld l, a                                       ; $5d7b: $6f
    add c                                         ; $5d7c: $81
    db $10                                        ; $5d7d: $10

jr_0ce_5d7e:
    ld d, $18                                     ; $5d7e: $16 $18
    ld l, h                                       ; $5d80: $6c
    ld l, a                                       ; $5d81: $6f
    ld l, a                                       ; $5d82: $6f

jr_0ce_5d83:
    ld c, a                                       ; $5d83: $4f

jr_0ce_5d84:
    ld [hl], c                                    ; $5d84: $71
    nop                                           ; $5d85: $00
    ld [bc], a                                    ; $5d86: $02
    ld c, a                                       ; $5d87: $4f
    ld c, a                                       ; $5d88: $4f
    ld l, a                                       ; $5d89: $6f
    ld c, h                                       ; $5d8a: $4c
    ld c, a                                       ; $5d8b: $4f
    ld c, a                                       ; $5d8c: $4f
    ld a, c                                       ; $5d8d: $79
    nop                                           ; $5d8e: $00
    ld c, a                                       ; $5d8f: $4f
    inc b                                         ; $5d90: $04
    inc c                                         ; $5d91: $0c

jr_0ce_5d92:
    rrca                                          ; $5d92: $0f
    ld c, h                                       ; $5d93: $4c
    ld c, a                                       ; $5d94: $4f
    ld l, h                                       ; $5d95: $6c
    dec bc                                        ; $5d96: $0b
    nop                                           ; $5d97: $00
    ld c, a                                       ; $5d98: $4f
    inc c                                         ; $5d99: $0c
    nop                                           ; $5d9a: $00
    ld c, a                                       ; $5d9b: $4f
    rrca                                          ; $5d9c: $0f
    ld c, a                                       ; $5d9d: $4f
    ld c, h                                       ; $5d9e: $4c
    ld c, h                                       ; $5d9f: $4c
    ld [$0d0d], sp                                ; $5da0: $08 $0d $0d
    ld h, e                                       ; $5da3: $63
    dec c                                         ; $5da4: $0d
    ld a, a                                       ; $5da5: $7f
    nop                                           ; $5da6: $00
    inc b                                         ; $5da7: $04
    nop                                           ; $5da8: $00
    dec c                                         ; $5da9: $0d
    dec c                                         ; $5daa: $0d
    dec l                                         ; $5dab: $2d
    ld bc, $0e00                                  ; $5dac: $01 $00 $0e
    nop                                           ; $5daf: $00
    call nz, RST_08                               ; $5db0: $c4 $08 $00
    dec b                                         ; $5db3: $05
    nop                                           ; $5db4: $00
    ld [$090d], sp                                ; $5db5: $08 $0d $09
    inc e                                         ; $5db8: $1c
    nop                                           ; $5db9: $00
    ld [$0a0e], sp                                ; $5dba: $08 $0e $0a
    add hl, bc                                    ; $5dbd: $09
    add hl, bc                                    ; $5dbe: $09
    add hl, bc                                    ; $5dbf: $09
    ld c, $0c                                     ; $5dc0: $0e $0c
    nop                                           ; $5dc2: $00
    dec l                                         ; $5dc3: $2d
    rrca                                          ; $5dc4: $0f
    nop                                           ; $5dc5: $00
    add hl, bc                                    ; $5dc6: $09
    ld bc, $2929                                  ; $5dc7: $01 $29 $29
    add hl, hl                                    ; $5dca: $29
    jr z, jr_0ce_5df5                             ; $5dcb: $28 $28

    add hl, bc                                    ; $5dcd: $09
    dec c                                         ; $5dce: $0d
    inc de                                        ; $5dcf: $13
    nop                                           ; $5dd0: $00
    ld sp, $0909                                  ; $5dd1: $31 $09 $09

jr_0ce_5dd4:
    or h                                          ; $5dd4: $b4
    nop                                           ; $5dd5: $00
    ld a, [bc]                                    ; $5dd6: $0a
    nop                                           ; $5dd7: $00
    ld c, $0e                                     ; $5dd8: $0e $0e
    ld a, [bc]                                    ; $5dda: $0a
    jr nz, jr_0ce_5ddd                            ; $5ddb: $20 $00

jr_0ce_5ddd:
    ld d, a                                       ; $5ddd: $57
    ld a, [bc]                                    ; $5dde: $0a
    ld bc, $0910                                  ; $5ddf: $01 $10 $09
    jr nz, jr_0ce_5de4                            ; $5de2: $20 $00

jr_0ce_5de4:
    ld a, [hl+]                                   ; $5de4: $2a
    dec bc                                        ; $5de5: $0b
    jr jr_0ce_5dfd                                ; $5de6: $18 $15

    jr c, jr_0ce_5e31                             ; $5de8: $38 $47

    nop                                           ; $5dea: $00
    dec c                                         ; $5deb: $0d
    add hl, bc                                    ; $5dec: $09
    ld [$292e], sp                                ; $5ded: $08 $2e $29
    ld h, h                                       ; $5df0: $64
    nop                                           ; $5df1: $00
    ld c, d                                       ; $5df2: $4a
    nop                                           ; $5df3: $00
    add hl, hl                                    ; $5df4: $29

jr_0ce_5df5:
    dec sp                                        ; $5df5: $3b
    nop                                           ; $5df6: $00
    add hl, bc                                    ; $5df7: $09
    add hl, hl                                    ; $5df8: $29
    add hl, bc                                    ; $5df9: $09
    add hl, bc                                    ; $5dfa: $09
    dec l                                         ; $5dfb: $2d
    ld b, c                                       ; $5dfc: $41

jr_0ce_5dfd:
    ld [$0929], sp                                ; $5dfd: $08 $29 $09
    ld de, $4f08                                  ; $5e00: $11 $08 $4f
    ld c, $4e                                     ; $5e03: $0e $4e
    nop                                           ; $5e05: $00
    ld [$000a], sp                                ; $5e06: $08 $0a $00
    ld bc, $0103                                  ; $5e09: $01 $03 $01
    rlca                                          ; $5e0c: $07
    ld [$000b], sp                                ; $5e0d: $08 $0b $00
    db $10                                        ; $5e10: $10
    add hl, bc                                    ; $5e11: $09
    ld [$0929], sp                                ; $5e12: $08 $29 $09
    jr z, jr_0ce_5e21                             ; $5e15: $28 $0a

    ld [$0a09], sp                                ; $5e17: $08 $09 $0a
    db $fd                                        ; $5e1a: $fd
    ld l, c                                       ; $5e1b: $69
    nop                                           ; $5e1c: $00
    ld l, h                                       ; $5e1d: $6c
    nop                                           ; $5e1e: $00
    adc l                                         ; $5e1f: $8d
    nop                                           ; $5e20: $00

jr_0ce_5e21:
    ld bc, $ae20                                  ; $5e21: $01 $20 $ae
    ld [$1031], sp                                ; $5e24: $08 $31 $10
    dec c                                         ; $5e27: $0d
    ld a, [hl+]                                   ; $5e28: $2a
    nop                                           ; $5e29: $00
    nop                                           ; $5e2a: $00
    add hl, bc                                    ; $5e2b: $09
    ld a, [bc]                                    ; $5e2c: $0a
    jr nz, jr_0ce_5e2f                            ; $5e2d: $20 $00

jr_0ce_5e2f:
    ld c, $00                                     ; $5e2f: $0e $00

jr_0ce_5e31:
    add h                                         ; $5e31: $84
    nop                                           ; $5e32: $00
    nop                                           ; $5e33: $00
    ld b, b                                       ; $5e34: $40
    ld b, c                                       ; $5e35: $41
    ld b, c                                       ; $5e36: $41
    ld b, b                                       ; $5e37: $40
    ld b, d                                       ; $5e38: $42
    ld b, e                                       ; $5e39: $43
    ld b, e                                       ; $5e3a: $43
    ld b, d                                       ; $5e3b: $42
    add h                                         ; $5e3c: $84
    inc b                                         ; $5e3d: $04
    ld [$4544], sp                                ; $5e3e: $08 $44 $45
    ld b, l                                       ; $5e41: $45
    ld b, h                                       ; $5e42: $44
    inc c                                         ; $5e43: $0c
    db $10                                        ; $5e44: $10
    ld b, [hl]                                    ; $5e45: $46
    ld b, [hl]                                    ; $5e46: $46
    ret nz                                        ; $5e47: $c0

    inc b                                         ; $5e48: $04
    db $10                                        ; $5e49: $10
    inc e                                         ; $5e4a: $1c
    ld [$4441], sp                                ; $5e4b: $08 $41 $44
    ld b, h                                       ; $5e4e: $44
    ld b, c                                       ; $5e4f: $41
    ld b, e                                       ; $5e50: $43
    ld b, b                                       ; $5e51: $40
    ld hl, $4340                                  ; $5e52: $21 $40 $43
    inc b                                         ; $5e55: $04
    ld [$4245], sp                                ; $5e56: $08 $45 $42
    ld b, d                                       ; $5e59: $42
    ld b, l                                       ; $5e5a: $45
    inc c                                         ; $5e5b: $0c
    ld [$460f], sp                                ; $5e5c: $08 $0f $46
    ld b, h                                       ; $5e5f: $44
    ld b, h                                       ; $5e60: $44
    ld b, [hl]                                    ; $5e61: $46
    inc b                                         ; $5e62: $04
    ld [$081c], sp                                ; $5e63: $08 $1c $08
    inc [hl]                                      ; $5e66: $34
    ld [$0844], sp                                ; $5e67: $08 $44 $08
    add a                                         ; $5e6a: $87
    ld c, b                                       ; $5e6b: $48
    jr z, jr_0ce_5eae                             ; $5e6c: $28 $40

    ld b, a                                       ; $5e6e: $47
    ld b, a                                       ; $5e6f: $47
    ld b, b                                       ; $5e70: $40
    ld c, b                                       ; $5e71: $48
    ld [$2804], sp                                ; $5e72: $08 $04 $28
    inc [hl]                                      ; $5e75: $34
    ld [$44c3], sp                                ; $5e76: $08 $c3 $44
    ld [$2848], sp                                ; $5e79: $08 $48 $28
    ld b, a                                       ; $5e7c: $47
    ld b, d                                       ; $5e7d: $42
    ld b, d                                       ; $5e7e: $42
    ld b, a                                       ; $5e7f: $47
    ld c, b                                       ; $5e80: $48
    ld [$2804], sp                                ; $5e81: $08 $04 $28
    rst $38                                       ; $5e84: $ff
    ld a, b                                       ; $5e85: $78
    jr z, jr_0ce_5ed0                             ; $5e86: $28 $48

    jr z, jr_0ce_5f06                             ; $5e88: $28 $7c

    db $10                                        ; $5e8a: $10
    sub b                                         ; $5e8b: $90
    jr nz, @-$66                                  ; $5e8c: $20 $98

    ld [$2878], sp                                ; $5e8e: $08 $78 $28
    ld c, b                                       ; $5e91: $48
    jr z, jr_0ce_5f10                             ; $5e92: $28 $7c

    ld [$90ff], sp                                ; $5e94: $08 $ff $90
    jr z, jr_0ce_5e31                             ; $5e97: $28 $98

    ld [$0870], sp                                ; $5e99: $08 $70 $08
    ret nz                                        ; $5e9c: $c0

    ld c, b                                       ; $5e9d: $48
    sub b                                         ; $5e9e: $90
    ld c, b                                       ; $5e9f: $48
    adc h                                         ; $5ea0: $8c
    ld [$0870], sp                                ; $5ea1: $08 $70 $08
    ret nz                                        ; $5ea4: $c0

    ld c, b                                       ; $5ea5: $48
    rst $38                                       ; $5ea6: $ff
    sub b                                         ; $5ea7: $90
    ld c, b                                       ; $5ea8: $48
    adc h                                         ; $5ea9: $8c
    ld [$10e8], sp                                ; $5eaa: $08 $e8 $10
    or h                                          ; $5ead: $b4

jr_0ce_5eae:
    nop                                           ; $5eae: $00
    ld c, b                                       ; $5eaf: $48
    adc b                                         ; $5eb0: $88
    ld [$ec09], sp                                ; $5eb1: $08 $09 $ec
    ld [$08b4], sp                                ; $5eb4: $08 $b4 $08
    rst $38                                       ; $5eb7: $ff
    ld c, b                                       ; $5eb8: $48
    adc b                                         ; $5eb9: $88
    ld [$2809], sp                                ; $5eba: $08 $09 $28
    jr z, jr_0ce_5f07                             ; $5ebd: $28 $48

    jr nc, jr_0ce_5f11                            ; $5ebf: $30 $50

    ld h, c                                       ; $5ec1: $61
    jr z, jr_0ce_5eec                             ; $5ec2: $28 $28

    ld c, b                                       ; $5ec4: $48
    jr z, @+$52                                   ; $5ec5: $28 $50

    ld l, c                                       ; $5ec7: $69
    db $fc                                        ; $5ec8: $fc
    ld [hl], b                                    ; $5ec9: $70
    ld l, b                                       ; $5eca: $68
    ld d, b                                       ; $5ecb: $50
    ld de, $4090                                  ; $5ecc: $11 $90 $40
    ld [hl], b                                    ; $5ecf: $70

jr_0ce_5ed0:
    ld l, b                                       ; $5ed0: $68
    add h                                         ; $5ed1: $84
    add hl, bc                                    ; $5ed2: $09
    sub b                                         ; $5ed3: $90
    ld c, b                                       ; $5ed4: $48
    ld a, [bc]                                    ; $5ed5: $0a
    ld a, [bc]                                    ; $5ed6: $0a
    nop                                           ; $5ed7: $00
    ld a, [hl+]                                   ; $5ed8: $2a
    ld a, [bc]                                    ; $5ed9: $0a
    add hl, bc                                    ; $5eda: $09
    add hl, bc                                    ; $5edb: $09
    add hl, hl                                    ; $5edc: $29
    add hl, bc                                    ; $5edd: $09
    dec bc                                        ; $5ede: $0b
    dec bc                                        ; $5edf: $0b
    ld [bc], a                                    ; $5ee0: $02
    dec hl                                        ; $5ee1: $2b
    dec bc                                        ; $5ee2: $0b
    inc c                                         ; $5ee3: $0c
    inc c                                         ; $5ee4: $0c
    inc l                                         ; $5ee5: $2c
    inc c                                         ; $5ee6: $0c
    db $10                                        ; $5ee7: $10
    ld a, b                                       ; $5ee8: $78
    ld a, [bc]                                    ; $5ee9: $0a
    dec hl                                        ; $5eea: $2b
    ld a, [hl+]                                   ; $5eeb: $2a

jr_0ce_5eec:
    add hl, bc                                    ; $5eec: $09
    ld hl, $0b00                                  ; $5eed: $21 $00 $0b
    ld hl, $0c00                                  ; $5ef0: $21 $00 $0c
    ld hl, $1000                                  ; $5ef3: $21 $00 $10
    ld a, b                                       ; $5ef6: $78
    rst $38                                       ; $5ef7: $ff
    ld b, b                                       ; $5ef8: $40
    ld hl, sp+$40                                 ; $5ef9: $f8 $40
    ld hl, sp-$80                                 ; $5efb: $f8 $80
    ld hl, sp-$80                                 ; $5efd: $f8 $80
    ld hl, sp-$40                                 ; $5eff: $f8 $c0
    ld hl, sp-$40                                 ; $5f01: $f8 $c0
    ld hl, sp+$00                                 ; $5f03: $f8 $00
    ld sp, hl                                     ; $5f05: $f9

jr_0ce_5f06:
    nop                                           ; $5f06: $00

jr_0ce_5f07:
    ld sp, hl                                     ; $5f07: $f9
    ldh a, [rLCDC]                                ; $5f08: $f0 $40
    ld sp, hl                                     ; $5f0a: $f9
    ld b, b                                       ; $5f0b: $40
    ld sp, hl                                     ; $5f0c: $f9
    add b                                         ; $5f0d: $80
    ld sp, hl                                     ; $5f0e: $f9
    sub b                                         ; $5f0f: $90

jr_0ce_5f10:
    add hl, hl                                    ; $5f10: $29

jr_0ce_5f11:
    jr nz, jr_0ce_5f13                            ; $5f11: $20 $00

jr_0ce_5f13:
    ld c, $00                                     ; $5f13: $0e $00
    adc [hl]                                      ; $5f15: $8e
    ld bc, $4000                                  ; $5f16: $01 $00 $40
    ld b, c                                       ; $5f19: $41
    ld b, d                                       ; $5f1a: $42
    ld b, e                                       ; $5f1b: $43
    ld b, b                                       ; $5f1c: $40
    ld b, h                                       ; $5f1d: $44
    ld b, l                                       ; $5f1e: $45
    ld b, c                                       ; $5f1f: $41
    ld a, [bc]                                    ; $5f20: $0a
    ld b, [hl]                                    ; $5f21: $46
    ld b, a                                       ; $5f22: $47
    ld c, b                                       ; $5f23: $48
    ld c, c                                       ; $5f24: $49
    inc b                                         ; $5f25: $04
    nop                                           ; $5f26: $00
    ld c, d                                       ; $5f27: $4a
    db $10                                        ; $5f28: $10
    ld l, b                                       ; $5f29: $68
    ld b, e                                       ; $5f2a: $43
    nop                                           ; $5f2b: $00
    ld c, e                                       ; $5f2c: $4b
    ld b, d                                       ; $5f2d: $42
    ld b, d                                       ; $5f2e: $42
    ld c, h                                       ; $5f2f: $4c
    ld c, l                                       ; $5f30: $4d
    ld c, [hl]                                    ; $5f31: $4e
    ld c, a                                       ; $5f32: $4f
    ld d, b                                       ; $5f33: $50
    ld [$4847], sp                                ; $5f34: $08 $47 $48
    ld d, c                                       ; $5f37: $51
    ld d, d                                       ; $5f38: $52
    db $10                                        ; $5f39: $10
    add b                                         ; $5f3a: $80
    ld d, e                                       ; $5f3b: $53
    ld b, a                                       ; $5f3c: $47
    ld d, h                                       ; $5f3d: $54
    nop                                           ; $5f3e: $00
    ld b, d                                       ; $5f3f: $42
    ld d, l                                       ; $5f40: $55
    ld b, a                                       ; $5f41: $47
    ld b, [hl]                                    ; $5f42: $46
    ld d, [hl]                                    ; $5f43: $56
    ld d, a                                       ; $5f44: $57
    ld e, b                                       ; $5f45: $58
    ld e, c                                       ; $5f46: $59
    ld d, b                                       ; $5f47: $50
    ld e, d                                       ; $5f48: $5a
    inc b                                         ; $5f49: $04
    nop                                           ; $5f4a: $00
    ld e, e                                       ; $5f4b: $5b
    db $10                                        ; $5f4c: $10
    ld l, b                                       ; $5f4d: $68
    ld c, b                                       ; $5f4e: $48
    ld b, a                                       ; $5f4f: $47
    ld c, b                                       ; $5f50: $48
    ld e, h                                       ; $5f51: $5c
    add b                                         ; $5f52: $80
    inc b                                         ; $5f53: $04
    nop                                           ; $5f54: $00
    ld e, l                                       ; $5f55: $5d
    ld c, b                                       ; $5f56: $48
    ld e, [hl]                                    ; $5f57: $5e
    ld e, a                                       ; $5f58: $5f
    ld h, b                                       ; $5f59: $60
    ld d, h                                       ; $5f5a: $54
    ld b, d                                       ; $5f5b: $42
    jr nz, jr_0ce_5fbf                            ; $5f5c: $20 $61

    ld h, d                                       ; $5f5e: $62
    db $10                                        ; $5f5f: $10
    ld l, b                                       ; $5f60: $68
    ld h, e                                       ; $5f61: $63
    ld c, b                                       ; $5f62: $48
    ld b, [hl]                                    ; $5f63: $46
    ld h, h                                       ; $5f64: $64
    ld h, l                                       ; $5f65: $65
    nop                                           ; $5f66: $00
    ld b, [hl]                                    ; $5f67: $46
    ld c, b                                       ; $5f68: $48
    ld h, [hl]                                    ; $5f69: $66
    ld b, [hl]                                    ; $5f6a: $46
    ld h, a                                       ; $5f6b: $67
    ld l, b                                       ; $5f6c: $68
    ld c, b                                       ; $5f6d: $48
    ld b, [hl]                                    ; $5f6e: $46
    db $10                                        ; $5f6f: $10
    ld d, [hl]                                    ; $5f70: $56
    ld l, c                                       ; $5f71: $69
    ld d, h                                       ; $5f72: $54
    db $10                                        ; $5f73: $10
    ld l, b                                       ; $5f74: $68
    ld b, d                                       ; $5f75: $42
    ld l, d                                       ; $5f76: $6a
    ld l, e                                       ; $5f77: $6b
    ld l, h                                       ; $5f78: $6c
    nop                                           ; $5f79: $00
    ld b, d                                       ; $5f7a: $42
    ld l, l                                       ; $5f7b: $6d
    ld l, [hl]                                    ; $5f7c: $6e
    ld l, a                                       ; $5f7d: $6f
    ld [hl], b                                    ; $5f7e: $70
    ld [hl], c                                    ; $5f7f: $71
    ld c, b                                       ; $5f80: $48
    ld b, [hl]                                    ; $5f81: $46
    ld [$6258], sp                                ; $5f82: $08 $58 $62
    ld [hl], d                                    ; $5f85: $72
    ld b, [hl]                                    ; $5f86: $46
    db $10                                        ; $5f87: $10
    ld l, b                                       ; $5f88: $68
    ld [hl], e                                    ; $5f89: $73
    ld [hl], h                                    ; $5f8a: $74
    ld [hl], l                                    ; $5f8b: $75
    nop                                           ; $5f8c: $00
    ld e, h                                       ; $5f8d: $5c
    halt                                          ; $5f8e: $76
    ld [hl], a                                    ; $5f8f: $77
    ld a, b                                       ; $5f90: $78
    ld a, c                                       ; $5f91: $79
    ld a, d                                       ; $5f92: $7a
    ld [hl], l                                    ; $5f93: $75
    ld a, e                                       ; $5f94: $7b
    inc b                                         ; $5f95: $04
    ld b, a                                       ; $5f96: $47
    ld a, h                                       ; $5f97: $7c
    ld a, l                                       ; $5f98: $7d
    ld a, [hl]                                    ; $5f99: $7e
    ld b, a                                       ; $5f9a: $47
    db $10                                        ; $5f9b: $10
    ld l, b                                       ; $5f9c: $68
    ld b, a                                       ; $5f9d: $47
    ld a, [hl]                                    ; $5f9e: $7e
    nop                                           ; $5f9f: $00
    ld a, l                                       ; $5fa0: $7d
    ld a, h                                       ; $5fa1: $7c
    ld b, a                                       ; $5fa2: $47
    ld a, e                                       ; $5fa3: $7b
    ld [hl], l                                    ; $5fa4: $75
    ld a, d                                       ; $5fa5: $7a
    ld a, c                                       ; $5fa6: $79
    ld a, b                                       ; $5fa7: $78
    ld [bc], a                                    ; $5fa8: $02
    ld [hl], a                                    ; $5fa9: $77
    halt                                          ; $5faa: $76
    ld e, h                                       ; $5fab: $5c
    ld [hl], l                                    ; $5fac: $75
    ld [hl], h                                    ; $5fad: $74
    ld [hl], e                                    ; $5fae: $73
    db $10                                        ; $5faf: $10
    ld l, b                                       ; $5fb0: $68
    ld b, [hl]                                    ; $5fb1: $46
    nop                                           ; $5fb2: $00
    ld [hl], d                                    ; $5fb3: $72
    ld h, d                                       ; $5fb4: $62
    ld e, b                                       ; $5fb5: $58
    ld b, [hl]                                    ; $5fb6: $46
    ld c, b                                       ; $5fb7: $48
    ld [hl], c                                    ; $5fb8: $71
    ld [hl], b                                    ; $5fb9: $70
    ld l, a                                       ; $5fba: $6f
    ld bc, $6d6e                                  ; $5fbb: $01 $6e $6d
    ld b, d                                       ; $5fbe: $42

jr_0ce_5fbf:
    ld l, h                                       ; $5fbf: $6c
    ld l, e                                       ; $5fc0: $6b
    ld l, d                                       ; $5fc1: $6a
    ld b, d                                       ; $5fc2: $42
    db $10                                        ; $5fc3: $10
    ld l, b                                       ; $5fc4: $68
    nop                                           ; $5fc5: $00
    ld d, h                                       ; $5fc6: $54
    ld l, c                                       ; $5fc7: $69
    ld d, [hl]                                    ; $5fc8: $56
    ld b, [hl]                                    ; $5fc9: $46
    ld c, b                                       ; $5fca: $48
    ld l, b                                       ; $5fcb: $68
    ld h, a                                       ; $5fcc: $67
    ld b, [hl]                                    ; $5fcd: $46

jr_0ce_5fce:
    nop                                           ; $5fce: $00
    ld h, [hl]                                    ; $5fcf: $66
    ld c, b                                       ; $5fd0: $48
    ld b, [hl]                                    ; $5fd1: $46
    ld h, l                                       ; $5fd2: $65
    ld h, h                                       ; $5fd3: $64
    ld b, [hl]                                    ; $5fd4: $46
    ld c, b                                       ; $5fd5: $48
    ld h, e                                       ; $5fd6: $63
    add b                                         ; $5fd7: $80
    db $10                                        ; $5fd8: $10
    ld l, b                                       ; $5fd9: $68
    ld h, d                                       ; $5fda: $62
    ld h, c                                       ; $5fdb: $61
    ld b, d                                       ; $5fdc: $42
    ld d, h                                       ; $5fdd: $54
    ld h, b                                       ; $5fde: $60
    ld e, a                                       ; $5fdf: $5f
    ld e, [hl]                                    ; $5fe0: $5e
    ldh [$e1], a                                  ; $5fe1: $e0 $e1
    nop                                           ; $5fe3: $00
    jp hl                                         ; $5fe4: $e9


    jr jr_0ce_5ff7                                ; $5fe5: $18 $10

    ld l, b                                       ; $5fe7: $68
    ld e, e                                       ; $5fe8: $5b
    ld e, c                                       ; $5fe9: $59
    ld e, b                                       ; $5fea: $58
    ld d, a                                       ; $5feb: $57
    ld e, d                                       ; $5fec: $5a
    add b                                         ; $5fed: $80
    inc b                                         ; $5fee: $04
    nop                                           ; $5fef: $00
    ld d, [hl]                                    ; $5ff0: $56
    ld b, [hl]                                    ; $5ff1: $46
    ld b, a                                       ; $5ff2: $47
    ld d, l                                       ; $5ff3: $55
    ld b, d                                       ; $5ff4: $42
    ld d, h                                       ; $5ff5: $54
    ld b, a                                       ; $5ff6: $47

jr_0ce_5ff7:
    ld b, b                                       ; $5ff7: $40
    ld d, e                                       ; $5ff8: $53
    db $10                                        ; $5ff9: $10
    ld l, b                                       ; $5ffa: $68
    ld c, d                                       ; $5ffb: $4a
    ld c, b                                       ; $5ffc: $48
    ld b, a                                       ; $5ffd: $47
    ld d, d                                       ; $5ffe: $52
    ld d, c                                       ; $5fff: $51
    ld c, b                                       ; $6000: $48
    nop                                           ; $6001: $00
    ld b, a                                       ; $6002: $47
    ld d, b                                       ; $6003: $50
    ld c, a                                       ; $6004: $4f
    ld c, [hl]                                    ; $6005: $4e
    ld c, l                                       ; $6006: $4d
    ld c, h                                       ; $6007: $4c
    ld b, d                                       ; $6008: $42
    ld b, d                                       ; $6009: $42
    inc h                                         ; $600a: $24
    ld c, e                                       ; $600b: $4b
    ld b, e                                       ; $600c: $43
    db $10                                        ; $600d: $10
    add b                                         ; $600e: $80
    ld b, [hl]                                    ; $600f: $46
    ld c, c                                       ; $6010: $49
    inc b                                         ; $6011: $04
    nop                                           ; $6012: $00
    ld b, c                                       ; $6013: $41
    ld b, l                                       ; $6014: $45
    ld [bc], a                                    ; $6015: $02
    ld b, h                                       ; $6016: $44
    ld b, b                                       ; $6017: $40
    ld b, e                                       ; $6018: $43
    ld b, d                                       ; $6019: $42
    ld b, c                                       ; $601a: $41
    ld b, b                                       ; $601b: $40
    db $10                                        ; $601c: $10
    ld l, b                                       ; $601d: $68
    add hl, bc                                    ; $601e: $09
    ld de, $0809                                  ; $601f: $11 $09 $08
    ld [$0004], sp                                ; $6022: $08 $04 $00
    add hl, bc                                    ; $6025: $09
    add hl, bc                                    ; $6026: $09
    ld a, [bc]                                    ; $6027: $0a
    dec b                                         ; $6028: $05
    nop                                           ; $6029: $00
    ld sp, $0a49                                  ; $602a: $31 $49 $0a
    inc c                                         ; $602d: $0c
    ld [$5010], sp                                ; $602e: $08 $10 $50
    ld [$0c0c], sp                                ; $6031: $08 $0c $0c
    ld hl, $6200                                  ; $6034: $21 $00 $62
    ld [$0025], sp                                ; $6037: $08 $25 $00
    inc c                                         ; $603a: $0c
    nop                                           ; $603b: $00
    ld a, [hl+]                                   ; $603c: $2a
    ld c, d                                       ; $603d: $4a
    ld c, b                                       ; $603e: $48
    db $10                                        ; $603f: $10
    ld l, b                                       ; $6040: $68
    dec c                                         ; $6041: $0d
    inc bc                                        ; $6042: $03
    ld l, c                                       ; $6043: $69
    inc c                                         ; $6044: $0c
    inc c                                         ; $6045: $0c
    inc c                                         ; $6046: $0c
    ld c, l                                       ; $6047: $4d
    add hl, hl                                    ; $6048: $29
    ld hl, $0300                                  ; $6049: $21 $00 $03
    jr jr_0ce_5fce                                ; $604c: $18 $80

    db $10                                        ; $604e: $10
    ld l, b                                       ; $604f: $68
    ld a, [hl+]                                   ; $6050: $2a
    ld c, l                                       ; $6051: $4d
    ld a, [bc]                                    ; $6052: $0a
    inc c                                         ; $6053: $0c
    ld l, d                                       ; $6054: $6a
    ld a, [hl+]                                   ; $6055: $2a
    ld c, l                                       ; $6056: $4d
    jr c, jr_0ce_6065                             ; $6057: $38 $0c

    ld a, [bc]                                    ; $6059: $0a
    ld [bc], a                                    ; $605a: $02
    nop                                           ; $605b: $00
    ld a, [hl+]                                   ; $605c: $2a
    nop                                           ; $605d: $00
    db $10                                        ; $605e: $10
    ld [hl], b                                    ; $605f: $70
    inc c                                         ; $6060: $0c
    ld a, [hl+]                                   ; $6061: $2a
    ld l, d                                       ; $6062: $6a
    nop                                           ; $6063: $00
    ld a, [bc]                                    ; $6064: $0a

jr_0ce_6065:
    dec bc                                        ; $6065: $0b
    ld c, d                                       ; $6066: $4a
    ld c, d                                       ; $6067: $4a
    ld a, [bc]                                    ; $6068: $0a
    ld a, [hl+]                                   ; $6069: $2a
    dec bc                                        ; $606a: $0b
    dec bc                                        ; $606b: $0b
    inc b                                         ; $606c: $04
    dec l                                         ; $606d: $2d
    ld l, d                                       ; $606e: $6a
    ld c, e                                       ; $606f: $4b
    inc c                                         ; $6070: $0c
    dec hl                                        ; $6071: $2b
    db $10                                        ; $6072: $10
    ld l, b                                       ; $6073: $68
    ld a, [bc]                                    ; $6074: $0a
    dec bc                                        ; $6075: $0b
    add b                                         ; $6076: $80
    ld [bc], a                                    ; $6077: $02
    db $10                                        ; $6078: $10
    inc c                                         ; $6079: $0c
    dec bc                                        ; $607a: $0b
    inc c                                         ; $607b: $0c
    ld a, [hl+]                                   ; $607c: $2a
    ld a, [hl+]                                   ; $607d: $2a
    inc c                                         ; $607e: $0c
    inc l                                         ; $607f: $2c
    jr nz, jr_0ce_608d                            ; $6080: $20 $0b

    ld c, d                                       ; $6082: $4a
    db $10                                        ; $6083: $10
    ld l, b                                       ; $6084: $68
    inc c                                         ; $6085: $0c
    dec bc                                        ; $6086: $0b
    ld a, [bc]                                    ; $6087: $0a
    inc l                                         ; $6088: $2c
    dec bc                                        ; $6089: $0b
    add c                                         ; $608a: $81
    inc h                                         ; $608b: $24
    nop                                           ; $608c: $00

jr_0ce_608d:
    inc c                                         ; $608d: $0c
    ld a, [hl+]                                   ; $608e: $2a
    ld a, [bc]                                    ; $608f: $0a
    ld c, d                                       ; $6090: $4a
    dec bc                                        ; $6091: $0b
    ld a, [bc]                                    ; $6092: $0a
    ld h, h                                       ; $6093: $64
    nop                                           ; $6094: $00
    add b                                         ; $6095: $80
    db $10                                        ; $6096: $10
    ld h, b                                       ; $6097: $60
    ld l, h                                       ; $6098: $6c
    ld l, d                                       ; $6099: $6a
    ld l, d                                       ; $609a: $6a
    ld l, e                                       ; $609b: $6b
    ld a, [hl+]                                   ; $609c: $2a
    ld l, d                                       ; $609d: $6a
    ld c, d                                       ; $609e: $4a
    adc h                                         ; $609f: $8c
    sbc e                                         ; $60a0: $9b
    ld bc, $6b6b                                  ; $60a1: $01 $6b $6b
    ld c, h                                       ; $60a4: $4c
    inc c                                         ; $60a5: $0c
    ld [bc], a                                    ; $60a6: $02
    db $10                                        ; $60a7: $10
    ld l, b                                       ; $60a8: $68
    ld a, [hl+]                                   ; $60a9: $2a
    ld l, e                                       ; $60aa: $6b
    db $10                                        ; $60ab: $10
    ld c, h                                       ; $60ac: $4c
    ld l, h                                       ; $60ad: $6c
    ld c, d                                       ; $60ae: $4a
    rra                                           ; $60af: $1f
    nop                                           ; $60b0: $00
    ld l, h                                       ; $60b1: $6c
    ld l, d                                       ; $60b2: $6a
    ld l, e                                       ; $60b3: $6b
    ld a, [bc]                                    ; $60b4: $0a
    and b                                         ; $60b5: $a0
    inc h                                         ; $60b6: $24
    nop                                           ; $60b7: $00
    ld a, [bc]                                    ; $60b8: $0a
    db $10                                        ; $60b9: $10
    ld l, b                                       ; $60ba: $68
    ld c, e                                       ; $60bb: $4b
    ld l, h                                       ; $60bc: $6c
    dec hl                                        ; $60bd: $2b
    ld a, [bc]                                    ; $60be: $0a
    ld c, l                                       ; $60bf: $4d
    nop                                           ; $60c0: $00
    ld l, e                                       ; $60c1: $6b
    ld l, e                                       ; $60c2: $6b
    ld c, d                                       ; $60c3: $4a
    ld l, d                                       ; $60c4: $6a
    ld a, [hl+]                                   ; $60c5: $2a
    ld a, [hl+]                                   ; $60c6: $2a
    ld l, e                                       ; $60c7: $6b
    ld l, d                                       ; $60c8: $6a
    ld de, $4a0a                                  ; $60c9: $11 $0a $4a
    ld l, h                                       ; $60cc: $6c
    db $10                                        ; $60cd: $10
    ld l, b                                       ; $60ce: $68
    ld l, b                                       ; $60cf: $68
    ld l, h                                       ; $60d0: $6c
    inc c                                         ; $60d1: $0c
    ld d, h                                       ; $60d2: $54
    nop                                           ; $60d3: $00
    add b                                         ; $60d4: $80
    ld [bc], a                                    ; $60d5: $02
    nop                                           ; $60d6: $00
    dec l                                         ; $60d7: $2d
    ld c, d                                       ; $60d8: $4a
    ld a, [bc]                                    ; $60d9: $0a
    ld l, h                                       ; $60da: $6c
    ld l, d                                       ; $60db: $6a
    dec l                                         ; $60dc: $2d
    ld c, d                                       ; $60dd: $4a
    ret                                           ; $60de: $c9


    db $10                                        ; $60df: $10
    ld [hl], b                                    ; $60e0: $70
    ld bc, $4928                                  ; $60e1: $01 $28 $49
    dec l                                         ; $60e4: $2d
    ld a, [hl+]                                   ; $60e5: $2a
    nop                                           ; $60e6: $00
    add hl, bc                                    ; $60e7: $09
    ld l, l                                       ; $60e8: $6d
    db $10                                        ; $60e9: $10
    ld l, b                                       ; $60ea: $68
    inc h                                         ; $60eb: $24
    jr z, jr_0ce_6118                             ; $60ec: $28 $2a

    inc hl                                        ; $60ee: $23
    nop                                           ; $60ef: $00
    ld l, d                                       ; $60f0: $6a
    ld l, c                                       ; $60f1: $69
    daa                                           ; $60f2: $27
    nop                                           ; $60f3: $00
    ld l, d                                       ; $60f4: $6a
    ld l, b                                       ; $60f5: $68
    ld a, [bc]                                    ; $60f6: $0a
    ld [$6c0c], sp                                ; $60f7: $08 $0c $6c
    ld l, b                                       ; $60fa: $68
    db $10                                        ; $60fb: $10
    jr c, jr_0ce_6167                             ; $60fc: $38 $69

    db $10                                        ; $60fe: $10
    db $10                                        ; $60ff: $10
    ld l, b                                       ; $6100: $68
    nop                                           ; $6101: $00
    ld l, d                                       ; $6102: $6a
    add hl, hl                                    ; $6103: $29
    ld l, c                                       ; $6104: $69
    ld l, b                                       ; $6105: $68
    ld l, c                                       ; $6106: $69
    ld l, d                                       ; $6107: $6a
    ld l, c                                       ; $6108: $69
    add hl, bc                                    ; $6109: $09
    inc h                                         ; $610a: $24
    ld l, b                                       ; $610b: $68
    ld l, c                                       ; $610c: $69
    ld de, $0900                                  ; $610d: $11 $00 $09
    ld l, c                                       ; $6110: $69
    db $10                                        ; $6111: $10
    ld l, b                                       ; $6112: $68
    jr nz, jr_0ce_6115                            ; $6113: $20 $00

jr_0ce_6115:
    ld c, $00                                     ; $6115: $0e $00
    and [hl]                                      ; $6117: $a6

jr_0ce_6118:
    nop                                           ; $6118: $00
    ld b, $41                                     ; $6119: $06 $41
    ld b, d                                       ; $611b: $42
    ld b, e                                       ; $611c: $43
    ld b, h                                       ; $611d: $44
    ld b, h                                       ; $611e: $44
    dec b                                         ; $611f: $05
    nop                                           ; $6120: $00
    rlca                                          ; $6121: $07
    nop                                           ; $6122: $00
    ld b, c                                       ; $6123: $41
    ret nz                                        ; $6124: $c0

    ld [$1008], sp                                ; $6125: $08 $08 $10
    ld l, b                                       ; $6128: $68
    ld b, l                                       ; $6129: $45
    ld b, [hl]                                    ; $612a: $46
    ld b, a                                       ; $612b: $47
    ld c, b                                       ; $612c: $48
    ld b, [hl]                                    ; $612d: $46
    ld b, a                                       ; $612e: $47
    nop                                           ; $612f: $00
    ld b, l                                       ; $6130: $45
    ld c, b                                       ; $6131: $48
    ld c, b                                       ; $6132: $48
    ld b, [hl]                                    ; $6133: $46
    ld b, l                                       ; $6134: $45
    ld b, a                                       ; $6135: $47
    ld b, [hl]                                    ; $6136: $46
    ld b, a                                       ; $6137: $47
    jr nz, jr_0ce_6180                            ; $6138: $20 $46

    ld c, b                                       ; $613a: $48
    db $10                                        ; $613b: $10
    ld l, b                                       ; $613c: $68
    ld c, c                                       ; $613d: $49
    ld c, d                                       ; $613e: $4a
    ld c, e                                       ; $613f: $4b
    ld c, h                                       ; $6140: $4c
    ld c, d                                       ; $6141: $4a
    ld bc, $4c49                                  ; $6142: $01 $49 $4c
    ld c, e                                       ; $6145: $4b
    ld c, h                                       ; $6146: $4c
    ld c, e                                       ; $6147: $4b
    ld c, c                                       ; $6148: $49
    ld c, d                                       ; $6149: $4a
    ld [$8008], sp                                ; $614a: $08 $08 $80
    db $10                                        ; $614d: $10
    ld l, b                                       ; $614e: $68
    ld c, l                                       ; $614f: $4d
    ld c, [hl]                                    ; $6150: $4e
    ld c, a                                       ; $6151: $4f
    ld d, b                                       ; $6152: $50
    ld c, [hl]                                    ; $6153: $4e
    ld c, l                                       ; $6154: $4d
    ld c, a                                       ; $6155: $4f
    ld b, $4f                                     ; $6156: $06 $4f
    ld c, [hl]                                    ; $6158: $4e
    ld c, a                                       ; $6159: $4f
    ld c, l                                       ; $615a: $4d
    ld c, a                                       ; $615b: $4f

jr_0ce_615c:
    ld [$1008], sp                                ; $615c: $08 $08 $10
    ld l, b                                       ; $615f: $68
    ld e, h                                       ; $6160: $5c
    inc d                                         ; $6161: $14
    ld e, l                                       ; $6162: $5d
    ld e, h                                       ; $6163: $5c
    ld e, l                                       ; $6164: $5d
    inc bc                                        ; $6165: $03
    nop                                           ; $6166: $00

jr_0ce_6167:
    ld e, h                                       ; $6167: $5c
    ld [$5ea8], sp                                ; $6168: $08 $a8 $5e
    ld e, a                                       ; $616b: $5f
    jr z, jr_0ce_61cc                             ; $616c: $28 $5e

    ld e, a                                       ; $616e: $5f
    inc bc                                        ; $616f: $03

jr_0ce_6170:
    nop                                           ; $6170: $00
    ld e, [hl]                                    ; $6171: $5e
    ld [$60a8], sp                                ; $6172: $08 $a8 $60
    ld h, c                                       ; $6175: $61
    ld h, d                                       ; $6176: $62
    nop                                           ; $6177: $00
    ld h, e                                       ; $6178: $63
    ld h, e                                       ; $6179: $63
    ld h, d                                       ; $617a: $62
    ld h, c                                       ; $617b: $61
    ld h, b                                       ; $617c: $60
    ld h, d                                       ; $617d: $62
    ld h, b                                       ; $617e: $60
    ld h, e                                       ; $617f: $63

jr_0ce_6180:
    ld a, a                                       ; $6180: $7f
    ld h, c                                       ; $6181: $61
    inc b                                         ; $6182: $04
    ld [$f810], sp                                ; $6183: $08 $10 $f8
    jr nc, @+$5a                                  ; $6186: $30 $58

    ld h, b                                       ; $6188: $60
    add sp, -$60                                  ; $6189: $e8 $a0
    add sp, -$20                                  ; $618b: $e8 $e0
    add sp, $20                                   ; $618d: $e8 $20
    jp hl                                         ; $618f: $e9


    sub $60                                       ; $6190: $d6 $60
    jp hl                                         ; $6192: $e9


    and b                                         ; $6193: $a0
    jp hl                                         ; $6194: $e9


    dec c                                         ; $6195: $0d
    ld bc, $2d28                                  ; $6196: $01 $28 $2d
    ld a, [bc]                                    ; $6199: $0a
    jr nc, jr_0ce_61ac                            ; $619a: $30 $10

    ld d, b                                       ; $619c: $50
    inc c                                         ; $619d: $0c
    add b                                         ; $619e: $80
    inc bc                                        ; $619f: $03
    ld [$0d2c], sp                                ; $61a0: $08 $2c $0d
    ld c, h                                       ; $61a3: $4c
    ld l, l                                       ; $61a4: $6d
    inc c                                         ; $61a5: $0c
    dec l                                         ; $61a6: $2d
    inc c                                         ; $61a7: $0c
    inc c                                         ; $61a8: $0c
    dec c                                         ; $61a9: $0d
    dec l                                         ; $61aa: $2d
    inc l                                         ; $61ab: $2c

jr_0ce_61ac:
    ld c, l                                       ; $61ac: $4d
    db $10                                        ; $61ad: $10
    ld [hl], b                                    ; $61ae: $70
    ld bc, $2c00                                  ; $61af: $01 $00 $2c
    inc l                                         ; $61b2: $2c
    rst $38                                       ; $61b3: $ff
    inc bc                                        ; $61b4: $03
    nop                                           ; $61b5: $00
    inc b                                         ; $61b6: $04
    jr nz, jr_0ce_61c9                            ; $61b7: $20 $10

    adc b                                         ; $61b9: $88
    inc h                                         ; $61ba: $24
    jr nz, jr_0ce_61be                            ; $61bb: $20 $01

    ld d, b                                       ; $61bd: $50

jr_0ce_61be:
    db $10                                        ; $61be: $10
    ld l, b                                       ; $61bf: $68
    ld c, $f8                                     ; $61c0: $0e $f8
    jr nc, jr_0ce_615c                            ; $61c2: $30 $98

    ld e, [hl]                                    ; $61c4: $5e
    dec bc                                        ; $61c5: $0b
    ld bc, $2b00                                  ; $61c6: $01 $00 $2b

jr_0ce_61c9:
    ld bc, $0818                                  ; $61c9: $01 $18 $08

jr_0ce_61cc:
    ld [$080f], sp                                ; $61cc: $08 $0f $08
    db $10                                        ; $61cf: $10
    ld d, b                                       ; $61d0: $50
    ld c, e                                       ; $61d1: $4b
    cp l                                          ; $61d2: $bd
    ld bc, $6b00                                  ; $61d3: $01 $00 $6b
    ld bc, $0818                                  ; $61d6: $01 $18 $08
    ld [$080f], sp                                ; $61d9: $08 $0f $08
    db $10                                        ; $61dc: $10
    ld d, b                                       ; $61dd: $50
    ld c, h                                       ; $61de: $4c
    ld bc, $cdf8                                  ; $61df: $01 $f8 $cd
    inc hl                                        ; $61e2: $23
    ld hl, sp+$45                                 ; $61e3: $f8 $45
    nop                                           ; $61e5: $00
    ld l, h                                       ; $61e6: $6c
    ld l, h                                       ; $61e7: $6c
    db $10                                        ; $61e8: $10
    cp b                                          ; $61e9: $b8
    inc e                                         ; $61ea: $1c
    nop                                           ; $61eb: $00
    ld l, h                                       ; $61ec: $6c
    inc b                                         ; $61ed: $04
    jr z, jr_0ce_6170                             ; $61ee: $28 $80

    db $10                                        ; $61f0: $10
    ld [hl], b                                    ; $61f1: $70
    ld c, l                                       ; $61f2: $4d
    ld c, l                                       ; $61f3: $4d
    ld c, h                                       ; $61f4: $4c
    ld c, l                                       ; $61f5: $4d
    ld l, h                                       ; $61f6: $6c
    ld c, l                                       ; $61f7: $4d
    inc c                                         ; $61f8: $0c
    nop                                           ; $61f9: $00
    dec l                                         ; $61fa: $2d
    ld c, h                                       ; $61fb: $4c
    ld l, l                                       ; $61fc: $6d
    ld c, h                                       ; $61fd: $4c
    ld c, l                                       ; $61fe: $4d
    ld l, l                                       ; $61ff: $6d
    ld l, h                                       ; $6200: $6c
    dec c                                         ; $6201: $0d
    xor h                                         ; $6202: $ac
    db $10                                        ; $6203: $10
    ld l, b                                       ; $6204: $68
    ld c, l                                       ; $6205: $4d
    ld bc, $6d28                                  ; $6206: $01 $28 $6d
    ld a, [bc]                                    ; $6209: $0a
    jr nc, @+$12                                  ; $620a: $30 $10

    ld d, b                                       ; $620c: $50
    jr nz, jr_0ce_620f                            ; $620d: $20 $00

jr_0ce_620f:
    inc d                                         ; $620f: $14
    nop                                           ; $6210: $00
    xor h                                         ; $6211: $ac
    ld bc, $4001                                  ; $6212: $01 $01 $40
    ld b, b                                       ; $6215: $40
    ld b, c                                       ; $6216: $41
    ld b, d                                       ; $6217: $42
    ld b, c                                       ; $6218: $41
    ld b, e                                       ; $6219: $43
    ld b, b                                       ; $621a: $40
    ld bc, $4100                                  ; $621b: $01 $00 $41
    ld b, e                                       ; $621e: $43
    ld bc, $4408                                  ; $621f: $01 $08 $44
    ld b, l                                       ; $6222: $45
    ld b, h                                       ; $6223: $44
    ld b, [hl]                                    ; $6224: $46
    ld b, a                                       ; $6225: $47
    ld bc, $c400                                  ; $6226: $01 $00 $c4
    db $10                                        ; $6229: $10
    jr nz, jr_0ce_6243                            ; $622a: $20 $17

    ld [$4948], sp                                ; $622c: $08 $48 $49
    ld c, b                                       ; $622f: $48
    rra                                           ; $6230: $1f
    db $10                                        ; $6231: $10
    ld c, d                                       ; $6232: $4a
    ld c, e                                       ; $6233: $4b
    ld [bc], a                                    ; $6234: $02
    ld c, d                                       ; $6235: $4a
    ld b, e                                       ; $6236: $43
    ld b, [hl]                                    ; $6237: $46
    ld c, h                                       ; $6238: $4c
    ld c, c                                       ; $6239: $49
    ld c, h                                       ; $623a: $4c
    rra                                           ; $623b: $1f
    ld e, b                                       ; $623c: $58
    ld b, b                                       ; $623d: $40
    ld h, b                                       ; $623e: $60
    ld b, e                                       ; $623f: $43
    ld b, b                                       ; $6240: $40
    nop                                           ; $6241: $00
    ccf                                           ; $6242: $3f

jr_0ce_6243:
    db $10                                        ; $6243: $10
    ld c, l                                       ; $6244: $4d
    ld c, [hl]                                    ; $6245: $4e
    ld c, l                                       ; $6246: $4d
    ld b, e                                       ; $6247: $43
    ld b, [hl]                                    ; $6248: $46
    pop bc                                        ; $6249: $c1
    ld b, b                                       ; $624a: $40
    nop                                           ; $624b: $00
    ccf                                           ; $624c: $3f
    ld h, b                                       ; $624d: $60
    ld b, e                                       ; $624e: $43
    ld c, a                                       ; $624f: $4f
    ld d, b                                       ; $6250: $50
    ld d, c                                       ; $6251: $51
    ld d, d                                       ; $6252: $52
    ld e, [hl]                                    ; $6253: $5e
    ld [$5308], sp                                ; $6254: $08 $08 $53
    ld c, e                                       ; $6257: $4b
    ld d, e                                       ; $6258: $53
    ld b, [hl]                                    ; $6259: $46
    ld bc, $4700                                  ; $625a: $01 $00 $47
    ld c, a                                       ; $625d: $4f
    ld d, b                                       ; $625e: $50
    ld [bc], a                                    ; $625f: $02
    ld d, b                                       ; $6260: $50
    ld c, a                                       ; $6261: $4f
    ld b, b                                       ; $6262: $40
    ld b, h                                       ; $6263: $44
    ld b, l                                       ; $6264: $45
    ld b, c                                       ; $6265: $41
    ccf                                           ; $6266: $3f
    jr nz, jr_0ce_62bd                            ; $6267: $20 $54

    rlca                                          ; $6269: $07
    ld d, l                                       ; $626a: $55

jr_0ce_626b:
    ld d, [hl]                                    ; $626b: $56
    ld d, a                                       ; $626c: $57
    ld e, b                                       ; $626d: $58
    ld e, c                                       ; $626e: $59
    ld a, l                                       ; $626f: $7d
    db $10                                        ; $6270: $10
    rra                                           ; $6271: $1f
    db $10                                        ; $6272: $10
    stop                                          ; $6273: $10 $00
    nop                                           ; $6275: $00
    ld d, [hl]                                    ; $6276: $56
    ld d, l                                       ; $6277: $55
    ld e, c                                       ; $6278: $59
    ld c, h                                       ; $6279: $4c
    ld c, c                                       ; $627a: $49
    ld e, d                                       ; $627b: $5a
    ld b, e                                       ; $627c: $43
    ld b, b                                       ; $627d: $40
    nop                                           ; $627e: $00
    ld e, e                                       ; $627f: $5b
    ld e, h                                       ; $6280: $5c
    ld e, e                                       ; $6281: $5b
    ld b, e                                       ; $6282: $43
    ld b, e                                       ; $6283: $43
    ld e, l                                       ; $6284: $5d
    ld e, [hl]                                    ; $6285: $5e
    ld e, a                                       ; $6286: $5f
    inc d                                         ; $6287: $14
    ld e, a                                       ; $6288: $5f
    ld h, b                                       ; $6289: $60
    ld h, c                                       ; $628a: $61
    rra                                           ; $628b: $1f
    jr nc, jr_0ce_62d5                            ; $628c: $30 $47

    db $10                                        ; $628e: $10
    jr jr_0ce_62d5                                ; $628f: $18 $44

    ld h, d                                       ; $6291: $62
    add e                                         ; $6292: $83
    or l                                          ; $6293: $b5

jr_0ce_6294:
    nop                                           ; $6294: $00
    ld h, e                                       ; $6295: $63
    ld c, [hl]                                    ; $6296: $4e
    ld h, e                                       ; $6297: $63
    ld b, b                                       ; $6298: $40
    ld b, b                                       ; $6299: $40

jr_0ce_629a:
    jr nz, @+$1a                                  ; $629a: $20 $18

    add a                                         ; $629c: $87
    ld [$4471], sp                                ; $629d: $08 $71 $44
    ld e, a                                       ; $62a0: $5f
    db $10                                        ; $62a1: $10
    db $10                                        ; $62a2: $10
    jr z, @-$2f                                   ; $62a3: $28 $cf

    nop                                           ; $62a5: $00
    ld h, h                                       ; $62a6: $64
    ld e, h                                       ; $62a7: $5c
    ld h, h                                       ; $62a8: $64
    ld h, b                                       ; $62a9: $60
    jr z, jr_0ce_62e8                             ; $62aa: $28 $3c

    ld b, b                                       ; $62ac: $40
    ld b, b                                       ; $62ad: $40
    rst $00                                       ; $62ae: $c7
    nop                                           ; $62af: $00
    ld h, c                                       ; $62b0: $61
    db $10                                        ; $62b1: $10
    db $10                                        ; $62b2: $10
    jr z, jr_0ce_6294                             ; $62b3: $28 $df

    jr nz, jr_0ce_631c                            ; $62b5: $20 $65

    ld b, c                                       ; $62b7: $41
    ld a, $4f                                     ; $62b8: $3e $4f
    ld d, c                                       ; $62ba: $51
    and b                                         ; $62bb: $a0
    db $10                                        ; $62bc: $10

jr_0ce_62bd:
    rlca                                          ; $62bd: $07
    ld bc, $1861                                  ; $62be: $01 $61 $18
    or b                                          ; $62c1: $b0

jr_0ce_62c2:
    jr z, jr_0ce_62c2                             ; $62c2: $28 $fe

    db $10                                        ; $62c4: $10
    ld b, h                                       ; $62c5: $44
    cp $36                                        ; $62c6: $fe $36
    nop                                           ; $62c8: $00
    adc b                                         ; $62c9: $88
    jr jr_0ce_626b                                ; $62ca: $18 $9f

    nop                                           ; $62cc: $00
    sub b                                         ; $62cd: $90
    nop                                           ; $62ce: $00
    inc e                                         ; $62cf: $1c
    ld hl, $110e                                  ; $62d0: $21 $0e $11
    dec [hl]                                      ; $62d3: $35
    add hl, bc                                    ; $62d4: $09

jr_0ce_62d5:
    ld c, h                                       ; $62d5: $4c
    halt                                          ; $62d6: $76
    ld h, l                                       ; $62d7: $65
    adc b                                         ; $62d8: $88
    jr jr_0ce_629a                                ; $62d9: $18 $bf

    db $10                                        ; $62db: $10
    sub b                                         ; $62dc: $90
    nop                                           ; $62dd: $00
    ld b, a                                       ; $62de: $47
    ld c, $41                                     ; $62df: $0e $41
    ld d, l                                       ; $62e1: $55
    add hl, bc                                    ; $62e2: $09
    ld b, h                                       ; $62e3: $44
    jp Jump_000_3088                              ; $62e4: $c3 $88 $30


    sub b                                         ; $62e7: $90

jr_0ce_62e8:
    jr jr_0ce_6330                                ; $62e8: $18 $46

    ld h, [hl]                                    ; $62ea: $66
    ld c, c                                       ; $62eb: $49
    ld h, [hl]                                    ; $62ec: $66
    ld b, c                                       ; $62ed: $41
    db $10                                        ; $62ee: $10
    ld c, $01                                     ; $62ef: $0e $01
    or a                                          ; $62f1: $b7
    halt                                          ; $62f2: $76
    ld de, $484f                                  ; $62f3: $11 $4f $48
    ld sp, $1129                                  ; $62f6: $31 $29 $11
    ld b, [hl]                                    ; $62f9: $46
    adc [hl]                                      ; $62fa: $8e
    ld bc, $2062                                  ; $62fb: $01 $62 $20
    ld a, [hl]                                    ; $62fe: $7e
    ld bc, $5206                                  ; $62ff: $01 $06 $52
    ld d, c                                       ; $6302: $51
    ld d, c                                       ; $6303: $51
    ld d, l                                       ; $6304: $55
    ld d, h                                       ; $6305: $54
    add [hl]                                      ; $6306: $86
    ld bc, $0196                                  ; $6307: $01 $96 $01
    ld b, e                                       ; $630a: $43
    or h                                          ; $630b: $b4
    add hl, hl                                    ; $630c: $29
    ld bc, $2957                                  ; $630d: $01 $57 $29
    ld bc, $219d                                  ; $6310: $01 $9d $21
    ld b, h                                       ; $6313: $44
    or l                                          ; $6314: $b5
    add hl, bc                                    ; $6315: $09
    ld e, c                                       ; $6316: $59
    ld e, b                                       ; $6317: $58
    rrca                                          ; $6318: $0f
    ld d, a                                       ; $6319: $57
    ld d, a                                       ; $631a: $57
    ld e, [hl]                                    ; $631b: $5e

jr_0ce_631c:
    ld e, l                                       ; $631c: $5d
    cp l                                          ; $631d: $bd
    ld bc, $0196                                  ; $631e: $01 $96 $01
    add hl, hl                                    ; $6321: $29
    add hl, hl                                    ; $6322: $29
    and b                                         ; $6323: $a0
    jr nz, jr_0ce_6326                            ; $6324: $20 $00

jr_0ce_6326:
    ld c, h                                       ; $6326: $4c
    ld c, c                                       ; $6327: $49
    ld h, [hl]                                    ; $6328: $66
    ld b, b                                       ; $6329: $40
    ld b, b                                       ; $632a: $40
    ld h, c                                       ; $632b: $61
    ld h, b                                       ; $632c: $60
    ld e, a                                       ; $632d: $5f
    ld a, a                                       ; $632e: $7f
    ld e, a                                       ; $632f: $5f

jr_0ce_6330:
    jr nz, jr_0ce_6342                            ; $6330: $20 $10

    ld b, b                                       ; $6332: $40
    db $10                                        ; $6333: $10
    jr nz, @+$32                                  ; $6334: $20 $30

    ld b, b                                       ; $6336: $40
    jr nc, jr_0ce_6359                            ; $6337: $30 $20

    ld [$1060], sp                                ; $6339: $08 $60 $10
    cp $11                                        ; $633c: $fe $11
    sbc l                                         ; $633e: $9d
    ld h, b                                       ; $633f: $60
    jr jr_0ce_6388                                ; $6340: $18 $46

jr_0ce_6342:
    ld b, a                                       ; $6342: $47
    jp c, $0e18                                   ; $6343: $da $18 $0e

    ld a, [bc]                                    ; $6346: $0a
    ld h, b                                       ; $6347: $60
    ld [$1f4f], sp                                ; $6348: $08 $4f $1f
    ld [de], a                                    ; $634b: $12
    sbc $8a                                       ; $634c: $de $8a
    ld de, $01b9                                  ; $634e: $11 $b9 $01
    ld d, d                                       ; $6351: $52
    jp nz, $e801                                  ; $6352: $c2 $01 $e8

    ld bc, $221f                                  ; $6355: $01 $1f $22
    and b                                         ; $6358: $a0

jr_0ce_6359:
    ld [$7d40], sp                                ; $6359: $08 $40 $7d
    ld h, a                                       ; $635c: $67
    ld [hl+], a                                   ; $635d: $22
    add hl, bc                                    ; $635e: $09
    ld [bc], a                                    ; $635f: $02
    ld hl, $11c2                                  ; $6360: $21 $c2 $11
    add sp, $01                                   ; $6363: $e8 $01
    jr nz, jr_0ce_63b1                            ; $6365: $20 $4a

    ld b, h                                       ; $6367: $44
    ld [hl+], a                                   ; $6368: $22
    ld bc, $02e0                                  ; $6369: $01 $e0 $02
    ld sp, $21c4                                  ; $636c: $31 $c4 $21
    ld h, b                                       ; $636f: $60
    ld b, d                                       ; $6370: $42
    add hl, bc                                    ; $6371: $09
    add hl, bc                                    ; $6372: $09
    dec bc                                        ; $6373: $0b
    dec bc                                        ; $6374: $0b
    dec hl                                        ; $6375: $2b
    ld b, l                                       ; $6376: $45
    ld [$3001], sp                                ; $6377: $08 $01 $30
    inc c                                         ; $637a: $0c
    inc c                                         ; $637b: $0c
    inc l                                         ; $637c: $2c
    dec c                                         ; $637d: $0d
    db $10                                        ; $637e: $10
    add hl, bc                                    ; $637f: $09
    ld bc, $1930                                  ; $6380: $01 $30 $19
    ld [$0a0b], sp                                ; $6383: $08 $0b $0a
    jr nz, jr_0ce_63a0                            ; $6386: $20 $18

jr_0ce_6388:
    jr z, jr_0ce_639a                             ; $6388: $28 $10

    inc c                                         ; $638a: $0c
    ld a, [bc]                                    ; $638b: $0a
    jr nz, jr_0ce_639e                            ; $638c: $20 $10

    add e                                         ; $638e: $83
    rra                                           ; $638f: $1f
    jr c, jr_0ce_639b                             ; $6390: $38 $09

    ld [$4b4b], sp                                ; $6392: $08 $4b $4b
    ld l, e                                       ; $6395: $6b
    jr nz, jr_0ce_63b0                            ; $6396: $20 $18

    jr z, jr_0ce_63a2                             ; $6398: $28 $08

jr_0ce_639a:
    add hl, de                                    ; $639a: $19

jr_0ce_639b:
    ld c, h                                       ; $639b: $4c
    ld c, h                                       ; $639c: $4c
    ld l, h                                       ; $639d: $6c

jr_0ce_639e:
    ccf                                           ; $639e: $3f
    ld h, b                                       ; $639f: $60

jr_0ce_63a0:
    jr c, jr_0ce_63a2                             ; $63a0: $38 $00

jr_0ce_63a2:
    dec bc                                        ; $63a2: $0b
    dec bc                                        ; $63a3: $0b
    ld b, b                                       ; $63a4: $40
    db $10                                        ; $63a5: $10
    ld h, b                                       ; $63a6: $60
    ld c, e                                       ; $63a7: $4b
    ld l, b                                       ; $63a8: $68
    jr jr_0ce_640e                                ; $63a9: $18 $63

    nop                                           ; $63ab: $00
    inc l                                         ; $63ac: $2c
    add hl, bc                                    ; $63ad: $09
    dec c                                         ; $63ae: $0d
    dec c                                         ; $63af: $0d

jr_0ce_63b0:
    dec l                                         ; $63b0: $2d

jr_0ce_63b1:
    ldh a, [$5f]                                  ; $63b1: $f0 $5f
    jr z, jr_0ce_63b6                             ; $63b3: $28 $01

    db $10                                        ; $63b5: $10

jr_0ce_63b6:
    add d                                         ; $63b6: $82
    ld c, b                                       ; $63b7: $48
    jr nz, jr_0ce_63ba                            ; $63b8: $20 $00

jr_0ce_63ba:
    dec c                                         ; $63ba: $0d
    dec c                                         ; $63bb: $0d
    ld a, [bc]                                    ; $63bc: $0a
    dec c                                         ; $63bd: $0d
    ld h, h                                       ; $63be: $64
    add hl, bc                                    ; $63bf: $09
    dec h                                         ; $63c0: $25
    ld [$0877], sp                                ; $63c1: $08 $77 $08
    ld a, [bc]                                    ; $63c4: $0a
    ld a, [hl+]                                   ; $63c5: $2a
    jr nz, @+$5a                                  ; $63c6: $20 $58

    ld a, [bc]                                    ; $63c8: $0a
    ld a, [hl+]                                   ; $63c9: $2a

jr_0ce_63ca:
    dec b                                         ; $63ca: $05
    dec c                                         ; $63cb: $0d
    dec c                                         ; $63cc: $0d
    ld c, l                                       ; $63cd: $4d
    dec c                                         ; $63ce: $0d
    ld l, l                                       ; $63cf: $6d
    ld b, h                                       ; $63d0: $44
    nop                                           ; $63d1: $00
    ld a, [bc]                                    ; $63d2: $0a
    ld b, l                                       ; $63d3: $45
    nop                                           ; $63d4: $00
    inc bc                                        ; $63d5: $03
    ld c, e                                       ; $63d6: $4b
    ld c, e                                       ; $63d7: $4b
    ld c, d                                       ; $63d8: $4a
    ld l, d                                       ; $63d9: $6a
    ld c, e                                       ; $63da: $4b
    ld c, e                                       ; $63db: $4b
    sbc a                                         ; $63dc: $9f
    ld [$18ba], sp                                ; $63dd: $08 $ba $18
    ld [bc], a                                    ; $63e0: $02
    ld c, h                                       ; $63e1: $4c
    ld c, h                                       ; $63e2: $4c
    ld c, d                                       ; $63e3: $4a
    ld l, d                                       ; $63e4: $6a
    ld c, l                                       ; $63e5: $4d
    ld c, l                                       ; $63e6: $4d
    ret nz                                        ; $63e7: $c0

    db $10                                        ; $63e8: $10
    dec c                                         ; $63e9: $0d
    inc a                                         ; $63ea: $3c
    ld c, l                                       ; $63eb: $4d
    dec l                                         ; $63ec: $2d
    sbc a                                         ; $63ed: $9f
    ld [$0802], sp                                ; $63ee: $08 $02 $08
    sbc a                                         ; $63f1: $9f
    jr nz, jr_0ce_6414                            ; $63f2: $20 $20

    db $10                                        ; $63f4: $10
    ld c, h                                       ; $63f5: $4c
    ld c, l                                       ; $63f6: $4d
    and c                                         ; $63f7: $a1
    jr nz, @+$22                                  ; $63f8: $20 $20

    add hl, bc                                    ; $63fa: $09
    ld h, h                                       ; $63fb: $64
    nop                                           ; $63fc: $00

jr_0ce_63fd:
    dec bc                                        ; $63fd: $0b
    dec hl                                        ; $63fe: $2b
    ld c, e                                       ; $63ff: $4b
    ld l, e                                       ; $6400: $6b
    ccf                                           ; $6401: $3f
    ld [$c7ff], sp                                ; $6402: $08 $ff $c7
    jr nc, jr_0ce_63ca                            ; $6405: $30 $c3

    nop                                           ; $6407: $00
    rra                                           ; $6408: $1f
    jr z, jr_0ce_644e                             ; $6409: $28 $43

    ld [$08fd], sp                                ; $640b: $08 $fd $08

jr_0ce_640e:
    ld [hl+], a                                   ; $640e: $22
    add hl, hl                                    ; $640f: $29
    dec e                                         ; $6410: $1d
    ld hl, $185c                                  ; $6411: $21 $5c $18

jr_0ce_6414:
    cp a                                          ; $6414: $bf
    pop bc                                        ; $6415: $c1
    jr jr_0ce_6425                                ; $6416: $18 $0d

    db $fd                                        ; $6418: $fd
    ld [$2922], sp                                ; $6419: $08 $22 $29
    dec e                                         ; $641c: $1d
    add hl, bc                                    ; $641d: $09
    ld b, c                                       ; $641e: $41
    ld bc, $2039                                  ; $641f: $01 $39 $20
    pop hl                                        ; $6422: $e1
    db $10                                        ; $6423: $10
    ld h, a                                       ; $6424: $67

jr_0ce_6425:
    ld c, l                                       ; $6425: $4d
    ld a, [$0220]                                 ; $6426: $fa $20 $02
    ld de, $4c0c                                  ; $6429: $11 $0c $4c
    jr nz, jr_0ce_642e                            ; $642c: $20 $00

jr_0ce_642e:
    ld b, c                                       ; $642e: $41
    ld bc, $289c                                  ; $642f: $01 $9c $28
    jp $0965                                      ; $6432: $c3 $65 $09


    ld a, h                                       ; $6435: $7c
    ld b, c                                       ; $6436: $41
    dec bc                                        ; $6437: $0b
    dec bc                                        ; $6438: $0b
    inc c                                         ; $6439: $0c
    inc c                                         ; $643a: $0c
    ld b, c                                       ; $643b: $41
    add hl, de                                    ; $643c: $19
    ld a, [hl]                                    ; $643d: $7e
    add hl, hl                                    ; $643e: $29
    rrca                                          ; $643f: $0f
    dec l                                         ; $6440: $2d
    dec l                                         ; $6441: $2d
    dec c                                         ; $6442: $0d
    dec hl                                        ; $6443: $2b
    sbc l                                         ; $6444: $9d
    add hl, bc                                    ; $6445: $09
    and e                                         ; $6446: $a3
    ld de, $00e1                                  ; $6447: $11 $e1 $00
    inc e                                         ; $644a: $1c
    ld bc, $9ddc                                  ; $644b: $01 $dc $9d

jr_0ce_644e:
    ld hl, $1140                                  ; $644e: $21 $40 $11
    dec l                                         ; $6451: $2d
    ld bc, $2000                                  ; $6452: $01 $00 $20
    jr jr_0ce_63fd                                ; $6455: $18 $a6

    jr jr_0ce_6463                                ; $6457: $18 $0a

    ld a, [hl+]                                   ; $6459: $2a
    pop bc                                        ; $645a: $c1
    jr nz, jr_0ce_646d                            ; $645b: $20 $10

    ld a, a                                       ; $645d: $7f
    jr nc, jr_0ce_648d                            ; $645e: $30 $2d

    dec l                                         ; $6460: $2d
    ld a, [bc]                                    ; $6461: $0a
    ld a, [hl+]                                   ; $6462: $2a

jr_0ce_6463:
    ld l, e                                       ; $6463: $6b
    and b                                         ; $6464: $a0
    ld [$a3cc], sp                                ; $6465: $08 $cc $a3
    ld de, $0929                                  ; $6468: $11 $29 $09
    ld c, h                                       ; $646b: $4c
    ld c, h                                       ; $646c: $4c

jr_0ce_646d:
    db $e4                                        ; $646d: $e4
    add hl, bc                                    ; $646e: $09
    sbc b                                         ; $646f: $98
    ld [$6d4d], sp                                ; $6470: $08 $4d $6d
    inc bc                                        ; $6473: $03
    add hl, bc                                    ; $6474: $09
    add hl, bc                                    ; $6475: $09
    ld l, l                                       ; $6476: $6d
    ld l, l                                       ; $6477: $6d
    ld c, d                                       ; $6478: $4a
    ld l, d                                       ; $6479: $6a
    jr nz, @+$0a                                  ; $647a: $20 $08

    rst $38                                       ; $647c: $ff
    add hl, de                                    ; $647d: $19
    inc e                                         ; $647e: $1c
    ld c, e                                       ; $647f: $4b
    ld c, e                                       ; $6480: $4b
    ld l, h                                       ; $6481: $6c
    inc e                                         ; $6482: $1c
    ld bc, $1203                                  ; $6483: $01 $03 $12
    cp $21                                        ; $6486: $fe $21
    ld l, l                                       ; $6488: $6d
    ld l, l                                       ; $6489: $6d
    rra                                           ; $648a: $1f
    ld l, l                                       ; $648b: $6d
    ld c, l                                       ; $648c: $4d

jr_0ce_648d:
    ld l, e                                       ; $648d: $6b
    ld a, h                                       ; $648e: $7c
    jr nz, jr_0ce_64b5                            ; $648f: $20 $24

    ld [bc], a                                    ; $6491: $02
    jp hl                                         ; $6492: $e9


    ld bc, $103f                                  ; $6493: $01 $3f $10
    jp nz, $9e20                                  ; $6496: $c2 $20 $9e

    ld hl, $4d10                                  ; $6499: $21 $10 $4d
    add hl, bc                                    ; $649c: $09
    ld a, h                                       ; $649d: $7c
    jr @+$26                                      ; $649e: $18 $24

    ld [hl+], a                                   ; $64a0: $22
    and $28                                       ; $64a1: $e6 $28
    jr nz, jr_0ce_64e7                            ; $64a3: $20 $42

    ld c, l                                       ; $64a5: $4d
    ldh a, [rNR43]                                ; $64a6: $f0 $22
    ld de, $21fc                                  ; $64a8: $11 $fc $21
    ld l, c                                       ; $64ab: $69
    ld [hl-], a                                   ; $64ac: $32
    ld h, b                                       ; $64ad: $60
    ld [hl-], a                                   ; $64ae: $32
    jr nz, jr_0ce_64b1                            ; $64af: $20 $00

jr_0ce_64b1:
    dec c                                         ; $64b1: $0d
    nop                                           ; $64b2: $00
    cp [hl]                                       ; $64b3: $be
    nop                                           ; $64b4: $00

jr_0ce_64b5:
    db $10                                        ; $64b5: $10
    ld b, b                                       ; $64b6: $40
    ld b, b                                       ; $64b7: $40
    ld b, c                                       ; $64b8: $41
    ld bc, $4200                                  ; $64b9: $01 $00 $42
    ld b, d                                       ; $64bc: $42
    ld b, e                                       ; $64bd: $43
    ld b, e                                       ; $64be: $43
    inc [hl]                                      ; $64bf: $34
    ld b, d                                       ; $64c0: $42
    ld b, d                                       ; $64c1: $42
    ld a, [bc]                                    ; $64c2: $0a
    ld [$7010], sp                                ; $64c3: $08 $10 $70
    ld b, h                                       ; $64c6: $44
    ld bc, $4500                                  ; $64c7: $01 $00 $45
    ld b, l                                       ; $64ca: $45
    dec bc                                        ; $64cb: $0b
    ld b, [hl]                                    ; $64cc: $46
    ld b, [hl]                                    ; $64cd: $46
    ld b, l                                       ; $64ce: $45
    ld b, l                                       ; $64cf: $45
    ld a, [bc]                                    ; $64d0: $0a
    ld [$1040], sp                                ; $64d1: $08 $40 $10
    ld [hl], b                                    ; $64d4: $70
    ld [bc], a                                    ; $64d5: $02
    ld c, b                                       ; $64d6: $48
    jr nz, jr_0ce_6520                            ; $64d7: $20 $47

    ld c, b                                       ; $64d9: $48
    inc c                                         ; $64da: $0c
    adc b                                         ; $64db: $88
    ld c, c                                       ; $64dc: $49
    ld c, d                                       ; $64dd: $4a
    ld c, e                                       ; $64de: $4b
    ld c, c                                       ; $64df: $49
    ld c, h                                       ; $64e0: $4c
    add d                                         ; $64e1: $82
    rlca                                          ; $64e2: $07
    nop                                           ; $64e3: $00
    ld c, l                                       ; $64e4: $4d
    ld c, [hl]                                    ; $64e5: $4e
    ld c, a                                       ; $64e6: $4f

jr_0ce_64e7:
    ld d, b                                       ; $64e7: $50
    ld d, c                                       ; $64e8: $51
    inc c                                         ; $64e9: $0c
    ld l, b                                       ; $64ea: $68
    ld d, d                                       ; $64eb: $52
    ld bc, $5347                                  ; $64ec: $01 $47 $53
    ld d, h                                       ; $64ef: $54
    ld d, l                                       ; $64f0: $55
    ld d, [hl]                                    ; $64f1: $56
    ld d, a                                       ; $64f2: $57
    ld e, b                                       ; $64f3: $58
    ld [$0400], sp                                ; $64f4: $08 $00 $04
    ld e, c                                       ; $64f7: $59
    ld e, d                                       ; $64f8: $5a
    ld e, e                                       ; $64f9: $5b
    ld e, h                                       ; $64fa: $5c
    ld e, l                                       ; $64fb: $5d
    inc c                                         ; $64fc: $0c
    ld l, b                                       ; $64fd: $68
    ld e, [hl]                                    ; $64fe: $5e
    ld e, a                                       ; $64ff: $5f
    ld [bc], a                                    ; $6500: $02
    ld h, b                                       ; $6501: $60
    ld h, c                                       ; $6502: $61
    ld h, d                                       ; $6503: $62
    ld h, c                                       ; $6504: $61
    ld h, c                                       ; $6505: $61
    ld h, b                                       ; $6506: $60
    ld [$6200], sp                                ; $6507: $08 $00 $62
    ld a, [bc]                                    ; $650a: $0a
    ld h, e                                       ; $650b: $63
    ld h, h                                       ; $650c: $64
    ld h, l                                       ; $650d: $65
    ld h, [hl]                                    ; $650e: $66
    inc c                                         ; $650f: $0c
    nop                                           ; $6510: $00
    ld h, d                                       ; $6511: $62
    inc d                                         ; $6512: $14
    nop                                           ; $6513: $00
    ld h, a                                       ; $6514: $67
    and b                                         ; $6515: $a0
    inc c                                         ; $6516: $0c
    nop                                           ; $6517: $00
    ld l, b                                       ; $6518: $68
    jr jr_0ce_6523                                ; $6519: $18 $08

    ld l, c                                       ; $651b: $69
    ld l, d                                       ; $651c: $6a
    ld l, e                                       ; $651d: $6b
    ld l, d                                       ; $651e: $6a
    ld l, h                                       ; $651f: $6c

jr_0ce_6520:
    db $10                                        ; $6520: $10
    ld l, l                                       ; $6521: $6d
    ld l, [hl]                                    ; $6522: $6e

jr_0ce_6523:
    ld l, a                                       ; $6523: $6f
    ld [$7000], sp                                ; $6524: $08 $00 $70
    ld [hl], c                                    ; $6527: $71
    ld [hl], d                                    ; $6528: $72
    ld e, h                                       ; $6529: $5c
    ld [bc], a                                    ; $652a: $02
    ld e, e                                       ; $652b: $5b
    ld [hl], e                                    ; $652c: $73
    ld l, h                                       ; $652d: $6c
    ld l, l                                       ; $652e: $6d
    ld l, h                                       ; $652f: $6c
    ld l, [hl]                                    ; $6530: $6e
    inc c                                         ; $6531: $0c
    jr c, jr_0ce_65a2                             ; $6532: $38 $6e

    nop                                           ; $6534: $00
    ld [hl], h                                    ; $6535: $74
    ld [hl], l                                    ; $6536: $75
    halt                                          ; $6537: $76
    ld d, h                                       ; $6538: $54
    ld [hl], a                                    ; $6539: $77
    ld a, b                                       ; $653a: $78
    ld a, c                                       ; $653b: $79
    ld a, d                                       ; $653c: $7a
    sbc b                                         ; $653d: $98
    ld [$7b00], sp                                ; $653e: $08 $00 $7b
    ld a, h                                       ; $6541: $7c
    ld l, h                                       ; $6542: $6c
    db $10                                        ; $6543: $10
    inc c                                         ; $6544: $0c
    ld e, b                                       ; $6545: $58
    ld a, l                                       ; $6546: $7d
    ld a, [hl]                                    ; $6547: $7e
    ld a, a                                       ; $6548: $7f
    ld b, b                                       ; $6549: $40
    ld c, c                                       ; $654a: $49
    ld [bc], a                                    ; $654b: $02
    nop                                           ; $654c: $00
    add b                                         ; $654d: $80
    ld a, l                                       ; $654e: $7d
    ld a, [hl]                                    ; $654f: $7e
    add c                                         ; $6550: $81
    add d                                         ; $6551: $82
    ld b, a                                       ; $6552: $47
    cp $ac                                        ; $6553: $fe $ac
    db $10                                        ; $6555: $10
    inc c                                         ; $6556: $0c
    ld e, b                                       ; $6557: $58
    pop hl                                        ; $6558: $e1
    ld e, b                                       ; $6559: $58
    ld c, $f8                                     ; $655a: $0e $f8
    jr nc, jr_0ce_65ce                            ; $655c: $30 $70

    ld b, b                                       ; $655e: $40
    pop af                                        ; $655f: $f1
    add b                                         ; $6560: $80
    reti                                          ; $6561: $d9


    inc c                                         ; $6562: $0c
    rrca                                          ; $6563: $0f
    inc c                                         ; $6564: $0c
    dec bc                                        ; $6565: $0b
    dec bc                                        ; $6566: $0b
    inc c                                         ; $6567: $0c
    ld bc, $0c30                                  ; $6568: $01 $30 $0c
    ld [$6010], sp                                ; $656b: $08 $10 $60
    rra                                           ; $656e: $1f
    ldh a, [$8e]                                  ; $656f: $f0 $8e
    ld [bc], a                                    ; $6571: $02
    ld hl, sp+$0b                                 ; $6572: $f8 $0b
    dec bc                                        ; $6574: $0b
    dec hl                                        ; $6575: $2b
    inc b                                         ; $6576: $04
    jr nz, jr_0ce_6585                            ; $6577: $20 $0c

    adc b                                         ; $6579: $88
    ld b, d                                       ; $657a: $42
    ld b, b                                       ; $657b: $40
    add hl, bc                                    ; $657c: $09
    ld d, d                                       ; $657d: $52
    add hl, bc                                    ; $657e: $09
    inc c                                         ; $657f: $0c
    add b                                         ; $6580: $80
    add hl, bc                                    ; $6581: $09
    ld bc, $2900                                  ; $6582: $01 $00 $29

jr_0ce_6585:
    add hl, hl                                    ; $6585: $29
    dec e                                         ; $6586: $1d
    nop                                           ; $6587: $00
    add hl, hl                                    ; $6588: $29
    or $0a                                        ; $6589: $f6 $0a
    ld [$200c], sp                                ; $658b: $08 $0c $20
    dec d                                         ; $658e: $15
    ld [$002f], sp                                ; $658f: $08 $2f $00
    add hl, hl                                    ; $6592: $29
    inc d                                         ; $6593: $14
    jr nz, jr_0ce_659c                            ; $6594: $20 $06

    jr nz, @+$0d                                  ; $6596: $20 $0b

    ld hl, $6969                                  ; $6598: $21 $69 $69
    inc c                                         ; $659b: $0c

jr_0ce_659c:
    ld l, b                                       ; $659c: $68
    dec bc                                        ; $659d: $0b
    add hl, bc                                    ; $659e: $09
    dec bc                                        ; $659f: $0b
    ld l, e                                       ; $65a0: $6b
    ld e, h                                       ; $65a1: $5c

jr_0ce_65a2:
    jr @-$47                                      ; $65a2: $18 $b7

    xor d                                         ; $65a4: $aa
    nop                                           ; $65a5: $00
    ld c, e                                       ; $65a6: $4b
    ld bc, $0c08                                  ; $65a7: $01 $08 $0c
    ld h, b                                       ; $65aa: $60
    dec bc                                        ; $65ab: $0b
    jr nz, jr_0ce_65ae                            ; $65ac: $20 $00

jr_0ce_65ae:
    ld [$2918], sp                                ; $65ae: $08 $18 $29
    ld [$14f0], sp                                ; $65b1: $08 $f0 $14
    jr z, @+$0e                                   ; $65b4: $28 $0c

    ld d, b                                       ; $65b6: $50
    db $e4                                        ; $65b7: $e4
    ld hl, sp+$06                                 ; $65b8: $f8 $06
    cp c                                          ; $65ba: $b9
    inc c                                         ; $65bb: $0c
    ld c, e                                       ; $65bc: $4b
    ld c, e                                       ; $65bd: $4b
    ld c, h                                       ; $65be: $4c
    adc h                                         ; $65bf: $8c
    ld bc, $4b30                                  ; $65c0: $01 $30 $4b
    ld c, e                                       ; $65c3: $4b
    inc c                                         ; $65c4: $0c
    db $10                                        ; $65c5: $10
    ld [hl], b                                    ; $65c6: $70
    add b                                         ; $65c7: $80
    pop hl                                        ; $65c8: $e1
    jr nz, jr_0ce_65cb                            ; $65c9: $20 $00

jr_0ce_65cb:
    ld c, $00                                     ; $65cb: $0e $00
    reti                                          ; $65cd: $d9


jr_0ce_65ce:
    ld bc, $4000                                  ; $65ce: $01 $00 $40
    ld b, c                                       ; $65d1: $41
    ld b, d                                       ; $65d2: $42
    ld b, e                                       ; $65d3: $43
    ld b, h                                       ; $65d4: $44
    ld b, h                                       ; $65d5: $44
    ld b, h                                       ; $65d6: $44
    ld b, e                                       ; $65d7: $43
    nop                                           ; $65d8: $00
    ld b, l                                       ; $65d9: $45
    ld b, [hl]                                    ; $65da: $46
    ld b, a                                       ; $65db: $47
    ld c, b                                       ; $65dc: $48
    ld c, c                                       ; $65dd: $49
    ld c, d                                       ; $65de: $4a
    ld c, e                                       ; $65df: $4b
    ld c, h                                       ; $65e0: $4c
    jr nc, @+$4f                                  ; $65e1: $30 $4d

    ld c, [hl]                                    ; $65e3: $4e
    ld c, $00                                     ; $65e4: $0e $00
    ld de, $4f00                                  ; $65e6: $11 $00 $4f
    ld b, d                                       ; $65e9: $42
    ld b, c                                       ; $65ea: $41
    ld c, e                                       ; $65eb: $4b
    ld [$4a4a], sp                                ; $65ec: $08 $4a $4a
    ld c, e                                       ; $65ef: $4b
    ld d, b                                       ; $65f0: $50
    ld [de], a                                    ; $65f1: $12
    ld [$5251], sp                                ; $65f2: $08 $51 $52
    ld d, e                                       ; $65f5: $53
    nop                                           ; $65f6: $00
    ld b, h                                       ; $65f7: $44
    ld b, l                                       ; $65f8: $45
    ld c, a                                       ; $65f9: $4f
    ld b, d                                       ; $65fa: $42
    ld d, h                                       ; $65fb: $54
    ld d, l                                       ; $65fc: $55
    ld d, [hl]                                    ; $65fd: $56
    ld c, d                                       ; $65fe: $4a
    db $10                                        ; $65ff: $10
    ld d, b                                       ; $6600: $50
    ld d, a                                       ; $6601: $57
    ld e, b                                       ; $6602: $58
    dec l                                         ; $6603: $2d
    ld [$4444], sp                                ; $6604: $08 $44 $44
    ld b, [hl]                                    ; $6607: $46
    ld c, a                                       ; $6608: $4f
    or b                                          ; $6609: $b0
    cpl                                           ; $660a: $2f
    nop                                           ; $660b: $00
    ld d, [hl]                                    ; $660c: $56
    ld [bc], a                                    ; $660d: $02
    nop                                           ; $660e: $00
    ld [de], a                                    ; $660f: $12
    nop                                           ; $6610: $00
    ld e, c                                       ; $6611: $59
    ld e, d                                       ; $6612: $5a
    ld e, e                                       ; $6613: $5b
    ld b, h                                       ; $6614: $44
    nop                                           ; $6615: $00
    ld b, e                                       ; $6616: $43
    ld b, [hl]                                    ; $6617: $46
    ld c, a                                       ; $6618: $4f
    ld e, h                                       ; $6619: $5c
    ld e, l                                       ; $661a: $5d
    ld d, b                                       ; $661b: $50
    ld c, d                                       ; $661c: $4a
    ld b, b                                       ; $661d: $40
    ld [bc], a                                    ; $661e: $02
    ld e, [hl]                                    ; $661f: $5e
    ld e, a                                       ; $6620: $5f
    ld h, b                                       ; $6621: $60
    ld b, h                                       ; $6622: $44
    ld c, a                                       ; $6623: $4f
    ld b, [hl]                                    ; $6624: $46
    ld b, c                                       ; $6625: $41
    db $10                                        ; $6626: $10
    ld d, h                                       ; $6627: $54
    add hl, bc                                    ; $6628: $09
    ld d, l                                       ; $6629: $55
    ld c, b                                       ; $662a: $48
    ld c, c                                       ; $662b: $49
    ld d, [hl]                                    ; $662c: $56
    ld [de], a                                    ; $662d: $12
    ld [$6261], sp                                ; $662e: $08 $61 $62
    jr nc, jr_0ce_6633                            ; $6631: $30 $00

jr_0ce_6633:
    nop                                           ; $6633: $00
    ld e, e                                       ; $6634: $5b
    ld b, e                                       ; $6635: $43
    ld h, e                                       ; $6636: $63
    ld h, h                                       ; $6637: $64
    ld h, l                                       ; $6638: $65
    ld d, [hl]                                    ; $6639: $56
    ld c, d                                       ; $663a: $4a
    ld c, d                                       ; $663b: $4a
    add hl, de                                    ; $663c: $19
    ld b, b                                       ; $663d: $40
    ld h, [hl]                                    ; $663e: $66
    ld h, a                                       ; $663f: $67
    ld [hl], d                                    ; $6640: $72
    db $10                                        ; $6641: $10
    jr nc, jr_0ce_664c                            ; $6642: $30 $08

    ld d, h                                       ; $6644: $54
    ld d, l                                       ; $6645: $55
    ld b, e                                       ; $6646: $43
    nop                                           ; $6647: $00
    inc b                                         ; $6648: $04
    ld b, b                                       ; $6649: $40
    ld l, b                                       ; $664a: $68
    ld l, c                                       ; $664b: $69

jr_0ce_664c:
    ld b, e                                       ; $664c: $43
    ld e, e                                       ; $664d: $5b
    add h                                         ; $664e: $84
    db $10                                        ; $664f: $10
    ld e, b                                       ; $6650: $58
    ld b, c                                       ; $6651: $41
    nop                                           ; $6652: $00
    ld h, c                                       ; $6653: $61
    ld b, b                                       ; $6654: $40
    ld c, d                                       ; $6655: $4a
    ld c, d                                       ; $6656: $4a
    ld d, [hl]                                    ; $6657: $56
    ld h, l                                       ; $6658: $65
    ld h, h                                       ; $6659: $64
    ld h, e                                       ; $665a: $63
    add d                                         ; $665b: $82
    sub d                                         ; $665c: $92
    ld [$6344], sp                                ; $665d: $08 $44 $63
    ld h, h                                       ; $6660: $64
    ld e, h                                       ; $6661: $5c
    ld e, l                                       ; $6662: $5d
    add h                                         ; $6663: $84
    ld [$0840], sp                                ; $6664: $08 $40 $08
    ld l, d                                       ; $6667: $6a
    ld l, e                                       ; $6668: $6b
    ld c, a                                       ; $6669: $4f
    ld b, [hl]                                    ; $666a: $46
    and l                                         ; $666b: $a5
    nop                                           ; $666c: $00
    ld c, a                                       ; $666d: $4f
    ld b, d                                       ; $666e: $42
    ld d, a                                       ; $666f: $57
    nop                                           ; $6670: $00
    ld h, c                                       ; $6671: $61
    ld e, a                                       ; $6672: $5f
    ld e, [hl]                                    ; $6673: $5e
    ld b, b                                       ; $6674: $40
    ld c, d                                       ; $6675: $4a
    ld d, b                                       ; $6676: $50
    ld e, l                                       ; $6677: $5d
    ld e, h                                       ; $6678: $5c
    add d                                         ; $6679: $82
    db $10                                        ; $667a: $10
    jr nz, jr_0ce_66e0                            ; $667b: $20 $63

    ld h, h                                       ; $667d: $64
    ld d, b                                       ; $667e: $50
    ld c, b                                       ; $667f: $48
    ld d, [hl]                                    ; $6680: $56
    ld hl, $4100                                  ; $6681: $21 $00 $41
    jr nz, jr_0ce_66c8                            ; $6684: $20 $42

    ld c, a                                       ; $6686: $4f
    ld d, d                                       ; $6687: $52
    db $10                                        ; $6688: $10
    ld e, d                                       ; $6689: $5a
    ld e, c                                       ; $668a: $59
    ld e, b                                       ; $668b: $58
    ld d, a                                       ; $668c: $57
    ld d, b                                       ; $668d: $50
    ld b, $4a                                     ; $668e: $06 $4a
    ld d, [hl]                                    ; $6690: $56
    ld d, l                                       ; $6691: $55
    ld d, h                                       ; $6692: $54
    ld b, d                                       ; $6693: $42
    and d                                         ; $6694: $a2
    nop                                           ; $6695: $00
    and e                                         ; $6696: $a3
    nop                                           ; $6697: $00
    ld b, e                                       ; $6698: $43
    jr jr_0ce_66dd                                ; $6699: $18 $42

    ld c, h                                       ; $669b: $4c
    ld l, c                                       ; $669c: $69
    sub $20                                       ; $669d: $d6 $20
    call nz, Call_0ce_4300                        ; $669f: $c4 $00 $43
    ld d, e                                       ; $66a2: $53
    ld d, d                                       ; $66a3: $52
    nop                                           ; $66a4: $00
    ld d, c                                       ; $66a5: $51
    ld c, [hl]                                    ; $66a6: $4e
    ld c, l                                       ; $66a7: $4d
    ld c, h                                       ; $66a8: $4c
    ld c, e                                       ; $66a9: $4b
    ld c, d                                       ; $66aa: $4a
    ld c, c                                       ; $66ab: $49
    ld c, b                                       ; $66ac: $48
    ld l, c                                       ; $66ad: $69
    ld b, a                                       ; $66ae: $47
    and d                                         ; $66af: $a2
    ld [$08b4], sp                                ; $66b0: $08 $b4 $08
    ld b, [hl]                                    ; $66b3: $46
    sub $28                                       ; $66b4: $d6 $28
    ld e, c                                       ; $66b6: $59
    ld e, d                                       ; $66b7: $5a
    ld h, h                                       ; $66b8: $64
    jr nz, jr_0ce_66bc                            ; $66b9: $20 $01

    ld b, c                                       ; $66bb: $41

jr_0ce_66bc:
    ld b, b                                       ; $66bc: $40
    ld c, e                                       ; $66bd: $4b
    ld c, d                                       ; $66be: $4a
    ld d, [hl]                                    ; $66bf: $56
    ld b, d                                       ; $66c0: $42
    ld c, a                                       ; $66c1: $4f
    call nz, Call_0ce_5208                        ; $66c2: $c4 $08 $52
    ld b, e                                       ; $66c5: $43
    sbc b                                         ; $66c6: $98
    nop                                           ; $66c7: $00

jr_0ce_66c8:
    ld b, a                                       ; $66c8: $47
    sub $20                                       ; $66c9: $d6 $20
    ld h, c                                       ; $66cb: $61
    ld d, a                                       ; $66cc: $57
    or [hl]                                       ; $66cd: $b6
    jr nz, @+$6d                                  ; $66ce: $20 $6b

    ld [hl], h                                    ; $66d0: $74
    ld l, d                                       ; $66d1: $6a
    ld hl, $c400                                  ; $66d2: $21 $00 $c4
    nop                                           ; $66d5: $00
    daa                                           ; $66d6: $27
    add hl, de                                    ; $66d7: $19
    ld b, e                                       ; $66d8: $43
    sub $28                                       ; $66d9: $d6 $28
    ld h, c                                       ; $66db: $61
    ld b, c                                       ; $66dc: $41

jr_0ce_66dd:
    db $10                                        ; $66dd: $10
    ld e, b                                       ; $66de: $58
    ld b, e                                       ; $66df: $43

jr_0ce_66e0:
    ld b, h                                       ; $66e0: $44
    rst $00                                       ; $66e1: $c7
    ld [$6943], sp                                ; $66e2: $08 $43 $69
    ld l, b                                       ; $66e5: $68
    ld b, b                                       ; $66e6: $40
    ret nz                                        ; $66e7: $c0

    call nz, $7208                                ; $66e8: $c4 $08 $72
    db $10                                        ; $66eb: $10
    ld b, e                                       ; $66ec: $43
    ld b, h                                       ; $66ed: $44
    ld b, l                                       ; $66ee: $45
    ld b, e                                       ; $66ef: $43
    ld b, d                                       ; $66f0: $42
    ld h, a                                       ; $66f1: $67
    dec [hl]                                      ; $66f2: $35
    ld h, [hl]                                    ; $66f3: $66
    ld h, c                                       ; $66f4: $61
    rlca                                          ; $66f5: $07
    ld bc, $015a                                  ; $66f6: $01 $5a $01
    ld l, h                                       ; $66f9: $6c
    rst $00                                       ; $66fa: $c7
    ld [$c462], sp                                ; $66fb: $08 $62 $c4
    jr nz, @-$3b                                  ; $66fe: $20 $c3

    ld [hl], $11                                  ; $6700: $36 $11
    ld h, e                                       ; $6702: $63
    nop                                           ; $6703: $00
    ld b, [hl]                                    ; $6704: $46
    ld b, e                                       ; $6705: $43
    ld b, e                                       ; $6706: $43
    ld h, b                                       ; $6707: $60
    ld [$4801], sp                                ; $6708: $08 $01 $48
    ld de, $8bf0                                  ; $670b: $11 $f0 $8b
    add hl, bc                                    ; $670e: $09
    call nz, $3628                                ; $670f: $c4 $28 $36
    ld de, $019b                                  ; $6712: $11 $9b $01
    ld e, e                                       ; $6715: $5b
    ld e, e                                       ; $6716: $5b
    ld b, l                                       ; $6717: $45
    ld b, e                                       ; $6718: $43
    dec l                                         ; $6719: $2d
    ld e, h                                       ; $671a: $5c
    ld e, l                                       ; $671b: $5d
    ld c, b                                       ; $671c: $48
    ld de, $aa6d                                  ; $671d: $11 $6d $aa
    ld bc, $28c4                                  ; $6720: $01 $c4 $28
    ld l, [hl]                                    ; $6723: $6e
    ld [hl], $09                                  ; $6724: $36 $09
    add b                                         ; $6726: $80
    cp c                                          ; $6727: $b9
    ld bc, $090e                                  ; $6728: $01 $0e $09
    add hl, bc                                    ; $672b: $09
    add hl, bc                                    ; $672c: $09
    ld a, [bc]                                    ; $672d: $0a
    inc c                                         ; $672e: $0c
    ld a, [bc]                                    ; $672f: $0a
    nop                                           ; $6730: $00
    ld l, d                                       ; $6731: $6a
    add hl, bc                                    ; $6732: $09
    ld c, $09                                     ; $6733: $0e $09
    ld c, $0e                                     ; $6735: $0e $0e
    rrca                                          ; $6737: $0f
    ld c, $20                                     ; $6738: $0e $20
    ld c, $0e                                     ; $673a: $0e $0e
    ld c, $00                                     ; $673c: $0e $00
    inc c                                         ; $673e: $0c
    ld a, [bc]                                    ; $673f: $0a
    ld l, h                                       ; $6740: $6c
    ld l, d                                       ; $6741: $6a
    add hl, bc                                    ; $6742: $09
    ld b, $6e                                     ; $6743: $06 $6e
    ld l, [hl]                                    ; $6745: $6e
    ld l, [hl]                                    ; $6746: $6e
    ld l, a                                       ; $6747: $6f
    rrca                                          ; $6748: $0f
    ld de, $0110                                  ; $6749: $11 $10 $01
    db $10                                        ; $674c: $10
    rrca                                          ; $674d: $0f
    ld bc, $6e09                                  ; $674e: $01 $09 $6e
    add hl, bc                                    ; $6751: $09
    ld c, $0f                                     ; $6752: $0e $0f
    rrca                                          ; $6754: $0f
    ld c, [hl]                                    ; $6755: $4e
    jr z, jr_0ce_6758                             ; $6756: $28 $00

jr_0ce_6758:
    ld bc, $6a0a                                  ; $6758: $01 $0a $6a
    rrca                                          ; $675b: $0f
    ld l, d                                       ; $675c: $6a
    ld l, c                                       ; $675d: $69
    ld c, $69                                     ; $675e: $0e $69
    inc l                                         ; $6760: $2c
    nop                                           ; $6761: $00
    dec b                                         ; $6762: $05
    rrca                                          ; $6763: $0f
    rrca                                          ; $6764: $0f
    ld l, a                                       ; $6765: $6f
    ld c, $4e                                     ; $6766: $0e $4e
    ld e, $10                                     ; $6768: $1e $10
    ld a, [bc]                                    ; $676a: $0a
    ld de, $1800                                  ; $676b: $11 $00 $18
    add hl, bc                                    ; $676e: $09
    ld c, $6e                                     ; $676f: $0e $6e
    ld b, c                                       ; $6771: $41
    nop                                           ; $6772: $00
    ld d, b                                       ; $6773: $50
    nop                                           ; $6774: $00
    ld c, $69                                     ; $6775: $0e $69
    inc c                                         ; $6777: $0c
    dec bc                                        ; $6778: $0b
    ld l, d                                       ; $6779: $6a
    ld l, c                                       ; $677a: $69
    rrca                                          ; $677b: $0f
    ld l, [hl]                                    ; $677c: $6e
    ld d, d                                       ; $677d: $52
    ld [$406f], sp                                ; $677e: $08 $6f $40
    ld [$0854], sp                                ; $6781: $08 $54 $08
    inc e                                         ; $6784: $1c
    add hl, bc                                    ; $6785: $09
    ld l, a                                       ; $6786: $6f

jr_0ce_6787:
    ld l, c                                       ; $6787: $69
    add hl, de                                    ; $6788: $19
    nop                                           ; $6789: $00
    ld h, d                                       ; $678a: $62
    db $10                                        ; $678b: $10
    ld h, h                                       ; $678c: $64
    ld [$6c6c], sp                                ; $678d: $08 $6c $6c
    or h                                          ; $6790: $b4
    jr nc, jr_0ce_679b                            ; $6791: $30 $08

    add hl, bc                                    ; $6793: $09
    jr nz, jr_0ce_679e                            ; $6794: $20 $08

    ld h, d                                       ; $6796: $62
    ld [$8529], sp                                ; $6797: $08 $29 $85
    nop                                           ; $679a: $00

jr_0ce_679b:
    add hl, bc                                    ; $679b: $09
    ld l, c                                       ; $679c: $69
    ld b, c                                       ; $679d: $41

jr_0ce_679e:
    ld l, c                                       ; $679e: $69
    ld [hl], h                                    ; $679f: $74
    nop                                           ; $67a0: $00
    ld l, [hl]                                    ; $67a1: $6e
    ld l, a                                       ; $67a2: $6f
    ld l, [hl]                                    ; $67a3: $6e
    ld l, [hl]                                    ; $67a4: $6e
    ld l, c                                       ; $67a5: $69
    dec hl                                        ; $67a6: $2b
    nop                                           ; $67a7: $00
    ld l, b                                       ; $67a8: $68
    ld l, d                                       ; $67a9: $6a
    cpl                                           ; $67aa: $2f
    nop                                           ; $67ab: $00
    ld c, d                                       ; $67ac: $4a
    nop                                           ; $67ad: $00
    ld l, [hl]                                    ; $67ae: $6e
    jr nz, jr_0ce_67c9                            ; $67af: $20 $18

    add hl, bc                                    ; $67b1: $09
    ld l, c                                       ; $67b2: $69
    add hl, bc                                    ; $67b3: $09

jr_0ce_67b4:
    inc c                                         ; $67b4: $0c
    inc c                                         ; $67b5: $0c
    ld a, [bc]                                    ; $67b6: $0a
    add hl, bc                                    ; $67b7: $09
    ld l, [hl]                                    ; $67b8: $6e
    ld hl, $0818                                  ; $67b9: $21 $18 $08
    nop                                           ; $67bc: $00
    add hl, bc                                    ; $67bd: $09
    ld l, c                                       ; $67be: $69
    add d                                         ; $67bf: $82
    and l                                         ; $67c0: $a5
    nop                                           ; $67c1: $00
    add hl, bc                                    ; $67c2: $09
    ld l, c                                       ; $67c3: $69
    ld c, $09                                     ; $67c4: $0e $09
    add hl, hl                                    ; $67c6: $29
    ld d, b                                       ; $67c7: $50
    db $10                                        ; $67c8: $10

jr_0ce_67c9:
    ld c, $90                                     ; $67c9: $0e $90
    jr nz, jr_0ce_67cd                            ; $67cb: $20 $00

jr_0ce_67cd:
    ld a, [bc]                                    ; $67cd: $0a
    add hl, bc                                    ; $67ce: $09
    ld h, e                                       ; $67cf: $63
    nop                                           ; $67d0: $00
    ld l, c                                       ; $67d1: $69
    ld l, [hl]                                    ; $67d2: $6e
    ld l, c                                       ; $67d3: $69
    ld l, $6f                                     ; $67d4: $2e $6f
    ld l, a                                       ; $67d6: $6f
    ld b, b                                       ; $67d7: $40
    ld [$0010], sp                                ; $67d8: $08 $10 $00
    inc c                                         ; $67db: $0c
    ld d, c                                       ; $67dc: $51
    nop                                           ; $67dd: $00
    ld [bc], a                                    ; $67de: $02
    nop                                           ; $67df: $00
    ld [hl], c                                    ; $67e0: $71
    jr jr_0ce_6787                                ; $67e1: $18 $a4

    jr jr_0ce_67b4                                ; $67e3: $18 $cf

    ld de, $6208                                  ; $67e5: $11 $08 $62
    db $10                                        ; $67e8: $10
    add hl, bc                                    ; $67e9: $09
    ld l, c                                       ; $67ea: $69
    and $00                                       ; $67eb: $e6 $00
    ld d, l                                       ; $67ed: $55
    nop                                           ; $67ee: $00
    add hl, hl                                    ; $67ef: $29
    ld [$00f8], sp                                ; $67f0: $08 $f8 $00
    sbc h                                         ; $67f3: $9c
    sub $08                                       ; $67f4: $d6 $08
    add hl, bc                                    ; $67f6: $09
    rrca                                          ; $67f7: $0f
    inc d                                         ; $67f8: $14
    nop                                           ; $67f9: $00
    ld h, h                                       ; $67fa: $64
    nop                                           ; $67fb: $00
    rst $30                                       ; $67fc: $f7
    nop                                           ; $67fd: $00
    ld l, a                                       ; $67fe: $6f
    ld l, [hl]                                    ; $67ff: $6e

Call_0ce_6800:
    inc hl                                        ; $6800: $23
    ld c, $0f                                     ; $6801: $0e $0f
    ld [hl], d                                    ; $6803: $72
    ld [$696a], sp                                ; $6804: $08 $6a $69
    ld c, a                                       ; $6807: $4f
    or l                                          ; $6808: $b5
    ld [$2043], sp                                ; $6809: $08 $43 $20
    ld a, [hl]                                    ; $680c: $7e
    ld c, $83                                     ; $680d: $0e $83
    ld [$0854], sp                                ; $680f: $08 $54 $08
    and e                                         ; $6812: $a3
    nop                                           ; $6813: $00
    inc l                                         ; $6814: $2c
    ld bc, $0112                                  ; $6815: $01 $12 $01
    scf                                           ; $6818: $37
    add hl, bc                                    ; $6819: $09
    ld l, a                                       ; $681a: $6f
    jp Jump_000_08d6                              ; $681b: $c3 $d6 $08


    ld h, h                                       ; $681e: $64
    jr z, jr_0ce_684b                             ; $681f: $28 $2a

    ld a, [bc]                                    ; $6821: $0a
    add hl, bc                                    ; $6822: $09
    ld a, [bc]                                    ; $6823: $0a
    push bc                                       ; $6824: $c5
    ld [$08c4], sp                                ; $6825: $08 $c4 $08
    add [hl]                                      ; $6828: $86
    scf                                           ; $6829: $37
    add hl, bc                                    ; $682a: $09
    ld l, c                                       ; $682b: $69
    ld l, d                                       ; $682c: $6a
    ld a, [bc]                                    ; $682d: $0a
    ld a, [bc]                                    ; $682e: $0a
    sub l                                         ; $682f: $95
    nop                                           ; $6830: $00
    add h                                         ; $6831: $84
    jr nc, jr_0ce_6843                            ; $6832: $30 $0f

    rst $38                                       ; $6834: $ff
    rst $00                                       ; $6835: $c7
    nop                                           ; $6836: $00
    push hl                                       ; $6837: $e5
    nop                                           ; $6838: $00
    ld b, d                                       ; $6839: $42
    nop                                           ; $683a: $00
    pop de                                        ; $683b: $d1
    nop                                           ; $683c: $00
    ld l, e                                       ; $683d: $6b
    ld bc, $0169                                  ; $683e: $01 $69 $01
    ld a, [bc]                                    ; $6841: $0a
    nop                                           ; $6842: $00

jr_0ce_6843:
    rst $28                                       ; $6843: $ef
    ld [$0e1a], sp                                ; $6844: $08 $1a $0e
    ld c, $49                                     ; $6847: $0e $49
    jr z, @+$0b                                   ; $6849: $28 $09

jr_0ce_684b:
    ld b, $11                                     ; $684b: $06 $11
    ld l, c                                       ; $684d: $69
    call nz, Call_0ce_6f00                        ; $684e: $c4 $00 $6f
    ret nz                                        ; $6851: $c0

    ld e, a                                       ; $6852: $5f
    ld bc, $0199                                  ; $6853: $01 $99 $01
    ld l, h                                       ; $6856: $6c
    ld a, [bc]                                    ; $6857: $0a
    ld a, [bc]                                    ; $6858: $0a
    add hl, hl                                    ; $6859: $29
    ld l, h                                       ; $685a: $6c
    ld a, [bc]                                    ; $685b: $0a
    xor [hl]                                      ; $685c: $ae
    ld e, d                                       ; $685d: $5a
    ld bc, $384e                                  ; $685e: $01 $4e $38
    ld hl, $d40c                                  ; $6861: $21 $0c $d4
    db $10                                        ; $6864: $10
    add e                                         ; $6865: $83
    nop                                           ; $6866: $00
    xor d                                         ; $6867: $aa
    add hl, bc                                    ; $6868: $09
    add hl, hl                                    ; $6869: $29
    add b                                         ; $686a: $80
    cp d                                          ; $686b: $ba
    ld bc, $0020                                  ; $686c: $01 $20 $00
    ld c, $00                                     ; $686f: $0e $00

jr_0ce_6871:
    or a                                          ; $6871: $b7
    nop                                           ; $6872: $00
    nop                                           ; $6873: $00
    ld b, b                                       ; $6874: $40
    ld b, c                                       ; $6875: $41
    ld b, c                                       ; $6876: $41
    ld b, d                                       ; $6877: $42
    ld b, e                                       ; $6878: $43
    ld b, h                                       ; $6879: $44
    ld b, l                                       ; $687a: $45
    ld b, l                                       ; $687b: $45

jr_0ce_687c:
    ld bc, $4344                                  ; $687c: $01 $44 $43
    ld b, [hl]                                    ; $687f: $46
    ld b, c                                       ; $6880: $41
    ld b, c                                       ; $6881: $41
    ld b, b                                       ; $6882: $40
    ld b, l                                       ; $6883: $45
    ld bc, $c000                                  ; $6884: $01 $00 $c0
    ld a, [bc]                                    ; $6887: $0a
    jr z, jr_0ce_68a4                             ; $6888: $28 $1a

    jr @+$49                                      ; $688a: $18 $47

jr_0ce_688c:
    ld c, b                                       ; $688c: $48
    ld c, c                                       ; $688d: $49
    ld c, d                                       ; $688e: $4a
    ld c, e                                       ; $688f: $4b
    ld c, h                                       ; $6890: $4c
    nop                                           ; $6891: $00
    ld b, l                                       ; $6892: $45
    ld b, l                                       ; $6893: $45
    ld c, h                                       ; $6894: $4c
    ld c, e                                       ; $6895: $4b
    ld c, d                                       ; $6896: $4a
    ld c, b                                       ; $6897: $48
    ld c, c                                       ; $6898: $49
    ld b, a                                       ; $6899: $47
    pop hl                                        ; $689a: $e1
    jr nz, jr_0ce_68a5                            ; $689b: $20 $08

    ld a, [bc]                                    ; $689d: $0a
    jr z, @+$1c                                   ; $689e: $28 $1a

    jr jr_0ce_68e9                                ; $68a0: $18 $47

    ld c, l                                       ; $68a2: $4d
    ld c, [hl]                                    ; $68a3: $4e

jr_0ce_68a4:
    ld c, a                                       ; $68a4: $4f

jr_0ce_68a5:
    jr nz, jr_0ce_68c7                            ; $68a5: $20 $20

    inc e                                         ; $68a7: $1c
    ld c, l                                       ; $68a8: $4d
    ld c, [hl]                                    ; $68a9: $4e
    ld d, b                                       ; $68aa: $50
    jr nz, jr_0ce_68cd                            ; $68ab: $20 $20

    ld a, [bc]                                    ; $68ad: $0a
    db $10                                        ; $68ae: $10
    ld a, [de]                                    ; $68af: $1a
    jr @+$42                                      ; $68b0: $18 $40

    ld d, c                                       ; $68b2: $51
    ld de, $5241                                  ; $68b3: $11 $41 $52
    ld d, e                                       ; $68b6: $53
    ld h, b                                       ; $68b7: $60
    ld [$5453], sp                                ; $68b8: $08 $53 $54
    ld d, c                                       ; $68bb: $51
    ld h, b                                       ; $68bc: $60
    jr nz, @-$11                                  ; $68bd: $20 $ed

    ld a, [bc]                                    ; $68bf: $0a
    jr nz, jr_0ce_68dc                            ; $68c0: $20 $1a

    jr z, jr_0ce_68c6                             ; $68c2: $28 $02

    ret c                                         ; $68c4: $d8

    ld b, h                                       ; $68c5: $44

jr_0ce_68c6:
    adc b                                         ; $68c6: $88

jr_0ce_68c7:
    jr nz, jr_0ce_6871                            ; $68c7: $20 $a8

    nop                                           ; $68c9: $00
    ld d, l                                       ; $68ca: $55
    xor b                                         ; $68cb: $a8
    ld e, b                                       ; $68cc: $58

jr_0ce_68cd:
    cp a                                          ; $68cd: $bf
    and d                                         ; $68ce: $a2
    jr jr_0ce_691d                                ; $68cf: $18 $4c

    adc b                                         ; $68d1: $88
    jr z, jr_0ce_687c                             ; $68d2: $28 $a8

    ld [hl], b                                    ; $68d4: $70
    and d                                         ; $68d5: $a2
    jr jr_0ce_68f8                                ; $68d6: $18 $20

    nop                                           ; $68d8: $00
    and d                                         ; $68d9: $a2
    db $10                                        ; $68da: $10
    xor b                                         ; $68db: $a8

jr_0ce_68dc:
    ld a, b                                       ; $68dc: $78
    rst $30                                       ; $68dd: $f7
    and d                                         ; $68de: $a2
    jr jr_0ce_6941                                ; $68df: $18 $60

    nop                                           ; $68e1: $00
    and d                                         ; $68e2: $a2
    db $10                                        ; $68e3: $10
    xor b                                         ; $68e4: $a8
    nop                                           ; $68e5: $00
    ld d, [hl]                                    ; $68e6: $56
    xor b                                         ; $68e7: $a8
    ld e, b                                       ; $68e8: $58

jr_0ce_68e9:
    and d                                         ; $68e9: $a2
    jr jr_0ce_688c                                ; $68ea: $18 $a0

    add sp, -$59                                  ; $68ec: $e8 $a7
    ld a, [hl-]                                   ; $68ee: $3a
    add hl, bc                                    ; $68ef: $09
    ld b, d                                       ; $68f0: $42

jr_0ce_68f1:
    jr nc, jr_0ce_6914                            ; $68f1: $30 $21

    ld d, a                                       ; $68f3: $57
    ld e, b                                       ; $68f4: $58
    xor b                                         ; $68f5: $a8
    db $10                                        ; $68f6: $10
    ld d, b                                       ; $68f7: $50

jr_0ce_68f8:
    ld hl, $1816                                  ; $68f8: $21 $16 $18
    pop af                                        ; $68fb: $f1
    jr nc, @+$73                                  ; $68fc: $30 $71

    ld d, b                                       ; $68fe: $50

jr_0ce_68ff:
    adc c                                         ; $68ff: $89
    jr nc, jr_0ce_6943                            ; $6900: $30 $41

    ld d, b                                       ; $6902: $50
    ld a, c                                       ; $6903: $79
    ld b, h                                       ; $6904: $44
    ld d, e                                       ; $6905: $53
    ld d, d                                       ; $6906: $52
    jr nc, @+$23                                  ; $6907: $30 $21

    jr c, @+$59                                   ; $6909: $38 $57

    ld e, c                                       ; $690b: $59
    xor b                                         ; $690c: $a8
    db $10                                        ; $690d: $10
    ld d, b                                       ; $690e: $50
    ld hl, $1816                                  ; $690f: $21 $16 $18
    dec c                                         ; $6912: $0d
    dec c                                         ; $6913: $0d

jr_0ce_6914:
    dec l                                         ; $6914: $2d
    nop                                           ; $6915: $00
    inc c                                         ; $6916: $0c
    inc c                                         ; $6917: $0c
    inc c                                         ; $6918: $0c
    dec c                                         ; $6919: $0d
    dec c                                         ; $691a: $0d

jr_0ce_691b:
    inc l                                         ; $691b: $2c
    inc l                                         ; $691c: $2c

jr_0ce_691d:
    inc c                                         ; $691d: $0c

jr_0ce_691e:
    ld c, $0d                                     ; $691e: $0e $0d
    dec l                                         ; $6920: $2d

jr_0ce_6921:
    dec l                                         ; $6921: $2d
    dec c                                         ; $6922: $0d
    ld bc, $0a00                                  ; $6923: $01 $00 $0a
    jr c, jr_0ce_6942                             ; $6926: $38 $1a

    db $10                                        ; $6928: $10
    ld c, $47                                     ; $6929: $0e $47
    ld c, $20                                     ; $692b: $0e $20
    jr nz, jr_0ce_695b                            ; $692d: $20 $2c

    ld c, $0e                                     ; $692f: $0e $0e
    jr nz, jr_0ce_6953                            ; $6931: $20 $20

    ld a, [bc]                                    ; $6933: $0a
    jr nz, jr_0ce_6950                            ; $6934: $20 $1a

    db $10                                        ; $6936: $10
    ld b, b                                       ; $6937: $40
    ld c, l                                       ; $6938: $4d
    jr nz, jr_0ce_693b                            ; $6939: $20 $00

jr_0ce_693b:
    ld c, h                                       ; $693b: $4c
    ld c, h                                       ; $693c: $4c
    dec c                                         ; $693d: $0d
    dec c                                         ; $693e: $0d
    ld l, h                                       ; $693f: $6c
    ld l, h                                       ; $6940: $6c

jr_0ce_6941:
    inc e                                         ; $6941: $1c

jr_0ce_6942:
    ld l, h                                       ; $6942: $6c

jr_0ce_6943:
    ld c, $0e                                     ; $6943: $0e $0e
    ccf                                           ; $6945: $3f
    ld [$300a], sp                                ; $6946: $08 $0a $30
    ld a, [de]                                    ; $6949: $1a

jr_0ce_694a:
    jr jr_0ce_6999                                ; $694a: $18 $4d

    dec c                                         ; $694c: $0d
    add hl, de                                    ; $694d: $19
    ld l, l                                       ; $694e: $6d
    inc c                                         ; $694f: $0c

jr_0ce_6950:
    inc c                                         ; $6950: $0c
    jr nz, jr_0ce_695b                            ; $6951: $20 $08

jr_0ce_6953:
    ld h, b                                       ; $6953: $60
    nop                                           ; $6954: $00
    ld l, l                                       ; $6955: $6d
    ld l, l                                       ; $6956: $6d
    jr nz, jr_0ce_6969                            ; $6957: $20 $10

    rst $38                                       ; $6959: $ff
    ld a, [bc]                                    ; $695a: $0a

jr_0ce_695b:
    jr nz, jr_0ce_6977                            ; $695b: $20 $1a

    jr z, jr_0ce_6961                             ; $695d: $28 $02

    ret nc                                        ; $695f: $d0

    sbc e                                         ; $6960: $9b

jr_0ce_6961:
    ld [$20a2], sp                                ; $6961: $08 $a2 $20
    xor b                                         ; $6964: $a8
    ld l, b                                       ; $6965: $68
    and d                                         ; $6966: $a2
    jr nz, jr_0ce_68f1                            ; $6967: $20 $88

jr_0ce_6969:
    jr nz, jr_0ce_694a                            ; $6969: $20 $df

    xor b                                         ; $696b: $a8
    ld a, b                                       ; $696c: $78
    and d                                         ; $696d: $a2
    jr jr_0ce_69bc                                ; $696e: $18 $4c

    adc b                                         ; $6970: $88
    jr z, jr_0ce_691b                             ; $6971: $28 $a8

    ld [hl], b                                    ; $6973: $70
    and d                                         ; $6974: $a2
    jr nz, jr_0ce_68ff                            ; $6975: $20 $88

jr_0ce_6977:
    jr nz, jr_0ce_6921                            ; $6977: $20 $a8

    ld a, b                                       ; $6979: $78
    rst $38                                       ; $697a: $ff
    and d                                         ; $697b: $a2
    jr jr_0ce_691e                                ; $697c: $18 $a0

    ldh [rNR10], a                                ; $697e: $e0 $10
    add hl, de                                    ; $6980: $19
    sub d                                         ; $6981: $92
    jr z, @-$56                                   ; $6982: $28 $a8

    ld d, b                                       ; $6984: $50
    ld d, $28                                     ; $6985: $16 $28
    jr nc, @+$5b                                  ; $6987: $30 $59

    ld d, b                                       ; $6989: $50
    ld a, c                                       ; $698a: $79
    or $30                                        ; $698b: $f6 $30
    ld h, c                                       ; $698d: $61
    ld d, b                                       ; $698e: $50
    ld a, c                                       ; $698f: $79
    ld h, b                                       ; $6990: $60
    nop                                           ; $6991: $00
    jr nc, jr_0ce_69ad                            ; $6992: $30 $19

    ld c, l                                       ; $6994: $4d
    xor b                                         ; $6995: $a8
    ld d, b                                       ; $6996: $50
    ld d, $18                                     ; $6997: $16 $18

jr_0ce_6999:
    jr nz, jr_0ce_699b                            ; $6999: $20 $00

jr_0ce_699b:
    dec c                                         ; $699b: $0d
    nop                                           ; $699c: $00
    adc $00                                       ; $699d: $ce $00
    ld [bc], a                                    ; $699f: $02
    ld b, b                                       ; $69a0: $40
    ld b, c                                       ; $69a1: $41
    ld b, d                                       ; $69a2: $42
    ld b, e                                       ; $69a3: $43
    ld b, h                                       ; $69a4: $44
    ld b, l                                       ; $69a5: $45
    ld bc, $4450                                  ; $69a6: $01 $50 $44
    ld bc, $4243                                  ; $69a9: $01 $43 $42
    ld b, c                                       ; $69ac: $41

jr_0ce_69ad:
    ld b, b                                       ; $69ad: $40
    ld b, [hl]                                    ; $69ae: $46
    ld b, a                                       ; $69af: $47
    ld c, b                                       ; $69b0: $48
    ld bc, $3800                                  ; $69b1: $01 $00 $38
    ld b, a                                       ; $69b4: $47
    ld b, [hl]                                    ; $69b5: $46
    inc b                                         ; $69b6: $04
    ld [$4024], sp                                ; $69b7: $08 $24 $40
    inc e                                         ; $69ba: $1c
    ld b, b                                       ; $69bb: $40

jr_0ce_69bc:
    ld c, d                                       ; $69bc: $4a
    ld c, e                                       ; $69bd: $4b
    ld c, e                                       ; $69be: $4b
    inc e                                         ; $69bf: $1c
    ld c, d                                       ; $69c0: $4a
    ld c, b                                       ; $69c1: $48
    ld c, b                                       ; $69c2: $48
    inc b                                         ; $69c3: $04
    ld [$2824], sp                                ; $69c4: $08 $24 $28
    inc e                                         ; $69c7: $1c
    ld c, b                                       ; $69c8: $48
    ld c, h                                       ; $69c9: $4c
    ld c, l                                       ; $69ca: $4d
    inc bc                                        ; $69cb: $03
    ld c, [hl]                                    ; $69cc: $4e
    ld c, a                                       ; $69cd: $4f
    ld c, a                                       ; $69ce: $4f
    ld c, [hl]                                    ; $69cf: $4e
    ld c, l                                       ; $69d0: $4d
    ld c, h                                       ; $69d1: $4c
    inc b                                         ; $69d2: $04
    ld [$2824], sp                                ; $69d3: $08 $24 $28
    adc c                                         ; $69d6: $89
    inc e                                         ; $69d7: $1c
    ld c, b                                       ; $69d8: $48
    ld d, b                                       ; $69d9: $50
    ld d, c                                       ; $69da: $51
    ld d, d                                       ; $69db: $52
    ld bc, $5100                                  ; $69dc: $01 $00 $51
    ld d, b                                       ; $69df: $50
    inc b                                         ; $69e0: $04
    ld [$24c0], sp                                ; $69e1: $08 $c0 $24
    jr c, jr_0ce_6a02                             ; $69e4: $38 $1c

    ld c, b                                       ; $69e6: $48
    ld d, e                                       ; $69e7: $53
    ld d, h                                       ; $69e8: $54
    ld d, h                                       ; $69e9: $54
    ld d, e                                       ; $69ea: $53
    ld d, d                                       ; $69eb: $52
    ld d, d                                       ; $69ec: $52
    ldh [rDIV], a                                 ; $69ed: $e0 $04
    ld [$2824], sp                                ; $69ef: $08 $24 $28
    inc e                                         ; $69f2: $1c
    ld c, b                                       ; $69f3: $48
    ld d, l                                       ; $69f4: $55
    ld d, [hl]                                    ; $69f5: $56
    ld d, a                                       ; $69f6: $57

jr_0ce_69f7:
    ld e, b                                       ; $69f7: $58
    ld e, b                                       ; $69f8: $58
    inc e                                         ; $69f9: $1c
    ld d, a                                       ; $69fa: $57
    ld d, [hl]                                    ; $69fb: $56
    ld d, l                                       ; $69fc: $55
    inc b                                         ; $69fd: $04
    ld [$2824], sp                                ; $69fe: $08 $24 $28
    inc e                                         ; $6a01: $1c

jr_0ce_6a02:
    ld c, b                                       ; $6a02: $48
    ld e, c                                       ; $6a03: $59
    ld e, d                                       ; $6a04: $5a
    inc bc                                        ; $6a05: $03
    ld e, e                                       ; $6a06: $5b
    ld e, h                                       ; $6a07: $5c
    ld e, h                                       ; $6a08: $5c
    ld e, e                                       ; $6a09: $5b
    ld e, d                                       ; $6a0a: $5a
    ld e, c                                       ; $6a0b: $59
    inc b                                         ; $6a0c: $04
    ld [$3824], sp                                ; $6a0d: $08 $24 $38
    cp b                                          ; $6a10: $b8
    inc e                                         ; $6a11: $1c
    jr c, @+$5f                                   ; $6a12: $38 $5d

    ld bc, $2440                                  ; $6a14: $01 $40 $24
    jr z, @+$1e                                   ; $6a17: $28 $1c

    ld c, b                                       ; $6a19: $48
    ld e, [hl]                                    ; $6a1a: $5e
    ld e, a                                       ; $6a1b: $5f
    ld h, b                                       ; $6a1c: $60
    rlca                                          ; $6a1d: $07
    ld h, c                                       ; $6a1e: $61
    ld h, c                                       ; $6a1f: $61
    ld h, b                                       ; $6a20: $60
    ld e, a                                       ; $6a21: $5f
    ld e, [hl]                                    ; $6a22: $5e
    inc b                                         ; $6a23: $04
    ld [$2824], sp                                ; $6a24: $08 $24 $28
    inc e                                         ; $6a27: $1c
    ld c, b                                       ; $6a28: $48
    nop                                           ; $6a29: $00
    ld h, d                                       ; $6a2a: $62
    ld h, e                                       ; $6a2b: $63

jr_0ce_6a2c:
    ld h, h                                       ; $6a2c: $64
    ld h, l                                       ; $6a2d: $65
    ld h, l                                       ; $6a2e: $65
    ld h, h                                       ; $6a2f: $64
    ld h, e                                       ; $6a30: $63
    ld h, d                                       ; $6a31: $62
    ldh [rDIV], a                                 ; $6a32: $e0 $04
    ld [$2824], sp                                ; $6a34: $08 $24 $28
    inc e                                         ; $6a37: $1c
    ld c, b                                       ; $6a38: $48
    ld h, [hl]                                    ; $6a39: $66
    ld h, a                                       ; $6a3a: $67
    ld l, b                                       ; $6a3b: $68
    ld l, c                                       ; $6a3c: $69
    ld l, c                                       ; $6a3d: $69
    rra                                           ; $6a3e: $1f
    ld l, b                                       ; $6a3f: $68
    ld h, a                                       ; $6a40: $67
    ld h, [hl]                                    ; $6a41: $66
    inc b                                         ; $6a42: $04
    ld [$2824], sp                                ; $6a43: $08 $24 $28
    inc e                                         ; $6a46: $1c
    ld c, b                                       ; $6a47: $48
    ld [hl], e                                    ; $6a48: $73
    ld c, c                                       ; $6a49: $49
    inc h                                         ; $6a4a: $24
    jr z, jr_0ce_69f7                             ; $6a4b: $28 $aa

    inc e                                         ; $6a4d: $1c
    adc b                                         ; $6a4e: $88
    ld a, [bc]                                    ; $6a4f: $0a
    ld bc, $0b00                                  ; $6a50: $01 $00 $0b
    ld bc, $0800                                  ; $6a53: $01 $00 $08
    ld bc, $0f00                                  ; $6a56: $01 $00 $0f
    add d                                         ; $6a59: $82
    ld bc, $0c00                                  ; $6a5a: $01 $00 $0c
    inc c                                         ; $6a5d: $0c
    inc c                                         ; $6a5e: $0c
    inc l                                         ; $6a5f: $2c
    dec l                                         ; $6a60: $2d
    ld bc, $0e00                                  ; $6a61: $01 $00 $0e
    add b                                         ; $6a64: $80
    ld bc, $0900                                  ; $6a65: $01 $00 $09
    add hl, bc                                    ; $6a68: $09
    add hl, hl                                    ; $6a69: $29
    add hl, hl                                    ; $6a6a: $29
    ld a, [bc]                                    ; $6a6b: $0a
    ld a, [bc]                                    ; $6a6c: $0a
    ld a, [hl+]                                   ; $6a6d: $2a
    ld c, e                                       ; $6a6e: $4b
    ld a, [hl+]                                   ; $6a6f: $2a
    jr nz, jr_0ce_6ab2                            ; $6a70: $20 $40

    cpl                                           ; $6a72: $2f
    inc l                                         ; $6a73: $2c
    ld bc, $0d00                                  ; $6a74: $01 $00 $0d
    ld bc, $2000                                  ; $6a77: $01 $00 $20
    ld [$2902], sp                                ; $6a7a: $08 $02 $29
    add hl, hl                                    ; $6a7d: $29
    add hl, bc                                    ; $6a7e: $09
    add hl, bc                                    ; $6a7f: $09
    ld a, [hl+]                                   ; $6a80: $2a
    ld a, [hl+]                                   ; $6a81: $2a
    ld b, b                                       ; $6a82: $40
    ld [$4a2b], sp                                ; $6a83: $08 $2b $4a
    dec hl                                        ; $6a86: $2b
    ld b, b                                       ; $6a87: $40
    jr jr_0ce_6ab9                                ; $6a88: $18 $2f

    cpl                                           ; $6a8a: $2f
    ld b, b                                       ; $6a8b: $40
    nop                                           ; $6a8c: $00
    inc c                                         ; $6a8d: $0c
    jr nz, jr_0ce_6ac8                            ; $6a8e: $20 $38

    add hl, hl                                    ; $6a90: $29
    inc h                                         ; $6a91: $24
    add hl, hl                                    ; $6a92: $29
    ld a, [hl+]                                   ; $6a93: $2a
    ld bc, $2b00                                  ; $6a94: $01 $00 $2b
    dec hl                                        ; $6a97: $2b
    ld h, b                                       ; $6a98: $60
    ld [$2828], sp                                ; $6a99: $08 $28 $28
    ld a, [hl-]                                   ; $6a9c: $3a
    cpl                                           ; $6a9d: $2f
    cpl                                           ; $6a9e: $2f
    ld h, b                                       ; $6a9f: $60
    db $10                                        ; $6aa0: $10
    jr nz, jr_0ce_6ad3                            ; $6aa1: $20 $30

    ld h, b                                       ; $6aa3: $60
    jr z, jr_0ce_6ad1                             ; $6aa4: $28 $2b

    ld bc, $2800                                  ; $6aa6: $01 $00 $28
    ld [hl], a                                    ; $6aa9: $77
    jr z, jr_0ce_6a2c                             ; $6aaa: $28 $80

    jr nc, jr_0ce_6aee                            ; $6aac: $30 $40

    ld b, b                                       ; $6aae: $40
    ld h, b                                       ; $6aaf: $60
    jr c, jr_0ce_6ada                             ; $6ab0: $38 $28

jr_0ce_6ab2:
    ld bc, $4000                                  ; $6ab2: $01 $00 $40
    ld l, b                                       ; $6ab5: $68
    ld h, b                                       ; $6ab6: $60
    add sp, -$21                                  ; $6ab7: $e8 $df

jr_0ce_6ab9:
    add b                                         ; $6ab9: $80
    jr c, jr_0ce_6b1c                             ; $6aba: $38 $60

    sbc b                                         ; $6abc: $98
    add hl, bc                                    ; $6abd: $09
    ld bc, $0000                                  ; $6abe: $01 $00 $00
    add hl, bc                                    ; $6ac1: $09
    add b                                         ; $6ac2: $80
    jr jr_0ce_6b25                                ; $6ac3: $18 $60

    cp b                                          ; $6ac5: $b8
    jr nz, jr_0ce_6ad1                            ; $6ac6: $20 $09

jr_0ce_6ac8:
    db $fc                                        ; $6ac8: $fc
    add b                                         ; $6ac9: $80
    ret c                                         ; $6aca: $d8

    nop                                           ; $6acb: $00
    add hl, hl                                    ; $6acc: $29
    add b                                         ; $6acd: $80
    ret z                                         ; $6ace: $c8

    nop                                           ; $6acf: $00
    adc c                                         ; $6ad0: $89

jr_0ce_6ad1:
    add b                                         ; $6ad1: $80
    ret c                                         ; $6ad2: $d8

jr_0ce_6ad3:
    and b                                         ; $6ad3: $a0
    ld [$0020], sp                                ; $6ad4: $08 $20 $00
    ld c, $00                                     ; $6ad7: $0e $00
    db $fc                                        ; $6ad9: $fc

jr_0ce_6ada:
    nop                                           ; $6ada: $00
    ld b, b                                       ; $6adb: $40
    ld b, b                                       ; $6adc: $40
    ld bc, $40f8                                  ; $6add: $01 $f8 $40
    ld b, c                                       ; $6ae0: $41
    ld b, b                                       ; $6ae1: $40
    ld b, c                                       ; $6ae2: $41
    ld b, d                                       ; $6ae3: $42
    ld b, e                                       ; $6ae4: $43
    ld h, b                                       ; $6ae5: $60
    ld b, b                                       ; $6ae6: $40
    ld [bc], a                                    ; $6ae7: $02
    jr @+$12                                      ; $6ae8: $18 $10

    ld l, b                                       ; $6aea: $68
    ld b, h                                       ; $6aeb: $44
    ld b, l                                       ; $6aec: $45
    ld b, [hl]                                    ; $6aed: $46

jr_0ce_6aee:
    ld b, a                                       ; $6aee: $47
    ld c, b                                       ; $6aef: $48
    ld bc, $4a49                                  ; $6af0: $01 $49 $4a
    ld c, e                                       ; $6af3: $4b
    ld c, b                                       ; $6af4: $48
    ld c, h                                       ; $6af5: $4c
    ld c, l                                       ; $6af6: $4d
    ld c, [hl]                                    ; $6af7: $4e
    inc b                                         ; $6af8: $04
    ld [$1082], sp                                ; $6af9: $08 $82 $10
    ld l, b                                       ; $6afc: $68
    ld c, a                                       ; $6afd: $4f
    ld d, b                                       ; $6afe: $50
    ld d, c                                       ; $6aff: $51
    ld d, d                                       ; $6b00: $52
    ld d, c                                       ; $6b01: $51
    inc b                                         ; $6b02: $04
    nop                                           ; $6b03: $00
    ld d, b                                       ; $6b04: $50
    jr jr_0ce_6b56                                ; $6b05: $18 $4f

    ld d, c                                       ; $6b07: $51
    ld d, d                                       ; $6b08: $52
    inc c                                         ; $6b09: $0c
    ld [$6810], sp                                ; $6b0a: $08 $10 $68
    ld d, e                                       ; $6b0d: $53
    ld d, h                                       ; $6b0e: $54
    ld d, l                                       ; $6b0f: $55
    ld b, c                                       ; $6b10: $41
    ld d, [hl]                                    ; $6b11: $56
    inc b                                         ; $6b12: $04
    nop                                           ; $6b13: $00
    ld d, a                                       ; $6b14: $57
    ld d, a                                       ; $6b15: $57
    ld d, l                                       ; $6b16: $55
    ld d, h                                       ; $6b17: $54
    ld d, e                                       ; $6b18: $53
    ld [$8008], sp                                ; $6b19: $08 $08 $80

jr_0ce_6b1c:
    db $10                                        ; $6b1c: $10
    ld l, b                                       ; $6b1d: $68
    ld e, b                                       ; $6b1e: $58
    ld e, c                                       ; $6b1f: $59
    ld e, d                                       ; $6b20: $5a
    ld e, e                                       ; $6b21: $5b
    ld e, e                                       ; $6b22: $5b
    ld e, d                                       ; $6b23: $5a
    ld e, c                                       ; $6b24: $59

jr_0ce_6b25:
    ld b, $58                                     ; $6b25: $06 $58
    ld e, d                                       ; $6b27: $5a
    ld e, b                                       ; $6b28: $58
    ld e, e                                       ; $6b29: $5b
    ld e, c                                       ; $6b2a: $59
    inc b                                         ; $6b2b: $04
    ld [$6810], sp                                ; $6b2c: $08 $10 $68
    ld e, h                                       ; $6b2f: $5c
    inc d                                         ; $6b30: $14
    ld e, l                                       ; $6b31: $5d
    ld e, h                                       ; $6b32: $5c
    ld e, l                                       ; $6b33: $5d
    inc bc                                        ; $6b34: $03
    nop                                           ; $6b35: $00
    ld e, h                                       ; $6b36: $5c
    ld [$5ea8], sp                                ; $6b37: $08 $a8 $5e
    ld e, a                                       ; $6b3a: $5f
    jr z, jr_0ce_6b9b                             ; $6b3b: $28 $5e

    ld e, a                                       ; $6b3d: $5f
    inc bc                                        ; $6b3e: $03
    nop                                           ; $6b3f: $00
    ld e, [hl]                                    ; $6b40: $5e
    ld [$60a8], sp                                ; $6b41: $08 $a8 $60
    ld h, c                                       ; $6b44: $61
    ld h, b                                       ; $6b45: $60
    ld hl, $6362                                  ; $6b46: $21 $62 $63
    dec b                                         ; $6b49: $05
    nop                                           ; $6b4a: $00
    ld h, b                                       ; $6b4b: $60
    ld h, e                                       ; $6b4c: $63
    ld h, b                                       ; $6b4d: $60
    ld h, h                                       ; $6b4e: $64
    ld [$8010], sp                                ; $6b4f: $08 $10 $80
    db $10                                        ; $6b52: $10
    ld h, b                                       ; $6b53: $60
    ld h, l                                       ; $6b54: $65
    ld h, [hl]                                    ; $6b55: $66

jr_0ce_6b56:
    ld h, a                                       ; $6b56: $67
    ld l, b                                       ; $6b57: $68
    ld l, c                                       ; $6b58: $69
    ld h, l                                       ; $6b59: $65
    ld l, b                                       ; $6b5a: $68
    ld b, $6a                                     ; $6b5b: $06 $6a
    ld l, d                                       ; $6b5d: $6a
    ld h, l                                       ; $6b5e: $65
    ld l, b                                       ; $6b5f: $68
    ld l, c                                       ; $6b60: $69
    ld [$1008], sp                                ; $6b61: $08 $08 $10
    ld l, b                                       ; $6b64: $68
    ld l, e                                       ; $6b65: $6b
    nop                                           ; $6b66: $00
    ld l, h                                       ; $6b67: $6c
    ld l, l                                       ; $6b68: $6d
    ld l, [hl]                                    ; $6b69: $6e
    ld l, h                                       ; $6b6a: $6c
    ld l, e                                       ; $6b6b: $6b
    ld l, l                                       ; $6b6c: $6d
    ld l, l                                       ; $6b6d: $6d
    ld l, h                                       ; $6b6e: $6c
    jr jr_0ce_6bde                                ; $6b6f: $18 $6d

    ld l, e                                       ; $6b71: $6b
    ld l, l                                       ; $6b72: $6d
    ld [$1008], sp                                ; $6b73: $08 $08 $10
    ld l, b                                       ; $6b76: $68
    ld l, a                                       ; $6b77: $6f
    ld [hl], b                                    ; $6b78: $70
    ld [hl], c                                    ; $6b79: $71
    nop                                           ; $6b7a: $00
    ld [hl], d                                    ; $6b7b: $72
    ld [hl], b                                    ; $6b7c: $70
    ld l, a                                       ; $6b7d: $6f
    ld [hl], d                                    ; $6b7e: $72
    ld [hl], c                                    ; $6b7f: $71
    ld [hl], d                                    ; $6b80: $72
    ld [hl], c                                    ; $6b81: $71
    ld l, a                                       ; $6b82: $6f
    ld h, b                                       ; $6b83: $60
    ld [hl], b                                    ; $6b84: $70
    ld [$1008], sp                                ; $6b85: $08 $08 $10
    ld l, b                                       ; $6b88: $68
    ld [hl], e                                    ; $6b89: $73
    ld [hl], h                                    ; $6b8a: $74
    ld [hl], l                                    ; $6b8b: $75
    halt                                          ; $6b8c: $76
    ld [hl], h                                    ; $6b8d: $74
    nop                                           ; $6b8e: $00
    ld [hl], l                                    ; $6b8f: $75
    ld [hl], e                                    ; $6b90: $73
    halt                                          ; $6b91: $76
    halt                                          ; $6b92: $76
    ld [hl], h                                    ; $6b93: $74
    ld [hl], e                                    ; $6b94: $73
    ld [hl], l                                    ; $6b95: $75
    ld [hl], h                                    ; $6b96: $74
    db $10                                        ; $6b97: $10
    ld [hl], l                                    ; $6b98: $75
    ld [hl], h                                    ; $6b99: $74
    halt                                          ; $6b9a: $76

jr_0ce_6b9b:
    db $10                                        ; $6b9b: $10
    ld l, b                                       ; $6b9c: $68
    ld [hl], a                                    ; $6b9d: $77
    ld a, b                                       ; $6b9e: $78
    ld a, c                                       ; $6b9f: $79
    ld a, d                                       ; $6ba0: $7a
    ld l, l                                       ; $6ba1: $6d
    ld a, d                                       ; $6ba2: $7a
    dec b                                         ; $6ba3: $05
    nop                                           ; $6ba4: $00
    rlca                                          ; $6ba5: $07
    nop                                           ; $6ba6: $00
    ld [hl], a                                    ; $6ba7: $77
    ld [$1008], sp                                ; $6ba8: $08 $08 $10
    ld l, b                                       ; $6bab: $68
    inc c                                         ; $6bac: $0c
    ld bc, $5fd8                                  ; $6bad: $01 $d8 $5f
    add hl, bc                                    ; $6bb0: $09
    inc bc                                        ; $6bb1: $03
    nop                                           ; $6bb2: $00
    add hl, bc                                    ; $6bb3: $09
    dec b                                         ; $6bb4: $05
    db $10                                        ; $6bb5: $10
    inc c                                         ; $6bb6: $0c
    ld [$000a], sp                                ; $6bb7: $08 $0a $00
    ld c, $10                                     ; $6bba: $0e $10
    rla                                           ; $6bbc: $17
    db $10                                        ; $6bbd: $10
    db $fc                                        ; $6bbe: $fc
    ld c, $10                                     ; $6bbf: $0e $10
    ld [bc], a                                    ; $6bc1: $02
    jr z, @+$05                                   ; $6bc2: $28 $03

    jr nc, jr_0ce_6bd5                            ; $6bc4: $30 $0f

    jr z, jr_0ce_6bcc                             ; $6bc6: $28 $04

    jr nz, jr_0ce_6bcc                            ; $6bc8: $20 $02

    jr nz, @+$2b                                  ; $6bca: $20 $29

jr_0ce_6bcc:
    add hl, hl                                    ; $6bcc: $29
    ld a, a                                       ; $6bcd: $7f
    add hl, hl                                    ; $6bce: $29
    inc b                                         ; $6bcf: $04
    jr nz, jr_0ce_6be2                            ; $6bd0: $20 $10

    sub b                                         ; $6bd2: $90
    ld e, $08                                     ; $6bd3: $1e $08

jr_0ce_6bd5:
    dec h                                         ; $6bd5: $25
    nop                                           ; $6bd6: $00
    rra                                           ; $6bd7: $1f
    ld b, b                                       ; $6bd8: $40
    db $10                                        ; $6bd9: $10
    ld d, b                                       ; $6bda: $50
    ld a, $00                                     ; $6bdb: $3e $00
    db $eb                                        ; $6bdd: $eb

jr_0ce_6bde:
    inc bc                                        ; $6bde: $03
    ld [$1046], sp                                ; $6bdf: $08 $46 $10

jr_0ce_6be2:
    db $10                                        ; $6be2: $10
    ld l, b                                       ; $6be3: $68
    dec c                                         ; $6be4: $0d
    ld bc, $0a10                                  ; $6be5: $01 $10 $0a
    dec b                                         ; $6be8: $05
    jr nc, jr_0ce_6bfb                            ; $6be9: $30 $10

    ld b, b                                       ; $6beb: $40
    cp a                                          ; $6bec: $bf
    add hl, de                                    ; $6bed: $19
    jr jr_0ce_6bfa                                ; $6bee: $18 $0a

    inc bc                                        ; $6bf0: $03
    nop                                           ; $6bf1: $00
    ld [hl+], a                                   ; $6bf2: $22
    ld [$1005], sp                                ; $6bf3: $08 $05 $10
    ld [$0508], sp                                ; $6bf6: $08 $08 $05
    db $10                                        ; $6bf9: $10

jr_0ce_6bfa:
    add hl, de                                    ; $6bfa: $19

jr_0ce_6bfb:
    ld [$10fe], sp                                ; $6bfb: $08 $fe $10
    jr nz, @+$05                                  ; $6bfe: $20 $03

    jr nc, @+$07                                  ; $6c00: $30 $05

    jr nc, jr_0ce_6c29                            ; $6c02: $30 $25

    db $10                                        ; $6c04: $10
    inc h                                         ; $6c05: $24
    jr nz, jr_0ce_6c1f                            ; $6c06: $20 $17

    ld [$081b], sp                                ; $6c08: $08 $1b $08
    ld a, [hl+]                                   ; $6c0b: $2a
    ld a, [$0001]                                 ; $6c0c: $fa $01 $00
    inc c                                         ; $6c0f: $0c
    jr z, jr_0ce_6c22                             ; $6c10: $28 $10

    sbc b                                         ; $6c12: $98
    ld e, $48                                     ; $6c13: $1e $48
    db $10                                        ; $6c15: $10
    jr c, @+$10                                   ; $6c16: $38 $0e

    ld [bc], a                                    ; $6c18: $02
    nop                                           ; $6c19: $00
    ld a, [hl+]                                   ; $6c1a: $2a
    ld l, h                                       ; $6c1b: $6c
    ld l, $3f                                     ; $6c1c: $2e $3f
    nop                                           ; $6c1e: $00

jr_0ce_6c1f:
    inc b                                         ; $6c1f: $04
    jr jr_0ce_6c50                                ; $6c20: $18 $2e

jr_0ce_6c22:
    ld de, $2c00                                  ; $6c22: $11 $00 $2c
    ld [$2a2e], sp                                ; $6c25: $08 $2e $2a
    inc h                                         ; $6c28: $24

jr_0ce_6c29:
    ld a, [hl+]                                   ; $6c29: $2a
    ld c, $53                                     ; $6c2a: $0e $53
    nop                                           ; $6c2c: $00
    ld c, $2a                                     ; $6c2d: $0e $2a
    rrca                                          ; $6c2f: $0f
    nop                                           ; $6c30: $00
    ld c, $0a                                     ; $6c31: $0e $0a
    inc b                                         ; $6c33: $04
    ld l, $0e                                     ; $6c34: $2e $0e
    ld c, d                                       ; $6c36: $4a
    ld l, [hl]                                    ; $6c37: $6e
    ld a, [bc]                                    ; $6c38: $0a
    dec bc                                        ; $6c39: $0b
    nop                                           ; $6c3a: $00
    ld a, [hl+]                                   ; $6c3b: $2a
    ld l, $50                                     ; $6c3c: $2e $50
    ld c, d                                       ; $6c3e: $4a
    ld [hl-], a                                   ; $6c3f: $32
    db $10                                        ; $6c40: $10
    ld a, [hl+]                                   ; $6c41: $2a
    db $10                                        ; $6c42: $10
    jr nz, jr_0ce_6c73                            ; $6c43: $20 $2e

    ld a, [hl+]                                   ; $6c45: $2a
    ld c, [hl]                                    ; $6c46: $4e
    ld c, $b0                                     ; $6c47: $0e $b0
    ld bc, $2e28                                  ; $6c49: $01 $28 $2e
    ld a, [bc]                                    ; $6c4c: $0a
    jr nc, jr_0ce_6c5f                            ; $6c4d: $30 $10

    ld d, b                                       ; $6c4f: $50

jr_0ce_6c50:
    jr nz, jr_0ce_6c52                            ; $6c50: $20 $00

jr_0ce_6c52:
    ld c, $00                                     ; $6c52: $0e $00
    ld c, b                                       ; $6c54: $48
    ld bc, $4000                                  ; $6c55: $01 $00 $40
    ld b, c                                       ; $6c58: $41
    ld b, b                                       ; $6c59: $40
    ld b, c                                       ; $6c5a: $41
    ld b, d                                       ; $6c5b: $42
    ld b, e                                       ; $6c5c: $43
    ld b, b                                       ; $6c5d: $40
    ld b, h                                       ; $6c5e: $44

jr_0ce_6c5f:
    dec l                                         ; $6c5f: $2d
    ld b, l                                       ; $6c60: $45
    ld b, [hl]                                    ; $6c61: $46
    ld a, [bc]                                    ; $6c62: $0a
    ld [$0247], sp                                ; $6c63: $08 $47 $02
    nop                                           ; $6c66: $00
    ld [de], a                                    ; $6c67: $12
    jr nz, jr_0ce_6cab                            ; $6c68: $20 $41

    ld [de], a                                    ; $6c6a: $12
    jr jr_0ce_6c8d                                ; $6c6b: $18 $20

    ld c, b                                       ; $6c6d: $48
    ld c, c                                       ; $6c6e: $49
    ld [bc], a                                    ; $6c6f: $02
    jr jr_0ce_6cbc                                ; $6c70: $18 $4a

    ld c, e                                       ; $6c72: $4b

jr_0ce_6c73:
    ld c, b                                       ; $6c73: $48
    ld b, a                                       ; $6c74: $47
    ld c, b                                       ; $6c75: $48
    add hl, sp                                    ; $6c76: $39
    ld c, c                                       ; $6c77: $49
    ld b, h                                       ; $6c78: $44
    ld [bc], a                                    ; $6c79: $02
    nop                                           ; $6c7a: $00
    ld [de], a                                    ; $6c7b: $12
    ld b, b                                       ; $6c7c: $40
    inc e                                         ; $6c7d: $1c
    nop                                           ; $6c7e: $00
    ld c, h                                       ; $6c7f: $4c
    ld c, l                                       ; $6c80: $4d
    ld [bc], a                                    ; $6c81: $02
    jr jr_0ce_6c86                                ; $6c82: $18 $02

    ld b, d                                       ; $6c84: $42
    ld b, e                                       ; $6c85: $43

jr_0ce_6c86:
    ld c, h                                       ; $6c86: $4c
    ld b, h                                       ; $6c87: $44
    ld c, [hl]                                    ; $6c88: $4e
    ld c, a                                       ; $6c89: $4f
    ld c, $08                                     ; $6c8a: $0e $08
    ld d, b                                       ; $6c8c: $50

jr_0ce_6c8d:
    pop bc                                        ; $6c8d: $c1
    ld [bc], a                                    ; $6c8e: $02
    nop                                           ; $6c8f: $00
    ld [de], a                                    ; $6c90: $12
    jr nz, @+$4f                                  ; $6c91: $20 $4d

    ld c, [hl]                                    ; $6c93: $4e
    ld c, a                                       ; $6c94: $4f
    ld d, c                                       ; $6c95: $51
    ld d, d                                       ; $6c96: $52
    ld [bc], a                                    ; $6c97: $02
    jr c, jr_0ce_6c9b                             ; $6c98: $38 $01

    ld d, e                                       ; $6c9a: $53

jr_0ce_6c9b:
    ld d, h                                       ; $6c9b: $54
    ld d, c                                       ; $6c9c: $51
    ld b, a                                       ; $6c9d: $47
    ld d, c                                       ; $6c9e: $51
    ld d, d                                       ; $6c9f: $52
    ld b, h                                       ; $6ca0: $44
    ld [bc], a                                    ; $6ca1: $02
    nop                                           ; $6ca2: $00
    add d                                         ; $6ca3: $82
    ld [de], a                                    ; $6ca4: $12
    jr c, jr_0ce_6cfc                             ; $6ca5: $38 $55

    ld d, l                                       ; $6ca7: $55
    ld b, l                                       ; $6ca8: $45
    ld b, [hl]                                    ; $6ca9: $46
    ld d, l                                       ; $6caa: $55

jr_0ce_6cab:
    ld bc, $4220                                  ; $6cab: $01 $20 $42
    ld [hl], $43                                  ; $6cae: $36 $43
    ld d, l                                       ; $6cb0: $55
    adc b                                         ; $6cb1: $88
    nop                                           ; $6cb2: $00
    ld c, $08                                     ; $6cb3: $0e $08
    ld b, a                                       ; $6cb5: $47
    ld [bc], a                                    ; $6cb6: $02
    nop                                           ; $6cb7: $00
    ld [de], a                                    ; $6cb8: $12
    jr nz, @+$57                                  ; $6cb9: $20 $55

    dec a                                         ; $6cbb: $3d

jr_0ce_6cbc:
    ld d, [hl]                                    ; $6cbc: $56
    ld d, a                                       ; $6cbd: $57
    jr nz, jr_0ce_6ce8                            ; $6cbe: $20 $28

    jr z, jr_0ce_6cca                             ; $6cc0: $28 $08

    ld c, $00                                     ; $6cc2: $0e $00
    dec de                                        ; $6cc4: $1b
    nop                                           ; $6cc5: $00
    ld b, h                                       ; $6cc6: $44
    ld [bc], a                                    ; $6cc7: $02
    nop                                           ; $6cc8: $00
    add b                                         ; $6cc9: $80

jr_0ce_6cca:
    ld [hl], $18                                  ; $6cca: $36 $18
    ld e, b                                       ; $6ccc: $58
    ld e, c                                       ; $6ccd: $59
    ld b, d                                       ; $6cce: $42
    ld b, e                                       ; $6ccf: $43
    ld e, b                                       ; $6cd0: $58
    ld e, c                                       ; $6cd1: $59
    ld b, l                                       ; $6cd2: $45
    ld e, $46                                     ; $6cd3: $1e $46
    ld e, b                                       ; $6cd5: $58
    ld e, c                                       ; $6cd6: $59
    ld [bc], a                                    ; $6cd7: $02
    jr jr_0ce_6ce8                                ; $6cd8: $18 $0e

    nop                                           ; $6cda: $00
    call z, $0e00                                 ; $6cdb: $cc $00 $0e
    ld [$8447], sp                                ; $6cde: $08 $47 $84
    ld [bc], a                                    ; $6ce1: $02
    nop                                           ; $6ce2: $00
    ld e, b                                       ; $6ce3: $58
    ld e, c                                       ; $6ce4: $59
    ld e, d                                       ; $6ce5: $5a
    ld e, e                                       ; $6ce6: $5b
    ld [bc], a                                    ; $6ce7: $02

jr_0ce_6ce8:
    ld [$5d5c], sp                                ; $6ce8: $08 $5c $5d
    ld h, b                                       ; $6ceb: $60
    ld e, [hl]                                    ; $6cec: $5e
    ld [$0e10], sp                                ; $6ced: $08 $10 $0e
    jr z, jr_0ce_6d4c                             ; $6cf0: $28 $5a

    ld e, a                                       ; $6cf2: $5f
    ld e, d                                       ; $6cf3: $5a
    ld e, e                                       ; $6cf4: $5b
    ld h, b                                       ; $6cf5: $60
    add d                                         ; $6cf6: $82
    ld [bc], a                                    ; $6cf7: $02
    nop                                           ; $6cf8: $00
    ld e, d                                       ; $6cf9: $5a
    ld e, e                                       ; $6cfa: $5b
    ld h, c                                       ; $6cfb: $61

jr_0ce_6cfc:
    ld h, d                                       ; $6cfc: $62
    ld h, e                                       ; $6cfd: $63
    ld [bc], a                                    ; $6cfe: $02
    nop                                           ; $6cff: $00
    ld b, d                                       ; $6d00: $42
    ld b, $43                                     ; $6d01: $06 $43
    ld h, e                                       ; $6d03: $63
    ld h, d                                       ; $6d04: $62
    ld h, h                                       ; $6d05: $64
    ld h, l                                       ; $6d06: $65
    ld a, [bc]                                    ; $6d07: $0a
    ld [$200e], sp                                ; $6d08: $08 $0e $20
    ld h, [hl]                                    ; $6d0b: $66
    jr nz, jr_0ce_6d75                            ; $6d0c: $20 $67

    ld l, b                                       ; $6d0e: $68
    jr @+$0a                                      ; $6d0f: $18 $08

    ld h, c                                       ; $6d11: $61
    ld h, d                                       ; $6d12: $62
    ld b, h                                       ; $6d13: $44
    ld l, c                                       ; $6d14: $69
    ld l, d                                       ; $6d15: $6a
    sbc b                                         ; $6d16: $98
    ld [bc], a                                    ; $6d17: $02
    jr nz, jr_0ce_6d70                            ; $6d18: $20 $56

    ld d, a                                       ; $6d1a: $57
    ld a, [bc]                                    ; $6d1b: $0a
    jr z, jr_0ce_6d2c                             ; $6d1c: $28 $0e

    jr nz, jr_0ce_6d81                            ; $6d1e: $20 $61

    ld l, d                                       ; $6d20: $6a
    ld l, c                                       ; $6d21: $69
    ld bc, $6944                                  ; $6d22: $01 $44 $69
    ld l, e                                       ; $6d25: $6b
    ld l, h                                       ; $6d26: $6c
    ld b, a                                       ; $6d27: $47
    ld l, h                                       ; $6d28: $6c
    ld l, e                                       ; $6d29: $6b
    ld [bc], a                                    ; $6d2a: $02
    nop                                           ; $6d2b: $00

jr_0ce_6d2c:
    nop                                           ; $6d2c: $00
    ld l, h                                       ; $6d2d: $6c
    ld l, e                                       ; $6d2e: $6b
    ld b, d                                       ; $6d2f: $42
    ld b, e                                       ; $6d30: $43
    ld l, h                                       ; $6d31: $6c
    ld l, e                                       ; $6d32: $6b
    ld l, l                                       ; $6d33: $6d
    ld l, [hl]                                    ; $6d34: $6e
    ret nz                                        ; $6d35: $c0

    dec c                                         ; $6d36: $0d
    db $10                                        ; $6d37: $10
    ld de, $4200                                  ; $6d38: $11 $00 $42
    ld b, e                                       ; $6d3b: $43
    ld l, e                                       ; $6d3c: $6b
    ld b, h                                       ; $6d3d: $44
    ld l, l                                       ; $6d3e: $6d
    ld l, [hl]                                    ; $6d3f: $6e
    ld bc, $6f6b                                  ; $6d40: $01 $6b $6f
    ld [hl], b                                    ; $6d43: $70
    ld [hl], c                                    ; $6d44: $71
    ld [hl], d                                    ; $6d45: $72
    ld [hl], c                                    ; $6d46: $71
    ld [hl], b                                    ; $6d47: $70
    ld [bc], a                                    ; $6d48: $02
    nop                                           ; $6d49: $00
    adc l                                         ; $6d4a: $8d
    dec b                                         ; $6d4b: $05

jr_0ce_6d4c:
    db $10                                        ; $6d4c: $10
    ld [hl], b                                    ; $6d4d: $70
    ld [hl], e                                    ; $6d4e: $73
    ld [hl], h                                    ; $6d4f: $74
    ld [$1318], sp                                ; $6d50: $08 $18 $13
    ld [$0e70], sp                                ; $6d53: $08 $70 $0e
    nop                                           ; $6d56: $00
    dec b                                         ; $6d57: $05
    ld [hl], b                                    ; $6d58: $70
    ld [hl], l                                    ; $6d59: $75
    ld b, l                                       ; $6d5a: $45
    ld b, [hl]                                    ; $6d5b: $46
    halt                                          ; $6d5c: $76
    ld bc, $4700                                  ; $6d5d: $01 $00 $47
    ld [bc], a                                    ; $6d60: $02
    nop                                           ; $6d61: $00
    add [hl]                                      ; $6d62: $86
    ld [$7708], sp                                ; $6d63: $08 $08 $77
    ld a, b                                       ; $6d66: $78
    halt                                          ; $6d67: $76
    halt                                          ; $6d68: $76
    ld [de], a                                    ; $6d69: $12
    jr jr_0ce_6d7a                                ; $6d6a: $18 $0e

    jr nz, @+$7b                                  ; $6d6c: $20 $79

    cpl                                           ; $6d6e: $2f
    ld a, d                                       ; $6d6f: $7a

jr_0ce_6d70:
    ld a, e                                       ; $6d70: $7b
    dec de                                        ; $6d71: $1b
    ld [$0279], sp                                ; $6d72: $08 $79 $02

jr_0ce_6d75:
    nop                                           ; $6d75: $00
    ld d, $28                                     ; $6d76: $16 $28
    ld [de], a                                    ; $6d78: $12
    nop                                           ; $6d79: $00

jr_0ce_6d7a:
    ld bc, $0240                                  ; $6d7a: $01 $40 $02
    dec bc                                        ; $6d7d: $0b
    dec bc                                        ; $6d7e: $0b
    dec hl                                        ; $6d7f: $2b
    dec hl                                        ; $6d80: $2b

jr_0ce_6d81:
    ld a, [bc]                                    ; $6d81: $0a
    ld a, [bc]                                    ; $6d82: $0a
    inc bc                                        ; $6d83: $03
    nop                                           ; $6d84: $00
    ld a, [bc]                                    ; $6d85: $0a
    ld c, $2b                                     ; $6d86: $0e $2b
    dec hl                                        ; $6d88: $2b
    dec bc                                        ; $6d89: $0b
    dec bc                                        ; $6d8a: $0b
    add hl, bc                                    ; $6d8b: $09
    nop                                           ; $6d8c: $00
    stop                                          ; $6d8d: $10 $00
    ld [$0a00], sp                                ; $6d8f: $08 $00 $0a
    rst $20                                       ; $6d92: $e7
    inc b                                         ; $6d93: $04
    jr jr_0ce_6daa                                ; $6d94: $18 $14

    ld [$1804], sp                                ; $6d96: $08 $04 $18
    inc c                                         ; $6d99: $0c
    inc c                                         ; $6d9a: $0c
    dec de                                        ; $6d9b: $1b
    nop                                           ; $6d9c: $00
    jr nz, jr_0ce_6dcf                            ; $6d9d: $20 $30

    inc l                                         ; $6d9f: $2c
    ld [$0c3c], sp                                ; $6da0: $08 $3c $0c
    inc c                                         ; $6da3: $0c
    jr nz, @+$4a                                  ; $6da4: $20 $48

    ld b, h                                       ; $6da6: $44
    ld [$0024], sp                                ; $6da7: $08 $24 $00

jr_0ce_6daa:
    jr jr_0ce_6db4                                ; $6daa: $18 $08

    dec hl                                        ; $6dac: $2b
    inc c                                         ; $6dad: $0c
    pop hl                                        ; $6dae: $e1
    ld b, h                                       ; $6daf: $44
    jr nc, jr_0ce_6dd6                            ; $6db0: $30 $24

    ld e, b                                       ; $6db2: $58
    ld b, h                                       ; $6db3: $44

jr_0ce_6db4:
    nop                                           ; $6db4: $00
    add hl, bc                                    ; $6db5: $09
    dec bc                                        ; $6db6: $0b
    dec bc                                        ; $6db7: $0b
    add hl, bc                                    ; $6db8: $09
    dec b                                         ; $6db9: $05
    nop                                           ; $6dba: $00
    cp e                                          ; $6dbb: $bb
    ld b, h                                       ; $6dbc: $44
    ld c, b                                       ; $6dbd: $48
    add hl, bc                                    ; $6dbe: $09
    inc d                                         ; $6dbf: $14
    nop                                           ; $6dc0: $00
    ld [bc], a                                    ; $6dc1: $02
    jr jr_0ce_6dce                                ; $6dc2: $18 $0a

    nop                                           ; $6dc4: $00
    add hl, bc                                    ; $6dc5: $09
    ld c, $18                                     ; $6dc6: $0e $18
    add hl, bc                                    ; $6dc8: $09
    nop                                           ; $6dc9: $00
    db $fd                                        ; $6dca: $fd
    ld [de], a                                    ; $6dcb: $12
    jr z, @+$22                                   ; $6dcc: $28 $20

jr_0ce_6dce:
    ld b, b                                       ; $6dce: $40

jr_0ce_6dcf:
    inc h                                         ; $6dcf: $24
    jr z, @+$22                                   ; $6dd0: $28 $20

    jr c, jr_0ce_6df8                             ; $6dd2: $38 $24

    ld c, b                                       ; $6dd4: $48
    xor h                                         ; $6dd5: $ac

jr_0ce_6dd6:
    jr jr_0ce_6de1                                ; $6dd6: $18 $09

    ld e, a                                       ; $6dd8: $5f
    nop                                           ; $6dd9: $00
    db $e4                                        ; $6dda: $e4
    inc b                                         ; $6ddb: $04
    nop                                           ; $6ddc: $00
    call z, Call_0ce_6800                         ; $6ddd: $cc $00 $68
    ld c, b                                       ; $6de0: $48

jr_0ce_6de1:
    ld [$cc08], sp                                ; $6de1: $08 $08 $cc
    ld c, b                                       ; $6de4: $48
    ld [$7808], sp                                ; $6de5: $08 $08 $78
    dec hl                                        ; $6de8: $2b
    stop                                          ; $6de9: $10 $00
    dec b                                         ; $6deb: $05
    ld [$000c], sp                                ; $6dec: $08 $0c $00
    push hl                                       ; $6def: $e5
    db $10                                        ; $6df0: $10
    ld c, $0e                                     ; $6df1: $0e $0e
    dec hl                                        ; $6df3: $2b
    adc $24                                       ; $6df4: $ce $24
    nop                                           ; $6df6: $00
    db $ed                                        ; $6df7: $ed

jr_0ce_6df8:
    jr z, @+$10                                   ; $6df8: $28 $0e

    ld c, $31                                     ; $6dfa: $0e $31
    nop                                           ; $6dfc: $00
    dec e                                         ; $6dfd: $1d
    ld [$0024], sp                                ; $6dfe: $08 $24 $00
    ld c, $f8                                     ; $6e01: $0e $f8
    dec b                                         ; $6e03: $05
    ld sp, $0824                                  ; $6e04: $31 $24 $08
    ld de, $2439                                  ; $6e07: $11 $39 $24
    ld [$0038], sp                                ; $6e0a: $08 $38 $00
    dec hl                                        ; $6e0d: $2b
    rrca                                          ; $6e0e: $0f
    rrca                                          ; $6e0f: $0f
    ld de, $2f0e                                  ; $6e10: $11 $0e $2f
    rrca                                          ; $6e13: $0f
    ld [bc], a                                    ; $6e14: $02
    nop                                           ; $6e15: $00
    cpl                                           ; $6e16: $2f
    rrca                                          ; $6e17: $0f
    ld c, $09                                     ; $6e18: $0e $09
    nop                                           ; $6e1a: $00
    ld h, c                                       ; $6e1b: $61
    rrca                                          ; $6e1c: $0f
    dec bc                                        ; $6e1d: $0b
    ld [$1004], sp                                ; $6e1e: $08 $04 $10
    ld c, $0e                                     ; $6e21: $0e $0e
    rrca                                          ; $6e23: $0f
    ld c, $0f                                     ; $6e24: $0e $0f
    nop                                           ; $6e26: $00
    ld a, a                                       ; $6e27: $7f
    dec bc                                        ; $6e28: $0b
    inc de                                        ; $6e29: $13
    jr z, jr_0ce_6e44                             ; $6e2a: $28 $18

    jr jr_0ce_6e4e                                ; $6e2c: $18 $20

    jr c, jr_0ce_6e5c                             ; $6e2e: $38 $2c

    ld [$1803], sp                                ; $6e30: $08 $03 $18
    cp $08                                        ; $6e33: $fe $08
    jr z, jr_0ce_6e37                             ; $6e35: $28 $00

jr_0ce_6e37:
    rst $38                                       ; $6e37: $ff
    dec b                                         ; $6e38: $05
    ld de, $1831                                  ; $6e39: $11 $31 $18
    db $10                                        ; $6e3c: $10
    add hl, hl                                    ; $6e3d: $29
    jr nz, jr_0ce_6e60                            ; $6e3e: $20 $20

    ld [hl+], a                                   ; $6e40: $22
    nop                                           ; $6e41: $00
    jr nz, jr_0ce_6e6c                            ; $6e42: $20 $28

jr_0ce_6e44:
    inc h                                         ; $6e44: $24
    jr nz, jr_0ce_6e58                            ; $6e45: $20 $11

    ld b, c                                       ; $6e47: $41
    jr nz, jr_0ce_6e4a                            ; $6e48: $20 $00

jr_0ce_6e4a:
    dec c                                         ; $6e4a: $0d
    nop                                           ; $6e4b: $00
    sbc e                                         ; $6e4c: $9b
    ld [bc], a                                    ; $6e4d: $02

jr_0ce_6e4e:
    nop                                           ; $6e4e: $00
    ld b, b                                       ; $6e4f: $40
    ld b, c                                       ; $6e50: $41
    ld b, d                                       ; $6e51: $42
    ld b, e                                       ; $6e52: $43
    ld b, h                                       ; $6e53: $44
    ld b, c                                       ; $6e54: $41
    ld b, l                                       ; $6e55: $45
    ld b, h                                       ; $6e56: $44
    nop                                           ; $6e57: $00

jr_0ce_6e58:
    ld b, [hl]                                    ; $6e58: $46
    ld b, a                                       ; $6e59: $47
    ld c, b                                       ; $6e5a: $48
    ld c, b                                       ; $6e5b: $48

jr_0ce_6e5c:
    ld c, c                                       ; $6e5c: $49
    ld c, d                                       ; $6e5d: $4a
    ld c, e                                       ; $6e5e: $4b
    ld c, h                                       ; $6e5f: $4c

jr_0ce_6e60:
    nop                                           ; $6e60: $00
    ld c, l                                       ; $6e61: $4d
    ld c, [hl]                                    ; $6e62: $4e
    ld c, l                                       ; $6e63: $4d
    ld c, a                                       ; $6e64: $4f
    ld c, c                                       ; $6e65: $49
    ld d, b                                       ; $6e66: $50
    ld c, e                                       ; $6e67: $4b
    ld d, c                                       ; $6e68: $51
    nop                                           ; $6e69: $00
    ld b, a                                       ; $6e6a: $47
    ld b, [hl]                                    ; $6e6b: $46

jr_0ce_6e6c:
    ld b, h                                       ; $6e6c: $44
    ld b, c                                       ; $6e6d: $41
    ld d, d                                       ; $6e6e: $52
    ld b, b                                       ; $6e6f: $40
    ld b, e                                       ; $6e70: $43
    ld d, e                                       ; $6e71: $53
    nop                                           ; $6e72: $00
    ld d, e                                       ; $6e73: $53
    ld b, h                                       ; $6e74: $44
    ld d, e                                       ; $6e75: $53
    ld d, e                                       ; $6e76: $53
    ld b, l                                       ; $6e77: $45
    ld b, e                                       ; $6e78: $43
    ld b, e                                       ; $6e79: $43
    ld b, d                                       ; $6e7a: $42
    nop                                           ; $6e7b: $00
    ld b, h                                       ; $6e7c: $44
    ld d, h                                       ; $6e7d: $54
    ld d, l                                       ; $6e7e: $55
    ld d, [hl]                                    ; $6e7f: $56
    ld c, e                                       ; $6e80: $4b
    ld c, b                                       ; $6e81: $48
    ld c, b                                       ; $6e82: $48
    ld c, l                                       ; $6e83: $4d
    nop                                           ; $6e84: $00
    ld d, a                                       ; $6e85: $57
    ld e, b                                       ; $6e86: $58
    ld c, h                                       ; $6e87: $4c
    ld d, a                                       ; $6e88: $57
    ld c, h                                       ; $6e89: $4c
    ld e, b                                       ; $6e8a: $58
    ld b, a                                       ; $6e8b: $47
    ld c, l                                       ; $6e8c: $4d
    nop                                           ; $6e8d: $00
    ld b, a                                       ; $6e8e: $47
    ld e, c                                       ; $6e8f: $59
    ld d, h                                       ; $6e90: $54
    ld e, d                                       ; $6e91: $5a
    ld e, e                                       ; $6e92: $5b
    ld e, h                                       ; $6e93: $5c
    ld e, l                                       ; $6e94: $5d
    ld b, d                                       ; $6e95: $42
    nop                                           ; $6e96: $00
    ld b, e                                       ; $6e97: $43
    ld b, e                                       ; $6e98: $43
    ld b, h                                       ; $6e99: $44
    ld b, b                                       ; $6e9a: $40
    ld d, e                                       ; $6e9b: $53
    ld b, h                                       ; $6e9c: $44
    ld b, e                                       ; $6e9d: $43
    ld b, d                                       ; $6e9e: $42
    nop                                           ; $6e9f: $00
    ld b, b                                       ; $6ea0: $40
    ld b, h                                       ; $6ea1: $44
    ld d, h                                       ; $6ea2: $54
    ld d, h                                       ; $6ea3: $54
    ld e, h                                       ; $6ea4: $5c
    ld d, h                                       ; $6ea5: $54
    ld d, l                                       ; $6ea6: $55
    ld b, a                                       ; $6ea7: $47
    nop                                           ; $6ea8: $00
    ld d, l                                       ; $6ea9: $55
    ld c, d                                       ; $6eaa: $4a
    ld c, l                                       ; $6eab: $4d
    ld c, a                                       ; $6eac: $4f
    ld c, l                                       ; $6ead: $4d
    ld c, e                                       ; $6eae: $4b
    ld c, c                                       ; $6eaf: $49
    ld c, d                                       ; $6eb0: $4a
    nop                                           ; $6eb1: $00
    ld c, c                                       ; $6eb2: $49
    ld e, [hl]                                    ; $6eb3: $5e
    ld d, [hl]                                    ; $6eb4: $56
    ld e, a                                       ; $6eb5: $5f
    ld h, b                                       ; $6eb6: $60
    ld d, [hl]                                    ; $6eb7: $56
    ld h, b                                       ; $6eb8: $60
    ld h, c                                       ; $6eb9: $61
    inc c                                         ; $6eba: $0c
    ld d, h                                       ; $6ebb: $54
    ld b, l                                       ; $6ebc: $45
    ld b, e                                       ; $6ebd: $43
    ld b, c                                       ; $6ebe: $41
    ld b, [hl]                                    ; $6ebf: $46
    ld [$0022], sp                                ; $6ec0: $08 $22 $00
    ld b, d                                       ; $6ec3: $42
    ld d, e                                       ; $6ec4: $53
    nop                                           ; $6ec5: $00
    ld b, h                                       ; $6ec6: $44
    ld e, d                                       ; $6ec7: $5a
    ld e, e                                       ; $6ec8: $5b
    ld d, h                                       ; $6ec9: $54
    ld h, d                                       ; $6eca: $62
    ld d, c                                       ; $6ecb: $51
    ld c, e                                       ; $6ecc: $4b
    ld c, b                                       ; $6ecd: $48
    nop                                           ; $6ece: $00
    ld c, d                                       ; $6ecf: $4a
    ld c, e                                       ; $6ed0: $4b
    ld c, b                                       ; $6ed1: $48
    ld c, h                                       ; $6ed2: $4c
    ld h, e                                       ; $6ed3: $63
    ld b, a                                       ; $6ed4: $47
    ld c, l                                       ; $6ed5: $4d
    ld h, h                                       ; $6ed6: $64
    ld bc, $4847                                  ; $6ed7: $01 $47 $48
    ld h, l                                       ; $6eda: $65
    ld d, [hl]                                    ; $6edb: $56
    ld e, h                                       ; $6edc: $5c
    ld d, h                                       ; $6edd: $54
    ld b, [hl]                                    ; $6ede: $46
    ld b, d                                       ; $6edf: $42
    nop                                           ; $6ee0: $00
    ret z                                         ; $6ee1: $c8

    ld h, a                                       ; $6ee2: $67
    ld [$1070], sp                                ; $6ee3: $08 $70 $10
    ld b, d                                       ; $6ee6: $42
    ld b, [hl]                                    ; $6ee7: $46
    ld l, c                                       ; $6ee8: $69
    nop                                           ; $6ee9: $00
    ld d, l                                       ; $6eea: $55
    ld d, a                                       ; $6eeb: $57
    ld c, e                                       ; $6eec: $4b
    nop                                           ; $6eed: $00
    ld c, d                                       ; $6eee: $4a
    ld h, [hl]                                    ; $6eef: $66
    ld c, c                                       ; $6ef0: $49
    ld d, a                                       ; $6ef1: $57
    ld c, a                                       ; $6ef2: $4f
    ld c, l                                       ; $6ef3: $4d
    ld d, b                                       ; $6ef4: $50
    ld c, e                                       ; $6ef5: $4b
    ld a, [hl+]                                   ; $6ef6: $2a
    ld c, l                                       ; $6ef7: $4d
    ld c, [hl]                                    ; $6ef8: $4e
    ld l, d                                       ; $6ef9: $6a
    nop                                           ; $6efa: $00
    ld b, e                                       ; $6efb: $43
    ld h, a                                       ; $6efc: $67
    nop                                           ; $6efd: $00
    ld b, e                                       ; $6efe: $43
    add [hl]                                      ; $6eff: $86

Call_0ce_6f00:
    nop                                           ; $6f00: $00
    ld b, h                                       ; $6f01: $44
    ld a, [bc]                                    ; $6f02: $0a
    ld b, h                                       ; $6f03: $44
    ld d, e                                       ; $6f04: $53
    ld b, d                                       ; $6f05: $42
    ld b, l                                       ; $6f06: $45
    ld l, c                                       ; $6f07: $69
    nop                                           ; $6f08: $00
    ld h, b                                       ; $6f09: $60
    adc c                                         ; $6f0a: $89
    nop                                           ; $6f0b: $00
    ld h, a                                       ; $6f0c: $67
    nop                                           ; $6f0d: $00
    ld c, h                                       ; $6f0e: $4c
    ld e, b                                       ; $6f0f: $58
    ld l, b                                       ; $6f10: $68
    ld c, h                                       ; $6f11: $4c
    ld c, e                                       ; $6f12: $4b
    ld l, c                                       ; $6f13: $69
    ld c, h                                       ; $6f14: $4c
    ld e, b                                       ; $6f15: $58
    inc bc                                        ; $6f16: $03
    ld c, e                                       ; $6f17: $4b
    ld c, a                                       ; $6f18: $4f
    ld b, a                                       ; $6f19: $47
    ld e, h                                       ; $6f1a: $5c
    ld b, l                                       ; $6f1b: $45
    ld d, e                                       ; $6f1c: $53
    xor c                                         ; $6f1d: $a9
    nop                                           ; $6f1e: $00
    jp z, $0800                                   ; $6f1f: $ca $00 $08

    ld b, e                                       ; $6f22: $43
    ld b, d                                       ; $6f23: $42
    ld d, e                                       ; $6f24: $53
    ld b, e                                       ; $6f25: $43
    ld [hl+], a                                   ; $6f26: $22
    nop                                           ; $6f27: $00
    ld b, [hl]                                    ; $6f28: $46
    ld h, b                                       ; $6f29: $60
    ld d, l                                       ; $6f2a: $55
    ld b, b                                       ; $6f2b: $40
    ld h, l                                       ; $6f2c: $65
    adc c                                         ; $6f2d: $89
    nop                                           ; $6f2e: $00
    ld c, d                                       ; $6f2f: $4a
    ld c, e                                       ; $6f30: $4b
    ld d, a                                       ; $6f31: $57
    ld c, c                                       ; $6f32: $49
    ld c, d                                       ; $6f33: $4a
    ld c, d                                       ; $6f34: $4a
    nop                                           ; $6f35: $00
    ld c, h                                       ; $6f36: $4c
    ld d, a                                       ; $6f37: $57
    ld c, l                                       ; $6f38: $4d
    ld d, [hl]                                    ; $6f39: $56
    ld b, [hl]                                    ; $6f3a: $46
    ld l, d                                       ; $6f3b: $6a
    ld b, d                                       ; $6f3c: $42
    ld e, h                                       ; $6f3d: $5c
    dec d                                         ; $6f3e: $15
    ld b, h                                       ; $6f3f: $44
    ld b, c                                       ; $6f40: $41
    ld d, e                                       ; $6f41: $53
    xor e                                         ; $6f42: $ab
    ld [$2244], sp                                ; $6f43: $08 $44 $22
    nop                                           ; $6f46: $00
    ld l, d                                       ; $6f47: $6a
    ld [hl], l                                    ; $6f48: $75
    nop                                           ; $6f49: $00
    add b                                         ; $6f4a: $80
    adc c                                         ; $6f4b: $89
    nop                                           ; $6f4c: $00
    ld c, a                                       ; $6f4d: $4f
    ld c, l                                       ; $6f4e: $4d
    ld e, b                                       ; $6f4f: $58
    ld c, e                                       ; $6f50: $4b
    ld d, l                                       ; $6f51: $55
    ld c, b                                       ; $6f52: $48
    ld c, l                                       ; $6f53: $4d
    nop                                           ; $6f54: $00
    ld c, l                                       ; $6f55: $4d
    ld c, [hl]                                    ; $6f56: $4e
    ld c, c                                       ; $6f57: $49
    ld b, a                                       ; $6f58: $47
    ld d, h                                       ; $6f59: $54
    ld b, [hl]                                    ; $6f5a: $46
    ld d, [hl]                                    ; $6f5b: $56
    ld e, h                                       ; $6f5c: $5c
    jr jr_0ce_6fa4                                ; $6f5d: $18 $45

    ld b, b                                       ; $6f5f: $40
    ld b, c                                       ; $6f60: $41
    ld h, a                                       ; $6f61: $67
    nop                                           ; $6f62: $00
    ld l, d                                       ; $6f63: $6a
    nop                                           ; $6f64: $00
    ld b, d                                       ; $6f65: $42
    ld b, b                                       ; $6f66: $40
    ld l, e                                       ; $6f67: $6b
    nop                                           ; $6f68: $00
    ld d, d                                       ; $6f69: $52
    ld l, e                                       ; $6f6a: $6b
    ld b, d                                       ; $6f6b: $42
    ld e, d                                       ; $6f6c: $5a
    ld d, h                                       ; $6f6d: $54
    ld l, h                                       ; $6f6e: $6c
    ld h, d                                       ; $6f6f: $62
    ld c, l                                       ; $6f70: $4d
    ld de, $594d                                  ; $6f71: $11 $4d $59
    ld d, l                                       ; $6f74: $55
    push af                                       ; $6f75: $f5
    nop                                           ; $6f76: $00
    ld c, h                                       ; $6f77: $4c
    ld c, c                                       ; $6f78: $49
    ld c, b                                       ; $6f79: $48
    rra                                           ; $6f7a: $1f
    ld bc, $5432                                  ; $6f7b: $01 $32 $54
    ld e, h                                       ; $6f7e: $5c
    inc d                                         ; $6f7f: $14
    ld bc, $1112                                  ; $6f80: $01 $12 $11
    ld b, e                                       ; $6f83: $43
    ld b, e                                       ; $6f84: $43
    scf                                           ; $6f85: $37
    ld bc, $0445                                  ; $6f86: $01 $45 $04
    ld l, d                                       ; $6f89: $6a
    ld e, e                                       ; $6f8a: $5b
    ld d, h                                       ; $6f8b: $54
    ld d, c                                       ; $6f8c: $51
    ld h, l                                       ; $6f8d: $65
    db $f4                                        ; $6f8e: $f4
    nop                                           ; $6f8f: $00
    ld d, l                                       ; $6f90: $55
    ld c, b                                       ; $6f91: $48
    ld [de], a                                    ; $6f92: $12
    ld c, d                                       ; $6f93: $4a
    ld c, l                                       ; $6f94: $4d
    ld c, e                                       ; $6f95: $4b
    scf                                           ; $6f96: $37
    ld bc, $5565                                  ; $6f97: $01 $65 $55
    inc d                                         ; $6f9a: $14
    ld bc, $056a                                  ; $6f9b: $01 $6a $05
    ld b, d                                       ; $6f9e: $42
    ld b, b                                       ; $6f9f: $40
    ld b, c                                       ; $6fa0: $41
    ld b, c                                       ; $6fa1: $41
    ld b, c                                       ; $6fa2: $41
    db $eb                                        ; $6fa3: $eb

jr_0ce_6fa4:
    nop                                           ; $6fa4: $00
    ld d, e                                       ; $6fa5: $53
    inc h                                         ; $6fa6: $24
    nop                                           ; $6fa7: $00
    nop                                           ; $6fa8: $00
    ld d, d                                       ; $6fa9: $52
    ld e, d                                       ; $6faa: $5a
    ld d, h                                       ; $6fab: $54
    ld b, e                                       ; $6fac: $43
    ld b, e                                       ; $6fad: $43
    ld e, d                                       ; $6fae: $5a
    ld d, h                                       ; $6faf: $54
    ld b, a                                       ; $6fb0: $47
    ld de, $574d                                  ; $6fb1: $11 $4d $57
    ld c, e                                       ; $6fb4: $4b
    scf                                           ; $6fb5: $37
    ld bc, $484d                                  ; $6fb6: $01 $4d $48
    ld d, c                                       ; $6fb9: $51
    ld [hl], $01                                  ; $6fba: $36 $01
    ld [$5446], sp                                ; $6fbc: $08 $46 $54
    ld b, [hl]                                    ; $6fbf: $46
    ld b, l                                       ; $6fc0: $45
    ld b, d                                       ; $6fc1: $42
    ld [$4245], sp                                ; $6fc2: $08 $45 $42
    ld b, c                                       ; $6fc5: $41
    adc h                                         ; $6fc6: $8c
    ld [hl], $09                                  ; $6fc7: $36 $09
    ld l, d                                       ; $6fc9: $6a
    ld b, b                                       ; $6fca: $40
    ld b, c                                       ; $6fcb: $41
    ld a, h                                       ; $6fcc: $7c
    ld bc, $0843                                  ; $6fcd: $01 $43 $08
    ld c, a                                       ; $6fd0: $4f
    ld c, h                                       ; $6fd1: $4c
    nop                                           ; $6fd2: $00
    ld c, l                                       ; $6fd3: $4d
    ld c, l                                       ; $6fd4: $4d
    ld b, a                                       ; $6fd5: $47
    ld e, [hl]                                    ; $6fd6: $5e
    ld d, [hl]                                    ; $6fd7: $56
    ld d, l                                       ; $6fd8: $55
    ld d, [hl]                                    ; $6fd9: $56
    ld h, b                                       ; $6fda: $60
    ld [bc], a                                    ; $6fdb: $02
    ld e, h                                       ; $6fdc: $5c
    ld b, d                                       ; $6fdd: $42
    ld l, e                                       ; $6fde: $6b
    ld b, e                                       ; $6fdf: $43
    ld b, c                                       ; $6fe0: $41
    ld d, d                                       ; $6fe1: $52
    inc bc                                        ; $6fe2: $03
    nop                                           ; $6fe3: $00
    ld b, b                                       ; $6fe4: $40
    nop                                           ; $6fe5: $00
    ld d, e                                       ; $6fe6: $53
    ld b, c                                       ; $6fe7: $41
    dec bc                                        ; $6fe8: $0b
    dec bc                                        ; $6fe9: $0b
    dec bc                                        ; $6fea: $0b
    inc c                                         ; $6feb: $0c
    dec c                                         ; $6fec: $0d
    ld l, h                                       ; $6fed: $6c
    ld bc, $4d0b                                  ; $6fee: $01 $0b $4d
    inc c                                         ; $6ff1: $0c
    add hl, bc                                    ; $6ff2: $09
    ld [$0849], sp                                ; $6ff3: $08 $49 $08
    ld bc, $1000                                  ; $6ff6: $01 $00 $10
    add hl, bc                                    ; $6ff9: $09
    ld [$070a], sp                                ; $6ffa: $08 $0a $07
    nop                                           ; $6ffd: $00
    ld a, [bc]                                    ; $6ffe: $0a
    add hl, bc                                    ; $6fff: $09
    ld l, c                                       ; $7000: $69
    ld l, l                                       ; $7001: $6d
    nop                                           ; $7002: $00
    dec bc                                        ; $7003: $0b
    inc l                                         ; $7004: $2c
    dec c                                         ; $7005: $0d
    dec hl                                        ; $7006: $2b
    ld l, e                                       ; $7007: $6b
    inc c                                         ; $7008: $0c
    ld l, h                                       ; $7009: $6c
    dec bc                                        ; $700a: $0b
    nop                                           ; $700b: $00
    ld l, l                                       ; $700c: $6d
    dec hl                                        ; $700d: $2b
    dec bc                                        ; $700e: $0b
    ld l, l                                       ; $700f: $6d
    dec bc                                        ; $7010: $0b
    inc c                                         ; $7011: $0c
    ld c, e                                       ; $7012: $4b
    dec c                                         ; $7013: $0d
    nop                                           ; $7014: $00
    add hl, bc                                    ; $7015: $09
    add hl, bc                                    ; $7016: $09
    ld c, b                                       ; $7017: $48
    ld c, b                                       ; $7018: $48
    ld c, d                                       ; $7019: $4a
    ld l, d                                       ; $701a: $6a
    ld a, [bc]                                    ; $701b: $0a
    ld a, [bc]                                    ; $701c: $0a
    nop                                           ; $701d: $00
    ld a, [bc]                                    ; $701e: $0a
    ld a, [hl+]                                   ; $701f: $2a
    ld a, [bc]                                    ; $7020: $0a
    ld [$0968], sp                                ; $7021: $08 $68 $09
    ld l, b                                       ; $7024: $68
    ld [$6d00], sp                                ; $7025: $08 $00 $6d
    dec c                                         ; $7028: $0d
    dec bc                                        ; $7029: $0b
    dec bc                                        ; $702a: $0b
    dec c                                         ; $702b: $0d
    ld l, e                                       ; $702c: $6b
    dec bc                                        ; $702d: $0b
    ld l, l                                       ; $702e: $6d
    nop                                           ; $702f: $00
    ld c, e                                       ; $7030: $4b
    ld c, e                                       ; $7031: $4b
    ld l, e                                       ; $7032: $6b
    dec bc                                        ; $7033: $0b
    ld c, e                                       ; $7034: $4b
    dec bc                                        ; $7035: $0b
    ld c, l                                       ; $7036: $4d
    ld l, e                                       ; $7037: $6b
    ld [$0c0d], sp                                ; $7038: $08 $0d $0c
    ld l, e                                       ; $703b: $6b
    dec c                                         ; $703c: $0d
    dec a                                         ; $703d: $3d
    ld [$4848], sp                                ; $703e: $08 $48 $48
    ld l, d                                       ; $7041: $6a
    and b                                         ; $7042: $a0
    ld b, h                                       ; $7043: $44
    nop                                           ; $7044: $00
    jr z, jr_0ce_7096                             ; $7045: $28 $4f

    ld [$0949], sp                                ; $7047: $08 $49 $09
    dec c                                         ; $704a: $0d
    ld l, l                                       ; $704b: $6d
    ld l, e                                       ; $704c: $6b
    nop                                           ; $704d: $00
    ld c, h                                       ; $704e: $4c
    dec hl                                        ; $704f: $2b
    ld l, l                                       ; $7050: $6d
    dec bc                                        ; $7051: $0b
    dec l                                         ; $7052: $2d
    ld c, e                                       ; $7053: $4b
    dec bc                                        ; $7054: $0b
    dec c                                         ; $7055: $0d
    nop                                           ; $7056: $00
    dec bc                                        ; $7057: $0b
    inc c                                         ; $7058: $0c
    dec hl                                        ; $7059: $2b
    ld c, e                                       ; $705a: $4b
    ld c, l                                       ; $705b: $4d
    ld c, l                                       ; $705c: $4d
    dec c                                         ; $705d: $0d
    ld [$4800], sp                                ; $705e: $08 $00 $48
    ld c, d                                       ; $7061: $4a
    ld c, b                                       ; $7062: $48
    ld l, d                                       ; $7063: $6a
    ld c, b                                       ; $7064: $48
    ld c, c                                       ; $7065: $49
    ld a, [bc]                                    ; $7066: $0a
    ld [$6900], sp                                ; $7067: $08 $00 $69
    ld [$6808], sp                                ; $706a: $08 $08 $68
    ld c, b                                       ; $706d: $48
    ld [$2d49], sp                                ; $706e: $08 $49 $2d
    nop                                           ; $7071: $00
    ld c, h                                       ; $7072: $4c
    ld l, l                                       ; $7073: $6d
    dec bc                                        ; $7074: $0b
    dec bc                                        ; $7075: $0b
    inc l                                         ; $7076: $2c
    ld l, e                                       ; $7077: $6b
    dec bc                                        ; $7078: $0b
    ld l, e                                       ; $7079: $6b
    dec b                                         ; $707a: $05
    ld l, e                                       ; $707b: $6b
    inc l                                         ; $707c: $2c
    dec bc                                        ; $707d: $0b
    dec l                                         ; $707e: $2d
    ld l, h                                       ; $707f: $6c
    adc a                                         ; $7080: $8f
    nop                                           ; $7081: $00
    dec bc                                        ; $7082: $0b
    add a                                         ; $7083: $87
    nop                                           ; $7084: $00
    inc e                                         ; $7085: $1c
    ld a, [hl+]                                   ; $7086: $2a
    ld c, b                                       ; $7087: $48
    ld a, [hl+]                                   ; $7088: $2a
    dec b                                         ; $7089: $05
    nop                                           ; $708a: $00
    adc e                                         ; $708b: $8b
    nop                                           ; $708c: $00
    adc l                                         ; $708d: $8d
    nop                                           ; $708e: $00
    add hl, hl                                    ; $708f: $29
    add hl, bc                                    ; $7090: $09
    nop                                           ; $7091: $00
    ld l, h                                       ; $7092: $6c
    dec bc                                        ; $7093: $0b
    dec l                                         ; $7094: $2d
    inc l                                         ; $7095: $2c

jr_0ce_7096:
    ld l, e                                       ; $7096: $6b
    ld c, l                                       ; $7097: $4d
    ld c, h                                       ; $7098: $4c
    dec c                                         ; $7099: $0d
    nop                                           ; $709a: $00
    dec l                                         ; $709b: $2d
    ld c, l                                       ; $709c: $4d
    ld c, e                                       ; $709d: $4b
    inc c                                         ; $709e: $0c
    dec c                                         ; $709f: $0d
    dec bc                                        ; $70a0: $0b

Call_0ce_70a1:
    ld l, e                                       ; $70a1: $6b
    dec c                                         ; $70a2: $0d
    ld d, c                                       ; $70a3: $51
    dec c                                         ; $70a4: $0d
    ld h, l                                       ; $70a5: $65
    ld [$1d09], sp                                ; $70a6: $08 $09 $1d
    ld [$0948], sp                                ; $70a9: $08 $48 $09
    ld c, d                                       ; $70ac: $4a
    adc h                                         ; $70ad: $8c
    ld [$2d00], sp                                ; $70ae: $08 $00 $2d
    ld c, e                                       ; $70b1: $4b
    inc c                                         ; $70b2: $0c
    dec bc                                        ; $70b3: $0b
    dec l                                         ; $70b4: $2d
    dec l                                         ; $70b5: $2d
    dec bc                                        ; $70b6: $0b
    dec bc                                        ; $70b7: $0b
    ld de, $4d2d                                  ; $70b8: $11 $2d $4d
    ld l, l                                       ; $70bb: $6d
    ld b, d                                       ; $70bc: $42
    nop                                           ; $70bd: $00
    inc c                                         ; $70be: $0c
    ld l, e                                       ; $70bf: $6b
    inc c                                         ; $70c0: $0c
    xor h                                         ; $70c1: $ac
    nop                                           ; $70c2: $00
    ld [bc], a                                    ; $70c3: $02
    ld [$4809], sp                                ; $70c4: $08 $09 $48
    jr z, @+$4b                                   ; $70c7: $28 $49

    ld a, [hl+]                                   ; $70c9: $2a
    ld h, [hl]                                    ; $70ca: $66
    nop                                           ; $70cb: $00
    ld a, [bc]                                    ; $70cc: $0a
    nop                                           ; $70cd: $00
    jr z, jr_0ce_70f8                             ; $70ce: $28 $28

    ld c, c                                       ; $70d0: $49
    ld l, l                                       ; $70d1: $6d
    dec bc                                        ; $70d2: $0b
    ld l, h                                       ; $70d3: $6c
    dec hl                                        ; $70d4: $2b
    ld c, e                                       ; $70d5: $4b
    nop                                           ; $70d6: $00
    dec hl                                        ; $70d7: $2b
    ld l, l                                       ; $70d8: $6d
    ld c, l                                       ; $70d9: $4d
    ld c, l                                       ; $70da: $4d
    ld l, e                                       ; $70db: $6b
    dec l                                         ; $70dc: $2d

jr_0ce_70dd:
    dec bc                                        ; $70dd: $0b
    ld l, e                                       ; $70de: $6b
    ld bc, $0b0b                                  ; $70df: $01 $0b $0b
    ld l, e                                       ; $70e2: $6b
    ld l, l                                       ; $70e3: $6d
    dec l                                         ; $70e4: $2d
    dec hl                                        ; $70e5: $2b
    inc c                                         ; $70e6: $0c
    xor c                                         ; $70e7: $a9
    nop                                           ; $70e8: $00
    db $10                                        ; $70e9: $10
    ld c, b                                       ; $70ea: $48
    ld a, [bc]                                    ; $70eb: $0a
    ld c, d                                       ; $70ec: $4a
    or b                                          ; $70ed: $b0
    nop                                           ; $70ee: $00
    ld l, d                                       ; $70ef: $6a
    ld l, b                                       ; $70f0: $68
    ld [$0068], sp                                ; $70f1: $08 $68 $00
    ld l, l                                       ; $70f4: $6d
    ld c, l                                       ; $70f5: $4d
    ld c, c                                       ; $70f6: $49
    dec hl                                        ; $70f7: $2b

jr_0ce_70f8:
    ld c, h                                       ; $70f8: $4c
    dec hl                                        ; $70f9: $2b
    ld c, e                                       ; $70fa: $4b
    ld c, e                                       ; $70fb: $4b
    nop                                           ; $70fc: $00
    dec bc                                        ; $70fd: $0b
    ld l, l                                       ; $70fe: $6d
    ld l, h                                       ; $70ff: $6c
    ld c, l                                       ; $7100: $4d
    dec hl                                        ; $7101: $2b
    dec c                                         ; $7102: $0d
    ld c, h                                       ; $7103: $4c
    dec bc                                        ; $7104: $0b
    ld sp, $2b0b                                  ; $7105: $31 $0b $2b
    adc $08                                       ; $7108: $ce $08
    call z, Call_000_0810                         ; $710a: $cc $10 $08
    ld c, c                                       ; $710d: $49
    ld l, c                                       ; $710e: $69
    inc de                                        ; $710f: $13
    add hl, bc                                    ; $7110: $09
    ld bc, $4808                                  ; $7111: $01 $08 $48
    ld l, e                                       ; $7114: $6b
    inc l                                         ; $7115: $2c
    ld l, e                                       ; $7116: $6b
    dec c                                         ; $7117: $0d
    dec l                                         ; $7118: $2d
    inc bc                                        ; $7119: $03
    nop                                           ; $711a: $00
    ld [$6c4c], sp                                ; $711b: $08 $4c $6c
    dec c                                         ; $711e: $0d
    dec hl                                        ; $711f: $2b
    ei                                            ; $7120: $fb
    nop                                           ; $7121: $00
    inc c                                         ; $7122: $0c
    ld l, e                                       ; $7123: $6b
    ld l, e                                       ; $7124: $6b
    ld h, $0d                                     ; $7125: $26 $0d
    ld c, b                                       ; $7127: $48
    ld e, d                                       ; $7128: $5a
    nop                                           ; $7129: $00
    ld a, [bc]                                    ; $712a: $0a
    jr z, jr_0ce_70dd                             ; $712b: $28 $b0

    nop                                           ; $712d: $00
    ld c, b                                       ; $712e: $48
    nop                                           ; $712f: $00
    add hl, bc                                    ; $7130: $09
    ld hl, $6a28                                  ; $7131: $21 $28 $6a
    ld l, b                                       ; $7134: $68
    nop                                           ; $7135: $00
    dec bc                                        ; $7136: $0b
    ld l, e                                       ; $7137: $6b
    ld c, h                                       ; $7138: $4c
    ld c, e                                       ; $7139: $4b
    adc d                                         ; $713a: $8a
    nop                                           ; $713b: $00
    nop                                           ; $713c: $00
    ld l, e                                       ; $713d: $6b
    dec bc                                        ; $713e: $0b
    ld l, h                                       ; $713f: $6c
    dec c                                         ; $7140: $0d
    ld c, h                                       ; $7141: $4c
    ld l, e                                       ; $7142: $6b
    ld c, l                                       ; $7143: $4d
    ld l, l                                       ; $7144: $6d
    nop                                           ; $7145: $00
    dec bc                                        ; $7146: $0b
    dec hl                                        ; $7147: $2b
    ld l, e                                       ; $7148: $6b
    ld l, l                                       ; $7149: $6d
    dec c                                         ; $714a: $0d
    ld [$0a68], sp                                ; $714b: $08 $68 $0a
    ld l, $28                                     ; $714e: $2e $28
    ld a, [bc]                                    ; $7150: $0a
    add a                                         ; $7151: $87

jr_0ce_7152:
    nop                                           ; $7152: $00
    jr z, jr_0ce_718d                             ; $7153: $28 $38

    ld bc, $0084                                  ; $7155: $01 $84 $00
    ld [hl-], a                                   ; $7158: $32
    ld bc, $906c                                  ; $7159: $01 $6c $90
    ld [hl], e                                    ; $715c: $73
    ld bc, $2b0c                                  ; $715d: $01 $0c $2b
    call $2d00                                    ; $7160: $cd $00 $2d
    dec c                                         ; $7163: $0d
    inc l                                         ; $7164: $2c
    ld c, e                                       ; $7165: $4b
    ld [$0d6b], sp                                ; $7166: $08 $6b $0d
    add hl, bc                                    ; $7169: $09
    ld [$015d], sp                                ; $716a: $08 $5d $01
    ld c, d                                       ; $716d: $4a
    ld c, c                                       ; $716e: $49
    ld c, b                                       ; $716f: $48
    nop                                           ; $7170: $00
    ld [$0868], sp                                ; $7171: $08 $68 $08
    ld c, b                                       ; $7174: $48
    ld l, b                                       ; $7175: $68
    ld c, c                                       ; $7176: $49
    add hl, bc                                    ; $7177: $09
    dec hl                                        ; $7178: $2b
    nop                                           ; $7179: $00
    ld l, e                                       ; $717a: $6b
    ld c, l                                       ; $717b: $4d
    dec hl                                        ; $717c: $2b
    inc l                                         ; $717d: $2c
    inc c                                         ; $717e: $0c
    dec hl                                        ; $717f: $2b
    dec l                                         ; $7180: $2d
    inc c                                         ; $7181: $0c
    nop                                           ; $7182: $00
    inc l                                         ; $7183: $2c
    ld l, l                                       ; $7184: $6d
    inc c                                         ; $7185: $0c
    jr nz, jr_0ce_7188                            ; $7186: $20 $00

jr_0ce_7188:
    dec c                                         ; $7188: $0d
    nop                                           ; $7189: $00
    db $ed                                        ; $718a: $ed
    nop                                           ; $718b: $00
    rla                                           ; $718c: $17

jr_0ce_718d:
    ld b, b                                       ; $718d: $40
    ld b, c                                       ; $718e: $41
    ld b, d                                       ; $718f: $42
    ld bc, $4300                                  ; $7190: $01 $00 $43
    dec b                                         ; $7193: $05
    ld [$0009], sp                                ; $7194: $08 $09 $00
    ld c, $18                                     ; $7197: $0e $18
    and a                                         ; $7199: $a7
    dec c                                         ; $719a: $0d
    jr nz, jr_0ce_71e0                            ; $719b: $20 $43

    inc e                                         ; $719d: $1c
    ld [$4544], sp                                ; $719e: $08 $44 $45
    ld d, $30                                     ; $71a1: $16 $30
    stop                                          ; $71a3: $10 $00
    ld c, $08                                     ; $71a5: $0e $08
    ret nz                                        ; $71a7: $c0

    add hl, de                                    ; $71a8: $19
    jr nz, jr_0ce_71e2                            ; $71a9: $20 $37

    nop                                           ; $71ab: $00
    ld b, h                                       ; $71ac: $44
    ld b, l                                       ; $71ad: $45
    ld b, b                                       ; $71ae: $40
    ld b, c                                       ; $71af: $41
    ld b, [hl]                                    ; $71b0: $46
    ld b, [hl]                                    ; $71b1: $46
    nop                                           ; $71b2: $00
    ld b, a                                       ; $71b3: $47
    ld b, [hl]                                    ; $71b4: $46
    ld c, b                                       ; $71b5: $48
    ld c, c                                       ; $71b6: $49
    ld b, [hl]                                    ; $71b7: $46
    ld b, [hl]                                    ; $71b8: $46
    ld c, d                                       ; $71b9: $4a
    ld b, [hl]                                    ; $71ba: $46
    ld [hl], l                                    ; $71bb: $75
    ld b, [hl]                                    ; $71bc: $46
    ld [$0210], sp                                ; $71bd: $08 $10 $02
    db $10                                        ; $71c0: $10
    add hl, bc                                    ; $71c1: $09
    ld b, b                                       ; $71c2: $40
    ld c, e                                       ; $71c3: $4b
    ld bc, $4c48                                  ; $71c4: $01 $48 $4c
    dec b                                         ; $71c7: $05
    jr nc, jr_0ce_7152                            ; $71c8: $30 $88

    ld b, $20                                     ; $71ca: $06 $20
    ld c, e                                       ; $71cc: $4b
    ld c, e                                       ; $71cd: $4b
    ld c, l                                       ; $71ce: $4d
    ld bc, $42e0                                  ; $71cf: $01 $e0 $42
    ld c, [hl]                                    ; $71d2: $4e
    ld c, a                                       ; $71d3: $4f
    ld h, l                                       ; $71d4: $65
    ld c, h                                       ; $71d5: $4c
    and d                                         ; $71d6: $a2
    ld [$2805], sp                                ; $71d7: $08 $05 $28
    ld d, b                                       ; $71da: $50
    ld d, c                                       ; $71db: $51
    xor e                                         ; $71dc: $ab
    jr jr_0ce_722b                                ; $71dd: $18 $4c

    add hl, bc                                    ; $71df: $09

jr_0ce_71e0:
    db $10                                        ; $71e0: $10
    inc b                                         ; $71e1: $04

jr_0ce_71e2:
    ld c, h                                       ; $71e2: $4c
    ld b, d                                       ; $71e3: $42
    ld c, h                                       ; $71e4: $4c
    ld d, d                                       ; $71e5: $52
    ld d, e                                       ; $71e6: $53
    dec d                                         ; $71e7: $15
    jr @+$4e                                      ; $71e8: $18 $4c

    ld b, d                                       ; $71ea: $42
    ld b, b                                       ; $71eb: $40
    ld d, h                                       ; $71ec: $54
    daa                                           ; $71ed: $27
    ld [$5655], sp                                ; $71ee: $08 $55 $56
    ld d, a                                       ; $71f1: $57
    ld e, b                                       ; $71f2: $58
    ld e, c                                       ; $71f3: $59
    ld b, d                                       ; $71f4: $42
    inc b                                         ; $71f5: $04
    ld e, d                                       ; $71f6: $5a
    ld d, a                                       ; $71f7: $57
    ld b, d                                       ; $71f8: $42
    ld d, l                                       ; $71f9: $55
    ld d, [hl]                                    ; $71fa: $56
    ld b, $08                                     ; $71fb: $06 $08
    ld b, d                                       ; $71fd: $42
    ld e, e                                       ; $71fe: $5b
    add hl, de                                    ; $71ff: $19
    ld e, h                                       ; $7200: $5c
    ld e, l                                       ; $7201: $5d
    ld e, [hl]                                    ; $7202: $5e
    dec d                                         ; $7203: $15
    nop                                           ; $7204: $00
    push hl                                       ; $7205: $e5
    ld [$5f54], sp                                ; $7206: $08 $54 $5f
    ld c, d                                       ; $7209: $4a
    db $10                                        ; $720a: $10
    inc bc                                        ; $720b: $03
    ld d, a                                       ; $720c: $57
    ld h, b                                       ; $720d: $60
    ld h, c                                       ; $720e: $61
    ld e, e                                       ; $720f: $5b
    ld e, h                                       ; $7210: $5c
    ld d, a                                       ; $7211: $57
    ld d, l                                       ; $7212: $55
    nop                                           ; $7213: $00
    ld b, $00                                     ; $7214: $06 $00
    ld bc, $4c5f                                  ; $7216: $01 $5f $4c
    ld e, d                                       ; $7219: $5a
    ld h, d                                       ; $721a: $62
    ld h, e                                       ; $721b: $63
    ld h, c                                       ; $721c: $61
    ld h, h                                       ; $721d: $64
    inc sp                                        ; $721e: $33
    ld [$4222], sp                                ; $721f: $08 $22 $42
    ld e, e                                       ; $7222: $5b
    add hl, bc                                    ; $7223: $09
    jr @+$4e                                      ; $7224: $18 $4c

    ld e, d                                       ; $7226: $5a
    ld h, l                                       ; $7227: $65
    add hl, bc                                    ; $7228: $09
    ld c, b                                       ; $7229: $48
    ld e, h                                       ; $722a: $5c

jr_0ce_722b:
    add hl, bc                                    ; $722b: $09
    ld h, [hl]                                    ; $722c: $66
    ld h, a                                       ; $722d: $67
    ld l, b                                       ; $722e: $68
    ld l, c                                       ; $722f: $69
    inc sp                                        ; $7230: $33
    ld [$5a42], sp                                ; $7231: $08 $42 $5a
    add hl, bc                                    ; $7234: $09
    jr nz, jr_0ce_7257                            ; $7235: $20 $20

    ld e, h                                       ; $7237: $5c
    ld l, d                                       ; $7238: $6a
    add hl, bc                                    ; $7239: $09
    ld c, b                                       ; $723a: $48
    ld l, e                                       ; $723b: $6b
    ld l, h                                       ; $723c: $6c
    ld l, l                                       ; $723d: $6d
    ld l, [hl]                                    ; $723e: $6e
    ld l, a                                       ; $723f: $6f
    ld [$7170], sp                                ; $7240: $08 $70 $71
    ld [hl], d                                    ; $7243: $72
    ld [hl], e                                    ; $7244: $73
    add hl, bc                                    ; $7245: $09
    and b                                         ; $7246: $a0
    ld [hl], h                                    ; $7247: $74
    ld [hl], d                                    ; $7248: $72
    ld [hl], d                                    ; $7249: $72
    ld [bc], a                                    ; $724a: $02
    ld [hl], l                                    ; $724b: $75
    halt                                          ; $724c: $76
    ld [hl], a                                    ; $724d: $77
    ld [hl], l                                    ; $724e: $75
    ld a, b                                       ; $724f: $78
    ld a, c                                       ; $7250: $79
    add hl, bc                                    ; $7251: $09
    and b                                         ; $7252: $a0
    ld l, l                                       ; $7253: $6d
    nop                                           ; $7254: $00
    ld a, d                                       ; $7255: $7a
    ld a, e                                       ; $7256: $7b

jr_0ce_7257:
    ld l, l                                       ; $7257: $6d
    ld a, h                                       ; $7258: $7c
    ld a, l                                       ; $7259: $7d
    ld a, [hl]                                    ; $725a: $7e
    ld [hl], l                                    ; $725b: $75
    ld a, h                                       ; $725c: $7c
    cp d                                          ; $725d: $ba
    add hl, bc                                    ; $725e: $09
    and b                                         ; $725f: $a0
    inc c                                         ; $7260: $0c
    ld bc, $23f8                                  ; $7261: $01 $f8 $23
    ld hl, sp+$45                                 ; $7264: $f8 $45
    ret nz                                        ; $7266: $c0

    ld [$7001], sp                                ; $7267: $08 $01 $70
    ld a, [bc]                                    ; $726a: $0a
    or c                                          ; $726b: $b1
    inc de                                        ; $726c: $13
    jr z, jr_0ce_727c                             ; $726d: $28 $0d

    dec c                                         ; $726f: $0d
    ld c, b                                       ; $7270: $48
    ld [$0db0], sp                                ; $7271: $08 $b0 $0d
    dec c                                         ; $7274: $0d
    add hl, bc                                    ; $7275: $09
    ld b, h                                       ; $7276: $44
    ld [$05bb], sp                                ; $7277: $08 $bb $05
    jr z, jr_0ce_7285                             ; $727a: $28 $09

jr_0ce_727c:
    ld c, $10                                     ; $727c: $0e $10
    ld [$1708], sp                                ; $727e: $08 $08 $17
    ld [$1809], sp                                ; $7281: $08 $09 $18
    nop                                           ; $7284: $00

jr_0ce_7285:
    ld b, a                                       ; $7285: $47
    nop                                           ; $7286: $00
    sbc d                                         ; $7287: $9a
    dec d                                         ; $7288: $15
    ld [$0d09], sp                                ; $7289: $08 $09 $0d
    ld d, b                                       ; $728c: $50
    ld [$0017], sp                                ; $728d: $08 $17 $00
    dec c                                         ; $7290: $0d
    add hl, bc                                    ; $7291: $09
    nop                                           ; $7292: $00
    dec c                                         ; $7293: $0d
    ld c, [hl]                                    ; $7294: $4e
    dec l                                         ; $7295: $2d
    add hl, hl                                    ; $7296: $29
    ld [$280d], sp                                ; $7297: $08 $0d $28
    ccf                                           ; $729a: $3f
    ld [$0041], sp                                ; $729b: $08 $41 $00
    dec [hl]                                      ; $729e: $35
    jr @+$4f                                      ; $729f: $18 $4d

    and a                                         ; $72a1: $a7
    ld c, d                                       ; $72a2: $4a
    jr @+$4f                                      ; $72a3: $18 $4d

    rra                                           ; $72a5: $1f
    nop                                           ; $72a6: $00
    ld [$556d], sp                                ; $72a7: $08 $6d $55
    nop                                           ; $72aa: $00
    ld b, $00                                     ; $72ab: $06 $00
    ld e, h                                       ; $72ad: $5c
    nop                                           ; $72ae: $00
    ld e, $0d                                     ; $72af: $1e $0d
    dec c                                         ; $72b1: $0d
    ld c, b                                       ; $72b2: $48
    inc h                                         ; $72b3: $24
    ld [$088f], sp                                ; $72b4: $08 $8f $08
    add hl, bc                                    ; $72b7: $09
    db $10                                        ; $72b8: $10
    ld b, b                                       ; $72b9: $40
    ld [$bf4d], sp                                ; $72ba: $08 $4d $bf
    add hl, bc                                    ; $72bd: $09
    jr z, jr_0ce_7308                             ; $72be: $28 $48

    ld c, e                                       ; $72c0: $4b
    nop                                           ; $72c1: $00
    ld c, [hl]                                    ; $72c2: $4e
    nop                                           ; $72c3: $00
    inc sp                                        ; $72c4: $33
    ld [$0856], sp                                ; $72c5: $08 $56 $08
    add hl, bc                                    ; $72c8: $09
    db $10                                        ; $72c9: $10
    cp b                                          ; $72ca: $b8
    ld [$09fe], sp                                ; $72cb: $08 $fe $09
    jr z, @+$3c                                   ; $72ce: $28 $3a

    jr nz, @-$34                                  ; $72d0: $20 $ca

    ld [$1020], sp                                ; $72d2: $08 $20 $10
    ld c, $28                                     ; $72d5: $0e $28
    ld l, $18                                     ; $72d7: $2e $18
    ld d, l                                       ; $72d9: $55
    db $10                                        ; $72da: $10
    dec l                                         ; $72db: $2d
    cp [hl]                                       ; $72dc: $be
    sub b                                         ; $72dd: $90
    ld [$c748], sp                                ; $72de: $08 $48 $c7
    nop                                           ; $72e1: $00
    adc l                                         ; $72e2: $8d
    db $10                                        ; $72e3: $10
    add hl, bc                                    ; $72e4: $09
    jr jr_0ce_7341                                ; $72e5: $18 $5a

    ld [$0119], sp                                ; $72e7: $08 $19 $01
    dec l                                         ; $72ea: $2d
    add sp, $04                                   ; $72eb: $e8 $04
    ld bc, $00a3                                  ; $72ed: $01 $a3 $00
    inc hl                                        ; $72f0: $23
    ld de, $0948                                  ; $72f1: $11 $48 $09
    and b                                         ; $72f4: $a0
    jr nz, jr_0ce_72f7                            ; $72f5: $20 $00

jr_0ce_72f7:
    jr nz, jr_0ce_72f9                            ; $72f7: $20 $00

jr_0ce_72f9:
    ld a, c                                       ; $72f9: $79
    ld bc, $4000                                  ; $72fa: $01 $00 $40
    ld b, b                                       ; $72fd: $40
    ld b, c                                       ; $72fe: $41
    ld b, c                                       ; $72ff: $41
    ld b, c                                       ; $7300: $41
    ld b, d                                       ; $7301: $42
    ld b, c                                       ; $7302: $41
    ld b, d                                       ; $7303: $42
    ld hl, $4443                                  ; $7304: $21 $43 $44
    ld [bc], a                                    ; $7307: $02

jr_0ce_7308:
    ld [$4645], sp                                ; $7308: $08 $45 $46
    ld b, a                                       ; $730b: $47
    ld c, b                                       ; $730c: $48
    ld a, [bc]                                    ; $730d: $0a
    jr jr_0ce_7311                                ; $730e: $18 $01

    ld c, b                                       ; $7310: $48

jr_0ce_7311:
    ld c, c                                       ; $7311: $49
    ld c, b                                       ; $7312: $48
    ld c, c                                       ; $7313: $49
    ld c, c                                       ; $7314: $49
    ld c, c                                       ; $7315: $49
    ld b, b                                       ; $7316: $40
    ld bc, $9000                                  ; $7317: $01 $00 $90
    jr nz, jr_0ce_7374                            ; $731a: $20 $58

    ld b, l                                       ; $731c: $45
    ld b, [hl]                                    ; $731d: $46
    ld a, [hl+]                                   ; $731e: $2a
    jr @+$48                                      ; $731f: $18 $46

    ld c, d                                       ; $7321: $4a
    ld b, [hl]                                    ; $7322: $46
    ld c, d                                       ; $7323: $4a
    jr nz, jr_0ce_7370                            ; $7324: $20 $4a

    ld c, d                                       ; $7326: $4a
    jr nz, jr_0ce_7331                            ; $7327: $20 $08

    ld c, e                                       ; $7329: $4b
    ld c, e                                       ; $732a: $4b
    ld c, e                                       ; $732b: $4b
    ld b, e                                       ; $732c: $43
    ld c, e                                       ; $732d: $4b
    inc de                                        ; $732e: $13
    ld b, e                                       ; $732f: $43
    ld c, h                                       ; $7330: $4c

jr_0ce_7331:
    ld c, l                                       ; $7331: $4d
    ld [bc], a                                    ; $7332: $02
    ld [$4f4e], sp                                ; $7333: $08 $4e $4f
    inc b                                         ; $7336: $04
    ld [$0802], sp                                ; $7337: $08 $02 $08
    ld [bc], a                                    ; $733a: $02
    ld c, l                                       ; $733b: $4d
    ld d, b                                       ; $733c: $50
    ld c, l                                       ; $733d: $4d
    ld d, b                                       ; $733e: $50
    ld d, b                                       ; $733f: $50
    ld d, b                                       ; $7340: $50

jr_0ce_7341:
    ld b, b                                       ; $7341: $40
    ld [$0751], sp                                ; $7342: $08 $51 $07
    ld d, c                                       ; $7345: $51
    ld d, c                                       ; $7346: $51
    ld c, h                                       ; $7347: $4c
    ld d, c                                       ; $7348: $51
    ld c, h                                       ; $7349: $4c
    ld a, [hl-]                                   ; $734a: $3a
    ld [$183c], sp                                ; $734b: $08 $3c $18
    ld a, [bc]                                    ; $734e: $0a
    jr jr_0ce_7353                                ; $734f: $18 $02

    ld b, h                                       ; $7351: $44
    ld d, d                                       ; $7352: $52

jr_0ce_7353:
    ld b, h                                       ; $7353: $44
    ld d, d                                       ; $7354: $52
    ld d, d                                       ; $7355: $52
    ld d, d                                       ; $7356: $52
    ld h, b                                       ; $7357: $60
    ld [$0753], sp                                ; $7358: $08 $53 $07
    ld d, e                                       ; $735b: $53
    ld d, e                                       ; $735c: $53
    ld b, l                                       ; $735d: $45
    ld d, e                                       ; $735e: $53
    ld b, l                                       ; $735f: $45
    ld [hl], $18                                  ; $7360: $36 $18
    ld b, d                                       ; $7362: $42
    jr jr_0ce_73b1                                ; $7363: $18 $4c

    ld [$4f03], sp                                ; $7365: $08 $03 $4f
    ld d, h                                       ; $7368: $54
    ld c, a                                       ; $7369: $4f
    ld d, h                                       ; $736a: $54
    ld d, h                                       ; $736b: $54
    ld d, h                                       ; $736c: $54
    add b                                         ; $736d: $80
    ld a, b                                       ; $736e: $78
    and b                                         ; $736f: $a0

jr_0ce_7370:
    ld a, b                                       ; $7370: $78
    ld [bc], a                                    ; $7371: $02
    ld d, l                                       ; $7372: $55
    ld d, l                                       ; $7373: $55

jr_0ce_7374:
    ld d, l                                       ; $7374: $55
    ld d, [hl]                                    ; $7375: $56
    ld d, l                                       ; $7376: $55
    ld d, [hl]                                    ; $7377: $56
    add b                                         ; $7378: $80
    jr jr_0ce_73bd                                ; $7379: $18 $42

    db $10                                        ; $737b: $10
    ld d, a                                       ; $737c: $57
    ld e, b                                       ; $737d: $58
    ld e, c                                       ; $737e: $59
    add b                                         ; $737f: $80
    jr jr_0ce_73db                                ; $7380: $18 $59

    ld e, d                                       ; $7382: $5a
    ld e, c                                       ; $7383: $59
    ld e, d                                       ; $7384: $5a
    jr nz, jr_0ce_73e1                            ; $7385: $20 $5a

    ld e, d                                       ; $7387: $5a
    ret nz                                        ; $7388: $c0

    ld [$5b5b], sp                                ; $7389: $08 $5b $5b
    ld e, e                                       ; $738c: $5b
    ld e, h                                       ; $738d: $5c
    ld e, e                                       ; $738e: $5b
    ld b, b                                       ; $738f: $40
    ld e, h                                       ; $7390: $5c
    add b                                         ; $7391: $80
    jr jr_0ce_73ea                                ; $7392: $18 $56

    ld e, l                                       ; $7394: $5d
    ld e, [hl]                                    ; $7395: $5e
    ld e, a                                       ; $7396: $5f
    ld b, a                                       ; $7397: $47
    ld c, b                                       ; $7398: $48
    adc b                                         ; $7399: $88
    ld [bc], a                                    ; $739a: $02
    ld [$505f], sp                                ; $739b: $08 $5f $50
    ld e, a                                       ; $739e: $5f
    and b                                         ; $739f: $a0
    jr nz, jr_0ce_7402                            ; $73a0: $20 $60

    ld h, b                                       ; $73a2: $60
    ld h, b                                       ; $73a3: $60
    inc b                                         ; $73a4: $04
    ld h, c                                       ; $73a5: $61
    ld h, b                                       ; $73a6: $60
    ld h, c                                       ; $73a7: $61
    ld b, d                                       ; $73a8: $42
    ld d, a                                       ; $73a9: $57
    ld [bc], a                                    ; $73aa: $02
    ld [$625c], sp                                ; $73ab: $08 $5c $62
    ld [$6463], sp                                ; $73ae: $08 $63 $64

jr_0ce_73b1:
    ld e, b                                       ; $73b1: $58
    ld e, c                                       ; $73b2: $59
    ld [bc], a                                    ; $73b3: $02
    ld [$6564], sp                                ; $73b4: $08 $64 $65
    ld h, h                                       ; $73b7: $64
    db $10                                        ; $73b8: $10
    ld h, l                                       ; $73b9: $65
    ld h, l                                       ; $73ba: $65
    ld h, l                                       ; $73bb: $65
    nop                                           ; $73bc: $00

jr_0ce_73bd:
    add hl, bc                                    ; $73bd: $09
    ld h, [hl]                                    ; $73be: $66
    ld h, [hl]                                    ; $73bf: $66
    ld h, [hl]                                    ; $73c0: $66
    ld h, a                                       ; $73c1: $67
    ld [$6766], sp                                ; $73c2: $08 $66 $67
    ld d, [hl]                                    ; $73c5: $56
    ld e, l                                       ; $73c6: $5d
    ld [bc], a                                    ; $73c7: $02
    ld [$6861], sp                                ; $73c8: $08 $61 $68
    ld l, c                                       ; $73cb: $69
    db $10                                        ; $73cc: $10
    ld l, d                                       ; $73cd: $6a
    ld e, [hl]                                    ; $73ce: $5e
    ld e, a                                       ; $73cf: $5f
    ld [bc], a                                    ; $73d0: $02
    ld [$6b6a], sp                                ; $73d1: $08 $6a $6b
    ld l, d                                       ; $73d4: $6a
    ld l, e                                       ; $73d5: $6b
    jr nz, jr_0ce_7443                            ; $73d6: $20 $6b

    ld l, e                                       ; $73d8: $6b
    jr nz, jr_0ce_73e4                            ; $73d9: $20 $09

jr_0ce_73db:
    ld l, h                                       ; $73db: $6c
    ld l, h                                       ; $73dc: $6c
    ld l, h                                       ; $73dd: $6c
    ld l, c                                       ; $73de: $69
    ld l, h                                       ; $73df: $6c
    db $10                                        ; $73e0: $10

jr_0ce_73e1:
    ld l, c                                       ; $73e1: $69
    ld e, h                                       ; $73e2: $5c
    ld h, d                                       ; $73e3: $62

jr_0ce_73e4:
    ld [bc], a                                    ; $73e4: $02
    ld [$6d67], sp                                ; $73e5: $08 $67 $6d
    ld h, a                                       ; $73e8: $67
    ld l, l                                       ; $73e9: $6d

jr_0ce_73ea:
    jr nz, @+$65                                  ; $73ea: $20 $63

    ld h, h                                       ; $73ec: $64
    ld [bc], a                                    ; $73ed: $02
    ld [$6e6d], sp                                ; $73ee: $08 $6d $6e
    ld l, l                                       ; $73f1: $6d
    ld l, [hl]                                    ; $73f2: $6e
    ld l, [hl]                                    ; $73f3: $6e
    ld b, b                                       ; $73f4: $40
    ld l, [hl]                                    ; $73f5: $6e
    ld b, b                                       ; $73f6: $40
    add hl, bc                                    ; $73f7: $09
    ld l, a                                       ; $73f8: $6f
    ld l, a                                       ; $73f9: $6f
    ld l, a                                       ; $73fa: $6f
    ld h, e                                       ; $73fb: $63
    ld l, a                                       ; $73fc: $6f
    ld h, e                                       ; $73fd: $63
    ld h, $61                                     ; $73fe: $26 $61
    ld l, b                                       ; $7400: $68
    ld [bc], a                                    ; $7401: $02

jr_0ce_7402:
    ld [$6a69], sp                                ; $7402: $08 $69 $6a
    ld b, d                                       ; $7405: $42
    ld [$0802], sp                                ; $7406: $08 $02 $08
    ld l, b                                       ; $7409: $68
    inc b                                         ; $740a: $04
    ld [hl], b                                    ; $740b: $70
    ld l, b                                       ; $740c: $68
    ld [hl], b                                    ; $740d: $70
    ld [hl], b                                    ; $740e: $70
    ld [hl], b                                    ; $740f: $70
    ld h, b                                       ; $7410: $60
    add hl, bc                                    ; $7411: $09
    ld [hl], c                                    ; $7412: $71
    ld [hl], c                                    ; $7413: $71
    ld c, $71                                     ; $7414: $0e $71
    ld e, [hl]                                    ; $7416: $5e
    ld [hl], c                                    ; $7417: $71
    ld e, [hl]                                    ; $7418: $5e
    ld a, [hl-]                                   ; $7419: $3a
    ld [$083c], sp                                ; $741a: $08 $3c $08
    ld b, h                                       ; $741d: $44
    jr jr_0ce_7487                                ; $741e: $18 $67

    ld bc, $626d                                  ; $7420: $01 $6d $62
    ld [hl], d                                    ; $7423: $72
    ld h, d                                       ; $7424: $62
    ld [hl], d                                    ; $7425: $72
    ld [hl], d                                    ; $7426: $72
    ld [hl], d                                    ; $7427: $72
    add b                                         ; $7428: $80
    add hl, bc                                    ; $7429: $09
    ld [bc], a                                    ; $742a: $02
    ld [hl], e                                    ; $742b: $73
    ld [hl], e                                    ; $742c: $73
    ld [hl], e                                    ; $742d: $73
    ld e, b                                       ; $742e: $58
    ld [hl], e                                    ; $742f: $73
    ld e, b                                       ; $7430: $58
    ld [hl], $18                                  ; $7431: $36 $18
    ld e, [hl]                                    ; $7433: $5e
    ld h, b                                       ; $7434: $60
    ld e, a                                       ; $7435: $5f
    add h                                         ; $7436: $84
    ld [$084c], sp                                ; $7437: $08 $4c $08
    ld e, l                                       ; $743a: $5d
    ld [hl], h                                    ; $743b: $74
    ld e, l                                       ; $743c: $5d
    ld [hl], h                                    ; $743d: $74
    ld [hl], h                                    ; $743e: $74
    ld b, b                                       ; $743f: $40
    ld [hl], h                                    ; $7440: $74
    and b                                         ; $7441: $a0
    add hl, bc                                    ; $7442: $09

jr_0ce_7443:
    ld [hl], l                                    ; $7443: $75
    ld [hl], l                                    ; $7444: $75
    ld [hl], l                                    ; $7445: $75
    ld b, a                                       ; $7446: $47
    ld [hl], l                                    ; $7447: $75
    ld b, a                                       ; $7448: $47
    sbc b                                         ; $7449: $98
    halt                                          ; $744a: $76
    jr jr_0ce_74a5                                ; $744b: $18 $58

    ld e, c                                       ; $744d: $59
    call nz, $8c08                                ; $744e: $c4 $08 $8c
    ld [$7657], sp                                ; $7451: $08 $57 $76
    ld d, a                                       ; $7454: $57
    db $10                                        ; $7455: $10
    halt                                          ; $7456: $76
    halt                                          ; $7457: $76
    halt                                          ; $7458: $76
    ret nz                                        ; $7459: $c0

    add hl, bc                                    ; $745a: $09
    ld [hl], a                                    ; $745b: $77
    ld [hl], a                                    ; $745c: $77
    ld [hl], a                                    ; $745d: $77
    ld c, [hl]                                    ; $745e: $4e
    daa                                           ; $745f: $27
    ld [hl], a                                    ; $7460: $77
    ld c, [hl]                                    ; $7461: $4e
    or [hl]                                       ; $7462: $b6
    jr @+$49                                      ; $7463: $18 $47

    ld c, b                                       ; $7465: $48
    inc b                                         ; $7466: $04
    add hl, bc                                    ; $7467: $09
    call z, $c008                                 ; $7468: $cc $08 $c0
    ld l, c                                       ; $746b: $69
    rst $38                                       ; $746c: $ff
    or $18                                        ; $746d: $f6 $18
    ret nz                                        ; $746f: $c0

    add hl, bc                                    ; $7470: $09
    ld a, [bc]                                    ; $7471: $0a
    add hl, de                                    ; $7472: $19
    ret nz                                        ; $7473: $c0

    ld l, c                                       ; $7474: $69
    ld [hl], $19                                  ; $7475: $36 $19
    ret nz                                        ; $7477: $c0

    ld sp, hl                                     ; $7478: $f9
    ret nz                                        ; $7479: $c0

    ld sp, hl                                     ; $747a: $f9
    ret nz                                        ; $747b: $c0

    ld sp, hl                                     ; $747c: $f9
    rst $38                                       ; $747d: $ff
    ret nz                                        ; $747e: $c0

    ld sp, hl                                     ; $747f: $f9
    ret nz                                        ; $7480: $c0

    ld sp, hl                                     ; $7481: $f9
    ret nz                                        ; $7482: $c0

    ld sp, hl                                     ; $7483: $f9
    ret nz                                        ; $7484: $c0

    ld sp, hl                                     ; $7485: $f9
    ret nz                                        ; $7486: $c0

jr_0ce_7487:
    ld sp, hl                                     ; $7487: $f9
    ret nz                                        ; $7488: $c0

    ld sp, hl                                     ; $7489: $f9
    ret nz                                        ; $748a: $c0

    ld sp, hl                                     ; $748b: $f9
    ret nz                                        ; $748c: $c0

    ld sp, hl                                     ; $748d: $f9
    add sp, -$40                                  ; $748e: $e8 $c0
    ld sp, hl                                     ; $7490: $f9
    ret nz                                        ; $7491: $c0

    ld sp, hl                                     ; $7492: $f9
    ret nz                                        ; $7493: $c0

    xor c                                         ; $7494: $a9
    ld [$2001], sp                                ; $7495: $08 $01 $20
    add hl, bc                                    ; $7498: $09
    add hl, bc                                    ; $7499: $09
    ld a, [bc]                                    ; $749a: $0a
    ld [$0b0a], sp                                ; $749b: $08 $0a $0b
    dec bc                                        ; $749e: $0b
    inc c                                         ; $749f: $0c
    ld bc, $4b00                                  ; $74a0: $01 $00 $4b
    ld c, e                                       ; $74a3: $4b
    ld c, d                                       ; $74a4: $4a

jr_0ce_74a5:
    add hl, de                                    ; $74a5: $19
    ld c, d                                       ; $74a6: $4a
    ld c, c                                       ; $74a7: $49
    ld c, c                                       ; $74a8: $49
    jr @+$2a                                      ; $74a9: $18 $28

    jr nz, jr_0ce_7515                            ; $74ab: $20 $68

    ld c, h                                       ; $74ad: $4c
    ld c, h                                       ; $74ae: $4c
    jr nz, jr_0ce_74c9                            ; $74af: $20 $18

    rra                                           ; $74b1: $1f
    ld c, b                                       ; $74b2: $48
    ld [$2048], sp                                ; $74b3: $08 $48 $20
    ld hl, sp+$40                                 ; $74b6: $f8 $40
    ld hl, sp+$60                                 ; $74b8: $f8 $60
    ld hl, sp-$60                                 ; $74ba: $f8 $a0
    ld hl, sp-$40                                 ; $74bc: $f8 $c0
    ld hl, sp-$7f                                 ; $74be: $f8 $81
    ldh [$50], a                                  ; $74c0: $e0 $50
    dec bc                                        ; $74c2: $0b
    dec bc                                        ; $74c3: $0b
    ld a, [bc]                                    ; $74c4: $0a
    ld a, [bc]                                    ; $74c5: $0a
    add hl, bc                                    ; $74c6: $09
    add hl, bc                                    ; $74c7: $09
    cp a                                          ; $74c8: $bf

jr_0ce_74c9:
    nop                                           ; $74c9: $00
    ccf                                           ; $74ca: $3f
    ld c, b                                       ; $74cb: $48
    ld c, b                                       ; $74cc: $48
    jp $2040                                      ; $74cd: $c3 $40 $20


    ld [hl], b                                    ; $74d0: $70
    ld b, b                                       ; $74d1: $40
    add sp, $21                                   ; $74d2: $e8 $21
    ld c, c                                       ; $74d4: $49
    dec c                                         ; $74d5: $0d
    ld bc, $3920                                  ; $74d6: $01 $20 $39
    rst $28                                       ; $74d9: $ef
    ld h, b                                       ; $74da: $60
    jr jr_0ce_74fd                                ; $74db: $18 $20

    ld d, c                                       ; $74dd: $51
    jr nz, jr_0ce_7510                            ; $74de: $20 $30

    ld c, h                                       ; $74e0: $4c
    ld bc, $2000                                  ; $74e1: $01 $00 $20
    add sp, $60                                   ; $74e4: $e8 $60
    add c                                         ; $74e6: $81
    ld l, l                                       ; $74e7: $6d
    ld bc, $4903                                  ; $74e8: $01 $03 $49
    ld c, c                                       ; $74eb: $49
    ld c, d                                       ; $74ec: $4a
    ld c, d                                       ; $74ed: $4a
    ld c, e                                       ; $74ee: $4b

jr_0ce_74ef:
    ld c, e                                       ; $74ef: $4b
    jr nz, @-$06                                  ; $74f0: $20 $f8

    and b                                         ; $74f2: $a0
    xor c                                         ; $74f3: $a9
    rst $38                                       ; $74f4: $ff
    jr nz, jr_0ce_74ef                            ; $74f5: $20 $f8

    ld h, b                                       ; $74f7: $60
    ld [$b9e0], sp                                ; $74f8: $08 $e0 $b9
    jr nz, @-$16                                  ; $74fb: $20 $e8

jr_0ce_74fd:
    jr nz, @-$04                                  ; $74fd: $20 $fa

    ld h, b                                       ; $74ff: $60
    ld a, [$fa80]                                 ; $7500: $fa $80 $fa
    ret nz                                        ; $7503: $c0

    ld sp, hl                                     ; $7504: $f9
    rst $38                                       ; $7505: $ff
    ret nz                                        ; $7506: $c0

    ld sp, hl                                     ; $7507: $f9
    ret nz                                        ; $7508: $c0

    ld sp, hl                                     ; $7509: $f9
    ret nz                                        ; $750a: $c0

    ld sp, hl                                     ; $750b: $f9
    ret nz                                        ; $750c: $c0

    ld sp, hl                                     ; $750d: $f9
    ret nz                                        ; $750e: $c0

    ld sp, hl                                     ; $750f: $f9

jr_0ce_7510:
    ldh [$f9], a                                  ; $7510: $e0 $f9
    ret nz                                        ; $7512: $c0

    ld sp, hl                                     ; $7513: $f9
    ret nz                                        ; $7514: $c0

jr_0ce_7515:
    ld sp, hl                                     ; $7515: $f9
    add b                                         ; $7516: $80
    ldh [$e9], a                                  ; $7517: $e0 $e9
    jr nz, jr_0ce_751b                            ; $7519: $20 $00

jr_0ce_751b:
    ld c, $00                                     ; $751b: $0e $00
    or e                                          ; $751d: $b3
    ld bc, $4000                                  ; $751e: $01 $00 $40
    ld b, c                                       ; $7521: $41
    ld b, d                                       ; $7522: $42
    ld b, e                                       ; $7523: $43
    ld b, h                                       ; $7524: $44
    ld b, h                                       ; $7525: $44
    ld b, h                                       ; $7526: $44
    ld b, e                                       ; $7527: $43
    nop                                           ; $7528: $00
    ld b, l                                       ; $7529: $45
    ld b, [hl]                                    ; $752a: $46
    ld b, a                                       ; $752b: $47
    ld c, b                                       ; $752c: $48
    ld c, c                                       ; $752d: $49
    ld c, d                                       ; $752e: $4a
    ld c, e                                       ; $752f: $4b
    ld c, h                                       ; $7530: $4c
    jr nc, @+$4f                                  ; $7531: $30 $4d

    ld c, [hl]                                    ; $7533: $4e
    ld c, $00                                     ; $7534: $0e $00
    ld de, $4f00                                  ; $7536: $11 $00 $4f
    ld b, d                                       ; $7539: $42
    ld b, c                                       ; $753a: $41
    ld c, e                                       ; $753b: $4b
    ld [$4a4a], sp                                ; $753c: $08 $4a $4a
    ld c, e                                       ; $753f: $4b
    ld d, b                                       ; $7540: $50
    ld [de], a                                    ; $7541: $12
    ld [$5251], sp                                ; $7542: $08 $51 $52
    ld d, e                                       ; $7545: $53
    nop                                           ; $7546: $00
    ld b, h                                       ; $7547: $44
    ld b, l                                       ; $7548: $45
    ld c, a                                       ; $7549: $4f
    ld b, d                                       ; $754a: $42
    ld d, h                                       ; $754b: $54
    ld d, l                                       ; $754c: $55
    ld d, [hl]                                    ; $754d: $56
    ld c, d                                       ; $754e: $4a
    db $10                                        ; $754f: $10
    ld d, b                                       ; $7550: $50
    ld d, a                                       ; $7551: $57
    ld e, b                                       ; $7552: $58
    dec l                                         ; $7553: $2d
    ld [$4444], sp                                ; $7554: $08 $44 $44
    ld b, [hl]                                    ; $7557: $46
    ld c, a                                       ; $7558: $4f
    or b                                          ; $7559: $b0
    cpl                                           ; $755a: $2f
    nop                                           ; $755b: $00
    ld d, [hl]                                    ; $755c: $56
    ld [bc], a                                    ; $755d: $02
    nop                                           ; $755e: $00
    ld [de], a                                    ; $755f: $12
    nop                                           ; $7560: $00
    ld e, c                                       ; $7561: $59
    ld e, d                                       ; $7562: $5a
    ld e, e                                       ; $7563: $5b
    ld b, h                                       ; $7564: $44
    nop                                           ; $7565: $00
    ld b, e                                       ; $7566: $43
    ld b, [hl]                                    ; $7567: $46
    ld c, a                                       ; $7568: $4f
    ld e, h                                       ; $7569: $5c
    ld e, l                                       ; $756a: $5d
    ld d, b                                       ; $756b: $50
    ld c, d                                       ; $756c: $4a
    ld b, b                                       ; $756d: $40
    ld [bc], a                                    ; $756e: $02
    ld e, [hl]                                    ; $756f: $5e
    ld e, a                                       ; $7570: $5f
    ld h, b                                       ; $7571: $60
    ld b, h                                       ; $7572: $44
    ld c, a                                       ; $7573: $4f
    ld b, [hl]                                    ; $7574: $46
    ld b, c                                       ; $7575: $41
    db $10                                        ; $7576: $10
    ld d, h                                       ; $7577: $54
    add hl, bc                                    ; $7578: $09
    ld d, l                                       ; $7579: $55
    ld c, b                                       ; $757a: $48
    ld c, c                                       ; $757b: $49
    ld d, [hl]                                    ; $757c: $56
    ld [de], a                                    ; $757d: $12
    ld [$6261], sp                                ; $757e: $08 $61 $62
    jr nc, jr_0ce_7583                            ; $7581: $30 $00

jr_0ce_7583:
    nop                                           ; $7583: $00
    ld e, e                                       ; $7584: $5b
    ld b, e                                       ; $7585: $43
    ld h, e                                       ; $7586: $63
    ld h, h                                       ; $7587: $64
    ld h, l                                       ; $7588: $65
    ld d, [hl]                                    ; $7589: $56
    ld c, d                                       ; $758a: $4a
    ld c, d                                       ; $758b: $4a
    add hl, de                                    ; $758c: $19
    ld b, b                                       ; $758d: $40
    ld h, [hl]                                    ; $758e: $66
    ld h, a                                       ; $758f: $67
    ld [hl], d                                    ; $7590: $72
    db $10                                        ; $7591: $10
    jr nc, jr_0ce_759c                            ; $7592: $30 $08

    ld d, h                                       ; $7594: $54
    ld d, l                                       ; $7595: $55
    ld b, e                                       ; $7596: $43
    nop                                           ; $7597: $00
    inc b                                         ; $7598: $04
    ld b, b                                       ; $7599: $40
    ld l, b                                       ; $759a: $68
    ld l, c                                       ; $759b: $69

jr_0ce_759c:
    ld b, e                                       ; $759c: $43
    ld e, e                                       ; $759d: $5b
    add h                                         ; $759e: $84
    db $10                                        ; $759f: $10
    ld e, b                                       ; $75a0: $58
    ld b, c                                       ; $75a1: $41
    nop                                           ; $75a2: $00
    ld h, c                                       ; $75a3: $61
    ld b, b                                       ; $75a4: $40
    ld c, d                                       ; $75a5: $4a
    ld c, d                                       ; $75a6: $4a
    ld d, [hl]                                    ; $75a7: $56
    ld h, l                                       ; $75a8: $65
    ld h, h                                       ; $75a9: $64
    ld h, e                                       ; $75aa: $63
    add d                                         ; $75ab: $82
    sub d                                         ; $75ac: $92
    ld [$6344], sp                                ; $75ad: $08 $44 $63
    ld h, h                                       ; $75b0: $64
    ld e, h                                       ; $75b1: $5c
    ld e, l                                       ; $75b2: $5d
    add h                                         ; $75b3: $84
    ld [$0840], sp                                ; $75b4: $08 $40 $08
    ld l, d                                       ; $75b7: $6a
    ld l, e                                       ; $75b8: $6b
    ld c, a                                       ; $75b9: $4f
    ld b, [hl]                                    ; $75ba: $46
    and l                                         ; $75bb: $a5
    nop                                           ; $75bc: $00
    ld c, a                                       ; $75bd: $4f
    ld b, d                                       ; $75be: $42
    ld d, a                                       ; $75bf: $57
    nop                                           ; $75c0: $00
    ld h, c                                       ; $75c1: $61
    ld e, a                                       ; $75c2: $5f
    ld e, [hl]                                    ; $75c3: $5e
    ld b, b                                       ; $75c4: $40
    ld c, d                                       ; $75c5: $4a
    ld d, b                                       ; $75c6: $50
    ld e, l                                       ; $75c7: $5d
    ld e, h                                       ; $75c8: $5c
    add d                                         ; $75c9: $82
    db $10                                        ; $75ca: $10
    jr nz, jr_0ce_7630                            ; $75cb: $20 $63

    ld h, h                                       ; $75cd: $64
    ld d, b                                       ; $75ce: $50
    ld c, b                                       ; $75cf: $48
    ld d, [hl]                                    ; $75d0: $56
    ld hl, $4100                                  ; $75d1: $21 $00 $41
    jr nz, jr_0ce_7618                            ; $75d4: $20 $42

    ld c, a                                       ; $75d6: $4f
    ld d, d                                       ; $75d7: $52
    db $10                                        ; $75d8: $10
    ld e, d                                       ; $75d9: $5a
    ld e, c                                       ; $75da: $59
    ld e, b                                       ; $75db: $58
    ld d, a                                       ; $75dc: $57
    ld d, b                                       ; $75dd: $50
    ld b, $4a                                     ; $75de: $06 $4a
    ld d, [hl]                                    ; $75e0: $56
    ld d, l                                       ; $75e1: $55
    ld d, h                                       ; $75e2: $54
    ld b, d                                       ; $75e3: $42
    and d                                         ; $75e4: $a2
    nop                                           ; $75e5: $00
    and e                                         ; $75e6: $a3
    nop                                           ; $75e7: $00
    ld b, e                                       ; $75e8: $43
    jr jr_0ce_762d                                ; $75e9: $18 $42

    ld c, h                                       ; $75eb: $4c
    ld l, c                                       ; $75ec: $69
    sub $20                                       ; $75ed: $d6 $20
    call nz, Call_0ce_4300                        ; $75ef: $c4 $00 $43
    ld d, e                                       ; $75f2: $53
    ld d, d                                       ; $75f3: $52
    nop                                           ; $75f4: $00
    ld d, c                                       ; $75f5: $51
    ld c, [hl]                                    ; $75f6: $4e
    ld c, l                                       ; $75f7: $4d
    ld c, h                                       ; $75f8: $4c
    ld c, e                                       ; $75f9: $4b
    ld c, d                                       ; $75fa: $4a
    ld c, c                                       ; $75fb: $49
    ld c, b                                       ; $75fc: $48
    ld l, c                                       ; $75fd: $69
    ld b, a                                       ; $75fe: $47
    and d                                         ; $75ff: $a2
    ld [$08b4], sp                                ; $7600: $08 $b4 $08
    ld b, [hl]                                    ; $7603: $46
    sub $28                                       ; $7604: $d6 $28
    ld e, c                                       ; $7606: $59
    ld e, d                                       ; $7607: $5a
    ld h, h                                       ; $7608: $64
    jr nz, jr_0ce_760c                            ; $7609: $20 $01

    ld b, c                                       ; $760b: $41

jr_0ce_760c:
    ld b, b                                       ; $760c: $40
    ld c, e                                       ; $760d: $4b
    ld c, d                                       ; $760e: $4a
    ld d, [hl]                                    ; $760f: $56
    ld b, d                                       ; $7610: $42
    ld c, a                                       ; $7611: $4f
    call nz, Call_0ce_5208                        ; $7612: $c4 $08 $52
    ld b, e                                       ; $7615: $43
    sbc b                                         ; $7616: $98
    nop                                           ; $7617: $00

jr_0ce_7618:
    ld b, a                                       ; $7618: $47
    sub $20                                       ; $7619: $d6 $20
    ld h, c                                       ; $761b: $61
    ld d, a                                       ; $761c: $57
    or [hl]                                       ; $761d: $b6
    jr nz, jr_0ce_768b                            ; $761e: $20 $6b

    ld [hl], h                                    ; $7620: $74
    ld l, d                                       ; $7621: $6a
    ld hl, $c400                                  ; $7622: $21 $00 $c4
    nop                                           ; $7625: $00
    daa                                           ; $7626: $27
    add hl, de                                    ; $7627: $19
    ld b, e                                       ; $7628: $43
    sub $28                                       ; $7629: $d6 $28
    ld h, c                                       ; $762b: $61
    ld b, c                                       ; $762c: $41

jr_0ce_762d:
    db $10                                        ; $762d: $10
    ld e, b                                       ; $762e: $58
    ld b, e                                       ; $762f: $43

jr_0ce_7630:
    ld b, h                                       ; $7630: $44
    rst $00                                       ; $7631: $c7
    ld [$6943], sp                                ; $7632: $08 $43 $69
    ld l, b                                       ; $7635: $68
    ld b, b                                       ; $7636: $40
    ret nz                                        ; $7637: $c0

    call nz, $7208                                ; $7638: $c4 $08 $72
    db $10                                        ; $763b: $10
    ld b, e                                       ; $763c: $43
    ld b, h                                       ; $763d: $44
    ld b, l                                       ; $763e: $45
    ld b, e                                       ; $763f: $43
    ld b, d                                       ; $7640: $42
    ld h, a                                       ; $7641: $67
    dec [hl]                                      ; $7642: $35
    ld h, [hl]                                    ; $7643: $66
    ld h, c                                       ; $7644: $61
    rlca                                          ; $7645: $07
    ld bc, $015a                                  ; $7646: $01 $5a $01
    ld l, h                                       ; $7649: $6c
    rst $00                                       ; $764a: $c7
    ld [$c462], sp                                ; $764b: $08 $62 $c4
    jr nz, @-$3b                                  ; $764e: $20 $c3

    ld [hl], $11                                  ; $7650: $36 $11
    ld h, e                                       ; $7652: $63
    nop                                           ; $7653: $00
    ld b, [hl]                                    ; $7654: $46
    ld b, e                                       ; $7655: $43
    ld b, e                                       ; $7656: $43
    ld h, b                                       ; $7657: $60
    ld [$4801], sp                                ; $7658: $08 $01 $48
    ld de, $8bf0                                  ; $765b: $11 $f0 $8b
    add hl, bc                                    ; $765e: $09
    call nz, $3628                                ; $765f: $c4 $28 $36
    ld de, $019b                                  ; $7662: $11 $9b $01
    ld e, e                                       ; $7665: $5b
    ld e, e                                       ; $7666: $5b
    ld b, l                                       ; $7667: $45
    ld b, e                                       ; $7668: $43
    dec l                                         ; $7669: $2d
    ld e, h                                       ; $766a: $5c
    ld e, l                                       ; $766b: $5d
    ld c, b                                       ; $766c: $48
    ld de, $aa6d                                  ; $766d: $11 $6d $aa
    ld bc, $28c4                                  ; $7670: $01 $c4 $28
    ld l, [hl]                                    ; $7673: $6e
    ld [hl], $09                                  ; $7674: $36 $09
    add b                                         ; $7676: $80
    cp c                                          ; $7677: $b9
    ld bc, $090e                                  ; $7678: $01 $0e $09
    add hl, bc                                    ; $767b: $09
    add hl, bc                                    ; $767c: $09
    ld a, [bc]                                    ; $767d: $0a
    inc c                                         ; $767e: $0c
    ld a, [bc]                                    ; $767f: $0a
    inc b                                         ; $7680: $04
    ld l, d                                       ; $7681: $6a
    add hl, bc                                    ; $7682: $09
    ld a, [bc]                                    ; $7683: $0a
    add hl, bc                                    ; $7684: $09
    ld a, [bc]                                    ; $7685: $0a
    ld bc, $0c20                                  ; $7686: $01 $20 $0c
    inc c                                         ; $7689: $0c
    nop                                           ; $768a: $00

jr_0ce_768b:
    ld a, [bc]                                    ; $768b: $0a
    ld l, h                                       ; $768c: $6c
    ld l, d                                       ; $768d: $6a
    add hl, bc                                    ; $768e: $09
    ld l, [hl]                                    ; $768f: $6e
    ld l, [hl]                                    ; $7690: $6e
    ld l, [hl]                                    ; $7691: $6e
    ld l, a                                       ; $7692: $6f
    inc c                                         ; $7693: $0c
    rrca                                          ; $7694: $0f
    rrca                                          ; $7695: $0f
    ld c, $0e                                     ; $7696: $0e $0e
    ld hl, $2408                                  ; $7698: $21 $08 $24
    nop                                           ; $769b: $00
    rrca                                          ; $769c: $0f
    ld a, [bc]                                    ; $769d: $0a
    ld d, b                                       ; $769e: $50
    ld l, d                                       ; $769f: $6a
    jr nz, @+$0a                                  ; $76a0: $20 $08

    ld c, d                                       ; $76a2: $4a
    dec h                                         ; $76a3: $25
    ld [$0f6a], sp                                ; $76a4: $08 $6a $0f
    ld l, d                                       ; $76a7: $6a
    ld l, c                                       ; $76a8: $69
    jr nz, jr_0ce_76b9                            ; $76a9: $20 $0e

    ld l, c                                       ; $76ab: $69
    dec de                                        ; $76ac: $1b
    nop                                           ; $76ad: $00
    rrca                                          ; $76ae: $0f
    rrca                                          ; $76af: $0f
    ld l, a                                       ; $76b0: $6f
    ld c, $4e                                     ; $76b1: $0e $4e
    ldh a, [rNR34]                                ; $76b3: $f0 $1e
    jr z, jr_0ce_76d7                             ; $76b5: $28 $20

    nop                                           ; $76b7: $00
    inc hl                                        ; $76b8: $23

jr_0ce_76b9:
    db $10                                        ; $76b9: $10
    ld c, c                                       ; $76ba: $49
    nop                                           ; $76bb: $00
    ld l, d                                       ; $76bc: $6a
    inc c                                         ; $76bd: $0c
    ld l, d                                       ; $76be: $6a
    ld l, c                                       ; $76bf: $69
    ld bc, $6e0f                                  ; $76c0: $01 $0f $6e
    ld c, $09                                     ; $76c3: $0e $09
    ld c, $0e                                     ; $76c5: $0e $0e
    ld l, a                                       ; $76c7: $6f
    ld b, b                                       ; $76c8: $40
    ld [$0e4c], sp                                ; $76c9: $08 $4c $0e
    ld h, d                                       ; $76cc: $62
    ld [$696f], sp                                ; $76cd: $08 $6f $69
    ld h, b                                       ; $76d0: $60
    jr z, jr_0ce_76f5                             ; $76d1: $28 $22

    ld [$6c6c], sp                                ; $76d3: $08 $6c $6c
    ld a, [hl-]                                   ; $76d6: $3a

jr_0ce_76d7:
    ld c, $69                                     ; $76d7: $0e $69
    jr jr_0ce_76db                                ; $76d9: $18 $00

jr_0ce_76db:
    jr nz, @+$0a                                  ; $76db: $20 $08

    ld h, d                                       ; $76dd: $62
    ld [$8529], sp                                ; $76de: $08 $29 $85
    nop                                           ; $76e1: $00
    add hl, bc                                    ; $76e2: $09
    ld hl, $6a69                                  ; $76e3: $21 $69 $6a
    ld bc, $0930                                  ; $76e6: $01 $30 $09

jr_0ce_76e9:
    add hl, bc                                    ; $76e9: $09
    ld l, d                                       ; $76ea: $6a
    ld l, c                                       ; $76eb: $69
    ld a, b                                       ; $76ec: $78
    ld [$0e21], sp                                ; $76ed: $08 $21 $0e
    ld l, [hl]                                    ; $76f0: $6e
    jr nz, jr_0ce_770b                            ; $76f1: $20 $18

    add hl, bc                                    ; $76f3: $09
    ld l, c                                       ; $76f4: $69

jr_0ce_76f5:
    add hl, bc                                    ; $76f5: $09
    inc c                                         ; $76f6: $0c
    ld a, b                                       ; $76f7: $78
    nop                                           ; $76f8: $00
    add sp, $21                                   ; $76f9: $e8 $21
    jr jr_0ce_7705                                ; $76fb: $18 $08

    nop                                           ; $76fd: $00
    ld h, d                                       ; $76fe: $62
    nop                                           ; $76ff: $00
    inc c                                         ; $7700: $0c
    ld sp, $0e00                                  ; $7701: $31 $00 $0e
    add hl, bc                                    ; $7704: $09

jr_0ce_7705:
    add hl, hl                                    ; $7705: $29
    db $db                                        ; $7706: $db
    ld b, b                                       ; $7707: $40
    ld [$00a4], sp                                ; $7708: $08 $a4 $00

jr_0ce_770b:
    ld l, c                                       ; $770b: $69
    ret nz                                        ; $770c: $c0

    ld [$1040], sp                                ; $770d: $08 $40 $10
    ld a, [hl+]                                   ; $7710: $2a
    inc hl                                        ; $7711: $23
    jr jr_0ce_76e9                                ; $7712: $18 $d5

    nop                                           ; $7714: $00
    ld a, $09                                     ; $7715: $3e $09
    ld l, c                                       ; $7717: $69
    ld bc, $2008                                  ; $7718: $01 $08 $20
    jr @-$3c                                      ; $771b: $18 $c2

    jr jr_0ce_7780                                ; $771d: $18 $61

    jr nc, @-$31                                  ; $771f: $30 $cd

    nop                                           ; $7721: $00

jr_0ce_7722:
    inc c                                         ; $7722: $0c
    jp hl                                         ; $7723: $e9


    jr nz, jr_0ce_7726                            ; $7724: $20 $00

jr_0ce_7726:
    ld [bc], a                                    ; $7726: $02
    db $10                                        ; $7727: $10
    and [hl]                                      ; $7728: $a6
    nop                                           ; $7729: $00
    ld c, [hl]                                    ; $772a: $4e
    and e                                         ; $772b: $a3
    nop                                           ; $772c: $00
    add hl, bc                                    ; $772d: $09
    rrca                                          ; $772e: $0f
    ld [hl], d                                    ; $772f: $72
    nop                                           ; $7730: $00
    rst $10                                       ; $7731: $d7
    ld h, h                                       ; $7732: $64
    jr z, @-$19                                   ; $7733: $28 $e5

    ld [$c509], sp                                ; $7735: $08 $09 $c5
    nop                                           ; $7738: $00
    ld c, a                                       ; $7739: $4f
    rra                                           ; $773a: $1f
    ld [$2043], sp                                ; $773b: $08 $43 $20
    add hl, bc                                    ; $773e: $09
    ld de, $2091                                  ; $773f: $11 $91 $20
    jr c, jr_0ce_774e                             ; $7742: $38 $0a

    rrca                                          ; $7744: $0f
    sub e                                         ; $7745: $93
    nop                                           ; $7746: $00
    ld l, d                                       ; $7747: $6a
    add hl, bc                                    ; $7748: $09
    ld l, a                                       ; $7749: $6f
    ld b, b                                       ; $774a: $40
    ld [$64b5], sp                                ; $774b: $08 $b5 $64

jr_0ce_774e:
    jr z, jr_0ce_777a                             ; $774e: $28 $2a

    add l                                         ; $7750: $85
    jr z, jr_0ce_7776                             ; $7751: $28 $23

    jr nz, jr_0ce_77be                            ; $7753: $20 $69

    inc [hl]                                      ; $7755: $34
    ld bc, $846f                                  ; $7756: $01 $6f $84
    ld b, b                                       ; $7759: $40
    or c                                          ; $775a: $b1
    ld h, e                                       ; $775b: $63
    nop                                           ; $775c: $00
    inc c                                         ; $775d: $0c
    add c                                         ; $775e: $81
    jr nc, jr_0ce_77cb                            ; $775f: $30 $6a

    add hl, bc                                    ; $7761: $09
    ld a, [bc]                                    ; $7762: $0a
    ld l, h                                       ; $7763: $6c
    ld l, a                                       ; $7764: $6f
    and [hl]                                      ; $7765: $a6
    ld [$84bc], sp                                ; $7766: $08 $bc $84
    ld [$2849], sp                                ; $7769: $08 $49 $28
    add hl, bc                                    ; $776c: $09
    add [hl]                                      ; $776d: $86
    ld bc, $28c4                                  ; $776e: $01 $c4 $28
    daa                                           ; $7771: $27
    add hl, de                                    ; $7772: $19
    ld a, [bc]                                    ; $7773: $0a
    ld a, [bc]                                    ; $7774: $0a
    dec d                                         ; $7775: $15

jr_0ce_7776:
    add hl, hl                                    ; $7776: $29
    ld l, h                                       ; $7777: $6c
    ld a, [bc]                                    ; $7778: $0a
    ld a, [hl+]                                   ; $7779: $2a

jr_0ce_777a:
    ld bc, $e74e                                  ; $777a: $01 $4e $e7
    jr jr_0ce_7789                                ; $777d: $18 $0a

    ccf                                           ; $777f: $3f

jr_0ce_7780:
    jr nz, jr_0ce_7722                            ; $7780: $20 $a0

    rra                                           ; $7782: $1f
    jr jr_0ce_77ae                                ; $7783: $18 $29

    cp d                                          ; $7785: $ba
    ld bc, $0020                                  ; $7786: $01 $20 $00

jr_0ce_7789:
    ld c, $00                                     ; $7789: $0e $00
    rlc b                                         ; $778b: $cb $00
    inc b                                         ; $778d: $04
    ld b, b                                       ; $778e: $40
    ld b, c                                       ; $778f: $41
    ld b, c                                       ; $7790: $41
    ld b, d                                       ; $7791: $42
    ld b, e                                       ; $7792: $43
    ld bc, $4418                                  ; $7793: $01 $18 $44
    ld b, l                                       ; $7796: $45
    add b                                         ; $7797: $80
    ld bc, $4620                                  ; $7798: $01 $20 $46
    ld b, a                                       ; $779b: $47
    ld b, a                                       ; $779c: $47
    ld b, a                                       ; $779d: $47
    ld c, b                                       ; $779e: $48
    ld c, c                                       ; $779f: $49
    ld c, d                                       ; $77a0: $4a
    ld a, e                                       ; $77a1: $7b
    ld c, e                                       ; $77a2: $4b
    db $10                                        ; $77a3: $10
    ld [$000b], sp                                ; $77a4: $08 $0b $00
    inc c                                         ; $77a7: $0c
    db $10                                        ; $77a8: $10
    inc de                                        ; $77a9: $13
    nop                                           ; $77aa: $00
    ld b, [hl]                                    ; $77ab: $46
    jr nz, @+$0a                                  ; $77ac: $20 $08

jr_0ce_77ae:
    jr nc, jr_0ce_77b8                            ; $77ae: $30 $08

    ld a, a                                       ; $77b0: $7f
    ld b, h                                       ; $77b1: $44
    ld sp, $3020                                  ; $77b2: $31 $20 $30
    ld [$283c], sp                                ; $77b5: $08 $3c $28

jr_0ce_77b8:
    ld c, b                                       ; $77b8: $48
    ld [$483c], sp                                ; $77b9: $08 $3c $48
    jr c, jr_0ce_77c6                             ; $77bc: $38 $08

jr_0ce_77be:
    ld e, h                                       ; $77be: $5c
    ld [$3c86], sp                                ; $77bf: $08 $86 $3c
    xor b                                         ; $77c2: $a8
    ld b, d                                       ; $77c3: $42
    ld b, c                                       ; $77c4: $41
    ld b, c                                       ; $77c5: $41

jr_0ce_77c6:
    ld b, b                                       ; $77c6: $40
    ld e, h                                       ; $77c7: $5c
    ld [$007c], sp                                ; $77c8: $08 $7c $00

jr_0ce_77cb:
    ld c, l                                       ; $77cb: $4d
    xor $3c                                       ; $77cc: $ee $3c
    xor b                                         ; $77ce: $a8
    sbc b                                         ; $77cf: $98
    ld [$8078], sp                                ; $77d0: $08 $78 $80
    ld c, l                                       ; $77d3: $4d
    inc a                                         ; $77d4: $3c
    ld [$28a4], sp                                ; $77d5: $08 $a4 $28
    ld a, b                                       ; $77d8: $78
    add b                                         ; $77d9: $80
    ld c, [hl]                                    ; $77da: $4e
    xor $a4                                       ; $77db: $ee $a4
    ld b, b                                       ; $77dd: $40
    call nc, Call_0ce_7810                        ; $77de: $d4 $10 $78
    ld l, b                                       ; $77e1: $68
    ld c, [hl]                                    ; $77e2: $4e
    call nc, VBlankInterrupt                      ; $77e3: $d4 $40 $00
    add hl, bc                                    ; $77e6: $09
    or h                                          ; $77e7: $b4
    ld l, b                                       ; $77e8: $68
    ld c, l                                       ; $77e9: $4d
    rst $38                                       ; $77ea: $ff
    ld de, $1c21                                  ; $77eb: $11 $21 $1c
    jr z, @-$0e                                   ; $77ee: $28 $f0

    jr z, @+$2e                                   ; $77f0: $28 $2c

    add hl, bc                                    ; $77f2: $09
    db $10                                        ; $77f3: $10
    ld b, c                                       ; $77f4: $41
    ldh [rNR10], a                                ; $77f5: $e0 $10
    inc c                                         ; $77f7: $0c
    add hl, bc                                    ; $77f8: $09
    inc l                                         ; $77f9: $2c
    ld bc, $4f68                                  ; $77fa: $01 $68 $4f
    jr z, jr_0ce_7808                             ; $77fd: $28 $09

    inc l                                         ; $77ff: $2c
    add hl, bc                                    ; $7800: $09
    ld d, b                                       ; $7801: $50
    ld c, l                                       ; $7802: $4d
    ld hl, $5251                                  ; $7803: $21 $51 $52
    ld d, e                                       ; $7806: $53
    ld l, a                                       ; $7807: $6f

jr_0ce_7808:
    ld d, h                                       ; $7808: $54
    ld c, b                                       ; $7809: $48
    add hl, hl                                    ; $780a: $29
    ld h, b                                       ; $780b: $60
    ld bc, $6850                                  ; $780c: $01 $50 $68
    add hl, bc                                    ; $780f: $09

Call_0ce_7810:
    inc e                                         ; $7810: $1c
    ld [$291c], sp                                ; $7811: $08 $1c $29
    add h                                         ; $7814: $84
    ld [$d0df], sp                                ; $7815: $08 $df $d0
    jr z, jr_0ce_7856                             ; $7818: $28 $3c

    jr z, jr_0ce_786b                             ; $781a: $28 $4f

    inc l                                         ; $781c: $2c
    jr jr_0ce_783b                                ; $781d: $18 $1c

    ld de, $0884                                  ; $781f: $11 $84 $08
    ret nc                                        ; $7822: $d0

    ld c, b                                       ; $7823: $48
    and h                                         ; $7824: $a4
    ld hl, $10ad                                  ; $7825: $21 $ad $10
    add hl, bc                                    ; $7828: $09
    ld b, a                                       ; $7829: $47
    xor b                                         ; $782a: $a8
    add hl, bc                                    ; $782b: $09
    ld d, l                                       ; $782c: $55
    ld bc, $b800                                  ; $782d: $01 $00 $b8
    add hl, bc                                    ; $7830: $09
    ld [$0001], sp                                ; $7831: $08 $01 $00
    ld b, c                                       ; $7834: $41
    add hl, bc                                    ; $7835: $09
    ld bc, $6a00                                  ; $7836: $01 $00 $6a
    ld l, d                                       ; $7839: $6a
    ld l, d                                       ; $783a: $6a

jr_0ce_783b:
    ld a, [bc]                                    ; $783b: $0a
    dec bc                                        ; $783c: $0b
    ld bc, $6e00                                  ; $783d: $01 $00 $6e
    inc c                                         ; $7840: $0c
    ld bc, $0800                                  ; $7841: $01 $00 $08
    ld [$010a], sp                                ; $7844: $08 $0a $01
    nop                                           ; $7847: $00
    jr @+$0a                                      ; $7848: $18 $08

    jr nz, jr_0ce_7874                            ; $784a: $20 $28

    ld c, d                                       ; $784c: $4a
    ld d, $4a                                     ; $784d: $16 $4a
    ld c, d                                       ; $784f: $4a
    ld l, d                                       ; $7850: $6a
    jr nz, @+$2a                                  ; $7851: $20 $28

    ld l, e                                       ; $7853: $6b
    add hl, hl                                    ; $7854: $29
    nop                                           ; $7855: $00

jr_0ce_7856:
    jr nc, jr_0ce_7858                            ; $7856: $30 $00

jr_0ce_7858:
    ld l, d                                       ; $7858: $6a
    adc e                                         ; $7859: $8b
    jr nz, @+$2a                                  ; $785a: $20 $28

    ld l, c                                       ; $785c: $69
    ld l, c                                       ; $785d: $69
    ld l, c                                       ; $785e: $69
    jr nz, jr_0ce_7869                            ; $785f: $20 $08

    ld c, d                                       ; $7861: $4a
    ld b, b                                       ; $7862: $40
    ld c, b                                       ; $7863: $48
    jr nz, jr_0ce_78ae                            ; $7864: $20 $48

    dec c                                         ; $7866: $0d
    ld c, c                                       ; $7867: $49
    ld c, c                                       ; $7868: $49

jr_0ce_7869:
    ld c, c                                       ; $7869: $49
    ld l, c                                       ; $786a: $69

jr_0ce_786b:
    ld d, b                                       ; $786b: $50
    ld [$0860], sp                                ; $786c: $08 $60 $08
    ld l, h                                       ; $786f: $6c
    ld b, b                                       ; $7870: $40
    ld [$01c5], sp                                ; $7871: $08 $c5 $01

jr_0ce_7874:
    nop                                           ; $7874: $00
    ld b, b                                       ; $7875: $40
    jr z, @+$6a                                   ; $7876: $28 $68

    ld l, b                                       ; $7878: $68
    ld l, b                                       ; $7879: $68
    jr nz, @+$0a                                  ; $787a: $20 $08

    ld c, c                                       ; $787c: $49
    jr nz, jr_0ce_78a7                            ; $787d: $20 $28

    pop hl                                        ; $787f: $e1
    ld h, b                                       ; $7880: $60
    db $10                                        ; $7881: $10
    ld hl, $8000                                  ; $7882: $21 $00 $80
    jr z, jr_0ce_78cf                             ; $7885: $28 $48

    ld c, b                                       ; $7887: $48
    ld c, b                                       ; $7888: $48
    ld l, b                                       ; $7889: $68
    and h                                         ; $788a: $a4
    ld [$90c5], sp                                ; $788b: $08 $c5 $90
    ld [$0878], sp                                ; $788e: $08 $78 $08
    ld l, h                                       ; $7891: $6c
    ld l, h                                       ; $7892: $6c
    ld l, h                                       ; $7893: $6c
    jr nz, jr_0ce_78fe                            ; $7894: $20 $68

    ld c, b                                       ; $7896: $48
    jr nz, jr_0ce_78c1                            ; $7897: $20 $28

    rst $38                                       ; $7899: $ff
    ld h, b                                       ; $789a: $60
    db $10                                        ; $789b: $10
    jr nz, jr_0ce_789e                            ; $789c: $20 $00

jr_0ce_789e:
    add b                                         ; $789e: $80
    db $10                                        ; $789f: $10
    pop bc                                        ; $78a0: $c1
    nop                                           ; $78a1: $00
    sbc b                                         ; $78a2: $98
    ld [$30e0], sp                                ; $78a3: $08 $e0 $30
    ld b, b                                       ; $78a6: $40

jr_0ce_78a7:
    ld [$0079], sp                                ; $78a7: $08 $79 $00
    sbc a                                         ; $78aa: $9f
    ld b, b                                       ; $78ab: $40
    nop                                           ; $78ac: $00
    ld l, h                                       ; $78ad: $6c

jr_0ce_78ae:
    ld c, e                                       ; $78ae: $4b
    ldh [rNR41], a                                ; $78af: $e0 $20
    sbc b                                         ; $78b1: $98
    ld [$2900], sp                                ; $78b2: $08 $00 $29
    ld h, b                                       ; $78b5: $60
    db $10                                        ; $78b6: $10
    sbc c                                         ; $78b7: $99
    nop                                           ; $78b8: $00
    rst $38                                       ; $78b9: $ff
    nop                                           ; $78ba: $00
    add hl, bc                                    ; $78bb: $09
    jr nz, jr_0ce_78c6                            ; $78bc: $20 $08

    ldh [$08], a                                  ; $78be: $e0 $08
    sbc b                                         ; $78c0: $98

jr_0ce_78c1:
    ld [$10e0], sp                                ; $78c1: $08 $e0 $10
    jr nz, jr_0ce_78df                            ; $78c4: $20 $19

jr_0ce_78c6:
    nop                                           ; $78c6: $00
    ld sp, $48e0                                  ; $78c7: $31 $e0 $48
    cp $9d                                        ; $78ca: $fe $9d
    ld [$2140], sp                                ; $78cc: $08 $40 $21

jr_0ce_78cf:
    jr nz, jr_0ce_790a                            ; $78cf: $20 $39

    ret nz                                        ; $78d1: $c0

    ld b, b                                       ; $78d2: $40
    jr nz, jr_0ce_78f6                            ; $78d3: $20 $21

    nop                                           ; $78d5: $00
    ld sp, $28e0                                  ; $78d6: $31 $e0 $28
    ld c, d                                       ; $78d9: $4a
    rst $30                                       ; $78da: $f7
    and b                                         ; $78db: $a0
    ld [$2100], sp                                ; $78dc: $08 $00 $21

jr_0ce_78df:
    jr nz, @+$2a                                  ; $78df: $20 $28

    ldh [rNR41], a                                ; $78e1: $e0 $20
    ld l, h                                       ; $78e3: $6c
    jr nz, jr_0ce_790e                            ; $78e4: $20 $28

    jr nz, jr_0ce_7911                            ; $78e6: $20 $29

    and b                                         ; $78e8: $a0
    ld c, b                                       ; $78e9: $48
    ldh [$c0], a                                  ; $78ea: $e0 $c0
    ld [$29a0], sp                                ; $78ec: $08 $a0 $29
    ld e, b                                       ; $78ef: $58
    ld [$0020], sp                                ; $78f0: $08 $20 $00
    ld c, $00                                     ; $78f3: $0e $00
    ld a, c                                       ; $78f5: $79

jr_0ce_78f6:
    ld bc, $4000                                  ; $78f6: $01 $00 $40
    ld b, c                                       ; $78f9: $41
    ld b, d                                       ; $78fa: $42
    ld b, e                                       ; $78fb: $43
    ld b, b                                       ; $78fc: $40
    ld b, h                                       ; $78fd: $44

jr_0ce_78fe:
    ld b, l                                       ; $78fe: $45
    ld b, e                                       ; $78ff: $43
    add hl, de                                    ; $7900: $19
    ld b, b                                       ; $7901: $40
    ld b, [hl]                                    ; $7902: $46
    ld b, a                                       ; $7903: $47
    inc b                                         ; $7904: $04
    jr jr_0ce_7917                                ; $7905: $18 $10

    ld [$4948], sp                                ; $7907: $08 $48 $49

jr_0ce_790a:
    ld [$8018], sp                                ; $790a: $08 $18 $80
    inc d                                         ; $790d: $14

jr_0ce_790e:
    nop                                           ; $790e: $00
    ld c, d                                       ; $790f: $4a
    ld c, e                                       ; $7910: $4b

jr_0ce_7911:
    ld c, h                                       ; $7911: $4c
    ld c, l                                       ; $7912: $4d
    ld c, d                                       ; $7913: $4a
    ld c, [hl]                                    ; $7914: $4e
    ld c, a                                       ; $7915: $4f
    nop                                           ; $7916: $00

jr_0ce_7917:
    ld c, l                                       ; $7917: $4d
    ld c, d                                       ; $7918: $4a
    ld d, b                                       ; $7919: $50
    ld d, c                                       ; $791a: $51
    ld c, l                                       ; $791b: $4d
    ld c, d                                       ; $791c: $4a
    ld c, h                                       ; $791d: $4c
    ld c, e                                       ; $791e: $4b
    nop                                           ; $791f: $00
    ld c, l                                       ; $7920: $4d
    ld c, d                                       ; $7921: $4a
    ld d, d                                       ; $7922: $52
    ld d, e                                       ; $7923: $53
    ld c, l                                       ; $7924: $4d
    ld c, d                                       ; $7925: $4a
    ld d, h                                       ; $7926: $54
    ld d, l                                       ; $7927: $55
    ret nz                                        ; $7928: $c0

    ld [$1018], sp                                ; $7929: $08 $18 $10
    nop                                           ; $792c: $00
    ld d, [hl]                                    ; $792d: $56
    ld d, a                                       ; $792e: $57
    ld e, b                                       ; $792f: $58
    ld e, c                                       ; $7930: $59
    ld d, [hl]                                    ; $7931: $56
    ld e, d                                       ; $7932: $5a
    nop                                           ; $7933: $00
    ld e, e                                       ; $7934: $5b
    ld e, c                                       ; $7935: $59
    ld d, [hl]                                    ; $7936: $56
    ld e, h                                       ; $7937: $5c
    ld e, l                                       ; $7938: $5d
    ld e, c                                       ; $7939: $59
    ld d, [hl]                                    ; $793a: $56
    ld e, [hl]                                    ; $793b: $5e
    ld b, b                                       ; $793c: $40
    ld e, a                                       ; $793d: $5f
    inc b                                         ; $793e: $04
    jr jr_0ce_79a1                                ; $793f: $18 $60

    ld h, c                                       ; $7941: $61
    ld e, c                                       ; $7942: $59
    ld d, [hl]                                    ; $7943: $56
    ld e, b                                       ; $7944: $58
    ld d, a                                       ; $7945: $57
    add b                                         ; $7946: $80
    db $10                                        ; $7947: $10
    db $10                                        ; $7948: $10
    ld h, d                                       ; $7949: $62
    ld d, d                                       ; $794a: $52
    ld d, e                                       ; $794b: $53
    ld h, d                                       ; $794c: $62
    ld h, d                                       ; $794d: $62
    ld h, e                                       ; $794e: $63
    ld h, h                                       ; $794f: $64
    nop                                           ; $7950: $00
    ld h, d                                       ; $7951: $62
    ld h, d                                       ; $7952: $62
    ld h, l                                       ; $7953: $65
    ld h, [hl]                                    ; $7954: $66
    ld h, d                                       ; $7955: $62
    ld h, d                                       ; $7956: $62
    ld h, [hl]                                    ; $7957: $66
    ld h, l                                       ; $7958: $65
    add c                                         ; $7959: $81
    inc b                                         ; $795a: $04
    jr @+$69                                      ; $795b: $18 $67

    ld l, b                                       ; $795d: $68
    ld h, d                                       ; $795e: $62
    ld h, d                                       ; $795f: $62
    ld l, c                                       ; $7960: $69
    ld l, d                                       ; $7961: $6a
    db $10                                        ; $7962: $10
    jr jr_0ce_7965                                ; $7963: $18 $00

jr_0ce_7965:
    ld l, e                                       ; $7965: $6b
    ld l, h                                       ; $7966: $6c
    ld h, d                                       ; $7967: $62
    ld h, d                                       ; $7968: $62
    ld l, l                                       ; $7969: $6d
    ld l, [hl]                                    ; $796a: $6e
    ld h, d                                       ; $796b: $62
    ld h, d                                       ; $796c: $62
    jr nz, jr_0ce_79de                            ; $796d: $20 $6f

    ld [hl], b                                    ; $796f: $70
    inc c                                         ; $7970: $0c
    jr jr_0ce_79d1                                ; $7971: $18 $5e

    ld e, a                                       ; $7973: $5f
    ld h, d                                       ; $7974: $62
    ld h, d                                       ; $7975: $62
    ld [hl], c                                    ; $7976: $71
    inc b                                         ; $7977: $04
    ld [hl], d                                    ; $7978: $72
    ld h, d                                       ; $7979: $62
    ld h, d                                       ; $797a: $62
    ld [hl], e                                    ; $797b: $73
    ld [hl], h                                    ; $797c: $74
    inc e                                         ; $797d: $1c
    jr jr_0ce_79d0                                ; $797e: $18 $50

    ld d, c                                       ; $7980: $51
    inc c                                         ; $7981: $0c
    ld h, d                                       ; $7982: $62
    ld h, d                                       ; $7983: $62
    ld [hl], l                                    ; $7984: $75
    halt                                          ; $7985: $76
    inc e                                         ; $7986: $1c
    jr c, jr_0ce_79b9                             ; $7987: $38 $30

    ld [$7877], sp                                ; $7989: $08 $77 $78
    ldh [rLCDC], a                                ; $798c: $e0 $40
    jr @+$2e                                      ; $798e: $18 $2c

    ld [$0858], sp                                ; $7990: $08 $58 $08
    ld a, c                                       ; $7993: $79
    ld a, d                                       ; $7994: $7a
    ld h, d                                       ; $7995: $62
    ld h, d                                       ; $7996: $62
    ld e, a                                       ; $7997: $5f
    jr nz, jr_0ce_79f8                            ; $7998: $20 $5e

    ld h, d                                       ; $799a: $62
    ld l, h                                       ; $799b: $6c
    db $10                                        ; $799c: $10
    ld l, d                                       ; $799d: $6a
    ld l, c                                       ; $799e: $69
    ld h, d                                       ; $799f: $62
    ld h, d                                       ; $79a0: $62

jr_0ce_79a1:
    ld a, e                                       ; $79a1: $7b
    ld [hl], b                                    ; $79a2: $70
    ld a, h                                       ; $79a3: $7c
    ld h, b                                       ; $79a4: $60
    jr jr_0ce_7a23                                ; $79a5: $18 $7c

    ld [$0818], sp                                ; $79a7: $08 $18 $08
    ld a, h                                       ; $79aa: $7c
    ld a, e                                       ; $79ab: $7b
    ld h, d                                       ; $79ac: $62
    ld h, d                                       ; $79ad: $62
    jr nz, jr_0ce_7a03                            ; $79ae: $20 $53

    ld d, d                                       ; $79b0: $52
    inc e                                         ; $79b1: $1c
    jr @+$59                                      ; $79b2: $18 $57

    ld e, b                                       ; $79b4: $58
    ld h, d                                       ; $79b5: $62
    ld h, d                                       ; $79b6: $62
    ld a, d                                       ; $79b7: $7a
    ld h, a                                       ; $79b8: $67

jr_0ce_79b9:
    ld a, c                                       ; $79b9: $79
    db $10                                        ; $79ba: $10
    jr c, jr_0ce_7a35                             ; $79bb: $38 $78

    ld [$7778], sp                                ; $79bd: $08 $78 $77
    jr c, jr_0ce_79da                             ; $79c0: $38 $18

    inc a                                         ; $79c2: $3c
    ld [$0878], sp                                ; $79c3: $08 $78 $08
    jr nc, jr_0ce_7a3e                            ; $79c6: $30 $76

    ld [hl], l                                    ; $79c8: $75
    ld d, b                                       ; $79c9: $50
    jr jr_0ce_7a18                                ; $79ca: $18 $4c

    ld [$5d5c], sp                                ; $79cc: $08 $5c $5d
    ld h, d                                       ; $79cf: $62

jr_0ce_79d0:
    ld h, d                                       ; $79d0: $62

jr_0ce_79d1:
    nop                                           ; $79d1: $00
    ld [hl], d                                    ; $79d2: $72
    ld [hl], c                                    ; $79d3: $71
    ld h, d                                       ; $79d4: $62
    ld h, d                                       ; $79d5: $62
    ld a, l                                       ; $79d6: $7d
    ld a, [hl]                                    ; $79d7: $7e
    ld h, d                                       ; $79d8: $62
    ld h, d                                       ; $79d9: $62

jr_0ce_79da:
    jr nz, @+$76                                  ; $79da: $20 $74

    ld [hl], e                                    ; $79dc: $73
    ld b, b                                       ; $79dd: $40

jr_0ce_79de:
    jr jr_0ce_7a4e                                ; $79de: $18 $6e

    ld l, l                                       ; $79e0: $6d
    ld h, d                                       ; $79e1: $62
    ld h, d                                       ; $79e2: $62
    ld l, h                                       ; $79e3: $6c
    ld h, a                                       ; $79e4: $67
    ld l, e                                       ; $79e5: $6b
    db $10                                        ; $79e6: $10
    jr jr_0ce_7a01                                ; $79e7: $18 $18

    ld [$6768], sp                                ; $79e9: $08 $68 $67
    inc e                                         ; $79ec: $1c
    jr jr_0ce_7a6b                                ; $79ed: $18 $7c

    ld [$0824], sp                                ; $79ef: $08 $24 $08
    jr c, jr_0ce_7a58                             ; $79f2: $38 $64

    ld h, e                                       ; $79f4: $63
    ldh a, [rNR23]                                ; $79f5: $f0 $18
    adc h                                         ; $79f7: $8c

jr_0ce_79f8:
    nop                                           ; $79f8: $00
    jr nz, jr_0ce_7a0c                            ; $79f9: $20 $11

    ld h, c                                       ; $79fb: $61
    ld h, b                                       ; $79fc: $60
    ld e, c                                       ; $79fd: $59
    ret nz                                        ; $79fe: $c0

    jr z, jr_0ce_7a12                             ; $79ff: $28 $11

jr_0ce_7a01:
    inc l                                         ; $7a01: $2c
    add hl, bc                                    ; $7a02: $09

jr_0ce_7a03:
    ld c, h                                       ; $7a03: $4c
    ld c, e                                       ; $7a04: $4b
    ld e, c                                       ; $7a05: $59
    ld d, [hl]                                    ; $7a06: $56
    ld e, e                                       ; $7a07: $5b
    ld e, d                                       ; $7a08: $5a
    ld [$5659], sp                                ; $7a09: $08 $59 $56

jr_0ce_7a0c:
    ld e, a                                       ; $7a0c: $5f
    ld e, [hl]                                    ; $7a0d: $5e
    inc d                                         ; $7a0e: $14
    db $10                                        ; $7a0f: $10
    ld c, d                                       ; $7a10: $4a
    ld a, l                                       ; $7a11: $7d

jr_0ce_7a12:
    ld a, [hl]                                    ; $7a12: $7e
    ld [$4a4d], sp                                ; $7a13: $08 $4d $4a
    ld d, l                                       ; $7a16: $55
    ld d, h                                       ; $7a17: $54

jr_0ce_7a18:
    ld e, h                                       ; $7a18: $5c
    add hl, de                                    ; $7a19: $19
    ld d, e                                       ; $7a1a: $53
    ld d, d                                       ; $7a1b: $52
    ld c, l                                       ; $7a1c: $4d
    nop                                           ; $7a1d: $00
    ld c, d                                       ; $7a1e: $4a
    ld l, d                                       ; $7a1f: $6a
    ld l, c                                       ; $7a20: $69
    ld c, l                                       ; $7a21: $4d
    ld c, d                                       ; $7a22: $4a

jr_0ce_7a23:
    ld c, a                                       ; $7a23: $4f
    ld c, [hl]                                    ; $7a24: $4e
    ld c, l                                       ; $7a25: $4d
    ldh [$78], a                                  ; $7a26: $e0 $78
    ld de, $0010                                  ; $7a28: $11 $10 $00
    sbc b                                         ; $7a2b: $98
    ld de, $4849                                  ; $7a2c: $11 $49 $48
    ld b, e                                       ; $7a2f: $43
    ld b, b                                       ; $7a30: $40

jr_0ce_7a31:
    ld b, d                                       ; $7a31: $42
    ld h, b                                       ; $7a32: $60
    ld b, c                                       ; $7a33: $41
    inc b                                         ; $7a34: $04

jr_0ce_7a35:
    jr jr_0ce_7a43                                ; $7a35: $18 $0c

    ld [$4445], sp                                ; $7a37: $08 $45 $44
    ld b, e                                       ; $7a3a: $43
    ld b, b                                       ; $7a3b: $40
    ld b, a                                       ; $7a3c: $47
    ld b, [hl]                                    ; $7a3d: $46

jr_0ce_7a3e:
    ld b, [hl]                                    ; $7a3e: $46
    inc d                                         ; $7a3f: $14
    db $10                                        ; $7a40: $10
    ld a, [bc]                                    ; $7a41: $0a
    add hl, bc                                    ; $7a42: $09

jr_0ce_7a43:
    ld a, [bc]                                    ; $7a43: $0a
    ld bc, $0500                                  ; $7a44: $01 $00 $05
    nop                                           ; $7a47: $00
    add hl, bc                                    ; $7a48: $09
    ld sp, hl                                     ; $7a49: $f9
    add hl, bc                                    ; $7a4a: $09
    ld [$2004], sp                                ; $7a4b: $08 $04 $20

jr_0ce_7a4e:
    inc c                                         ; $7a4e: $0c
    ld [$4818], sp                                ; $7a4f: $08 $18 $48
    inc e                                         ; $7a52: $1c
    jr z, jr_0ce_7a7e                             ; $7a53: $28 $29

    add hl, hl                                    ; $7a55: $29
    jr z, jr_0ce_7a78                             ; $7a56: $28 $20

jr_0ce_7a58:
    add e                                         ; $7a58: $83
    inc [hl]                                      ; $7a59: $34
    nop                                           ; $7a5a: $00
    ld c, c                                       ; $7a5b: $49
    ld c, d                                       ; $7a5c: $4a
    ld a, [bc]                                    ; $7a5d: $0a
    ld a, [bc]                                    ; $7a5e: $0a
    ld a, [hl+]                                   ; $7a5f: $2a
    stop                                          ; $7a60: $10 $00
    ld [bc], a                                    ; $7a62: $02
    jr z, jr_0ce_7a31                             ; $7a63: $28 $cc

    inc [hl]                                      ; $7a65: $34
    jr nc, jr_0ce_7a7b                            ; $7a66: $30 $13

    jr nz, jr_0ce_7ad3                            ; $7a68: $20 $69

    ld l, d                                       ; $7a6a: $6a

jr_0ce_7a6b:
    dec c                                         ; $7a6b: $0d
    ld b, b                                       ; $7a6c: $40
    daa                                           ; $7a6d: $27
    jr nz, jr_0ce_7a9b                            ; $7a6e: $20 $2b

    ld a, [hl+]                                   ; $7a70: $2a
    inc e                                         ; $7a71: $1c
    ld a, [bc]                                    ; $7a72: $0a
    ld a, [bc]                                    ; $7a73: $0a
    ld l, d                                       ; $7a74: $6a
    jr @+$42                                      ; $7a75: $18 $40

    db $10                                        ; $7a77: $10

jr_0ce_7a78:
    ld [$087f], sp                                ; $7a78: $08 $7f $08

jr_0ce_7a7b:
    dec bc                                        ; $7a7b: $0b
    dec bc                                        ; $7a7c: $0b
    sub a                                         ; $7a7d: $97

jr_0ce_7a7e:
    ld d, h                                       ; $7a7e: $54
    jr jr_0ce_7acc                                ; $7a7f: $18 $4b

    ld c, e                                       ; $7a81: $4b
    inc [hl]                                      ; $7a82: $34
    ld e, b                                       ; $7a83: $58
    ld c, d                                       ; $7a84: $4a
    db $10                                        ; $7a85: $10
    jr nz, jr_0ce_7aa8                            ; $7a86: $20 $20

    jr z, @+$2a                                   ; $7a88: $28 $28

    ld [$4a67], sp                                ; $7a8a: $08 $67 $4a
    ld a, b                                       ; $7a8d: $78
    nop                                           ; $7a8e: $00
    db $10                                        ; $7a8f: $10
    ld l, b                                       ; $7a90: $68
    dec c                                         ; $7a91: $0d
    dec c                                         ; $7a92: $0d
    adc h                                         ; $7a93: $8c
    nop                                           ; $7a94: $00
    ld e, h                                       ; $7a95: $5c
    nop                                           ; $7a96: $00
    ld [$f908], sp                                ; $7a97: $08 $08 $f9
    ld h, b                                       ; $7a9a: $60

jr_0ce_7a9b:
    ld [$0810], sp                                ; $7a9b: $08 $10 $08
    rst $10                                       ; $7a9e: $d7
    ld [$0818], sp                                ; $7a9f: $08 $18 $08
    ld [hl], h                                    ; $7aa2: $74
    ld [$6d6d], sp                                ; $7aa3: $08 $6d $6d
    xor h                                         ; $7aa6: $ac
    nop                                           ; $7aa7: $00

jr_0ce_7aa8:
    ld e, a                                       ; $7aa8: $5f
    dec hl                                        ; $7aa9: $2b
    ld [$4b18], sp                                ; $7aaa: $08 $18 $4b
    cp b                                          ; $7aad: $b8
    nop                                           ; $7aae: $00
    db $10                                        ; $7aaf: $10
    ld [$0888], sp                                ; $7ab0: $08 $88 $08
    jr @+$0a                                      ; $7ab3: $18 $08

    ld d, b                                       ; $7ab5: $50
    ld [$10e1], sp                                ; $7ab6: $08 $e1 $10
    ld c, b                                       ; $7ab9: $48
    rrca                                          ; $7aba: $0f
    add hl, bc                                    ; $7abb: $09
    jr nz, @+$12                                  ; $7abc: $20 $10

    ld l, e                                       ; $7abe: $6b
    ld a, [bc]                                    ; $7abf: $0a
    ld a, [bc]                                    ; $7ac0: $0a
    ld l, e                                       ; $7ac1: $6b
    db $10                                        ; $7ac2: $10
    ld [$9cbf], sp                                ; $7ac3: $08 $bf $9c
    nop                                           ; $7ac6: $00
    ld l, e                                       ; $7ac7: $6b
    inc c                                         ; $7ac8: $0c
    nop                                           ; $7ac9: $00
    daa                                           ; $7aca: $27
    add hl, bc                                    ; $7acb: $09

jr_0ce_7acc:
    ld [$7048], sp                                ; $7acc: $08 $48 $70
    ld [$4818], sp                                ; $7acf: $08 $18 $48
    ret c                                         ; $7ad2: $d8

jr_0ce_7ad3:
    ld [$18f0], sp                                ; $7ad3: $08 $f0 $18
    ld c, b                                       ; $7ad6: $48
    xor b                                         ; $7ad7: $a8
    ld [$0038], sp                                ; $7ad8: $08 $38 $00
    ld h, $01                                     ; $7adb: $26 $01
    ld c, d                                       ; $7add: $4a
    ld c, d                                       ; $7ade: $4a
    ld l, d                                       ; $7adf: $6a
    ld l, e                                       ; $7ae0: $6b
    and b                                         ; $7ae1: $a0
    or [hl]                                       ; $7ae2: $b6
    nop                                           ; $7ae3: $00
    add hl, bc                                    ; $7ae4: $09
    cp d                                          ; $7ae5: $ba
    ld [$4a4a], sp                                ; $7ae6: $08 $4a $4a
    ld a, [hl+]                                   ; $7ae9: $2a
    ld a, [hl+]                                   ; $7aea: $2a
    ld c, d                                       ; $7aeb: $4a
    inc d                                         ; $7aec: $14
    ld c, d                                       ; $7aed: $4a
    ld l, c                                       ; $7aee: $69
    ld l, c                                       ; $7aef: $69
    inc b                                         ; $7af0: $04
    nop                                           ; $7af1: $00
    ld l, d                                       ; $7af2: $6a
    inc d                                         ; $7af3: $14
    jr jr_0ce_7b3f                                ; $7af4: $18 $49

    ld c, c                                       ; $7af6: $49
    and $20                                       ; $7af7: $e6 $20
    nop                                           ; $7af9: $00
    inc c                                         ; $7afa: $0c
    nop                                           ; $7afb: $00
    inc d                                         ; $7afc: $14
    ld [$292a], sp                                ; $7afd: $08 $2a $29
    jr jr_0ce_7b1a                                ; $7b00: $18 $18

    inc e                                         ; $7b02: $1c

jr_0ce_7b03:
    ld [$fb4a], sp                                ; $7b03: $08 $4a $fb
    jr jr_0ce_7b08                                ; $7b06: $18 $00

jr_0ce_7b08:
    db $10                                        ; $7b08: $10
    ld [$0808], sp                                ; $7b09: $08 $08 $08
    jr nz, jr_0ce_7b1e                            ; $7b0c: $20 $10

    inc h                                         ; $7b0e: $24
    jr nz, jr_0ce_7b7b                            ; $7b0f: $20 $6a

    inc b                                         ; $7b11: $04
    jr nz, jr_0ce_7b54                            ; $7b12: $20 $40

    ld [$0c80], sp                                ; $7b14: $08 $80 $0c
    nop                                           ; $7b17: $00
    nop                                           ; $7b18: $00
    inc e                                         ; $7b19: $1c

jr_0ce_7b1a:
    nop                                           ; $7b1a: $00
    ld c, b                                       ; $7b1b: $48
    nop                                           ; $7b1c: $00
    ld l, c                                       ; $7b1d: $69

jr_0ce_7b1e:
    nop                                           ; $7b1e: $00
    ld a, [hl]                                    ; $7b1f: $7e
    nop                                           ; $7b20: $00
    inc l                                         ; $7b21: $2c
    dec bc                                        ; $7b22: $0b
    jr z, jr_0ce_7b03                             ; $7b23: $28 $de

    ld [hl], b                                    ; $7b25: $70
    cp l                                          ; $7b26: $bd
    ld [hl], a                                    ; $7b27: $77
    nop                                           ; $7b28: $00
    jr nz, jr_0ce_7b2b                            ; $7b29: $20 $00

jr_0ce_7b2b:
    inc l                                         ; $7b2b: $2c
    add b                                         ; $7b2c: $80
    ld b, h                                       ; $7b2d: $44
    ld h, b                                       ; $7b2e: $60
    ld e, c                                       ; $7b2f: $59
    nop                                           ; $7b30: $00
    inc h                                         ; $7b31: $24
    jr nz, jr_0ce_7b8c                            ; $7b32: $20 $58

    ldh [$7d], a                                  ; $7b34: $e0 $7d
    nop                                           ; $7b36: $00
    ld a, a                                       ; $7b37: $7f
    cp l                                          ; $7b38: $bd
    ld [hl], a                                    ; $7b39: $77
    cp l                                          ; $7b3a: $bd
    ld [hl], a                                    ; $7b3b: $77
    cp l                                          ; $7b3c: $bd
    ld [hl], a                                    ; $7b3d: $77
    cp l                                          ; $7b3e: $bd

jr_0ce_7b3f:
    ld [hl], a                                    ; $7b3f: $77
    cp l                                          ; $7b40: $bd
    ld [hl], a                                    ; $7b41: $77
    cp l                                          ; $7b42: $bd
    ld [hl], a                                    ; $7b43: $77
    cp l                                          ; $7b44: $bd
    ld [hl], a                                    ; $7b45: $77
    cp l                                          ; $7b46: $bd
    ld [hl], a                                    ; $7b47: $77
    cp l                                          ; $7b48: $bd
    ld [hl], a                                    ; $7b49: $77
    cp l                                          ; $7b4a: $bd
    ld [hl], a                                    ; $7b4b: $77
    cp l                                          ; $7b4c: $bd
    ld [hl], a                                    ; $7b4d: $77
    cp l                                          ; $7b4e: $bd
    ld [hl], a                                    ; $7b4f: $77
    cp l                                          ; $7b50: $bd
    ld [hl], a                                    ; $7b51: $77
    cp l                                          ; $7b52: $bd
    ld [hl], a                                    ; $7b53: $77

jr_0ce_7b54:
    cp l                                          ; $7b54: $bd
    ld [hl], a                                    ; $7b55: $77
    cp l                                          ; $7b56: $bd
    ld [hl], a                                    ; $7b57: $77
    pop bc                                        ; $7b58: $c1
    dec c                                         ; $7b59: $0d
    ld h, c                                       ; $7b5a: $61
    ld c, $07                                     ; $7b5b: $0e $07
    inc h                                         ; $7b5d: $24
    nop                                           ; $7b5e: $00
    nop                                           ; $7b5f: $00
    pop bc                                        ; $7b60: $c1
    dec c                                         ; $7b61: $0d
    ld h, c                                       ; $7b62: $61
    ld c, $23                                     ; $7b63: $0e $23
    inc [hl]                                      ; $7b65: $34
    nop                                           ; $7b66: $00
    nop                                           ; $7b67: $00
    or d                                          ; $7b68: $b2
    ld c, h                                       ; $7b69: $4c
    dec bc                                        ; $7b6a: $0b
    inc l                                         ; $7b6b: $2c
    rlca                                          ; $7b6c: $07
    inc h                                         ; $7b6d: $24
    nop                                           ; $7b6e: $00
    nop                                           ; $7b6f: $00
    nop                                           ; $7b70: $00
    nop                                           ; $7b71: $00
    ld h, l                                       ; $7b72: $65
    inc l                                         ; $7b73: $2c
    jr nc, jr_0ce_7bb7                            ; $7b74: $30 $41

    ld e, b                                       ; $7b76: $58
    ld h, d                                       ; $7b77: $62
    pop bc                                        ; $7b78: $c1
    dec c                                         ; $7b79: $0d
    ld h, c                                       ; $7b7a: $61

jr_0ce_7b7b:
    ld c, $83                                     ; $7b7b: $0e $83
    ld b, h                                       ; $7b7d: $44
    nop                                           ; $7b7e: $00
    nop                                           ; $7b7f: $00
    ld bc, $210e                                  ; $7b80: $01 $0e $21
    rrca                                          ; $7b83: $0f
    add e                                         ; $7b84: $83
    ld b, h                                       ; $7b85: $44
    nop                                           ; $7b86: $00
    nop                                           ; $7b87: $00
    cp l                                          ; $7b88: $bd
    ld [hl], a                                    ; $7b89: $77
    cp l                                          ; $7b8a: $bd
    ld [hl], a                                    ; $7b8b: $77

jr_0ce_7b8c:
    cp l                                          ; $7b8c: $bd
    ld [hl], a                                    ; $7b8d: $77
    cp l                                          ; $7b8e: $bd
    ld [hl], a                                    ; $7b8f: $77
    cp l                                          ; $7b90: $bd
    ld [hl], a                                    ; $7b91: $77
    cp l                                          ; $7b92: $bd
    ld [hl], a                                    ; $7b93: $77
    cp l                                          ; $7b94: $bd
    ld [hl], a                                    ; $7b95: $77
    cp l                                          ; $7b96: $bd
    ld [hl], a                                    ; $7b97: $77
    ld b, l                                       ; $7b98: $45
    ld [$08b0], sp                                ; $7b99: $08 $b0 $08
    ld e, a                                       ; $7b9c: $5f
    ld a, [bc]                                    ; $7b9d: $0a
    ld d, [hl]                                    ; $7b9e: $56
    dec c                                         ; $7b9f: $0d
    ld b, l                                       ; $7ba0: $45
    ld [$4d00], sp                                ; $7ba1: $08 $00 $4d
    nop                                           ; $7ba4: $00
    ld a, d                                       ; $7ba5: $7a
    cp l                                          ; $7ba6: $bd
    ld [hl], a                                    ; $7ba7: $77
    cp l                                          ; $7ba8: $bd
    ld [hl], a                                    ; $7ba9: $77
    cp l                                          ; $7baa: $bd
    ld [hl], a                                    ; $7bab: $77
    cp l                                          ; $7bac: $bd
    ld [hl], a                                    ; $7bad: $77
    cp l                                          ; $7bae: $bd
    ld [hl], a                                    ; $7baf: $77
    cp l                                          ; $7bb0: $bd
    ld [hl], a                                    ; $7bb1: $77
    cp l                                          ; $7bb2: $bd
    ld [hl], a                                    ; $7bb3: $77
    cp l                                          ; $7bb4: $bd
    ld [hl], a                                    ; $7bb5: $77
    cp l                                          ; $7bb6: $bd

jr_0ce_7bb7:
    ld [hl], a                                    ; $7bb7: $77
    cp l                                          ; $7bb8: $bd
    ld [hl], a                                    ; $7bb9: $77
    cp l                                          ; $7bba: $bd
    ld [hl], a                                    ; $7bbb: $77
    cp l                                          ; $7bbc: $bd
    ld [hl], a                                    ; $7bbd: $77
    cp l                                          ; $7bbe: $bd
    ld [hl], a                                    ; $7bbf: $77
    cp l                                          ; $7bc0: $bd
    ld [hl], a                                    ; $7bc1: $77
    cp l                                          ; $7bc2: $bd
    ld [hl], a                                    ; $7bc3: $77
    cp l                                          ; $7bc4: $bd
    ld [hl], a                                    ; $7bc5: $77
    cp l                                          ; $7bc6: $bd
    ld [hl], a                                    ; $7bc7: $77
    cp l                                          ; $7bc8: $bd
    ld [hl], a                                    ; $7bc9: $77
    cp l                                          ; $7bca: $bd
    ld [hl], a                                    ; $7bcb: $77
    cp l                                          ; $7bcc: $bd
    ld [hl], a                                    ; $7bcd: $77
    cp l                                          ; $7bce: $bd
    ld [hl], a                                    ; $7bcf: $77
    cp l                                          ; $7bd0: $bd
    ld [hl], a                                    ; $7bd1: $77
    cp l                                          ; $7bd2: $bd
    ld [hl], a                                    ; $7bd3: $77
    cp l                                          ; $7bd4: $bd
    ld [hl], a                                    ; $7bd5: $77
    cp l                                          ; $7bd6: $bd
    ld [hl], a                                    ; $7bd7: $77
    add b                                         ; $7bd8: $80
    nop                                           ; $7bd9: $00
    push af                                       ; $7bda: $f5
    ld h, [hl]                                    ; $7bdb: $66
    nop                                           ; $7bdc: $00
    ld h, [hl]                                    ; $7bdd: $66
    ld c, $40                                     ; $7bde: $0e $40
    add b                                         ; $7be0: $80
    nop                                           ; $7be1: $00
    ld e, b                                       ; $7be2: $58
    ld [hl], a                                    ; $7be3: $77
    ld h, b                                       ; $7be4: $60
    ld e, c                                       ; $7be5: $59
    ld c, $40                                     ; $7be6: $0e $40
    add b                                         ; $7be8: $80
    nop                                           ; $7be9: $00
    jr nz, jr_0ce_7bed                            ; $7bea: $20 $01

    di                                            ; $7bec: $f3

jr_0ce_7bed:
    ld [bc], a                                    ; $7bed: $02
    dec bc                                        ; $7bee: $0b
    ld [bc], a                                    ; $7bef: $02
    add b                                         ; $7bf0: $80
    nop                                           ; $7bf1: $00
    push af                                       ; $7bf2: $f5
    ld h, [hl]                                    ; $7bf3: $66
    ld h, b                                       ; $7bf4: $60
    ld e, c                                       ; $7bf5: $59
    ld c, $40                                     ; $7bf6: $0e $40
    cp l                                          ; $7bf8: $bd
    ld [hl], a                                    ; $7bf9: $77
    cp l                                          ; $7bfa: $bd
    ld [hl], a                                    ; $7bfb: $77
    ld h, b                                       ; $7bfc: $60
    ld e, c                                       ; $7bfd: $59
    nop                                           ; $7bfe: $00
    ld e, [hl]                                    ; $7bff: $5e
    add b                                         ; $7c00: $80
    nop                                           ; $7c01: $00
    push af                                       ; $7c02: $f5
    ld h, [hl]                                    ; $7c03: $66
    jr nz, @+$47                                  ; $7c04: $20 $45

    ld c, $40                                     ; $7c06: $0e $40
    add b                                         ; $7c08: $80
    nop                                           ; $7c09: $00
    nop                                           ; $7c0a: $00
    ld bc, $0314                                  ; $7c0b: $01 $14 $03
    ret                                           ; $7c0e: $c9


    ld bc, $0080                                  ; $7c0f: $01 $80 $00
    add c                                         ; $7c12: $81
    ld bc, $0356                                  ; $7c13: $01 $56 $03
    ld l, h                                       ; $7c16: $6c
    ld [bc], a                                    ; $7c17: $02
    xor e                                         ; $7c18: $ab
    ld b, c                                       ; $7c19: $41
    add sp, $5d                                   ; $7c1a: $e8 $5d
    ld b, [hl]                                    ; $7c1c: $46
    ld b, l                                       ; $7c1d: $45
    adc a                                         ; $7c1e: $8f
    ld d, d                                       ; $7c1f: $52
    cp l                                          ; $7c20: $bd
    ld [hl], a                                    ; $7c21: $77
    rst $28                                       ; $7c22: $ef
    ld h, l                                       ; $7c23: $65
    xor d                                         ; $7c24: $aa
    ld d, b                                       ; $7c25: $50
    adc a                                         ; $7c26: $8f
    ld d, d                                       ; $7c27: $52
    ld c, l                                       ; $7c28: $4d
    ld [hl], a                                    ; $7c29: $77
    ld l, b                                       ; $7c2a: $68
    ld e, [hl]                                    ; $7c2b: $5e
    and l                                         ; $7c2c: $a5
    ld b, c                                       ; $7c2d: $41
    adc a                                         ; $7c2e: $8f
    ld d, d                                       ; $7c2f: $52
    xor d                                         ; $7c30: $aa
    ld d, b                                       ; $7c31: $50
    nop                                           ; $7c32: $00
    nop                                           ; $7c33: $00
    db $ec                                        ; $7c34: $ec
    ld [bc], a                                    ; $7c35: $02
    jr nz, jr_0ce_7c5a                            ; $7c36: $20 $22

    xor d                                         ; $7c38: $aa
    ld d, b                                       ; $7c39: $50
    cpl                                           ; $7c3a: $2f
    ld l, h                                       ; $7c3b: $6c
    db $e4                                        ; $7c3c: $e4
    ld d, l                                       ; $7c3d: $55
    nop                                           ; $7c3e: $00
    nop                                           ; $7c3f: $00
    xor d                                         ; $7c40: $aa
    ld d, b                                       ; $7c41: $50
    or $02                                        ; $7c42: $f6 $02
    db $ec                                        ; $7c44: $ec
    ld [bc], a                                    ; $7c45: $02
    jr nz, jr_0ce_7c6a                            ; $7c46: $20 $22

    ld d, [hl]                                    ; $7c48: $56
    inc bc                                        ; $7c49: $03
    or $02                                        ; $7c4a: $f6 $02
    db $ec                                        ; $7c4c: $ec
    ld [bc], a                                    ; $7c4d: $02
    jr nz, jr_0ce_7c72                            ; $7c4e: $20 $22

    nop                                           ; $7c50: $00
    nop                                           ; $7c51: $00
    or $02                                        ; $7c52: $f6 $02
    db $ec                                        ; $7c54: $ec
    ld [bc], a                                    ; $7c55: $02
    jr nz, jr_0ce_7c7a                            ; $7c56: $20 $22

    or h                                          ; $7c58: $b4
    scf                                           ; $7c59: $37

jr_0ce_7c5a:
    call $8612                                    ; $7c5a: $cd $12 $86
    ld bc, $20e0                                  ; $7c5d: $01 $e0 $20
    or h                                          ; $7c60: $b4
    scf                                           ; $7c61: $37
    call $8612                                    ; $7c62: $cd $12 $86
    ld bc, $3560                                  ; $7c65: $01 $60 $35
    cp d                                          ; $7c68: $ba
    ld [hl], l                                    ; $7c69: $75

jr_0ce_7c6a:
    sub e                                         ; $7c6a: $93
    ld e, b                                       ; $7c6b: $58
    inc c                                         ; $7c6c: $0c
    inc l                                         ; $7c6d: $2c
    jr nz, jr_0ce_7cc2                            ; $7c6e: $20 $52

    cp d                                          ; $7c70: $ba
    ld [hl], l                                    ; $7c71: $75

jr_0ce_7c72:
    sub e                                         ; $7c72: $93

jr_0ce_7c73:
    ld e, b                                       ; $7c73: $58

jr_0ce_7c74:
    inc c                                         ; $7c74: $0c
    inc l                                         ; $7c75: $2c
    ldh [$7a], a                                  ; $7c76: $e0 $7a
    and a                                         ; $7c78: $a7
    ld [hl], l                                    ; $7c79: $75

jr_0ce_7c7a:
    add e                                         ; $7c7a: $83
    ld e, b                                       ; $7c7b: $58
    ld bc, $e02c                                  ; $7c7c: $01 $2c $e0
    ld a, d                                       ; $7c7f: $7a
    ld a, [de]                                    ; $7c80: $1a
    ld b, b                                       ; $7c81: $40
    inc de                                        ; $7c82: $13
    jr nc, @+$0b                                  ; $7c83: $30 $09

    jr jr_0ce_7ce7                                ; $7c85: $18 $60

    dec [hl]                                      ; $7c87: $35

jr_0ce_7c88:
    ld e, e                                       ; $7c88: $5b
    cpl                                           ; $7c89: $2f
    ld e, l                                       ; $7c8a: $5d
    ld [bc], a                                    ; $7c8b: $02
    dec [hl]                                      ; $7c8c: $35
    ld bc, $5220                                  ; $7c8d: $01 $20 $52
    ld e, e                                       ; $7c90: $5b
    cpl                                           ; $7c91: $2f
    ld e, l                                       ; $7c92: $5d
    ld [bc], a                                    ; $7c93: $02
    dec [hl]                                      ; $7c94: $35
    ld bc, $20e0                                  ; $7c95: $01 $e0 $20
    ldh [$30], a                                  ; $7c98: $e0 $30
    and b                                         ; $7c9a: $a0
    ld [hl], l                                    ; $7c9b: $75
    ld c, e                                       ; $7c9c: $4b
    jr z, jr_0ce_7c74                             ; $7c9d: $28 $d5

    ld d, h                                       ; $7c9f: $54
    ldh [$30], a                                  ; $7ca0: $e0 $30
    and b                                         ; $7ca2: $a0
    ld [hl], l                                    ; $7ca3: $75
    ld h, $7b                                     ; $7ca4: $26 $7b
    push de                                       ; $7ca6: $d5
    ld d, h                                       ; $7ca7: $54
    ldh [$30], a                                  ; $7ca8: $e0 $30
    and b                                         ; $7caa: $a0
    ld [hl], l                                    ; $7cab: $75
    ld h, $7b                                     ; $7cac: $26 $7b
    db $db                                        ; $7cae: $db
    ld [hl], c                                    ; $7caf: $71
    ld c, e                                       ; $7cb0: $4b

jr_0ce_7cb1:
    jr z, jr_0ce_7c88                             ; $7cb1: $28 $d5

    ld d, h                                       ; $7cb3: $54
    db $db                                        ; $7cb4: $db
    ld [hl], c                                    ; $7cb5: $71
    inc b                                         ; $7cb6: $04
    db $10                                        ; $7cb7: $10
    ldh [$30], a                                  ; $7cb8: $e0 $30
    and b                                         ; $7cba: $a0
    ld [hl], l                                    ; $7cbb: $75
    push de                                       ; $7cbc: $d5
    ld d, h                                       ; $7cbd: $54
    db $db                                        ; $7cbe: $db
    ld [hl], c                                    ; $7cbf: $71
    ldh [$30], a                                  ; $7cc0: $e0 $30

jr_0ce_7cc2:
    and b                                         ; $7cc2: $a0
    ld [hl], l                                    ; $7cc3: $75
    ld h, $7b                                     ; $7cc4: $26 $7b
    push de                                       ; $7cc6: $d5
    ld d, h                                       ; $7cc7: $54
    ldh [$30], a                                  ; $7cc8: $e0 $30
    and b                                         ; $7cca: $a0
    ld [hl], l                                    ; $7ccb: $75
    ld h, $7b                                     ; $7ccc: $26 $7b
    ld c, e                                       ; $7cce: $4b
    jr z, jr_0ce_7cb1                             ; $7ccf: $28 $e0

    jr nc, jr_0ce_7c73                            ; $7cd1: $30 $a0

    ld [hl], l                                    ; $7cd3: $75
    ld c, e                                       ; $7cd4: $4b
    jr z, jr_0ce_7cdb                             ; $7cd5: $28 $04

    db $10                                        ; $7cd7: $10
    cp d                                          ; $7cd8: $ba
    ld [hl], l                                    ; $7cd9: $75
    sub e                                         ; $7cda: $93

jr_0ce_7cdb:
    ld e, b                                       ; $7cdb: $58
    inc c                                         ; $7cdc: $0c
    inc l                                         ; $7cdd: $2c
    ld hl, $ba01                                  ; $7cde: $21 $01 $ba
    ld [hl], l                                    ; $7ce1: $75
    sub e                                         ; $7ce2: $93
    ld e, b                                       ; $7ce3: $58
    inc c                                         ; $7ce4: $0c
    inc l                                         ; $7ce5: $2c
    and e                                         ; $7ce6: $a3

jr_0ce_7ce7:
    ld bc, $75ba                                  ; $7ce7: $01 $ba $75
    sub e                                         ; $7cea: $93
    ld e, b                                       ; $7ceb: $58
    inc c                                         ; $7cec: $0c
    inc l                                         ; $7ced: $2c
    add a                                         ; $7cee: $87
    ld [bc], a                                    ; $7cef: $02
    cp d                                          ; $7cf0: $ba
    ld [hl], l                                    ; $7cf1: $75
    sub e                                         ; $7cf2: $93
    ld e, b                                       ; $7cf3: $58
    inc c                                         ; $7cf4: $0c
    inc l                                         ; $7cf5: $2c
    rst $08                                       ; $7cf6: $cf
    inc bc                                        ; $7cf7: $03
    and a                                         ; $7cf8: $a7
    ld [hl], l                                    ; $7cf9: $75
    add e                                         ; $7cfa: $83
    ld e, b                                       ; $7cfb: $58
    ld bc, $cf2c                                  ; $7cfc: $01 $2c $cf
    inc bc                                        ; $7cff: $03
    ld b, b                                       ; $7d00: $40
    ld e, a                                       ; $7d01: $5f
    nop                                           ; $7d02: $00
    ld c, [hl]                                    ; $7d03: $4e
    nop                                           ; $7d04: $00
    dec l                                         ; $7d05: $2d
    and e                                         ; $7d06: $a3
    ld bc, $2f5b                                  ; $7d07: $01 $5b $2f
    ld e, l                                       ; $7d0a: $5d
    ld [bc], a                                    ; $7d0b: $02
    dec [hl]                                      ; $7d0c: $35
    ld bc, $0287                                  ; $7d0d: $01 $87 $02
    ld e, e                                       ; $7d10: $5b
    cpl                                           ; $7d11: $2f
    ld e, l                                       ; $7d12: $5d
    ld [bc], a                                    ; $7d13: $02
    dec [hl]                                      ; $7d14: $35
    ld bc, $0121                                  ; $7d15: $01 $21 $01
    db $fd                                        ; $7d18: $fd
    ld a, a                                       ; $7d19: $7f
    ld h, [hl]                                    ; $7d1a: $66
    ld [hl], d                                    ; $7d1b: $72
    and c                                         ; $7d1c: $a1
    ld d, l                                       ; $7d1d: $55
    nop                                           ; $7d1e: $00
    dec a                                         ; $7d1f: $3d
    db $fd                                        ; $7d20: $fd
    ld a, a                                       ; $7d21: $7f
    db $fd                                        ; $7d22: $fd
    ld a, a                                       ; $7d23: $7f
    db $fd                                        ; $7d24: $fd
    ld a, a                                       ; $7d25: $7f
    db $fd                                        ; $7d26: $fd
    ld a, a                                       ; $7d27: $7f
    db $fd                                        ; $7d28: $fd
    ld a, a                                       ; $7d29: $7f
    db $fd                                        ; $7d2a: $fd
    ld a, a                                       ; $7d2b: $7f
    db $fd                                        ; $7d2c: $fd
    ld a, a                                       ; $7d2d: $7f
    db $fd                                        ; $7d2e: $fd
    ld a, a                                       ; $7d2f: $7f
    db $fd                                        ; $7d30: $fd
    ld a, a                                       ; $7d31: $7f
    db $fd                                        ; $7d32: $fd
    ld a, a                                       ; $7d33: $7f
    db $fd                                        ; $7d34: $fd
    ld a, a                                       ; $7d35: $7f
    db $fd                                        ; $7d36: $fd
    ld a, a                                       ; $7d37: $7f
    db $fd                                        ; $7d38: $fd
    ld a, a                                       ; $7d39: $7f
    db $fd                                        ; $7d3a: $fd
    ld a, a                                       ; $7d3b: $7f
    db $fd                                        ; $7d3c: $fd
    ld a, a                                       ; $7d3d: $7f
    db $fd                                        ; $7d3e: $fd
    ld a, a                                       ; $7d3f: $7f
    db $fd                                        ; $7d40: $fd
    ld a, a                                       ; $7d41: $7f
    db $fd                                        ; $7d42: $fd
    ld a, a                                       ; $7d43: $7f
    db $fd                                        ; $7d44: $fd
    ld a, a                                       ; $7d45: $7f
    db $fd                                        ; $7d46: $fd
    ld a, a                                       ; $7d47: $7f
    db $fd                                        ; $7d48: $fd
    ld a, a                                       ; $7d49: $7f
    db $fd                                        ; $7d4a: $fd
    ld a, a                                       ; $7d4b: $7f
    db $fd                                        ; $7d4c: $fd
    ld a, a                                       ; $7d4d: $7f
    db $fd                                        ; $7d4e: $fd
    ld a, a                                       ; $7d4f: $7f
    db $fd                                        ; $7d50: $fd
    ld a, a                                       ; $7d51: $7f
    db $fd                                        ; $7d52: $fd
    ld a, a                                       ; $7d53: $7f
    db $fd                                        ; $7d54: $fd
    ld a, a                                       ; $7d55: $7f
    db $fd                                        ; $7d56: $fd
    ld a, a                                       ; $7d57: $7f
    ld a, a                                       ; $7d58: $7f
    ld [bc], a                                    ; $7d59: $02
    ld a, d                                       ; $7d5a: $7a
    nop                                           ; $7d5b: $00
    dec c                                         ; $7d5c: $0d
    nop                                           ; $7d5d: $00
    inc b                                         ; $7d5e: $04
    nop                                           ; $7d5f: $00
    cp l                                          ; $7d60: $bd
    ld [hl], a                                    ; $7d61: $77
    cp l                                          ; $7d62: $bd
    ld [hl], a                                    ; $7d63: $77
    cp l                                          ; $7d64: $bd
    ld [hl], a                                    ; $7d65: $77
    cp l                                          ; $7d66: $bd
    ld [hl], a                                    ; $7d67: $77
    cp l                                          ; $7d68: $bd
    ld [hl], a                                    ; $7d69: $77
    cp l                                          ; $7d6a: $bd
    ld [hl], a                                    ; $7d6b: $77
    cp l                                          ; $7d6c: $bd
    ld [hl], a                                    ; $7d6d: $77
    cp l                                          ; $7d6e: $bd
    ld [hl], a                                    ; $7d6f: $77
    cp l                                          ; $7d70: $bd
    ld [hl], a                                    ; $7d71: $77
    cp l                                          ; $7d72: $bd
    ld [hl], a                                    ; $7d73: $77
    cp l                                          ; $7d74: $bd
    ld [hl], a                                    ; $7d75: $77
    cp l                                          ; $7d76: $bd
    ld [hl], a                                    ; $7d77: $77
    cp l                                          ; $7d78: $bd
    ld [hl], a                                    ; $7d79: $77
    cp l                                          ; $7d7a: $bd
    ld [hl], a                                    ; $7d7b: $77
    cp l                                          ; $7d7c: $bd
    ld [hl], a                                    ; $7d7d: $77
    cp l                                          ; $7d7e: $bd
    ld [hl], a                                    ; $7d7f: $77
    cp l                                          ; $7d80: $bd
    ld [hl], a                                    ; $7d81: $77
    cp l                                          ; $7d82: $bd
    ld [hl], a                                    ; $7d83: $77
    cp l                                          ; $7d84: $bd
    ld [hl], a                                    ; $7d85: $77
    cp l                                          ; $7d86: $bd
    ld [hl], a                                    ; $7d87: $77
    cp l                                          ; $7d88: $bd
    ld [hl], a                                    ; $7d89: $77
    cp l                                          ; $7d8a: $bd
    ld [hl], a                                    ; $7d8b: $77
    cp l                                          ; $7d8c: $bd
    ld [hl], a                                    ; $7d8d: $77
    cp l                                          ; $7d8e: $bd
    ld [hl], a                                    ; $7d8f: $77
    cp l                                          ; $7d90: $bd
    ld [hl], a                                    ; $7d91: $77
    cp l                                          ; $7d92: $bd
    ld [hl], a                                    ; $7d93: $77
    cp l                                          ; $7d94: $bd
    ld [hl], a                                    ; $7d95: $77
    cp l                                          ; $7d96: $bd
    ld [hl], a                                    ; $7d97: $77

    db $7d, $77, $38, $62, $ae, $38, $00, $00, $f6, $5b, $89, $3b, $20, $0a, $00, $00
    db $88, $6e, $80, $59, $c0, $34, $00, $04, $d8, $51, $d4, $40, $0e, $24, $00, $04
    db $fb, $7f, $88, $76, $63, $51, $00, $04, $7e, $77, $b8, $51, $8f, $34, $00, $04
    db $bc, $6f, $fe, $4f, $54, $22, $00, $00, $dc, $6f, $d6, $4b, $eb, $36, $00, $00

    cp a                                          ; $7dd8: $bf
    ld [bc], a                                    ; $7dd9: $02
    dec de                                        ; $7dda: $1b
    nop                                           ; $7ddb: $00
    ld de, $0a00                                  ; $7ddc: $11 $00 $0a
    nop                                           ; $7ddf: $00
    ld a, h                                       ; $7de0: $7c
    ld [bc], a                                    ; $7de1: $02
    ld [$0500], sp                                ; $7de2: $08 $00 $05
    nop                                           ; $7de5: $00
    ld b, $00                                     ; $7de6: $06 $00
    rst $38                                       ; $7de8: $ff
    inc bc                                        ; $7de9: $03
    ccf                                           ; $7dea: $3f
    ld bc, $0094                                  ; $7deb: $01 $94 $00
    dec bc                                        ; $7dee: $0b
    nop                                           ; $7def: $00
    cp l                                          ; $7df0: $bd
    ld a, a                                       ; $7df1: $7f
    cp l                                          ; $7df2: $bd
    ld a, a                                       ; $7df3: $7f
    cp l                                          ; $7df4: $bd
    ld a, a                                       ; $7df5: $7f
    cp l                                          ; $7df6: $bd
    ld a, a                                       ; $7df7: $7f
    cp l                                          ; $7df8: $bd
    ld a, a                                       ; $7df9: $7f
    cp l                                          ; $7dfa: $bd
    ld a, a                                       ; $7dfb: $7f
    cp l                                          ; $7dfc: $bd
    ld a, a                                       ; $7dfd: $7f
    cp l                                          ; $7dfe: $bd
    ld a, a                                       ; $7dff: $7f
    cp l                                          ; $7e00: $bd
    ld a, a                                       ; $7e01: $7f
    cp l                                          ; $7e02: $bd
    ld a, a                                       ; $7e03: $7f
    cp l                                          ; $7e04: $bd
    ld a, a                                       ; $7e05: $7f
    cp l                                          ; $7e06: $bd
    ld a, a                                       ; $7e07: $7f
    cp a                                          ; $7e08: $bf
    ld [bc], a                                    ; $7e09: $02
    dec de                                        ; $7e0a: $1b
    nop                                           ; $7e0b: $00
    ld de, $0800                                  ; $7e0c: $11 $00 $08
    nop                                           ; $7e0f: $00
    cp a                                          ; $7e10: $bf
    ld [bc], a                                    ; $7e11: $02
    dec de                                        ; $7e12: $1b
    nop                                           ; $7e13: $00
    ld de, $0600                                  ; $7e14: $11 $00 $06
    nop                                           ; $7e17: $00
    ld b, l                                       ; $7e18: $45
    ld de, $1665                                  ; $7e19: $11 $65 $16
    ld c, l                                       ; $7e1c: $4d
    rra                                           ; $7e1d: $1f
    add l                                         ; $7e1e: $85
    dec e                                         ; $7e1f: $1d
    ld b, l                                       ; $7e20: $45
    ld de, $1665                                  ; $7e21: $11 $65 $16
    ld c, l                                       ; $7e24: $4d
    rra                                           ; $7e25: $1f
    ld [hl], h                                    ; $7e26: $74
    dec hl                                        ; $7e27: $2b
    add hl, bc                                    ; $7e28: $09
    ld [bc], a                                    ; $7e29: $02
    db $ec                                        ; $7e2a: $ec
    ld [bc], a                                    ; $7e2b: $02
    pop af                                        ; $7e2c: $f1
    inc bc                                        ; $7e2d: $03
    ld sp, hl                                     ; $7e2e: $f9
    inc bc                                        ; $7e2f: $03
    add hl, bc                                    ; $7e30: $09
    ld [bc], a                                    ; $7e31: $02
    jp nc, $f602                                  ; $7e32: $d2 $02 $f6

    inc bc                                        ; $7e35: $03
    add l                                         ; $7e36: $85
    ld bc, $25a7                                  ; $7e37: $01 $a7 $25
    and a                                         ; $7e3a: $a7
    ld a, [hl-]                                   ; $7e3b: $3a
    adc [hl]                                      ; $7e3c: $8e
    ld d, a                                       ; $7e3d: $57
    add l                                         ; $7e3e: $85
    dec e                                         ; $7e3f: $1d
    and a                                         ; $7e40: $a7
    ld de, $0ac7                                  ; $7e41: $11 $c7 $0a
    adc [hl]                                      ; $7e44: $8e
    daa                                           ; $7e45: $27
    ld [hl], h                                    ; $7e46: $74
    dec hl                                        ; $7e47: $2b
    add a                                         ; $7e48: $87
    ld d, l                                       ; $7e49: $55
    rlca                                          ; $7e4a: $07
    ld b, [hl]                                    ; $7e4b: $46
    xor $6a                                       ; $7e4c: $ee $6a
    ld l, b                                       ; $7e4e: $68
    inc [hl]                                      ; $7e4f: $34
    cp l                                          ; $7e50: $bd
    ld [hl], a                                    ; $7e51: $77
    cp l                                          ; $7e52: $bd
    ld [hl], a                                    ; $7e53: $77
    cp l                                          ; $7e54: $bd
    ld [hl], a                                    ; $7e55: $77
    cp l                                          ; $7e56: $bd
    ld [hl], a                                    ; $7e57: $77
    ld l, $00                                     ; $7e58: $2e $00
    cp c                                          ; $7e5a: $b9
    nop                                           ; $7e5b: $00
    rst $18                                       ; $7e5c: $df
    ld bc, $1c07                                  ; $7e5d: $01 $07 $1c
    add hl, bc                                    ; $7e60: $09
    inc bc                                        ; $7e61: $03
    cp c                                          ; $7e62: $b9
    nop                                           ; $7e63: $00
    rst $18                                       ; $7e64: $df
    ld bc, $037f                                  ; $7e65: $01 $7f $03
    cp l                                          ; $7e68: $bd
    ld [hl], a                                    ; $7e69: $77
    dec bc                                        ; $7e6a: $0b
    inc [hl]                                      ; $7e6b: $34
    add hl, bc                                    ; $7e6c: $09
    jr z, @+$09                                   ; $7e6d: $28 $07

    inc e                                         ; $7e6f: $1c
    ld l, $00                                     ; $7e70: $2e $00
    cp c                                          ; $7e72: $b9
    nop                                           ; $7e73: $00
    rst $18                                       ; $7e74: $df
    ld bc, $1005                                  ; $7e75: $01 $05 $10
    cp l                                          ; $7e78: $bd
    ld [hl], a                                    ; $7e79: $77
    cp l                                          ; $7e7a: $bd
    ld [hl], a                                    ; $7e7b: $77
    cp l                                          ; $7e7c: $bd
    ld [hl], a                                    ; $7e7d: $77
    cp l                                          ; $7e7e: $bd
    ld [hl], a                                    ; $7e7f: $77
    cp l                                          ; $7e80: $bd
    ld [hl], a                                    ; $7e81: $77
    cp l                                          ; $7e82: $bd
    ld [hl], a                                    ; $7e83: $77
    cp l                                          ; $7e84: $bd
    ld [hl], a                                    ; $7e85: $77
    cp l                                          ; $7e86: $bd
    ld [hl], a                                    ; $7e87: $77
    cp l                                          ; $7e88: $bd
    ld [hl], a                                    ; $7e89: $77
    cp l                                          ; $7e8a: $bd
    ld [hl], a                                    ; $7e8b: $77
    cp l                                          ; $7e8c: $bd
    ld [hl], a                                    ; $7e8d: $77
    cp l                                          ; $7e8e: $bd
    ld [hl], a                                    ; $7e8f: $77
    cp l                                          ; $7e90: $bd
    ld [hl], a                                    ; $7e91: $77
    cp l                                          ; $7e92: $bd
    ld [hl], a                                    ; $7e93: $77
    cp l                                          ; $7e94: $bd
    ld [hl], a                                    ; $7e95: $77
    cp l                                          ; $7e96: $bd
    ld [hl], a                                    ; $7e97: $77
    add h                                         ; $7e98: $84
    inc h                                         ; $7e99: $24
    sbc c                                         ; $7e9a: $99
    ld a, a                                       ; $7e9b: $7f
    pop de                                        ; $7e9c: $d1
    ld h, d                                       ; $7e9d: $62
    add hl, bc                                    ; $7e9e: $09
    ld c, d                                       ; $7e9f: $4a
    add h                                         ; $7ea0: $84
    inc h                                         ; $7ea1: $24
    or b                                          ; $7ea2: $b0
    ld l, d                                       ; $7ea3: $6a
    ld a, [bc]                                    ; $7ea4: $0a
    ld d, d                                       ; $7ea5: $52
    ld h, l                                       ; $7ea6: $65
    dec a                                         ; $7ea7: $3d
    add h                                         ; $7ea8: $84
    inc h                                         ; $7ea9: $24
    cp $7f                                        ; $7eaa: $fe $7f
    ld d, h                                       ; $7eac: $54
    ld [hl], e                                    ; $7ead: $73
    call Call_0ce_7f6a                            ; $7eae: $cd $6a $7f
    ld l, a                                       ; $7eb1: $6f
    rst $38                                       ; $7eb2: $ff
    ld e, [hl]                                    ; $7eb3: $5e
    ld a, a                                       ; $7eb4: $7f
    ld c, [hl]                                    ; $7eb5: $4e
    rst $38                                       ; $7eb6: $ff
    dec a                                         ; $7eb7: $3d
    rst $38                                       ; $7eb8: $ff
    ld l, a                                       ; $7eb9: $6f
    sbc $67                                       ; $7eba: $de $67
    sbc h                                         ; $7ebc: $9c
    ld e, a                                       ; $7ebd: $5f
    ld e, d                                       ; $7ebe: $5a
    ld d, a                                       ; $7ebf: $57
    ld a, [$b82f]                                 ; $7ec0: $fa $2f $b8
    daa                                           ; $7ec3: $27
    sub [hl]                                      ; $7ec4: $96
    inc hl                                        ; $7ec5: $23
    ld d, h                                       ; $7ec6: $54
    dec de                                        ; $7ec7: $1b
    ldh [$03], a                                  ; $7ec8: $e0 $03
    ret nz                                        ; $7eca: $c0

    inc bc                                        ; $7ecb: $03
    add b                                         ; $7ecc: $80
    inc bc                                        ; $7ecd: $03
    ld h, b                                       ; $7ece: $60
    inc bc                                        ; $7ecf: $03
    db $fd                                        ; $7ed0: $fd
    ld a, a                                       ; $7ed1: $7f
    db $db                                        ; $7ed2: $db
    ld a, e                                       ; $7ed3: $7b
    sbc c                                         ; $7ed4: $99
    ld [hl], e                                    ; $7ed5: $73
    ld [hl], a                                    ; $7ed6: $77
    ld l, a                                       ; $7ed7: $6f
    db $fd                                        ; $7ed8: $fd
    ld a, a                                       ; $7ed9: $7f
    db $fd                                        ; $7eda: $fd
    ld a, a                                       ; $7edb: $7f
    db $fd                                        ; $7edc: $fd
    ld a, a                                       ; $7edd: $7f
    db $fd                                        ; $7ede: $fd
    ld a, a                                       ; $7edf: $7f
    add hl, bc                                    ; $7ee0: $09
    ld b, b                                       ; $7ee1: $40
    rra                                           ; $7ee2: $1f
    rlca                                          ; $7ee3: $07
    db $fc                                        ; $7ee4: $fc
    ld bc, $0153                                  ; $7ee5: $01 $53 $01
    nop                                           ; $7ee8: $00
    stop                                          ; $7ee9: $10 $00
    inc l                                         ; $7eeb: $2c
    db $fd                                        ; $7eec: $fd
    ld a, a                                       ; $7eed: $7f
    db $fd                                        ; $7eee: $fd
    ld a, a                                       ; $7eef: $7f
    nop                                           ; $7ef0: $00
    db $10                                        ; $7ef1: $10
    ld c, $60                                     ; $7ef2: $0e $60
    ld [$533c], sp                                ; $7ef4: $08 $3c $53
    ld bc, $1400                                  ; $7ef7: $01 $00 $14
    inc bc                                        ; $7efa: $03
    ld d, b                                       ; $7efb: $50
    dec b                                         ; $7efc: $05
    ld h, b                                       ; $7efd: $60
    jp $fd7d                                      ; $7efe: $c3 $7d $fd


    ld a, a                                       ; $7f01: $7f
    db $fd                                        ; $7f02: $fd
    ld a, a                                       ; $7f03: $7f
    db $fd                                        ; $7f04: $fd
    ld a, a                                       ; $7f05: $7f
    db $fd                                        ; $7f06: $fd
    ld a, a                                       ; $7f07: $7f
    db $fd                                        ; $7f08: $fd
    ld a, a                                       ; $7f09: $7f
    db $fd                                        ; $7f0a: $fd
    ld a, a                                       ; $7f0b: $7f
    db $fd                                        ; $7f0c: $fd
    ld a, a                                       ; $7f0d: $7f
    db $fd                                        ; $7f0e: $fd
    ld a, a                                       ; $7f0f: $7f
    db $fd                                        ; $7f10: $fd
    ld a, a                                       ; $7f11: $7f
    db $fd                                        ; $7f12: $fd
    ld a, a                                       ; $7f13: $7f
    db $fd                                        ; $7f14: $fd
    ld a, a                                       ; $7f15: $7f
    db $fd                                        ; $7f16: $fd
    ld a, a                                       ; $7f17: $7f
    ld a, d                                       ; $7f18: $7a
    inc c                                         ; $7f19: $0c
    ld a, [hl]                                    ; $7f1a: $7e
    ld bc, $037e                                  ; $7f1b: $01 $7e $03
    ld a, [hl]                                    ; $7f1e: $7e
    ld [bc], a                                    ; $7f1f: $02
    ld a, d                                       ; $7f20: $7a
    inc c                                         ; $7f21: $0c
    ld a, [hl]                                    ; $7f22: $7e
    ld bc, $0011                                  ; $7f23: $01 $11 $00
    ld a, [hl]                                    ; $7f26: $7e
    ld [bc], a                                    ; $7f27: $02
    rst $38                                       ; $7f28: $ff
    rra                                           ; $7f29: $1f
    ld a, [hl]                                    ; $7f2a: $7e
    ld bc, $035e                                  ; $7f2b: $01 $5e $03
    ld a, [hl]                                    ; $7f2e: $7e
    ld [bc], a                                    ; $7f2f: $02
    or $63                                        ; $7f30: $f6 $63
    ld a, [hl]                                    ; $7f32: $7e
    ld bc, $07b9                                  ; $7f33: $01 $b9 $07

jr_0ce_7f36:
    ld a, [hl]                                    ; $7f36: $7e
    ld [bc], a                                    ; $7f37: $02
    rla                                           ; $7f38: $17
    jr z, jr_0ce_7f36                             ; $7f39: $28 $fb

    ld b, b                                       ; $7f3b: $40
    dec c                                         ; $7f3c: $0d
    jr z, @+$01                                   ; $7f3d: $28 $ff

    ld l, a                                       ; $7f3f: $6f
    ld a, d                                       ; $7f40: $7a
    dec c                                         ; $7f41: $0d
    ld e, $02                                     ; $7f42: $1e $02
    pop af                                        ; $7f44: $f1
    nop                                           ; $7f45: $00
    sbc $02                                       ; $7f46: $de $02
    rst $38                                       ; $7f48: $ff
    ld l, a                                       ; $7f49: $6f
    rst $38                                       ; $7f4a: $ff
    ld l, a                                       ; $7f4b: $6f
    rst $38                                       ; $7f4c: $ff
    ld l, a                                       ; $7f4d: $6f
    rst $38                                       ; $7f4e: $ff
    ld l, a                                       ; $7f4f: $6f
    db $fd                                        ; $7f50: $fd
    ld a, a                                       ; $7f51: $7f
    db $db                                        ; $7f52: $db
    ld a, e                                       ; $7f53: $7b
    sbc c                                         ; $7f54: $99
    ld [hl], e                                    ; $7f55: $73
    ld [hl], a                                    ; $7f56: $77
    ld l, a                                       ; $7f57: $6f
    nop                                           ; $7f58: $00
    ld b, b                                       ; $7f59: $40
    nop                                           ; $7f5a: $00
    ld e, c                                       ; $7f5b: $59
    nop                                           ; $7f5c: $00
    db $10                                        ; $7f5d: $10
    dec b                                         ; $7f5e: $05
    inc [hl]                                      ; $7f5f: $34
    rst $30                                       ; $7f60: $f7
    ld e, [hl]                                    ; $7f61: $5e
    rst $30                                       ; $7f62: $f7
    ld e, [hl]                                    ; $7f63: $5e
    rst $30                                       ; $7f64: $f7
    ld e, [hl]                                    ; $7f65: $5e
    rst $30                                       ; $7f66: $f7
    ld e, [hl]                                    ; $7f67: $5e
    rst $30                                       ; $7f68: $f7
    ld e, [hl]                                    ; $7f69: $5e

Call_0ce_7f6a:
    rst $30                                       ; $7f6a: $f7
    ld e, [hl]                                    ; $7f6b: $5e
    rst $30                                       ; $7f6c: $f7
    ld e, [hl]                                    ; $7f6d: $5e
    rst $30                                       ; $7f6e: $f7
    ld e, [hl]                                    ; $7f6f: $5e
    cp $1f                                        ; $7f70: $fe $1f
    nop                                           ; $7f72: $00
    ld e, c                                       ; $7f73: $59
    ld b, b                                       ; $7f74: $40
    dec sp                                        ; $7f75: $3b
    ld h, b                                       ; $7f76: $60
    ld a, [hl]                                    ; $7f77: $7e
    rst $30                                       ; $7f78: $f7
    ld e, [hl]                                    ; $7f79: $5e
    rst $30                                       ; $7f7a: $f7
    ld e, [hl]                                    ; $7f7b: $5e
    rst $30                                       ; $7f7c: $f7
    ld e, [hl]                                    ; $7f7d: $5e
    rst $30                                       ; $7f7e: $f7
    ld e, [hl]                                    ; $7f7f: $5e
    rst $30                                       ; $7f80: $f7
    ld e, [hl]                                    ; $7f81: $5e
    rst $30                                       ; $7f82: $f7
    ld e, [hl]                                    ; $7f83: $5e
    rst $30                                       ; $7f84: $f7
    ld e, [hl]                                    ; $7f85: $5e
    rst $30                                       ; $7f86: $f7
    ld e, [hl]                                    ; $7f87: $5e
    cp $1f                                        ; $7f88: $fe $1f
    nop                                           ; $7f8a: $00
    ld e, c                                       ; $7f8b: $59
    push hl                                       ; $7f8c: $e5
    ld e, [hl]                                    ; $7f8d: $5e
    ld h, b                                       ; $7f8e: $60
    ld a, [hl]                                    ; $7f8f: $7e
    rst $38                                       ; $7f90: $ff
    ld a, a                                       ; $7f91: $7f
    nop                                           ; $7f92: $00
    ld e, c                                       ; $7f93: $59
    ldh [$03], a                                  ; $7f94: $e0 $03
    ld h, b                                       ; $7f96: $60
    ld a, [hl]                                    ; $7f97: $7e
    nop                                           ; $7f98: $00
    nop                                           ; $7f99: $00
    add b                                         ; $7f9a: $80
    ld a, c                                       ; $7f9b: $79
    ld a, [bc]                                    ; $7f9c: $0a
    ld c, a                                       ; $7f9d: $4f
    cp a                                          ; $7f9e: $bf
    ld bc, $0000                                  ; $7f9f: $01 $00 $00
    jr nz, jr_0ce_7ff8                            ; $7fa2: $20 $54

    ld a, [bc]                                    ; $7fa4: $0a
    ld c, a                                       ; $7fa5: $4f
    ld de, $007c                                  ; $7fa6: $11 $7c $00
    nop                                           ; $7fa9: $00
    ld h, b                                       ; $7faa: $60
    inc [hl]                                      ; $7fab: $34
    ld a, [bc]                                    ; $7fac: $0a
    ld c, a                                       ; $7fad: $4f
    rra                                           ; $7fae: $1f
    ld d, h                                       ; $7faf: $54
    nop                                           ; $7fb0: $00
    nop                                           ; $7fb1: $00
    add b                                         ; $7fb2: $80
    ld a, c                                       ; $7fb3: $79
    ld h, c                                       ; $7fb4: $61
    ld a, $e0                                     ; $7fb5: $3e $e0
    inc bc                                        ; $7fb7: $03
    nop                                           ; $7fb8: $00
    nop                                           ; $7fb9: $00
    jr nz, @+$56                                  ; $7fba: $20 $54

    ld h, c                                       ; $7fbc: $61
    ld a, $0a                                     ; $7fbd: $3e $0a
    ld c, a                                       ; $7fbf: $4f
    nop                                           ; $7fc0: $00
    nop                                           ; $7fc1: $00
    ld h, b                                       ; $7fc2: $60
    inc [hl]                                      ; $7fc3: $34
    ld h, c                                       ; $7fc4: $61
    ld a, $0a                                     ; $7fc5: $3e $0a
    ld c, a                                       ; $7fc7: $4f
    nop                                           ; $7fc8: $00
    nop                                           ; $7fc9: $00
    jr nz, @+$56                                  ; $7fca: $20 $54

    ld a, [bc]                                    ; $7fcc: $0a
    ld c, a                                       ; $7fcd: $4f
    rst $38                                       ; $7fce: $ff
    inc bc                                        ; $7fcf: $03

jr_0ce_7fd0:
    nop                                           ; $7fd0: $00
    nop                                           ; $7fd1: $00
    add b                                         ; $7fd2: $80
    ld a, c                                       ; $7fd3: $79
    ld h, c                                       ; $7fd4: $61
    ld a, $0a                                     ; $7fd5: $3e $0a
    ld c, a                                       ; $7fd7: $4f
    rst $38                                       ; $7fd8: $ff
    ld a, a                                       ; $7fd9: $7f
    rst $38                                       ; $7fda: $ff
    inc bc                                        ; $7fdb: $03
    sub l                                         ; $7fdc: $95
    ld bc, $0c63                                  ; $7fdd: $01 $63 $0c
    rst $38                                       ; $7fe0: $ff
    ld a, a                                       ; $7fe1: $7f
    nop                                           ; $7fe2: $00
    inc bc                                        ; $7fe3: $03
    rst $28                                       ; $7fe4: $ef
    inc b                                         ; $7fe5: $04
    add e                                         ; $7fe6: $83
    db $10                                        ; $7fe7: $10
    rst $38                                       ; $7fe8: $ff
    ld a, a                                       ; $7fe9: $7f
    add e                                         ; $7fea: $83
    ld [hl], e                                    ; $7feb: $73
    pop bc                                        ; $7fec: $c1
    dec l                                         ; $7fed: $2d
    ld h, e                                       ; $7fee: $63
    inc c                                         ; $7fef: $0c
    rst $38                                       ; $7ff0: $ff
    ld a, a                                       ; $7ff1: $7f
    add e                                         ; $7ff2: $83
    ld [hl], e                                    ; $7ff3: $73
    pop bc                                        ; $7ff4: $c1
    dec l                                         ; $7ff5: $2d
    ld h, e                                       ; $7ff6: $63
    inc c                                         ; $7ff7: $0c

jr_0ce_7ff8:
    rst $38                                       ; $7ff8: $ff
    ld a, a                                       ; $7ff9: $7f
    rra                                           ; $7ffa: $1f
    ld a, [hl]                                    ; $7ffb: $7e
    jr nc, @+$42                                  ; $7ffc: $30 $40

    ld h, [hl]                                    ; $7ffe: $66
    db $18                                        ; $7fff: $18
