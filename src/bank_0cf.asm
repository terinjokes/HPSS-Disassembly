; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $0cf", ROMX[$4000], BANK[$cf]

    db $cf

    jr nz, jr_0cf_4003                            ; $4001: $20 $00

jr_0cf_4003:
    jr nz, jr_0cf_4005                            ; $4003: $20 $00

jr_0cf_4005:
    xor l                                         ; $4005: $ad
    inc bc                                        ; $4006: $03
    nop                                           ; $4007: $00
    ld b, b                                       ; $4008: $40
    ld b, c                                       ; $4009: $41
    ld b, b                                       ; $400a: $40
    ld b, c                                       ; $400b: $41
    ld b, d                                       ; $400c: $42
    ld b, e                                       ; $400d: $43
    ld b, h                                       ; $400e: $44
    ld b, l                                       ; $400f: $45
    nop                                           ; $4010: $00
    ld b, [hl]                                    ; $4011: $46
    ld b, a                                       ; $4012: $47
    ld c, b                                       ; $4013: $48
    ld c, c                                       ; $4014: $49
    ld c, d                                       ; $4015: $4a
    ld c, e                                       ; $4016: $4b
    ld c, h                                       ; $4017: $4c
    ld c, l                                       ; $4018: $4d
    nop                                           ; $4019: $00
    ld c, [hl]                                    ; $401a: $4e
    ld c, a                                       ; $401b: $4f
    ld d, b                                       ; $401c: $50
    ld d, c                                       ; $401d: $51
    ld d, d                                       ; $401e: $52
    ld d, e                                       ; $401f: $53
    ld d, c                                       ; $4020: $51
    ld d, h                                       ; $4021: $54
    ld bc, $4255                                  ; $4022: $01 $55 $42
    ld b, d                                       ; $4025: $42
    ld b, c                                       ; $4026: $41
    ld b, c                                       ; $4027: $41
    ld b, c                                       ; $4028: $41
    ld b, b                                       ; $4029: $40
    ld bc, $8200                                  ; $402a: $01 $00 $82
    rra                                           ; $402d: $1f
    nop                                           ; $402e: $00
    ld d, [hl]                                    ; $402f: $56
    ld d, a                                       ; $4030: $57
    ld d, h                                       ; $4031: $54
    ld e, b                                       ; $4032: $58
    ld e, c                                       ; $4033: $59
    add hl, de                                    ; $4034: $19
    nop                                           ; $4035: $00
    ld d, b                                       ; $4036: $50
    nop                                           ; $4037: $00
    ld e, d                                       ; $4038: $5a
    ld d, e                                       ; $4039: $53
    ld d, b                                       ; $403a: $50
    ld e, e                                       ; $403b: $5b
    ld e, h                                       ; $403c: $5c
    ld d, b                                       ; $403d: $50
    ld c, e                                       ; $403e: $4b
    ld e, l                                       ; $403f: $5d
    inc c                                         ; $4040: $0c
    ld e, e                                       ; $4041: $5b
    ld b, l                                       ; $4042: $45
    ld e, [hl]                                    ; $4043: $5e
    ld b, e                                       ; $4044: $43
    jr nz, jr_0cf_4047                            ; $4045: $20 $00

jr_0cf_4047:
    dec a                                         ; $4047: $3d
    nop                                           ; $4048: $00
    ld b, b                                       ; $4049: $40
    ld b, c                                       ; $404a: $41
    nop                                           ; $404b: $00
    ld b, c                                       ; $404c: $41
    ld b, d                                       ; $404d: $42
    ld e, a                                       ; $404e: $5f
    ld h, b                                       ; $404f: $60
    ld h, c                                       ; $4050: $61
    ld h, d                                       ; $4051: $62
    ld h, e                                       ; $4052: $63
    ld c, c                                       ; $4053: $49
    add b                                         ; $4054: $80
    add hl, de                                    ; $4055: $19
    nop                                           ; $4056: $00
    ld h, h                                       ; $4057: $64
    ld h, l                                       ; $4058: $65
    ld h, [hl]                                    ; $4059: $66
    ld d, c                                       ; $405a: $51
    ld h, l                                       ; $405b: $65
    ld e, b                                       ; $405c: $58
    ld h, a                                       ; $405d: $67
    inc bc                                        ; $405e: $03
    ld l, b                                       ; $405f: $68
    ld l, c                                       ; $4060: $69
    ld d, b                                       ; $4061: $50
    ld l, d                                       ; $4062: $6a
    ld l, e                                       ; $4063: $6b
    ld d, [hl]                                    ; $4064: $56
    ld b, c                                       ; $4065: $41
    ld [$1840], sp                                ; $4066: $08 $40 $18
    nop                                           ; $4069: $00
    ld l, h                                       ; $406a: $6c
    ld l, h                                       ; $406b: $6c
    ld d, l                                       ; $406c: $55
    ld d, h                                       ; $406d: $54
    ld l, l                                       ; $406e: $6d
    ld l, l                                       ; $406f: $6d
    ld h, l                                       ; $4070: $65
    ld d, c                                       ; $4071: $51
    nop                                           ; $4072: $00
    ld h, a                                       ; $4073: $67
    ld b, a                                       ; $4074: $47
    ld d, e                                       ; $4075: $53
    ld h, l                                       ; $4076: $65
    ld l, [hl]                                    ; $4077: $6e
    ld h, [hl]                                    ; $4078: $66
    ld e, b                                       ; $4079: $58
    ld l, l                                       ; $407a: $6d
    ld bc, $6f46                                  ; $407b: $01 $46 $6f
    ld [hl], b                                    ; $407e: $70

jr_0cf_407f:
    ld [hl], c                                    ; $407f: $71
    ld [hl], d                                    ; $4080: $72
    ld h, b                                       ; $4081: $60
    ld b, d                                       ; $4082: $42
    ld hl, $8018                                  ; $4083: $21 $18 $80
    ld b, b                                       ; $4086: $40
    nop                                           ; $4087: $00
    ld b, d                                       ; $4088: $42
    ld e, a                                       ; $4089: $5f
    ld [hl], e                                    ; $408a: $73
    ld [hl], h                                    ; $408b: $74
    ld e, b                                       ; $408c: $58
    ld d, b                                       ; $408d: $50
    ld h, [hl]                                    ; $408e: $66
    nop                                           ; $408f: $00
    ld l, [hl]                                    ; $4090: $6e
    ld l, l                                       ; $4091: $6d
    ld e, c                                       ; $4092: $59
    ld e, l                                       ; $4093: $5d
    ld e, e                                       ; $4094: $5b
    ld e, c                                       ; $4095: $59
    ld d, b                                       ; $4096: $50
    ld b, [hl]                                    ; $4097: $46
    nop                                           ; $4098: $00
    ld d, b                                       ; $4099: $50
    ld e, b                                       ; $409a: $58
    ld e, b                                       ; $409b: $58
    ld h, [hl]                                    ; $409c: $66
    ld e, e                                       ; $409d: $5b
    ld h, d                                       ; $409e: $62
    ld h, c                                       ; $409f: $61
    ld h, b                                       ; $40a0: $60
    jr nc, jr_0cf_410f                            ; $40a1: $30 $6c

    ld b, d                                       ; $40a3: $42
    add b                                         ; $40a4: $80
    jr jr_0cf_40c8                                ; $40a5: $18 $21

    nop                                           ; $40a7: $00
    ld b, e                                       ; $40a8: $43
    ld e, [hl]                                    ; $40a9: $5e
    ld b, l                                       ; $40aa: $45
    ld e, h                                       ; $40ab: $5c
    add b                                         ; $40ac: $80
    add hl, de                                    ; $40ad: $19
    nop                                           ; $40ae: $00
    ld d, b                                       ; $40af: $50
    ld c, h                                       ; $40b0: $4c
    ld c, l                                       ; $40b1: $4d
    ld e, [hl]                                    ; $40b2: $5e
    ld d, a                                       ; $40b3: $57
    ld [hl], l                                    ; $40b4: $75
    ld d, b                                       ; $40b5: $50
    nop                                           ; $40b6: $00
    ld h, [hl]                                    ; $40b7: $66
    ld d, c                                       ; $40b8: $51
    ld e, c                                       ; $40b9: $59
    halt                                          ; $40ba: $76
    ld d, h                                       ; $40bb: $54
    ld d, l                                       ; $40bc: $55
    ld d, [hl]                                    ; $40bd: $56
    ld h, b                                       ; $40be: $60
    ld h, c                                       ; $40bf: $61
    ld l, h                                       ; $40c0: $6c
    ld b, b                                       ; $40c1: $40
    db $10                                        ; $40c2: $10
    ld h, c                                       ; $40c3: $61
    ld [$5556], sp                                ; $40c4: $08 $56 $55
    ld d, h                                       ; $40c7: $54

jr_0cf_40c8:
    ld e, b                                       ; $40c8: $58
    rra                                           ; $40c9: $1f
    nop                                           ; $40ca: $00
    nop                                           ; $40cb: $00
    ld l, l                                       ; $40cc: $6d
    ld d, d                                       ; $40cd: $52
    ld d, h                                       ; $40ce: $54
    ld l, h                                       ; $40cf: $6c
    ld [hl], a                                    ; $40d0: $77
    ld h, d                                       ; $40d1: $62
    ld d, c                                       ; $40d2: $51
    ld h, l                                       ; $40d3: $65
    rla                                           ; $40d4: $17
    ld l, [hl]                                    ; $40d5: $6e
    ld e, e                                       ; $40d6: $5b
    ld l, c                                       ; $40d7: $69
    and c                                         ; $40d8: $a1
    nop                                           ; $40d9: $00
    ld d, [hl]                                    ; $40da: $56
    ld b, b                                       ; $40db: $40
    jr c, jr_0cf_407f                             ; $40dc: $38 $a1

    nop                                           ; $40de: $00
    ld d, l                                       ; $40df: $55
    nop                                           ; $40e0: $00
    nop                                           ; $40e1: $00
    ld d, c                                       ; $40e2: $51
    ld d, d                                       ; $40e3: $52

jr_0cf_40e4:
    ld [hl], h                                    ; $40e4: $74
    ld d, [hl]                                    ; $40e5: $56
    ld e, a                                       ; $40e6: $5f
    ld h, b                                       ; $40e7: $60
    ld d, l                                       ; $40e8: $55
    ld d, h                                       ; $40e9: $54
    ld bc, $6e66                                  ; $40ea: $01 $66 $6e
    ld l, c                                       ; $40ed: $69
    ld l, a                                       ; $40ee: $6f
    ld l, d                                       ; $40ef: $6a
    ld l, e                                       ; $40f0: $6b
    ld e, a                                       ; $40f1: $5f
    ld e, a                                       ; $40f2: $5f
    nop                                           ; $40f3: $00
    and b                                         ; $40f4: $a0
    ld b, b                                       ; $40f5: $40
    jr nz, @+$61                                  ; $40f6: $20 $5f

    and c                                         ; $40f8: $a1
    nop                                           ; $40f9: $00
    ld b, [hl]                                    ; $40fa: $46
    ld e, b                                       ; $40fb: $58
    ld h, l                                       ; $40fc: $65
    ld c, d                                       ; $40fd: $4a
    ld [hl], h                                    ; $40fe: $74
    ld bc, $5f6b                                  ; $40ff: $01 $6b $5f
    ld l, h                                       ; $4102: $6c
    ld h, b                                       ; $4103: $60
    ld h, c                                       ; $4104: $61
    ld [hl], h                                    ; $4105: $74
    ld d, b                                       ; $4106: $50
    and c                                         ; $4107: $a1
    db $10                                        ; $4108: $10
    ld c, b                                       ; $4109: $48
    ld e, a                                       ; $410a: $5f
    add b                                         ; $410b: $80
    jr z, jr_0cf_4150                             ; $410c: $28 $42

    ld b, d                                       ; $410e: $42

jr_0cf_410f:
    ret nz                                        ; $410f: $c0

    nop                                           ; $4110: $00
    ld c, c                                       ; $4111: $49
    ld d, b                                       ; $4112: $50
    ld e, h                                       ; $4113: $5c
    inc h                                         ; $4114: $24
    ld e, e                                       ; $4115: $5b
    ld [hl], b                                    ; $4116: $70
    or $08                                        ; $4117: $f6 $08
    ld l, h                                       ; $4119: $6c
    ld d, l                                       ; $411a: $55
    ld l, h                                       ; $411b: $6c
    db $10                                        ; $411c: $10
    ld [hl], l                                    ; $411d: $75
    ld d, h                                       ; $411e: $54
    ld [hl], b                                    ; $411f: $70
    ld d, l                                       ; $4120: $55
    and b                                         ; $4121: $a0
    nop                                           ; $4122: $00
    ld hl, $5f09                                  ; $4123: $21 $09 $5f
    jr jr_0cf_4173                                ; $4126: $18 $4b

    ld h, [hl]                                    ; $4128: $66
    ld d, b                                       ; $4129: $50
    ld c, a                                       ; $412a: $4f
    ld b, l                                       ; $412b: $45
    ld d, b                                       ; $412c: $50
    sub l                                         ; $412d: $95
    nop                                           ; $412e: $00
    ld b, d                                       ; $412f: $42
    ld l, h                                       ; $4130: $6c
    ld e, a                                       ; $4131: $5f
    ld l, h                                       ; $4132: $6c
    db $10                                        ; $4133: $10
    ld [hl], c                                    ; $4134: $71
    pop bc                                        ; $4135: $c1
    nop                                           ; $4136: $00
    ld b, h                                       ; $4137: $44
    ld e, a                                       ; $4138: $5f
    rra                                           ; $4139: $1f
    db $10                                        ; $413a: $10
    ld b, b                                       ; $413b: $40
    ld b, c                                       ; $413c: $41
    ld b, e                                       ; $413d: $43
    jr nz, jr_0cf_4141                            ; $413e: $20 $01

    ld b, [hl]                                    ; $4140: $46

jr_0cf_4141:
    ld h, [hl]                                    ; $4141: $66
    jr jr_0cf_418d                                ; $4142: $18 $49

    ld c, b                                       ; $4144: $48
    ld e, c                                       ; $4145: $59
    push de                                       ; $4146: $d5
    nop                                           ; $4147: $00
    xor h                                         ; $4148: $ac
    nop                                           ; $4149: $00
    ld d, a                                       ; $414a: $57
    ld [hl], l                                    ; $414b: $75
    ld b, [hl]                                    ; $414c: $46
    ld bc, $6658                                  ; $414d: $01 $58 $66

jr_0cf_4150:
    ld l, [hl]                                    ; $4150: $6e
    ld e, h                                       ; $4151: $5c
    ld h, d                                       ; $4152: $62
    ld [hl], a                                    ; $4153: $77
    ld d, [hl]                                    ; $4154: $56
    ld b, b                                       ; $4155: $40
    jr jr_0cf_40e4                                ; $4156: $18 $8c

    add b                                         ; $4158: $80
    add hl, bc                                    ; $4159: $09
    ld a, b                                       ; $415a: $78
    ld e, b                                       ; $415b: $58
    ld h, l                                       ; $415c: $65
    ld a, l                                       ; $415d: $7d
    ld bc, $1115                                  ; $415e: $01 $15 $11
    ld b, e                                       ; $4161: $43
    ld a, c                                       ; $4162: $79
    ld hl, $5052                                  ; $4163: $21 $52 $50
    db $ed                                        ; $4166: $ed
    nop                                           ; $4167: $00
    ld a, d                                       ; $4168: $7a
    ld [hl], l                                    ; $4169: $75
    ld d, a                                       ; $416a: $57
    ld a, e                                       ; $416b: $7b
    ld bc, $8009                                  ; $416c: $01 $09 $80
    and b                                         ; $416f: $a0
    ld bc, $5f6c                                  ; $4170: $01 $6c $5f

jr_0cf_4173:
    ld [hl], e                                    ; $4173: $73
    ld a, h                                       ; $4174: $7c
    ld h, e                                       ; $4175: $63
    ld l, l                                       ; $4176: $6d
    ld d, b                                       ; $4177: $50
    ld a, [de]                                    ; $4178: $1a
    ld e, d                                       ; $4179: $5a
    ld d, d                                       ; $417a: $52
    ld b, h                                       ; $417b: $44
    ld [hl], l                                    ; $417c: $75
    ld bc, $00ad                                  ; $417d: $01 $ad $00
    ld [hl], h                                    ; $4180: $74
    ld l, h                                       ; $4181: $6c
    nop                                           ; $4182: $00
    ld l, l                                       ; $4183: $6d
    inc b                                         ; $4184: $04
    ld c, c                                       ; $4185: $49
    ld [hl], c                                    ; $4186: $71
    ld [hl], d                                    ; $4187: $72
    ld l, h                                       ; $4188: $6c
    ld l, h                                       ; $4189: $6c
    ld b, b                                       ; $418a: $40
    jr nc, jr_0cf_41fe                            ; $418b: $30 $71

jr_0cf_418d:
    ld l, l                                       ; $418d: $6d
    ld b, $63                                     ; $418e: $06 $63
    ld h, h                                       ; $4190: $64
    ld h, l                                       ; $4191: $65
    ld [hl], h                                    ; $4192: $74
    ld [hl], e                                    ; $4193: $73
    di                                            ; $4194: $f3
    nop                                           ; $4195: $00
    db $ed                                        ; $4196: $ed
    nop                                           ; $4197: $00
    ld [hl], d                                    ; $4198: $72
    add d                                         ; $4199: $82
    ld l, h                                       ; $419a: $6c
    nop                                           ; $419b: $00
    ld h, a                                       ; $419c: $67
    ld c, e                                       ; $419d: $4b
    ld l, d                                       ; $419e: $6a
    ld l, e                                       ; $419f: $6b
    ld a, l                                       ; $41a0: $7d
    ld b, b                                       ; $41a1: $40
    jr nz, @+$44                                  ; $41a2: $20 $42

    ld bc, $5756                                  ; $41a4: $01 $56 $57
    ld l, d                                       ; $41a7: $6a
    ld h, a                                       ; $41a8: $67
    ld l, l                                       ; $41a9: $6d
    ld b, a                                       ; $41aa: $47
    ld d, e                                       ; $41ab: $53
    or h                                          ; $41ac: $b4
    ld bc, $4229                                  ; $41ad: $01 $29 $42
    ld b, b                                       ; $41b0: $40
    dec l                                         ; $41b1: $2d
    ld bc, $ca6b                                  ; $41b2: $01 $6b $ca
    ld de, $5e45                                  ; $41b5: $11 $45 $5e
    ld h, b                                       ; $41b8: $60
    db $10                                        ; $41b9: $10
    jp Jump_000_09a0                              ; $41ba: $c3 $a0 $09


    cp $00                                        ; $41bd: $fe $00
    ld b, a                                       ; $41bf: $47
    ld a, [hl]                                    ; $41c0: $7e
    ld e, c                                       ; $41c1: $59
    ld e, b                                       ; $41c2: $58
    or h                                          ; $41c3: $b4
    ld de, $016d                                  ; $41c4: $11 $6d $01
    inc bc                                        ; $41c7: $03
    ld b, h                                       ; $41c8: $44
    ld e, h                                       ; $41c9: $5c
    ld d, b                                       ; $41ca: $50
    ld e, b                                       ; $41cb: $58
    ld h, [hl]                                    ; $41cc: $66
    ld h, [hl]                                    ; $41cd: $66
    pop hl                                        ; $41ce: $e1
    ld [$1123], sp                                ; $41cf: $08 $23 $11
    ldh a, [$3e]                                  ; $41d2: $f0 $3e
    ld de, $09df                                  ; $41d4: $11 $df $09
    or h                                          ; $41d7: $b4
    add hl, bc                                    ; $41d8: $09
    xor $01                                       ; $41d9: $ee $01
    ld [hl], e                                    ; $41db: $73
    ld [hl], h                                    ; $41dc: $74
    ld e, c                                       ; $41dd: $59
    ld c, c                                       ; $41de: $49
    ld e, $51                                     ; $41df: $1e $51
    ld e, c                                       ; $41e1: $59
    ld e, b                                       ; $41e2: $58
    and d                                         ; $41e3: $a2
    ld bc, $0204                                  ; $41e4: $01 $04 $02
    jr nz, jr_0cf_41f3                            ; $41e7: $20 $0a

    jp nc, $6300                                  ; $41e9: $d2 $00 $63

    ldh [$df], a                                  ; $41ec: $e0 $df
    add hl, bc                                    ; $41ee: $09
    rst $18                                       ; $41ef: $df
    ld [$1020], sp                                ; $41f0: $08 $20 $10

jr_0cf_41f3:
    ld d, b                                       ; $41f3: $50
    ld e, h                                       ; $41f4: $5c
    ld l, [hl]                                    ; $41f5: $6e

jr_0cf_41f6:
    ld e, e                                       ; $41f6: $5b
    ld h, e                                       ; $41f7: $63
    ld sp, $5775                                  ; $41f8: $31 $75 $57
    inc bc                                        ; $41fb: $03

Call_0cf_41fc:
    ld a, [bc]                                    ; $41fc: $0a
    ld b, b                                       ; $41fd: $40

jr_0cf_41fe:
    ld [de], a                                    ; $41fe: $12
    ld b, h                                       ; $41ff: $44
    ld d, d                                       ; $4200: $52
    ld l, l                                       ; $4201: $6d
    rst $18                                       ; $4202: $df
    add hl, bc                                    ; $4203: $09
    pop bc                                        ; $4204: $c1
    or h                                          ; $4205: $b4
    add hl, bc                                    ; $4206: $09
    ldh [rNR10], a                                ; $4207: $e0 $10
    ld h, [hl]                                    ; $4209: $66
    ld d, b                                       ; $420a: $50
    ld l, [hl]                                    ; $420b: $6e
    ld l, c                                       ; $420c: $69
    ld l, l                                       ; $420d: $6d
    adc $10                                       ; $420e: $ce $10
    db $db                                        ; $4210: $db
    ret nz                                        ; $4211: $c0

    add hl, bc                                    ; $4212: $09
    rst $38                                       ; $4213: $ff
    add hl, bc                                    ; $4214: $09
    ld h, a                                       ; $4215: $67
    rst $18                                       ; $4216: $df
    add hl, bc                                    ; $4217: $09
    or h                                          ; $4218: $b4
    ld de, $0d56                                  ; $4219: $11 $56 $0d
    nop                                           ; $421c: $00
    inc l                                         ; $421d: $2c

Jump_0cf_421e:
    ld a, [bc]                                    ; $421e: $0a
    ld [hl], b                                    ; $421f: $70
    ld h, a                                       ; $4220: $67
    adc $08                                       ; $4221: $ce $08
    add b                                         ; $4223: $80
    ld hl, $0041                                  ; $4224: $21 $41 $00
    ld h, a                                       ; $4227: $67
    ld h, [hl]                                    ; $4228: $66
    ld c, c                                       ; $4229: $49
    ld l, l                                       ; $422a: $6d
    rst $28                                       ; $422b: $ef
    or h                                          ; $422c: $b4
    add hl, bc                                    ; $422d: $09
    rra                                           ; $422e: $1f
    add hl, bc                                    ; $422f: $09
    ld c, l                                       ; $4230: $4d
    ld [$3f75], sp                                ; $4231: $08 $75 $3f
    jr nz, jr_0cf_41f6                            ; $4234: $20 $c0

    ld a, [de]                                    ; $4236: $1a
    ld b, c                                       ; $4237: $41
    nop                                           ; $4238: $00
    pop hl                                        ; $4239: $e1
    nop                                           ; $423a: $00
    jr c, jr_0cf_42ad                             ; $423b: $38 $70

    ld h, [hl]                                    ; $423d: $66
    or h                                          ; $423e: $b4
    ld bc, $088d                                  ; $423f: $01 $8d $08
    inc l                                         ; $4242: $2c
    ld [bc], a                                    ; $4243: $02
    ld [hl], c                                    ; $4244: $71
    ld [hl], h                                    ; $4245: $74
    ld [hl], e                                    ; $4246: $73
    ret z                                         ; $4247: $c8

    pop bc                                        ; $4248: $c1
    ld hl, $1221                                  ; $4249: $21 $21 $12
    ld d, l                                       ; $424c: $55
    ld d, h                                       ; $424d: $54
    pop hl                                        ; $424e: $e1
    nop                                           ; $424f: $00
    ld e, h                                       ; $4250: $5c
    ld e, e                                       ; $4251: $5b
    ld d, l                                       ; $4252: $55
    ld l, [hl]                                    ; $4253: $6e
    ld l, h                                       ; $4254: $6c
    adc h                                         ; $4255: $8c
    add hl, bc                                    ; $4256: $09
    ld h, b                                       ; $4257: $60
    ld [bc], a                                    ; $4258: $02
    ld [hl], b                                    ; $4259: $70
    ld e, a                                       ; $425a: $5f
    nop                                           ; $425b: $00
    pop hl                                        ; $425c: $e1
    add hl, de                                    ; $425d: $19
    nop                                           ; $425e: $00
    inc bc                                        ; $425f: $03
    ld b, c                                       ; $4260: $41
    and d                                         ; $4261: $a2
    jr nz, jr_0cf_426e                            ; $4262: $20 $0a

    ld l, c                                       ; $4264: $69
    and c                                         ; $4265: $a1
    ld [bc], a                                    ; $4266: $02
    ld c, a                                       ; $4267: $4f
    ld h, c                                       ; $4268: $61
    ld h, b                                       ; $4269: $60
    rst $38                                       ; $426a: $ff
    ld bc, $0e46                                  ; $426b: $01 $46 $0e

jr_0cf_426e:
    ld d, b                                       ; $426e: $50
    ld d, c                                       ; $426f: $51
    ld e, c                                       ; $4270: $59
    ld l, a                                       ; $4271: $6f
    ld l, h                                       ; $4272: $6c
    add hl, bc                                    ; $4273: $09
    add b                                         ; $4274: $80
    ld [hl-], a                                   ; $4275: $32
    or h                                          ; $4276: $b4
    add hl, bc                                    ; $4277: $09
    ld e, e                                       ; $4278: $5b
    add b                                         ; $4279: $80
    and c                                         ; $427a: $a1
    ld [bc], a                                    ; $427b: $02
    ld c, b                                       ; $427c: $48
    ld h, d                                       ; $427d: $62
    ld [hl], a                                    ; $427e: $77
    ld l, h                                       ; $427f: $6c
    ld h, c                                       ; $4280: $61
    ld [hl], b                                    ; $4281: $70
    ld c, a                                       ; $4282: $4f
    db $f4                                        ; $4283: $f4
    ld h, b                                       ; $4284: $60
    ld a, [bc]                                    ; $4285: $0a
    dec a                                         ; $4286: $3d
    add hl, de                                    ; $4287: $19
    and c                                         ; $4288: $a1
    ld a, [hl+]                                   ; $4289: $2a
    ld [c], a                                     ; $428a: $e2
    nop                                           ; $428b: $00
    ld e, c                                       ; $428c: $59
    and c                                         ; $428d: $a1

Jump_0cf_428e:
    ld [bc], a                                    ; $428e: $02
    ld c, h                                       ; $428f: $4c
    ld [hl], l                                    ; $4290: $75
    inc b                                         ; $4291: $04
    ld d, a                                       ; $4292: $57
    ld d, l                                       ; $4293: $55
    ld d, h                                       ; $4294: $54
    ld d, b                                       ; $4295: $50
    ld d, e                                       ; $4296: $53
    ld h, b                                       ; $4297: $60
    ld [bc], a                                    ; $4298: $02
    halt                                          ; $4299: $76
    ld d, l                                       ; $429a: $55
    ld [hl], d                                    ; $429b: $72
    ld l, h                                       ; $429c: $6c
    rra                                           ; $429d: $1f
    ld [hl+], a                                   ; $429e: $22
    pop hl                                        ; $429f: $e1
    ld a, [de]                                    ; $42a0: $1a
    or h                                          ; $42a1: $b4
    ld bc, $4770                                  ; $42a2: $01 $70 $47
    ccf                                           ; $42a5: $3f
    dec bc                                        ; $42a6: $0b
    ld d, h                                       ; $42a7: $54
    nop                                           ; $42a8: $00
    ld c, b                                       ; $42a9: $48
    ld e, c                                       ; $42aa: $59
    ld l, c                                       ; $42ab: $69
    ld l, [hl]                                    ; $42ac: $6e

jr_0cf_42ad:
    ld a, [hl]                                    ; $42ad: $7e
    ld h, [hl]                                    ; $42ae: $66
    ld e, e                                       ; $42af: $5b
    ld h, c                                       ; $42b0: $61
    ld [hl], c                                    ; $42b1: $71
    ld d, [hl]                                    ; $42b2: $56
    dec a                                         ; $42b3: $3d
    add hl, bc                                    ; $42b4: $09
    ret nz                                        ; $42b5: $c0

    ld [hl+], a                                   ; $42b6: $22
    or h                                          ; $42b7: $b4
    add hl, bc                                    ; $42b8: $09
    ld [hl], c                                    ; $42b9: $71
    ld h, l                                       ; $42ba: $65
    ld h, [hl]                                    ; $42bb: $66
    ccf                                           ; $42bc: $3f
    dec bc                                        ; $42bd: $0b
    add e                                         ; $42be: $83
    add e                                         ; $42bf: $83
    inc bc                                        ; $42c0: $03
    ld e, e                                       ; $42c1: $5b

Call_0cf_42c2:
    ld l, [hl]                                    ; $42c2: $6e
    ld e, c                                       ; $42c3: $59
    ld [hl], b                                    ; $42c4: $70
    ld [hl], c                                    ; $42c5: $71
    ld e, a                                       ; $42c6: $5f
    ld [bc], a                                    ; $42c7: $02
    nop                                           ; $42c8: $00
    dec hl                                        ; $42c9: $2b
    add [hl]                                      ; $42ca: $86
    pop hl                                        ; $42cb: $e1
    ld [de], a                                    ; $42cc: $12
    ld l, e                                       ; $42cd: $6b
    ld l, d                                       ; $42ce: $6a
    ld d, e                                       ; $42cf: $53
    ld h, l                                       ; $42d0: $65
    ccf                                           ; $42d1: $3f
    dec bc                                        ; $42d2: $0b
    add e                                         ; $42d3: $83
    inc bc                                        ; $42d4: $03
    ld e, c                                       ; $42d5: $59
    ld c, $51                                     ; $42d6: $0e $51
    ld b, a                                       ; $42d8: $47
    ld d, b                                       ; $42d9: $50
    ld l, d                                       ; $42da: $6a
    ld e, a                                       ; $42db: $5f
    ld a, [bc]                                    ; $42dc: $0a
    ld h, c                                       ; $42dd: $61
    jr c, jr_0cf_4300                             ; $42de: $38 $20

    inc bc                                        ; $42e0: $03
    ld h, [hl]                                    ; $42e1: $66
    jr nc, jr_0cf_434a                            ; $42e2: $30 $66

    ld h, l                                       ; $42e4: $65
    ccf                                           ; $42e5: $3f
    dec bc                                        ; $42e6: $0b
    add e                                         ; $42e7: $83
    inc bc                                        ; $42e8: $03
    ld h, [hl]                                    ; $42e9: $66
    ld e, b                                       ; $42ea: $58
    ld h, a                                       ; $42eb: $67
    ld e, e                                       ; $42ec: $5b
    jr nc, @+$47                                  ; $42ed: $30 $45

    ld d, a                                       ; $42ef: $57
    ld h, b                                       ; $42f0: $60
    ld [$2b40], sp                                ; $42f1: $08 $40 $2b
    ld e, a                                       ; $42f4: $5f
    ld d, l                                       ; $42f5: $55
    ld d, h                                       ; $42f6: $54
    halt                                          ; $42f7: $76
    inc d                                         ; $42f8: $14
    ld h, l                                       ; $42f9: $65
    ld d, e                                       ; $42fa: $53
    ld e, d                                       ; $42fb: $5a
    ccf                                           ; $42fc: $3f
    inc bc                                        ; $42fd: $03
    ld d, b                                       ; $42fe: $50
    add e                                         ; $42ff: $83

jr_0cf_4300:
    dec bc                                        ; $4300: $0b
    ld [hl], c                                    ; $4301: $71
    ld l, l                                       ; $4302: $6d
    ld a, [de]                                    ; $4303: $1a
    ld d, c                                       ; $4304: $51
    ld d, h                                       ; $4305: $54
    ld b, e                                       ; $4306: $43
    rst $38                                       ; $4307: $ff
    ld a, [bc]                                    ; $4308: $0a
    db $fd                                        ; $4309: $fd
    inc bc                                        ; $430a: $03
    ld a, [bc]                                    ; $430b: $0a
    ld bc, $0800                                  ; $430c: $01 $00 $08
    ld bc, $0b0b                                  ; $430f: $01 $0b $0b
    ld [$0908], sp                                ; $4312: $08 $08 $09
    add hl, bc                                    ; $4315: $09
    ld [$0002], sp                                ; $4316: $08 $02 $00
    call c, Call_000_0806                         ; $4319: $dc $06 $08
    add hl, bc                                    ; $431c: $09
    nop                                           ; $431d: $00
    ld l, b                                       ; $431e: $68
    inc de                                        ; $431f: $13
    ld [$081b], sp                                ; $4320: $08 $1b $08
    rra                                           ; $4323: $1f
    db $10                                        ; $4324: $10
    ld c, b                                       ; $4325: $48
    dec bc                                        ; $4326: $0b
    jr nz, @+$0d                                  ; $4327: $20 $0b

    ld l, b                                       ; $4329: $68
    dec e                                         ; $432a: $1d
    jr @+$0b                                      ; $432b: $18 $09

    ld c, c                                       ; $432d: $49
    ld l, c                                       ; $432e: $69
    ld [$0108], sp                                ; $432f: $08 $08 $01
    ld l, c                                       ; $4332: $69
    jr z, jr_0cf_433e                             ; $4333: $28 $09

    jr z, jr_0cf_439f                             ; $4335: $28 $68

    ld [$202b], sp                                ; $4337: $08 $2b $20
    jr c, @+$5b                                   ; $433a: $38 $59

    dec bc                                        ; $433c: $0b
    ld b, b                                       ; $433d: $40

jr_0cf_433e:
    ld [$1968], sp                                ; $433e: $08 $68 $19
    nop                                           ; $4341: $00
    ccf                                           ; $4342: $3f
    nop                                           ; $4343: $00
    ld l, c                                       ; $4344: $69
    ld c, c                                       ; $4345: $49
    add hl, bc                                    ; $4346: $09
    nop                                           ; $4347: $00
    ldh a, [rWY]                                  ; $4348: $f0 $4a

jr_0cf_434a:
    nop                                           ; $434a: $00
    jr nz, jr_0cf_434d                            ; $434b: $20 $00

jr_0cf_434d:
    ld b, c                                       ; $434d: $41
    jr z, @+$61                                   ; $434e: $28 $5f

    nop                                           ; $4350: $00

jr_0cf_4351:
    dec hl                                        ; $4351: $2b
    jr z, jr_0cf_435c                             ; $4352: $28 $08

    ld [$3b80], sp                                ; $4354: $08 $80 $3b
    nop                                           ; $4357: $00
    add hl, bc                                    ; $4358: $09
    add hl, bc                                    ; $4359: $09
    add hl, hl                                    ; $435a: $29
    add hl, bc                                    ; $435b: $09

jr_0cf_435c:
    ld l, b                                       ; $435c: $68
    ld l, b                                       ; $435d: $68
    ld c, b                                       ; $435e: $48
    ld [c], a                                     ; $435f: $e2
    dec c                                         ; $4360: $0d
    nop                                           ; $4361: $00
    jr nz, jr_0cf_4364                            ; $4362: $20 $00

jr_0cf_4364:
    ld h, d                                       ; $4364: $62
    jr nc, jr_0cf_436f                            ; $4365: $30 $08

    ld [$804b], sp                                ; $4367: $08 $4b $80
    ld [$0068], sp                                ; $436a: $08 $68 $00
    add hl, bc                                    ; $436d: $09
    ld c, b                                       ; $436e: $48

jr_0cf_436f:
    add hl, bc                                    ; $436f: $09
    add hl, bc                                    ; $4370: $09
    jr z, jr_0cf_439b                             ; $4371: $28 $28

    ld l, c                                       ; $4373: $69
    ld l, b                                       ; $4374: $68
    nop                                           ; $4375: $00
    add hl, bc                                    ; $4376: $09
    jr z, jr_0cf_4381                             ; $4377: $28 $08

    ld c, b                                       ; $4379: $48
    ld c, b                                       ; $437a: $48
    jr z, jr_0cf_43a8                             ; $437b: $28 $2b

    ld c, e                                       ; $437d: $4b
    ld d, h                                       ; $437e: $54
    ld l, e                                       ; $437f: $6b
    ld b, c                                       ; $4380: $41

jr_0cf_4381:
    jr nc, jr_0cf_438b                            ; $4381: $30 $08

    add b                                         ; $4383: $80
    nop                                           ; $4384: $00
    ld [$0019], sp                                ; $4385: $08 $19 $00
    add hl, bc                                    ; $4388: $09
    ld c, c                                       ; $4389: $49
    ld c, b                                       ; $438a: $48

jr_0cf_438b:
    ld c, c                                       ; $438b: $49
    xor c                                         ; $438c: $a9
    db $10                                        ; $438d: $10
    ld l, c                                       ; $438e: $69
    ld c, b                                       ; $438f: $48
    inc de                                        ; $4390: $13
    nop                                           ; $4391: $00
    ld l, e                                       ; $4392: $6b
    ld l, e                                       ; $4393: $6b
    jr z, @-$7a                                   ; $4394: $28 $84

    and c                                         ; $4396: $a1
    jr z, jr_0cf_43e4                             ; $4397: $28 $4b

    dec bc                                        ; $4399: $0b
    ld l, e                                       ; $439a: $6b

jr_0cf_439b:
    ld l, b                                       ; $439b: $68
    and d                                         ; $439c: $a2
    nop                                           ; $439d: $00
    add hl, bc                                    ; $439e: $09

jr_0cf_439f:
    ld [$6814], sp                                ; $439f: $08 $14 $68
    ld c, b                                       ; $43a2: $48
    ld l, e                                       ; $43a3: $6b
    and b                                         ; $43a4: $a0
    nop                                           ; $43a5: $00
    add hl, hl                                    ; $43a6: $29
    ld b, a                                       ; $43a7: $47

jr_0cf_43a8:
    nop                                           ; $43a8: $00
    ld l, b                                       ; $43a9: $68
    ld [$6b70], sp                                ; $43aa: $08 $70 $6b
    ld b, b                                       ; $43ad: $40
    jr c, jr_0cf_4351                             ; $43ae: $38 $a1

    ld [$1042], sp                                ; $43b0: $08 $42 $10
    ld l, b                                       ; $43b3: $68
    jr z, jr_0cf_43e1                             ; $43b4: $28 $2b

    ld c, b                                       ; $43b6: $48
    ld b, $2b                                     ; $43b7: $06 $2b
    jr z, @+$6a                                   ; $43b9: $28 $68

    add hl, bc                                    ; $43bb: $09
    ld [$0090], sp                                ; $43bc: $08 $90 $00
    pop bc                                        ; $43bf: $c1
    ld b, b                                       ; $43c0: $40
    dec hl                                        ; $43c1: $2b
    add h                                         ; $43c2: $84
    and c                                         ; $43c3: $a1
    nop                                           ; $43c4: $00
    ld l, b                                       ; $43c5: $68
    ld [$6929], sp                                ; $43c6: $08 $29 $69
    ccf                                           ; $43c9: $3f
    nop                                           ; $43ca: $00
    ld c, e                                       ; $43cb: $4b
    dec bc                                        ; $43cc: $0b
    inc e                                         ; $43cd: $1c
    dec bc                                        ; $43ce: $0b
    ld c, b                                       ; $43cf: $48
    ld l, c                                       ; $43d0: $69
    jp $7408                                      ; $43d1: $c3 $08 $74


    ld [$30a0], sp                                ; $43d4: $08 $a0 $30
    ld l, e                                       ; $43d7: $6b
    ld l, e                                       ; $43d8: $6b
    ld b, b                                       ; $43d9: $40
    ld l, b                                       ; $43da: $68
    cp c                                          ; $43db: $b9
    nop                                           ; $43dc: $00
    ld l, b                                       ; $43dd: $68
    jr z, jr_0cf_4428                             ; $43de: $28 $48

    dec hl                                        ; $43e0: $2b

jr_0cf_43e1:
    ld [$4d0b], sp                                ; $43e1: $08 $0b $4d

jr_0cf_43e4:
    dec hl                                        ; $43e4: $2b
    ld l, h                                       ; $43e5: $6c
    db $10                                        ; $43e6: $10
    ld l, b                                       ; $43e7: $68
    ld c, b                                       ; $43e8: $48
    and b                                         ; $43e9: $a0
    jr nc, @-$3e                                  ; $43ea: $30 $c0

    nop                                           ; $43ec: $00
    ld c, e                                       ; $43ed: $4b
    sub c                                         ; $43ee: $91
    nop                                           ; $43ef: $00
    sub c                                         ; $43f0: $91
    cp c                                          ; $43f1: $b9
    nop                                           ; $43f2: $00
    ld c, b                                       ; $43f3: $48
    ld c, e                                       ; $43f4: $4b
    or $00                                        ; $43f5: $f6 $00
    ld l, e                                       ; $43f7: $6b
    ld c, e                                       ; $43f8: $4b
    ld c, b                                       ; $43f9: $48
    inc c                                         ; $43fa: $0c
    ld bc, $4828                                  ; $43fb: $01 $28 $48
    ld l, b                                       ; $43fe: $68
    add b                                         ; $43ff: $80
    jr c, jr_0cf_444a                             ; $4400: $38 $48

    jr nz, jr_0cf_4414                            ; $4402: $20 $10

    ld l, b                                       ; $4404: $68
    ld l, c                                       ; $4405: $69
    ld l, c                                       ; $4406: $69
    ld bc, $6b68                                  ; $4407: $01 $68 $6b
    dec bc                                        ; $440a: $0b
    ld [$4b0b], sp                                ; $440b: $08 $0b $4b
    ld c, b                                       ; $440e: $48
    jr nz, jr_0cf_4411                            ; $440f: $20 $00

jr_0cf_4411:
    and c                                         ; $4411: $a1
    db $ed                                        ; $4412: $ed
    nop                                           ; $4413: $00

jr_0cf_4414:
    ld l, b                                       ; $4414: $68
    ret nz                                        ; $4415: $c0

    ld b, b                                       ; $4416: $40
    ld c, e                                       ; $4417: $4b
    ld [$2908], sp                                ; $4418: $08 $08 $29
    add d                                         ; $441b: $82
    ld bc, $4842                                  ; $441c: $01 $42 $48
    jr nz, @+$12                                  ; $441f: $20 $10

    ld [$0948], sp                                ; $4421: $08 $48 $09
    ld l, b                                       ; $4424: $68
    add e                                         ; $4425: $83
    nop                                           ; $4426: $00
    ld l, b                                       ; $4427: $68

jr_0cf_4428:
    ld [hl], d                                    ; $4428: $72
    ld l, b                                       ; $4429: $68
    ld hl, $2031                                  ; $442a: $21 $31 $20
    add hl, bc                                    ; $442d: $09
    and c                                         ; $442e: $a1
    ld bc, $6868                                  ; $442f: $01 $68 $68
    inc de                                        ; $4432: $13
    ld bc, $c20b                                  ; $4433: $01 $0b $c2
    ld b, c                                       ; $4436: $41
    nop                                           ; $4437: $00
    inc c                                         ; $4438: $0c
    ld bc, $4828                                  ; $4439: $01 $28 $48
    ld c, b                                       ; $443c: $48
    ld c, b                                       ; $443d: $48
    ld bc, $0829                                  ; $443e: $01 $29 $08
    and d                                         ; $4441: $a2
    sbc $08                                       ; $4442: $de $08
    jr z, jr_0cf_4466                             ; $4444: $28 $20

    nop                                           ; $4446: $00
    ld l, e                                       ; $4447: $6b
    dec hl                                        ; $4448: $2b
    dec bc                                        ; $4449: $0b

jr_0cf_444a:
    call Call_0cf_4b01                            ; $444a: $cd $01 $4b

jr_0cf_444d:
    rst $30                                       ; $444d: $f7
    ld e, a                                       ; $444e: $5f
    nop                                           ; $444f: $00
    ld hl, $6110                                  ; $4450: $21 $10 $61
    ld sp, $00fe                                  ; $4453: $31 $fe $00
    ld c, b                                       ; $4456: $48
    jr nz, jr_0cf_4459                            ; $4457: $20 $00

jr_0cf_4459:
    ld [hl], h                                    ; $4459: $74
    ld bc, $1040                                  ; $445a: $01 $40 $10
    rst $18                                       ; $445d: $df
    ld c, c                                       ; $445e: $49
    ld bc, $01ca                                  ; $445f: $01 $ca $01
    jr z, @+$22                                   ; $4462: $28 $20

    jr z, @-$1f                                   ; $4464: $28 $df

jr_0cf_4466:
    nop                                           ; $4466: $00
    dec a                                         ; $4467: $3d
    add hl, bc                                    ; $4468: $09
    push af                                       ; $4469: $f5
    ld bc, $0820                                  ; $446a: $01 $20 $08
    cp a                                          ; $446d: $bf
    adc $11                                       ; $446e: $ce $11
    ld l, c                                       ; $4470: $69
    add h                                         ; $4471: $84
    nop                                           ; $4472: $00
    pop hl                                        ; $4473: $e1
    nop                                           ; $4474: $00
    inc b                                         ; $4475: $04
    ld a, [de]                                    ; $4476: $1a
    rst $18                                       ; $4477: $df
    db $10                                        ; $4478: $10
    rst $18                                       ; $4479: $df
    add hl, bc                                    ; $447a: $09
    ld b, b                                       ; $447b: $40
    jr jr_0cf_444d                                ; $447c: $18 $cf

    xor l                                         ; $447e: $ad
    ld bc, $00a0                                  ; $447f: $01 $a0 $00
    ld c, b                                       ; $4482: $48
    jr z, jr_0cf_4466                             ; $4483: $28 $e1

    nop                                           ; $4485: $00
    and d                                         ; $4486: $a2
    add hl, de                                    ; $4487: $19
    jp nc, $df08                                  ; $4488: $d2 $08 $df

    ld de, $b4ff                                  ; $448b: $11 $ff $b4
    ld bc, $0080                                  ; $448e: $01 $80 $00
    jr nz, jr_0cf_44a3                            ; $4491: $20 $10

    add d                                         ; $4493: $82
    add hl, bc                                    ; $4494: $09
    xor $08                                       ; $4495: $ee $08
    jr nz, jr_0cf_44c9                            ; $4497: $20 $30

    rst $18                                       ; $4499: $df
    add hl, bc                                    ; $449a: $09
    or h                                          ; $449b: $b4
    add hl, bc                                    ; $449c: $09
    rst $38                                       ; $449d: $ff
    ld l, h                                       ; $449e: $6c
    ld [bc], a                                    ; $449f: $02
    inc l                                         ; $44a0: $2c
    add hl, bc                                    ; $44a1: $09
    add d                                         ; $44a2: $82

jr_0cf_44a3:
    ld bc, $10ce                                  ; $44a3: $01 $ce $10
    ld a, a                                       ; $44a6: $7f
    ld a, [de]                                    ; $44a7: $1a
    ld b, c                                       ; $44a8: $41
    ld [$01f8], sp                                ; $44a9: $08 $f8 $01
    or h                                          ; $44ac: $b4
    add hl, bc                                    ; $44ad: $09
    rst $28                                       ; $44ae: $ef
    ld e, a                                       ; $44af: $5f
    ld [$0a2c], sp                                ; $44b0: $08 $2c $0a
    ld l, [hl]                                    ; $44b3: $6e
    ld bc, $636b                                  ; $44b4: $01 $6b $63
    ld [hl+], a                                   ; $44b7: $22
    ld h, b                                       ; $44b8: $60
    ld de, $0114                                  ; $44b9: $11 $14 $01
    dec [hl]                                      ; $44bc: $35
    ld a, [de]                                    ; $44bd: $1a
    or $3f                                        ; $44be: $f6 $3f
    nop                                           ; $44c0: $00
    jr nz, jr_0cf_44c4                            ; $44c1: $20 $01

    adc [hl]                                      ; $44c3: $8e

jr_0cf_44c4:
    add hl, bc                                    ; $44c4: $09
    jr nz, jr_0cf_4501                            ; $44c5: $20 $3a

    ld c, b                                       ; $44c7: $48
    ld d, h                                       ; $44c8: $54

jr_0cf_44c9:
    ld bc, $00e1                                  ; $44c9: $01 $e1 $00
    ld l, b                                       ; $44cc: $68
    cpl                                           ; $44cd: $2f
    add hl, bc                                    ; $44ce: $09
    dec bc                                        ; $44cf: $0b
    ld d, [hl]                                    ; $44d0: $56
    ld a, [bc]                                    ; $44d1: $0a
    ld [$0920], sp                                ; $44d2: $08 $20 $09
    add b                                         ; $44d5: $80
    ld bc, $0275                                  ; $44d6: $01 $75 $02
    ld hl, $fb32                                  ; $44d9: $21 $32 $fb
    ret nz                                        ; $44dc: $c0

    ld bc, $0940                                  ; $44dd: $01 $40 $09
    db $d3                                        ; $44e0: $d3
    nop                                           ; $44e1: $00
    db $ec                                        ; $44e2: $ec
    ld [bc], a                                    ; $44e3: $02
    ld b, d                                       ; $44e4: $42
    nop                                           ; $44e5: $00
    ld c, b                                       ; $44e6: $48
    ld e, a                                       ; $44e7: $5f
    ld [$4020], sp                                ; $44e8: $08 $20 $40
    di                                            ; $44eb: $f3
    jp Jump_0cf_7508                              ; $44ec: $c3 $08 $75


    nop                                           ; $44ef: $00
    add b                                         ; $44f0: $80
    nop                                           ; $44f1: $00
    ld a, [hl+]                                   ; $44f2: $2a
    ld [bc], a                                    ; $44f3: $02
    add hl, bc                                    ; $44f4: $09
    ld l, c                                       ; $44f5: $69
    rra                                           ; $44f6: $1f
    ld [$20fe], sp                                ; $44f7: $08 $fe $20
    ret nc                                        ; $44fa: $d0

    and c                                         ; $44fb: $a1
    jr z, jr_0cf_44ff                             ; $44fc: $28 $01

    ld [bc], a                                    ; $44fe: $02

jr_0cf_44ff:
    add hl, bc                                    ; $44ff: $09
    pop bc                                        ; $4500: $c1

jr_0cf_4501:
    ld bc, $4b4b                                  ; $4501: $01 $4b $4b
    ld l, b                                       ; $4504: $68
    ld c, b                                       ; $4505: $48
    cp l                                          ; $4506: $bd
    ld h, b                                       ; $4507: $60
    ld [bc], a                                    ; $4508: $02
    ld l, b                                       ; $4509: $68
    ld e, l                                       ; $450a: $5d
    ld sp, $1a81                                  ; $450b: $31 $81 $1a
    ld [bc], a                                    ; $450e: $02
    add hl, bc                                    ; $450f: $09
    jp nz, Jump_0cf_6808                          ; $4510: $c2 $08 $68

    add hl, hl                                    ; $4513: $29
    ld [bc], a                                    ; $4514: $02
    dec e                                         ; $4515: $1d
    add hl, hl                                    ; $4516: $29
    ld c, b                                       ; $4517: $48
    add hl, bc                                    ; $4518: $09
    sub d                                         ; $4519: $92
    nop                                           ; $451a: $00
    cp [hl]                                       ; $451b: $be
    jr z, @-$3e                                   ; $451c: $28 $c0

    ld a, [de]                                    ; $451e: $1a
    ld c, e                                       ; $451f: $4b
    ld d, b                                       ; $4520: $50
    ld bc, $3ffd                                  ; $4521: $01 $fd $3f
    inc de                                        ; $4524: $13
    ld b, $0a                                     ; $4525: $06 $0a
    cp $00                                        ; $4527: $fe $00
    sbc [hl]                                      ; $4529: $9e
    ld [bc], a                                    ; $452a: $02
    rst $18                                       ; $452b: $df
    ld [hl-], a                                   ; $452c: $32
    jr nz, jr_0cf_453f                            ; $452d: $20 $10

    ld l, b                                       ; $452f: $68
    sub l                                         ; $4530: $95
    ld de, $0947                                  ; $4531: $11 $47 $09
    inc h                                         ; $4534: $24
    dec bc                                        ; $4535: $0b
    ld c, b                                       ; $4536: $48
    ld l, c                                       ; $4537: $69
    ld c, c                                       ; $4538: $49
    db $dd                                        ; $4539: $dd
    ld bc, $0995                                  ; $453a: $01 $95 $09
    ld h, d                                       ; $453d: $62
    dec sp                                        ; $453e: $3b

jr_0cf_453f:
    cp a                                          ; $453f: $bf

jr_0cf_4540:
    jr nz, jr_0cf_454a                            ; $4540: $20 $08

    add hl, hl                                    ; $4542: $29
    ccf                                           ; $4543: $3f
    dec bc                                        ; $4544: $0b
    cp c                                          ; $4545: $b9
    add hl, bc                                    ; $4546: $09
    rlca                                          ; $4547: $07
    inc bc                                        ; $4548: $03
    ld e, a                                       ; $4549: $5f

jr_0cf_454a:
    ld a, [bc]                                    ; $454a: $0a
    jr nz, @+$42                                  ; $454b: $20 $40

    di                                            ; $454d: $f3
    ld bc, $092d                                  ; $454e: $01 $2d $09
    ld l, c                                       ; $4551: $69
    ld a, a                                       ; $4552: $7f
    inc bc                                        ; $4553: $03
    jr z, @+$08                                   ; $4554: $28 $06

    ld [bc], a                                    ; $4556: $02
    sbc l                                         ; $4557: $9d
    dec bc                                        ; $4558: $0b
    ld l, b                                       ; $4559: $68
    sbc [hl]                                      ; $455a: $9e
    ld bc, $fee3                                  ; $455b: $01 $e3 $fe
    jr nc, jr_0cf_4540                            ; $455e: $30 $e0

    inc bc                                        ; $4560: $03
    rra                                           ; $4561: $1f
    inc bc                                        ; $4562: $03
    ld c, c                                       ; $4563: $49
    add hl, hl                                    ; $4564: $29
    ld l, c                                       ; $4565: $69
    ccf                                           ; $4566: $3f
    inc bc                                        ; $4567: $03
    and e                                         ; $4568: $a3
    inc bc                                        ; $4569: $03
    ld c, b                                       ; $456a: $48
    add hl, hl                                    ; $456b: $29
    sbc [hl]                                      ; $456c: $9e
    nop                                           ; $456d: $00
    jr z, @+$4a                                   ; $456e: $28 $48

    ld e, $2b                                     ; $4570: $1e $2b
    sub a                                         ; $4572: $97
    ld a, a                                       ; $4573: $7f
    ld d, d                                       ; $4574: $52
    ld a, a                                       ; $4575: $7f
    rst $08                                       ; $4576: $cf
    ld l, d                                       ; $4577: $6a
    ld l, e                                       ; $4578: $6b
    ld h, [hl]                                    ; $4579: $66
    add hl, de                                    ; $457a: $19
    ld a, e                                       ; $457b: $7b
    sub e                                         ; $457c: $93
    ld h, [hl]                                    ; $457d: $66
    ld sp, $ce5a                                  ; $457e: $31 $5a $ce
    ld c, c                                       ; $4581: $49
    ld d, d                                       ; $4582: $52
    ld a, a                                       ; $4583: $7f
    sub e                                         ; $4584: $93
    ld h, [hl]                                    ; $4585: $66
    ld sp, $6b5a                                  ; $4586: $31 $5a $6b
    ld h, [hl]                                    ; $4589: $66
    sub $7e                                       ; $458a: $d6 $7e
    xor $65                                       ; $458c: $ee $65
    adc h                                         ; $458e: $8c
    ld c, l                                       ; $458f: $4d
    cp l                                          ; $4590: $bd
    ld [hl], a                                    ; $4591: $77
    sub a                                         ; $4592: $97
    ld a, a                                       ; $4593: $7f
    ld d, d                                       ; $4594: $52
    ld a, a                                       ; $4595: $7f
    rst $08                                       ; $4596: $cf
    ld l, d                                       ; $4597: $6a
    nop                                           ; $4598: $00
    jr nz, jr_0cf_459b                            ; $4599: $20 $00

jr_0cf_459b:
    jr nz, jr_0cf_45ef                            ; $459b: $20 $52

    ld a, a                                       ; $459d: $7f
    rst $08                                       ; $459e: $cf
    ld l, d                                       ; $459f: $6a
    ld l, e                                       ; $45a0: $6b
    ld h, [hl]                                    ; $45a1: $66
    cp l                                          ; $45a2: $bd
    ld [hl], a                                    ; $45a3: $77
    cp l                                          ; $45a4: $bd
    ld [hl], a                                    ; $45a5: $77
    cp l                                          ; $45a6: $bd
    ld [hl], a                                    ; $45a7: $77
    cp l                                          ; $45a8: $bd
    ld [hl], a                                    ; $45a9: $77
    cp l                                          ; $45aa: $bd
    ld [hl], a                                    ; $45ab: $77
    cp l                                          ; $45ac: $bd
    ld [hl], a                                    ; $45ad: $77
    cp l                                          ; $45ae: $bd
    ld [hl], a                                    ; $45af: $77
    cp l                                          ; $45b0: $bd
    ld [hl], a                                    ; $45b1: $77
    ldh a, [$7e]                                  ; $45b2: $f0 $7e
    ld l, b                                       ; $45b4: $68
    ld a, [hl]                                    ; $45b5: $7e
    ld bc, $d72c                                  ; $45b6: $01 $2c $d7
    ld a, a                                       ; $45b9: $7f
    ldh a, [$7e]                                  ; $45ba: $f0 $7e
    ld l, b                                       ; $45bc: $68
    ld a, [hl]                                    ; $45bd: $7e
    ld bc, $d744                                  ; $45be: $01 $44 $d7
    ld a, a                                       ; $45c1: $7f
    ld [bc], a                                    ; $45c2: $02
    ld h, b                                       ; $45c3: $60
    ld bc, $0144                                  ; $45c4: $01 $44 $01
    inc l                                         ; $45c7: $2c
    ld l, c                                       ; $45c8: $69
    ld a, l                                       ; $45c9: $7d
    ldh a, [$7e]                                  ; $45ca: $f0 $7e
    ld l, b                                       ; $45cc: $68
    ld a, [hl]                                    ; $45cd: $7e
    ld [bc], a                                    ; $45ce: $02
    ld h, b                                       ; $45cf: $60
    rst $10                                       ; $45d0: $d7
    ld a, a                                       ; $45d1: $7f
    ldh a, [$7e]                                  ; $45d2: $f0 $7e
    ld l, b                                       ; $45d4: $68
    ld a, [hl]                                    ; $45d5: $7e
    ld l, c                                       ; $45d6: $69
    ld a, l                                       ; $45d7: $7d
    rst $10                                       ; $45d8: $d7
    ld a, a                                       ; $45d9: $7f
    ldh a, [$7e]                                  ; $45da: $f0 $7e
    ld bc, $0144                                  ; $45dc: $01 $44 $01
    inc l                                         ; $45df: $2c
    rst $10                                       ; $45e0: $d7
    ld a, a                                       ; $45e1: $7f
    ldh a, [$7e]                                  ; $45e2: $f0 $7e
    ld bc, $0244                                  ; $45e4: $01 $44 $02
    ld h, b                                       ; $45e7: $60
    rst $10                                       ; $45e8: $d7
    ld a, a                                       ; $45e9: $7f
    ldh a, [$7e]                                  ; $45ea: $f0 $7e
    ld l, c                                       ; $45ec: $69
    ld a, l                                       ; $45ed: $7d
    ld [bc], a                                    ; $45ee: $02

jr_0cf_45ef:
    ld h, b                                       ; $45ef: $60
    rst $10                                       ; $45f0: $d7
    ld a, a                                       ; $45f1: $7f
    jr nz, jr_0cf_45f7                            ; $45f2: $20 $03

    nop                                           ; $45f4: $00
    ld [bc], a                                    ; $45f5: $02
    ld h, b                                       ; $45f6: $60

jr_0cf_45f7:
    ld bc, $0000                                  ; $45f7: $01 $00 $00
    rst $30                                       ; $45fa: $f7
    dec h                                         ; $45fb: $25
    ld [hl], c                                    ; $45fc: $71
    add hl, de                                    ; $45fd: $19
    ret                                           ; $45fe: $c9


    inc c                                         ; $45ff: $0c
    nop                                           ; $4600: $00
    nop                                           ; $4601: $00
    jr nz, jr_0cf_4607                            ; $4602: $20 $03

    nop                                           ; $4604: $00
    ld [bc], a                                    ; $4605: $02
    ld h, b                                       ; $4606: $60

jr_0cf_4607:
    ld bc, $25f7                                  ; $4607: $01 $f7 $25
    rst $30                                       ; $460a: $f7
    dec h                                         ; $460b: $25
    ld [hl], c                                    ; $460c: $71
    add hl, de                                    ; $460d: $19
    ret                                           ; $460e: $c9


    inc c                                         ; $460f: $0c
    ld h, b                                       ; $4610: $60
    ld bc, $0cc9                                  ; $4611: $01 $c9 $0c
    nop                                           ; $4614: $00
    ld [bc], a                                    ; $4615: $02
    ld h, b                                       ; $4616: $60
    ld bc, $0000                                  ; $4617: $01 $00 $00
    jr nz, jr_0cf_461f                            ; $461a: $20 $03

    nop                                           ; $461c: $00
    ld [bc], a                                    ; $461d: $02
    ld h, b                                       ; $461e: $60

jr_0cf_461f:
    ld bc, $0cc9                                  ; $461f: $01 $c9 $0c
    xor c                                         ; $4622: $a9
    ld e, l                                       ; $4623: $5d
    ld a, [bc]                                    ; $4624: $0a
    ld d, c                                       ; $4625: $51
    and [hl]                                      ; $4626: $a6
    jr nc, jr_0cf_4629                            ; $4627: $30 $00

jr_0cf_4629:
    nop                                           ; $4629: $00
    cp l                                          ; $462a: $bd
    ld a, a                                       ; $462b: $7f
    cp l                                          ; $462c: $bd
    ld a, a                                       ; $462d: $7f
    cp l                                          ; $462e: $bd
    ld a, a                                       ; $462f: $7f

jr_0cf_4630:
    cp l                                          ; $4630: $bd
    ld a, a                                       ; $4631: $7f
    db $db                                        ; $4632: $db
    ld [de], a                                    ; $4633: $12
    ld e, e                                       ; $4634: $5b
    ld [de], a                                    ; $4635: $12
    rst $10                                       ; $4636: $d7
    dec c                                         ; $4637: $0d
    inc [hl]                                      ; $4638: $34
    ld bc, $0304                                  ; $4639: $01 $04 $03
    nop                                           ; $463c: $00
    ld [bc], a                                    ; $463d: $02
    nop                                           ; $463e: $00
    ld bc, $12db                                  ; $463f: $01 $db $12
    inc b                                         ; $4642: $04
    inc bc                                        ; $4643: $03
    nop                                           ; $4644: $00
    ld [bc], a                                    ; $4645: $02
    nop                                           ; $4646: $00
    ld bc, $0dd7                                  ; $4647: $01 $d7 $0d
    inc b                                         ; $464a: $04
    inc bc                                        ; $464b: $03
    nop                                           ; $464c: $00
    ld [bc], a                                    ; $464d: $02
    nop                                           ; $464e: $00
    ld bc, $125b                                  ; $464f: $01 $5b $12

jr_0cf_4652:
    ret nz                                        ; $4652: $c0

    ld e, d                                       ; $4653: $5a
    ldh [rOBP1], a                                ; $4654: $e0 $49
    ld b, b                                       ; $4656: $40
    jr nz, jr_0cf_4630                            ; $4657: $20 $d7

    dec c                                         ; $4659: $0d

jr_0cf_465a:
    add b                                         ; $465a: $80
    ld [hl], d                                    ; $465b: $72
    nop                                           ; $465c: $00
    ld d, l                                       ; $465d: $55
    jr nz, jr_0cf_4690                            ; $465e: $20 $30

    inc [hl]                                      ; $4660: $34
    ld bc, $7ffd                                  ; $4661: $01 $fd $7f
    db $fd                                        ; $4664: $fd
    ld a, a                                       ; $4665: $7f
    db $fd                                        ; $4666: $fd
    ld a, a                                       ; $4667: $7f
    db $fd                                        ; $4668: $fd
    ld a, a                                       ; $4669: $7f
    adc l                                         ; $466a: $8d
    rla                                           ; $466b: $17
    ld b, b                                       ; $466c: $40
    ld h, $20                                     ; $466d: $26 $20
    ld bc, $12db                                  ; $466f: $01 $db $12
    ld d, b                                       ; $4672: $50
    add hl, hl                                    ; $4673: $29
    db $10                                        ; $4674: $10
    ld b, d                                       ; $4675: $42
    ld a, [bc]                                    ; $4676: $0a
    inc sp                                        ; $4677: $33
    cp l                                          ; $4678: $bd
    ld [hl], a                                    ; $4679: $77
    add hl, bc                                    ; $467a: $09
    nop                                           ; $467b: $00
    xor [hl]                                      ; $467c: $ae
    nop                                           ; $467d: $00
    ld e, e                                       ; $467e: $5b
    ld [bc], a                                    ; $467f: $02
    ld a, $37                                     ; $4680: $3e $37
    rst $10                                       ; $4682: $d7
    inc bc                                        ; $4683: $03
    ld h, h                                       ; $4684: $64
    jr nz, jr_0cf_468d                            ; $4685: $20 $06

    dec a                                         ; $4687: $3d
    ld c, l                                       ; $4688: $4d
    ld a, d                                       ; $4689: $7a
    cp l                                          ; $468a: $bd
    ld [hl], a                                    ; $468b: $77
    ret nc                                        ; $468c: $d0

jr_0cf_468d:
    nop                                           ; $468d: $00
    cp l                                          ; $468e: $bd
    ld [hl], a                                    ; $468f: $77

jr_0cf_4690:
    cp l                                          ; $4690: $bd
    ld [hl], a                                    ; $4691: $77
    add hl, bc                                    ; $4692: $09
    nop                                           ; $4693: $00
    ret nc                                        ; $4694: $d0

    nop                                           ; $4695: $00
    ret nz                                        ; $4696: $c0

    ld a, [hl+]                                   ; $4697: $2a
    ret nz                                        ; $4698: $c0

    ld b, e                                       ; $4699: $43
    ld h, [hl]                                    ; $469a: $66
    inc c                                         ; $469b: $0c
    push de                                       ; $469c: $d5
    nop                                           ; $469d: $00
    ld e, b                                       ; $469e: $58
    dec c                                         ; $469f: $0d
    cp a                                          ; $46a0: $bf
    inc bc                                        ; $46a1: $03
    ld b, a                                       ; $46a2: $47
    jr nz, jr_0cf_4652                            ; $46a3: $20 $ad

    inc a                                         ; $46a5: $3c
    or h                                          ; $46a6: $b4
    ld h, b                                       ; $46a7: $60
    ld e, b                                       ; $46a8: $58
    dec c                                         ; $46a9: $0d
    ld b, a                                       ; $46aa: $47
    jr nz, jr_0cf_465a                            ; $46ab: $20 $ad

    inc a                                         ; $46ad: $3c
    or h                                          ; $46ae: $b4
    ld h, b                                       ; $46af: $60
    sbc c                                         ; $46b0: $99
    dec c                                         ; $46b1: $0d
    inc a                                         ; $46b2: $3c
    ld [hl+], a                                   ; $46b3: $22
    ld [hl-], a                                   ; $46b4: $32
    ld bc, $1bf1                                  ; $46b5: $01 $f1 $1b
    ld b, l                                       ; $46b8: $45
    ld [$19b8], sp                                ; $46b9: $08 $b8 $19
    adc h                                         ; $46bc: $8c
    nop                                           ; $46bd: $00
    pop af                                        ; $46be: $f1
    dec de                                        ; $46bf: $1b
    ld b, l                                       ; $46c0: $45
    ld [$2003], sp                                ; $46c1: $08 $03 $20
    db $10                                        ; $46c4: $10
    ld [hl], b                                    ; $46c5: $70
    pop af                                        ; $46c6: $f1
    dec de                                        ; $46c7: $1b

jr_0cf_46c8:
    ld b, l                                       ; $46c8: $45
    ld [$229f], sp                                ; $46c9: $08 $9f $22
    db $10                                        ; $46cc: $10
    ld a, h                                       ; $46cd: $7c
    pop af                                        ; $46ce: $f1
    dec de                                        ; $46cf: $1b
    ld b, l                                       ; $46d0: $45
    ld [$229f], sp                                ; $46d1: $08 $9f $22
    ld [hl-], a                                   ; $46d4: $32
    ld bc, $1bf1                                  ; $46d5: $01 $f1 $1b
    ld b, l                                       ; $46d8: $45
    ld [$2003], sp                                ; $46d9: $08 $03 $20
    db $10                                        ; $46dc: $10
    ld [hl], b                                    ; $46dd: $70
    pop af                                        ; $46de: $f1
    dec de                                        ; $46df: $1b
    ld b, l                                       ; $46e0: $45
    ld [$0eff], sp                                ; $46e1: $08 $ff $0e
    db $10                                        ; $46e4: $10
    ld a, h                                       ; $46e5: $7c
    pop af                                        ; $46e6: $f1
    dec de                                        ; $46e7: $1b
    ld b, l                                       ; $46e8: $45
    ld [$77bd], sp                                ; $46e9: $08 $bd $77
    cp l                                          ; $46ec: $bd
    ld [hl], a                                    ; $46ed: $77
    cp l                                          ; $46ee: $bd
    ld [hl], a                                    ; $46ef: $77

jr_0cf_46f0:
    cp l                                          ; $46f0: $bd
    ld [hl], a                                    ; $46f1: $77
    cp a                                          ; $46f2: $bf
    ld a, c                                       ; $46f3: $79
    dec de                                        ; $46f4: $1b
    ld h, h                                       ; $46f5: $64
    ld d, l                                       ; $46f6: $55
    ld d, b                                       ; $46f7: $50
    ld de, $c040                                  ; $46f8: $11 $40 $c0
    ld [hl+], a                                   ; $46fb: $22
    jr nz, @+$34                                  ; $46fc: $20 $32

    ldh [$0c], a                                  ; $46fe: $e0 $0c
    cp a                                          ; $4700: $bf
    ld a, c                                       ; $4701: $79
    ret nz                                        ; $4702: $c0

    ld e, d                                       ; $4703: $5a
    ldh [rOBP1], a                                ; $4704: $e0 $49
    ret nz                                        ; $4706: $c0

    jr nz, jr_0cf_46c8                            ; $4707: $20 $bf

    ld a, c                                       ; $4709: $79
    ret nz                                        ; $470a: $c0

    ld e, d                                       ; $470b: $5a
    ldh [rOBP1], a                                ; $470c: $e0 $49
    and b                                         ; $470e: $a0
    jr nz, jr_0cf_472c                            ; $470f: $20 $1b

    ld h, h                                       ; $4711: $64
    ret nz                                        ; $4712: $c0

    ld [hl+], a                                   ; $4713: $22
    jr nz, jr_0cf_4748                            ; $4714: $20 $32

    nop                                           ; $4716: $00
    add hl, de                                    ; $4717: $19
    ld d, l                                       ; $4718: $55
    ld d, b                                       ; $4719: $50
    add b                                         ; $471a: $80
    ld [hl], d                                    ; $471b: $72
    nop                                           ; $471c: $00
    ld d, l                                       ; $471d: $55
    jr nz, jr_0cf_4750                            ; $471e: $20 $30

    ld de, $8040                                  ; $4720: $11 $40 $80
    ld [hl], d                                    ; $4723: $72
    nop                                           ; $4724: $00
    ld d, l                                       ; $4725: $55
    jr nz, jr_0cf_4758                            ; $4726: $20 $30

    ld d, l                                       ; $4728: $55
    ld d, b                                       ; $4729: $50
    ret nz                                        ; $472a: $c0

    ld e, d                                       ; $472b: $5a

jr_0cf_472c:
    ldh [rOBP1], a                                ; $472c: $e0 $49
    and b                                         ; $472e: $a0
    jr nz, jr_0cf_46f0                            ; $472f: $20 $bf

    ld a, c                                       ; $4731: $79
    nop                                           ; $4732: $00
    inc e                                         ; $4733: $1c
    rst $38                                       ; $4734: $ff
    ld h, a                                       ; $4735: $67
    ld e, [hl]                                    ; $4736: $5e
    inc de                                        ; $4737: $13
    and b                                         ; $4738: $a0
    ld c, h                                       ; $4739: $4c
    nop                                           ; $473a: $00
    inc e                                         ; $473b: $1c
    or $53                                        ; $473c: $f6 $53
    ld h, b                                       ; $473e: $60
    ld a, d                                       ; $473f: $7a
    and b                                         ; $4740: $a0
    ld c, h                                       ; $4741: $4c
    nop                                           ; $4742: $00
    inc e                                         ; $4743: $1c
    sbc d                                         ; $4744: $9a
    ld a, d                                       ; $4745: $7a
    db $ed                                        ; $4746: $ed
    ld b, h                                       ; $4747: $44

jr_0cf_4748:
    and b                                         ; $4748: $a0
    ld c, h                                       ; $4749: $4c
    nop                                           ; $474a: $00
    inc e                                         ; $474b: $1c
    ld bc, $e248                                  ; $474c: $01 $48 $e2
    ld e, h                                       ; $474f: $5c

jr_0cf_4750:
    db $e3                                        ; $4750: $e3
    ld e, l                                       ; $4751: $5d
    nop                                           ; $4752: $00
    inc e                                         ; $4753: $1c
    dec c                                         ; $4754: $0d
    ld c, b                                       ; $4755: $48
    ld e, [hl]                                    ; $4756: $5e
    inc de                                        ; $4757: $13

jr_0cf_4758:
    ccf                                           ; $4758: $3f
    dec d                                         ; $4759: $15
    nop                                           ; $475a: $00
    inc e                                         ; $475b: $1c
    ld b, b                                       ; $475c: $40
    ld bc, $0280                                  ; $475d: $01 $80 $02
    ld l, l                                       ; $4760: $6d
    ld c, e                                       ; $4761: $4b
    nop                                           ; $4762: $00
    inc e                                         ; $4763: $1c
    adc a                                         ; $4764: $8f
    ld e, h                                       ; $4765: $5c
    ld d, h                                       ; $4766: $54
    add hl, bc                                    ; $4767: $09
    db $db                                        ; $4768: $db
    ld a, e                                       ; $4769: $7b
    nop                                           ; $476a: $00
    inc e                                         ; $476b: $1c
    sub h                                         ; $476c: $94
    ld d, d                                       ; $476d: $52
    sbc c                                         ; $476e: $99
    ld [hl], e                                    ; $476f: $73
    ld [hl], a                                    ; $4770: $77
    ld l, a                                       ; $4771: $6f
    xor e                                         ; $4772: $ab
    ld b, c                                       ; $4773: $41
    cp l                                          ; $4774: $bd
    ld [hl], a                                    ; $4775: $77
    cp l                                          ; $4776: $bd
    ld [hl], a                                    ; $4777: $77
    cp l                                          ; $4778: $bd
    ld [hl], a                                    ; $4779: $77
    rlca                                          ; $477a: $07

Call_0cf_477b:
    jr z, jr_0cf_478a                             ; $477b: $28 $0d

    ld b, h                                       ; $477d: $44
    inc de                                        ; $477e: $13
    ld [hl], h                                    ; $477f: $74
    sbc d                                         ; $4780: $9a
    ld a, [hl]                                    ; $4781: $7e
    ld b, $28                                     ; $4782: $06 $28
    xor b                                         ; $4784: $a8
    ld b, h                                       ; $4785: $44
    ld c, e                                       ; $4786: $4b
    ld [hl], l                                    ; $4787: $75
    ld d, l                                       ; $4788: $55
    ld a, a                                       ; $4789: $7f

jr_0cf_478a:
    ld b, $24                                     ; $478a: $06 $24
    jr nz, jr_0cf_47c7                            ; $478c: $20 $39

    ldh [$61], a                                  ; $478e: $e0 $61
    and b                                         ; $4790: $a0
    ld a, a                                       ; $4791: $7f
    and b                                         ; $4792: $a0
    ld [$19a0], sp                                ; $4793: $08 $a0 $19
    ld h, b                                       ; $4796: $60
    dec de                                        ; $4797: $1b
    ld a, [c]                                     ; $4798: $f2
    ld h, a                                       ; $4799: $67
    ld h, [hl]                                    ; $479a: $66
    inc c                                         ; $479b: $0c
    xor a                                         ; $479c: $af
    ld bc, $02fb                                  ; $479d: $01 $fb $02
    rst $38                                       ; $47a0: $ff
    ld c, e                                       ; $47a1: $4b
    cp l                                          ; $47a2: $bd
    ld [hl], a                                    ; $47a3: $77
    cp l                                          ; $47a4: $bd
    ld [hl], a                                    ; $47a5: $77
    cp l                                          ; $47a6: $bd
    ld [hl], a                                    ; $47a7: $77
    cp l                                          ; $47a8: $bd
    ld [hl], a                                    ; $47a9: $77
    cp l                                          ; $47aa: $bd
    ld [hl], a                                    ; $47ab: $77
    cp l                                          ; $47ac: $bd
    ld [hl], a                                    ; $47ad: $77
    cp l                                          ; $47ae: $bd
    ld [hl], a                                    ; $47af: $77
    cp l                                          ; $47b0: $bd
    ld [hl], a                                    ; $47b1: $77
    ld b, h                                       ; $47b2: $44
    db $10                                        ; $47b3: $10
    or h                                          ; $47b4: $b4
    dec e                                         ; $47b5: $1d
    ld a, a                                       ; $47b6: $7f
    ld [hl+], a                                   ; $47b7: $22
    rst $38                                       ; $47b8: $ff
    inc sp                                        ; $47b9: $33
    ld b, h                                       ; $47ba: $44
    db $10                                        ; $47bb: $10
    ld d, d                                       ; $47bc: $52
    dec d                                         ; $47bd: $15
    ld a, a                                       ; $47be: $7f
    ld [hl+], a                                   ; $47bf: $22
    ld a, a                                       ; $47c0: $7f
    inc sp                                        ; $47c1: $33
    ld b, h                                       ; $47c2: $44
    db $10                                        ; $47c3: $10
    dec [hl]                                      ; $47c4: $35
    dec d                                         ; $47c5: $15
    ccf                                           ; $47c6: $3f

jr_0cf_47c7:
    ld [hl+], a                                   ; $47c7: $22
    ld a, a                                       ; $47c8: $7f
    inc sp                                        ; $47c9: $33
    cp l                                          ; $47ca: $bd
    ld [hl], a                                    ; $47cb: $77
    cp l                                          ; $47cc: $bd
    ld [hl], a                                    ; $47cd: $77
    cp l                                          ; $47ce: $bd
    ld [hl], a                                    ; $47cf: $77
    cp l                                          ; $47d0: $bd
    ld [hl], a                                    ; $47d1: $77
    sub e                                         ; $47d2: $93
    ld h, l                                       ; $47d3: $65
    cpl                                           ; $47d4: $2f
    ld c, c                                       ; $47d5: $49
    xor e                                         ; $47d6: $ab
    inc [hl]                                      ; $47d7: $34
    ld h, $14                                     ; $47d8: $26 $14
    ld b, h                                       ; $47da: $44
    db $10                                        ; $47db: $10
    or h                                          ; $47dc: $b4
    dec e                                         ; $47dd: $1d
    cp l                                          ; $47de: $bd
    ld [de], a                                    ; $47df: $12
    ld a, a                                       ; $47e0: $7f
    inc sp                                        ; $47e1: $33
    ld b, h                                       ; $47e2: $44
    db $10                                        ; $47e3: $10
    ld l, a                                       ; $47e4: $6f
    add hl, bc                                    ; $47e5: $09
    db $d3                                        ; $47e6: $d3
    ld de, $36f9                                  ; $47e7: $11 $f9 $36
    rst $30                                       ; $47ea: $f7
    ld [hl], c                                    ; $47eb: $71
    ld d, e                                       ; $47ec: $53
    ld c, l                                       ; $47ed: $4d
    adc $38                                       ; $47ee: $ce $38
    ld b, a                                       ; $47f0: $47
    jr @-$53                                      ; $47f1: $18 $ab

    ld b, c                                       ; $47f3: $41
    cp l                                          ; $47f4: $bd
    ld [hl], a                                    ; $47f5: $77
    cp l                                          ; $47f6: $bd
    ld [hl], a                                    ; $47f7: $77
    cp l                                          ; $47f8: $bd
    ld [hl], a                                    ; $47f9: $77
    ld b, b                                       ; $47fa: $40
    dec a                                         ; $47fb: $3d
    add b                                         ; $47fc: $80
    halt                                          ; $47fd: $76
    jr nz, @+$81                                  ; $47fe: $20 $7f

    cp l                                          ; $4800: $bd
    ld [hl], a                                    ; $4801: $77
    add hl, bc                                    ; $4802: $09
    ld [bc], a                                    ; $4803: $02
    db $ec                                        ; $4804: $ec
    ld [bc], a                                    ; $4805: $02
    pop af                                        ; $4806: $f1
    inc bc                                        ; $4807: $03
    cp l                                          ; $4808: $bd
    ld [hl], a                                    ; $4809: $77
    ld c, [hl]                                    ; $480a: $4e
    jr c, jr_0cf_4882                             ; $480b: $38 $75

    ld d, h                                       ; $480d: $54
    sbc d                                         ; $480e: $9a
    ld l, h                                       ; $480f: $6c
    cp l                                          ; $4810: $bd
    ld [hl], a                                    ; $4811: $77
    xor $08                                       ; $4812: $ee $08
    ld d, l                                       ; $4814: $55
    dec c                                         ; $4815: $0d
    sbc e                                         ; $4816: $9b
    ld de, $77bd                                  ; $4817: $11 $bd $77
    cp l                                          ; $481a: $bd
    ld [hl], a                                    ; $481b: $77
    cp l                                          ; $481c: $bd
    ld [hl], a                                    ; $481d: $77
    cp l                                          ; $481e: $bd
    ld [hl], a                                    ; $481f: $77
    cp l                                          ; $4820: $bd
    ld [hl], a                                    ; $4821: $77
    cp l                                          ; $4822: $bd
    ld [hl], a                                    ; $4823: $77
    cp l                                          ; $4824: $bd
    ld [hl], a                                    ; $4825: $77
    cp l                                          ; $4826: $bd
    ld [hl], a                                    ; $4827: $77
    cp l                                          ; $4828: $bd
    ld [hl], a                                    ; $4829: $77
    cp l                                          ; $482a: $bd
    ld [hl], a                                    ; $482b: $77
    cp l                                          ; $482c: $bd
    ld [hl], a                                    ; $482d: $77
    cp l                                          ; $482e: $bd
    ld [hl], a                                    ; $482f: $77
    cp l                                          ; $4830: $bd
    ld [hl], a                                    ; $4831: $77
    ldh [rP1], a                                  ; $4832: $e0 $00
    ld h, l                                       ; $4834: $65
    ld d, $4d                                     ; $4835: $16 $4d
    rra                                           ; $4837: $1f
    add l                                         ; $4838: $85
    dec e                                         ; $4839: $1d
    ldh [rP1], a                                  ; $483a: $e0 $00
    ld h, l                                       ; $483c: $65
    ld d, $4d                                     ; $483d: $16 $4d
    rra                                           ; $483f: $1f
    rst $38                                       ; $4840: $ff
    inc bc                                        ; $4841: $03
    and [hl]                                      ; $4842: $a6
    ld bc, $02aa                                  ; $4843: $01 $aa $02
    ld a, [c]                                     ; $4846: $f2
    inc bc                                        ; $4847: $03
    rst $38                                       ; $4848: $ff
    inc bc                                        ; $4849: $03
    ld b, l                                       ; $484a: $45
    dec c                                         ; $484b: $0d
    db $ec                                        ; $484c: $ec
    ld [bc], a                                    ; $484d: $02
    db $f4                                        ; $484e: $f4
    inc bc                                        ; $484f: $03
    add l                                         ; $4850: $85
    ld bc, $0d45                                  ; $4851: $01 $45 $0d
    rst $00                                       ; $4854: $c7
    ld a, [bc]                                    ; $4855: $0a
    ret nc                                        ; $4856: $d0

    daa                                           ; $4857: $27
    ld [bc], a                                    ; $4858: $02
    dec c                                         ; $4859: $0d
    ld b, l                                       ; $485a: $45
    dec c                                         ; $485b: $0d
    rst $00                                       ; $485c: $c7
    ld a, [bc]                                    ; $485d: $0a
    adc [hl]                                      ; $485e: $8e
    daa                                           ; $485f: $27
    rst $38                                       ; $4860: $ff
    inc bc                                        ; $4861: $03
    cp l                                          ; $4862: $bd
    ld [hl], a                                    ; $4863: $77
    cp l                                          ; $4864: $bd
    ld [hl], a                                    ; $4865: $77
    cp l                                          ; $4866: $bd
    ld [hl], a                                    ; $4867: $77
    cp l                                          ; $4868: $bd
    ld [hl], a                                    ; $4869: $77
    cp l                                          ; $486a: $bd
    ld [hl], a                                    ; $486b: $77
    cp l                                          ; $486c: $bd
    ld [hl], a                                    ; $486d: $77
    cp l                                          ; $486e: $bd
    ld [hl], a                                    ; $486f: $77
    cp l                                          ; $4870: $bd
    ld [hl], a                                    ; $4871: $77
    xor e                                         ; $4872: $ab
    ld b, c                                       ; $4873: $41
    cp l                                          ; $4874: $bd
    ld [hl], a                                    ; $4875: $77
    cp l                                          ; $4876: $bd
    ld [hl], a                                    ; $4877: $77
    cp l                                          ; $4878: $bd
    ld [hl], a                                    ; $4879: $77
    ld b, b                                       ; $487a: $40
    dec a                                         ; $487b: $3d
    add b                                         ; $487c: $80
    halt                                          ; $487d: $76
    jr nz, jr_0cf_48ff                            ; $487e: $20 $7f

    cp l                                          ; $4880: $bd
    ld [hl], a                                    ; $4881: $77

jr_0cf_4882:
    add hl, bc                                    ; $4882: $09
    ld [bc], a                                    ; $4883: $02
    db $ec                                        ; $4884: $ec
    ld [bc], a                                    ; $4885: $02
    pop af                                        ; $4886: $f1
    inc bc                                        ; $4887: $03
    cp l                                          ; $4888: $bd
    ld [hl], a                                    ; $4889: $77
    ld b, $2c                                     ; $488a: $06 $2c
    rst $08                                       ; $488c: $cf
    ld d, h                                       ; $488d: $54
    add sp, $03                                   ; $488e: $e8 $03
    nop                                           ; $4890: $00
    nop                                           ; $4891: $00
    jr jr_0cf_4894                                ; $4892: $18 $00

jr_0cf_4894:
    ld e, h                                       ; $4894: $5c
    ld bc, $031f                                  ; $4895: $01 $1f $03
    nop                                           ; $4898: $00
    nop                                           ; $4899: $00
    ld a, d                                       ; $489a: $7a
    ld bc, $021d                                  ; $489b: $01 $1d $02
    ld a, a                                       ; $489e: $7f
    inc bc                                        ; $489f: $03
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    cp l                                          ; $48a2: $bd
    ld [hl], a                                    ; $48a3: $77
    cp l                                          ; $48a4: $bd
    ld [hl], a                                    ; $48a5: $77
    cp l                                          ; $48a6: $bd
    ld [hl], a                                    ; $48a7: $77
    cp l                                          ; $48a8: $bd
    ld [hl], a                                    ; $48a9: $77
    cp l                                          ; $48aa: $bd
    ld [hl], a                                    ; $48ab: $77
    cp l                                          ; $48ac: $bd
    ld [hl], a                                    ; $48ad: $77
    cp l                                          ; $48ae: $bd
    ld [hl], a                                    ; $48af: $77
    cp l                                          ; $48b0: $bd
    ld [hl], a                                    ; $48b1: $77
    ld a, [c]                                     ; $48b2: $f2
    inc bc                                        ; $48b3: $03
    ld h, b                                       ; $48b4: $60

jr_0cf_48b5:
    inc bc                                        ; $48b5: $03
    and b                                         ; $48b6: $a0
    ld [bc], a                                    ; $48b7: $02
    jr nz, @+$04                                  ; $48b8: $20 $02

    ret nz                                        ; $48ba: $c0

    ld bc, $0100                                  ; $48bb: $01 $00 $01
    cp l                                          ; $48be: $bd
    ld [hl], a                                    ; $48bf: $77
    cp l                                          ; $48c0: $bd
    ld [hl], a                                    ; $48c1: $77
    xor e                                         ; $48c2: $ab
    ld a, a                                       ; $48c3: $7f
    nop                                           ; $48c4: $00
    ld a, [hl]                                    ; $48c5: $7e
    ldh [$4c], a                                  ; $48c6: $e0 $4c
    rst $38                                       ; $48c8: $ff
    ld a, a                                       ; $48c9: $7f
    ld a, [c]                                     ; $48ca: $f2
    inc bc                                        ; $48cb: $03
    nop                                           ; $48cc: $00
    ld a, [hl]                                    ; $48cd: $7e
    ldh [$4c], a                                  ; $48ce: $e0 $4c
    ld h, b                                       ; $48d0: $60
    inc bc                                        ; $48d1: $03
    and b                                         ; $48d2: $a0
    ld [bc], a                                    ; $48d3: $02
    nop                                           ; $48d4: $00
    ld a, [hl]                                    ; $48d5: $7e
    ldh [$4c], a                                  ; $48d6: $e0 $4c
    jr nz, @+$04                                  ; $48d8: $20 $02

    ret nz                                        ; $48da: $c0

    ld bc, $7e00                                  ; $48db: $01 $00 $7e
    ldh [$4c], a                                  ; $48de: $e0 $4c
    nop                                           ; $48e0: $00
    ld bc, $77bd                                  ; $48e1: $01 $bd $77
    nop                                           ; $48e4: $00
    ld a, [hl]                                    ; $48e5: $7e
    ldh [$4c], a                                  ; $48e6: $e0 $4c
    cp l                                          ; $48e8: $bd
    ld [hl], a                                    ; $48e9: $77
    db $fd                                        ; $48ea: $fd
    ld a, a                                       ; $48eb: $7f
    nop                                           ; $48ec: $00
    ld a, [hl]                                    ; $48ed: $7e
    ldh [$4c], a                                  ; $48ee: $e0 $4c
    cp l                                          ; $48f0: $bd
    ld [hl], a                                    ; $48f1: $77
    db $fd                                        ; $48f2: $fd
    ld a, a                                       ; $48f3: $7f
    db $fd                                        ; $48f4: $fd
    ld a, a                                       ; $48f5: $7f
    db $fd                                        ; $48f6: $fd
    ld a, a                                       ; $48f7: $7f
    db $fd                                        ; $48f8: $fd
    ld a, a                                       ; $48f9: $7f
    jr nz, jr_0cf_4955                            ; $48fa: $20 $59

    rst $38                                       ; $48fc: $ff
    inc de                                        ; $48fd: $13
    ld h, d                                       ; $48fe: $62

jr_0cf_48ff:
    inc bc                                        ; $48ff: $03
    jr nz, jr_0cf_4910                            ; $4900: $20 $0e

    db $fd                                        ; $4902: $fd
    ld a, a                                       ; $4903: $7f
    db $fd                                        ; $4904: $fd
    ld a, a                                       ; $4905: $7f
    db $fd                                        ; $4906: $fd
    ld a, a                                       ; $4907: $7f
    db $fd                                        ; $4908: $fd
    ld a, a                                       ; $4909: $7f
    nop                                           ; $490a: $00
    ld [$5d20], sp                                ; $490b: $08 $20 $5d
    ret nz                                        ; $490e: $c0

    ld b, b                                       ; $490f: $40

jr_0cf_4910:
    jr nz, jr_0cf_4920                            ; $4910: $20 $0e

    nop                                           ; $4912: $00
    jr nz, jr_0cf_48b5                            ; $4913: $20 $a0

    ld d, h                                       ; $4915: $54
    nop                                           ; $4916: $00
    ld a, [hl]                                    ; $4917: $7e
    ld a, [bc]                                    ; $4918: $0a
    ld a, a                                       ; $4919: $7f
    db $fd                                        ; $491a: $fd
    ld a, a                                       ; $491b: $7f
    db $fd                                        ; $491c: $fd
    ld a, a                                       ; $491d: $7f
    db $fd                                        ; $491e: $fd
    ld a, a                                       ; $491f: $7f

jr_0cf_4920:
    db $fd                                        ; $4920: $fd
    ld a, a                                       ; $4921: $7f
    db $fd                                        ; $4922: $fd
    ld a, a                                       ; $4923: $7f
    db $fd                                        ; $4924: $fd
    ld a, a                                       ; $4925: $7f
    db $fd                                        ; $4926: $fd
    ld a, a                                       ; $4927: $7f
    db $fd                                        ; $4928: $fd
    ld a, a                                       ; $4929: $7f
    db $fd                                        ; $492a: $fd
    ld a, a                                       ; $492b: $7f
    db $fd                                        ; $492c: $fd
    ld a, a                                       ; $492d: $7f
    db $fd                                        ; $492e: $fd
    ld a, a                                       ; $492f: $7f
    db $fd                                        ; $4930: $fd
    ld a, a                                       ; $4931: $7f
    ld d, d                                       ; $4932: $52
    ld c, d                                       ; $4933: $4a
    dec c                                         ; $4934: $0d
    ld b, h                                       ; $4935: $44
    cp l                                          ; $4936: $bd
    ld [hl], a                                    ; $4937: $77

jr_0cf_4938:
    cp l                                          ; $4938: $bd
    ld [hl], a                                    ; $4939: $77
    rlca                                          ; $493a: $07
    jr z, jr_0cf_494a                             ; $493b: $28 $0d

    ld b, h                                       ; $493d: $44
    ld [de], a                                    ; $493e: $12
    ld l, h                                       ; $493f: $6c
    rst $10                                       ; $4940: $d7
    ld a, l                                       ; $4941: $7d
    ld b, $28                                     ; $4942: $06 $28
    xor b                                         ; $4944: $a8
    ld b, h                                       ; $4945: $44
    ld c, e                                       ; $4946: $4b
    ld h, c                                       ; $4947: $61
    ld l, $7e                                     ; $4948: $2e $7e

jr_0cf_494a:
    cp l                                          ; $494a: $bd
    ld [hl], a                                    ; $494b: $77
    cp l                                          ; $494c: $bd
    ld [hl], a                                    ; $494d: $77
    cp l                                          ; $494e: $bd
    ld [hl], a                                    ; $494f: $77
    cp l                                          ; $4950: $bd
    ld [hl], a                                    ; $4951: $77
    ld h, b                                       ; $4952: $60
    inc b                                         ; $4953: $04
    nop                                           ; $4954: $00

jr_0cf_4955:
    ld de, $2ac0                                  ; $4955: $11 $c0 $2a
    ret nz                                        ; $4958: $c0

    ld b, e                                       ; $4959: $43
    ld h, [hl]                                    ; $495a: $66
    inc c                                         ; $495b: $0c
    push de                                       ; $495c: $d5
    nop                                           ; $495d: $00
    dec de                                        ; $495e: $1b
    ld [bc], a                                    ; $495f: $02
    cp a                                          ; $4960: $bf
    inc bc                                        ; $4961: $03
    rlca                                          ; $4962: $07
    jr z, jr_0cf_496f                             ; $4963: $28 $0a

    ld b, h                                       ; $4965: $44
    rrca                                          ; $4966: $0f
    ld l, h                                       ; $4967: $6c
    db $d3                                        ; $4968: $d3
    ld a, l                                       ; $4969: $7d
    rlca                                          ; $496a: $07
    jr z, jr_0cf_4938                             ; $496b: $28 $cb

    ld b, h                                       ; $496d: $44
    sub b                                         ; $496e: $90

jr_0cf_496f:
    ld l, l                                       ; $496f: $6d
    ld d, e                                       ; $4970: $53
    ld a, [hl]                                    ; $4971: $7e
    ld d, d                                       ; $4972: $52
    ld c, d                                       ; $4973: $4a
    dec c                                         ; $4974: $0d
    ld b, h                                       ; $4975: $44
    cp l                                          ; $4976: $bd
    ld [hl], a                                    ; $4977: $77

jr_0cf_4978:
    cp l                                          ; $4978: $bd
    ld [hl], a                                    ; $4979: $77
    rlca                                          ; $497a: $07
    jr z, jr_0cf_498a                             ; $497b: $28 $0d

    ld b, h                                       ; $497d: $44
    ld [de], a                                    ; $497e: $12
    ld l, h                                       ; $497f: $6c
    rst $10                                       ; $4980: $d7
    ld a, l                                       ; $4981: $7d
    ld b, $28                                     ; $4982: $06 $28
    xor b                                         ; $4984: $a8
    ld b, h                                       ; $4985: $44
    ld c, e                                       ; $4986: $4b
    ld h, c                                       ; $4987: $61
    ld l, $7e                                     ; $4988: $2e $7e

jr_0cf_498a:
    cp l                                          ; $498a: $bd
    ld [hl], a                                    ; $498b: $77
    cp l                                          ; $498c: $bd
    ld [hl], a                                    ; $498d: $77
    cp l                                          ; $498e: $bd
    ld [hl], a                                    ; $498f: $77
    cp l                                          ; $4990: $bd
    ld [hl], a                                    ; $4991: $77
    jr nz, jr_0cf_49c3                            ; $4992: $20 $2f

    add b                                         ; $4994: $80
    jr nc, @+$6a                                  ; $4995: $30 $68

    ld l, l                                       ; $4997: $6d
    rst $38                                       ; $4998: $ff
    inc bc                                        ; $4999: $03
    ld h, [hl]                                    ; $499a: $66
    inc c                                         ; $499b: $0c
    add b                                         ; $499c: $80
    jr nc, @+$62                                  ; $499d: $30 $60

    rlca                                          ; $499f: $07
    rst $38                                       ; $49a0: $ff
    inc bc                                        ; $49a1: $03
    ld h, [hl]                                    ; $49a2: $66
    inc c                                         ; $49a3: $0c
    rrca                                          ; $49a4: $0f
    ld e, b                                       ; $49a5: $58
    ld h, b                                       ; $49a6: $60
    rlca                                          ; $49a7: $07
    rst $38                                       ; $49a8: $ff
    inc bc                                        ; $49a9: $03
    rlca                                          ; $49aa: $07
    jr z, jr_0cf_4978                             ; $49ab: $28 $cb

    ld b, h                                       ; $49ad: $44
    sub b                                         ; $49ae: $90
    ld l, l                                       ; $49af: $6d
    ld d, e                                       ; $49b0: $53
    ld a, [hl]                                    ; $49b1: $7e
    ld d, $5a                                     ; $49b2: $16 $5a
    adc $38                                       ; $49b4: $ce $38
    add hl, bc                                    ; $49b6: $09
    inc h                                         ; $49b7: $24
    ld b, $18                                     ; $49b8: $06 $18
    cp a                                          ; $49ba: $bf
    ld b, a                                       ; $49bb: $47
    ld e, $03                                     ; $49bc: $1e $03
    ld [hl], a                                    ; $49be: $77
    ld [bc], a                                    ; $49bf: $02
    and [hl]                                      ; $49c0: $a6
    nop                                           ; $49c1: $00
    sbc a                                         ; $49c2: $9f

jr_0cf_49c3:
    ld a, [hl+]                                   ; $49c3: $2a
    sbc $01                                       ; $49c4: $de $01
    ld a, b                                       ; $49c6: $78
    ld bc, $0086                                  ; $49c7: $01 $86 $00
    cp a                                          ; $49ca: $bf
    dec h                                         ; $49cb: $25
    ld a, [de]                                    ; $49cc: $1a
    nop                                           ; $49cd: $00
    inc d                                         ; $49ce: $14
    nop                                           ; $49cf: $00
    ld b, $00                                     ; $49d0: $06 $00
    adc b                                         ; $49d2: $88
    ld [hl], d                                    ; $49d3: $72
    push bc                                       ; $49d4: $c5
    ld e, l                                       ; $49d5: $5d
    call nz, $0134                                ; $49d6: $c4 $34 $01
    jr jr_0cf_4a3b                                ; $49d9: $18 $60

    inc bc                                        ; $49db: $03
    ret nz                                        ; $49dc: $c0

    ld b, $c0                                     ; $49dd: $06 $c0
    add hl, bc                                    ; $49df: $09
    ret nz                                        ; $49e0: $c0

    inc c                                         ; $49e1: $0c
    ld a, [$d347]                                 ; $49e2: $fa $47 $d3
    inc bc                                        ; $49e5: $03
    rst $28                                       ; $49e6: $ef
    ld [bc], a                                    ; $49e7: $02
    call nz, $1600                                ; $49e8: $c4 $00 $16
    ld a, [hl]                                    ; $49eb: $7e
    xor $50                                       ; $49ec: $ee $50
    ld [$0440], sp                                ; $49ee: $08 $40 $04
    inc e                                         ; $49f1: $1c
    xor e                                         ; $49f2: $ab
    ld b, c                                       ; $49f3: $41
    cp l                                          ; $49f4: $bd
    ld [hl], a                                    ; $49f5: $77
    cp l                                          ; $49f6: $bd
    ld [hl], a                                    ; $49f7: $77
    cp l                                          ; $49f8: $bd
    ld [hl], a                                    ; $49f9: $77
    ld b, b                                       ; $49fa: $40
    dec a                                         ; $49fb: $3d
    add b                                         ; $49fc: $80
    halt                                          ; $49fd: $76
    jr nz, jr_0cf_4a7f                            ; $49fe: $20 $7f

    nop                                           ; $4a00: $00
    nop                                           ; $4a01: $00
    add hl, bc                                    ; $4a02: $09
    ld [bc], a                                    ; $4a03: $02
    db $ec                                        ; $4a04: $ec
    ld [bc], a                                    ; $4a05: $02
    pop af                                        ; $4a06: $f1
    inc bc                                        ; $4a07: $03
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    dec bc                                        ; $4a0a: $0b
    inc a                                         ; $4a0b: $3c
    jr nc, @+$56                                  ; $4a0c: $30 $54

    ld a, b                                       ; $4a0e: $78
    ld a, h                                       ; $4a0f: $7c
    nop                                           ; $4a10: $00
    nop                                           ; $4a11: $00
    jr nz, jr_0cf_4a4d                            ; $4a12: $20 $39

    nop                                           ; $4a14: $00
    ld l, [hl]                                    ; $4a15: $6e
    add b                                         ; $4a16: $80
    ld [hl], d                                    ; $4a17: $72
    nop                                           ; $4a18: $00
    nop                                           ; $4a19: $00
    ret nz                                        ; $4a1a: $c0

    ld bc, $02cb                                  ; $4a1b: $01 $cb $02
    ld [hl], c                                    ; $4a1e: $71
    inc bc                                        ; $4a1f: $03
    nop                                           ; $4a20: $00
    nop                                           ; $4a21: $00
    ld l, h                                       ; $4a22: $6c
    ld [bc], a                                    ; $4a23: $02
    ld c, a                                       ; $4a24: $4f
    inc bc                                        ; $4a25: $03
    push af                                       ; $4a26: $f5
    inc bc                                        ; $4a27: $03
    nop                                           ; $4a28: $00
    nop                                           ; $4a29: $00
    cp l                                          ; $4a2a: $bd
    ld [hl], a                                    ; $4a2b: $77
    cp l                                          ; $4a2c: $bd
    ld [hl], a                                    ; $4a2d: $77
    cp l                                          ; $4a2e: $bd
    ld [hl], a                                    ; $4a2f: $77
    cp l                                          ; $4a30: $bd
    ld [hl], a                                    ; $4a31: $77
    add d                                         ; $4a32: $82
    ld bc, $03a4                                  ; $4a33: $01 $a4 $03
    cp h                                          ; $4a36: $bc
    ld bc, $00f2                                  ; $4a37: $01 $f2 $00
    add d                                         ; $4a3a: $82

jr_0cf_4a3b:
    ld bc, $03a4                                  ; $4a3b: $01 $a4 $03
    sbc $3f                                       ; $4a3e: $de $3f
    cp h                                          ; $4a40: $bc
    ld bc, $0182                                  ; $4a41: $01 $82 $01
    and h                                         ; $4a44: $a4
    inc bc                                        ; $4a45: $03
    sbc $3f                                       ; $4a46: $de $3f
    ccf                                           ; $4a48: $3f

Call_0cf_4a49:
    ld [bc], a                                    ; $4a49: $02
    ld a, [c]                                     ; $4a4a: $f2
    nop                                           ; $4a4b: $00
    cp h                                          ; $4a4c: $bc

jr_0cf_4a4d:
    ld bc, $021f                                  ; $4a4d: $01 $1f $02
    ld l, e                                       ; $4a50: $6b
    nop                                           ; $4a51: $00
    add d                                         ; $4a52: $82
    ld bc, $03a4                                  ; $4a53: $01 $a4 $03
    ld a, c                                       ; $4a56: $79
    ld bc, $023f                                  ; $4a57: $01 $3f $02
    add d                                         ; $4a5a: $82
    ld bc, $03a4                                  ; $4a5b: $01 $a4 $03
    sbc $3f                                       ; $4a5e: $de $3f
    cp h                                          ; $4a60: $bc
    ld bc, $0182                                  ; $4a61: $01 $82 $01
    and h                                         ; $4a64: $a4
    inc bc                                        ; $4a65: $03
    sbc $3f                                       ; $4a66: $de $3f
    ld a, [c]                                     ; $4a68: $f2
    nop                                           ; $4a69: $00
    add d                                         ; $4a6a: $82
    ld bc, $03a4                                  ; $4a6b: $01 $a4 $03
    ld a, [c]                                     ; $4a6e: $f2
    nop                                           ; $4a6f: $00
    ld l, e                                       ; $4a70: $6b
    nop                                           ; $4a71: $00
    xor l                                         ; $4a72: $ad
    halt                                          ; $4a73: $76
    ld [hl], b                                    ; $4a74: $70
    ld e, l                                       ; $4a75: $5d
    xor d                                         ; $4a76: $aa
    ld b, b                                       ; $4a77: $40
    adc a                                         ; $4a78: $8f
    ld d, d                                       ; $4a79: $52
    call nc, $f27e                                ; $4a7a: $d4 $7e $f2
    ld h, l                                       ; $4a7d: $65
    dec bc                                        ; $4a7e: $0b

jr_0cf_4a7f:
    ld d, c                                       ; $4a7f: $51
    adc a                                         ; $4a80: $8f
    ld d, d                                       ; $4a81: $52
    adc l                                         ; $4a82: $8d
    halt                                          ; $4a83: $76
    add sp, $5d                                   ; $4a84: $e8 $5d
    ld b, l                                       ; $4a86: $45
    ld b, c                                       ; $4a87: $41
    adc a                                         ; $4a88: $8f
    ld d, d                                       ; $4a89: $52
    db $db                                        ; $4a8a: $db
    ld [hl], a                                    ; $4a8b: $77
    dec c                                         ; $4a8c: $0d
    ld e, a                                       ; $4a8d: $5f
    add [hl]                                      ; $4a8e: $86
    ld c, d                                       ; $4a8f: $4a
    ld b, [hl]                                    ; $4a90: $46
    ld b, l                                       ; $4a91: $45
    db $dd                                        ; $4a92: $dd
    ld l, e                                       ; $4a93: $6b
    push af                                       ; $4a94: $f5
    ld b, [hl]                                    ; $4a95: $46
    pop de                                        ; $4a96: $d1
    ld h, $46                                     ; $4a97: $26 $46
    ld b, l                                       ; $4a99: $45
    jp c, $4e7b                                   ; $4a9a: $da $7b $4e

    ld [hl], e                                    ; $4a9d: $73
    ld hl, $4646                                  ; $4a9e: $21 $46 $46
    ld b, l                                       ; $4aa1: $45
    ldh [$03], a                                  ; $4aa2: $e0 $03
    ret nz                                        ; $4aa4: $c0

    inc bc                                        ; $4aa5: $03
    add b                                         ; $4aa6: $80
    inc bc                                        ; $4aa7: $03
    cp l                                          ; $4aa8: $bd

jr_0cf_4aa9:
    ld [hl], a                                    ; $4aa9: $77
    cp l                                          ; $4aaa: $bd
    ld [hl], a                                    ; $4aab: $77
    cp l                                          ; $4aac: $bd
    ld [hl], a                                    ; $4aad: $77
    cp l                                          ; $4aae: $bd
    ld [hl], a                                    ; $4aaf: $77
    cp l                                          ; $4ab0: $bd
    ld [hl], a                                    ; $4ab1: $77
    ld c, $30                                     ; $4ab2: $0e $30
    call c, Call_000_3953                         ; $4ab4: $dc $53 $39
    ld a, $09                                     ; $4ab7: $3e $09
    jr nz, jr_0cf_4ace                            ; $4ab9: $20 $13

    ld b, b                                       ; $4abb: $40
    call c, $f053                                 ; $4abc: $dc $53 $f0
    ld [hl+], a                                   ; $4abf: $22
    ld c, $30                                     ; $4ac0: $0e $30
    inc de                                        ; $4ac2: $13
    ld b, b                                       ; $4ac3: $40
    call c, $f053                                 ; $4ac4: $dc $53 $f0
    ld [hl+], a                                   ; $4ac7: $22
    add hl, bc                                    ; $4ac8: $09
    jr nz, jr_0cf_4ad9                            ; $4ac9: $20 $0e

    jr nc, jr_0cf_4aa9                            ; $4acb: $30 $dc

    ld d, e                                       ; $4acd: $53

jr_0cf_4ace:
    ldh a, [rNR43]                                ; $4ace: $f0 $22
    add hl, bc                                    ; $4ad0: $09
    jr nz, jr_0cf_4ad9                            ; $4ad1: $20 $06

    inc d                                         ; $4ad3: $14
    call c, $f053                                 ; $4ad4: $dc $53 $f0
    ld [hl+], a                                   ; $4ad7: $22
    add hl, bc                                    ; $4ad8: $09

jr_0cf_4ad9:
    jr nz, jr_0cf_4ae9                            ; $4ad9: $20 $0e

    jr nc, jr_0cf_4b54                            ; $4adb: $30 $77

    ld [bc], a                                    ; $4add: $02
    call c, $0953                                 ; $4ade: $dc $53 $09
    jr nz, @-$07                                  ; $4ae1: $20 $f7

    ld e, [hl]                                    ; $4ae3: $5e
    rst $30                                       ; $4ae4: $f7
    ld e, [hl]                                    ; $4ae5: $5e
    rst $30                                       ; $4ae6: $f7
    ld e, [hl]                                    ; $4ae7: $5e
    rst $30                                       ; $4ae8: $f7

jr_0cf_4ae9:
    ld e, [hl]                                    ; $4ae9: $5e
    rst $30                                       ; $4aea: $f7
    ld e, [hl]                                    ; $4aeb: $5e
    rst $30                                       ; $4aec: $f7
    ld e, [hl]                                    ; $4aed: $5e
    rst $30                                       ; $4aee: $f7
    ld e, [hl]                                    ; $4aef: $5e
    rst $30                                       ; $4af0: $f7
    ld e, [hl]                                    ; $4af1: $5e
    rlca                                          ; $4af2: $07
    jr z, jr_0cf_4aff                             ; $4af3: $28 $0a

    ld b, h                                       ; $4af5: $44
    ld c, $6c                                     ; $4af6: $0e $6c
    pop de                                        ; $4af8: $d1
    ld a, l                                       ; $4af9: $7d
    rlca                                          ; $4afa: $07
    jr z, @+$0f                                   ; $4afb: $28 $0d

    ld b, h                                       ; $4afd: $44
    ld [de], a                                    ; $4afe: $12

jr_0cf_4aff:
    ld l, h                                       ; $4aff: $6c
    rst $10                                       ; $4b00: $d7

Call_0cf_4b01:
    ld a, l                                       ; $4b01: $7d
    rlca                                          ; $4b02: $07
    db $10                                        ; $4b03: $10
    ld [de], a                                    ; $4b04: $12
    ld b, b                                       ; $4b05: $40
    jr jr_0cf_4b64                                ; $4b06: $18 $5c

    call c, Call_000_077d                         ; $4b08: $dc $7d $07
    inc b                                         ; $4b0b: $04
    inc d                                         ; $4b0c: $14
    nop                                           ; $4b0d: $00
    ld a, [$3c00]                                 ; $4b0e: $fa $00 $3c
    ld [bc], a                                    ; $4b11: $02
    rlca                                          ; $4b12: $07
    inc b                                         ; $4b13: $04
    sub e                                         ; $4b14: $93
    dec e                                         ; $4b15: $1d
    cp c                                          ; $4b16: $b9
    ld [bc], a                                    ; $4b17: $02
    ld a, [$f737]                                 ; $4b18: $fa $37 $f7
    ld e, [hl]                                    ; $4b1b: $5e
    rst $30                                       ; $4b1c: $f7
    ld e, [hl]                                    ; $4b1d: $5e
    rst $30                                       ; $4b1e: $f7
    ld e, [hl]                                    ; $4b1f: $5e
    rst $30                                       ; $4b20: $f7
    ld e, [hl]                                    ; $4b21: $5e
    rst $30                                       ; $4b22: $f7
    ld e, [hl]                                    ; $4b23: $5e
    rst $30                                       ; $4b24: $f7
    ld e, [hl]                                    ; $4b25: $5e
    rst $30                                       ; $4b26: $f7
    ld e, [hl]                                    ; $4b27: $5e
    rst $30                                       ; $4b28: $f7
    ld e, [hl]                                    ; $4b29: $5e
    rst $30                                       ; $4b2a: $f7
    ld e, [hl]                                    ; $4b2b: $5e
    rst $30                                       ; $4b2c: $f7
    ld e, [hl]                                    ; $4b2d: $5e
    rst $30                                       ; $4b2e: $f7
    ld e, [hl]                                    ; $4b2f: $5e
    rst $30                                       ; $4b30: $f7
    ld e, [hl]                                    ; $4b31: $5e
    rlca                                          ; $4b32: $07
    jr z, jr_0cf_4b3f                             ; $4b33: $28 $0a

    ld b, h                                       ; $4b35: $44
    ld c, $6c                                     ; $4b36: $0e $6c
    pop de                                        ; $4b38: $d1
    ld a, l                                       ; $4b39: $7d
    rlca                                          ; $4b3a: $07
    jr z, @+$0f                                   ; $4b3b: $28 $0d

    ld b, h                                       ; $4b3d: $44
    ld [de], a                                    ; $4b3e: $12

jr_0cf_4b3f:
    ld l, h                                       ; $4b3f: $6c
    rst $10                                       ; $4b40: $d7
    ld a, l                                       ; $4b41: $7d
    rlca                                          ; $4b42: $07
    db $10                                        ; $4b43: $10
    ld [de], a                                    ; $4b44: $12
    ld b, b                                       ; $4b45: $40
    jr jr_0cf_4ba4                                ; $4b46: $18 $5c

    call c, Call_000_077d                         ; $4b48: $dc $7d $07
    inc b                                         ; $4b4b: $04
    inc d                                         ; $4b4c: $14
    nop                                           ; $4b4d: $00
    ld a, [$3c00]                                 ; $4b4e: $fa $00 $3c
    ld [bc], a                                    ; $4b51: $02
    rst $30                                       ; $4b52: $f7
    ld e, [hl]                                    ; $4b53: $5e

jr_0cf_4b54:
    rst $30                                       ; $4b54: $f7
    ld e, [hl]                                    ; $4b55: $5e
    rst $30                                       ; $4b56: $f7
    ld e, [hl]                                    ; $4b57: $5e
    rst $30                                       ; $4b58: $f7
    ld e, [hl]                                    ; $4b59: $5e
    rst $30                                       ; $4b5a: $f7
    ld e, [hl]                                    ; $4b5b: $5e
    rst $30                                       ; $4b5c: $f7
    ld e, [hl]                                    ; $4b5d: $5e
    rst $30                                       ; $4b5e: $f7
    ld e, [hl]                                    ; $4b5f: $5e
    rst $30                                       ; $4b60: $f7
    ld e, [hl]                                    ; $4b61: $5e
    rst $30                                       ; $4b62: $f7
    ld e, [hl]                                    ; $4b63: $5e

jr_0cf_4b64:
    rst $30                                       ; $4b64: $f7
    ld e, [hl]                                    ; $4b65: $5e
    rst $30                                       ; $4b66: $f7
    ld e, [hl]                                    ; $4b67: $5e
    rst $30                                       ; $4b68: $f7
    ld e, [hl]                                    ; $4b69: $5e
    rst $30                                       ; $4b6a: $f7
    ld e, [hl]                                    ; $4b6b: $5e
    rst $30                                       ; $4b6c: $f7
    ld e, [hl]                                    ; $4b6d: $5e
    rst $30                                       ; $4b6e: $f7
    ld e, [hl]                                    ; $4b6f: $5e
    rst $30                                       ; $4b70: $f7
    ld e, [hl]                                    ; $4b71: $5e
    ld d, d                                       ; $4b72: $52
    ld c, d                                       ; $4b73: $4a
    ret nc                                        ; $4b74: $d0

    nop                                           ; $4b75: $00
    cp l                                          ; $4b76: $bd
    ld [hl], a                                    ; $4b77: $77
    cp l                                          ; $4b78: $bd
    ld [hl], a                                    ; $4b79: $77
    add hl, bc                                    ; $4b7a: $09
    nop                                           ; $4b7b: $00
    xor [hl]                                      ; $4b7c: $ae
    nop                                           ; $4b7d: $00
    ld e, e                                       ; $4b7e: $5b
    ld [bc], a                                    ; $4b7f: $02
    ld a, $37                                     ; $4b80: $3e $37
    add hl, bc                                    ; $4b82: $09
    nop                                           ; $4b83: $00
    ret nc                                        ; $4b84: $d0

    nop                                           ; $4b85: $00
    ld c, e                                       ; $4b86: $4b
    ld h, c                                       ; $4b87: $61
    ld l, $7e                                     ; $4b88: $2e $7e
    cp l                                          ; $4b8a: $bd
    ld [hl], a                                    ; $4b8b: $77
    ret nc                                        ; $4b8c: $d0

    nop                                           ; $4b8d: $00
    cp l                                          ; $4b8e: $bd
    ld [hl], a                                    ; $4b8f: $77
    cp l                                          ; $4b90: $bd
    ld [hl], a                                    ; $4b91: $77
    add hl, bc                                    ; $4b92: $09
    nop                                           ; $4b93: $00
    ret nc                                        ; $4b94: $d0

    nop                                           ; $4b95: $00
    ret nz                                        ; $4b96: $c0

    ld a, [hl+]                                   ; $4b97: $2a
    ret nz                                        ; $4b98: $c0

    ld b, e                                       ; $4b99: $43
    ld h, [hl]                                    ; $4b9a: $66
    inc c                                         ; $4b9b: $0c
    ret nc                                        ; $4b9c: $d0

    nop                                           ; $4b9d: $00
    rst $18                                       ; $4b9e: $df
    ld bc, $03bf                                  ; $4b9f: $01 $bf $03
    add hl, bc                                    ; $4ba2: $09
    nop                                           ; $4ba3: $00

jr_0cf_4ba4:
    ret nc                                        ; $4ba4: $d0

    nop                                           ; $4ba5: $00
    rst $38                                       ; $4ba6: $ff
    ld [bc], a                                    ; $4ba7: $02
    sbc $6f                                       ; $4ba8: $de $6f
    add hl, bc                                    ; $4baa: $09
    nop                                           ; $4bab: $00
    ret nc                                        ; $4bac: $d0

    nop                                           ; $4bad: $00
    cp a                                          ; $4bae: $bf
    ld [bc], a                                    ; $4baf: $02
    sbc $6f                                       ; $4bb0: $de $6f
    ld a, a                                       ; $4bb2: $7f
    ld [bc], a                                    ; $4bb3: $02
    ld a, d                                       ; $4bb4: $7a
    nop                                           ; $4bb5: $00
    dec c                                         ; $4bb6: $0d
    nop                                           ; $4bb7: $00
    inc b                                         ; $4bb8: $04
    nop                                           ; $4bb9: $00
    ei                                            ; $4bba: $fb
    ld [bc], a                                    ; $4bbb: $02
    ld d, [hl]                                    ; $4bbc: $56
    ld bc, $0068                                  ; $4bbd: $01 $68 $00
    inc b                                         ; $4bc0: $04
    nop                                           ; $4bc1: $00
    rst $30                                       ; $4bc2: $f7
    inc bc                                        ; $4bc3: $03
    rrca                                          ; $4bc4: $0f
    inc bc                                        ; $4bc5: $03
    adc b                                         ; $4bc6: $88
    ld bc, $0060                                  ; $4bc7: $01 $60 $00
    xor h                                         ; $4bca: $ac
    ld h, [hl]                                    ; $4bcb: $66
    push bc                                       ; $4bcc: $c5
    ld d, c                                       ; $4bcd: $51
    ld b, h                                       ; $4bce: $44
    dec a                                         ; $4bcf: $3d
    ld h, b                                       ; $4bd0: $60
    nop                                           ; $4bd1: $00
    or a                                          ; $4bd2: $b7
    ld l, l                                       ; $4bd3: $6d
    ld sp, $4b51                                  ; $4bd4: $31 $51 $4b
    jr c, @+$62                                   ; $4bd7: $38 $60

    nop                                           ; $4bd9: $00
    cp l                                          ; $4bda: $bd
    ld [hl], a                                    ; $4bdb: $77
    cp l                                          ; $4bdc: $bd
    ld [hl], a                                    ; $4bdd: $77
    cp l                                          ; $4bde: $bd
    ld [hl], a                                    ; $4bdf: $77
    cp l                                          ; $4be0: $bd
    ld [hl], a                                    ; $4be1: $77
    cp l                                          ; $4be2: $bd
    ld [hl], a                                    ; $4be3: $77
    cp l                                          ; $4be4: $bd
    ld [hl], a                                    ; $4be5: $77
    cp l                                          ; $4be6: $bd
    ld [hl], a                                    ; $4be7: $77
    cp l                                          ; $4be8: $bd
    ld [hl], a                                    ; $4be9: $77
    cp l                                          ; $4bea: $bd
    ld [hl], a                                    ; $4beb: $77
    cp l                                          ; $4bec: $bd
    ld [hl], a                                    ; $4bed: $77
    cp l                                          ; $4bee: $bd
    ld [hl], a                                    ; $4bef: $77
    cp l                                          ; $4bf0: $bd
    ld [hl], a                                    ; $4bf1: $77
    db $10                                        ; $4bf2: $10
    ld b, d                                       ; $4bf3: $42
    db $10                                        ; $4bf4: $10
    ld b, d                                       ; $4bf5: $42
    ld a, [bc]                                    ; $4bf6: $0a
    inc sp                                        ; $4bf7: $33
    cp l                                          ; $4bf8: $bd
    ld [hl], a                                    ; $4bf9: $77
    ld l, [hl]                                    ; $4bfa: $6e
    inc bc                                        ; $4bfb: $03
    ld h, h                                       ; $4bfc: $64
    jr nz, jr_0cf_4bff                            ; $4bfd: $20 $00

jr_0cf_4bff:
    ld d, c                                       ; $4bff: $51
    ld c, l                                       ; $4c00: $4d
    ld a, d                                       ; $4c01: $7a
    or $03                                        ; $4c02: $f6 $03
    ld h, h                                       ; $4c04: $64
    jr nz, jr_0cf_4c07                            ; $4c05: $20 $00

jr_0cf_4c07:
    ld d, c                                       ; $4c07: $51
    ld c, l                                       ; $4c08: $4d
    ld a, d                                       ; $4c09: $7a
    rst $38                                       ; $4c0a: $ff
    inc bc                                        ; $4c0b: $03
    ld h, h                                       ; $4c0c: $64
    jr nz, jr_0cf_4c0f                            ; $4c0d: $20 $00

jr_0cf_4c0f:
    ld d, c                                       ; $4c0f: $51
    ld c, l                                       ; $4c10: $4d
    ld a, d                                       ; $4c11: $7a
    add hl, bc                                    ; $4c12: $09
    nop                                           ; $4c13: $00
    ret nc                                        ; $4c14: $d0

    nop                                           ; $4c15: $00
    ret nz                                        ; $4c16: $c0

    ld a, [hl+]                                   ; $4c17: $2a
    ret nz                                        ; $4c18: $c0

    ld b, e                                       ; $4c19: $43
    rst $38                                       ; $4c1a: $ff
    ld a, a                                       ; $4c1b: $7f
    ld h, h                                       ; $4c1c: $64
    jr nz, jr_0cf_4c1f                            ; $4c1d: $20 $00

jr_0cf_4c1f:
    ld d, c                                       ; $4c1f: $51
    ld c, l                                       ; $4c20: $4d
    ld a, d                                       ; $4c21: $7a
    add hl, bc                                    ; $4c22: $09
    nop                                           ; $4c23: $00
    ret nc                                        ; $4c24: $d0

    nop                                           ; $4c25: $00
    rst $38                                       ; $4c26: $ff
    ld [bc], a                                    ; $4c27: $02
    sbc $6f                                       ; $4c28: $de $6f
    add hl, bc                                    ; $4c2a: $09
    nop                                           ; $4c2b: $00
    ret nc                                        ; $4c2c: $d0

    nop                                           ; $4c2d: $00
    cp a                                          ; $4c2e: $bf
    ld [bc], a                                    ; $4c2f: $02
    sbc $6f                                       ; $4c30: $de $6f
    ld l, $00                                     ; $4c32: $2e $00
    cp c                                          ; $4c34: $b9
    nop                                           ; $4c35: $00
    rst $18                                       ; $4c36: $df
    ld bc, $1c07                                  ; $4c37: $01 $07 $1c
    add hl, bc                                    ; $4c3a: $09
    inc bc                                        ; $4c3b: $03
    cp c                                          ; $4c3c: $b9
    nop                                           ; $4c3d: $00
    rst $18                                       ; $4c3e: $df
    ld bc, $037f                                  ; $4c3f: $01 $7f $03
    cp l                                          ; $4c42: $bd
    ld [hl], a                                    ; $4c43: $77
    dec bc                                        ; $4c44: $0b
    inc [hl]                                      ; $4c45: $34
    add hl, bc                                    ; $4c46: $09
    jr z, @+$09                                   ; $4c47: $28 $07

    inc e                                         ; $4c49: $1c
    ld l, $00                                     ; $4c4a: $2e $00
    cp c                                          ; $4c4c: $b9
    nop                                           ; $4c4d: $00
    rst $18                                       ; $4c4e: $df
    ld bc, $1005                                  ; $4c4f: $01 $05 $10
    cp l                                          ; $4c52: $bd
    ld [hl], a                                    ; $4c53: $77
    cp l                                          ; $4c54: $bd
    ld [hl], a                                    ; $4c55: $77
    cp l                                          ; $4c56: $bd
    ld [hl], a                                    ; $4c57: $77
    cp l                                          ; $4c58: $bd
    ld [hl], a                                    ; $4c59: $77
    cp l                                          ; $4c5a: $bd
    ld [hl], a                                    ; $4c5b: $77
    cp l                                          ; $4c5c: $bd
    ld [hl], a                                    ; $4c5d: $77
    cp l                                          ; $4c5e: $bd
    ld [hl], a                                    ; $4c5f: $77
    cp l                                          ; $4c60: $bd
    ld [hl], a                                    ; $4c61: $77
    cp l                                          ; $4c62: $bd
    ld [hl], a                                    ; $4c63: $77
    cp l                                          ; $4c64: $bd
    ld [hl], a                                    ; $4c65: $77
    cp l                                          ; $4c66: $bd
    ld [hl], a                                    ; $4c67: $77
    cp l                                          ; $4c68: $bd
    ld [hl], a                                    ; $4c69: $77
    cp l                                          ; $4c6a: $bd
    ld [hl], a                                    ; $4c6b: $77
    cp l                                          ; $4c6c: $bd
    ld [hl], a                                    ; $4c6d: $77
    cp l                                          ; $4c6e: $bd
    ld [hl], a                                    ; $4c6f: $77
    cp l                                          ; $4c70: $bd
    ld [hl], a                                    ; $4c71: $77
    ld [hl], e                                    ; $4c72: $73
    ld c, [hl]                                    ; $4c73: $4e
    cp l                                          ; $4c74: $bd
    ld a, a                                       ; $4c75: $7f
    rlca                                          ; $4c76: $07
    ld a, a                                       ; $4c77: $7f
    ld c, $7a                                     ; $4c78: $0e $7a
    cp l                                          ; $4c7a: $bd
    ld [hl], a                                    ; $4c7b: $77
    cp l                                          ; $4c7c: $bd
    ld [hl], a                                    ; $4c7d: $77
    cp l                                          ; $4c7e: $bd
    ld [hl], a                                    ; $4c7f: $77
    cp l                                          ; $4c80: $bd
    ld [hl], a                                    ; $4c81: $77
    cp l                                          ; $4c82: $bd
    ld [hl], a                                    ; $4c83: $77
    cp l                                          ; $4c84: $bd
    ld [hl], a                                    ; $4c85: $77
    cp l                                          ; $4c86: $bd
    ld [hl], a                                    ; $4c87: $77
    cp l                                          ; $4c88: $bd
    ld [hl], a                                    ; $4c89: $77
    ld a, a                                       ; $4c8a: $7f
    ld l, a                                       ; $4c8b: $6f
    rst $38                                       ; $4c8c: $ff
    ld e, [hl]                                    ; $4c8d: $5e
    ld a, a                                       ; $4c8e: $7f
    ld c, [hl]                                    ; $4c8f: $4e
    rst $38                                       ; $4c90: $ff
    dec a                                         ; $4c91: $3d
    rst $38                                       ; $4c92: $ff
    ld l, a                                       ; $4c93: $6f
    sbc $67                                       ; $4c94: $de $67
    sbc h                                         ; $4c96: $9c
    ld e, a                                       ; $4c97: $5f
    ld e, d                                       ; $4c98: $5a
    ld d, a                                       ; $4c99: $57
    ld a, [$b82f]                                 ; $4c9a: $fa $2f $b8
    daa                                           ; $4c9d: $27
    sub [hl]                                      ; $4c9e: $96
    inc hl                                        ; $4c9f: $23
    ld d, h                                       ; $4ca0: $54
    dec de                                        ; $4ca1: $1b
    ldh [$03], a                                  ; $4ca2: $e0 $03
    ret nz                                        ; $4ca4: $c0

    inc bc                                        ; $4ca5: $03
    add b                                         ; $4ca6: $80
    inc bc                                        ; $4ca7: $03
    ld h, b                                       ; $4ca8: $60
    inc bc                                        ; $4ca9: $03
    db $fd                                        ; $4caa: $fd
    ld a, a                                       ; $4cab: $7f
    db $db                                        ; $4cac: $db
    ld a, e                                       ; $4cad: $7b
    sbc c                                         ; $4cae: $99
    ld [hl], e                                    ; $4caf: $73
    ld [hl], a                                    ; $4cb0: $77
    ld l, a                                       ; $4cb1: $6f
    ld l, b                                       ; $4cb2: $68
    dec l                                         ; $4cb3: $2d
    ld de, $9b40                                  ; $4cb4: $11 $40 $9b
    ld e, l                                       ; $4cb7: $5d
    ld e, a                                       ; $4cb8: $5f
    ld a, a                                       ; $4cb9: $7f
    ld b, $21                                     ; $4cba: $06 $21
    nop                                           ; $4cbc: $00
    nop                                           ; $4cbd: $00
    nop                                           ; $4cbe: $00
    nop                                           ; $4cbf: $00
    nop                                           ; $4cc0: $00
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    nop                                           ; $4cc3: $00
    nop                                           ; $4cc4: $00
    nop                                           ; $4cc5: $00
    nop                                           ; $4cc6: $00
    nop                                           ; $4cc7: $00
    nop                                           ; $4cc8: $00
    nop                                           ; $4cc9: $00
    nop                                           ; $4cca: $00
    nop                                           ; $4ccb: $00
    nop                                           ; $4ccc: $00
    nop                                           ; $4ccd: $00
    nop                                           ; $4cce: $00
    nop                                           ; $4ccf: $00
    nop                                           ; $4cd0: $00
    nop                                           ; $4cd1: $00
    nop                                           ; $4cd2: $00
    nop                                           ; $4cd3: $00
    nop                                           ; $4cd4: $00
    nop                                           ; $4cd5: $00
    nop                                           ; $4cd6: $00
    nop                                           ; $4cd7: $00
    nop                                           ; $4cd8: $00
    nop                                           ; $4cd9: $00
    nop                                           ; $4cda: $00
    nop                                           ; $4cdb: $00
    nop                                           ; $4cdc: $00
    nop                                           ; $4cdd: $00
    nop                                           ; $4cde: $00
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    nop                                           ; $4ce1: $00
    nop                                           ; $4ce2: $00
    nop                                           ; $4ce3: $00
    nop                                           ; $4ce4: $00
    nop                                           ; $4ce5: $00
    nop                                           ; $4ce6: $00
    nop                                           ; $4ce7: $00
    nop                                           ; $4ce8: $00
    nop                                           ; $4ce9: $00
    nop                                           ; $4cea: $00
    nop                                           ; $4ceb: $00
    nop                                           ; $4cec: $00
    nop                                           ; $4ced: $00
    nop                                           ; $4cee: $00
    nop                                           ; $4cef: $00
    nop                                           ; $4cf0: $00
    nop                                           ; $4cf1: $00
    adc $39                                       ; $4cf2: $ce $39
    ei                                            ; $4cf4: $fb
    dec hl                                        ; $4cf5: $2b
    dec bc                                        ; $4cf6: $0b
    inc bc                                        ; $4cf7: $03
    ret nz                                        ; $4cf8: $c0

    ld bc, $77bd                                  ; $4cf9: $01 $bd $77
    rra                                           ; $4cfc: $1f
    ld h, a                                       ; $4cfd: $67
    ld e, d                                       ; $4cfe: $5a
    ld l, e                                       ; $4cff: $6b

Call_0cf_4d00:
    jr jr_0cf_4d65                                ; $4d00: $18 $63

    rra                                           ; $4d02: $1f
    nop                                           ; $4d03: $00
    ld e, $00                                     ; $4d04: $1e $00
    inc e                                         ; $4d06: $1c
    nop                                           ; $4d07: $00
    dec de                                        ; $4d08: $1b
    nop                                           ; $4d09: $00
    ld a, a                                       ; $4d0a: $7f
    ld l, a                                       ; $4d0b: $6f
    rst $38                                       ; $4d0c: $ff
    ld e, [hl]                                    ; $4d0d: $5e
    ld a, a                                       ; $4d0e: $7f
    ld c, [hl]                                    ; $4d0f: $4e
    rst $38                                       ; $4d10: $ff
    dec a                                         ; $4d11: $3d
    rst $38                                       ; $4d12: $ff
    ld l, a                                       ; $4d13: $6f
    sbc $67                                       ; $4d14: $de $67
    sbc h                                         ; $4d16: $9c
    ld e, a                                       ; $4d17: $5f
    ld e, d                                       ; $4d18: $5a
    ld d, a                                       ; $4d19: $57
    ld a, [$b82f]                                 ; $4d1a: $fa $2f $b8
    daa                                           ; $4d1d: $27
    sub [hl]                                      ; $4d1e: $96
    inc hl                                        ; $4d1f: $23
    ld d, h                                       ; $4d20: $54
    dec de                                        ; $4d21: $1b
    ldh [$03], a                                  ; $4d22: $e0 $03
    ret nz                                        ; $4d24: $c0

    inc bc                                        ; $4d25: $03
    add b                                         ; $4d26: $80
    inc bc                                        ; $4d27: $03
    ld h, b                                       ; $4d28: $60
    inc bc                                        ; $4d29: $03
    db $fd                                        ; $4d2a: $fd
    ld a, a                                       ; $4d2b: $7f
    db $db                                        ; $4d2c: $db
    ld a, e                                       ; $4d2d: $7b
    sbc c                                         ; $4d2e: $99
    ld [hl], e                                    ; $4d2f: $73
    ld [hl], a                                    ; $4d30: $77
    ld l, a                                       ; $4d31: $6f
    ld a, a                                       ; $4d32: $7f
    ld a, l                                       ; $4d33: $7d
    ld a, [$5363]                                 ; $4d34: $fa $63 $53
    inc bc                                        ; $4d37: $03
    rst $20                                       ; $4d38: $e7
    ld bc, $450b                                  ; $4d39: $01 $0b $45
    ld [de], a                                    ; $4d3c: $12
    nop                                           ; $4d3d: $00
    ld e, e                                       ; $4d3e: $5b
    ld bc, $031f                                  ; $4d3f: $01 $1f $03
    nop                                           ; $4d42: $00
    nop                                           ; $4d43: $00
    nop                                           ; $4d44: $00
    nop                                           ; $4d45: $00
    nop                                           ; $4d46: $00
    nop                                           ; $4d47: $00
    nop                                           ; $4d48: $00
    nop                                           ; $4d49: $00
    nop                                           ; $4d4a: $00
    nop                                           ; $4d4b: $00
    nop                                           ; $4d4c: $00
    nop                                           ; $4d4d: $00

Jump_0cf_4d4e:
    nop                                           ; $4d4e: $00
    nop                                           ; $4d4f: $00
    nop                                           ; $4d50: $00
    nop                                           ; $4d51: $00
    nop                                           ; $4d52: $00
    nop                                           ; $4d53: $00
    nop                                           ; $4d54: $00
    nop                                           ; $4d55: $00
    nop                                           ; $4d56: $00
    nop                                           ; $4d57: $00
    nop                                           ; $4d58: $00
    nop                                           ; $4d59: $00
    nop                                           ; $4d5a: $00
    nop                                           ; $4d5b: $00
    nop                                           ; $4d5c: $00
    nop                                           ; $4d5d: $00
    nop                                           ; $4d5e: $00
    nop                                           ; $4d5f: $00
    nop                                           ; $4d60: $00
    nop                                           ; $4d61: $00
    nop                                           ; $4d62: $00
    nop                                           ; $4d63: $00
    nop                                           ; $4d64: $00

jr_0cf_4d65:
    nop                                           ; $4d65: $00
    nop                                           ; $4d66: $00
    nop                                           ; $4d67: $00
    nop                                           ; $4d68: $00
    nop                                           ; $4d69: $00
    nop                                           ; $4d6a: $00
    nop                                           ; $4d6b: $00
    nop                                           ; $4d6c: $00
    nop                                           ; $4d6d: $00
    nop                                           ; $4d6e: $00
    nop                                           ; $4d6f: $00
    nop                                           ; $4d70: $00
    nop                                           ; $4d71: $00
    ld e, a                                       ; $4d72: $5f
    ld a, l                                       ; $4d73: $7d
    ld e, a                                       ; $4d74: $5f
    ld [bc], a                                    ; $4d75: $02
    ld d, h                                       ; $4d76: $54
    ld bc, $08a7                                  ; $4d77: $01 $a7 $08
    inc d                                         ; $4d7a: $14
    ld l, $95                                     ; $4d7b: $2e $95
    add hl, bc                                    ; $4d7d: $09
    rrca                                          ; $4d7e: $0f
    dec c                                         ; $4d7f: $0d
    and a                                         ; $4d80: $a7
    ld [$001f], sp                                ; $4d81: $08 $1f $00
    ld e, $00                                     ; $4d84: $1e $00
    inc e                                         ; $4d86: $1c
    nop                                           ; $4d87: $00
    dec de                                        ; $4d88: $1b
    nop                                           ; $4d89: $00
    ld a, a                                       ; $4d8a: $7f
    ld l, a                                       ; $4d8b: $6f
    rst $38                                       ; $4d8c: $ff
    ld e, [hl]                                    ; $4d8d: $5e
    ld a, a                                       ; $4d8e: $7f
    ld c, [hl]                                    ; $4d8f: $4e
    rst $38                                       ; $4d90: $ff
    dec a                                         ; $4d91: $3d
    rst $38                                       ; $4d92: $ff
    ld l, a                                       ; $4d93: $6f
    sbc $67                                       ; $4d94: $de $67
    sbc h                                         ; $4d96: $9c
    ld e, a                                       ; $4d97: $5f
    ld e, d                                       ; $4d98: $5a
    ld d, a                                       ; $4d99: $57
    ld a, [$b82f]                                 ; $4d9a: $fa $2f $b8
    daa                                           ; $4d9d: $27
    sub [hl]                                      ; $4d9e: $96
    inc hl                                        ; $4d9f: $23
    ld d, h                                       ; $4da0: $54
    dec de                                        ; $4da1: $1b
    ldh [$03], a                                  ; $4da2: $e0 $03
    ret nz                                        ; $4da4: $c0

    inc bc                                        ; $4da5: $03
    add b                                         ; $4da6: $80
    inc bc                                        ; $4da7: $03
    ld h, b                                       ; $4da8: $60
    inc bc                                        ; $4da9: $03
    db $fd                                        ; $4daa: $fd
    ld a, a                                       ; $4dab: $7f
    db $db                                        ; $4dac: $db
    ld a, e                                       ; $4dad: $7b
    sbc c                                         ; $4dae: $99
    ld [hl], e                                    ; $4daf: $73
    ld [hl], a                                    ; $4db0: $77
    ld l, a                                       ; $4db1: $6f
    xor h                                         ; $4db2: $ac
    add hl, sp                                    ; $4db3: $39
    rst $18                                       ; $4db4: $df
    inc bc                                        ; $4db5: $03
    ld a, a                                       ; $4db6: $7f
    ld [bc], a                                    ; $4db7: $02
    cp [hl]                                       ; $4db8: $be
    ld bc, $2e14                                  ; $4db9: $01 $14 $2e
    sub l                                         ; $4dbc: $95
    add hl, bc                                    ; $4dbd: $09
    rrca                                          ; $4dbe: $0f
    dec c                                         ; $4dbf: $0d
    and a                                         ; $4dc0: $a7
    ld [$001f], sp                                ; $4dc1: $08 $1f $00
    ld e, $00                                     ; $4dc4: $1e $00
    inc e                                         ; $4dc6: $1c
    nop                                           ; $4dc7: $00
    dec de                                        ; $4dc8: $1b
    nop                                           ; $4dc9: $00
    ld a, a                                       ; $4dca: $7f
    ld l, a                                       ; $4dcb: $6f
    rst $38                                       ; $4dcc: $ff
    ld e, [hl]                                    ; $4dcd: $5e
    ld a, a                                       ; $4dce: $7f
    ld c, [hl]                                    ; $4dcf: $4e
    rst $38                                       ; $4dd0: $ff
    dec a                                         ; $4dd1: $3d
    rst $38                                       ; $4dd2: $ff
    ld l, a                                       ; $4dd3: $6f
    sbc $67                                       ; $4dd4: $de $67
    sbc h                                         ; $4dd6: $9c
    ld e, a                                       ; $4dd7: $5f
    ld e, d                                       ; $4dd8: $5a
    ld d, a                                       ; $4dd9: $57
    ld a, [$b82f]                                 ; $4dda: $fa $2f $b8
    daa                                           ; $4ddd: $27
    sub [hl]                                      ; $4dde: $96
    inc hl                                        ; $4ddf: $23
    ld d, h                                       ; $4de0: $54
    dec de                                        ; $4de1: $1b
    ldh [$03], a                                  ; $4de2: $e0 $03
    ret nz                                        ; $4de4: $c0

    inc bc                                        ; $4de5: $03
    add b                                         ; $4de6: $80
    inc bc                                        ; $4de7: $03
    ld h, b                                       ; $4de8: $60
    inc bc                                        ; $4de9: $03
    db $fd                                        ; $4dea: $fd
    ld a, a                                       ; $4deb: $7f
    db $db                                        ; $4dec: $db
    ld a, e                                       ; $4ded: $7b
    sbc c                                         ; $4dee: $99
    ld [hl], e                                    ; $4def: $73
    ld [hl], a                                    ; $4df0: $77
    ld l, a                                       ; $4df1: $6f
    xor h                                         ; $4df2: $ac
    add hl, sp                                    ; $4df3: $39
    rst $18                                       ; $4df4: $df
    inc bc                                        ; $4df5: $03
    ld a, a                                       ; $4df6: $7f
    ld [bc], a                                    ; $4df7: $02
    cp [hl]                                       ; $4df8: $be
    ld bc, $2e14                                  ; $4df9: $01 $14 $2e
    sub l                                         ; $4dfc: $95
    add hl, bc                                    ; $4dfd: $09
    rrca                                          ; $4dfe: $0f
    dec c                                         ; $4dff: $0d

Jump_0cf_4e00:
    and a                                         ; $4e00: $a7
    ld [$001f], sp                                ; $4e01: $08 $1f $00
    ld e, $00                                     ; $4e04: $1e $00
    inc e                                         ; $4e06: $1c
    nop                                           ; $4e07: $00
    dec de                                        ; $4e08: $1b
    nop                                           ; $4e09: $00
    ld a, a                                       ; $4e0a: $7f
    ld l, a                                       ; $4e0b: $6f
    rst $38                                       ; $4e0c: $ff
    ld e, [hl]                                    ; $4e0d: $5e
    ld a, a                                       ; $4e0e: $7f
    ld c, [hl]                                    ; $4e0f: $4e
    rst $38                                       ; $4e10: $ff
    dec a                                         ; $4e11: $3d
    rst $38                                       ; $4e12: $ff
    ld l, a                                       ; $4e13: $6f
    sbc $67                                       ; $4e14: $de $67
    sbc h                                         ; $4e16: $9c
    ld e, a                                       ; $4e17: $5f
    ld e, d                                       ; $4e18: $5a
    ld d, a                                       ; $4e19: $57
    ld a, [$b82f]                                 ; $4e1a: $fa $2f $b8
    daa                                           ; $4e1d: $27
    sub [hl]                                      ; $4e1e: $96
    inc hl                                        ; $4e1f: $23
    ld d, h                                       ; $4e20: $54
    dec de                                        ; $4e21: $1b
    ldh [$03], a                                  ; $4e22: $e0 $03
    ret nz                                        ; $4e24: $c0

    inc bc                                        ; $4e25: $03
    add b                                         ; $4e26: $80
    inc bc                                        ; $4e27: $03
    ld h, b                                       ; $4e28: $60
    inc bc                                        ; $4e29: $03
    db $fd                                        ; $4e2a: $fd
    ld a, a                                       ; $4e2b: $7f
    db $db                                        ; $4e2c: $db
    ld a, e                                       ; $4e2d: $7b
    sbc c                                         ; $4e2e: $99
    ld [hl], e                                    ; $4e2f: $73
    ld [hl], a                                    ; $4e30: $77
    ld l, a                                       ; $4e31: $6f
    ld [hl], e                                    ; $4e32: $73
    ld c, [hl]                                    ; $4e33: $4e
    cp l                                          ; $4e34: $bd
    ld a, a                                       ; $4e35: $7f
    rlca                                          ; $4e36: $07
    ld a, a                                       ; $4e37: $7f
    ld c, $7a                                     ; $4e38: $0e $7a
    ld [hl], e                                    ; $4e3a: $73
    ld c, [hl]                                    ; $4e3b: $4e
    db $10                                        ; $4e3c: $10
    ld b, b                                       ; $4e3d: $40
    ld a, [c]                                     ; $4e3e: $f2
    ld a, h                                       ; $4e3f: $7c
    db $f4                                        ; $4e40: $f4
    ld a, l                                       ; $4e41: $7d
    cp l                                          ; $4e42: $bd
    ld [hl], a                                    ; $4e43: $77
    cp l                                          ; $4e44: $bd
    ld [hl], a                                    ; $4e45: $77
    cp l                                          ; $4e46: $bd
    ld [hl], a                                    ; $4e47: $77
    cp l                                          ; $4e48: $bd
    ld [hl], a                                    ; $4e49: $77
    ld a, a                                       ; $4e4a: $7f
    ld l, a                                       ; $4e4b: $6f
    rst $38                                       ; $4e4c: $ff
    ld e, [hl]                                    ; $4e4d: $5e
    ld a, a                                       ; $4e4e: $7f
    ld c, [hl]                                    ; $4e4f: $4e
    rst $38                                       ; $4e50: $ff
    dec a                                         ; $4e51: $3d
    rst $38                                       ; $4e52: $ff
    ld l, a                                       ; $4e53: $6f
    sbc $67                                       ; $4e54: $de $67
    sbc h                                         ; $4e56: $9c
    ld e, a                                       ; $4e57: $5f
    ld e, d                                       ; $4e58: $5a
    ld d, a                                       ; $4e59: $57
    ld a, [$b82f]                                 ; $4e5a: $fa $2f $b8
    daa                                           ; $4e5d: $27
    sub [hl]                                      ; $4e5e: $96
    inc hl                                        ; $4e5f: $23
    ld d, h                                       ; $4e60: $54
    dec de                                        ; $4e61: $1b
    ldh [$03], a                                  ; $4e62: $e0 $03
    ret nz                                        ; $4e64: $c0

    inc bc                                        ; $4e65: $03
    add b                                         ; $4e66: $80
    inc bc                                        ; $4e67: $03
    ld h, b                                       ; $4e68: $60
    inc bc                                        ; $4e69: $03
    db $fd                                        ; $4e6a: $fd
    ld a, a                                       ; $4e6b: $7f
    db $db                                        ; $4e6c: $db
    ld a, e                                       ; $4e6d: $7b
    sbc c                                         ; $4e6e: $99
    ld [hl], e                                    ; $4e6f: $73
    ld [hl], a                                    ; $4e70: $77
    ld l, a                                       ; $4e71: $6f
    adc $39                                       ; $4e72: $ce $39
    push af                                       ; $4e74: $f5
    inc de                                        ; $4e75: $13
    and b                                         ; $4e76: $a0
    ld [bc], a                                    ; $4e77: $02
    ret nz                                        ; $4e78: $c0

    ld bc, $77bd                                  ; $4e79: $01 $bd $77
    rra                                           ; $4e7c: $1f
    ld h, a                                       ; $4e7d: $67
    ld e, d                                       ; $4e7e: $5a
    ld l, e                                       ; $4e7f: $6b
    jr jr_0cf_4ee5                                ; $4e80: $18 $63

    rra                                           ; $4e82: $1f
    nop                                           ; $4e83: $00
    ld e, $00                                     ; $4e84: $1e $00
    inc e                                         ; $4e86: $1c
    nop                                           ; $4e87: $00
    dec de                                        ; $4e88: $1b
    nop                                           ; $4e89: $00
    ld a, a                                       ; $4e8a: $7f
    ld l, a                                       ; $4e8b: $6f
    rst $38                                       ; $4e8c: $ff
    ld e, [hl]                                    ; $4e8d: $5e
    ld a, a                                       ; $4e8e: $7f
    ld c, [hl]                                    ; $4e8f: $4e
    rst $38                                       ; $4e90: $ff
    dec a                                         ; $4e91: $3d
    rst $38                                       ; $4e92: $ff
    ld l, a                                       ; $4e93: $6f
    sbc $67                                       ; $4e94: $de $67
    sbc h                                         ; $4e96: $9c
    ld e, a                                       ; $4e97: $5f
    ld e, d                                       ; $4e98: $5a
    ld d, a                                       ; $4e99: $57
    ld a, [$b82f]                                 ; $4e9a: $fa $2f $b8
    daa                                           ; $4e9d: $27
    sub [hl]                                      ; $4e9e: $96
    inc hl                                        ; $4e9f: $23
    ld d, h                                       ; $4ea0: $54
    dec de                                        ; $4ea1: $1b
    ldh [$03], a                                  ; $4ea2: $e0 $03
    ret nz                                        ; $4ea4: $c0

    inc bc                                        ; $4ea5: $03
    add b                                         ; $4ea6: $80
    inc bc                                        ; $4ea7: $03
    ld h, b                                       ; $4ea8: $60
    inc bc                                        ; $4ea9: $03
    db $fd                                        ; $4eaa: $fd
    ld a, a                                       ; $4eab: $7f
    db $db                                        ; $4eac: $db
    ld a, e                                       ; $4ead: $7b
    sbc c                                         ; $4eae: $99
    ld [hl], e                                    ; $4eaf: $73
    ld [hl], a                                    ; $4eb0: $77
    ld l, a                                       ; $4eb1: $6f
    push hl                                       ; $4eb2: $e5
    jr jr_0cf_4f26                                ; $4eb3: $18 $71

    ld a, a                                       ; $4eb5: $7f
    add hl, hl                                    ; $4eb6: $29
    ld a, [hl]                                    ; $4eb7: $7e
    ldh [rBCPS], a                                ; $4eb8: $e0 $68
    inc d                                         ; $4eba: $14
    ld [hl], d                                    ; $4ebb: $72
    dec bc                                        ; $4ebc: $0b
    ld b, l                                       ; $4ebd: $45
    add l                                         ; $4ebe: $85
    inc e                                         ; $4ebf: $1c
    rst $38                                       ; $4ec0: $ff
    ld a, a                                       ; $4ec1: $7f
    rst $38                                       ; $4ec2: $ff
    ld a, a                                       ; $4ec3: $7f
    rst $38                                       ; $4ec4: $ff
    ld a, a                                       ; $4ec5: $7f
    rst $38                                       ; $4ec6: $ff
    ld a, a                                       ; $4ec7: $7f
    rst $38                                       ; $4ec8: $ff
    ld a, a                                       ; $4ec9: $7f
    rst $38                                       ; $4eca: $ff
    ld a, a                                       ; $4ecb: $7f
    rst $38                                       ; $4ecc: $ff
    ld a, a                                       ; $4ecd: $7f
    rst $38                                       ; $4ece: $ff
    ld a, a                                       ; $4ecf: $7f
    rst $38                                       ; $4ed0: $ff
    ld a, a                                       ; $4ed1: $7f
    rst $38                                       ; $4ed2: $ff
    ld a, a                                       ; $4ed3: $7f
    sbc $67                                       ; $4ed4: $de $67
    sbc h                                         ; $4ed6: $9c
    ld e, a                                       ; $4ed7: $5f
    ld e, d                                       ; $4ed8: $5a
    ld d, a                                       ; $4ed9: $57
    jp c, $b833                                   ; $4eda: $da $33 $b8

    daa                                           ; $4edd: $27
    sub [hl]                                      ; $4ede: $96
    inc hl                                        ; $4edf: $23
    ld d, h                                       ; $4ee0: $54
    dec de                                        ; $4ee1: $1b
    ldh [$03], a                                  ; $4ee2: $e0 $03
    ret nz                                        ; $4ee4: $c0

jr_0cf_4ee5:
    inc bc                                        ; $4ee5: $03
    add b                                         ; $4ee6: $80
    inc bc                                        ; $4ee7: $03
    ld h, b                                       ; $4ee8: $60
    inc bc                                        ; $4ee9: $03
    db $fd                                        ; $4eea: $fd
    ld a, a                                       ; $4eeb: $7f
    db $db                                        ; $4eec: $db
    ld a, e                                       ; $4eed: $7b
    sbc c                                         ; $4eee: $99
    ld [hl], e                                    ; $4eef: $73
    ld [hl], a                                    ; $4ef0: $77
    ld l, a                                       ; $4ef1: $6f
    nop                                           ; $4ef2: $00
    nop                                           ; $4ef3: $00
    db $f4                                        ; $4ef4: $f4
    ld c, e                                       ; $4ef5: $4b
    add b                                         ; $4ef6: $80
    ld [bc], a                                    ; $4ef7: $02
    ld b, b                                       ; $4ef8: $40
    dec b                                         ; $4ef9: $05
    nop                                           ; $4efa: $00
    nop                                           ; $4efb: $00
    ld a, [$605f]                                 ; $4efc: $fa $5f $60
    inc bc                                        ; $4eff: $03
    ldh [rSB], a                                  ; $4f00: $e0 $01
    ld d, b                                       ; $4f02: $50
    ld c, b                                       ; $4f03: $48
    nop                                           ; $4f04: $00
    nop                                           ; $4f05: $00
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    nop                                           ; $4f08: $00
    nop                                           ; $4f09: $00
    nop                                           ; $4f0a: $00
    nop                                           ; $4f0b: $00
    nop                                           ; $4f0c: $00
    nop                                           ; $4f0d: $00
    nop                                           ; $4f0e: $00
    nop                                           ; $4f0f: $00
    nop                                           ; $4f10: $00
    nop                                           ; $4f11: $00
    ld hl, sp+$3b                                 ; $4f12: $f8 $3b
    or b                                          ; $4f14: $b0
    ld d, $69                                     ; $4f15: $16 $69
    ld bc, $0000                                  ; $4f17: $01 $00 $00
    rst $38                                       ; $4f1a: $ff
    ld h, e                                       ; $4f1b: $63
    ccf                                           ; $4f1c: $3f
    inc bc                                        ; $4f1d: $03
    ret c                                         ; $4f1e: $d8

    ld bc, $0000                                  ; $4f1f: $01 $00 $00
    nop                                           ; $4f22: $00
    nop                                           ; $4f23: $00
    nop                                           ; $4f24: $00
    nop                                           ; $4f25: $00

jr_0cf_4f26:
    nop                                           ; $4f26: $00
    nop                                           ; $4f27: $00
    nop                                           ; $4f28: $00
    nop                                           ; $4f29: $00
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    nop                                           ; $4f2c: $00
    nop                                           ; $4f2d: $00
    nop                                           ; $4f2e: $00
    nop                                           ; $4f2f: $00
    nop                                           ; $4f30: $00
    nop                                           ; $4f31: $00
    ldh [$03], a                                  ; $4f32: $e0 $03
    rst $38                                       ; $4f34: $ff
    inc bc                                        ; $4f35: $03
    sbc a                                         ; $4f36: $9f
    ld bc, $4c00                                  ; $4f37: $01 $00 $4c
    rra                                           ; $4f3a: $1f
    ld a, h                                       ; $4f3b: $7c
    ld e, a                                       ; $4f3c: $5f
    ld a, l                                       ; $4f3d: $7d
    sub b                                         ; $4f3e: $90
    ld b, b                                       ; $4f3f: $40
    ld l, e                                       ; $4f40: $6b
    inc l                                         ; $4f41: $2c
    rra                                           ; $4f42: $1f
    nop                                           ; $4f43: $00
    ld e, $00                                     ; $4f44: $1e $00
    inc e                                         ; $4f46: $1c
    nop                                           ; $4f47: $00
    dec de                                        ; $4f48: $1b
    nop                                           ; $4f49: $00
    ld a, a                                       ; $4f4a: $7f
    ld l, a                                       ; $4f4b: $6f
    rst $38                                       ; $4f4c: $ff
    ld e, [hl]                                    ; $4f4d: $5e
    ld a, a                                       ; $4f4e: $7f
    ld c, [hl]                                    ; $4f4f: $4e
    rst $38                                       ; $4f50: $ff
    dec a                                         ; $4f51: $3d
    rst $38                                       ; $4f52: $ff
    ld l, a                                       ; $4f53: $6f
    sbc $67                                       ; $4f54: $de $67
    sbc h                                         ; $4f56: $9c
    ld e, a                                       ; $4f57: $5f
    ld e, d                                       ; $4f58: $5a
    ld d, a                                       ; $4f59: $57
    ld a, [$b82f]                                 ; $4f5a: $fa $2f $b8
    daa                                           ; $4f5d: $27
    sub [hl]                                      ; $4f5e: $96
    inc hl                                        ; $4f5f: $23
    ld d, h                                       ; $4f60: $54
    dec de                                        ; $4f61: $1b
    ldh [$03], a                                  ; $4f62: $e0 $03
    ret nz                                        ; $4f64: $c0

    inc bc                                        ; $4f65: $03
    add b                                         ; $4f66: $80
    inc bc                                        ; $4f67: $03
    ld h, b                                       ; $4f68: $60
    inc bc                                        ; $4f69: $03
    db $fd                                        ; $4f6a: $fd
    ld a, a                                       ; $4f6b: $7f
    db $db                                        ; $4f6c: $db
    ld a, e                                       ; $4f6d: $7b
    sbc c                                         ; $4f6e: $99
    ld [hl], e                                    ; $4f6f: $73
    ld [hl], a                                    ; $4f70: $77
    ld l, a                                       ; $4f71: $6f

    db $e0, $03, $ff, $03, $ff, $01, $79, $00, $bd, $77, $bd, $77, $bd, $77, $bd, $77

    cp l                                          ; $4f82: $bd
    ld [hl], a                                    ; $4f83: $77
    cp l                                          ; $4f84: $bd
    ld [hl], a                                    ; $4f85: $77
    cp l                                          ; $4f86: $bd
    ld [hl], a                                    ; $4f87: $77
    cp l                                          ; $4f88: $bd
    ld [hl], a                                    ; $4f89: $77
    cp l                                          ; $4f8a: $bd
    ld [hl], a                                    ; $4f8b: $77
    cp l                                          ; $4f8c: $bd
    ld [hl], a                                    ; $4f8d: $77
    cp l                                          ; $4f8e: $bd
    ld [hl], a                                    ; $4f8f: $77
    cp l                                          ; $4f90: $bd
    ld [hl], a                                    ; $4f91: $77
    cp l                                          ; $4f92: $bd
    ld [hl], a                                    ; $4f93: $77
    cp l                                          ; $4f94: $bd
    ld [hl], a                                    ; $4f95: $77
    cp l                                          ; $4f96: $bd
    ld [hl], a                                    ; $4f97: $77
    cp l                                          ; $4f98: $bd
    ld [hl], a                                    ; $4f99: $77
    cp l                                          ; $4f9a: $bd
    ld [hl], a                                    ; $4f9b: $77
    cp l                                          ; $4f9c: $bd
    ld [hl], a                                    ; $4f9d: $77
    cp l                                          ; $4f9e: $bd
    ld [hl], a                                    ; $4f9f: $77
    cp l                                          ; $4fa0: $bd
    ld [hl], a                                    ; $4fa1: $77
    cp l                                          ; $4fa2: $bd
    ld [hl], a                                    ; $4fa3: $77
    cp l                                          ; $4fa4: $bd
    ld [hl], a                                    ; $4fa5: $77
    cp l                                          ; $4fa6: $bd
    ld [hl], a                                    ; $4fa7: $77
    cp l                                          ; $4fa8: $bd
    ld [hl], a                                    ; $4fa9: $77
    cp l                                          ; $4faa: $bd
    ld [hl], a                                    ; $4fab: $77
    cp l                                          ; $4fac: $bd
    ld [hl], a                                    ; $4fad: $77
    cp l                                          ; $4fae: $bd
    ld [hl], a                                    ; $4faf: $77
    cp l                                          ; $4fb0: $bd
    ld [hl], a                                    ; $4fb1: $77
    rra                                           ; $4fb2: $1f
    ld a, h                                       ; $4fb3: $7c
    xor e                                         ; $4fb4: $ab
    ld a, [hl]                                    ; $4fb5: $7e
    ld l, c                                       ; $4fb6: $69
    ld a, l                                       ; $4fb7: $7d
    add h                                         ; $4fb8: $84
    jr c, @+$01                                   ; $4fb9: $38 $ff

    ld a, a                                       ; $4fbb: $7f
    rst $38                                       ; $4fbc: $ff
    ld a, a                                       ; $4fbd: $7f
    rst $38                                       ; $4fbe: $ff
    ld a, a                                       ; $4fbf: $7f
    rst $38                                       ; $4fc0: $ff
    ld a, a                                       ; $4fc1: $7f
    rst $38                                       ; $4fc2: $ff
    ld a, a                                       ; $4fc3: $7f
    rst $38                                       ; $4fc4: $ff
    ld a, a                                       ; $4fc5: $7f
    rst $38                                       ; $4fc6: $ff
    ld a, a                                       ; $4fc7: $7f
    rst $38                                       ; $4fc8: $ff
    ld a, a                                       ; $4fc9: $7f
    rst $38                                       ; $4fca: $ff
    ld a, a                                       ; $4fcb: $7f
    rst $38                                       ; $4fcc: $ff
    ld a, a                                       ; $4fcd: $7f
    rst $38                                       ; $4fce: $ff
    ld a, a                                       ; $4fcf: $7f
    rst $38                                       ; $4fd0: $ff
    ld a, a                                       ; $4fd1: $7f
    rst $38                                       ; $4fd2: $ff
    ld a, a                                       ; $4fd3: $7f
    sbc $67                                       ; $4fd4: $de $67
    sbc h                                         ; $4fd6: $9c
    ld e, a                                       ; $4fd7: $5f
    ld e, d                                       ; $4fd8: $5a
    ld d, a                                       ; $4fd9: $57
    ld a, [$b82f]                                 ; $4fda: $fa $2f $b8
    daa                                           ; $4fdd: $27
    sub [hl]                                      ; $4fde: $96
    inc hl                                        ; $4fdf: $23
    ld d, h                                       ; $4fe0: $54
    dec de                                        ; $4fe1: $1b
    ldh [$03], a                                  ; $4fe2: $e0 $03
    ret nz                                        ; $4fe4: $c0

    inc bc                                        ; $4fe5: $03
    add b                                         ; $4fe6: $80
    inc bc                                        ; $4fe7: $03
    ld h, b                                       ; $4fe8: $60
    inc bc                                        ; $4fe9: $03
    db $fd                                        ; $4fea: $fd
    ld a, a                                       ; $4feb: $7f
    db $db                                        ; $4fec: $db
    ld a, e                                       ; $4fed: $7b
    sbc c                                         ; $4fee: $99
    ld [hl], e                                    ; $4fef: $73
    ld [hl], a                                    ; $4ff0: $77
    ld l, a                                       ; $4ff1: $6f
    xor h                                         ; $4ff2: $ac
    add hl, sp                                    ; $4ff3: $39
    ld e, [hl]                                    ; $4ff4: $5e
    ld e, l                                       ; $4ff5: $5d
    nop                                           ; $4ff6: $00
    nop                                           ; $4ff7: $00
    dec bc                                        ; $4ff8: $0b
    ld d, h                                       ; $4ff9: $54
    inc d                                         ; $4ffa: $14
    ld l, $95                                     ; $4ffb: $2e $95
    add hl, bc                                    ; $4ffd: $09
    rrca                                          ; $4ffe: $0f
    dec c                                         ; $4fff: $0d
    and a                                         ; $5000: $a7
    ld [$001f], sp                                ; $5001: $08 $1f $00
    ld e, $00                                     ; $5004: $1e $00
    inc e                                         ; $5006: $1c
    nop                                           ; $5007: $00
    dec de                                        ; $5008: $1b
    nop                                           ; $5009: $00
    ld a, a                                       ; $500a: $7f
    ld l, a                                       ; $500b: $6f
    rst $38                                       ; $500c: $ff
    ld e, [hl]                                    ; $500d: $5e
    ld a, a                                       ; $500e: $7f
    ld c, [hl]                                    ; $500f: $4e
    rst $38                                       ; $5010: $ff
    dec a                                         ; $5011: $3d
    rst $38                                       ; $5012: $ff
    ld l, a                                       ; $5013: $6f
    sbc $67                                       ; $5014: $de $67
    sbc h                                         ; $5016: $9c
    ld e, a                                       ; $5017: $5f
    ld e, d                                       ; $5018: $5a
    ld d, a                                       ; $5019: $57
    ld a, [$b82f]                                 ; $501a: $fa $2f $b8
    daa                                           ; $501d: $27
    sub [hl]                                      ; $501e: $96
    inc hl                                        ; $501f: $23
    ld d, h                                       ; $5020: $54
    dec de                                        ; $5021: $1b
    ldh [$03], a                                  ; $5022: $e0 $03
    ret nz                                        ; $5024: $c0

    inc bc                                        ; $5025: $03
    add b                                         ; $5026: $80
    inc bc                                        ; $5027: $03
    ld h, b                                       ; $5028: $60
    inc bc                                        ; $5029: $03
    db $fd                                        ; $502a: $fd
    ld a, a                                       ; $502b: $7f
    db $db                                        ; $502c: $db
    ld a, e                                       ; $502d: $7b
    sbc c                                         ; $502e: $99
    ld [hl], e                                    ; $502f: $73
    ld [hl], a                                    ; $5030: $77
    ld l, a                                       ; $5031: $6f
    adc $39                                       ; $5032: $ce $39
    sbc [hl]                                      ; $5034: $9e
    ld a, l                                       ; $5035: $7d
    rla                                           ; $5036: $17
    ld d, h                                       ; $5037: $54
    dec c                                         ; $5038: $0d
    inc [hl]                                      ; $5039: $34
    cp l                                          ; $503a: $bd
    ld [hl], a                                    ; $503b: $77
    rra                                           ; $503c: $1f
    ld h, a                                       ; $503d: $67
    ld e, d                                       ; $503e: $5a
    ld l, e                                       ; $503f: $6b
    jr jr_0cf_50a5                                ; $5040: $18 $63

    rra                                           ; $5042: $1f
    nop                                           ; $5043: $00
    ld e, $00                                     ; $5044: $1e $00
    inc e                                         ; $5046: $1c
    nop                                           ; $5047: $00
    dec de                                        ; $5048: $1b
    nop                                           ; $5049: $00
    ld a, a                                       ; $504a: $7f
    ld l, a                                       ; $504b: $6f
    rst $38                                       ; $504c: $ff
    ld e, [hl]                                    ; $504d: $5e
    ld a, a                                       ; $504e: $7f
    ld c, [hl]                                    ; $504f: $4e
    rst $38                                       ; $5050: $ff
    dec a                                         ; $5051: $3d
    rst $38                                       ; $5052: $ff
    ld l, a                                       ; $5053: $6f
    sbc $67                                       ; $5054: $de $67
    sbc h                                         ; $5056: $9c
    ld e, a                                       ; $5057: $5f
    ld e, d                                       ; $5058: $5a
    ld d, a                                       ; $5059: $57
    ld a, [$b82f]                                 ; $505a: $fa $2f $b8
    daa                                           ; $505d: $27
    sub [hl]                                      ; $505e: $96
    inc hl                                        ; $505f: $23
    ld d, h                                       ; $5060: $54
    dec de                                        ; $5061: $1b
    ldh [$03], a                                  ; $5062: $e0 $03
    ret nz                                        ; $5064: $c0

    inc bc                                        ; $5065: $03
    add b                                         ; $5066: $80
    inc bc                                        ; $5067: $03
    ld h, b                                       ; $5068: $60
    inc bc                                        ; $5069: $03
    db $fd                                        ; $506a: $fd
    ld a, a                                       ; $506b: $7f
    db $db                                        ; $506c: $db
    ld a, e                                       ; $506d: $7b
    sbc c                                         ; $506e: $99
    ld [hl], e                                    ; $506f: $73
    ld [hl], a                                    ; $5070: $77
    ld l, a                                       ; $5071: $6f
    ld d, d                                       ; $5072: $52
    ld c, d                                       ; $5073: $4a
    cp $7f                                        ; $5074: $fe $7f
    ld d, h                                       ; $5076: $54
    ld [hl], e                                    ; $5077: $73
    call $846a                                    ; $5078: $cd $6a $84
    inc h                                         ; $507b: $24
    or b                                          ; $507c: $b0
    ld l, d                                       ; $507d: $6a
    ld a, [bc]                                    ; $507e: $0a
    ld d, d                                       ; $507f: $52
    ld h, l                                       ; $5080: $65
    dec a                                         ; $5081: $3d
    add h                                         ; $5082: $84
    inc h                                         ; $5083: $24
    cp $7f                                        ; $5084: $fe $7f
    ld d, h                                       ; $5086: $54
    ld [hl], e                                    ; $5087: $73

jr_0cf_5088:
    call $7f6a                                    ; $5088: $cd $6a $7f
    ld l, a                                       ; $508b: $6f
    rst $38                                       ; $508c: $ff
    ld e, [hl]                                    ; $508d: $5e
    ld a, a                                       ; $508e: $7f
    ld c, [hl]                                    ; $508f: $4e
    rst $38                                       ; $5090: $ff
    dec a                                         ; $5091: $3d
    rst $38                                       ; $5092: $ff
    ld l, a                                       ; $5093: $6f
    sbc $67                                       ; $5094: $de $67
    sbc h                                         ; $5096: $9c
    ld e, a                                       ; $5097: $5f
    ld e, d                                       ; $5098: $5a
    ld d, a                                       ; $5099: $57
    ld a, [$b82f]                                 ; $509a: $fa $2f $b8
    daa                                           ; $509d: $27
    sub [hl]                                      ; $509e: $96
    inc hl                                        ; $509f: $23
    ld d, h                                       ; $50a0: $54
    dec de                                        ; $50a1: $1b
    ldh [$03], a                                  ; $50a2: $e0 $03
    ret nz                                        ; $50a4: $c0

jr_0cf_50a5:
    inc bc                                        ; $50a5: $03
    add b                                         ; $50a6: $80
    inc bc                                        ; $50a7: $03
    ld h, b                                       ; $50a8: $60
    inc bc                                        ; $50a9: $03
    db $fd                                        ; $50aa: $fd
    ld a, a                                       ; $50ab: $7f
    db $db                                        ; $50ac: $db
    ld a, e                                       ; $50ad: $7b
    sbc c                                         ; $50ae: $99
    ld [hl], e                                    ; $50af: $73
    ld [hl], a                                    ; $50b0: $77
    ld l, a                                       ; $50b1: $6f
    adc $39                                       ; $50b2: $ce $39
    ld h, b                                       ; $50b4: $60
    ld a, a                                       ; $50b5: $7f
    ld c, d                                       ; $50b6: $4a
    ld a, l                                       ; $50b7: $7d
    ldh [$38], a                                  ; $50b8: $e0 $38
    adc $39                                       ; $50ba: $ce $39
    cp a                                          ; $50bc: $bf
    ld a, [hl]                                    ; $50bd: $7e
    db $fd                                        ; $50be: $fd
    ld [hl], h                                    ; $50bf: $74
    inc c                                         ; $50c0: $0c
    ld c, b                                       ; $50c1: $48
    adc $39                                       ; $50c2: $ce $39
    cp a                                          ; $50c4: $bf
    ld h, d                                       ; $50c5: $62
    db $fd                                        ; $50c6: $fd
    jr c, jr_0cf_50db                             ; $50c7: $38 $12

    jr z, jr_0cf_5088                             ; $50c9: $28 $bd

    ld [hl], a                                    ; $50cb: $77
    cp l                                          ; $50cc: $bd
    ld [hl], a                                    ; $50cd: $77
    cp l                                          ; $50ce: $bd
    ld [hl], a                                    ; $50cf: $77
    cp l                                          ; $50d0: $bd
    ld [hl], a                                    ; $50d1: $77
    cp l                                          ; $50d2: $bd
    ld [hl], a                                    ; $50d3: $77
    cp l                                          ; $50d4: $bd
    ld [hl], a                                    ; $50d5: $77
    cp l                                          ; $50d6: $bd
    ld [hl], a                                    ; $50d7: $77
    cp l                                          ; $50d8: $bd
    ld [hl], a                                    ; $50d9: $77
    cp l                                          ; $50da: $bd

jr_0cf_50db:
    ld [hl], a                                    ; $50db: $77
    cp l                                          ; $50dc: $bd
    ld [hl], a                                    ; $50dd: $77
    cp l                                          ; $50de: $bd
    ld [hl], a                                    ; $50df: $77
    cp l                                          ; $50e0: $bd
    ld [hl], a                                    ; $50e1: $77
    cp l                                          ; $50e2: $bd
    ld [hl], a                                    ; $50e3: $77
    cp l                                          ; $50e4: $bd
    ld [hl], a                                    ; $50e5: $77
    cp l                                          ; $50e6: $bd
    ld [hl], a                                    ; $50e7: $77
    cp l                                          ; $50e8: $bd
    ld [hl], a                                    ; $50e9: $77
    cp l                                          ; $50ea: $bd
    ld [hl], a                                    ; $50eb: $77
    cp l                                          ; $50ec: $bd
    ld [hl], a                                    ; $50ed: $77
    cp l                                          ; $50ee: $bd
    ld [hl], a                                    ; $50ef: $77
    cp l                                          ; $50f0: $bd
    ld [hl], a                                    ; $50f1: $77
    ld c, e                                       ; $50f2: $4b
    ld sp, $7fd8                                  ; $50f3: $31 $d8 $7f
    add h                                         ; $50f6: $84
    ld l, [hl]                                    ; $50f7: $6e
    ld h, l                                       ; $50f8: $65
    ld c, l                                       ; $50f9: $4d
    inc d                                         ; $50fa: $14
    ld [hl], d                                    ; $50fb: $72
    ld l, [hl]                                    ; $50fc: $6e
    ld e, l                                       ; $50fd: $5d
    nop                                           ; $50fe: $00
    nop                                           ; $50ff: $00
    nop                                           ; $5100: $00
    nop                                           ; $5101: $00
    nop                                           ; $5102: $00
    nop                                           ; $5103: $00
    nop                                           ; $5104: $00
    nop                                           ; $5105: $00
    nop                                           ; $5106: $00
    nop                                           ; $5107: $00
    nop                                           ; $5108: $00
    nop                                           ; $5109: $00
    nop                                           ; $510a: $00
    nop                                           ; $510b: $00
    nop                                           ; $510c: $00
    nop                                           ; $510d: $00
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    nop                                           ; $5110: $00
    nop                                           ; $5111: $00
    nop                                           ; $5112: $00
    nop                                           ; $5113: $00
    nop                                           ; $5114: $00
    nop                                           ; $5115: $00
    nop                                           ; $5116: $00
    nop                                           ; $5117: $00
    nop                                           ; $5118: $00
    nop                                           ; $5119: $00
    nop                                           ; $511a: $00
    nop                                           ; $511b: $00
    nop                                           ; $511c: $00
    nop                                           ; $511d: $00
    nop                                           ; $511e: $00
    nop                                           ; $511f: $00
    nop                                           ; $5120: $00
    nop                                           ; $5121: $00
    nop                                           ; $5122: $00
    nop                                           ; $5123: $00
    nop                                           ; $5124: $00
    nop                                           ; $5125: $00
    nop                                           ; $5126: $00
    nop                                           ; $5127: $00
    nop                                           ; $5128: $00
    nop                                           ; $5129: $00
    nop                                           ; $512a: $00
    nop                                           ; $512b: $00
    nop                                           ; $512c: $00
    nop                                           ; $512d: $00
    nop                                           ; $512e: $00
    nop                                           ; $512f: $00
    nop                                           ; $5130: $00
    nop                                           ; $5131: $00
    ld d, d                                       ; $5132: $52
    ld c, d                                       ; $5133: $4a
    nop                                           ; $5134: $00
    ld a, a                                       ; $5135: $7f
    ld h, b                                       ; $5136: $60
    ld a, l                                       ; $5137: $7d
    ld h, b                                       ; $5138: $60
    ld c, b                                       ; $5139: $48
    add h                                         ; $513a: $84
    inc h                                         ; $513b: $24
    or b                                          ; $513c: $b0
    ld l, d                                       ; $513d: $6a
    ld a, [bc]                                    ; $513e: $0a
    ld d, d                                       ; $513f: $52
    ld h, l                                       ; $5140: $65
    dec a                                         ; $5141: $3d
    add h                                         ; $5142: $84
    inc h                                         ; $5143: $24
    cp $7f                                        ; $5144: $fe $7f
    ld d, h                                       ; $5146: $54
    ld [hl], e                                    ; $5147: $73
    call $7f6a                                    ; $5148: $cd $6a $7f
    ld l, a                                       ; $514b: $6f
    rst $38                                       ; $514c: $ff
    ld e, [hl]                                    ; $514d: $5e
    ld a, a                                       ; $514e: $7f
    ld c, [hl]                                    ; $514f: $4e
    rst $38                                       ; $5150: $ff
    dec a                                         ; $5151: $3d
    rst $38                                       ; $5152: $ff
    ld l, a                                       ; $5153: $6f
    sbc $67                                       ; $5154: $de $67
    sbc h                                         ; $5156: $9c
    ld e, a                                       ; $5157: $5f
    ld e, d                                       ; $5158: $5a
    ld d, a                                       ; $5159: $57
    ld a, [$b82f]                                 ; $515a: $fa $2f $b8
    daa                                           ; $515d: $27
    sub [hl]                                      ; $515e: $96
    inc hl                                        ; $515f: $23
    ld d, h                                       ; $5160: $54
    dec de                                        ; $5161: $1b
    ldh [$03], a                                  ; $5162: $e0 $03
    ret nz                                        ; $5164: $c0

    inc bc                                        ; $5165: $03
    add b                                         ; $5166: $80
    inc bc                                        ; $5167: $03
    ld h, b                                       ; $5168: $60
    inc bc                                        ; $5169: $03
    db $fd                                        ; $516a: $fd
    ld a, a                                       ; $516b: $7f
    db $db                                        ; $516c: $db
    ld a, e                                       ; $516d: $7b
    sbc c                                         ; $516e: $99
    ld [hl], e                                    ; $516f: $73
    ld [hl], a                                    ; $5170: $77
    ld l, a                                       ; $5171: $6f
    xor [hl]                                      ; $5172: $ae
    dec a                                         ; $5173: $3d
    and b                                         ; $5174: $a0
    ld a, l                                       ; $5175: $7d
    ldh [rNR43], a                                ; $5176: $e0 $22
    and b                                         ; $5178: $a0
    inc a                                         ; $5179: $3c
    dec bc                                        ; $517a: $0b
    ld b, l                                       ; $517b: $45
    and a                                         ; $517c: $a7
    inc l                                         ; $517d: $2c
    ld l, [hl]                                    ; $517e: $6e
    ld e, l                                       ; $517f: $5d
    add l                                         ; $5180: $85
    inc e                                         ; $5181: $1c
    nop                                           ; $5182: $00
    nop                                           ; $5183: $00
    inc de                                        ; $5184: $13
    ld l, b                                       ; $5185: $68
    ldh [rNR43], a                                ; $5186: $e0 $22
    rrca                                          ; $5188: $0f
    jr z, jr_0cf_518b                             ; $5189: $28 $00

jr_0cf_518b:
    nop                                           ; $518b: $00
    nop                                           ; $518c: $00
    nop                                           ; $518d: $00
    nop                                           ; $518e: $00
    nop                                           ; $518f: $00
    nop                                           ; $5190: $00
    nop                                           ; $5191: $00
    nop                                           ; $5192: $00
    nop                                           ; $5193: $00
    nop                                           ; $5194: $00
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    nop                                           ; $5197: $00
    nop                                           ; $5198: $00
    nop                                           ; $5199: $00
    nop                                           ; $519a: $00
    nop                                           ; $519b: $00
    nop                                           ; $519c: $00
    nop                                           ; $519d: $00
    nop                                           ; $519e: $00
    nop                                           ; $519f: $00
    nop                                           ; $51a0: $00
    nop                                           ; $51a1: $00
    nop                                           ; $51a2: $00
    nop                                           ; $51a3: $00
    nop                                           ; $51a4: $00
    nop                                           ; $51a5: $00
    nop                                           ; $51a6: $00
    nop                                           ; $51a7: $00
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00
    nop                                           ; $51aa: $00
    nop                                           ; $51ab: $00
    nop                                           ; $51ac: $00
    nop                                           ; $51ad: $00
    nop                                           ; $51ae: $00
    nop                                           ; $51af: $00
    nop                                           ; $51b0: $00
    nop                                           ; $51b1: $00
    ld l, $52                                     ; $51b2: $2e $52
    xor c                                         ; $51b4: $a9
    halt                                          ; $51b5: $76
    jp Jump_000_205d                              ; $51b6: $c3 $5d $20


    ld c, l                                       ; $51b9: $4d
    rra                                           ; $51ba: $1f
    ld a, h                                       ; $51bb: $7c
    ld [hl], a                                    ; $51bc: $77
    ld l, a                                       ; $51bd: $6f
    ld l, a                                       ; $51be: $6f
    ld d, d                                       ; $51bf: $52
    add [hl]                                      ; $51c0: $86
    add hl, sp                                    ; $51c1: $39
    rst $38                                       ; $51c2: $ff
    ld a, a                                       ; $51c3: $7f
    rst $38                                       ; $51c4: $ff
    ld a, a                                       ; $51c5: $7f
    rst $38                                       ; $51c6: $ff
    ld a, a                                       ; $51c7: $7f
    rst $38                                       ; $51c8: $ff
    ld a, a                                       ; $51c9: $7f
    rst $38                                       ; $51ca: $ff
    ld a, a                                       ; $51cb: $7f
    rst $38                                       ; $51cc: $ff
    ld a, a                                       ; $51cd: $7f
    rst $38                                       ; $51ce: $ff
    ld a, a                                       ; $51cf: $7f
    rst $38                                       ; $51d0: $ff
    ld a, a                                       ; $51d1: $7f
    rst $38                                       ; $51d2: $ff
    ld a, a                                       ; $51d3: $7f
    sbc $67                                       ; $51d4: $de $67
    sbc h                                         ; $51d6: $9c
    ld e, a                                       ; $51d7: $5f
    ld e, d                                       ; $51d8: $5a
    ld d, a                                       ; $51d9: $57
    jp c, $b833                                   ; $51da: $da $33 $b8

    daa                                           ; $51dd: $27
    sub [hl]                                      ; $51de: $96
    inc hl                                        ; $51df: $23
    ld d, h                                       ; $51e0: $54
    dec de                                        ; $51e1: $1b
    ldh [$03], a                                  ; $51e2: $e0 $03
    ret nz                                        ; $51e4: $c0

    inc bc                                        ; $51e5: $03
    add b                                         ; $51e6: $80
    inc bc                                        ; $51e7: $03
    ld h, b                                       ; $51e8: $60
    inc bc                                        ; $51e9: $03
    rst $38                                       ; $51ea: $ff
    ld a, a                                       ; $51eb: $7f
    rst $38                                       ; $51ec: $ff
    ld a, a                                       ; $51ed: $7f
    rst $38                                       ; $51ee: $ff
    ld a, a                                       ; $51ef: $7f
    rst $38                                       ; $51f0: $ff
    ld a, a                                       ; $51f1: $7f
    ld [hl], e                                    ; $51f2: $73
    ld c, [hl]                                    ; $51f3: $4e
    rla                                           ; $51f4: $17
    ld d, h                                       ; $51f5: $54
    rst $00                                       ; $51f6: $c7
    daa                                           ; $51f7: $27
    dec c                                         ; $51f8: $0d
    inc a                                         ; $51f9: $3c
    cp l                                          ; $51fa: $bd
    ld [hl], a                                    ; $51fb: $77
    cp l                                          ; $51fc: $bd
    ld [hl], a                                    ; $51fd: $77
    cp l                                          ; $51fe: $bd
    ld [hl], a                                    ; $51ff: $77
    cp l                                          ; $5200: $bd
    ld [hl], a                                    ; $5201: $77
    cp l                                          ; $5202: $bd
    ld [hl], a                                    ; $5203: $77
    cp l                                          ; $5204: $bd
    ld [hl], a                                    ; $5205: $77
    cp l                                          ; $5206: $bd
    ld [hl], a                                    ; $5207: $77
    cp l                                          ; $5208: $bd
    ld [hl], a                                    ; $5209: $77
    ld a, a                                       ; $520a: $7f
    ld l, a                                       ; $520b: $6f
    rst $38                                       ; $520c: $ff
    ld e, [hl]                                    ; $520d: $5e
    ld a, a                                       ; $520e: $7f
    ld c, [hl]                                    ; $520f: $4e
    rst $38                                       ; $5210: $ff
    dec a                                         ; $5211: $3d
    rst $38                                       ; $5212: $ff
    ld l, a                                       ; $5213: $6f
    sbc $67                                       ; $5214: $de $67
    sbc h                                         ; $5216: $9c
    ld e, a                                       ; $5217: $5f
    ld e, d                                       ; $5218: $5a
    ld d, a                                       ; $5219: $57
    ld a, [$b82f]                                 ; $521a: $fa $2f $b8
    daa                                           ; $521d: $27
    sub [hl]                                      ; $521e: $96
    inc hl                                        ; $521f: $23
    ld d, h                                       ; $5220: $54
    dec de                                        ; $5221: $1b
    ldh [$03], a                                  ; $5222: $e0 $03
    ret nz                                        ; $5224: $c0

    inc bc                                        ; $5225: $03
    add b                                         ; $5226: $80
    inc bc                                        ; $5227: $03
    ld h, b                                       ; $5228: $60
    inc bc                                        ; $5229: $03
    db $fd                                        ; $522a: $fd
    ld a, a                                       ; $522b: $7f
    db $db                                        ; $522c: $db
    ld a, e                                       ; $522d: $7b
    sbc c                                         ; $522e: $99
    ld [hl], e                                    ; $522f: $73
    ld [hl], a                                    ; $5230: $77
    ld l, a                                       ; $5231: $6f
    ld d, b                                       ; $5232: $50
    ld c, [hl]                                    ; $5233: $4e
    ld e, $3c                                     ; $5234: $1e $3c
    sub h                                         ; $5236: $94
    ld a, l                                       ; $5237: $7d
    nop                                           ; $5238: $00
    db $10                                        ; $5239: $10
    di                                            ; $523a: $f3
    ld c, l                                       ; $523b: $4d
    ldh [$7f], a                                  ; $523c: $e0 $7f
    ret nz                                        ; $523e: $c0

    ld a, c                                       ; $523f: $79
    ldh [rLY], a                                  ; $5240: $e0 $44
    rst $38                                       ; $5242: $ff
    ld a, a                                       ; $5243: $7f
    rst $38                                       ; $5244: $ff
    ld a, a                                       ; $5245: $7f
    rst $38                                       ; $5246: $ff
    ld a, a                                       ; $5247: $7f
    rst $38                                       ; $5248: $ff
    ld a, a                                       ; $5249: $7f
    rst $38                                       ; $524a: $ff
    ld a, a                                       ; $524b: $7f
    rst $38                                       ; $524c: $ff
    ld a, a                                       ; $524d: $7f
    rst $38                                       ; $524e: $ff
    ld a, a                                       ; $524f: $7f
    rst $38                                       ; $5250: $ff
    ld a, a                                       ; $5251: $7f
    rst $38                                       ; $5252: $ff
    ld a, a                                       ; $5253: $7f
    sbc $67                                       ; $5254: $de $67
    sbc h                                         ; $5256: $9c
    ld e, a                                       ; $5257: $5f
    ld e, d                                       ; $5258: $5a
    ld d, a                                       ; $5259: $57
    ld a, [$b82f]                                 ; $525a: $fa $2f $b8
    daa                                           ; $525d: $27
    sub [hl]                                      ; $525e: $96
    inc hl                                        ; $525f: $23
    ld d, h                                       ; $5260: $54
    dec de                                        ; $5261: $1b
    ldh [$03], a                                  ; $5262: $e0 $03
    ret nz                                        ; $5264: $c0

    inc bc                                        ; $5265: $03
    add b                                         ; $5266: $80
    inc bc                                        ; $5267: $03
    ld h, b                                       ; $5268: $60
    inc bc                                        ; $5269: $03
    db $fd                                        ; $526a: $fd
    ld a, a                                       ; $526b: $7f
    db $db                                        ; $526c: $db
    ld a, e                                       ; $526d: $7b
    sbc c                                         ; $526e: $99
    ld [hl], e                                    ; $526f: $73
    ld [hl], a                                    ; $5270: $77
    ld l, a                                       ; $5271: $6f
    xor b                                         ; $5272: $a8
    add hl, sp                                    ; $5273: $39
    dec b                                         ; $5274: $05
    ld c, b                                       ; $5275: $48
    xor d                                         ; $5276: $aa
    ld a, h                                       ; $5277: $7c
    ldh [$7f], a                                  ; $5278: $e0 $7f
    xor h                                         ; $527a: $ac
    add hl, sp                                    ; $527b: $39
    nop                                           ; $527c: $00
    nop                                           ; $527d: $00
    nop                                           ; $527e: $00
    nop                                           ; $527f: $00
    nop                                           ; $5280: $00
    nop                                           ; $5281: $00
    nop                                           ; $5282: $00
    nop                                           ; $5283: $00
    nop                                           ; $5284: $00
    nop                                           ; $5285: $00
    nop                                           ; $5286: $00
    nop                                           ; $5287: $00
    nop                                           ; $5288: $00
    nop                                           ; $5289: $00
    nop                                           ; $528a: $00
    nop                                           ; $528b: $00
    nop                                           ; $528c: $00
    nop                                           ; $528d: $00
    nop                                           ; $528e: $00
    nop                                           ; $528f: $00
    nop                                           ; $5290: $00
    nop                                           ; $5291: $00
    nop                                           ; $5292: $00
    nop                                           ; $5293: $00
    nop                                           ; $5294: $00
    nop                                           ; $5295: $00
    nop                                           ; $5296: $00
    nop                                           ; $5297: $00
    nop                                           ; $5298: $00
    nop                                           ; $5299: $00
    nop                                           ; $529a: $00
    nop                                           ; $529b: $00
    nop                                           ; $529c: $00
    nop                                           ; $529d: $00
    nop                                           ; $529e: $00
    nop                                           ; $529f: $00
    nop                                           ; $52a0: $00
    nop                                           ; $52a1: $00
    nop                                           ; $52a2: $00
    nop                                           ; $52a3: $00
    nop                                           ; $52a4: $00
    nop                                           ; $52a5: $00
    nop                                           ; $52a6: $00
    nop                                           ; $52a7: $00
    nop                                           ; $52a8: $00
    nop                                           ; $52a9: $00
    nop                                           ; $52aa: $00
    nop                                           ; $52ab: $00
    nop                                           ; $52ac: $00
    nop                                           ; $52ad: $00
    nop                                           ; $52ae: $00
    nop                                           ; $52af: $00
    nop                                           ; $52b0: $00
    nop                                           ; $52b1: $00
    adc $39                                       ; $52b2: $ce $39
    rst $38                                       ; $52b4: $ff
    ld a, a                                       ; $52b5: $7f
    ld d, e                                       ; $52b6: $53
    inc bc                                        ; $52b7: $03
    nop                                           ; $52b8: $00
    ld a, [hl-]                                   ; $52b9: $3a
    cp l                                          ; $52ba: $bd
    ld [hl], a                                    ; $52bb: $77
    rra                                           ; $52bc: $1f
    ld h, a                                       ; $52bd: $67
    ld e, d                                       ; $52be: $5a
    ld l, e                                       ; $52bf: $6b
    jr jr_0cf_5325                                ; $52c0: $18 $63

    rra                                           ; $52c2: $1f
    nop                                           ; $52c3: $00
    ld e, $00                                     ; $52c4: $1e $00
    inc e                                         ; $52c6: $1c
    nop                                           ; $52c7: $00
    dec de                                        ; $52c8: $1b
    nop                                           ; $52c9: $00
    ld a, a                                       ; $52ca: $7f
    ld l, a                                       ; $52cb: $6f
    rst $38                                       ; $52cc: $ff
    ld e, [hl]                                    ; $52cd: $5e
    ld a, a                                       ; $52ce: $7f
    ld c, [hl]                                    ; $52cf: $4e
    rst $38                                       ; $52d0: $ff
    dec a                                         ; $52d1: $3d
    rst $38                                       ; $52d2: $ff
    ld l, a                                       ; $52d3: $6f
    sbc $67                                       ; $52d4: $de $67
    sbc h                                         ; $52d6: $9c
    ld e, a                                       ; $52d7: $5f
    ld e, d                                       ; $52d8: $5a
    ld d, a                                       ; $52d9: $57
    ld a, [$b82f]                                 ; $52da: $fa $2f $b8
    daa                                           ; $52dd: $27
    sub [hl]                                      ; $52de: $96
    inc hl                                        ; $52df: $23
    ld d, h                                       ; $52e0: $54
    dec de                                        ; $52e1: $1b
    ldh [$03], a                                  ; $52e2: $e0 $03
    ret nz                                        ; $52e4: $c0

    inc bc                                        ; $52e5: $03
    add b                                         ; $52e6: $80
    inc bc                                        ; $52e7: $03
    ld h, b                                       ; $52e8: $60
    inc bc                                        ; $52e9: $03
    db $fd                                        ; $52ea: $fd
    ld a, a                                       ; $52eb: $7f
    db $db                                        ; $52ec: $db
    ld a, e                                       ; $52ed: $7b
    sbc c                                         ; $52ee: $99
    ld [hl], e                                    ; $52ef: $73
    ld [hl], a                                    ; $52f0: $77
    ld l, a                                       ; $52f1: $6f
    db $10                                        ; $52f2: $10
    ld b, d                                       ; $52f3: $42
    call nz, Call_0cf_647e                        ; $52f4: $c4 $7e $64
    ld [hl], l                                    ; $52f7: $75
    jp nz, $8440                                  ; $52f8: $c2 $40 $84

    inc h                                         ; $52fb: $24
    add h                                         ; $52fc: $84
    inc h                                         ; $52fd: $24
    add h                                         ; $52fe: $84
    inc h                                         ; $52ff: $24
    add h                                         ; $5300: $84
    inc h                                         ; $5301: $24
    add h                                         ; $5302: $84
    inc h                                         ; $5303: $24
    cp $7f                                        ; $5304: $fe $7f
    ld d, h                                       ; $5306: $54
    ld [hl], e                                    ; $5307: $73
    call $fe6a                                    ; $5308: $cd $6a $fe
    ld a, a                                       ; $530b: $7f
    cp $7f                                        ; $530c: $fe $7f
    cp $7f                                        ; $530e: $fe $7f
    cp $7f                                        ; $5310: $fe $7f
    rst $38                                       ; $5312: $ff
    ld l, a                                       ; $5313: $6f
    sbc $67                                       ; $5314: $de $67
    sbc h                                         ; $5316: $9c
    ld e, a                                       ; $5317: $5f
    ld e, d                                       ; $5318: $5a
    ld d, a                                       ; $5319: $57
    ld a, [$b82f]                                 ; $531a: $fa $2f $b8
    daa                                           ; $531d: $27
    sub [hl]                                      ; $531e: $96
    inc hl                                        ; $531f: $23
    ld d, h                                       ; $5320: $54
    dec de                                        ; $5321: $1b
    ldh [$03], a                                  ; $5322: $e0 $03
    ret nz                                        ; $5324: $c0

jr_0cf_5325:
    inc bc                                        ; $5325: $03
    add b                                         ; $5326: $80
    inc bc                                        ; $5327: $03
    ld h, b                                       ; $5328: $60
    inc bc                                        ; $5329: $03
    db $fd                                        ; $532a: $fd
    ld a, a                                       ; $532b: $7f
    db $db                                        ; $532c: $db
    ld a, e                                       ; $532d: $7b
    sbc c                                         ; $532e: $99
    ld [hl], e                                    ; $532f: $73
    ld [hl], a                                    ; $5330: $77
    ld l, a                                       ; $5331: $6f
    xor l                                         ; $5332: $ad
    dec [hl]                                      ; $5333: $35
    inc l                                         ; $5334: $2c
    inc b                                         ; $5335: $04
    sbc d                                         ; $5336: $9a
    nop                                           ; $5337: $00
    rst $38                                       ; $5338: $ff
    ld [bc], a                                    ; $5339: $02
    cp l                                          ; $533a: $bd
    ld [hl], a                                    ; $533b: $77
    cp l                                          ; $533c: $bd
    ld [hl], a                                    ; $533d: $77
    cp l                                          ; $533e: $bd
    ld [hl], a                                    ; $533f: $77
    cp l                                          ; $5340: $bd
    ld [hl], a                                    ; $5341: $77
    cp l                                          ; $5342: $bd
    ld [hl], a                                    ; $5343: $77
    cp l                                          ; $5344: $bd
    ld [hl], a                                    ; $5345: $77
    cp l                                          ; $5346: $bd
    ld [hl], a                                    ; $5347: $77
    cp l                                          ; $5348: $bd
    ld [hl], a                                    ; $5349: $77
    cp l                                          ; $534a: $bd
    ld [hl], a                                    ; $534b: $77
    cp l                                          ; $534c: $bd
    ld [hl], a                                    ; $534d: $77
    cp l                                          ; $534e: $bd
    ld [hl], a                                    ; $534f: $77
    cp l                                          ; $5350: $bd
    ld [hl], a                                    ; $5351: $77
    cp l                                          ; $5352: $bd
    ld [hl], a                                    ; $5353: $77
    cp l                                          ; $5354: $bd
    ld [hl], a                                    ; $5355: $77
    cp l                                          ; $5356: $bd
    ld [hl], a                                    ; $5357: $77
    cp l                                          ; $5358: $bd
    ld [hl], a                                    ; $5359: $77
    cp l                                          ; $535a: $bd
    ld [hl], a                                    ; $535b: $77
    cp l                                          ; $535c: $bd
    ld [hl], a                                    ; $535d: $77
    cp l                                          ; $535e: $bd
    ld [hl], a                                    ; $535f: $77
    cp l                                          ; $5360: $bd
    ld [hl], a                                    ; $5361: $77
    cp l                                          ; $5362: $bd
    ld [hl], a                                    ; $5363: $77
    cp l                                          ; $5364: $bd
    ld [hl], a                                    ; $5365: $77
    cp l                                          ; $5366: $bd
    ld [hl], a                                    ; $5367: $77
    cp l                                          ; $5368: $bd
    ld [hl], a                                    ; $5369: $77
    cp l                                          ; $536a: $bd
    ld [hl], a                                    ; $536b: $77
    cp l                                          ; $536c: $bd
    ld [hl], a                                    ; $536d: $77
    cp l                                          ; $536e: $bd
    ld [hl], a                                    ; $536f: $77
    cp l                                          ; $5370: $bd
    ld [hl], a                                    ; $5371: $77
    ld c, e                                       ; $5372: $4b
    ld sp, $4920                                  ; $5373: $31 $20 $49
    ld b, b                                       ; $5376: $40
    ld a, [hl]                                    ; $5377: $7e
    or $7f                                        ; $5378: $f6 $7f
    ld c, e                                       ; $537a: $4b
    ld sp, $0dc0                                  ; $537b: $31 $c0 $0d
    add h                                         ; $537e: $84
    ld b, $48                                     ; $537f: $06 $48
    inc bc                                        ; $5381: $03
    rra                                           ; $5382: $1f
    ld a, h                                       ; $5383: $7c
    nop                                           ; $5384: $00
    nop                                           ; $5385: $00
    nop                                           ; $5386: $00
    nop                                           ; $5387: $00
    nop                                           ; $5388: $00
    nop                                           ; $5389: $00
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    nop                                           ; $538c: $00
    nop                                           ; $538d: $00
    nop                                           ; $538e: $00
    nop                                           ; $538f: $00
    nop                                           ; $5390: $00
    nop                                           ; $5391: $00
    nop                                           ; $5392: $00
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    nop                                           ; $5395: $00
    nop                                           ; $5396: $00
    nop                                           ; $5397: $00
    nop                                           ; $5398: $00
    nop                                           ; $5399: $00
    nop                                           ; $539a: $00
    nop                                           ; $539b: $00
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    nop                                           ; $539e: $00
    nop                                           ; $539f: $00
    nop                                           ; $53a0: $00
    nop                                           ; $53a1: $00
    nop                                           ; $53a2: $00
    nop                                           ; $53a3: $00
    nop                                           ; $53a4: $00
    nop                                           ; $53a5: $00
    nop                                           ; $53a6: $00
    nop                                           ; $53a7: $00
    nop                                           ; $53a8: $00
    nop                                           ; $53a9: $00
    nop                                           ; $53aa: $00
    nop                                           ; $53ab: $00
    nop                                           ; $53ac: $00
    nop                                           ; $53ad: $00
    nop                                           ; $53ae: $00
    nop                                           ; $53af: $00
    nop                                           ; $53b0: $00
    nop                                           ; $53b1: $00
    xor [hl]                                      ; $53b2: $ae
    dec a                                         ; $53b3: $3d
    sbc a                                         ; $53b4: $9f
    ld a, [hl]                                    ; $53b5: $7e
    ld e, d                                       ; $53b6: $5a
    ld h, b                                       ; $53b7: $60
    ld c, d                                       ; $53b8: $4a
    jr z, jr_0cf_5425                             ; $53b9: $28 $6a

    dec l                                         ; $53bb: $2d
    nop                                           ; $53bc: $00
    nop                                           ; $53bd: $00
    nop                                           ; $53be: $00
    nop                                           ; $53bf: $00
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    nop                                           ; $53c2: $00
    nop                                           ; $53c3: $00
    nop                                           ; $53c4: $00
    nop                                           ; $53c5: $00
    nop                                           ; $53c6: $00
    nop                                           ; $53c7: $00
    nop                                           ; $53c8: $00
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    nop                                           ; $53cb: $00
    nop                                           ; $53cc: $00
    nop                                           ; $53cd: $00
    nop                                           ; $53ce: $00
    nop                                           ; $53cf: $00
    nop                                           ; $53d0: $00
    nop                                           ; $53d1: $00
    nop                                           ; $53d2: $00
    nop                                           ; $53d3: $00
    nop                                           ; $53d4: $00
    nop                                           ; $53d5: $00
    nop                                           ; $53d6: $00
    nop                                           ; $53d7: $00
    nop                                           ; $53d8: $00
    nop                                           ; $53d9: $00
    nop                                           ; $53da: $00
    nop                                           ; $53db: $00
    nop                                           ; $53dc: $00
    nop                                           ; $53dd: $00
    nop                                           ; $53de: $00
    nop                                           ; $53df: $00
    nop                                           ; $53e0: $00
    nop                                           ; $53e1: $00
    nop                                           ; $53e2: $00
    nop                                           ; $53e3: $00
    nop                                           ; $53e4: $00
    nop                                           ; $53e5: $00
    nop                                           ; $53e6: $00
    nop                                           ; $53e7: $00
    nop                                           ; $53e8: $00
    nop                                           ; $53e9: $00
    nop                                           ; $53ea: $00
    nop                                           ; $53eb: $00
    nop                                           ; $53ec: $00
    nop                                           ; $53ed: $00
    nop                                           ; $53ee: $00
    nop                                           ; $53ef: $00
    nop                                           ; $53f0: $00
    nop                                           ; $53f1: $00
    rlca                                          ; $53f2: $07
    inc e                                         ; $53f3: $1c
    rst $38                                       ; $53f4: $ff
    rra                                           ; $53f5: $1f
    ld a, $02                                     ; $53f6: $3e $02
    ld a, [hl-]                                   ; $53f8: $3a
    dec b                                         ; $53f9: $05
    cp l                                          ; $53fa: $bd
    ld a, a                                       ; $53fb: $7f
    cp l                                          ; $53fc: $bd
    ld a, a                                       ; $53fd: $7f
    cp l                                          ; $53fe: $bd
    ld a, a                                       ; $53ff: $7f
    cp l                                          ; $5400: $bd
    ld a, a                                       ; $5401: $7f
    rra                                           ; $5402: $1f
    nop                                           ; $5403: $00
    ld e, $00                                     ; $5404: $1e $00
    inc e                                         ; $5406: $1c
    nop                                           ; $5407: $00
    dec de                                        ; $5408: $1b
    nop                                           ; $5409: $00
    ld a, a                                       ; $540a: $7f
    ld l, a                                       ; $540b: $6f
    rst $38                                       ; $540c: $ff
    ld e, [hl]                                    ; $540d: $5e
    ld a, a                                       ; $540e: $7f
    ld c, [hl]                                    ; $540f: $4e
    rst $38                                       ; $5410: $ff
    dec a                                         ; $5411: $3d
    rst $38                                       ; $5412: $ff
    ld l, a                                       ; $5413: $6f
    sbc $67                                       ; $5414: $de $67
    sbc h                                         ; $5416: $9c
    ld e, a                                       ; $5417: $5f
    ld e, d                                       ; $5418: $5a
    ld d, a                                       ; $5419: $57
    ld a, [$b82f]                                 ; $541a: $fa $2f $b8
    daa                                           ; $541d: $27
    sub [hl]                                      ; $541e: $96
    inc hl                                        ; $541f: $23
    ld d, h                                       ; $5420: $54
    dec de                                        ; $5421: $1b
    ldh [$03], a                                  ; $5422: $e0 $03
    ret nz                                        ; $5424: $c0

jr_0cf_5425:
    inc bc                                        ; $5425: $03
    add b                                         ; $5426: $80
    inc bc                                        ; $5427: $03
    ld h, b                                       ; $5428: $60
    inc bc                                        ; $5429: $03
    db $fd                                        ; $542a: $fd
    ld a, a                                       ; $542b: $7f
    db $db                                        ; $542c: $db
    ld a, e                                       ; $542d: $7b
    sbc c                                         ; $542e: $99
    ld [hl], e                                    ; $542f: $73
    ld [hl], a                                    ; $5430: $77
    ld l, a                                       ; $5431: $6f
    adc $39                                       ; $5432: $ce $39
    rst $38                                       ; $5434: $ff
    daa                                           ; $5435: $27
    rst $38                                       ; $5436: $ff
    ld bc, $0016                                  ; $5437: $01 $16 $00
    cp l                                          ; $543a: $bd
    ld [hl], a                                    ; $543b: $77
    rra                                           ; $543c: $1f
    ld h, a                                       ; $543d: $67
    ld e, d                                       ; $543e: $5a
    ld l, e                                       ; $543f: $6b
    jr jr_0cf_54a5                                ; $5440: $18 $63

    rra                                           ; $5442: $1f
    nop                                           ; $5443: $00
    ld e, $00                                     ; $5444: $1e $00
    inc e                                         ; $5446: $1c
    nop                                           ; $5447: $00
    dec de                                        ; $5448: $1b
    nop                                           ; $5449: $00
    ld a, a                                       ; $544a: $7f
    ld l, a                                       ; $544b: $6f
    rst $38                                       ; $544c: $ff
    ld e, [hl]                                    ; $544d: $5e
    ld a, a                                       ; $544e: $7f
    ld c, [hl]                                    ; $544f: $4e
    rst $38                                       ; $5450: $ff
    dec a                                         ; $5451: $3d
    rst $38                                       ; $5452: $ff
    ld l, a                                       ; $5453: $6f
    sbc $67                                       ; $5454: $de $67
    sbc h                                         ; $5456: $9c
    ld e, a                                       ; $5457: $5f
    ld e, d                                       ; $5458: $5a
    ld d, a                                       ; $5459: $57
    ld a, [$b82f]                                 ; $545a: $fa $2f $b8
    daa                                           ; $545d: $27
    sub [hl]                                      ; $545e: $96
    inc hl                                        ; $545f: $23
    ld d, h                                       ; $5460: $54
    dec de                                        ; $5461: $1b
    ldh [$03], a                                  ; $5462: $e0 $03
    ret nz                                        ; $5464: $c0

    inc bc                                        ; $5465: $03
    add b                                         ; $5466: $80
    inc bc                                        ; $5467: $03
    ld h, b                                       ; $5468: $60
    inc bc                                        ; $5469: $03
    db $fd                                        ; $546a: $fd
    ld a, a                                       ; $546b: $7f
    db $db                                        ; $546c: $db
    ld a, e                                       ; $546d: $7b
    sbc c                                         ; $546e: $99
    ld [hl], e                                    ; $546f: $73
    ld [hl], a                                    ; $5470: $77
    ld l, a                                       ; $5471: $6f
    rra                                           ; $5472: $1f
    ld a, h                                       ; $5473: $7c
    ld e, a                                       ; $5474: $5f
    ld l, [hl]                                    ; $5475: $6e
    rla                                           ; $5476: $17
    ld c, h                                       ; $5477: $4c
    ld l, e                                       ; $5478: $6b
    inc l                                         ; $5479: $2c
    rst $30                                       ; $547a: $f7
    ld e, [hl]                                    ; $547b: $5e
    rst $30                                       ; $547c: $f7
    ld e, [hl]                                    ; $547d: $5e
    rst $30                                       ; $547e: $f7
    ld e, [hl]                                    ; $547f: $5e
    rst $30                                       ; $5480: $f7
    ld e, [hl]                                    ; $5481: $5e
    rra                                           ; $5482: $1f
    nop                                           ; $5483: $00
    ld e, $00                                     ; $5484: $1e $00
    inc e                                         ; $5486: $1c
    nop                                           ; $5487: $00
    dec de                                        ; $5488: $1b
    nop                                           ; $5489: $00
    ld a, a                                       ; $548a: $7f
    ld l, a                                       ; $548b: $6f
    rst $38                                       ; $548c: $ff
    ld e, [hl]                                    ; $548d: $5e
    ld a, a                                       ; $548e: $7f
    ld c, [hl]                                    ; $548f: $4e
    rst $38                                       ; $5490: $ff
    dec a                                         ; $5491: $3d
    rst $38                                       ; $5492: $ff
    ld l, a                                       ; $5493: $6f
    sbc $67                                       ; $5494: $de $67
    sbc h                                         ; $5496: $9c
    ld e, a                                       ; $5497: $5f
    ld e, d                                       ; $5498: $5a
    ld d, a                                       ; $5499: $57
    ld a, [$b82f]                                 ; $549a: $fa $2f $b8
    daa                                           ; $549d: $27
    sub [hl]                                      ; $549e: $96
    inc hl                                        ; $549f: $23
    ld d, h                                       ; $54a0: $54
    dec de                                        ; $54a1: $1b
    ldh [$03], a                                  ; $54a2: $e0 $03
    ret nz                                        ; $54a4: $c0

jr_0cf_54a5:
    inc bc                                        ; $54a5: $03
    add b                                         ; $54a6: $80
    inc bc                                        ; $54a7: $03
    ld h, b                                       ; $54a8: $60
    inc bc                                        ; $54a9: $03
    db $fd                                        ; $54aa: $fd
    ld a, a                                       ; $54ab: $7f
    db $db                                        ; $54ac: $db
    ld a, e                                       ; $54ad: $7b
    sbc c                                         ; $54ae: $99
    ld [hl], e                                    ; $54af: $73
    ld [hl], a                                    ; $54b0: $77
    ld l, a                                       ; $54b1: $6f
    adc $39                                       ; $54b2: $ce $39
    rst $28                                       ; $54b4: $ef
    ld a, a                                       ; $54b5: $7f
    add c                                         ; $54b6: $81
    halt                                          ; $54b7: $76
    add b                                         ; $54b8: $80
    ld c, c                                       ; $54b9: $49
    cp l                                          ; $54ba: $bd
    ld [hl], a                                    ; $54bb: $77
    rra                                           ; $54bc: $1f
    ld h, a                                       ; $54bd: $67
    ld e, d                                       ; $54be: $5a
    ld l, e                                       ; $54bf: $6b
    jr jr_0cf_5525                                ; $54c0: $18 $63

    rra                                           ; $54c2: $1f
    nop                                           ; $54c3: $00
    ld e, $00                                     ; $54c4: $1e $00
    inc e                                         ; $54c6: $1c
    nop                                           ; $54c7: $00
    dec de                                        ; $54c8: $1b
    nop                                           ; $54c9: $00
    ld a, a                                       ; $54ca: $7f
    ld l, a                                       ; $54cb: $6f
    rst $38                                       ; $54cc: $ff
    ld e, [hl]                                    ; $54cd: $5e
    ld a, a                                       ; $54ce: $7f
    ld c, [hl]                                    ; $54cf: $4e
    rst $38                                       ; $54d0: $ff
    dec a                                         ; $54d1: $3d
    rst $38                                       ; $54d2: $ff
    ld l, a                                       ; $54d3: $6f
    sbc $67                                       ; $54d4: $de $67
    sbc h                                         ; $54d6: $9c
    ld e, a                                       ; $54d7: $5f
    ld e, d                                       ; $54d8: $5a
    ld d, a                                       ; $54d9: $57
    ld a, [$b82f]                                 ; $54da: $fa $2f $b8
    daa                                           ; $54dd: $27
    sub [hl]                                      ; $54de: $96
    inc hl                                        ; $54df: $23
    ld d, h                                       ; $54e0: $54
    dec de                                        ; $54e1: $1b
    ldh [$03], a                                  ; $54e2: $e0 $03
    ret nz                                        ; $54e4: $c0

    inc bc                                        ; $54e5: $03
    add b                                         ; $54e6: $80
    inc bc                                        ; $54e7: $03
    ld h, b                                       ; $54e8: $60
    inc bc                                        ; $54e9: $03
    db $fd                                        ; $54ea: $fd
    ld a, a                                       ; $54eb: $7f
    db $db                                        ; $54ec: $db
    ld a, e                                       ; $54ed: $7b
    sbc c                                         ; $54ee: $99
    ld [hl], e                                    ; $54ef: $73
    ld [hl], a                                    ; $54f0: $77
    ld l, a                                       ; $54f1: $6f
    db $10                                        ; $54f2: $10
    ld b, d                                       ; $54f3: $42
    rst $38                                       ; $54f4: $ff
    inc bc                                        ; $54f5: $03
    ld e, a                                       ; $54f6: $5f
    ld [bc], a                                    ; $54f7: $02
    rla                                           ; $54f8: $17
    ld bc, $6fff                                  ; $54f9: $01 $ff $6f
    rst $38                                       ; $54fc: $ff
    ld l, a                                       ; $54fd: $6f
    rst $38                                       ; $54fe: $ff
    ld l, a                                       ; $54ff: $6f
    rst $38                                       ; $5500: $ff
    ld l, a                                       ; $5501: $6f
    rst $38                                       ; $5502: $ff
    ld l, a                                       ; $5503: $6f
    rst $38                                       ; $5504: $ff
    ld l, a                                       ; $5505: $6f
    rst $38                                       ; $5506: $ff
    ld l, a                                       ; $5507: $6f
    rst $38                                       ; $5508: $ff
    ld l, a                                       ; $5509: $6f
    rst $38                                       ; $550a: $ff
    ld l, a                                       ; $550b: $6f
    rst $38                                       ; $550c: $ff
    ld l, a                                       ; $550d: $6f
    rst $38                                       ; $550e: $ff
    ld l, a                                       ; $550f: $6f
    rst $38                                       ; $5510: $ff
    ld l, a                                       ; $5511: $6f
    rst $38                                       ; $5512: $ff
    ld l, a                                       ; $5513: $6f
    rst $38                                       ; $5514: $ff
    ld l, a                                       ; $5515: $6f
    rst $38                                       ; $5516: $ff
    ld l, a                                       ; $5517: $6f
    rst $38                                       ; $5518: $ff
    ld l, a                                       ; $5519: $6f
    rst $38                                       ; $551a: $ff
    ld l, a                                       ; $551b: $6f
    rst $38                                       ; $551c: $ff
    ld l, a                                       ; $551d: $6f
    rst $38                                       ; $551e: $ff
    ld l, a                                       ; $551f: $6f
    rst $38                                       ; $5520: $ff
    ld l, a                                       ; $5521: $6f
    rst $38                                       ; $5522: $ff
    ld l, a                                       ; $5523: $6f
    rst $38                                       ; $5524: $ff

jr_0cf_5525:
    ld l, a                                       ; $5525: $6f
    rst $38                                       ; $5526: $ff
    ld l, a                                       ; $5527: $6f
    rst $38                                       ; $5528: $ff
    ld l, a                                       ; $5529: $6f
    rst $38                                       ; $552a: $ff
    ld l, a                                       ; $552b: $6f
    rst $38                                       ; $552c: $ff
    ld l, a                                       ; $552d: $6f
    rst $38                                       ; $552e: $ff
    ld l, a                                       ; $552f: $6f
    rst $38                                       ; $5530: $ff
    ld l, a                                       ; $5531: $6f
    or e                                          ; $5532: $b3
    ld e, [hl]                                    ; $5533: $5e
    db $ed                                        ; $5534: $ed
    ld l, a                                       ; $5535: $6f
    ldh [$36], a                                  ; $5536: $e0 $36
    and b                                         ; $5538: $a0
    add hl, de                                    ; $5539: $19
    xor a                                         ; $553a: $af
    dec [hl]                                      ; $553b: $35
    nop                                           ; $553c: $00
    nop                                           ; $553d: $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    nop                                           ; $5540: $00
    nop                                           ; $5541: $00
    nop                                           ; $5542: $00
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    nop                                           ; $5545: $00
    nop                                           ; $5546: $00
    nop                                           ; $5547: $00
    nop                                           ; $5548: $00
    nop                                           ; $5549: $00
    nop                                           ; $554a: $00
    nop                                           ; $554b: $00
    nop                                           ; $554c: $00
    nop                                           ; $554d: $00
    nop                                           ; $554e: $00
    nop                                           ; $554f: $00
    nop                                           ; $5550: $00
    nop                                           ; $5551: $00
    nop                                           ; $5552: $00
    nop                                           ; $5553: $00
    nop                                           ; $5554: $00
    nop                                           ; $5555: $00
    nop                                           ; $5556: $00
    nop                                           ; $5557: $00
    nop                                           ; $5558: $00
    nop                                           ; $5559: $00
    nop                                           ; $555a: $00
    nop                                           ; $555b: $00
    nop                                           ; $555c: $00
    nop                                           ; $555d: $00
    nop                                           ; $555e: $00
    nop                                           ; $555f: $00
    nop                                           ; $5560: $00
    nop                                           ; $5561: $00
    nop                                           ; $5562: $00
    nop                                           ; $5563: $00
    nop                                           ; $5564: $00
    nop                                           ; $5565: $00
    nop                                           ; $5566: $00
    nop                                           ; $5567: $00
    nop                                           ; $5568: $00
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    nop                                           ; $556b: $00
    nop                                           ; $556c: $00
    nop                                           ; $556d: $00
    nop                                           ; $556e: $00
    nop                                           ; $556f: $00
    nop                                           ; $5570: $00
    nop                                           ; $5571: $00
    and e                                         ; $5572: $a3
    inc d                                         ; $5573: $14
    ld a, [$eb1f]                                 ; $5574: $fa $1f $eb
    ld [bc], a                                    ; $5577: $02
    add h                                         ; $5578: $84
    ld bc, $7214                                  ; $5579: $01 $14 $72
    dec bc                                        ; $557c: $0b
    ld b, l                                       ; $557d: $45
    add l                                         ; $557e: $85
    inc e                                         ; $557f: $1c
    rst $38                                       ; $5580: $ff
    ld a, a                                       ; $5581: $7f
    rst $38                                       ; $5582: $ff
    ld a, a                                       ; $5583: $7f
    rst $38                                       ; $5584: $ff
    ld a, a                                       ; $5585: $7f
    rst $38                                       ; $5586: $ff
    ld a, a                                       ; $5587: $7f
    rst $38                                       ; $5588: $ff
    ld a, a                                       ; $5589: $7f
    rst $38                                       ; $558a: $ff
    ld a, a                                       ; $558b: $7f
    rst $38                                       ; $558c: $ff
    ld a, a                                       ; $558d: $7f
    rst $38                                       ; $558e: $ff
    ld a, a                                       ; $558f: $7f
    rst $38                                       ; $5590: $ff
    ld a, a                                       ; $5591: $7f
    rst $38                                       ; $5592: $ff
    ld a, a                                       ; $5593: $7f
    sbc $67                                       ; $5594: $de $67
    sbc h                                         ; $5596: $9c
    ld e, a                                       ; $5597: $5f
    ld e, d                                       ; $5598: $5a
    ld d, a                                       ; $5599: $57
    ld a, [$b82f]                                 ; $559a: $fa $2f $b8
    daa                                           ; $559d: $27
    sub [hl]                                      ; $559e: $96
    inc hl                                        ; $559f: $23
    ld d, h                                       ; $55a0: $54
    dec de                                        ; $55a1: $1b
    ldh [$03], a                                  ; $55a2: $e0 $03
    ret nz                                        ; $55a4: $c0

    inc bc                                        ; $55a5: $03
    add b                                         ; $55a6: $80
    inc bc                                        ; $55a7: $03
    ld h, b                                       ; $55a8: $60
    inc bc                                        ; $55a9: $03
    db $fd                                        ; $55aa: $fd
    ld a, a                                       ; $55ab: $7f
    db $db                                        ; $55ac: $db
    ld a, e                                       ; $55ad: $7b
    sbc c                                         ; $55ae: $99
    ld [hl], e                                    ; $55af: $73
    ld [hl], a                                    ; $55b0: $77
    ld l, a                                       ; $55b1: $6f
    xor h                                         ; $55b2: $ac
    add hl, sp                                    ; $55b3: $39
    ld e, a                                       ; $55b4: $5f
    ld [bc], a                                    ; $55b5: $02
    ld de, $0501                                  ; $55b6: $11 $01 $05
    nop                                           ; $55b9: $00
    rst $30                                       ; $55ba: $f7
    ld e, [hl]                                    ; $55bb: $5e
    rst $30                                       ; $55bc: $f7
    ld e, [hl]                                    ; $55bd: $5e
    rst $30                                       ; $55be: $f7
    ld e, [hl]                                    ; $55bf: $5e
    rst $30                                       ; $55c0: $f7
    ld e, [hl]                                    ; $55c1: $5e
    rra                                           ; $55c2: $1f
    nop                                           ; $55c3: $00
    ld e, $00                                     ; $55c4: $1e $00
    inc e                                         ; $55c6: $1c
    nop                                           ; $55c7: $00
    dec de                                        ; $55c8: $1b
    nop                                           ; $55c9: $00
    ld a, a                                       ; $55ca: $7f
    ld l, a                                       ; $55cb: $6f
    rst $38                                       ; $55cc: $ff
    ld e, [hl]                                    ; $55cd: $5e
    ld a, a                                       ; $55ce: $7f
    ld c, [hl]                                    ; $55cf: $4e
    rst $38                                       ; $55d0: $ff
    dec a                                         ; $55d1: $3d
    rst $38                                       ; $55d2: $ff
    ld l, a                                       ; $55d3: $6f
    sbc $67                                       ; $55d4: $de $67
    sbc h                                         ; $55d6: $9c
    ld e, a                                       ; $55d7: $5f
    ld e, d                                       ; $55d8: $5a
    ld d, a                                       ; $55d9: $57
    ld a, [$b82f]                                 ; $55da: $fa $2f $b8
    daa                                           ; $55dd: $27
    sub [hl]                                      ; $55de: $96
    inc hl                                        ; $55df: $23
    ld d, h                                       ; $55e0: $54
    dec de                                        ; $55e1: $1b
    ldh [$03], a                                  ; $55e2: $e0 $03
    ret nz                                        ; $55e4: $c0

    inc bc                                        ; $55e5: $03
    add b                                         ; $55e6: $80
    inc bc                                        ; $55e7: $03
    ld h, b                                       ; $55e8: $60
    inc bc                                        ; $55e9: $03
    db $fd                                        ; $55ea: $fd
    ld a, a                                       ; $55eb: $7f
    db $db                                        ; $55ec: $db
    ld a, e                                       ; $55ed: $7b
    sbc c                                         ; $55ee: $99
    ld [hl], e                                    ; $55ef: $73
    ld [hl], a                                    ; $55f0: $77
    ld l, a                                       ; $55f1: $6f
    xor h                                         ; $55f2: $ac
    add hl, sp                                    ; $55f3: $39
    dec [hl]                                      ; $55f4: $35

jr_0cf_55f5:
    ld [bc], a                                    ; $55f5: $02
    rlc b                                         ; $55f6: $cb $00
    rst $38                                       ; $55f8: $ff
    ld c, a                                       ; $55f9: $4f
    rst $30                                       ; $55fa: $f7
    ld e, [hl]                                    ; $55fb: $5e
    rst $30                                       ; $55fc: $f7
    ld e, [hl]                                    ; $55fd: $5e
    rst $30                                       ; $55fe: $f7
    ld e, [hl]                                    ; $55ff: $5e
    rst $30                                       ; $5600: $f7
    ld e, [hl]                                    ; $5601: $5e
    rra                                           ; $5602: $1f
    nop                                           ; $5603: $00
    ld e, $00                                     ; $5604: $1e $00
    inc e                                         ; $5606: $1c
    nop                                           ; $5607: $00
    dec de                                        ; $5608: $1b
    nop                                           ; $5609: $00
    ld a, a                                       ; $560a: $7f
    ld l, a                                       ; $560b: $6f
    rst $38                                       ; $560c: $ff
    ld e, [hl]                                    ; $560d: $5e
    ld a, a                                       ; $560e: $7f
    ld c, [hl]                                    ; $560f: $4e
    rst $38                                       ; $5610: $ff
    dec a                                         ; $5611: $3d
    rst $38                                       ; $5612: $ff
    ld l, a                                       ; $5613: $6f
    sbc $67                                       ; $5614: $de $67
    sbc h                                         ; $5616: $9c
    ld e, a                                       ; $5617: $5f
    ld e, d                                       ; $5618: $5a
    ld d, a                                       ; $5619: $57
    ld a, [$b82f]                                 ; $561a: $fa $2f $b8
    daa                                           ; $561d: $27
    sub [hl]                                      ; $561e: $96
    inc hl                                        ; $561f: $23
    ld d, h                                       ; $5620: $54
    dec de                                        ; $5621: $1b
    ldh [$03], a                                  ; $5622: $e0 $03
    ret nz                                        ; $5624: $c0

    inc bc                                        ; $5625: $03
    add b                                         ; $5626: $80
    inc bc                                        ; $5627: $03
    ld h, b                                       ; $5628: $60
    inc bc                                        ; $5629: $03
    db $fd                                        ; $562a: $fd
    ld a, a                                       ; $562b: $7f
    db $db                                        ; $562c: $db
    ld a, e                                       ; $562d: $7b
    sbc c                                         ; $562e: $99
    ld [hl], e                                    ; $562f: $73
    ld [hl], a                                    ; $5630: $77
    ld l, a                                       ; $5631: $6f
    xor [hl]                                      ; $5632: $ae
    jr c, jr_0cf_55f5                             ; $5633: $38 $c0

    inc a                                         ; $5635: $3c
    nop                                           ; $5636: $00
    ld a, [hl]                                    ; $5637: $7e
    and b                                         ; $5638: $a0
    ld h, e                                       ; $5639: $63
    xor h                                         ; $563a: $ac
    add hl, sp                                    ; $563b: $39
    nop                                           ; $563c: $00
    nop                                           ; $563d: $00
    nop                                           ; $563e: $00
    nop                                           ; $563f: $00
    nop                                           ; $5640: $00
    nop                                           ; $5641: $00
    nop                                           ; $5642: $00
    nop                                           ; $5643: $00
    nop                                           ; $5644: $00
    nop                                           ; $5645: $00
    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    nop                                           ; $5648: $00
    nop                                           ; $5649: $00
    nop                                           ; $564a: $00
    nop                                           ; $564b: $00
    nop                                           ; $564c: $00
    nop                                           ; $564d: $00
    nop                                           ; $564e: $00
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    nop                                           ; $5651: $00
    nop                                           ; $5652: $00
    nop                                           ; $5653: $00
    nop                                           ; $5654: $00
    nop                                           ; $5655: $00
    nop                                           ; $5656: $00
    nop                                           ; $5657: $00
    nop                                           ; $5658: $00
    nop                                           ; $5659: $00
    nop                                           ; $565a: $00
    nop                                           ; $565b: $00
    nop                                           ; $565c: $00
    nop                                           ; $565d: $00
    nop                                           ; $565e: $00
    nop                                           ; $565f: $00
    nop                                           ; $5660: $00
    nop                                           ; $5661: $00
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    nop                                           ; $5664: $00
    nop                                           ; $5665: $00
    nop                                           ; $5666: $00
    nop                                           ; $5667: $00
    nop                                           ; $5668: $00
    nop                                           ; $5669: $00
    nop                                           ; $566a: $00
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    nop                                           ; $566d: $00
    nop                                           ; $566e: $00
    nop                                           ; $566f: $00
    nop                                           ; $5670: $00
    nop                                           ; $5671: $00
    adc $39                                       ; $5672: $ce $39
    ret nz                                        ; $5674: $c0

    ld a, [hl]                                    ; $5675: $7e
    ret nz                                        ; $5676: $c0

    ld e, l                                       ; $5677: $5d
    nop                                           ; $5678: $00
    add hl, sp                                    ; $5679: $39
    cp l                                          ; $567a: $bd
    ld [hl], a                                    ; $567b: $77
    rra                                           ; $567c: $1f
    ld h, a                                       ; $567d: $67
    ld e, d                                       ; $567e: $5a
    ld l, e                                       ; $567f: $6b
    jr jr_0cf_56e5                                ; $5680: $18 $63

    rra                                           ; $5682: $1f
    nop                                           ; $5683: $00
    ld e, $00                                     ; $5684: $1e $00
    inc e                                         ; $5686: $1c
    nop                                           ; $5687: $00
    dec de                                        ; $5688: $1b
    nop                                           ; $5689: $00
    ld a, a                                       ; $568a: $7f
    ld l, a                                       ; $568b: $6f
    rst $38                                       ; $568c: $ff
    ld e, [hl]                                    ; $568d: $5e
    ld a, a                                       ; $568e: $7f
    ld c, [hl]                                    ; $568f: $4e
    rst $38                                       ; $5690: $ff
    dec a                                         ; $5691: $3d
    rst $38                                       ; $5692: $ff
    ld l, a                                       ; $5693: $6f
    sbc $67                                       ; $5694: $de $67
    sbc h                                         ; $5696: $9c
    ld e, a                                       ; $5697: $5f
    ld e, d                                       ; $5698: $5a
    ld d, a                                       ; $5699: $57
    ld a, [$b82f]                                 ; $569a: $fa $2f $b8
    daa                                           ; $569d: $27
    sub [hl]                                      ; $569e: $96
    inc hl                                        ; $569f: $23
    ld d, h                                       ; $56a0: $54
    dec de                                        ; $56a1: $1b
    ldh [$03], a                                  ; $56a2: $e0 $03
    ret nz                                        ; $56a4: $c0

    inc bc                                        ; $56a5: $03
    add b                                         ; $56a6: $80
    inc bc                                        ; $56a7: $03
    ld h, b                                       ; $56a8: $60
    inc bc                                        ; $56a9: $03
    db $fd                                        ; $56aa: $fd
    ld a, a                                       ; $56ab: $7f
    db $db                                        ; $56ac: $db
    ld a, e                                       ; $56ad: $7b
    sbc c                                         ; $56ae: $99
    ld [hl], e                                    ; $56af: $73
    ld [hl], a                                    ; $56b0: $77
    ld l, a                                       ; $56b1: $6f
    ld l, e                                       ; $56b2: $6b
    dec l                                         ; $56b3: $2d
    cp a                                          ; $56b4: $bf
    inc bc                                        ; $56b5: $03
    ccf                                           ; $56b6: $3f
    ld [bc], a                                    ; $56b7: $02
    dec d                                         ; $56b8: $15
    ld bc, $77bd                                  ; $56b9: $01 $bd $77
    rra                                           ; $56bc: $1f
    ld h, a                                       ; $56bd: $67
    ld e, d                                       ; $56be: $5a
    ld l, e                                       ; $56bf: $6b
    jr jr_0cf_5725                                ; $56c0: $18 $63

    rra                                           ; $56c2: $1f
    nop                                           ; $56c3: $00
    ld e, $00                                     ; $56c4: $1e $00
    inc e                                         ; $56c6: $1c
    nop                                           ; $56c7: $00
    dec de                                        ; $56c8: $1b
    nop                                           ; $56c9: $00
    ld a, a                                       ; $56ca: $7f
    ld l, a                                       ; $56cb: $6f
    rst $38                                       ; $56cc: $ff
    ld e, [hl]                                    ; $56cd: $5e
    ld a, a                                       ; $56ce: $7f
    ld c, [hl]                                    ; $56cf: $4e
    rst $38                                       ; $56d0: $ff
    dec a                                         ; $56d1: $3d
    rst $38                                       ; $56d2: $ff
    ld l, a                                       ; $56d3: $6f
    sbc $67                                       ; $56d4: $de $67
    sbc h                                         ; $56d6: $9c
    ld e, a                                       ; $56d7: $5f
    ld e, d                                       ; $56d8: $5a
    ld d, a                                       ; $56d9: $57
    ld a, [$b82f]                                 ; $56da: $fa $2f $b8
    daa                                           ; $56dd: $27
    sub [hl]                                      ; $56de: $96
    inc hl                                        ; $56df: $23
    ld d, h                                       ; $56e0: $54
    dec de                                        ; $56e1: $1b
    ldh [$03], a                                  ; $56e2: $e0 $03
    ret nz                                        ; $56e4: $c0

jr_0cf_56e5:
    inc bc                                        ; $56e5: $03
    add b                                         ; $56e6: $80
    inc bc                                        ; $56e7: $03
    ld h, b                                       ; $56e8: $60
    inc bc                                        ; $56e9: $03
    db $fd                                        ; $56ea: $fd
    ld a, a                                       ; $56eb: $7f
    db $db                                        ; $56ec: $db
    ld a, e                                       ; $56ed: $7b
    sbc c                                         ; $56ee: $99
    ld [hl], e                                    ; $56ef: $73
    ld [hl], a                                    ; $56f0: $77
    ld l, a                                       ; $56f1: $6f
    xor [hl]                                      ; $56f2: $ae
    dec a                                         ; $56f3: $3d
    ret z                                         ; $56f4: $c8

    inc bc                                        ; $56f5: $03
    ldh [rNR43], a                                ; $56f6: $e0 $22
    ld b, c                                       ; $56f8: $41
    ld [bc], a                                    ; $56f9: $02
    dec bc                                        ; $56fa: $0b
    ld b, l                                       ; $56fb: $45
    and a                                         ; $56fc: $a7
    inc l                                         ; $56fd: $2c
    ld l, [hl]                                    ; $56fe: $6e
    ld e, l                                       ; $56ff: $5d
    add l                                         ; $5700: $85
    inc e                                         ; $5701: $1c
    nop                                           ; $5702: $00
    nop                                           ; $5703: $00
    inc de                                        ; $5704: $13
    ld l, b                                       ; $5705: $68
    ldh [rNR43], a                                ; $5706: $e0 $22
    rrca                                          ; $5708: $0f
    jr z, jr_0cf_570b                             ; $5709: $28 $00

jr_0cf_570b:
    nop                                           ; $570b: $00
    nop                                           ; $570c: $00
    nop                                           ; $570d: $00
    nop                                           ; $570e: $00
    nop                                           ; $570f: $00
    nop                                           ; $5710: $00
    nop                                           ; $5711: $00
    nop                                           ; $5712: $00
    nop                                           ; $5713: $00
    nop                                           ; $5714: $00
    nop                                           ; $5715: $00
    nop                                           ; $5716: $00
    nop                                           ; $5717: $00
    nop                                           ; $5718: $00
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    nop                                           ; $571b: $00
    nop                                           ; $571c: $00
    nop                                           ; $571d: $00
    nop                                           ; $571e: $00
    nop                                           ; $571f: $00
    nop                                           ; $5720: $00
    nop                                           ; $5721: $00
    nop                                           ; $5722: $00
    nop                                           ; $5723: $00
    nop                                           ; $5724: $00

jr_0cf_5725:
    nop                                           ; $5725: $00
    nop                                           ; $5726: $00
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    nop                                           ; $5729: $00
    nop                                           ; $572a: $00
    nop                                           ; $572b: $00
    nop                                           ; $572c: $00
    nop                                           ; $572d: $00
    nop                                           ; $572e: $00
    nop                                           ; $572f: $00
    nop                                           ; $5730: $00
    nop                                           ; $5731: $00
    ldh [$03], a                                  ; $5732: $e0 $03
    and b                                         ; $5734: $a0
    ld [hl], e                                    ; $5735: $73
    rst $20                                       ; $5736: $e7
    ld [hl], c                                    ; $5737: $71
    ld [$1f44], sp                                ; $5738: $08 $44 $1f
    ld a, h                                       ; $573b: $7c
    and b                                         ; $573c: $a0
    ld [hl], e                                    ; $573d: $73
    rst $20                                       ; $573e: $e7
    ld [hl], c                                    ; $573f: $71
    ld [$1f44], sp                                ; $5740: $08 $44 $1f
    nop                                           ; $5743: $00
    ld e, $00                                     ; $5744: $1e $00
    inc e                                         ; $5746: $1c
    nop                                           ; $5747: $00
    dec de                                        ; $5748: $1b
    nop                                           ; $5749: $00
    ld a, a                                       ; $574a: $7f
    ld l, a                                       ; $574b: $6f
    rst $38                                       ; $574c: $ff
    ld e, [hl]                                    ; $574d: $5e
    ld a, a                                       ; $574e: $7f
    ld c, [hl]                                    ; $574f: $4e
    rst $38                                       ; $5750: $ff
    dec a                                         ; $5751: $3d
    rst $38                                       ; $5752: $ff
    ld l, a                                       ; $5753: $6f
    sbc $67                                       ; $5754: $de $67
    sbc h                                         ; $5756: $9c
    ld e, a                                       ; $5757: $5f
    ld e, d                                       ; $5758: $5a
    ld d, a                                       ; $5759: $57
    ld a, [$b82f]                                 ; $575a: $fa $2f $b8
    daa                                           ; $575d: $27
    sub [hl]                                      ; $575e: $96
    inc hl                                        ; $575f: $23
    ld d, h                                       ; $5760: $54
    dec de                                        ; $5761: $1b
    ldh [$03], a                                  ; $5762: $e0 $03
    ret nz                                        ; $5764: $c0

    inc bc                                        ; $5765: $03
    add b                                         ; $5766: $80
    inc bc                                        ; $5767: $03
    ld h, b                                       ; $5768: $60
    inc bc                                        ; $5769: $03
    db $fd                                        ; $576a: $fd
    ld a, a                                       ; $576b: $7f
    db $db                                        ; $576c: $db
    ld a, e                                       ; $576d: $7b
    sbc c                                         ; $576e: $99
    ld [hl], e                                    ; $576f: $73
    ld [hl], a                                    ; $5770: $77
    ld l, a                                       ; $5771: $6f
    adc $39                                       ; $5772: $ce $39
    cp a                                          ; $5774: $bf
    ld a, l                                       ; $5775: $7d
    or $60                                        ; $5776: $f6 $60
    adc [hl]                                      ; $5778: $8e
    ld c, b                                       ; $5779: $48
    cp l                                          ; $577a: $bd
    ld [hl], a                                    ; $577b: $77
    rra                                           ; $577c: $1f
    ld h, a                                       ; $577d: $67
    ld e, d                                       ; $577e: $5a
    ld l, e                                       ; $577f: $6b
    jr jr_0cf_57e5                                ; $5780: $18 $63

    rra                                           ; $5782: $1f
    nop                                           ; $5783: $00
    ld e, $00                                     ; $5784: $1e $00
    inc e                                         ; $5786: $1c
    nop                                           ; $5787: $00
    dec de                                        ; $5788: $1b
    nop                                           ; $5789: $00
    ld a, a                                       ; $578a: $7f
    ld l, a                                       ; $578b: $6f
    rst $38                                       ; $578c: $ff
    ld e, [hl]                                    ; $578d: $5e
    ld a, a                                       ; $578e: $7f
    ld c, [hl]                                    ; $578f: $4e
    rst $38                                       ; $5790: $ff
    dec a                                         ; $5791: $3d
    rst $38                                       ; $5792: $ff
    ld l, a                                       ; $5793: $6f
    sbc $67                                       ; $5794: $de $67
    sbc h                                         ; $5796: $9c
    ld e, a                                       ; $5797: $5f
    ld e, d                                       ; $5798: $5a
    ld d, a                                       ; $5799: $57
    ld a, [$b82f]                                 ; $579a: $fa $2f $b8
    daa                                           ; $579d: $27
    sub [hl]                                      ; $579e: $96
    inc hl                                        ; $579f: $23
    ld d, h                                       ; $57a0: $54
    dec de                                        ; $57a1: $1b
    ldh [$03], a                                  ; $57a2: $e0 $03
    ret nz                                        ; $57a4: $c0

    inc bc                                        ; $57a5: $03
    add b                                         ; $57a6: $80
    inc bc                                        ; $57a7: $03
    ld h, b                                       ; $57a8: $60
    inc bc                                        ; $57a9: $03
    db $fd                                        ; $57aa: $fd
    ld a, a                                       ; $57ab: $7f
    db $db                                        ; $57ac: $db
    ld a, e                                       ; $57ad: $7b
    sbc c                                         ; $57ae: $99
    ld [hl], e                                    ; $57af: $73
    ld [hl], a                                    ; $57b0: $77
    ld l, a                                       ; $57b1: $6f
    adc $39                                       ; $57b2: $ce $39
    call nz, $807f                                ; $57b4: $c4 $7f $80
    ld l, [hl]                                    ; $57b7: $6e
    add b                                         ; $57b8: $80
    dec a                                         ; $57b9: $3d
    cp l                                          ; $57ba: $bd
    ld [hl], a                                    ; $57bb: $77
    rra                                           ; $57bc: $1f
    ld h, a                                       ; $57bd: $67
    ld e, d                                       ; $57be: $5a
    ld l, e                                       ; $57bf: $6b
    jr jr_0cf_5825                                ; $57c0: $18 $63

    rra                                           ; $57c2: $1f
    nop                                           ; $57c3: $00
    ld e, $00                                     ; $57c4: $1e $00
    inc e                                         ; $57c6: $1c
    nop                                           ; $57c7: $00
    dec de                                        ; $57c8: $1b
    nop                                           ; $57c9: $00
    ld a, a                                       ; $57ca: $7f
    ld l, a                                       ; $57cb: $6f
    rst $38                                       ; $57cc: $ff
    ld e, [hl]                                    ; $57cd: $5e
    ld a, a                                       ; $57ce: $7f
    ld c, [hl]                                    ; $57cf: $4e
    rst $38                                       ; $57d0: $ff
    dec a                                         ; $57d1: $3d
    rst $38                                       ; $57d2: $ff
    ld l, a                                       ; $57d3: $6f
    sbc $67                                       ; $57d4: $de $67
    sbc h                                         ; $57d6: $9c
    ld e, a                                       ; $57d7: $5f
    ld e, d                                       ; $57d8: $5a
    ld d, a                                       ; $57d9: $57
    ld a, [$b82f]                                 ; $57da: $fa $2f $b8
    daa                                           ; $57dd: $27
    sub [hl]                                      ; $57de: $96
    inc hl                                        ; $57df: $23
    ld d, h                                       ; $57e0: $54
    dec de                                        ; $57e1: $1b
    ldh [$03], a                                  ; $57e2: $e0 $03
    ret nz                                        ; $57e4: $c0

jr_0cf_57e5:
    inc bc                                        ; $57e5: $03
    add b                                         ; $57e6: $80
    inc bc                                        ; $57e7: $03
    ld h, b                                       ; $57e8: $60
    inc bc                                        ; $57e9: $03
    db $fd                                        ; $57ea: $fd
    ld a, a                                       ; $57eb: $7f
    db $db                                        ; $57ec: $db
    ld a, e                                       ; $57ed: $7b
    sbc c                                         ; $57ee: $99
    ld [hl], e                                    ; $57ef: $73
    ld [hl], a                                    ; $57f0: $77
    ld l, a                                       ; $57f1: $6f
    adc $39                                       ; $57f2: $ce $39
    and $7f                                       ; $57f4: $e6 $7f
    ret nz                                        ; $57f6: $c0

    ld h, [hl]                                    ; $57f7: $66
    ld h, b                                       ; $57f8: $60
    dec a                                         ; $57f9: $3d
    cp l                                          ; $57fa: $bd
    ld [hl], a                                    ; $57fb: $77
    rra                                           ; $57fc: $1f
    ld h, a                                       ; $57fd: $67
    ld e, d                                       ; $57fe: $5a
    ld l, e                                       ; $57ff: $6b
    jr jr_0cf_5865                                ; $5800: $18 $63

    rra                                           ; $5802: $1f
    nop                                           ; $5803: $00
    ld e, $00                                     ; $5804: $1e $00
    inc e                                         ; $5806: $1c
    nop                                           ; $5807: $00
    dec de                                        ; $5808: $1b
    nop                                           ; $5809: $00

Call_0cf_580a:
    ld a, a                                       ; $580a: $7f
    ld l, a                                       ; $580b: $6f
    rst $38                                       ; $580c: $ff
    ld e, [hl]                                    ; $580d: $5e
    ld a, a                                       ; $580e: $7f
    ld c, [hl]                                    ; $580f: $4e
    rst $38                                       ; $5810: $ff
    dec a                                         ; $5811: $3d
    rst $38                                       ; $5812: $ff
    ld l, a                                       ; $5813: $6f
    sbc $67                                       ; $5814: $de $67
    sbc h                                         ; $5816: $9c
    ld e, a                                       ; $5817: $5f
    ld e, d                                       ; $5818: $5a
    ld d, a                                       ; $5819: $57
    ld a, [$b82f]                                 ; $581a: $fa $2f $b8
    daa                                           ; $581d: $27
    sub [hl]                                      ; $581e: $96
    inc hl                                        ; $581f: $23
    ld d, h                                       ; $5820: $54
    dec de                                        ; $5821: $1b
    ldh [$03], a                                  ; $5822: $e0 $03
    ret nz                                        ; $5824: $c0

jr_0cf_5825:
    inc bc                                        ; $5825: $03
    add b                                         ; $5826: $80
    inc bc                                        ; $5827: $03
    ld h, b                                       ; $5828: $60
    inc bc                                        ; $5829: $03
    db $fd                                        ; $582a: $fd
    ld a, a                                       ; $582b: $7f
    db $db                                        ; $582c: $db
    ld a, e                                       ; $582d: $7b
    sbc c                                         ; $582e: $99
    ld [hl], e                                    ; $582f: $73
    ld [hl], a                                    ; $5830: $77
    ld l, a                                       ; $5831: $6f
    xor [hl]                                      ; $5832: $ae
    dec a                                         ; $5833: $3d
    dec l                                         ; $5834: $2d
    ld [hl], d                                    ; $5835: $72
    add [hl]                                      ; $5836: $86
    ld d, l                                       ; $5837: $55
    push bc                                       ; $5838: $c5
    jr z, jr_0cf_58a5                             ; $5839: $28 $6a

    dec l                                         ; $583b: $2d
    nop                                           ; $583c: $00
    nop                                           ; $583d: $00
    nop                                           ; $583e: $00
    nop                                           ; $583f: $00
    nop                                           ; $5840: $00
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    nop                                           ; $5843: $00
    nop                                           ; $5844: $00
    nop                                           ; $5845: $00
    nop                                           ; $5846: $00
    nop                                           ; $5847: $00
    nop                                           ; $5848: $00
    nop                                           ; $5849: $00
    nop                                           ; $584a: $00
    nop                                           ; $584b: $00
    nop                                           ; $584c: $00
    nop                                           ; $584d: $00
    nop                                           ; $584e: $00
    nop                                           ; $584f: $00
    nop                                           ; $5850: $00
    nop                                           ; $5851: $00
    nop                                           ; $5852: $00
    nop                                           ; $5853: $00
    nop                                           ; $5854: $00
    nop                                           ; $5855: $00
    nop                                           ; $5856: $00
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    nop                                           ; $585b: $00
    nop                                           ; $585c: $00
    nop                                           ; $585d: $00
    nop                                           ; $585e: $00
    nop                                           ; $585f: $00
    nop                                           ; $5860: $00
    nop                                           ; $5861: $00
    nop                                           ; $5862: $00
    nop                                           ; $5863: $00
    nop                                           ; $5864: $00

jr_0cf_5865:
    nop                                           ; $5865: $00
    nop                                           ; $5866: $00
    nop                                           ; $5867: $00
    nop                                           ; $5868: $00
    nop                                           ; $5869: $00
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    nop                                           ; $586c: $00
    nop                                           ; $586d: $00
    nop                                           ; $586e: $00
    nop                                           ; $586f: $00
    nop                                           ; $5870: $00
    nop                                           ; $5871: $00
    rst $28                                       ; $5872: $ef
    add hl, sp                                    ; $5873: $39
    ld b, b                                       ; $5874: $40
    ld a, a                                       ; $5875: $7f
    ld h, b                                       ; $5876: $60
    ld h, l                                       ; $5877: $65
    ld h, b                                       ; $5878: $60
    inc [hl]                                      ; $5879: $34
    nop                                           ; $587a: $00
    nop                                           ; $587b: $00
    nop                                           ; $587c: $00
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    nop                                           ; $587f: $00
    nop                                           ; $5880: $00
    nop                                           ; $5881: $00
    nop                                           ; $5882: $00
    nop                                           ; $5883: $00
    nop                                           ; $5884: $00
    nop                                           ; $5885: $00
    nop                                           ; $5886: $00
    nop                                           ; $5887: $00
    nop                                           ; $5888: $00
    nop                                           ; $5889: $00
    nop                                           ; $588a: $00
    nop                                           ; $588b: $00
    nop                                           ; $588c: $00
    nop                                           ; $588d: $00
    nop                                           ; $588e: $00
    nop                                           ; $588f: $00
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    nop                                           ; $5892: $00
    nop                                           ; $5893: $00
    nop                                           ; $5894: $00
    nop                                           ; $5895: $00
    nop                                           ; $5896: $00
    nop                                           ; $5897: $00
    nop                                           ; $5898: $00
    nop                                           ; $5899: $00
    nop                                           ; $589a: $00
    nop                                           ; $589b: $00
    nop                                           ; $589c: $00
    nop                                           ; $589d: $00
    nop                                           ; $589e: $00
    nop                                           ; $589f: $00
    nop                                           ; $58a0: $00
    nop                                           ; $58a1: $00
    nop                                           ; $58a2: $00
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00

jr_0cf_58a5:
    nop                                           ; $58a5: $00
    nop                                           ; $58a6: $00
    nop                                           ; $58a7: $00
    nop                                           ; $58a8: $00
    nop                                           ; $58a9: $00
    nop                                           ; $58aa: $00
    nop                                           ; $58ab: $00
    nop                                           ; $58ac: $00
    nop                                           ; $58ad: $00
    nop                                           ; $58ae: $00
    nop                                           ; $58af: $00
    nop                                           ; $58b0: $00
    nop                                           ; $58b1: $00
    adc $39                                       ; $58b2: $ce $39
    add [hl]                                      ; $58b4: $86
    ld a, a                                       ; $58b5: $7f
    ld b, b                                       ; $58b6: $40
    ld e, d                                       ; $58b7: $5a
    add e                                         ; $58b8: $83
    dec a                                         ; $58b9: $3d
    cp l                                          ; $58ba: $bd
    ld [hl], a                                    ; $58bb: $77
    rra                                           ; $58bc: $1f
    ld h, a                                       ; $58bd: $67
    ld e, d                                       ; $58be: $5a
    ld l, e                                       ; $58bf: $6b
    jr jr_0cf_5925                                ; $58c0: $18 $63

    rra                                           ; $58c2: $1f
    nop                                           ; $58c3: $00
    ld e, $00                                     ; $58c4: $1e $00
    inc e                                         ; $58c6: $1c
    nop                                           ; $58c7: $00
    dec de                                        ; $58c8: $1b
    nop                                           ; $58c9: $00
    ld a, a                                       ; $58ca: $7f
    ld l, a                                       ; $58cb: $6f
    rst $38                                       ; $58cc: $ff
    ld e, [hl]                                    ; $58cd: $5e
    ld a, a                                       ; $58ce: $7f
    ld c, [hl]                                    ; $58cf: $4e
    rst $38                                       ; $58d0: $ff
    dec a                                         ; $58d1: $3d
    rst $38                                       ; $58d2: $ff
    ld l, a                                       ; $58d3: $6f
    sbc $67                                       ; $58d4: $de $67
    sbc h                                         ; $58d6: $9c
    ld e, a                                       ; $58d7: $5f
    ld e, d                                       ; $58d8: $5a
    ld d, a                                       ; $58d9: $57
    ld a, [$b82f]                                 ; $58da: $fa $2f $b8
    daa                                           ; $58dd: $27
    sub [hl]                                      ; $58de: $96
    inc hl                                        ; $58df: $23
    ld d, h                                       ; $58e0: $54
    dec de                                        ; $58e1: $1b
    ldh [$03], a                                  ; $58e2: $e0 $03
    ret nz                                        ; $58e4: $c0

    inc bc                                        ; $58e5: $03
    add b                                         ; $58e6: $80
    inc bc                                        ; $58e7: $03
    ld h, b                                       ; $58e8: $60
    inc bc                                        ; $58e9: $03
    db $fd                                        ; $58ea: $fd
    ld a, a                                       ; $58eb: $7f
    db $db                                        ; $58ec: $db
    ld a, e                                       ; $58ed: $7b
    sbc c                                         ; $58ee: $99
    ld [hl], e                                    ; $58ef: $73
    ld [hl], a                                    ; $58f0: $77
    ld l, a                                       ; $58f1: $6f
    rst $28                                       ; $58f2: $ef
    add hl, sp                                    ; $58f3: $39
    ccf                                           ; $58f4: $3f
    inc bc                                        ; $58f5: $03
    sbc a                                         ; $58f6: $9f
    nop                                           ; $58f7: $00
    sub e                                         ; $58f8: $93
    db $10                                        ; $58f9: $10
    rrca                                          ; $58fa: $0f
    ld b, [hl]                                    ; $58fb: $46
    nop                                           ; $58fc: $00
    nop                                           ; $58fd: $00
    nop                                           ; $58fe: $00
    nop                                           ; $58ff: $00
    nop                                           ; $5900: $00
    nop                                           ; $5901: $00
    nop                                           ; $5902: $00
    nop                                           ; $5903: $00
    nop                                           ; $5904: $00
    nop                                           ; $5905: $00
    nop                                           ; $5906: $00
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    nop                                           ; $5909: $00
    nop                                           ; $590a: $00
    nop                                           ; $590b: $00
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    nop                                           ; $590f: $00
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    nop                                           ; $5912: $00
    nop                                           ; $5913: $00
    nop                                           ; $5914: $00
    nop                                           ; $5915: $00
    nop                                           ; $5916: $00

jr_0cf_5917:
    nop                                           ; $5917: $00
    nop                                           ; $5918: $00
    nop                                           ; $5919: $00
    nop                                           ; $591a: $00
    nop                                           ; $591b: $00
    nop                                           ; $591c: $00
    nop                                           ; $591d: $00
    nop                                           ; $591e: $00
    nop                                           ; $591f: $00
    nop                                           ; $5920: $00
    nop                                           ; $5921: $00
    nop                                           ; $5922: $00
    nop                                           ; $5923: $00
    nop                                           ; $5924: $00

jr_0cf_5925:
    nop                                           ; $5925: $00
    nop                                           ; $5926: $00
    nop                                           ; $5927: $00
    nop                                           ; $5928: $00
    nop                                           ; $5929: $00
    nop                                           ; $592a: $00
    nop                                           ; $592b: $00
    nop                                           ; $592c: $00
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    nop                                           ; $592f: $00
    nop                                           ; $5930: $00
    nop                                           ; $5931: $00
    nop                                           ; $5932: $00
    ld bc, $00f3                                  ; $5933: $01 $f3 $00
    nop                                           ; $5936: $00
    add b                                         ; $5937: $80
    rst $38                                       ; $5938: $ff
    cp a                                          ; $5939: $bf
    ret nz                                        ; $593a: $c0

    cp a                                          ; $593b: $bf
    ret nz                                        ; $593c: $c0

    cp [hl]                                       ; $593d: $be
    ret nz                                        ; $593e: $c0

    nop                                           ; $593f: $00
    cp a                                          ; $5940: $bf
    ld b, e                                       ; $5941: $43
    cp l                                          ; $5942: $bd
    ld b, c                                       ; $5943: $41
    cp l                                          ; $5944: $bd
    ld b, c                                       ; $5945: $41
    cp e                                          ; $5946: $bb
    ld b, e                                       ; $5947: $43
    nop                                           ; $5948: $00
    rst $38                                       ; $5949: $ff
    nop                                           ; $594a: $00
    ld [hl+], a                                   ; $594b: $22
    ld [c], a                                     ; $594c: $e2
    add l                                         ; $594d: $85
    add d                                         ; $594e: $82
    ld l, e                                       ; $594f: $6b
    inc d                                         ; $5950: $14
    nop                                           ; $5951: $00
    add [hl]                                      ; $5952: $86
    ld h, h                                       ; $5953: $64
    sbc c                                         ; $5954: $99
    rst $10                                       ; $5955: $d7
    ld d, c                                       ; $5956: $51
    ld a, [de]                                    ; $5957: $1a
    ld b, d                                       ; $5958: $42
    or d                                          ; $5959: $b2
    nop                                           ; $595a: $00
    rst $38                                       ; $595b: $ff
    nop                                           ; $595c: $00
    inc e                                         ; $595d: $1c
    call c, Call_000_14ac                         ; $595e: $dc $ac $14
    ret nc                                        ; $5961: $d0

    xor a                                         ; $5962: $af
    nop                                           ; $5963: $00
    dec c                                         ; $5964: $0d
    ld c, h                                       ; $5965: $4c
    jr c, jr_0cf_5917                             ; $5966: $38 $af

    ld l, h                                       ; $5968: $6c
    rra                                           ; $5969: $1f
    adc a                                         ; $596a: $8f
    jp $fe00                                      ; $596b: $c3 $00 $fe


    nop                                           ; $596e: $00
    ld a, [hl]                                    ; $596f: $7e
    db $fc                                        ; $5970: $fc
    ld a, h                                       ; $5971: $7c
    ld a, $3c                                     ; $5972: $3e $3c
    ld e, $00                                     ; $5974: $1e $00
    inc e                                         ; $5976: $1c
    ld c, $8c                                     ; $5977: $0e $8c
    ld c, $ec                                     ; $5979: $0e $ec
    ld a, [hl+]                                   ; $597b: $2a
    db $e4                                        ; $597c: $e4
    jp nz, $b900                                  ; $597d: $c2 $00 $b9

    pop bc                                        ; $5980: $c1
    or b                                          ; $5981: $b0
    ret nz                                        ; $5982: $c0

    or d                                          ; $5983: $b2
    ld b, d                                       ; $5984: $42
    or e                                          ; $5985: $b3
    ld b, e                                       ; $5986: $43
    nop                                           ; $5987: $00
    or e                                          ; $5988: $b3
    ld b, c                                       ; $5989: $41
    or d                                          ; $598a: $b2
    ld b, d                                       ; $598b: $42
    or b                                          ; $598c: $b0
    ret nz                                        ; $598d: $c0

jr_0cf_598e:
    cp b                                          ; $598e: $b8
    ret nz                                        ; $598f: $c0

    nop                                           ; $5990: $00
    ld e, [hl]                                    ; $5991: $5e
    inc bc                                        ; $5992: $03
    push de                                       ; $5993: $d5
    ld c, h                                       ; $5994: $4c
    ld [$09b4], sp                                ; $5995: $08 $b4 $09
    db $e3                                        ; $5998: $e3
    nop                                           ; $5999: $00
    inc bc                                        ; $599a: $03
    sbc c                                         ; $599b: $99
    inc bc                                        ; $599c: $03
    ld b, c                                       ; $599d: $41
    ret c                                         ; $599e: $d8

    add hl, de                                    ; $599f: $19
    ld a, $e2                                     ; $59a0: $3e $e2
    nop                                           ; $59a2: $00
    or a                                          ; $59a3: $b7
    inc sp                                        ; $59a4: $33
    ld h, a                                       ; $59a5: $67
    dec [hl]                                      ; $59a6: $35
    ld [$7a58], a                                 ; $59a7: $ea $58 $7a
    ldh a, [rP1]                                  ; $59aa: $f0 $00
    jr c, jr_0cf_598e                             ; $59ac: $38 $e0

    ld h, e                                       ; $59ae: $63
    db $db                                        ; $59af: $db
    ld bc, $660a                                  ; $59b0: $01 $0a $66
    ld [de], a                                    ; $59b3: $12
    jr nz, jr_0cf_59bc                            ; $59b4: $20 $06

    ld [hl], d                                    ; $59b6: $72
    ld [bc], a                                    ; $59b7: $02
    db $10                                        ; $59b8: $10
    ld d, d                                       ; $59b9: $52
    ld b, $12                                     ; $59ba: $06 $12

jr_0cf_59bc:
    ld c, $22                                     ; $59bc: $0e $22
    nop                                           ; $59be: $00
    inc e                                         ; $59bf: $1c
    ld c, $3c                                     ; $59c0: $0e $3c
    ld e, $bc                                     ; $59c2: $1e $bc
    ld b, h                                       ; $59c4: $44
    cp h                                          ; $59c5: $bc
    ld b, b                                       ; $59c6: $40
    nop                                           ; $59c7: $00
    cp [hl]                                       ; $59c8: $be
    ld b, d                                       ; $59c9: $42
    cp a                                          ; $59ca: $bf
    ld b, c                                       ; $59cb: $41
    cp a                                          ; $59cc: $bf
    rst $38                                       ; $59cd: $ff
    cp a                                          ; $59ce: $bf
    cp $40                                        ; $59cf: $fe $40
    cp [hl]                                       ; $59d1: $be
    adc b                                         ; $59d2: $88
    nop                                           ; $59d3: $00
    cp b                                          ; $59d4: $b8
    ld h, [hl]                                    ; $59d5: $66
    ld hl, sp+$66                                 ; $59d6: $f8 $66
    ret nc                                        ; $59d8: $d0

    xor a                                         ; $59d9: $af
    nop                                           ; $59da: $00
    ld a, b                                       ; $59db: $78
    ld h, a                                       ; $59dc: $67
    jr c, jr_0cf_5a06                             ; $59dd: $38 $27

    jr c, jr_0cf_5a18                             ; $59df: $38 $37

    rlca                                          ; $59e1: $07
    ld e, e                                       ; $59e2: $5b
    nop                                           ; $59e3: $00
    inc bc                                        ; $59e4: $03
    dec l                                         ; $59e5: $2d
    ldh [$38], a                                  ; $59e6: $e0 $38
    ld c, c                                       ; $59e8: $49
    pop hl                                        ; $59e9: $e1
    ld [hl], l                                    ; $59ea: $75
    dec b                                         ; $59eb: $05
    nop                                           ; $59ec: $00
    ld bc, $fc8c                                  ; $59ed: $01 $8c $fc
    ld [c], a                                     ; $59f0: $e2
    ldh a, [$ef]                                  ; $59f1: $f0 $ef
    cp d                                          ; $59f3: $ba
    push hl                                       ; $59f4: $e5
    nop                                           ; $59f5: $00
    ret nz                                        ; $59f6: $c0

    ret                                           ; $59f7: $c9


    sbc h                                         ; $59f8: $9c
    ld [bc], a                                    ; $59f9: $02
    call z, Call_0cf_5c82                         ; $59fa: $cc $82 $5c
    ld e, [hl]                                    ; $59fd: $5e
    nop                                           ; $59fe: $00
    cp h                                          ; $59ff: $bc
    ld a, $7c                                     ; $5a00: $3e $7c
    ld a, $7c                                     ; $5a02: $3e $7c
    ld a, [hl]                                    ; $5a04: $7e
    ld a, [hl]                                    ; $5a05: $7e

jr_0cf_5a06:
    ld [bc], a                                    ; $5a06: $02
    nop                                           ; $5a07: $00
    ld a, [hl]                                    ; $5a08: $7e
    add d                                         ; $5a09: $82
    cp [hl]                                       ; $5a0a: $be
    db $fc                                        ; $5a0b: $fc
    cp b                                          ; $5a0c: $b8
    ldh a, [$a0]                                  ; $5a0d: $f0 $a0
    ret nz                                        ; $5a0f: $c0

    nop                                           ; $5a10: $00
    add b                                         ; $5a11: $80
    ret nz                                        ; $5a12: $c0

    ld e, h                                       ; $5a13: $5c
    ret nz                                        ; $5a14: $c0

    ld a, [hl]                                    ; $5a15: $7e
    ret nz                                        ; $5a16: $c0

    add b                                         ; $5a17: $80

jr_0cf_5a18:
    ld a, a                                       ; $5a18: $7f
    nop                                           ; $5a19: $00
    rst $38                                       ; $5a1a: $ff
    nop                                           ; $5a1b: $00
    sub a                                         ; $5a1c: $97
    add $a9                                       ; $5a1d: $c6 $a9
    ld b, c                                       ; $5a1f: $41
    adc [hl]                                      ; $5a20: $8e
    ld l, d                                       ; $5a21: $6a
    nop                                           ; $5a22: $00
    rst $10                                       ; $5a23: $d7
    inc [hl]                                      ; $5a24: $34
    ld [hl], c                                    ; $5a25: $71
    cp d                                          ; $5a26: $ba
    ld a, b                                       ; $5a27: $78
    inc a                                         ; $5a28: $3c
    rst $38                                       ; $5a29: $ff
    nop                                           ; $5a2a: $00
    nop                                           ; $5a2b: $00
    nop                                           ; $5a2c: $00
    nop                                           ; $5a2d: $00
    ld [c], a                                     ; $5a2e: $e2
    ldh [$fc], a                                  ; $5a2f: $e0 $fc
    ld a, c                                       ; $5a31: $79
    rlca                                          ; $5a32: $07
    ld a, h                                       ; $5a33: $7c
    ld [bc], a                                    ; $5a34: $02
    add a                                         ; $5a35: $87
    add b                                         ; $5a36: $80
    add a                                         ; $5a37: $87
    add e                                         ; $5a38: $83
    add e                                         ; $5a39: $83
    sub c                                         ; $5a3a: $91
    db $10                                        ; $5a3b: $10
    ld [$10fc], sp                                ; $5a3c: $08 $fc $10
    ld e, $fc                                     ; $5a3f: $1e $fc
    ld a, $04                                     ; $5a41: $3e $04
    db $10                                        ; $5a43: $10
    ld a, [hl]                                    ; $5a44: $7e
    db $fc                                        ; $5a45: $fc
    cp $00                                        ; $5a46: $fe $00
    nop                                           ; $5a48: $00
    cp $fe                                        ; $5a49: $fe $fe
    nop                                           ; $5a4b: $00

    db $00, $01, $ed, $00, $08, $7f, $ff, $7f, $c0, $02, $08, $78, $c0, $71, $00, $c0
    db $23, $c3, $23, $c2, $00, $ff, $fd, $00, $01, $e3, $03, $07, $1f, $ca, $d2, $f1
    db $00, $44, $0e, $a2, $10, $c8, $00, $ff, $77, $00, $70, $41, $a1, $c0, $38, $fc
    db $3d, $fe, $00, $56, $ae, $98, $06, $04, $00, $fe, $fc, $20, $02, $fc, $04, $30
    db $7c, $02, $07, $c5, $2e, $00, $ce, $e2, $c9, $c0, $cf, $c0, $54, $c0, $00, $4c
    db $d0, $1c, $c5, $0d, $a0, $58, $c3, $00, $21, $85, $12, $10, $33, $24, $63, $48
    db $00, $c1, $96, $86, $21, $08, $4b, $68, $08, $00, $41, $02, $43, $26, $07, $91
    db $a1, $88, $00, $00, $c0, $39, $f9, $05, $7d, $03, $7d, $04, $03, $bc, $82, $1c
    db $02, $04, $08, $6c, $22, $00, $4c, $42, $d1, $1d, $d5, $19, $cc, $3c, $01, $c6
    db $36, $c0, $50, $c0, $70, $70, $84, $00, $00, $d8, $5b, $b0, $0f, $a0, $7f, $06
    db $e0, $00, $98, $14, $70, $ef, $c0, $83, $84, $22, $00, $fc, $fe, $fe, $fc, $42
    db $fc, $b6, $ca, $00, $d8, $83, $41, $f1, $02, $e5, $0e, $17, $00, $ec, $e2, $34
    db $32, $d0, $d2, $98, $82, $00, $0a, $0c, $86, $f4, $1c, $12, $18, $02, $00, $e0
    db $30, $c0, $30, $e8, $38, $c8, $18, $00, $3c, $f4, $0f, $c3, $80, $7f, $ff, $00
    db $00, $7c, $38, $cb, $06, $8e, $43, $51, $dc, $00, $45, $c9, $61, $43, $ff, $00
    db $00, $00, $00, $84, $98, $92, $12, $b7, $a5, $84, $b3, $08, $32, $27, $00, $bb
    db $10, $08, $8c, $0e, $44, $00, $06, $60, $62, $24, $22, $92, $b0, $d2, $00, $f0
    db $00, $fe, $fe, $00, $00, $01, $e8, $00, $00, $ff, $7f, $c0, $40, $c0, $47, $d0
    db $48, $00, $0f, $c0, $23, $e2, $c4, $40, $c5, $48, $00, $ff, $00, $00, $c3, $3c
    db $34, $1b, $e7, $00, $83, $73, $e7, $5d, $3b, $60, $13, $3a, $80, $10, $00, $00
    db $00, $c0, $c0, $b0, $70, $e0, $00, $f8, $1c, $f2, $7c, $f8, $3e, $fe, $01, $40
    db $02, $02, $18, $bc, $42, $5c, $82, $5e, $02, $00, $3e, $d4, $48, $c0, $54, $d3
    db $c4, $c4, $00, $ca, $d4, $1f, $d4, $1f, $1f, $c8, $1f, $00, $ca, $15, $b8, $11
    db $0e, $5f, $86, $98, $00, $74, $2b, $25, $18, $07, $48, $4f, $74, $00, $57, $07
    db $c9, $c3, $27, $09, $06, $e1, $00, $e0, $0d, $3c, $cf, $4c, $fd, $83, $f8, $00
    db $f1, $02, $7c, $82, $fc, $bc, $3e, $bc, $40, $3e, $08, $08, $82, $3e, $82, $3e
    db $1d, $cd, $00, $17, $d1, $97, $56, $8d, $44, $bf, $45, $00, $be, $44, $bb, $c0
    db $bf, $c0, $19, $00, $00, $ca, $c6, $36, $70, $0a, $79, $1b, $91, $00, $03, $e1
    db $02, $f0, $b2, $80, $fc, $e6, $00, $f0, $2a, $78, $06, $11, $6d, $02, $02, $00
    db $0c, $11, $88, $1d, $60, $0c, $c2, $5c, $08, $02, $3c, $02, $7e, $3a, $08, $02
    db $be, $82, $00, $bc, $02, $1c, $bc, $c1, $bc, $c0, $bc, $c0, $38, $00, $02, $08
    db $80, $7f, $ff, $00, $82, $20, $00, $1a, $18, $74, $72, $f0, $f4, $f9, $0d, $20
    db $f9, $1c, $bc, $08, $30, $07, $09, $15, $8a, $01, $84, $c5, $c2, $03, $e5, $01
    db $e2, $cc, $08, $00, $02, $cc, $e2, $e0, $8e, $ec, $46, $4c, $00, $24, $02, $9c
    db $86, $00, $fe, $fe, $00

    nop                                           ; $5c71: $00
    ld bc, $00ef                                  ; $5c72: $01 $ef $00
    nop                                           ; $5c75: $00
    add b                                         ; $5c76: $80
    rst $38                                       ; $5c77: $ff
    cp a                                          ; $5c78: $bf
    ret nz                                        ; $5c79: $c0

    cp [hl]                                       ; $5c7a: $be
    ld a, [hl]                                    ; $5c7b: $7e
    cp l                                          ; $5c7c: $bd
    ld a, l                                       ; $5c7d: $7d
    ld [$7bbb], sp                                ; $5c7e: $08 $bb $7b
    or a                                          ; $5c81: $b7

Call_0cf_5c82:
    ld [hl], a                                    ; $5c82: $77
    ld [bc], a                                    ; $5c83: $02
    ld [$ff00], sp                                ; $5c84: $08 $00 $ff
    ld a, a                                       ; $5c87: $7f
    nop                                           ; $5c88: $00
    ld h, b                                       ; $5c89: $60
    ccf                                           ; $5c8a: $3f
    jr nz, jr_0cf_5ccc                            ; $5c8b: $20 $3f

    ld h, b                                       ; $5c8d: $60
    ccf                                           ; $5c8e: $3f
    ld h, b                                       ; $5c8f: $60
    ld a, a                                       ; $5c90: $7f
    add b                                         ; $5c91: $80
    ld b, $00                                     ; $5c92: $06 $00
    ld a, a                                       ; $5c94: $7f
    ld h, b                                       ; $5c95: $60
    nop                                           ; $5c96: $00
    nop                                           ; $5c97: $00
    inc bc                                        ; $5c98: $03
    cp $01                                        ; $5c99: $fe $01
    nop                                           ; $5c9b: $00
    ld a, [$fe02]                                 ; $5c9c: $fa $02 $fe
    db $fc                                        ; $5c9f: $fc
    nop                                           ; $5ca0: $00
    cp $00                                        ; $5ca1: $fe $00
    rst $38                                       ; $5ca3: $ff
    jr nz, jr_0cf_5ca6                            ; $5ca4: $20 $00

jr_0cf_5ca6:
    rst $08                                       ; $5ca6: $cf
    ld b, $00                                     ; $5ca7: $06 $00
    add d                                         ; $5ca9: $82
    db $fc                                        ; $5caa: $fc
    cp h                                          ; $5cab: $bc
    add d                                         ; $5cac: $82
    call c, $c200                                 ; $5cad: $dc $00 $c2
    call c, $ecc2                                 ; $5cb0: $dc $c2 $ec
    ld [c], a                                     ; $5cb3: $e2
    ld c, $e2                                     ; $5cb4: $0e $e2
    ld b, $00                                     ; $5cb6: $06 $00
    ld a, [c]                                     ; $5cb8: $f2
    or e                                          ; $5cb9: $b3
    call nz, $c2b5                                ; $5cba: $c4 $b5 $c2
    ldh [$15], a                                  ; $5cbd: $e0 $15
    db $e3                                        ; $5cbf: $e3
    nop                                           ; $5cc0: $00
    rra                                           ; $5cc1: $1f
    ldh a, [rBGP]                                 ; $5cc2: $f0 $47
    add sp, $40                                   ; $5cc4: $e8 $40
    ld [c], a                                     ; $5cc6: $e2
    ld b, c                                       ; $5cc7: $41
    db $e4                                        ; $5cc8: $e4
    nop                                           ; $5cc9: $00
    ld b, e                                       ; $5cca: $43
    ld a, a                                       ; $5ccb: $7f

jr_0cf_5ccc:
    ret nz                                        ; $5ccc: $c0

jr_0cf_5ccd:
    ld a, a                                       ; $5ccd: $7f
    ld h, b                                       ; $5cce: $60
    ld a, a                                       ; $5ccf: $7f
    ret nz                                        ; $5cd0: $c0

    adc a                                         ; $5cd1: $8f
    nop                                           ; $5cd2: $00
    ld d, c                                       ; $5cd3: $51
    reti                                          ; $5cd4: $d9


    inc [hl]                                      ; $5cd5: $34
    jr c, jr_0cf_5cfd                             ; $5cd6: $38 $25

    ld a, [hl]                                    ; $5cd8: $7e
    ld [bc], a                                    ; $5cd9: $02
    ld a, $00                                     ; $5cda: $3e $00
    ld h, b                                       ; $5cdc: $60
    db $fc                                        ; $5cdd: $fc
    inc bc                                        ; $5cde: $03
    rst $28                                       ; $5cdf: $ef
    nop                                           ; $5ce0: $00
    adc a                                         ; $5ce1: $8f
    nop                                           ; $5ce2: $00
    ld d, b                                       ; $5ce3: $50
    nop                                           ; $5ce4: $00
    ld c, a                                       ; $5ce5: $4f
    cp $00                                        ; $5ce6: $fe $00
    inc bc                                        ; $5ce8: $03
    db $fd                                        ; $5ce9: $fd
    jr nz, jr_0cf_5ccd                            ; $5cea: $20 $e1

    sub l                                         ; $5cec: $95
    db $10                                        ; $5ced: $10
    dec a                                         ; $5cee: $3d
    ld b, $f2                                     ; $5cef: $06 $f2
    ld [bc], a                                    ; $5cf1: $02
    ld [$6286], sp                                ; $5cf2: $08 $86 $62
    ld b, d                                       ; $5cf5: $42
    ret c                                         ; $5cf6: $d8

    nop                                           ; $5cf7: $00
    ld [hl], d                                    ; $5cf8: $72
    ld a, b                                       ; $5cf9: $78
    ld l, d                                       ; $5cfa: $6a
    add sp, -$66                                  ; $5cfb: $e8 $9a

jr_0cf_5cfd:
    ret c                                         ; $5cfd: $d8

    xor $49                                       ; $5cfe: $ee $49
    nop                                           ; $5d00: $00
    ei                                            ; $5d01: $fb
    ld c, d                                       ; $5d02: $4a
    cp h                                          ; $5d03: $bc
    jp $c3b4                                      ; $5d04: $c3 $b4 $c3


    xor d                                         ; $5d07: $aa
    ld c, e                                       ; $5d08: $4b
    nop                                           ; $5d09: $00
    sub a                                         ; $5d0a: $97
    ld d, a                                       ; $5d0b: $57
    rra                                           ; $5d0c: $1f
    jp c, $e42d                                   ; $5d0d: $da $2d $e4

    ld a, $3c                                     ; $5d10: $3e $3c
    nop                                           ; $5d12: $00
    ld e, $dd                                     ; $5d13: $1e $dd
    inc d                                         ; $5d15: $14
    rst $08                                       ; $5d16: $cf
    ld c, a                                       ; $5d17: $4f
    sbc a                                         ; $5d18: $9f
    ld b, e                                       ; $5d19: $43
    call c, $8f00                                 ; $5d1a: $dc $00 $8f
    cp h                                          ; $5d1d: $bc
    db $fd                                        ; $5d1e: $fd
    adc $c6                                       ; $5d1f: $ce $c6
    push bc                                       ; $5d21: $c5
    push af                                       ; $5d22: $f5
    ret                                           ; $5d23: $c9


    inc b                                         ; $5d24: $04
    inc c                                         ; $5d25: $0c
    ldh a, [rNR50]                                ; $5d26: $f0 $24
    db $dd                                        ; $5d28: $dd
    db $fc                                        ; $5d29: $fc
    add l                                         ; $5d2a: $85
    nop                                           ; $5d2b: $00
    and h                                         ; $5d2c: $a4
    ld [hl], $00                                  ; $5d2d: $36 $00
    ld l, l                                       ; $5d2f: $6d
    ld d, [hl]                                    ; $5d30: $56
    or [hl]                                       ; $5d31: $b6
    dec c                                         ; $5d32: $0d
    ld [hl-], a                                   ; $5d33: $32
    ld d, h                                       ; $5d34: $54
    and d                                         ; $5d35: $a2
    call z, $0e00                                 ; $5d36: $cc $00 $0e
    call z, $f446                                 ; $5d39: $cc $46 $f4
    jr c, jr_0cf_5d78                             ; $5d3c: $38 $3a

    ret c                                         ; $5d3e: $d8

    add d                                         ; $5d3f: $82
    nop                                           ; $5d40: $00
    add [hl]                                      ; $5d41: $86
    call c, $fc92                                 ; $5d42: $dc $92 $fc
    ld c, b                                       ; $5d45: $48
    ret nz                                        ; $5d46: $c0

    ld d, [hl]                                    ; $5d47: $56
    ret nz                                        ; $5d48: $c0

    nop                                           ; $5d49: $00
    dec h                                         ; $5d4a: $25
    pop bc                                        ; $5d4b: $c1
    add hl, hl                                    ; $5d4c: $29
    pop bc                                        ; $5d4d: $c1
    dec de                                        ; $5d4e: $1b
    jp nz, $d213                                  ; $5d4f: $c2 $13 $d2

    nop                                           ; $5d52: $00
    add b                                         ; $5d53: $80
    ld a, a                                       ; $5d54: $7f
    rst $38                                       ; $5d55: $ff
    nop                                           ; $5d56: $00
    ld c, c                                       ; $5d57: $49
    ld [hl], c                                    ; $5d58: $71
    adc d                                         ; $5d59: $8a
    db $fc                                        ; $5d5a: $fc
    nop                                           ; $5d5b: $00
    dec c                                         ; $5d5c: $0d
    and h                                         ; $5d5d: $a4
    sub c                                         ; $5d5e: $91
    dec sp                                        ; $5d5f: $3b
    xor e                                         ; $5d60: $ab
    sub d                                         ; $5d61: $92
    ld b, l                                       ; $5d62: $45
    ld a, h                                       ; $5d63: $7c
    nop                                           ; $5d64: $00
    rst $38                                       ; $5d65: $ff
    nop                                           ; $5d66: $00
    nop                                           ; $5d67: $00
    nop                                           ; $5d68: $00
    db $ed                                        ; $5d69: $ed
    halt                                          ; $5d6a: $76
    dec l                                         ; $5d6b: $2d
    halt                                          ; $5d6c: $76
    nop                                           ; $5d6d: $00
    dec de                                        ; $5d6e: $1b
    ld d, $99                                     ; $5d6f: $16 $99
    ld [hl], $89                                  ; $5d71: $36 $89
    ld [hl], $ac                                  ; $5d73: $36 $ac
    scf                                           ; $5d75: $37
    sub b                                         ; $5d76: $90
    db $10                                        ; $5d77: $10

jr_0cf_5d78:
    ld [$92fc], sp                                ; $5d78: $08 $fc $92
    ld [bc], a                                    ; $5d7b: $02
    nop                                           ; $5d7c: $00
    jp nz, $cafc                                  ; $5d7d: $c2 $fc $ca

    cp h                                          ; $5d80: $bc
    nop                                           ; $5d81: $00
    ld [de], a                                    ; $5d82: $12
    sbc h                                         ; $5d83: $9c
    sbc d                                         ; $5d84: $9a
    nop                                           ; $5d85: $00
    cp $fe                                        ; $5d86: $fe $fe
    nop                                           ; $5d88: $00
    nop                                           ; $5d89: $00
    ld bc, $00f9                                  ; $5d8a: $01 $f9 $00
    nop                                           ; $5d8d: $00
    add b                                         ; $5d8e: $80
    rst $38                                       ; $5d8f: $ff
    cp a                                          ; $5d90: $bf
    ret nz                                        ; $5d91: $c0

    cp a                                          ; $5d92: $bf
    ld b, c                                       ; $5d93: $41
    cp a                                          ; $5d94: $bf
    ld b, e                                       ; $5d95: $43
    nop                                           ; $5d96: $00
    cp l                                          ; $5d97: $bd
    ld b, c                                       ; $5d98: $41
    cp c                                          ; $5d99: $b9
    ld b, c                                       ; $5d9a: $41
    ret nz                                        ; $5d9b: $c0

    ld a, e                                       ; $5d9c: $7b
    ret nz                                        ; $5d9d: $c0

    ld a, a                                       ; $5d9e: $7f
    nop                                           ; $5d9f: $00
    rst $38                                       ; $5da0: $ff
    nop                                           ; $5da1: $00
    ld b, b                                       ; $5da2: $40
    ld a, a                                       ; $5da3: $7f
    ldh [$5f], a                                  ; $5da4: $e0 $5f
    add b                                         ; $5da6: $80
    ld h, b                                       ; $5da7: $60
    nop                                           ; $5da8: $00
    add e                                         ; $5da9: $83
    ld bc, $0f9c                                  ; $5daa: $01 $9c $0f
    dec a                                         ; $5dad: $3d
    ld c, $60                                     ; $5dae: $0e $60
    jr nc, jr_0cf_5db2                            ; $5db0: $30 $00

jr_0cf_5db2:
    nop                                           ; $5db2: $00
    rst $38                                       ; $5db3: $ff
    db $fc                                        ; $5db4: $fc
    call c, $fcfb                                 ; $5db5: $dc $fb $fc
    ld a, a                                       ; $5db8: $7f
    ld a, [hl]                                    ; $5db9: $7e
    nop                                           ; $5dba: $00
    inc bc                                        ; $5dbb: $03
    rst $38                                       ; $5dbc: $ff
    add sp, $0f                                   ; $5dbd: $e8 $0f
    ld e, $11                                     ; $5dbf: $1e $11
    add a                                         ; $5dc1: $87
    ld a, c                                       ; $5dc2: $79
    nop                                           ; $5dc3: $00
    cp $00                                        ; $5dc4: $fe $00
    ld [bc], a                                    ; $5dc6: $02
    db $fc                                        ; $5dc7: $fc
    ld a, [hl]                                    ; $5dc8: $7e
    ld [bc], a                                    ; $5dc9: $02
    ld a, $82                                     ; $5dca: $3e $82
    nop                                           ; $5dcc: $00
    adc [hl]                                      ; $5dcd: $8e
    ld c, h                                       ; $5dce: $4c
    sub $a4                                       ; $5dcf: $d6 $a4
    ld [$b278], a                                 ; $5dd1: $ea $78 $b2
    add sp, $00                                   ; $5dd4: $e8 $00
    ld e, b                                       ; $5dd6: $58
    ret nz                                        ; $5dd7: $c0

    ld [hl], e                                    ; $5dd8: $73
    ret nz                                        ; $5dd9: $c0

    ld [c], a                                     ; $5dda: $e2
    pop bc                                        ; $5ddb: $c1
    call nz, $00c2                                ; $5ddc: $c4 $c2 $00
    ld c, $c6                                     ; $5ddf: $0e $c6
    inc e                                         ; $5de1: $1c
    call nz, $c43d                                ; $5de2: $c4 $3d $c4
    dec a                                         ; $5de5: $3d
    call z, $a300                                 ; $5de6: $cc $00 $a3
    ld h, b                                       ; $5de9: $60
    ld a, [bc]                                    ; $5dea: $0a
    add [hl]                                      ; $5deb: $86
    cp b                                          ; $5dec: $b8
    and c                                         ; $5ded: $a1
    ld [hl], c                                    ; $5dee: $71
    ld b, [hl]                                    ; $5def: $46
    nop                                           ; $5df0: $00
    ldh [rTMA], a                                 ; $5df1: $e0 $06
    pop bc                                        ; $5df3: $c1
    ld bc, $31bf                                  ; $5df4: $01 $bf $31
    inc a                                         ; $5df7: $3c
    inc hl                                        ; $5df8: $23
    nop                                           ; $5df9: $00
    db $fc                                        ; $5dfa: $fc
    ei                                            ; $5dfb: $fb
    rlca                                          ; $5dfc: $07
    ld b, $03                                     ; $5dfd: $06 $03
    add hl, de                                    ; $5dff: $19
    add b                                         ; $5e00: $80
    adc h                                         ; $5e01: $8c
    nop                                           ; $5e02: $00
    adc a                                         ; $5e03: $8f
    ld c, a                                       ; $5e04: $4f
    sla a                                         ; $5e05: $cb $27
    add sp, -$0c                                  ; $5e07: $e8 $f4
    db $e3                                        ; $5e09: $e3
    db $fc                                        ; $5e0a: $fc
    nop                                           ; $5e0b: $00

jr_0cf_5e0c:
    jr c, @+$2c                                   ; $5e0c: $38 $2a

    inc e                                         ; $5e0e: $1c
    ld b, $8c                                     ; $5e0f: $06 $8c
    ld [bc], a                                    ; $5e11: $02
    call nz, Call_000_0082                        ; $5e12: $c4 $82 $00
    ld h, $42                                     ; $5e15: $26 $42
    ld [bc], a                                    ; $5e17: $02
    ld [hl+], a                                   ; $5e18: $22
    ld [de], a                                    ; $5e19: $12
    adc [hl]                                      ; $5e1a: $8e
    ld [de], a                                    ; $5e1b: $12
    ld c, [hl]                                    ; $5e1c: $4e
    nop                                           ; $5e1d: $00
    ld a, a                                       ; $5e1e: $7f
    ret nz                                        ; $5e1f: $c0

    ld a, [hl]                                    ; $5e20: $7e
    ret nz                                        ; $5e21: $c0

    and $d8                                       ; $5e22: $e6 $d8
    xor $d0                                       ; $5e24: $ee $d0
    nop                                           ; $5e26: $00
    ld a, $f0                                     ; $5e27: $3e $f0
    inc l                                         ; $5e29: $2c
    ldh [rNR32], a                                ; $5e2a: $e0 $1c
    ret nc                                        ; $5e2c: $d0

    dec a                                         ; $5e2d: $3d
    pop af                                        ; $5e2e: $f1
    nop                                           ; $5e2f: $00
    ld a, b                                       ; $5e30: $78
    ld b, a                                       ; $5e31: $47
    ld h, b                                       ; $5e32: $60
    ld b, e                                       ; $5e33: $43
    nop                                           ; $5e34: $00
    jr jr_0cf_5e4f                                ; $5e35: $18 $18

    or $00                                        ; $5e37: $f6 $00
    add b                                         ; $5e39: $80
    ld [hl+], a                                   ; $5e3a: $22
    db $10                                        ; $5e3b: $10
    sub c                                         ; $5e3c: $91
    ld c, $ff                                     ; $5e3d: $0e $ff
    ld sp, $005f                                  ; $5e3f: $31 $5f $00
    ld h, h                                       ; $5e42: $64
    ld hl, sp+$23                                 ; $5e43: $f8 $23
    ret c                                         ; $5e45: $d8

    dec b                                         ; $5e46: $05
    db $fd                                        ; $5e47: $fd
    ld h, a                                       ; $5e48: $67
    inc e                                         ; $5e49: $1c
    nop                                           ; $5e4a: $00
    ld [hl-], a                                   ; $5e4b: $32
    ld l, h                                       ; $5e4c: $6c
    ld b, $70                                     ; $5e4d: $06 $70

jr_0cf_5e4f:
    xor b                                         ; $5e4f: $a8
    and b                                         ; $5e50: $a0
    ld a, $b8                                     ; $5e51: $3e $b8
    nop                                           ; $5e53: $00
    xor h                                         ; $5e54: $ac
    ld c, $6c                                     ; $5e55: $0e $6c
    ld c, $82                                     ; $5e57: $0e $82
    call nz, $1002                                ; $5e59: $c4 $02 $10
    nop                                           ; $5e5c: $00
    adc d                                         ; $5e5d: $8a
    sbc b                                         ; $5e5e: $98
    ld a, [bc]                                    ; $5e5f: $0a
    jr jr_0cf_5e8c                                ; $5e60: $18 $2a

    jr c, jr_0cf_5e6e                             ; $5e62: $38 $0a

    jr c, jr_0cf_5e66                             ; $5e64: $38 $00

jr_0cf_5e66:
    dec a                                         ; $5e66: $3d
    push hl                                       ; $5e67: $e5
    dec a                                         ; $5e68: $3d
    push hl                                       ; $5e69: $e5
    ccf                                           ; $5e6a: $3f
    rst $20                                       ; $5e6b: $e7
    ccf                                           ; $5e6c: $3f
    rst $00                                       ; $5e6d: $c7

jr_0cf_5e6e:
    sub b                                         ; $5e6e: $90
    ld [bc], a                                    ; $5e6f: $02
    nop                                           ; $5e70: $00
    jp $be80                                      ; $5e71: $c3 $80 $be


    nop                                           ; $5e74: $00
    jr nz, jr_0cf_5ed7                            ; $5e75: $20 $60

    ld b, [hl]                                    ; $5e77: $46
    ld c, $00                                     ; $5e78: $0e $00
    jr jr_0cf_5e0c                                ; $5e7a: $18 $90

    nop                                           ; $5e7c: $00
    add b                                         ; $5e7d: $80
    call nz, $e8c0                                ; $5e7e: $c4 $c0 $e8
    db $e4                                        ; $5e81: $e4
    nop                                           ; $5e82: $00
    rst $38                                       ; $5e83: $ff
    nop                                           ; $5e84: $00
    nop                                           ; $5e85: $00
    nop                                           ; $5e86: $00
    cpl                                           ; $5e87: $2f
    ld [$0c3e], a                                 ; $5e88: $ea $3e $0c
    nop                                           ; $5e8b: $00

jr_0cf_5e8c:
    ld [$5884], sp                                ; $5e8c: $08 $84 $58
    ld [$81d0], sp                                ; $5e8f: $08 $d0 $81
    sbc b                                         ; $5e92: $98
    rla                                           ; $5e93: $17
    add b                                         ; $5e94: $80
    db $10                                        ; $5e95: $10
    ld [$3402], sp                                ; $5e96: $08 $02 $34
    ld b, $64                                     ; $5e99: $06 $64
    ld a, [bc]                                    ; $5e9b: $0a
    ld h, [hl]                                    ; $5e9c: $66
    ld a, [bc]                                    ; $5e9d: $0a
    nop                                           ; $5e9e: $00
    sub $12                                       ; $5e9f: $d6 $12
    adc d                                         ; $5ea1: $8a
    ld [hl+], a                                   ; $5ea2: $22
    ld d, $00                                     ; $5ea3: $16 $00
    cp $fe                                        ; $5ea5: $fe $fe
    nop                                           ; $5ea7: $00
    nop                                           ; $5ea8: $00
    nop                                           ; $5ea9: $00
    ld bc, $00e0                                  ; $5eaa: $01 $e0 $00
    nop                                           ; $5ead: $00
    add b                                         ; $5eae: $80
    rst $38                                       ; $5eaf: $ff
    cp e                                          ; $5eb0: $bb
    ld hl, sp-$41                                 ; $5eb1: $f8 $bf
    ld h, d                                       ; $5eb3: $62
    cp a                                          ; $5eb4: $bf
    ld h, c                                       ; $5eb5: $61
    nop                                           ; $5eb6: $00
    cp a                                          ; $5eb7: $bf
    ld d, c                                       ; $5eb8: $51
    cp a                                          ; $5eb9: $bf
    ld a, b                                       ; $5eba: $78
    cp a                                          ; $5ebb: $bf
    ld a, b                                       ; $5ebc: $78
    xor e                                         ; $5ebd: $ab
    ld c, b                                       ; $5ebe: $48
    nop                                           ; $5ebf: $00
    nop                                           ; $5ec0: $00
    rst $38                                       ; $5ec1: $ff
    cp a                                          ; $5ec2: $bf
    add l                                         ; $5ec3: $85
    add hl, de                                    ; $5ec4: $19
    sbc $0d                                       ; $5ec5: $de $0d
    call c, $e000                                 ; $5ec7: $dc $00 $e0
    ld l, [hl]                                    ; $5eca: $6e
    ld a, h                                       ; $5ecb: $7c
    ld [hl], b                                    ; $5ecc: $70
    and e                                         ; $5ecd: $a3
    ld [hl], b                                    ; $5ece: $70
    adc a                                         ; $5ecf: $8f
    ret nz                                        ; $5ed0: $c0

    nop                                           ; $5ed1: $00
    nop                                           ; $5ed2: $00
    rst $38                                       ; $5ed3: $ff
    and b                                         ; $5ed4: $a0
    ret nz                                        ; $5ed5: $c0

    ret nc                                        ; $5ed6: $d0

jr_0cf_5ed7:
    ldh [$e8], a                                  ; $5ed7: $e0 $e8
    ldh a, [rP1]                                  ; $5ed9: $f0 $00
    sub a                                         ; $5edb: $97
    ld hl, sp+$07                                 ; $5edc: $f8 $07
    nop                                           ; $5ede: $00
    dec bc                                        ; $5edf: $0b
    ld hl, sp+$03                                 ; $5ee0: $f8 $03
    ld hl, sp+$0c                                 ; $5ee2: $f8 $0c
    nop                                           ; $5ee4: $00
    cp $fc                                        ; $5ee5: $fe $fc
    ld [bc], a                                    ; $5ee7: $02
    ld [bc], a                                    ; $5ee8: $02
    jr nc, @+$0e                                  ; $5ee9: $30 $0c

    nop                                           ; $5eeb: $00
    or a                                          ; $5eec: $b7
    ld h, d                                       ; $5eed: $62
    nop                                           ; $5eee: $00
    cp a                                          ; $5eef: $bf
    ld l, a                                       ; $5ef0: $6f
    cp a                                          ; $5ef1: $bf
    ld [hl], l                                    ; $5ef2: $75
    sbc h                                         ; $5ef3: $9c
    ld e, b                                       ; $5ef4: $58
    inc l                                         ; $5ef5: $2c
    call z, Call_000_3200                         ; $5ef6: $cc $00 $32
    jp nz, $c170                                  ; $5ef9: $c2 $70 $c1

    ld a, b                                       ; $5efc: $78
    jp Jump_000_00dc                              ; $5efd: $c3 $dc $00


    nop                                           ; $5f00: $00
    cp b                                          ; $5f01: $b8
    dec hl                                        ; $5f02: $2b
    ld b, $01                                     ; $5f03: $06 $01
    ld e, $1e                                     ; $5f05: $1e $1e
    rlca                                          ; $5f07: $07
    ld a, $00                                     ; $5f08: $3e $00
    ld e, $26                                     ; $5f0a: $1e $26
    jr nz, @+$13                                  ; $5f0c: $20 $11

    cp b                                          ; $5f0e: $b8
    rra                                           ; $5f0f: $1f
    nop                                           ; $5f10: $00
    inc bc                                        ; $5f11: $03
    nop                                           ; $5f12: $00
    db $fc                                        ; $5f13: $fc
    pop hl                                        ; $5f14: $e1
    pop bc                                        ; $5f15: $c1
    inc a                                         ; $5f16: $3c
    db $dd                                        ; $5f17: $dd
    ld a, [de]                                    ; $5f18: $1a
    rlca                                          ; $5f19: $07
    and h                                         ; $5f1a: $a4
    nop                                           ; $5f1b: $00
    dec bc                                        ; $5f1c: $0b
    cp [hl]                                       ; $5f1d: $be
    sbc $03                                       ; $5f1e: $de $03
    sbc $13                                       ; $5f20: $de $13
    db $fc                                        ; $5f22: $fc
    ld l, [hl]                                    ; $5f23: $6e
    ld [c], a                                     ; $5f24: $e2
    jr c, jr_0cf_5f3f                             ; $5f25: $38 $18

    inc a                                         ; $5f27: $3c
    ld [$084b], sp                                ; $5f28: $08 $4b $08
    ld a, h                                       ; $5f2b: $7c
    pop bc                                        ; $5f2c: $c1
    ld a, b                                       ; $5f2d: $78
    ld [hl], $00                                  ; $5f2e: $36 $00
    ld a, b                                       ; $5f30: $78
    ld [bc], a                                    ; $5f31: $02
    pop bc                                        ; $5f32: $c1
    ld a, h                                       ; $5f33: $7c
    pop bc                                        ; $5f34: $c1
    ld a, h                                       ; $5f35: $7c
    ret nz                                        ; $5f36: $c0

    ld a, [hl]                                    ; $5f37: $7e
    ld [bc], a                                    ; $5f38: $02
    nop                                           ; $5f39: $00
    or b                                          ; $5f3a: $b0
    nop                                           ; $5f3b: $00
    adc a                                         ; $5f3c: $8f
    ld hl, sp-$80                                 ; $5f3d: $f8 $80

jr_0cf_5f3f:
    add e                                         ; $5f3f: $83
    or h                                          ; $5f40: $b4
    inc bc                                        ; $5f41: $03
    dec [hl]                                      ; $5f42: $35
    add a                                         ; $5f43: $87
    nop                                           ; $5f44: $00
    xor h                                         ; $5f45: $ac
    add [hl]                                      ; $5f46: $86
    add b                                         ; $5f47: $80
    cp a                                          ; $5f48: $bf
    cp h                                          ; $5f49: $bc
    ccf                                           ; $5f4a: $3f
    and [hl]                                      ; $5f4b: $a6
    ld bc, $ec00                                  ; $5f4c: $01 $00 $ec
    jp nz, $9fe2                                  ; $5f4f: $c2 $e2 $9f

    add c                                         ; $5f52: $81
    ld e, $e9                                     ; $5f53: $1e $e9
    dec c                                         ; $5f55: $0d
    ld bc, $1f45                                  ; $5f56: $01 $45 $1f
    inc bc                                        ; $5f59: $03
    db $fc                                        ; $5f5a: $fc
    jp z, $84fe                                   ; $5f5b: $ca $fe $84

    inc [hl]                                      ; $5f5e: $34
    stop                                          ; $5f5f: $10 $00
    ld a, [hl]                                    ; $5f61: $7e
    inc a                                         ; $5f62: $3c
    ld [bc], a                                    ; $5f63: $02
    ld [bc], a                                    ; $5f64: $02
    inc e                                         ; $5f65: $1c
    ld h, d                                       ; $5f66: $62
    ld l, h                                       ; $5f67: $6c
    ld [hl], b                                    ; $5f68: $70
    nop                                           ; $5f69: $00
    ld [hl-], a                                   ; $5f6a: $32
    ld [hl], h                                    ; $5f6b: $74
    ld d, $c1                                     ; $5f6c: $16 $c1
    ld a, h                                       ; $5f6e: $7c
    jp $8578                                      ; $5f6f: $c3 $78 $85


    nop                                           ; $5f72: $00
    ld b, h                                       ; $5f73: $44
    xor l                                         ; $5f74: $ad
    ld e, b                                       ; $5f75: $58
    sbc l                                         ; $5f76: $9d
    ld [hl], l                                    ; $5f77: $75
    cp b                                          ; $5f78: $b8
    ld e, b                                       ; $5f79: $58
    add b                                         ; $5f7a: $80
    nop                                           ; $5f7b: $00
    ld a, a                                       ; $5f7c: $7f
    rst $38                                       ; $5f7d: $ff
    nop                                           ; $5f7e: $00
    inc sp                                        ; $5f7f: $33
    and d                                         ; $5f80: $a2
    and a                                         ; $5f81: $a7
    inc h                                         ; $5f82: $24
    add a                                         ; $5f83: $87
    nop                                           ; $5f84: $00
    adc a                                         ; $5f85: $8f
    rrca                                          ; $5f86: $0f
    sub a                                         ; $5f87: $97
    or c                                          ; $5f88: $b1
    xor [hl]                                      ; $5f89: $ae
    cp a                                          ; $5f8a: $bf
    jr nz, @+$01                                  ; $5f8b: $20 $ff

    nop                                           ; $5f8d: $00
    nop                                           ; $5f8e: $00
    nop                                           ; $5f8f: $00
    nop                                           ; $5f90: $00
    and $1a                                       ; $5f91: $e6 $1a
    ldh a, [$0c]                                  ; $5f93: $f0 $0c
    db $fc                                        ; $5f95: $fc
    ld bc, $bc42                                  ; $5f96: $01 $42 $bc
    add [hl]                                      ; $5f99: $86
    ei                                            ; $5f9a: $fb
    add a                                         ; $5f9b: $87
    ld a, [$10c6]                                 ; $5f9c: $fa $c6 $10
    ld [$e200], sp                                ; $5f9f: $08 $00 $e2
    ld b, $e2                                     ; $5fa2: $06 $e2
    ld [bc], a                                    ; $5fa4: $02
    ld b, $ac                                     ; $5fa5: $06 $ac
    ld b, $4c                                     ; $5fa7: $06 $4c
    nop                                           ; $5fa9: $00
    ld b, d                                       ; $5faa: $42
    ld b, h                                       ; $5fab: $44
    jp nz, Jump_000_00cc                          ; $5fac: $c2 $cc $00

    cp $fe                                        ; $5faf: $fe $fe
    nop                                           ; $5fb1: $00
    nop                                           ; $5fb2: $00
    ld bc, $00e9                                  ; $5fb3: $01 $e9 $00
    ld a, [bc]                                    ; $5fb6: $0a
    ld a, a                                       ; $5fb7: $7f
    rst $38                                       ; $5fb8: $ff
    ld a, a                                       ; $5fb9: $7f
    ret nz                                        ; $5fba: $c0

    ld [bc], a                                    ; $5fbb: $02
    jr jr_0cf_603c                                ; $5fbc: $18 $7e

    ld [bc], a                                    ; $5fbe: $02
    nop                                           ; $5fbf: $00
    ld a, h                                       ; $5fc0: $7c
    nop                                           ; $5fc1: $00
    ret nz                                        ; $5fc2: $c0

    rst $38                                       ; $5fc3: $ff
    nop                                           ; $5fc4: $00
    add b                                         ; $5fc5: $80
    add e                                         ; $5fc6: $83
    ccf                                           ; $5fc7: $3f
    cp b                                          ; $5fc8: $b8
    ld a, a                                       ; $5fc9: $7f
    nop                                           ; $5fca: $00
    ld [hl], b                                    ; $5fcb: $70
    rlca                                          ; $5fcc: $07
    ld a, b                                       ; $5fcd: $78
    rlca                                          ; $5fce: $07
    rst $00                                       ; $5fcf: $c7
    rlca                                          ; $5fd0: $07
    jr c, @+$11                                   ; $5fd1: $38 $0f

    nop                                           ; $5fd3: $00
    ldh a, [rIE]                                  ; $5fd4: $f0 $ff
    nop                                           ; $5fd6: $00
    ld hl, sp-$02                                 ; $5fd7: $f8 $fe
    ld b, $f8                                     ; $5fd9: $06 $f8
    inc bc                                        ; $5fdb: $03
    nop                                           ; $5fdc: $00
    db $fc                                        ; $5fdd: $fc
    inc bc                                        ; $5fde: $03
    db $fc                                        ; $5fdf: $fc
    ld hl, $f826                                  ; $5fe0: $21 $26 $f8
    ldh a, [$fe]                                  ; $5fe3: $f0 $fe
    nop                                           ; $5fe5: $00
    rst $38                                       ; $5fe6: $ff
    cp $00                                        ; $5fe7: $fe $00
    ld [bc], a                                    ; $5fe9: $02
    db $fc                                        ; $5fea: $fc
    ld [bc], a                                    ; $5feb: $02
    db $fc                                        ; $5fec: $fc
    add d                                         ; $5fed: $82
    nop                                           ; $5fee: $00
    db $fc                                        ; $5fef: $fc
    ld [bc], a                                    ; $5ff0: $02
    ld a, [hl]                                    ; $5ff1: $7e
    add d                                         ; $5ff2: $82
    ld a, $82                                     ; $5ff3: $3e $82
    ld a, $02                                     ; $5ff5: $3e $02
    nop                                           ; $5ff7: $00
    ld a, $3b                                     ; $5ff8: $3e $3b
    jp $c33b                                      ; $5ffa: $c3 $3b $c3


    ld a, c                                       ; $5ffd: $79
    ret nz                                        ; $5ffe: $c0

    ld a, b                                       ; $5fff: $78

Jump_0cf_6000:
    nop                                           ; $6000: $00
    ret nz                                        ; $6001: $c0

    ld [hl], $c6                                  ; $6002: $36 $c6
    scf                                           ; $6004: $37
    call nz, $c437                                ; $6005: $c4 $37 $c4
    dec sp                                        ; $6008: $3b
    nop                                           ; $6009: $00
    jp nz, $fff8                                  ; $600a: $c2 $f8 $ff

    db $fc                                        ; $600d: $fc
    nop                                           ; $600e: $00
    cp $03                                        ; $600f: $fe $03
    nop                                           ; $6011: $00
    nop                                           ; $6012: $00
    nop                                           ; $6013: $00
    ld bc, $1519                                  ; $6014: $01 $19 $15
    inc hl                                        ; $6017: $23
    ld de, $3c32                                  ; $6018: $11 $32 $3c
    nop                                           ; $601b: $00
    inc a                                         ; $601c: $3c
    ld bc, $1fff                                  ; $601d: $01 $ff $1f
    nop                                           ; $6020: $00
    ccf                                           ; $6021: $3f
    ldh [rP1], a                                  ; $6022: $e0 $00
    nop                                           ; $6024: $00
    add b                                         ; $6025: $80
    ld b, b                                       ; $6026: $40
    call z, $d14a                                 ; $6027: $cc $4a $d1
    ld c, b                                       ; $602a: $48
    sbc c                                         ; $602b: $99
    ld a, $00                                     ; $602c: $3e $00
    ld a, $c2                                     ; $602e: $3e $c2
    ld e, $62                                     ; $6030: $1e $62
    ld c, $62                                     ; $6032: $0e $62
    adc [hl]                                      ; $6034: $8e
    ld [bc], a                                    ; $6035: $02
    nop                                           ; $6036: $00
    ld e, $0e                                     ; $6037: $1e $0e
    ld h, d                                       ; $6039: $62
    ld c, [hl]                                    ; $603a: $4e
    ld [hl+], a                                   ; $603b: $22

jr_0cf_603c:
    ld c, $22                                     ; $603c: $0e $22
    ld e, $00                                     ; $603e: $1e $00
    ld b, d                                       ; $6040: $42
    dec sp                                        ; $6041: $3b
    jp nz, $c33b                                  ; $6042: $c2 $3b $c3

    ld a, l                                       ; $6045: $7d
    pop bc                                        ; $6046: $c1
    ld a, [hl]                                    ; $6047: $7e
    add b                                         ; $6048: $80
    add h                                         ; $6049: $84
    db $10                                        ; $604a: $10
    ccf                                           ; $604b: $3f
    cp $3f                                        ; $604c: $fe $3f
    cp $78                                        ; $604e: $fe $78
    ld b, c                                       ; $6050: $41
    cp d                                          ; $6051: $ba
    nop                                           ; $6052: $00
    cp c                                          ; $6053: $b9
    ld a, l                                       ; $6054: $7d
    add b                                         ; $6055: $80
    add hl, sp                                    ; $6056: $39
    ld a, [hl-]                                   ; $6057: $3a
    ld b, c                                       ; $6058: $41
    ld a, l                                       ; $6059: $7d
    cp a                                          ; $605a: $bf
    nop                                           ; $605b: $00
    db $fc                                        ; $605c: $fc
    ld c, c                                       ; $605d: $49
    add $27                                       ; $605e: $c6 $27
    xor h                                         ; $6060: $ac
    ld e, $82                                     ; $6061: $1e $82
    ld e, l                                       ; $6063: $5d
    nop                                           ; $6064: $00
    sbc l                                         ; $6065: $9d
    cp h                                          ; $6066: $bc
    ld [bc], a                                    ; $6067: $02
    ld bc, $073d                                  ; $6068: $01 $3d $07
    ld a, [hl]                                    ; $606b: $7e
    ei                                            ; $606c: $fb
    nop                                           ; $606d: $00
    cp $f2                                        ; $606e: $fe $f2
    rst $20                                       ; $6070: $e7
    or d                                          ; $6071: $b2
    ld [hl], e                                    ; $6072: $73
    ld e, $42                                     ; $6073: $1e $42
    ld e, $0b                                     ; $6075: $1e $0b
    jp nz, $823e                                  ; $6077: $c2 $3e $82

    ld a, [hl]                                    ; $607a: $7e
    add l                                         ; $607b: $85
    ld [$04fe], sp                                ; $607c: $08 $fe $04
    ld [$0834], sp                                ; $607f: $08 $34 $08
    nop                                           ; $6082: $00
    dec a                                         ; $6083: $3d
    db $fc                                        ; $6084: $fc
    ld sp, $0df0                                  ; $6085: $31 $f0 $0d
    call z, $fc3d                                 ; $6088: $cc $3d $fc
    nop                                           ; $608b: $00
    add b                                         ; $608c: $80
    ld a, a                                       ; $608d: $7f
    rst $38                                       ; $608e: $ff
    nop                                           ; $608f: $00
    adc b                                         ; $6090: $88
    ld h, b                                       ; $6091: $60
    adc a                                         ; $6092: $8f
    ld c, e                                       ; $6093: $4b
    nop                                           ; $6094: $00
    ld c, b                                       ; $6095: $48
    adc e                                         ; $6096: $8b
    dec l                                         ; $6097: $2d
    adc l                                         ; $6098: $8d
    or b                                          ; $6099: $b0
    add a                                         ; $609a: $87
    jr c, jr_0cf_60a0                             ; $609b: $38 $03

    nop                                           ; $609d: $00
    rst $38                                       ; $609e: $ff
    nop                                           ; $609f: $00

jr_0cf_60a0:
    nop                                           ; $60a0: $00
    nop                                           ; $60a1: $00
    inc sp                                        ; $60a2: $33
    ld d, c                                       ; $60a3: $51
    ld h, e                                       ; $60a4: $63
    add c                                         ; $60a5: $81
    nop                                           ; $60a6: $00
    jp nc, $3283                                  ; $60a7: $d2 $83 $32

    db $e3                                        ; $60aa: $e3
    db $e3                                        ; $60ab: $e3
    dec b                                         ; $60ac: $05
    pop bc                                        ; $60ad: $c1
    rrca                                          ; $60ae: $0f
    add b                                         ; $60af: $80
    db $10                                        ; $60b0: $10
    ld [$62fc], sp                                ; $60b1: $08 $fc $62
    db $fc                                        ; $60b4: $fc
    cp $7d                                        ; $60b5: $fe $7d
    inc bc                                        ; $60b7: $03
    sbc l                                         ; $60b8: $9d
    nop                                           ; $60b9: $00
    add e                                         ; $60ba: $83
    ldh [rDMA], a                                 ; $60bb: $e0 $46
    ld hl, sp+$32                                 ; $60bd: $f8 $32
    nop                                           ; $60bf: $00
    cp $fe                                        ; $60c0: $fe $fe
    nop                                           ; $60c2: $00
    nop                                           ; $60c3: $00
    nop                                           ; $60c4: $00
    ld bc, $00e1                                  ; $60c5: $01 $e1 $00
    db $10                                        ; $60c8: $10
    add b                                         ; $60c9: $80
    ld a, a                                       ; $60ca: $7f
    cp a                                          ; $60cb: $bf
    ld [bc], a                                    ; $60cc: $02
    ld d, b                                       ; $60cd: $50
    nop                                           ; $60ce: $00
    rst $38                                       ; $60cf: $ff
    ldh a, [rP1]                                  ; $60d0: $f0 $00
    nop                                           ; $60d2: $00
    db $fc                                        ; $60d3: $fc
    ccf                                           ; $60d4: $3f
    db $fc                                        ; $60d5: $fc
    ld a, l                                       ; $60d6: $7d
    ld [hl], b                                    ; $60d7: $70
    adc h                                         ; $60d8: $8c
    ld d, e                                       ; $60d9: $53
    and c                                         ; $60da: $a1
    nop                                           ; $60db: $00
    dec bc                                        ; $60dc: $0b
    ld c, [hl]                                    ; $60dd: $4e
    rlca                                          ; $60de: $07
    cp h                                          ; $60df: $bc
    rst $38                                       ; $60e0: $ff
    nop                                           ; $60e1: $00
    nop                                           ; $60e2: $00
    ld a, a                                       ; $60e3: $7f
    nop                                           ; $60e4: $00
    daa                                           ; $60e5: $27
    add b                                         ; $60e6: $80
    ld h, e                                       ; $60e7: $63
    ld hl, sp-$69                                 ; $60e8: $f8 $97
    ld l, e                                       ; $60ea: $6b
    inc sp                                        ; $60eb: $33

jr_0cf_60ec:
    ret                                           ; $60ec: $c9


    nop                                           ; $60ed: $00
    ld d, l                                       ; $60ee: $55
    reti                                          ; $60ef: $d9


    adc h                                         ; $60f0: $8c
    adc d                                         ; $60f1: $8a
    nop                                           ; $60f2: $00
    cp $fc                                        ; $60f3: $fe $fc
    ld [bc], a                                    ; $60f5: $02
    add h                                         ; $60f6: $84
    ld [bc], a                                    ; $60f7: $02
    jr z, jr_0cf_60ec                             ; $60f8: $28 $f2

    ld c, $3a                                     ; $60fa: $0e $3a
    ld b, $3e                                     ; $60fc: $06 $3e
    jr z, jr_0cf_6140                             ; $60fe: $28 $40

    cp $00                                        ; $6100: $fe $00
    ld b, c                                       ; $6102: $41
    db $fc                                        ; $6103: $fc
    inc bc                                        ; $6104: $03
    ldh a, [rIF]                                  ; $6105: $f0 $0f
    pop hl                                        ; $6107: $e1
    ld b, $7d                                     ; $6108: $06 $7d
    nop                                           ; $610a: $00
    inc c                                         ; $610b: $0c
    ld a, [hl-]                                   ; $610c: $3a
    or h                                          ; $610d: $b4
    cp c                                          ; $610e: $b9
    jr z, jr_0cf_6135                             ; $610f: $28 $24

    ld a, [hl+]                                   ; $6111: $2a
    inc sp                                        ; $6112: $33
    nop                                           ; $6113: $00
    ld a, [hl-]                                   ; $6114: $3a
    ld [hl+], a                                   ; $6115: $22
    jr nc, @+$28                                  ; $6116: $30 $26

    db $10                                        ; $6118: $10
    rlca                                          ; $6119: $07
    inc bc                                        ; $611a: $03
    rlca                                          ; $611b: $07
    nop                                           ; $611c: $00
    ldh a, [rTMA]                                 ; $611d: $f0 $06
    inc a                                         ; $611f: $3c
    call nz, $229e                                ; $6120: $c4 $9e $22
    ld c, [hl]                                    ; $6123: $4e
    add d                                         ; $6124: $82
    nop                                           ; $6125: $00
    cp b                                          ; $6126: $b8
    ld b, l                                       ; $6127: $45
    sbc d                                         ; $6128: $9a
    and b                                         ; $6129: $a0
    add h                                         ; $612a: $84
    add [hl]                                      ; $612b: $86
    ld hl, sp-$0a                                 ; $612c: $f8 $f6
    nop                                           ; $612e: $00
    jr c, jr_0cf_6167                             ; $612f: $38 $36

    jr nc, jr_0cf_6159                            ; $6131: $30 $26

    ldh a, [$c6]                                  ; $6133: $f0 $c6

jr_0cf_6135:
    ldh [$ce], a                                  ; $6135: $e0 $ce
    nop                                           ; $6137: $00
    ld b, b                                       ; $6138: $40
    ld e, $82                                     ; $6139: $1e $82
    ld a, $82                                     ; $613b: $3e $82
    ld a, $1f                                     ; $613d: $3e $1f
    ret c                                         ; $613f: $d8

jr_0cf_6140:
    nop                                           ; $6140: $00
    rrca                                          ; $6141: $0f
    and $07                                       ; $6142: $e6 $07
    db $e4                                        ; $6144: $e4
    ld e, $d8                                     ; $6145: $1e $d8
    rrca                                          ; $6147: $0f
    db $e4                                        ; $6148: $e4
    nop                                           ; $6149: $00
    rrca                                          ; $614a: $0f
    db $ec                                        ; $614b: $ec
    ret c                                         ; $614c: $d8

    ld e, $e1                                     ; $614d: $1e $e1
    dec a                                         ; $614f: $3d
    ldh [$cf], a                                  ; $6150: $e0 $cf
    nop                                           ; $6152: $00
    ldh [$cf], a                                  ; $6153: $e0 $cf
    ld b, [hl]                                    ; $6155: $46
    add a                                         ; $6156: $87
    add [hl]                                      ; $6157: $86
    rlca                                          ; $6158: $07

jr_0cf_6159:
    or h                                          ; $6159: $b4
    sub e                                         ; $615a: $93
    nop                                           ; $615b: $00
    ld l, d                                       ; $615c: $6a
    ld hl, $0fc3                                  ; $615d: $21 $c3 $0f
    add b                                         ; $6160: $80
    rrca                                          ; $6161: $0f
    ld hl, sp+$14                                 ; $6162: $f8 $14
    nop                                           ; $6164: $00
    ei                                            ; $6165: $fb
    inc sp                                        ; $6166: $33

jr_0cf_6167:
    ld b, $fc                                     ; $6167: $06 $fc
    adc $38                                       ; $6169: $ce $38
    inc h                                         ; $616b: $24
    push hl                                       ; $616c: $e5
    nop                                           ; $616d: $00
    ret z                                         ; $616e: $c8

    pop de                                        ; $616f: $d1
    dec c                                         ; $6170: $0d
    call c, $c50c                                 ; $6171: $dc $0c $c5
    ld [bc], a                                    ; $6174: $02
    ld e, $00                                     ; $6175: $1e $00
    ld h, d                                       ; $6177: $62
    ld c, $2e                                     ; $6178: $0e $2e
    ldh [rNR34], a                                ; $617a: $e0 $1e
    ret nz                                        ; $617c: $c0

    ld e, [hl]                                    ; $617d: $5e
    ret nz                                        ; $617e: $c0

    nop                                           ; $617f: $00
    ld c, [hl]                                    ; $6180: $4e
    ret nz                                        ; $6181: $c0

    halt                                          ; $6182: $76
    ldh a, [$0e]                                  ; $6183: $f0 $0e
    ldh [$c1], a                                  ; $6185: $e0 $c1
    dec a                                         ; $6187: $3d
    nop                                           ; $6188: $00
    ret nz                                        ; $6189: $c0

    inc a                                         ; $618a: $3c
    ld e, $c0                                     ; $618b: $1e $c0
    ccf                                           ; $618d: $3f
    sbc $3f                                       ; $618e: $de $3f
    ldh a, [rP1]                                  ; $6190: $f0 $00
    ld a, $c0                                     ; $6192: $3e $c0
    add b                                         ; $6194: $80
    ld a, a                                       ; $6195: $7f
    rst $38                                       ; $6196: $ff
    nop                                           ; $6197: $00
    adc [hl]                                      ; $6198: $8e
    rrca                                          ; $6199: $0f
    nop                                           ; $619a: $00
    add [hl]                                      ; $619b: $86
    rrca                                          ; $619c: $0f
    ld [hl], b                                    ; $619d: $70
    scf                                           ; $619e: $37
    jr c, @+$1d                                   ; $619f: $38 $1b

    ld sp, $208b                                  ; $61a1: $31 $8b $20
    ld de, $bc8b                                  ; $61a4: $11 $8b $bc
    nop                                           ; $61a7: $00
    nop                                           ; $61a8: $00
    add [hl]                                      ; $61a9: $86
    ret z                                         ; $61aa: $c8

    add [hl]                                      ; $61ab: $86
    ret c                                         ; $61ac: $d8

    nop                                           ; $61ad: $00
    adc h                                         ; $61ae: $8c
    or b                                          ; $61af: $b0
    add hl, de                                    ; $61b0: $19
    ld h, d                                       ; $61b1: $62
    ld h, a                                       ; $61b2: $67
    ld d, h                                       ; $61b3: $54
    inc hl                                        ; $61b4: $23
    ld [de], a                                    ; $61b5: $12
    add b                                         ; $61b6: $80
    db $10                                        ; $61b7: $10
    ld [$e02e], sp                                ; $61b8: $08 $2e $e0
    ld [hl], $f0                                  ; $61bb: $36 $f0
    add sp, $0a                                   ; $61bd: $e8 $0a
    ldh a, [rP1]                                  ; $61bf: $f0 $00
    ld [c], a                                     ; $61c1: $e2
    ld [de], a                                    ; $61c2: $12
    ld hl, sp+$0a                                 ; $61c3: $f8 $0a
    db $fc                                        ; $61c5: $fc
    nop                                           ; $61c6: $00
    cp $fe                                        ; $61c7: $fe $fe
    nop                                           ; $61c9: $00
    nop                                           ; $61ca: $00
    nop                                           ; $61cb: $00
    ld bc, $00f0                                  ; $61cc: $01 $f0 $00
    ld [$ff7f], sp                                ; $61cf: $08 $7f $ff
    ld a, a                                       ; $61d2: $7f
    ret nz                                        ; $61d3: $c0

    ld [bc], a                                    ; $61d4: $02
    jr z, jr_0cf_6216                             ; $61d5: $28 $3f

    pop bc                                        ; $61d7: $c1
    ccf                                           ; $61d8: $3f
    nop                                           ; $61d9: $00
    jp Jump_000_00ff                              ; $61da: $c3 $ff $00


Jump_0cf_61dd:
    nop                                           ; $61dd: $00
    db $fc                                        ; $61de: $fc
    di                                            ; $61df: $f3
    inc bc                                        ; $61e0: $03
    pop hl                                        ; $61e1: $e1
    nop                                           ; $61e2: $00
    rrca                                          ; $61e3: $0f
    db $e4                                        ; $61e4: $e4
    daa                                           ; $61e5: $27
    rst $00                                       ; $61e6: $c7
    rst $00                                       ; $61e7: $c7
    ld c, l                                       ; $61e8: $4d
    ld a, l                                       ; $61e9: $7d
    add c                                         ; $61ea: $81
    nop                                           ; $61eb: $00
    adc [hl]                                      ; $61ec: $8e
    nop                                           ; $61ed: $00
    rst $38                                       ; $61ee: $ff
    ld bc, $0200                                  ; $61ef: $01 $00 $02
    db $fc                                        ; $61f2: $fc

jr_0cf_61f3:
    cp $00                                        ; $61f3: $fe $00
    jr c, jr_0cf_61f3                             ; $61f5: $38 $fc

    ld b, $78                                     ; $61f7: $06 $78
    db $fd                                        ; $61f9: $fd
    ld [bc], a                                    ; $61fa: $02
    ld bc, $2033                                  ; $61fb: $01 $33 $20
    adc $fe                                       ; $61fe: $ce $fe
    ld c, $00                                     ; $6200: $0e $00
    ld [bc], a                                    ; $6202: $02
    inc e                                         ; $6203: $1c
    ld h, d                                       ; $6204: $62
    ld l, h                                       ; $6205: $6c
    ld h, d                                       ; $6206: $62
    nop                                           ; $6207: $00
    ld [hl], h                                    ; $6208: $74
    ld b, d                                       ; $6209: $42
    sub h                                         ; $620a: $94
    ld [hl+], a                                   ; $620b: $22
    ld d, [hl]                                    ; $620c: $56
    ld [hl], d                                    ; $620d: $72

Jump_0cf_620e:
    ld b, $c1                                     ; $620e: $06 $c1
    nop                                           ; $6210: $00
    add hl, sp                                    ; $6211: $39
    jp $c13b                                      ; $6212: $c3 $3b $c1


    ld a, d                                       ; $6215: $7a

jr_0cf_6216:
    ret nz                                        ; $6216: $c0

    ld a, d                                       ; $6217: $7a
    ld hl, sp+$00                                 ; $6218: $f8 $00
    jp nz, $c2f8                                  ; $621a: $c2 $f8 $c2

    ld a, h                                       ; $621d: $7c
    ret c                                         ; $621e: $d8

    ld a, b                                       ; $621f: $78
    ret z                                         ; $6220: $c8

    inc hl                                        ; $6221: $23
    nop                                           ; $6222: $00
    sub c                                         ; $6223: $91
    ret nc                                        ; $6224: $d0

    or [hl]                                       ; $6225: $b6
    inc h                                         ; $6226: $24
    ld l, b                                       ; $6227: $68
    jp hl                                         ; $6228: $e9


    ld sp, $005e                                  ; $6229: $31 $5e $00
    adc [hl]                                      ; $622c: $8e
    ret z                                         ; $622d: $c8

    ld c, $0f                                     ; $622e: $0e $0f
    ld [$1a0d], sp                                ; $6230: $08 $0d $1a
    jr z, jr_0cf_6235                             ; $6233: $28 $00

jr_0cf_6235:
    inc de                                        ; $6235: $13
    rra                                           ; $6236: $1f
    rra                                           ; $6237: $1f
    ld [$f00f], sp                                ; $6238: $08 $0f $f0
    nop                                           ; $623b: $00
    jr nc, jr_0cf_623e                            ; $623c: $30 $00

jr_0cf_623e:
    rrca                                          ; $623e: $0f
    rst $18                                       ; $623f: $df
    ret nz                                        ; $6240: $c0

    add hl, bc                                    ; $6241: $09
    ld l, c                                       ; $6242: $69
    sbc b                                         ; $6243: $98
    and [hl]                                      ; $6244: $a6
    ld b, $00                                     ; $6245: $06 $00
    ld a, [c]                                     ; $6247: $f2
    ld c, $e2                                     ; $6248: $0e $e2
    inc e                                         ; $624a: $1c
    ld [de], a                                    ; $624b: $12
    ld e, h                                       ; $624c: $5c
    ld [hl], d                                    ; $624d: $72
    ld l, [hl]                                    ; $624e: $6e
    nop                                           ; $624f: $00
    ld h, d                                       ; $6250: $62
    ld a, [hl]                                    ; $6251: $7e
    ld [c], a                                     ; $6252: $e2
    sbc h                                         ; $6253: $9c
    jp nz, $423c                                  ; $6254: $c2 $3c $42

    ld [hl], h                                    ; $6257: $74
    nop                                           ; $6258: $00
    add $7c                                       ; $6259: $c6 $7c
    add $79                                       ; $625b: $c6 $79
    ret z                                         ; $625d: $c8

    ld a, [hl]                                    ; $625e: $7e
    ret nz                                        ; $625f: $c0

    ret nz                                        ; $6260: $c0

    nop                                           ; $6261: $00
    inc a                                         ; $6262: $3c
    jp nz, $c43a                                  ; $6263: $c2 $3a $c4

    inc [hl]                                      ; $6266: $34
    adc $0e                                       ; $6267: $ce $0e
    sub e                                         ; $6269: $93
    nop                                           ; $626a: $00
    jp nc, $fedd                                  ; $626b: $d2 $dd $fe

    ld c, e                                       ; $626e: $4b
    ld a, h                                       ; $626f: $7c
    rlca                                          ; $6270: $07
    ld [$005e], sp                                ; $6271: $08 $5e $00
    sbc l                                         ; $6274: $9d
    ld e, d                                       ; $6275: $5a
    sub e                                         ; $6276: $93
    ld e, e                                       ; $6277: $5b
    sub l                                         ; $6278: $95
    sbc c                                         ; $6279: $99
    sub $f2                                       ; $627a: $d6 $f2
    nop                                           ; $627c: $00
    ei                                            ; $627d: $fb
    and $d1                                       ; $627e: $e6 $d1
    cp $ff                                        ; $6280: $fe $ff
    sbc [hl]                                      ; $6282: $9e
    adc a                                         ; $6283: $8f
    inc hl                                        ; $6284: $23
    nop                                           ; $6285: $00
    xor [hl]                                      ; $6286: $ae
    dec b                                         ; $6287: $05
    db $fd                                        ; $6288: $fd
    add hl, bc                                    ; $6289: $09
    rst $38                                       ; $628a: $ff
    db $e4                                        ; $628b: $e4
    ld [c], a                                     ; $628c: $e2
    jp nc, $ac00                                  ; $628d: $d2 $00 $ac

    jp nc, $e2ac                                  ; $6290: $d2 $ac $e2

    inc l                                         ; $6293: $2c
    ld b, d                                       ; $6294: $42
    ld e, h                                       ; $6295: $5c
    db $fc                                        ; $6296: $fc

jr_0cf_6297:
    jr nz, jr_0cf_6297                            ; $6297: $20 $fe

    db $fc                                        ; $6299: $fc
    adc c                                         ; $629a: $89
    nop                                           ; $629b: $00
    db $fc                                        ; $629c: $fc
    jp nz, Jump_0cf_77c0                          ; $629d: $c2 $c0 $77

    add $00                                       ; $62a0: $c6 $00
    ld b, c                                       ; $62a2: $41

jr_0cf_62a3:
    jp nz, $e3f1                                  ; $62a3: $c2 $f1 $e3

    ret nc                                        ; $62a6: $d0

    ldh a, [$c8]                                  ; $62a7: $f0 $c8
    jp c, $c400                                   ; $62a9: $da $00 $c4

    add b                                         ; $62ac: $80
    ld a, a                                       ; $62ad: $7f
    rst $38                                       ; $62ae: $ff
    nop                                           ; $62af: $00
    jr nz, jr_0cf_6321                            ; $62b0: $20 $6f

    adc b                                         ; $62b2: $88
    nop                                           ; $62b3: $00
    daa                                           ; $62b4: $27
    ld b, c                                       ; $62b5: $41
    sub [hl]                                      ; $62b6: $96
    inc bc                                        ; $62b7: $03
    db $e3                                        ; $62b8: $e3
    ld [hl], d                                    ; $62b9: $72
    cp b                                          ; $62ba: $b8
    ld [$7a40], sp                                ; $62bb: $08 $40 $7a
    call z, RST_00                                ; $62be: $cc $00 $00
    ld c, h                                       ; $62c1: $4c
    ret nz                                        ; $62c2: $c0

    ld c, b                                       ; $62c3: $48
    pop bc                                        ; $62c4: $c1
    sub e                                         ; $62c5: $93
    ld bc, $0602                                  ; $62c6: $01 $02 $06
    call nz, $c886                                ; $62c9: $c4 $86 $c8
    sbc b                                         ; $62cc: $98
    ldh [rNR10], a                                ; $62cd: $e0 $10
    ld [$9e00], sp                                ; $62cf: $08 $00 $9e
    ld b, d                                       ; $62d2: $42
    ld c, $c2                                     ; $62d3: $0e $c2
    and d                                         ; $62d5: $a2
    ld c, $22                                     ; $62d6: $0e $22
    ld c, $00                                     ; $62d8: $0e $00
    ld h, h                                       ; $62da: $64
    ld b, $50                                     ; $62db: $06 $50
    ld [bc], a                                    ; $62dd: $02
    nop                                           ; $62de: $00
    cp $fe                                        ; $62df: $fe $fe
    nop                                           ; $62e1: $00
    nop                                           ; $62e2: $00
    ld bc, $00f1                                  ; $62e3: $01 $f1 $00
    inc b                                         ; $62e6: $04
    add b                                         ; $62e7: $80
    rst $38                                       ; $62e8: $ff
    cp a                                          ; $62e9: $bf
    ret nz                                        ; $62ea: $c0

    ld a, a                                       ; $62eb: $7f
    ld [bc], a                                    ; $62ec: $02
    db $10                                        ; $62ed: $10
    ld a, [hl]                                    ; $62ee: $7e
    ret nz                                        ; $62ef: $c0

Jump_0cf_62f0:
    nop                                           ; $62f0: $00
    pop bc                                        ; $62f1: $c1
    cp $c0                                        ; $62f2: $fe $c0
    db $fc                                        ; $62f4: $fc
    rst $38                                       ; $62f5: $ff
    rst $38                                       ; $62f6: $ff
    add hl, de                                    ; $62f7: $19
    ld b, $00                                     ; $62f8: $06 $00
    ret z                                         ; $62fa: $c8

    dec e                                         ; $62fb: $1d
    or b                                          ; $62fc: $b0
    add hl, sp                                    ; $62fd: $39
    jp $bcf2                                      ; $62fe: $c3 $f2 $bc


    stop                                          ; $6301: $10 $00
    sbc $cc                                       ; $6303: $de $cc
    adc b                                         ; $6305: $88
    call z, $ff00                                 ; $6306: $cc $00 $ff
    rst $28                                       ; $6309: $ef
    ldh [rP1], a                                  ; $630a: $e0 $00
    rlca                                          ; $630c: $07
    ldh a, [$2b]                                  ; $630d: $f0 $2b
    add sp, -$7d                                  ; $630f: $e8 $83
    add d                                         ; $6311: $82
    inc de                                        ; $6312: $13
    rra                                           ; $6313: $1f
    nop                                           ; $6314: $00
    inc e                                         ; $6315: $1c
    ld [hl], e                                    ; $6316: $73
    inc l                                         ; $6317: $2c
    ld h, b                                       ; $6318: $60
    nop                                           ; $6319: $00
    cp $fc                                        ; $631a: $fe $fc
    ld [bc], a                                    ; $631c: $02
    add b                                         ; $631d: $80
    ld [bc], a                                    ; $631e: $02
    jr nc, jr_0cf_62a3                            ; $631f: $30 $82

jr_0cf_6321:
    db $fc                                        ; $6321: $fc
    add d                                         ; $6322: $82
    ld hl, sp-$3a                                 ; $6323: $f8 $c6
    ldh a, [$ce]                                  ; $6325: $f0 $ce
    nop                                           ; $6327: $00
    ldh [$5c], a                                  ; $6328: $e0 $5c
    pop hl                                        ; $632a: $e1
    ld c, h                                       ; $632b: $4c
    ret z                                         ; $632c: $c8

    ldh [$cc], a                                  ; $632d: $e0 $cc
    ldh [rP1], a                                  ; $632f: $e0 $00
    ldh a, [$c0]                                  ; $6331: $f0 $c0
    ldh a, [$c6]                                  ; $6333: $f0 $c6
    nop                                           ; $6335: $00
    inc c                                         ; $6336: $0c
    ld l, b                                       ; $6337: $68
    halt                                          ; $6338: $76
    nop                                           ; $6339: $00
    ldh [rNR13], a                                ; $633a: $e0 $13
    dec bc                                        ; $633c: $0b
    db $fc                                        ; $633d: $fc
    di                                            ; $633e: $f3
    pop hl                                        ; $633f: $e1
    adc $b1                                       ; $6340: $ce $b1
    nop                                           ; $6342: $00
    add d                                         ; $6343: $82
    call z, $96e9                                 ; $6344: $cc $e9 $96
    ld [$c3c5], sp                                ; $6347: $08 $c5 $c3
    db $e3                                        ; $634a: $e3
    nop                                           ; $634b: $00
    and $06                                       ; $634c: $e6 $06
    inc b                                         ; $634e: $04
    rst $30                                       ; $634f: $f7
    rst $30                                       ; $6350: $f7
    rst $30                                       ; $6351: $f7
    ld [hl], b                                    ; $6352: $70
    and b                                         ; $6353: $a0
    nop                                           ; $6354: $00
    ld d, d                                       ; $6355: $52
    ld h, e                                       ; $6356: $63
    add a                                         ; $6357: $87
    halt                                          ; $6358: $76
    ld [bc], a                                    ; $6359: $02
    ld a, [hl]                                    ; $635a: $7e
    add d                                         ; $635b: $82
    ld a, $00                                     ; $635c: $3e $00
    ld e, $c2                                     ; $635e: $1e $c2
    ld e, $e2                                     ; $6360: $1e $e2
    ld e, $a2                                     ; $6362: $1e $a2
    ld e, $02                                     ; $6364: $1e $02
    nop                                           ; $6366: $00
    jp nz, $823e                                  ; $6367: $c2 $3e $82

    ld e, $fc                                     ; $636a: $1e $fc
    ld e, $f8                                     ; $636c: $1e $f8
    rra                                           ; $636e: $1f
    nop                                           ; $636f: $00
    ldh [$ce], a                                  ; $6370: $e0 $ce
    ldh [$cc], a                                  ; $6372: $e0 $cc
    call nz, $c0e0                                ; $6374: $c4 $e0 $c0
    ld hl, sp+$00                                 ; $6377: $f8 $00
    ld hl, sp+$3f                                 ; $6379: $f8 $3f
    ld a, [c]                                     ; $637b: $f2
    ld a, $77                                     ; $637c: $3e $77
    di                                            ; $637e: $f3
    ld [hl], a                                    ; $637f: $77
    ei                                            ; $6380: $fb
    nop                                           ; $6381: $00
    ld a, a                                       ; $6382: $7f
    add b                                         ; $6383: $80
    ld a, $5e                                     ; $6384: $3e $5e
    and c                                         ; $6386: $a1
    call z, $2013                                 ; $6387: $cc $13 $20
    nop                                           ; $638a: $00
    ld l, $71                                     ; $638b: $2e $71
    jr nc, jr_0cf_63c7                            ; $638d: $30 $38

    db $ec                                        ; $638f: $ec
    dec c                                         ; $6390: $0d
    db $e4                                        ; $6391: $e4
    dec c                                         ; $6392: $0d
    nop                                           ; $6393: $00
    rra                                           ; $6394: $1f
    ld a, [$f415]                                 ; $6395: $fa $15 $f4
    rst $00                                       ; $6398: $c7
    daa                                           ; $6399: $27
    add d                                         ; $639a: $82
    ld e, d                                       ; $639b: $5a
    nop                                           ; $639c: $00
    jr c, jr_0cf_63b7                             ; $639d: $38 $18

    ldh a, [$61]                                  ; $639f: $f0 $61
    inc e                                         ; $63a1: $1c
    ld [bc], a                                    ; $63a2: $02
    call c, $00c2                                 ; $63a3: $dc $c2 $00
    sbc h                                         ; $63a6: $9c
    add d                                         ; $63a7: $82
    inc a                                         ; $63a8: $3c
    ld [bc], a                                    ; $63a9: $02
    inc bc                                        ; $63aa: $03
    ld a, l                                       ; $63ab: $7d
    inc bc                                        ; $63ac: $03
    db $fd                                        ; $63ad: $fd
    nop                                           ; $63ae: $00
    inc e                                         ; $63af: $1c
    ld [bc], a                                    ; $63b0: $02

Jump_0cf_63b1:
    db $e4                                        ; $63b1: $e4
    ld [c], a                                     ; $63b2: $e2
    db $d3                                        ; $63b3: $d3
    inc de                                        ; $63b4: $13
    db $ec                                        ; $63b5: $ec
    cpl                                           ; $63b6: $2f

jr_0cf_63b7:
    nop                                           ; $63b7: $00
    ret c                                         ; $63b8: $d8

    ld e, $f0                                     ; $63b9: $1e $f0
    inc a                                         ; $63bb: $3c
    ldh a, [$38]                                  ; $63bc: $f0 $38
    ldh [$38], a                                  ; $63be: $e0 $38
    nop                                           ; $63c0: $00
    add b                                         ; $63c1: $80
    ld a, a                                       ; $63c2: $7f
    rst $38                                       ; $63c3: $ff
    nop                                           ; $63c4: $00
    adc [hl]                                      ; $63c5: $8e
    ccf                                           ; $63c6: $3f

jr_0cf_63c7:
    ld c, $05                                     ; $63c7: $0e $05
    nop                                           ; $63c9: $00
    ld c, [hl]                                    ; $63ca: $4e
    ld h, h                                       ; $63cb: $64
    ret nz                                        ; $63cc: $c0

    ld [hl], b                                    ; $63cd: $70
    ld h, b                                       ; $63ce: $60
    rst $38                                       ; $63cf: $ff
    ld [hl], b                                    ; $63d0: $70
    ld c, d                                       ; $63d1: $4a
    nop                                           ; $63d2: $00
    rst $38                                       ; $63d3: $ff
    nop                                           ; $63d4: $00
    nop                                           ; $63d5: $00
    nop                                           ; $63d6: $00
    rlca                                          ; $63d7: $07
    jp $870f                                      ; $63d8: $c3 $0f $87


    nop                                           ; $63db: $00
    rrca                                          ; $63dc: $0f
    ld bc, $d21e                                  ; $63dd: $01 $1e $d2
    adc $c0                                       ; $63e0: $ce $c0
    ld c, [hl]                                    ; $63e2: $4e
    pop hl                                        ; $63e3: $e1
    add b                                         ; $63e4: $80
    db $10                                        ; $63e5: $10
    ld [$f202], sp                                ; $63e6: $08 $02 $f2
    add d                                         ; $63e9: $82
    ld a, [hl]                                    ; $63ea: $7e
    ld c, $fc                                     ; $63eb: $0e $fc
    add [hl]                                      ; $63ed: $86
    nop                                           ; $63ee: $00
    db $fc                                        ; $63ef: $fc
    ld a, $7c                                     ; $63f0: $3e $7c
    ld e, $1c                                     ; $63f2: $1e $1c
    nop                                           ; $63f4: $00
    cp $fe                                        ; $63f5: $fe $fe
    nop                                           ; $63f7: $00
    nop                                           ; $63f8: $00
    nop                                           ; $63f9: $00
    ld bc, $00f0                                  ; $63fa: $01 $f0 $00
    nop                                           ; $63fd: $00
    add b                                         ; $63fe: $80
    rst $38                                       ; $63ff: $ff
    cp a                                          ; $6400: $bf
    ret nz                                        ; $6401: $c0

    ld a, h                                       ; $6402: $7c
    db $fc                                        ; $6403: $fc
    ld a, e                                       ; $6404: $7b
    ld hl, sp+$00                                 ; $6405: $f8 $00
    ldh a, [rPCM12]                               ; $6407: $f0 $76
    ldh a, [$71]                                  ; $6409: $f0 $71
    ld hl, sp+$7b                                 ; $640b: $f8 $7b
    ld hl, sp+$79                                 ; $640d: $f8 $79
    nop                                           ; $640f: $00
    rst $38                                       ; $6410: $ff
    nop                                           ; $6411: $00
    nop                                           ; $6412: $00
    nop                                           ; $6413: $00
    rlca                                          ; $6414: $07
    nop                                           ; $6415: $00
    db $10                                        ; $6416: $10
    ld [hl], b                                    ; $6417: $70
    nop                                           ; $6418: $00
    call nz, $a3c4                                ; $6419: $c4 $c4 $a3
    sbc b                                         ; $641c: $98
    ld [hl], d                                    ; $641d: $72
    jr nc, jr_0cf_6490                            ; $641e: $30 $70

    rla                                           ; $6420: $17
    add b                                         ; $6421: $80
    db $10                                        ; $6422: $10
    ld [$0080], sp                                ; $6423: $08 $80 $00
    ld a, $3f                                     ; $6426: $3e $3f
    ld [bc], a                                    ; $6428: $02
    db $e3                                        ; $6429: $e3
    add c                                         ; $642a: $81
    nop                                           ; $642b: $00
    inc e                                         ; $642c: $1c
    ld b, [hl]                                    ; $642d: $46
    ld b, $14                                     ; $642e: $06 $14
    or d                                          ; $6430: $b2
    nop                                           ; $6431: $00
    cp $fc                                        ; $6432: $fe $fc
    nop                                           ; $6434: $00
    ld [bc], a                                    ; $6435: $02
    db $fd                                        ; $6436: $fd
    add e                                         ; $6437: $83
    dec a                                         ; $6438: $3d
    inc hl                                        ; $6439: $23
    adc $c0                                       ; $643a: $ce $c0
    ld l, [hl]                                    ; $643c: $6e
    nop                                           ; $643d: $00
    ldh [rNR21], a                                ; $643e: $e0 $16
    ldh a, [rTMA]                                 ; $6440: $f0 $06
    ldh a, [$81]                                  ; $6442: $f0 $81
    db $fc                                        ; $6444: $fc
    add b                                         ; $6445: $80
    nop                                           ; $6446: $00
    cp $7f                                        ; $6447: $fe $7f
    ret nz                                        ; $6449: $c0

    ld b, e                                       ; $644a: $43
    ret nz                                        ; $644b: $c0

    ldh [$38], a                                  ; $644c: $e0 $38
    adc $00                                       ; $644e: $ce $00
    ccf                                           ; $6450: $3f
    ld bc, $21c0                                  ; $6451: $01 $c0 $21
    ldh [rP1], a                                  ; $6454: $e0 $00
    ld h, b                                       ; $6456: $60
    rla                                           ; $6457: $17
    nop                                           ; $6458: $00
    call nz, Call_000_0b18                        ; $6459: $c4 $18 $0b
    inc l                                         ; $645c: $2c
    dec h                                         ; $645d: $25
    ld h, a                                       ; $645e: $67
    ld [hl], h                                    ; $645f: $74
    rst $20                                       ; $6460: $e7
    nop                                           ; $6461: $00
    sub l                                         ; $6462: $95
    ld a, [$e67f]                                 ; $6463: $fa $7f $e6
    rst $30                                       ; $6466: $f7
    ld sp, $a934                                  ; $6467: $31 $34 $a9
    nop                                           ; $646a: $00
    inc h                                         ; $646b: $24
    call z, $f649                                 ; $646c: $cc $49 $f6
    ld [de], a                                    ; $646f: $12
    or d                                          ; $6470: $b2
    rlca                                          ; $6471: $07
    db $d3                                        ; $6472: $d3
    ld [bc], a                                    ; $6473: $02
    bit 1, [hl]                                   ; $6474: $cb $4e
    dec l                                         ; $6476: $2d

jr_0cf_6477:
    daa                                           ; $6477: $27
    sub h                                         ; $6478: $94
    and $34                                       ; $6479: $e6 $34
    nop                                           ; $647b: $00
    ld b, $00                                     ; $647c: $06 $00

Call_0cf_647e:
    ld [c], a                                     ; $647e: $e2
    ld b, $02                                     ; $647f: $06 $02
    ld d, [hl]                                    ; $6481: $56
    ld [hl], h                                    ; $6482: $74
    ld a, [bc]                                    ; $6483: $0a
    ld hl, sp-$40                                 ; $6484: $f8 $c0
    ld [bc], a                                    ; $6486: $02
    add d                                         ; $6487: $82
    inc a                                         ; $6488: $3c
    ld e, $74                                     ; $6489: $1e $74
    pop bc                                        ; $648b: $c1
    ld [hl], b                                    ; $648c: $70
    ld [bc], a                                    ; $648d: $02
    nop                                           ; $648e: $00
    ld d, b                                       ; $648f: $50

jr_0cf_6490:
    nop                                           ; $6490: $00
    pop bc                                        ; $6491: $c1
    ld sp, $37c1                                  ; $6492: $31 $c1 $37
    rst $00                                       ; $6495: $c7
    ldh a, [$c7]                                  ; $6496: $f0 $c7
    ldh [rP1], a                                  ; $6498: $e0 $00
    rst $08                                       ; $649a: $cf
    adc $cf                                       ; $649b: $ce $cf
    rst $20                                       ; $649d: $e7
    sub $7f                                       ; $649e: $d6 $7f
    ret nz                                        ; $64a0: $c0

    ccf                                           ; $64a1: $3f
    nop                                           ; $64a2: $00
    jr nz, @+$1a                                  ; $64a3: $20 $18

    sub a                                         ; $64a5: $97
    jr nc, jr_0cf_6477                            ; $64a6: $30 $cf

    ld a, a                                       ; $64a8: $7f
    db $fc                                        ; $64a9: $fc
    nop                                           ; $64aa: $00
    nop                                           ; $64ab: $00
    ld a, a                                       ; $64ac: $7f
    ld d, b                                       ; $64ad: $50
    sbc b                                         ; $64ae: $98
    xor c                                         ; $64af: $a9
    adc c                                         ; $64b0: $89
    ld [hl], e                                    ; $64b1: $73
    add e                                         ; $64b2: $83
    add hl, bc                                    ; $64b3: $09
    nop                                           ; $64b4: $00
    pop af                                        ; $64b5: $f1
    add sp, -$10                                  ; $64b6: $e8 $f0
    adc b                                         ; $64b8: $88
    ldh a, [$e0]                                  ; $64b9: $f0 $e0
    db $f4                                        ; $64bb: $f4
    ld b, $00                                     ; $64bc: $06 $00
    ldh [$fc], a                                  ; $64be: $e0 $fc
    ld a, [hl]                                    ; $64c0: $7e
    ldh [rSC], a                                  ; $64c1: $e0 $02
    sub $dc                                       ; $64c3: $d6 $dc
    ld [bc], a                                    ; $64c5: $02
    nop                                           ; $64c6: $00
    inc a                                         ; $64c7: $3c
    ld a, d                                       ; $64c8: $7a
    ld a, b                                       ; $64c9: $78
    ld [hl+], a                                   ; $64ca: $22
    ldh a, [$ec]                                  ; $64cb: $f0 $ec
    and $4c                                       ; $64cd: $e6 $4c
    nop                                           ; $64cf: $00
    ld b, $cf                                     ; $64d0: $06 $cf
    cpl                                           ; $64d2: $2f
    rst $18                                       ; $64d3: $df
    rrca                                          ; $64d4: $0f
    ret nz                                        ; $64d5: $c0

    ld e, a                                       ; $64d6: $5f
    ldh [rP1], a                                  ; $64d7: $e0 $00
    ld e, a                                       ; $64d9: $5f
    ret nz                                        ; $64da: $c0

    ld a, [hl]                                    ; $64db: $7e
    ret nz                                        ; $64dc: $c0

jr_0cf_64dd:
    ld [hl], b                                    ; $64dd: $70
    add b                                         ; $64de: $80
    ld a, a                                       ; $64df: $7f
    rst $38                                       ; $64e0: $ff
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00

jr_0cf_64e3:
    ld a, a                                       ; $64e3: $7f
    add b                                         ; $64e4: $80
    add h                                         ; $64e5: $84
    ld hl, sp+$1d                                 ; $64e6: $f8 $1d
    pop hl                                        ; $64e8: $e1
    nop                                           ; $64e9: $00
    inc b                                         ; $64ea: $04
    ldh [$1f], a                                  ; $64eb: $e0 $1f
    ld c, $e1                                     ; $64ed: $0e $e1
    sbc $cc                                       ; $64ef: $de $cc
    ld [$b0a7], sp                                ; $64f1: $08 $a7 $b0
    nop                                           ; $64f4: $00
    set 2, b                                      ; $64f5: $cb $d0
    db $e3                                        ; $64f7: $e3
    add sp, -$13                                  ; $64f8: $e8 $ed
    db $ec                                        ; $64fa: $ec
    inc a                                         ; $64fb: $3c
    add hl, sp                                    ; $64fc: $39
    jr nz, jr_0cf_64e3                            ; $64fd: $20 $e4

    jr nz, jr_0cf_64dd                            ; $64ff: $20 $dc

    ld [$1e1c], sp                                ; $6501: $08 $1c $1e
    ldh [rSC], a                                  ; $6504: $e0 $02
    cp $10                                        ; $6506: $fe $10
    db $fd                                        ; $6508: $fd
    ld [bc], a                                    ; $6509: $02
    ld bc, $0802                                  ; $650a: $01 $02 $08
    nop                                           ; $650d: $00
    cp $fe                                        ; $650e: $fe $fe
    nop                                           ; $6510: $00
    nop                                           ; $6511: $00
    ld bc, $00e6                                  ; $6512: $01 $e6 $00
    ld a, [bc]                                    ; $6515: $0a
    add b                                         ; $6516: $80
    rst $38                                       ; $6517: $ff
    cp a                                          ; $6518: $bf
    ret nz                                        ; $6519: $c0

    ld [bc], a                                    ; $651a: $02
    ld [$027e], sp                                ; $651b: $08 $7e $02
    nop                                           ; $651e: $00
    add e                                         ; $651f: $83
    nop                                           ; $6520: $00
    db $fd                                        ; $6521: $fd
    add a                                         ; $6522: $87
    ei                                            ; $6523: $fb
    rst $38                                       ; $6524: $ff
    rst $38                                       ; $6525: $ff
    ret nz                                        ; $6526: $c0

    rrca                                          ; $6527: $0f
    ccf                                           ; $6528: $3f
    nop                                           ; $6529: $00
    and b                                         ; $652a: $a0
    ld a, a                                       ; $652b: $7f
    ld h, b                                       ; $652c: $60
    rrca                                          ; $652d: $0f
    ld c, a                                       ; $652e: $4f
    rra                                           ; $652f: $1f
    rst $08                                       ; $6530: $cf
    ld d, $00                                     ; $6531: $16 $00
    cp a                                          ; $6533: $bf
    add hl, bc                                    ; $6534: $09
    ld [de], a                                    ; $6535: $12
    rst $38                                       ; $6536: $ff
    nop                                           ; $6537: $00
    nop                                           ; $6538: $00
    inc bc                                        ; $6539: $03
    inc bc                                        ; $653a: $03
    jr nz, jr_0cf_653d                            ; $653b: $20 $00

jr_0cf_653d:
    ld bc, $0002                                  ; $653d: $01 $02 $00
    add c                                         ; $6540: $81
    and b                                         ; $6541: $a0
    ld bc, $83fe                                  ; $6542: $01 $fe $83
    inc b                                         ; $6545: $04
    call c, $fefe                                 ; $6546: $dc $fe $fe
    add d                                         ; $6549: $82
    ld a, $02                                     ; $654a: $3e $02
    ld c, b                                       ; $654c: $48
    add a                                         ; $654d: $87
    ld a, a                                       ; $654e: $7f
    nop                                           ; $654f: $00
    add b                                         ; $6550: $80
    ld a, b                                       ; $6551: $78
    cp e                                          ; $6552: $bb
    ld a, d                                       ; $6553: $7a
    or a                                          ; $6554: $b7
    ld [hl], e                                    ; $6555: $73
    ret nz                                        ; $6556: $c0

    ld b, h                                       ; $6557: $44
    nop                                           ; $6558: $00
    ldh [rRP], a                                  ; $6559: $e0 $56
    ld [c], a                                     ; $655b: $e2
    ld b, h                                       ; $655c: $44
    ret nz                                        ; $655d: $c0

    ld b, a                                       ; $655e: $47
    jp nz, Jump_000_00d9                          ; $655f: $c2 $d9 $00

    rst $08                                       ; $6562: $cf
    ret nz                                        ; $6563: $c0

    rra                                           ; $6564: $1f
    rst $18                                       ; $6565: $df
    ccf                                           ; $6566: $3f
    inc e                                         ; $6567: $1c
    jr c, jr_0cf_656a                             ; $6568: $38 $00

jr_0cf_656a:
    nop                                           ; $656a: $00
    daa                                           ; $656b: $27
    or c                                          ; $656c: $b1
    rla                                           ; $656d: $17
    xor e                                         ; $656e: $ab
    ld c, [hl]                                    ; $656f: $4e
    ld d, $a7                                     ; $6570: $16 $a7
    jr c, jr_0cf_6574                             ; $6572: $38 $00

jr_0cf_6574:
    inc [hl]                                      ; $6574: $34
    ld hl, $1dd0                                  ; $6575: $21 $d0 $1d
    pop hl                                        ; $6578: $e1
    dec c                                         ; $6579: $0d
    ccf                                           ; $657a: $3f
    jr nc, jr_0cf_657f                            ; $657b: $30 $02

    halt                                          ; $657d: $76
    add d                                         ; $657e: $82

jr_0cf_657f:
    sbc l                                         ; $657f: $9d
    jp nz, $1702                                  ; $6580: $c2 $02 $17

    ld a, $08                                     ; $6583: $3e $08
    ld a, [hl]                                    ; $6585: $7e
    nop                                           ; $6586: $00
    ld [bc], a                                    ; $6587: $02
    ld a, [hl]                                    ; $6588: $7e
    add d                                         ; $6589: $82
    db $fc                                        ; $658a: $fc
    add d                                         ; $658b: $82
    ld a, h                                       ; $658c: $7c
    ld [bc], a                                    ; $658d: $02
    ld a, $00                                     ; $658e: $3e $00
    add d                                         ; $6590: $82
    ld c, $c2                                     ; $6591: $0e $c2
    call z, $e952                                 ; $6593: $cc $52 $e9
    ld d, b                                       ; $6596: $50
    sbc d                                         ; $6597: $9a
    nop                                           ; $6598: $00
    db $e3                                        ; $6599: $e3
    or h                                          ; $659a: $b4
    add $bc                                       ; $659b: $c6 $bc
    ld b, b                                       ; $659d: $40
    xor c                                         ; $659e: $a9
    ld b, c                                       ; $659f: $41
    ld hl, sp+$00                                 ; $65a0: $f8 $00
    dec sp                                        ; $65a2: $3b
    ldh a, [$33]                                  ; $65a3: $f0 $33
    ret c                                         ; $65a5: $d8

    or a                                          ; $65a6: $b7
    sbc a                                         ; $65a7: $9f
    ld b, b                                       ; $65a8: $40
    ccf                                           ; $65a9: $3f
    nop                                           ; $65aa: $00
    sbc a                                         ; $65ab: $9f
    ld a, a                                       ; $65ac: $7f
    ld e, a                                       ; $65ad: $5f
    and b                                         ; $65ae: $a0
    rst $18                                       ; $65af: $df
    ld [hl], b                                    ; $65b0: $70
    ld c, a                                       ; $65b1: $4f
    jr nc, jr_0cf_65b4                            ; $65b2: $30 $00

jr_0cf_65b4:
    cpl                                           ; $65b4: $2f
    ld a, b                                       ; $65b5: $78
    ld d, a                                       ; $65b6: $57
    inc [hl]                                      ; $65b7: $34
    call z, Call_000_04fb                         ; $65b8: $cc $fb $04
    di                                            ; $65bb: $f3
    nop                                           ; $65bc: $00
    ld bc, $3bf6                                  ; $65bd: $01 $f6 $3b
    and $18                                       ; $65c0: $e6 $18
    add l                                         ; $65c2: $85
    ld a, c                                       ; $65c3: $79
    ld [hl], c                                    ; $65c4: $71
    nop                                           ; $65c5: $00
    adc c                                         ; $65c6: $89
    ld hl, $06d9                                  ; $65c7: $21 $d9 $06
    db $e4                                        ; $65ca: $e4
    ld a, [de]                                    ; $65cb: $1a
    jr c, jr_0cf_661c                             ; $65cc: $38 $4e

    nop                                           ; $65ce: $00
    sub [hl]                                      ; $65cf: $96
    ld b, [hl]                                    ; $65d0: $46
    ld a, [$bc42]                                 ; $65d1: $fa $42 $bc
    add d                                         ; $65d4: $82
    call c, $00bc                                 ; $65d5: $dc $bc $00
    ld a, $bc                                     ; $65d8: $3e $bc
    ld a, $c0                                     ; $65da: $3e $c0
    ld b, c                                       ; $65dc: $41
    add $45                                       ; $65dd: $c6 $45
    call c, Call_0cf_4d00                         ; $65df: $dc $00 $4d
    ret z                                         ; $65e2: $c8

    ld b, c                                       ; $65e3: $41
    ret nz                                        ; $65e4: $c0

    add hl, sp                                    ; $65e5: $39
    ret c                                         ; $65e6: $d8

    inc a                                         ; $65e7: $3c
    add b                                         ; $65e8: $80
    nop                                           ; $65e9: $00
    ld a, a                                       ; $65ea: $7f
    rst $38                                       ; $65eb: $ff
    nop                                           ; $65ec: $00
    ld e, h                                       ; $65ed: $5c
    cpl                                           ; $65ee: $2f
    ld e, l                                       ; $65ef: $5d
    ld h, l                                       ; $65f0: $65
    ccf                                           ; $65f1: $3f
    ld bc, $1f06                                  ; $65f2: $01 $06 $1f
    adc a                                         ; $65f5: $8f
    ld b, a                                       ; $65f6: $47
    and a                                         ; $65f7: $a7
    jr nz, jr_0cf_6616                            ; $65f8: $20 $1c

    cp h                                          ; $65fa: $bc
    nop                                           ; $65fb: $00
    nop                                           ; $65fc: $00
    nop                                           ; $65fd: $00
    ldh a, [$f1]                                  ; $65fe: $f0 $f1
    ldh [rSB], a                                  ; $6600: $e0 $01
    ret nz                                        ; $6602: $c0

    jp $04c1                                      ; $6603: $c3 $c1 $04


    ld [bc], a                                    ; $6606: $02
    jp nz, Jump_000_040f                          ; $6607: $c2 $0f $04

    ld a, $10                                     ; $660a: $3e $10
    ld [$46c4], sp                                ; $660c: $08 $c4 $46
    nop                                           ; $660f: $00
    ret nc                                        ; $6610: $d0

    ld a, [hl]                                    ; $6611: $7e
    ld a, [hl-]                                   ; $6612: $3a
    add b                                         ; $6613: $80
    add [hl]                                      ; $6614: $86
    add b                                         ; $6615: $80

jr_0cf_6616:
    ld a, [bc]                                    ; $6616: $0a
    ld [de], a                                    ; $6617: $12
    nop                                           ; $6618: $00
    ld [de], a                                    ; $6619: $12
    ld a, [hl+]                                   ; $661a: $2a
    nop                                           ; $661b: $00

jr_0cf_661c:
    cp $fe                                        ; $661c: $fe $fe
    nop                                           ; $661e: $00
    nop                                           ; $661f: $00
    ld bc, $00ec                                  ; $6620: $01 $ec $00
    ld a, [bc]                                    ; $6623: $0a
    add b                                         ; $6624: $80
    rst $38                                       ; $6625: $ff
    cp a                                          ; $6626: $bf
    ret nz                                        ; $6627: $c0

    ld [bc], a                                    ; $6628: $02
    jr z, jr_0cf_66aa                             ; $6629: $28 $7f

    ld [bc], a                                    ; $662b: $02
    nop                                           ; $662c: $00
    rst $38                                       ; $662d: $ff
    nop                                           ; $662e: $00
    nop                                           ; $662f: $00
    ld hl, sp-$05                                 ; $6630: $f8 $fb
    di                                            ; $6632: $f3
    rlca                                          ; $6633: $07
    ld [c], a                                     ; $6634: $e2
    rrca                                          ; $6635: $0f
    rra                                           ; $6636: $1f
    nop                                           ; $6637: $00
    add $00                                       ; $6638: $c6 $00
    ret nz                                        ; $663a: $c0

    sub d                                         ; $663b: $92
    adc h                                         ; $663c: $8c
    ld b, c                                       ; $663d: $41
    jr nc, @+$01                                  ; $663e: $30 $ff

    nop                                           ; $6640: $00
    nop                                           ; $6641: $00
    rra                                           ; $6642: $1f
    rst $18                                       ; $6643: $df
    rst $08                                       ; $6644: $cf
    ldh [rTAC], a                                 ; $6645: $e0 $07
    jr nz, jr_0cf_6680                            ; $6647: $20 $37

    nop                                           ; $6649: $00
    rlca                                          ; $664a: $07
    inc bc                                        ; $664b: $03
    db $e3                                        ; $664c: $e3
    push bc                                       ; $664d: $c5
    ret c                                         ; $664e: $d8

    jr c, jr_0cf_6657                             ; $664f: $38 $06

    nop                                           ; $6651: $00
    db $10                                        ; $6652: $10
    cp $fc                                        ; $6653: $fe $fc
    ld [bc], a                                    ; $6655: $02
    ld [bc], a                                    ; $6656: $02

jr_0cf_6657:
    jr nz, @+$54                                  ; $6657: $20 $52

    db $fc                                        ; $6659: $fc
    ld l, $fc                                     ; $665a: $2e $fc
    nop                                           ; $665c: $00
    cp $fe                                        ; $665d: $fe $fe
    ret nz                                        ; $665f: $c0

    db $fc                                        ; $6660: $fc
    pop bc                                        ; $6661: $c1
    ld hl, sp-$3d                                 ; $6662: $f8 $c3
    ld hl, sp+$00                                 ; $6664: $f8 $00
    jp nz, $c436                                  ; $6666: $c2 $36 $c4

    inc [hl]                                      ; $6669: $34
    call nz, Call_000_37c1                        ; $666a: $c4 $c1 $37
    pop bc                                        ; $666d: $c1
    nop                                           ; $666e: $00
    dec [hl]                                      ; $666f: $35
    ld [hl], d                                    ; $6670: $72
    or b                                          ; $6671: $b0
    adc e                                         ; $6672: $8b
    dec b                                         ; $6673: $05
    push de                                       ; $6674: $d5
    sla e                                         ; $6675: $cb $23
    nop                                           ; $6677: $00
    ld de, $1431                                  ; $6678: $11 $31 $14
    pop bc                                        ; $667b: $c1
    adc [hl]                                      ; $667c: $8e
    push hl                                       ; $667d: $e5
    xor h                                         ; $667e: $ac
    and e                                         ; $667f: $a3

jr_0cf_6680:
    nop                                           ; $6680: $00
    ld c, d                                       ; $6681: $4a
    ld e, $11                                     ; $6682: $1e $11
    rst $20                                       ; $6684: $e7
    ldh [rLCDC], a                                ; $6685: $e0 $40
    cp e                                          ; $6687: $bb
    ret c                                         ; $6688: $d8

    nop                                           ; $6689: $00
    dec [hl]                                      ; $668a: $35
    ret nc                                        ; $668b: $d0

    and h                                         ; $668c: $a4
    add $80                                       ; $668d: $c6 $80
    ret z                                         ; $668f: $c8

    ld a, [hl+]                                   ; $6690: $2a
    ret z                                         ; $6691: $c8

    nop                                           ; $6692: $00
    add hl, de                                    ; $6693: $19
    ld a, [hl]                                    ; $6694: $7e
    ld [bc], a                                    ; $6695: $02
    ld a, $82                                     ; $6696: $3e $82
    sbc [hl]                                      ; $6698: $9e
    ret nz                                        ; $6699: $c0

    adc $00                                       ; $669a: $ce $00
    ldh [$0e], a                                  ; $669c: $e0 $0e
    ld [c], a                                     ; $669e: $e2
    ld b, $32                                     ; $669f: $06 $32
    or [hl]                                       ; $66a1: $b6
    ld b, d                                       ; $66a2: $42
    ld d, $00                                     ; $66a3: $16 $00
    jp nz, $c175                                  ; $66a5: $c2 $75 $c1

    ld [hl], l                                    ; $66a8: $75
    pop bc                                        ; $66a9: $c1

jr_0cf_66aa:
    ld [hl], $c4                                  ; $66aa: $36 $c4
    ld [hl], $00                                  ; $66ac: $36 $00
    call nz, $fa3b                                ; $66ae: $c4 $3b $fa
    dec sp                                        ; $66b1: $3b
    ld a, [$c07d]                                 ; $66b2: $fa $7d $c0
    ld a, h                                       ; $66b5: $7c
    nop                                           ; $66b6: $00
    ret nz                                        ; $66b7: $c0

    pop bc                                        ; $66b8: $c1
    and c                                         ; $66b9: $a1
    inc c                                         ; $66ba: $0c
    ldh [$98], a                                  ; $66bb: $e0 $98
    add c                                         ; $66bd: $81
    inc h                                         ; $66be: $24
    nop                                           ; $66bf: $00
    inc bc                                        ; $66c0: $03
    ld [bc], a                                    ; $66c1: $02
    sub c                                         ; $66c2: $91
    ld h, e                                       ; $66c3: $63
    db $e4                                        ; $66c4: $e4
    inc bc                                        ; $66c5: $03
    ld b, l                                       ; $66c6: $45
    ld bc, $2a00                                  ; $66c7: $01 $00 $2a
    rlca                                          ; $66ca: $07
    pop bc                                        ; $66cb: $c1
    ld a, d                                       ; $66cc: $7a
    ld a, b                                       ; $66cd: $78
    ld h, l                                       ; $66ce: $65
    pop hl                                        ; $66cf: $e1
    inc d                                         ; $66d0: $14
    nop                                           ; $66d1: $00
    ldh [rNR41], a                                ; $66d2: $e0 $20
    pop bc                                        ; $66d4: $c1
    ld [hl+], a                                   ; $66d5: $22
    rst $00                                       ; $66d6: $c7
    ld [c], a                                     ; $66d7: $e2
    pop hl                                        ; $66d8: $e1
    ldh [rP1], a                                  ; $66d9: $e0 $00
    db $ec                                        ; $66db: $ec
    ld d, $c2                                     ; $66dc: $16 $c2
    ld d, $42                                     ; $66de: $16 $42
    ld [de], a                                    ; $66e0: $12
    sub h                                         ; $66e1: $94
    ld [de], a                                    ; $66e2: $12
    nop                                           ; $66e3: $00
    inc [hl]                                      ; $66e4: $34
    db $ec                                        ; $66e5: $ec
    jp nz, $c2ec                                  ; $66e6: $c2 $ec $c2

    ld e, h                                       ; $66e9: $5c
    ld e, $dc                                     ; $66ea: $1e $dc
    jr nz, jr_0cf_670c                            ; $66ec: $20 $1e

    ld a, [hl]                                    ; $66ee: $7e
    or [hl]                                       ; $66ef: $b6
    nop                                           ; $66f0: $00
    ld a, [hl]                                    ; $66f1: $7e
    ret nz                                        ; $66f2: $c0

    ld [hl], c                                    ; $66f3: $71
    ret nz                                        ; $66f4: $c0

    dec l                                         ; $66f5: $2d
    nop                                           ; $66f6: $00
    ret nz                                        ; $66f7: $c0

    inc e                                         ; $66f8: $1c
    call nz, $7f80                                ; $66f9: $c4 $80 $7f
    rst $38                                       ; $66fc: $ff
    nop                                           ; $66fd: $00
    ld a, [bc]                                    ; $66fe: $0a
    nop                                           ; $66ff: $00
    inc bc                                        ; $6700: $03
    inc c                                         ; $6701: $0c
    ld b, c                                       ; $6702: $41
    push bc                                       ; $6703: $c5
    inc c                                         ; $6704: $0c
    push bc                                       ; $6705: $c5
    ld c, $c4                                     ; $6706: $0e $c4
    nop                                           ; $6708: $00
    inc c                                         ; $6709: $0c
    rst $20                                       ; $670a: $e7
    rrca                                          ; $670b: $0f

jr_0cf_670c:
    rst $38                                       ; $670c: $ff
    nop                                           ; $670d: $00
    nop                                           ; $670e: $00
    nop                                           ; $670f: $00
    call nz, Call_000_2700                        ; $6710: $c4 $00 $27
    jp c, Jump_000_301b                           ; $6713: $da $1b $30

    sbc h                                         ; $6716: $9c
    ld l, b                                       ; $6717: $68
    inc c                                         ; $6718: $0c
    db $e4                                        ; $6719: $e4
    db $10                                        ; $671a: $10
    pop hl                                        ; $671b: $e1
    db $e4                                        ; $671c: $e4
    jp hl                                         ; $671d: $e9


    db $10                                        ; $671e: $10
    ld [$82bc], sp                                ; $671f: $08 $bc $82
    ld a, h                                       ; $6722: $7c
    ld [bc], a                                    ; $6723: $02
    nop                                           ; $6724: $00
    db $fd                                        ; $6725: $fd
    inc bc                                        ; $6726: $03
    ld a, l                                       ; $6727: $7d
    inc bc                                        ; $6728: $03
    cp h                                          ; $6729: $bc
    add d                                         ; $672a: $82
    call c, $00c2                                 ; $672b: $dc $c2 $00
    nop                                           ; $672e: $00
    cp $fe                                        ; $672f: $fe $fe
    nop                                           ; $6731: $00
    nop                                           ; $6732: $00
    ld bc, $00f7                                  ; $6733: $01 $f7 $00
    nop                                           ; $6736: $00
    rst $38                                       ; $6737: $ff
    ld a, a                                       ; $6738: $7f
    ret nz                                        ; $6739: $c0

    ld a, [hl]                                    ; $673a: $7e
    inc a                                         ; $673b: $3c
    db $fc                                        ; $673c: $fc
    dec a                                         ; $673d: $3d
    db $fc                                        ; $673e: $fc
    nop                                           ; $673f: $00
    ldh a, [$31]                                  ; $6740: $f0 $31
    add sp, $2b                                   ; $6742: $e8 $2b
    dec bc                                        ; $6744: $0b
    jp nz, $c00f                                  ; $6745: $c2 $0f $c0

    nop                                           ; $6748: $00
    rst $38                                       ; $6749: $ff
    nop                                           ; $674a: $00
    ld e, h                                       ; $674b: $5c
    call c, $fc40                                 ; $674c: $dc $40 $fc
    dec d                                         ; $674f: $15
    ld l, c                                       ; $6750: $69
    nop                                           ; $6751: $00
    ldh [rSCX], a                                 ; $6752: $e0 $43
    ret nz                                        ; $6754: $c0

    adc a                                         ; $6755: $8f
    ccf                                           ; $6756: $3f
    and b                                         ; $6757: $a0
    ld a, a                                       ; $6758: $7f
    ld b, b                                       ; $6759: $40
    nop                                           ; $675a: $00
    rst $38                                       ; $675b: $ff
    nop                                           ; $675c: $00
    nop                                           ; $675d: $00
    nop                                           ; $675e: $00
    rlca                                          ; $675f: $07
    nop                                           ; $6760: $00
    nop                                           ; $6761: $00
    ld hl, sp+$00                                 ; $6762: $f8 $00
    ld hl, sp+$0e                                 ; $6764: $f8 $0e
    cp $02                                        ; $6766: $fe $02
    cp $00                                        ; $6768: $fe $00
    db $fc                                        ; $676a: $fc
    nop                                           ; $676b: $00
    nop                                           ; $676c: $00
    rst $38                                       ; $676d: $ff
    ld bc, $7d03                                  ; $676e: $01 $03 $7d
    sbc h                                         ; $6771: $9c
    ld e, $e0                                     ; $6772: $1e $e0
    ld [hl+], a                                   ; $6774: $22
    nop                                           ; $6775: $00
    sub [hl]                                      ; $6776: $96
    db $f4                                        ; $6777: $f4
    ld e, $fc                                     ; $6778: $1e $fc
    ld h, d                                       ; $677a: $62
    db $ec                                        ; $677b: $ec
    ld a, [hl-]                                   ; $677c: $3a
    inc a                                         ; $677d: $3c
    nop                                           ; $677e: $00
    push af                                       ; $677f: $f5
    scf                                           ; $6780: $37
    ld hl, sp+$3b                                 ; $6781: $f8 $3b
    rlca                                          ; $6783: $07
    pop bc                                        ; $6784: $c1
    ld c, $c2                                     ; $6785: $0e $c2
    nop                                           ; $6787: $00
    push bc                                       ; $6788: $c5
    dec e                                         ; $6789: $1d
    ret nz                                        ; $678a: $c0

    add hl, bc                                    ; $678b: $09
    ldh [rLCDC], a                                ; $678c: $e0 $40
    ret nz                                        ; $678e: $c0

    ld e, h                                       ; $678f: $5c
    nop                                           ; $6790: $00
    ccf                                           ; $6791: $3f
    ld b, b                                       ; $6792: $40
    ccf                                           ; $6793: $3f
    nop                                           ; $6794: $00
    ccf                                           ; $6795: $3f
    and c                                         ; $6796: $a1
    sbc h                                         ; $6797: $9c
    ld b, h                                       ; $6798: $44
    nop                                           ; $6799: $00
    jr c, jr_0cf_67c7                             ; $679a: $38 $2b

    add hl, sp                                    ; $679c: $39
    adc b                                         ; $679d: $88
    add d                                         ; $679e: $82
    inc [hl]                                      ; $679f: $34
    ld c, c                                       ; $67a0: $49
    ld a, b                                       ; $67a1: $78
    nop                                           ; $67a2: $00
    db $e4                                        ; $67a3: $e4
    or $81                                        ; $67a4: $f6 $81
    call z, Call_000_1350                         ; $67a6: $cc $50 $13
    ld a, [bc]                                    ; $67a9: $0a
    add h                                         ; $67aa: $84
    nop                                           ; $67ab: $00
    ld hl, sp-$07                                 ; $67ac: $f8 $f9
    pop bc                                        ; $67ae: $c1
    ld b, $17                                     ; $67af: $06 $17
    dec h                                         ; $67b1: $25
    inc c                                         ; $67b2: $0c
    ldh [rP1], a                                  ; $67b3: $e0 $00
    call c, $b81a                                 ; $67b5: $dc $1a $b8
    sub d                                         ; $67b8: $92
    ld a, [bc]                                    ; $67b9: $0a
    ld a, b                                       ; $67ba: $78
    ld d, $f4                                     ; $67bb: $16 $f4
    nop                                           ; $67bd: $00
    db $f4                                        ; $67be: $f4
    add [hl]                                      ; $67bf: $86
    add h                                         ; $67c0: $84
    ld b, $52                                     ; $67c1: $06 $52
    ld e, b                                       ; $67c3: $58
    add d                                         ; $67c4: $82
    ret nc                                        ; $67c5: $d0

    nop                                           ; $67c6: $00

jr_0cf_67c7:
    ld a, l                                       ; $67c7: $7d
    pop bc                                        ; $67c8: $c1
    ld a, l                                       ; $67c9: $7d
    pop bc                                        ; $67ca: $c1
    cp b                                          ; $67cb: $b8
    ld b, b                                       ; $67cc: $40
    or a                                          ; $67cd: $b7
    ld b, l                                       ; $67ce: $45
    nop                                           ; $67cf: $00
    pop af                                        ; $67d0: $f1
    ld [hl], $f4                                  ; $67d1: $36 $f4
    ld [hl-], a                                   ; $67d3: $32
    ld [c], a                                     ; $67d4: $e2
    inc l                                         ; $67d5: $2c
    ldh [$2c], a                                  ; $67d6: $e0 $2c
    nop                                           ; $67d8: $00
    ld hl, sp-$7c                                 ; $67d9: $f8 $84

jr_0cf_67db:
    db $fc                                        ; $67db: $fc
    sub e                                         ; $67dc: $93
    nop                                           ; $67dd: $00
    daa                                           ; $67de: $27
    sbc b                                         ; $67df: $98
    adc e                                         ; $67e0: $8b
    nop                                           ; $67e1: $00
    ld de, $680c                                  ; $67e2: $11 $0c $68
    ld h, $90                                     ; $67e5: $26 $90
    rla                                           ; $67e7: $17
    ldh a, [$83]                                  ; $67e8: $f0 $83
    ld [$5d81], sp                                ; $67ea: $08 $81 $5d
    ld b, b                                       ; $67ed: $40
    ld a, h                                       ; $67ee: $7c
    ld a, b                                       ; $67ef: $78
    ld [$04f8], sp                                ; $67f0: $08 $f8 $04
    pop af                                        ; $67f3: $f1
    nop                                           ; $67f4: $00
    add hl, bc                                    ; $67f5: $09
    ld bc, $0370                                  ; $67f6: $01 $70 $03
    ld a, [bc]                                    ; $67f9: $0a
    inc d                                         ; $67fa: $14
    add $14                                       ; $67fb: $c6 $14
    nop                                           ; $67fd: $00
    add $ca                                       ; $67fe: $c6 $ca
    sub d                                         ; $6800: $92
    xor d                                         ; $6801: $aa
    ld [de], a                                    ; $6802: $12
    jr jr_0cf_680f                                ; $6803: $18 $0a

    ret c                                         ; $6805: $d8

    nop                                           ; $6806: $00
    ld b, d                                       ; $6807: $42

Jump_0cf_6808:
    db $e4                                        ; $6808: $e4
    ld h, $ec                                     ; $6809: $26 $ec
    ld c, $84                                     ; $680b: $0e $84
    ret nz                                        ; $680d: $c0

    add b                                         ; $680e: $80

jr_0cf_680f:
    nop                                           ; $680f: $00
    ret nz                                        ; $6810: $c0

    jr z, jr_0cf_67db                             ; $6811: $28 $c8

    dec c                                         ; $6813: $0d
    ret z                                         ; $6814: $c8

    rrca                                          ; $6815: $0f
    call nz, Call_000_000f                        ; $6816: $c4 $0f $00
    jp nz, $7f80                                  ; $6819: $c2 $80 $7f

    rst $38                                       ; $681c: $ff
    nop                                           ; $681d: $00
    ld c, c                                       ; $681e: $49
    inc sp                                        ; $681f: $33
    inc bc                                        ; $6820: $03
    nop                                           ; $6821: $00
    add e                                         ; $6822: $83
    or d                                          ; $6823: $b2
    ld hl, sp+$04                                 ; $6824: $f8 $04
    ld a, h                                       ; $6826: $7c
    ld [hl], c                                    ; $6827: $71
    ld bc, $40a0                                  ; $6828: $01 $a0 $40
    adc a                                         ; $682b: $8f
    cp h                                          ; $682c: $bc
    ld [$126b], sp                                ; $682d: $08 $6b $12
    ld d, $65                                     ; $6830: $16 $65
    db $e3                                        ; $6832: $e3
    db $ec                                        ; $6833: $ec
    ld [bc], a                                    ; $6834: $02
    rrca                                          ; $6835: $0f
    db $10                                        ; $6836: $10
    ld b, $3b                                     ; $6837: $06 $3b
    inc a                                         ; $6839: $3c
    rst $08                                       ; $683a: $cf
    call z, $e408                                 ; $683b: $cc $08 $e4
    nop                                           ; $683e: $00
    ld b, $e0                                     ; $683f: $06 $e0
    ld [bc], a                                    ; $6841: $02
    db $ec                                        ; $6842: $ec
    ld c, $ec                                     ; $6843: $0e $ec
    ld a, [hl+]                                   ; $6845: $2a
    add d                                         ; $6846: $82
    nop                                           ; $6847: $00
    db $ec                                        ; $6848: $ec
    add d                                         ; $6849: $82
    call z, $fe00                                 ; $684a: $cc $00 $fe
    cp $00                                        ; $684d: $fe $00

    db $00, $01, $e5, $00, $00, $80, $ff, $be, $c0, $bc, $fc, $b9, $f8, $08, $b9, $f8
    db $b1, $f0, $02, $08, $ff, $00, $00, $00, $0f, $e1, $01, $62, $9c, $fc, $03, $f1
    db $04, $01, $ca, $87, $b0, $1f, $10, $00, $00, $ff, $00, $00, $7f, $00, $3f, $00
    db $8f, $c0, $f0, $01, $f7, $f8, $7b, $fe, $00, $02, $fc, $02, $28, $40, $fe, $0a
    db $00, $40, $f0, $41, $e0, $e0, $43, $20, $e0, $47, $02, $00, $43, $ad, $4a, $aa
    db $4d, $00, $f1, $70, $e2, $ec, $1c, $d0, $31, $a0, $00, $94, $33, $6f, $27, $5f
    db $58, $3c, $33, $00, $c1, $05, $0a, $30, $b8, $b4, $ce, $0a, $00, $f0, $02, $e0
    db $bc, $5c, $bf, $52, $b3, $c0, $34, $08, $41, $00, $82, $82, $3e, $82, $3e, $7c
    db $00, $c2, $fc, $e2, $a2, $c6, $a2, $c6, $82, $00, $47, $b5, $72, $eb, $2d, $c2
    db $1f, $c1, $00, $3b, $c6, $36, $58, $1c, $60, $00, $40, $00, $7f, $7f, $40, $dd
    db $3e, $1c, $9c, $9f, $00, $7f, $00, $00, $e1, $b3, $ff, $1e, $da, $00, $ac, $cd
    db $fd, $a0, $36, $00, $f4, $07, $00, $75, $fa, $f3, $ec, $e2, $04, $02, $22, $00
    db $34, $26, $3c, $6c, $6a, $fc, $fe, $60, $00, $62, $38, $0a, $2c, $cc, $29, $c8
    db $f6, $00, $37, $f8, $3b, $fc, $3f, $f1, $37, $80, $00, $7f, $ff, $00, $a1, $40
    db $5c, $dd, $81, $01, $3b, $01, $bb, $03, $7a, $01, $78, $bc, $08, $00, $98, $c9
    db $8c, $d8, $8c, $cc, $8e, $c4, $08, $48, $86, $48, $8e, $cc, $08, $bc, $26, $dc
    db $00, $52, $cc, $0a, $d4, $96, $68, $2a, $68, $00, $0a, $00, $fe, $fe, $00

    nop                                           ; $695e: $00
    ld bc, $00f5                                  ; $695f: $01 $f5 $00
    nop                                           ; $6962: $00
    add b                                         ; $6963: $80
    rst $38                                       ; $6964: $ff
    cp a                                          ; $6965: $bf
    ret nz                                        ; $6966: $c0

    cp [hl]                                       ; $6967: $be
    ret nz                                        ; $6968: $c0

    cp h                                          ; $6969: $bc
    ret nz                                        ; $696a: $c0

    nop                                           ; $696b: $00
    ld hl, sp+$42                                 ; $696c: $f8 $42
    ld hl, sp+$43                                 ; $696e: $f8 $43
    cp h                                          ; $6970: $bc
    ld b, b                                       ; $6971: $40
    cp l                                          ; $6972: $bd
    ld b, c                                       ; $6973: $41
    nop                                           ; $6974: $00
    rst $38                                       ; $6975: $ff
    nop                                           ; $6976: $00
    ld b, b                                       ; $6977: $40
    ld l, a                                       ; $6978: $6f
    ld d, e                                       ; $6979: $53
    inc bc                                        ; $697a: $03
    ld c, c                                       ; $697b: $49
    dec b                                         ; $697c: $05
    nop                                           ; $697d: $00
    add hl, bc                                    ; $697e: $09
    ld b, l                                       ; $697f: $45
    db $ec                                        ; $6980: $ec
    xor b                                         ; $6981: $a8
    ld h, e                                       ; $6982: $63
    ld a, [hl+]                                   ; $6983: $2a
    inc bc                                        ; $6984: $03
    ld [bc], a                                    ; $6985: $02
    nop                                           ; $6986: $00
    rst $38                                       ; $6987: $ff
    nop                                           ; $6988: $00
    db $fc                                        ; $6989: $fc
    db $fd                                        ; $698a: $fd
    ld h, b                                       ; $698b: $60
    sbc h                                         ; $698c: $9c
    ld [de], a                                    ; $698d: $12
    sbc h                                         ; $698e: $9c
    nop                                           ; $698f: $00
    ld l, $06                                     ; $6990: $2e $06
    ld b, d                                       ; $6992: $42
    ld [hl+], a                                   ; $6993: $22
    ret nz                                        ; $6994: $c0

    ldh [$cc], a                                  ; $6995: $e0 $cc
    jp nz, $fe00                                  ; $6997: $c2 $00 $fe

    nop                                           ; $699a: $00
    ld e, $dc                                     ; $699b: $1e $dc
    ld l, h                                       ; $699d: $6c
    adc [hl]                                      ; $699e: $8e
    adc h                                         ; $699f: $8c
    ld c, [hl]                                    ; $69a0: $4e
    nop                                           ; $69a1: $00
    ld c, $e2                                     ; $69a2: $0e $e2
    ld b, $d2                                     ; $69a4: $06 $d2
    inc [hl]                                      ; $69a6: $34
    ld b, $6c                                     ; $69a7: $06 $6c
    ld c, $11                                     ; $69a9: $0e $11
    cp d                                          ; $69ab: $ba
    ld b, e                                       ; $69ac: $43
    cp e                                          ; $69ad: $bb
    ld [bc], a                                    ; $69ae: $02
    nop                                           ; $69af: $00
    cp l                                          ; $69b0: $bd
    ld b, c                                       ; $69b1: $41
    cp [hl]                                       ; $69b2: $be
    ld b, [hl]                                    ; $69b3: $46
    nop                                           ; $69b4: $00
    ld b, b                                       ; $69b5: $40
    cp a                                          ; $69b6: $bf
    ld [bc], a                                    ; $69b7: $02
    nop                                           ; $69b8: $00
    inc a                                         ; $69b9: $3c
    add b                                         ; $69ba: $80
    ld a, [hl]                                    ; $69bb: $7e
    pop af                                        ; $69bc: $f1
    ld a, a                                       ; $69bd: $7f
    rst $38                                       ; $69be: $ff
    nop                                           ; $69bf: $00
    ld c, $0c                                     ; $69c0: $0e $0c
    sbc h                                         ; $69c2: $9c
    jp hl                                         ; $69c3: $e9


    sbc h                                         ; $69c4: $9c
    xor b                                         ; $69c5: $a8
    add [hl]                                      ; $69c6: $86
    add b                                         ; $69c7: $80
    nop                                           ; $69c8: $00
    ld [hl], a                                    ; $69c9: $77
    jr @+$06                                      ; $69ca: $18 $04

    ld b, $f6                                     ; $69cc: $06 $f6
    inc b                                         ; $69ce: $04
    ld hl, sp-$0e                                 ; $69cf: $f8 $f2
    nop                                           ; $69d1: $00
    jr jr_0cf_69ee                                ; $69d2: $18 $1a

    ret z                                         ; $69d4: $c8

    ld c, b                                       ; $69d5: $48
    ld h, b                                       ; $69d6: $60
    ldh [rIE], a                                  ; $69d7: $e0 $ff
    pop hl                                        ; $69d9: $e1
    nop                                           ; $69da: $00
    ld hl, sp+$05                                 ; $69db: $f8 $05
    ld e, $c2                                     ; $69dd: $1e $c2
    ld a, $02                                     ; $69df: $3e $02
    ld b, d                                       ; $69e1: $42
    ld a, h                                       ; $69e2: $7c
    nop                                           ; $69e3: $00
    ld [c], a                                     ; $69e4: $e2
    inc a                                         ; $69e5: $3c
    ld b, d                                       ; $69e6: $42
    ld a, h                                       ; $69e7: $7c
    add d                                         ; $69e8: $82
    db $fc                                        ; $69e9: $fc
    add d                                         ; $69ea: $82
    ld a, d                                       ; $69eb: $7a
    nop                                           ; $69ec: $00
    add d                                         ; $69ed: $82

jr_0cf_69ee:
    ld a, [hl-]                                   ; $69ee: $3a
    cp h                                          ; $69ef: $bc
    ld b, b                                       ; $69f0: $40
    cp e                                          ; $69f1: $bb
    ld b, e                                       ; $69f2: $43
    or a                                          ; $69f3: $b7
    ldh a, [rP1]                                  ; $69f4: $f0 $00
    xor a                                         ; $69f6: $af
    ldh [$9f], a                                  ; $69f7: $e0 $9f
    ret nz                                        ; $69f9: $c0

    or c                                          ; $69fa: $b1
    ret nz                                        ; $69fb: $c0

    ld h, c                                       ; $69fc: $61
    ret nz                                        ; $69fd: $c0

    nop                                           ; $69fe: $00
    ld b, c                                       ; $69ff: $41
    call c, $6f00                                 ; $6a00: $dc $00 $6f
    ld e, b                                       ; $6a03: $58
    ccf                                           ; $6a04: $3f
    ccf                                           ; $6a05: $3f
    add b                                         ; $6a06: $80
    nop                                           ; $6a07: $00
    ld hl, $013e                                  ; $6a08: $21 $3e $01
    rra                                           ; $6a0b: $1f
    rla                                           ; $6a0c: $17
    dec bc                                        ; $6a0d: $0b
    rra                                           ; $6a0e: $1f
    sub b                                         ; $6a0f: $90
    nop                                           ; $6a10: $00
    nop                                           ; $6a11: $00
    and b                                         ; $6a12: $a0
    ld sp, hl                                     ; $6a13: $f9
    dec b                                         ; $6a14: $05
    db $f4                                        ; $6a15: $f4
    ld [$01f9], sp                                ; $6a16: $08 $f9 $01
    nop                                           ; $6a19: $00
    ld hl, sp+$02                                 ; $6a1a: $f8 $02
    db $f4                                        ; $6a1c: $f4
    rlca                                          ; $6a1d: $07
    db $ec                                        ; $6a1e: $ec
    dec c                                         ; $6a1f: $0d
    ret c                                         ; $6a20: $d8

    ld de, $7000                                  ; $6a21: $11 $00 $70
    ld b, e                                       ; $6a24: $43
    inc [hl]                                      ; $6a25: $34
    ld [hl-], a                                   ; $6a26: $32
    ld l, h                                       ; $6a27: $6c
    ld h, d                                       ; $6a28: $62
    call c, $00c2                                 ; $6a29: $dc $c2 $00
    jr c, jr_0cf_6a30                             ; $6a2c: $38 $02

    ld hl, sp+$12                                 ; $6a2e: $f8 $12

jr_0cf_6a30:
    ldh a, [$32]                                  ; $6a30: $f0 $32
    ld l, h                                       ; $6a32: $6c
    ld c, $00                                     ; $6a33: $0e $00
    call c, Call_000_031e                         ; $6a35: $dc $1e $03
    ld sp, hl                                     ; $6a38: $f9
    rlca                                          ; $6a39: $07
    pop af                                        ; $6a3a: $f1
    and e                                         ; $6a3b: $a3
    ldh [rNR10], a                                ; $6a3c: $e0 $10
    add a                                         ; $6a3e: $87
    ret nz                                        ; $6a3f: $c0

    adc a                                         ; $6a40: $8f
    ld a, [hl]                                    ; $6a41: $7e
    nop                                           ; $6a42: $00
    add b                                         ; $6a43: $80
    ld a, a                                       ; $6a44: $7f
    rst $38                                       ; $6a45: $ff
    nop                                           ; $6a46: $00
    nop                                           ; $6a47: $00
    adc a                                         ; $6a48: $8f
    add b                                         ; $6a49: $80
    rst $08                                       ; $6a4a: $cf
    ret nc                                        ; $6a4b: $d0

    add b                                         ; $6a4c: $80
    ld h, c                                       ; $6a4d: $61
    ldh [$3e], a                                  ; $6a4e: $e0 $3e
    nop                                           ; $6a50: $00
    ret nz                                        ; $6a51: $c0

    ld sp, hl                                     ; $6a52: $f9
    add e                                         ; $6a53: $83
    call nz, Call_000_00ff                        ; $6a54: $c4 $ff $00
    nop                                           ; $6a57: $00
    nop                                           ; $6a58: $00
    nop                                           ; $6a59: $00
    ld [c], a                                     ; $6a5a: $e2
    rlca                                          ; $6a5b: $07
    call nc, $391f                                ; $6a5c: $d4 $1f $39
    ld d, $70                                     ; $6a5f: $16 $70
    ld a, h                                       ; $6a61: $7c
    ld [$59b8], sp                                ; $6a62: $08 $b8 $59
    ld h, b                                       ; $6a65: $60
    rst $30                                       ; $6a66: $f7
    db $10                                        ; $6a67: $10
    ld [$0ecc], sp                                ; $6a68: $08 $cc $0e
    add b                                         ; $6a6b: $80
    nop                                           ; $6a6c: $00
    ld [bc], a                                    ; $6a6d: $02
    ld l, d                                       ; $6a6e: $6a
    ld a, h                                       ; $6a6f: $7c
    or d                                          ; $6a70: $b2
    db $fc                                        ; $6a71: $fc
    ld a, c                                       ; $6a72: $79
    inc bc                                        ; $6a73: $03
    db $fd                                        ; $6a74: $fd
    nop                                           ; $6a75: $00
    inc bc                                        ; $6a76: $03
    nop                                           ; $6a77: $00
    cp $fe                                        ; $6a78: $fe $fe
    nop                                           ; $6a7a: $00
    nop                                           ; $6a7b: $00
    ld bc, $00fa                                  ; $6a7c: $01 $fa $00
    nop                                           ; $6a7f: $00
    rst $38                                       ; $6a80: $ff
    ld a, a                                       ; $6a81: $7f

jr_0cf_6a82:
    ret nz                                        ; $6a82: $c0

    ld a, [hl]                                    ; $6a83: $7e
    db $fc                                        ; $6a84: $fc
    ld a, l                                       ; $6a85: $7d
    ret z                                         ; $6a86: $c8

    ld c, e                                       ; $6a87: $4b
    nop                                           ; $6a88: $00
    and c                                         ; $6a89: $a1
    ld e, c                                       ; $6a8a: $59
    xor d                                         ; $6a8b: $aa
    ld e, e                                       ; $6a8c: $5b
    cp l                                          ; $6a8d: $bd
    ld d, [hl]                                    ; $6a8e: $56
    cp c                                          ; $6a8f: $b9
    ld b, e                                       ; $6a90: $43
    nop                                           ; $6a91: $00
    nop                                           ; $6a92: $00
    rst $38                                       ; $6a93: $ff
    ldh [rNR41], a                                ; $6a94: $e0 $20
    ldh a, [$ec]                                  ; $6a96: $f0 $ec
    ld e, $ef                                     ; $6a98: $1e $ef
    nop                                           ; $6a9a: $00
    inc bc                                        ; $6a9b: $03
    add c                                         ; $6a9c: $81
    nop                                           ; $6a9d: $00
    adc b                                         ; $6a9e: $88
    ld h, e                                       ; $6a9f: $63
    jr z, jr_0cf_6a82                             ; $6aa0: $28 $e0

    jr z, jr_0cf_6aa4                             ; $6aa2: $28 $00

jr_0cf_6aa4:
    nop                                           ; $6aa4: $00
    rst $38                                       ; $6aa5: $ff
    ld a, a                                       ; $6aa6: $7f
    ld [hl], b                                    ; $6aa7: $70
    rra                                           ; $6aa8: $1f
    db $10                                        ; $6aa9: $10
    rlca                                          ; $6aaa: $07
    ld [$4000], sp                                ; $6aab: $08 $00 $40
    add e                                         ; $6aae: $83
    add c                                         ; $6aaf: $81
    ld h, c                                       ; $6ab0: $61
    inc a                                         ; $6ab1: $3c
    inc c                                         ; $6ab2: $0c
    ld e, $d6                                     ; $6ab3: $1e $d6
    nop                                           ; $6ab5: $00
    nop                                           ; $6ab6: $00
    cp $fc                                        ; $6ab7: $fe $fc
    ld e, $3a                                     ; $6ab9: $1e $3a
    jp nz, $827a                                  ; $6abb: $c2 $7a $82

    nop                                           ; $6abe: $00
    db $fc                                        ; $6abf: $fc
    ld b, $fc                                     ; $6ac0: $06 $fc
    add $bc                                       ; $6ac2: $c6 $bc
    ld c, $fc                                     ; $6ac4: $0e $fc
    sbc [hl]                                      ; $6ac6: $9e
    nop                                           ; $6ac7: $00
    sub a                                         ; $6ac8: $97
    ld b, h                                       ; $6ac9: $44
    add l                                         ; $6aca: $85
    ld d, h                                       ; $6acb: $54
    add sp, $6b                                   ; $6acc: $e8 $6b
    ei                                            ; $6ace: $fb
    ld a, h                                       ; $6acf: $7c
    nop                                           ; $6ad0: $00
    add e                                         ; $6ad1: $83
    ei                                            ; $6ad2: $fb
    add h                                         ; $6ad3: $84
    ldh a, [$e8]                                  ; $6ad4: $f0 $e8
    ld l, c                                       ; $6ad6: $69
    ret nz                                        ; $6ad7: $c0

    ld b, b                                       ; $6ad8: $40
    nop                                           ; $6ad9: $00
    sbc e                                         ; $6ada: $9b
    ret nz                                        ; $6adb: $c0

    ld b, d                                       ; $6adc: $42
    ld [hl], $13                                  ; $6add: $36 $13
    jp hl                                         ; $6adf: $e9


    push de                                       ; $6ae0: $d5
    add hl, hl                                    ; $6ae1: $29
    nop                                           ; $6ae2: $00
    ld h, h                                       ; $6ae3: $64
    ld e, a                                       ; $6ae4: $5f
    db $db                                        ; $6ae5: $db
    ld [$cb3c], sp                                ; $6ae6: $08 $3c $cb
    jr nz, @+$22                                  ; $6ae9: $20 $20

    nop                                           ; $6aeb: $00
    jp nz, $d846                                  ; $6aec: $c2 $46 $d8

    or c                                          ; $6aef: $b1
    ld h, d                                       ; $6af0: $62
    inc l                                         ; $6af1: $2c
    ld [hl], b                                    ; $6af2: $70
    db $e4                                        ; $6af3: $e4
    nop                                           ; $6af4: $00
    pop hl                                        ; $6af5: $e1
    inc e                                         ; $6af6: $1c
    ldh [$d9], a                                  ; $6af7: $e0 $d9
    and d                                         ; $6af9: $a2
    push bc                                       ; $6afa: $c5
    ld a, [bc]                                    ; $6afb: $0a
    dec b                                         ; $6afc: $05
    nop                                           ; $6afd: $00
    ld [bc], a                                    ; $6afe: $02
    ld a, h                                       ; $6aff: $7c
    add d                                         ; $6b00: $82
    cp b                                          ; $6b01: $b8
    ld d, $d0                                     ; $6b02: $16 $d0
    ld c, $20                                     ; $6b04: $0e $20
    nop                                           ; $6b06: $00
    ld h, b                                       ; $6b07: $60
    ld c, [hl]                                    ; $6b08: $4e
    add b                                         ; $6b09: $80
    ld c, $54                                     ; $6b0a: $0e $54
    sbc $dc                                       ; $6b0c: $de $dc
    ld b, [hl]                                    ; $6b0e: $46
    nop                                           ; $6b0f: $00
    ldh a, [$73]                                  ; $6b10: $f0 $73
    ld hl, sp+$7a                                 ; $6b12: $f8 $7a
    xor h                                         ; $6b14: $ac
    ld a, b                                       ; $6b15: $78
    xor l                                         ; $6b16: $ad
    ld a, b                                       ; $6b17: $78
    nop                                           ; $6b18: $00
    cp l                                          ; $6b19: $bd
    ld d, c                                       ; $6b1a: $51
    cp b                                          ; $6b1b: $b8
    ld b, e                                       ; $6b1c: $43
    ld b, a                                       ; $6b1d: $47
    ret nc                                        ; $6b1e: $d0

    ld l, a                                       ; $6b1f: $6f
    ret nz                                        ; $6b20: $c0

    nop                                           ; $6b21: $00
    ld c, b                                       ; $6b22: $48
    ld a, [de]                                    ; $6b23: $1a
    pop bc                                        ; $6b24: $c1
    ld b, h                                       ; $6b25: $44
    jr nc, @-$6e                                  ; $6b26: $30 $90

    rst $38                                       ; $6b28: $ff
    nop                                           ; $6b29: $00
    nop                                           ; $6b2a: $00
    ld e, a                                       ; $6b2b: $5f
    or a                                          ; $6b2c: $b7
    rlca                                          ; $6b2d: $07
    rrca                                          ; $6b2e: $0f
    ld h, b                                       ; $6b2f: $60
    ld l, a                                       ; $6b30: $6f
    and b                                         ; $6b31: $a0
    ccf                                           ; $6b32: $3f
    nop                                           ; $6b33: $00
    ld a, [hl-]                                   ; $6b34: $3a
    adc b                                         ; $6b35: $88
    ld [hl], l                                    ; $6b36: $75
    ld bc, $f713                                  ; $6b37: $01 $13 $f7
    ld a, [bc]                                    ; $6b3a: $0a
    ldh a, [rP1]                                  ; $6b3b: $f0 $00
    db $fc                                        ; $6b3d: $fc
    or $f8                                        ; $6b3e: $f6 $f8
    db $f4                                        ; $6b40: $f4
    inc c                                         ; $6b41: $0c
    cp $2a                                        ; $6b42: $fe $2a
    adc $00                                       ; $6b44: $ce $00
    add sp, $62                                   ; $6b46: $e8 $62
    add b                                         ; $6b48: $80
    ld d, $1e                                     ; $6b49: $16 $1e
    ld [bc], a                                    ; $6b4b: $02
    ld c, $62                                     ; $6b4c: $0e $62
    nop                                           ; $6b4e: $00
    ld c, $e2                                     ; $6b4f: $0e $e2
    ld b, $72                                     ; $6b51: $06 $72
    ldh a, [$f6]                                  ; $6b53: $f0 $f6
    ldh a, [rPCM12]                               ; $6b55: $f0 $76
    jr nz, jr_0cf_6bd8                            ; $6b57: $20 $7f

    ret nz                                        ; $6b59: $c0

    ld [bc], a                                    ; $6b5a: $02
    ld [$c07c], sp                                ; $6b5b: $08 $7c $c0
    ld hl, sp-$3f                                 ; $6b5e: $f8 $c1
    ldh a, [rP1]                                  ; $6b60: $f0 $00
    jp $7f80                                      ; $6b62: $c3 $80 $7f


    rst $38                                       ; $6b65: $ff
    nop                                           ; $6b66: $00
    ret nz                                        ; $6b67: $c0

    ccf                                           ; $6b68: $3f
    add d                                         ; $6b69: $82
    nop                                           ; $6b6a: $00
    ld e, $23                                     ; $6b6b: $1e $23
    ld [bc], a                                    ; $6b6d: $02
    inc h                                         ; $6b6e: $24
    ld h, a                                       ; $6b6f: $67
    and e                                         ; $6b70: $a3
    pop bc                                        ; $6b71: $c1
    rrca                                          ; $6b72: $0f
    nop                                           ; $6b73: $00
    ld [hl], b                                    ; $6b74: $70
    rst $38                                       ; $6b75: $ff
    nop                                           ; $6b76: $00
    nop                                           ; $6b77: $00
    nop                                           ; $6b78: $00
    sub h                                         ; $6b79: $94
    dec c                                         ; $6b7a: $0d
    ld e, b                                       ; $6b7b: $58
    nop                                           ; $6b7c: $00
    dec hl                                        ; $6b7d: $2b
    add hl, hl                                    ; $6b7e: $29
    rst $08                                       ; $6b7f: $cf
    jp nc, Jump_0cf_4d4e                          ; $6b80: $d2 $4e $4d

    dec [hl]                                      ; $6b83: $35
    ld [hl], $40                                  ; $6b84: $36 $40
    sub $10                                       ; $6b86: $d6 $10
    ld [$32b0], sp                                ; $6b88: $08 $b0 $32
    db $e4                                        ; $6b8b: $e4
    and $48                                       ; $6b8c: $e6 $48
    ld c, d                                       ; $6b8e: $4a
    nop                                           ; $6b8f: $00
    cp h                                          ; $6b90: $bc
    and [hl]                                      ; $6b91: $a6
    inc a                                         ; $6b92: $3c
    ld [hl+], a                                   ; $6b93: $22
    ld a, b                                       ; $6b94: $78
    ld b, d                                       ; $6b95: $42
    nop                                           ; $6b96: $00
    cp $00                                        ; $6b97: $fe $00
    cp $00                                        ; $6b99: $fe $00
    nop                                           ; $6b9b: $00
    ld bc, $00ee                                  ; $6b9c: $01 $ee $00
    nop                                           ; $6b9f: $00
    rst $38                                       ; $6ba0: $ff
    ld a, a                                       ; $6ba1: $7f
    ret nz                                        ; $6ba2: $c0

    ld a, a                                       ; $6ba3: $7f
    ccf                                           ; $6ba4: $3f
    pop bc                                        ; $6ba5: $c1
    ld a, $c7                                     ; $6ba6: $3e $c7
    nop                                           ; $6ba8: $00
    rst $00                                       ; $6ba9: $c7
    ld a, h                                       ; $6baa: $7c
    rst $08                                       ; $6bab: $cf
    ld a, b                                       ; $6bac: $78
    xor c                                         ; $6bad: $a9
    halt                                          ; $6bae: $76
    cp e                                          ; $6baf: $bb
    ld h, h                                       ; $6bb0: $64
    nop                                           ; $6bb1: $00
    rst $38                                       ; $6bb2: $ff
    nop                                           ; $6bb3: $00
    nop                                           ; $6bb4: $00
    rlca                                          ; $6bb5: $07
    inc b                                         ; $6bb6: $04
    inc bc                                        ; $6bb7: $03
    ld d, a                                       ; $6bb8: $57
    sbc c                                         ; $6bb9: $99
    nop                                           ; $6bba: $00
    adc a                                         ; $6bbb: $8f
    dec de                                        ; $6bbc: $1b
    ld e, l                                       ; $6bbd: $5d
    halt                                          ; $6bbe: $76
    cp e                                          ; $6bbf: $bb
    ld h, l                                       ; $6bc0: $65
    ld d, a                                       ; $6bc1: $57
    sbc e                                         ; $6bc2: $9b
    add b                                         ; $6bc3: $80
    stop                                          ; $6bc4: $10 $00
    ret nz                                        ; $6bc6: $c0

    pop bc                                        ; $6bc7: $c1
    ccf                                           ; $6bc8: $3f
    ld a, b                                       ; $6bc9: $78
    add l                                         ; $6bca: $85
    jp Jump_000_0031                              ; $6bcb: $c3 $31 $00


    rlca                                          ; $6bce: $07
    db $e4                                        ; $6bcf: $e4
    jp $ef7f                                      ; $6bd0: $c3 $7f $ef


    rst $08                                       ; $6bd3: $cf
    cp $00                                        ; $6bd4: $fe $00
    nop                                           ; $6bd6: $00
    ld [bc], a                                    ; $6bd7: $02

jr_0cf_6bd8:
    db $fc                                        ; $6bd8: $fc
    ld [bc], a                                    ; $6bd9: $02
    db $fc                                        ; $6bda: $fc
    ld [c], a                                     ; $6bdb: $e2
    db $fc                                        ; $6bdc: $fc
    ld [c], a                                     ; $6bdd: $e2
    adc $00                                       ; $6bde: $ce $00
    ld a, [c]                                     ; $6be0: $f2
    ld [hl], $fc                                  ; $6be1: $36 $fc
    ld [hl], $fc                                  ; $6be3: $36 $fc
    ld b, $df                                     ; $6be5: $06 $df
    ld h, b                                       ; $6be7: $60
    nop                                           ; $6be8: $00
    sub $61                                       ; $6be9: $d6 $61
    ld h, b                                       ; $6beb: $60
    adc $61                                       ; $6bec: $ce $61
    call z, $c471                                 ; $6bee: $cc $71 $c4
    nop                                           ; $6bf1: $00
    ld l, e                                       ; $6bf2: $6b
    pop bc                                        ; $6bf3: $c1
    ld h, e                                       ; $6bf4: $63
    ret                                           ; $6bf5: $c9


    ld h, h                                       ; $6bf6: $64
    ret z                                         ; $6bf7: $c8

    sub [hl]                                      ; $6bf8: $96
    ld c, l                                       ; $6bf9: $4d
    nop                                           ; $6bfa: $00
    ld [hl-], a                                   ; $6bfb: $32
    inc bc                                        ; $6bfc: $03
    ld bc, $7881                                  ; $6bfd: $01 $81 $78
    add h                                         ; $6c00: $84
    db $fc                                        ; $6c01: $fc
    ld [bc], a                                    ; $6c02: $02
    nop                                           ; $6c03: $00
    cp $01                                        ; $6c04: $fe $01
    rst $38                                       ; $6c06: $ff
    nop                                           ; $6c07: $00
    ld b, c                                       ; $6c08: $41
    nop                                           ; $6c09: $00
    ld d, e                                       ; $6c0a: $53
    adc [hl]                                      ; $6c0b: $8e
    nop                                           ; $6c0c: $00
    ld h, e                                       ; $6c0d: $63
    cp h                                          ; $6c0e: $bc
    rst $20                                       ; $6c0f: $e7
    nop                                           ; $6c10: $00
    and $a1                                       ; $6c11: $e6 $a1
    ld hl, sp+$07                                 ; $6c13: $f8 $07
    nop                                           ; $6c15: $00
    jr nc, jr_0cf_6c77                            ; $6c16: $30 $5f

    rrca                                          ; $6c18: $0f
    add b                                         ; $6c19: $80
    sbc c                                         ; $6c1a: $99
    ret nz                                        ; $6c1b: $c0

    db $fc                                        ; $6c1c: $fc
    ld b, $00                                     ; $6c1d: $06 $00
    ld a, h                                       ; $6c1f: $7c
    add [hl]                                      ; $6c20: $86
    ld a, b                                       ; $6c21: $78
    ld a, [$eaf8]                                 ; $6c22: $fa $f8 $ea
    ld hl, sp+$1a                                 ; $6c25: $f8 $1a
    nop                                           ; $6c27: $00

jr_0cf_6c28:
    db $ec                                        ; $6c28: $ec
    ld [bc], a                                    ; $6c29: $02
    db $f4                                        ; $6c2a: $f4
    ld l, $ec                                     ; $6c2b: $2e $ec
    halt                                          ; $6c2d: $76
    call nz, Call_000_0031                        ; $6c2e: $c4 $31 $00
    push bc                                       ; $6c31: $c5
    ld sp, $c63e                                  ; $6c32: $31 $3e $c6
    ccf                                           ; $6c35: $3f
    jp nz, $39c1                                  ; $6c36: $c2 $c1 $39

    nop                                           ; $6c39: $00
    pop bc                                        ; $6c3a: $c1
    dec a                                         ; $6c3b: $3d
    pop bc                                        ; $6c3c: $c1
    dec a                                         ; $6c3d: $3d
    ret nz                                        ; $6c3e: $c0

    inc a                                         ; $6c3f: $3c
    ldh [rP1], a                                  ; $6c40: $e0 $00
    nop                                           ; $6c42: $00
    ret nz                                        ; $6c43: $c0

    sbc [hl]                                      ; $6c44: $9e
    rla                                           ; $6c45: $17
    ld [hl], h                                    ; $6c46: $74
    jr nz, jr_0cf_6c28                            ; $6c47: $20 $df

    ccf                                           ; $6c49: $3f
    ld b, b                                       ; $6c4a: $40
    nop                                           ; $6c4b: $00
    ccf                                           ; $6c4c: $3f
    add b                                         ; $6c4d: $80
    rst $30                                       ; $6c4e: $f7
    nop                                           ; $6c4f: $00
    adc a                                         ; $6c50: $8f
    nop                                           ; $6c51: $00
    rst $10                                       ; $6c52: $d7
    ld de, $d300                                  ; $6c53: $11 $00 $d3
    dec d                                         ; $6c56: $15
    ld d, e                                       ; $6c57: $53
    sub l                                         ; $6c58: $95
    jp nc, Jump_000_3c14                          ; $6c59: $d2 $14 $3c

    call c, $2300                                 ; $6c5c: $dc $00 $23
    ret z                                         ; $6c5f: $c8

    jp $c4f4                                      ; $6c60: $c3 $f4 $c4


    ret z                                         ; $6c63: $c8

    db $fc                                        ; $6c64: $fc
    ld b, [hl]                                    ; $6c65: $46
    nop                                           ; $6c66: $00
    db $fc                                        ; $6c67: $fc
    ld c, $06                                     ; $6c68: $0e $06
    and d                                         ; $6c6a: $a2
    ld b, $62                                     ; $6c6b: $06 $62
    ld b, $f2                                     ; $6c6d: $06 $f2
    nop                                           ; $6c6f: $00
    ld c, $c2                                     ; $6c70: $0e $c2
    ld a, $82                                     ; $6c72: $3e $82
    ld a, [hl]                                    ; $6c74: $7e
    ld [bc], a                                    ; $6c75: $02
    ld a, [hl-]                                   ; $6c76: $3a

jr_0cf_6c77:
    ld hl, sp+$02                                 ; $6c77: $f8 $02
    dec a                                         ; $6c79: $3d
    ld hl, sp+$3f                                 ; $6c7a: $f8 $3f
    db $fd                                        ; $6c7c: $fd
    dec a                                         ; $6c7d: $3d
    ld hl, sp+$08                                 ; $6c7e: $f8 $08
    ld [$0080], sp                                ; $6c80: $08 $80 $00
    ld a, a                                       ; $6c83: $7f
    rst $38                                       ; $6c84: $ff
    nop                                           ; $6c85: $00
    rst $38                                       ; $6c86: $ff
    nop                                           ; $6c87: $00
    ld c, a                                       ; $6c88: $4f
    nop                                           ; $6c89: $00
    add c                                         ; $6c8a: $81
    ld bc, $dc3f                                  ; $6c8b: $01 $3f $dc
    inc e                                         ; $6c8e: $1c
    pop hl                                        ; $6c8f: $e1
    ld bc, $07e4                                  ; $6c90: $01 $e4 $07
    call z, RST_00                                ; $6c93: $cc $00 $00
    nop                                           ; $6c96: $00
    sbc h                                         ; $6c97: $9c
    add d                                         ; $6c98: $82
    inc c                                         ; $6c99: $0c
    ld [bc], a                                    ; $6c9a: $02
    ld d, $22                                     ; $6c9b: $16 $22
    inc c                                         ; $6c9d: $0c
    ld b, $65                                     ; $6c9e: $06 $65
    ccf                                           ; $6ca0: $3f
    call c, $c42d                                 ; $6ca1: $dc $2d $c4
    db $10                                        ; $6ca4: $10
    ld [$00bd], sp                                ; $6ca5: $08 $bd $00
    cp $c0                                        ; $6ca8: $fe $c0
    pop bc                                        ; $6caa: $c1
    nop                                           ; $6cab: $00
    ld [bc], a                                    ; $6cac: $02
    stop                                          ; $6cad: $10 $00
    cp $fe                                        ; $6caf: $fe $fe
    nop                                           ; $6cb1: $00
    nop                                           ; $6cb2: $00
    ld bc, $00da                                  ; $6cb3: $01 $da $00
    ld [$ff7f], sp                                ; $6cb6: $08 $7f $ff
    ld a, a                                       ; $6cb9: $7f
    ret nz                                        ; $6cba: $c0

    ld [bc], a                                    ; $6cbb: $02
    ld [$c03e], sp                                ; $6cbc: $08 $3e $c0
    dec a                                         ; $6cbf: $3d
    nop                                           ; $6cc0: $00
    pop bc                                        ; $6cc1: $c1
    dec sp                                        ; $6cc2: $3b
    ld a, [$fa3b]                                 ; $6cc3: $fa $3b $fa
    nop                                           ; $6cc6: $00
    rst $38                                       ; $6cc7: $ff
    ldh [rP1], a                                  ; $6cc8: $e0 $00
    nop                                           ; $6cca: $00
    add d                                         ; $6ccb: $82
    add h                                         ; $6ccc: $84
    inc h                                         ; $6ccd: $24
    ld [$ada8], sp                                ; $6cce: $08 $a8 $ad
    jr z, jr_0cf_6cd3                             ; $6cd1: $28 $00

jr_0cf_6cd3:
    add l                                         ; $6cd3: $85
    inc h                                         ; $6cd4: $24
    dec l                                         ; $6cd5: $2d
    add hl, bc                                    ; $6cd6: $09
    nop                                           ; $6cd7: $00
    nop                                           ; $6cd8: $00
    rst $38                                       ; $6cd9: $ff
    rra                                           ; $6cda: $1f
    nop                                           ; $6cdb: $00
    db $10                                        ; $6cdc: $10
    ld h, b                                       ; $6cdd: $60
    ld hl, $48e4                                  ; $6cde: $21 $e4 $48
    add h                                         ; $6ce1: $84
    adc $82                                       ; $6ce2: $ce $82
    nop                                           ; $6ce4: $00
    ld b, l                                       ; $6ce5: $45
    add e                                         ; $6ce6: $83
    add c                                         ; $6ce7: $81
    and b                                         ; $6ce8: $a0
    db $10                                        ; $6ce9: $10
    cp $00                                        ; $6cea: $fe $00
    ld [bc], a                                    ; $6cec: $02
    nop                                           ; $6ced: $00
    db $fc                                        ; $6cee: $fc
    db $fc                                        ; $6cef: $fc
    cp $fc                                        ; $6cf0: $fe $fc
    ld [bc], a                                    ; $6cf2: $02
    ld a, l                                       ; $6cf3: $7d
    inc bc                                        ; $6cf4: $03
    dec a                                         ; $6cf5: $3d
    nop                                           ; $6cf6: $00
    inc bc                                        ; $6cf7: $03
    sbc h                                         ; $6cf8: $9c
    ld [bc], a                                    ; $6cf9: $02
    call c, Call_000_3b82                         ; $6cfa: $dc $82 $3b
    ld a, [$023d]                                 ; $6cfd: $fa $3d $02
    db $fd                                        ; $6d00: $fd
    ld a, h                                       ; $6d01: $7c
    ret nz                                        ; $6d02: $c0

    ld a, h                                       ; $6d03: $7c
    ret nz                                        ; $6d04: $c0

    ld a, [hl]                                    ; $6d05: $7e
    ld b, [hl]                                    ; $6d06: $46
    db $10                                        ; $6d07: $10
    ld a, a                                       ; $6d08: $7f
    nop                                           ; $6d09: $00
    ret nz                                        ; $6d0a: $c0

    jr jr_0cf_6d4e                                ; $6d0b: $18 $41

    ld a, l                                       ; $6d0d: $7d
    jr c, jr_0cf_6d27                             ; $6d0e: $38 $17

    ld [$00f2], sp                                ; $6d10: $08 $f2 $00
    db $fd                                        ; $6d13: $fd
    rlca                                          ; $6d14: $07
    nop                                           ; $6d15: $00
    ld b, d                                       ; $6d16: $42
    ld l, b                                       ; $6d17: $68
    ld b, d                                       ; $6d18: $42
    ld b, l                                       ; $6d19: $45
    inc bc                                        ; $6d1a: $03
    nop                                           ; $6d1b: $00
    ld a, b                                       ; $6d1c: $78
    ld a, b                                       ; $6d1d: $78
    ld sp, $7afc                                  ; $6d1e: $31 $fc $7a
    adc [hl]                                      ; $6d21: $8e
    ld [bc], a                                    ; $6d22: $02
    ld b, $00                                     ; $6d23: $06 $00
    ld a, [c]                                     ; $6d25: $f2
    nop                                           ; $6d26: $00

jr_0cf_6d27:
    nop                                           ; $6d27: $00
    sub h                                         ; $6d28: $94
    or b                                          ; $6d29: $b0
    sub b                                         ; $6d2a: $90
    dec b                                         ; $6d2b: $05
    pop af                                        ; $6d2c: $f1
    nop                                           ; $6d2d: $00
    db $fd                                        ; $6d2e: $fd
    ld e, h                                       ; $6d2f: $5c
    ld e, $dc                                     ; $6d30: $1e $dc
    sbc [hl]                                      ; $6d32: $9e
    inc e                                         ; $6d33: $1c
    ld e, $dc                                     ; $6d34: $1e $dc
    nop                                           ; $6d36: $00
    ld e, $dc                                     ; $6d37: $1e $dc
    jp nz, $c2dc                                  ; $6d39: $c2 $dc $c2

    ld e, h                                       ; $6d3c: $5c
    ld b, d                                       ; $6d3d: $42
    cp h                                          ; $6d3e: $bc
    ld h, b                                       ; $6d3f: $60
    add d                                         ; $6d40: $82
    ld a, [hl]                                    ; $6d41: $7e
    jr jr_0cf_6d4a                                ; $6d42: $18 $06

    jr c, jr_0cf_6db6                             ; $6d44: $38 $70

    daa                                           ; $6d46: $27
    ld c, d                                       ; $6d47: $4a
    ld [hl], d                                    ; $6d48: $72
    ld h, l                                       ; $6d49: $65

jr_0cf_6d4a:
    nop                                           ; $6d4a: $00
    add hl, sp                                    ; $6d4b: $39

Jump_0cf_6d4c:
    jr nz, jr_0cf_6d8d                            ; $6d4c: $20 $3f

jr_0cf_6d4e:
    and c                                         ; $6d4e: $a1
    ccf                                           ; $6d4f: $3f
    sub b                                         ; $6d50: $90
    add hl, de                                    ; $6d51: $19
    add $00                                       ; $6d52: $c6 $00
    ld c, $e3                                     ; $6d54: $0e $e3
    rlca                                          ; $6d56: $07
    db $fd                                        ; $6d57: $fd
    ld a, [bc]                                    ; $6d58: $0a
    db $fc                                        ; $6d59: $fc
    ld a, d                                       ; $6d5a: $7a
    cp $00                                        ; $6d5b: $fe $00
    ld [bc], a                                    ; $6d5d: $02
    ld a, [$7906]                                 ; $6d5e: $fa $06 $79
    add l                                         ; $6d61: $85
    or c                                          ; $6d62: $b1
    ld c, c                                       ; $6d63: $49
    adc c                                         ; $6d64: $89
    ld bc, $11f8                                  ; $6d65: $01 $f8 $11
    ldh a, [$7c]                                  ; $6d68: $f0 $7c
    ld b, d                                       ; $6d6a: $42
    ld a, h                                       ; $6d6b: $7c
    ld [bc], a                                    ; $6d6c: $02
    ld a, a                                       ; $6d6d: $7f
    nop                                           ; $6d6e: $00
    xor b                                         ; $6d6f: $a8
    ld [bc], a                                    ; $6d70: $02
    nop                                           ; $6d71: $00
    cp $87                                        ; $6d72: $fe $87
    ld [$befc], sp                                ; $6d74: $08 $fc $be
    jr jr_0cf_6df7                                ; $6d77: $18 $7e

    ret nz                                        ; $6d79: $c0

    dec a                                         ; $6d7a: $3d
    nop                                           ; $6d7b: $00
    ret nz                                        ; $6d7c: $c0

    inc sp                                        ; $6d7d: $33
    jp $7f80                                      ; $6d7e: $c3 $80 $7f


    rst $38                                       ; $6d81: $ff
    nop                                           ; $6d82: $00
    db $e4                                        ; $6d83: $e4
    nop                                           ; $6d84: $00
    rlca                                          ; $6d85: $07
    ret z                                         ; $6d86: $c8

    ld [$070f], sp                                ; $6d87: $08 $0f $07
    adc a                                         ; $6d8a: $8f
    ld b, b                                       ; $6d8b: $40
    ld c, a                                       ; $6d8c: $4f

jr_0cf_6d8d:
    nop                                           ; $6d8d: $00
    add e                                         ; $6d8e: $83
    cpl                                           ; $6d8f: $2f
    jp Jump_000_00ff                              ; $6d90: $c3 $ff $00


    nop                                           ; $6d93: $00
    nop                                           ; $6d94: $00
    pop bc                                        ; $6d95: $c1
    nop                                           ; $6d96: $00
    add sp, $01                                   ; $6d97: $e8 $01
    jr jr_0cf_6dab                                ; $6d99: $18 $10

    add sp, -$0d                                  ; $6d9b: $e8 $f3
    dec bc                                        ; $6d9d: $0b
    inc de                                        ; $6d9e: $13
    ld de, $15e0                                  ; $6d9f: $11 $e0 $15
    and $10                                       ; $6da2: $e6 $10
    ld [$fcfe], sp                                ; $6da4: $08 $fe $fc
    or [hl]                                       ; $6da7: $b6
    ret nz                                        ; $6da8: $c0

    nop                                           ; $6da9: $00
    nop                                           ; $6daa: $00

jr_0cf_6dab:
    ld a, h                                       ; $6dab: $7c
    ld [bc], a                                    ; $6dac: $02
    cp h                                          ; $6dad: $bc
    add d                                         ; $6dae: $82
    call z, $00c2                                 ; $6daf: $cc $c2 $00
    cp $00                                        ; $6db2: $fe $00
    cp $00                                        ; $6db4: $fe $00

jr_0cf_6db6:
    nop                                           ; $6db6: $00
    ld bc, $00e8                                  ; $6db7: $01 $e8 $00
    ld [$ff7f], sp                                ; $6dba: $08 $7f $ff
    ld a, a                                       ; $6dbd: $7f
    ret nz                                        ; $6dbe: $c0

    ld [bc], a                                    ; $6dbf: $02
    jr jr_0cf_6e40                                ; $6dc0: $18 $7e

    ret nz                                        ; $6dc2: $c0

    pop bc                                        ; $6dc3: $c1
    nop                                           ; $6dc4: $00
    db $fc                                        ; $6dc5: $fc
    jp nz, Jump_000_00f9                          ; $6dc6: $c2 $f9 $00

    rst $38                                       ; $6dc9: $ff
    ld hl, sp+$08                                 ; $6dca: $f8 $08
    pop bc                                        ; $6dcc: $c1
    nop                                           ; $6dcd: $00
    inc bc                                        ; $6dce: $03
    add b                                         ; $6dcf: $80
    inc l                                         ; $6dd0: $2c
    dec bc                                        ; $6dd1: $0b
    ld [$1194], sp                                ; $6dd2: $08 $94 $11
    pop de                                        ; $6dd5: $d1
    nop                                           ; $6dd6: $00
    ld c, c                                       ; $6dd7: $49
    rlca                                          ; $6dd8: $07
    daa                                           ; $6dd9: $27
    nop                                           ; $6dda: $00
    rst $38                                       ; $6ddb: $ff
    rrca                                          ; $6ddc: $0f
    rlca                                          ; $6ddd: $07
    db $e3                                        ; $6dde: $e3
    nop                                           ; $6ddf: $00
    add b                                         ; $6de0: $80
    inc b                                         ; $6de1: $04
    ld b, b                                       ; $6de2: $40
    add hl, hl                                    ; $6de3: $29
    ld b, c                                       ; $6de4: $41
    call nc, Call_000_0260                        ; $6de5: $d4 $60 $02
    nop                                           ; $6de8: $00
    ld c, b                                       ; $6de9: $48
    add c                                         ; $6dea: $81
    and b                                         ; $6deb: $a0
    cp $00                                        ; $6dec: $fe $00
    ld [bc], a                                    ; $6dee: $02
    db $fc                                        ; $6def: $fc
    db $fc                                        ; $6df0: $fc
    nop                                           ; $6df1: $00
    cp $fc                                        ; $6df2: $fe $fc
    ld a, [hl]                                    ; $6df4: $7e
    ld a, h                                       ; $6df5: $7c
    ld [bc], a                                    ; $6df6: $02

jr_0cf_6df7:
    cp h                                          ; $6df7: $bc
    add d                                         ; $6df8: $82
    ld e, $80                                     ; $6df9: $1e $80
    ld [bc], a                                    ; $6dfb: $02
    nop                                           ; $6dfc: $00
    ld [hl], b                                    ; $6dfd: $70
    ret nz                                        ; $6dfe: $c0

    ld h, c                                       ; $6dff: $61
    ret nz                                        ; $6e00: $c0

    ld h, $c4                                     ; $6e01: $26 $c4
    jr nc, jr_0cf_6e05                            ; $6e03: $30 $00

jr_0cf_6e05:
    ret nz                                        ; $6e05: $c0

    dec sp                                        ; $6e06: $3b

jr_0cf_6e07:
    jp $c33b                                      ; $6e07: $c3 $3b $c3


    ld a, [hl-]                                   ; $6e0a: $3a
    jp nz, Jump_000_003a                          ; $6e0b: $c2 $3a $00

    jp nz, Jump_000_17b5                          ; $6e0e: $c2 $b5 $17

    ld l, b                                       ; $6e11: $68
    cpl                                           ; $6e12: $2f
    ret nc                                        ; $6e13: $d0

    ld e, b                                       ; $6e14: $58
    and a                                         ; $6e15: $a7
    nop                                           ; $6e16: $00
    scf                                           ; $6e17: $37
    ld a, b                                       ; $6e18: $78
    ld b, b                                       ; $6e19: $40
    ld [hl], d                                    ; $6e1a: $72
    ld b, l                                       ; $6e1b: $45
    ld [hl], $c5                                  ; $6e1c: $36 $c5
    ld [hl], b                                    ; $6e1e: $70
    nop                                           ; $6e1f: $00
    adc b                                         ; $6e20: $88
    jr z, jr_0cf_6df7                             ; $6e21: $28 $d4

    rst $38                                       ; $6e23: $ff
    ld a, h                                       ; $6e24: $7c
    ld a, b                                       ; $6e25: $78
    ld [hl], c                                    ; $6e26: $71
    jr nc, jr_0cf_6e29                            ; $6e27: $30 $00

jr_0cf_6e29:
    sbc a                                         ; $6e29: $9f
    ld sp, hl                                     ; $6e2a: $f9
    adc c                                         ; $6e2b: $89
    ld [hl], h                                    ; $6e2c: $74
    ld e, d                                       ; $6e2d: $5a
    inc l                                         ; $6e2e: $2c
    ld d, h                                       ; $6e2f: $54
    ld sp, $4900                                  ; $6e30: $31 $00 $49
    jp nz, Jump_0cf_620e                          ; $6e33: $c2 $0e $62

    ld c, $ac                                     ; $6e36: $0e $ac
    adc [hl]                                      ; $6e38: $8e
    inc l                                         ; $6e39: $2c
    jr nz, jr_0cf_6e4a                            ; $6e3a: $20 $0e

    ld c, $3e                                     ; $6e3c: $0e $3e
    nop                                           ; $6e3e: $00
    add d                                         ; $6e3f: $82

jr_0cf_6e40:
    ld a, $82                                     ; $6e40: $3e $82
    ld a, $7a                                     ; $6e42: $3e $7a
    jr c, jr_0cf_6e07                             ; $6e44: $38 $c1

    ld a, h                                       ; $6e46: $7c
    ld a, d                                       ; $6e47: $7a
    nop                                           ; $6e48: $00
    ld [bc], a                                    ; $6e49: $02

jr_0cf_6e4a:
    ld [$0888], sp                                ; $6e4a: $08 $88 $08
    ld a, b                                       ; $6e4d: $78
    ret nz                                        ; $6e4e: $c0

    ld c, a                                       ; $6e4f: $4f
    nop                                           ; $6e50: $00
    ld [hl], b                                    ; $6e51: $70
    ld b, b                                       ; $6e52: $40
    ld a, a                                       ; $6e53: $7f
    ld e, a                                       ; $6e54: $5f
    ccf                                           ; $6e55: $3f
    ld e, a                                       ; $6e56: $5f
    ccf                                           ; $6e57: $3f
    ccf                                           ; $6e58: $3f
    nop                                           ; $6e59: $00
    ld e, a                                       ; $6e5a: $5f
    rra                                           ; $6e5b: $1f
    ld l, $70                                     ; $6e5c: $2e $70
    ld l, a                                       ; $6e5e: $6f
    jr c, @+$29                                   ; $6e5f: $38 $27

    ld [hl], a                                    ; $6e61: $77
    nop                                           ; $6e62: $00
    di                                            ; $6e63: $f3
    ld d, [hl]                                    ; $6e64: $56
    and e                                         ; $6e65: $a3
    add a                                         ; $6e66: $87
    adc $ce                                       ; $6e67: $ce $ce
    db $fd                                        ; $6e69: $fd
    cp $00                                        ; $6e6a: $fe $00
    db $fd                                        ; $6e6c: $fd
    ld c, $9d                                     ; $6e6d: $0e $9d
    ld c, h                                       ; $6e6f: $4c
    xor [hl]                                      ; $6e70: $ae
    inc l                                         ; $6e71: $2c
    jp c, Jump_000_0082                           ; $6e72: $da $82 $00

    ld a, $02                                     ; $6e75: $3e $02
    cp [hl]                                       ; $6e77: $be
    jp nz, Jump_000_02fc                          ; $6e78: $c2 $fc $02

    ld a, h                                       ; $6e7b: $7c
    ld a, [hl]                                    ; $6e7c: $7e
    nop                                           ; $6e7d: $00
    ld a, h                                       ; $6e7e: $7c
    ld a, [hl]                                    ; $6e7f: $7e
    db $fc                                        ; $6e80: $fc
    add d                                         ; $6e81: $82
    db $fc                                        ; $6e82: $fc
    ld [bc], a                                    ; $6e83: $02
    db $fc                                        ; $6e84: $fc
    dec sp                                        ; $6e85: $3b
    nop                                           ; $6e86: $00
    ld hl, sp+$36                                 ; $6e87: $f8 $36
    ldh a, [rIF]                                  ; $6e89: $f0 $0f
    jp $c73f                                      ; $6e8b: $c3 $3f $c7


    ccf                                           ; $6e8e: $3f
    nop                                           ; $6e8f: $00
    push bc                                       ; $6e90: $c5
    ccf                                           ; $6e91: $3f
    ret z                                         ; $6e92: $c8

    add b                                         ; $6e93: $80
    ld a, a                                       ; $6e94: $7f
    rst $38                                       ; $6e95: $ff
    nop                                           ; $6e96: $00
    rrca                                          ; $6e97: $0f
    nop                                           ; $6e98: $00
    inc de                                        ; $6e99: $13
    rlca                                          ; $6e9a: $07
    add hl, hl                                    ; $6e9b: $29
    inc sp                                        ; $6e9c: $33
    ld c, $1c                                     ; $6e9d: $0e $1c
    inc bc                                        ; $6e9f: $03
    ld c, $00                                     ; $6ea0: $0e $00
    add c                                         ; $6ea2: $81
    rlca                                          ; $6ea3: $07
    jp Jump_000_00ff                              ; $6ea4: $c3 $ff $00


    nop                                           ; $6ea7: $00
    nop                                           ; $6ea8: $00
    sbc b                                         ; $6ea9: $98
    nop                                           ; $6eaa: $00
    or $f0                                        ; $6eab: $f6 $f0
    db $ec                                        ; $6ead: $ec
    inc e                                         ; $6eae: $1c
    ld sp, hl                                     ; $6eaf: $f9
    or $f0                                        ; $6eb0: $f6 $f0
    inc bc                                        ; $6eb2: $03
    ld d, $ed                                     ; $6eb3: $16 $ed
    add c                                         ; $6eb5: $81
    add $10                                       ; $6eb6: $c6 $10
    ld [$34fe], sp                                ; $6eb8: $08 $fe $34
    nop                                           ; $6ebb: $00
    cp a                                          ; $6ebc: $bf
    nop                                           ; $6ebd: $00
    db $fc                                        ; $6ebe: $fc
    nop                                           ; $6ebf: $00
    ld [bc], a                                    ; $6ec0: $02
    ld a, [hl]                                    ; $6ec1: $7e
    add d                                         ; $6ec2: $82
    ld a, $00                                     ; $6ec3: $3e $00
    cp $fe                                        ; $6ec5: $fe $fe
    nop                                           ; $6ec7: $00

    db $00, $01, $fd, $00, $00, $80, $7f, $9f, $4f, $e0, $de, $c1, $fd, $00, $c3, $78
    db $c3, $54, $c7, $70, $c7, $70, $00, $00, $ff, $7f, $40, $f8, $47, $80, $c0, $00
    db $e7, $42, $c0, $b8, $00, $ff, $f6, $f0, $00, $ff, $ff, $c0, $03, $f2, $02, $39
    db $c5, $00, $a2, $1e, $c1, $3f, $81, $fe, $0d, $06, $00, $fe, $00, $82, $c0, $e0
    db $82, $30, $22, $00, $d2, $d8, $6a, $6c, $02, $64, $82, $b0, $00, $af, $69, $ae
    db $6a, $ad, $6d, $a1, $60, $00, $ae, $62, $bc, $7c, $a5, $c5, $a5, $c5, $00, $06
    db $02, $58, $27, $7f, $f8, $07, $05, $00, $72, $8a, $f2, $6a, $52, $5d, $07, $88
    db $00, $03, $1f, $81, $66, $09, $f1, $07, $08, $00, $73, $83, $78, $b4, $2b, $e8
    db $06, $81, $00, $32, $b0, $1a, $58, $c2, $dc, $42, $5c, $00, $62, $38, $62, $68
    db $42, $4c, $42, $44, $00, $85, $c0, $99, $c0, $85, $79, $81, $61, $00, $a1, $41
    db $90, $70, $9e, $6c, $a6, $78, $00, $1a, $f8, $f0, $cf, $ff, $3f, $89, $0f, $00
    db $50, $80, $a9, $66, $e0, $70, $70, $3f, $00, $b9, $fe, $52, $bc, $02, $fc, $e2
    db $3c, $00, $bc, $d8, $78, $b8, $f8, $83, $f2, $03, $00, $42, $44, $42, $44, $62
    db $26, $32, $16, $00, $16, $04, $16, $24, $dc, $2e, $28, $ca, $00, $c0, $41, $c0
    db $7c, $c1, $7c, $c1, $7d, $00, $c1, $79, $c1, $78, $80, $7f, $ff, $00, $00, $3f
    db $5f, $00, $bf, $1f, $9f, $0f, $80, $00, $1f, $8f, $5f, $8f, $ff, $00, $00, $00
    db $00, $e0, $c6, $80, $43, $0c, $08, $c8, $0e, $08, $0f, $e9, $06, $e9, $10, $08
    db $12, $1c, $12, $00, $3c, $22, $3c, $42, $7c, $3a, $7c, $76, $00, $7c, $00, $fe
    db $fe, $00

    nop                                           ; $6fea: $00
    ld bc, $00e6                                  ; $6feb: $01 $e6 $00
    nop                                           ; $6fee: $00
    ld a, a                                       ; $6fef: $7f
    rst $38                                       ; $6ff0: $ff
    ld a, a                                       ; $6ff1: $7f
    ret nz                                        ; $6ff2: $c0

    ld a, a                                       ; $6ff3: $7f
    ret nz                                        ; $6ff4: $c0

    ld a, [hl]                                    ; $6ff5: $7e
    ret nz                                        ; $6ff6: $c0

    nop                                           ; $6ff7: $00
    dec a                                         ; $6ff8: $3d
    pop bc                                        ; $6ff9: $c1
    dec a                                         ; $6ffa: $3d
    pop bc                                        ; $6ffb: $c1
    ld a, b                                       ; $6ffc: $78
    jp $c270                                      ; $6ffd: $c3 $70 $c2


    nop                                           ; $7000: $00
    rst $38                                       ; $7001: $ff
    rst $38                                       ; $7002: $ff
    ld c, $80                                     ; $7003: $0e $80
    ld l, $31                                     ; $7005: $2e $31
    jp nc, $00e9                                  ; $7007: $d2 $e9 $00

    inc bc                                        ; $700a: $03
    push af                                       ; $700b: $f5
    dec bc                                        ; $700c: $0b
    push hl                                       ; $700d: $e5
    rst $10                                       ; $700e: $d7
    ld c, c                                       ; $700f: $49
    ld c, [hl]                                    ; $7010: $4e
    ld [hl-], a                                   ; $7011: $32
    nop                                           ; $7012: $00
    rst $38                                       ; $7013: $ff
    nop                                           ; $7014: $00
    ld h, b                                       ; $7015: $60
    ld hl, $3c4c                                  ; $7016: $21 $4c $3c
    ld b, [hl]                                    ; $7019: $46
    ld a, a                                       ; $701a: $7f
    nop                                           ; $701b: $00
    db $fc                                        ; $701c: $fc
    inc sp                                        ; $701d: $33
    ld l, [hl]                                    ; $701e: $6e
    ld c, c                                       ; $701f: $49
    ld l, [hl]                                    ; $7020: $6e
    dec e                                         ; $7021: $1d
    sub d                                         ; $7022: $92
    ld c, $00                                     ; $7023: $0e $00
    cp $00                                        ; $7025: $fe $00
    ld [bc], a                                    ; $7027: $02
    db $fc                                        ; $7028: $fc
    db $fc                                        ; $7029: $fc
    ld [bc], a                                    ; $702a: $02
    db $fc                                        ; $702b: $fc
    add d                                         ; $702c: $82
    nop                                           ; $702d: $00
    inc a                                         ; $702e: $3c
    add d                                         ; $702f: $82
    sbc h                                         ; $7030: $9c
    jp nz, $e20e                                  ; $7031: $c2 $0e $e2

    ld b, $c2                                     ; $7034: $06 $c2
    nop                                           ; $7036: $00
    pop bc                                        ; $7037: $c1
    ld sp, $20cf                                  ; $7038: $31 $cf $20
    inc l                                         ; $703b: $2c
    call $ce20                                    ; $703c: $cd $20 $ce
    nop                                           ; $703f: $00
    ld h, d                                       ; $7040: $62
    rst $08                                       ; $7041: $cf
    ld h, b                                       ; $7042: $60
    ret nz                                        ; $7043: $c0

    ld [hl], b                                    ; $7044: $70
    jp nz, $c278                                  ; $7045: $c2 $78 $c2

    nop                                           ; $7048: $00
    dec e                                         ; $7049: $1d
    ld hl, sp-$06                                 ; $704a: $f8 $fa
    pop af                                        ; $704c: $f1
    rst $00                                       ; $704d: $c7
    inc sp                                        ; $704e: $33
    inc c                                         ; $704f: $0c
    inc de                                        ; $7050: $13
    nop                                           ; $7051: $00
    cp b                                          ; $7052: $b8
    adc b                                         ; $7053: $88
    ld [hl], h                                    ; $7054: $74
    add hl, de                                    ; $7055: $19
    ld e, c                                       ; $7056: $59
    or b                                          ; $7057: $b0
    ld h, c                                       ; $7058: $61
    sbc [hl]                                      ; $7059: $9e
    nop                                           ; $705a: $00
    rst $20                                       ; $705b: $e7
    jr nz, jr_0cf_7071                            ; $705c: $20 $13

    ld a, [c]                                     ; $705e: $f2
    ld hl, sp-$0c                                 ; $705f: $f8 $f4
    call nz, $00fa                                ; $7061: $c4 $fa $00
    ret nz                                        ; $7064: $c0

    rst $20                                       ; $7065: $e7
    ld hl, sp-$0d                                 ; $7066: $f8 $f3
    or c                                          ; $7068: $b1
    db $e3                                        ; $7069: $e3
    and e                                         ; $706a: $a3
    rst $38                                       ; $706b: $ff
    nop                                           ; $706c: $00
    ld b, h                                       ; $706d: $44
    ld d, d                                       ; $706e: $52
    ld h, h                                       ; $706f: $64
    ld [c], a                                     ; $7070: $e2

jr_0cf_7071:
    xor h                                         ; $7071: $ac
    ld [c], a                                     ; $7072: $e2
    ld c, h                                       ; $7073: $4c
    ld h, d                                       ; $7074: $62
    nop                                           ; $7075: $00
    ld e, h                                       ; $7076: $5c
    ld b, d                                       ; $7077: $42
    inc e                                         ; $7078: $1c
    ld [bc], a                                    ; $7079: $02
    ld a, h                                       ; $707a: $7c
    ld b, d                                       ; $707b: $42
    inc a                                         ; $707c: $3c
    ld [bc], a                                    ; $707d: $02
    ld d, [hl]                                    ; $707e: $56
    ld a, b                                       ; $707f: $78
    inc [hl]                                      ; $7080: $34
    nop                                           ; $7081: $00
    ld a, h                                       ; $7082: $7c
    add b                                         ; $7083: $80
    nop                                           ; $7084: $00
    ld a, [hl]                                    ; $7085: $7e
    add [hl]                                      ; $7086: $86
    nop                                           ; $7087: $00
    adc d                                         ; $7088: $8a
    ld [$005f], sp                                ; $7089: $08 $5f $00
    ccf                                           ; $708c: $3f
    ld a, [hl]                                    ; $708d: $7e
    ld a, $7f                                     ; $708e: $3e $7f
    ld a, $5f                                     ; $7090: $3e $5f
    inc sp                                        ; $7092: $33
    and e                                         ; $7093: $a3
    nop                                           ; $7094: $00
    call c, Call_0cf_477b                         ; $7095: $dc $7b $47
    rra                                           ; $7098: $1f
    ld h, b                                       ; $7099: $60
    rrca                                          ; $709a: $0f
    ld a, b                                       ; $709b: $78
    ld sp, $8f00                                  ; $709c: $31 $00 $8f
    nop                                           ; $709f: $00
    sbc $3e                                       ; $70a0: $de $3e
    call c, $f6fc                                 ; $70a2: $dc $fc $f6
    db $fc                                        ; $70a5: $fc
    nop                                           ; $70a6: $00
    ld [$f1fc], sp                                ; $70a7: $08 $fc $f1
    ld hl, sp+$04                                 ; $70aa: $f8 $04
    ldh a, [rNR32]                                ; $70ac: $f0 $1c
    ld b, d                                       ; $70ae: $42
    ld a, [bc]                                    ; $70af: $0a
    ld a, h                                       ; $70b0: $7c
    ld [bc], a                                    ; $70b1: $02
    ld a, h                                       ; $70b2: $7c
    add d                                         ; $70b3: $82
    add c                                         ; $70b4: $81
    nop                                           ; $70b5: $00
    cp $04                                        ; $70b6: $fe $04
    db $10                                        ; $70b8: $10
    ld e, $60                                     ; $70b9: $1e $60
    db $fc                                        ; $70bb: $fc
    cp [hl]                                       ; $70bc: $be
    ld [$00c1], sp                                ; $70bd: $08 $c1 $00
    ld a, b                                       ; $70c0: $78
    push hl                                       ; $70c1: $e5
    daa                                           ; $70c2: $27
    ret z                                         ; $70c3: $c8

    rrca                                          ; $70c4: $0f
    nop                                           ; $70c5: $00
    add b                                         ; $70c6: $80
    ld a, a                                       ; $70c7: $7f
    rst $38                                       ; $70c8: $ff
    nop                                           ; $70c9: $00
    inc hl                                        ; $70ca: $23
    ld e, h                                       ; $70cb: $5c

jr_0cf_70cc:
    jr c, jr_0cf_7125                             ; $70cc: $38 $57

    nop                                           ; $70ce: $00
    rla                                           ; $70cf: $17
    rrca                                          ; $70d0: $0f
    adc e                                         ; $70d1: $8b
    rlca                                          ; $70d2: $07
    ld b, a                                       ; $70d3: $47
    add e                                         ; $70d4: $83
    db $10                                        ; $70d5: $10
    ldh [rP1], a                                  ; $70d6: $e0 $00
    rst $38                                       ; $70d8: $ff
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    nop                                           ; $70db: $00
    ret nz                                        ; $70dc: $c0

    inc a                                         ; $70dd: $3c
    jr jr_0cf_70cc                                ; $70de: $18 $ec

    nop                                           ; $70e0: $00
    ld c, $f6                                     ; $70e1: $0e $f6
    rra                                           ; $70e3: $1f
    jp hl                                         ; $70e4: $e9


    ret                                           ; $70e5: $c9


    ld b, [hl]                                    ; $70e6: $46
    db $10                                        ; $70e7: $10
    rrca                                          ; $70e8: $0f
    ld [$10ef], sp                                ; $70e9: $08 $ef $10
    nop                                           ; $70ec: $00
    nop                                           ; $70ed: $00
    jr c, jr_0cf_7110                             ; $70ee: $38 $20

    inc a                                         ; $70f0: $3c
    ret nz                                        ; $70f1: $c0

    add d                                         ; $70f2: $82
    nop                                           ; $70f3: $00
    ldh a, [$c2]                                  ; $70f4: $f0 $c2
    nop                                           ; $70f6: $00
    cp $fe                                        ; $70f7: $fe $fe
    nop                                           ; $70f9: $00
    nop                                           ; $70fa: $00
    ld bc, $00e9                                  ; $70fb: $01 $e9 $00
    nop                                           ; $70fe: $00
    rst $38                                       ; $70ff: $ff
    ld a, a                                       ; $7100: $7f
    ret nz                                        ; $7101: $c0

    ld a, a                                       ; $7102: $7f
    ld a, [hl]                                    ; $7103: $7e
    ret nz                                        ; $7104: $c0

    ld a, h                                       ; $7105: $7c
    pop bc                                        ; $7106: $c1
    nop                                           ; $7107: $00
    jp $c73b                                      ; $7108: $c3 $3b $c7


    inc sp                                        ; $710b: $33
    rst $00                                       ; $710c: $c7
    cpl                                           ; $710d: $2f
    rst $08                                       ; $710e: $cf
    cpl                                           ; $710f: $2f

jr_0cf_7110:
    nop                                           ; $7110: $00
    rst $38                                       ; $7111: $ff
    nop                                           ; $7112: $00
    ld [$547f], sp                                ; $7113: $08 $7f $54

jr_0cf_7116:
    scf                                           ; $7116: $37
    add hl, hl                                    ; $7117: $29
    rst $08                                       ; $7118: $cf
    nop                                           ; $7119: $00
    ret z                                         ; $711a: $c8

    cp a                                          ; $711b: $bf
    sub d                                         ; $711c: $92
    or b                                          ; $711d: $b0
    halt                                          ; $711e: $76
    ldh a, [$f0]                                  ; $711f: $f0 $f0
    or b                                          ; $7121: $b0
    nop                                           ; $7122: $00
    rst $38                                       ; $7123: $ff
    nop                                           ; $7124: $00

jr_0cf_7125:
    db $10                                        ; $7125: $10
    ldh a, [$e0]                                  ; $7126: $f0 $e0
    inc e                                         ; $7128: $1c
    db $fc                                        ; $7129: $fc
    ld b, $00                                     ; $712a: $06 $00
    sub d                                         ; $712c: $92
    ld c, $b9                                     ; $712d: $0e $b9
    rst $00                                       ; $712f: $c7
    ld c, a                                       ; $7130: $4f
    inc sp                                        ; $7131: $33
    dec d                                         ; $7132: $15
    dec bc                                        ; $7133: $0b
    ld [$00fe], sp                                ; $7134: $08 $fe $00
    ld [bc], a                                    ; $7137: $02
    db $fc                                        ; $7138: $fc
    ld [bc], a                                    ; $7139: $02
    jr @-$7c                                      ; $713a: $18 $82

    db $fc                                        ; $713c: $fc
    ld [bc], a                                    ; $713d: $02
    nop                                           ; $713e: $00
    ld a, [hl]                                    ; $713f: $7e
    add d                                         ; $7140: $82
    ld a, $e0                                     ; $7141: $3e $e0
    cpl                                           ; $7143: $2f
    ldh [$2c], a                                  ; $7144: $e0 $2c
    xor e                                         ; $7146: $ab
    nop                                           ; $7147: $00
    ld h, b                                       ; $7148: $60
    xor a                                         ; $7149: $af
    ld h, b                                       ; $714a: $60
    jp $cf37                                      ; $714b: $c3 $37 $cf


    ccf                                           ; $714e: $3f
    ret nz                                        ; $714f: $c0

    nop                                           ; $7150: $00
    jr c, jr_0cf_7116                             ; $7151: $38 $c3

    add hl, sp                                    ; $7153: $39
    ld d, a                                       ; $7154: $57
    inc h                                         ; $7155: $24
    ld l, h                                       ; $7156: $6c
    dec bc                                        ; $7157: $0b
    inc e                                         ; $7158: $1c
    nop                                           ; $7159: $00
    inc de                                        ; $715a: $13
    ldh a, [rIF]                                  ; $715b: $f0 $0f
    rlca                                          ; $715d: $07
    ei                                            ; $715e: $fb
    call z, Call_000_38b4                         ; $715f: $cc $b4 $38
    nop                                           ; $7162: $00
    ld [bc], a                                    ; $7163: $02
    jr nc, jr_0cf_71cc                            ; $7164: $30 $66

    jp Jump_0cf_6d4c                              ; $7166: $c3 $4c $6d


    and b                                         ; $7169: $a0
    pop hl                                        ; $716a: $e1
    nop                                           ; $716b: $00
    jp nz, $e5f2                                  ; $716c: $c2 $f2 $e5

    cpl                                           ; $716f: $2f
    db $dd                                        ; $7170: $dd
    ld a, [hl+]                                   ; $7171: $2a
    inc de                                        ; $7172: $13
    ret c                                         ; $7173: $d8

    nop                                           ; $7174: $00
    push bc                                       ; $7175: $c5
    jr c, jr_0cf_71bd                             ; $7176: $38 $45

    add d                                         ; $7178: $82
    cp h                                          ; $7179: $bc
    jp nz, $c2dc                                  ; $717a: $c2 $dc $c2

    nop                                           ; $717d: $00
    ld e, $c2                                     ; $717e: $1e $c2
    ld e, $02                                     ; $7180: $1e $02
    inc a                                         ; $7182: $3c
    add d                                         ; $7183: $82
    cp h                                          ; $7184: $bc
    add d                                         ; $7185: $82
    nop                                           ; $7186: $00
    ld a, $82                                     ; $7187: $3e $82
    ld a, $c3                                     ; $7189: $3e $c3
    add hl, sp                                    ; $718b: $39
    jp $c338                                      ; $718c: $c3 $38 $c3


    nop                                           ; $718f: $00
    ld hl, sp-$3f                                 ; $7190: $f8 $c1
    db $fc                                        ; $7192: $fc
    pop bc                                        ; $7193: $c1
    ld a, h                                       ; $7194: $7c
    pop bc                                        ; $7195: $c1
    ld a, h                                       ; $7196: $7c
    ret nz                                        ; $7197: $c0

    nop                                           ; $7198: $00
    ld a, [hl]                                    ; $7199: $7e
    ret nz                                        ; $719a: $c0

    ld a, a                                       ; $719b: $7f
    ccf                                           ; $719c: $3f
    daa                                           ; $719d: $27
    cp a                                          ; $719e: $bf
    ret nz                                        ; $719f: $c0

    jr c, jr_0cf_71a2                             ; $71a0: $38 $00

jr_0cf_71a2:
    add a                                         ; $71a2: $87
    ld c, b                                       ; $71a3: $48
    rst $00                                       ; $71a4: $c7
    ld b, a                                       ; $71a5: $47
    rst $28                                       ; $71a6: $ef
    ld a, a                                       ; $71a7: $7f
    ccf                                           ; $71a8: $3f
    ld h, a                                       ; $71a9: $67
    nop                                           ; $71aa: $00
    add b                                         ; $71ab: $80
    dec de                                        ; $71ac: $1b
    ld e, b                                       ; $71ad: $58
    ld a, b                                       ; $71ae: $78
    push af                                       ; $71af: $f5
    ld sp, hl                                     ; $71b0: $f9
    db $f4                                        ; $71b1: $f4
    inc e                                         ; $71b2: $1c
    nop                                           ; $71b3: $00
    db $e4                                        ; $71b4: $e4
    dec a                                         ; $71b5: $3d
    call nz, $c43d                                ; $71b6: $c4 $3d $c4
    add hl, sp                                    ; $71b9: $39
    ret z                                         ; $71ba: $c8

    add hl, de                                    ; $71bb: $19
    nop                                           ; $71bc: $00

jr_0cf_71bd:
    add sp, $30                                   ; $71bd: $e8 $30
    ret nc                                        ; $71bf: $d0

    ld [bc], a                                    ; $71c0: $02
    sbc [hl]                                      ; $71c1: $9e
    ld b, d                                       ; $71c2: $42
    ld e, $dc                                     ; $71c3: $1e $dc
    sbc e                                         ; $71c5: $9b
    ld [bc], a                                    ; $71c6: $02
    nop                                           ; $71c7: $00
    add d                                         ; $71c8: $82
    ld e, [hl]                                    ; $71c9: $5e
    ld a, $00                                     ; $71ca: $3e $00

jr_0cf_71cc:
    adc d                                         ; $71cc: $8a
    nop                                           ; $71cd: $00
    ret nz                                        ; $71ce: $c0

    ret nz                                        ; $71cf: $c0

    nop                                           ; $71d0: $00
    inc b                                         ; $71d1: $04
    jr z, jr_0cf_71d4                             ; $71d2: $28 $00

jr_0cf_71d4:
    add b                                         ; $71d4: $80
    ld a, a                                       ; $71d5: $7f
    rst $38                                       ; $71d6: $ff
    nop                                           ; $71d7: $00
    add b                                         ; $71d8: $80
    jp $e7d8                                      ; $71d9: $c3 $d8 $e7


    nop                                           ; $71dc: $00
    ret nz                                        ; $71dd: $c0

    rst $18                                       ; $71de: $df
    rst $28                                       ; $71df: $ef
    ldh [rP1], a                                  ; $71e0: $e0 $00
    ldh [$0b], a                                  ; $71e2: $e0 $0b
    call c, $ff00                                 ; $71e4: $dc $00 $ff
    nop                                           ; $71e7: $00
    nop                                           ; $71e8: $00
    nop                                           ; $71e9: $00
    ldh [$cd], a                                  ; $71ea: $e0 $cd
    call nz, Call_000_0098                        ; $71ec: $c4 $98 $00
    cp h                                          ; $71ef: $bc
    sbc $7c                                       ; $71f0: $de $7c
    cp [hl]                                       ; $71f2: $be
    ld h, b                                       ; $71f3: $60
    sbc h                                         ; $71f4: $9c
    pop af                                        ; $71f5: $f1
    dec c                                         ; $71f6: $0d
    add b                                         ; $71f7: $80
    db $10                                        ; $71f8: $10
    ld [$fd03], sp                                ; $71f9: $08 $03 $fd
    inc bc                                        ; $71fc: $03
    dec a                                         ; $71fd: $3d
    ld e, $1c                                     ; $71fe: $1e $1c
    ld c, $00                                     ; $7200: $0e $00
    ld c, h                                       ; $7202: $4c
    ld h, $e4                                     ; $7203: $26 $e4
    ld [hl], $f4                                  ; $7205: $36 $f4
    nop                                           ; $7207: $00
    cp $fe                                        ; $7208: $fe $fe
    nop                                           ; $720a: $00
    nop                                           ; $720b: $00
    nop                                           ; $720c: $00
    ld bc, $00ea                                  ; $720d: $01 $ea $00
    nop                                           ; $7210: $00
    rst $38                                       ; $7211: $ff
    ld a, a                                       ; $7212: $7f
    ret nz                                        ; $7213: $c0

    ld a, a                                       ; $7214: $7f
    ret nz                                        ; $7215: $c0

jr_0cf_7216:
    ld a, h                                       ; $7216: $7c
    pop bc                                        ; $7217: $c1
    ld a, h                                       ; $7218: $7c
    nop                                           ; $7219: $00
    ret nz                                        ; $721a: $c0

    ld a, b                                       ; $721b: $78
    ret nz                                        ; $721c: $c0

    ld a, b                                       ; $721d: $78
    ld a, [c]                                     ; $721e: $f2
    ld sp, $31f2                                  ; $721f: $31 $f2 $31
    nop                                           ; $7222: $00
    rst $38                                       ; $7223: $ff
    rst $38                                       ; $7224: $ff
    ld bc, $c102                                  ; $7225: $01 $02 $c1
    ret nz                                        ; $7228: $c0

    ldh a, [$08]                                  ; $7229: $f0 $08
    nop                                           ; $722b: $00
    inc a                                         ; $722c: $3c
    ld b, h                                       ; $722d: $44
    inc c                                         ; $722e: $0c
    ld e, $ca                                     ; $722f: $1e $ca
    add $2e                                       ; $7231: $c6 $2e
    and $00                                       ; $7233: $e6 $00
    nop                                           ; $7235: $00
    rst $38                                       ; $7236: $ff
    sub e                                         ; $7237: $93
    inc de                                        ; $7238: $13
    ld h, h                                       ; $7239: $64
    and b                                         ; $723a: $a0
    sub h                                         ; $723b: $94
    ld [hl], d                                    ; $723c: $72
    nop                                           ; $723d: $00
    sub h                                         ; $723e: $94
    rst $20                                       ; $723f: $e7
    jp nc, Jump_0cf_63b1                          ; $7240: $d2 $b1 $63

    or l                                          ; $7243: $b5
    ld h, e                                       ; $7244: $63
    push af                                       ; $7245: $f5
    nop                                           ; $7246: $00
    cp $00                                        ; $7247: $fe $00
    ld [bc], a                                    ; $7249: $02
    db $fc                                        ; $724a: $fc
    ld [bc], a                                    ; $724b: $02
    db $fc                                        ; $724c: $fc
    add d                                         ; $724d: $82
    db $fc                                        ; $724e: $fc
    jr nz, jr_0cf_728f                            ; $724f: $20 $3e

    cp h                                          ; $7251: $bc
    ld [bc], a                                    ; $7252: $02
    jr jr_0cf_7216                                ; $7253: $18 $c1

    or $c1                                        ; $7255: $f6 $c1
    or $c0                                        ; $7257: $f6 $c0
    ld bc, $c170                                  ; $7259: $01 $70 $c1
    ld [hl], b                                    ; $725c: $70
    jp $c73b                                      ; $725d: $c3 $3b $c7


    scf                                           ; $7260: $37
    ld [bc], a                                    ; $7261: $02
    ld [$8600], sp                                ; $7262: $08 $00 $86
    ldh [$a0], a                                  ; $7265: $e0 $a0
    ld b, b                                       ; $7267: $40
    ld d, $0a                                     ; $7268: $16 $0a
    ld h, b                                       ; $726a: $60
    ccf                                           ; $726b: $3f
    nop                                           ; $726c: $00
    ccf                                           ; $726d: $3f
    ld e, h                                       ; $726e: $5c
    ld [hl], e                                    ; $726f: $73
    inc e                                         ; $7270: $1c
    add hl, de                                    ; $7271: $19
    ld l, d                                       ; $7272: $6a
    ld bc, $007f                                  ; $7273: $01 $7f $00
    ld h, e                                       ; $7276: $63
    or h                                          ; $7277: $b4
    inc bc                                        ; $7278: $03
    adc $36                                       ; $7279: $ce $36
    ld [hl], $0d                                  ; $727b: $36 $0d
    db $f4                                        ; $727d: $f4
    nop                                           ; $727e: $00
    ld hl, sp+$79                                 ; $727f: $f8 $79
    sbc h                                         ; $7281: $9c
    ld a, c                                       ; $7282: $79
    ld sp, $01ac                                  ; $7283: $31 $ac $01
    db $fc                                        ; $7286: $fc
    ld bc, $3e82                                  ; $7287: $01 $82 $3e
    ld [bc], a                                    ; $728a: $02
    ld a, $82                                     ; $728b: $3e $82
    ld a, $42                                     ; $728d: $3e $42

jr_0cf_728f:
    inc b                                         ; $728f: $04
    nop                                           ; $7290: $00
    nop                                           ; $7291: $00
    jp nz, $c21e                                  ; $7292: $c2 $1e $c2

    ld e, $82                                     ; $7295: $1e $82
    ld e, $73                                     ; $7297: $1e $73
    pop bc                                        ; $7299: $c1
    jr nz, jr_0cf_7316                            ; $729a: $20 $7a

    pop bc                                        ; $729c: $c1
    add e                                         ; $729d: $83
    ld [$c03e], sp                                ; $729e: $08 $3e $c0
    dec a                                         ; $72a1: $3d
    pop bc                                        ; $72a2: $c1
    jp nz, Jump_0cf_7800                          ; $72a3: $c2 $00 $78

    jp Jump_0cf_7c40                              ; $72a6: $c3 $40 $7c


    ld [bc], a                                    ; $72a9: $02
    ld a, a                                       ; $72aa: $7f
    rrca                                          ; $72ab: $0f
    ld [hl], a                                    ; $72ac: $77
    nop                                           ; $72ad: $00
    adc b                                         ; $72ae: $88
    dec sp                                        ; $72af: $3b
    ld b, a                                       ; $72b0: $47
    dec sp                                        ; $72b1: $3b
    rst $00                                       ; $72b2: $c7
    inc e                                         ; $72b3: $1c
    and b                                         ; $72b4: $a0
    rrca                                          ; $72b5: $0f
    nop                                           ; $72b6: $00
    db $10                                        ; $72b7: $10
    sub b                                         ; $72b8: $90
    adc a                                         ; $72b9: $8f
    add b                                         ; $72ba: $80
    db $fd                                        ; $72bb: $fd
    ld [c], a                                     ; $72bc: $e2
    inc e                                         ; $72bd: $1c
    call c, $2200                                 ; $72be: $dc $00 $22
    cp b                                          ; $72c1: $b8
    call nz, $cbf8                                ; $72c2: $c4 $f8 $cb
    ld [hl], h                                    ; $72c5: $74
    ld de, $020a                                  ; $72c6: $11 $0a $02
    xor $cb                                       ; $72c9: $ee $cb
    ret z                                         ; $72cb: $c8

    and d                                         ; $72cc: $a2
    cp h                                          ; $72cd: $bc
    jp nz, Jump_000_0080                          ; $72ce: $c2 $80 $00

    cp $80                                        ; $72d1: $fe $80
    inc b                                         ; $72d3: $04
    db $10                                        ; $72d4: $10
    ld a, [hl]                                    ; $72d5: $7e
    ld [bc], a                                    ; $72d6: $02
    ld a, [hl]                                    ; $72d7: $7e
    add d                                         ; $72d8: $82
    rst $00                                       ; $72d9: $c7
    ld c, b                                       ; $72da: $48
    ret nc                                        ; $72db: $d0

    nop                                           ; $72dc: $00
    ld c, a                                       ; $72dd: $4f
    ret c                                         ; $72de: $d8

    rra                                           ; $72df: $1f
    ld hl, sp+$3f                                 ; $72e0: $f8 $3f
    rst $00                                       ; $72e2: $c7
    ld a, b                                       ; $72e3: $78
    rst $00                                       ; $72e4: $c7
    nop                                           ; $72e5: $00
    ld a, b                                       ; $72e6: $78
    add b                                         ; $72e7: $80
    ld a, a                                       ; $72e8: $7f
    rst $38                                       ; $72e9: $ff

jr_0cf_72ea:
    nop                                           ; $72ea: $00
    jr jr_0cf_732c                                ; $72eb: $18 $3f

    inc bc                                        ; $72ed: $03
    nop                                           ; $72ee: $00
    jr @-$7b                                      ; $72ef: $18 $83

    ld l, l                                       ; $72f1: $6d
    db $d3                                        ; $72f2: $d3
    call z, $cf50                                 ; $72f3: $cc $50 $cf
    ld [$e700], sp                                ; $72f6: $08 $00 $e7
    rst $38                                       ; $72f9: $ff
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    nop                                           ; $72fc: $00
    and b                                         ; $72fd: $a0
    ld h, a                                       ; $72fe: $67
    ld h, e                                       ; $72ff: $63
    nop                                           ; $7300: $00
    adc h                                         ; $7301: $8c
    rrca                                          ; $7302: $0f
    ret nc                                        ; $7303: $d0

    rra                                           ; $7304: $1f
    ret nz                                        ; $7305: $c0

    jr @-$37                                      ; $7306: $18 $c7

    ldh [rLCDC], a                                ; $7308: $e0 $40
    ccf                                           ; $730a: $3f
    db $10                                        ; $730b: $10
    ld [$823c], sp                                ; $730c: $08 $3c $82
    add h                                         ; $730f: $84
    add d                                         ; $7310: $82
    ld d, d                                       ; $7311: $52
    ret nc                                        ; $7312: $d0

    nop                                           ; $7313: $00
    ld l, $ec                                     ; $7314: $2e $ec

jr_0cf_7316:
    and d                                         ; $7316: $a2
    ld h, b                                       ; $7317: $60
    ld [bc], a                                    ; $7318: $02
    ld [hl], b                                    ; $7319: $70
    nop                                           ; $731a: $00
    cp $00                                        ; $731b: $fe $00
    cp $00                                        ; $731d: $fe $00
    nop                                           ; $731f: $00
    ld bc, $00c2                                  ; $7320: $01 $c2 $00
    inc d                                         ; $7323: $14
    add b                                         ; $7324: $80
    ld a, a                                       ; $7325: $7f
    cp a                                          ; $7326: $bf
    ld [bc], a                                    ; $7327: $02
    jr nc, jr_0cf_72ea                            ; $7328: $30 $c0

jr_0cf_732a:
    ld [bc], a                                    ; $732a: $02
    nop                                           ; $732b: $00

jr_0cf_732c:
    rst $38                                       ; $732c: $ff
    nop                                           ; $732d: $00
    nop                                           ; $732e: $00
    inc bc                                        ; $732f: $03
    rlca                                          ; $7330: $07
    ld [$d2e5], a                                 ; $7331: $ea $e5 $d2
    call $92a0                                    ; $7334: $cd $a0 $92
    nop                                           ; $7337: $00
    and h                                         ; $7338: $a4

jr_0cf_7339:
    adc b                                         ; $7339: $88
    dec d                                         ; $733a: $15
    ld e, b                                       ; $733b: $58
    ret nc                                        ; $733c: $d0

    dec d                                         ; $733d: $15
    nop                                           ; $733e: $00
    rst $38                                       ; $733f: $ff
    nop                                           ; $7340: $00
    ldh [$60], a                                  ; $7341: $e0 $60
    ret nz                                        ; $7343: $c0

    ld h, b                                       ; $7344: $60
    ret nc                                        ; $7345: $d0

    jr nc, jr_0cf_73a8                            ; $7346: $30 $60

    cp b                                          ; $7348: $b8
    nop                                           ; $7349: $00
    nop                                           ; $734a: $00
    nop                                           ; $734b: $00
    add h                                         ; $734c: $84
    inc a                                         ; $734d: $3c
    ld e, d                                       ; $734e: $5a
    ld l, h                                       ; $734f: $6c
    cp $00                                        ; $7350: $fe $00
    jr nz, jr_0cf_7356                            ; $7352: $20 $02

    db $fc                                        ; $7354: $fc
    ld [bc], a                                    ; $7355: $02

jr_0cf_7356:
    jr z, jr_0cf_732a                             ; $7356: $28 $d2

    db $fc                                        ; $7358: $fc
    cp $fc                                        ; $7359: $fe $fc
    ld a, $10                                     ; $735b: $3e $10
    cp $3d                                        ; $735d: $fe $3d
    db $fc                                        ; $735f: $fc
    ld [bc], a                                    ; $7360: $02
    nop                                           ; $7361: $00
    db $fd                                        ; $7362: $fd
    ret nz                                        ; $7363: $c0

    ld a, [hl]                                    ; $7364: $7e
    pop bc                                        ; $7365: $c1
    nop                                           ; $7366: $00
    ld a, a                                       ; $7367: $7f
    pop bc                                        ; $7368: $c1
    ccf                                           ; $7369: $3f
    pop bc                                        ; $736a: $c1
    ccf                                           ; $736b: $3f
    sub b                                         ; $736c: $90
    ld b, h                                       ; $736d: $44
    sub [hl]                                      ; $736e: $96
    nop                                           ; $736f: $00
    ld c, a                                       ; $7370: $4f
    rrca                                          ; $7371: $0f
    ret nc                                        ; $7372: $d0

    ld b, e                                       ; $7373: $43
    inc bc                                        ; $7374: $03
    dec sp                                        ; $7375: $3b
    inc b                                         ; $7376: $04
    ld b, a                                       ; $7377: $47
    nop                                           ; $7378: $00
    ld a, b                                       ; $7379: $78
    inc hl                                        ; $737a: $23
    jr @+$65                                      ; $737b: $18 $63

    ld d, b                                       ; $737d: $50
    ld e, b                                       ; $737e: $58
    ld e, $44                                     ; $737f: $1e $44
    nop                                           ; $7381: $00
    ld [bc], a                                    ; $7382: $02
    push af                                       ; $7383: $f5
    add hl, de                                    ; $7384: $19
    nop                                           ; $7385: $00
    dec c                                         ; $7386: $0d
    ld [hl], b                                    ; $7387: $70
    ld a, [c]                                     ; $7388: $f2
    adc d                                         ; $7389: $8a
    ld bc, $65f2                                  ; $738a: $01 $f2 $65
    rla                                           ; $738d: $17
    dec l                                         ; $738e: $2d
    rra                                           ; $738f: $1f
    inc bc                                        ; $7390: $03
    ld a, l                                       ; $7391: $7d
    ld [bc], a                                    ; $7392: $02
    jr @+$7a                                      ; $7393: $18 $78

    ld [bc], a                                    ; $7395: $02
    inc a                                         ; $7396: $3c
    nop                                           ; $7397: $00
    inc b                                         ; $7398: $04
    ld [$1075], sp                                ; $7399: $08 $75 $10
    inc b                                         ; $739c: $04
    jr nc, jr_0cf_741d                            ; $739d: $30 $7e

    ret nz                                        ; $739f: $c0

    ld b, c                                       ; $73a0: $41
    nop                                           ; $73a1: $00
    ld a, [hl]                                    ; $73a2: $7e
    ld b, c                                       ; $73a3: $41
    ld a, h                                       ; $73a4: $7c
    cp a                                          ; $73a5: $bf
    add b                                         ; $73a6: $80
    cp h                                          ; $73a7: $bc

jr_0cf_73a8:
    add e                                         ; $73a8: $83
    dec sp                                        ; $73a9: $3b
    nop                                           ; $73aa: $00
    sbc a                                         ; $73ab: $9f
    jr jr_0cf_7339                                ; $73ac: $18 $8b

    ld h, b                                       ; $73ae: $60
    inc l                                         ; $73af: $2c
    ret nz                                        ; $73b0: $c0

    rlca                                          ; $73b1: $07
    ld a, [bc]                                    ; $73b2: $0a
    nop                                           ; $73b3: $00
    ld a, [c]                                     ; $73b4: $f2
    ld [$f0f0], sp                                ; $73b5: $08 $f0 $f0
    rlca                                          ; $73b8: $07
    rst $30                                       ; $73b9: $f7
    rlca                                          ; $73ba: $07
    ld [hl], b                                    ; $73bb: $70
    nop                                           ; $73bc: $00
    rst $28                                       ; $73bd: $ef
    ld h, b                                       ; $73be: $60
    ld e, a                                       ; $73bf: $5f
    rla                                           ; $73c0: $17
    rst $00                                       ; $73c1: $c7
    dec de                                        ; $73c2: $1b
    add e                                         ; $73c3: $83
    ld h, [hl]                                    ; $73c4: $66
    call nc, $2038                                ; $73c5: $d4 $38 $20
    ld b, b                                       ; $73c8: $40
    ld [$8006], sp                                ; $73c9: $08 $06 $80
    nop                                           ; $73cc: $00
    inc a                                         ; $73cd: $3c
    ld a, [hl]                                    ; $73ce: $7e
    nop                                           ; $73cf: $00
    cp a                                          ; $73d0: $bf
    ld b, a                                       ; $73d1: $47
    ld bc, $7fbf                                  ; $73d2: $01 $bf $7f
    ld a, $f2                                     ; $73d5: $3e $f2
    ccf                                           ; $73d7: $3f
    pop bc                                        ; $73d8: $c1
    add b                                         ; $73d9: $80
    cp [hl]                                       ; $73da: $be
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    add b                                         ; $73dd: $80
    ld [$4fc0], sp                                ; $73de: $08 $c0 $4f
    add a                                         ; $73e1: $87
    ld b, a                                       ; $73e2: $47
    ld b, e                                       ; $73e3: $43
    and e                                         ; $73e4: $a3
    nop                                           ; $73e5: $00
    db $fc                                        ; $73e6: $fc
    sbc a                                         ; $73e7: $9f
    ld a, h                                       ; $73e8: $7c
    dec e                                         ; $73e9: $1d
    rst $38                                       ; $73ea: $ff
    nop                                           ; $73eb: $00
    nop                                           ; $73ec: $00
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    ld c, b                                       ; $73ef: $48
    pop hl                                        ; $73f0: $e1
    ret z                                         ; $73f1: $c8

    pop hl                                        ; $73f2: $e1
    inc e                                         ; $73f3: $1c
    adc h                                         ; $73f4: $8c
    inc a                                         ; $73f5: $3c
    adc h                                         ; $73f6: $8c
    inc c                                         ; $73f7: $0c
    ld [hl], c                                    ; $73f8: $71
    and b                                         ; $73f9: $a0
    ld h, c                                       ; $73fa: $61

jr_0cf_73fb:
    ld h, b                                       ; $73fb: $60
    db $10                                        ; $73fc: $10
    ld [$0878], sp                                ; $73fd: $08 $78 $08
    db $fd                                        ; $7400: $fd
    inc bc                                        ; $7401: $03
    nop                                           ; $7402: $00
    ld bc, $1e03                                  ; $7403: $01 $03 $1e
    db $fc                                        ; $7406: $fc
    ld c, $fc                                     ; $7407: $0e $fc
    nop                                           ; $7409: $00
    cp $00                                        ; $740a: $fe $00
    cp $00                                        ; $740c: $fe $00
    nop                                           ; $740e: $00
    ld bc, $00f2                                  ; $740f: $01 $f2 $00
    nop                                           ; $7412: $00
    add b                                         ; $7413: $80
    rst $38                                       ; $7414: $ff
    and d                                         ; $7415: $a2
    jp nz, $cd2d                                  ; $7416: $c2 $2d $cd

    dec de                                        ; $7419: $1b
    rst $18                                       ; $741a: $df
    nop                                           ; $741b: $00
    or a                                          ; $741c: $b7

jr_0cf_741d:
    ld a, c                                       ; $741d: $79
    xor a                                         ; $741e: $af
    ld [hl], d                                    ; $741f: $72
    sbc e                                         ; $7420: $9b
    ldh [$99], a                                  ; $7421: $e0 $99
    jp nz, $ff00                                  ; $7423: $c2 $00 $ff

    rst $38                                       ; $7426: $ff
    ld bc, $157e                                  ; $7427: $01 $7e $15
    db $ed                                        ; $742a: $ed
    dec bc                                        ; $742b: $0b
    ld sp, hl                                     ; $742c: $f9
    nop                                           ; $742d: $00
    push bc                                       ; $742e: $c5
    ld [hl], d                                    ; $742f: $72
    or [hl]                                       ; $7430: $b6
    push af                                       ; $7431: $f5
    ld c, h                                       ; $7432: $4c
    sbc d                                         ; $7433: $9a
    dec [hl]                                      ; $7434: $35
    and c                                         ; $7435: $a1
    nop                                           ; $7436: $00
    rst $38                                       ; $7437: $ff
    nop                                           ; $7438: $00
    inc b                                         ; $7439: $04
    ld c, h                                       ; $743a: $4c
    or a                                          ; $743b: $b7
    ret z                                         ; $743c: $c8

    dec bc                                        ; $743d: $0b
    ret nc                                        ; $743e: $d0

    nop                                           ; $743f: $00
    ld l, e                                       ; $7440: $6b
    ret c                                         ; $7441: $d8

    and e                                         ; $7442: $a3
    sub b                                         ; $7443: $90
    ld b, [hl]                                    ; $7444: $46
    ld hl, $d344                                  ; $7445: $21 $44 $d3
    nop                                           ; $7448: $00
    cp $fe                                        ; $7449: $fe $fe
    add d                                         ; $744b: $82
    ld [hl], d                                    ; $744c: $72
    ld d, d                                       ; $744d: $52
    xor d                                         ; $744e: $aa
    ld b, [hl]                                    ; $744f: $46
    or d                                          ; $7450: $b2
    nop                                           ; $7451: $00
    jp nz, $c22e                                  ; $7452: $c2 $2e $c2

    ld a, $b2                                     ; $7455: $3e $b2
    ld c, $22                                     ; $7457: $0e $22
    ld e, [hl]                                    ; $7459: $5e
    nop                                           ; $745a: $00

jr_0cf_745b:
    or a                                          ; $745b: $b7
    ret nc                                        ; $745c: $d0

    or a                                          ; $745d: $b7
    db $e4                                        ; $745e: $e4
    ld [hl], e                                    ; $745f: $73
    call nz, $c06f                                ; $7460: $c4 $6f $c0
    nop                                           ; $7463: $00
    ld a, l                                       ; $7464: $7d
    ret nz                                        ; $7465: $c0

    ld a, d                                       ; $7466: $7a
    pop bc                                        ; $7467: $c1
    xor b                                         ; $7468: $a8
    jp nz, $c4aa                                  ; $7469: $c2 $aa $c4

    nop                                           ; $746c: $00
    ld l, d                                       ; $746d: $6a
    ld b, e                                       ; $746e: $43
    call nc, $a087                                ; $746f: $d4 $87 $a0
    jr jr_0cf_73fb                                ; $7472: $18 $87

    inc sp                                        ; $7474: $33
    nop                                           ; $7475: $00
    dec bc                                        ; $7476: $0b
    ld a, [hl-]                                   ; $7477: $3a
    rlca                                          ; $7478: $07
    ld [hl], $38                                  ; $7479: $36 $38
    add a                                         ; $747b: $87
    ccf                                           ; $747c: $3f
    ld b, e                                       ; $747d: $43
    nop                                           ; $747e: $00
    ld e, [hl]                                    ; $747f: $5e
    ld l, b                                       ; $7480: $68
    ld c, $e4                                     ; $7481: $0e $e4
    ld [de], a                                    ; $7483: $12
    inc c                                         ; $7484: $0c
    ld [hl], b                                    ; $7485: $70
    add sp, $00                                   ; $7486: $e8 $00
    ld d, l                                       ; $7488: $55
    jr c, @+$57                                   ; $7489: $38 $55

    add hl, sp                                    ; $748b: $39
    ld [hl], b                                    ; $748c: $70
    ld d, c                                       ; $748d: $51
    or $19                                        ; $748e: $f6 $19
    nop                                           ; $7490: $00
    db $fc                                        ; $7491: $fc
    ld [hl-], a                                   ; $7492: $32
    ret c                                         ; $7493: $d8

    ld b, d                                       ; $7494: $42
    jr c, jr_0cf_74a1                             ; $7495: $38 $0a

    ld [hl], b                                    ; $7497: $70
    ld [de], a                                    ; $7498: $12
    nop                                           ; $7499: $00
    ld b, $32                                     ; $749a: $06 $32
    ld c, [hl]                                    ; $749c: $4e
    ld [hl+], a                                   ; $749d: $22
    ld c, h                                       ; $749e: $4c
    ld b, d                                       ; $749f: $42
    ld e, h                                       ; $74a0: $5c

jr_0cf_74a1:
    ld b, d                                       ; $74a1: $42
    nop                                           ; $74a2: $00
    adc b                                         ; $74a3: $88
    call nz, $c49a                                ; $74a4: $c4 $9a $c4
    sbc b                                         ; $74a7: $98
    ret nz                                        ; $74a8: $c0

    cp c                                          ; $74a9: $b9
    add $00                                       ; $74aa: $c6 $00
    halt                                          ; $74ac: $76
    pop bc                                        ; $74ad: $c1
    ld l, [hl]                                    ; $74ae: $6e
    pop bc                                        ; $74af: $c1
    ld e, [hl]                                    ; $74b0: $5e
    pop bc                                        ; $74b1: $c1
    ld e, h                                       ; $74b2: $5c
    jp nz, Jump_0cf_7804                          ; $74b3: $c2 $04 $78

    ld b, a                                       ; $74b6: $47
    ld [hl], b                                    ; $74b7: $70
    ld c, a                                       ; $74b8: $4f
    ccf                                           ; $74b9: $3f
    ld [bc], a                                    ; $74ba: $02
    nop                                           ; $74bb: $00
    ld a, $4f                                     ; $74bc: $3e $4f
    nop                                           ; $74be: $00
    rra                                           ; $74bf: $1f
    ld h, $2f                                     ; $74c0: $26 $2f
    jr nc, jr_0cf_745b                            ; $74c2: $30 $97

    ret c                                         ; $74c4: $d8

    ld h, d                                       ; $74c5: $62
    sub h                                         ; $74c6: $94
    nop                                           ; $74c7: $00
    ld c, d                                       ; $74c8: $4a
    adc h                                         ; $74c9: $8c
    ld [hl], e                                    ; $74ca: $73
    adc l                                         ; $74cb: $8d
    ld [bc], a                                    ; $74cc: $02
    db $fc                                        ; $74cd: $fc
    ld a, h                                       ; $74ce: $7c
    adc d                                         ; $74cf: $8a
    ld bc, $f59c                                  ; $74d0: $01 $9c $f5
    ld [hl], c                                    ; $74d3: $71
    ld sp, hl                                     ; $74d4: $f9
    ld l, c                                       ; $74d5: $69
    pop af                                        ; $74d6: $f1
    ld e, h                                       ; $74d7: $5c
    inc [hl]                                      ; $74d8: $34
    nop                                           ; $74d9: $00
    nop                                           ; $74da: $00
    ld c, h                                       ; $74db: $4c
    ld b, d                                       ; $74dc: $42
    ld l, h                                       ; $74dd: $6c
    ld h, d                                       ; $74de: $62
    ld c, $62                                     ; $74df: $0e $62
    ld c, $e2                                     ; $74e1: $0e $e2
    nop                                           ; $74e3: $00
    xor d                                         ; $74e4: $aa
    call c, $e4d2                                 ; $74e5: $dc $d2 $e4
    cp d                                          ; $74e8: $ba
    call nz, $c8b0                                ; $74e9: $c4 $b0 $c8
    nop                                           ; $74ec: $00
    ldh a, [rSCX]                                 ; $74ed: $f0 $43
    ldh [rBGP], a                                 ; $74ef: $e0 $47
    ret nz                                        ; $74f1: $c0

    ld c, a                                       ; $74f2: $4f
    rst $38                                       ; $74f3: $ff
    ld a, a                                       ; $74f4: $7f
    nop                                           ; $74f5: $00
    rst $38                                       ; $74f6: $ff
    nop                                           ; $74f7: $00
    nop                                           ; $74f8: $00
    nop                                           ; $74f9: $00
    and $05                                       ; $74fa: $e6 $05

jr_0cf_74fc:
    ret z                                         ; $74fc: $c8

    jr nc, jr_0cf_74ff                            ; $74fd: $30 $00

jr_0cf_74ff:
    inc a                                         ; $74ff: $3c
    ld a, [hl]                                    ; $7500: $7e
    sbc [hl]                                      ; $7501: $9e
    ld a, $c0                                     ; $7502: $3e $c0
    add $ff                                       ; $7504: $c6 $ff
    nop                                           ; $7506: $00
    add b                                         ; $7507: $80

Jump_0cf_7508:
    db $10                                        ; $7508: $10
    ld [$16f4], sp                                ; $7509: $08 $f4 $16
    inc b                                         ; $750c: $04
    ld b, $07                                     ; $750d: $06 $07
    ld h, $13                                     ; $750f: $26 $13
    db $10                                        ; $7511: $10
    ld hl, $7303                                  ; $7512: $21 $03 $73
    db $10                                        ; $7515: $10
    jr jr_0cf_74fc                                ; $7516: $18 $e4

    ld a, [c]                                     ; $7518: $f2
    ld [hl], h                                    ; $7519: $74
    ld [hl], d                                    ; $751a: $72
    nop                                           ; $751b: $00
    ld [bc], a                                    ; $751c: $02
    ld [hl], $82                                  ; $751d: $36 $82
    ld [de], a                                    ; $751f: $12
    ld b, d                                       ; $7520: $42
    sub d                                         ; $7521: $92
    cp $fe                                        ; $7522: $fe $fe
    ld b, b                                       ; $7524: $40
    cp $30                                        ; $7525: $fe $30
    nop                                           ; $7527: $00
    nop                                           ; $7528: $00
    ld bc, $00e6                                  ; $7529: $01 $e6 $00
    inc b                                         ; $752c: $04
    add b                                         ; $752d: $80
    rst $38                                       ; $752e: $ff
    cp a                                          ; $752f: $bf
    ret nz                                        ; $7530: $c0

    ld a, a                                       ; $7531: $7f
    ld [bc], a                                    ; $7532: $02
    jr nc, @+$80                                  ; $7533: $30 $7e

    ret nz                                        ; $7535: $c0

    nop                                           ; $7536: $00
    rst $38                                       ; $7537: $ff
    nop                                           ; $7538: $00
    ld hl, sp-$07                                 ; $7539: $f8 $f9
    ld [bc], a                                    ; $753b: $02
    ldh a, [rDIV]                                 ; $753c: $f0 $04
    ldh [rP1], a                                  ; $753e: $e0 $00
    ld [$13c0], sp                                ; $7540: $08 $c0 $13
    add b                                         ; $7543: $80
    nop                                           ; $7544: $00
    inc c                                         ; $7545: $0c
    ld b, e                                       ; $7546: $43
    ldh a, [rP1]                                  ; $7547: $f0 $00
    rst $38                                       ; $7549: $ff
    nop                                           ; $754a: $00
    nop                                           ; $754b: $00
    nop                                           ; $754c: $00
    rlca                                          ; $754d: $07
    nop                                           ; $754e: $00
    jr c, jr_0cf_7551                             ; $754f: $38 $00

jr_0cf_7551:
    nop                                           ; $7551: $00
    rst $00                                       ; $7552: $c7
    rst $00                                       ; $7553: $c7
    jr c, jr_0cf_7575                             ; $7554: $38 $1f

    ccf                                           ; $7556: $3f
    rst $08                                       ; $7557: $cf
    ret nc                                        ; $7558: $d0

    ld d, b                                       ; $7559: $50
    nop                                           ; $755a: $00
    cp $00                                        ; $755b: $fe $00
    ld [bc], a                                    ; $755d: $02
    db $fc                                        ; $755e: $fc
    db $fc                                        ; $755f: $fc
    add d                                         ; $7560: $82
    db $fc                                        ; $7561: $fc
    ld a, [c]                                     ; $7562: $f2
    nop                                           ; $7563: $00
    db $f4                                        ; $7564: $f4
    ld [bc], a                                    ; $7565: $02
    ld hl, sp-$0e                                 ; $7566: $f8 $f2
    ld a, [bc]                                    ; $7568: $0a
    sbc b                                         ; $7569: $98
    ld a, [bc]                                    ; $756a: $0a
    ld [$7f00], sp                                ; $756b: $08 $00 $7f
    ret nz                                        ; $756e: $c0

    ld a, h                                       ; $756f: $7c
    ret nz                                        ; $7570: $c0

    ld hl, sp+$43                                 ; $7571: $f8 $43
    pop af                                        ; $7573: $f1
    ld b, h                                       ; $7574: $44

jr_0cf_7575:
    nop                                           ; $7575: $00
    cp b                                          ; $7576: $b8
    jp nz, $c0bb                                  ; $7577: $c2 $bb $c0

    ld a, [$f040]                                 ; $757a: $fa $40 $f0
    ld b, l                                       ; $757d: $45
    nop                                           ; $757e: $00
    rra                                           ; $757f: $1f
    nop                                           ; $7580: $00
    call z, $d483                                 ; $7581: $cc $83 $d4
    ld c, b                                       ; $7584: $48
    xor d                                         ; $7585: $aa
    stop                                          ; $7586: $10 $00
    sbc h                                         ; $7588: $9c
    ccf                                           ; $7589: $3f
    sbc a                                         ; $758a: $9f
    ccf                                           ; $758b: $3f
    cp a                                          ; $758c: $bf
    rra                                           ; $758d: $1f
    or b                                          ; $758e: $b0
    rrca                                          ; $758f: $0f
    nop                                           ; $7590: $00
    nop                                           ; $7591: $00
    pop af                                        ; $7592: $f1
    db $ed                                        ; $7593: $ed
    ld e, $05                                     ; $7594: $1e $05
    dec c                                         ; $7596: $0d
    jp nz, Jump_000_0098                          ; $7597: $c2 $98 $00

    db $ed                                        ; $759a: $ed
    add hl, de                                    ; $759b: $19
    rrca                                          ; $759c: $0f
    ld sp, hl                                     ; $759d: $f9
    ldh [rNR30], a                                ; $759e: $e0 $1a
    db $e3                                        ; $75a0: $e3
    db $e4                                        ; $75a1: $e4
    nop                                           ; $75a2: $00
    add $c0                                       ; $75a3: $c6 $c0
    ld c, $f0                                     ; $75a5: $0e $f0
    adc $e8                                       ; $75a7: $ce $e8
    ld l, $38                                     ; $75a9: $2e $38
    nop                                           ; $75ab: $00
    call nc, $fcc6                                ; $75ac: $d4 $c6 $fc
    cp $fe                                        ; $75af: $fe $fe
    ld [bc], a                                    ; $75b1: $02
    ld a, $c2                                     ; $75b2: $3e $c2
    inc b                                         ; $75b4: $04
    cp a                                          ; $75b5: $bf
    ld c, c                                       ; $75b6: $49
    cp [hl]                                       ; $75b7: $be
    ld b, [hl]                                    ; $75b8: $46
    ld a, [hl]                                    ; $75b9: $7e
    ld b, h                                       ; $75ba: $44
    nop                                           ; $75bb: $00
    ld a, h                                       ; $75bc: $7c
    pop bc                                        ; $75bd: $c1
    nop                                           ; $75be: $00
    ld a, h                                       ; $75bf: $7c
    pop bc                                        ; $75c0: $c1
    cp l                                          ; $75c1: $bd
    ld c, h                                       ; $75c2: $4c
    or c                                          ; $75c3: $b1
    ld e, b                                       ; $75c4: $58
    rrca                                          ; $75c5: $0f
    ld l, c                                       ; $75c6: $69
    nop                                           ; $75c7: $00
    ld a, $62                                     ; $75c8: $3e $62
    call c, $a021                                 ; $75ca: $dc $21 $a0
    jp $1f41                                      ; $75cd: $c3 $41 $1f


    nop                                           ; $75d0: $00
    sub d                                         ; $75d1: $92
    rrca                                          ; $75d2: $0f
    xor $03                                       ; $75d3: $ee $03
    sub e                                         ; $75d5: $93
    ld h, e                                       ; $75d6: $63
    xor d                                         ; $75d7: $aa
    add hl, bc                                    ; $75d8: $09
    nop                                           ; $75d9: $00
    ld a, c                                       ; $75da: $79
    ld bc, $c4c1                                  ; $75db: $01 $c1 $c4
    ld [$01fe], sp                                ; $75de: $08 $fe $01
    db $fd                                        ; $75e1: $fd
    nop                                           ; $75e2: $00
    ld [hl], h                                    ; $75e3: $74
    adc d                                         ; $75e4: $8a
    ld e, $2a                                     ; $75e5: $1e $2a
    dec c                                         ; $75e7: $0d
    rra                                           ; $75e8: $1f
    ld c, $fc                                     ; $75e9: $0e $fc
    nop                                           ; $75eb: $00
    ld e, $9c                                     ; $75ec: $1e $9c
    ld e, $7c                                     ; $75ee: $1e $7c
    ld c, $9c                                     ; $75f0: $0e $9c
    call z, Call_000_128e                         ; $75f2: $cc $8e $12
    cp h                                          ; $75f5: $bc
    cp [hl]                                       ; $75f6: $be
    ld [bc], a                                    ; $75f7: $02
    adc c                                         ; $75f8: $89
    nop                                           ; $75f9: $00
    pop bc                                        ; $75fa: $c1
    ld e, b                                       ; $75fb: $58
    add c                                         ; $75fc: $81
    nop                                           ; $75fd: $00
    cp a                                          ; $75fe: $bf
    nop                                           ; $75ff: $00

Jump_0cf_7600:
    ret nz                                        ; $7600: $c0

    sbc a                                         ; $7601: $9f
    ret nc                                        ; $7602: $d0

    rst $08                                       ; $7603: $cf
    ret z                                         ; $7604: $c8

    rst $00                                       ; $7605: $c7
    add b                                         ; $7606: $80
    ld a, a                                       ; $7607: $7f
    nop                                           ; $7608: $00
    rst $38                                       ; $7609: $ff
    nop                                           ; $760a: $00
    ld c, $f2                                     ; $760b: $0e $f2
    add a                                         ; $760d: $87
    ld a, c                                       ; $760e: $79
    ld b, $18                                     ; $760f: $06 $18
    ld [bc], a                                    ; $7611: $02
    add e                                         ; $7612: $83
    ldh [$f8], a                                  ; $7613: $e0 $f8
    ldh [$f8], a                                  ; $7615: $e0 $f8
    di                                            ; $7617: $f3
    cp h                                          ; $7618: $bc
    ld [$003a], sp                                ; $7619: $08 $3a $00
    dec [hl]                                      ; $761c: $35
    dec sp                                        ; $761d: $3b
    ld [hl], $1b                                  ; $761e: $36 $1b
    ld d, $9b                                     ; $7620: $16 $9b
    sub a                                         ; $7622: $97
    ld c, [hl]                                    ; $7623: $4e
    inc d                                         ; $7624: $14
    ld b, e                                       ; $7625: $43
    ld a, [hl]                                    ; $7626: $7e
    ld [hl], e                                    ; $7627: $73
    call z, $8208                                 ; $7628: $cc $08 $82
    cp l                                          ; $762b: $bd
    nop                                           ; $762c: $00
    add d                                         ; $762d: $82
    db $fc                                        ; $762e: $fc
    ld b, b                                       ; $762f: $40
    ld [bc], a                                    ; $7630: $02
    ld [bc], a                                    ; $7631: $02
    stop                                          ; $7632: $10 $00
    cp $fe                                        ; $7634: $fe $fe
    nop                                           ; $7636: $00
    nop                                           ; $7637: $00
    ld bc, $00e2                                  ; $7638: $01 $e2 $00
    ld [$7fff], sp                                ; $763b: $08 $ff $7f
    ret nz                                        ; $763e: $c0

    ld b, b                                       ; $763f: $40
    ld [bc], a                                    ; $7640: $02
    db $10                                        ; $7641: $10
    ld b, c                                       ; $7642: $41
    pop bc                                        ; $7643: $c1
    ld b, e                                       ; $7644: $43
    nop                                           ; $7645: $00
    cp b                                          ; $7646: $b8
    ld a, e                                       ; $7647: $7b
    or b                                          ; $7648: $b0
    ld [hl], a                                    ; $7649: $77
    rst $38                                       ; $764a: $ff
    nop                                           ; $764b: $00
    nop                                           ; $764c: $00
    jr nc, jr_0cf_764f                            ; $764d: $30 $00

jr_0cf_764f:
    jr nc, jr_0cf_769c                            ; $764f: $30 $4b

    ld a, b                                       ; $7651: $78
    rst $38                                       ; $7652: $ff
    ld sp, hl                                     ; $7653: $f9
    ld hl, sp-$27                                 ; $7654: $f8 $d9
    add [hl]                                      ; $7656: $86
    nop                                           ; $7657: $00
    xor [hl]                                      ; $7658: $ae
    sub c                                         ; $7659: $91
    jr nc, @-$7b                                  ; $765a: $30 $83

    rst $38                                       ; $765c: $ff
    nop                                           ; $765d: $00
    ld [hl], b                                    ; $765e: $70
    ld hl, sp+$00                                 ; $765f: $f8 $00
    ld a, b                                       ; $7661: $78
    ldh [$f8], a                                  ; $7662: $e0 $f8
    cp b                                          ; $7664: $b8
    and b                                         ; $7665: $a0
    sbc d                                         ; $7666: $9a
    ld b, b                                       ; $7667: $40
    dec de                                        ; $7668: $1b
    ld bc, $8b5b                                  ; $7669: $01 $5b $8b
    dec de                                        ; $766c: $1b
    ld b, e                                       ; $766d: $43
    cp $01                                        ; $766e: $fe $01
    ld [bc], a                                    ; $7670: $02
    ld [bc], a                                    ; $7671: $02
    stop                                          ; $7672: $10 $00
    add d                                         ; $7674: $82
    add c                                         ; $7675: $81
    jp nz, Jump_000_3cc1                          ; $7676: $c2 $c1 $3c

    cp [hl]                                       ; $7679: $be
    ld e, h                                       ; $767a: $5c
    sbc [hl]                                      ; $767b: $9e
    nop                                           ; $767c: $00
    adc h                                         ; $767d: $8c
    ld c, e                                       ; $767e: $4b
    adc c                                         ; $767f: $89
    ld c, d                                       ; $7680: $4a
    xor c                                         ; $7681: $a9
    ld h, e                                       ; $7682: $63
    xor [hl]                                      ; $7683: $ae
    ld h, h                                       ; $7684: $64
    nop                                           ; $7685: $00
    xor [hl]                                      ; $7686: $ae
    ld h, b                                       ; $7687: $60
    and [hl]                                      ; $7688: $a6
    ld h, b                                       ; $7689: $60
    call nz, $c074                                ; $768a: $c4 $74 $c0
    ld [hl], d                                    ; $768d: $72
    nop                                           ; $768e: $00
    and e                                         ; $768f: $a3
    ld h, d                                       ; $7690: $62
    ld b, d                                       ; $7691: $42
    inc e                                         ; $7692: $1c
    rlca                                          ; $7693: $07
    cpl                                           ; $7694: $2f
    rrca                                          ; $7695: $0f
    ld a, b                                       ; $7696: $78
    nop                                           ; $7697: $00
    ld a, a                                       ; $7698: $7f
    ld [hl], b                                    ; $7699: $70
    ld c, $31                                     ; $769a: $0e $31

jr_0cf_769c:
    ld a, e                                       ; $769c: $7b
    ld c, $12                                     ; $769d: $0e $12
    inc c                                         ; $769f: $0c
    nop                                           ; $76a0: $00
    ld l, h                                       ; $76a1: $6c
    ld d, [hl]                                    ; $76a2: $56
    db $dd                                        ; $76a3: $dd
    xor [hl]                                      ; $76a4: $ae
    dec bc                                        ; $76a5: $0b
    inc bc                                        ; $76a6: $03
    ld a, c                                       ; $76a7: $79
    add c                                         ; $76a8: $81
    nop                                           ; $76a9: $00
    db $fd                                        ; $76aa: $fd
    dec b                                         ; $76ab: $05
    ld b, $f6                                     ; $76ac: $06 $f6
    ld [bc], a                                    ; $76ae: $02
    ld hl, sp+$06                                 ; $76af: $f8 $06
    inc b                                         ; $76b1: $04
    nop                                           ; $76b2: $00
    ld c, $cc                                     ; $76b3: $0e $cc
    ld c, $6c                                     ; $76b5: $0e $6c
    ld l, [hl]                                    ; $76b7: $6e
    inc c                                         ; $76b8: $0c
    ld h, $c4                                     ; $76b9: $26 $c4
    nop                                           ; $76bb: $00
    ld [hl-], a                                   ; $76bc: $32
    ld b, [hl]                                    ; $76bd: $46
    ld [de], a                                    ; $76be: $12
    ld b, $42                                     ; $76bf: $06 $42

jr_0cf_76c1:
    ld h, $22                                     ; $76c1: $26 $22
    ld c, $02                                     ; $76c3: $0e $02
    ret nz                                        ; $76c5: $c0

    ld [hl], a                                    ; $76c6: $77
    ret nz                                        ; $76c7: $c0

    ld a, a                                       ; $76c8: $7f
    ld a, a                                       ; $76c9: $7f
    ret nz                                        ; $76ca: $c0

    ld [bc], a                                    ; $76cb: $02
    jr c, @+$50                                   ; $76cc: $38 $4e

    nop                                           ; $76ce: $00
    ld h, b                                       ; $76cf: $60
    ld c, l                                       ; $76d0: $4d
    ld h, c                                       ; $76d1: $61
    rra                                           ; $76d2: $1f
    ld de, $903f                                  ; $76d3: $11 $3f $90
    cpl                                           ; $76d6: $2f
    nop                                           ; $76d7: $00
    adc a                                         ; $76d8: $8f
    daa                                           ; $76d9: $27
    add a                                         ; $76da: $87
    rra                                           ; $76db: $1f
    rst $08                                       ; $76dc: $cf
    ld c, $cc                                     ; $76dd: $0e $cc
    ld b, $00                                     ; $76df: $06 $00
    or b                                          ; $76e1: $b0
    cpl                                           ; $76e2: $2f
    or b                                          ; $76e3: $b0
    ld e, $11                                     ; $76e4: $1e $11
    cp $01                                        ; $76e6: $fe $01
    cp $00                                        ; $76e8: $fe $00
    db $fd                                        ; $76ea: $fd
    db $fc                                        ; $76eb: $fc
    cp $02                                        ; $76ec: $fe $02
    db $fc                                        ; $76ee: $fc
    ld b, $fa                                     ; $76ef: $06 $fa
    ld h, d                                       ; $76f1: $62
    nop                                           ; $76f2: $00
    ld c, h                                       ; $76f3: $4c
    ld h, d                                       ; $76f4: $62
    ld l, h                                       ; $76f5: $6c
    ld b, d                                       ; $76f6: $42
    ld e, $02                                     ; $76f7: $1e $02
    ld a, $82                                     ; $76f9: $3e $82
    ld c, d                                       ; $76fb: $4a
    db $fc                                        ; $76fc: $fc
    ld [bc], a                                    ; $76fd: $02
    ld [$fcc2], sp                                ; $76fe: $08 $c2 $fc
    inc a                                         ; $7701: $3c
    ld [$027e], sp                                ; $7702: $08 $7e $02
    nop                                           ; $7705: $00
    ccf                                           ; $7706: $3f
    nop                                           ; $7707: $00
    rst $00                                       ; $7708: $c7
    ccf                                           ; $7709: $3f
    rst $18                                       ; $770a: $df
    add b                                         ; $770b: $80
    ld a, a                                       ; $770c: $7f
    rst $38                                       ; $770d: $ff
    nop                                           ; $770e: $00
    rra                                           ; $770f: $1f
    nop                                           ; $7710: $00
    ld a, $1f                                     ; $7711: $3e $1f
    ldh a, [$63]                                  ; $7713: $f0 $63
    rlca                                          ; $7715: $07
    jr nc, jr_0cf_775b                            ; $7716: $30 $43

    ld a, b                                       ; $7718: $78
    db $10                                        ; $7719: $10
    ld a, b                                       ; $771a: $78
    jr jr_0cf_76c1                                ; $771b: $18 $a4

    call z, RST_00                                ; $771d: $cc $00 $00
    ld hl, sp-$0c                                 ; $7720: $f8 $f4

jr_0cf_7722:
    ldh a, [rP1]                                  ; $7722: $f0 $00
    add sp, $11                                   ; $7724: $e8 $11
    pop hl                                        ; $7726: $e1
    jp Jump_000_2103                              ; $7727: $c3 $03 $21


    rrca                                          ; $772a: $0f
    ld [c], a                                     ; $772b: $e2
    ld b, b                                       ; $772c: $40
    cpl                                           ; $772d: $2f
    db $10                                        ; $772e: $10
    ld [$1ec2], sp                                ; $772f: $08 $c2 $1e
    jp nz, $841e                                  ; $7732: $c2 $1e $84

    ld b, $00                                     ; $7735: $06 $00
    jr nc, jr_0cf_773b                            ; $7737: $30 $02

    ld c, $72                                     ; $7739: $0e $72

jr_0cf_773b:
    ld [bc], a                                    ; $773b: $02
    ld a, [hl]                                    ; $773c: $7e
    nop                                           ; $773d: $00
    cp $00                                        ; $773e: $fe $00
    cp $00                                        ; $7740: $fe $00
    nop                                           ; $7742: $00
    ld bc, $00e8                                  ; $7743: $01 $e8 $00
    nop                                           ; $7746: $00
    rst $38                                       ; $7747: $ff
    ld a, a                                       ; $7748: $7f
    ret nz                                        ; $7749: $c0

    ld a, a                                       ; $774a: $7f
    ld a, $c1                                     ; $774b: $3e $c1
    dec a                                         ; $774d: $3d
    jp $3e00                                      ; $774e: $c3 $00 $3e


    jp nz, $c03d                                  ; $7751: $c2 $3d $c0

    inc a                                         ; $7754: $3c
    call nz, $c038                                ; $7755: $c4 $38 $c0
    nop                                           ; $7758: $00
    rst $38                                       ; $7759: $ff
    rst $38                                       ; $775a: $ff

jr_0cf_775b:
    inc b                                         ; $775b: $04
    ld c, e                                       ; $775c: $4b
    add e                                         ; $775d: $83
    jp $2001                                      ; $775e: $c3 $01 $20


    nop                                           ; $7761: $00
    ld h, e                                       ; $7762: $63
    db $fc                                        ; $7763: $fc
    jr jr_0cf_7722                                ; $7764: $18 $bc

    adc b                                         ; $7766: $88
    db $10                                        ; $7767: $10
    inc sp                                        ; $7768: $33
    inc hl                                        ; $7769: $23
    nop                                           ; $776a: $00
    rst $38                                       ; $776b: $ff
    nop                                           ; $776c: $00
    nop                                           ; $776d: $00
    nop                                           ; $776e: $00
    sub e                                         ; $776f: $93
    sbc h                                         ; $7770: $9c
    and [hl]                                      ; $7771: $a6
    ld l, d                                       ; $7772: $6a
    nop                                           ; $7773: $00
    ld d, b                                       ; $7774: $50
    ld h, b                                       ; $7775: $60
    inc bc                                        ; $7776: $03
    db $10                                        ; $7777: $10
    jr jr_0cf_777b                                ; $7778: $18 $01

    ld c, b                                       ; $777a: $48

jr_0cf_777b:
    ld b, b                                       ; $777b: $40
    nop                                           ; $777c: $00
    cp $00                                        ; $777d: $fe $00
    ld [bc], a                                    ; $777f: $02
    db $fc                                        ; $7780: $fc
    add d                                         ; $7781: $82
    ld a, $c2                                     ; $7782: $3e $c2
    ld e, $00                                     ; $7784: $1e $00
    ld [hl+], a                                   ; $7786: $22
    inc a                                         ; $7787: $3c
    ld [de], a                                    ; $7788: $12
    inc a                                         ; $7789: $3c
    ld b, $dc                                     ; $778a: $06 $dc
    ld h, d                                       ; $778c: $62
    ld l, h                                       ; $778d: $6c
    nop                                           ; $778e: $00
    ld a, $c6                                     ; $778f: $3e $c6
    ld [hl], $c4                                  ; $7791: $36 $c4
    ldh [$c4], a                                  ; $7793: $e0 $c4
    ldh [$d7], a                                  ; $7795: $e0 $d7
    nop                                           ; $7797: $00
    ldh [$d3], a                                  ; $7798: $e0 $d3
    ldh [$c9], a                                  ; $779a: $e0 $c9
    add hl, sp                                    ; $779c: $39
    ret                                           ; $779d: $c9


    jr c, @-$3e                                   ; $779e: $38 $c0

    nop                                           ; $77a0: $00
    inc hl                                        ; $77a1: $23
    inc bc                                        ; $77a2: $03
    inc h                                         ; $77a3: $24
    rlca                                          ; $77a4: $07
    rlca                                          ; $77a5: $07
    dec hl                                        ; $77a6: $2b
    ld c, $67                                     ; $77a7: $0e $67
    nop                                           ; $77a9: $00
    inc c                                         ; $77aa: $0c
    ld b, [hl]                                    ; $77ab: $46
    inc c                                         ; $77ac: $0c
    push de                                       ; $77ad: $d5
    ld c, $d6                                     ; $77ae: $0e $d6
    rrca                                          ; $77b0: $0f
    ld d, a                                       ; $77b1: $57
    nop                                           ; $77b2: $00
    ld a, $26                                     ; $77b3: $3e $26
    ld bc, $0ffe                                  ; $77b5: $01 $fe $0f
    cp $07                                        ; $77b8: $fe $07
    ld c, $00                                     ; $77ba: $0e $00
    nop                                           ; $77bc: $00
    ld l, h                                       ; $77bd: $6c
    ldh a, [$38]                                  ; $77be: $f0 $38

Jump_0cf_77c0:
    add hl, sp                                    ; $77c0: $39
    ld [hl], d                                    ; $77c1: $72
    pop af                                        ; $77c2: $f1
    inc bc                                        ; $77c3: $03
    nop                                           ; $77c4: $00
    inc h                                         ; $77c5: $24
    ld [hl+], a                                   ; $77c6: $22
    inc d                                         ; $77c7: $14
    ld [bc], a                                    ; $77c8: $02
    inc b                                         ; $77c9: $04
    ld [bc], a                                    ; $77ca: $02
    add h                                         ; $77cb: $84
    ld b, $00                                     ; $77cc: $06 $00
    add d                                         ; $77ce: $82
    ld a, [bc]                                    ; $77cf: $0a
    ld [bc], a                                    ; $77d0: $02
    sub $14                                       ; $77d1: $d6 $14
    ld [de], a                                    ; $77d3: $12
    cp h                                          ; $77d4: $bc
    ld a, [de]                                    ; $77d5: $1a
    nop                                           ; $77d6: $00
    inc a                                         ; $77d7: $3c
    call nz, $c33b                                ; $77d8: $c4 $3b $c3
    ccf                                           ; $77db: $3f
    pop bc                                        ; $77dc: $c1
    ld a, $c0                                     ; $77dd: $3e $c0
    db $10                                        ; $77df: $10
    ld a, h                                       ; $77e0: $7c
    ret nz                                        ; $77e1: $c0

    ld a, b                                       ; $77e2: $78
    ld [bc], a                                    ; $77e3: $02
    db $10                                        ; $77e4: $10
    rrca                                          ; $77e5: $0f
    ld a, a                                       ; $77e6: $7f
    cpl                                           ; $77e7: $2f
    ld c, a                                       ; $77e8: $4f
    ld b, b                                       ; $77e9: $40
    ld [hl], b                                    ; $77ea: $70
    ld [bc], a                                    ; $77eb: $02
    nop                                           ; $77ec: $00
    jr c, jr_0cf_7816                             ; $77ed: $38 $27

    inc e                                         ; $77ef: $1c
    inc de                                        ; $77f0: $13
    inc hl                                        ; $77f1: $23
    dec b                                         ; $77f2: $05
    nop                                           ; $77f3: $00
    ld sp, $fe48                                  ; $77f4: $31 $48 $fe
    dec c                                         ; $77f7: $0d
    xor $18                                       ; $77f8: $ee $18
    ld a, [de]                                    ; $77fa: $1a
    xor $00                                       ; $77fb: $ee $00
    ld bc, $03fc                                  ; $77fd: $01 $fc $03

Jump_0cf_7800:
    ld hl, sp+$0b                                 ; $7800: $f8 $0b
    sbc b                                         ; $7802: $98
    rlca                                          ; $7803: $07

Jump_0cf_7804:
    ldh a, [rP1]                                  ; $7804: $f0 $00
    rla                                           ; $7806: $17
    ldh a, [$2c]                                  ; $7807: $f0 $2c
    ld [hl+], a                                   ; $7809: $22
    inc e                                         ; $780a: $1c
    ld [bc], a                                    ; $780b: $02
    db $fc                                        ; $780c: $fc
    ld b, d                                       ; $780d: $42
    ld [bc], a                                    ; $780e: $02
    db $fc                                        ; $780f: $fc
    ld [bc], a                                    ; $7810: $02
    db $fc                                        ; $7811: $fc
    sub d                                         ; $7812: $92
    db $fc                                        ; $7813: $fc
    cp $06                                        ; $7814: $fe $06

jr_0cf_7816:
    nop                                           ; $7816: $00
    ld [bc], a                                    ; $7817: $02
    nop                                           ; $7818: $00
    ld a, [hl-]                                   ; $7819: $3a
    jp nz, $c33b                                  ; $781a: $c2 $3b $c3

    ld [hl], c                                    ; $781d: $71
    ret nz                                        ; $781e: $c0

    ld h, b                                       ; $781f: $60
    ret nz                                        ; $7820: $c0

    nop                                           ; $7821: $00
    ld b, b                                       ; $7822: $40
    ret nz                                        ; $7823: $c0

    ld e, [hl]                                    ; $7824: $5e
    ret nz                                        ; $7825: $c0

    add b                                         ; $7826: $80
    ld a, a                                       ; $7827: $7f
    rst $38                                       ; $7828: $ff
    nop                                           ; $7829: $00
    nop                                           ; $782a: $00
    halt                                          ; $782b: $76
    ld c, d                                       ; $782c: $4a
    ld h, b                                       ; $782d: $60
    ld e, a                                       ; $782e: $5f
    sbc a                                         ; $782f: $9f
    add e                                         ; $7830: $83
    ld c, a                                       ; $7831: $4f
    db $e3                                        ; $7832: $e3
    ld [$d017], sp                                ; $7833: $08 $17 $d0
    daa                                           ; $7836: $27
    or b                                          ; $7837: $b0
    cp h                                          ; $7838: $bc
    ld [$0007], sp                                ; $7839: $08 $07 $00
    add a                                         ; $783c: $87
    nop                                           ; $783d: $00
    ret nz                                        ; $783e: $c0

    ret nz                                        ; $783f: $c0

    ld h, e                                       ; $7840: $63
    or h                                          ; $7841: $b4
    dec d                                         ; $7842: $15
    sub b                                         ; $7843: $90
    ld de, $70b0                                  ; $7844: $11 $b0 $70
    inc de                                        ; $7847: $13
    call z, $3408                                 ; $7848: $cc $08 $34
    ld [$2804], sp                                ; $784b: $08 $04 $28
    nop                                           ; $784e: $00
    cp $fe                                        ; $784f: $fe $fe
    nop                                           ; $7851: $00
    nop                                           ; $7852: $00
    ld bc, $00f1                                  ; $7853: $01 $f1 $00
    nop                                           ; $7856: $00
    ld a, a                                       ; $7857: $7f
    rst $38                                       ; $7858: $ff
    ld a, a                                       ; $7859: $7f
    ret nz                                        ; $785a: $c0

    ld a, l                                       ; $785b: $7d
    ret nz                                        ; $785c: $c0

    ld a, b                                       ; $785d: $78
    ret nz                                        ; $785e: $c0

    nop                                           ; $785f: $00
    ld a, h                                       ; $7860: $7c
    pop bc                                        ; $7861: $c1
    ld a, b                                       ; $7862: $78
    jp $c379                                      ; $7863: $c3 $79 $c3


    ld [hl], d                                    ; $7866: $72
    rst $00                                       ; $7867: $c7
    nop                                           ; $7868: $00
    rst $38                                       ; $7869: $ff
    nop                                           ; $786a: $00
    db $10                                        ; $786b: $10
    rra                                           ; $786c: $1f
    rrca                                          ; $786d: $0f
    dec a                                         ; $786e: $3d
    ccf                                           ; $786f: $3f
    or $00                                        ; $7870: $f6 $00
    sub $eb                                       ; $7872: $d6 $eb
    ld h, b                                       ; $7874: $60
    add $28                                       ; $7875: $c6 $28
    add sp, $6f                                   ; $7877: $e8 $6f
    and b                                         ; $7879: $a0
    nop                                           ; $787a: $00
    rst $38                                       ; $787b: $ff
    nop                                           ; $787c: $00
    nop                                           ; $787d: $00
    ld a, l                                       ; $787e: $7d
    inc a                                         ; $787f: $3c
    ld b, l                                       ; $7880: $45
    ld h, $dd                                     ; $7881: $26 $dd
    nop                                           ; $7883: $00
    rst $38                                       ; $7884: $ff
    nop                                           ; $7885: $00
    dec l                                         ; $7886: $2d
    ld e, d                                       ; $7887: $5a
    add h                                         ; $7888: $84
    daa                                           ; $7889: $27
    and e                                         ; $788a: $a3
    adc c                                         ; $788b: $89
    nop                                           ; $788c: $00
    cp $00                                        ; $788d: $fe $00
    add d                                         ; $788f: $82
    db $fc                                        ; $7890: $fc
    ld [bc], a                                    ; $7891: $02
    halt                                          ; $7892: $76
    add d                                         ; $7893: $82
    ld c, $00                                     ; $7894: $0e $00
    jp nz, $021e                                  ; $7896: $c2 $1e $02

    ld e, $c2                                     ; $7899: $1e $c2
    ld c, $f2                                     ; $789b: $0e $f2
    ld b, $00                                     ; $789d: $06 $00
    rst $00                                       ; $789f: $c7
    halt                                          ; $78a0: $76
    call nz, $cb64                                ; $78a1: $c4 $64 $cb
    ld l, c                                       ; $78a4: $69
    push bc                                       ; $78a5: $c5
    ld h, b                                       ; $78a6: $60
    nop                                           ; $78a7: $00
    jp nz, $c272                                  ; $78a8: $c2 $72 $c2

    ld a, b                                       ; $78ab: $78
    ld a, b                                       ; $78ac: $78
    jp nz, $c27a                                  ; $78ad: $c2 $7a $c2

    nop                                           ; $78b0: $00
    adc a                                         ; $78b1: $8f
    sub e                                         ; $78b2: $93
    sbc h                                         ; $78b3: $9c
    and b                                         ; $78b4: $a0
    or h                                          ; $78b5: $b4
    inc c                                         ; $78b6: $0c
    dec hl                                        ; $78b7: $2b
    sbc b                                         ; $78b8: $98
    nop                                           ; $78b9: $00
    and h                                         ; $78ba: $a4
    rlca                                          ; $78bb: $07
    xor c                                         ; $78bc: $a9
    add hl, de                                    ; $78bd: $19
    ld [hl+], a                                   ; $78be: $22
    ld d, $64                                     ; $78bf: $16 $64
    inc c                                         ; $78c1: $0c
    nop                                           ; $78c2: $00
    inc c                                         ; $78c3: $0c
    ret nz                                        ; $78c4: $c0

    inc bc                                        ; $78c5: $03
    db $dd                                        ; $78c6: $dd
    sbc $2d                                       ; $78c7: $de $2d
    push af                                       ; $78c9: $f5
    ld b, $00                                     ; $78ca: $06 $00
    add hl, bc                                    ; $78cc: $09
    pop af                                        ; $78cd: $f1
    sbc d                                         ; $78ce: $9a
    ld l, d                                       ; $78cf: $6a
    inc d                                         ; $78d0: $14
    and $62                                       ; $78d1: $e6 $62
    db $d3                                        ; $78d3: $d3
    ld [bc], a                                    ; $78d4: $02
    ld [hl], d                                    ; $78d5: $72
    adc e                                         ; $78d6: $8b
    ld [hl], d                                    ; $78d7: $72
    adc e                                         ; $78d8: $8b
    and d                                         ; $78d9: $a2
    ld c, $02                                     ; $78da: $0e $02
    nop                                           ; $78dc: $00
    ld d, e                                       ; $78dd: $53
    nop                                           ; $78de: $00
    ld [bc], a                                    ; $78df: $02
    di                                            ; $78e0: $f3
    ld [hl+], a                                   ; $78e1: $22
    db $d3                                        ; $78e2: $d3
    and d                                         ; $78e3: $a2
    ld d, e                                       ; $78e4: $53
    jp nz, Jump_000_1007                          ; $78e5: $c2 $07 $10

    jp nz, $7c07                                  ; $78e8: $c2 $07 $7c

    ld a, [hl]                                    ; $78eb: $7e
    nop                                           ; $78ec: $00
    ret nz                                        ; $78ed: $c0

    ld b, c                                       ; $78ee: $41
    ret nz                                        ; $78ef: $c0

    ld b, e                                       ; $78f0: $43
    add b                                         ; $78f1: $80
    add a                                         ; $78f2: $87
    nop                                           ; $78f3: $00
    ld [hl], b                                    ; $78f4: $70
    ldh [rP1], a                                  ; $78f5: $e0 $00
    ldh [$3f], a                                  ; $78f7: $e0 $3f
    jr nz, jr_0cf_793a                            ; $78f9: $20 $3f

    nop                                           ; $78fb: $00
    jr nz, jr_0cf_791d                            ; $78fc: $20 $1f

    ccf                                           ; $78fe: $3f
    ret nz                                        ; $78ff: $c0

    ccf                                           ; $7900: $3f
    ld h, b                                       ; $7901: $60
    ld h, c                                       ; $7902: $61
    dec e                                         ; $7903: $1d
    nop                                           ; $7904: $00
    ld [hl], c                                    ; $7905: $71
    ld c, a                                       ; $7906: $4f
    or b                                          ; $7907: $b0
    sub b                                         ; $7908: $90
    sbc $9f                                       ; $7909: $de $9f
    rst $18                                       ; $790b: $df
    rst $28                                       ; $790c: $ef
    nop                                           ; $790d: $00
    rra                                           ; $790e: $1f
    ld e, a                                       ; $790f: $5f
    ld bc, $00fe                                  ; $7910: $01 $fe $00
    cp $e0                                        ; $7913: $fe $e0
    ld e, $00                                     ; $7915: $1e $00
    jp nz, $a2fc                                  ; $7917: $c2 $fc $a2

    ld d, e                                       ; $791a: $53
    and d                                         ; $791b: $a2
    ld d, e                                       ; $791c: $53

jr_0cf_791d:
    add d                                         ; $791d: $82
    ld e, $08                                     ; $791e: $1e $08
    add d                                         ; $7920: $82
    ld a, $82                                     ; $7921: $3e $82
    db $fc                                        ; $7923: $fc
    adc b                                         ; $7924: $88
    nop                                           ; $7925: $00
    ld a, [hl]                                    ; $7926: $7e
    add d                                         ; $7927: $82
    ld a, $20                                     ; $7928: $3e $20
    ret nz                                        ; $792a: $c0

    ld c, a                                       ; $792b: $4f
    ld [bc], a                                    ; $792c: $02
    nop                                           ; $792d: $00
    ld l, a                                       ; $792e: $6f
    ret nz                                        ; $792f: $c0

    ld h, a                                       ; $7930: $67
    ret nz                                        ; $7931: $c0

    ld [hl], e                                    ; $7932: $73
    nop                                           ; $7933: $00
    ret nz                                        ; $7934: $c0

    ld a, c                                       ; $7935: $79
    add b                                         ; $7936: $80
    ld a, a                                       ; $7937: $7f
    rst $38                                       ; $7938: $ff
    nop                                           ; $7939: $00

jr_0cf_793a:
    jr c, jr_0cf_7963                             ; $793a: $38 $27

    nop                                           ; $793c: $00
    inc e                                         ; $793d: $1c
    inc de                                        ; $793e: $13
    ld hl, $6807                                  ; $793f: $21 $07 $68
    db $10                                        ; $7942: $10
    rra                                           ; $7943: $1f
    ld h, c                                       ; $7944: $61
    jr nz, @+$11                                  ; $7945: $20 $0f

    inc sp                                        ; $7947: $33
    cp h                                          ; $7948: $bc
    nop                                           ; $7949: $00
    nop                                           ; $794a: $00
    ld b, $fa                                     ; $794b: $06 $fa
    dec c                                         ; $794d: $0d
    push af                                       ; $794e: $f5
    nop                                           ; $794f: $00
    ld [hl+], a                                   ; $7950: $22
    jp nz, $0111                                  ; $7951: $c2 $11 $01

    dec h                                         ; $7954: $25
    call nz, $8a4b                                ; $7955: $c4 $4b $8a
    add b                                         ; $7958: $80
    db $10                                        ; $7959: $10
    ld [$1edc], sp                                ; $795a: $08 $dc $1e
    db $e4                                        ; $795d: $e4
    ld b, $e8                                     ; $795e: $06 $e8
    ld a, [bc]                                    ; $7960: $0a
    db $ec                                        ; $7961: $ec
    nop                                           ; $7962: $00

jr_0cf_7963:
    ld c, $ec                                     ; $7963: $0e $ec
    ld c, $cc                                     ; $7965: $0e $cc
    ld a, [bc]                                    ; $7967: $0a
    nop                                           ; $7968: $00
    cp $fe                                        ; $7969: $fe $fe
    nop                                           ; $796b: $00
    nop                                           ; $796c: $00
    nop                                           ; $796d: $00
    ld bc, $00f9                                  ; $796e: $01 $f9 $00
    nop                                           ; $7971: $00
    ld a, a                                       ; $7972: $7f
    rst $38                                       ; $7973: $ff
    ld a, [hl]                                    ; $7974: $7e
    ret nz                                        ; $7975: $c0

    ccf                                           ; $7976: $3f
    ld sp, hl                                     ; $7977: $f9
    ccf                                           ; $7978: $3f
    pop af                                        ; $7979: $f1
    nop                                           ; $797a: $00
    ld e, $d6                                     ; $797b: $1e $d6
    inc c                                         ; $797d: $0c
    call z, $e121                                 ; $797e: $cc $21 $e1
    dec sp                                        ; $7981: $3b
    db $db                                        ; $7982: $db
    nop                                           ; $7983: $00
    rst $38                                       ; $7984: $ff
    nop                                           ; $7985: $00
    ld hl, sp-$07                                 ; $7986: $f8 $f9
    nop                                           ; $7988: $00
    add b                                         ; $7989: $80
    ret nz                                        ; $798a: $c0

    add d                                         ; $798b: $82
    nop                                           ; $798c: $00
    ld c, $01                                     ; $798d: $0e $01
    call z, $eac0                                 ; $798f: $cc $c0 $ea
    ei                                            ; $7992: $fb
    add hl, bc                                    ; $7993: $09
    db $e3                                        ; $7994: $e3
    add b                                         ; $7995: $80
    stop                                          ; $7996: $10 $00
    ei                                            ; $7998: $fb
    ld bc, $7803                                  ; $7999: $01 $03 $78
    nop                                           ; $799c: $00
    ld l, b                                       ; $799d: $68
    inc b                                         ; $799e: $04
    nop                                           ; $799f: $00
    pop bc                                        ; $79a0: $c1
    push bc                                       ; $79a1: $c5

jr_0cf_79a2:
    xor h                                         ; $79a2: $ac
    jr nz, @-$7a                                  ; $79a3: $20 $84

    adc b                                         ; $79a5: $88
    cp $00                                        ; $79a6: $fe $00
    nop                                           ; $79a8: $00
    ld [bc], a                                    ; $79a9: $02
    db $fc                                        ; $79aa: $fc
    ld [hl], h                                    ; $79ab: $74
    ld [hl], d                                    ; $79ac: $72
    ld [$3c0a], sp                                ; $79ad: $08 $0a $3c
    ld a, $00                                     ; $79b0: $3e $00
    inc d                                         ; $79b2: $14
    ld [bc], a                                    ; $79b3: $02
    sbc b                                         ; $79b4: $98
    ld a, [de]                                    ; $79b5: $1a
    call z, $3306                                 ; $79b6: $cc $06 $33
    pop af                                        ; $79b9: $f1
    nop                                           ; $79ba: $00
    ld h, $c2                                     ; $79bb: $26 $c2
    dec hl                                        ; $79bd: $2b
    ret                                           ; $79be: $c9


    daa                                           ; $79bf: $27
    pop bc                                        ; $79c0: $c1
    scf                                           ; $79c1: $37
    rst $10                                       ; $79c2: $d7
    nop                                           ; $79c3: $00
    add hl, sp                                    ; $79c4: $39
    reti                                          ; $79c5: $d9


    add hl, sp                                    ; $79c6: $39
    reti                                          ; $79c7: $d9


    jr c, jr_0cf_79a2                             ; $79c8: $38 $d8

jr_0cf_79ca:
    add l                                         ; $79ca: $85
    nop                                           ; $79cb: $00
    nop                                           ; $79cc: $00
    ret z                                         ; $79cd: $c8

    ld b, h                                       ; $79ce: $44
    ld hl, sp-$0a                                 ; $79cf: $f8 $f6
    jr nz, jr_0cf_7a02                            ; $79d1: $20 $2f

    sbc b                                         ; $79d3: $98
    add b                                         ; $79d4: $80
    nop                                           ; $79d5: $00
    db $10                                        ; $79d6: $10
    rrca                                          ; $79d7: $0f

jr_0cf_79d8:
    call z, $9fc0                                 ; $79d8: $cc $c0 $9f
    ld h, c                                       ; $79db: $61
    inc b                                         ; $79dc: $04
    ld [c], a                                     ; $79dd: $e2
    nop                                           ; $79de: $00
    ld h, d                                       ; $79df: $62
    di                                            ; $79e0: $f3
    ld [hl], b                                    ; $79e1: $70
    ld b, b                                       ; $79e2: $40
    push bc                                       ; $79e3: $c5
    rlca                                          ; $79e4: $07
    nop                                           ; $79e5: $00
    ld bc, $e000                                  ; $79e6: $01 $00 $e0
    rra                                           ; $79e9: $1f
    ld h, d                                       ; $79ea: $62
    ldh [rSB], a                                  ; $79eb: $e0 $01
    adc [hl]                                      ; $79ed: $8e
    call nz, $00c2                                ; $79ee: $c4 $c2 $00
    ld d, b                                       ; $79f1: $50
    ld d, d                                       ; $79f2: $52
    sbc b                                         ; $79f3: $98
    ld [de], a                                    ; $79f4: $12
    inc l                                         ; $79f5: $2c
    ld [hl+], a                                   ; $79f6: $22
    and h                                         ; $79f7: $a4
    and d                                         ; $79f8: $a2
    nop                                           ; $79f9: $00
    or b                                          ; $79fa: $b0
    ld [de], a                                    ; $79fb: $12
    sbc b                                         ; $79fc: $98
    ld a, [bc]                                    ; $79fd: $0a
    cp b                                          ; $79fe: $b8
    ld a, [bc]                                    ; $79ff: $0a
    jr c, jr_0cf_79ca                             ; $7a00: $38 $c8

jr_0cf_7a02:
    nop                                           ; $7a02: $00
    ld a, $c2                                     ; $7a03: $3e $c2
    rst $30                                       ; $7a05: $f7
    ret z                                         ; $7a06: $c8

    jp hl                                         ; $7a07: $e9


    sub $27                                       ; $7a08: $d6 $27
    pop bc                                        ; $7a0a: $c1
    nop                                           ; $7a0b: $00
    daa                                           ; $7a0c: $27
    rst $00                                       ; $7a0d: $c7
    jr c, jr_0cf_79d8                             ; $7a0e: $38 $c8

    inc a                                         ; $7a10: $3c
    call nz, $908f                                ; $7a11: $c4 $8f $90
    nop                                           ; $7a14: $00
    rla                                           ; $7a15: $17
    nop                                           ; $7a16: $00
    daa                                           ; $7a17: $27
    ld c, a                                       ; $7a18: $4f
    inc sp                                        ; $7a19: $33
    rlca                                          ; $7a1a: $07
    ccf                                           ; $7a1b: $3f
    add a                                         ; $7a1c: $87
    nop                                           ; $7a1d: $00
    rla                                           ; $7a1e: $17
    cpl                                           ; $7a1f: $2f
    ld e, b                                       ; $7a20: $58
    rra                                           ; $7a21: $1f
    rlca                                          ; $7a22: $07
    adc a                                         ; $7a23: $8f
    rrca                                          ; $7a24: $0f
    pop af                                        ; $7a25: $f1

jr_0cf_7a26:
    jr nz, jr_0cf_7a26                            ; $7a26: $20 $fe

    nop                                           ; $7a28: $00
    ld [bc], a                                    ; $7a29: $02
    nop                                           ; $7a2a: $00
    ld bc, $fe01                                  ; $7a2b: $01 $01 $fe
    add c                                         ; $7a2e: $81
    db $fc                                        ; $7a2f: $fc
    nop                                           ; $7a30: $00
    inc bc                                        ; $7a31: $03
    ld hl, sp+$07                                 ; $7a32: $f8 $07
    db $e4                                        ; $7a34: $e4
    ldh a, [$62]                                  ; $7a35: $f0 $62
    ld [hl], b                                    ; $7a37: $70
    ld [bc], a                                    ; $7a38: $02
    nop                                           ; $7a39: $00
    inc b                                         ; $7a3a: $04
    ld [bc], a                                    ; $7a3b: $02
    sbc b                                         ; $7a3c: $98
    sub d                                         ; $7a3d: $92
    ldh [$c2], a                                  ; $7a3e: $e0 $c2
    ret nz                                        ; $7a40: $c0

    add d                                         ; $7a41: $82
    nop                                           ; $7a42: $00
    jp nz, $c22a                                  ; $7a43: $c2 $2a $c2

    ld a, [hl+]                                   ; $7a46: $2a
    db $fc                                        ; $7a47: $fc
    jp nz, $c0f8                                  ; $7a48: $c2 $f8 $c0

    nop                                           ; $7a4b: $00
    inc a                                         ; $7a4c: $3c
    call nz, $c03e                                ; $7a4d: $c4 $3e $c0
    ccf                                           ; $7a50: $3f
    jp $c03f                                      ; $7a51: $c3 $3f $c0


jr_0cf_7a54:
    nop                                           ; $7a54: $00
    add b                                         ; $7a55: $80
    ld a, a                                       ; $7a56: $7f
    rst $38                                       ; $7a57: $ff
    nop                                           ; $7a58: $00
    ld b, a                                       ; $7a59: $47
    rlca                                          ; $7a5a: $07
    and b                                         ; $7a5b: $a0
    ld b, b                                       ; $7a5c: $40
    nop                                           ; $7a5d: $00
    sub b                                         ; $7a5e: $90
    ld h, b                                       ; $7a5f: $60
    ld l, d                                       ; $7a60: $6a
    ld [de], a                                    ; $7a61: $12
    ld [hl-], a                                   ; $7a62: $32
    ld a, [bc]                                    ; $7a63: $0a
    ld [c], a                                     ; $7a64: $e2
    ld [de], a                                    ; $7a65: $12
    nop                                           ; $7a66: $00
    rst $38                                       ; $7a67: $ff
    nop                                           ; $7a68: $00
    nop                                           ; $7a69: $00
    nop                                           ; $7a6a: $00
    sbc [hl]                                      ; $7a6b: $9e
    adc a                                         ; $7a6c: $8f
    ld a, [hl]                                    ; $7a6d: $7e
    ld a, $00                                     ; $7a6e: $3e $00
    ld a, a                                       ; $7a70: $7f
    add c                                         ; $7a71: $81
    ld a, h                                       ; $7a72: $7c
    add d                                         ; $7a73: $82
    ld a, b                                       ; $7a74: $78
    db $fd                                        ; $7a75: $fd
    ld [hl], c                                    ; $7a76: $71
    ld a, [$1080]                                 ; $7a77: $fa $80 $10
    ld [$e2f0], sp                                ; $7a7a: $08 $f0 $e2
    ldh a, [rSCY]                                 ; $7a7d: $f0 $42
    ld h, d                                       ; $7a7f: $62
    add sp, $12                                   ; $7a80: $e8 $12
    nop                                           ; $7a82: $00
    db $f4                                        ; $7a83: $f4
    inc e                                         ; $7a84: $1c
    ld e, $fc                                     ; $7a85: $1e $fc
    ld b, $00                                     ; $7a87: $06 $00
    cp $fe                                        ; $7a89: $fe $fe
    nop                                           ; $7a8b: $00
    nop                                           ; $7a8c: $00
    nop                                           ; $7a8d: $00
    ld bc, $00f9                                  ; $7a8e: $01 $f9 $00
    nop                                           ; $7a91: $00
    add b                                         ; $7a92: $80
    rst $38                                       ; $7a93: $ff
    xor d                                         ; $7a94: $aa
    ret nz                                        ; $7a95: $c0

    add hl, de                                    ; $7a96: $19
    ret nc                                        ; $7a97: $d0

    add hl, de                                    ; $7a98: $19
    pop de                                        ; $7a99: $d1
    nop                                           ; $7a9a: $00
    cpl                                           ; $7a9b: $2f
    swap [hl]                                     ; $7a9c: $cb $36
    call nz, $c068                                ; $7a9e: $c4 $68 $c0
    ld [hl], h                                    ; $7aa1: $74
    ret nz                                        ; $7aa2: $c0

    nop                                           ; $7aa3: $00
    rst $38                                       ; $7aa4: $ff
    nop                                           ; $7aa5: $00
    jr nz, jr_0cf_7a54                            ; $7aa6: $20 $ac

    push hl                                       ; $7aa8: $e5
    adc h                                         ; $7aa9: $8c
    cp h                                          ; $7aaa: $bc
    ld de, $7300                                  ; $7aab: $11 $00 $73
    ld hl, $4127                                  ; $7aae: $21 $27 $41
    ld c, c                                       ; $7ab1: $49
    ld b, c                                       ; $7ab2: $41
    ld c, d                                       ; $7ab3: $4a
    dec c                                         ; $7ab4: $0d
    nop                                           ; $7ab5: $00
    rst $38                                       ; $7ab6: $ff
    nop                                           ; $7ab7: $00
    inc b                                         ; $7ab8: $04
    add $ff                                       ; $7ab9: $c6 $ff
    db $eb                                        ; $7abb: $eb
    ld [de], a                                    ; $7abc: $12
    ld [hl-], a                                   ; $7abd: $32
    nop                                           ; $7abe: $00
    ld e, b                                       ; $7abf: $58
    ld l, d                                       ; $7ac0: $6a
    add hl, bc                                    ; $7ac1: $09
    adc l                                         ; $7ac2: $8d
    ld hl, $39d8                                  ; $7ac3: $21 $d8 $39
    jr nc, jr_0cf_7ac8                            ; $7ac6: $30 $00

jr_0cf_7ac8:
    ld bc, $3dff                                  ; $7ac8: $01 $ff $3d
    inc bc                                        ; $7acb: $03
    call c, $ecc2                                 ; $7acc: $dc $c2 $ec
    ld [c], a                                     ; $7acf: $e2
    nop                                           ; $7ad0: $00
    ld b, $32                                     ; $7ad1: $06 $32
    ld b, $52                                     ; $7ad3: $06 $52
    ld a, [de]                                    ; $7ad5: $1a
    jr @+$0c                                      ; $7ad6: $18 $0a

    jr z, jr_0cf_7ada                             ; $7ad8: $28 $00

jr_0cf_7ada:
    ld l, b                                       ; $7ada: $68
    ret nz                                        ; $7adb: $c0

    ld h, b                                       ; $7adc: $60
    ret nz                                        ; $7add: $c0

    jr nc, @-$3e                                  ; $7ade: $30 $c0

    ld a, [hl+]                                   ; $7ae0: $2a
    jp z, Jump_0cf_6000                           ; $7ae1: $ca $00 $60

    ret nz                                        ; $7ae4: $c0

    ld [hl], b                                    ; $7ae5: $70
    ret nz                                        ; $7ae6: $c0

    dec sp                                        ; $7ae7: $3b
    ld hl, sp+$27                                 ; $7ae8: $f8 $27
    ldh [rP1], a                                  ; $7aea: $e0 $00
    jr nz, jr_0cf_7b15                            ; $7aec: $20 $27

    db $10                                        ; $7aee: $10
    inc bc                                        ; $7aef: $03
    jp c, $085b                                   ; $7af0: $da $5b $08

    rrca                                          ; $7af3: $0f
    nop                                           ; $7af4: $00
    daa                                           ; $7af5: $27
    jr nc, @+$4c                                  ; $7af6: $30 $4a

    ld l, b                                       ; $7af8: $68
    add b                                         ; $7af9: $80
    rlca                                          ; $7afa: $07
    cp b                                          ; $7afb: $b8
    add e                                         ; $7afc: $83
    nop                                           ; $7afd: $00
    sbc c                                         ; $7afe: $99
    db $fc                                        ; $7aff: $fc
    call z, $e4b8                                 ; $7b00: $cc $b8 $e4
    jp c, Jump_000_108f                           ; $7b03: $da $8f $10

    nop                                           ; $7b06: $00
    ld [hl], b                                    ; $7b07: $70
    or a                                          ; $7b08: $b7
    ret z                                         ; $7b09: $c8

    rlca                                          ; $7b0a: $07
    rlca                                          ; $7b0b: $07
    inc bc                                        ; $7b0c: $03
    ld a, a                                       ; $7b0d: $7f
    rst $38                                       ; $7b0e: $ff
    nop                                           ; $7b0f: $00
    ld [bc], a                                    ; $7b10: $02
    cp d                                          ; $7b11: $ba
    ld b, $f2                                     ; $7b12: $06 $f2
    inc d                                         ; $7b14: $14

jr_0cf_7b15:
    ld [de], a                                    ; $7b15: $12
    ret c                                         ; $7b16: $d8

    ld [c], a                                     ; $7b17: $e2
    nop                                           ; $7b18: $00
    ld a, b                                       ; $7b19: $78
    ld a, [de]                                    ; $7b1a: $1a
    ld h, b                                       ; $7b1b: $60
    ld [bc], a                                    ; $7b1c: $02
    ld h, h                                       ; $7b1d: $64
    ld [bc], a                                    ; $7b1e: $02
    sbc b                                         ; $7b1f: $98
    ld a, [de]                                    ; $7b20: $1a
    nop                                           ; $7b21: $00
    ret nz                                        ; $7b22: $c0

    ld e, l                                       ; $7b23: $5d
    ret nz                                        ; $7b24: $c0

    ld e, b                                       ; $7b25: $58
    ld d, c                                       ; $7b26: $51
    ret nz                                        ; $7b27: $c0

    ld h, c                                       ; $7b28: $61
    ret nz                                        ; $7b29: $c0

    nop                                           ; $7b2a: $00
    add hl, hl                                    ; $7b2b: $29
    ret z                                         ; $7b2c: $c8

    ld sp, $34c1                                  ; $7b2d: $31 $c1 $34
    call nz, $c828                                ; $7b30: $c4 $28 $c8
    nop                                           ; $7b33: $00
    adc h                                         ; $7b34: $8c
    or a                                          ; $7b35: $b7
    inc b                                         ; $7b36: $04
    dec a                                         ; $7b37: $3d
    cp a                                          ; $7b38: $bf
    and b                                         ; $7b39: $a0
    rra                                           ; $7b3a: $1f
    add b                                         ; $7b3b: $80
    nop                                           ; $7b3c: $00
    db $10                                        ; $7b3d: $10
    rrca                                          ; $7b3e: $0f
    and a                                         ; $7b3f: $a7
    adc b                                         ; $7b40: $88
    ldh [$c7], a                                  ; $7b41: $e0 $c7
    and h                                         ; $7b43: $a4
    inc bc                                        ; $7b44: $03
    nop                                           ; $7b45: $00
    ld hl, sp+$00                                 ; $7b46: $f8 $00
    db $fc                                        ; $7b48: $fc
    nop                                           ; $7b49: $00
    db $fc                                        ; $7b4a: $fc
    inc bc                                        ; $7b4b: $03
    db $fc                                        ; $7b4c: $fc
    ld [bc], a                                    ; $7b4d: $02
    nop                                           ; $7b4e: $00
    add [hl]                                      ; $7b4f: $86
    ld a, b                                       ; $7b50: $78
    ld c, $f2                                     ; $7b51: $0e $f2
    inc e                                         ; $7b53: $1c
    db $e4                                        ; $7b54: $e4
    inc a                                         ; $7b55: $3c
    call z, $1a00                                 ; $7b56: $cc $00 $1a
    sbc b                                         ; $7b59: $98
    ld a, [bc]                                    ; $7b5a: $0a
    ld [$4a48], sp                                ; $7b5b: $08 $48 $4a
    db $f4                                        ; $7b5e: $f4
    or d                                          ; $7b5f: $b2
    nop                                           ; $7b60: $00
    ld c, $e2                                     ; $7b61: $0e $e2
    ld b, $52                                     ; $7b63: $06 $52
    ld b, d                                       ; $7b65: $42
    ret c                                         ; $7b66: $d8

    ld b, d                                       ; $7b67: $42
    call c, Call_0cf_580a                         ; $7b68: $dc $0a $58
    ret nz                                        ; $7b6b: $c0

    ld c, a                                       ; $7b6c: $4f
    ret nz                                        ; $7b6d: $c0

    inc bc                                        ; $7b6e: $03
    nop                                           ; $7b6f: $00
    ld c, h                                       ; $7b70: $4c
    ld [bc], a                                    ; $7b71: $02
    nop                                           ; $7b72: $00
    ld b, [hl]                                    ; $7b73: $46
    nop                                           ; $7b74: $00
    add b                                         ; $7b75: $80
    ld a, a                                       ; $7b76: $7f
    rst $38                                       ; $7b77: $ff
    nop                                           ; $7b78: $00
    ld [hl-], a                                   ; $7b79: $32
    and c                                         ; $7b7a: $a1
    db $10                                        ; $7b7b: $10
    sub c                                         ; $7b7c: $91
    nop                                           ; $7b7d: $00
    ld a, [bc]                                    ; $7b7e: $0a
    inc bc                                        ; $7b7f: $03
    jp c, $8b83                                   ; $7b80: $da $83 $8b

    ld a, [hl-]                                   ; $7b83: $3a
    rrca                                          ; $7b84: $0f
    ld a, [hl]                                    ; $7b85: $7e
    nop                                           ; $7b86: $00
    rst $38                                       ; $7b87: $ff
    nop                                           ; $7b88: $00
    nop                                           ; $7b89: $00
    nop                                           ; $7b8a: $00
    add c                                         ; $7b8b: $81
    ld a, l                                       ; $7b8c: $7d
    ld a, c                                       ; $7b8d: $79
    add l                                         ; $7b8e: $85
    nop                                           ; $7b8f: $00
    ld hl, sp-$1f                                 ; $7b90: $f8 $e1
    ret nz                                        ; $7b92: $c0

    ret nz                                        ; $7b93: $c0

    ccf                                           ; $7b94: $3f
    ei                                            ; $7b95: $fb
    ccf                                           ; $7b96: $3f
    and a                                         ; $7b97: $a7
    add b                                         ; $7b98: $80
    db $10                                        ; $7b99: $10
    ld [$c406], sp                                ; $7b9a: $08 $06 $c4
    ld b, d                                       ; $7b9d: $42
    ld h, b                                       ; $7b9e: $60
    ld [hl-], a                                   ; $7b9f: $32
    jr c, jr_0cf_7bac                             ; $7ba0: $38 $0a

    nop                                           ; $7ba2: $00
    sbc h                                         ; $7ba3: $9c
    ld l, $ec                                     ; $7ba4: $2e $ec
    ld a, [de]                                    ; $7ba6: $1a
    db $fc                                        ; $7ba7: $fc
    nop                                           ; $7ba8: $00
    cp $fe                                        ; $7ba9: $fe $fe
    nop                                           ; $7bab: $00

jr_0cf_7bac:
    nop                                           ; $7bac: $00
    nop                                           ; $7bad: $00
    ld bc, $00f3                                  ; $7bae: $01 $f3 $00
    inc c                                         ; $7bb1: $0c
    rst $38                                       ; $7bb2: $ff
    ld a, a                                       ; $7bb3: $7f
    ret nz                                        ; $7bb4: $c0

    ld a, a                                       ; $7bb5: $7f
    inc bc                                        ; $7bb6: $03
    nop                                           ; $7bb7: $00
    ld [bc], a                                    ; $7bb8: $02
    nop                                           ; $7bb9: $00
    ld h, e                                       ; $7bba: $63
    call c, $fe00                                 ; $7bbb: $dc $00 $fe
    ld e, l                                       ; $7bbe: $5d
    db $e4                                        ; $7bbf: $e4
    ld h, e                                       ; $7bc0: $63
    rst $38                                       ; $7bc1: $ff
    nop                                           ; $7bc2: $00
    nop                                           ; $7bc3: $00
    inc bc                                        ; $7bc4: $03
    nop                                           ; $7bc5: $00
    inc bc                                        ; $7bc6: $03
    dec c                                         ; $7bc7: $0d
    rrca                                          ; $7bc8: $0f
    jr @+$21                                      ; $7bc9: $18 $1f

    ld hl, $712f                                  ; $7bcb: $21 $2f $71
    ld [$800e], sp                                ; $7bce: $08 $0e $80
    ccf                                           ; $7bd1: $3f
    and e                                         ; $7bd2: $a3
    stop                                          ; $7bd3: $10 $00
    add b                                         ; $7bd5: $80
    rlca                                          ; $7bd6: $07
    nop                                           ; $7bd7: $00
    nop                                           ; $7bd8: $00
    ld [$ac38], sp                                ; $7bd9: $08 $38 $ac
    ld h, l                                       ; $7bdc: $65
    ld d, e                                       ; $7bdd: $53
    adc [hl]                                      ; $7bde: $8e
    sbc l                                         ; $7bdf: $9d
    ret nc                                        ; $7be0: $d0

    nop                                           ; $7be1: $00
    sbc h                                         ; $7be2: $9c
    pop bc                                        ; $7be3: $c1
    cp $00                                        ; $7be4: $fe $00
    ld [bc], a                                    ; $7be6: $02
    db $fc                                        ; $7be7: $fc
    ld [bc], a                                    ; $7be8: $02
    ld a, $00                                     ; $7be9: $3e $00
    jp nz, Jump_0cf_421e                          ; $7beb: $c2 $1e $42

    ld c, $c2                                     ; $7bee: $0e $c2
    ld c, $f2                                     ; $7bf0: $0e $f2
    ld b, $00                                     ; $7bf2: $06 $00
    ld [bc], a                                    ; $7bf4: $02
    ld b, $5a                                     ; $7bf5: $06 $5a
    ret nz                                        ; $7bf7: $c0

    ld e, l                                       ; $7bf8: $5d
    pop bc                                        ; $7bf9: $c1
    ld a, b                                       ; $7bfa: $78
    pop bc                                        ; $7bfb: $c1
    nop                                           ; $7bfc: $00
    ld h, b                                       ; $7bfd: $60
    rst $00                                       ; $7bfe: $c7
    add e                                         ; $7bff: $83
    ld e, e                                       ; $7c00: $5b
    and b                                         ; $7c01: $a0
    ld e, [hl]                                    ; $7c02: $5e
    ret nz                                        ; $7c03: $c0

    ld b, l                                       ; $7c04: $45
    nop                                           ; $7c05: $00
    ldh a, [rKEY1]                                ; $7c06: $f0 $4d
    ld [hl], b                                    ; $7c08: $70
    ld l, [hl]                                    ; $7c09: $6e
    add b                                         ; $7c0a: $80
    call c, $d802                                 ; $7c0b: $dc $02 $d8
    nop                                           ; $7c0e: $00
    ld h, e                                       ; $7c0f: $63
    ld h, b                                       ; $7c10: $60
    ld c, e                                       ; $7c11: $4b
    ld e, b                                       ; $7c12: $58
    jp nc, $b05b                                  ; $7c13: $d2 $5b $b0

    ld b, $00                                     ; $7c16: $06 $00
    inc hl                                        ; $7c18: $23
    dec c                                         ; $7c19: $0d
    inc d                                         ; $7c1a: $14
    cp b                                          ; $7c1b: $b8
    sbc b                                         ; $7c1c: $98
    ld de, $c447                                  ; $7c1d: $11 $47 $c4
    nop                                           ; $7c20: $00
    ld [hl], h                                    ; $7c21: $74
    ld b, [hl]                                    ; $7c22: $46
    ld hl, sp+$02                                 ; $7c23: $f8 $02
    ld a, c                                       ; $7c25: $79
    ld h, c                                       ; $7c26: $61
    inc c                                         ; $7c27: $0c
    nop                                           ; $7c28: $00
    nop                                           ; $7c29: $00
    ld e, a                                       ; $7c2a: $5f
    ret nz                                        ; $7c2b: $c0

    add sp, $22                                   ; $7c2c: $e8 $22
    add sp, -$7e                                  ; $7c2e: $e8 $82
    db $fc                                        ; $7c30: $fc
    sub d                                         ; $7c31: $92
    nop                                           ; $7c32: $00
    ld a, h                                       ; $7c33: $7c
    ld [hl+], a                                   ; $7c34: $22
    call c, $b89e                                 ; $7c35: $dc $9e $b8
    ld a, [de]                                    ; $7c38: $1a
    ld hl, sp-$36                                 ; $7c39: $f8 $ca
    nop                                           ; $7c3b: $00
    db $f4                                        ; $7c3c: $f4
    ld a, [c]                                     ; $7c3d: $f2
    ld a, [c]                                     ; $7c3e: $f2
    ld c, h                                       ; $7c3f: $4c

Jump_0cf_7c40:
    ld [c], a                                     ; $7c40: $e2
    ld b, h                                       ; $7c41: $44
    call nz, Call_000_000c                        ; $7c42: $c4 $0c $00
    ret nz                                        ; $7c45: $c0

    ld a, [hl-]                                   ; $7c46: $3a
    add $70                                       ; $7c47: $c6 $70
    ldh a, [rLCDC]                                ; $7c49: $f0 $40
    add c                                         ; $7c4b: $81
    ret nz                                        ; $7c4c: $c0

    nop                                           ; $7c4d: $00
    sub d                                         ; $7c4e: $92
    ret                                           ; $7c4f: $c9


    ld b, d                                       ; $7c50: $42
    rra                                           ; $7c51: $1f
    pop bc                                        ; $7c52: $c1
    sub [hl]                                      ; $7c53: $96
    add b                                         ; $7c54: $80
    ld e, e                                       ; $7c55: $5b
    nop                                           ; $7c56: $00
    jr c, jr_0cf_7ca4                             ; $7c57: $38 $4b

    jr nc, jr_0cf_7c72                            ; $7c59: $30 $17

    ret nz                                        ; $7c5b: $c0

    rst $08                                       ; $7c5c: $cf
    sbc h                                         ; $7c5d: $9c
    ld c, h                                       ; $7c5e: $4c
    nop                                           ; $7c5f: $00
    sbc h                                         ; $7c60: $9c
    ld c, [hl]                                    ; $7c61: $4e
    rra                                           ; $7c62: $1f
    and [hl]                                      ; $7c63: $a6
    ccf                                           ; $7c64: $3f
    rlca                                          ; $7c65: $07

jr_0cf_7c66:
    ld b, $f2                                     ; $7c66: $06 $f2
    nop                                           ; $7c68: $00
    ld [bc], a                                    ; $7c69: $02
    ld [c], a                                     ; $7c6a: $e2
    ld e, $f6                                     ; $7c6b: $1e $f6
    inc l                                         ; $7c6d: $2c
    add b                                         ; $7c6e: $80
    add hl, sp                                    ; $7c6f: $39
    pop bc                                        ; $7c70: $c1
    nop                                           ; $7c71: $00

jr_0cf_7c72:
    scf                                           ; $7c72: $37
    ld b, h                                       ; $7c73: $44
    call z, $f8c2                                 ; $7c74: $cc $c2 $f8
    ld b, d                                       ; $7c77: $42
    add d                                         ; $7c78: $82
    ld b, $00                                     ; $7c79: $06 $00
    ld b, d                                       ; $7c7b: $42
    ld c, $62                                     ; $7c7c: $0e $62
    ld c, $e2                                     ; $7c7e: $0e $e2
    ld c, $e2                                     ; $7c80: $0e $e2
    adc $00                                       ; $7c82: $ce $00
    jp nz, $b39e                                  ; $7c84: $c2 $9e $b3

    ld d, e                                       ; $7c87: $53
    or a                                          ; $7c88: $b7
    ld d, a                                       ; $7c89: $57
    db $e4                                        ; $7c8a: $e4
    ld d, e                                       ; $7c8b: $53
    nop                                           ; $7c8c: $00
    ldh [$59], a                                  ; $7c8d: $e0 $59
    ldh a, [$7e]                                  ; $7c8f: $f0 $7e
    ldh a, [$72]                                  ; $7c91: $f0 $72
    add b                                         ; $7c93: $80
    ld a, a                                       ; $7c94: $7f
    nop                                           ; $7c95: $00
    rst $38                                       ; $7c96: $ff
    nop                                           ; $7c97: $00
    call z, $e727                                 ; $7c98: $cc $27 $e7
    sub b                                         ; $7c9b: $90
    jr c, jr_0cf_7c66                             ; $7c9c: $38 $c8

    ld [bc], a                                    ; $7c9e: $02
    add hl, sp                                    ; $7c9f: $39
    ret                                           ; $7ca0: $c9


    pop af                                        ; $7ca1: $f1
    adc c                                         ; $7ca2: $89
    pop hl                                        ; $7ca3: $e1

jr_0cf_7ca4:
    db $10                                        ; $7ca4: $10
    call z, RST_00                                ; $7ca5: $cc $00 $00
    nop                                           ; $7ca8: $00
    ld b, $c5                                     ; $7ca9: $06 $c5
    inc l                                         ; $7cab: $2c
    xor e                                         ; $7cac: $ab
    inc hl                                        ; $7cad: $23
    ld b, l                                       ; $7cae: $45
    ld de, $0862                                  ; $7caf: $11 $62 $08
    inc b                                         ; $7cb2: $04
    adc b                                         ; $7cb3: $88
    add [hl]                                      ; $7cb4: $86
    ldh a, [rNR10]                                ; $7cb5: $f0 $10
    ld [$2682], sp                                ; $7cb7: $08 $82 $26
    ld b, $04                                     ; $7cba: $06 $04
    ld [hl], d                                    ; $7cbc: $72
    add [hl]                                      ; $7cbd: $86
    ld [hl-], a                                   ; $7cbe: $32
    jp z, $bc02                                   ; $7cbf: $ca $02 $bc

    nop                                           ; $7cc2: $00
    ld c, $00                                     ; $7cc3: $0e $00
    nop                                           ; $7cc5: $00
    cp $fe                                        ; $7cc6: $fe $fe
    nop                                           ; $7cc8: $00
    nop                                           ; $7cc9: $00
    ld bc, $00f2                                  ; $7cca: $01 $f2 $00
    db $10                                        ; $7ccd: $10
    rst $38                                       ; $7cce: $ff
    ld a, a                                       ; $7ccf: $7f
    ret nz                                        ; $7cd0: $c0

    ld [bc], a                                    ; $7cd1: $02
    ld [$c07c], sp                                ; $7cd2: $08 $7c $c0
    ld a, e                                       ; $7cd5: $7b
    jp Jump_0cf_7600                              ; $7cd6: $c3 $00 $76


    or e                                          ; $7cd9: $b3
    halt                                          ; $7cda: $76
    and b                                         ; $7cdb: $a0
    ld h, a                                       ; $7cdc: $67
    rst $38                                       ; $7cdd: $ff
    nop                                           ; $7cde: $00
    nop                                           ; $7cdf: $00
    nop                                           ; $7ce0: $00
    ld a, [hl]                                    ; $7ce1: $7e
    ld c, d                                       ; $7ce2: $4a
    inc [hl]                                      ; $7ce3: $34
    db $ed                                        ; $7ce4: $ed
    ld a, e                                       ; $7ce5: $7b
    ld hl, $3cfe                                  ; $7ce6: $21 $fe $3c
    nop                                           ; $7ce9: $00
    adc $bd                                       ; $7cea: $ce $bd
    ld h, [hl]                                    ; $7cec: $66
    ld h, b                                       ; $7ced: $60
    dec e                                         ; $7cee: $1d
    rst $38                                       ; $7cef: $ff
    nop                                           ; $7cf0: $00
    jr nz, jr_0cf_7cf3                            ; $7cf1: $20 $00

jr_0cf_7cf3:
    ld a, [hl]                                    ; $7cf3: $7e
    ld e, d                                       ; $7cf4: $5a
    inc l                                         ; $7cf5: $2c
    or a                                          ; $7cf6: $b7
    ld e, [hl]                                    ; $7cf7: $5e
    inc b                                         ; $7cf8: $04
    ld a, a                                       ; $7cf9: $7f
    xor h                                         ; $7cfa: $ac
    nop                                           ; $7cfb: $00
    ld h, e                                       ; $7cfc: $63
    sbc l                                         ; $7cfd: $9d
    ld b, [hl]                                    ; $7cfe: $46
    ld b, $b8                                     ; $7cff: $06 $b8
    cp $00                                        ; $7d01: $fe $00
    ld [bc], a                                    ; $7d03: $02
    nop                                           ; $7d04: $00
    db $fc                                        ; $7d05: $fc
    ld [bc], a                                    ; $7d06: $02
    db $fc                                        ; $7d07: $fc
    jp nz, Jump_000_02fc                          ; $7d08: $c2 $fc $02

    sbc [hl]                                      ; $7d0b: $9e
    jp nz, Jump_0cf_4e00                          ; $7d0c: $c2 $00 $4e

    call z, Call_000_046e                         ; $7d0f: $cc $6e $04
    and $af                                       ; $7d12: $e6 $af
    ld h, c                                       ; $7d14: $61
    xor e                                         ; $7d15: $ab
    nop                                           ; $7d16: $00
    ld h, l                                       ; $7d17: $65
    bit 6, h                                      ; $7d18: $cb $74
    jp z, $c575                                   ; $7d1a: $ca $75 $c5

jr_0cf_7d1d:
    ldh a, [$c2]                                  ; $7d1d: $f0 $c2
    nop                                           ; $7d1f: $00
    db $fc                                        ; $7d20: $fc
    jp nz, $c23e                                  ; $7d21: $c2 $3e $c2

    ld a, $44                                     ; $7d24: $3e $44
    add b                                         ; $7d26: $80
    or d                                          ; $7d27: $b2
    nop                                           ; $7d28: $00
    ld [hl-], a                                   ; $7d29: $32
    rst $08                                       ; $7d2a: $cf
    or b                                          ; $7d2b: $b0
    call nz, Call_000_0a43                        ; $7d2c: $c4 $43 $0a
    ld sp, $00b4                                  ; $7d2f: $31 $b4 $00
    ld a, c                                       ; $7d32: $79
    ld bc, $30b4                                  ; $7d33: $01 $b4 $30
    sub h                                         ; $7d36: $94
    ld [hl+], a                                   ; $7d37: $22
    ld bc, $004d                                  ; $7d38: $01 $4d $00
    ld c, h                                       ; $7d3b: $4c
    di                                            ; $7d3c: $f3
    dec c                                         ; $7d3d: $0d
    ld bc, $12e0                                  ; $7d3e: $01 $e0 $12
    call z, $002d                                 ; $7d41: $cc $2d $00
    sbc [hl]                                      ; $7d44: $9e
    nop                                           ; $7d45: $00
    xor l                                         ; $7d46: $ad
    inc c                                         ; $7d47: $0c
    add hl, hl                                    ; $7d48: $29
    db $f4                                        ; $7d49: $f4
    add $d4                                       ; $7d4a: $c6 $d4
    nop                                           ; $7d4c: $00
    and $d2                                       ; $7d4d: $e6 $d2
    ld b, $52                                     ; $7d4f: $06 $52
    ld b, $a2                                     ; $7d51: $06 $a2
    ld c, $42                                     ; $7d53: $0e $42
    ld [bc], a                                    ; $7d55: $02
    ld a, $42                                     ; $7d56: $3e $42
    ld e, $42                                     ; $7d58: $1e $42
    ld e, $c4                                     ; $7d5a: $1e $c4
    inc [hl]                                      ; $7d5c: $34
    nop                                           ; $7d5d: $00
    ccf                                           ; $7d5e: $3f
    nop                                           ; $7d5f: $00
    jp $c13f                                      ; $7d60: $c3 $3f $c1


    ld a, a                                       ; $7d63: $7f
    ret nz                                        ; $7d64: $c0

    ld a, [hl]                                    ; $7d65: $7e
    ret nz                                        ; $7d66: $c0

    ld a, l                                       ; $7d67: $7d
    nop                                           ; $7d68: $00
    pop bc                                        ; $7d69: $c1
    ld a, d                                       ; $7d6a: $7a
    jp $b585                                      ; $7d6b: $c3 $85 $b5


    call Call_0cf_4a49                            ; $7d6e: $cd $49 $4a
    nop                                           ; $7d71: $00
    ld a, e                                       ; $7d72: $7b
    add l                                         ; $7d73: $85
    rlca                                          ; $7d74: $07
    ccf                                           ; $7d75: $3f
    ld b, a                                       ; $7d76: $47
    ld [hl], e                                    ; $7d77: $73
    add hl, sp                                    ; $7d78: $39
    inc h                                         ; $7d79: $24
    nop                                           ; $7d7a: $00
    jr jr_0cf_7d1d                                ; $7d7b: $18 $a0

    sbc a                                         ; $7d7d: $9f
    and c                                         ; $7d7e: $a1
    xor l                                         ; $7d7f: $ad
    or e                                          ; $7d80: $b3
    sub d                                         ; $7d81: $92
    ld d, d                                       ; $7d82: $52
    nop                                           ; $7d83: $00
    sbc $a1                                       ; $7d84: $de $a1
    ldh [$fc], a                                  ; $7d86: $e0 $fc
    ld [c], a                                     ; $7d88: $e2
    adc h                                         ; $7d89: $8c
    sbc $20                                       ; $7d8a: $de $20
    ld [$051c], sp                                ; $7d8c: $08 $1c $05
    ld sp, hl                                     ; $7d8f: $f9
    ld [hl+], a                                   ; $7d90: $22
    inc [hl]                                      ; $7d91: $34
    nop                                           ; $7d92: $00
    jp nz, $82fc                                  ; $7d93: $c2 $fc $82

    add b                                         ; $7d96: $80
    add h                                         ; $7d97: $84
    nop                                           ; $7d98: $00
    add d                                         ; $7d99: $82
    db $fc                                        ; $7d9a: $fc
    add d                                         ; $7d9b: $82
    inc a                                         ; $7d9c: $3c
    add d                                         ; $7d9d: $82
    cp h                                          ; $7d9e: $bc
    ld a, e                                       ; $7d9f: $7b
    nop                                           ; $7da0: $00
    ret nz                                        ; $7da1: $c0

    ld [hl], b                                    ; $7da2: $70
    ret nz                                        ; $7da3: $c0

    and a                                         ; $7da4: $a7
    rst $00                                       ; $7da5: $c7
    adc a                                         ; $7da6: $8f
    rst $08                                       ; $7da7: $cf
    sbc a                                         ; $7da8: $9f
    nop                                           ; $7da9: $00
    add $bf                                       ; $7daa: $c6 $bf
    call c, $7f80                                 ; $7dac: $dc $80 $7f
    rst $38                                       ; $7daf: $ff
    nop                                           ; $7db0: $00
    ld h, b                                       ; $7db1: $60
    nop                                           ; $7db2: $00
    ccf                                           ; $7db3: $3f
    ld d, c                                       ; $7db4: $51
    rra                                           ; $7db5: $1f
    rlca                                          ; $7db6: $07
    rra                                           ; $7db7: $1f
    adc b                                         ; $7db8: $88
    rla                                           ; $7db9: $17
    rrca                                          ; $7dba: $0f
    db $10                                        ; $7dbb: $10
    sub h                                         ; $7dbc: $94
    rlca                                          ; $7dbd: $07
    adc a                                         ; $7dbe: $8f
    call z, RST_00                                ; $7dbf: $cc $00 $00
    ld [bc], a                                    ; $7dc2: $02
    ld hl, sp-$6a                                 ; $7dc3: $f8 $96
    nop                                           ; $7dc5: $00
    ld a, [c]                                     ; $7dc6: $f2
    ld [c], a                                     ; $7dc7: $e2
    ld e, $11                                     ; $7dc8: $1e $11
    add sp, -$10                                  ; $7dca: $e8 $f0
    dec hl                                        ; $7dcc: $2b
    ldh [rLCDC], a                                ; $7dcd: $e0 $40
    pop af                                        ; $7dcf: $f1
    db $10                                        ; $7dd0: $10
    ld [$82bc], sp                                ; $7dd1: $08 $bc $82
    inc e                                         ; $7dd4: $1c
    ld [bc], a                                    ; $7dd5: $02
    ld c, $c2                                     ; $7dd6: $0e $c2
    nop                                           ; $7dd8: $00
    ld b, $e2                                     ; $7dd9: $06 $e2
    jp nz, Jump_0cf_62f0                          ; $7ddb: $c2 $f0 $62

    ld hl, sp+$00                                 ; $7dde: $f8 $00
    cp $00                                        ; $7de0: $fe $00
    cp $00                                        ; $7de2: $fe $00
    nop                                           ; $7de4: $00
    ld bc, $00ed                                  ; $7de5: $01 $ed $00
    ld bc, $ff80                                  ; $7de8: $01 $80 $ff
    cp a                                          ; $7deb: $bf
    ret nz                                        ; $7dec: $c0

    cp a                                          ; $7ded: $bf
    ret nz                                        ; $7dee: $c0

    cp [hl]                                       ; $7def: $be
    ld [bc], a                                    ; $7df0: $02
    nop                                           ; $7df1: $00
    nop                                           ; $7df2: $00
    cp h                                          ; $7df3: $bc
    ret nz                                        ; $7df4: $c0

    ld a, l                                       ; $7df5: $7d
    ret nz                                        ; $7df6: $c0

    ld a, e                                       ; $7df7: $7b
    ret nz                                        ; $7df8: $c0

    rst $38                                       ; $7df9: $ff
    nop                                           ; $7dfa: $00
    nop                                           ; $7dfb: $00
    nop                                           ; $7dfc: $00
    di                                            ; $7dfd: $f3
    db $e4                                        ; $7dfe: $e4
    ldh [rP1], a                                  ; $7dff: $e0 $00
    dec e                                         ; $7e01: $1d
    ld h, b                                       ; $7e02: $60
    db $db                                        ; $7e03: $db
    ld [bc], a                                    ; $7e04: $02
    sbc c                                         ; $7e05: $99
    and b                                         ; $7e06: $a0
    and a                                         ; $7e07: $a7
    add a                                         ; $7e08: $87
    inc a                                         ; $7e09: $3c
    dec de                                        ; $7e0a: $1b
    stop                                          ; $7e0b: $10 $00
    inc sp                                        ; $7e0d: $33
    nop                                           ; $7e0e: $00
    ld b, c                                       ; $7e0f: $41
    add c                                         ; $7e10: $81
    jr jr_0cf_7e33                                ; $7e11: $18 $20

    db $fd                                        ; $7e13: $fd
    ld d, [hl]                                    ; $7e14: $56
    and c                                         ; $7e15: $a1
    cp a                                          ; $7e16: $bf
    nop                                           ; $7e17: $00
    ld e, b                                       ; $7e18: $58

jr_0cf_7e19:
    db $db                                        ; $7e19: $db
    add d                                         ; $7e1a: $82
    ld l, l                                       ; $7e1b: $6d
    cp $00                                        ; $7e1c: $fe $00
    ld [bc], a                                    ; $7e1e: $02
    db $fc                                        ; $7e1f: $fc
    add b                                         ; $7e20: $80
    ld [bc], a                                    ; $7e21: $02
    ld [$fcc2], sp                                ; $7e22: $08 $c2 $fc
    ld b, d                                       ; $7e25: $42
    ld a, h                                       ; $7e26: $7c
    ld b, d                                       ; $7e27: $42
    ld c, h                                       ; $7e28: $4c
    and d                                         ; $7e29: $a2
    nop                                           ; $7e2a: $00
    xor h                                         ; $7e2b: $ac
    cp l                                          ; $7e2c: $bd
    ld b, l                                       ; $7e2d: $45
    cp a                                          ; $7e2e: $bf
    ld b, a                                       ; $7e2f: $47
    or a                                          ; $7e30: $b7
    ld b, [hl]                                    ; $7e31: $46
    and a                                         ; $7e32: $a7

jr_0cf_7e33:
    nop                                           ; $7e33: $00
    ld b, a                                       ; $7e34: $47
    ldh [rLCDC], a                                ; $7e35: $e0 $40
    ld a, [c]                                     ; $7e37: $f2
    ld b, c                                       ; $7e38: $41
    ld hl, sp+$42                                 ; $7e39: $f8 $42
    ld sp, hl                                     ; $7e3b: $f9
    nop                                           ; $7e3c: $00
    ld b, d                                       ; $7e3d: $42
    ret c                                         ; $7e3e: $d8

    rst $10                                       ; $7e3f: $d7
    ldh a, [$ef]                                  ; $7e40: $f0 $ef
    ccf                                           ; $7e42: $3f
    and b                                         ; $7e43: $a0
    ld a, b                                       ; $7e44: $78
    nop                                           ; $7e45: $00
    ld h, b                                       ; $7e46: $60
    jr nc, jr_0cf_7e19                            ; $7e47: $30 $d0

    ccf                                           ; $7e49: $3f
    rst $38                                       ; $7e4a: $ff
    cp b                                          ; $7e4b: $b8
    ld b, a                                       ; $7e4c: $47
    cp b                                          ; $7e4d: $b8
    nop                                           ; $7e4e: $00
    ld c, b                                       ; $7e4f: $48
    add $29                                       ; $7e50: $c6 $29
    rst $28                                       ; $7e52: $ef
    ret nc                                        ; $7e53: $d0

    ld de, $80ee                                  ; $7e54: $11 $ee $80
    nop                                           ; $7e57: $00
    db $fc                                        ; $7e58: $fc
    rlca                                          ; $7e59: $07
    ccf                                           ; $7e5a: $3f
    add e                                         ; $7e5b: $83
    ld a, h                                       ; $7e5c: $7c
    ld a, h                                       ; $7e5d: $7c
    add e                                         ; $7e5e: $83
    cp b                                          ; $7e5f: $b8
    nop                                           ; $7e60: $00
    call nz, $ece2                                ; $7e61: $c4 $e2 $ec
    jp nz, $8ccc                                  ; $7e64: $c2 $cc $8c

    add d                                         ; $7e67: $82
    ld b, h                                       ; $7e68: $44
    nop                                           ; $7e69: $00
    ld b, d                                       ; $7e6a: $42
    inc b                                         ; $7e6b: $04
    ld [bc], a                                    ; $7e6c: $02
    call z, Call_0cf_42c2                         ; $7e6d: $cc $c2 $42
    sbc h                                         ; $7e70: $9c
    add d                                         ; $7e71: $82
    nop                                           ; $7e72: $00
    call c, Call_0cf_41fc                         ; $7e73: $dc $fc $41
    db $fc                                        ; $7e76: $fc
    ld b, c                                       ; $7e77: $41
    ld a, h                                       ; $7e78: $7c
    pop bc                                        ; $7e79: $c1
    ld a, l                                       ; $7e7a: $7d
    ld [$7ec0], sp                                ; $7e7b: $08 $c0 $7e
    ret nz                                        ; $7e7e: $c0

    ld a, a                                       ; $7e7f: $7f
    ld [bc], a                                    ; $7e80: $02
    nop                                           ; $7e81: $00
    ld a, [hl]                                    ; $7e82: $7e
    ret nz                                        ; $7e83: $c0

    or b                                          ; $7e84: $b0
    nop                                           ; $7e85: $00
    add hl, hl                                    ; $7e86: $29
    ccf                                           ; $7e87: $3f
    jr nc, jr_0cf_7e8b                            ; $7e88: $30 $01

    cp [hl]                                       ; $7e8a: $be

jr_0cf_7e8b:
    inc bc                                        ; $7e8b: $03
    db $fd                                        ; $7e8c: $fd
    ld a, b                                       ; $7e8d: $78
    nop                                           ; $7e8e: $00
    rlca                                          ; $7e8f: $07
    or b                                          ; $7e90: $b0
    adc a                                         ; $7e91: $8f
    rra                                           ; $7e92: $1f
    and a                                         ; $7e93: $a7
    rrca                                          ; $7e94: $0f
    inc de                                        ; $7e95: $13
    ld a, h                                       ; $7e96: $7c
    nop                                           ; $7e97: $00
    call nz, $03f7                                ; $7e98: $c4 $f7 $03
    ei                                            ; $7e9b: $fb
    ld a, [$cff3]                                 ; $7e9c: $fa $f3 $cf
    db $e3                                        ; $7e9f: $e3
    nop                                           ; $7ea0: $00
    inc b                                         ; $7ea1: $04
    rst $38                                       ; $7ea2: $ff
    nop                                           ; $7ea3: $00
    ld c, e                                       ; $7ea4: $4b
    add a                                         ; $7ea5: $87
    or a                                          ; $7ea6: $b7
    adc $5e                                       ; $7ea7: $ce $5e
    nop                                           ; $7ea9: $00
    call c, $9cde                                 ; $7eaa: $dc $de $9c
    cp h                                          ; $7ead: $bc
    ld e, $bc                                     ; $7eae: $1e $bc
    ld a, $82                                     ; $7eb0: $3e $82
    nop                                           ; $7eb2: $00
    ld a, $02                                     ; $7eb3: $3e $02
    cp [hl]                                       ; $7eb5: $be
    add d                                         ; $7eb6: $82
    db $fc                                        ; $7eb7: $fc
    ld [bc], a                                    ; $7eb8: $02
    ld a, h                                       ; $7eb9: $7c
    dec a                                         ; $7eba: $3d
    nop                                           ; $7ebb: $00
    pop bc                                        ; $7ebc: $c1
    dec sp                                        ; $7ebd: $3b
    jp $c07b                                      ; $7ebe: $c3 $7b $c0


    ld a, b                                       ; $7ec1: $78
    ret nz                                        ; $7ec2: $c0

    ld a, [hl-]                                   ; $7ec3: $3a
    nop                                           ; $7ec4: $00
    jp nz, $c636                                  ; $7ec5: $c2 $36 $c6

    add b                                         ; $7ec8: $80
    ld a, a                                       ; $7ec9: $7f
    rst $38                                       ; $7eca: $ff
    nop                                           ; $7ecb: $00
    adc a                                         ; $7ecc: $8f
    nop                                           ; $7ecd: $00
    adc b                                         ; $7ece: $88
    rlca                                          ; $7ecf: $07
    add [hl]                                      ; $7ed0: $86
    jr jr_0cf_7f3a                                ; $7ed1: $18 $67

    ccf                                           ; $7ed3: $3f
    ret z                                         ; $7ed4: $c8

    ccf                                           ; $7ed5: $3f
    jr jr_0cf_7ef8                                ; $7ed6: $18 $20

    ld [hl], b                                    ; $7ed8: $70
    ld c, a                                       ; $7ed9: $4f
    call z, $ae00                                 ; $7eda: $cc $00 $ae
    nop                                           ; $7edd: $00
    adc h                                         ; $7ede: $8c
    ld hl, sp-$04                                 ; $7edf: $f8 $fc
    ld bc, $fe05                                  ; $7ee1: $01 $05 $fe
    rst $38                                       ; $7ee4: $ff
    ret nz                                        ; $7ee5: $c0

    inc a                                         ; $7ee6: $3c
    ldh a, [$ec]                                  ; $7ee7: $f0 $ec
    db $10                                        ; $7ee9: $10
    ld [$fe40], sp                                ; $7eea: $08 $40 $fe
    cp [hl]                                       ; $7eed: $be
    ld [$827c], sp                                ; $7eee: $08 $7c $82
    cp h                                          ; $7ef1: $bc
    jp nz, $e2dc                                  ; $7ef2: $c2 $dc $e2

    nop                                           ; $7ef5: $00
    db $ec                                        ; $7ef6: $ec
    nop                                           ; $7ef7: $00

jr_0cf_7ef8:
    cp $fe                                        ; $7ef8: $fe $fe
    nop                                           ; $7efa: $00
    nop                                           ; $7efb: $00
    ld bc, $00d7                                  ; $7efc: $01 $d7 $00
    db $10                                        ; $7eff: $10
    rst $38                                       ; $7f00: $ff
    ld a, a                                       ; $7f01: $7f
    ret nz                                        ; $7f02: $c0

    ld [bc], a                                    ; $7f03: $02
    ld [$b97c], sp                                ; $7f04: $08 $7c $b9
    ld a, d                                       ; $7f07: $7a
    and h                                         ; $7f08: $a4
    ld bc, $8b67                                  ; $7f09: $01 $67 $8b
    ret nc                                        ; $7f0c: $d0

    sub e                                         ; $7f0d: $93
    call z, Call_000_00ff                         ; $7f0e: $cc $ff $00
    ld bc, $0000                                  ; $7f11: $01 $00 $00
    rlca                                          ; $7f14: $07
    ld a, b                                       ; $7f15: $78
    ret nz                                        ; $7f16: $c0

    add hl, sp                                    ; $7f17: $39
    ld e, a                                       ; $7f18: $5f
    sbc h                                         ; $7f19: $9c
    rst $28                                       ; $7f1a: $ef
    ld a, e                                       ; $7f1b: $7b
    db $10                                        ; $7f1c: $10
    rst $00                                       ; $7f1d: $c7
    ret                                           ; $7f1e: $c9


    jr nc, @+$12                                  ; $7f1f: $30 $10

    ld [$009f], sp                                ; $7f21: $08 $9f $00
    ld c, a                                       ; $7f24: $4f
    ld h, b                                       ; $7f25: $60
    nop                                           ; $7f26: $00
    inc sp                                        ; $7f27: $33
    jp Jump_0cf_61dd                              ; $7f28: $c3 $dd $61


    or $de                                        ; $7f2b: $f6 $de
    ei                                            ; $7f2d: $fb
    ld a, a                                       ; $7f2e: $7f
    ld [$00fe], sp                                ; $7f2f: $08 $fe $00
    ld [bc], a                                    ; $7f32: $02
    db $fc                                        ; $7f33: $fc
    ld [bc], a                                    ; $7f34: $02
    jr nc, jr_0cf_7fb3                            ; $7f35: $30 $7c

    add d                                         ; $7f37: $82
    sbc h                                         ; $7f38: $9c
    nop                                           ; $7f39: $00

jr_0cf_7f3a:
    and h                                         ; $7f3a: $a4
    ld [hl], a                                    ; $7f3b: $77
    sub a                                         ; $7f3c: $97
    ld c, h                                       ; $7f3d: $4c
    sbc a                                         ; $7f3e: $9f
    ld b, e                                       ; $7f3f: $43
    add h                                         ; $7f40: $84
    ld e, h                                       ; $7f41: $5c
    nop                                           ; $7f42: $00
    xor l                                         ; $7f43: $ad
    ld h, b                                       ; $7f44: $60
    xor d                                         ; $7f45: $aa
    ld l, c                                       ; $7f46: $69
    jp nz, $c160                                  ; $7f47: $c2 $60 $c1

    ld a, b                                       ; $7f4a: $78
    nop                                           ; $7f4b: $00
    ld h, [hl]                                    ; $7f4c: $66
    add [hl]                                      ; $7f4d: $86
    sub a                                         ; $7f4e: $97
    db $10                                        ; $7f4f: $10
    ccf                                           ; $7f50: $3f
    jr nz, jr_0cf_7fb3                            ; $7f51: $20 $60

    rra                                           ; $7f53: $1f
    nop                                           ; $7f54: $00
    ldh a, [$30]                                  ; $7f55: $f0 $30
    ldh [$7e], a                                  ; $7f57: $e0 $7e
    add hl, sp                                    ; $7f59: $39
    rst $00                                       ; $7f5a: $c7
    ld [hl], b                                    ; $7f5b: $70
    adc b                                         ; $7f5c: $88
    nop                                           ; $7f5d: $00
    ld a, e                                       ; $7f5e: $7b
    inc c                                         ; $7f5f: $0c
    ld e, $29                                     ; $7f60: $1e $29
    rst $18                                       ; $7f62: $df
    jp $e32c                                      ; $7f63: $c3 $2c $e3


    nop                                           ; $7f66: $00
    sub h                                         ; $7f67: $94
    pop af                                        ; $7f68: $f1
    set 7, b                                      ; $7f69: $cb $f8
    ld a, e                                       ; $7f6b: $7b
    jp $80f9                                      ; $7f6c: $c3 $f9 $80


    nop                                           ; $7f6f: $00
    ld b, d                                       ; $7f70: $42
    sbc h                                         ; $7f71: $9c
    ld [c], a                                     ; $7f72: $e2
    db $ec                                        ; $7f73: $ec
    jp nz, Jump_0cf_428e                          ; $7f74: $c2 $8e $42

    ld e, $00                                     ; $7f77: $1e $00
    ld e, [hl]                                    ; $7f79: $5e
    sbc h                                         ; $7f7a: $9c
    ld b, $84                                     ; $7f7b: $06 $84
    adc b                                         ; $7f7d: $88
    or d                                          ; $7f7e: $b2
    jr nz, jr_0cf_7f83                            ; $7f7f: $20 $02

    nop                                           ; $7f81: $00
    inc a                                         ; $7f82: $3c

jr_0cf_7f83:
    ret nz                                        ; $7f83: $c0

    dec a                                         ; $7f84: $3d
    pop bc                                        ; $7f85: $c1
    ld a, $c2                                     ; $7f86: $3e $c2
    ccf                                           ; $7f88: $3f
    pop bc                                        ; $7f89: $c1
    add b                                         ; $7f8a: $80
    add a                                         ; $7f8b: $87
    jr @+$81                                      ; $7f8c: $18 $7f

    ret nz                                        ; $7f8e: $c0

    ld sp, hl                                     ; $7f8f: $f9
    adc e                                         ; $7f90: $8b
    ld a, a                                       ; $7f91: $7f
    add $40                                       ; $7f92: $c6 $40
    nop                                           ; $7f94: $00
    ld a, a                                       ; $7f95: $7f
    ret nc                                        ; $7f96: $d0

    ld l, a                                       ; $7f97: $6f
    ld b, b                                       ; $7f98: $40
    rrca                                          ; $7f99: $0f
    ld h, e                                       ; $7f9a: $63
    ld e, $92                                     ; $7f9b: $1e $92
    ld bc, $cead                                  ; $7f9d: $01 $ad $ce
    pop de                                        ; $7fa0: $d1
    ld hl, sp+$64                                 ; $7fa1: $f8 $64
    ld hl, sp-$0c                                 ; $7fa3: $f8 $f4
    ld [bc], a                                    ; $7fa5: $02
    stop                                          ; $7fa6: $10 $00
    db $e4                                        ; $7fa8: $e4
    ldh a, [$e8]                                  ; $7fa9: $f0 $e8
    jr nc, @-$1e                                  ; $7fab: $30 $e0

    ld h, [hl]                                    ; $7fad: $66
    ret nz                                        ; $7fae: $c0

    ld a, [hl-]                                   ; $7faf: $3a
    nop                                           ; $7fb0: $00
    ld b, d                                       ; $7fb1: $42
    ld a, [bc]                                    ; $7fb2: $0a

jr_0cf_7fb3:
    ld [hl], d                                    ; $7fb3: $72
    jp nz, $c216                                  ; $7fb4: $c2 $16 $c2

    ld l, $c2                                     ; $7fb7: $2e $c2
    ld bc, $82dc                                  ; $7fb9: $01 $dc $82
    cp h                                          ; $7fbc: $bc
    dec a                                         ; $7fbd: $3d
    inc bc                                        ; $7fbe: $03
    dec e                                         ; $7fbf: $1d
    inc bc                                        ; $7fc0: $03
    jr c, jr_0cf_7feb                             ; $7fc1: $38 $28

    add b                                         ; $7fc3: $80
    rst $00                                       ; $7fc4: $c7
    ld [$7f80], sp                                ; $7fc5: $08 $80 $7f
    rst $38                                       ; $7fc8: $ff
    nop                                           ; $7fc9: $00
    pop hl                                        ; $7fca: $e1
    rlca                                          ; $7fcb: $07
    ld hl, sp+$00                                 ; $7fcc: $f8 $00
    nop                                           ; $7fce: $00
    db $fc                                        ; $7fcf: $fc
    ld bc, $02fa                                  ; $7fd0: $01 $fa $02
    db $f4                                        ; $7fd3: $f4
    ld b, $e8                                     ; $7fd4: $06 $e8
    ld b, b                                       ; $7fd6: $40
    ld [$08cc], sp                                ; $7fd7: $08 $cc $08
    adc $31                                       ; $7fda: $ce $31
    ld e, $2c                                     ; $7fdc: $1e $2c
    ld a, $5c                                     ; $7fde: $3e $5c
    ld [bc], a                                    ; $7fe0: $02
    ld a, h                                       ; $7fe1: $7c
    add hl, de                                    ; $7fe2: $19
    ld a, b                                       ; $7fe3: $78
    ld sp, $62f0                                  ; $7fe4: $31 $f0 $62
    call c, Call_000_0208                         ; $7fe7: $dc $08 $02
    nop                                           ; $7fea: $00

jr_0cf_7feb:
    nop                                           ; $7feb: $00
    ld b, d                                       ; $7fec: $42
    ld [hl], h                                    ; $7fed: $74
    ld b, d                                       ; $7fee: $42
    call z, $9c8e                                 ; $7fef: $cc $8e $9c
    ld e, $00                                     ; $7ff2: $1e $00
    inc a                                         ; $7ff4: $3c
    ld a, $7c                                     ; $7ff5: $3e $7c
    nop                                           ; $7ff7: $00
    cp $fe                                        ; $7ff8: $fe $fe
    nop                                           ; $7ffa: $00
    rst $38                                       ; $7ffb: $ff
    rst $38                                       ; $7ffc: $ff
    rst $38                                       ; $7ffd: $ff
    rst $38                                       ; $7ffe: $ff
    rst $38                                       ; $7fff: $ff
