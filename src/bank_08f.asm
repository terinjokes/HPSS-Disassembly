; Disassembly of "Harry Potter and the Sorcerer's Stone (USA).gbc"
; This file was created with:
; mgbdis v1.5 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "include/hardware.inc"
SECTION "ROM Bank $08f", ROMX[$4000], BANK[$8f]

Call_08f_4000:
    adc a                                         ; $4000: $8f
    dec d                                         ; $4001: $15

Call_08f_4002:
    ld bc, $0000                                  ; $4002: $01 $00 $00
    nop                                           ; $4005: $00
    ld bc, $0200                                  ; $4006: $01 $00 $02
    nop                                           ; $4009: $00
    inc bc                                        ; $400a: $03
    nop                                           ; $400b: $00
    nop                                           ; $400c: $00
    inc c                                         ; $400d: $0c
    nop                                           ; $400e: $00
    dec c                                         ; $400f: $0d
    nop                                           ; $4010: $00
    ld c, $00                                     ; $4011: $0e $00
    rrca                                          ; $4013: $0f
    nop                                           ; $4014: $00
    ld [bc], a                                    ; $4015: $02
    inc e                                         ; $4016: $1c
    nop                                           ; $4017: $00
    dec e                                         ; $4018: $1d
    nop                                           ; $4019: $00
    ld e, $00                                     ; $401a: $1e $00
    ld bc, $0108                                  ; $401c: $01 $08 $01
    nop                                           ; $401f: $00
    nop                                           ; $4020: $00
    inc b                                         ; $4021: $04
    nop                                           ; $4022: $00
    dec b                                         ; $4023: $05
    nop                                           ; $4024: $00
    stop                                          ; $4025: $10 $00
    ld de, $0000                                  ; $4027: $11 $00 $00
    ld [de], a                                    ; $402a: $12
    nop                                           ; $402b: $00
    inc de                                        ; $402c: $13
    nop                                           ; $402d: $00
    rra                                           ; $402e: $1f
    nop                                           ; $402f: $00
    jr nz, jr_08f_4052                            ; $4030: $20 $20

    nop                                           ; $4032: $00
    ld hl, $1018                                  ; $4033: $21 $18 $10
    ld b, $00                                     ; $4036: $06 $00
    rlca                                          ; $4038: $07
    nop                                           ; $4039: $00
    ld [$0000], sp                                ; $403a: $08 $00 $00
    inc d                                         ; $403d: $14
    nop                                           ; $403e: $00
    dec d                                         ; $403f: $15
    nop                                           ; $4040: $00
    ld d, $00                                     ; $4041: $16 $00
    rla                                           ; $4043: $17
    ld [bc], a                                    ; $4044: $02
    nop                                           ; $4045: $00
    ld [hl+], a                                   ; $4046: $22
    nop                                           ; $4047: $00
    inc hl                                        ; $4048: $23
    nop                                           ; $4049: $00
    inc h                                         ; $404a: $24
    jr nc, jr_08f_405d                            ; $404b: $30 $10

    add hl, bc                                    ; $404d: $09
    nop                                           ; $404e: $00
    nop                                           ; $404f: $00
    ld a, [bc]                                    ; $4050: $0a
    nop                                           ; $4051: $00

jr_08f_4052:
    dec bc                                        ; $4052: $0b
    nop                                           ; $4053: $00
    jr jr_08f_4056                                ; $4054: $18 $00

jr_08f_4056:
    add hl, de                                    ; $4056: $19
    nop                                           ; $4057: $00
    nop                                           ; $4058: $00
    ld a, [de]                                    ; $4059: $1a
    nop                                           ; $405a: $00
    dec de                                        ; $405b: $1b
    nop                                           ; $405c: $00

jr_08f_405d:
    dec h                                         ; $405d: $25
    nop                                           ; $405e: $00
    ld h, $20                                     ; $405f: $26 $20
    nop                                           ; $4061: $00
    daa                                           ; $4062: $27
    ld c, b                                       ; $4063: $48
    db $10                                        ; $4064: $10
    jr z, jr_08f_4067                             ; $4065: $28 $00

jr_08f_4067:
    add hl, hl                                    ; $4067: $29
    nop                                           ; $4068: $00
    ld a, [hl+]                                   ; $4069: $2a
    nop                                           ; $406a: $00
    nop                                           ; $406b: $00
    ld sp, $3200                                  ; $406c: $31 $00 $32
    nop                                           ; $406f: $00
    inc sp                                        ; $4070: $33
    nop                                           ; $4071: $00
    inc [hl]                                      ; $4072: $34
    ld [$4100], sp                                ; $4073: $08 $00 $41
    nop                                           ; $4076: $00
    ld b, d                                       ; $4077: $42
    ld h, b                                       ; $4078: $60
    jr nc, jr_08f_40a6                            ; $4079: $30 $2b

    nop                                           ; $407b: $00
    inc l                                         ; $407c: $2c
    nop                                           ; $407d: $00
    nop                                           ; $407e: $00
    dec [hl]                                      ; $407f: $35
    nop                                           ; $4080: $00
    ld [hl], $00                                  ; $4081: $36 $00
    scf                                           ; $4083: $37
    nop                                           ; $4084: $00
    jr c, jr_08f_4089                             ; $4085: $38 $02

    nop                                           ; $4087: $00
    ld b, e                                       ; $4088: $43

jr_08f_4089:
    nop                                           ; $4089: $00
    ld b, h                                       ; $408a: $44
    nop                                           ; $408b: $00
    ld b, l                                       ; $408c: $45
    ld a, b                                       ; $408d: $78
    jr nz, jr_08f_40bd                            ; $408e: $20 $2d

    nop                                           ; $4090: $00
    nop                                           ; $4091: $00
    ld l, $00                                     ; $4092: $2e $00
    add hl, sp                                    ; $4094: $39
    nop                                           ; $4095: $00
    ld a, [hl-]                                   ; $4096: $3a
    nop                                           ; $4097: $00
    dec sp                                        ; $4098: $3b

jr_08f_4099:
    nop                                           ; $4099: $00
    nop                                           ; $409a: $00
    inc a                                         ; $409b: $3c
    nop                                           ; $409c: $00
    ld b, [hl]                                    ; $409d: $46
    nop                                           ; $409e: $00
    ld b, a                                       ; $409f: $47
    nop                                           ; $40a0: $00
    ld c, b                                       ; $40a1: $48
    add b                                         ; $40a2: $80
    sub b                                         ; $40a3: $90
    jr nz, jr_08f_40d5                            ; $40a4: $20 $2f

jr_08f_40a6:
    nop                                           ; $40a6: $00
    jr nc, jr_08f_40a9                            ; $40a7: $30 $00

jr_08f_40a9:
    dec a                                         ; $40a9: $3d
    nop                                           ; $40aa: $00
    ld a, $08                                     ; $40ab: $3e $08
    nop                                           ; $40ad: $00
    ccf                                           ; $40ae: $3f
    nop                                           ; $40af: $00
    ld b, b                                       ; $40b0: $40
    ld a, b                                       ; $40b1: $78
    nop                                           ; $40b2: $00
    ld c, c                                       ; $40b3: $49
    nop                                           ; $40b4: $00
    ld c, d                                       ; $40b5: $4a
    add b                                         ; $40b6: $80
    xor b                                         ; $40b7: $a8
    jr nz, jr_08f_4105                            ; $40b8: $20 $4b

    nop                                           ; $40ba: $00
    ld c, h                                       ; $40bb: $4c
    nop                                           ; $40bc: $00

jr_08f_40bd:
    ld d, e                                       ; $40bd: $53
    nop                                           ; $40be: $00
    ld d, h                                       ; $40bf: $54
    ld a, [bc]                                    ; $40c0: $0a
    nop                                           ; $40c1: $00
    ld d, l                                       ; $40c2: $55
    nop                                           ; $40c3: $00
    ld d, [hl]                                    ; $40c4: $56
    ld a, b                                       ; $40c5: $78
    nop                                           ; $40c6: $00
    ld e, a                                       ; $40c7: $5f
    ret nz                                        ; $40c8: $c0

    jr nz, @+$4f                                  ; $40c9: $20 $4d

    ld [$4e00], sp                                ; $40cb: $08 $00 $4e
    nop                                           ; $40ce: $00
    ld c, a                                       ; $40cf: $4f
    ld a, b                                       ; $40d0: $78
    nop                                           ; $40d1: $00
    ld d, a                                       ; $40d2: $57
    nop                                           ; $40d3: $00
    ld e, b                                       ; $40d4: $58

jr_08f_40d5:
    pop de                                        ; $40d5: $d1
    ld a, b                                       ; $40d6: $78
    jr nz, jr_08f_4099                            ; $40d7: $20 $c0

    jr jr_08f_412b                                ; $40d9: $18 $50

jr_08f_40db:
    ld a, b                                       ; $40db: $78
    jr nz, jr_08f_4137                            ; $40dc: $20 $59

    nop                                           ; $40de: $00
    ld e, d                                       ; $40df: $5a
    ld a, b                                       ; $40e0: $78
    db $10                                        ; $40e1: $10
    ld de, $0060                                  ; $40e2: $11 $60 $00
    ld h, c                                       ; $40e5: $61
    ldh a, [rNR10]                                ; $40e6: $f0 $10
    ld d, c                                       ; $40e8: $51
    nop                                           ; $40e9: $00
    ld d, d                                       ; $40ea: $52
    ld a, b                                       ; $40eb: $78
    nop                                           ; $40ec: $00
    ld bc, $005b                                  ; $40ed: $01 $5b $00
    ld e, h                                       ; $40f0: $5c
    nop                                           ; $40f1: $00
    ld e, l                                       ; $40f2: $5d
    nop                                           ; $40f3: $00
    ld e, [hl]                                    ; $40f4: $5e
    ld a, b                                       ; $40f5: $78
    nop                                           ; $40f6: $00
    ld d, c                                       ; $40f7: $51
    ld h, d                                       ; $40f8: $62
    ret nz                                        ; $40f9: $c0

    jr nz, @+$03                                  ; $40fa: $20 $01

    ldh a, [rNR41]                                ; $40fc: $f0 $20
    ld l, c                                       ; $40fe: $69
    nop                                           ; $40ff: $00
    ld l, d                                       ; $4100: $6a
    ldh a, [rNR10]                                ; $4101: $f0 $10
    ld b, h                                       ; $4103: $44
    ld l, l                                       ; $4104: $6d

jr_08f_4105:
    jr nz, jr_08f_4138                            ; $4105: $20 $31

    ld h, e                                       ; $4107: $63
    nop                                           ; $4108: $00
    ld h, h                                       ; $4109: $64
    ldh a, [rP1]                                  ; $410a: $f0 $00
    ld l, e                                       ; $410c: $6b
    nop                                           ; $410d: $00
    ld b, c                                       ; $410e: $41
    ld l, h                                       ; $410f: $6c
    ldh a, [rP1]                                  ; $4110: $f0 $00
    ld l, [hl]                                    ; $4112: $6e
    nop                                           ; $4113: $00
    ld l, a                                       ; $4114: $6f
    nop                                           ; $4115: $00
    ld [hl], b                                    ; $4116: $70
    jr c, @+$23                                   ; $4117: $38 $21

    ld de, $0065                                  ; $4119: $11 $65 $00
    ld h, [hl]                                    ; $411c: $66
    ld a, b                                       ; $411d: $78
    jr nc, jr_08f_4191                            ; $411e: $30 $71

    nop                                           ; $4120: $00
    ld [hl], d                                    ; $4121: $72
    ld d, b                                       ; $4122: $50
    ld sp, $6711                                  ; $4123: $31 $11 $67
    nop                                           ; $4126: $00
    ld l, b                                       ; $4127: $68
    ld a, b                                       ; $4128: $78
    jr nc, @+$75                                  ; $4129: $30 $73

jr_08f_412b:
    nop                                           ; $412b: $00
    ld [hl], h                                    ; $412c: $74
    ld l, b                                       ; $412d: $68
    ld sp, $7500                                  ; $412e: $31 $00 $75
    nop                                           ; $4131: $00
    halt                                          ; $4132: $76
    nop                                           ; $4133: $00
    ld a, d                                       ; $4134: $7a
    nop                                           ; $4135: $00
    ld a, e                                       ; $4136: $7b

jr_08f_4137:
    nop                                           ; $4137: $00

jr_08f_4138:
    ld bc, $007c                                  ; $4138: $01 $7c $00
    ld a, l                                       ; $413b: $7d
    nop                                           ; $413c: $00
    add d                                         ; $413d: $82
    nop                                           ; $413e: $00
    add e                                         ; $413f: $83
    add b                                         ; $4140: $80
    ld hl, $7700                                  ; $4141: $21 $00 $77
    nop                                           ; $4144: $00
    ld a, b                                       ; $4145: $78
    nop                                           ; $4146: $00
    ld a, c                                       ; $4147: $79
    nop                                           ; $4148: $00
    ld a, [hl]                                    ; $4149: $7e
    nop                                           ; $414a: $00
    nop                                           ; $414b: $00
    ld a, a                                       ; $414c: $7f
    nop                                           ; $414d: $00
    add b                                         ; $414e: $80
    nop                                           ; $414f: $00
    add c                                         ; $4150: $81
    nop                                           ; $4151: $00
    add h                                         ; $4152: $84
    nop                                           ; $4153: $00
    jr jr_08f_40db                                ; $4154: $18 $85

    nop                                           ; $4156: $00
    add [hl]                                      ; $4157: $86
    sbc b                                         ; $4158: $98
    ld de, $9805                                  ; $4159: $11 $05 $98
    jp hl                                         ; $415c: $e9


    nop                                           ; $415d: $00
    ld b, b                                       ; $415e: $40
    nop                                           ; $415f: $00
    ld bc, $0140                                  ; $4160: $01 $40 $01
    nop                                           ; $4163: $00
    ld [bc], a                                    ; $4164: $02
    nop                                           ; $4165: $00
    ld [$0000], sp                                ; $4166: $08 $00 $00
    add hl, bc                                    ; $4169: $09
    nop                                           ; $416a: $00
    ld a, [bc]                                    ; $416b: $0a
    nop                                           ; $416c: $00
    dec bc                                        ; $416d: $0b
    nop                                           ; $416e: $00
    ld d, $00                                     ; $416f: $16 $00
    ld bc, $0017                                  ; $4171: $01 $17 $00
    jr jr_08f_4176                                ; $4174: $18 $00

jr_08f_4176:
    add hl, de                                    ; $4176: $19
    nop                                           ; $4177: $00
    jr nz, @+$23                                  ; $4178: $20 $21

    ld c, b                                       ; $417a: $48
    add b                                         ; $417b: $80
    ld [hl+], a                                   ; $417c: $22
    nop                                           ; $417d: $00
    inc bc                                        ; $417e: $03
    nop                                           ; $417f: $00
    inc c                                         ; $4180: $0c
    nop                                           ; $4181: $00
    dec c                                         ; $4182: $0d
    nop                                           ; $4183: $00
    ld c, $00                                     ; $4184: $0e $00
    nop                                           ; $4186: $00
    rrca                                          ; $4187: $0f
    nop                                           ; $4188: $00
    ld a, [de]                                    ; $4189: $1a
    nop                                           ; $418a: $00
    dec de                                        ; $418b: $1b
    nop                                           ; $418c: $00
    inc e                                         ; $418d: $1c
    jr nz, jr_08f_4190                            ; $418e: $20 $00

jr_08f_4190:
    dec e                                         ; $4190: $1d

jr_08f_4191:
    ld [hl+], a                                   ; $4191: $22
    ld h, b                                       ; $4192: $60
    inc b                                         ; $4193: $04
    nop                                           ; $4194: $00
    dec b                                         ; $4195: $05
    nop                                           ; $4196: $00
    db $10                                        ; $4197: $10
    ld a, [bc]                                    ; $4198: $0a
    nop                                           ; $4199: $00
    ld de, $1200                                  ; $419a: $11 $00 $12
    ld b, $30                                     ; $419d: $06 $30
    ld e, $44                                     ; $419f: $1e $44
    ld h, b                                       ; $41a1: $60
    ld b, $00                                     ; $41a2: $06 $00
    nop                                           ; $41a4: $00
    rlca                                          ; $41a5: $07
    nop                                           ; $41a6: $00
    inc de                                        ; $41a7: $13
    nop                                           ; $41a8: $00
    inc d                                         ; $41a9: $14
    nop                                           ; $41aa: $00
    dec d                                         ; $41ab: $15
    and b                                         ; $41ac: $a0
    ld b, $30                                     ; $41ad: $06 $30
    rra                                           ; $41af: $1f
    ld h, [hl]                                    ; $41b0: $66
    ld h, b                                       ; $41b1: $60
    dec h                                         ; $41b2: $25
    nop                                           ; $41b3: $00
    ld h, $00                                     ; $41b4: $26 $00
    dec l                                         ; $41b6: $2d
    ld a, [bc]                                    ; $41b7: $0a
    nop                                           ; $41b8: $00
    ld l, $00                                     ; $41b9: $2e $00
    cpl                                           ; $41bb: $2f
    ld b, $30                                     ; $41bc: $06 $30
    inc [hl]                                      ; $41be: $34
    adc b                                         ; $41bf: $88
    ld [hl], b                                    ; $41c0: $70
    daa                                           ; $41c1: $27
    adc b                                         ; $41c2: $88
    ld h, [hl]                                    ; $41c3: $66
    ldh [rSB], a                                  ; $41c4: $e0 $01
    nop                                           ; $41c6: $00
    jr z, @+$68                                   ; $41c7: $28 $66

    db $10                                        ; $41c9: $10
    jr nc, jr_08f_41cc                            ; $41ca: $30 $00

jr_08f_41cc:
    ld sp, $0020                                  ; $41cc: $31 $20 $00
    dec [hl]                                      ; $41cf: $35
    ld h, [hl]                                    ; $41d0: $66
    jr nz, @+$39                                  ; $41d1: $20 $37

    nop                                           ; $41d3: $00
    ld hl, $2200                                  ; $41d4: $21 $00 $22
    nop                                           ; $41d7: $00
    nop                                           ; $41d8: $00
    inc hl                                        ; $41d9: $23
    nop                                           ; $41da: $00
    inc h                                         ; $41db: $24
    nop                                           ; $41dc: $00
    add hl, hl                                    ; $41dd: $29
    nop                                           ; $41de: $00
    ld a, [hl+]                                   ; $41df: $2a
    ld [$2b00], sp                                ; $41e0: $08 $00 $2b
    nop                                           ; $41e3: $00
    inc l                                         ; $41e4: $2c
    ld h, [hl]                                    ; $41e5: $66
    db $10                                        ; $41e6: $10
    ld [hl-], a                                   ; $41e7: $32
    nop                                           ; $41e8: $00
    inc sp                                        ; $41e9: $33
    jr z, jr_08f_41ec                             ; $41ea: $28 $00

jr_08f_41ec:
    ld [hl], $66                                  ; $41ec: $36 $66
    jr nz, @+$3a                                  ; $41ee: $20 $38

    inc b                                         ; $41f0: $04
    ld bc, $0039                                  ; $41f1: $01 $39 $00
    ld a, [hl-]                                   ; $41f4: $3a
    nop                                           ; $41f5: $00
    nop                                           ; $41f6: $00
    dec sp                                        ; $41f7: $3b
    nop                                           ; $41f8: $00
    ld b, b                                       ; $41f9: $40
    nop                                           ; $41fa: $00
    ld b, c                                       ; $41fb: $41
    nop                                           ; $41fc: $00
    ld b, d                                       ; $41fd: $42
    add d                                         ; $41fe: $82
    call z, Call_08f_4620                         ; $41ff: $cc $20 $46
    nop                                           ; $4202: $00
    ld b, a                                       ; $4203: $47
    nop                                           ; $4204: $00
    ld c, d                                       ; $4205: $4a
    jp nc, $4b10                                  ; $4206: $d2 $10 $4b

    jr nc, jr_08f_420b                            ; $4209: $30 $00

jr_08f_420b:
    ld d, d                                       ; $420b: $52
    ld h, $01                                     ; $420c: $26 $01
    ret nz                                        ; $420e: $c0

    ld l, b                                       ; $420f: $68

Call_08f_4210:
    inc d                                         ; $4210: $14
    nop                                           ; $4211: $00
    ld c, b                                       ; $4212: $48
    nop                                           ; $4213: $00
    inc d                                         ; $4214: $14
    ld c, c                                       ; $4215: $49
    nop                                           ; $4216: $00
    ld c, h                                       ; $4217: $4c
    jp nc, Jump_08f_4d10                          ; $4218: $d2 $10 $4d

    ld [hl-], a                                   ; $421b: $32

jr_08f_421c:
    ld bc, $003c                                  ; $421c: $01 $3c $00
    ld bc, $003d                                  ; $421f: $01 $3d $00
    ld a, $00                                     ; $4222: $3e $00
    ccf                                           ; $4224: $3f
    nop                                           ; $4225: $00
    ld b, e                                       ; $4226: $43
    ld b, $00                                     ; $4227: $06 $00
    ld h, d                                       ; $4229: $62
    ld b, h                                       ; $422a: $44
    add $40                                       ; $422b: $c6 $40
    jp nc, Jump_08f_4e08                          ; $422d: $d2 $08 $4e

    nop                                           ; $4230: $00
    ld c, a                                       ; $4231: $4f
    ld d, h                                       ; $4232: $54
    ld [hl], c                                    ; $4233: $71
    ld b, l                                       ; $4234: $45
    add d                                         ; $4235: $82
    ld [hl-], a                                   ; $4236: $32
    ld d, c                                       ; $4237: $51
    ld d, b                                       ; $4238: $50
    nop                                           ; $4239: $00
    ld d, c                                       ; $423a: $51
    nop                                           ; $423b: $00
    ld d, e                                       ; $423c: $53
    halt                                          ; $423d: $76
    ld h, c                                       ; $423e: $61
    ld d, h                                       ; $423f: $54
    add d                                         ; $4240: $82
    ld [hl-], a                                   ; $4241: $32
    ld d, c                                       ; $4242: $51
    ld d, [hl]                                    ; $4243: $56
    nop                                           ; $4244: $00
    ld d, a                                       ; $4245: $57
    nop                                           ; $4246: $00
    ld e, l                                       ; $4247: $5d
    sbc b                                         ; $4248: $98
    ld h, c                                       ; $4249: $61
    ld d, l                                       ; $424a: $55
    xor h                                         ; $424b: $ac
    ld [hl-], a                                   ; $424c: $32
    ld d, c                                       ; $424d: $51
    ld e, b                                       ; $424e: $58
    ld a, $01                                     ; $424f: $3e $01
    ld e, [hl]                                    ; $4251: $5e
    cp d                                          ; $4252: $ba
    ld h, c                                       ; $4253: $61
    sbc b                                         ; $4254: $98
    ld e, c                                       ; $4255: $59
    ld e, c                                       ; $4256: $59
    nop                                           ; $4257: $00
    ld h, d                                       ; $4258: $62
    ld e, d                                       ; $4259: $5a
    call c, $9871                                 ; $425a: $dc $71 $98
    ld e, c                                       ; $425d: $59
    ld e, e                                       ; $425e: $5b
    nop                                           ; $425f: $00
    ld e, h                                       ; $4260: $5c
    cp $71                                        ; $4261: $fe $71
    ld e, a                                       ; $4263: $5f
    adc b                                         ; $4264: $88
    sbc b                                         ; $4265: $98
    ld d, c                                       ; $4266: $51
    ld l, b                                       ; $4267: $68
    nop                                           ; $4268: $00
    ld l, c                                       ; $4269: $69
    jr nz, jr_08f_42ce                            ; $426a: $20 $62

    ld h, b                                       ; $426c: $60
    nop                                           ; $426d: $00
    ld h, c                                       ; $426e: $61
    nop                                           ; $426f: $00
    nop                                           ; $4270: $00
    ld h, d                                       ; $4271: $62
    nop                                           ; $4272: $00
    ld h, e                                       ; $4273: $63
    nop                                           ; $4274: $00
    ld h, h                                       ; $4275: $64
    nop                                           ; $4276: $00
    ld h, l                                       ; $4277: $65
    add b                                         ; $4278: $80
    ld b, $00                                     ; $4279: $06 $00
    ld l, d                                       ; $427b: $6a
    nop                                           ; $427c: $00
    ld l, e                                       ; $427d: $6b
    nop                                           ; $427e: $00
    ld l, h                                       ; $427f: $6c
    nop                                           ; $4280: $00
    ld l, l                                       ; $4281: $6d
    rst $00                                       ; $4282: $c7
    ld b, d                                       ; $4283: $42
    ld d, d                                       ; $4284: $52
    ld [hl], b                                    ; $4285: $70
    ld a, [hl+]                                   ; $4286: $2a
    ld h, [hl]                                    ; $4287: $66
    nop                                           ; $4288: $00
    ld h, a                                       ; $4289: $67
    jr jr_08f_421c                                ; $428a: $18 $90

    dec d                                         ; $428c: $15
    ld hl, sp+$37                                 ; $428d: $f8 $37
    ld hl, sp-$80                                 ; $428f: $f8 $80
    ld e, c                                       ; $4291: $59
    xor b                                         ; $4292: $a8
    and [hl]                                      ; $4293: $a6
    nop                                           ; $4294: $00
    nop                                           ; $4295: $00
    nop                                           ; $4296: $00
    nop                                           ; $4297: $00
    ld bc, $0200                                  ; $4298: $01 $00 $02
    nop                                           ; $429b: $00
    inc bc                                        ; $429c: $03
    nop                                           ; $429d: $00
    nop                                           ; $429e: $00
    dec c                                         ; $429f: $0d
    nop                                           ; $42a0: $00
    ld c, $00                                     ; $42a1: $0e $00
    rrca                                          ; $42a3: $0f
    nop                                           ; $42a4: $00
    stop                                          ; $42a5: $10 $00
    nop                                           ; $42a7: $00
    nop                                           ; $42a8: $00
    nop                                           ; $42a9: $00
    inc b                                         ; $42aa: $04
    nop                                           ; $42ab: $00
    dec b                                         ; $42ac: $05
    nop                                           ; $42ad: $00
    ld b, $00                                     ; $42ae: $06 $00
    ld bc, $0011                                  ; $42b0: $01 $11 $00
    ld [de], a                                    ; $42b3: $12
    nop                                           ; $42b4: $00
    inc de                                        ; $42b5: $13
    nop                                           ; $42b6: $00
    inc d                                         ; $42b7: $14
    stop                                          ; $42b8: $10 $00
    nop                                           ; $42ba: $00
    rlca                                          ; $42bb: $07
    nop                                           ; $42bc: $00
    ld [$0900], sp                                ; $42bd: $08 $00 $09
    nop                                           ; $42c0: $00
    dec d                                         ; $42c1: $15
    nop                                           ; $42c2: $00
    inc b                                         ; $42c3: $04
    ld d, $00                                     ; $42c4: $16 $00
    rla                                           ; $42c6: $17
    nop                                           ; $42c7: $00
    jr @+$22                                      ; $42c8: $18 $20

    nop                                           ; $42ca: $00
    ld a, [bc]                                    ; $42cb: $0a
    nop                                           ; $42cc: $00
    nop                                           ; $42cd: $00

jr_08f_42ce:
    dec bc                                        ; $42ce: $0b
    nop                                           ; $42cf: $00
    inc c                                         ; $42d0: $0c
    nop                                           ; $42d1: $00
    add hl, de                                    ; $42d2: $19
    nop                                           ; $42d3: $00
    ld a, [de]                                    ; $42d4: $1a
    nop                                           ; $42d5: $00
    db $10                                        ; $42d6: $10
    dec de                                        ; $42d7: $1b
    nop                                           ; $42d8: $00
    inc e                                         ; $42d9: $1c
    jr nc, jr_08f_42dc                            ; $42da: $30 $00

jr_08f_42dc:
    dec e                                         ; $42dc: $1d
    nop                                           ; $42dd: $00
    ld e, $00                                     ; $42de: $1e $00
    ld bc, $001f                                  ; $42e0: $01 $1f $00
    add hl, hl                                    ; $42e3: $29
    nop                                           ; $42e4: $00
    ld a, [hl+]                                   ; $42e5: $2a
    nop                                           ; $42e6: $00
    dec hl                                        ; $42e7: $2b
    ld b, b                                       ; $42e8: $40
    stop                                          ; $42e9: $10 $00
    jr nz, jr_08f_42ed                            ; $42eb: $20 $00

jr_08f_42ed:
    ld hl, $2200                                  ; $42ed: $21 $00 $22
    nop                                           ; $42f0: $00
    inc l                                         ; $42f1: $2c
    nop                                           ; $42f2: $00
    db $10                                        ; $42f3: $10
    dec l                                         ; $42f4: $2d
    nop                                           ; $42f5: $00
    ld l, $50                                     ; $42f6: $2e $50
    db $10                                        ; $42f8: $10
    inc hl                                        ; $42f9: $23
    nop                                           ; $42fa: $00
    inc h                                         ; $42fb: $24
    nop                                           ; $42fc: $00
    ld bc, $0025                                  ; $42fd: $01 $25 $00
    cpl                                           ; $4300: $2f
    nop                                           ; $4301: $00
    jr nc, jr_08f_4304                            ; $4302: $30 $00

jr_08f_4304:
    ld sp, $1060                                  ; $4304: $31 $60 $10
    nop                                           ; $4307: $00
    ld h, $00                                     ; $4308: $26 $00
    daa                                           ; $430a: $27
    nop                                           ; $430b: $00
    jr z, jr_08f_430e                             ; $430c: $28 $00

jr_08f_430e:
    ld [hl-], a                                   ; $430e: $32
    nop                                           ; $430f: $00
    db $10                                        ; $4310: $10
    inc sp                                        ; $4311: $33
    nop                                           ; $4312: $00
    inc [hl]                                      ; $4313: $34
    ld [hl], b                                    ; $4314: $70
    db $10                                        ; $4315: $10
    dec [hl]                                      ; $4316: $35
    nop                                           ; $4317: $00
    ld [hl], $00                                  ; $4318: $36 $00
    ld bc, $0037                                  ; $431a: $01 $37 $00
    ld b, c                                       ; $431d: $41
    nop                                           ; $431e: $00
    ld b, d                                       ; $431f: $42
    nop                                           ; $4320: $00
    ld b, e                                       ; $4321: $43
    add b                                         ; $4322: $80
    stop                                          ; $4323: $10 $00
    jr c, jr_08f_4327                             ; $4325: $38 $00

jr_08f_4327:
    add hl, sp                                    ; $4327: $39
    nop                                           ; $4328: $00
    ld a, [hl-]                                   ; $4329: $3a
    nop                                           ; $432a: $00
    ld b, h                                       ; $432b: $44
    nop                                           ; $432c: $00
    db $10                                        ; $432d: $10
    ld b, l                                       ; $432e: $45
    nop                                           ; $432f: $00
    ld b, [hl]                                    ; $4330: $46
    sub b                                         ; $4331: $90
    db $10                                        ; $4332: $10
    dec sp                                        ; $4333: $3b
    nop                                           ; $4334: $00
    inc a                                         ; $4335: $3c
    nop                                           ; $4336: $00
    ld bc, $003d                                  ; $4337: $01 $3d $00
    ld b, a                                       ; $433a: $47
    nop                                           ; $433b: $00
    ld c, b                                       ; $433c: $48
    nop                                           ; $433d: $00
    ld c, c                                       ; $433e: $49
    and b                                         ; $433f: $a0
    stop                                          ; $4340: $10 $00
    ld a, $00                                     ; $4342: $3e $00
    ccf                                           ; $4344: $3f
    nop                                           ; $4345: $00
    ld b, b                                       ; $4346: $40
    nop                                           ; $4347: $00
    ld c, d                                       ; $4348: $4a
    nop                                           ; $4349: $00
    ld de, $004b                                  ; $434a: $11 $4b $00
    ld c, h                                       ; $434d: $4c
    or b                                          ; $434e: $b0
    nop                                           ; $434f: $00
    ld c, l                                       ; $4350: $4d
    nop                                           ; $4351: $00
    ld c, [hl]                                    ; $4352: $4e
    ld [bc], a                                    ; $4353: $02
    nop                                           ; $4354: $00
    db $10                                        ; $4355: $10
    ld c, a                                       ; $4356: $4f
    nop                                           ; $4357: $00
    ld d, b                                       ; $4358: $50
    ld [$5110], sp                                ; $4359: $08 $10 $51
    nop                                           ; $435c: $00
    jp nz, $0102                                  ; $435d: $c2 $02 $01

    nop                                           ; $4360: $00
    nop                                           ; $4361: $00
    ld bc, $0200                                  ; $4362: $01 $00 $02
    nop                                           ; $4365: $00
    inc bc                                        ; $4366: $03
    ld b, $30                                     ; $4367: $06 $30
    ld bc, $001b                                  ; $4369: $01 $1b $00
    inc e                                         ; $436c: $1c
    nop                                           ; $436d: $00
    dec e                                         ; $436e: $1d
    nop                                           ; $436f: $00
    ld e, $14                                     ; $4370: $1e $14
    stop                                          ; $4372: $10 $00
    dec hl                                        ; $4374: $2b
    nop                                           ; $4375: $00
    nop                                           ; $4376: $00
    nop                                           ; $4377: $00
    inc b                                         ; $4378: $04
    nop                                           ; $4379: $00
    dec b                                         ; $437a: $05
    nop                                           ; $437b: $00
    nop                                           ; $437c: $00
    ld b, $00                                     ; $437d: $06 $00
    rrca                                          ; $437f: $0f
    nop                                           ; $4380: $00
    stop                                          ; $4381: $10 $00
    ld de, $0000                                  ; $4383: $11 $00 $00
    ld [de], a                                    ; $4386: $12
    nop                                           ; $4387: $00
    rra                                           ; $4388: $1f
    nop                                           ; $4389: $00
    jr nz, jr_08f_438c                            ; $438a: $20 $00

jr_08f_438c:
    ld hl, $0400                                  ; $438c: $21 $00 $04
    ld [hl+], a                                   ; $438f: $22
    nop                                           ; $4390: $00
    inc l                                         ; $4391: $2c
    nop                                           ; $4392: $00
    dec l                                         ; $4393: $2d
    ld e, $00                                     ; $4394: $1e $00
    rlca                                          ; $4396: $07
    nop                                           ; $4397: $00
    nop                                           ; $4398: $00
    ld [$0900], sp                                ; $4399: $08 $00 $09
    nop                                           ; $439c: $00
    ld a, [bc]                                    ; $439d: $0a
    nop                                           ; $439e: $00
    inc de                                        ; $439f: $13
    nop                                           ; $43a0: $00
    nop                                           ; $43a1: $00
    inc d                                         ; $43a2: $14
    nop                                           ; $43a3: $00
    dec d                                         ; $43a4: $15
    nop                                           ; $43a5: $00
    ld d, $00                                     ; $43a6: $16 $00
    inc hl                                        ; $43a8: $23
    nop                                           ; $43a9: $00
    nop                                           ; $43aa: $00
    inc h                                         ; $43ab: $24
    nop                                           ; $43ac: $00
    dec h                                         ; $43ad: $25
    nop                                           ; $43ae: $00
    ld h, $00                                     ; $43af: $26 $00
    ld l, $00                                     ; $43b1: $2e $00
    ld b, b                                       ; $43b3: $40
    cpl                                           ; $43b4: $2f
    inc a                                         ; $43b5: $3c
    nop                                           ; $43b6: $00
    dec bc                                        ; $43b7: $0b
    nop                                           ; $43b8: $00
    inc c                                         ; $43b9: $0c
    nop                                           ; $43ba: $00
    dec c                                         ; $43bb: $0d
    nop                                           ; $43bc: $00
    nop                                           ; $43bd: $00
    ld c, $00                                     ; $43be: $0e $00
    rla                                           ; $43c0: $17
    nop                                           ; $43c1: $00
    jr jr_08f_43c4                                ; $43c2: $18 $00

jr_08f_43c4:
    add hl, de                                    ; $43c4: $19
    nop                                           ; $43c5: $00
    nop                                           ; $43c6: $00
    ld a, [de]                                    ; $43c7: $1a
    nop                                           ; $43c8: $00
    daa                                           ; $43c9: $27
    nop                                           ; $43ca: $00
    jr z, jr_08f_43cd                             ; $43cb: $28 $00

jr_08f_43cd:
    add hl, hl                                    ; $43cd: $29
    nop                                           ; $43ce: $00
    inc b                                         ; $43cf: $04
    ld a, [hl+]                                   ; $43d0: $2a
    nop                                           ; $43d1: $00
    jr nc, jr_08f_43d4                            ; $43d2: $30 $00

jr_08f_43d4:
    ld sp, $005a                                  ; $43d4: $31 $5a $00
    ld [hl-], a                                   ; $43d7: $32
    nop                                           ; $43d8: $00
    nop                                           ; $43d9: $00
    inc sp                                        ; $43da: $33
    nop                                           ; $43db: $00
    inc [hl]                                      ; $43dc: $34
    nop                                           ; $43dd: $00
    dec [hl]                                      ; $43de: $35
    nop                                           ; $43df: $00
    ccf                                           ; $43e0: $3f
    nop                                           ; $43e1: $00
    nop                                           ; $43e2: $00
    ld b, b                                       ; $43e3: $40
    nop                                           ; $43e4: $00
    ld b, c                                       ; $43e5: $41
    nop                                           ; $43e6: $00
    ld b, d                                       ; $43e7: $42
    nop                                           ; $43e8: $00
    ld c, a                                       ; $43e9: $4f
    nop                                           ; $43ea: $00
    nop                                           ; $43eb: $00
    ld d, b                                       ; $43ec: $50
    nop                                           ; $43ed: $00
    ld d, c                                       ; $43ee: $51
    nop                                           ; $43ef: $00
    ld d, d                                       ; $43f0: $52
    nop                                           ; $43f1: $00
    ld e, a                                       ; $43f2: $5f
    nop                                           ; $43f3: $00
    ld b, b                                       ; $43f4: $40
    ld h, b                                       ; $43f5: $60
    ld a, b                                       ; $43f6: $78
    db $10                                        ; $43f7: $10
    ld [hl], $00                                  ; $43f8: $36 $00
    scf                                           ; $43fa: $37
    nop                                           ; $43fb: $00
    jr c, jr_08f_43fe                             ; $43fc: $38 $00

jr_08f_43fe:
    nop                                           ; $43fe: $00
    ld b, e                                       ; $43ff: $43
    nop                                           ; $4400: $00
    ld b, h                                       ; $4401: $44
    nop                                           ; $4402: $00
    ld b, l                                       ; $4403: $45
    nop                                           ; $4404: $00
    ld b, [hl]                                    ; $4405: $46
    nop                                           ; $4406: $00
    nop                                           ; $4407: $00
    ld d, e                                       ; $4408: $53
    nop                                           ; $4409: $00
    ld d, h                                       ; $440a: $54
    nop                                           ; $440b: $00
    ld d, l                                       ; $440c: $55
    nop                                           ; $440d: $00
    ld d, [hl]                                    ; $440e: $56
    nop                                           ; $440f: $00
    db $10                                        ; $4410: $10
    ld h, c                                       ; $4411: $61
    nop                                           ; $4412: $00
    ld h, d                                       ; $4413: $62
    sub [hl]                                      ; $4414: $96
    db $10                                        ; $4415: $10
    add hl, sp                                    ; $4416: $39
    nop                                           ; $4417: $00
    ld a, [hl-]                                   ; $4418: $3a
    nop                                           ; $4419: $00
    nop                                           ; $441a: $00
    dec sp                                        ; $441b: $3b
    nop                                           ; $441c: $00
    ld b, a                                       ; $441d: $47
    nop                                           ; $441e: $00
    ld c, b                                       ; $441f: $48
    nop                                           ; $4420: $00
    ld c, c                                       ; $4421: $49
    nop                                           ; $4422: $00
    nop                                           ; $4423: $00
    ld c, d                                       ; $4424: $4a
    nop                                           ; $4425: $00
    ld d, a                                       ; $4426: $57
    nop                                           ; $4427: $00
    ld e, b                                       ; $4428: $58
    nop                                           ; $4429: $00
    ld e, c                                       ; $442a: $59
    nop                                           ; $442b: $00
    inc b                                         ; $442c: $04
    ld e, d                                       ; $442d: $5a
    nop                                           ; $442e: $00
    ld h, e                                       ; $442f: $63
    nop                                           ; $4430: $00
    ld h, h                                       ; $4431: $64
    or h                                          ; $4432: $b4
    db $10                                        ; $4433: $10
    inc a                                         ; $4434: $3c
    nop                                           ; $4435: $00
    nop                                           ; $4436: $00
    dec a                                         ; $4437: $3d
    nop                                           ; $4438: $00
    ld a, $00                                     ; $4439: $3e $00
    ld c, e                                       ; $443b: $4b
    nop                                           ; $443c: $00
    ld c, h                                       ; $443d: $4c
    nop                                           ; $443e: $00
    nop                                           ; $443f: $00
    ld c, l                                       ; $4440: $4d
    nop                                           ; $4441: $00
    ld c, [hl]                                    ; $4442: $4e
    nop                                           ; $4443: $00
    ld e, e                                       ; $4444: $5b
    nop                                           ; $4445: $00
    ld e, h                                       ; $4446: $5c
    nop                                           ; $4447: $00
    ld bc, $005d                                  ; $4448: $01 $5d $00
    ld e, [hl]                                    ; $444b: $5e
    nop                                           ; $444c: $00
    ld h, l                                       ; $444d: $65
    nop                                           ; $444e: $00
    ld h, [hl]                                    ; $444f: $66
    jp nc, RST_10                                 ; $4450: $d2 $10 $00

    ld h, a                                       ; $4453: $67
    nop                                           ; $4454: $00
    ld l, b                                       ; $4455: $68
    nop                                           ; $4456: $00
    ld l, c                                       ; $4457: $69
    nop                                           ; $4458: $00
    ld [hl], h                                    ; $4459: $74
    nop                                           ; $445a: $00
    nop                                           ; $445b: $00
    ld [hl], l                                    ; $445c: $75
    nop                                           ; $445d: $00
    halt                                          ; $445e: $76
    nop                                           ; $445f: $00
    ld [hl], a                                    ; $4460: $77
    nop                                           ; $4461: $00
    add h                                         ; $4462: $84
    nop                                           ; $4463: $00
    nop                                           ; $4464: $00
    add l                                         ; $4465: $85
    nop                                           ; $4466: $00
    add [hl]                                      ; $4467: $86
    nop                                           ; $4468: $00
    add a                                         ; $4469: $87
    nop                                           ; $446a: $00
    sub h                                         ; $446b: $94
    nop                                           ; $446c: $00
    ld b, b                                       ; $446d: $40
    sub l                                         ; $446e: $95
    ldh a, [rNR10]                                ; $446f: $f0 $10
    ld l, d                                       ; $4471: $6a
    nop                                           ; $4472: $00
    ld l, e                                       ; $4473: $6b
    nop                                           ; $4474: $00
    ld l, h                                       ; $4475: $6c
    nop                                           ; $4476: $00
    nop                                           ; $4477: $00
    ld a, b                                       ; $4478: $78
    nop                                           ; $4479: $00
    ld a, c                                       ; $447a: $79
    nop                                           ; $447b: $00
    ld a, d                                       ; $447c: $7a
    nop                                           ; $447d: $00
    ld a, e                                       ; $447e: $7b
    nop                                           ; $447f: $00
    nop                                           ; $4480: $00
    adc b                                         ; $4481: $88
    nop                                           ; $4482: $00
    adc c                                         ; $4483: $89
    nop                                           ; $4484: $00
    adc d                                         ; $4485: $8a
    nop                                           ; $4486: $00
    adc e                                         ; $4487: $8b
    nop                                           ; $4488: $00
    db $10                                        ; $4489: $10
    sub [hl]                                      ; $448a: $96
    nop                                           ; $448b: $00
    sub a                                         ; $448c: $97
    ld c, $11                                     ; $448d: $0e $11
    ld l, l                                       ; $448f: $6d
    nop                                           ; $4490: $00
    ld l, [hl]                                    ; $4491: $6e
    nop                                           ; $4492: $00
    nop                                           ; $4493: $00
    ld l, a                                       ; $4494: $6f
    nop                                           ; $4495: $00
    ld a, h                                       ; $4496: $7c
    nop                                           ; $4497: $00
    ld a, l                                       ; $4498: $7d
    nop                                           ; $4499: $00
    ld a, [hl]                                    ; $449a: $7e
    nop                                           ; $449b: $00
    nop                                           ; $449c: $00
    ld a, a                                       ; $449d: $7f
    nop                                           ; $449e: $00
    adc h                                         ; $449f: $8c
    nop                                           ; $44a0: $00
    adc l                                         ; $44a1: $8d
    nop                                           ; $44a2: $00
    adc [hl]                                      ; $44a3: $8e
    nop                                           ; $44a4: $00
    inc b                                         ; $44a5: $04
    adc a                                         ; $44a6: $8f
    nop                                           ; $44a7: $00
    sbc b                                         ; $44a8: $98
    nop                                           ; $44a9: $00
    sbc c                                         ; $44aa: $99
    inc l                                         ; $44ab: $2c
    ld bc, $0070                                  ; $44ac: $01 $70 $00
    nop                                           ; $44af: $00
    ld [hl], c                                    ; $44b0: $71
    nop                                           ; $44b1: $00
    ld [hl], d                                    ; $44b2: $72
    nop                                           ; $44b3: $00
    ld [hl], e                                    ; $44b4: $73
    nop                                           ; $44b5: $00
    add b                                         ; $44b6: $80
    nop                                           ; $44b7: $00
    nop                                           ; $44b8: $00
    add c                                         ; $44b9: $81
    nop                                           ; $44ba: $00
    add d                                         ; $44bb: $82
    nop                                           ; $44bc: $00
    add e                                         ; $44bd: $83
    nop                                           ; $44be: $00
    sub b                                         ; $44bf: $90
    nop                                           ; $44c0: $00
    nop                                           ; $44c1: $00
    sub c                                         ; $44c2: $91
    nop                                           ; $44c3: $00
    sub d                                         ; $44c4: $92
    nop                                           ; $44c5: $00
    sub e                                         ; $44c6: $93
    nop                                           ; $44c7: $00
    sbc d                                         ; $44c8: $9a
    nop                                           ; $44c9: $00
    ld b, b                                       ; $44ca: $40
    sbc e                                         ; $44cb: $9b
    ld c, d                                       ; $44cc: $4a
    ld bc, $009c                                  ; $44cd: $01 $9c $00
    sbc l                                         ; $44d0: $9d
    nop                                           ; $44d1: $00
    sbc [hl]                                      ; $44d2: $9e
    nop                                           ; $44d3: $00
    nop                                           ; $44d4: $00
    sbc a                                         ; $44d5: $9f
    nop                                           ; $44d6: $00
    xor d                                         ; $44d7: $aa
    nop                                           ; $44d8: $00
    xor e                                         ; $44d9: $ab
    nop                                           ; $44da: $00
    xor h                                         ; $44db: $ac
    nop                                           ; $44dc: $00
    nop                                           ; $44dd: $00
    xor l                                         ; $44de: $ad
    nop                                           ; $44df: $00
    cp d                                          ; $44e0: $ba
    nop                                           ; $44e1: $00
    cp e                                          ; $44e2: $bb
    nop                                           ; $44e3: $00
    cp h                                          ; $44e4: $bc
    nop                                           ; $44e5: $00
    inc b                                         ; $44e6: $04
    cp l                                          ; $44e7: $bd
    nop                                           ; $44e8: $00
    jp z, $cb00                                   ; $44e9: $ca $00 $cb

    ld l, b                                       ; $44ec: $68
    ld bc, $00a0                                  ; $44ed: $01 $a0 $00
    nop                                           ; $44f0: $00
    and c                                         ; $44f1: $a1
    nop                                           ; $44f2: $00
    and d                                         ; $44f3: $a2
    nop                                           ; $44f4: $00
    and e                                         ; $44f5: $a3
    nop                                           ; $44f6: $00
    xor [hl]                                      ; $44f7: $ae
    nop                                           ; $44f8: $00
    nop                                           ; $44f9: $00
    xor a                                         ; $44fa: $af
    nop                                           ; $44fb: $00
    or b                                          ; $44fc: $b0
    nop                                           ; $44fd: $00
    or c                                          ; $44fe: $b1
    nop                                           ; $44ff: $00
    cp [hl]                                       ; $4500: $be
    nop                                           ; $4501: $00
    nop                                           ; $4502: $00
    cp a                                          ; $4503: $bf
    nop                                           ; $4504: $00
    ret nz                                        ; $4505: $c0

    nop                                           ; $4506: $00
    pop bc                                        ; $4507: $c1
    nop                                           ; $4508: $00
    call z, Call_08f_4000                         ; $4509: $cc $00 $40
    call Call_000_1186                            ; $450c: $cd $86 $11
    and h                                         ; $450f: $a4
    nop                                           ; $4510: $00
    and l                                         ; $4511: $a5
    nop                                           ; $4512: $00
    and [hl]                                      ; $4513: $a6
    nop                                           ; $4514: $00
    nop                                           ; $4515: $00
    or d                                          ; $4516: $b2
    nop                                           ; $4517: $00
    or e                                          ; $4518: $b3
    nop                                           ; $4519: $00
    or h                                          ; $451a: $b4
    nop                                           ; $451b: $00
    or l                                          ; $451c: $b5
    nop                                           ; $451d: $00
    nop                                           ; $451e: $00
    jp nz, $c300                                  ; $451f: $c2 $00 $c3

    nop                                           ; $4522: $00
    call nz, $c500                                ; $4523: $c4 $00 $c5
    nop                                           ; $4526: $00
    db $10                                        ; $4527: $10
    adc $00                                       ; $4528: $ce $00
    rst $08                                       ; $452a: $cf
    and h                                         ; $452b: $a4
    ld de, $00a7                                  ; $452c: $11 $a7 $00
    xor b                                         ; $452f: $a8
    nop                                           ; $4530: $00
    nop                                           ; $4531: $00
    xor c                                         ; $4532: $a9
    nop                                           ; $4533: $00
    or [hl]                                       ; $4534: $b6
    nop                                           ; $4535: $00
    or a                                          ; $4536: $b7
    nop                                           ; $4537: $00
    cp b                                          ; $4538: $b8
    nop                                           ; $4539: $00
    nop                                           ; $453a: $00
    cp c                                          ; $453b: $b9
    nop                                           ; $453c: $00
    add $00                                       ; $453d: $c6 $00
    rst $00                                       ; $453f: $c7
    nop                                           ; $4540: $00
    ret z                                         ; $4541: $c8

    nop                                           ; $4542: $00
    inc b                                         ; $4543: $04
    ret                                           ; $4544: $c9


    nop                                           ; $4545: $00
    ret nc                                        ; $4546: $d0

    nop                                           ; $4547: $00
    pop de                                        ; $4548: $d1
    jp nz, $d211                                  ; $4549: $c2 $11 $d2

    nop                                           ; $454c: $00
    nop                                           ; $454d: $00
    db $d3                                        ; $454e: $d3
    nop                                           ; $454f: $00
    call nc, $de00                                ; $4550: $d4 $00 $de
    nop                                           ; $4553: $00
    rst $18                                       ; $4554: $df
    nop                                           ; $4555: $00
    nop                                           ; $4556: $00
    ldh [rP1], a                                  ; $4557: $e0 $00
    pop hl                                        ; $4559: $e1
    nop                                           ; $455a: $00
    xor $00                                       ; $455b: $ee $00
    rst $28                                       ; $455d: $ef
    nop                                           ; $455e: $00
    ld bc, $00f0                                  ; $455f: $01 $f0 $00
    pop af                                        ; $4562: $f1
    nop                                           ; $4563: $00
    cp $00                                        ; $4564: $fe $00
    rst $38                                       ; $4566: $ff
    ldh [rNR11], a                                ; $4567: $e0 $11
    nop                                           ; $4569: $00
    push de                                       ; $456a: $d5
    nop                                           ; $456b: $00
    sub $00                                       ; $456c: $d6 $00
    rst $10                                       ; $456e: $d7
    nop                                           ; $456f: $00
    ld [c], a                                     ; $4570: $e2
    nop                                           ; $4571: $00
    nop                                           ; $4572: $00
    db $e3                                        ; $4573: $e3
    nop                                           ; $4574: $00
    db $e4                                        ; $4575: $e4
    nop                                           ; $4576: $00
    push hl                                       ; $4577: $e5
    nop                                           ; $4578: $00
    ld a, [c]                                     ; $4579: $f2
    nop                                           ; $457a: $00
    inc b                                         ; $457b: $04
    di                                            ; $457c: $f3
    nop                                           ; $457d: $00
    db $f4                                        ; $457e: $f4
    nop                                           ; $457f: $00
    push af                                       ; $4580: $f5
    dec d                                         ; $4581: $15
    ld [bc], a                                    ; $4582: $02
    ld bc, $8001                                  ; $4583: $01 $01 $80
    cp $09                                        ; $4586: $fe $09
    ret c                                         ; $4588: $d8

    nop                                           ; $4589: $00
    reti                                          ; $458a: $d9


    nop                                           ; $458b: $00
    jp c, $e600                                   ; $458c: $da $00 $e6

    nop                                           ; $458f: $00
    nop                                           ; $4590: $00
    rst $20                                       ; $4591: $e7
    nop                                           ; $4592: $00
    add sp, $00                                   ; $4593: $e8 $00
    jp hl                                         ; $4595: $e9


    nop                                           ; $4596: $00
    or $00                                        ; $4597: $f6 $00
    nop                                           ; $4599: $00
    rst $30                                       ; $459a: $f7
    nop                                           ; $459b: $00
    ld hl, sp+$00                                 ; $459c: $f8 $00
    ld sp, hl                                     ; $459e: $f9
    nop                                           ; $459f: $00
    ld [bc], a                                    ; $45a0: $02
    jr nz, jr_08f_45a4                            ; $45a1: $20 $01

    inc bc                                        ; $45a3: $03

jr_08f_45a4:
    ld e, $10                                     ; $45a4: $1e $10
    db $db                                        ; $45a6: $db
    nop                                           ; $45a7: $00
    call c, $dd00                                 ; $45a8: $dc $00 $dd
    nop                                           ; $45ab: $00
    nop                                           ; $45ac: $00
    ld [$eb00], a                                 ; $45ad: $ea $00 $eb
    nop                                           ; $45b0: $00
    db $ec                                        ; $45b1: $ec
    nop                                           ; $45b2: $00
    db $ed                                        ; $45b3: $ed
    nop                                           ; $45b4: $00
    nop                                           ; $45b5: $00
    ld a, [$fb00]                                 ; $45b6: $fa $00 $fb
    nop                                           ; $45b9: $00
    db $fc                                        ; $45ba: $fc
    nop                                           ; $45bb: $00
    db $fd                                        ; $45bc: $fd
    ld [$0400], sp                                ; $45bd: $08 $00 $04
    ld bc, $3c05                                  ; $45c0: $01 $05 $3c
    db $10                                        ; $45c3: $10
    ld b, $01                                     ; $45c4: $06 $01
    rlca                                          ; $45c6: $07
    nop                                           ; $45c7: $00
    ld bc, $0108                                  ; $45c8: $01 $08 $01
    ld [de], a                                    ; $45cb: $12
    ld bc, $0113                                  ; $45cc: $01 $13 $01
    inc d                                         ; $45cf: $14
    nop                                           ; $45d0: $00
    ld bc, $0115                                  ; $45d1: $01 $15 $01
    ld [hl+], a                                   ; $45d4: $22
    ld bc, $0123                                  ; $45d5: $01 $23 $01
    inc h                                         ; $45d8: $24
    ld [bc], a                                    ; $45d9: $02
    ld bc, $0125                                  ; $45da: $01 $25 $01
    ld [hl-], a                                   ; $45dd: $32
    ld bc, $5a33                                  ; $45de: $01 $33 $5a
    db $10                                        ; $45e1: $10
    add hl, bc                                    ; $45e2: $09
    nop                                           ; $45e3: $00
    ld bc, $010a                                  ; $45e4: $01 $0a $01
    dec bc                                        ; $45e7: $0b
    ld bc, $0116                                  ; $45e8: $01 $16 $01
    rla                                           ; $45eb: $17
    nop                                           ; $45ec: $00
    ld bc, $0118                                  ; $45ed: $01 $18 $01
    add hl, de                                    ; $45f0: $19
    ld bc, $0126                                  ; $45f1: $01 $26 $01
    daa                                           ; $45f4: $27
    nop                                           ; $45f5: $00
    ld bc, $0128                                  ; $45f6: $01 $28 $01
    add hl, hl                                    ; $45f9: $29
    ld bc, $0134                                  ; $45fa: $01 $34 $01
    dec [hl]                                      ; $45fd: $35
    add b                                         ; $45fe: $80
    ld a, b                                       ; $45ff: $78
    db $10                                        ; $4600: $10
    inc c                                         ; $4601: $0c
    ld bc, $010d                                  ; $4602: $01 $0d $01
    ld c, $01                                     ; $4605: $0e $01
    ld a, [de]                                    ; $4607: $1a
    nop                                           ; $4608: $00
    ld bc, $011b                                  ; $4609: $01 $1b $01
    inc e                                         ; $460c: $1c
    ld bc, $011d                                  ; $460d: $01 $1d $01
    ld a, [hl+]                                   ; $4610: $2a
    nop                                           ; $4611: $00
    ld bc, $012b                                  ; $4612: $01 $2b $01
    inc l                                         ; $4615: $2c
    ld bc, $012d                                  ; $4616: $01 $2d $01
    ld [hl], $20                                  ; $4619: $36 $20
    ld bc, $9637                                  ; $461b: $01 $37 $96
    db $10                                        ; $461e: $10
    rrca                                          ; $461f: $0f

Call_08f_4620:
    ld bc, $0110                                  ; $4620: $01 $10 $01
    ld de, $0100                                  ; $4623: $11 $00 $01
    ld e, $01                                     ; $4626: $1e $01
    rra                                           ; $4628: $1f
    ld bc, $0120                                  ; $4629: $01 $20 $01
    ld hl, $0100                                  ; $462c: $21 $00 $01
    ld l, $01                                     ; $462f: $2e $01
    cpl                                           ; $4631: $2f
    ld bc, $0130                                  ; $4632: $01 $30 $01
    ld sp, $0108                                  ; $4635: $31 $08 $01
    jr c, jr_08f_463b                             ; $4638: $38 $01

    add hl, sp                                    ; $463a: $39

jr_08f_463b:
    or h                                          ; $463b: $b4
    db $10                                        ; $463c: $10
    ld a, [hl-]                                   ; $463d: $3a
    ld bc, $003b                                  ; $463e: $01 $3b $00
    ld bc, $013c                                  ; $4641: $01 $3c $01
    ld b, h                                       ; $4644: $44
    ld bc, $0145                                  ; $4645: $01 $45 $01
    ld b, [hl]                                    ; $4648: $46
    nop                                           ; $4649: $00
    ld bc, $0147                                  ; $464a: $01 $47 $01
    ld d, b                                       ; $464d: $50
    ld bc, $0151                                  ; $464e: $01 $51 $01
    ld d, d                                       ; $4651: $52
    ld [bc], a                                    ; $4652: $02
    ld bc, $0153                                  ; $4653: $01 $53 $01
    ld e, c                                       ; $4656: $59
    ld bc, $d25a                                  ; $4657: $01 $5a $d2
    db $10                                        ; $465a: $10
    dec a                                         ; $465b: $3d
    nop                                           ; $465c: $00
    ld bc, $013e                                  ; $465d: $01 $3e $01
    ccf                                           ; $4660: $3f
    ld bc, $0148                                  ; $4661: $01 $48 $01
    ld c, c                                       ; $4664: $49
    nop                                           ; $4665: $00
    ld bc, $014a                                  ; $4666: $01 $4a $01
    ld c, e                                       ; $4669: $4b
    ld bc, $0154                                  ; $466a: $01 $54 $01
    ld d, l                                       ; $466d: $55
    nop                                           ; $466e: $00
    ld bc, $0156                                  ; $466f: $01 $56 $01
    ld d, a                                       ; $4672: $57
    ld bc, $015b                                  ; $4673: $01 $5b $01
    ld e, h                                       ; $4676: $5c
    add b                                         ; $4677: $80
    ldh a, [rP1]                                  ; $4678: $f0 $00
    ld b, b                                       ; $467a: $40
    ld bc, $0141                                  ; $467b: $01 $41 $01
    ld b, d                                       ; $467e: $42
    ld bc, $0043                                  ; $467f: $01 $43 $00
    ld bc, $014c                                  ; $4682: $01 $4c $01
    ld c, l                                       ; $4685: $4d
    ld bc, $014e                                  ; $4686: $01 $4e $01
    ld c, a                                       ; $4689: $4f
    jr nc, jr_08f_468d                            ; $468a: $30 $01

    ld e, b                                       ; $468c: $58

jr_08f_468d:
    inc b                                         ; $468d: $04
    nop                                           ; $468e: $00
    ld [$5d08], sp                                ; $468f: $08 $08 $5d
    ld bc, $015e                                  ; $4692: $01 $5e $01
    nop                                           ; $4695: $00
    ld e, a                                       ; $4696: $5f
    ld bc, $0294                                  ; $4697: $01 $94 $02
    nop                                           ; $469a: $00
    nop                                           ; $469b: $00
    nop                                           ; $469c: $00
    ld bc, $0200                                  ; $469d: $01 $00 $02
    nop                                           ; $46a0: $00
    inc bc                                        ; $46a1: $03
    nop                                           ; $46a2: $00
    ld b, b                                       ; $46a3: $40
    rrca                                          ; $46a4: $0f
    ld b, $00                                     ; $46a5: $06 $00
    stop                                          ; $46a7: $10 $00
    ld de, $1e00                                  ; $46a9: $11 $00 $1e
    nop                                           ; $46ac: $00
    nop                                           ; $46ad: $00
    rra                                           ; $46ae: $1f
    nop                                           ; $46af: $00
    jr nz, jr_08f_46b2                            ; $46b0: $20 $00

jr_08f_46b2:
    ld hl, $2e00                                  ; $46b2: $21 $00 $2e
    nop                                           ; $46b5: $00
    nop                                           ; $46b6: $00
    cpl                                           ; $46b7: $2f
    nop                                           ; $46b8: $00
    jr nc, jr_08f_46bb                            ; $46b9: $30 $00

jr_08f_46bb:
    nop                                           ; $46bb: $00
    nop                                           ; $46bc: $00
    inc b                                         ; $46bd: $04
    nop                                           ; $46be: $00
    nop                                           ; $46bf: $00
    dec b                                         ; $46c0: $05
    nop                                           ; $46c1: $00
    ld b, $00                                     ; $46c2: $06 $00
    ld [de], a                                    ; $46c4: $12
    nop                                           ; $46c5: $00
    inc de                                        ; $46c6: $13
    nop                                           ; $46c7: $00
    nop                                           ; $46c8: $00
    inc d                                         ; $46c9: $14
    nop                                           ; $46ca: $00
    dec d                                         ; $46cb: $15
    nop                                           ; $46cc: $00
    ld [hl+], a                                   ; $46cd: $22
    nop                                           ; $46ce: $00
    inc hl                                        ; $46cf: $23
    nop                                           ; $46d0: $00
    ld bc, $0024                                  ; $46d1: $01 $24 $00
    dec h                                         ; $46d4: $25
    nop                                           ; $46d5: $00
    ld sp, $3200                                  ; $46d6: $31 $00 $32
    ld e, $00                                     ; $46d9: $1e $00
    nop                                           ; $46db: $00
    rlca                                          ; $46dc: $07
    nop                                           ; $46dd: $00
    ld [$0900], sp                                ; $46de: $08 $00 $09
    nop                                           ; $46e1: $00
    ld a, [bc]                                    ; $46e2: $0a
    nop                                           ; $46e3: $00
    nop                                           ; $46e4: $00
    ld d, $00                                     ; $46e5: $16 $00
    rla                                           ; $46e7: $17
    nop                                           ; $46e8: $00
    jr jr_08f_46eb                                ; $46e9: $18 $00

jr_08f_46eb:
    add hl, de                                    ; $46eb: $19
    nop                                           ; $46ec: $00
    nop                                           ; $46ed: $00
    ld h, $00                                     ; $46ee: $26 $00
    daa                                           ; $46f0: $27
    nop                                           ; $46f1: $00
    jr z, jr_08f_46f4                             ; $46f2: $28 $00

jr_08f_46f4:
    add hl, hl                                    ; $46f4: $29
    nop                                           ; $46f5: $00
    db $10                                        ; $46f6: $10
    inc sp                                        ; $46f7: $33
    nop                                           ; $46f8: $00
    inc [hl]                                      ; $46f9: $34
    inc a                                         ; $46fa: $3c
    nop                                           ; $46fb: $00
    dec bc                                        ; $46fc: $0b
    nop                                           ; $46fd: $00
    inc c                                         ; $46fe: $0c
    nop                                           ; $46ff: $00
    nop                                           ; $4700: $00
    dec c                                         ; $4701: $0d
    nop                                           ; $4702: $00
    ld c, $00                                     ; $4703: $0e $00
    ld a, [de]                                    ; $4705: $1a
    nop                                           ; $4706: $00
    dec de                                        ; $4707: $1b
    nop                                           ; $4708: $00
    nop                                           ; $4709: $00
    inc e                                         ; $470a: $1c
    nop                                           ; $470b: $00
    dec e                                         ; $470c: $1d
    nop                                           ; $470d: $00
    ld a, [hl+]                                   ; $470e: $2a
    nop                                           ; $470f: $00
    dec hl                                        ; $4710: $2b
    nop                                           ; $4711: $00
    ld bc, $002c                                  ; $4712: $01 $2c $00
    dec l                                         ; $4715: $2d
    nop                                           ; $4716: $00
    dec [hl]                                      ; $4717: $35
    nop                                           ; $4718: $00
    ld [hl], $5a                                  ; $4719: $36 $5a
    nop                                           ; $471b: $00
    nop                                           ; $471c: $00
    scf                                           ; $471d: $37
    nop                                           ; $471e: $00
    jr c, jr_08f_4721                             ; $471f: $38 $00

jr_08f_4721:
    add hl, sp                                    ; $4721: $39
    nop                                           ; $4722: $00
    ld a, [hl-]                                   ; $4723: $3a
    nop                                           ; $4724: $00
    nop                                           ; $4725: $00
    ld b, h                                       ; $4726: $44
    nop                                           ; $4727: $00
    ld b, l                                       ; $4728: $45
    nop                                           ; $4729: $00
    ld b, [hl]                                    ; $472a: $46
    nop                                           ; $472b: $00
    ld b, a                                       ; $472c: $47
    nop                                           ; $472d: $00
    nop                                           ; $472e: $00
    ld d, e                                       ; $472f: $53
    nop                                           ; $4730: $00
    ld d, h                                       ; $4731: $54
    nop                                           ; $4732: $00
    ld d, l                                       ; $4733: $55
    nop                                           ; $4734: $00
    ld d, [hl]                                    ; $4735: $56
    nop                                           ; $4736: $00
    db $10                                        ; $4737: $10
    ld h, e                                       ; $4738: $63
    nop                                           ; $4739: $00
    ld h, h                                       ; $473a: $64
    ld a, b                                       ; $473b: $78
    db $10                                        ; $473c: $10
    dec sp                                        ; $473d: $3b
    nop                                           ; $473e: $00
    inc a                                         ; $473f: $3c
    nop                                           ; $4740: $00
    db $10                                        ; $4741: $10
    dec a                                         ; $4742: $3d
    nop                                           ; $4743: $00
    ld c, b                                       ; $4744: $48
    ld [$4900], sp                                ; $4745: $08 $00 $49
    nop                                           ; $4748: $00
    ld c, d                                       ; $4749: $4a
    nop                                           ; $474a: $00
    nop                                           ; $474b: $00
    ld d, a                                       ; $474c: $57
    nop                                           ; $474d: $00
    ld e, b                                       ; $474e: $58
    nop                                           ; $474f: $00
    ld e, c                                       ; $4750: $59
    nop                                           ; $4751: $00
    ld e, d                                       ; $4752: $5a
    nop                                           ; $4753: $00
    db $10                                        ; $4754: $10
    ld h, l                                       ; $4755: $65
    nop                                           ; $4756: $00
    ld h, [hl]                                    ; $4757: $66
    sub [hl]                                      ; $4758: $96
    db $10                                        ; $4759: $10
    ld a, $00                                     ; $475a: $3e $00
    ccf                                           ; $475c: $3f
    nop                                           ; $475d: $00
    nop                                           ; $475e: $00
    ld b, b                                       ; $475f: $40
    nop                                           ; $4760: $00
    ld c, e                                       ; $4761: $4b
    nop                                           ; $4762: $00
    ld c, h                                       ; $4763: $4c
    nop                                           ; $4764: $00
    ld c, l                                       ; $4765: $4d
    nop                                           ; $4766: $00
    nop                                           ; $4767: $00
    ld c, [hl]                                    ; $4768: $4e
    nop                                           ; $4769: $00
    ld e, e                                       ; $476a: $5b
    nop                                           ; $476b: $00
    ld e, h                                       ; $476c: $5c
    nop                                           ; $476d: $00
    ld e, l                                       ; $476e: $5d
    nop                                           ; $476f: $00
    inc b                                         ; $4770: $04
    ld e, [hl]                                    ; $4771: $5e
    nop                                           ; $4772: $00
    ld h, a                                       ; $4773: $67
    nop                                           ; $4774: $00
    ld l, b                                       ; $4775: $68
    or h                                          ; $4776: $b4
    db $10                                        ; $4777: $10
    ld b, c                                       ; $4778: $41
    nop                                           ; $4779: $00
    nop                                           ; $477a: $00
    ld b, d                                       ; $477b: $42
    nop                                           ; $477c: $00
    ld b, e                                       ; $477d: $43
    nop                                           ; $477e: $00
    ld c, a                                       ; $477f: $4f
    nop                                           ; $4780: $00
    ld d, b                                       ; $4781: $50
    nop                                           ; $4782: $00
    nop                                           ; $4783: $00
    ld d, c                                       ; $4784: $51
    nop                                           ; $4785: $00
    ld d, d                                       ; $4786: $52
    nop                                           ; $4787: $00
    ld e, a                                       ; $4788: $5f
    nop                                           ; $4789: $00
    ld h, b                                       ; $478a: $60
    nop                                           ; $478b: $00
    ld bc, $0061                                  ; $478c: $01 $61 $00
    ld h, d                                       ; $478f: $62
    nop                                           ; $4790: $00
    ld l, c                                       ; $4791: $69
    nop                                           ; $4792: $00
    ld l, d                                       ; $4793: $6a
    jp nc, RST_10                                 ; $4794: $d2 $10 $00

    ld l, e                                       ; $4797: $6b
    nop                                           ; $4798: $00
    ld l, h                                       ; $4799: $6c
    nop                                           ; $479a: $00
    ld l, l                                       ; $479b: $6d
    nop                                           ; $479c: $00
    ld [hl], a                                    ; $479d: $77
    nop                                           ; $479e: $00
    nop                                           ; $479f: $00
    ld a, b                                       ; $47a0: $78
    nop                                           ; $47a1: $00
    ld a, c                                       ; $47a2: $79
    nop                                           ; $47a3: $00
    ld a, d                                       ; $47a4: $7a
    nop                                           ; $47a5: $00
    add a                                         ; $47a6: $87
    nop                                           ; $47a7: $00
    nop                                           ; $47a8: $00
    adc b                                         ; $47a9: $88
    nop                                           ; $47aa: $00
    adc c                                         ; $47ab: $89
    nop                                           ; $47ac: $00
    adc d                                         ; $47ad: $8a
    nop                                           ; $47ae: $00
    sub a                                         ; $47af: $97
    nop                                           ; $47b0: $00
    ld b, b                                       ; $47b1: $40
    sbc b                                         ; $47b2: $98
    ldh a, [rNR10]                                ; $47b3: $f0 $10
    ld l, [hl]                                    ; $47b5: $6e
    nop                                           ; $47b6: $00
    ld l, a                                       ; $47b7: $6f
    nop                                           ; $47b8: $00
    ld [hl], b                                    ; $47b9: $70
    nop                                           ; $47ba: $00
    nop                                           ; $47bb: $00
    ld a, e                                       ; $47bc: $7b
    nop                                           ; $47bd: $00
    ld a, h                                       ; $47be: $7c
    nop                                           ; $47bf: $00
    ld a, l                                       ; $47c0: $7d
    nop                                           ; $47c1: $00
    ld a, [hl]                                    ; $47c2: $7e
    nop                                           ; $47c3: $00
    nop                                           ; $47c4: $00
    adc e                                         ; $47c5: $8b
    nop                                           ; $47c6: $00
    adc h                                         ; $47c7: $8c
    nop                                           ; $47c8: $00
    adc l                                         ; $47c9: $8d
    nop                                           ; $47ca: $00
    adc [hl]                                      ; $47cb: $8e
    nop                                           ; $47cc: $00
    db $10                                        ; $47cd: $10
    sbc c                                         ; $47ce: $99
    nop                                           ; $47cf: $00
    sbc d                                         ; $47d0: $9a
    ld c, $11                                     ; $47d1: $0e $11
    ld [hl], c                                    ; $47d3: $71
    nop                                           ; $47d4: $00
    ld [hl], d                                    ; $47d5: $72
    nop                                           ; $47d6: $00
    nop                                           ; $47d7: $00
    ld [hl], e                                    ; $47d8: $73
    nop                                           ; $47d9: $00
    ld a, a                                       ; $47da: $7f
    nop                                           ; $47db: $00
    add b                                         ; $47dc: $80
    nop                                           ; $47dd: $00
    add c                                         ; $47de: $81
    nop                                           ; $47df: $00
    nop                                           ; $47e0: $00
    add d                                         ; $47e1: $82
    nop                                           ; $47e2: $00
    adc a                                         ; $47e3: $8f
    nop                                           ; $47e4: $00
    sub b                                         ; $47e5: $90
    nop                                           ; $47e6: $00
    sub c                                         ; $47e7: $91
    nop                                           ; $47e8: $00
    inc b                                         ; $47e9: $04
    sub d                                         ; $47ea: $92
    nop                                           ; $47eb: $00
    sbc e                                         ; $47ec: $9b
    nop                                           ; $47ed: $00
    sbc h                                         ; $47ee: $9c
    inc l                                         ; $47ef: $2c
    ld de, $0074                                  ; $47f0: $11 $74 $00
    nop                                           ; $47f3: $00
    ld [hl], l                                    ; $47f4: $75
    nop                                           ; $47f5: $00
    halt                                          ; $47f6: $76
    nop                                           ; $47f7: $00
    add e                                         ; $47f8: $83
    nop                                           ; $47f9: $00
    add h                                         ; $47fa: $84
    nop                                           ; $47fb: $00
    nop                                           ; $47fc: $00
    add l                                         ; $47fd: $85
    nop                                           ; $47fe: $00
    add [hl]                                      ; $47ff: $86
    nop                                           ; $4800: $00
    sub e                                         ; $4801: $93
    nop                                           ; $4802: $00
    sub h                                         ; $4803: $94
    nop                                           ; $4804: $00
    ld bc, $0095                                  ; $4805: $01 $95 $00
    sub [hl]                                      ; $4808: $96
    nop                                           ; $4809: $00
    sbc l                                         ; $480a: $9d
    nop                                           ; $480b: $00
    sbc [hl]                                      ; $480c: $9e
    ld c, d                                       ; $480d: $4a
    ld de, $9f04                                  ; $480e: $11 $04 $9f
    nop                                           ; $4811: $00
    and b                                         ; $4812: $a0
    nop                                           ; $4813: $00
    and c                                         ; $4814: $a1
    sub [hl]                                      ; $4815: $96
    nop                                           ; $4816: $00
    and e                                         ; $4817: $a3
    nop                                           ; $4818: $00
    nop                                           ; $4819: $00
    and h                                         ; $481a: $a4
    nop                                           ; $481b: $00
    and l                                         ; $481c: $a5
    nop                                           ; $481d: $00
    or d                                          ; $481e: $b2
    nop                                           ; $481f: $00
    or e                                          ; $4820: $b3
    nop                                           ; $4821: $00
    ld bc, $00b4                                  ; $4822: $01 $b4 $00
    or l                                          ; $4825: $b5
    nop                                           ; $4826: $00
    jp nz, $c300                                  ; $4827: $c2 $00 $c3

    ld l, b                                       ; $482a: $68
    ld de, $6c40                                  ; $482b: $11 $40 $6c
    ld [bc], a                                    ; $482e: $02
    db $10                                        ; $482f: $10
    and [hl]                                      ; $4830: $a6
    nop                                           ; $4831: $00
    and a                                         ; $4832: $a7
    nop                                           ; $4833: $00
    xor b                                         ; $4834: $a8
    nop                                           ; $4835: $00
    nop                                           ; $4836: $00
    xor c                                         ; $4837: $a9
    nop                                           ; $4838: $00
    or [hl]                                       ; $4839: $b6
    nop                                           ; $483a: $00
    or a                                          ; $483b: $b7
    nop                                           ; $483c: $00
    cp b                                          ; $483d: $b8
    nop                                           ; $483e: $00
    dec b                                         ; $483f: $05
    cp c                                          ; $4840: $b9
    nop                                           ; $4841: $00
    call nz, $c500                                ; $4842: $c4 $00 $c5
    add [hl]                                      ; $4845: $86
    ld de, $026f                                  ; $4846: $11 $6f $02
    stop                                          ; $4849: $10 $00
    xor d                                         ; $484b: $aa
    nop                                           ; $484c: $00
    xor e                                         ; $484d: $ab
    nop                                           ; $484e: $00
    xor h                                         ; $484f: $ac
    nop                                           ; $4850: $00
    xor l                                         ; $4851: $ad
    nop                                           ; $4852: $00
    nop                                           ; $4853: $00
    cp d                                          ; $4854: $ba
    nop                                           ; $4855: $00
    cp e                                          ; $4856: $bb
    nop                                           ; $4857: $00
    cp h                                          ; $4858: $bc
    nop                                           ; $4859: $00
    cp l                                          ; $485a: $bd
    nop                                           ; $485b: $00
    inc d                                         ; $485c: $14
    add $00                                       ; $485d: $c6 $00
    rst $00                                       ; $485f: $c7
    and h                                         ; $4860: $a4
    ld de, $02a2                                  ; $4861: $11 $a2 $02
    db $10                                        ; $4864: $10
    xor [hl]                                      ; $4865: $ae
    nop                                           ; $4866: $00
    nop                                           ; $4867: $00
    xor a                                         ; $4868: $af
    nop                                           ; $4869: $00
    or b                                          ; $486a: $b0
    nop                                           ; $486b: $00
    or c                                          ; $486c: $b1
    nop                                           ; $486d: $00
    cp [hl]                                       ; $486e: $be
    nop                                           ; $486f: $00
    nop                                           ; $4870: $00
    cp a                                          ; $4871: $bf
    nop                                           ; $4872: $00
    ret nz                                        ; $4873: $c0

    nop                                           ; $4874: $00
    pop bc                                        ; $4875: $c1
    nop                                           ; $4876: $00
    ret z                                         ; $4877: $c8

    nop                                           ; $4878: $00
    ld d, b                                       ; $4879: $50
    ret                                           ; $487a: $c9


    jp nz, $ca11                                  ; $487b: $c2 $11 $ca

    ld [bc], a                                    ; $487e: $02
    db $10                                        ; $487f: $10
    ret nc                                        ; $4880: $d0

    nop                                           ; $4881: $00
    pop de                                        ; $4882: $d1
    nop                                           ; $4883: $00
    nop                                           ; $4884: $00
    jp nc, $d300                                  ; $4885: $d2 $00 $d3

    nop                                           ; $4888: $00
    db $dd                                        ; $4889: $dd
    nop                                           ; $488a: $00
    sbc $00                                       ; $488b: $de $00
    ld bc, $00df                                  ; $488d: $01 $df $00
    ldh [rP1], a                                  ; $4890: $e0 $00
    db $ed                                        ; $4892: $ed
    nop                                           ; $4893: $00
    xor $e0                                       ; $4894: $ee $e0
    ld de, $cb40                                  ; $4896: $11 $40 $cb
    ld [bc], a                                    ; $4899: $02
    nop                                           ; $489a: $00
    call z, $d400                                 ; $489b: $cc $00 $d4
    nop                                           ; $489e: $00
    push de                                       ; $489f: $d5
    nop                                           ; $48a0: $00
    nop                                           ; $48a1: $00
    sub $00                                       ; $48a2: $d6 $00
    rst $10                                       ; $48a4: $d7
    nop                                           ; $48a5: $00
    pop hl                                        ; $48a6: $e1
    nop                                           ; $48a7: $00
    ld [c], a                                     ; $48a8: $e2
    nop                                           ; $48a9: $00
    ld bc, $00e3                                  ; $48aa: $01 $e3 $00
    db $e4                                        ; $48ad: $e4
    nop                                           ; $48ae: $00
    rst $28                                       ; $48af: $ef
    nop                                           ; $48b0: $00
    ldh a, [$96]                                  ; $48b1: $f0 $96
    jr nc, @+$42                                  ; $48b3: $30 $40

    call $014e                                    ; $48b5: $cd $4e $01
    ret c                                         ; $48b8: $d8

    nop                                           ; $48b9: $00
    reti                                          ; $48ba: $d9


    nop                                           ; $48bb: $00
    jp c, RST_00                                  ; $48bc: $da $00 $00

    push hl                                       ; $48bf: $e5
    nop                                           ; $48c0: $00
    and $00                                       ; $48c1: $e6 $00
    rst $20                                       ; $48c3: $e7
    nop                                           ; $48c4: $00
    add sp, $00                                   ; $48c5: $e8 $00
    dec d                                         ; $48c7: $15
    pop af                                        ; $48c8: $f1
    nop                                           ; $48c9: $00
    ld a, [c]                                     ; $48ca: $f2
    inc e                                         ; $48cb: $1c
    ld [de], a                                    ; $48cc: $12
    adc $02                                       ; $48cd: $ce $02
    nop                                           ; $48cf: $00
    rst $08                                       ; $48d0: $cf
    jr nc, jr_08f_48d4                            ; $48d1: $30 $01

    ld b, b                                       ; $48d3: $40

jr_08f_48d4:
    db $db                                        ; $48d4: $db
    inc [hl]                                      ; $48d5: $34
    ld bc, $00dc                                  ; $48d6: $01 $dc $00
    jp hl                                         ; $48d9: $e9


    nop                                           ; $48da: $00
    ld [$0100], a                                 ; $48db: $ea $00 $01
    db $eb                                        ; $48de: $eb
    nop                                           ; $48df: $00
    db $ec                                        ; $48e0: $ec
    nop                                           ; $48e1: $00
    di                                            ; $48e2: $f3
    nop                                           ; $48e3: $00
    db $f4                                        ; $48e4: $f4
    ld a, [hl-]                                   ; $48e5: $3a
    ld [de], a                                    ; $48e6: $12
    dec b                                         ; $48e7: $05
    push af                                       ; $48e8: $f5
    nop                                           ; $48e9: $00
    or $00                                        ; $48ea: $f6 $00
    rst $30                                       ; $48ec: $f7
    sbc h                                         ; $48ed: $9c
    nop                                           ; $48ee: $00
    rst $38                                       ; $48ef: $ff
    ld h, e                                       ; $48f0: $63
    ld [bc], a                                    ; $48f1: $02
    nop                                           ; $48f2: $00
    ld bc, $0c01                                  ; $48f3: $01 $01 $0c
    ld bc, $010d                                  ; $48f6: $01 $0d $01
    ld c, $01                                     ; $48f9: $0e $01
    ld [bc], a                                    ; $48fb: $02
    rrca                                          ; $48fc: $0f
    ld bc, $011c                                  ; $48fd: $01 $1c $01
    dec e                                         ; $4900: $1d
    ld bc, $0a58                                  ; $4901: $01 $58 $0a
    ld hl, sp+$00                                 ; $4904: $f8 $00
    nop                                           ; $4906: $00
    ld sp, hl                                     ; $4907: $f9
    nop                                           ; $4908: $00
    ld a, [$0200]                                 ; $4909: $fa $00 $02
    ld bc, $0003                                  ; $490c: $01 $03 $00
    ld bc, $0104                                  ; $490f: $01 $04 $01
    dec b                                         ; $4912: $05
    ld bc, $0110                                  ; $4913: $01 $10 $01
    ld de, $0100                                  ; $4916: $11 $00 $01
    ld [de], a                                    ; $4919: $12
    ld bc, $0113                                  ; $491a: $01 $13 $01
    ld e, $01                                     ; $491d: $1e $01
    rra                                           ; $491f: $1f
    and b                                         ; $4920: $a0
    ld e, $10                                     ; $4921: $1e $10
    ei                                            ; $4923: $fb
    sbc b                                         ; $4924: $98
    nop                                           ; $4925: $00
    db $fc                                        ; $4926: $fc
    nop                                           ; $4927: $00
    ld b, $01                                     ; $4928: $06 $01
    rlca                                          ; $492a: $07
    nop                                           ; $492b: $00
    ld bc, $00cb                                  ; $492c: $01 $cb $00
    ld [$1401], sp                                ; $492f: $08 $01 $14
    ld bc, $0015                                  ; $4932: $01 $15 $00
    ld bc, $0116                                  ; $4935: $01 $16 $01
    rla                                           ; $4938: $17
    ld bc, $0120                                  ; $4939: $01 $20 $01
    ld hl, $3c82                                  ; $493c: $21 $82 $3c
    db $10                                        ; $493f: $10
    ld l, h                                       ; $4940: $6c
    nop                                           ; $4941: $00
    db $fd                                        ; $4942: $fd
    nop                                           ; $4943: $00
    cp $c6                                        ; $4944: $fe $c6
    ld bc, $0009                                  ; $4946: $01 $09 $00
    ld bc, $010a                                  ; $4949: $01 $0a $01
    dec bc                                        ; $494c: $0b
    ld bc, $0118                                  ; $494d: $01 $18 $01
    add hl, de                                    ; $4950: $19
    nop                                           ; $4951: $00
    ld bc, $011a                                  ; $4952: $01 $1a $01
    dec de                                        ; $4955: $1b
    ld bc, $0122                                  ; $4956: $01 $22 $01
    inc hl                                        ; $4959: $23
    add b                                         ; $495a: $80
    ld e, d                                       ; $495b: $5a
    db $10                                        ; $495c: $10
    inc h                                         ; $495d: $24
    ld bc, $0125                                  ; $495e: $01 $25 $01
    ld h, $01                                     ; $4961: $26 $01
    ld l, a                                       ; $4963: $6f
    nop                                           ; $4964: $00
    nop                                           ; $4965: $00
    inc l                                         ; $4966: $2c
    ld bc, $012d                                  ; $4967: $01 $2d $01
    ld l, $01                                     ; $496a: $2e $01
    ld [hl-], a                                   ; $496c: $32
    nop                                           ; $496d: $00
    ld bc, $0133                                  ; $496e: $01 $33 $01
    inc [hl]                                      ; $4971: $34
    ld bc, $0135                                  ; $4972: $01 $35 $01
    ld a, $20                                     ; $4975: $3e $20
    ld bc, $783f                                  ; $4977: $01 $3f $78
    db $10                                        ; $497a: $10
    daa                                           ; $497b: $27
    ld bc, $0128                                  ; $497c: $01 $28 $01
    add hl, hl                                    ; $497f: $29
    ld b, b                                       ; $4980: $40
    ld bc, $0932                                  ; $4981: $01 $32 $09
    cpl                                           ; $4984: $2f
    ld bc, $0130                                  ; $4985: $01 $30 $01
    ld [hl], $01                                  ; $4988: $36 $01
    nop                                           ; $498a: $00
    scf                                           ; $498b: $37
    ld bc, $0138                                  ; $498c: $01 $38 $01
    add hl, sp                                    ; $498f: $39
    ld bc, $0140                                  ; $4990: $01 $40 $01
    ld b, h                                       ; $4993: $44
    ld b, c                                       ; $4994: $41
    sub [hl]                                      ; $4995: $96
    nop                                           ; $4996: $00
    ld a, [hl+]                                   ; $4997: $2a
    ld bc, $022b                                  ; $4998: $01 $2b $02
    ld b, b                                       ; $499b: $40
    ld sp, $0001                                  ; $499c: $31 $01 $00
    ld a, [hl-]                                   ; $499f: $3a
    ld bc, $013b                                  ; $49a0: $01 $3b $01
    inc a                                         ; $49a3: $3c
    ld bc, $013d                                  ; $49a4: $01 $3d $01
    ld b, b                                       ; $49a7: $40
    ld b, d                                       ; $49a8: $42
    ld [$4300], sp                                ; $49a9: $08 $00 $43
    ld bc, $007f                                  ; $49ac: $01 $7f $00
    nop                                           ; $49af: $00
    nop                                           ; $49b0: $00
    nop                                           ; $49b1: $00
    ld bc, $0200                                  ; $49b2: $01 $00 $02
    nop                                           ; $49b5: $00
    inc bc                                        ; $49b6: $03
    nop                                           ; $49b7: $00
    nop                                           ; $49b8: $00
    stop                                          ; $49b9: $10 $00
    ld de, $1200                                  ; $49bb: $11 $00 $12
    nop                                           ; $49be: $00
    inc b                                         ; $49bf: $04
    nop                                           ; $49c0: $00
    nop                                           ; $49c1: $00
    dec b                                         ; $49c2: $05
    nop                                           ; $49c3: $00
    ld b, $00                                     ; $49c4: $06 $00
    rlca                                          ; $49c6: $07
    nop                                           ; $49c7: $00
    inc de                                        ; $49c8: $13
    nop                                           ; $49c9: $00
    nop                                           ; $49ca: $00
    inc d                                         ; $49cb: $14
    nop                                           ; $49cc: $00
    dec d                                         ; $49cd: $15
    nop                                           ; $49ce: $00
    ld [$0900], sp                                ; $49cf: $08 $00 $09
    nop                                           ; $49d2: $00
    nop                                           ; $49d3: $00
    ld a, [bc]                                    ; $49d4: $0a
    nop                                           ; $49d5: $00
    dec bc                                        ; $49d6: $0b
    nop                                           ; $49d7: $00
    ld d, $00                                     ; $49d8: $16 $00
    rla                                           ; $49da: $17
    nop                                           ; $49db: $00
    nop                                           ; $49dc: $00
    jr jr_08f_49df                                ; $49dd: $18 $00

jr_08f_49df:
    inc c                                         ; $49df: $0c
    nop                                           ; $49e0: $00
    dec c                                         ; $49e1: $0d
    nop                                           ; $49e2: $00
    ld c, $00                                     ; $49e3: $0e $00
    nop                                           ; $49e5: $00
    rrca                                          ; $49e6: $0f
    nop                                           ; $49e7: $00
    add hl, de                                    ; $49e8: $19
    nop                                           ; $49e9: $00
    ld a, [de]                                    ; $49ea: $1a
    nop                                           ; $49eb: $00
    dec de                                        ; $49ec: $1b
    nop                                           ; $49ed: $00
    nop                                           ; $49ee: $00
    inc e                                         ; $49ef: $1c
    nop                                           ; $49f0: $00
    dec e                                         ; $49f1: $1d
    nop                                           ; $49f2: $00
    ld e, $00                                     ; $49f3: $1e $00
    rra                                           ; $49f5: $1f
    nop                                           ; $49f6: $00
    nop                                           ; $49f7: $00
    inc l                                         ; $49f8: $2c
    nop                                           ; $49f9: $00
    dec l                                         ; $49fa: $2d
    nop                                           ; $49fb: $00
    ld l, $00                                     ; $49fc: $2e $00
    jr nz, jr_08f_4a00                            ; $49fe: $20 $00

jr_08f_4a00:
    nop                                           ; $4a00: $00
    ld hl, $2200                                  ; $4a01: $21 $00 $22
    nop                                           ; $4a04: $00
    inc hl                                        ; $4a05: $23
    nop                                           ; $4a06: $00
    cpl                                           ; $4a07: $2f
    nop                                           ; $4a08: $00
    nop                                           ; $4a09: $00
    jr nc, jr_08f_4a0c                            ; $4a0a: $30 $00

jr_08f_4a0c:
    ld sp, $2400                                  ; $4a0c: $31 $00 $24
    nop                                           ; $4a0f: $00
    dec h                                         ; $4a10: $25
    nop                                           ; $4a11: $00
    nop                                           ; $4a12: $00
    ld h, $00                                     ; $4a13: $26 $00
    daa                                           ; $4a15: $27
    nop                                           ; $4a16: $00
    ld [hl-], a                                   ; $4a17: $32
    nop                                           ; $4a18: $00
    inc sp                                        ; $4a19: $33
    nop                                           ; $4a1a: $00
    nop                                           ; $4a1b: $00
    inc [hl]                                      ; $4a1c: $34
    nop                                           ; $4a1d: $00
    jr z, jr_08f_4a20                             ; $4a1e: $28 $00

jr_08f_4a20:
    add hl, hl                                    ; $4a20: $29
    nop                                           ; $4a21: $00
    ld a, [hl+]                                   ; $4a22: $2a
    nop                                           ; $4a23: $00
    nop                                           ; $4a24: $00
    dec hl                                        ; $4a25: $2b
    nop                                           ; $4a26: $00
    dec [hl]                                      ; $4a27: $35
    nop                                           ; $4a28: $00
    ld [hl], $00                                  ; $4a29: $36 $00
    scf                                           ; $4a2b: $37
    nop                                           ; $4a2c: $00
    nop                                           ; $4a2d: $00
    jr c, jr_08f_4a30                             ; $4a2e: $38 $00

jr_08f_4a30:
    add hl, sp                                    ; $4a30: $39
    nop                                           ; $4a31: $00
    ld a, [hl-]                                   ; $4a32: $3a
    nop                                           ; $4a33: $00
    dec sp                                        ; $4a34: $3b
    nop                                           ; $4a35: $00
    ld b, $3c                                     ; $4a36: $06 $3c
    nop                                           ; $4a38: $00
    dec a                                         ; $4a39: $3d
    nop                                           ; $4a3a: $00
    ld a, $72                                     ; $4a3b: $3e $72
    nop                                           ; $4a3d: $00
    ld [bc], a                                    ; $4a3e: $02
    ld c, b                                       ; $4a3f: $48
    ld e, h                                       ; $4a40: $5c
    nop                                           ; $4a41: $00
    nop                                           ; $4a42: $00
    nop                                           ; $4a43: $00
    nop                                           ; $4a44: $00
    ld bc, $0200                                  ; $4a45: $01 $00 $02
    nop                                           ; $4a48: $00
    inc bc                                        ; $4a49: $03
    nop                                           ; $4a4a: $00
    nop                                           ; $4a4b: $00
    stop                                          ; $4a4c: $10 $00
    ld de, $1200                                  ; $4a4e: $11 $00 $12
    nop                                           ; $4a51: $00
    inc b                                         ; $4a52: $04
    nop                                           ; $4a53: $00
    nop                                           ; $4a54: $00
    dec b                                         ; $4a55: $05
    nop                                           ; $4a56: $00
    ld b, $00                                     ; $4a57: $06 $00
    rlca                                          ; $4a59: $07
    nop                                           ; $4a5a: $00
    inc de                                        ; $4a5b: $13
    nop                                           ; $4a5c: $00
    nop                                           ; $4a5d: $00
    inc d                                         ; $4a5e: $14
    nop                                           ; $4a5f: $00
    dec d                                         ; $4a60: $15
    nop                                           ; $4a61: $00
    ld [$0900], sp                                ; $4a62: $08 $00 $09
    nop                                           ; $4a65: $00
    nop                                           ; $4a66: $00
    ld a, [bc]                                    ; $4a67: $0a
    nop                                           ; $4a68: $00
    dec bc                                        ; $4a69: $0b
    nop                                           ; $4a6a: $00
    ld d, $00                                     ; $4a6b: $16 $00
    rla                                           ; $4a6d: $17
    nop                                           ; $4a6e: $00
    nop                                           ; $4a6f: $00
    jr jr_08f_4a72                                ; $4a70: $18 $00

jr_08f_4a72:
    inc c                                         ; $4a72: $0c
    nop                                           ; $4a73: $00
    dec c                                         ; $4a74: $0d
    nop                                           ; $4a75: $00
    ld c, $00                                     ; $4a76: $0e $00
    nop                                           ; $4a78: $00
    rrca                                          ; $4a79: $0f
    nop                                           ; $4a7a: $00
    add hl, de                                    ; $4a7b: $19
    nop                                           ; $4a7c: $00
    ld a, [de]                                    ; $4a7d: $1a
    nop                                           ; $4a7e: $00
    dec de                                        ; $4a7f: $1b
    nop                                           ; $4a80: $00
    nop                                           ; $4a81: $00
    inc e                                         ; $4a82: $1c
    nop                                           ; $4a83: $00
    dec e                                         ; $4a84: $1d
    nop                                           ; $4a85: $00
    ld e, $00                                     ; $4a86: $1e $00
    rra                                           ; $4a88: $1f
    nop                                           ; $4a89: $00
    nop                                           ; $4a8a: $00
    jr z, jr_08f_4a8d                             ; $4a8b: $28 $00

jr_08f_4a8d:
    add hl, hl                                    ; $4a8d: $29
    nop                                           ; $4a8e: $00
    ld a, [hl+]                                   ; $4a8f: $2a
    nop                                           ; $4a90: $00
    jr nz, jr_08f_4a93                            ; $4a91: $20 $00

jr_08f_4a93:
    nop                                           ; $4a93: $00
    ld hl, $2200                                  ; $4a94: $21 $00 $22
    nop                                           ; $4a97: $00
    inc hl                                        ; $4a98: $23
    nop                                           ; $4a99: $00
    dec hl                                        ; $4a9a: $2b
    nop                                           ; $4a9b: $00
    ld b, b                                       ; $4a9c: $40
    inc l                                         ; $4a9d: $2c
    ld c, $00                                     ; $4a9e: $0e $00
    inc h                                         ; $4aa0: $24
    nop                                           ; $4aa1: $00
    dec h                                         ; $4aa2: $25
    nop                                           ; $4aa3: $00
    ld h, $00                                     ; $4aa4: $26 $00
    ld d, b                                       ; $4aa6: $50
    daa                                           ; $4aa7: $27
    ld b, $00                                     ; $4aa8: $06 $00
    dec de                                        ; $4aaa: $1b
    inc e                                         ; $4aab: $1c
    nop                                           ; $4aac: $00
    db $10                                        ; $4aad: $10
    ld bc, $0000                                  ; $4aae: $01 $00 $00
    nop                                           ; $4ab1: $00
    ld bc, $0200                                  ; $4ab2: $01 $00 $02
    nop                                           ; $4ab5: $00
    inc bc                                        ; $4ab6: $03
    nop                                           ; $4ab7: $00
    nop                                           ; $4ab8: $00
    dec c                                         ; $4ab9: $0d
    nop                                           ; $4aba: $00
    ld c, $00                                     ; $4abb: $0e $00
    rrca                                          ; $4abd: $0f
    nop                                           ; $4abe: $00
    stop                                          ; $4abf: $10 $00
    nop                                           ; $4ac1: $00
    dec e                                         ; $4ac2: $1d
    nop                                           ; $4ac3: $00
    ld e, $00                                     ; $4ac4: $1e $00
    nop                                           ; $4ac6: $00
    nop                                           ; $4ac7: $00
    inc b                                         ; $4ac8: $04
    nop                                           ; $4ac9: $00
    nop                                           ; $4aca: $00
    dec b                                         ; $4acb: $05
    nop                                           ; $4acc: $00
    ld b, $00                                     ; $4acd: $06 $00
    ld de, $1200                                  ; $4acf: $11 $00 $12
    nop                                           ; $4ad2: $00
    inc b                                         ; $4ad3: $04
    inc de                                        ; $4ad4: $13
    nop                                           ; $4ad5: $00
    inc d                                         ; $4ad6: $14
    nop                                           ; $4ad7: $00
    rra                                           ; $4ad8: $1f
    inc d                                         ; $4ad9: $14
    db $10                                        ; $4ada: $10
    rlca                                          ; $4adb: $07
    nop                                           ; $4adc: $00
    nop                                           ; $4add: $00
    ld [$0900], sp                                ; $4ade: $08 $00 $09
    nop                                           ; $4ae1: $00
    dec d                                         ; $4ae2: $15
    nop                                           ; $4ae3: $00
    ld d, $00                                     ; $4ae4: $16 $00
    inc b                                         ; $4ae6: $04
    rla                                           ; $4ae7: $17
    nop                                           ; $4ae8: $00
    jr jr_08f_4aeb                                ; $4ae9: $18 $00

jr_08f_4aeb:
    jr nz, jr_08f_4b15                            ; $4aeb: $20 $28

    db $10                                        ; $4aed: $10
    ld a, [bc]                                    ; $4aee: $0a
    nop                                           ; $4aef: $00
    nop                                           ; $4af0: $00
    dec bc                                        ; $4af1: $0b
    nop                                           ; $4af2: $00
    inc c                                         ; $4af3: $0c
    nop                                           ; $4af4: $00
    add hl, de                                    ; $4af5: $19
    nop                                           ; $4af6: $00
    ld a, [de]                                    ; $4af7: $1a
    nop                                           ; $4af8: $00
    ld bc, $001b                                  ; $4af9: $01 $1b $00
    inc e                                         ; $4afc: $1c
    nop                                           ; $4afd: $00
    ld hl, $2200                                  ; $4afe: $21 $00 $22
    inc a                                         ; $4b01: $3c
    nop                                           ; $4b02: $00
    nop                                           ; $4b03: $00
    inc hl                                        ; $4b04: $23
    nop                                           ; $4b05: $00
    inc h                                         ; $4b06: $24
    nop                                           ; $4b07: $00
    dec h                                         ; $4b08: $25
    nop                                           ; $4b09: $00
    ld l, $00                                     ; $4b0a: $2e $00
    nop                                           ; $4b0c: $00
    cpl                                           ; $4b0d: $2f
    nop                                           ; $4b0e: $00
    jr nc, jr_08f_4b11                            ; $4b0f: $30 $00

jr_08f_4b11:
    ld sp, $3e00                                  ; $4b11: $31 $00 $3e
    nop                                           ; $4b14: $00

jr_08f_4b15:
    ld b, b                                       ; $4b15: $40
    ccf                                           ; $4b16: $3f
    ld d, b                                       ; $4b17: $50
    nop                                           ; $4b18: $00
    ld h, $00                                     ; $4b19: $26 $00
    daa                                           ; $4b1b: $27
    nop                                           ; $4b1c: $00
    jr z, jr_08f_4b1f                             ; $4b1d: $28 $00

jr_08f_4b1f:
    nop                                           ; $4b1f: $00
    ld [hl-], a                                   ; $4b20: $32
    nop                                           ; $4b21: $00
    inc sp                                        ; $4b22: $33
    nop                                           ; $4b23: $00
    inc [hl]                                      ; $4b24: $34
    nop                                           ; $4b25: $00
    dec [hl]                                      ; $4b26: $35
    nop                                           ; $4b27: $00
    db $10                                        ; $4b28: $10
    ld b, b                                       ; $4b29: $40
    nop                                           ; $4b2a: $00
    ld b, c                                       ; $4b2b: $41
    ld h, h                                       ; $4b2c: $64
    nop                                           ; $4b2d: $00
    add hl, hl                                    ; $4b2e: $29
    nop                                           ; $4b2f: $00
    ld a, [hl+]                                   ; $4b30: $2a
    nop                                           ; $4b31: $00
    nop                                           ; $4b32: $00
    dec hl                                        ; $4b33: $2b
    nop                                           ; $4b34: $00
    ld [hl], $00                                  ; $4b35: $36 $00
    scf                                           ; $4b37: $37
    nop                                           ; $4b38: $00
    jr c, jr_08f_4b3b                             ; $4b39: $38 $00

jr_08f_4b3b:
    inc d                                         ; $4b3b: $14
    add hl, sp                                    ; $4b3c: $39
    nop                                           ; $4b3d: $00
    ld b, d                                       ; $4b3e: $42
    ld a, b                                       ; $4b3f: $78
    db $10                                        ; $4b40: $10
    inc l                                         ; $4b41: $2c
    inc a                                         ; $4b42: $3c
    nop                                           ; $4b43: $00
    dec l                                         ; $4b44: $2d
    nop                                           ; $4b45: $00
    nop                                           ; $4b46: $00
    ld a, [hl-]                                   ; $4b47: $3a
    nop                                           ; $4b48: $00
    dec sp                                        ; $4b49: $3b
    nop                                           ; $4b4a: $00
    inc a                                         ; $4b4b: $3c
    nop                                           ; $4b4c: $00
    dec a                                         ; $4b4d: $3d
    nop                                           ; $4b4e: $00
    ld b, b                                       ; $4b4f: $40
    ld b, e                                       ; $4b50: $43
    adc h                                         ; $4b51: $8c
    db $10                                        ; $4b52: $10
    ld b, h                                       ; $4b53: $44
    nop                                           ; $4b54: $00
    ld b, l                                       ; $4b55: $45
    nop                                           ; $4b56: $00
    ld b, [hl]                                    ; $4b57: $46
    nop                                           ; $4b58: $00
    nop                                           ; $4b59: $00
    ld c, a                                       ; $4b5a: $4f
    nop                                           ; $4b5b: $00
    ld d, b                                       ; $4b5c: $50
    nop                                           ; $4b5d: $00
    ld d, c                                       ; $4b5e: $51
    nop                                           ; $4b5f: $00
    ld d, d                                       ; $4b60: $52
    nop                                           ; $4b61: $00
    ld b, b                                       ; $4b62: $40
    ld e, l                                       ; $4b63: $5d
    and b                                         ; $4b64: $a0
    db $10                                        ; $4b65: $10
    ld b, a                                       ; $4b66: $47
    nop                                           ; $4b67: $00
    ld c, b                                       ; $4b68: $48
    nop                                           ; $4b69: $00
    ld c, c                                       ; $4b6a: $49
    nop                                           ; $4b6b: $00
    nop                                           ; $4b6c: $00
    ld d, e                                       ; $4b6d: $53
    nop                                           ; $4b6e: $00
    ld d, h                                       ; $4b6f: $54
    nop                                           ; $4b70: $00
    ld d, l                                       ; $4b71: $55
    nop                                           ; $4b72: $00
    ld d, [hl]                                    ; $4b73: $56
    nop                                           ; $4b74: $00
    ld d, b                                       ; $4b75: $50
    ld e, [hl]                                    ; $4b76: $5e
    or h                                          ; $4b77: $b4
    db $10                                        ; $4b78: $10
    ld c, d                                       ; $4b79: $4a
    ld a, b                                       ; $4b7a: $78
    nop                                           ; $4b7b: $00
    ld c, e                                       ; $4b7c: $4b
    nop                                           ; $4b7d: $00
    ld d, a                                       ; $4b7e: $57
    nop                                           ; $4b7f: $00
    ld bc, $0058                                  ; $4b80: $01 $58 $00
    ld e, c                                       ; $4b83: $59
    nop                                           ; $4b84: $00
    ld e, d                                       ; $4b85: $5a
    nop                                           ; $4b86: $00
    ld e, a                                       ; $4b87: $5f
    ret z                                         ; $4b88: $c8

    db $10                                        ; $4b89: $10
    inc b                                         ; $4b8a: $04
    ld c, h                                       ; $4b8b: $4c
    nop                                           ; $4b8c: $00
    ld c, l                                       ; $4b8d: $4d
    nop                                           ; $4b8e: $00
    ld c, [hl]                                    ; $4b8f: $4e
    ld a, b                                       ; $4b90: $78
    db $10                                        ; $4b91: $10
    ld e, e                                       ; $4b92: $5b
    nop                                           ; $4b93: $00
    db $10                                        ; $4b94: $10
    ld e, h                                       ; $4b95: $5c
    nop                                           ; $4b96: $00
    ld h, b                                       ; $4b97: $60
    call c, Call_08f_6110                         ; $4b98: $dc $10 $61
    nop                                           ; $4b9b: $00
    ld h, d                                       ; $4b9c: $62
    nop                                           ; $4b9d: $00
    nop                                           ; $4b9e: $00
    ld h, e                                       ; $4b9f: $63
    nop                                           ; $4ba0: $00
    ld l, h                                       ; $4ba1: $6c
    nop                                           ; $4ba2: $00
    ld l, l                                       ; $4ba3: $6d
    nop                                           ; $4ba4: $00
    ld l, [hl]                                    ; $4ba5: $6e
    nop                                           ; $4ba6: $00
    db $10                                        ; $4ba7: $10
    ld l, a                                       ; $4ba8: $6f
    nop                                           ; $4ba9: $00
    ld a, c                                       ; $4baa: $79
    ldh a, [rNR10]                                ; $4bab: $f0 $10
    ld h, h                                       ; $4bad: $64
    nop                                           ; $4bae: $00
    ld h, l                                       ; $4baf: $65
    nop                                           ; $4bb0: $00
    dec b                                         ; $4bb1: $05
    ld h, [hl]                                    ; $4bb2: $66
    nop                                           ; $4bb3: $00
    ld [hl], b                                    ; $4bb4: $70
    nop                                           ; $4bb5: $00
    ld [hl], c                                    ; $4bb6: $71
    ld a, b                                       ; $4bb7: $78
    nop                                           ; $4bb8: $00
    ld [hl], d                                    ; $4bb9: $72
    inc a                                         ; $4bba: $3c
    jr nz, jr_08f_4bcd                            ; $4bbb: $20 $10

    ld h, a                                       ; $4bbd: $67
    nop                                           ; $4bbe: $00
    ld l, b                                       ; $4bbf: $68
    ld a, b                                       ; $4bc0: $78
    jr nz, @+$75                                  ; $4bc1: $20 $73

    nop                                           ; $4bc3: $00
    ld [hl], h                                    ; $4bc4: $74
    nop                                           ; $4bc5: $00
    ld b, b                                       ; $4bc6: $40
    ld a, d                                       ; $4bc7: $7a
    call c, Call_08f_6910                         ; $4bc8: $dc $10 $69
    nop                                           ; $4bcb: $00
    ld l, d                                       ; $4bcc: $6a

jr_08f_4bcd:
    nop                                           ; $4bcd: $00
    ld l, e                                       ; $4bce: $6b
    nop                                           ; $4bcf: $00
    nop                                           ; $4bd0: $00
    ld [hl], l                                    ; $4bd1: $75
    nop                                           ; $4bd2: $00
    halt                                          ; $4bd3: $76
    nop                                           ; $4bd4: $00
    ld [hl], a                                    ; $4bd5: $77
    nop                                           ; $4bd6: $00
    ld a, b                                       ; $4bd7: $78
    nop                                           ; $4bd8: $00
    ld b, b                                       ; $4bd9: $40
    ld a, e                                       ; $4bda: $7b
    call c, Call_08f_7c10                         ; $4bdb: $dc $10 $7c
    nop                                           ; $4bde: $00
    ld a, l                                       ; $4bdf: $7d
    nop                                           ; $4be0: $00
    ld a, [hl]                                    ; $4be1: $7e
    nop                                           ; $4be2: $00
    nop                                           ; $4be3: $00
    add c                                         ; $4be4: $81
    nop                                           ; $4be5: $00
    add d                                         ; $4be6: $82
    nop                                           ; $4be7: $00
    add e                                         ; $4be8: $83
    nop                                           ; $4be9: $00
    add h                                         ; $4bea: $84
    nop                                           ; $4beb: $00
    ld b, l                                       ; $4bec: $45
    add l                                         ; $4bed: $85
    call c, $7f00                                 ; $4bee: $dc $00 $7f
    nop                                           ; $4bf1: $00
    add b                                         ; $4bf2: $80
    ld [bc], a                                    ; $4bf3: $02
    ld d, b                                       ; $4bf4: $50
    add [hl]                                      ; $4bf5: $86
    ld d, h                                       ; $4bf6: $54
    ld bc, $005e                                  ; $4bf7: $01 $5e $00
    nop                                           ; $4bfa: $00
    nop                                           ; $4bfb: $00
    nop                                           ; $4bfc: $00
    ld bc, $0200                                  ; $4bfd: $01 $00 $02
    nop                                           ; $4c00: $00
    inc bc                                        ; $4c01: $03
    nop                                           ; $4c02: $00
    nop                                           ; $4c03: $00
    stop                                          ; $4c04: $10 $00
    ld de, $1200                                  ; $4c06: $11 $00 $12
    nop                                           ; $4c09: $00
    inc de                                        ; $4c0a: $13
    nop                                           ; $4c0b: $00
    nop                                           ; $4c0c: $00
    inc b                                         ; $4c0d: $04
    nop                                           ; $4c0e: $00
    dec b                                         ; $4c0f: $05
    nop                                           ; $4c10: $00
    ld b, $00                                     ; $4c11: $06 $00
    rlca                                          ; $4c13: $07
    nop                                           ; $4c14: $00
    nop                                           ; $4c15: $00
    inc d                                         ; $4c16: $14
    nop                                           ; $4c17: $00
    dec d                                         ; $4c18: $15
    nop                                           ; $4c19: $00
    ld d, $00                                     ; $4c1a: $16 $00
    rla                                           ; $4c1c: $17
    nop                                           ; $4c1d: $00
    nop                                           ; $4c1e: $00
    ld [$0900], sp                                ; $4c1f: $08 $00 $09
    nop                                           ; $4c22: $00
    ld a, [bc]                                    ; $4c23: $0a
    nop                                           ; $4c24: $00
    dec bc                                        ; $4c25: $0b
    nop                                           ; $4c26: $00
    nop                                           ; $4c27: $00
    jr jr_08f_4c2a                                ; $4c28: $18 $00

jr_08f_4c2a:
    add hl, de                                    ; $4c2a: $19
    nop                                           ; $4c2b: $00
    ld a, [de]                                    ; $4c2c: $1a
    nop                                           ; $4c2d: $00
    dec de                                        ; $4c2e: $1b
    nop                                           ; $4c2f: $00
    nop                                           ; $4c30: $00
    inc c                                         ; $4c31: $0c
    nop                                           ; $4c32: $00
    dec c                                         ; $4c33: $0d
    nop                                           ; $4c34: $00
    ld c, $00                                     ; $4c35: $0e $00
    rrca                                          ; $4c37: $0f
    nop                                           ; $4c38: $00
    nop                                           ; $4c39: $00
    inc e                                         ; $4c3a: $1c
    nop                                           ; $4c3b: $00
    dec e                                         ; $4c3c: $1d
    nop                                           ; $4c3d: $00
    ld e, $00                                     ; $4c3e: $1e $00
    rra                                           ; $4c40: $1f
    nop                                           ; $4c41: $00
    nop                                           ; $4c42: $00
    jr nz, jr_08f_4c45                            ; $4c43: $20 $00

jr_08f_4c45:
    ld hl, $2200                                  ; $4c45: $21 $00 $22
    nop                                           ; $4c48: $00
    inc hl                                        ; $4c49: $23
    nop                                           ; $4c4a: $00
    inc b                                         ; $4c4b: $04
    jr z, jr_08f_4c4e                             ; $4c4c: $28 $00

jr_08f_4c4e:
    add hl, hl                                    ; $4c4e: $29
    nop                                           ; $4c4f: $00
    ld a, [hl+]                                   ; $4c50: $2a
    ld b, b                                       ; $4c51: $40
    nop                                           ; $4c52: $00
    inc h                                         ; $4c53: $24
    nop                                           ; $4c54: $00
    nop                                           ; $4c55: $00
    dec h                                         ; $4c56: $25
    nop                                           ; $4c57: $00
    ld h, $00                                     ; $4c58: $26 $00
    daa                                           ; $4c5a: $27
    nop                                           ; $4c5b: $00
    dec hl                                        ; $4c5c: $2b
    nop                                           ; $4c5d: $00
    nop                                           ; $4c5e: $00
    inc l                                         ; $4c5f: $2c
    nop                                           ; $4c60: $00
    dec l                                         ; $4c61: $2d
    nop                                           ; $4c62: $00
    ld l, $00                                     ; $4c63: $2e $00
    add e                                         ; $4c65: $83
    nop                                           ; $4c66: $00
    nop                                           ; $4c67: $00
    nop                                           ; $4c68: $00
    nop                                           ; $4c69: $00
    ld bc, $0200                                  ; $4c6a: $01 $00 $02
    nop                                           ; $4c6d: $00
    inc bc                                        ; $4c6e: $03
    nop                                           ; $4c6f: $00
    nop                                           ; $4c70: $00
    rrca                                          ; $4c71: $0f
    nop                                           ; $4c72: $00
    stop                                          ; $4c73: $10 $00
    ld de, $1200                                  ; $4c75: $11 $00 $12
    nop                                           ; $4c78: $00
    nop                                           ; $4c79: $00
    nop                                           ; $4c7a: $00
    nop                                           ; $4c7b: $00
    inc b                                         ; $4c7c: $04
    nop                                           ; $4c7d: $00
    dec b                                         ; $4c7e: $05
    nop                                           ; $4c7f: $00
    ld b, $00                                     ; $4c80: $06 $00
    nop                                           ; $4c82: $00
    inc de                                        ; $4c83: $13
    nop                                           ; $4c84: $00
    inc d                                         ; $4c85: $14
    nop                                           ; $4c86: $00
    dec d                                         ; $4c87: $15
    nop                                           ; $4c88: $00
    ld d, $00                                     ; $4c89: $16 $00
    nop                                           ; $4c8b: $00
    rlca                                          ; $4c8c: $07
    nop                                           ; $4c8d: $00
    ld [$0900], sp                                ; $4c8e: $08 $00 $09
    nop                                           ; $4c91: $00
    ld a, [bc]                                    ; $4c92: $0a
    nop                                           ; $4c93: $00
    nop                                           ; $4c94: $00
    rla                                           ; $4c95: $17
    nop                                           ; $4c96: $00
    jr jr_08f_4c99                                ; $4c97: $18 $00

jr_08f_4c99:
    add hl, de                                    ; $4c99: $19
    nop                                           ; $4c9a: $00
    ld a, [de]                                    ; $4c9b: $1a
    nop                                           ; $4c9c: $00
    nop                                           ; $4c9d: $00
    dec bc                                        ; $4c9e: $0b
    nop                                           ; $4c9f: $00
    inc c                                         ; $4ca0: $0c
    nop                                           ; $4ca1: $00
    dec c                                         ; $4ca2: $0d
    nop                                           ; $4ca3: $00
    ld c, $00                                     ; $4ca4: $0e $00
    nop                                           ; $4ca6: $00
    dec de                                        ; $4ca7: $1b
    nop                                           ; $4ca8: $00
    inc e                                         ; $4ca9: $1c
    nop                                           ; $4caa: $00
    dec e                                         ; $4cab: $1d
    nop                                           ; $4cac: $00
    ld e, $00                                     ; $4cad: $1e $00
    nop                                           ; $4caf: $00
    rra                                           ; $4cb0: $1f
    nop                                           ; $4cb1: $00
    jr nz, jr_08f_4cb4                            ; $4cb2: $20 $00

jr_08f_4cb4:
    ld hl, $2200                                  ; $4cb4: $21 $00 $22
    nop                                           ; $4cb7: $00
    ld bc, $002c                                  ; $4cb8: $01 $2c $00
    dec l                                         ; $4cbb: $2d
    nop                                           ; $4cbc: $00
    ld l, $00                                     ; $4cbd: $2e $00
    cpl                                           ; $4cbf: $2f
    ld b, b                                       ; $4cc0: $40
    nop                                           ; $4cc1: $00
    nop                                           ; $4cc2: $00
    inc hl                                        ; $4cc3: $23
    nop                                           ; $4cc4: $00
    inc h                                         ; $4cc5: $24
    nop                                           ; $4cc6: $00
    dec h                                         ; $4cc7: $25
    nop                                           ; $4cc8: $00
    jr nc, jr_08f_4ccb                            ; $4cc9: $30 $00

jr_08f_4ccb:
    inc b                                         ; $4ccb: $04
    ld sp, $3200                                  ; $4ccc: $31 $00 $32
    nop                                           ; $4ccf: $00
    inc sp                                        ; $4cd0: $33
    ld d, b                                       ; $4cd1: $50
    nop                                           ; $4cd2: $00
    ld h, $00                                     ; $4cd3: $26 $00
    inc d                                         ; $4cd5: $14
    daa                                           ; $4cd6: $27
    nop                                           ; $4cd7: $00
    jr z, jr_08f_4cdc                             ; $4cd8: $28 $02

    jr nz, jr_08f_4d10                            ; $4cda: $20 $34

jr_08f_4cdc:
    ld h, b                                       ; $4cdc: $60
    nop                                           ; $4cdd: $00
    add hl, hl                                    ; $4cde: $29
    nop                                           ; $4cdf: $00
    nop                                           ; $4ce0: $00
    ld a, [hl+]                                   ; $4ce1: $2a
    nop                                           ; $4ce2: $00
    dec hl                                        ; $4ce3: $2b
    nop                                           ; $4ce4: $00
    dec [hl]                                      ; $4ce5: $35
    nop                                           ; $4ce6: $00
    ld [hl], $00                                  ; $4ce7: $36 $00
    db $10                                        ; $4ce9: $10
    scf                                           ; $4cea: $37
    nop                                           ; $4ceb: $00
    jr c, @+$72                                   ; $4cec: $38 $70

    nop                                           ; $4cee: $00
    add hl, sp                                    ; $4cef: $39
    nop                                           ; $4cf0: $00
    ld a, [hl-]                                   ; $4cf1: $3a
    nop                                           ; $4cf2: $00
    nop                                           ; $4cf3: $00
    dec sp                                        ; $4cf4: $3b
    nop                                           ; $4cf5: $00
    inc a                                         ; $4cf6: $3c
    nop                                           ; $4cf7: $00
    dec a                                         ; $4cf8: $3d
    nop                                           ; $4cf9: $00
    ld a, $00                                     ; $4cfa: $3e $00
    ld h, b                                       ; $4cfc: $60
    ccf                                           ; $4cfd: $3f
    add b                                         ; $4cfe: $80
    nop                                           ; $4cff: $00
    inc bc                                        ; $4d00: $03
    ld e, b                                       ; $4d01: $58
    ld e, [hl]                                    ; $4d02: $5e
    nop                                           ; $4d03: $00
    nop                                           ; $4d04: $00
    nop                                           ; $4d05: $00
    nop                                           ; $4d06: $00
    ld bc, $0200                                  ; $4d07: $01 $00 $02
    nop                                           ; $4d0a: $00
    inc bc                                        ; $4d0b: $03
    nop                                           ; $4d0c: $00
    nop                                           ; $4d0d: $00
    dec c                                         ; $4d0e: $0d
    nop                                           ; $4d0f: $00

Jump_08f_4d10:
jr_08f_4d10:
    ld c, $00                                     ; $4d10: $0e $00
    rrca                                          ; $4d12: $0f
    nop                                           ; $4d13: $00
    stop                                          ; $4d14: $10 $00
    nop                                           ; $4d16: $00
    dec e                                         ; $4d17: $1d
    nop                                           ; $4d18: $00
    nop                                           ; $4d19: $00
    nop                                           ; $4d1a: $00
    inc b                                         ; $4d1b: $04
    nop                                           ; $4d1c: $00
    dec b                                         ; $4d1d: $05
    nop                                           ; $4d1e: $00
    nop                                           ; $4d1f: $00
    ld b, $00                                     ; $4d20: $06 $00
    ld de, $1200                                  ; $4d22: $11 $00 $12
    nop                                           ; $4d25: $00
    inc de                                        ; $4d26: $13
    nop                                           ; $4d27: $00
    ld b, b                                       ; $4d28: $40
    inc d                                         ; $4d29: $14
    ld [de], a                                    ; $4d2a: $12
    db $10                                        ; $4d2b: $10
    rlca                                          ; $4d2c: $07
    nop                                           ; $4d2d: $00
    ld [$0900], sp                                ; $4d2e: $08 $00 $09
    nop                                           ; $4d31: $00
    ld bc, $0015                                  ; $4d32: $01 $15 $00
    ld d, $00                                     ; $4d35: $16 $00
    rla                                           ; $4d37: $17
    nop                                           ; $4d38: $00
    jr jr_08f_4d5f                                ; $4d39: $18 $24

    stop                                          ; $4d3b: $10 $00
    ld a, [bc]                                    ; $4d3d: $0a
    nop                                           ; $4d3e: $00
    dec bc                                        ; $4d3f: $0b
    nop                                           ; $4d40: $00
    inc c                                         ; $4d41: $0c
    nop                                           ; $4d42: $00
    add hl, de                                    ; $4d43: $19
    nop                                           ; $4d44: $00
    inc b                                         ; $4d45: $04
    ld a, [de]                                    ; $4d46: $1a
    nop                                           ; $4d47: $00
    dec de                                        ; $4d48: $1b
    nop                                           ; $4d49: $00
    inc e                                         ; $4d4a: $1c
    ld [hl], $00                                  ; $4d4b: $36 $00
    ld e, $00                                     ; $4d4d: $1e $00

jr_08f_4d4f:
    nop                                           ; $4d4f: $00
    rra                                           ; $4d50: $1f
    nop                                           ; $4d51: $00
    jr nz, jr_08f_4d54                            ; $4d52: $20 $00

jr_08f_4d54:
    ld hl, $2300                                  ; $4d54: $21 $00 $23
    nop                                           ; $4d57: $00
    dec b                                         ; $4d58: $05
    inc h                                         ; $4d59: $24
    nop                                           ; $4d5a: $00
    dec h                                         ; $4d5b: $25
    nop                                           ; $4d5c: $00
    ld h, $48                                     ; $4d5d: $26 $48

jr_08f_4d5f:
    nop                                           ; $4d5f: $00
    ld [hl+], a                                   ; $4d60: $22
    ld [bc], a                                    ; $4d61: $02
    jr nc, jr_08f_4d65                            ; $4d62: $30 $01

    daa                                           ; $4d64: $27

jr_08f_4d65:
    nop                                           ; $4d65: $00
    jr z, jr_08f_4d68                             ; $4d66: $28 $00

jr_08f_4d68:
    add hl, hl                                    ; $4d68: $29
    nop                                           ; $4d69: $00
    inc l                                         ; $4d6a: $2c
    ld [de], a                                    ; $4d6b: $12
    ld b, b                                       ; $4d6c: $40
    inc b                                         ; $4d6d: $04
    ld [hl+], a                                   ; $4d6e: $22
    nop                                           ; $4d6f: $00
    ld a, [hl+]                                   ; $4d70: $2a
    nop                                           ; $4d71: $00
    dec hl                                        ; $4d72: $2b
    ld [hl+], a                                   ; $4d73: $22
    nop                                           ; $4d74: $00
    sub e                                         ; $4d75: $93
    nop                                           ; $4d76: $00
    nop                                           ; $4d77: $00
    nop                                           ; $4d78: $00
    nop                                           ; $4d79: $00
    ld bc, $0200                                  ; $4d7a: $01 $00 $02

jr_08f_4d7d:
    nop                                           ; $4d7d: $00
    inc bc                                        ; $4d7e: $03
    nop                                           ; $4d7f: $00
    nop                                           ; $4d80: $00
    stop                                          ; $4d81: $10 $00
    ld de, $1200                                  ; $4d83: $11 $00 $12
    nop                                           ; $4d86: $00
    inc de                                        ; $4d87: $13
    nop                                           ; $4d88: $00
    ld b, b                                       ; $4d89: $40
    dec e                                         ; $4d8a: $1d
    ld [bc], a                                    ; $4d8b: $02
    db $10                                        ; $4d8c: $10
    inc b                                         ; $4d8d: $04
    nop                                           ; $4d8e: $00
    dec b                                         ; $4d8f: $05
    nop                                           ; $4d90: $00
    ld b, $00                                     ; $4d91: $06 $00
    ld bc, $0007                                  ; $4d93: $01 $07 $00
    inc d                                         ; $4d96: $14
    nop                                           ; $4d97: $00
    dec d                                         ; $4d98: $15
    nop                                           ; $4d99: $00
    ld d, $16                                     ; $4d9a: $16 $16
    jr nc, jr_08f_4d9e                            ; $4d9c: $30 $00

jr_08f_4d9e:
    ld [$0900], sp                                ; $4d9e: $08 $00 $09
    nop                                           ; $4da1: $00
    ld a, [bc]                                    ; $4da2: $0a
    nop                                           ; $4da3: $00
    dec bc                                        ; $4da4: $0b
    nop                                           ; $4da5: $00
    inc b                                         ; $4da6: $04
    rla                                           ; $4da7: $17
    nop                                           ; $4da8: $00
    jr jr_08f_4dab                                ; $4da9: $18 $00

jr_08f_4dab:
    add hl, de                                    ; $4dab: $19
    inc l                                         ; $4dac: $2c
    jr nc, @+$0e                                  ; $4dad: $30 $0c

    nop                                           ; $4daf: $00
    nop                                           ; $4db0: $00
    dec c                                         ; $4db1: $0d
    nop                                           ; $4db2: $00
    ld c, $00                                     ; $4db3: $0e $00
    rrca                                          ; $4db5: $0f
    nop                                           ; $4db6: $00
    ld a, [de]                                    ; $4db7: $1a
    nop                                           ; $4db8: $00
    ld de, $001b                                  ; $4db9: $11 $1b $00
    inc e                                         ; $4dbc: $1c
    ld b, d                                       ; $4dbd: $42
    jr nc, jr_08f_4dde                            ; $4dbe: $30 $1e

    nop                                           ; $4dc0: $00
    rra                                           ; $4dc1: $1f
    ld [bc], a                                    ; $4dc2: $02
    nop                                           ; $4dc3: $00
    ld bc, $0020                                  ; $4dc4: $01 $20 $00
    inc h                                         ; $4dc7: $24
    nop                                           ; $4dc8: $00
    dec h                                         ; $4dc9: $25
    nop                                           ; $4dca: $00
    ld h, $58                                     ; $4dcb: $26 $58
    jr nc, jr_08f_4d4f                            ; $4dcd: $30 $80

    ld e, [hl]                                    ; $4dcf: $5e
    jr jr_08f_4df3                                ; $4dd0: $18 $21

    nop                                           ; $4dd2: $00
    daa                                           ; $4dd3: $27
    nop                                           ; $4dd4: $00
    jr z, jr_08f_4dd7                             ; $4dd5: $28 $00

jr_08f_4dd7:
    add hl, hl                                    ; $4dd7: $29
    nop                                           ; $4dd8: $00
    nop                                           ; $4dd9: $00
    ld a, [hl+]                                   ; $4dda: $2a
    nop                                           ; $4ddb: $00
    inc sp                                        ; $4ddc: $33
    nop                                           ; $4ddd: $00

jr_08f_4dde:
    inc [hl]                                      ; $4dde: $34
    nop                                           ; $4ddf: $00
    dec [hl]                                      ; $4de0: $35
    add b                                         ; $4de1: $80
    ld d, $30                                     ; $4de2: $16 $30
    dec hl                                        ; $4de4: $2b
    nop                                           ; $4de5: $00
    inc l                                         ; $4de6: $2c
    nop                                           ; $4de7: $00
    dec l                                         ; $4de8: $2d
    nop                                           ; $4de9: $00
    ld l, $02                                     ; $4dea: $2e $02
    nop                                           ; $4dec: $00
    ld [hl], $00                                  ; $4ded: $36 $00
    scf                                           ; $4def: $37
    nop                                           ; $4df0: $00
    jr c, jr_08f_4d7d                             ; $4df1: $38 $8a

jr_08f_4df3:
    db $10                                        ; $4df3: $10
    ld [hl+], a                                   ; $4df4: $22
    nop                                           ; $4df5: $00
    nop                                           ; $4df6: $00
    inc hl                                        ; $4df7: $23
    nop                                           ; $4df8: $00
    cpl                                           ; $4df9: $2f
    nop                                           ; $4dfa: $00
    jr nc, jr_08f_4dfd                            ; $4dfb: $30 $00

jr_08f_4dfd:
    ld sp, $0000                                  ; $4dfd: $31 $00 $00
    ld [hl-], a                                   ; $4e00: $32
    nop                                           ; $4e01: $00
    add hl, sp                                    ; $4e02: $39
    nop                                           ; $4e03: $00
    ld a, [hl-]                                   ; $4e04: $3a
    nop                                           ; $4e05: $00
    dec sp                                        ; $4e06: $3b
    add b                                         ; $4e07: $80

Jump_08f_4e08:
    and b                                         ; $4e08: $a0
    db $10                                        ; $4e09: $10
    inc a                                         ; $4e0a: $3c
    nop                                           ; $4e0b: $00
    dec a                                         ; $4e0c: $3d
    nop                                           ; $4e0d: $00
    ld a, $00                                     ; $4e0e: $3e $00
    ccf                                           ; $4e10: $3f
    nop                                           ; $4e11: $00
    nop                                           ; $4e12: $00
    ld b, b                                       ; $4e13: $40
    nop                                           ; $4e14: $00
    ld b, c                                       ; $4e15: $41
    nop                                           ; $4e16: $00
    ld b, e                                       ; $4e17: $43
    nop                                           ; $4e18: $00
    ld b, h                                       ; $4e19: $44
    jr nz, jr_08f_4e1c                            ; $4e1a: $20 $00

jr_08f_4e1c:
    ld b, l                                       ; $4e1c: $45
    ld e, [hl]                                    ; $4e1d: $5e
    ld d, b                                       ; $4e1e: $50
    dec e                                         ; $4e1f: $1d
    nop                                           ; $4e20: $00
    ld b, d                                       ; $4e21: $42
    nop                                           ; $4e22: $00
    ld b, [hl]                                    ; $4e23: $46
    jr nz, jr_08f_4e26                            ; $4e24: $20 $00

jr_08f_4e26:
    ld b, a                                       ; $4e26: $47
    jp z, $a800                                   ; $4e27: $ca $00 $a8

    nop                                           ; $4e2a: $00
    nop                                           ; $4e2b: $00
    nop                                           ; $4e2c: $00
    nop                                           ; $4e2d: $00
    ld bc, $0200                                  ; $4e2e: $01 $00 $02
    nop                                           ; $4e31: $00
    inc bc                                        ; $4e32: $03
    nop                                           ; $4e33: $00
    nop                                           ; $4e34: $00
    dec c                                         ; $4e35: $0d
    nop                                           ; $4e36: $00
    ld c, $00                                     ; $4e37: $0e $00
    rrca                                          ; $4e39: $0f
    nop                                           ; $4e3a: $00
    stop                                          ; $4e3b: $10 $00
    ld b, b                                       ; $4e3d: $40
    ld a, [de]                                    ; $4e3e: $1a
    ld [bc], a                                    ; $4e3f: $02
    stop                                          ; $4e40: $10 $00
    nop                                           ; $4e42: $00
    inc b                                         ; $4e43: $04
    nop                                           ; $4e44: $00
    dec b                                         ; $4e45: $05
    nop                                           ; $4e46: $00
    ld bc, $0006                                  ; $4e47: $01 $06 $00
    ld de, $1200                                  ; $4e4a: $11 $00 $12
    nop                                           ; $4e4d: $00
    inc de                                        ; $4e4e: $13
    ld d, $40                                     ; $4e4f: $16 $40
    nop                                           ; $4e51: $00
    rlca                                          ; $4e52: $07
    nop                                           ; $4e53: $00
    ld [$0900], sp                                ; $4e54: $08 $00 $09
    nop                                           ; $4e57: $00
    inc d                                         ; $4e58: $14
    nop                                           ; $4e59: $00
    db $10                                        ; $4e5a: $10
    dec d                                         ; $4e5b: $15
    nop                                           ; $4e5c: $00
    ld d, $2c                                     ; $4e5d: $16 $2c
    ld b, b                                       ; $4e5f: $40
    ld a, [bc]                                    ; $4e60: $0a
    nop                                           ; $4e61: $00
    dec bc                                        ; $4e62: $0b
    nop                                           ; $4e63: $00
    ld bc, $000c                                  ; $4e64: $01 $0c $00
    rla                                           ; $4e67: $17
    nop                                           ; $4e68: $00
    jr jr_08f_4e6b                                ; $4e69: $18 $00

jr_08f_4e6b:
    add hl, de                                    ; $4e6b: $19
    ld b, d                                       ; $4e6c: $42
    ld b, b                                       ; $4e6d: $40
    nop                                           ; $4e6e: $00
    dec de                                        ; $4e6f: $1b
    nop                                           ; $4e70: $00
    inc e                                         ; $4e71: $1c
    nop                                           ; $4e72: $00
    dec e                                         ; $4e73: $1d
    nop                                           ; $4e74: $00
    daa                                           ; $4e75: $27
    nop                                           ; $4e76: $00
    ld bc, $0028                                  ; $4e77: $01 $28 $00
    add hl, hl                                    ; $4e7a: $29
    nop                                           ; $4e7b: $00
    ld a, [hl+]                                   ; $4e7c: $2a
    nop                                           ; $4e7d: $00
    scf                                           ; $4e7e: $37
    ld e, b                                       ; $4e7f: $58
    jr nz, jr_08f_4e82                            ; $4e80: $20 $00

jr_08f_4e82:
    ld e, $00                                     ; $4e82: $1e $00
    rra                                           ; $4e84: $1f
    nop                                           ; $4e85: $00
    jr nz, jr_08f_4e88                            ; $4e86: $20 $00

jr_08f_4e88:
    dec hl                                        ; $4e88: $2b
    nop                                           ; $4e89: $00
    nop                                           ; $4e8a: $00
    inc l                                         ; $4e8b: $2c
    nop                                           ; $4e8c: $00
    dec l                                         ; $4e8d: $2d
    nop                                           ; $4e8e: $00
    ld l, $00                                     ; $4e8f: $2e $00
    jr c, jr_08f_4e93                             ; $4e91: $38 $00

jr_08f_4e93:
    ld b, b                                       ; $4e93: $40
    add hl, sp                                    ; $4e94: $39
    ld l, [hl]                                    ; $4e95: $6e
    db $10                                        ; $4e96: $10
    ld hl, $2200                                  ; $4e97: $21 $00 $22
    nop                                           ; $4e9a: $00
    inc hl                                        ; $4e9b: $23
    nop                                           ; $4e9c: $00
    nop                                           ; $4e9d: $00
    cpl                                           ; $4e9e: $2f
    nop                                           ; $4e9f: $00
    jr nc, jr_08f_4ea2                            ; $4ea0: $30 $00

jr_08f_4ea2:
    ld sp, $3200                                  ; $4ea2: $31 $00 $32
    nop                                           ; $4ea5: $00
    db $10                                        ; $4ea6: $10
    ld a, [hl-]                                   ; $4ea7: $3a
    nop                                           ; $4ea8: $00
    dec sp                                        ; $4ea9: $3b
    add h                                         ; $4eaa: $84
    db $10                                        ; $4eab: $10
    inc h                                         ; $4eac: $24
    nop                                           ; $4ead: $00
    dec h                                         ; $4eae: $25
    nop                                           ; $4eaf: $00
    nop                                           ; $4eb0: $00
    ld h, $00                                     ; $4eb1: $26 $00
    inc sp                                        ; $4eb3: $33
    nop                                           ; $4eb4: $00
    inc [hl]                                      ; $4eb5: $34
    nop                                           ; $4eb6: $00
    dec [hl]                                      ; $4eb7: $35
    nop                                           ; $4eb8: $00
    ld bc, $0036                                  ; $4eb9: $01 $36 $00
    inc a                                         ; $4ebc: $3c
    nop                                           ; $4ebd: $00
    dec a                                         ; $4ebe: $3d
    nop                                           ; $4ebf: $00
    ld a, $9a                                     ; $4ec0: $3e $9a
    nop                                           ; $4ec2: $00
    nop                                           ; $4ec3: $00
    ccf                                           ; $4ec4: $3f
    nop                                           ; $4ec5: $00
    ld b, b                                       ; $4ec6: $40
    nop                                           ; $4ec7: $00
    ld b, c                                       ; $4ec8: $41
    nop                                           ; $4ec9: $00
    ld c, c                                       ; $4eca: $49
    nop                                           ; $4ecb: $00
    db $10                                        ; $4ecc: $10
    ld c, d                                       ; $4ecd: $4a
    nop                                           ; $4ece: $00
    ld c, e                                       ; $4ecf: $4b
    or b                                          ; $4ed0: $b0
    ld b, b                                       ; $4ed1: $40
    ld b, d                                       ; $4ed2: $42
    nop                                           ; $4ed3: $00
    ld b, e                                       ; $4ed4: $43
    nop                                           ; $4ed5: $00
    ld bc, $0044                                  ; $4ed6: $01 $44 $00
    ld c, h                                       ; $4ed9: $4c
    nop                                           ; $4eda: $00
    ld c, l                                       ; $4edb: $4d
    nop                                           ; $4edc: $00
    ld c, [hl]                                    ; $4edd: $4e
    add $30                                       ; $4ede: $c6 $30
    nop                                           ; $4ee0: $00
    ld b, l                                       ; $4ee1: $45
    nop                                           ; $4ee2: $00
    ld b, [hl]                                    ; $4ee3: $46
    nop                                           ; $4ee4: $00
    ld b, a                                       ; $4ee5: $47
    nop                                           ; $4ee6: $00
    ld c, b                                       ; $4ee7: $48
    nop                                           ; $4ee8: $00
    ld bc, $004f                                  ; $4ee9: $01 $4f $00
    ld d, b                                       ; $4eec: $50
    nop                                           ; $4eed: $00
    ld d, c                                       ; $4eee: $51
    nop                                           ; $4eef: $00
    ld d, d                                       ; $4ef0: $52
    call c, $9c20                                 ; $4ef1: $dc $20 $9c
    nop                                           ; $4ef4: $00
    nop                                           ; $4ef5: $00
    nop                                           ; $4ef6: $00
    nop                                           ; $4ef7: $00
    ld bc, $0200                                  ; $4ef8: $01 $00 $02
    nop                                           ; $4efb: $00
    inc bc                                        ; $4efc: $03
    nop                                           ; $4efd: $00
    nop                                           ; $4efe: $00
    stop                                          ; $4eff: $10 $00
    ld de, $1200                                  ; $4f01: $11 $00 $12
    nop                                           ; $4f04: $00
    inc de                                        ; $4f05: $13
    nop                                           ; $4f06: $00
    nop                                           ; $4f07: $00
    dec e                                         ; $4f08: $1d
    nop                                           ; $4f09: $00
    ld e, $00                                     ; $4f0a: $1e $00
    rra                                           ; $4f0c: $1f
    nop                                           ; $4f0d: $00
    jr nz, jr_08f_4f10                            ; $4f0e: $20 $00

jr_08f_4f10:
    nop                                           ; $4f10: $00
    dec hl                                        ; $4f11: $2b
    nop                                           ; $4f12: $00
    inc l                                         ; $4f13: $2c
    nop                                           ; $4f14: $00
    dec l                                         ; $4f15: $2d
    nop                                           ; $4f16: $00
    ld l, $00                                     ; $4f17: $2e $00
    nop                                           ; $4f19: $00
    inc b                                         ; $4f1a: $04
    nop                                           ; $4f1b: $00
    dec b                                         ; $4f1c: $05
    nop                                           ; $4f1d: $00
    ld b, $00                                     ; $4f1e: $06 $00
    rlca                                          ; $4f20: $07
    nop                                           ; $4f21: $00
    nop                                           ; $4f22: $00
    inc d                                         ; $4f23: $14
    nop                                           ; $4f24: $00
    dec d                                         ; $4f25: $15
    nop                                           ; $4f26: $00
    ld d, $00                                     ; $4f27: $16 $00
    rla                                           ; $4f29: $17
    nop                                           ; $4f2a: $00
    nop                                           ; $4f2b: $00
    ld hl, $2200                                  ; $4f2c: $21 $00 $22
    nop                                           ; $4f2f: $00
    inc hl                                        ; $4f30: $23
    nop                                           ; $4f31: $00
    inc h                                         ; $4f32: $24
    nop                                           ; $4f33: $00
    nop                                           ; $4f34: $00
    cpl                                           ; $4f35: $2f
    nop                                           ; $4f36: $00
    jr nc, jr_08f_4f39                            ; $4f37: $30 $00

jr_08f_4f39:
    ld sp, $3200                                  ; $4f39: $31 $00 $32
    nop                                           ; $4f3c: $00
    ld bc, $0008                                  ; $4f3d: $01 $08 $00
    add hl, bc                                    ; $4f40: $09
    nop                                           ; $4f41: $00
    ld a, [bc]                                    ; $4f42: $0a
    nop                                           ; $4f43: $00
    dec bc                                        ; $4f44: $0b
    inc b                                         ; $4f45: $04
    nop                                           ; $4f46: $00
    ld b, h                                       ; $4f47: $44
    jr jr_08f_4f52                                ; $4f48: $18 $08

    jr nz, jr_08f_4f71                            ; $4f4a: $20 $25

    nop                                           ; $4f4c: $00
    ld h, $10                                     ; $4f4d: $26 $10
    db $10                                        ; $4f4f: $10
    dec bc                                        ; $4f50: $0b
    nop                                           ; $4f51: $00

jr_08f_4f52:
    nop                                           ; $4f52: $00
    inc sp                                        ; $4f53: $33
    nop                                           ; $4f54: $00
    inc [hl]                                      ; $4f55: $34
    nop                                           ; $4f56: $00
    inc c                                         ; $4f57: $0c
    nop                                           ; $4f58: $00
    dec c                                         ; $4f59: $0d
    nop                                           ; $4f5a: $00
    nop                                           ; $4f5b: $00
    ld c, $00                                     ; $4f5c: $0e $00
    rrca                                          ; $4f5e: $0f
    nop                                           ; $4f5f: $00
    add hl, de                                    ; $4f60: $19
    nop                                           ; $4f61: $00
    ld a, [de]                                    ; $4f62: $1a
    nop                                           ; $4f63: $00
    nop                                           ; $4f64: $00
    dec de                                        ; $4f65: $1b
    nop                                           ; $4f66: $00
    inc e                                         ; $4f67: $1c
    nop                                           ; $4f68: $00
    daa                                           ; $4f69: $27
    nop                                           ; $4f6a: $00
    jr z, jr_08f_4f6d                             ; $4f6b: $28 $00

jr_08f_4f6d:
    nop                                           ; $4f6d: $00
    add hl, hl                                    ; $4f6e: $29
    nop                                           ; $4f6f: $00
    ld a, [hl+]                                   ; $4f70: $2a

jr_08f_4f71:
    nop                                           ; $4f71: $00
    dec [hl]                                      ; $4f72: $35
    nop                                           ; $4f73: $00
    ld [hl], $00                                  ; $4f74: $36 $00
    nop                                           ; $4f76: $00
    scf                                           ; $4f77: $37
    nop                                           ; $4f78: $00
    jr c, jr_08f_4f7b                             ; $4f79: $38 $00

jr_08f_4f7b:
    add hl, sp                                    ; $4f7b: $39
    nop                                           ; $4f7c: $00
    ld a, [hl-]                                   ; $4f7d: $3a
    nop                                           ; $4f7e: $00
    nop                                           ; $4f7f: $00
    dec sp                                        ; $4f80: $3b
    nop                                           ; $4f81: $00
    inc a                                         ; $4f82: $3c
    nop                                           ; $4f83: $00
    ld b, b                                       ; $4f84: $40
    nop                                           ; $4f85: $00
    ld b, c                                       ; $4f86: $41
    nop                                           ; $4f87: $00
    nop                                           ; $4f88: $00
    ld b, d                                       ; $4f89: $42
    nop                                           ; $4f8a: $00
    ld b, e                                       ; $4f8b: $43
    nop                                           ; $4f8c: $00
    ld b, h                                       ; $4f8d: $44
    nop                                           ; $4f8e: $00
    ld b, l                                       ; $4f8f: $45
    nop                                           ; $4f90: $00
    nop                                           ; $4f91: $00
    ld b, [hl]                                    ; $4f92: $46
    nop                                           ; $4f93: $00
    ld b, a                                       ; $4f94: $47
    nop                                           ; $4f95: $00
    ld c, b                                       ; $4f96: $48
    nop                                           ; $4f97: $00
    ld c, c                                       ; $4f98: $49
    nop                                           ; $4f99: $00
    nop                                           ; $4f9a: $00
    ld c, d                                       ; $4f9b: $4a
    nop                                           ; $4f9c: $00
    ld c, e                                       ; $4f9d: $4b
    nop                                           ; $4f9e: $00
    dec a                                         ; $4f9f: $3d
    nop                                           ; $4fa0: $00
    ld a, $00                                     ; $4fa1: $3e $00
    ld b, b                                       ; $4fa3: $40
    ccf                                           ; $4fa4: $3f
    inc b                                         ; $4fa5: $04
    or b                                          ; $4fa6: $b0
    ld c, h                                       ; $4fa7: $4c
    nop                                           ; $4fa8: $00
    db $fc                                        ; $4fa9: $fc
    ld [bc], a                                    ; $4faa: $02
    ld h, b                                       ; $4fab: $60
    nop                                           ; $4fac: $00
    ld bc, $23f8                                  ; $4fad: $01 $f8 $23
    ld h, b                                       ; $4fb0: $60
    ld bc, $0400                                  ; $4fb1: $01 $00 $04
    nop                                           ; $4fb4: $00
    dec b                                         ; $4fb5: $05
    nop                                           ; $4fb6: $00
    nop                                           ; $4fb7: $00
    ld b, $00                                     ; $4fb8: $06 $00
    rlca                                          ; $4fba: $07
    nop                                           ; $4fbb: $00
    stop                                          ; $4fbc: $10 $00
    ld de, $0000                                  ; $4fbe: $11 $00 $00
    ld [de], a                                    ; $4fc1: $12
    nop                                           ; $4fc2: $00
    inc de                                        ; $4fc3: $13
    nop                                           ; $4fc4: $00
    dec de                                        ; $4fc5: $1b
    nop                                           ; $4fc6: $00
    inc e                                         ; $4fc7: $1c
    nop                                           ; $4fc8: $00
    nop                                           ; $4fc9: $00
    dec e                                         ; $4fca: $1d
    nop                                           ; $4fcb: $00
    ld e, $00                                     ; $4fcc: $1e $00
    dec h                                         ; $4fce: $25
    nop                                           ; $4fcf: $00
    ld h, $82                                     ; $4fd0: $26 $82
    inc c                                         ; $4fd2: $0c
    nop                                           ; $4fd3: $00
    daa                                           ; $4fd4: $27
    nop                                           ; $4fd5: $00
    cpl                                           ; $4fd6: $2f
    nop                                           ; $4fd7: $00
    jr nc, jr_08f_5031                            ; $4fd8: $30 $57

    jr nz, jr_08f_4fde                            ; $4fda: $20 $02

    nop                                           ; $4fdc: $00
    nop                                           ; $4fdd: $00

jr_08f_4fde:
    ld [$0900], sp                                ; $4fde: $08 $00 $09
    nop                                           ; $4fe1: $00
    ld a, [bc]                                    ; $4fe2: $0a
    nop                                           ; $4fe3: $00
    dec bc                                        ; $4fe4: $0b
    nop                                           ; $4fe5: $00
    nop                                           ; $4fe6: $00
    inc d                                         ; $4fe7: $14
    nop                                           ; $4fe8: $00
    dec d                                         ; $4fe9: $15
    nop                                           ; $4fea: $00
    ld d, $00                                     ; $4feb: $16 $00
    rla                                           ; $4fed: $17
    nop                                           ; $4fee: $00
    nop                                           ; $4fef: $00
    rra                                           ; $4ff0: $1f
    nop                                           ; $4ff1: $00
    jr nz, jr_08f_4ff4                            ; $4ff2: $20 $00

jr_08f_4ff4:
    ld hl, $2200                                  ; $4ff4: $21 $00 $22
    ld [$2800], sp                                ; $4ff7: $08 $00 $28
    nop                                           ; $4ffa: $00
    add hl, hl                                    ; $4ffb: $29
    inc c                                         ; $4ffc: $0c
    nop                                           ; $4ffd: $00
    ld a, [hl+]                                   ; $4ffe: $2a
    nop                                           ; $4fff: $00
    ld sp, $0020                                  ; $5000: $31 $20 $00
    ld [hl-], a                                   ; $5003: $32
    add e                                         ; $5004: $83
    jr nz, jr_08f_500a                            ; $5005: $20 $03

    nop                                           ; $5007: $00
    inc c                                         ; $5008: $0c
    nop                                           ; $5009: $00

jr_08f_500a:
    dec c                                         ; $500a: $0d
    nop                                           ; $500b: $00
    nop                                           ; $500c: $00
    ld c, $00                                     ; $500d: $0e $00
    rrca                                          ; $500f: $0f
    nop                                           ; $5010: $00
    jr jr_08f_5013                                ; $5011: $18 $00

jr_08f_5013:
    add hl, de                                    ; $5013: $19
    and b                                         ; $5014: $a0
    ld b, $00                                     ; $5015: $06 $00
    ld a, [de]                                    ; $5017: $1a
    inc c                                         ; $5018: $0c
    db $10                                        ; $5019: $10
    inc hl                                        ; $501a: $23
    nop                                           ; $501b: $00
    inc h                                         ; $501c: $24
    nop                                           ; $501d: $00
    dec hl                                        ; $501e: $2b
    nop                                           ; $501f: $00
    nop                                           ; $5020: $00
    inc l                                         ; $5021: $2c
    nop                                           ; $5022: $00
    dec l                                         ; $5023: $2d
    nop                                           ; $5024: $00
    ld l, $00                                     ; $5025: $2e $00
    inc sp                                        ; $5027: $33
    jr nz, jr_08f_502a                            ; $5028: $20 $00

jr_08f_502a:
    inc [hl]                                      ; $502a: $34
    xor a                                         ; $502b: $af
    jr nz, jr_08f_5063                            ; $502c: $20 $35

    nop                                           ; $502e: $00
    ld b, d                                       ; $502f: $42
    nop                                           ; $5030: $00

jr_08f_5031:
    ld b, e                                       ; $5031: $43
    nop                                           ; $5032: $00
    nop                                           ; $5033: $00
    ld b, h                                       ; $5034: $44
    nop                                           ; $5035: $00
    ld b, l                                       ; $5036: $45
    nop                                           ; $5037: $00
    ld d, d                                       ; $5038: $52
    nop                                           ; $5039: $00
    ld d, e                                       ; $503a: $53
    add b                                         ; $503b: $80
    inc b                                         ; $503c: $04
    ld b, b                                       ; $503d: $40
    ld e, l                                       ; $503e: $5d
    nop                                           ; $503f: $00
    ld l, d                                       ; $5040: $6a
    nop                                           ; $5041: $00
    ld l, e                                       ; $5042: $6b
    nop                                           ; $5043: $00
    ld l, h                                       ; $5044: $6c
    nop                                           ; $5045: $00
    nop                                           ; $5046: $00
    ld l, l                                       ; $5047: $6d
    nop                                           ; $5048: $00
    halt                                          ; $5049: $76
    nop                                           ; $504a: $00
    ld [hl], l                                    ; $504b: $75
    nop                                           ; $504c: $00
    ld [hl], $00                                  ; $504d: $36 $00
    nop                                           ; $504f: $00
    scf                                           ; $5050: $37
    nop                                           ; $5051: $00
    jr c, jr_08f_5054                             ; $5052: $38 $00

jr_08f_5054:
    add hl, sp                                    ; $5054: $39
    nop                                           ; $5055: $00
    ld b, [hl]                                    ; $5056: $46
    ld [bc], a                                    ; $5057: $02
    nop                                           ; $5058: $00
    ld b, a                                       ; $5059: $47
    nop                                           ; $505a: $00
    ld c, b                                       ; $505b: $48
    nop                                           ; $505c: $00
    ld c, c                                       ; $505d: $49
    db $eb                                        ; $505e: $eb
    nop                                           ; $505f: $00
    ld d, h                                       ; $5060: $54
    nop                                           ; $5061: $00
    nop                                           ; $5062: $00

jr_08f_5063:
    ld d, l                                       ; $5063: $55
    nop                                           ; $5064: $00
    ld d, [hl]                                    ; $5065: $56
    nop                                           ; $5066: $00
    ld e, [hl]                                    ; $5067: $5e
    nop                                           ; $5068: $00
    ld e, a                                       ; $5069: $5f
    nop                                           ; $506a: $00
    nop                                           ; $506b: $00
    ld h, b                                       ; $506c: $60
    nop                                           ; $506d: $00
    ld h, c                                       ; $506e: $61
    nop                                           ; $506f: $00
    ld l, [hl]                                    ; $5070: $6e
    nop                                           ; $5071: $00
    ld l, a                                       ; $5072: $6f
    add b                                         ; $5073: $80
    rst $38                                       ; $5074: $ff
    nop                                           ; $5075: $00
    ld [hl], b                                    ; $5076: $70
    nop                                           ; $5077: $00
    ld [hl], a                                    ; $5078: $77
    nop                                           ; $5079: $00
    ld a, b                                       ; $507a: $78
    nop                                           ; $507b: $00
    ld a, [hl-]                                   ; $507c: $3a
    nop                                           ; $507d: $00
    nop                                           ; $507e: $00
    dec sp                                        ; $507f: $3b
    nop                                           ; $5080: $00
    inc a                                         ; $5081: $3c
    nop                                           ; $5082: $00
    dec a                                         ; $5083: $3d
    nop                                           ; $5084: $00
    ld c, d                                       ; $5085: $4a
    ld [bc], a                                    ; $5086: $02
    nop                                           ; $5087: $00
    ld c, e                                       ; $5088: $4b
    nop                                           ; $5089: $00
    ld c, h                                       ; $508a: $4c
    nop                                           ; $508b: $00
    ld c, l                                       ; $508c: $4d
    rla                                           ; $508d: $17
    ld bc, $0057                                  ; $508e: $01 $57 $00
    nop                                           ; $5091: $00
    ld e, b                                       ; $5092: $58
    nop                                           ; $5093: $00
    ld e, c                                       ; $5094: $59
    nop                                           ; $5095: $00
    ld h, d                                       ; $5096: $62
    nop                                           ; $5097: $00
    ld h, e                                       ; $5098: $63
    nop                                           ; $5099: $00
    nop                                           ; $509a: $00
    ld h, h                                       ; $509b: $64
    nop                                           ; $509c: $00
    ld h, l                                       ; $509d: $65
    nop                                           ; $509e: $00
    ld [hl], c                                    ; $509f: $71
    nop                                           ; $50a0: $00
    ld [hl], d                                    ; $50a1: $72
    add b                                         ; $50a2: $80
    dec hl                                        ; $50a3: $2b
    ld bc, $0073                                  ; $50a4: $01 $73 $00
    ld a, c                                       ; $50a7: $79
    nop                                           ; $50a8: $00
    ld a, d                                       ; $50a9: $7a
    nop                                           ; $50aa: $00
    ld a, $00                                     ; $50ab: $3e $00
    nop                                           ; $50ad: $00
    ccf                                           ; $50ae: $3f
    nop                                           ; $50af: $00
    ld b, b                                       ; $50b0: $40
    nop                                           ; $50b1: $00
    ld b, c                                       ; $50b2: $41
    nop                                           ; $50b3: $00
    ld c, [hl]                                    ; $50b4: $4e
    ld [bc], a                                    ; $50b5: $02
    nop                                           ; $50b6: $00
    ld c, a                                       ; $50b7: $4f
    nop                                           ; $50b8: $00
    ld d, b                                       ; $50b9: $50
    nop                                           ; $50ba: $00
    ld d, c                                       ; $50bb: $51
    ld b, e                                       ; $50bc: $43
    ld bc, $005a                                  ; $50bd: $01 $5a $00
    nop                                           ; $50c0: $00
    ld e, e                                       ; $50c1: $5b
    nop                                           ; $50c2: $00
    ld e, h                                       ; $50c3: $5c
    nop                                           ; $50c4: $00
    ld h, [hl]                                    ; $50c5: $66
    nop                                           ; $50c6: $00
    ld h, a                                       ; $50c7: $67
    inc bc                                        ; $50c8: $03
    nop                                           ; $50c9: $00
    ld l, b                                       ; $50ca: $68
    nop                                           ; $50cb: $00
    ld l, c                                       ; $50cc: $69
    nop                                           ; $50cd: $00
    ld [hl], h                                    ; $50ce: $74
    ld a, h                                       ; $50cf: $7c
    nop                                           ; $50d0: $00
    ld e, b                                       ; $50d1: $58
    add hl, hl                                    ; $50d2: $29
    nop                                           ; $50d3: $00
    ld a, e                                       ; $50d4: $7b
    nop                                           ; $50d5: $00
    ld a, h                                       ; $50d6: $7c
    nop                                           ; $50d7: $00
    ld a, l                                       ; $50d8: $7d
    nop                                           ; $50d9: $00
    ld a, [hl]                                    ; $50da: $7e
    nop                                           ; $50db: $00
    inc b                                         ; $50dc: $04
    add d                                         ; $50dd: $82
    nop                                           ; $50de: $00
    add e                                         ; $50df: $83
    nop                                           ; $50e0: $00
    add h                                         ; $50e1: $84
    ret nz                                        ; $50e2: $c0

    db $10                                        ; $50e3: $10
    adc l                                         ; $50e4: $8d
    nop                                           ; $50e5: $00
    nop                                           ; $50e6: $00
    adc [hl]                                      ; $50e7: $8e
    nop                                           ; $50e8: $00
    adc a                                         ; $50e9: $8f
    nop                                           ; $50ea: $00
    sbc b                                         ; $50eb: $98
    nop                                           ; $50ec: $00
    sbc c                                         ; $50ed: $99
    nop                                           ; $50ee: $00
    ld b, $9a                                     ; $50ef: $06 $9a
    nop                                           ; $50f1: $00
    sbc e                                         ; $50f2: $9b
    nop                                           ; $50f3: $00
    xor b                                         ; $50f4: $a8
    ld a, h                                       ; $50f5: $7c
    nop                                           ; $50f6: $00
    add h                                         ; $50f7: $84
    add hl, hl                                    ; $50f8: $29
    ld [hl], e                                    ; $50f9: $73
    add b                                         ; $50fa: $80
    call z, Call_08f_7f10                         ; $50fb: $cc $10 $7f
    nop                                           ; $50fe: $00
    add l                                         ; $50ff: $85
    nop                                           ; $5100: $00
    add [hl]                                      ; $5101: $86
    nop                                           ; $5102: $00
    add a                                         ; $5103: $87
    jr nz, jr_08f_5106                            ; $5104: $20 $00

jr_08f_5106:
    adc b                                         ; $5106: $88
    xor h                                         ; $5107: $ac
    nop                                           ; $5108: $00
    ld e, a                                       ; $5109: $5f
    nop                                           ; $510a: $00
    sub b                                         ; $510b: $90
    nop                                           ; $510c: $00
    sub c                                         ; $510d: $91
    nop                                           ; $510e: $00
    nop                                           ; $510f: $00
    sbc h                                         ; $5110: $9c
    nop                                           ; $5111: $00
    sbc l                                         ; $5112: $9d
    nop                                           ; $5113: $00
    sbc [hl]                                      ; $5114: $9e
    nop                                           ; $5115: $00
    sbc a                                         ; $5116: $9f
    ld [$a900], sp                                ; $5117: $08 $00 $a9
    nop                                           ; $511a: $00
    xor d                                         ; $511b: $aa
    cp d                                          ; $511c: $ba
    nop                                           ; $511d: $00
    xor e                                         ; $511e: $ab
    nop                                           ; $511f: $00
    or e                                          ; $5120: $b3
    pop bc                                        ; $5121: $c1
    cp b                                          ; $5122: $b8
    db $10                                        ; $5123: $10
    cp d                                          ; $5124: $ba
    add hl, bc                                    ; $5125: $09
    add b                                         ; $5126: $80
    nop                                           ; $5127: $00
    adc c                                         ; $5128: $89
    nop                                           ; $5129: $00
    adc d                                         ; $512a: $8a
    xor h                                         ; $512b: $ac
    jr nz, jr_08f_512e                            ; $512c: $20 $00

jr_08f_512e:
    ld h, e                                       ; $512e: $63
    nop                                           ; $512f: $00
    sub d                                         ; $5130: $92
    nop                                           ; $5131: $00
    sub e                                         ; $5132: $93
    nop                                           ; $5133: $00
    and b                                         ; $5134: $a0
    nop                                           ; $5135: $00
    nop                                           ; $5136: $00
    and c                                         ; $5137: $a1
    nop                                           ; $5138: $00
    and d                                         ; $5139: $a2
    nop                                           ; $513a: $00
    and e                                         ; $513b: $a3
    nop                                           ; $513c: $00
    xor h                                         ; $513d: $ac
    nop                                           ; $513e: $00
    ld b, [hl]                                    ; $513f: $46
    xor l                                         ; $5140: $ad
    cp d                                          ; $5141: $ba
    nop                                           ; $5142: $00
    xor [hl]                                      ; $5143: $ae
    nop                                           ; $5144: $00
    or h                                          ; $5145: $b4
    cp b                                          ; $5146: $b8
    db $10                                        ; $5147: $10
    and $09                                       ; $5148: $e6 $09
    add c                                         ; $514a: $81
    ld [$8b00], sp                                ; $514b: $08 $00 $8b
    nop                                           ; $514e: $00
    adc h                                         ; $514f: $8c
    xor h                                         ; $5150: $ac
    db $10                                        ; $5151: $10
    sub h                                         ; $5152: $94
    nop                                           ; $5153: $00
    sub l                                         ; $5154: $95
    nop                                           ; $5155: $00
    nop                                           ; $5156: $00
    sub [hl]                                      ; $5157: $96
    nop                                           ; $5158: $00
    sub a                                         ; $5159: $97
    nop                                           ; $515a: $00
    and h                                         ; $515b: $a4
    nop                                           ; $515c: $00
    and l                                         ; $515d: $a5
    nop                                           ; $515e: $00
    nop                                           ; $515f: $00
    and [hl]                                      ; $5160: $a6
    nop                                           ; $5161: $00
    and a                                         ; $5162: $a7
    nop                                           ; $5163: $00
    xor a                                         ; $5164: $af
    nop                                           ; $5165: $00
    or b                                          ; $5166: $b0
    ld [bc], a                                    ; $5167: $02
    nop                                           ; $5168: $00
    or c                                          ; $5169: $b1
    nop                                           ; $516a: $00
    or d                                          ; $516b: $b2
    nop                                           ; $516c: $00
    or l                                          ; $516d: $b5
    inc [hl]                                      ; $516e: $34
    ld bc, $00b6                                  ; $516f: $01 $b6 $00
    nop                                           ; $5172: $00
    or a                                          ; $5173: $b7
    nop                                           ; $5174: $00
    cp b                                          ; $5175: $b8
    nop                                           ; $5176: $00
    cp c                                          ; $5177: $b9
    nop                                           ; $5178: $00
    jp nz, RST_00                                 ; $5179: $c2 $00 $00

    jp $c400                                      ; $517c: $c3 $00 $c4


    nop                                           ; $517f: $00
    push bc                                       ; $5180: $c5
    nop                                           ; $5181: $00
    jp nc, RST_00                                 ; $5182: $d2 $00 $00

    db $d3                                        ; $5185: $d3
    nop                                           ; $5186: $00
    call nc, $d500                                ; $5187: $d4 $00 $d5
    nop                                           ; $518a: $00
    sbc $00                                       ; $518b: $de $00
    nop                                           ; $518d: $00
    rst $18                                       ; $518e: $df
    nop                                           ; $518f: $00
    ldh [rP1], a                                  ; $5190: $e0 $00
    pop hl                                        ; $5192: $e1
    nop                                           ; $5193: $00
    push hl                                       ; $5194: $e5
    nop                                           ; $5195: $00
    nop                                           ; $5196: $00
    and $00                                       ; $5197: $e6 $00
    rst $20                                       ; $5199: $e7
    nop                                           ; $519a: $00
    add sp, $00                                   ; $519b: $e8 $00
    rst $28                                       ; $519d: $ef
    add b                                         ; $519e: $80
    inc [hl]                                      ; $519f: $34
    ld bc, $00ba                                  ; $51a0: $01 $ba $00
    cp e                                          ; $51a3: $bb
    nop                                           ; $51a4: $00
    cp h                                          ; $51a5: $bc
    nop                                           ; $51a6: $00
    cp l                                          ; $51a7: $bd
    nop                                           ; $51a8: $00
    nop                                           ; $51a9: $00
    add $00                                       ; $51aa: $c6 $00
    rst $00                                       ; $51ac: $c7
    nop                                           ; $51ad: $00
    ret z                                         ; $51ae: $c8

    nop                                           ; $51af: $00
    ret                                           ; $51b0: $c9


    ld [bc], a                                    ; $51b1: $02
    nop                                           ; $51b2: $00
    sub $00                                       ; $51b3: $d6 $00
    rst $10                                       ; $51b5: $d7
    nop                                           ; $51b6: $00
    ret c                                         ; $51b7: $d8

    ld d, c                                       ; $51b8: $51
    ld [hl-], a                                   ; $51b9: $32
    ld [c], a                                     ; $51ba: $e2
    ld a, [bc]                                    ; $51bb: $0a
    nop                                           ; $51bc: $00
    jp hl                                         ; $51bd: $e9


    nop                                           ; $51be: $00
    ld [$018c], a                                 ; $51bf: $ea $8c $01
    db $eb                                        ; $51c2: $eb
    and h                                         ; $51c3: $a4
    ld bc, $807a                                  ; $51c4: $01 $7a $80
    ld [$be01], sp                                ; $51c7: $08 $01 $be
    nop                                           ; $51ca: $00
    cp a                                          ; $51cb: $bf
    nop                                           ; $51cc: $00
    ret nz                                        ; $51cd: $c0

    nop                                           ; $51ce: $00
    jp z, RST_00                                  ; $51cf: $ca $00 $00

    rlc b                                         ; $51d2: $cb $00
    call z, $cd00                                 ; $51d4: $cc $00 $cd
    nop                                           ; $51d7: $00
    reti                                          ; $51d8: $d9


    ld [$da00], sp                                ; $51d9: $08 $00 $da
    nop                                           ; $51dc: $00
    db $db                                        ; $51dd: $db
    ld a, l                                       ; $51de: $7d
    ld [hl-], a                                   ; $51df: $32

Call_08f_51e0:
    db $e3                                        ; $51e0: $e3
    nop                                           ; $51e1: $00
    db $ec                                        ; $51e2: $ec
    jr z, jr_08f_51e5                             ; $51e3: $28 $00

jr_08f_51e5:
    db $ed                                        ; $51e5: $ed
    ld [$c141], sp                                ; $51e6: $08 $41 $c1
    call c, $7f01                                 ; $51e9: $dc $01 $7f
    nop                                           ; $51ec: $00
    adc $00                                       ; $51ed: $ce $00
    nop                                           ; $51ef: $00
    rst $08                                       ; $51f0: $cf
    nop                                           ; $51f1: $00
    ret nc                                        ; $51f2: $d0

    nop                                           ; $51f3: $00
    pop de                                        ; $51f4: $d1
    nop                                           ; $51f5: $00
    call c, RST_20                                ; $51f6: $dc $20 $00
    db $dd                                        ; $51f9: $dd
    ld a, [$0031]                                 ; $51fa: $fa $31 $00
    nop                                           ; $51fd: $00
    db $e4                                        ; $51fe: $e4
    nop                                           ; $51ff: $00
    xor $c0                                       ; $5200: $ee $c0
    ld c, $40                                     ; $5202: $0e $40
    ret nz                                        ; $5204: $c0

    ld a, [de]                                    ; $5205: $1a
    ldh a, [rP1]                                  ; $5206: $f0 $00
    ld a, [$fb00]                                 ; $5208: $fa $00 $fb
    nop                                           ; $520b: $00
    nop                                           ; $520c: $00
    db $fc                                        ; $520d: $fc
    nop                                           ; $520e: $00
    db $fd                                        ; $520f: $fd
    nop                                           ; $5210: $00
    add hl, bc                                    ; $5211: $09
    ld bc, $010a                                  ; $5212: $01 $0a $01
    ld b, h                                       ; $5215: $44
    ld a, d                                       ; $5216: $7a
    push de                                       ; $5217: $d5
    ld [hl-], a                                   ; $5218: $32
    dec c                                         ; $5219: $0d
    ld bc, $8ce9                                  ; $521a: $01 $e9 $8c
    ld b, c                                       ; $521d: $41
    nop                                           ; $521e: $00
    nop                                           ; $521f: $00
    nop                                           ; $5220: $00
    pop af                                        ; $5221: $f1
    nop                                           ; $5222: $00
    ld a, [c]                                     ; $5223: $f2
    nop                                           ; $5224: $00
    di                                            ; $5225: $f3
    nop                                           ; $5226: $00
    cp $00                                        ; $5227: $fe $00
    ld b, h                                       ; $5229: $44
    rst $38                                       ; $522a: $ff
    rst $00                                       ; $522b: $c7
    ld [bc], a                                    ; $522c: $02
    ld bc, $0b01                                  ; $522d: $01 $01 $0b
    ld a, [hl+]                                   ; $5230: $2a
    db $10                                        ; $5231: $10
    ld d, h                                       ; $5232: $54
    nop                                           ; $5233: $00
    nop                                           ; $5234: $00
    ld c, $01                                     ; $5235: $0e $01
    rrca                                          ; $5237: $0f
    ld bc, $0000                                  ; $5238: $01 $00 $00
    db $10                                        ; $523b: $10
    ld bc, $1700                                  ; $523c: $01 $00 $17
    ld bc, $0118                                  ; $523f: $01 $18 $01
    add hl, de                                    ; $5242: $19
    ld bc, $011a                                  ; $5243: $01 $1a $01
    jr nz, jr_08f_526b                            ; $5246: $20 $23

    ld bc, $0a18                                  ; $5248: $01 $18 $0a
    db $f4                                        ; $524b: $f4
    nop                                           ; $524c: $00
    push af                                       ; $524d: $f5
    nop                                           ; $524e: $00
    or $03                                        ; $524f: $f6 $03
    nop                                           ; $5251: $00
    ld [bc], a                                    ; $5252: $02
    ld bc, $0103                                  ; $5253: $01 $03 $01
    inc b                                         ; $5256: $04
    ld e, $00                                     ; $5257: $1e $00
    jr z, @+$1d                                   ; $5259: $28 $1b

    inc b                                         ; $525b: $04
    ld d, a                                       ; $525c: $57
    nop                                           ; $525d: $00
    ld de, $1201                                  ; $525e: $11 $01 $12
    inc l                                         ; $5261: $2c
    nop                                           ; $5262: $00
    inc de                                        ; $5263: $13
    ld bc, $1b00                                  ; $5264: $01 $00 $1b
    ld bc, $011c                                  ; $5267: $01 $1c $01
    dec e                                         ; $526a: $1d

jr_08f_526b:
    ld bc, $011e                                  ; $526b: $01 $1e $01
    jr nz, jr_08f_5294                            ; $526e: $20 $24

    ld bc, $0a18                                  ; $5270: $01 $18 $0a
    rst $30                                       ; $5273: $f7
    nop                                           ; $5274: $00
    ld hl, sp+$00                                 ; $5275: $f8 $00
    ld sp, hl                                     ; $5277: $f9
    nop                                           ; $5278: $00
    nop                                           ; $5279: $00
    dec b                                         ; $527a: $05
    ld bc, $0106                                  ; $527b: $01 $06 $01
    rlca                                          ; $527e: $07
    ld bc, $2008                                  ; $527f: $01 $08 $20
    ld bc, $300c                                  ; $5282: $01 $0c $30
    db $10                                        ; $5285: $10
    ld e, d                                       ; $5286: $5a
    nop                                           ; $5287: $00
    inc d                                         ; $5288: $14
    ld bc, $8015                                  ; $5289: $01 $15 $80
    ld e, b                                       ; $528c: $58
    nop                                           ; $528d: $00
    ld d, $01                                     ; $528e: $16 $01
    rra                                           ; $5290: $1f
    ld bc, $0120                                  ; $5291: $01 $20 $01

jr_08f_5294:
    ld hl, $0104                                  ; $5294: $21 $04 $01
    ld [hl+], a                                   ; $5297: $22
    ld bc, $0125                                  ; $5298: $01 $25 $01
    jr @+$0c                                      ; $529b: $18 $0a

    ld h, $01                                     ; $529d: $26 $01
    nop                                           ; $529f: $00
    daa                                           ; $52a0: $27
    ld bc, $0128                                  ; $52a1: $01 $28 $01
    jr nc, @+$03                                  ; $52a4: $30 $01

    ld sp, $0001                                  ; $52a6: $31 $01 $00
    ld [hl-], a                                   ; $52a9: $32
    ld bc, $0133                                  ; $52aa: $01 $33 $01
    dec a                                         ; $52ad: $3d
    ld bc, $013e                                  ; $52ae: $01 $3e $01
    nop                                           ; $52b1: $00
    ccf                                           ; $52b2: $3f
    ld bc, $0140                                  ; $52b3: $01 $40 $01
    ld c, l                                       ; $52b6: $4d
    ld bc, $014e                                  ; $52b7: $01 $4e $01
    nop                                           ; $52ba: $00
    ld c, a                                       ; $52bb: $4f
    ld bc, $0150                                  ; $52bc: $01 $50 $01
    ld e, d                                       ; $52bf: $5a
    ld bc, $015b                                  ; $52c0: $01 $5b $01
    ld [bc], a                                    ; $52c3: $02
    ld e, h                                       ; $52c4: $5c
    ld bc, $015d                                  ; $52c5: $01 $5d $01
    ld h, c                                       ; $52c8: $61
    ld bc, $0a18                                  ; $52c9: $01 $18 $0a
    add hl, hl                                    ; $52cc: $29
    nop                                           ; $52cd: $00
    ld bc, $012a                                  ; $52ce: $01 $2a $01
    dec hl                                        ; $52d1: $2b
    ld bc, $0134                                  ; $52d2: $01 $34 $01
    dec [hl]                                      ; $52d5: $35
    nop                                           ; $52d6: $00
    ld bc, $0136                                  ; $52d7: $01 $36 $01
    scf                                           ; $52da: $37
    ld bc, $0141                                  ; $52db: $01 $41 $01
    ld b, d                                       ; $52de: $42
    nop                                           ; $52df: $00
    ld bc, $0143                                  ; $52e0: $01 $43 $01
    ld b, h                                       ; $52e3: $44
    ld bc, $0151                                  ; $52e4: $01 $51 $01
    ld [hl], c                                    ; $52e7: $71
    ld bc, $5200                                  ; $52e8: $01 $00 $52
    ld bc, $0065                                  ; $52eb: $01 $65 $00
    ld e, [hl]                                    ; $52ee: $5e
    ld bc, $0960                                  ; $52ef: $01 $60 $09
    call nz, Call_000_0b00                        ; $52f2: $c4 $00 $0b
    ld a, [c]                                     ; $52f5: $f2
    ld [$012c], sp                                ; $52f6: $08 $2c $01
    dec l                                         ; $52f9: $2d
    db $10                                        ; $52fa: $10
    db $10                                        ; $52fb: $10
    jr c, jr_08f_52ff                             ; $52fc: $38 $01

    nop                                           ; $52fe: $00

jr_08f_52ff:
    add hl, sp                                    ; $52ff: $39
    ld bc, $013a                                  ; $5300: $01 $3a $01
    ld b, l                                       ; $5303: $45
    ld bc, $0146                                  ; $5304: $01 $46 $01
    nop                                           ; $5307: $00
    ld b, a                                       ; $5308: $47
    ld bc, $0148                                  ; $5309: $01 $48 $01
    ld d, e                                       ; $530c: $53
    ld bc, $0154                                  ; $530d: $01 $54 $01
    ld [bc], a                                    ; $5310: $02
    ld d, l                                       ; $5311: $55
    ld bc, $0156                                  ; $5312: $01 $56 $01
    ld e, a                                       ; $5315: $5f
    ld bc, $3960                                  ; $5316: $01 $60 $39
    nop                                           ; $5319: $00
    ld [$2e00], sp                                ; $531a: $08 $00 $2e
    ld bc, $102f                                  ; $531d: $01 $2f $10
    db $10                                        ; $5320: $10
    ld a, e                                       ; $5321: $7b
    nop                                           ; $5322: $00
    dec sp                                        ; $5323: $3b
    nop                                           ; $5324: $00
    ld bc, $013c                                  ; $5325: $01 $3c $01
    ld c, c                                       ; $5328: $49
    ld bc, $014a                                  ; $5329: $01 $4a $01
    ld c, e                                       ; $532c: $4b
    jr nz, jr_08f_5330                            ; $532d: $20 $01

    ld c, h                                       ; $532f: $4c

jr_08f_5330:
    ld b, $00                                     ; $5330: $06 $00
    ld d, a                                       ; $5332: $57
    ld bc, $0158                                  ; $5333: $01 $58 $01
    ld e, c                                       ; $5336: $59
    ld de, $6001                                  ; $5337: $11 $01 $60
    ld bc, $4960                                  ; $533a: $01 $60 $49
    ld h, d                                       ; $533d: $62
    ld bc, $1063                                  ; $533e: $01 $63 $10
    db $10                                        ; $5341: $10
    ldh a, [$9e]                                  ; $5342: $f0 $9e
    ld a, [de]                                    ; $5344: $1a
    inc b                                         ; $5345: $04
    ld e, b                                       ; $5346: $58
    ld a, h                                       ; $5347: $7c
    jr z, jr_08f_5390                             ; $5348: $28 $46

    inc e                                         ; $534a: $1c
    pop bc                                        ; $534b: $c1
    nop                                           ; $534c: $00
    ld b, [hl]                                    ; $534d: $46
    nop                                           ; $534e: $00
    ld bc, $0100                                  ; $534f: $01 $00 $01
    nop                                           ; $5352: $00
    ld [bc], a                                    ; $5353: $02
    rlca                                          ; $5354: $07
    ld [$100a], sp                                ; $5355: $08 $0a $10
    dec d                                         ; $5358: $15
    add b                                         ; $5359: $80
    ld de, $0300                                  ; $535a: $11 $00 $03
    nop                                           ; $535d: $00
    inc b                                         ; $535e: $04
    nop                                           ; $535f: $00
    dec b                                         ; $5360: $05
    nop                                           ; $5361: $00
    ld b, $20                                     ; $5362: $06 $20
    nop                                           ; $5364: $00
    ld c, $0a                                     ; $5365: $0e $0a
    jr nz, jr_08f_537f                            ; $5367: $20 $16

    nop                                           ; $5369: $00
    rla                                           ; $536a: $17
    nop                                           ; $536b: $00
    rlca                                          ; $536c: $07
    add d                                         ; $536d: $82
    ld [bc], a                                    ; $536e: $02
    nop                                           ; $536f: $00
    ld [$0900], sp                                ; $5370: $08 $00 $09
    nop                                           ; $5373: $00
    rrca                                          ; $5374: $0f
    ld a, [bc]                                    ; $5375: $0a
    db $10                                        ; $5376: $10
    stop                                          ; $5377: $10 $00
    nop                                           ; $5379: $00
    jr jr_08f_537c                                ; $537a: $18 $00

jr_08f_537c:
    add hl, de                                    ; $537c: $19
    nop                                           ; $537d: $00
    ld a, [bc]                                    ; $537e: $0a

jr_08f_537f:
    nop                                           ; $537f: $00
    dec bc                                        ; $5380: $0b
    nop                                           ; $5381: $00
    nop                                           ; $5382: $00
    inc c                                         ; $5383: $0c
    nop                                           ; $5384: $00
    dec c                                         ; $5385: $0d
    nop                                           ; $5386: $00
    ld de, $1200                                  ; $5387: $11 $00 $12
    nop                                           ; $538a: $00
    nop                                           ; $538b: $00
    inc de                                        ; $538c: $13
    nop                                           ; $538d: $00
    inc d                                         ; $538e: $14
    nop                                           ; $538f: $00

jr_08f_5390:
    ld a, [de]                                    ; $5390: $1a
    nop                                           ; $5391: $00
    dec de                                        ; $5392: $1b
    nop                                           ; $5393: $00
    nop                                           ; $5394: $00
    inc e                                         ; $5395: $1c
    nop                                           ; $5396: $00
    dec e                                         ; $5397: $1d
    nop                                           ; $5398: $00
    ld e, $00                                     ; $5399: $1e $00
    rra                                           ; $539b: $1f
    nop                                           ; $539c: $00
    nop                                           ; $539d: $00
    dec hl                                        ; $539e: $2b
    nop                                           ; $539f: $00
    inc l                                         ; $53a0: $2c
    nop                                           ; $53a1: $00
    dec l                                         ; $53a2: $2d
    nop                                           ; $53a3: $00
    ld l, $00                                     ; $53a4: $2e $00
    nop                                           ; $53a6: $00
    scf                                           ; $53a7: $37
    nop                                           ; $53a8: $00
    jr c, jr_08f_53ab                             ; $53a9: $38 $00

jr_08f_53ab:
    jr nz, jr_08f_53ad                            ; $53ab: $20 $00

jr_08f_53ad:
    ld hl, $0000                                  ; $53ad: $21 $00 $00
    ld [hl+], a                                   ; $53b0: $22
    nop                                           ; $53b1: $00
    inc hl                                        ; $53b2: $23
    nop                                           ; $53b3: $00
    cpl                                           ; $53b4: $2f
    nop                                           ; $53b5: $00
    jr nc, jr_08f_53b8                            ; $53b6: $30 $00

jr_08f_53b8:
    nop                                           ; $53b8: $00
    ld sp, $3200                                  ; $53b9: $31 $00 $32
    nop                                           ; $53bc: $00
    add hl, sp                                    ; $53bd: $39
    nop                                           ; $53be: $00
    ld a, [hl-]                                   ; $53bf: $3a
    nop                                           ; $53c0: $00
    nop                                           ; $53c1: $00
    inc h                                         ; $53c2: $24
    nop                                           ; $53c3: $00
    dec h                                         ; $53c4: $25
    nop                                           ; $53c5: $00
    ld h, $00                                     ; $53c6: $26 $00
    daa                                           ; $53c8: $27
    nop                                           ; $53c9: $00
    nop                                           ; $53ca: $00
    inc sp                                        ; $53cb: $33
    nop                                           ; $53cc: $00
    inc [hl]                                      ; $53cd: $34
    nop                                           ; $53ce: $00
    dec [hl]                                      ; $53cf: $35
    nop                                           ; $53d0: $00
    ld [hl], $00                                  ; $53d1: $36 $00
    nop                                           ; $53d3: $00
    dec sp                                        ; $53d4: $3b
    nop                                           ; $53d5: $00
    inc a                                         ; $53d6: $3c
    nop                                           ; $53d7: $00
    jr z, jr_08f_53da                             ; $53d8: $28 $00

jr_08f_53da:
    add hl, hl                                    ; $53da: $29
    jr nc, jr_08f_53dd                            ; $53db: $30 $00

jr_08f_53dd:
    ld a, [hl+]                                   ; $53dd: $2a
    ld b, $00                                     ; $53de: $06 $00
    ld [bc], a                                    ; $53e0: $02
    ld c, b                                       ; $53e1: $48
    dec a                                         ; $53e2: $3d
    nop                                           ; $53e3: $00
    ld a, $00                                     ; $53e4: $3e $00
    ld h, d                                       ; $53e6: $62
    ccf                                           ; $53e7: $3f
    ld b, $00                                     ; $53e8: $06 $00
    ld [bc], a                                    ; $53ea: $02
    jr jr_08f_5439                                ; $53eb: $18 $4c

    nop                                           ; $53ed: $00
    ld e, c                                       ; $53ee: $59
    ld [bc], a                                    ; $53ef: $02
    nop                                           ; $53f0: $00
    ld b, b                                       ; $53f1: $40
    nop                                           ; $53f2: $00
    nop                                           ; $53f3: $00
    ld b, c                                       ; $53f4: $41
    nop                                           ; $53f5: $00
    ld b, d                                       ; $53f6: $42
    nop                                           ; $53f7: $00
    ld b, e                                       ; $53f8: $43
    nop                                           ; $53f9: $00
    ld c, l                                       ; $53fa: $4d
    nop                                           ; $53fb: $00
    nop                                           ; $53fc: $00
    ld c, [hl]                                    ; $53fd: $4e
    nop                                           ; $53fe: $00
    ld c, a                                       ; $53ff: $4f
    nop                                           ; $5400: $00
    ld d, b                                       ; $5401: $50
    nop                                           ; $5402: $00
    ld e, d                                       ; $5403: $5a
    nop                                           ; $5404: $00
    nop                                           ; $5405: $00
    ld e, e                                       ; $5406: $5b
    nop                                           ; $5407: $00
    ld b, h                                       ; $5408: $44
    nop                                           ; $5409: $00
    ld b, l                                       ; $540a: $45
    nop                                           ; $540b: $00
    ld b, [hl]                                    ; $540c: $46
    nop                                           ; $540d: $00
    nop                                           ; $540e: $00
    ld b, a                                       ; $540f: $47
    nop                                           ; $5410: $00
    ld d, c                                       ; $5411: $51
    nop                                           ; $5412: $00
    ld d, d                                       ; $5413: $52
    nop                                           ; $5414: $00
    ld d, e                                       ; $5415: $53
    ld [$5400], sp                                ; $5416: $08 $00 $54
    nop                                           ; $5419: $00
    ld e, h                                       ; $541a: $5c
    ld [$4800], sp                                ; $541b: $08 $00 $48
    nop                                           ; $541e: $00
    ld c, c                                       ; $541f: $49
    nop                                           ; $5420: $00
    nop                                           ; $5421: $00
    ld c, d                                       ; $5422: $4a
    nop                                           ; $5423: $00
    ld c, e                                       ; $5424: $4b
    nop                                           ; $5425: $00
    ld d, l                                       ; $5426: $55
    nop                                           ; $5427: $00
    ld d, [hl]                                    ; $5428: $56
    nop                                           ; $5429: $00
    nop                                           ; $542a: $00
    ld d, a                                       ; $542b: $57
    nop                                           ; $542c: $00
    ld e, b                                       ; $542d: $58
    nop                                           ; $542e: $00
    ld e, l                                       ; $542f: $5d
    nop                                           ; $5430: $00
    ld e, [hl]                                    ; $5431: $5e
    nop                                           ; $5432: $00
    nop                                           ; $5433: $00
    sbc d                                         ; $5434: $9a
    nop                                           ; $5435: $00
    inc b                                         ; $5436: $04
    nop                                           ; $5437: $00
    nop                                           ; $5438: $00

jr_08f_5439:
    ld bc, $0200                                  ; $5439: $01 $00 $02
    ld [bc], a                                    ; $543c: $02
    ld hl, sp+$00                                 ; $543d: $f8 $00
    inc bc                                        ; $543f: $03
    adc h                                         ; $5440: $8c
    ld [bc], a                                    ; $5441: $02
    nop                                           ; $5442: $00
    inc b                                         ; $5443: $04
    nop                                           ; $5444: $00
    dec b                                         ; $5445: $05
    ld [$0a10], sp                                ; $5446: $08 $10 $0a
    jr z, @+$08                                   ; $5449: $28 $06

    nop                                           ; $544b: $00
    ld bc, $0007                                  ; $544c: $01 $07 $00
    ld [$0900], sp                                ; $544f: $08 $00 $09
    nop                                           ; $5452: $00
    ld a, [bc]                                    ; $5453: $0a
    ld a, [bc]                                    ; $5454: $0a
    jr nz, jr_08f_545b                            ; $5455: $20 $04

    dec bc                                        ; $5457: $0b
    nop                                           ; $5458: $00
    inc c                                         ; $5459: $0c
    nop                                           ; $545a: $00

jr_08f_545b:
    dec c                                         ; $545b: $0d
    ld [bc], a                                    ; $545c: $02
    nop                                           ; $545d: $00
    ld c, $00                                     ; $545e: $0e $00
    db $10                                        ; $5460: $10
    rrca                                          ; $5461: $0f
    nop                                           ; $5462: $00
    inc e                                         ; $5463: $1c
    ld a, [bc]                                    ; $5464: $0a
    db $10                                        ; $5465: $10
    dec e                                         ; $5466: $1d
    nop                                           ; $5467: $00
    jr z, jr_08f_546a                             ; $5468: $28 $00

jr_08f_546a:
    nop                                           ; $546a: $00
    add hl, hl                                    ; $546b: $29
    nop                                           ; $546c: $00
    stop                                          ; $546d: $10 $00
    ld de, $1200                                  ; $546f: $11 $00 $12
    nop                                           ; $5472: $00
    ld de, $0013                                  ; $5473: $11 $13 $00
    ld e, $0a                                     ; $5476: $1e $0a
    db $10                                        ; $5478: $10
    rra                                           ; $5479: $1f
    nop                                           ; $547a: $00
    ld a, [hl+]                                   ; $547b: $2a
    ld a, [bc]                                    ; $547c: $0a
    nop                                           ; $547d: $00
    nop                                           ; $547e: $00
    inc d                                         ; $547f: $14
    nop                                           ; $5480: $00
    dec d                                         ; $5481: $15
    nop                                           ; $5482: $00
    ld d, $00                                     ; $5483: $16 $00
    rla                                           ; $5485: $17
    nop                                           ; $5486: $00
    nop                                           ; $5487: $00
    jr nz, jr_08f_548a                            ; $5488: $20 $00

jr_08f_548a:
    ld hl, $2200                                  ; $548a: $21 $00 $22
    nop                                           ; $548d: $00
    inc hl                                        ; $548e: $23
    nop                                           ; $548f: $00
    nop                                           ; $5490: $00
    dec hl                                        ; $5491: $2b
    nop                                           ; $5492: $00
    inc l                                         ; $5493: $2c
    nop                                           ; $5494: $00
    jr jr_08f_5497                                ; $5495: $18 $00

jr_08f_5497:
    add hl, de                                    ; $5497: $19
    nop                                           ; $5498: $00
    nop                                           ; $5499: $00
    ld a, [de]                                    ; $549a: $1a
    nop                                           ; $549b: $00
    dec de                                        ; $549c: $1b
    nop                                           ; $549d: $00
    inc h                                         ; $549e: $24
    nop                                           ; $549f: $00
    dec h                                         ; $54a0: $25
    nop                                           ; $54a1: $00
    nop                                           ; $54a2: $00
    ld h, $00                                     ; $54a3: $26 $00
    daa                                           ; $54a5: $27
    nop                                           ; $54a6: $00
    dec l                                         ; $54a7: $2d
    nop                                           ; $54a8: $00
    ld l, $00                                     ; $54a9: $2e $00
    nop                                           ; $54ab: $00
    cpl                                           ; $54ac: $2f
    nop                                           ; $54ad: $00
    jr nc, jr_08f_54b0                            ; $54ae: $30 $00

jr_08f_54b0:
    ld sp, $3200                                  ; $54b0: $31 $00 $32
    nop                                           ; $54b3: $00
    nop                                           ; $54b4: $00
    dec sp                                        ; $54b5: $3b
    nop                                           ; $54b6: $00
    inc a                                         ; $54b7: $3c
    nop                                           ; $54b8: $00
    dec a                                         ; $54b9: $3d
    nop                                           ; $54ba: $00
    ld a, $00                                     ; $54bb: $3e $00
    ld b, b                                       ; $54bd: $40
    ld b, a                                       ; $54be: $47
    ld [$3300], sp                                ; $54bf: $08 $00 $33
    nop                                           ; $54c2: $00
    inc [hl]                                      ; $54c3: $34
    nop                                           ; $54c4: $00
    dec [hl]                                      ; $54c5: $35
    nop                                           ; $54c6: $00
    nop                                           ; $54c7: $00
    ld [hl], $00                                  ; $54c8: $36 $00
    ccf                                           ; $54ca: $3f
    nop                                           ; $54cb: $00
    ld b, b                                       ; $54cc: $40
    nop                                           ; $54cd: $00
    ld b, c                                       ; $54ce: $41
    nop                                           ; $54cf: $00
    nop                                           ; $54d0: $00
    ld b, d                                       ; $54d1: $42
    nop                                           ; $54d2: $00
    ld c, b                                       ; $54d3: $48
    nop                                           ; $54d4: $00
    ld c, c                                       ; $54d5: $49
    nop                                           ; $54d6: $00
    scf                                           ; $54d7: $37
    nop                                           ; $54d8: $00
    nop                                           ; $54d9: $00
    jr c, jr_08f_54dc                             ; $54da: $38 $00

jr_08f_54dc:
    add hl, sp                                    ; $54dc: $39
    nop                                           ; $54dd: $00
    ld a, [hl-]                                   ; $54de: $3a
    nop                                           ; $54df: $00
    ld b, e                                       ; $54e0: $43
    nop                                           ; $54e1: $00
    nop                                           ; $54e2: $00
    ld b, h                                       ; $54e3: $44
    nop                                           ; $54e4: $00
    ld b, l                                       ; $54e5: $45
    nop                                           ; $54e6: $00
    ld b, [hl]                                    ; $54e7: $46
    nop                                           ; $54e8: $00
    ld c, d                                       ; $54e9: $4a
    nop                                           ; $54ea: $00
    nop                                           ; $54eb: $00
    ld c, e                                       ; $54ec: $4b
    nop                                           ; $54ed: $00
    cp $00                                        ; $54ee: $fe $00
    nop                                           ; $54f0: $00
    nop                                           ; $54f1: $00
    nop                                           ; $54f2: $00
    ld bc, $0200                                  ; $54f3: $01 $00 $02
    nop                                           ; $54f6: $00
    inc bc                                        ; $54f7: $03
    nop                                           ; $54f8: $00
    nop                                           ; $54f9: $00
    stop                                          ; $54fa: $10 $00
    ld de, $1200                                  ; $54fc: $11 $00 $12
    nop                                           ; $54ff: $00
    inc de                                        ; $5500: $13
    nop                                           ; $5501: $00
    nop                                           ; $5502: $00
    jr nz, jr_08f_5505                            ; $5503: $20 $00

jr_08f_5505:
    inc b                                         ; $5505: $04
    nop                                           ; $5506: $00
    dec b                                         ; $5507: $05
    nop                                           ; $5508: $00
    ld b, $00                                     ; $5509: $06 $00
    nop                                           ; $550b: $00
    rlca                                          ; $550c: $07
    nop                                           ; $550d: $00
    inc d                                         ; $550e: $14
    nop                                           ; $550f: $00
    dec d                                         ; $5510: $15
    nop                                           ; $5511: $00
    ld d, $00                                     ; $5512: $16 $00
    ld b, b                                       ; $5514: $40
    rla                                           ; $5515: $17
    ld [de], a                                    ; $5516: $12
    nop                                           ; $5517: $00
    ld [$0900], sp                                ; $5518: $08 $00 $09
    nop                                           ; $551b: $00
    ld a, [bc]                                    ; $551c: $0a
    nop                                           ; $551d: $00
    nop                                           ; $551e: $00
    dec bc                                        ; $551f: $0b
    nop                                           ; $5520: $00
    jr jr_08f_5523                                ; $5521: $18 $00

jr_08f_5523:
    add hl, de                                    ; $5523: $19
    nop                                           ; $5524: $00
    ld a, [de]                                    ; $5525: $1a
    nop                                           ; $5526: $00
    ld b, b                                       ; $5527: $40
    dec de                                        ; $5528: $1b
    inc h                                         ; $5529: $24
    nop                                           ; $552a: $00
    inc c                                         ; $552b: $0c
    nop                                           ; $552c: $00
    dec c                                         ; $552d: $0d
    nop                                           ; $552e: $00
    ld c, $00                                     ; $552f: $0e $00
    nop                                           ; $5531: $00
    rrca                                          ; $5532: $0f
    nop                                           ; $5533: $00
    inc e                                         ; $5534: $1c
    nop                                           ; $5535: $00
    dec e                                         ; $5536: $1d
    nop                                           ; $5537: $00
    ld e, $00                                     ; $5538: $1e $00
    ld b, b                                       ; $553a: $40
    rra                                           ; $553b: $1f
    ld [hl], $00                                  ; $553c: $36 $00
    nop                                           ; $553e: $00
    nop                                           ; $553f: $00
    ld hl, $2200                                  ; $5540: $21 $00 $22
    nop                                           ; $5543: $00
    nop                                           ; $5544: $00
    inc hl                                        ; $5545: $23
    nop                                           ; $5546: $00
    jr nc, jr_08f_5549                            ; $5547: $30 $00

jr_08f_5549:
    ld sp, $3200                                  ; $5549: $31 $00 $32
    nop                                           ; $554c: $00
    ld b, b                                       ; $554d: $40
    inc sp                                        ; $554e: $33
    ld c, b                                       ; $554f: $48
    nop                                           ; $5550: $00
    inc h                                         ; $5551: $24
    nop                                           ; $5552: $00
    dec h                                         ; $5553: $25
    nop                                           ; $5554: $00
    ld h, $00                                     ; $5555: $26 $00
    nop                                           ; $5557: $00
    daa                                           ; $5558: $27
    nop                                           ; $5559: $00
    inc [hl]                                      ; $555a: $34
    nop                                           ; $555b: $00
    dec [hl]                                      ; $555c: $35
    nop                                           ; $555d: $00
    ld [hl], $00                                  ; $555e: $36 $00
    ld b, b                                       ; $5560: $40
    scf                                           ; $5561: $37
    ld e, d                                       ; $5562: $5a
    nop                                           ; $5563: $00
    jr z, jr_08f_5566                             ; $5564: $28 $00

jr_08f_5566:
    add hl, hl                                    ; $5566: $29
    nop                                           ; $5567: $00
    ld a, [hl+]                                   ; $5568: $2a
    nop                                           ; $5569: $00
    nop                                           ; $556a: $00
    dec hl                                        ; $556b: $2b
    nop                                           ; $556c: $00
    jr c, jr_08f_556f                             ; $556d: $38 $00

jr_08f_556f:
    add hl, sp                                    ; $556f: $39
    nop                                           ; $5570: $00
    ld a, [hl-]                                   ; $5571: $3a
    nop                                           ; $5572: $00
    nop                                           ; $5573: $00
    dec sp                                        ; $5574: $3b
    nop                                           ; $5575: $00
    ld b, b                                       ; $5576: $40
    nop                                           ; $5577: $00
    inc l                                         ; $5578: $2c
    nop                                           ; $5579: $00
    dec l                                         ; $557a: $2d
    nop                                           ; $557b: $00
    nop                                           ; $557c: $00
    ld l, $00                                     ; $557d: $2e $00
    cpl                                           ; $557f: $2f
    nop                                           ; $5580: $00
    inc a                                         ; $5581: $3c
    nop                                           ; $5582: $00
    dec a                                         ; $5583: $3d
    nop                                           ; $5584: $00
    inc b                                         ; $5585: $04
    ld a, $00                                     ; $5586: $3e $00
    ccf                                           ; $5588: $3f
    nop                                           ; $5589: $00
    ld b, c                                       ; $558a: $41
    ld c, b                                       ; $558b: $48
    nop                                           ; $558c: $00
    ld b, d                                       ; $558d: $42
    nop                                           ; $558e: $00
    nop                                           ; $558f: $00
    ld b, e                                       ; $5590: $43
    nop                                           ; $5591: $00
    ld b, h                                       ; $5592: $44
    nop                                           ; $5593: $00
    ld d, b                                       ; $5594: $50
    nop                                           ; $5595: $00
    ld d, c                                       ; $5596: $51
    nop                                           ; $5597: $00
    inc b                                         ; $5598: $04
    ld d, d                                       ; $5599: $52
    nop                                           ; $559a: $00
    ld d, e                                       ; $559b: $53
    nop                                           ; $559c: $00
    ld h, b                                       ; $559d: $60
    ld e, d                                       ; $559e: $5a
    nop                                           ; $559f: $00
    ld b, l                                       ; $55a0: $45
    nop                                           ; $55a1: $00
    nop                                           ; $55a2: $00
    ld b, [hl]                                    ; $55a3: $46
    nop                                           ; $55a4: $00
    ld b, a                                       ; $55a5: $47
    nop                                           ; $55a6: $00
    ld d, h                                       ; $55a7: $54
    nop                                           ; $55a8: $00
    ld d, l                                       ; $55a9: $55
    nop                                           ; $55aa: $00
    nop                                           ; $55ab: $00
    ld d, [hl]                                    ; $55ac: $56
    nop                                           ; $55ad: $00
    ld d, a                                       ; $55ae: $57
    nop                                           ; $55af: $00
    ld h, c                                       ; $55b0: $61
    nop                                           ; $55b1: $00
    ld c, b                                       ; $55b2: $48
    nop                                           ; $55b3: $00
    nop                                           ; $55b4: $00
    ld c, c                                       ; $55b5: $49
    nop                                           ; $55b6: $00
    ld c, d                                       ; $55b7: $4a
    nop                                           ; $55b8: $00
    ld c, e                                       ; $55b9: $4b
    nop                                           ; $55ba: $00
    ld e, b                                       ; $55bb: $58
    nop                                           ; $55bc: $00
    inc b                                         ; $55bd: $04
    ld e, c                                       ; $55be: $59
    nop                                           ; $55bf: $00
    ld e, d                                       ; $55c0: $5a
    nop                                           ; $55c1: $00
    ld e, e                                       ; $55c2: $5b
    or h                                          ; $55c3: $b4
    nop                                           ; $55c4: $00
    ld c, h                                       ; $55c5: $4c
    nop                                           ; $55c6: $00
    nop                                           ; $55c7: $00
    ld c, l                                       ; $55c8: $4d
    nop                                           ; $55c9: $00
    ld c, [hl]                                    ; $55ca: $4e
    nop                                           ; $55cb: $00
    ld c, a                                       ; $55cc: $4f
    nop                                           ; $55cd: $00
    ld e, h                                       ; $55ce: $5c
    nop                                           ; $55cf: $00
    inc b                                         ; $55d0: $04
    ld e, l                                       ; $55d1: $5d
    nop                                           ; $55d2: $00
    ld e, [hl]                                    ; $55d3: $5e
    nop                                           ; $55d4: $00
    ld e, a                                       ; $55d5: $5f
    add $00                                       ; $55d6: $c6 $00
    ld h, d                                       ; $55d8: $62
    nop                                           ; $55d9: $00
    nop                                           ; $55da: $00
    ld h, e                                       ; $55db: $63
    nop                                           ; $55dc: $00
    ld h, h                                       ; $55dd: $64
    nop                                           ; $55de: $00
    ld h, l                                       ; $55df: $65
    nop                                           ; $55e0: $00
    ld l, a                                       ; $55e1: $6f
    nop                                           ; $55e2: $00
    inc b                                         ; $55e3: $04
    ld [hl], b                                    ; $55e4: $70
    nop                                           ; $55e5: $00
    ld [hl], c                                    ; $55e6: $71
    nop                                           ; $55e7: $00
    ld [hl], d                                    ; $55e8: $72
    and d                                         ; $55e9: $a2
    db $10                                        ; $55ea: $10
    ld h, [hl]                                    ; $55eb: $66
    nop                                           ; $55ec: $00
    nop                                           ; $55ed: $00
    ld h, a                                       ; $55ee: $67
    nop                                           ; $55ef: $00
    ld l, b                                       ; $55f0: $68
    nop                                           ; $55f1: $00
    ld [hl], e                                    ; $55f2: $73
    nop                                           ; $55f3: $00
    ld [hl], h                                    ; $55f4: $74
    nop                                           ; $55f5: $00
    db $10                                        ; $55f6: $10
    ld [hl], l                                    ; $55f7: $75
    nop                                           ; $55f8: $00
    halt                                          ; $55f9: $76
    or h                                          ; $55fa: $b4
    db $10                                        ; $55fb: $10
    ld l, c                                       ; $55fc: $69
    nop                                           ; $55fd: $00
    ld l, d                                       ; $55fe: $6a
    nop                                           ; $55ff: $00
    nop                                           ; $5600: $00
    ld l, e                                       ; $5601: $6b
    nop                                           ; $5602: $00
    ld [hl], a                                    ; $5603: $77
    nop                                           ; $5604: $00
    ld a, b                                       ; $5605: $78
    nop                                           ; $5606: $00
    ld a, c                                       ; $5607: $79
    nop                                           ; $5608: $00
    ld b, h                                       ; $5609: $44
    ld a, d                                       ; $560a: $7a
    db $fc                                        ; $560b: $fc
    nop                                           ; $560c: $00
    ld l, h                                       ; $560d: $6c
    nop                                           ; $560e: $00
    ld l, l                                       ; $560f: $6d
    ld [bc], a                                    ; $5610: $02
    nop                                           ; $5611: $00
    ld l, [hl]                                    ; $5612: $6e
    nop                                           ; $5613: $00
    db $10                                        ; $5614: $10
    ld a, e                                       ; $5615: $7b
    nop                                           ; $5616: $00
    ld a, h                                       ; $5617: $7c
    ld a, [bc]                                    ; $5618: $0a
    db $10                                        ; $5619: $10
    ld a, l                                       ; $561a: $7d
    nop                                           ; $561b: $00
    or $00                                        ; $561c: $f6 $00
    ld b, b                                       ; $561e: $40
    nop                                           ; $561f: $00
    ld bc, $0110                                  ; $5620: $01 $10 $01
    nop                                           ; $5623: $00
    dec bc                                        ; $5624: $0b
    nop                                           ; $5625: $00
    inc c                                         ; $5626: $0c
    nop                                           ; $5627: $00
    ld b, $0d                                     ; $5628: $06 $0d
    nop                                           ; $562a: $00
    ld c, $00                                     ; $562b: $0e $00
    dec de                                        ; $562d: $1b
    ld de, $1718                                  ; $562e: $11 $18 $17
    db $10                                        ; $5631: $10
    ld [bc], a                                    ; $5632: $02
    nop                                           ; $5633: $00
    nop                                           ; $5634: $00
    inc bc                                        ; $5635: $03
    nop                                           ; $5636: $00
    rrca                                          ; $5637: $0f
    nop                                           ; $5638: $00
    stop                                          ; $5639: $10 $00
    ld de, $0002                                  ; $563b: $11 $02 $00
    ld [de], a                                    ; $563e: $12
    nop                                           ; $563f: $00
    inc e                                         ; $5640: $1c
    nop                                           ; $5641: $00
    dec e                                         ; $5642: $1d
    ld a, [de]                                    ; $5643: $1a
    jr nz, jr_08f_564a                            ; $5644: $20 $04

    nop                                           ; $5646: $00
    nop                                           ; $5647: $00
    dec b                                         ; $5648: $05
    nop                                           ; $5649: $00

jr_08f_564a:
    ld b, $00                                     ; $564a: $06 $00
    inc de                                        ; $564c: $13
    nop                                           ; $564d: $00
    inc d                                         ; $564e: $14
    nop                                           ; $564f: $00
    nop                                           ; $5650: $00
    dec d                                         ; $5651: $15
    nop                                           ; $5652: $00
    ld d, $00                                     ; $5653: $16 $00
    ld e, $00                                     ; $5655: $1e $00
    rra                                           ; $5657: $1f
    jr nz, jr_08f_565a                            ; $5658: $20 $00

jr_08f_565a:
    jr nz, jr_08f_56a1                            ; $565a: $20 $45

    nop                                           ; $565c: $00
    rlca                                          ; $565d: $07
    nop                                           ; $565e: $00
    ld [$0900], sp                                ; $565f: $08 $00 $09
    nop                                           ; $5662: $00
    nop                                           ; $5663: $00
    ld a, [bc]                                    ; $5664: $0a
    nop                                           ; $5665: $00
    rla                                           ; $5666: $17
    nop                                           ; $5667: $00
    jr jr_08f_566a                                ; $5668: $18 $00

jr_08f_566a:
    add hl, de                                    ; $566a: $19
    nop                                           ; $566b: $00
    nop                                           ; $566c: $00
    ld a, [de]                                    ; $566d: $1a
    nop                                           ; $566e: $00
    ld hl, $2200                                  ; $566f: $21 $00 $22
    nop                                           ; $5672: $00
    inc hl                                        ; $5673: $23
    nop                                           ; $5674: $00
    nop                                           ; $5675: $00
    inc h                                         ; $5676: $24
    nop                                           ; $5677: $00
    dec h                                         ; $5678: $25
    nop                                           ; $5679: $00
    ld h, $00                                     ; $567a: $26 $00
    daa                                           ; $567c: $27
    nop                                           ; $567d: $00
    nop                                           ; $567e: $00
    jr z, jr_08f_5681                             ; $567f: $28 $00

jr_08f_5681:
    dec [hl]                                      ; $5681: $35
    nop                                           ; $5682: $00
    ld [hl], $00                                  ; $5683: $36 $00
    scf                                           ; $5685: $37
    nop                                           ; $5686: $00
    nop                                           ; $5687: $00
    jr c, jr_08f_568a                             ; $5688: $38 $00

jr_08f_568a:
    ld b, l                                       ; $568a: $45
    nop                                           ; $568b: $00
    ld b, [hl]                                    ; $568c: $46
    nop                                           ; $568d: $00
    ld b, a                                       ; $568e: $47
    nop                                           ; $568f: $00
    nop                                           ; $5690: $00
    ld c, b                                       ; $5691: $48
    nop                                           ; $5692: $00
    add hl, hl                                    ; $5693: $29
    nop                                           ; $5694: $00
    ld a, [hl+]                                   ; $5695: $2a
    nop                                           ; $5696: $00
    dec hl                                        ; $5697: $2b
    nop                                           ; $5698: $00
    nop                                           ; $5699: $00
    inc l                                         ; $569a: $2c
    nop                                           ; $569b: $00
    add hl, sp                                    ; $569c: $39
    nop                                           ; $569d: $00
    ld a, [hl-]                                   ; $569e: $3a
    nop                                           ; $569f: $00
    dec sp                                        ; $56a0: $3b

jr_08f_56a1:
    nop                                           ; $56a1: $00
    nop                                           ; $56a2: $00
    inc a                                         ; $56a3: $3c
    nop                                           ; $56a4: $00
    ld c, c                                       ; $56a5: $49
    nop                                           ; $56a6: $00
    ld c, d                                       ; $56a7: $4a
    nop                                           ; $56a8: $00
    ld c, e                                       ; $56a9: $4b
    nop                                           ; $56aa: $00
    nop                                           ; $56ab: $00
    ld c, h                                       ; $56ac: $4c
    nop                                           ; $56ad: $00
    dec l                                         ; $56ae: $2d
    nop                                           ; $56af: $00
    ld l, $00                                     ; $56b0: $2e $00
    cpl                                           ; $56b2: $2f
    nop                                           ; $56b3: $00
    nop                                           ; $56b4: $00
    jr nc, jr_08f_56b7                            ; $56b5: $30 $00

jr_08f_56b7:
    dec a                                         ; $56b7: $3d
    nop                                           ; $56b8: $00
    ld a, $00                                     ; $56b9: $3e $00
    ccf                                           ; $56bb: $3f
    nop                                           ; $56bc: $00
    nop                                           ; $56bd: $00
    ld b, b                                       ; $56be: $40
    nop                                           ; $56bf: $00
    ld c, l                                       ; $56c0: $4d
    nop                                           ; $56c1: $00
    ld c, [hl]                                    ; $56c2: $4e
    nop                                           ; $56c3: $00
    ld c, a                                       ; $56c4: $4f
    nop                                           ; $56c5: $00
    nop                                           ; $56c6: $00
    ld d, b                                       ; $56c7: $50
    nop                                           ; $56c8: $00
    ld sp, $3200                                  ; $56c9: $31 $00 $32
    nop                                           ; $56cc: $00
    inc sp                                        ; $56cd: $33
    nop                                           ; $56ce: $00
    nop                                           ; $56cf: $00
    inc [hl]                                      ; $56d0: $34
    nop                                           ; $56d1: $00
    ld b, c                                       ; $56d2: $41
    nop                                           ; $56d3: $00
    ld b, d                                       ; $56d4: $42
    nop                                           ; $56d5: $00
    ld b, e                                       ; $56d6: $43
    nop                                           ; $56d7: $00
    nop                                           ; $56d8: $00
    ld b, h                                       ; $56d9: $44
    nop                                           ; $56da: $00
    ld d, c                                       ; $56db: $51
    nop                                           ; $56dc: $00
    ld d, d                                       ; $56dd: $52
    nop                                           ; $56de: $00
    ld d, e                                       ; $56df: $53
    jr nz, jr_08f_56e2                            ; $56e0: $20 $00

jr_08f_56e2:
    ld d, h                                       ; $56e2: $54
    cp a                                          ; $56e3: $bf
    nop                                           ; $56e4: $00
    ld d, l                                       ; $56e5: $55
    nop                                           ; $56e6: $00
    ld d, [hl]                                    ; $56e7: $56
    nop                                           ; $56e8: $00
    ld d, a                                       ; $56e9: $57
    nop                                           ; $56ea: $00
    nop                                           ; $56eb: $00
    ld e, l                                       ; $56ec: $5d
    nop                                           ; $56ed: $00
    ld e, [hl]                                    ; $56ee: $5e
    nop                                           ; $56ef: $00
    ld e, a                                       ; $56f0: $5f
    nop                                           ; $56f1: $00
    ld h, b                                       ; $56f2: $60
    ld [bc], a                                    ; $56f3: $02
    nop                                           ; $56f4: $00
    ld l, l                                       ; $56f5: $6d
    nop                                           ; $56f6: $00
    ld l, [hl]                                    ; $56f7: $6e
    nop                                           ; $56f8: $00
    ld l, a                                       ; $56f9: $6f
    push de                                       ; $56fa: $d5
    db $10                                        ; $56fb: $10
    ld e, b                                       ; $56fc: $58
    nop                                           ; $56fd: $00
    nop                                           ; $56fe: $00
    ld e, c                                       ; $56ff: $59

Jump_08f_5700:
    nop                                           ; $5700: $00
    ld e, d                                       ; $5701: $5a
    nop                                           ; $5702: $00
    ld h, c                                       ; $5703: $61
    nop                                           ; $5704: $00
    ld h, d                                       ; $5705: $62
    nop                                           ; $5706: $00
    nop                                           ; $5707: $00
    ld h, e                                       ; $5708: $63
    nop                                           ; $5709: $00
    ld h, h                                       ; $570a: $64
    nop                                           ; $570b: $00
    ld [hl], b                                    ; $570c: $70
    nop                                           ; $570d: $00
    ld [hl], c                                    ; $570e: $71
    jr nz, jr_08f_5711                            ; $570f: $20 $00

jr_08f_5711:
    ld [hl], d                                    ; $5711: $72
    call c, Call_08f_5b20                         ; $5712: $dc $20 $5b
    nop                                           ; $5715: $00
    ld e, h                                       ; $5716: $5c
    nop                                           ; $5717: $00
    ld h, l                                       ; $5718: $65
    nop                                           ; $5719: $00
    nop                                           ; $571a: $00
    ld h, [hl]                                    ; $571b: $66
    nop                                           ; $571c: $00
    ld h, a                                       ; $571d: $67
    nop                                           ; $571e: $00
    ld l, b                                       ; $571f: $68
    nop                                           ; $5720: $00
    ld [hl], e                                    ; $5721: $73
    jr nz, jr_08f_5724                            ; $5722: $20 $00

jr_08f_5724:
    ld [hl], h                                    ; $5724: $74
    ld a, [c]                                     ; $5725: $f2
    ld b, b                                       ; $5726: $40
    nop                                           ; $5727: $00
    nop                                           ; $5728: $00
    ld l, c                                       ; $5729: $69
    nop                                           ; $572a: $00
    ld l, d                                       ; $572b: $6a
    inc c                                         ; $572c: $0c
    nop                                           ; $572d: $00
    ld l, e                                       ; $572e: $6b
    nop                                           ; $572f: $00
    ld l, h                                       ; $5730: $6c
    inc d                                         ; $5731: $14
    ld d, b                                       ; $5732: $50
    inc h                                         ; $5733: $24
    add hl, bc                                    ; $5734: $09
    ld [hl], l                                    ; $5735: $75
    nop                                           ; $5736: $00
    inc b                                         ; $5737: $04
    halt                                          ; $5738: $76
    nop                                           ; $5739: $00
    ld [hl], a                                    ; $573a: $77
    nop                                           ; $573b: $00
    ld a, b                                       ; $573c: $78
    ld e, $31                                     ; $573d: $1e $31
    ldh [rP1], a                                  ; $573f: $e0 $00
    ld b, c                                       ; $5741: $41
    nop                                           ; $5742: $00
    ld bc, $0440                                  ; $5743: $01 $40 $04
    nop                                           ; $5746: $00
    dec b                                         ; $5747: $05
    nop                                           ; $5748: $00
    db $10                                        ; $5749: $10
    ld de, $8248                                  ; $574a: $11 $48 $82
    dec e                                         ; $574d: $1d
    ld b, b                                       ; $574e: $40
    ld b, $00                                     ; $574f: $06 $00
    rlca                                          ; $5751: $07
    nop                                           ; $5752: $00
    ld de, $701c                                  ; $5753: $11 $1c $70
    ld bc, $0000                                  ; $5756: $01 $00 $00
    ld [$0900], sp                                ; $5759: $08 $00 $09
    nop                                           ; $575c: $00
    ld a, [bc]                                    ; $575d: $0a
    nop                                           ; $575e: $00
    dec bc                                        ; $575f: $0b
    ld [bc], a                                    ; $5760: $02
    nop                                           ; $5761: $00
    ld [de], a                                    ; $5762: $12
    nop                                           ; $5763: $00
    inc de                                        ; $5764: $13
    nop                                           ; $5765: $00
    inc d                                         ; $5766: $14
    ld c, l                                       ; $5767: $4d
    ld b, b                                       ; $5768: $40
    ld [bc], a                                    ; $5769: $02
    nop                                           ; $576a: $00
    nop                                           ; $576b: $00
    inc bc                                        ; $576c: $03
    nop                                           ; $576d: $00
    inc c                                         ; $576e: $0c
    nop                                           ; $576f: $00
    dec c                                         ; $5770: $0d
    nop                                           ; $5771: $00
    ld c, $00                                     ; $5772: $0e $00
    nop                                           ; $5774: $00
    rrca                                          ; $5775: $0f
    nop                                           ; $5776: $00
    dec d                                         ; $5777: $15
    nop                                           ; $5778: $00
    ld d, $00                                     ; $5779: $16 $00
    rla                                           ; $577b: $17
    jr nz, jr_08f_577e                            ; $577c: $20 $00

jr_08f_577e:
    jr jr_08f_57eb                                ; $577e: $18 $6b

    jr nc, jr_08f_579b                            ; $5780: $30 $19

    nop                                           ; $5782: $00
    ld a, [de]                                    ; $5783: $1a
    nop                                           ; $5784: $00
    inc hl                                        ; $5785: $23
    ld [bc], a                                    ; $5786: $02
    nop                                           ; $5787: $00
    inc h                                         ; $5788: $24
    nop                                           ; $5789: $00
    dec h                                         ; $578a: $25
    nop                                           ; $578b: $00
    ld h, $06                                     ; $578c: $26 $06
    nop                                           ; $578e: $00
    ld sp, $0002                                  ; $578f: $31 $02 $00
    ld [hl-], a                                   ; $5792: $32
    nop                                           ; $5793: $00
    inc sp                                        ; $5794: $33
    nop                                           ; $5795: $00
    ld a, $89                                     ; $5796: $3e $89
    jr nz, jr_08f_57b5                            ; $5798: $20 $1b

    nop                                           ; $579a: $00

jr_08f_579b:
    nop                                           ; $579b: $00
    inc e                                         ; $579c: $1c
    nop                                           ; $579d: $00
    daa                                           ; $579e: $27
    nop                                           ; $579f: $00
    jr z, jr_08f_57a2                             ; $57a0: $28 $00

jr_08f_57a2:
    add hl, hl                                    ; $57a2: $29
    nop                                           ; $57a3: $00
    nop                                           ; $57a4: $00
    ld a, [hl+]                                   ; $57a5: $2a
    nop                                           ; $57a6: $00
    inc [hl]                                      ; $57a7: $34
    nop                                           ; $57a8: $00
    dec [hl]                                      ; $57a9: $35
    nop                                           ; $57aa: $00
    ld [hl], $08                                  ; $57ab: $36 $08
    nop                                           ; $57ad: $00
    scf                                           ; $57ae: $37
    nop                                           ; $57af: $00
    ccf                                           ; $57b0: $3f
    and l                                         ; $57b1: $a5
    db $10                                        ; $57b2: $10
    dec e                                         ; $57b3: $1d
    nop                                           ; $57b4: $00

jr_08f_57b5:
    ld e, $00                                     ; $57b5: $1e $00
    nop                                           ; $57b7: $00
    rra                                           ; $57b8: $1f
    nop                                           ; $57b9: $00
    dec hl                                        ; $57ba: $2b
    nop                                           ; $57bb: $00
    inc l                                         ; $57bc: $2c
    nop                                           ; $57bd: $00
    dec l                                         ; $57be: $2d
    ld [bc], a                                    ; $57bf: $02
    nop                                           ; $57c0: $00
    ld l, $00                                     ; $57c1: $2e $00
    jr c, jr_08f_57c5                             ; $57c3: $38 $00

jr_08f_57c5:
    add hl, sp                                    ; $57c5: $39
    ld b, $00                                     ; $57c6: $06 $00
    ld a, [hl-]                                   ; $57c8: $3a
    ld [$4000], sp                                ; $57c9: $08 $00 $40
    nop                                           ; $57cc: $00
    ld b, c                                       ; $57cd: $41
    jp Jump_000_2000                              ; $57ce: $c3 $00 $20


    nop                                           ; $57d1: $00
    ld hl, $0008                                  ; $57d2: $21 $08 $00
    ld [hl+], a                                   ; $57d5: $22
    nop                                           ; $57d6: $00
    cpl                                           ; $57d7: $2f
    ld d, h                                       ; $57d8: $54
    db $10                                        ; $57d9: $10
    jr nc, jr_08f_57dc                            ; $57da: $30 $00

jr_08f_57dc:
    dec sp                                        ; $57dc: $3b
    jr nz, jr_08f_57df                            ; $57dd: $20 $00

jr_08f_57df:
    inc a                                         ; $57df: $3c
    ld b, $00                                     ; $57e0: $06 $00
    dec a                                         ; $57e2: $3d
    nop                                           ; $57e3: $00
    ld b, d                                       ; $57e4: $42
    nop                                           ; $57e5: $00
    ld b, e                                       ; $57e6: $43
    add b                                         ; $57e7: $80
    rst $18                                       ; $57e8: $df
    nop                                           ; $57e9: $00
    ld b, h                                       ; $57ea: $44

jr_08f_57eb:
    nop                                           ; $57eb: $00
    ld b, l                                       ; $57ec: $45
    nop                                           ; $57ed: $00
    ld b, [hl]                                    ; $57ee: $46
    nop                                           ; $57ef: $00
    ld c, h                                       ; $57f0: $4c
    ld [$4d00], sp                                ; $57f1: $08 $00 $4d
    nop                                           ; $57f4: $00
    ld c, [hl]                                    ; $57f5: $4e
    ld b, $00                                     ; $57f6: $06 $00
    ld d, l                                       ; $57f8: $55
    nop                                           ; $57f9: $00
    ld d, [hl]                                    ; $57fa: $56
    nop                                           ; $57fb: $00
    nop                                           ; $57fc: $00
    ld d, a                                       ; $57fd: $57
    nop                                           ; $57fe: $00
    ld e, b                                       ; $57ff: $58
    nop                                           ; $5800: $00
    ld h, e                                       ; $5801: $63
    nop                                           ; $5802: $00
    ld h, h                                       ; $5803: $64
    adc b                                         ; $5804: $88
    ei                                            ; $5805: $fb
    db $10                                        ; $5806: $10
    ld b, a                                       ; $5807: $47
    nop                                           ; $5808: $00
    ld c, b                                       ; $5809: $48
    ld c, [hl]                                    ; $580a: $4e
    nop                                           ; $580b: $00
    ld c, a                                       ; $580c: $4f
    nop                                           ; $580d: $00
    ld d, b                                       ; $580e: $50
    nop                                           ; $580f: $00
    nop                                           ; $5810: $00
    ld d, c                                       ; $5811: $51
    nop                                           ; $5812: $00
    ld e, c                                       ; $5813: $59
    nop                                           ; $5814: $00
    ld e, d                                       ; $5815: $5a
    nop                                           ; $5816: $00
    ld e, e                                       ; $5817: $5b
    ld [$5c00], sp                                ; $5818: $08 $00 $5c
    nop                                           ; $581b: $00
    ld h, l                                       ; $581c: $65
    dec d                                         ; $581d: $15
    ld hl, $0049                                  ; $581e: $21 $49 $00
    ld c, d                                       ; $5821: $4a
    jr nz, jr_08f_5824                            ; $5822: $20 $00

jr_08f_5824:
    ld d, d                                       ; $5824: $52
    ld d, h                                       ; $5825: $54
    jr nz, jr_08f_584c                            ; $5826: $20 $24

    nop                                           ; $5828: $00
    ld e, l                                       ; $5829: $5d
    nop                                           ; $582a: $00
    ld e, [hl]                                    ; $582b: $5e
    jr nz, jr_08f_582e                            ; $582c: $20 $00

jr_08f_582e:
    ld e, a                                       ; $582e: $5f
    cpl                                           ; $582f: $2f
    ld b, c                                       ; $5830: $41
    ld c, e                                       ; $5831: $4b
    nop                                           ; $5832: $00
    ld d, e                                       ; $5833: $53
    nop                                           ; $5834: $00
    ld d, h                                       ; $5835: $54
    add d                                         ; $5836: $82
    ld e, d                                       ; $5837: $5a
    db $10                                        ; $5838: $10
    ld h, b                                       ; $5839: $60
    nop                                           ; $583a: $00
    ld h, c                                       ; $583b: $61
    nop                                           ; $583c: $00
    ld h, d                                       ; $583d: $62
    jr c, jr_08f_58b1                             ; $583e: $38 $71

    ld h, [hl]                                    ; $5840: $66
    nop                                           ; $5841: $00
    nop                                           ; $5842: $00
    ld h, a                                       ; $5843: $67
    nop                                           ; $5844: $00
    ld l, b                                       ; $5845: $68
    nop                                           ; $5846: $00
    ld l, e                                       ; $5847: $6b
    nop                                           ; $5848: $00
    ld l, h                                       ; $5849: $6c
    add e                                         ; $584a: $83
    ld d, d                                       ; $584b: $52

jr_08f_584c:
    sub c                                         ; $584c: $91
    ld l, c                                       ; $584d: $69
    nop                                           ; $584e: $00
    ld l, d                                       ; $584f: $6a
    nop                                           ; $5850: $00
    ld l, l                                       ; $5851: $6d
    ld l, h                                       ; $5852: $6c
    and c                                         ; $5853: $a1
    add e                                         ; $5854: $83
    ld l, c                                       ; $5855: $69
    ld a, a                                       ; $5856: $7f
    nop                                           ; $5857: $00
    nop                                           ; $5858: $00
    nop                                           ; $5859: $00
    nop                                           ; $585a: $00
    ld bc, $0200                                  ; $585b: $01 $00 $02
    nop                                           ; $585e: $00
    inc bc                                        ; $585f: $03
    nop                                           ; $5860: $00
    inc b                                         ; $5861: $04
    ld c, $00                                     ; $5862: $0e $00
    rrca                                          ; $5864: $0f
    nop                                           ; $5865: $00
    db $10                                        ; $5866: $10
    ld [bc], a                                    ; $5867: $02
    db $10                                        ; $5868: $10
    inc b                                         ; $5869: $04
    nop                                           ; $586a: $00
    nop                                           ; $586b: $00
    dec b                                         ; $586c: $05
    nop                                           ; $586d: $00
    ld b, $00                                     ; $586e: $06 $00
    rlca                                          ; $5870: $07
    nop                                           ; $5871: $00
    ld de, $4000                                  ; $5872: $11 $00 $40
    ld [de], a                                    ; $5875: $12
    ld [de], a                                    ; $5876: $12
    jr nc, jr_08f_5881                            ; $5877: $30 $08

    nop                                           ; $5879: $00
    add hl, bc                                    ; $587a: $09
    nop                                           ; $587b: $00
    ld a, [bc]                                    ; $587c: $0a
    nop                                           ; $587d: $00
    nop                                           ; $587e: $00
    inc de                                        ; $587f: $13
    nop                                           ; $5880: $00

jr_08f_5881:
    inc d                                         ; $5881: $14
    nop                                           ; $5882: $00
    dec d                                         ; $5883: $15
    nop                                           ; $5884: $00
    ld d, $00                                     ; $5885: $16 $00
    ld b, b                                       ; $5887: $40
    dec de                                        ; $5888: $1b
    inc h                                         ; $5889: $24
    nop                                           ; $588a: $00
    dec bc                                        ; $588b: $0b
    nop                                           ; $588c: $00
    inc c                                         ; $588d: $0c
    nop                                           ; $588e: $00
    dec c                                         ; $588f: $0d
    nop                                           ; $5890: $00
    nop                                           ; $5891: $00
    rla                                           ; $5892: $17
    nop                                           ; $5893: $00
    jr jr_08f_5896                                ; $5894: $18 $00

jr_08f_5896:
    add hl, de                                    ; $5896: $19
    nop                                           ; $5897: $00
    ld a, [de]                                    ; $5898: $1a
    nop                                           ; $5899: $00
    ld b, b                                       ; $589a: $40
    inc e                                         ; $589b: $1c
    ld [hl], $00                                  ; $589c: $36 $00
    dec e                                         ; $589e: $1d
    nop                                           ; $589f: $00
    ld e, $00                                     ; $58a0: $1e $00
    rra                                           ; $58a2: $1f
    nop                                           ; $58a3: $00
    nop                                           ; $58a4: $00
    add hl, hl                                    ; $58a5: $29
    nop                                           ; $58a6: $00
    ld a, [hl+]                                   ; $58a7: $2a
    nop                                           ; $58a8: $00
    dec hl                                        ; $58a9: $2b
    nop                                           ; $58aa: $00
    inc l                                         ; $58ab: $2c
    nop                                           ; $58ac: $00
    ld b, b                                       ; $58ad: $40
    inc sp                                        ; $58ae: $33
    ld c, b                                       ; $58af: $48
    nop                                           ; $58b0: $00

jr_08f_58b1:
    jr nz, jr_08f_58b3                            ; $58b1: $20 $00

jr_08f_58b3:
    ld hl, $2200                                  ; $58b3: $21 $00 $22
    nop                                           ; $58b6: $00
    db $10                                        ; $58b7: $10
    dec l                                         ; $58b8: $2d
    nop                                           ; $58b9: $00
    ld l, $5a                                     ; $58ba: $2e $5a
    jr nc, jr_08f_58e1                            ; $58bc: $30 $23

    nop                                           ; $58be: $00
    inc h                                         ; $58bf: $24
    nop                                           ; $58c0: $00
    inc b                                         ; $58c1: $04
    dec h                                         ; $58c2: $25
    nop                                           ; $58c3: $00
    cpl                                           ; $58c4: $2f
    nop                                           ; $58c5: $00
    jr nc, @+$6e                                  ; $58c6: $30 $6c

    jr nc, @+$28                                  ; $58c8: $30 $26

    nop                                           ; $58ca: $00
    ld bc, $0027                                  ; $58cb: $01 $27 $00
    jr z, jr_08f_58d0                             ; $58ce: $28 $00

jr_08f_58d0:
    ld sp, $3200                                  ; $58d0: $31 $00 $32
    ld a, [hl]                                    ; $58d3: $7e
    jr nc, jr_08f_58d6                            ; $58d4: $30 $00

jr_08f_58d6:
    inc [hl]                                      ; $58d6: $34
    nop                                           ; $58d7: $00
    dec [hl]                                      ; $58d8: $35
    nop                                           ; $58d9: $00
    ld [hl], $00                                  ; $58da: $36 $00
    dec sp                                        ; $58dc: $3b
    nop                                           ; $58dd: $00
    ld b, b                                       ; $58de: $40
    inc a                                         ; $58df: $3c
    sub b                                         ; $58e0: $90

jr_08f_58e1:
    jr nz, @+$39                                  ; $58e1: $20 $37

    nop                                           ; $58e3: $00
    jr c, jr_08f_58e6                             ; $58e4: $38 $00

jr_08f_58e6:
    add hl, sp                                    ; $58e6: $39
    nop                                           ; $58e7: $00
    ld b, $3a                                     ; $58e8: $06 $3a
    nop                                           ; $58ea: $00
    dec a                                         ; $58eb: $3d
    nop                                           ; $58ec: $00
    ld a, $a2                                     ; $58ed: $3e $a2
    jr nz, jr_08f_58f7                            ; $58ef: $20 $06

    ld a, b                                       ; $58f1: $78
    add $01                                       ; $58f2: $c6 $01
    nop                                           ; $58f4: $00
    nop                                           ; $58f5: $00
    nop                                           ; $58f6: $00

jr_08f_58f7:
    ld bc, $0200                                  ; $58f7: $01 $00 $02
    nop                                           ; $58fa: $00
    inc bc                                        ; $58fb: $03
    nop                                           ; $58fc: $00
    dec b                                         ; $58fd: $05
    dec c                                         ; $58fe: $0d
    nop                                           ; $58ff: $00
    ld c, $00                                     ; $5900: $0e $00
    rrca                                          ; $5902: $0f
    ld a, [bc]                                    ; $5903: $0a
    nop                                           ; $5904: $00
    dec de                                        ; $5905: $1b
    ld a, [bc]                                    ; $5906: $0a
    nop                                           ; $5907: $00
    nop                                           ; $5908: $00
    inc e                                         ; $5909: $1c
    nop                                           ; $590a: $00
    dec e                                         ; $590b: $1d
    nop                                           ; $590c: $00
    nop                                           ; $590d: $00
    nop                                           ; $590e: $00
    inc b                                         ; $590f: $04
    nop                                           ; $5910: $00
    nop                                           ; $5911: $00
    dec b                                         ; $5912: $05
    nop                                           ; $5913: $00
    ld b, $00                                     ; $5914: $06 $00
    stop                                          ; $5916: $10 $00
    ld de, $4100                                  ; $5918: $11 $00 $41
    ld [de], a                                    ; $591b: $12
    ld a, [bc]                                    ; $591c: $0a
    nop                                           ; $591d: $00
    ld e, $00                                     ; $591e: $1e $00
    rra                                           ; $5920: $1f
    nop                                           ; $5921: $00
    jr nz, @+$1a                                  ; $5922: $20 $18

    stop                                          ; $5924: $10 $00
    rlca                                          ; $5926: $07
    nop                                           ; $5927: $00
    ld [$0900], sp                                ; $5928: $08 $00 $09
    nop                                           ; $592b: $00
    inc de                                        ; $592c: $13
    nop                                           ; $592d: $00
    nop                                           ; $592e: $00
    inc d                                         ; $592f: $14
    nop                                           ; $5930: $00
    dec d                                         ; $5931: $15
    nop                                           ; $5932: $00
    ld d, $00                                     ; $5933: $16 $00
    ld hl, $1000                                  ; $5935: $21 $00 $10
    ld [hl+], a                                   ; $5938: $22
    nop                                           ; $5939: $00
    inc hl                                        ; $593a: $23
    jr nc, jr_08f_594d                            ; $593b: $30 $10

    ld a, [bc]                                    ; $593d: $0a
    nop                                           ; $593e: $00
    dec bc                                        ; $593f: $0b
    nop                                           ; $5940: $00
    nop                                           ; $5941: $00
    inc c                                         ; $5942: $0c
    nop                                           ; $5943: $00
    rla                                           ; $5944: $17
    nop                                           ; $5945: $00
    jr jr_08f_5948                                ; $5946: $18 $00

jr_08f_5948:
    add hl, de                                    ; $5948: $19
    nop                                           ; $5949: $00
    ld bc, $001a                                  ; $594a: $01 $1a $00

jr_08f_594d:
    inc h                                         ; $594d: $24
    nop                                           ; $594e: $00
    dec h                                         ; $594f: $25
    nop                                           ; $5950: $00
    ld h, $48                                     ; $5951: $26 $48
    stop                                          ; $5953: $10 $00
    daa                                           ; $5955: $27
    nop                                           ; $5956: $00
    jr z, jr_08f_5959                             ; $5957: $28 $00

jr_08f_5959:
    add hl, hl                                    ; $5959: $29
    nop                                           ; $595a: $00
    inc sp                                        ; $595b: $33
    nop                                           ; $595c: $00
    nop                                           ; $595d: $00
    inc [hl]                                      ; $595e: $34
    nop                                           ; $595f: $00
    dec [hl]                                      ; $5960: $35
    nop                                           ; $5961: $00
    ld [hl], $00                                  ; $5962: $36 $00
    ld b, e                                       ; $5964: $43
    nop                                           ; $5965: $00
    db $10                                        ; $5966: $10
    ld b, h                                       ; $5967: $44
    nop                                           ; $5968: $00
    ld b, l                                       ; $5969: $45
    ld h, b                                       ; $596a: $60
    db $10                                        ; $596b: $10
    ld a, [hl+]                                   ; $596c: $2a
    nop                                           ; $596d: $00
    dec hl                                        ; $596e: $2b
    nop                                           ; $596f: $00
    nop                                           ; $5970: $00
    inc l                                         ; $5971: $2c
    nop                                           ; $5972: $00
    scf                                           ; $5973: $37
    nop                                           ; $5974: $00
    jr c, jr_08f_5977                             ; $5975: $38 $00

jr_08f_5977:
    add hl, sp                                    ; $5977: $39
    nop                                           ; $5978: $00
    ld bc, $003a                                  ; $5979: $01 $3a $00
    ld b, [hl]                                    ; $597c: $46
    nop                                           ; $597d: $00
    ld b, a                                       ; $597e: $47
    nop                                           ; $597f: $00
    ld c, b                                       ; $5980: $48
    ld a, b                                       ; $5981: $78
    stop                                          ; $5982: $10 $00
    dec l                                         ; $5984: $2d
    nop                                           ; $5985: $00
    ld l, $00                                     ; $5986: $2e $00
    cpl                                           ; $5988: $2f
    nop                                           ; $5989: $00
    dec sp                                        ; $598a: $3b
    nop                                           ; $598b: $00
    nop                                           ; $598c: $00
    inc a                                         ; $598d: $3c
    nop                                           ; $598e: $00
    dec a                                         ; $598f: $3d
    nop                                           ; $5990: $00
    ld a, $00                                     ; $5991: $3e $00
    ld c, c                                       ; $5993: $49
    nop                                           ; $5994: $00
    db $10                                        ; $5995: $10
    ld c, d                                       ; $5996: $4a
    nop                                           ; $5997: $00
    ld c, e                                       ; $5998: $4b
    sub b                                         ; $5999: $90
    db $10                                        ; $599a: $10
    jr nc, jr_08f_599d                            ; $599b: $30 $00

jr_08f_599d:
    ld sp, $0000                                  ; $599d: $31 $00 $00
    ld [hl-], a                                   ; $59a0: $32
    nop                                           ; $59a1: $00
    ccf                                           ; $59a2: $3f
    nop                                           ; $59a3: $00
    ld b, b                                       ; $59a4: $40
    nop                                           ; $59a5: $00
    ld b, c                                       ; $59a6: $41
    nop                                           ; $59a7: $00
    ld bc, $0042                                  ; $59a8: $01 $42 $00
    ld c, h                                       ; $59ab: $4c
    nop                                           ; $59ac: $00
    ld c, l                                       ; $59ad: $4d
    nop                                           ; $59ae: $00
    ld c, [hl]                                    ; $59af: $4e
    xor b                                         ; $59b0: $a8
    stop                                          ; $59b1: $10 $00
    ld c, a                                       ; $59b3: $4f
    nop                                           ; $59b4: $00
    ld d, b                                       ; $59b5: $50
    nop                                           ; $59b6: $00
    ld d, c                                       ; $59b7: $51
    nop                                           ; $59b8: $00
    ld e, h                                       ; $59b9: $5c
    nop                                           ; $59ba: $00
    nop                                           ; $59bb: $00
    ld e, l                                       ; $59bc: $5d
    nop                                           ; $59bd: $00
    ld e, [hl]                                    ; $59be: $5e
    nop                                           ; $59bf: $00
    ld e, a                                       ; $59c0: $5f
    nop                                           ; $59c1: $00
    ld l, h                                       ; $59c2: $6c
    nop                                           ; $59c3: $00
    db $10                                        ; $59c4: $10
    ld l, l                                       ; $59c5: $6d
    nop                                           ; $59c6: $00
    ld l, [hl]                                    ; $59c7: $6e
    ret nz                                        ; $59c8: $c0

    db $10                                        ; $59c9: $10
    ld d, d                                       ; $59ca: $52
    nop                                           ; $59cb: $00
    ld d, e                                       ; $59cc: $53
    nop                                           ; $59cd: $00
    nop                                           ; $59ce: $00
    ld d, h                                       ; $59cf: $54
    nop                                           ; $59d0: $00
    ld h, b                                       ; $59d1: $60
    nop                                           ; $59d2: $00
    ld h, c                                       ; $59d3: $61
    nop                                           ; $59d4: $00
    ld h, d                                       ; $59d5: $62
    nop                                           ; $59d6: $00
    ld bc, $0063                                  ; $59d7: $01 $63 $00
    ld l, a                                       ; $59da: $6f
    nop                                           ; $59db: $00
    ld [hl], b                                    ; $59dc: $70
    nop                                           ; $59dd: $00
    ld [hl], c                                    ; $59de: $71
    ret c                                         ; $59df: $d8

    stop                                          ; $59e0: $10 $00
    ld d, l                                       ; $59e2: $55
    nop                                           ; $59e3: $00
    ld d, [hl]                                    ; $59e4: $56
    nop                                           ; $59e5: $00
    ld d, a                                       ; $59e6: $57
    nop                                           ; $59e7: $00
    ld h, h                                       ; $59e8: $64
    nop                                           ; $59e9: $00
    nop                                           ; $59ea: $00
    ld h, l                                       ; $59eb: $65
    nop                                           ; $59ec: $00
    ld h, [hl]                                    ; $59ed: $66
    nop                                           ; $59ee: $00
    ld h, a                                       ; $59ef: $67
    nop                                           ; $59f0: $00
    ld [hl], d                                    ; $59f1: $72
    nop                                           ; $59f2: $00
    db $10                                        ; $59f3: $10
    ld [hl], e                                    ; $59f4: $73
    nop                                           ; $59f5: $00
    ld [hl], h                                    ; $59f6: $74
    ldh a, [rP1]                                  ; $59f7: $f0 $00
    ld e, b                                       ; $59f9: $58
    nop                                           ; $59fa: $00
    ld e, c                                       ; $59fb: $59
    nop                                           ; $59fc: $00
    nop                                           ; $59fd: $00
    ld e, d                                       ; $59fe: $5a
    nop                                           ; $59ff: $00
    ld e, e                                       ; $5a00: $5b
    nop                                           ; $5a01: $00
    ld l, b                                       ; $5a02: $68
    nop                                           ; $5a03: $00
    ld l, c                                       ; $5a04: $69
    nop                                           ; $5a05: $00
    nop                                           ; $5a06: $00
    ld l, d                                       ; $5a07: $6a
    nop                                           ; $5a08: $00
    ld l, e                                       ; $5a09: $6b
    nop                                           ; $5a0a: $00
    ld [hl], l                                    ; $5a0b: $75
    nop                                           ; $5a0c: $00
    halt                                          ; $5a0d: $76
    nop                                           ; $5a0e: $00
    nop                                           ; $5a0f: $00
    ld [hl], a                                    ; $5a10: $77
    nop                                           ; $5a11: $00
    ld a, b                                       ; $5a12: $78
    nop                                           ; $5a13: $00
    ld a, c                                       ; $5a14: $79
    nop                                           ; $5a15: $00
    ld a, d                                       ; $5a16: $7a
    nop                                           ; $5a17: $00
    nop                                           ; $5a18: $00
    ld a, e                                       ; $5a19: $7b
    nop                                           ; $5a1a: $00
    ld a, h                                       ; $5a1b: $7c
    nop                                           ; $5a1c: $00
    adc b                                         ; $5a1d: $88
    nop                                           ; $5a1e: $00
    adc c                                         ; $5a1f: $89
    nop                                           ; $5a20: $00
    nop                                           ; $5a21: $00
    adc d                                         ; $5a22: $8a
    nop                                           ; $5a23: $00
    adc e                                         ; $5a24: $8b
    nop                                           ; $5a25: $00
    sbc b                                         ; $5a26: $98
    nop                                           ; $5a27: $00
    sbc c                                         ; $5a28: $99
    nop                                           ; $5a29: $00
    nop                                           ; $5a2a: $00
    sbc d                                         ; $5a2b: $9a
    nop                                           ; $5a2c: $00
    sbc e                                         ; $5a2d: $9b
    nop                                           ; $5a2e: $00
    ld a, l                                       ; $5a2f: $7d
    nop                                           ; $5a30: $00
    ld a, [hl]                                    ; $5a31: $7e
    nop                                           ; $5a32: $00
    nop                                           ; $5a33: $00
    ld a, a                                       ; $5a34: $7f
    nop                                           ; $5a35: $00
    add b                                         ; $5a36: $80
    nop                                           ; $5a37: $00
    adc h                                         ; $5a38: $8c
    nop                                           ; $5a39: $00
    adc l                                         ; $5a3a: $8d
    nop                                           ; $5a3b: $00
    nop                                           ; $5a3c: $00
    adc [hl]                                      ; $5a3d: $8e
    nop                                           ; $5a3e: $00
    adc a                                         ; $5a3f: $8f
    nop                                           ; $5a40: $00
    sbc h                                         ; $5a41: $9c
    nop                                           ; $5a42: $00
    sbc l                                         ; $5a43: $9d
    nop                                           ; $5a44: $00
    nop                                           ; $5a45: $00
    sbc [hl]                                      ; $5a46: $9e
    nop                                           ; $5a47: $00
    sbc a                                         ; $5a48: $9f
    nop                                           ; $5a49: $00
    add c                                         ; $5a4a: $81
    nop                                           ; $5a4b: $00
    add d                                         ; $5a4c: $82
    nop                                           ; $5a4d: $00
    nop                                           ; $5a4e: $00
    add e                                         ; $5a4f: $83
    nop                                           ; $5a50: $00
    add h                                         ; $5a51: $84
    nop                                           ; $5a52: $00
    sub b                                         ; $5a53: $90
    nop                                           ; $5a54: $00
    sub c                                         ; $5a55: $91
    nop                                           ; $5a56: $00
    nop                                           ; $5a57: $00
    sub d                                         ; $5a58: $92
    nop                                           ; $5a59: $00
    sub e                                         ; $5a5a: $93
    nop                                           ; $5a5b: $00
    and b                                         ; $5a5c: $a0
    nop                                           ; $5a5d: $00
    and c                                         ; $5a5e: $a1
    nop                                           ; $5a5f: $00
    db $10                                        ; $5a60: $10
    and d                                         ; $5a61: $a2
    nop                                           ; $5a62: $00
    and e                                         ; $5a63: $a3
    ld d, b                                       ; $5a64: $50
    ld bc, $0085                                  ; $5a65: $01 $85 $00
    add [hl]                                      ; $5a68: $86
    nop                                           ; $5a69: $00
    nop                                           ; $5a6a: $00
    add a                                         ; $5a6b: $87
    nop                                           ; $5a6c: $00
    sub h                                         ; $5a6d: $94
    nop                                           ; $5a6e: $00
    sub l                                         ; $5a6f: $95
    nop                                           ; $5a70: $00
    sub [hl]                                      ; $5a71: $96
    nop                                           ; $5a72: $00
    ld b, h                                       ; $5a73: $44
    sub a                                         ; $5a74: $97
    inc c                                         ; $5a75: $0c
    nop                                           ; $5a76: $00
    and h                                         ; $5a77: $a4
    nop                                           ; $5a78: $00
    and l                                         ; $5a79: $a5
    ld l, b                                       ; $5a7a: $68
    ld de, $00a6                                  ; $5a7b: $11 $a6 $00
    nop                                           ; $5a7e: $00
    and a                                         ; $5a7f: $a7
    nop                                           ; $5a80: $00
    xor b                                         ; $5a81: $a8
    nop                                           ; $5a82: $00
    or d                                          ; $5a83: $b2
    nop                                           ; $5a84: $00
    or e                                          ; $5a85: $b3
    nop                                           ; $5a86: $00
    nop                                           ; $5a87: $00
    or h                                          ; $5a88: $b4
    nop                                           ; $5a89: $00
    or l                                          ; $5a8a: $b5
    nop                                           ; $5a8b: $00
    jp nz, $c300                                  ; $5a8c: $c2 $00 $c3

    nop                                           ; $5a8f: $00
    ld b, b                                       ; $5a90: $40
    call nz, Call_000_1180                        ; $5a91: $c4 $80 $11
    xor c                                         ; $5a94: $a9
    nop                                           ; $5a95: $00
    xor d                                         ; $5a96: $aa
    nop                                           ; $5a97: $00
    xor e                                         ; $5a98: $ab
    nop                                           ; $5a99: $00
    nop                                           ; $5a9a: $00
    or [hl]                                       ; $5a9b: $b6
    nop                                           ; $5a9c: $00
    or a                                          ; $5a9d: $b7
    nop                                           ; $5a9e: $00
    cp b                                          ; $5a9f: $b8
    nop                                           ; $5aa0: $00
    cp c                                          ; $5aa1: $b9
    nop                                           ; $5aa2: $00
    inc b                                         ; $5aa3: $04
    push bc                                       ; $5aa4: $c5
    nop                                           ; $5aa5: $00
    add $00                                       ; $5aa6: $c6 $00
    rst $00                                       ; $5aa8: $c7
    sbc b                                         ; $5aa9: $98
    ld de, $00ac                                  ; $5aaa: $11 $ac $00
    nop                                           ; $5aad: $00
    xor l                                         ; $5aae: $ad
    nop                                           ; $5aaf: $00
    xor [hl]                                      ; $5ab0: $ae
    nop                                           ; $5ab1: $00
    cp d                                          ; $5ab2: $ba
    nop                                           ; $5ab3: $00
    cp e                                          ; $5ab4: $bb
    nop                                           ; $5ab5: $00
    nop                                           ; $5ab6: $00
    cp h                                          ; $5ab7: $bc
    nop                                           ; $5ab8: $00
    cp l                                          ; $5ab9: $bd
    nop                                           ; $5aba: $00
    ret z                                         ; $5abb: $c8

    nop                                           ; $5abc: $00
    ret                                           ; $5abd: $c9


    nop                                           ; $5abe: $00
    ld b, b                                       ; $5abf: $40
    jp z, Jump_000_11b0                           ; $5ac0: $ca $b0 $11

    xor a                                         ; $5ac3: $af
    nop                                           ; $5ac4: $00
    or b                                          ; $5ac5: $b0
    nop                                           ; $5ac6: $00
    or c                                          ; $5ac7: $b1
    nop                                           ; $5ac8: $00
    ld bc, $00be                                  ; $5ac9: $01 $be $00
    cp a                                          ; $5acc: $bf
    nop                                           ; $5acd: $00
    ret nz                                        ; $5ace: $c0

    nop                                           ; $5acf: $00
    pop bc                                        ; $5ad0: $c1
    inc c                                         ; $5ad1: $0c
    db $10                                        ; $5ad2: $10
    ld b, b                                       ; $5ad3: $40
    set 1, b                                      ; $5ad4: $cb $c8
    ld de, $00cc                                  ; $5ad6: $11 $cc $00
    call $ce00                                    ; $5ad9: $cd $00 $ce
    nop                                           ; $5adc: $00
    nop                                           ; $5add: $00
    db $d3                                        ; $5ade: $d3
    nop                                           ; $5adf: $00
    call nc, $d500                                ; $5ae0: $d4 $00 $d5
    nop                                           ; $5ae3: $00
    sub $00                                       ; $5ae4: $d6 $00
    inc b                                         ; $5ae6: $04
    db $db                                        ; $5ae7: $db
    nop                                           ; $5ae8: $00
    call c, $dd00                                 ; $5ae9: $dc $00 $dd
    ldh [rSB], a                                  ; $5aec: $e0 $01
    rst $08                                       ; $5aee: $cf
    nop                                           ; $5aef: $00
    nop                                           ; $5af0: $00
    ret nc                                        ; $5af1: $d0

    nop                                           ; $5af2: $00
    pop de                                        ; $5af3: $d1
    nop                                           ; $5af4: $00
    jp nc, $d700                                  ; $5af5: $d2 $00 $d7

    nop                                           ; $5af8: $00
    nop                                           ; $5af9: $00
    ret c                                         ; $5afa: $d8

    nop                                           ; $5afb: $00
    reti                                          ; $5afc: $d9


    nop                                           ; $5afd: $00
    jp c, $de00                                   ; $5afe: $da $00 $de

    nop                                           ; $5b01: $00
    nop                                           ; $5b02: $00
    rst $18                                       ; $5b03: $df
    nop                                           ; $5b04: $00
    ldh [rP1], a                                  ; $5b05: $e0 $00
    pop hl                                        ; $5b07: $e1
    nop                                           ; $5b08: $00
    and c                                         ; $5b09: $a1
    nop                                           ; $5b0a: $00
    jr jr_08f_5b0d                                ; $5b0b: $18 $00

jr_08f_5b0d:
    nop                                           ; $5b0d: $00
    ld bc, $f802                                  ; $5b0e: $01 $02 $f8
    inc h                                         ; $5b11: $24
    ld [hl], b                                    ; $5b12: $70
    ld [bc], a                                    ; $5b13: $02
    nop                                           ; $5b14: $00
    inc bc                                        ; $5b15: $03
    add b                                         ; $5b16: $80
    ld [bc], a                                    ; $5b17: $02
    ld d, b                                       ; $5b18: $50
    inc b                                         ; $5b19: $04
    nop                                           ; $5b1a: $00
    dec b                                         ; $5b1b: $05
    nop                                           ; $5b1c: $00
    ld b, $00                                     ; $5b1d: $06 $00
    rlca                                          ; $5b1f: $07

Call_08f_5b20:
    nop                                           ; $5b20: $00
    nop                                           ; $5b21: $00
    ld [$1200], sp                                ; $5b22: $08 $00 $12
    nop                                           ; $5b25: $00
    inc de                                        ; $5b26: $13
    nop                                           ; $5b27: $00
    inc d                                         ; $5b28: $14
    ld [$1500], sp                                ; $5b29: $08 $00 $15
    nop                                           ; $5b2c: $00
    inc e                                         ; $5b2d: $1c
    ld [de], a                                    ; $5b2e: $12
    nop                                           ; $5b2f: $00
    add hl, bc                                    ; $5b30: $09
    nop                                           ; $5b31: $00
    ld a, [bc]                                    ; $5b32: $0a
    ld [bc], a                                    ; $5b33: $02
    nop                                           ; $5b34: $00
    dec bc                                        ; $5b35: $0b
    nop                                           ; $5b36: $00
    ld d, $00                                     ; $5b37: $16 $00
    rla                                           ; $5b39: $17
    ld [$1800], sp                                ; $5b3a: $08 $00 $18
    add d                                         ; $5b3d: $82
    ld [de], a                                    ; $5b3e: $12
    db $10                                        ; $5b3f: $10
    inc c                                         ; $5b40: $0c
    nop                                           ; $5b41: $00
    dec c                                         ; $5b42: $0d
    nop                                           ; $5b43: $00
    ld c, $04                                     ; $5b44: $0e $04
    jr nz, jr_08f_5b61                            ; $5b46: $20 $19

    add b                                         ; $5b48: $80
    inc h                                         ; $5b49: $24
    db $10                                        ; $5b4a: $10
    rrca                                          ; $5b4b: $0f
    nop                                           ; $5b4c: $00
    stop                                          ; $5b4d: $10 $00
    ld de, $1a00                                  ; $5b4f: $11 $00 $1a
    and b                                         ; $5b52: $a0
    inc b                                         ; $5b53: $04
    db $10                                        ; $5b54: $10
    dec de                                        ; $5b55: $1b
    ld [hl], $10                                  ; $5b56: $36 $10
    dec e                                         ; $5b58: $1d
    nop                                           ; $5b59: $00
    ld e, $00                                     ; $5b5a: $1e $00
    rra                                           ; $5b5c: $1f
    nop                                           ; $5b5d: $00
    nop                                           ; $5b5e: $00
    add hl, hl                                    ; $5b5f: $29
    nop                                           ; $5b60: $00

jr_08f_5b61:
    ld a, [hl+]                                   ; $5b61: $2a
    nop                                           ; $5b62: $00
    daa                                           ; $5b63: $27
    nop                                           ; $5b64: $00
    dec hl                                        ; $5b65: $2b
    add b                                         ; $5b66: $80
    ld c, b                                       ; $5b67: $48
    db $10                                        ; $5b68: $10
    jr nz, jr_08f_5b6b                            ; $5b69: $20 $00

jr_08f_5b6b:
    ld hl, $2200                                  ; $5b6b: $21 $00 $22
    nop                                           ; $5b6e: $00
    inc l                                         ; $5b6f: $2c
    nop                                           ; $5b70: $00
    nop                                           ; $5b71: $00
    dec l                                         ; $5b72: $2d
    nop                                           ; $5b73: $00
    ld l, $00                                     ; $5b74: $2e $00
    cpl                                           ; $5b76: $2f
    nop                                           ; $5b77: $00
    dec [hl]                                      ; $5b78: $35
    add b                                         ; $5b79: $80
    ld l, h                                       ; $5b7a: $6c
    nop                                           ; $5b7b: $00
    inc hl                                        ; $5b7c: $23
    nop                                           ; $5b7d: $00
    inc h                                         ; $5b7e: $24
    nop                                           ; $5b7f: $00
    dec h                                         ; $5b80: $25
    nop                                           ; $5b81: $00
    jr nc, jr_08f_5b84                            ; $5b82: $30 $00

jr_08f_5b84:
    nop                                           ; $5b84: $00
    ld sp, $3200                                  ; $5b85: $31 $00 $32
    nop                                           ; $5b88: $00
    inc sp                                        ; $5b89: $33
    nop                                           ; $5b8a: $00
    ld [hl], $a8                                  ; $5b8b: $36 $a8
    ld a, [hl]                                    ; $5b8d: $7e
    nop                                           ; $5b8e: $00
    ld h, $2e                                     ; $5b8f: $26 $2e
    nop                                           ; $5b91: $00
    jr z, jr_08f_5b98                             ; $5b92: $28 $04

    jr nz, jr_08f_5bca                            ; $5b94: $20 $34

    nop                                           ; $5b96: $00
    scf                                           ; $5b97: $37

jr_08f_5b98:
    and d                                         ; $5b98: $a2
    sub b                                         ; $5b99: $90
    nop                                           ; $5b9a: $00
    jr c, jr_08f_5c09                             ; $5b9b: $38 $6c

    jr nc, jr_08f_5be1                            ; $5b9d: $30 $42

    nop                                           ; $5b9f: $00
    ld b, e                                       ; $5ba0: $43
    sub b                                         ; $5ba1: $90
    db $10                                        ; $5ba2: $10
    add hl, sp                                    ; $5ba3: $39
    nop                                           ; $5ba4: $00
    nop                                           ; $5ba5: $00
    ld a, [hl-]                                   ; $5ba6: $3a
    nop                                           ; $5ba7: $00
    dec sp                                        ; $5ba8: $3b
    nop                                           ; $5ba9: $00
    ld b, h                                       ; $5baa: $44
    nop                                           ; $5bab: $00
    ld b, l                                       ; $5bac: $45
    ld [$4600], sp                                ; $5bad: $08 $00 $46
    nop                                           ; $5bb0: $00
    ld b, a                                       ; $5bb1: $47
    and d                                         ; $5bb2: $a2
    db $10                                        ; $5bb3: $10
    inc a                                         ; $5bb4: $3c
    nop                                           ; $5bb5: $00
    dec a                                         ; $5bb6: $3d
    ld [$3e00], sp                                ; $5bb7: $08 $00 $3e
    nop                                           ; $5bba: $00
    ld c, b                                       ; $5bbb: $48
    ld a, [hl-]                                   ; $5bbc: $3a
    nop                                           ; $5bbd: $00
    ld c, c                                       ; $5bbe: $49
    nop                                           ; $5bbf: $00
    ld c, d                                       ; $5bc0: $4a
    add b                                         ; $5bc1: $80
    or h                                          ; $5bc2: $b4
    db $10                                        ; $5bc3: $10
    ccf                                           ; $5bc4: $3f
    nop                                           ; $5bc5: $00
    ld b, b                                       ; $5bc6: $40
    nop                                           ; $5bc7: $00
    ld b, c                                       ; $5bc8: $41
    nop                                           ; $5bc9: $00

jr_08f_5bca:
    ld c, e                                       ; $5bca: $4b
    and d                                         ; $5bcb: $a2
    and [hl]                                      ; $5bcc: $a6
    db $10                                        ; $5bcd: $10
    ld c, h                                       ; $5bce: $4c
    add $00                                       ; $5bcf: $c6 $00
    ld c, l                                       ; $5bd1: $4d
    nop                                           ; $5bd2: $00
    ld c, [hl]                                    ; $5bd3: $4e
    ld [bc], a                                    ; $5bd4: $02
    ld d, b                                       ; $5bd5: $50
    ld c, a                                       ; $5bd6: $4f
    nop                                           ; $5bd7: $00
    nop                                           ; $5bd8: $00
    add h                                         ; $5bd9: $84
    nop                                           ; $5bda: $00
    nop                                           ; $5bdb: $00
    nop                                           ; $5bdc: $00
    nop                                           ; $5bdd: $00
    ld bc, $0200                                  ; $5bde: $01 $00 $02

jr_08f_5be1:
    nop                                           ; $5be1: $00
    inc bc                                        ; $5be2: $03
    nop                                           ; $5be3: $00
    nop                                           ; $5be4: $00
    stop                                          ; $5be5: $10 $00
    ld de, $1200                                  ; $5be7: $11 $00 $12
    nop                                           ; $5bea: $00
    inc de                                        ; $5beb: $13
    nop                                           ; $5bec: $00
    nop                                           ; $5bed: $00
    dec e                                         ; $5bee: $1d
    nop                                           ; $5bef: $00
    ld e, $00                                     ; $5bf0: $1e $00
    rra                                           ; $5bf2: $1f
    nop                                           ; $5bf3: $00
    inc b                                         ; $5bf4: $04
    nop                                           ; $5bf5: $00
    nop                                           ; $5bf6: $00
    dec b                                         ; $5bf7: $05
    nop                                           ; $5bf8: $00
    ld b, $00                                     ; $5bf9: $06 $00
    rlca                                          ; $5bfb: $07
    nop                                           ; $5bfc: $00
    inc d                                         ; $5bfd: $14
    nop                                           ; $5bfe: $00
    nop                                           ; $5bff: $00
    dec d                                         ; $5c00: $15
    nop                                           ; $5c01: $00
    ld d, $00                                     ; $5c02: $16 $00
    rla                                           ; $5c04: $17
    nop                                           ; $5c05: $00
    jr nz, jr_08f_5c08                            ; $5c06: $20 $00

jr_08f_5c08:
    nop                                           ; $5c08: $00

jr_08f_5c09:
    ld hl, $2200                                  ; $5c09: $21 $00 $22
    nop                                           ; $5c0c: $00
    ld [$0900], sp                                ; $5c0d: $08 $00 $09
    nop                                           ; $5c10: $00
    dec b                                         ; $5c11: $05
    ld a, [bc]                                    ; $5c12: $0a
    nop                                           ; $5c13: $00
    dec bc                                        ; $5c14: $0b
    nop                                           ; $5c15: $00
    jr jr_08f_5c1c                                ; $5c16: $18 $04

    jr nz, jr_08f_5c3d                            ; $5c18: $20 $23

    stop                                          ; $5c1a: $10 $00

jr_08f_5c1c:
    nop                                           ; $5c1c: $00
    inc h                                         ; $5c1d: $24
    nop                                           ; $5c1e: $00
    inc c                                         ; $5c1f: $0c
    nop                                           ; $5c20: $00
    dec c                                         ; $5c21: $0d
    nop                                           ; $5c22: $00
    ld c, $00                                     ; $5c23: $0e $00
    nop                                           ; $5c25: $00
    rrca                                          ; $5c26: $0f
    nop                                           ; $5c27: $00
    add hl, de                                    ; $5c28: $19
    nop                                           ; $5c29: $00
    ld a, [de]                                    ; $5c2a: $1a
    nop                                           ; $5c2b: $00
    dec de                                        ; $5c2c: $1b
    nop                                           ; $5c2d: $00
    inc d                                         ; $5c2e: $14
    inc e                                         ; $5c2f: $1c
    nop                                           ; $5c30: $00
    dec h                                         ; $5c31: $25
    stop                                          ; $5c32: $10 $00
    ld h, $2c                                     ; $5c34: $26 $2c
    nop                                           ; $5c36: $00
    daa                                           ; $5c37: $27
    nop                                           ; $5c38: $00
    nop                                           ; $5c39: $00
    jr z, jr_08f_5c3c                             ; $5c3a: $28 $00

jr_08f_5c3c:
    add hl, hl                                    ; $5c3c: $29

jr_08f_5c3d:
    nop                                           ; $5c3d: $00
    ld sp, $3200                                  ; $5c3e: $31 $00 $32
    nop                                           ; $5c41: $00
    ld b, $33                                     ; $5c42: $06 $33
    nop                                           ; $5c44: $00
    inc [hl]                                      ; $5c45: $34
    nop                                           ; $5c46: $00
    inc a                                         ; $5c47: $3c
    stop                                          ; $5c48: $10 $00
    inc l                                         ; $5c4a: $2c
    jr jr_08f_5c77                                ; $5c4b: $18 $2a

    ld [$2b00], sp                                ; $5c4d: $08 $00 $2b
    nop                                           ; $5c50: $00
    dec [hl]                                      ; $5c51: $35
    inc [hl]                                      ; $5c52: $34
    nop                                           ; $5c53: $00
    ld [hl], $00                                  ; $5c54: $36 $00
    scf                                           ; $5c56: $37
    ld [$3d00], sp                                ; $5c57: $08 $00 $3d
    nop                                           ; $5c5a: $00
    ld a, $2c                                     ; $5c5b: $3e $2c
    jr nz, jr_08f_5c8b                            ; $5c5d: $20 $2c

    nop                                           ; $5c5f: $00
    dec l                                         ; $5c60: $2d
    ret nc                                        ; $5c61: $d0

    inc b                                         ; $5c62: $04
    nop                                           ; $5c63: $00
    ld [$3808], sp                                ; $5c64: $08 $08 $38
    ld [$2410], sp                                ; $5c67: $08 $10 $24
    nop                                           ; $5c6a: $00
    ld l, $00                                     ; $5c6b: $2e $00
    db $10                                        ; $5c6d: $10
    cpl                                           ; $5c6e: $2f
    nop                                           ; $5c6f: $00
    jr nc, jr_08f_5c76                            ; $5c70: $30 $04

    nop                                           ; $5c72: $00
    add hl, sp                                    ; $5c73: $39
    nop                                           ; $5c74: $00
    ld a, [hl-]                                   ; $5c75: $3a

jr_08f_5c76:
    nop                                           ; $5c76: $00

jr_08f_5c77:
    ld b, b                                       ; $5c77: $40
    dec sp                                        ; $5c78: $3b
    inc c                                         ; $5c79: $0c
    jr nz, jr_08f_5cbb                            ; $5c7a: $20 $3f

    nop                                           ; $5c7c: $00
    ld [bc], a                                    ; $5c7d: $02
    ld bc, $0041                                  ; $5c7e: $01 $41 $00
    ld bc, $0160                                  ; $5c81: $01 $60 $01
    nop                                           ; $5c84: $00
    ld [bc], a                                    ; $5c85: $02
    nop                                           ; $5c86: $00
    inc bc                                        ; $5c87: $03
    inc b                                         ; $5c88: $04
    nop                                           ; $5c89: $00
    ld h, b                                       ; $5c8a: $60

jr_08f_5c8b:
    dec c                                         ; $5c8b: $0d
    add hl, de                                    ; $5c8c: $19
    ld l, b                                       ; $5c8d: $68
    add hl, hl                                    ; $5c8e: $29
    jr nc, @+$06                                  ; $5c8f: $30 $04

    nop                                           ; $5c91: $00
    dec b                                         ; $5c92: $05
    nop                                           ; $5c93: $00
    ld b, $80                                     ; $5c94: $06 $80
    inc b                                         ; $5c96: $04
    nop                                           ; $5c97: $00
    ld c, $00                                     ; $5c98: $0e $00
    rrca                                          ; $5c9a: $0f
    nop                                           ; $5c9b: $00
    stop                                          ; $5c9c: $10 $00
    ld de, $2280                                  ; $5c9e: $11 $80 $22
    sub b                                         ; $5ca1: $90
    rlca                                          ; $5ca2: $07
    nop                                           ; $5ca3: $00
    ld [$0900], sp                                ; $5ca4: $08 $00 $09
    nop                                           ; $5ca7: $00
    ld [de], a                                    ; $5ca8: $12
    ld [bc], a                                    ; $5ca9: $02
    nop                                           ; $5caa: $00
    inc de                                        ; $5cab: $13
    nop                                           ; $5cac: $00
    inc d                                         ; $5cad: $14
    nop                                           ; $5cae: $00
    dec d                                         ; $5caf: $15
    ld b, h                                       ; $5cb0: $44
    sub b                                         ; $5cb1: $90
    ld a, [bc]                                    ; $5cb2: $0a
    nop                                           ; $5cb3: $00
    nop                                           ; $5cb4: $00
    dec bc                                        ; $5cb5: $0b
    nop                                           ; $5cb6: $00
    inc c                                         ; $5cb7: $0c
    nop                                           ; $5cb8: $00
    ld d, $00                                     ; $5cb9: $16 $00

jr_08f_5cbb:
    rla                                           ; $5cbb: $17
    jr nz, jr_08f_5cbe                            ; $5cbc: $20 $00

jr_08f_5cbe:
    jr jr_08f_5ce2                                ; $5cbe: $18 $22

    and b                                         ; $5cc0: $a0
    add hl, de                                    ; $5cc1: $19
    nop                                           ; $5cc2: $00
    ld a, [de]                                    ; $5cc3: $1a
    nop                                           ; $5cc4: $00
    dec de                                        ; $5cc5: $1b
    ld a, [bc]                                    ; $5cc6: $0a
    nop                                           ; $5cc7: $00
    dec h                                         ; $5cc8: $25
    nop                                           ; $5cc9: $00
    ld h, $02                                     ; $5cca: $26 $02
    nop                                           ; $5ccc: $00
    daa                                           ; $5ccd: $27
    adc b                                         ; $5cce: $88
    sub b                                         ; $5ccf: $90
    inc e                                         ; $5cd0: $1c
    nop                                           ; $5cd1: $00
    nop                                           ; $5cd2: $00
    dec e                                         ; $5cd3: $1d
    nop                                           ; $5cd4: $00
    ld e, $00                                     ; $5cd5: $1e $00
    jr z, jr_08f_5cd9                             ; $5cd7: $28 $00

jr_08f_5cd9:
    add hl, hl                                    ; $5cd9: $29
    ld [$2a00], sp                                ; $5cda: $08 $00 $2a
    nop                                           ; $5cdd: $00
    dec hl                                        ; $5cde: $2b
    xor d                                         ; $5cdf: $aa
    sub b                                         ; $5ce0: $90
    rra                                           ; $5ce1: $1f

jr_08f_5ce2:
    nop                                           ; $5ce2: $00
    jr nz, jr_08f_5ce5                            ; $5ce3: $20 $00

jr_08f_5ce5:
    nop                                           ; $5ce5: $00
    ld hl, $2c00                                  ; $5ce6: $21 $00 $2c
    nop                                           ; $5ce9: $00
    dec l                                         ; $5cea: $2d
    nop                                           ; $5ceb: $00
    ld l, $80                                     ; $5cec: $2e $80
    adc b                                         ; $5cee: $88
    and b                                         ; $5cef: $a0
    ld [hl+], a                                   ; $5cf0: $22
    nop                                           ; $5cf1: $00
    inc hl                                        ; $5cf2: $23
    nop                                           ; $5cf3: $00
    inc h                                         ; $5cf4: $24
    nop                                           ; $5cf5: $00
    cpl                                           ; $5cf6: $2f
    ld [bc], a                                    ; $5cf7: $02
    nop                                           ; $5cf8: $00
    jr nc, jr_08f_5cfb                            ; $5cf9: $30 $00

jr_08f_5cfb:
    ld sp, $3200                                  ; $5cfb: $31 $00 $32
    xor $90                                       ; $5cfe: $ee $90
    ld b, b                                       ; $5d00: $40
    inc c                                         ; $5d01: $0c
    nop                                           ; $5d02: $00
    ld b, c                                       ; $5d03: $41
    nop                                           ; $5d04: $00
    ld b, d                                       ; $5d05: $42
    add $90                                       ; $5d06: $c6 $90
    db $10                                        ; $5d08: $10
    add hl, hl                                    ; $5d09: $29
    ld b, e                                       ; $5d0a: $43
    nop                                           ; $5d0b: $00
    ld de, $0044                                  ; $5d0c: $11 $44 $00
    ld b, l                                       ; $5d0f: $45
    add sp, $50                                   ; $5d10: $e8 $50
    inc sp                                        ; $5d12: $33
    nop                                           ; $5d13: $00
    inc [hl]                                      ; $5d14: $34
    sub [hl]                                      ; $5d15: $96
    nop                                           ; $5d16: $00
    nop                                           ; $5d17: $00
    jr c, jr_08f_5d1a                             ; $5d18: $38 $00

jr_08f_5d1a:
    add hl, sp                                    ; $5d1a: $39
    nop                                           ; $5d1b: $00
    ld a, [hl-]                                   ; $5d1c: $3a
    nop                                           ; $5d1d: $00
    dec sp                                        ; $5d1e: $3b
    nop                                           ; $5d1f: $00
    nop                                           ; $5d20: $00
    ld b, [hl]                                    ; $5d21: $46
    nop                                           ; $5d22: $00
    ld b, a                                       ; $5d23: $47
    nop                                           ; $5d24: $00
    ld c, b                                       ; $5d25: $48
    nop                                           ; $5d26: $00
    ld c, c                                       ; $5d27: $49
    nop                                           ; $5d28: $00
    ld bc, $004e                                  ; $5d29: $01 $4e $00
    ld c, a                                       ; $5d2c: $4f
    nop                                           ; $5d2d: $00
    ld d, b                                       ; $5d2e: $50
    nop                                           ; $5d2f: $00
    ld d, c                                       ; $5d30: $51
    ld [hl], e                                    ; $5d31: $73
    ld de, $3500                                  ; $5d32: $11 $00 $35
    nop                                           ; $5d35: $00
    ld [hl], $00                                  ; $5d36: $36 $00
    scf                                           ; $5d38: $37
    nop                                           ; $5d39: $00
    inc a                                         ; $5d3a: $3c
    nop                                           ; $5d3b: $00
    nop                                           ; $5d3c: $00
    dec a                                         ; $5d3d: $3d
    nop                                           ; $5d3e: $00
    ld a, $00                                     ; $5d3f: $3e $00
    ccf                                           ; $5d41: $3f
    nop                                           ; $5d42: $00
    ld c, d                                       ; $5d43: $4a
    nop                                           ; $5d44: $00
    nop                                           ; $5d45: $00
    ld c, e                                       ; $5d46: $4b
    nop                                           ; $5d47: $00
    ld c, h                                       ; $5d48: $4c
    nop                                           ; $5d49: $00
    ld c, l                                       ; $5d4a: $4d
    nop                                           ; $5d4b: $00
    ld d, d                                       ; $5d4c: $52
    nop                                           ; $5d4d: $00
    inc b                                         ; $5d4e: $04
    ld d, e                                       ; $5d4f: $53
    nop                                           ; $5d50: $00
    ld d, h                                       ; $5d51: $54
    nop                                           ; $5d52: $00
    ld d, l                                       ; $5d53: $55
    sub l                                         ; $5d54: $95
    ld de, $0056                                  ; $5d55: $11 $56 $00
    nop                                           ; $5d58: $00
    ld d, a                                       ; $5d59: $57
    nop                                           ; $5d5a: $00
    ld e, b                                       ; $5d5b: $58
    nop                                           ; $5d5c: $00
    ld h, l                                       ; $5d5d: $65
    nop                                           ; $5d5e: $00
    ld h, [hl]                                    ; $5d5f: $66
    nop                                           ; $5d60: $00
    nop                                           ; $5d61: $00
    ld h, a                                       ; $5d62: $67
    nop                                           ; $5d63: $00
    ld l, b                                       ; $5d64: $68
    nop                                           ; $5d65: $00
    ld l, h                                       ; $5d66: $6c
    nop                                           ; $5d67: $00
    ld l, l                                       ; $5d68: $6d
    nop                                           ; $5d69: $00
    nop                                           ; $5d6a: $00
    ld l, [hl]                                    ; $5d6b: $6e
    nop                                           ; $5d6c: $00
    ld l, a                                       ; $5d6d: $6f
    nop                                           ; $5d6e: $00
    ld [hl], b                                    ; $5d6f: $70
    nop                                           ; $5d70: $00
    ld [hl], c                                    ; $5d71: $71
    nop                                           ; $5d72: $00
    db $10                                        ; $5d73: $10
    ld [hl], d                                    ; $5d74: $72
    nop                                           ; $5d75: $00
    ld [hl], e                                    ; $5d76: $73
    or a                                          ; $5d77: $b7
    ld bc, $0059                                  ; $5d78: $01 $59 $00
    ld e, d                                       ; $5d7b: $5a
    nop                                           ; $5d7c: $00
    inc b                                         ; $5d7d: $04
    ld e, e                                       ; $5d7e: $5b
    nop                                           ; $5d7f: $00
    ld e, h                                       ; $5d80: $5c
    nop                                           ; $5d81: $00
    ld l, c                                       ; $5d82: $69
    xor d                                         ; $5d83: $aa
    or c                                          ; $5d84: $b1
    ld e, l                                       ; $5d85: $5d
    nop                                           ; $5d86: $00
    ld bc, $005e                                  ; $5d87: $01 $5e $00
    ld e, a                                       ; $5d8a: $5f
    nop                                           ; $5d8b: $00
    ld h, b                                       ; $5d8c: $60
    nop                                           ; $5d8d: $00
    ld l, d                                       ; $5d8e: $6a
    call z, $00b1                                 ; $5d8f: $cc $b1 $00
    ld h, c                                       ; $5d92: $61
    nop                                           ; $5d93: $00
    ld h, d                                       ; $5d94: $62
    nop                                           ; $5d95: $00
    ld h, e                                       ; $5d96: $63
    nop                                           ; $5d97: $00
    ld h, h                                       ; $5d98: $64
    nop                                           ; $5d99: $00
    ld b, b                                       ; $5d9a: $40
    ld l, e                                       ; $5d9b: $6b
    xor $b1                                       ; $5d9c: $ee $b1
    nop                                           ; $5d9e: $00
    nop                                           ; $5d9f: $00
    ld [hl], h                                    ; $5da0: $74
    nop                                           ; $5da1: $00
    ld [hl], l                                    ; $5da2: $75
    nop                                           ; $5da3: $00
    ld b, b                                       ; $5da4: $40
    halt                                          ; $5da5: $76
    add d                                         ; $5da6: $82
    add c                                         ; $5da7: $81
    inc bc                                        ; $5da8: $03
    nop                                           ; $5da9: $00
    ld [hl], a                                    ; $5daa: $77
    nop                                           ; $5dab: $00
    ld a, b                                       ; $5dac: $78
    nop                                           ; $5dad: $00
    ld b, b                                       ; $5dae: $40
    ld a, e                                       ; $5daf: $7b
    ld a, [hl-]                                   ; $5db0: $3a
    ret nz                                        ; $5db1: $c0

    ld b, $00                                     ; $5db2: $06 $00
    ld a, c                                       ; $5db4: $79
    nop                                           ; $5db5: $00
    ld a, d                                       ; $5db6: $7a
    nop                                           ; $5db7: $00
    nop                                           ; $5db8: $00
    ld a, h                                       ; $5db9: $7c
    nop                                           ; $5dba: $00
    adc e                                         ; $5dbb: $8b
    nop                                           ; $5dbc: $00
    nop                                           ; $5dbd: $00
    nop                                           ; $5dbe: $00
    nop                                           ; $5dbf: $00
    ld bc, $0200                                  ; $5dc0: $01 $00 $02
    nop                                           ; $5dc3: $00
    inc bc                                        ; $5dc4: $03
    nop                                           ; $5dc5: $00
    nop                                           ; $5dc6: $00
    dec c                                         ; $5dc7: $0d
    nop                                           ; $5dc8: $00
    ld c, $00                                     ; $5dc9: $0e $00
    rrca                                          ; $5dcb: $0f
    nop                                           ; $5dcc: $00
    stop                                          ; $5dcd: $10 $00
    nop                                           ; $5dcf: $00
    dec e                                         ; $5dd0: $1d
    nop                                           ; $5dd1: $00
    nop                                           ; $5dd2: $00
    nop                                           ; $5dd3: $00
    inc b                                         ; $5dd4: $04
    nop                                           ; $5dd5: $00
    dec b                                         ; $5dd6: $05
    nop                                           ; $5dd7: $00
    nop                                           ; $5dd8: $00
    ld b, $00                                     ; $5dd9: $06 $00
    ld de, $1200                                  ; $5ddb: $11 $00 $12
    nop                                           ; $5dde: $00
    inc de                                        ; $5ddf: $13
    nop                                           ; $5de0: $00
    ld b, b                                       ; $5de1: $40
    inc d                                         ; $5de2: $14
    ld [de], a                                    ; $5de3: $12
    db $10                                        ; $5de4: $10
    rlca                                          ; $5de5: $07
    nop                                           ; $5de6: $00
    ld [$0900], sp                                ; $5de7: $08 $00 $09
    nop                                           ; $5dea: $00
    ld bc, $0015                                  ; $5deb: $01 $15 $00
    ld d, $00                                     ; $5dee: $16 $00
    rla                                           ; $5df0: $17
    nop                                           ; $5df1: $00
    jr @+$26                                      ; $5df2: $18 $24

    stop                                          ; $5df4: $10 $00
    ld a, [bc]                                    ; $5df6: $0a
    nop                                           ; $5df7: $00
    dec bc                                        ; $5df8: $0b
    nop                                           ; $5df9: $00
    inc c                                         ; $5dfa: $0c
    nop                                           ; $5dfb: $00
    add hl, de                                    ; $5dfc: $19
    nop                                           ; $5dfd: $00
    nop                                           ; $5dfe: $00
    ld a, [de]                                    ; $5dff: $1a
    nop                                           ; $5e00: $00
    dec de                                        ; $5e01: $1b
    nop                                           ; $5e02: $00
    inc e                                         ; $5e03: $1c
    nop                                           ; $5e04: $00
    ld e, $00                                     ; $5e05: $1e $00
    nop                                           ; $5e07: $00
    rra                                           ; $5e08: $1f
    nop                                           ; $5e09: $00
    jr nz, jr_08f_5e0c                            ; $5e0a: $20 $00

jr_08f_5e0c:
    ld hl, $2200                                  ; $5e0c: $21 $00 $22
    nop                                           ; $5e0f: $00
    nop                                           ; $5e10: $00
    dec l                                         ; $5e11: $2d
    nop                                           ; $5e12: $00
    ld l, $00                                     ; $5e13: $2e $00
    cpl                                           ; $5e15: $2f
    nop                                           ; $5e16: $00
    jr nc, jr_08f_5e19                            ; $5e17: $30 $00

jr_08f_5e19:
    nop                                           ; $5e19: $00
    dec a                                         ; $5e1a: $3d
    nop                                           ; $5e1b: $00
    inc hl                                        ; $5e1c: $23
    nop                                           ; $5e1d: $00
    inc h                                         ; $5e1e: $24
    nop                                           ; $5e1f: $00
    dec h                                         ; $5e20: $25
    nop                                           ; $5e21: $00
    nop                                           ; $5e22: $00
    ld h, $00                                     ; $5e23: $26 $00
    ld sp, $3200                                  ; $5e25: $31 $00 $32
    nop                                           ; $5e28: $00
    inc sp                                        ; $5e29: $33
    nop                                           ; $5e2a: $00
    nop                                           ; $5e2b: $00
    inc [hl]                                      ; $5e2c: $34
    nop                                           ; $5e2d: $00
    ld a, $00                                     ; $5e2e: $3e $00
    daa                                           ; $5e30: $27
    nop                                           ; $5e31: $00
    jr z, jr_08f_5e34                             ; $5e32: $28 $00

jr_08f_5e34:
    nop                                           ; $5e34: $00
    add hl, hl                                    ; $5e35: $29
    nop                                           ; $5e36: $00
    ld a, [hl+]                                   ; $5e37: $2a
    nop                                           ; $5e38: $00
    dec [hl]                                      ; $5e39: $35
    nop                                           ; $5e3a: $00
    ld [hl], $00                                  ; $5e3b: $36 $00
    inc b                                         ; $5e3d: $04
    scf                                           ; $5e3e: $37
    nop                                           ; $5e3f: $00
    jr c, jr_08f_5e42                             ; $5e40: $38 $00

jr_08f_5e42:
    ccf                                           ; $5e42: $3f
    ld l, h                                       ; $5e43: $6c
    nop                                           ; $5e44: $00
    nop                                           ; $5e45: $00
    nop                                           ; $5e46: $00
    nop                                           ; $5e47: $00
    dec hl                                        ; $5e48: $2b
    nop                                           ; $5e49: $00
    inc l                                         ; $5e4a: $2c
    nop                                           ; $5e4b: $00
    add hl, sp                                    ; $5e4c: $39
    nop                                           ; $5e4d: $00
    ld a, [hl-]                                   ; $5e4e: $3a
    nop                                           ; $5e4f: $00
    jr jr_08f_5e8d                                ; $5e50: $18 $3b

    nop                                           ; $5e52: $00
    inc a                                         ; $5e53: $3c
    db $10                                        ; $5e54: $10
    db $10                                        ; $5e55: $10
    dec d                                         ; $5e56: $15
    ld [$0040], sp                                ; $5e57: $08 $40 $00
    ld b, c                                       ; $5e5a: $41
    jr nz, jr_08f_5e5d                            ; $5e5b: $20 $00

jr_08f_5e5d:
    ld b, d                                       ; $5e5d: $42
    ld c, $20                                     ; $5e5e: $0e $20
    or d                                          ; $5e60: $b2
    nop                                           ; $5e61: $00
    ld b, c                                       ; $5e62: $41
    nop                                           ; $5e63: $00
    ld bc, $0940                                  ; $5e64: $01 $40 $09
    nop                                           ; $5e67: $00
    ld a, [bc]                                    ; $5e68: $0a
    nop                                           ; $5e69: $00
    dec d                                         ; $5e6a: $15
    ld de, $8848                                  ; $5e6b: $11 $48 $88
    dec e                                         ; $5e6e: $1d
    nop                                           ; $5e6f: $00
    dec bc                                        ; $5e70: $0b
    nop                                           ; $5e71: $00

jr_08f_5e72:
    inc c                                         ; $5e72: $0c
    inc d                                         ; $5e73: $14
    db $10                                        ; $5e74: $10
    ld bc, $0200                                  ; $5e75: $01 $00 $02
    nop                                           ; $5e78: $00
    nop                                           ; $5e79: $00
    inc bc                                        ; $5e7a: $03
    nop                                           ; $5e7b: $00
    inc b                                         ; $5e7c: $04
    nop                                           ; $5e7d: $00
    dec c                                         ; $5e7e: $0d
    nop                                           ; $5e7f: $00
    ld c, $08                                     ; $5e80: $0e $08
    nop                                           ; $5e82: $00
    rrca                                          ; $5e83: $0f
    nop                                           ; $5e84: $00
    db $10                                        ; $5e85: $10
    jr z, jr_08f_5e98                             ; $5e86: $28 $10

    dec b                                         ; $5e88: $05
    nop                                           ; $5e89: $00
    ld b, $00                                     ; $5e8a: $06 $00
    nop                                           ; $5e8c: $00

jr_08f_5e8d:
    rlca                                          ; $5e8d: $07

jr_08f_5e8e:
    nop                                           ; $5e8e: $00
    ld [$1100], sp                                ; $5e8f: $08 $00 $11
    nop                                           ; $5e92: $00
    ld [de], a                                    ; $5e93: $12
    ld [$1300], sp                                ; $5e94: $08 $00 $13
    nop                                           ; $5e97: $00

jr_08f_5e98:
    inc d                                         ; $5e98: $14
    inc d                                         ; $5e99: $14
    jr nz, jr_08f_5eb2                            ; $5e9a: $20 $16

    nop                                           ; $5e9c: $00
    rla                                           ; $5e9d: $17
    jr z, jr_08f_5ea0                             ; $5e9e: $28 $00

jr_08f_5ea0:
    jr jr_08f_5ea4                                ; $5ea0: $18 $02

    jr nc, jr_08f_5ecd                            ; $5ea2: $30 $29

jr_08f_5ea4:
    jr z, @+$12                                   ; $5ea4: $28 $10

    add hl, de                                    ; $5ea6: $19
    nop                                           ; $5ea7: $00
    ld a, [de]                                    ; $5ea8: $1a
    add b                                         ; $5ea9: $80
    ld e, b                                       ; $5eaa: $58
    ld h, b                                       ; $5eab: $60
    dec b                                         ; $5eac: $05
    nop                                           ; $5ead: $00
    dec de                                        ; $5eae: $1b
    nop                                           ; $5eaf: $00
    inc e                                         ; $5eb0: $1c
    nop                                           ; $5eb1: $00

jr_08f_5eb2:
    dec e                                         ; $5eb2: $1d
    nop                                           ; $5eb3: $00
    nop                                           ; $5eb4: $00
    ld hl, $2200                                  ; $5eb5: $21 $00 $22
    nop                                           ; $5eb8: $00
    inc hl                                        ; $5eb9: $23
    nop                                           ; $5eba: $00
    inc h                                         ; $5ebb: $24
    jr nz, jr_08f_5ebe                            ; $5ebc: $20 $00

jr_08f_5ebe:
    ld a, [hl+]                                   ; $5ebe: $2a
    ld d, b                                       ; $5ebf: $50
    db $10                                        ; $5ec0: $10
    ld e, $00                                     ; $5ec1: $1e $00
    rra                                           ; $5ec3: $1f
    nop                                           ; $5ec4: $00
    jr nz, jr_08f_5ec7                            ; $5ec5: $20 $00

jr_08f_5ec7:
    nop                                           ; $5ec7: $00
    dec h                                         ; $5ec8: $25
    nop                                           ; $5ec9: $00
    ld h, $00                                     ; $5eca: $26 $00
    daa                                           ; $5ecc: $27

jr_08f_5ecd:
    nop                                           ; $5ecd: $00
    jr z, jr_08f_5e72                             ; $5ece: $28 $a2

    adc h                                         ; $5ed0: $8c
    db $10                                        ; $5ed1: $10
    dec hl                                        ; $5ed2: $2b
    ld c, h                                       ; $5ed3: $4c
    ld b, b                                       ; $5ed4: $40
    ld sp, $3200                                  ; $5ed5: $31 $00 $32
    and b                                         ; $5ed8: $a0
    ld [hl], b                                    ; $5ed9: $70
    inc sp                                        ; $5eda: $33
    ld [hl+], a                                   ; $5edb: $22
    nop                                           ; $5edc: $00
    inc [hl]                                      ; $5edd: $34
    and b                                         ; $5ede: $a0
    jr nz, jr_08f_5f0d                            ; $5edf: $20 $2c

    nop                                           ; $5ee1: $00
    dec l                                         ; $5ee2: $2d
    and b                                         ; $5ee3: $a0
    nop                                           ; $5ee4: $00
    dec [hl]                                      ; $5ee5: $35
    ld [bc], a                                    ; $5ee6: $02
    nop                                           ; $5ee7: $00
    ld [hl], $00                                  ; $5ee8: $36 $00
    scf                                           ; $5eea: $37
    nop                                           ; $5eeb: $00
    jr c, jr_08f_5e8e                             ; $5eec: $38 $a0

    jr nz, jr_08f_5f1e                            ; $5eee: $20 $2e

    nop                                           ; $5ef0: $00
    nop                                           ; $5ef1: $00
    cpl                                           ; $5ef2: $2f
    nop                                           ; $5ef3: $00
    jr nc, jr_08f_5ef6                            ; $5ef4: $30 $00

jr_08f_5ef6:
    add hl, sp                                    ; $5ef6: $39
    nop                                           ; $5ef7: $00
    ld a, [hl-]                                   ; $5ef8: $3a
    ld [$3b00], sp                                ; $5ef9: $08 $00 $3b
    nop                                           ; $5efc: $00
    inc a                                         ; $5efd: $3c
    or h                                          ; $5efe: $b4
    jr nz, jr_08f_5f3e                            ; $5eff: $20 $3d

    nop                                           ; $5f01: $00
    ld a, $80                                     ; $5f02: $3e $80
    and b                                         ; $5f04: $a0
    ld [hl], b                                    ; $5f05: $70
    ccf                                           ; $5f06: $3f
    nop                                           ; $5f07: $00
    ld b, b                                       ; $5f08: $40
    nop                                           ; $5f09: $00
    ld b, c                                       ; $5f0a: $41
    nop                                           ; $5f0b: $00
    ld c, c                                       ; $5f0c: $49

jr_08f_5f0d:
    ld [hl+], a                                   ; $5f0d: $22
    nop                                           ; $5f0e: $00
    ld c, d                                       ; $5f0f: $4a
    inc b                                         ; $5f10: $04
    nop                                           ; $5f11: $00
    ld c, e                                       ; $5f12: $4b
    nop                                           ; $5f13: $00
    ld d, h                                       ; $5f14: $54
    call c, Call_08f_4210                         ; $5f15: $dc $10 $42
    nop                                           ; $5f18: $00
    nop                                           ; $5f19: $00
    ld b, e                                       ; $5f1a: $43
    nop                                           ; $5f1b: $00
    ld b, h                                       ; $5f1c: $44
    nop                                           ; $5f1d: $00

jr_08f_5f1e:
    ld c, h                                       ; $5f1e: $4c
    nop                                           ; $5f1f: $00
    ld c, l                                       ; $5f20: $4d
    ld [bc], a                                    ; $5f21: $02
    nop                                           ; $5f22: $00
    ld c, [hl]                                    ; $5f23: $4e
    nop                                           ; $5f24: $00
    ld c, a                                       ; $5f25: $4f
    nop                                           ; $5f26: $00
    ld d, l                                       ; $5f27: $55
    add hl, hl                                    ; $5f28: $29
    ld bc, $0045                                  ; $5f29: $01 $45 $00
    nop                                           ; $5f2c: $00
    ld b, [hl]                                    ; $5f2d: $46
    nop                                           ; $5f2e: $00
    ld b, a                                       ; $5f2f: $47
    nop                                           ; $5f30: $00
    ld c, b                                       ; $5f31: $48
    nop                                           ; $5f32: $00
    ld d, b                                       ; $5f33: $50
    nop                                           ; $5f34: $00
    nop                                           ; $5f35: $00
    ld d, c                                       ; $5f36: $51
    nop                                           ; $5f37: $00
    ld d, d                                       ; $5f38: $52
    nop                                           ; $5f39: $00
    ld d, e                                       ; $5f3a: $53
    nop                                           ; $5f3b: $00
    ld d, [hl]                                    ; $5f3c: $56
    ret nz                                        ; $5f3d: $c0

jr_08f_5f3e:
    inc l                                         ; $5f3e: $2c
    ld h, c                                       ; $5f3f: $61
    ld c, h                                       ; $5f40: $4c
    add hl, hl                                    ; $5f41: $29
    cp h                                          ; $5f42: $bc
    inc bc                                        ; $5f43: $03
    nop                                           ; $5f44: $00
    nop                                           ; $5f45: $00
    nop                                           ; $5f46: $00
    ld bc, $0200                                  ; $5f47: $01 $00 $02
    nop                                           ; $5f4a: $00
    inc bc                                        ; $5f4b: $03
    nop                                           ; $5f4c: $00
    nop                                           ; $5f4d: $00
    stop                                          ; $5f4e: $10 $00
    ld de, $1200                                  ; $5f50: $11 $00 $12
    nop                                           ; $5f53: $00
    inc de                                        ; $5f54: $13
    nop                                           ; $5f55: $00
    nop                                           ; $5f56: $00
    jr nz, jr_08f_5f59                            ; $5f57: $20 $00

jr_08f_5f59:
    ld c, $00                                     ; $5f59: $0e $00
    ld hl, $2200                                  ; $5f5b: $21 $00 $22
    nop                                           ; $5f5e: $00
    nop                                           ; $5f5f: $00
    cpl                                           ; $5f60: $2f
    nop                                           ; $5f61: $00
    jr nc, jr_08f_5f64                            ; $5f62: $30 $00

jr_08f_5f64:
    ld sp, $3200                                  ; $5f64: $31 $00 $32
    nop                                           ; $5f67: $00
    nop                                           ; $5f68: $00
    ccf                                           ; $5f69: $3f
    nop                                           ; $5f6a: $00
    ld b, b                                       ; $5f6b: $40
    nop                                           ; $5f6c: $00
    ld b, c                                       ; $5f6d: $41
    nop                                           ; $5f6e: $00
    ld b, d                                       ; $5f6f: $42
    nop                                           ; $5f70: $00
    nop                                           ; $5f71: $00
    ld c, a                                       ; $5f72: $4f
    nop                                           ; $5f73: $00
    ld d, b                                       ; $5f74: $50
    nop                                           ; $5f75: $00
    ld d, c                                       ; $5f76: $51
    nop                                           ; $5f77: $00
    ld d, d                                       ; $5f78: $52
    nop                                           ; $5f79: $00
    nop                                           ; $5f7a: $00
    ld e, a                                       ; $5f7b: $5f
    nop                                           ; $5f7c: $00
    inc b                                         ; $5f7d: $04
    nop                                           ; $5f7e: $00
    dec b                                         ; $5f7f: $05
    nop                                           ; $5f80: $00
    ld b, $00                                     ; $5f81: $06 $00
    nop                                           ; $5f83: $00
    rlca                                          ; $5f84: $07
    nop                                           ; $5f85: $00
    inc d                                         ; $5f86: $14
    nop                                           ; $5f87: $00
    dec d                                         ; $5f88: $15
    nop                                           ; $5f89: $00
    ld d, $00                                     ; $5f8a: $16 $00
    nop                                           ; $5f8c: $00
    rla                                           ; $5f8d: $17
    nop                                           ; $5f8e: $00
    inc hl                                        ; $5f8f: $23
    nop                                           ; $5f90: $00
    inc h                                         ; $5f91: $24
    nop                                           ; $5f92: $00
    dec h                                         ; $5f93: $25
    nop                                           ; $5f94: $00
    nop                                           ; $5f95: $00
    ld h, $00                                     ; $5f96: $26 $00
    inc sp                                        ; $5f98: $33
    nop                                           ; $5f99: $00
    inc [hl]                                      ; $5f9a: $34
    nop                                           ; $5f9b: $00
    dec [hl]                                      ; $5f9c: $35
    nop                                           ; $5f9d: $00
    nop                                           ; $5f9e: $00
    ld [hl], $00                                  ; $5f9f: $36 $00
    ld b, e                                       ; $5fa1: $43
    nop                                           ; $5fa2: $00
    ld b, h                                       ; $5fa3: $44
    nop                                           ; $5fa4: $00
    ld b, l                                       ; $5fa5: $45
    nop                                           ; $5fa6: $00
    nop                                           ; $5fa7: $00
    ld b, [hl]                                    ; $5fa8: $46
    nop                                           ; $5fa9: $00
    ld d, e                                       ; $5faa: $53
    nop                                           ; $5fab: $00
    ld d, h                                       ; $5fac: $54
    nop                                           ; $5fad: $00
    ld d, l                                       ; $5fae: $55
    nop                                           ; $5faf: $00
    nop                                           ; $5fb0: $00
    ld d, [hl]                                    ; $5fb1: $56
    nop                                           ; $5fb2: $00
    ld h, b                                       ; $5fb3: $60
    nop                                           ; $5fb4: $00
    ld [$0900], sp                                ; $5fb5: $08 $00 $09
    nop                                           ; $5fb8: $00
    nop                                           ; $5fb9: $00
    ld a, [bc]                                    ; $5fba: $0a
    nop                                           ; $5fbb: $00
    dec bc                                        ; $5fbc: $0b
    nop                                           ; $5fbd: $00
    jr jr_08f_5fc0                                ; $5fbe: $18 $00

jr_08f_5fc0:
    add hl, de                                    ; $5fc0: $19
    nop                                           ; $5fc1: $00
    nop                                           ; $5fc2: $00
    ld a, [de]                                    ; $5fc3: $1a
    nop                                           ; $5fc4: $00
    dec de                                        ; $5fc5: $1b
    nop                                           ; $5fc6: $00
    daa                                           ; $5fc7: $27
    nop                                           ; $5fc8: $00
    jr z, jr_08f_5fcb                             ; $5fc9: $28 $00

jr_08f_5fcb:
    nop                                           ; $5fcb: $00
    add hl, hl                                    ; $5fcc: $29
    nop                                           ; $5fcd: $00
    ld a, [hl+]                                   ; $5fce: $2a
    nop                                           ; $5fcf: $00
    scf                                           ; $5fd0: $37
    nop                                           ; $5fd1: $00
    jr c, jr_08f_5fd4                             ; $5fd2: $38 $00

jr_08f_5fd4:
    nop                                           ; $5fd4: $00
    add hl, sp                                    ; $5fd5: $39
    nop                                           ; $5fd6: $00
    ld a, [hl-]                                   ; $5fd7: $3a
    nop                                           ; $5fd8: $00
    ld b, a                                       ; $5fd9: $47
    nop                                           ; $5fda: $00
    ld c, b                                       ; $5fdb: $48
    nop                                           ; $5fdc: $00
    nop                                           ; $5fdd: $00
    ld c, c                                       ; $5fde: $49
    nop                                           ; $5fdf: $00
    ld c, d                                       ; $5fe0: $4a
    nop                                           ; $5fe1: $00
    ld d, a                                       ; $5fe2: $57
    nop                                           ; $5fe3: $00
    ld e, b                                       ; $5fe4: $58
    nop                                           ; $5fe5: $00
    nop                                           ; $5fe6: $00
    ld e, c                                       ; $5fe7: $59
    nop                                           ; $5fe8: $00
    ld e, d                                       ; $5fe9: $5a
    nop                                           ; $5fea: $00
    ld h, c                                       ; $5feb: $61
    nop                                           ; $5fec: $00
    inc c                                         ; $5fed: $0c
    nop                                           ; $5fee: $00
    ld b, b                                       ; $5fef: $40
    dec c                                         ; $5ff0: $0d
    adc b                                         ; $5ff1: $88
    nop                                           ; $5ff2: $00
    rrca                                          ; $5ff3: $0f
    nop                                           ; $5ff4: $00
    inc e                                         ; $5ff5: $1c
    nop                                           ; $5ff6: $00
    dec e                                         ; $5ff7: $1d
    nop                                           ; $5ff8: $00
    nop                                           ; $5ff9: $00
    ld e, $00                                     ; $5ffa: $1e $00
    rra                                           ; $5ffc: $1f
    nop                                           ; $5ffd: $00
    dec hl                                        ; $5ffe: $2b
    nop                                           ; $5fff: $00
    inc l                                         ; $6000: $2c
    nop                                           ; $6001: $00
    nop                                           ; $6002: $00
    dec l                                         ; $6003: $2d
    nop                                           ; $6004: $00
    ld l, $00                                     ; $6005: $2e $00
    dec sp                                        ; $6007: $3b
    nop                                           ; $6008: $00
    inc a                                         ; $6009: $3c
    nop                                           ; $600a: $00
    nop                                           ; $600b: $00
    dec a                                         ; $600c: $3d
    nop                                           ; $600d: $00
    ld a, $00                                     ; $600e: $3e $00
    ld c, e                                       ; $6010: $4b
    nop                                           ; $6011: $00
    ld c, h                                       ; $6012: $4c
    nop                                           ; $6013: $00
    nop                                           ; $6014: $00
    ld c, l                                       ; $6015: $4d
    nop                                           ; $6016: $00
    ld c, [hl]                                    ; $6017: $4e
    nop                                           ; $6018: $00
    ld e, e                                       ; $6019: $5b
    nop                                           ; $601a: $00
    ld e, h                                       ; $601b: $5c
    nop                                           ; $601c: $00
    nop                                           ; $601d: $00
    ld e, l                                       ; $601e: $5d
    nop                                           ; $601f: $00
    ld e, [hl]                                    ; $6020: $5e
    nop                                           ; $6021: $00
    ld h, d                                       ; $6022: $62
    nop                                           ; $6023: $00
    ld h, e                                       ; $6024: $63
    nop                                           ; $6025: $00
    nop                                           ; $6026: $00
    ld h, h                                       ; $6027: $64
    nop                                           ; $6028: $00
    ld h, l                                       ; $6029: $65
    nop                                           ; $602a: $00
    ld h, [hl]                                    ; $602b: $66
    nop                                           ; $602c: $00
    ld [hl], e                                    ; $602d: $73
    nop                                           ; $602e: $00
    nop                                           ; $602f: $00
    ld [hl], h                                    ; $6030: $74
    nop                                           ; $6031: $00
    ld [hl], l                                    ; $6032: $75
    nop                                           ; $6033: $00
    halt                                          ; $6034: $76
    nop                                           ; $6035: $00
    add e                                         ; $6036: $83
    nop                                           ; $6037: $00
    nop                                           ; $6038: $00
    add h                                         ; $6039: $84
    nop                                           ; $603a: $00
    add l                                         ; $603b: $85
    nop                                           ; $603c: $00
    add [hl]                                      ; $603d: $86
    nop                                           ; $603e: $00
    sub e                                         ; $603f: $93
    nop                                           ; $6040: $00
    nop                                           ; $6041: $00
    sub h                                         ; $6042: $94
    nop                                           ; $6043: $00
    sub l                                         ; $6044: $95
    nop                                           ; $6045: $00
    sub [hl]                                      ; $6046: $96
    nop                                           ; $6047: $00
    and e                                         ; $6048: $a3
    nop                                           ; $6049: $00
    nop                                           ; $604a: $00
    and h                                         ; $604b: $a4
    nop                                           ; $604c: $00
    and l                                         ; $604d: $a5
    nop                                           ; $604e: $00
    and [hl]                                      ; $604f: $a6
    nop                                           ; $6050: $00
    or e                                          ; $6051: $b3
    nop                                           ; $6052: $00
    nop                                           ; $6053: $00
    or h                                          ; $6054: $b4
    nop                                           ; $6055: $00
    or l                                          ; $6056: $b5
    nop                                           ; $6057: $00
    or [hl]                                       ; $6058: $b6
    nop                                           ; $6059: $00
    jp RST_00                                     ; $605a: $c3 $00 $00


    ld h, a                                       ; $605d: $67
    nop                                           ; $605e: $00
    ld l, b                                       ; $605f: $68
    nop                                           ; $6060: $00
    ld l, c                                       ; $6061: $69
    nop                                           ; $6062: $00
    ld l, d                                       ; $6063: $6a
    nop                                           ; $6064: $00
    nop                                           ; $6065: $00
    ld [hl], a                                    ; $6066: $77
    nop                                           ; $6067: $00
    ld a, b                                       ; $6068: $78
    nop                                           ; $6069: $00
    ld a, c                                       ; $606a: $79
    nop                                           ; $606b: $00
    ld a, d                                       ; $606c: $7a
    nop                                           ; $606d: $00
    nop                                           ; $606e: $00
    add a                                         ; $606f: $87
    nop                                           ; $6070: $00
    adc b                                         ; $6071: $88
    nop                                           ; $6072: $00
    adc c                                         ; $6073: $89
    nop                                           ; $6074: $00
    adc d                                         ; $6075: $8a
    nop                                           ; $6076: $00
    nop                                           ; $6077: $00
    sub a                                         ; $6078: $97
    nop                                           ; $6079: $00
    sbc b                                         ; $607a: $98
    nop                                           ; $607b: $00
    sbc c                                         ; $607c: $99
    nop                                           ; $607d: $00
    sbc d                                         ; $607e: $9a
    nop                                           ; $607f: $00
    nop                                           ; $6080: $00
    and a                                         ; $6081: $a7
    nop                                           ; $6082: $00
    xor b                                         ; $6083: $a8
    nop                                           ; $6084: $00
    xor c                                         ; $6085: $a9
    nop                                           ; $6086: $00
    xor d                                         ; $6087: $aa
    nop                                           ; $6088: $00
    nop                                           ; $6089: $00
    or a                                          ; $608a: $b7
    nop                                           ; $608b: $00
    cp b                                          ; $608c: $b8
    nop                                           ; $608d: $00
    cp c                                          ; $608e: $b9
    nop                                           ; $608f: $00
    cp d                                          ; $6090: $ba
    nop                                           ; $6091: $00
    nop                                           ; $6092: $00
    call nz, $6b00                                ; $6093: $c4 $00 $6b
    nop                                           ; $6096: $00
    ld l, h                                       ; $6097: $6c
    nop                                           ; $6098: $00
    ld l, l                                       ; $6099: $6d
    nop                                           ; $609a: $00
    nop                                           ; $609b: $00
    ld l, [hl]                                    ; $609c: $6e
    nop                                           ; $609d: $00
    ld a, e                                       ; $609e: $7b
    nop                                           ; $609f: $00
    ld a, h                                       ; $60a0: $7c
    nop                                           ; $60a1: $00
    ld a, l                                       ; $60a2: $7d
    nop                                           ; $60a3: $00
    nop                                           ; $60a4: $00
    ld a, [hl]                                    ; $60a5: $7e
    nop                                           ; $60a6: $00
    adc e                                         ; $60a7: $8b
    nop                                           ; $60a8: $00
    adc h                                         ; $60a9: $8c
    nop                                           ; $60aa: $00
    adc l                                         ; $60ab: $8d
    nop                                           ; $60ac: $00
    nop                                           ; $60ad: $00
    adc [hl]                                      ; $60ae: $8e
    nop                                           ; $60af: $00
    sbc e                                         ; $60b0: $9b
    nop                                           ; $60b1: $00
    sbc h                                         ; $60b2: $9c
    nop                                           ; $60b3: $00
    sbc l                                         ; $60b4: $9d
    nop                                           ; $60b5: $00
    nop                                           ; $60b6: $00
    sbc [hl]                                      ; $60b7: $9e
    nop                                           ; $60b8: $00
    xor e                                         ; $60b9: $ab
    nop                                           ; $60ba: $00
    xor h                                         ; $60bb: $ac
    nop                                           ; $60bc: $00
    xor l                                         ; $60bd: $ad
    nop                                           ; $60be: $00
    nop                                           ; $60bf: $00
    xor [hl]                                      ; $60c0: $ae
    nop                                           ; $60c1: $00
    cp e                                          ; $60c2: $bb
    nop                                           ; $60c3: $00
    cp h                                          ; $60c4: $bc
    nop                                           ; $60c5: $00
    cp l                                          ; $60c6: $bd
    nop                                           ; $60c7: $00
    nop                                           ; $60c8: $00
    cp [hl]                                       ; $60c9: $be
    nop                                           ; $60ca: $00
    push bc                                       ; $60cb: $c5
    nop                                           ; $60cc: $00
    ld l, a                                       ; $60cd: $6f
    nop                                           ; $60ce: $00
    ld [hl], b                                    ; $60cf: $70
    nop                                           ; $60d0: $00
    nop                                           ; $60d1: $00
    ld [hl], c                                    ; $60d2: $71
    nop                                           ; $60d3: $00
    ld [hl], d                                    ; $60d4: $72
    nop                                           ; $60d5: $00
    ld a, a                                       ; $60d6: $7f
    nop                                           ; $60d7: $00
    add b                                         ; $60d8: $80
    nop                                           ; $60d9: $00
    nop                                           ; $60da: $00
    add c                                         ; $60db: $81
    nop                                           ; $60dc: $00
    add d                                         ; $60dd: $82
    nop                                           ; $60de: $00
    adc a                                         ; $60df: $8f
    nop                                           ; $60e0: $00
    sub b                                         ; $60e1: $90
    nop                                           ; $60e2: $00
    nop                                           ; $60e3: $00
    sub c                                         ; $60e4: $91
    nop                                           ; $60e5: $00
    sub d                                         ; $60e6: $92
    nop                                           ; $60e7: $00
    sbc a                                         ; $60e8: $9f
    nop                                           ; $60e9: $00
    and b                                         ; $60ea: $a0
    nop                                           ; $60eb: $00

Call_08f_60ec:
    nop                                           ; $60ec: $00
    and c                                         ; $60ed: $a1
    nop                                           ; $60ee: $00
    and d                                         ; $60ef: $a2
    nop                                           ; $60f0: $00
    xor a                                         ; $60f1: $af
    nop                                           ; $60f2: $00
    or b                                          ; $60f3: $b0
    nop                                           ; $60f4: $00
    nop                                           ; $60f5: $00
    or c                                          ; $60f6: $b1
    nop                                           ; $60f7: $00
    or d                                          ; $60f8: $b2
    nop                                           ; $60f9: $00
    cp a                                          ; $60fa: $bf
    nop                                           ; $60fb: $00
    ret nz                                        ; $60fc: $c0

    nop                                           ; $60fd: $00
    nop                                           ; $60fe: $00
    pop bc                                        ; $60ff: $c1
    nop                                           ; $6100: $00
    jp nz, $c600                                  ; $6101: $c2 $00 $c6

    nop                                           ; $6104: $00
    rst $00                                       ; $6105: $c7
    nop                                           ; $6106: $00
    nop                                           ; $6107: $00
    ret z                                         ; $6108: $c8

    nop                                           ; $6109: $00
    ret                                           ; $610a: $c9


    nop                                           ; $610b: $00
    jp z, $d700                                   ; $610c: $ca $00 $d7

    nop                                           ; $610f: $00

Call_08f_6110:
    nop                                           ; $6110: $00
    ret c                                         ; $6111: $d8

    nop                                           ; $6112: $00
    reti                                          ; $6113: $d9


    nop                                           ; $6114: $00
    jp c, $e700                                   ; $6115: $da $00 $e7

    nop                                           ; $6118: $00
    nop                                           ; $6119: $00
    add sp, $00                                   ; $611a: $e8 $00
    jp hl                                         ; $611c: $e9


    nop                                           ; $611d: $00
    ld [$f700], a                                 ; $611e: $ea $00 $f7
    nop                                           ; $6121: $00
    nop                                           ; $6122: $00
    ld hl, sp+$00                                 ; $6123: $f8 $00
    ld sp, hl                                     ; $6125: $f9
    nop                                           ; $6126: $00
    ld a, [$0700]                                 ; $6127: $fa $00 $07
    ld bc, $0800                                  ; $612a: $01 $00 $08
    ld bc, $0109                                  ; $612d: $01 $09 $01
    ld a, [bc]                                    ; $6130: $0a
    ld bc, $0117                                  ; $6131: $01 $17 $01
    nop                                           ; $6134: $00
    jr jr_08f_6138                                ; $6135: $18 $01

    add hl, de                                    ; $6137: $19

jr_08f_6138:
    ld bc, $011a                                  ; $6138: $01 $1a $01
    daa                                           ; $613b: $27
    ld bc, $cb00                                  ; $613c: $01 $00 $cb
    nop                                           ; $613f: $00
    call z, $cd00                                 ; $6140: $cc $00 $cd
    nop                                           ; $6143: $00
    adc $00                                       ; $6144: $ce $00
    nop                                           ; $6146: $00
    db $db                                        ; $6147: $db
    nop                                           ; $6148: $00
    call c, $dd00                                 ; $6149: $dc $00 $dd
    nop                                           ; $614c: $00
    sbc $00                                       ; $614d: $de $00
    nop                                           ; $614f: $00
    db $eb                                        ; $6150: $eb
    nop                                           ; $6151: $00
    db $ec                                        ; $6152: $ec
    nop                                           ; $6153: $00
    db $ed                                        ; $6154: $ed
    nop                                           ; $6155: $00
    xor $00                                       ; $6156: $ee $00
    nop                                           ; $6158: $00
    ei                                            ; $6159: $fb
    nop                                           ; $615a: $00
    db $fc                                        ; $615b: $fc
    nop                                           ; $615c: $00
    db $fd                                        ; $615d: $fd
    nop                                           ; $615e: $00
    cp $00                                        ; $615f: $fe $00
    nop                                           ; $6161: $00
    dec bc                                        ; $6162: $0b
    ld bc, $010c                                  ; $6163: $01 $0c $01
    dec c                                         ; $6166: $0d
    ld bc, $010e                                  ; $6167: $01 $0e $01
    nop                                           ; $616a: $00
    dec de                                        ; $616b: $1b
    ld bc, $011c                                  ; $616c: $01 $1c $01
    dec e                                         ; $616f: $1d
    ld bc, $011e                                  ; $6170: $01 $1e $01
    nop                                           ; $6173: $00
    jr z, jr_08f_6177                             ; $6174: $28 $01

    rst $08                                       ; $6176: $cf

jr_08f_6177:
    nop                                           ; $6177: $00
    ret nc                                        ; $6178: $d0

    nop                                           ; $6179: $00
    pop de                                        ; $617a: $d1
    nop                                           ; $617b: $00
    nop                                           ; $617c: $00
    jp nc, $df00                                  ; $617d: $d2 $00 $df

    nop                                           ; $6180: $00
    ldh [rP1], a                                  ; $6181: $e0 $00
    pop hl                                        ; $6183: $e1
    nop                                           ; $6184: $00
    nop                                           ; $6185: $00
    ld [c], a                                     ; $6186: $e2
    nop                                           ; $6187: $00
    rst $28                                       ; $6188: $ef
    nop                                           ; $6189: $00
    ldh a, [rP1]                                  ; $618a: $f0 $00
    pop af                                        ; $618c: $f1
    nop                                           ; $618d: $00
    db $10                                        ; $618e: $10
    ld a, [c]                                     ; $618f: $f2
    nop                                           ; $6190: $00
    rst $38                                       ; $6191: $ff
    dec c                                         ; $6192: $0d
    ld [bc], a                                    ; $6193: $02
    ld bc, $0201                                  ; $6194: $01 $01 $02
    ld bc, $0f00                                  ; $6197: $01 $00 $0f
    ld bc, $0110                                  ; $619a: $01 $10 $01
    ld de, $1201                                  ; $619d: $11 $01 $12
    ld bc, $1f00                                  ; $61a0: $01 $00 $1f
    ld bc, $0120                                  ; $61a3: $01 $20 $01
    ld hl, $2201                                  ; $61a6: $21 $01 $22
    ld bc, $2900                                  ; $61a9: $01 $00 $29
    ld bc, $00d3                                  ; $61ac: $01 $d3 $00
    call nc, $d500                                ; $61af: $d4 $00 $d5
    nop                                           ; $61b2: $00
    nop                                           ; $61b3: $00
    sub $00                                       ; $61b4: $d6 $00
    db $e3                                        ; $61b6: $e3
    nop                                           ; $61b7: $00
    db $e4                                        ; $61b8: $e4
    nop                                           ; $61b9: $00
    push hl                                       ; $61ba: $e5
    nop                                           ; $61bb: $00
    nop                                           ; $61bc: $00
    and $00                                       ; $61bd: $e6 $00
    di                                            ; $61bf: $f3
    nop                                           ; $61c0: $00
    db $f4                                        ; $61c1: $f4
    nop                                           ; $61c2: $00
    push af                                       ; $61c3: $f5
    nop                                           ; $61c4: $00
    nop                                           ; $61c5: $00
    or $00                                        ; $61c6: $f6 $00
    inc bc                                        ; $61c8: $03
    ld bc, $0104                                  ; $61c9: $01 $04 $01
    dec b                                         ; $61cc: $05
    ld bc, $0600                                  ; $61cd: $01 $00 $06
    ld bc, $0113                                  ; $61d0: $01 $13 $01
    inc d                                         ; $61d3: $14
    ld bc, $0115                                  ; $61d4: $01 $15 $01
    nop                                           ; $61d7: $00
    ld d, $01                                     ; $61d8: $16 $01
    inc hl                                        ; $61da: $23
    ld bc, $0124                                  ; $61db: $01 $24 $01
    dec h                                         ; $61de: $25
    ld bc, $2600                                  ; $61df: $01 $00 $26
    ld bc, $012a                                  ; $61e2: $01 $2a $01
    dec hl                                        ; $61e5: $2b
    ld bc, $012c                                  ; $61e6: $01 $2c $01
    nop                                           ; $61e9: $00
    dec l                                         ; $61ea: $2d
    ld bc, $012e                                  ; $61eb: $01 $2e $01
    dec sp                                        ; $61ee: $3b
    ld bc, $013c                                  ; $61ef: $01 $3c $01
    nop                                           ; $61f2: $00
    dec a                                         ; $61f3: $3d
    ld bc, $013e                                  ; $61f4: $01 $3e $01
    ld c, e                                       ; $61f7: $4b
    ld bc, $014c                                  ; $61f8: $01 $4c $01
    nop                                           ; $61fb: $00
    ld c, l                                       ; $61fc: $4d
    ld bc, $014e                                  ; $61fd: $01 $4e $01
    ld e, e                                       ; $6200: $5b
    ld bc, $015c                                  ; $6201: $01 $5c $01
    nop                                           ; $6204: $00
    ld e, l                                       ; $6205: $5d
    ld bc, $015e                                  ; $6206: $01 $5e $01
    ld l, e                                       ; $6209: $6b
    ld bc, $016c                                  ; $620a: $01 $6c $01
    nop                                           ; $620d: $00
    ld l, c                                       ; $620e: $69
    ld bc, $016d                                  ; $620f: $01 $6d $01
    ld a, d                                       ; $6212: $7a
    ld bc, $017b                                  ; $6213: $01 $7b $01
    nop                                           ; $6216: $00
    ld a, h                                       ; $6217: $7c
    ld bc, $017d                                  ; $6218: $01 $7d $01
    adc c                                         ; $621b: $89
    ld bc, $012f                                  ; $621c: $01 $2f $01
    nop                                           ; $621f: $00
    jr nc, @+$03                                  ; $6220: $30 $01

    ld sp, $3201                                  ; $6222: $31 $01 $32
    ld bc, $013f                                  ; $6225: $01 $3f $01
    nop                                           ; $6228: $00
    ld b, b                                       ; $6229: $40
    ld bc, $0141                                  ; $622a: $01 $41 $01
    ld b, d                                       ; $622d: $42
    ld bc, $014f                                  ; $622e: $01 $4f $01
    nop                                           ; $6231: $00
    ld d, b                                       ; $6232: $50
    ld bc, $0151                                  ; $6233: $01 $51 $01
    ld d, d                                       ; $6236: $52
    ld bc, $015f                                  ; $6237: $01 $5f $01
    nop                                           ; $623a: $00
    ld h, b                                       ; $623b: $60
    ld bc, $0161                                  ; $623c: $01 $61 $01
    ld h, d                                       ; $623f: $62
    ld bc, $016e                                  ; $6240: $01 $6e $01
    nop                                           ; $6243: $00
    ld l, a                                       ; $6244: $6f
    ld bc, $0170                                  ; $6245: $01 $70 $01
    ld [hl], c                                    ; $6248: $71
    ld bc, $017e                                  ; $6249: $01 $7e $01
    nop                                           ; $624c: $00
    ld a, a                                       ; $624d: $7f
    ld bc, $0180                                  ; $624e: $01 $80 $01
    ld b, d                                       ; $6251: $42
    nop                                           ; $6252: $00
    adc d                                         ; $6253: $8a
    ld bc, $3300                                  ; $6254: $01 $00 $33
    ld bc, $0134                                  ; $6257: $01 $34 $01
    dec [hl]                                      ; $625a: $35
    ld bc, $0136                                  ; $625b: $01 $36 $01
    nop                                           ; $625e: $00
    ld b, e                                       ; $625f: $43
    ld bc, $0144                                  ; $6260: $01 $44 $01
    ld b, l                                       ; $6263: $45
    ld bc, $0146                                  ; $6264: $01 $46 $01
    nop                                           ; $6267: $00
    ld d, e                                       ; $6268: $53
    ld bc, $0154                                  ; $6269: $01 $54 $01
    ld d, l                                       ; $626c: $55
    ld bc, $0156                                  ; $626d: $01 $56 $01
    nop                                           ; $6270: $00
    ld h, e                                       ; $6271: $63
    ld bc, $0164                                  ; $6272: $01 $64 $01
    ld h, l                                       ; $6275: $65
    ld bc, $0166                                  ; $6276: $01 $66 $01
    nop                                           ; $6279: $00
    ld [hl], d                                    ; $627a: $72
    ld bc, $0173                                  ; $627b: $01 $73 $01
    ld [hl], h                                    ; $627e: $74
    ld bc, $0175                                  ; $627f: $01 $75 $01
    nop                                           ; $6282: $00
    add c                                         ; $6283: $81
    ld bc, $0182                                  ; $6284: $01 $82 $01
    add e                                         ; $6287: $83
    ld bc, $0184                                  ; $6288: $01 $84 $01
    nop                                           ; $628b: $00
    adc e                                         ; $628c: $8b
    ld bc, $0137                                  ; $628d: $01 $37 $01
    jr c, jr_08f_6293                             ; $6290: $38 $01

    add hl, sp                                    ; $6292: $39

jr_08f_6293:
    ld bc, $3a00                                  ; $6293: $01 $00 $3a
    ld bc, $0147                                  ; $6296: $01 $47 $01
    ld c, b                                       ; $6299: $48
    ld bc, $0149                                  ; $629a: $01 $49 $01
    nop                                           ; $629d: $00
    ld c, d                                       ; $629e: $4a
    ld bc, $0157                                  ; $629f: $01 $57 $01
    ld e, b                                       ; $62a2: $58
    ld bc, $0159                                  ; $62a3: $01 $59 $01
    inc b                                         ; $62a6: $04
    ld e, d                                       ; $62a7: $5a
    ld bc, $0167                                  ; $62a8: $01 $67 $01
    ld l, b                                       ; $62ab: $68
    adc [hl]                                      ; $62ac: $8e
    nop                                           ; $62ad: $00
    ld l, d                                       ; $62ae: $6a
    ld bc, $7600                                  ; $62af: $01 $00 $76
    ld bc, $0177                                  ; $62b2: $01 $77 $01
    ld a, b                                       ; $62b5: $78
    ld bc, $0179                                  ; $62b6: $01 $79 $01
    nop                                           ; $62b9: $00
    add l                                         ; $62ba: $85
    ld bc, $0186                                  ; $62bb: $01 $86 $01
    add a                                         ; $62be: $87
    ld bc, $0188                                  ; $62bf: $01 $88 $01
    nop                                           ; $62c2: $00
    adc h                                         ; $62c3: $8c
    ld bc, $018d                                  ; $62c4: $01 $8d $01
    adc [hl]                                      ; $62c7: $8e
    ld bc, $018f                                  ; $62c8: $01 $8f $01
    nop                                           ; $62cb: $00
    sub b                                         ; $62cc: $90
    ld bc, $019a                                  ; $62cd: $01 $9a $01
    sbc e                                         ; $62d0: $9b
    ld bc, $019c                                  ; $62d1: $01 $9c $01
    nop                                           ; $62d4: $00
    sbc l                                         ; $62d5: $9d
    ld bc, $01a6                                  ; $62d6: $01 $a6 $01
    and a                                         ; $62d9: $a7
    ld bc, $01a8                                  ; $62da: $01 $a8 $01
    nop                                           ; $62dd: $00
    xor c                                         ; $62de: $a9
    ld bc, $01b4                                  ; $62df: $01 $b4 $01
    or l                                          ; $62e2: $b5
    ld bc, $01b6                                  ; $62e3: $01 $b6 $01
    nop                                           ; $62e6: $00
    or a                                          ; $62e7: $b7
    ld bc, $0047                                  ; $62e8: $01 $47 $00
    pop bc                                        ; $62eb: $c1
    ld bc, $01c2                                  ; $62ec: $01 $c2 $01
    nop                                           ; $62ef: $00
    jp $ce01                                      ; $62f0: $c3 $01 $ce


    ld bc, $01cf                                  ; $62f3: $01 $cf $01
    ret nc                                        ; $62f6: $d0

    ld bc, $d100                                  ; $62f7: $01 $00 $d1
    ld bc, $01d9                                  ; $62fa: $01 $d9 $01
    sub c                                         ; $62fd: $91
    ld bc, $0192                                  ; $62fe: $01 $92 $01
    nop                                           ; $6301: $00
    sub e                                         ; $6302: $93
    ld bc, $0194                                  ; $6303: $01 $94 $01
    sbc [hl]                                      ; $6306: $9e
    ld bc, $019f                                  ; $6307: $01 $9f $01
    nop                                           ; $630a: $00
    and b                                         ; $630b: $a0
    ld bc, $01a1                                  ; $630c: $01 $a1 $01
    xor d                                         ; $630f: $aa
    ld bc, $01ab                                  ; $6310: $01 $ab $01
    nop                                           ; $6313: $00
    xor h                                         ; $6314: $ac
    ld bc, $01ad                                  ; $6315: $01 $ad $01
    cp b                                          ; $6318: $b8
    ld bc, $01b9                                  ; $6319: $01 $b9 $01
    nop                                           ; $631c: $00
    cp d                                          ; $631d: $ba
    ld bc, $01bb                                  ; $631e: $01 $bb $01
    call nz, $c501                                ; $6321: $c4 $01 $c5
    ld bc, $c604                                  ; $6324: $01 $04 $c6
    ld bc, $01c7                                  ; $6327: $01 $c7 $01
    jp nc, Jump_000_00c4                          ; $632a: $d2 $c4 $00

    db $d3                                        ; $632d: $d3
    ld bc, $d400                                  ; $632e: $01 $00 $d4
    ld bc, $01da                                  ; $6331: $01 $da $01
    sub l                                         ; $6334: $95
    ld bc, $0196                                  ; $6335: $01 $96 $01
    nop                                           ; $6338: $00
    sub a                                         ; $6339: $97
    ld bc, $0198                                  ; $633a: $01 $98 $01
    and d                                         ; $633d: $a2
    ld bc, $01a3                                  ; $633e: $01 $a3 $01
    nop                                           ; $6341: $00
    and h                                         ; $6342: $a4
    ld bc, $01a5                                  ; $6343: $01 $a5 $01
    xor [hl]                                      ; $6346: $ae
    ld bc, $01af                                  ; $6347: $01 $af $01
    nop                                           ; $634a: $00
    or b                                          ; $634b: $b0
    ld bc, $01b1                                  ; $634c: $01 $b1 $01
    cp h                                          ; $634f: $bc
    ld bc, $01bd                                  ; $6350: $01 $bd $01
    nop                                           ; $6353: $00
    cp [hl]                                       ; $6354: $be
    ld bc, $01bf                                  ; $6355: $01 $bf $01
    ret z                                         ; $6358: $c8

    ld bc, $01c9                                  ; $6359: $01 $c9 $01
    nop                                           ; $635c: $00
    jp z, $cb01                                   ; $635d: $ca $01 $cb

    ld bc, $01d5                                  ; $6360: $01 $d5 $01
    sub $01                                       ; $6363: $d6 $01
    ld b, h                                       ; $6365: $44
    rst $10                                       ; $6366: $d7
    inc b                                         ; $6367: $04
    nop                                           ; $6368: $00
    db $db                                        ; $6369: $db
    ld bc, $0299                                  ; $636a: $01 $99 $02
    ld h, b                                       ; $636d: $60
    or d                                          ; $636e: $b2
    ld bc, $b341                                  ; $636f: $01 $41 $b3
    ld [bc], a                                    ; $6372: $02
    ld b, b                                       ; $6373: $40
    ret nz                                        ; $6374: $c0

    ld bc, $01cc                                  ; $6375: $01 $cc $01
    call Call_08f_4002                            ; $6378: $cd $02 $40
    nop                                           ; $637b: $00
    ret c                                         ; $637c: $d8

    ld bc, $01dc                                  ; $637d: $01 $dc $01
    ld [hl], h                                    ; $6380: $74
    inc bc                                        ; $6381: $03
    nop                                           ; $6382: $00
    nop                                           ; $6383: $00
    nop                                           ; $6384: $00
    ld bc, $0200                                  ; $6385: $01 $00 $02
    nop                                           ; $6388: $00
    inc bc                                        ; $6389: $03
    nop                                           ; $638a: $00
    nop                                           ; $638b: $00
    stop                                          ; $638c: $10 $00
    ld de, $1200                                  ; $638e: $11 $00 $12
    nop                                           ; $6391: $00
    inc de                                        ; $6392: $13
    nop                                           ; $6393: $00
    nop                                           ; $6394: $00
    jr nz, jr_08f_6397                            ; $6395: $20 $00

jr_08f_6397:
    ld hl, $2200                                  ; $6397: $21 $00 $22
    nop                                           ; $639a: $00
    inc hl                                        ; $639b: $23
    nop                                           ; $639c: $00
    nop                                           ; $639d: $00
    jr nc, jr_08f_63a0                            ; $639e: $30 $00

jr_08f_63a0:
    ld sp, $3200                                  ; $63a0: $31 $00 $32
    nop                                           ; $63a3: $00
    rlca                                          ; $63a4: $07
    nop                                           ; $63a5: $00
    nop                                           ; $63a6: $00
    ld a, $00                                     ; $63a7: $3e $00
    ccf                                           ; $63a9: $3f
    nop                                           ; $63aa: $00
    jr jr_08f_63ad                                ; $63ab: $18 $00

jr_08f_63ad:
    ld b, b                                       ; $63ad: $40
    nop                                           ; $63ae: $00
    nop                                           ; $63af: $00
    add hl, bc                                    ; $63b0: $09
    nop                                           ; $63b1: $00
    ld c, l                                       ; $63b2: $4d
    nop                                           ; $63b3: $00
    ld c, [hl]                                    ; $63b4: $4e
    nop                                           ; $63b5: $00
    ld c, a                                       ; $63b6: $4f
    nop                                           ; $63b7: $00
    inc b                                         ; $63b8: $04
    inc b                                         ; $63b9: $04
    nop                                           ; $63ba: $00
    dec b                                         ; $63bb: $05
    nop                                           ; $63bc: $00
    ld b, $18                                     ; $63bd: $06 $18
    nop                                           ; $63bf: $00
    inc d                                         ; $63c0: $14
    nop                                           ; $63c1: $00
    nop                                           ; $63c2: $00
    dec d                                         ; $63c3: $15
    nop                                           ; $63c4: $00
    ld d, $00                                     ; $63c5: $16 $00
    rla                                           ; $63c7: $17
    nop                                           ; $63c8: $00
    inc h                                         ; $63c9: $24
    nop                                           ; $63ca: $00
    nop                                           ; $63cb: $00
    dec h                                         ; $63cc: $25
    nop                                           ; $63cd: $00
    ld h, $00                                     ; $63ce: $26 $00
    daa                                           ; $63d0: $27
    nop                                           ; $63d1: $00
    inc sp                                        ; $63d2: $33
    nop                                           ; $63d3: $00
    nop                                           ; $63d4: $00
    inc [hl]                                      ; $63d5: $34
    nop                                           ; $63d6: $00
    dec [hl]                                      ; $63d7: $35
    nop                                           ; $63d8: $00
    dec bc                                        ; $63d9: $0b
    nop                                           ; $63da: $00
    ld b, c                                       ; $63db: $41
    nop                                           ; $63dc: $00
    nop                                           ; $63dd: $00
    ld b, d                                       ; $63de: $42
    nop                                           ; $63df: $00
    ld b, e                                       ; $63e0: $43
    nop                                           ; $63e1: $00
    ld b, h                                       ; $63e2: $44
    nop                                           ; $63e3: $00
    dec c                                         ; $63e4: $0d
    nop                                           ; $63e5: $00
    ld bc, $0050                                  ; $63e6: $01 $50 $00
    ld d, c                                       ; $63e9: $51
    nop                                           ; $63ea: $00
    ld d, d                                       ; $63eb: $52
    nop                                           ; $63ec: $00
    ld [$003a], sp                                ; $63ed: $08 $3a $00
    ld b, b                                       ; $63f0: $40
    ld a, [bc]                                    ; $63f1: $0a
    jr jr_08f_63f4                                ; $63f2: $18 $00

jr_08f_63f4:
    jr jr_08f_63f6                                ; $63f4: $18 $00

jr_08f_63f6:
    add hl, de                                    ; $63f6: $19
    nop                                           ; $63f7: $00
    ld a, [de]                                    ; $63f8: $1a
    nop                                           ; $63f9: $00
    nop                                           ; $63fa: $00
    dec de                                        ; $63fb: $1b
    nop                                           ; $63fc: $00
    jr z, jr_08f_63ff                             ; $63fd: $28 $00

jr_08f_63ff:
    add hl, hl                                    ; $63ff: $29
    nop                                           ; $6400: $00
    ld a, [hl+]                                   ; $6401: $2a
    nop                                           ; $6402: $00
    nop                                           ; $6403: $00
    dec hl                                        ; $6404: $2b
    nop                                           ; $6405: $00
    ld [hl], $00                                  ; $6406: $36 $00
    scf                                           ; $6408: $37
    nop                                           ; $6409: $00
    jr c, jr_08f_640c                             ; $640a: $38 $00

jr_08f_640c:
    nop                                           ; $640c: $00
    add hl, sp                                    ; $640d: $39
    nop                                           ; $640e: $00
    ld b, l                                       ; $640f: $45
    nop                                           ; $6410: $00
    ld b, [hl]                                    ; $6411: $46
    nop                                           ; $6412: $00
    ld b, a                                       ; $6413: $47
    nop                                           ; $6414: $00
    nop                                           ; $6415: $00
    ld c, b                                       ; $6416: $48
    nop                                           ; $6417: $00
    ld d, e                                       ; $6418: $53
    nop                                           ; $6419: $00
    ld d, h                                       ; $641a: $54
    nop                                           ; $641b: $00
    ld d, l                                       ; $641c: $55
    nop                                           ; $641d: $00
    db $10                                        ; $641e: $10
    ld d, [hl]                                    ; $641f: $56
    nop                                           ; $6420: $00
    inc c                                         ; $6421: $0c
    ld a, [hl-]                                   ; $6422: $3a
    nop                                           ; $6423: $00
    ld c, $00                                     ; $6424: $0e $00
    rrca                                          ; $6426: $0f
    nop                                           ; $6427: $00
    nop                                           ; $6428: $00
    inc e                                         ; $6429: $1c
    nop                                           ; $642a: $00
    dec e                                         ; $642b: $1d
    nop                                           ; $642c: $00
    ld e, $00                                     ; $642d: $1e $00
    rra                                           ; $642f: $1f
    nop                                           ; $6430: $00
    nop                                           ; $6431: $00
    inc l                                         ; $6432: $2c
    nop                                           ; $6433: $00
    dec l                                         ; $6434: $2d
    nop                                           ; $6435: $00
    ld l, $00                                     ; $6436: $2e $00
    cpl                                           ; $6438: $2f
    nop                                           ; $6439: $00
    nop                                           ; $643a: $00
    ld a, [hl-]                                   ; $643b: $3a
    nop                                           ; $643c: $00
    dec sp                                        ; $643d: $3b
    nop                                           ; $643e: $00
    inc a                                         ; $643f: $3c
    nop                                           ; $6440: $00
    dec a                                         ; $6441: $3d
    nop                                           ; $6442: $00
    nop                                           ; $6443: $00
    ld c, c                                       ; $6444: $49
    nop                                           ; $6445: $00
    ld c, d                                       ; $6446: $4a
    nop                                           ; $6447: $00
    ld c, e                                       ; $6448: $4b
    nop                                           ; $6449: $00
    ld c, h                                       ; $644a: $4c
    nop                                           ; $644b: $00
    db $10                                        ; $644c: $10
    ld d, a                                       ; $644d: $57
    nop                                           ; $644e: $00
    ld e, b                                       ; $644f: $58
    ld h, b                                       ; $6450: $60
    nop                                           ; $6451: $00
    ld c, a                                       ; $6452: $4f
    nop                                           ; $6453: $00
    ld e, c                                       ; $6454: $59
    nop                                           ; $6455: $00
    nop                                           ; $6456: $00
    ld e, d                                       ; $6457: $5a
    nop                                           ; $6458: $00
    ld e, e                                       ; $6459: $5b
    nop                                           ; $645a: $00
    ld e, h                                       ; $645b: $5c
    nop                                           ; $645c: $00
    ld l, b                                       ; $645d: $68
    nop                                           ; $645e: $00
    nop                                           ; $645f: $00
    ld l, c                                       ; $6460: $69
    nop                                           ; $6461: $00
    ld l, d                                       ; $6462: $6a
    nop                                           ; $6463: $00
    ld l, e                                       ; $6464: $6b
    nop                                           ; $6465: $00
    ld a, b                                       ; $6466: $78
    nop                                           ; $6467: $00
    nop                                           ; $6468: $00
    ld a, c                                       ; $6469: $79
    nop                                           ; $646a: $00
    ld a, d                                       ; $646b: $7a
    nop                                           ; $646c: $00
    ld a, e                                       ; $646d: $7b
    nop                                           ; $646e: $00
    adc b                                         ; $646f: $88
    nop                                           ; $6470: $00
    nop                                           ; $6471: $00
    adc c                                         ; $6472: $89
    nop                                           ; $6473: $00
    adc d                                         ; $6474: $8a
    nop                                           ; $6475: $00
    adc e                                         ; $6476: $8b
    nop                                           ; $6477: $00
    sub a                                         ; $6478: $97
    nop                                           ; $6479: $00
    nop                                           ; $647a: $00
    sbc b                                         ; $647b: $98
    nop                                           ; $647c: $00
    sbc c                                         ; $647d: $99
    nop                                           ; $647e: $00
    ld e, a                                       ; $647f: $5f
    nop                                           ; $6480: $00
    and l                                         ; $6481: $a5
    nop                                           ; $6482: $00
    ld b, c                                       ; $6483: $41
    and [hl]                                      ; $6484: $a6
    ret nz                                        ; $6485: $c0

    nop                                           ; $6486: $00
    ld d, d                                       ; $6487: $52
    nop                                           ; $6488: $00
    ld e, l                                       ; $6489: $5d
    nop                                           ; $648a: $00
    ld e, [hl]                                    ; $648b: $5e
    ld c, $00                                     ; $648c: $0e $00
    nop                                           ; $648e: $00
    ld h, b                                       ; $648f: $60
    nop                                           ; $6490: $00
    ld l, h                                       ; $6491: $6c
    nop                                           ; $6492: $00
    ld l, l                                       ; $6493: $6d
    nop                                           ; $6494: $00
    ld l, [hl]                                    ; $6495: $6e
    nop                                           ; $6496: $00
    nop                                           ; $6497: $00
    ld l, a                                       ; $6498: $6f
    nop                                           ; $6499: $00
    ld a, h                                       ; $649a: $7c
    nop                                           ; $649b: $00
    ld a, l                                       ; $649c: $7d
    nop                                           ; $649d: $00
    ld a, [hl]                                    ; $649e: $7e
    nop                                           ; $649f: $00
    nop                                           ; $64a0: $00
    ld a, a                                       ; $64a1: $7f
    nop                                           ; $64a2: $00
    adc h                                         ; $64a3: $8c
    nop                                           ; $64a4: $00
    adc l                                         ; $64a5: $8d
    nop                                           ; $64a6: $00
    adc [hl]                                      ; $64a7: $8e
    nop                                           ; $64a8: $00
    ld bc, $008f                                  ; $64a9: $01 $8f $00
    sbc d                                         ; $64ac: $9a
    nop                                           ; $64ad: $00
    sbc e                                         ; $64ae: $9b
    nop                                           ; $64af: $00
    sbc h                                         ; $64b0: $9c
    ld a, [c]                                     ; $64b1: $f2
    nop                                           ; $64b2: $00
    db $10                                        ; $64b3: $10
    and a                                         ; $64b4: $a7
    nop                                           ; $64b5: $00
    xor b                                         ; $64b6: $a8
    ret nz                                        ; $64b7: $c0

    nop                                           ; $64b8: $00
    ld d, [hl]                                    ; $64b9: $56
    nop                                           ; $64ba: $00
    ld h, c                                       ; $64bb: $61
    nop                                           ; $64bc: $00
    ld b, b                                       ; $64bd: $40
    ld h, d                                       ; $64be: $62
    nop                                           ; $64bf: $00
    ld bc, $0063                                  ; $64c0: $01 $63 $00
    ld [hl], b                                    ; $64c3: $70
    nop                                           ; $64c4: $00
    ld [hl], c                                    ; $64c5: $71
    nop                                           ; $64c6: $00
    nop                                           ; $64c7: $00
    ld [hl], d                                    ; $64c8: $72
    nop                                           ; $64c9: $00
    ld [hl], e                                    ; $64ca: $73
    nop                                           ; $64cb: $00
    add b                                         ; $64cc: $80
    nop                                           ; $64cd: $00
    add c                                         ; $64ce: $81
    nop                                           ; $64cf: $00
    nop                                           ; $64d0: $00
    add d                                         ; $64d1: $82
    nop                                           ; $64d2: $00
    add e                                         ; $64d3: $83
    nop                                           ; $64d4: $00
    sub b                                         ; $64d5: $90
    nop                                           ; $64d6: $00
    sub c                                         ; $64d7: $91
    nop                                           ; $64d8: $00
    nop                                           ; $64d9: $00
    nop                                           ; $64da: $00
    nop                                           ; $64db: $00
    sub d                                         ; $64dc: $92
    nop                                           ; $64dd: $00
    sbc l                                         ; $64de: $9d
    nop                                           ; $64df: $00
    sbc [hl]                                      ; $64e0: $9e
    nop                                           ; $64e1: $00
    nop                                           ; $64e2: $00
    sbc a                                         ; $64e3: $9f
    nop                                           ; $64e4: $00
    and b                                         ; $64e5: $a0
    nop                                           ; $64e6: $00
    xor c                                         ; $64e7: $a9
    nop                                           ; $64e8: $00
    xor d                                         ; $64e9: $aa
    nop                                           ; $64ea: $00
    ld b, b                                       ; $64eb: $40
    xor e                                         ; $64ec: $ab
    jr nz, jr_08f_64f0                            ; $64ed: $20 $01

    ld h, h                                       ; $64ef: $64

jr_08f_64f0:
    nop                                           ; $64f0: $00
    ld h, l                                       ; $64f1: $65
    nop                                           ; $64f2: $00
    ld h, [hl]                                    ; $64f3: $66
    nop                                           ; $64f4: $00
    nop                                           ; $64f5: $00
    ld h, a                                       ; $64f6: $67
    nop                                           ; $64f7: $00
    ld [hl], h                                    ; $64f8: $74
    nop                                           ; $64f9: $00
    ld [hl], l                                    ; $64fa: $75
    nop                                           ; $64fb: $00
    halt                                          ; $64fc: $76
    nop                                           ; $64fd: $00
    nop                                           ; $64fe: $00
    ld [hl], a                                    ; $64ff: $77
    nop                                           ; $6500: $00
    add h                                         ; $6501: $84
    nop                                           ; $6502: $00
    add l                                         ; $6503: $85
    nop                                           ; $6504: $00
    add [hl]                                      ; $6505: $86
    nop                                           ; $6506: $00
    nop                                           ; $6507: $00
    add a                                         ; $6508: $87
    nop                                           ; $6509: $00
    sub e                                         ; $650a: $93
    nop                                           ; $650b: $00
    sub h                                         ; $650c: $94
    nop                                           ; $650d: $00
    sub l                                         ; $650e: $95
    nop                                           ; $650f: $00
    nop                                           ; $6510: $00
    sub [hl]                                      ; $6511: $96
    nop                                           ; $6512: $00
    and c                                         ; $6513: $a1
    nop                                           ; $6514: $00
    and d                                         ; $6515: $a2
    nop                                           ; $6516: $00
    and e                                         ; $6517: $a3
    nop                                           ; $6518: $00
    ld bc, $00a4                                  ; $6519: $01 $a4 $00
    xor h                                         ; $651c: $ac
    nop                                           ; $651d: $00
    xor l                                         ; $651e: $ad
    nop                                           ; $651f: $00
    xor [hl]                                      ; $6520: $ae
    jr nz, jr_08f_6524                            ; $6521: $20 $01

    nop                                           ; $6523: $00

jr_08f_6524:
    xor a                                         ; $6524: $af
    nop                                           ; $6525: $00
    or b                                          ; $6526: $b0
    nop                                           ; $6527: $00
    or c                                          ; $6528: $b1
    nop                                           ; $6529: $00
    or d                                          ; $652a: $b2
    nop                                           ; $652b: $00
    inc b                                         ; $652c: $04
    cp [hl]                                       ; $652d: $be
    nop                                           ; $652e: $00
    cp a                                          ; $652f: $bf
    nop                                           ; $6530: $00
    ret nz                                        ; $6531: $c0

    ld l, d                                       ; $6532: $6a
    ld bc, $00ca                                  ; $6533: $01 $ca $00
    nop                                           ; $6536: $00
    rlc b                                         ; $6537: $cb $00
    call z, $cd00                                 ; $6539: $cc $00 $cd
    nop                                           ; $653c: $00
    reti                                          ; $653d: $d9


    nop                                           ; $653e: $00
    nop                                           ; $653f: $00
    jp c, $db00                                   ; $6540: $da $00 $db

    nop                                           ; $6543: $00
    call c, $e800                                 ; $6544: $dc $00 $e8
    nop                                           ; $6547: $00
    nop                                           ; $6548: $00
    jp hl                                         ; $6549: $e9


    nop                                           ; $654a: $00
    ld [$eb00], a                                 ; $654b: $ea $00 $eb
    nop                                           ; $654e: $00
    rst $30                                       ; $654f: $f7
    nop                                           ; $6550: $00
    db $10                                        ; $6551: $10
    ld hl, sp+$00                                 ; $6552: $f8 $00
    ld sp, hl                                     ; $6554: $f9
    jr nz, jr_08f_6558                            ; $6555: $20 $01

    or e                                          ; $6557: $b3

jr_08f_6558:
    nop                                           ; $6558: $00
    or h                                          ; $6559: $b4
    nop                                           ; $655a: $00
    ld b, b                                       ; $655b: $40
    or l                                          ; $655c: $b5
    and [hl]                                      ; $655d: $a6
    ld bc, $00c1                                  ; $655e: $01 $c1 $00
    jp nz, $c300                                  ; $6561: $c2 $00 $c3

    nop                                           ; $6564: $00
    nop                                           ; $6565: $00
    call nz, $ce00                                ; $6566: $c4 $00 $ce
    nop                                           ; $6569: $00
    rst $08                                       ; $656a: $cf
    nop                                           ; $656b: $00
    ret nc                                        ; $656c: $d0

    nop                                           ; $656d: $00
    nop                                           ; $656e: $00
    pop de                                        ; $656f: $d1
    nop                                           ; $6570: $00
    call nc, $dd00                                ; $6571: $d4 $00 $dd
    nop                                           ; $6574: $00
    sbc $00                                       ; $6575: $de $00
    nop                                           ; $6577: $00
    rst $18                                       ; $6578: $df
    nop                                           ; $6579: $00
    db $ec                                        ; $657a: $ec
    nop                                           ; $657b: $00
    db $ed                                        ; $657c: $ed
    nop                                           ; $657d: $00
    xor $00                                       ; $657e: $ee $00
    inc b                                         ; $6580: $04
    rst $28                                       ; $6581: $ef
    nop                                           ; $6582: $00
    ld a, [$fb00]                                 ; $6583: $fa $00 $fb
    jr nz, jr_08f_6599                            ; $6586: $20 $11

    or [hl]                                       ; $6588: $b6
    nop                                           ; $6589: $00
    inc b                                         ; $658a: $04
    or a                                          ; $658b: $b7
    nop                                           ; $658c: $00
    cp b                                          ; $658d: $b8
    nop                                           ; $658e: $00
    cp c                                          ; $658f: $b9
    ret c                                         ; $6590: $d8

    ld bc, $00c5                                  ; $6591: $01 $c5 $00
    ld bc, $00c6                                  ; $6594: $01 $c6 $00
    rst $00                                       ; $6597: $c7
    nop                                           ; $6598: $00

jr_08f_6599:
    jp nc, $d300                                  ; $6599: $d2 $00 $d3

    inc l                                         ; $659c: $2c
    nop                                           ; $659d: $00
    nop                                           ; $659e: $00
    push de                                       ; $659f: $d5
    nop                                           ; $65a0: $00
    ldh [rP1], a                                  ; $65a1: $e0 $00
    pop hl                                        ; $65a3: $e1
    nop                                           ; $65a4: $00
    ld [c], a                                     ; $65a5: $e2
    nop                                           ; $65a6: $00
    nop                                           ; $65a7: $00
    db $e3                                        ; $65a8: $e3
    nop                                           ; $65a9: $00
    ldh a, [rP1]                                  ; $65aa: $f0 $00
    pop af                                        ; $65ac: $f1
    nop                                           ; $65ad: $00
    ld a, [c]                                     ; $65ae: $f2
    nop                                           ; $65af: $00
    ld bc, $00f3                                  ; $65b0: $01 $f3 $00
    db $fc                                        ; $65b3: $fc
    nop                                           ; $65b4: $00
    db $fd                                        ; $65b5: $fd
    nop                                           ; $65b6: $00
    cp $b0                                        ; $65b7: $fe $b0
    ld bc, $ba01                                  ; $65b9: $01 $01 $ba
    nop                                           ; $65bc: $00
    cp e                                          ; $65bd: $bb
    nop                                           ; $65be: $00
    cp h                                          ; $65bf: $bc
    nop                                           ; $65c0: $00
    cp l                                          ; $65c1: $bd
    ret c                                         ; $65c2: $d8

    ld bc, $c810                                  ; $65c3: $01 $10 $c8
    nop                                           ; $65c6: $00
    ret                                           ; $65c7: $c9


    ret z                                         ; $65c8: $c8

    ld bc, $00d6                                  ; $65c9: $01 $d6 $00
    rst $10                                       ; $65cc: $d7
    nop                                           ; $65cd: $00
    ld b, b                                       ; $65ce: $40
    ret c                                         ; $65cf: $d8

    ld e, [hl]                                    ; $65d0: $5e
    nop                                           ; $65d1: $00
    db $e4                                        ; $65d2: $e4
    nop                                           ; $65d3: $00
    push hl                                       ; $65d4: $e5
    nop                                           ; $65d5: $00
    and $00                                       ; $65d6: $e6 $00
    ld b, b                                       ; $65d8: $40
    rst $20                                       ; $65d9: $e7
    ld b, b                                       ; $65da: $40
    ld bc, $00f4                                  ; $65db: $01 $f4 $00
    push af                                       ; $65de: $f5
    nop                                           ; $65df: $00
    or $00                                        ; $65e0: $f6 $00
    ld b, b                                       ; $65e2: $40
    rst $38                                       ; $65e3: $ff
    add hl, sp                                    ; $65e4: $39
    ld [bc], a                                    ; $65e5: $02
    ld bc, $5601                                  ; $65e6: $01 $01 $56
    nop                                           ; $65e9: $00
    ld [bc], a                                    ; $65ea: $02
    ld bc, $0300                                  ; $65eb: $01 $00 $03
    ld bc, $0104                                  ; $65ee: $01 $04 $01
    ccf                                           ; $65f1: $3f
    nop                                           ; $65f2: $00
    db $10                                        ; $65f3: $10
    ld bc, $1100                                  ; $65f4: $01 $00 $11
    ld bc, $0112                                  ; $65f7: $01 $12 $01
    inc de                                        ; $65fa: $13
    ld bc, $0120                                  ; $65fb: $01 $20 $01
    nop                                           ; $65fe: $00
    ld hl, $2201                                  ; $65ff: $21 $01 $22
    ld bc, $0123                                  ; $6602: $01 $23 $01
    ld l, $01                                     ; $6605: $2e $01
    nop                                           ; $6607: $00
    cpl                                           ; $6608: $2f
    ld bc, $0130                                  ; $6609: $01 $30 $01
    ld sp, $2701                                  ; $660c: $31 $01 $27
    nop                                           ; $660f: $00
    nop                                           ; $6610: $00
    ld a, $01                                     ; $6611: $3e $01
    ccf                                           ; $6613: $3f
    ld bc, $0140                                  ; $6614: $01 $40 $01
    ld c, l                                       ; $6617: $4d
    ld bc, $4e00                                  ; $6618: $01 $00 $4e
    ld bc, $014f                                  ; $661b: $01 $4f $01
    ld c, a                                       ; $661e: $4f
    nop                                           ; $661f: $00
    dec b                                         ; $6620: $05
    ld bc, $0600                                  ; $6621: $01 $00 $06
    ld bc, $0107                                  ; $6624: $01 $07 $01
    ld b, d                                       ; $6627: $42
    nop                                           ; $6628: $00
    inc d                                         ; $6629: $14
    ld bc, $1501                                  ; $662a: $01 $01 $15
    ld bc, $0116                                  ; $662d: $01 $16 $01
    rla                                           ; $6630: $17
    ld bc, $3224                                  ; $6631: $01 $24 $32
    nop                                           ; $6634: $00
    nop                                           ; $6635: $00
    dec h                                         ; $6636: $25
    ld bc, $0126                                  ; $6637: $01 $26 $01
    ld [hl-], a                                   ; $663a: $32
    ld bc, $0133                                  ; $663b: $01 $33 $01
    nop                                           ; $663e: $00
    inc [hl]                                      ; $663f: $34
    ld bc, $0135                                  ; $6640: $01 $35 $01
    ld b, c                                       ; $6643: $41
    ld bc, $0142                                  ; $6644: $01 $42 $01
    nop                                           ; $6647: $00
    ld b, e                                       ; $6648: $43
    ld bc, $0144                                  ; $6649: $01 $44 $01
    ld d, b                                       ; $664c: $50
    ld bc, $0151                                  ; $664d: $01 $51 $01
    jr nz, jr_08f_66a4                            ; $6650: $20 $52

    ld bc, $0240                                  ; $6652: $01 $40 $02
    ld bc, $0109                                  ; $6655: $01 $09 $01
    ld a, [bc]                                    ; $6658: $0a
    ld bc, $0b00                                  ; $6659: $01 $00 $0b
    ld bc, $0118                                  ; $665c: $01 $18 $01
    add hl, de                                    ; $665f: $19
    ld bc, $011a                                  ; $6660: $01 $1a $01
    nop                                           ; $6663: $00
    dec de                                        ; $6664: $1b
    ld bc, $0127                                  ; $6665: $01 $27 $01
    jr z, jr_08f_666b                             ; $6668: $28 $01

    add hl, hl                                    ; $666a: $29

jr_08f_666b:
    ld bc, $8200                                  ; $666b: $01 $00 $82
    nop                                           ; $666e: $00
    ld [hl], $01                                  ; $666f: $36 $01
    scf                                           ; $6671: $37
    ld bc, $0138                                  ; $6672: $01 $38 $01
    nop                                           ; $6675: $00
    add hl, sp                                    ; $6676: $39
    ld bc, $0145                                  ; $6677: $01 $45 $01
    ld b, [hl]                                    ; $667a: $46
    ld bc, $0147                                  ; $667b: $01 $47 $01
    ld bc, $0148                                  ; $667e: $01 $48 $01
    ld d, e                                       ; $6681: $53
    ld bc, $0154                                  ; $6682: $01 $54 $01
    ld c, [hl]                                    ; $6685: $4e
    ld b, b                                       ; $6686: $40
    ld a, [bc]                                    ; $6687: $0a
    nop                                           ; $6688: $00
    ld bc, $010d                                  ; $6689: $01 $0d $01
    ld c, $01                                     ; $668c: $0e $01
    rrca                                          ; $668e: $0f
    ld bc, $001c                                  ; $668f: $01 $1c $00
    ld bc, $011d                                  ; $6692: $01 $1d $01
    ld e, $01                                     ; $6695: $1e $01
    rra                                           ; $6697: $1f
    ld bc, $002a                                  ; $6698: $01 $2a $00
    ld bc, $012b                                  ; $669b: $01 $2b $01
    inc l                                         ; $669e: $2c
    ld bc, $012d                                  ; $669f: $01 $2d $01
    ld a, [hl-]                                   ; $66a2: $3a
    nop                                           ; $66a3: $00

jr_08f_66a4:
    ld bc, $013b                                  ; $66a4: $01 $3b $01
    inc a                                         ; $66a7: $3c
    ld bc, $013d                                  ; $66a8: $01 $3d $01
    ld c, c                                       ; $66ab: $49
    nop                                           ; $66ac: $00
    ld bc, $014a                                  ; $66ad: $01 $4a $01
    ld c, e                                       ; $66b0: $4b
    ld bc, $014c                                  ; $66b1: $01 $4c $01
    ld d, l                                       ; $66b4: $55
    db $10                                        ; $66b5: $10
    ld bc, $0156                                  ; $66b6: $01 $56 $01
    ld b, b                                       ; $66b9: $40
    ld a, [bc]                                    ; $66ba: $0a
    ld d, a                                       ; $66bb: $57
    ld bc, $0158                                  ; $66bc: $01 $58 $01
    nop                                           ; $66bf: $00
    ld e, c                                       ; $66c0: $59
    ld bc, $015a                                  ; $66c1: $01 $5a $01
    ld h, [hl]                                    ; $66c4: $66
    ld bc, $0167                                  ; $66c5: $01 $67 $01
    nop                                           ; $66c8: $00
    ld l, b                                       ; $66c9: $68
    ld bc, $0169                                  ; $66ca: $01 $69 $01
    ld [hl], h                                    ; $66cd: $74
    ld bc, $0175                                  ; $66ce: $01 $75 $01
    nop                                           ; $66d1: $00
    halt                                          ; $66d2: $76
    ld bc, $0177                                  ; $66d3: $01 $77 $01
    ld a, a                                       ; $66d6: $7f
    ld bc, $0180                                  ; $66d7: $01 $80 $01
    nop                                           ; $66da: $00
    add c                                         ; $66db: $81
    ld bc, $0182                                  ; $66dc: $01 $82 $01
    adc [hl]                                      ; $66df: $8e
    ld bc, $018f                                  ; $66e0: $01 $8f $01
    nop                                           ; $66e3: $00
    sub b                                         ; $66e4: $90
    ld bc, $0191                                  ; $66e5: $01 $91 $01
    sbc [hl]                                      ; $66e8: $9e
    ld bc, $019f                                  ; $66e9: $01 $9f $01
    ld b, b                                       ; $66ec: $40
    and b                                         ; $66ed: $a0
    sub b                                         ; $66ee: $90
    nop                                           ; $66ef: $00
    ld e, e                                       ; $66f0: $5b
    ld bc, $0001                                  ; $66f1: $01 $01 $00
    ld e, h                                       ; $66f4: $5c
    ld bc, $5d00                                  ; $66f5: $01 $00 $5d
    ld bc, $016a                                  ; $66f8: $01 $6a $01
    ld l, e                                       ; $66fb: $6b
    ld bc, $016c                                  ; $66fc: $01 $6c $01
    nop                                           ; $66ff: $00
    ld l, l                                       ; $6700: $6d
    ld bc, $0178                                  ; $6701: $01 $78 $01
    ld a, c                                       ; $6704: $79
    ld bc, $017a                                  ; $6705: $01 $7a $01
    nop                                           ; $6708: $00
    ld a, e                                       ; $6709: $7b
    ld bc, $0183                                  ; $670a: $01 $83 $01
    add h                                         ; $670d: $84
    ld bc, $0185                                  ; $670e: $01 $85 $01
    nop                                           ; $6711: $00
    add [hl]                                      ; $6712: $86
    ld bc, $0192                                  ; $6713: $01 $92 $01
    sub e                                         ; $6716: $93
    ld bc, $0194                                  ; $6717: $01 $94 $01
    inc b                                         ; $671a: $04
    sub l                                         ; $671b: $95
    ld bc, $01a1                                  ; $671c: $01 $a1 $01
    and d                                         ; $671f: $a2
    ld h, b                                       ; $6720: $60
    nop                                           ; $6721: $00
    ld d, [hl]                                    ; $6722: $56
    nop                                           ; $6723: $00
    nop                                           ; $6724: $00
    ld e, [hl]                                    ; $6725: $5e
    ld bc, $015f                                  ; $6726: $01 $5f $01
    ld h, b                                       ; $6729: $60
    ld bc, $0161                                  ; $672a: $01 $61 $01
    nop                                           ; $672d: $00
    ld l, [hl]                                    ; $672e: $6e
    ld bc, $016f                                  ; $672f: $01 $6f $01
    ld [hl], b                                    ; $6732: $70
    ld bc, $0171                                  ; $6733: $01 $71 $01
    inc b                                         ; $6736: $04
    cp e                                          ; $6737: $bb
    nop                                           ; $6738: $00
    ld a, h                                       ; $6739: $7c
    ld bc, $9091                                  ; $673a: $01 $91 $90
    ld [bc], a                                    ; $673d: $02
    add a                                         ; $673e: $87
    ld bc, $8800                                  ; $673f: $01 $00 $88
    ld bc, $0189                                  ; $6742: $01 $89 $01
    adc d                                         ; $6745: $8a
    ld bc, $0196                                  ; $6746: $01 $96 $01
    nop                                           ; $6749: $00
    sub a                                         ; $674a: $97
    ld bc, $0198                                  ; $674b: $01 $98 $01
    sbc c                                         ; $674e: $99
    ld bc, $01a3                                  ; $674f: $01 $a3 $01
    db $10                                        ; $6752: $10
    and h                                         ; $6753: $a4
    ld bc, $20a5                                  ; $6754: $01 $a5 $20
    ld bc, $0162                                  ; $6757: $01 $62 $01
    ld h, e                                       ; $675a: $63
    ld bc, $6411                                  ; $675b: $01 $11 $64
    ld bc, $be65                                  ; $675e: $01 $65 $be
    nop                                           ; $6761: $00
    ld [hl], d                                    ; $6762: $72
    ld bc, $1273                                  ; $6763: $01 $73 $12
    ld bc, $5400                                  ; $6766: $01 $00 $54
    nop                                           ; $6769: $00
    ld a, l                                       ; $676a: $7d
    ld bc, $017e                                  ; $676b: $01 $7e $01
    jr jr_08f_6770                                ; $676e: $18 $00

jr_08f_6770:
    ld b, b                                       ; $6770: $40
    adc e                                         ; $6771: $8b
    ret nc                                        ; $6772: $d0

    nop                                           ; $6773: $00
    adc h                                         ; $6774: $8c
    ld bc, $018d                                  ; $6775: $01 $8d $01
    sbc d                                         ; $6778: $9a
    ld bc, $9b00                                  ; $6779: $01 $00 $9b
    ld bc, $019c                                  ; $677c: $01 $9c $01
    sbc l                                         ; $677f: $9d
    ld bc, $01a6                                  ; $6780: $01 $a6 $01
    db $10                                        ; $6783: $10
    and a                                         ; $6784: $a7
    ld bc, $20a8                                  ; $6785: $01 $a8 $20
    ld bc, $0363                                  ; $6788: $01 $63 $03
    nop                                           ; $678b: $00
    nop                                           ; $678c: $00
    nop                                           ; $678d: $00
    ld bc, $0200                                  ; $678e: $01 $00 $02
    nop                                           ; $6791: $00
    inc bc                                        ; $6792: $03
    nop                                           ; $6793: $00
    nop                                           ; $6794: $00
    stop                                          ; $6795: $10 $00
    ld de, $1200                                  ; $6797: $11 $00 $12
    nop                                           ; $679a: $00
    inc de                                        ; $679b: $13
    nop                                           ; $679c: $00
    db $10                                        ; $679d: $10
    jr nz, jr_08f_67a0                            ; $679e: $20 $00

jr_08f_67a0:
    ld hl, $0006                                  ; $67a0: $21 $06 $00
    ld [hl+], a                                   ; $67a3: $22
    nop                                           ; $67a4: $00
    cpl                                           ; $67a5: $2f
    nop                                           ; $67a6: $00
    nop                                           ; $67a7: $00
    jr nc, jr_08f_67aa                            ; $67a8: $30 $00

jr_08f_67aa:
    ld sp, $3200                                  ; $67aa: $31 $00 $32
    nop                                           ; $67ad: $00
    ccf                                           ; $67ae: $3f
    nop                                           ; $67af: $00
    ld b, b                                       ; $67b0: $40
    ld b, b                                       ; $67b1: $40
    ld [bc], a                                    ; $67b2: $02
    db $10                                        ; $67b3: $10
    ld c, d                                       ; $67b4: $4a
    nop                                           ; $67b5: $00
    ld c, e                                       ; $67b6: $4b
    nop                                           ; $67b7: $00
    ld c, h                                       ; $67b8: $4c
    nop                                           ; $67b9: $00
    nop                                           ; $67ba: $00
    ld c, l                                       ; $67bb: $4d
    nop                                           ; $67bc: $00
    inc b                                         ; $67bd: $04
    nop                                           ; $67be: $00
    dec b                                         ; $67bf: $05
    nop                                           ; $67c0: $00
    ld b, $00                                     ; $67c1: $06 $00
    nop                                           ; $67c3: $00
    rlca                                          ; $67c4: $07
    nop                                           ; $67c5: $00
    inc d                                         ; $67c6: $14
    nop                                           ; $67c7: $00
    dec d                                         ; $67c8: $15
    nop                                           ; $67c9: $00
    ld d, $00                                     ; $67ca: $16 $00
    nop                                           ; $67cc: $00
    rla                                           ; $67cd: $17
    nop                                           ; $67ce: $00
    inc hl                                        ; $67cf: $23
    nop                                           ; $67d0: $00
    inc h                                         ; $67d1: $24
    nop                                           ; $67d2: $00
    dec h                                         ; $67d3: $25
    nop                                           ; $67d4: $00
    nop                                           ; $67d5: $00
    ld h, $00                                     ; $67d6: $26 $00
    inc sp                                        ; $67d8: $33
    nop                                           ; $67d9: $00
    inc [hl]                                      ; $67da: $34
    nop                                           ; $67db: $00
    dec [hl]                                      ; $67dc: $35
    nop                                           ; $67dd: $00
    db $10                                        ; $67de: $10
    ld [hl], $00                                  ; $67df: $36 $00
    ld b, c                                       ; $67e1: $41
    jr nc, jr_08f_6804                            ; $67e2: $30 $20

    ld c, [hl]                                    ; $67e4: $4e
    nop                                           ; $67e5: $00
    ld c, a                                       ; $67e6: $4f
    nop                                           ; $67e7: $00
    nop                                           ; $67e8: $00
    ld d, b                                       ; $67e9: $50
    nop                                           ; $67ea: $00
    ld d, c                                       ; $67eb: $51
    nop                                           ; $67ec: $00
    ld [$0900], sp                                ; $67ed: $08 $00 $09
    nop                                           ; $67f0: $00
    nop                                           ; $67f1: $00
    ld a, [bc]                                    ; $67f2: $0a
    nop                                           ; $67f3: $00
    dec bc                                        ; $67f4: $0b
    nop                                           ; $67f5: $00
    jr jr_08f_67f8                                ; $67f6: $18 $00

jr_08f_67f8:
    add hl, de                                    ; $67f8: $19
    nop                                           ; $67f9: $00
    nop                                           ; $67fa: $00
    ld a, [de]                                    ; $67fb: $1a
    nop                                           ; $67fc: $00
    dec de                                        ; $67fd: $1b
    nop                                           ; $67fe: $00
    daa                                           ; $67ff: $27
    nop                                           ; $6800: $00
    jr z, jr_08f_6803                             ; $6801: $28 $00

jr_08f_6803:
    nop                                           ; $6803: $00

jr_08f_6804:
    add hl, hl                                    ; $6804: $29
    nop                                           ; $6805: $00
    ld a, [hl+]                                   ; $6806: $2a
    nop                                           ; $6807: $00
    scf                                           ; $6808: $37
    nop                                           ; $6809: $00
    jr c, jr_08f_680c                             ; $680a: $38 $00

jr_08f_680c:
    nop                                           ; $680c: $00
    add hl, sp                                    ; $680d: $39
    nop                                           ; $680e: $00
    ld a, [hl-]                                   ; $680f: $3a
    nop                                           ; $6810: $00
    ld b, d                                       ; $6811: $42
    nop                                           ; $6812: $00
    ld b, e                                       ; $6813: $43
    nop                                           ; $6814: $00
    nop                                           ; $6815: $00
    ld b, h                                       ; $6816: $44
    nop                                           ; $6817: $00
    ld b, l                                       ; $6818: $45
    nop                                           ; $6819: $00
    ld d, d                                       ; $681a: $52
    nop                                           ; $681b: $00
    ld d, e                                       ; $681c: $53
    nop                                           ; $681d: $00
    nop                                           ; $681e: $00
    ld d, h                                       ; $681f: $54
    nop                                           ; $6820: $00
    ld d, l                                       ; $6821: $55
    nop                                           ; $6822: $00
    inc c                                         ; $6823: $0c
    nop                                           ; $6824: $00
    dec c                                         ; $6825: $0d
    nop                                           ; $6826: $00
    nop                                           ; $6827: $00
    ld c, $00                                     ; $6828: $0e $00
    rrca                                          ; $682a: $0f
    nop                                           ; $682b: $00
    inc e                                         ; $682c: $1c
    nop                                           ; $682d: $00
    dec e                                         ; $682e: $1d
    nop                                           ; $682f: $00
    nop                                           ; $6830: $00
    ld e, $00                                     ; $6831: $1e $00
    rra                                           ; $6833: $1f
    nop                                           ; $6834: $00
    dec hl                                        ; $6835: $2b
    nop                                           ; $6836: $00
    inc l                                         ; $6837: $2c
    nop                                           ; $6838: $00
    nop                                           ; $6839: $00
    dec l                                         ; $683a: $2d
    nop                                           ; $683b: $00
    ld l, $00                                     ; $683c: $2e $00
    dec sp                                        ; $683e: $3b
    nop                                           ; $683f: $00
    inc a                                         ; $6840: $3c
    nop                                           ; $6841: $00
    nop                                           ; $6842: $00
    dec a                                         ; $6843: $3d
    nop                                           ; $6844: $00
    ld a, $00                                     ; $6845: $3e $00
    ld b, [hl]                                    ; $6847: $46
    nop                                           ; $6848: $00
    ld b, a                                       ; $6849: $47
    nop                                           ; $684a: $00
    nop                                           ; $684b: $00
    ld c, b                                       ; $684c: $48
    nop                                           ; $684d: $00
    ld c, c                                       ; $684e: $49
    nop                                           ; $684f: $00
    ld d, [hl]                                    ; $6850: $56
    nop                                           ; $6851: $00
    ld d, a                                       ; $6852: $57
    nop                                           ; $6853: $00
    nop                                           ; $6854: $00
    ld e, b                                       ; $6855: $58
    nop                                           ; $6856: $00
    ld e, c                                       ; $6857: $59
    nop                                           ; $6858: $00
    ld e, d                                       ; $6859: $5a
    nop                                           ; $685a: $00
    ld e, e                                       ; $685b: $5b
    nop                                           ; $685c: $00
    nop                                           ; $685d: $00
    ld e, h                                       ; $685e: $5c
    nop                                           ; $685f: $00
    ld e, l                                       ; $6860: $5d
    nop                                           ; $6861: $00
    ld l, d                                       ; $6862: $6a
    nop                                           ; $6863: $00
    ld l, e                                       ; $6864: $6b
    nop                                           ; $6865: $00
    nop                                           ; $6866: $00
    ld l, h                                       ; $6867: $6c
    nop                                           ; $6868: $00
    ld l, l                                       ; $6869: $6d
    nop                                           ; $686a: $00
    ld a, d                                       ; $686b: $7a
    nop                                           ; $686c: $00
    ld a, e                                       ; $686d: $7b
    nop                                           ; $686e: $00
    db $10                                        ; $686f: $10
    ld a, h                                       ; $6870: $7c
    nop                                           ; $6871: $00
    ld a, l                                       ; $6872: $7d
    and [hl]                                      ; $6873: $a6
    nop                                           ; $6874: $00
    adc d                                         ; $6875: $8a
    nop                                           ; $6876: $00
    adc e                                         ; $6877: $8b
    nop                                           ; $6878: $00
    nop                                           ; $6879: $00
    adc h                                         ; $687a: $8c
    nop                                           ; $687b: $00
    sbc b                                         ; $687c: $98
    nop                                           ; $687d: $00
    sbc c                                         ; $687e: $99
    nop                                           ; $687f: $00
    sbc d                                         ; $6880: $9a
    nop                                           ; $6881: $00
    ld bc, $009b                                  ; $6882: $01 $9b $00
    xor b                                         ; $6885: $a8
    nop                                           ; $6886: $00
    xor c                                         ; $6887: $a9
    nop                                           ; $6888: $00
    xor d                                         ; $6889: $aa
    ld h, b                                       ; $688a: $60
    nop                                           ; $688b: $00
    nop                                           ; $688c: $00
    ld e, [hl]                                    ; $688d: $5e
    nop                                           ; $688e: $00
    ld e, a                                       ; $688f: $5f
    nop                                           ; $6890: $00
    ld h, b                                       ; $6891: $60
    nop                                           ; $6892: $00
    ld h, c                                       ; $6893: $61
    nop                                           ; $6894: $00
    nop                                           ; $6895: $00
    ld l, [hl]                                    ; $6896: $6e
    nop                                           ; $6897: $00
    ld l, a                                       ; $6898: $6f
    nop                                           ; $6899: $00
    ld [hl], b                                    ; $689a: $70
    nop                                           ; $689b: $00
    ld [hl], c                                    ; $689c: $71
    nop                                           ; $689d: $00
    nop                                           ; $689e: $00
    ld a, [hl]                                    ; $689f: $7e
    nop                                           ; $68a0: $00
    ld a, a                                       ; $68a1: $7f
    nop                                           ; $68a2: $00
    add b                                         ; $68a3: $80
    nop                                           ; $68a4: $00
    add c                                         ; $68a5: $81
    nop                                           ; $68a6: $00
    nop                                           ; $68a7: $00
    adc l                                         ; $68a8: $8d
    nop                                           ; $68a9: $00
    adc [hl]                                      ; $68aa: $8e
    nop                                           ; $68ab: $00
    adc a                                         ; $68ac: $8f
    nop                                           ; $68ad: $00
    sub b                                         ; $68ae: $90
    nop                                           ; $68af: $00
    nop                                           ; $68b0: $00
    sbc h                                         ; $68b1: $9c
    nop                                           ; $68b2: $00
    sbc l                                         ; $68b3: $9d
    nop                                           ; $68b4: $00
    sbc [hl]                                      ; $68b5: $9e
    nop                                           ; $68b6: $00
    sbc a                                         ; $68b7: $9f
    nop                                           ; $68b8: $00
    nop                                           ; $68b9: $00
    xor e                                         ; $68ba: $ab
    nop                                           ; $68bb: $00
    xor h                                         ; $68bc: $ac
    nop                                           ; $68bd: $00
    xor l                                         ; $68be: $ad
    nop                                           ; $68bf: $00
    xor [hl]                                      ; $68c0: $ae
    nop                                           ; $68c1: $00
    nop                                           ; $68c2: $00
    ld h, d                                       ; $68c3: $62
    nop                                           ; $68c4: $00
    ld h, e                                       ; $68c5: $63
    nop                                           ; $68c6: $00
    ld h, h                                       ; $68c7: $64
    nop                                           ; $68c8: $00
    ld h, l                                       ; $68c9: $65
    nop                                           ; $68ca: $00
    nop                                           ; $68cb: $00
    ld [hl], d                                    ; $68cc: $72
    nop                                           ; $68cd: $00
    ld [hl], e                                    ; $68ce: $73
    nop                                           ; $68cf: $00
    ld [hl], h                                    ; $68d0: $74
    nop                                           ; $68d1: $00
    ld [hl], l                                    ; $68d2: $75
    nop                                           ; $68d3: $00
    nop                                           ; $68d4: $00
    add d                                         ; $68d5: $82
    nop                                           ; $68d6: $00
    add e                                         ; $68d7: $83
    nop                                           ; $68d8: $00
    add h                                         ; $68d9: $84
    nop                                           ; $68da: $00
    add l                                         ; $68db: $85
    nop                                           ; $68dc: $00
    db $10                                        ; $68dd: $10
    sub c                                         ; $68de: $91
    nop                                           ; $68df: $00
    sub d                                         ; $68e0: $92
    jr c, jr_08f_68e3                             ; $68e1: $38 $00

jr_08f_68e3:
    sub e                                         ; $68e3: $93
    nop                                           ; $68e4: $00
    and b                                         ; $68e5: $a0
    nop                                           ; $68e6: $00
    nop                                           ; $68e7: $00
    and c                                         ; $68e8: $a1
    nop                                           ; $68e9: $00
    and d                                         ; $68ea: $a2
    nop                                           ; $68eb: $00
    and e                                         ; $68ec: $a3
    nop                                           ; $68ed: $00
    xor a                                         ; $68ee: $af
    nop                                           ; $68ef: $00
    ld b, b                                       ; $68f0: $40
    or b                                          ; $68f1: $b0
    jr nc, jr_08f_68f4                            ; $68f2: $30 $00

jr_08f_68f4:
    or c                                          ; $68f4: $b1
    nop                                           ; $68f5: $00
    ld h, [hl]                                    ; $68f6: $66
    nop                                           ; $68f7: $00
    ld h, a                                       ; $68f8: $67
    nop                                           ; $68f9: $00
    nop                                           ; $68fa: $00
    ld l, b                                       ; $68fb: $68
    nop                                           ; $68fc: $00
    ld l, c                                       ; $68fd: $69
    nop                                           ; $68fe: $00
    halt                                          ; $68ff: $76
    nop                                           ; $6900: $00
    ld [hl], a                                    ; $6901: $77
    nop                                           ; $6902: $00
    nop                                           ; $6903: $00
    ld a, b                                       ; $6904: $78
    nop                                           ; $6905: $00
    ld a, c                                       ; $6906: $79
    nop                                           ; $6907: $00
    add [hl]                                      ; $6908: $86
    nop                                           ; $6909: $00
    add a                                         ; $690a: $87
    nop                                           ; $690b: $00
    nop                                           ; $690c: $00
    adc b                                         ; $690d: $88
    nop                                           ; $690e: $00
    adc c                                         ; $690f: $89

Call_08f_6910:
    nop                                           ; $6910: $00
    sub h                                         ; $6911: $94
    nop                                           ; $6912: $00
    sub l                                         ; $6913: $95
    nop                                           ; $6914: $00
    nop                                           ; $6915: $00
    sub [hl]                                      ; $6916: $96
    nop                                           ; $6917: $00
    sub a                                         ; $6918: $97
    nop                                           ; $6919: $00
    and h                                         ; $691a: $a4
    nop                                           ; $691b: $00
    and l                                         ; $691c: $a5
    nop                                           ; $691d: $00
    ld bc, $00a6                                  ; $691e: $01 $a6 $00
    and a                                         ; $6921: $a7
    nop                                           ; $6922: $00
    or d                                          ; $6923: $b2
    nop                                           ; $6924: $00
    or e                                          ; $6925: $b3
    ld h, b                                       ; $6926: $60
    nop                                           ; $6927: $00
    nop                                           ; $6928: $00
    ld d, l                                       ; $6929: $55
    nop                                           ; $692a: $00
    or h                                          ; $692b: $b4
    nop                                           ; $692c: $00
    or l                                          ; $692d: $b5
    nop                                           ; $692e: $00
    or [hl]                                       ; $692f: $b6
    nop                                           ; $6930: $00
    nop                                           ; $6931: $00
    or a                                          ; $6932: $b7
    nop                                           ; $6933: $00
    jp $c400                                      ; $6934: $c3 $00 $c4


    nop                                           ; $6937: $00
    push bc                                       ; $6938: $c5
    nop                                           ; $6939: $00
    nop                                           ; $693a: $00
    add $00                                       ; $693b: $c6 $00
    db $d3                                        ; $693d: $d3
    nop                                           ; $693e: $00
    call nc, $d500                                ; $693f: $d4 $00 $d5
    nop                                           ; $6942: $00
    nop                                           ; $6943: $00
    sub $00                                       ; $6944: $d6 $00
    db $e3                                        ; $6946: $e3
    nop                                           ; $6947: $00
    db $e4                                        ; $6948: $e4
    nop                                           ; $6949: $00
    push hl                                       ; $694a: $e5
    nop                                           ; $694b: $00
    nop                                           ; $694c: $00
    and $00                                       ; $694d: $e6 $00
    di                                            ; $694f: $f3
    nop                                           ; $6950: $00
    db $f4                                        ; $6951: $f4
    nop                                           ; $6952: $00
    push af                                       ; $6953: $f5
    nop                                           ; $6954: $00
    ld [bc], a                                    ; $6955: $02
    or $00                                        ; $6956: $f6 $00
    inc bc                                        ; $6958: $03
    ld bc, $0104                                  ; $6959: $01 $04 $01
    sub b                                         ; $695c: $90
    ld [$00b8], sp                                ; $695d: $08 $b8 $00
    nop                                           ; $6960: $00
    cp c                                          ; $6961: $b9
    nop                                           ; $6962: $00
    cp d                                          ; $6963: $ba
    nop                                           ; $6964: $00
    cp e                                          ; $6965: $bb
    nop                                           ; $6966: $00
    rst $00                                       ; $6967: $c7
    nop                                           ; $6968: $00
    nop                                           ; $6969: $00
    ret z                                         ; $696a: $c8

    nop                                           ; $696b: $00
    ret                                           ; $696c: $c9


    nop                                           ; $696d: $00
    jp z, $d700                                   ; $696e: $ca $00 $d7

    nop                                           ; $6971: $00
    nop                                           ; $6972: $00
    ret c                                         ; $6973: $d8

    nop                                           ; $6974: $00
    reti                                          ; $6975: $d9


    nop                                           ; $6976: $00
    jp c, $e700                                   ; $6977: $da $00 $e7

    nop                                           ; $697a: $00
    nop                                           ; $697b: $00
    add sp, $00                                   ; $697c: $e8 $00
    jp hl                                         ; $697e: $e9


    nop                                           ; $697f: $00
    ld [$f700], a                                 ; $6980: $ea $00 $f7
    nop                                           ; $6983: $00
    nop                                           ; $6984: $00
    ld hl, sp+$00                                 ; $6985: $f8 $00
    ld sp, hl                                     ; $6987: $f9
    nop                                           ; $6988: $00
    ld a, [$0500]                                 ; $6989: $fa $00 $05
    jr nz, jr_08f_698f                            ; $698c: $20 $01

    ld b, b                                       ; $698e: $40

jr_08f_698f:
    ret nz                                        ; $698f: $c0

    nop                                           ; $6990: $00
    ld b, $01                                     ; $6991: $06 $01
    cp h                                          ; $6993: $bc
    nop                                           ; $6994: $00
    cp l                                          ; $6995: $bd
    nop                                           ; $6996: $00
    nop                                           ; $6997: $00
    cp [hl]                                       ; $6998: $be
    nop                                           ; $6999: $00
    cp a                                          ; $699a: $bf
    nop                                           ; $699b: $00
    rlc b                                         ; $699c: $cb $00
    call z, RST_00                                ; $699e: $cc $00 $00
    call $ce00                                    ; $69a1: $cd $00 $ce
    nop                                           ; $69a4: $00
    db $db                                        ; $69a5: $db
    nop                                           ; $69a6: $00
    call c, RST_00                                ; $69a7: $dc $00 $00
    db $dd                                        ; $69aa: $dd
    nop                                           ; $69ab: $00
    sbc $00                                       ; $69ac: $de $00
    db $eb                                        ; $69ae: $eb
    nop                                           ; $69af: $00
    db $ec                                        ; $69b0: $ec
    nop                                           ; $69b1: $00
    nop                                           ; $69b2: $00
    db $ed                                        ; $69b3: $ed
    nop                                           ; $69b4: $00
    xor $00                                       ; $69b5: $ee $00
    ei                                            ; $69b7: $fb
    nop                                           ; $69b8: $00
    db $fc                                        ; $69b9: $fc
    nop                                           ; $69ba: $00
    nop                                           ; $69bb: $00
    db $fd                                        ; $69bc: $fd
    nop                                           ; $69bd: $00
    cp $00                                        ; $69be: $fe $00
    rlca                                          ; $69c0: $07
    ld bc, $8808                                  ; $69c1: $01 $08 $88
    ld h, b                                       ; $69c4: $60
    nop                                           ; $69c5: $00
    add hl, bc                                    ; $69c6: $09
    ld bc, $0cc0                                  ; $69c7: $01 $c0 $0c
    ld [bc], a                                    ; $69ca: $02
    pop bc                                        ; $69cb: $c1
    nop                                           ; $69cc: $00
    jp nz, RST_00                                 ; $69cd: $c2 $00 $00

    rst $08                                       ; $69d0: $cf
    nop                                           ; $69d1: $00
    ret nc                                        ; $69d2: $d0

    nop                                           ; $69d3: $00
    pop de                                        ; $69d4: $d1
    nop                                           ; $69d5: $00
    jp nc, RST_00                                 ; $69d6: $d2 $00 $00

    rst $18                                       ; $69d9: $df
    nop                                           ; $69da: $00
    ldh [rP1], a                                  ; $69db: $e0 $00
    pop hl                                        ; $69dd: $e1
    nop                                           ; $69de: $00
    ld [c], a                                     ; $69df: $e2
    nop                                           ; $69e0: $00
    nop                                           ; $69e1: $00
    rst $28                                       ; $69e2: $ef
    nop                                           ; $69e3: $00
    ldh a, [rP1]                                  ; $69e4: $f0 $00
    pop af                                        ; $69e6: $f1
    nop                                           ; $69e7: $00
    ld a, [c]                                     ; $69e8: $f2
    jr nz, jr_08f_69eb                            ; $69e9: $20 $00

jr_08f_69eb:
    rst $38                                       ; $69eb: $ff
    ld sp, $0102                                  ; $69ec: $31 $02 $01
    ld bc, $0102                                  ; $69ef: $01 $02 $01
    ld a, [bc]                                    ; $69f2: $0a
    nop                                           ; $69f3: $00
    ld bc, $010b                                  ; $69f4: $01 $0b $01
    inc c                                         ; $69f7: $0c
    ld bc, $00b1                                  ; $69f8: $01 $b1 $00
    dec c                                         ; $69fb: $0d
    nop                                           ; $69fc: $00
    ld bc, $0007                                  ; $69fd: $01 $07 $00
    ld c, $01                                     ; $6a00: $0e $01
    rrca                                          ; $6a02: $0f
    ld bc, $001a                                  ; $6a03: $01 $1a $00
    ld bc, $011b                                  ; $6a06: $01 $1b $01
    inc e                                         ; $6a09: $1c
    ld bc, $011d                                  ; $6a0a: $01 $1d $01
    ld a, [hl+]                                   ; $6a0d: $2a
    nop                                           ; $6a0e: $00
    ld bc, $012b                                  ; $6a0f: $01 $2b $01
    inc l                                         ; $6a12: $2c
    ld bc, $012d                                  ; $6a13: $01 $2d $01
    db $fc                                        ; $6a16: $fc
    nop                                           ; $6a17: $00
    nop                                           ; $6a18: $00
    add hl, sp                                    ; $6a19: $39
    ld bc, $013a                                  ; $6a1a: $01 $3a $01
    dec sp                                        ; $6a1d: $3b
    ld bc, $0048                                  ; $6a1e: $01 $48 $00
    ld bc, $0149                                  ; $6a21: $01 $49 $01
    ld c, d                                       ; $6a24: $4a
    ld bc, $014b                                  ; $6a25: $01 $4b $01
    ld e, b                                       ; $6a28: $58
    nop                                           ; $6a29: $00
    ld bc, $0159                                  ; $6a2a: $01 $59 $01
    ld e, d                                       ; $6a2d: $5a
    ld bc, $0055                                  ; $6a2e: $01 $55 $00
    stop                                          ; $6a31: $10 $00
    ld bc, $000b                                  ; $6a33: $01 $0b $00
    ld de, $1201                                  ; $6a36: $11 $01 $12
    ld bc, $001e                                  ; $6a39: $01 $1e $00
    ld bc, $011f                                  ; $6a3c: $01 $1f $01
    jr nz, @+$03                                  ; $6a3f: $20 $01

    ld hl, $2e01                                  ; $6a41: $21 $01 $2e
    nop                                           ; $6a44: $00
    ld bc, $012f                                  ; $6a45: $01 $2f $01
    jr nc, @+$03                                  ; $6a48: $30 $01

    ld sp, $3c01                                  ; $6a4a: $31 $01 $3c
    nop                                           ; $6a4d: $00
    ld bc, $013d                                  ; $6a4e: $01 $3d $01
    ld a, $01                                     ; $6a51: $3e $01
    ccf                                           ; $6a53: $3f
    ld bc, $004c                                  ; $6a54: $01 $4c $00
    ld bc, $014d                                  ; $6a57: $01 $4d $01
    ld c, [hl]                                    ; $6a5a: $4e
    ld bc, $014f                                  ; $6a5b: $01 $4f $01
    ld e, e                                       ; $6a5e: $5b
    nop                                           ; $6a5f: $00
    ld bc, $015c                                  ; $6a60: $01 $5c $01
    ld e, l                                       ; $6a63: $5d
    ld bc, $00ae                                  ; $6a64: $01 $ae $00
    inc de                                        ; $6a67: $13
    inc b                                         ; $6a68: $04
    ld bc, $0114                                  ; $6a69: $01 $14 $01
    dec d                                         ; $6a6c: $15
    ld bc, $0292                                  ; $6a6d: $01 $92 $02
    ld bc, $0023                                  ; $6a70: $01 $23 $00
    ld bc, $0124                                  ; $6a73: $01 $24 $01
    dec h                                         ; $6a76: $25
    ld bc, $0132                                  ; $6a77: $01 $32 $01
    inc sp                                        ; $6a7a: $33
    nop                                           ; $6a7b: $00
    ld bc, $0134                                  ; $6a7c: $01 $34 $01
    dec [hl]                                      ; $6a7f: $35
    ld bc, $0140                                  ; $6a80: $01 $40 $01
    ld b, c                                       ; $6a83: $41
    nop                                           ; $6a84: $00
    ld bc, $0142                                  ; $6a85: $01 $42 $01
    ld b, e                                       ; $6a88: $43
    ld bc, $0150                                  ; $6a89: $01 $50 $01
    ld d, c                                       ; $6a8c: $51
    nop                                           ; $6a8d: $00
    ld bc, $0152                                  ; $6a8e: $01 $52 $01
    ld d, e                                       ; $6a91: $53
    ld bc, $015e                                  ; $6a92: $01 $5e $01
    ld e, a                                       ; $6a95: $5f
    add b                                         ; $6a96: $80
    ret nz                                        ; $6a97: $c0

    db $10                                        ; $6a98: $10
    ld d, $01                                     ; $6a99: $16 $01
    rla                                           ; $6a9b: $17
    ld bc, $0118                                  ; $6a9c: $01 $18 $01
    add hl, de                                    ; $6a9f: $19
    nop                                           ; $6aa0: $00
    ld bc, $0126                                  ; $6aa1: $01 $26 $01
    daa                                           ; $6aa4: $27
    ld bc, $0128                                  ; $6aa5: $01 $28 $01
    add hl, hl                                    ; $6aa8: $29
    add b                                         ; $6aa9: $80
    ld h, [hl]                                    ; $6aaa: $66
    nop                                           ; $6aab: $00
    ld [hl], $01                                  ; $6aac: $36 $01
    scf                                           ; $6aae: $37
    ld bc, $0138                                  ; $6aaf: $01 $38 $01
    ld b, h                                       ; $6ab2: $44
    nop                                           ; $6ab3: $00
    ld bc, $0145                                  ; $6ab4: $01 $45 $01
    ld b, [hl]                                    ; $6ab7: $46
    ld bc, $0147                                  ; $6ab8: $01 $47 $01
    ld d, h                                       ; $6abb: $54
    nop                                           ; $6abc: $00
    ld bc, $0155                                  ; $6abd: $01 $55 $01
    ld d, [hl]                                    ; $6ac0: $56
    ld bc, $0157                                  ; $6ac1: $01 $57 $01
    ld h, b                                       ; $6ac4: $60
    jr nz, jr_08f_6ac8                            ; $6ac5: $20 $01

    ld h, c                                       ; $6ac7: $61

jr_08f_6ac8:
    ld d, b                                       ; $6ac8: $50
    ld bc, $0162                                  ; $6ac9: $01 $62 $01
    ld h, e                                       ; $6acc: $63
    ld bc, $0064                                  ; $6acd: $01 $64 $00
    ld bc, $0165                                  ; $6ad0: $01 $65 $01
    ld h, [hl]                                    ; $6ad3: $66
    ld bc, $0170                                  ; $6ad4: $01 $70 $01
    ld [hl], c                                    ; $6ad7: $71
    nop                                           ; $6ad8: $00
    ld bc, $0172                                  ; $6ad9: $01 $72 $01
    ld [hl], e                                    ; $6adc: $73
    ld bc, $017b                                  ; $6add: $01 $7b $01
    ld a, h                                       ; $6ae0: $7c
    nop                                           ; $6ae1: $00
    ld bc, $017d                                  ; $6ae2: $01 $7d $01
    ld a, [hl]                                    ; $6ae5: $7e
    ld bc, $0186                                  ; $6ae6: $01 $86 $01
    add a                                         ; $6ae9: $87
    ld [bc], a                                    ; $6aea: $02
    ld bc, $0188                                  ; $6aeb: $01 $88 $01
    adc c                                         ; $6aee: $89
    ld bc, $1892                                  ; $6aef: $01 $92 $18
    ld bc, $0293                                  ; $6af2: $01 $93 $02
    ld bc, $0194                                  ; $6af5: $01 $94 $01
    sbc [hl]                                      ; $6af8: $9e
    ld bc, $8007                                  ; $6af9: $01 $07 $80
    ld de, $0067                                  ; $6afc: $11 $67 $00
    ld bc, $0168                                  ; $6aff: $01 $68 $01
    ld l, c                                       ; $6b02: $69
    ld bc, $016a                                  ; $6b03: $01 $6a $01
    ld [hl], h                                    ; $6b06: $74
    nop                                           ; $6b07: $00
    ld bc, $0005                                  ; $6b08: $01 $05 $00
    ld [hl], l                                    ; $6b0b: $75
    ld bc, $0176                                  ; $6b0c: $01 $76 $01
    ld a, a                                       ; $6b0f: $7f
    nop                                           ; $6b10: $00
    ld bc, $0180                                  ; $6b11: $01 $80 $01
    pop hl                                        ; $6b14: $e1
    nop                                           ; $6b15: $00

jr_08f_6b16:
    add c                                         ; $6b16: $81
    ld bc, $008a                                  ; $6b17: $01 $8a $00
    ld bc, $018b                                  ; $6b1a: $01 $8b $01
    adc h                                         ; $6b1d: $8c
    ld bc, $018d                                  ; $6b1e: $01 $8d $01
    sub l                                         ; $6b21: $95
    nop                                           ; $6b22: $00
    ld bc, $0196                                  ; $6b23: $01 $96 $01
    sub a                                         ; $6b26: $97
    ld bc, $0198                                  ; $6b27: $01 $98 $01
    sbc a                                         ; $6b2a: $9f
    ld [$a001], sp                                ; $6b2b: $08 $01 $a0
    ld bc, $20a1                                  ; $6b2e: $01 $a1 $20
    ld bc, $016b                                  ; $6b31: $01 $6b $01
    ld l, h                                       ; $6b34: $6c
    nop                                           ; $6b35: $00
    ld bc, $016d                                  ; $6b36: $01 $6d $01
    ld l, [hl]                                    ; $6b39: $6e
    ld bc, $0177                                  ; $6b3a: $01 $77 $01
    ld a, b                                       ; $6b3d: $78
    nop                                           ; $6b3e: $00
    ld bc, $0179                                  ; $6b3f: $01 $79 $01
    ld a, d                                       ; $6b42: $7a
    ld bc, $0182                                  ; $6b43: $01 $82 $01
    add e                                         ; $6b46: $83
    nop                                           ; $6b47: $00
    ld bc, $0184                                  ; $6b48: $01 $84 $01
    add l                                         ; $6b4b: $85
    ld bc, $018e                                  ; $6b4c: $01 $8e $01
    adc a                                         ; $6b4f: $8f
    nop                                           ; $6b50: $00
    ld bc, $0190                                  ; $6b51: $01 $90 $01
    sub c                                         ; $6b54: $91
    ld bc, $0199                                  ; $6b55: $01 $99 $01
    sbc d                                         ; $6b58: $9a
    nop                                           ; $6b59: $00
    ld bc, $019b                                  ; $6b5a: $01 $9b $01
    sbc h                                         ; $6b5d: $9c
    ld bc, $01a2                                  ; $6b5e: $01 $a2 $01
    and e                                         ; $6b61: $a3
    ld [bc], a                                    ; $6b62: $02
    ld bc, $01a4                                  ; $6b63: $01 $a4 $01
    and l                                         ; $6b66: $a5
    ld bc, $026f                                  ; $6b67: $01 $6f $02
    ldh a, [$9d]                                  ; $6b6a: $f0 $9d
    and b                                         ; $6b6c: $a0
    ld [bc], a                                    ; $6b6d: $02
    jr nc, jr_08f_6b16                            ; $6b6e: $30 $a6

    add b                                         ; $6b70: $80
    ld bc, $007e                                  ; $6b71: $01 $7e $00
    nop                                           ; $6b74: $00
    nop                                           ; $6b75: $00
    nop                                           ; $6b76: $00
    ld bc, $0200                                  ; $6b77: $01 $00 $02
    nop                                           ; $6b7a: $00
    inc bc                                        ; $6b7b: $03
    nop                                           ; $6b7c: $00
    nop                                           ; $6b7d: $00
    stop                                          ; $6b7e: $10 $00
    ld de, $1200                                  ; $6b80: $11 $00 $12
    nop                                           ; $6b83: $00
    inc b                                         ; $6b84: $04
    nop                                           ; $6b85: $00
    nop                                           ; $6b86: $00
    dec b                                         ; $6b87: $05
    nop                                           ; $6b88: $00
    ld b, $00                                     ; $6b89: $06 $00
    rlca                                          ; $6b8b: $07
    nop                                           ; $6b8c: $00
    inc de                                        ; $6b8d: $13
    nop                                           ; $6b8e: $00
    nop                                           ; $6b8f: $00
    inc d                                         ; $6b90: $14
    nop                                           ; $6b91: $00
    dec d                                         ; $6b92: $15
    nop                                           ; $6b93: $00
    ld [$0900], sp                                ; $6b94: $08 $00 $09
    nop                                           ; $6b97: $00
    nop                                           ; $6b98: $00
    ld a, [bc]                                    ; $6b99: $0a
    nop                                           ; $6b9a: $00
    dec bc                                        ; $6b9b: $0b
    nop                                           ; $6b9c: $00
    ld d, $00                                     ; $6b9d: $16 $00
    rla                                           ; $6b9f: $17
    nop                                           ; $6ba0: $00
    nop                                           ; $6ba1: $00
    jr jr_08f_6ba4                                ; $6ba2: $18 $00

jr_08f_6ba4:
    inc c                                         ; $6ba4: $0c
    nop                                           ; $6ba5: $00
    dec c                                         ; $6ba6: $0d
    nop                                           ; $6ba7: $00
    ld c, $00                                     ; $6ba8: $0e $00
    nop                                           ; $6baa: $00
    rrca                                          ; $6bab: $0f
    nop                                           ; $6bac: $00
    add hl, de                                    ; $6bad: $19
    nop                                           ; $6bae: $00
    ld a, [de]                                    ; $6baf: $1a
    nop                                           ; $6bb0: $00
    dec de                                        ; $6bb1: $1b
    nop                                           ; $6bb2: $00
    nop                                           ; $6bb3: $00
    inc e                                         ; $6bb4: $1c
    nop                                           ; $6bb5: $00
    dec e                                         ; $6bb6: $1d
    nop                                           ; $6bb7: $00
    ld e, $00                                     ; $6bb8: $1e $00
    rra                                           ; $6bba: $1f
    nop                                           ; $6bbb: $00
    nop                                           ; $6bbc: $00
    inc l                                         ; $6bbd: $2c
    nop                                           ; $6bbe: $00
    dec l                                         ; $6bbf: $2d
    nop                                           ; $6bc0: $00
    ld l, $00                                     ; $6bc1: $2e $00
    jr nz, jr_08f_6bc5                            ; $6bc3: $20 $00

jr_08f_6bc5:
    nop                                           ; $6bc5: $00
    ld hl, $2200                                  ; $6bc6: $21 $00 $22
    nop                                           ; $6bc9: $00
    inc hl                                        ; $6bca: $23
    nop                                           ; $6bcb: $00
    cpl                                           ; $6bcc: $2f
    nop                                           ; $6bcd: $00
    nop                                           ; $6bce: $00
    jr nc, jr_08f_6bd1                            ; $6bcf: $30 $00

jr_08f_6bd1:
    ld sp, $2400                                  ; $6bd1: $31 $00 $24
    nop                                           ; $6bd4: $00
    dec h                                         ; $6bd5: $25
    nop                                           ; $6bd6: $00
    nop                                           ; $6bd7: $00
    ld h, $00                                     ; $6bd8: $26 $00
    daa                                           ; $6bda: $27
    nop                                           ; $6bdb: $00
    ld [hl-], a                                   ; $6bdc: $32
    nop                                           ; $6bdd: $00
    inc sp                                        ; $6bde: $33
    nop                                           ; $6bdf: $00
    nop                                           ; $6be0: $00
    inc [hl]                                      ; $6be1: $34
    nop                                           ; $6be2: $00
    jr z, jr_08f_6be5                             ; $6be3: $28 $00

jr_08f_6be5:
    add hl, hl                                    ; $6be5: $29
    nop                                           ; $6be6: $00
    ld a, [hl+]                                   ; $6be7: $2a
    nop                                           ; $6be8: $00
    nop                                           ; $6be9: $00
    dec hl                                        ; $6bea: $2b
    nop                                           ; $6beb: $00
    dec [hl]                                      ; $6bec: $35
    nop                                           ; $6bed: $00
    ld [hl], $00                                  ; $6bee: $36 $00
    scf                                           ; $6bf0: $37
    nop                                           ; $6bf1: $00
    nop                                           ; $6bf2: $00
    jr c, jr_08f_6bf5                             ; $6bf3: $38 $00

jr_08f_6bf5:
    add hl, sp                                    ; $6bf5: $39
    nop                                           ; $6bf6: $00
    ld a, [hl-]                                   ; $6bf7: $3a
    nop                                           ; $6bf8: $00
    dec sp                                        ; $6bf9: $3b
    nop                                           ; $6bfa: $00
    nop                                           ; $6bfb: $00
    inc a                                         ; $6bfc: $3c
    nop                                           ; $6bfd: $00
    dec a                                         ; $6bfe: $3d
    nop                                           ; $6bff: $00
    ld a, $00                                     ; $6c00: $3e $00
    ld [hl], c                                    ; $6c02: $71
    nop                                           ; $6c03: $00
    nop                                           ; $6c04: $00
    nop                                           ; $6c05: $00
    nop                                           ; $6c06: $00
    ld bc, $0200                                  ; $6c07: $01 $00 $02
    nop                                           ; $6c0a: $00
    inc bc                                        ; $6c0b: $03
    nop                                           ; $6c0c: $00
    ld [$000d], sp                                ; $6c0d: $08 $0d $00
    ld c, $00                                     ; $6c10: $0e $00
    ld bc, $0408                                  ; $6c12: $01 $08 $04
    nop                                           ; $6c15: $00
    dec b                                         ; $6c16: $05
    ld [bc], a                                    ; $6c17: $02
    nop                                           ; $6c18: $00
    ld b, $00                                     ; $6c19: $06 $00
    rrca                                          ; $6c1b: $0f
    nop                                           ; $6c1c: $00
    db $10                                        ; $6c1d: $10
    ld c, $10                                     ; $6c1e: $0e $10
    rlca                                          ; $6c20: $07
    nop                                           ; $6c21: $00
    nop                                           ; $6c22: $00
    ld [$0900], sp                                ; $6c23: $08 $00 $09
    nop                                           ; $6c26: $00
    ld de, $1200                                  ; $6c27: $11 $00 $12
    add b                                         ; $6c2a: $80
    inc e                                         ; $6c2b: $1c
    db $10                                        ; $6c2c: $10
    ld a, [bc]                                    ; $6c2d: $0a
    nop                                           ; $6c2e: $00
    dec bc                                        ; $6c2f: $0b
    nop                                           ; $6c30: $00
    inc c                                         ; $6c31: $0c
    nop                                           ; $6c32: $00
    inc de                                        ; $6c33: $13
    jr nz, jr_08f_6c36                            ; $6c34: $20 $00

jr_08f_6c36:
    inc d                                         ; $6c36: $14
    ld a, [hl+]                                   ; $6c37: $2a
    db $10                                        ; $6c38: $10
    dec d                                         ; $6c39: $15
    nop                                           ; $6c3a: $00
    ld d, $00                                     ; $6c3b: $16 $00
    rla                                           ; $6c3d: $17
    ld [$2100], sp                                ; $6c3e: $08 $00 $21
    nop                                           ; $6c41: $00
    ld [hl+], a                                   ; $6c42: $22
    jr c, jr_08f_6c55                             ; $6c43: $38 $10

    jr jr_08f_6c47                                ; $6c45: $18 $00

jr_08f_6c47:
    add hl, de                                    ; $6c47: $19
    ld [bc], a                                    ; $6c48: $02
    nop                                           ; $6c49: $00
    ld a, [de]                                    ; $6c4a: $1a
    nop                                           ; $6c4b: $00
    inc hl                                        ; $6c4c: $23
    nop                                           ; $6c4d: $00
    inc h                                         ; $6c4e: $24
    ld b, [hl]                                    ; $6c4f: $46
    db $10                                        ; $6c50: $10
    dec de                                        ; $6c51: $1b
    nop                                           ; $6c52: $00
    nop                                           ; $6c53: $00
    inc e                                         ; $6c54: $1c

jr_08f_6c55:
    nop                                           ; $6c55: $00
    dec e                                         ; $6c56: $1d
    nop                                           ; $6c57: $00
    dec h                                         ; $6c58: $25
    nop                                           ; $6c59: $00
    ld h, $80                                     ; $6c5a: $26 $80
    ld d, h                                       ; $6c5c: $54
    db $10                                        ; $6c5d: $10
    ld e, $00                                     ; $6c5e: $1e $00
    rra                                           ; $6c60: $1f
    nop                                           ; $6c61: $00
    jr nz, jr_08f_6c64                            ; $6c62: $20 $00

jr_08f_6c64:
    daa                                           ; $6c64: $27
    jr nz, jr_08f_6c67                            ; $6c65: $20 $00

jr_08f_6c67:
    jr z, jr_08f_6ccb                             ; $6c67: $28 $62

    db $10                                        ; $6c69: $10
    add hl, hl                                    ; $6c6a: $29
    nop                                           ; $6c6b: $00
    ld a, [hl+]                                   ; $6c6c: $2a
    nop                                           ; $6c6d: $00
    dec hl                                        ; $6c6e: $2b
    ld [$3200], sp                                ; $6c6f: $08 $00 $32
    nop                                           ; $6c72: $00
    inc sp                                        ; $6c73: $33
    ld [hl], b                                    ; $6c74: $70
    db $10                                        ; $6c75: $10
    inc l                                         ; $6c76: $2c
    nop                                           ; $6c77: $00
    dec l                                         ; $6c78: $2d
    ld [bc], a                                    ; $6c79: $02
    nop                                           ; $6c7a: $00
    ld l, $00                                     ; $6c7b: $2e $00
    inc [hl]                                      ; $6c7d: $34
    nop                                           ; $6c7e: $00
    dec [hl]                                      ; $6c7f: $35
    ld a, [hl]                                    ; $6c80: $7e
    db $10                                        ; $6c81: $10
    cpl                                           ; $6c82: $2f
    nop                                           ; $6c83: $00
    nop                                           ; $6c84: $00
    jr nc, jr_08f_6c87                            ; $6c85: $30 $00

jr_08f_6c87:
    ld sp, $3600                                  ; $6c87: $31 $00 $36
    nop                                           ; $6c8a: $00
    scf                                           ; $6c8b: $37
    add b                                         ; $6c8c: $80
    adc h                                         ; $6c8d: $8c
    nop                                           ; $6c8e: $00
    xor b                                         ; $6c8f: $a8
    ld bc, $0000                                  ; $6c90: $01 $00 $00
    nop                                           ; $6c93: $00
    ld bc, $0200                                  ; $6c94: $01 $00 $02
    nop                                           ; $6c97: $00
    inc bc                                        ; $6c98: $03
    nop                                           ; $6c99: $00
    dec b                                         ; $6c9a: $05
    dec c                                         ; $6c9b: $0d
    nop                                           ; $6c9c: $00
    ld c, $00                                     ; $6c9d: $0e $00
    rrca                                          ; $6c9f: $0f
    ld a, [bc]                                    ; $6ca0: $0a
    nop                                           ; $6ca1: $00
    dec de                                        ; $6ca2: $1b
    ld a, [bc]                                    ; $6ca3: $0a
    nop                                           ; $6ca4: $00
    nop                                           ; $6ca5: $00
    inc e                                         ; $6ca6: $1c
    nop                                           ; $6ca7: $00
    dec e                                         ; $6ca8: $1d
    nop                                           ; $6ca9: $00
    nop                                           ; $6caa: $00
    nop                                           ; $6cab: $00
    inc b                                         ; $6cac: $04
    nop                                           ; $6cad: $00
    nop                                           ; $6cae: $00
    dec b                                         ; $6caf: $05
    nop                                           ; $6cb0: $00
    ld b, $00                                     ; $6cb1: $06 $00
    stop                                          ; $6cb3: $10 $00
    ld de, $4100                                  ; $6cb5: $11 $00 $41
    ld [de], a                                    ; $6cb8: $12
    ld a, [bc]                                    ; $6cb9: $0a
    nop                                           ; $6cba: $00
    ld e, $00                                     ; $6cbb: $1e $00
    rra                                           ; $6cbd: $1f
    nop                                           ; $6cbe: $00
    jr nz, @+$1a                                  ; $6cbf: $20 $18

    stop                                          ; $6cc1: $10 $00
    rlca                                          ; $6cc3: $07
    nop                                           ; $6cc4: $00
    ld [$0900], sp                                ; $6cc5: $08 $00 $09
    nop                                           ; $6cc8: $00
    inc de                                        ; $6cc9: $13
    nop                                           ; $6cca: $00

jr_08f_6ccb:
    nop                                           ; $6ccb: $00
    inc d                                         ; $6ccc: $14
    nop                                           ; $6ccd: $00
    dec d                                         ; $6cce: $15
    nop                                           ; $6ccf: $00
    ld d, $00                                     ; $6cd0: $16 $00
    ld hl, $1000                                  ; $6cd2: $21 $00 $10
    ld [hl+], a                                   ; $6cd5: $22
    nop                                           ; $6cd6: $00
    inc hl                                        ; $6cd7: $23
    jr nc, jr_08f_6cea                            ; $6cd8: $30 $10

    ld a, [bc]                                    ; $6cda: $0a
    nop                                           ; $6cdb: $00
    dec bc                                        ; $6cdc: $0b
    nop                                           ; $6cdd: $00
    nop                                           ; $6cde: $00
    inc c                                         ; $6cdf: $0c
    nop                                           ; $6ce0: $00
    rla                                           ; $6ce1: $17
    nop                                           ; $6ce2: $00
    jr jr_08f_6ce5                                ; $6ce3: $18 $00

jr_08f_6ce5:
    add hl, de                                    ; $6ce5: $19
    nop                                           ; $6ce6: $00
    ld bc, $001a                                  ; $6ce7: $01 $1a $00

jr_08f_6cea:
    inc h                                         ; $6cea: $24
    nop                                           ; $6ceb: $00
    dec h                                         ; $6cec: $25
    nop                                           ; $6ced: $00
    ld h, $48                                     ; $6cee: $26 $48
    stop                                          ; $6cf0: $10 $00
    daa                                           ; $6cf2: $27
    nop                                           ; $6cf3: $00
    jr z, jr_08f_6cf6                             ; $6cf4: $28 $00

jr_08f_6cf6:
    add hl, hl                                    ; $6cf6: $29
    nop                                           ; $6cf7: $00
    inc sp                                        ; $6cf8: $33
    nop                                           ; $6cf9: $00
    nop                                           ; $6cfa: $00
    inc [hl]                                      ; $6cfb: $34
    nop                                           ; $6cfc: $00
    dec [hl]                                      ; $6cfd: $35
    nop                                           ; $6cfe: $00
    ld [hl], $00                                  ; $6cff: $36 $00
    ld b, e                                       ; $6d01: $43
    nop                                           ; $6d02: $00
    db $10                                        ; $6d03: $10
    ld b, h                                       ; $6d04: $44
    nop                                           ; $6d05: $00
    ld b, l                                       ; $6d06: $45
    ld h, b                                       ; $6d07: $60
    db $10                                        ; $6d08: $10
    ld a, [hl+]                                   ; $6d09: $2a
    nop                                           ; $6d0a: $00
    dec hl                                        ; $6d0b: $2b
    nop                                           ; $6d0c: $00
    nop                                           ; $6d0d: $00
    inc l                                         ; $6d0e: $2c
    nop                                           ; $6d0f: $00
    scf                                           ; $6d10: $37
    nop                                           ; $6d11: $00
    jr c, jr_08f_6d14                             ; $6d12: $38 $00

jr_08f_6d14:
    add hl, sp                                    ; $6d14: $39
    nop                                           ; $6d15: $00
    ld bc, $003a                                  ; $6d16: $01 $3a $00
    ld b, [hl]                                    ; $6d19: $46
    nop                                           ; $6d1a: $00
    ld b, a                                       ; $6d1b: $47
    nop                                           ; $6d1c: $00
    ld c, b                                       ; $6d1d: $48
    ld a, b                                       ; $6d1e: $78
    stop                                          ; $6d1f: $10 $00
    dec l                                         ; $6d21: $2d
    nop                                           ; $6d22: $00
    ld l, $00                                     ; $6d23: $2e $00
    cpl                                           ; $6d25: $2f
    nop                                           ; $6d26: $00
    dec sp                                        ; $6d27: $3b
    nop                                           ; $6d28: $00
    nop                                           ; $6d29: $00
    inc a                                         ; $6d2a: $3c
    nop                                           ; $6d2b: $00
    dec a                                         ; $6d2c: $3d
    nop                                           ; $6d2d: $00
    ld a, $00                                     ; $6d2e: $3e $00
    ld c, c                                       ; $6d30: $49
    nop                                           ; $6d31: $00
    db $10                                        ; $6d32: $10
    ld c, d                                       ; $6d33: $4a
    nop                                           ; $6d34: $00
    ld c, e                                       ; $6d35: $4b
    sub b                                         ; $6d36: $90
    db $10                                        ; $6d37: $10
    jr nc, jr_08f_6d3a                            ; $6d38: $30 $00

jr_08f_6d3a:
    ld sp, $0000                                  ; $6d3a: $31 $00 $00
    ld [hl-], a                                   ; $6d3d: $32
    nop                                           ; $6d3e: $00
    ccf                                           ; $6d3f: $3f
    nop                                           ; $6d40: $00
    ld b, b                                       ; $6d41: $40
    nop                                           ; $6d42: $00
    ld b, c                                       ; $6d43: $41
    nop                                           ; $6d44: $00
    ld bc, $0042                                  ; $6d45: $01 $42 $00
    ld c, h                                       ; $6d48: $4c
    nop                                           ; $6d49: $00
    ld c, l                                       ; $6d4a: $4d
    nop                                           ; $6d4b: $00
    ld c, [hl]                                    ; $6d4c: $4e
    xor b                                         ; $6d4d: $a8
    stop                                          ; $6d4e: $10 $00
    ld c, a                                       ; $6d50: $4f
    nop                                           ; $6d51: $00
    ld d, b                                       ; $6d52: $50
    nop                                           ; $6d53: $00
    ld d, c                                       ; $6d54: $51
    nop                                           ; $6d55: $00
    ld e, h                                       ; $6d56: $5c
    nop                                           ; $6d57: $00
    dec b                                         ; $6d58: $05
    ld e, l                                       ; $6d59: $5d
    nop                                           ; $6d5a: $00
    ld e, [hl]                                    ; $6d5b: $5e
    nop                                           ; $6d5c: $00
    ld e, a                                       ; $6d5d: $5f
    inc c                                         ; $6d5e: $0c
    db $10                                        ; $6d5f: $10
    ld l, h                                       ; $6d60: $6c
    ret nz                                        ; $6d61: $c0

    stop                                          ; $6d62: $10 $00
    ld d, d                                       ; $6d64: $52
    nop                                           ; $6d65: $00
    ld d, e                                       ; $6d66: $53
    nop                                           ; $6d67: $00
    ld d, h                                       ; $6d68: $54
    nop                                           ; $6d69: $00
    ld h, b                                       ; $6d6a: $60
    nop                                           ; $6d6b: $00
    dec b                                         ; $6d6c: $05
    ld h, c                                       ; $6d6d: $61
    nop                                           ; $6d6e: $00
    ld h, d                                       ; $6d6f: $62
    nop                                           ; $6d70: $00
    ld h, e                                       ; $6d71: $63
    inc c                                         ; $6d72: $0c
    db $10                                        ; $6d73: $10
    ld l, l                                       ; $6d74: $6d
    ret c                                         ; $6d75: $d8

    stop                                          ; $6d76: $10 $00
    ld d, l                                       ; $6d78: $55
    nop                                           ; $6d79: $00
    ld d, [hl]                                    ; $6d7a: $56
    nop                                           ; $6d7b: $00
    ld d, a                                       ; $6d7c: $57
    nop                                           ; $6d7d: $00
    ld h, h                                       ; $6d7e: $64
    nop                                           ; $6d7f: $00
    dec b                                         ; $6d80: $05
    ld h, l                                       ; $6d81: $65
    nop                                           ; $6d82: $00
    ld h, [hl]                                    ; $6d83: $66
    nop                                           ; $6d84: $00
    ld h, a                                       ; $6d85: $67
    inc c                                         ; $6d86: $0c
    db $10                                        ; $6d87: $10
    ld l, [hl]                                    ; $6d88: $6e
    ldh a, [rP1]                                  ; $6d89: $f0 $00
    nop                                           ; $6d8b: $00
    ld e, b                                       ; $6d8c: $58
    nop                                           ; $6d8d: $00
    ld e, c                                       ; $6d8e: $59
    nop                                           ; $6d8f: $00
    ld e, d                                       ; $6d90: $5a
    nop                                           ; $6d91: $00
    ld e, e                                       ; $6d92: $5b
    nop                                           ; $6d93: $00
    ld bc, $0068                                  ; $6d94: $01 $68 $00
    ld l, c                                       ; $6d97: $69
    nop                                           ; $6d98: $00
    ld l, d                                       ; $6d99: $6a
    nop                                           ; $6d9a: $00
    ld l, e                                       ; $6d9b: $6b
    inc c                                         ; $6d9c: $0c
    stop                                          ; $6d9d: $10 $00
    ld l, a                                       ; $6d9f: $6f
    nop                                           ; $6da0: $00
    ld [hl], b                                    ; $6da1: $70
    nop                                           ; $6da2: $00
    ld [hl], c                                    ; $6da3: $71
    nop                                           ; $6da4: $00
    ld [hl], d                                    ; $6da5: $72
    nop                                           ; $6da6: $00
    nop                                           ; $6da7: $00
    ld [hl], e                                    ; $6da8: $73
    nop                                           ; $6da9: $00
    ld [hl], h                                    ; $6daa: $74
    nop                                           ; $6dab: $00
    add b                                         ; $6dac: $80
    nop                                           ; $6dad: $00
    add c                                         ; $6dae: $81
    nop                                           ; $6daf: $00
    nop                                           ; $6db0: $00
    add d                                         ; $6db1: $82
    nop                                           ; $6db2: $00
    add e                                         ; $6db3: $83
    nop                                           ; $6db4: $00
    sub b                                         ; $6db5: $90
    nop                                           ; $6db6: $00
    sub c                                         ; $6db7: $91
    nop                                           ; $6db8: $00
    nop                                           ; $6db9: $00
    sub d                                         ; $6dba: $92
    nop                                           ; $6dbb: $00
    sub e                                         ; $6dbc: $93
    nop                                           ; $6dbd: $00
    ld [hl], l                                    ; $6dbe: $75
    nop                                           ; $6dbf: $00
    halt                                          ; $6dc0: $76
    nop                                           ; $6dc1: $00
    nop                                           ; $6dc2: $00
    ld [hl], a                                    ; $6dc3: $77
    nop                                           ; $6dc4: $00
    ld a, b                                       ; $6dc5: $78
    nop                                           ; $6dc6: $00
    add h                                         ; $6dc7: $84
    nop                                           ; $6dc8: $00
    add l                                         ; $6dc9: $85
    nop                                           ; $6dca: $00
    nop                                           ; $6dcb: $00
    add [hl]                                      ; $6dcc: $86
    nop                                           ; $6dcd: $00
    add a                                         ; $6dce: $87
    nop                                           ; $6dcf: $00
    sub h                                         ; $6dd0: $94
    nop                                           ; $6dd1: $00
    sub l                                         ; $6dd2: $95
    nop                                           ; $6dd3: $00
    nop                                           ; $6dd4: $00
    sub [hl]                                      ; $6dd5: $96
    nop                                           ; $6dd6: $00
    sub a                                         ; $6dd7: $97
    nop                                           ; $6dd8: $00
    ld a, c                                       ; $6dd9: $79
    nop                                           ; $6dda: $00
    ld a, d                                       ; $6ddb: $7a
    nop                                           ; $6ddc: $00
    nop                                           ; $6ddd: $00
    ld a, e                                       ; $6dde: $7b
    nop                                           ; $6ddf: $00
    ld a, h                                       ; $6de0: $7c
    nop                                           ; $6de1: $00
    adc b                                         ; $6de2: $88
    nop                                           ; $6de3: $00
    adc c                                         ; $6de4: $89
    nop                                           ; $6de5: $00
    nop                                           ; $6de6: $00
    adc d                                         ; $6de7: $8a
    nop                                           ; $6de8: $00
    adc e                                         ; $6de9: $8b
    nop                                           ; $6dea: $00
    sbc b                                         ; $6deb: $98
    nop                                           ; $6dec: $00
    sbc c                                         ; $6ded: $99
    nop                                           ; $6dee: $00
    db $10                                        ; $6def: $10
    sbc d                                         ; $6df0: $9a
    nop                                           ; $6df1: $00
    sbc e                                         ; $6df2: $9b
    ld d, b                                       ; $6df3: $50
    ld bc, $007d                                  ; $6df4: $01 $7d $00
    ld a, [hl]                                    ; $6df7: $7e
    nop                                           ; $6df8: $00
    nop                                           ; $6df9: $00
    ld a, a                                       ; $6dfa: $7f
    nop                                           ; $6dfb: $00
    adc h                                         ; $6dfc: $8c
    nop                                           ; $6dfd: $00
    adc l                                         ; $6dfe: $8d
    nop                                           ; $6dff: $00
    adc [hl]                                      ; $6e00: $8e
    nop                                           ; $6e01: $00
    ld d, b                                       ; $6e02: $50
    adc a                                         ; $6e03: $8f
    inc c                                         ; $6e04: $0c
    db $10                                        ; $6e05: $10
    sbc h                                         ; $6e06: $9c
    ld l, b                                       ; $6e07: $68
    ld de, $009d                                  ; $6e08: $11 $9d $00
    sbc [hl]                                      ; $6e0b: $9e
    nop                                           ; $6e0c: $00
    nop                                           ; $6e0d: $00
    sbc a                                         ; $6e0e: $9f
    nop                                           ; $6e0f: $00
    xor c                                         ; $6e10: $a9
    nop                                           ; $6e11: $00
    xor d                                         ; $6e12: $aa
    nop                                           ; $6e13: $00
    xor e                                         ; $6e14: $ab
    nop                                           ; $6e15: $00
    ld d, b                                       ; $6e16: $50
    xor h                                         ; $6e17: $ac
    inc c                                         ; $6e18: $0c
    db $10                                        ; $6e19: $10
    cp c                                          ; $6e1a: $b9
    add b                                         ; $6e1b: $80
    ld de, $00a0                                  ; $6e1c: $11 $a0 $00
    and c                                         ; $6e1f: $a1
    nop                                           ; $6e20: $00
    nop                                           ; $6e21: $00
    and d                                         ; $6e22: $a2
    nop                                           ; $6e23: $00
    xor l                                         ; $6e24: $ad
    nop                                           ; $6e25: $00
    xor [hl]                                      ; $6e26: $ae
    nop                                           ; $6e27: $00
    xor a                                         ; $6e28: $af
    nop                                           ; $6e29: $00
    ld d, b                                       ; $6e2a: $50
    or b                                          ; $6e2b: $b0
    inc c                                         ; $6e2c: $0c
    db $10                                        ; $6e2d: $10
    cp d                                          ; $6e2e: $ba
    sbc b                                         ; $6e2f: $98
    ld de, $00a3                                  ; $6e30: $11 $a3 $00
    and h                                         ; $6e33: $a4
    nop                                           ; $6e34: $00
    nop                                           ; $6e35: $00
    and l                                         ; $6e36: $a5
    nop                                           ; $6e37: $00
    or c                                          ; $6e38: $b1
    nop                                           ; $6e39: $00
    or d                                          ; $6e3a: $b2
    nop                                           ; $6e3b: $00
    or e                                          ; $6e3c: $b3
    nop                                           ; $6e3d: $00
    ld d, b                                       ; $6e3e: $50
    or h                                          ; $6e3f: $b4
    inc c                                         ; $6e40: $0c
    db $10                                        ; $6e41: $10
    cp e                                          ; $6e42: $bb
    or b                                          ; $6e43: $b0
    ld de, $00a6                                  ; $6e44: $11 $a6 $00
    and a                                         ; $6e47: $a7
    nop                                           ; $6e48: $00
    nop                                           ; $6e49: $00
    xor b                                         ; $6e4a: $a8
    nop                                           ; $6e4b: $00
    or l                                          ; $6e4c: $b5
    nop                                           ; $6e4d: $00
    or [hl]                                       ; $6e4e: $b6
    nop                                           ; $6e4f: $00
    or a                                          ; $6e50: $b7
    nop                                           ; $6e51: $00
    ld d, b                                       ; $6e52: $50
    cp b                                          ; $6e53: $b8
    inc c                                         ; $6e54: $0c
    db $10                                        ; $6e55: $10
    cp h                                          ; $6e56: $bc
    ret z                                         ; $6e57: $c8

    ld de, $00bd                                  ; $6e58: $11 $bd $00
    cp [hl]                                       ; $6e5b: $be
    nop                                           ; $6e5c: $00
    nop                                           ; $6e5d: $00
    cp a                                          ; $6e5e: $bf
    nop                                           ; $6e5f: $00
    call nz, $c500                                ; $6e60: $c4 $00 $c5
    nop                                           ; $6e63: $00
    add $00                                       ; $6e64: $c6 $00
    ld bc, $00c7                                  ; $6e66: $01 $c7 $00
    call z, $cd00                                 ; $6e69: $cc $00 $cd
    nop                                           ; $6e6c: $00
    adc $e0                                       ; $6e6d: $ce $e0
    ld bc, $c000                                  ; $6e6f: $01 $00 $c0
    nop                                           ; $6e72: $00
    pop bc                                        ; $6e73: $c1
    nop                                           ; $6e74: $00
    jp nz, $c300                                  ; $6e75: $c2 $00 $c3

    nop                                           ; $6e78: $00
    nop                                           ; $6e79: $00
    ret z                                         ; $6e7a: $c8

    nop                                           ; $6e7b: $00
    ret                                           ; $6e7c: $c9


    nop                                           ; $6e7d: $00
    jp z, $cb00                                   ; $6e7e: $ca $00 $cb

    nop                                           ; $6e81: $00
    nop                                           ; $6e82: $00
    rst $08                                       ; $6e83: $cf
    nop                                           ; $6e84: $00
    ret nc                                        ; $6e85: $d0

    nop                                           ; $6e86: $00
    pop de                                        ; $6e87: $d1
    nop                                           ; $6e88: $00
    jp nc, Jump_08f_5700                          ; $6e89: $d2 $00 $57

    nop                                           ; $6e8c: $00
    nop                                           ; $6e8d: $00
    nop                                           ; $6e8e: $00
    nop                                           ; $6e8f: $00
    ld bc, $0200                                  ; $6e90: $01 $00 $02
    nop                                           ; $6e93: $00
    inc bc                                        ; $6e94: $03
    nop                                           ; $6e95: $00
    nop                                           ; $6e96: $00
    dec c                                         ; $6e97: $0d
    nop                                           ; $6e98: $00
    ld c, $00                                     ; $6e99: $0e $00
    rrca                                          ; $6e9b: $0f
    nop                                           ; $6e9c: $00
    stop                                          ; $6e9d: $10 $00
    add b                                         ; $6e9f: $80
    ld bc, $0408                                  ; $6ea0: $01 $08 $04
    nop                                           ; $6ea3: $00
    dec b                                         ; $6ea4: $05
    nop                                           ; $6ea5: $00
    ld b, $00                                     ; $6ea6: $06 $00
    ld de, $0002                                  ; $6ea8: $11 $02 $00
    ld [de], a                                    ; $6eab: $12
    nop                                           ; $6eac: $00
    inc de                                        ; $6ead: $13
    nop                                           ; $6eae: $00
    inc d                                         ; $6eaf: $14
    ld [de], a                                    ; $6eb0: $12
    db $10                                        ; $6eb1: $10
    rlca                                          ; $6eb2: $07
    nop                                           ; $6eb3: $00
    nop                                           ; $6eb4: $00
    ld [$0900], sp                                ; $6eb5: $08 $00 $09
    nop                                           ; $6eb8: $00
    dec d                                         ; $6eb9: $15
    nop                                           ; $6eba: $00
    ld d, $08                                     ; $6ebb: $16 $08
    nop                                           ; $6ebd: $00
    rla                                           ; $6ebe: $17
    nop                                           ; $6ebf: $00
    jr @+$26                                      ; $6ec0: $18 $24

    db $10                                        ; $6ec2: $10
    ld a, [bc]                                    ; $6ec3: $0a
    nop                                           ; $6ec4: $00
    dec bc                                        ; $6ec5: $0b
    nop                                           ; $6ec6: $00
    nop                                           ; $6ec7: $00
    inc c                                         ; $6ec8: $0c
    nop                                           ; $6ec9: $00
    add hl, de                                    ; $6eca: $19
    nop                                           ; $6ecb: $00
    ld a, [de]                                    ; $6ecc: $1a
    nop                                           ; $6ecd: $00
    dec de                                        ; $6ece: $1b
    jr nz, jr_08f_6ed1                            ; $6ecf: $20 $00

jr_08f_6ed1:
    inc e                                         ; $6ed1: $1c
    ld [hl], $10                                  ; $6ed2: $36 $10
    dec e                                         ; $6ed4: $1d
    nop                                           ; $6ed5: $00
    ld e, $00                                     ; $6ed6: $1e $00
    rra                                           ; $6ed8: $1f
    nop                                           ; $6ed9: $00
    nop                                           ; $6eda: $00
    inc hl                                        ; $6edb: $23
    nop                                           ; $6edc: $00
    inc h                                         ; $6edd: $24
    nop                                           ; $6ede: $00
    dec h                                         ; $6edf: $25
    nop                                           ; $6ee0: $00
    ld h, $80                                     ; $6ee1: $26 $80
    ld c, b                                       ; $6ee3: $48
    db $10                                        ; $6ee4: $10
    jr nz, jr_08f_6ee7                            ; $6ee5: $20 $00

jr_08f_6ee7:
    ld hl, $2200                                  ; $6ee7: $21 $00 $22
    nop                                           ; $6eea: $00
    daa                                           ; $6eeb: $27
    ld [bc], a                                    ; $6eec: $02
    nop                                           ; $6eed: $00
    jr z, jr_08f_6ef0                             ; $6eee: $28 $00

jr_08f_6ef0:
    add hl, hl                                    ; $6ef0: $29
    nop                                           ; $6ef1: $00
    ld a, [hl+]                                   ; $6ef2: $2a
    ld e, d                                       ; $6ef3: $5a
    nop                                           ; $6ef4: $00
    ld b, [hl]                                    ; $6ef5: $46
    nop                                           ; $6ef6: $00
    nop                                           ; $6ef7: $00
    nop                                           ; $6ef8: $00
    nop                                           ; $6ef9: $00
    ld bc, $0200                                  ; $6efa: $01 $00 $02
    nop                                           ; $6efd: $00
    inc bc                                        ; $6efe: $03
    nop                                           ; $6eff: $00
    nop                                           ; $6f00: $00
    rrca                                          ; $6f01: $0f
    nop                                           ; $6f02: $00
    stop                                          ; $6f03: $10 $00
    nop                                           ; $6f05: $00
    nop                                           ; $6f06: $00
    inc b                                         ; $6f07: $04
    nop                                           ; $6f08: $00
    nop                                           ; $6f09: $00
    dec b                                         ; $6f0a: $05
    nop                                           ; $6f0b: $00
    ld b, $00                                     ; $6f0c: $06 $00
    ld de, $1200                                  ; $6f0e: $11 $00 $12
    nop                                           ; $6f11: $00
    nop                                           ; $6f12: $00
    rlca                                          ; $6f13: $07
    nop                                           ; $6f14: $00
    ld [$0900], sp                                ; $6f15: $08 $00 $09
    nop                                           ; $6f18: $00
    ld a, [bc]                                    ; $6f19: $0a
    nop                                           ; $6f1a: $00
    nop                                           ; $6f1b: $00
    inc de                                        ; $6f1c: $13
    nop                                           ; $6f1d: $00
    inc d                                         ; $6f1e: $14
    nop                                           ; $6f1f: $00
    dec bc                                        ; $6f20: $0b
    nop                                           ; $6f21: $00
    inc c                                         ; $6f22: $0c
    nop                                           ; $6f23: $00
    nop                                           ; $6f24: $00
    dec c                                         ; $6f25: $0d
    nop                                           ; $6f26: $00
    ld c, $00                                     ; $6f27: $0e $00
    dec d                                         ; $6f29: $15
    nop                                           ; $6f2a: $00
    ld d, $00                                     ; $6f2b: $16 $00
    nop                                           ; $6f2d: $00
    rla                                           ; $6f2e: $17
    nop                                           ; $6f2f: $00
    jr jr_08f_6f32                                ; $6f30: $18 $00

jr_08f_6f32:
    add hl, de                                    ; $6f32: $19
    nop                                           ; $6f33: $00
    ld a, [de]                                    ; $6f34: $1a
    nop                                           ; $6f35: $00
    db $10                                        ; $6f36: $10
    ld e, $00                                     ; $6f37: $1e $00
    rra                                           ; $6f39: $1f
    jr nc, jr_08f_6f3c                            ; $6f3a: $30 $00

jr_08f_6f3c:
    dec de                                        ; $6f3c: $1b
    nop                                           ; $6f3d: $00
    inc e                                         ; $6f3e: $1c
    nop                                           ; $6f3f: $00
    nop                                           ; $6f40: $00
    dec e                                         ; $6f41: $1d
    nop                                           ; $6f42: $00
    jr nz, jr_08f_6f45                            ; $6f43: $20 $00

jr_08f_6f45:
    ld hl, $7c00                                  ; $6f45: $21 $00 $7c
    nop                                           ; $6f48: $00
    inc b                                         ; $6f49: $04
    nop                                           ; $6f4a: $00
    nop                                           ; $6f4b: $00
    ld bc, $0200                                  ; $6f4c: $01 $00 $02
    ld [bc], a                                    ; $6f4f: $02
    ld b, b                                       ; $6f50: $40
    ld d, $00                                     ; $6f51: $16 $00
    ld de, $0000                                  ; $6f53: $11 $00 $00
    inc bc                                        ; $6f56: $03
    ld [bc], a                                    ; $6f57: $02
    nop                                           ; $6f58: $00
    inc b                                         ; $6f59: $04
    nop                                           ; $6f5a: $00
    dec c                                         ; $6f5b: $0d
    ld [bc], a                                    ; $6f5c: $02
    stop                                          ; $6f5d: $10 $00
    inc bc                                        ; $6f5f: $03
    nop                                           ; $6f60: $00
    rla                                           ; $6f61: $17
    nop                                           ; $6f62: $00
    dec b                                         ; $6f63: $05
    nop                                           ; $6f64: $00
    ld b, $00                                     ; $6f65: $06 $00
    nop                                           ; $6f67: $00
    rlca                                          ; $6f68: $07
    nop                                           ; $6f69: $00
    ld [$0e00], sp                                ; $6f6a: $08 $00 $0e
    nop                                           ; $6f6d: $00
    rrca                                          ; $6f6e: $0f
    nop                                           ; $6f6f: $00
    nop                                           ; $6f70: $00
    stop                                          ; $6f71: $10 $00
    ld de, $1800                                  ; $6f73: $11 $00 $18
    nop                                           ; $6f76: $00
    add hl, bc                                    ; $6f77: $09
    nop                                           ; $6f78: $00
    nop                                           ; $6f79: $00
    ld a, [bc]                                    ; $6f7a: $0a
    nop                                           ; $6f7b: $00
    dec bc                                        ; $6f7c: $0b
    nop                                           ; $6f7d: $00
    inc c                                         ; $6f7e: $0c
    nop                                           ; $6f7f: $00
    ld [de], a                                    ; $6f80: $12
    nop                                           ; $6f81: $00
    nop                                           ; $6f82: $00
    inc de                                        ; $6f83: $13
    nop                                           ; $6f84: $00
    inc d                                         ; $6f85: $14
    nop                                           ; $6f86: $00
    dec d                                         ; $6f87: $15
    nop                                           ; $6f88: $00
    add hl, de                                    ; $6f89: $19
    nop                                           ; $6f8a: $00
    nop                                           ; $6f8b: $00
    ld a, [de]                                    ; $6f8c: $1a
    nop                                           ; $6f8d: $00
    dec de                                        ; $6f8e: $1b
    nop                                           ; $6f8f: $00
    inc e                                         ; $6f90: $1c
    nop                                           ; $6f91: $00
    dec e                                         ; $6f92: $1d
    nop                                           ; $6f93: $00
    nop                                           ; $6f94: $00
    jr z, jr_08f_6f97                             ; $6f95: $28 $00

jr_08f_6f97:
    add hl, hl                                    ; $6f97: $29
    nop                                           ; $6f98: $00
    ld a, [hl+]                                   ; $6f99: $2a
    nop                                           ; $6f9a: $00
    dec hl                                        ; $6f9b: $2b
    nop                                           ; $6f9c: $00
    ld b, b                                       ; $6f9d: $40
    jr c, jr_08f_6fe8                             ; $6f9e: $38 $48

    nop                                           ; $6fa0: $00
    ld e, $00                                     ; $6fa1: $1e $00
    rra                                           ; $6fa3: $1f
    nop                                           ; $6fa4: $00
    jr nz, jr_08f_6fa7                            ; $6fa5: $20 $00

jr_08f_6fa7:
    nop                                           ; $6fa7: $00
    inc l                                         ; $6fa8: $2c
    nop                                           ; $6fa9: $00
    dec l                                         ; $6faa: $2d
    nop                                           ; $6fab: $00
    ld l, $00                                     ; $6fac: $2e $00
    cpl                                           ; $6fae: $2f
    nop                                           ; $6faf: $00
    ld b, b                                       ; $6fb0: $40
    add hl, sp                                    ; $6fb1: $39
    ld e, d                                       ; $6fb2: $5a
    nop                                           ; $6fb3: $00
    ld hl, $2200                                  ; $6fb4: $21 $00 $22
    nop                                           ; $6fb7: $00
    inc hl                                        ; $6fb8: $23
    nop                                           ; $6fb9: $00
    nop                                           ; $6fba: $00
    jr nc, jr_08f_6fbd                            ; $6fbb: $30 $00

jr_08f_6fbd:
    ld sp, $3200                                  ; $6fbd: $31 $00 $32
    nop                                           ; $6fc0: $00
    inc sp                                        ; $6fc1: $33
    nop                                           ; $6fc2: $00
    nop                                           ; $6fc3: $00
    ld a, [hl-]                                   ; $6fc4: $3a
    nop                                           ; $6fc5: $00
    inc h                                         ; $6fc6: $24
    nop                                           ; $6fc7: $00
    dec h                                         ; $6fc8: $25
    nop                                           ; $6fc9: $00
    ld h, $00                                     ; $6fca: $26 $00
    nop                                           ; $6fcc: $00
    daa                                           ; $6fcd: $27
    nop                                           ; $6fce: $00
    inc [hl]                                      ; $6fcf: $34
    nop                                           ; $6fd0: $00
    dec [hl]                                      ; $6fd1: $35
    nop                                           ; $6fd2: $00
    ld [hl], $00                                  ; $6fd3: $36 $00
    nop                                           ; $6fd5: $00
    scf                                           ; $6fd6: $37
    nop                                           ; $6fd7: $00
    dec sp                                        ; $6fd8: $3b
    nop                                           ; $6fd9: $00
    sbc d                                         ; $6fda: $9a
    nop                                           ; $6fdb: $00
    nop                                           ; $6fdc: $00
    nop                                           ; $6fdd: $00
    nop                                           ; $6fde: $00
    ld bc, $0200                                  ; $6fdf: $01 $00 $02
    nop                                           ; $6fe2: $00
    inc bc                                        ; $6fe3: $03
    nop                                           ; $6fe4: $00
    nop                                           ; $6fe5: $00
    dec c                                         ; $6fe6: $0d
    nop                                           ; $6fe7: $00

jr_08f_6fe8:
    ld c, $00                                     ; $6fe8: $0e $00
    rrca                                          ; $6fea: $0f
    nop                                           ; $6feb: $00
    stop                                          ; $6fec: $10 $00
    nop                                           ; $6fee: $00
    dec e                                         ; $6fef: $1d
    nop                                           ; $6ff0: $00
    nop                                           ; $6ff1: $00
    nop                                           ; $6ff2: $00
    inc b                                         ; $6ff3: $04
    nop                                           ; $6ff4: $00
    dec b                                         ; $6ff5: $05
    nop                                           ; $6ff6: $00
    nop                                           ; $6ff7: $00
    ld b, $00                                     ; $6ff8: $06 $00
    ld de, $1200                                  ; $6ffa: $11 $00 $12
    nop                                           ; $6ffd: $00
    inc de                                        ; $6ffe: $13
    nop                                           ; $6fff: $00
    db $10                                        ; $7000: $10
    inc d                                         ; $7001: $14
    nop                                           ; $7002: $00
    ld e, $12                                     ; $7003: $1e $12
    nop                                           ; $7005: $00
    rlca                                          ; $7006: $07
    nop                                           ; $7007: $00
    ld [$0000], sp                                ; $7008: $08 $00 $00
    add hl, bc                                    ; $700b: $09
    nop                                           ; $700c: $00
    dec d                                         ; $700d: $15
    nop                                           ; $700e: $00
    ld d, $00                                     ; $700f: $16 $00
    rla                                           ; $7011: $17
    nop                                           ; $7012: $00
    db $10                                        ; $7013: $10
    jr jr_08f_7016                                ; $7014: $18 $00

jr_08f_7016:
    rra                                           ; $7016: $1f
    inc h                                         ; $7017: $24
    nop                                           ; $7018: $00
    ld a, [bc]                                    ; $7019: $0a
    nop                                           ; $701a: $00
    dec bc                                        ; $701b: $0b
    nop                                           ; $701c: $00
    nop                                           ; $701d: $00
    inc c                                         ; $701e: $0c
    nop                                           ; $701f: $00
    add hl, de                                    ; $7020: $19
    nop                                           ; $7021: $00
    ld a, [de]                                    ; $7022: $1a
    nop                                           ; $7023: $00
    dec de                                        ; $7024: $1b
    nop                                           ; $7025: $00
    db $10                                        ; $7026: $10
    inc e                                         ; $7027: $1c
    nop                                           ; $7028: $00
    jr nz, jr_08f_7061                            ; $7029: $20 $36

    nop                                           ; $702b: $00
    ld hl, $2200                                  ; $702c: $21 $00 $22
    nop                                           ; $702f: $00
    nop                                           ; $7030: $00
    inc hl                                        ; $7031: $23
    nop                                           ; $7032: $00
    jr nc, jr_08f_7035                            ; $7033: $30 $00

jr_08f_7035:
    ld sp, $3200                                  ; $7035: $31 $00 $32
    nop                                           ; $7038: $00
    nop                                           ; $7039: $00
    inc sp                                        ; $703a: $33
    nop                                           ; $703b: $00
    ccf                                           ; $703c: $3f
    nop                                           ; $703d: $00
    inc h                                         ; $703e: $24
    nop                                           ; $703f: $00
    dec h                                         ; $7040: $25
    nop                                           ; $7041: $00
    nop                                           ; $7042: $00
    ld h, $00                                     ; $7043: $26 $00
    daa                                           ; $7045: $27
    nop                                           ; $7046: $00
    inc [hl]                                      ; $7047: $34
    nop                                           ; $7048: $00
    dec [hl]                                      ; $7049: $35
    nop                                           ; $704a: $00
    nop                                           ; $704b: $00
    ld [hl], $00                                  ; $704c: $36 $00
    scf                                           ; $704e: $37
    nop                                           ; $704f: $00
    ld b, b                                       ; $7050: $40
    nop                                           ; $7051: $00
    jr z, jr_08f_7054                             ; $7052: $28 $00

jr_08f_7054:
    nop                                           ; $7054: $00
    add hl, hl                                    ; $7055: $29
    nop                                           ; $7056: $00
    ld a, [hl+]                                   ; $7057: $2a
    nop                                           ; $7058: $00
    dec hl                                        ; $7059: $2b
    nop                                           ; $705a: $00
    jr c, jr_08f_705d                             ; $705b: $38 $00

jr_08f_705d:
    ld b, b                                       ; $705d: $40
    add hl, sp                                    ; $705e: $39
    inc h                                         ; $705f: $24
    nop                                           ; $7060: $00

jr_08f_7061:
    ld a, [hl-]                                   ; $7061: $3a
    nop                                           ; $7062: $00
    ld b, c                                       ; $7063: $41
    nop                                           ; $7064: $00
    inc l                                         ; $7065: $2c
    nop                                           ; $7066: $00
    nop                                           ; $7067: $00
    dec l                                         ; $7068: $2d
    nop                                           ; $7069: $00
    ld l, $00                                     ; $706a: $2e $00
    cpl                                           ; $706c: $2f
    nop                                           ; $706d: $00
    dec sp                                        ; $706e: $3b
    nop                                           ; $706f: $00
    nop                                           ; $7070: $00
    inc a                                         ; $7071: $3c
    nop                                           ; $7072: $00
    dec a                                         ; $7073: $3d
    nop                                           ; $7074: $00
    ld a, $00                                     ; $7075: $3e $00
    ld b, d                                       ; $7077: $42
    nop                                           ; $7078: $00
    nop                                           ; $7079: $00
    ld b, e                                       ; $707a: $43
    nop                                           ; $707b: $00
    ld b, h                                       ; $707c: $44
    nop                                           ; $707d: $00
    ld b, l                                       ; $707e: $45
    nop                                           ; $707f: $00
    ld b, [hl]                                    ; $7080: $46
    nop                                           ; $7081: $00
    nop                                           ; $7082: $00
    ld b, a                                       ; $7083: $47
    nop                                           ; $7084: $00
    ld c, b                                       ; $7085: $48
    nop                                           ; $7086: $00
    ld c, c                                       ; $7087: $49
    nop                                           ; $7088: $00
    ld c, d                                       ; $7089: $4a
    nop                                           ; $708a: $00
    nop                                           ; $708b: $00
    ld c, e                                       ; $708c: $4b
    nop                                           ; $708d: $00
    adc b                                         ; $708e: $88
    nop                                           ; $708f: $00
    nop                                           ; $7090: $00
    nop                                           ; $7091: $00
    nop                                           ; $7092: $00
    ld bc, $0200                                  ; $7093: $01 $00 $02
    nop                                           ; $7096: $00
    inc bc                                        ; $7097: $03
    nop                                           ; $7098: $00
    nop                                           ; $7099: $00
    stop                                          ; $709a: $10 $00
    ld de, $1200                                  ; $709c: $11 $00 $12
    nop                                           ; $709f: $00
    inc de                                        ; $70a0: $13
    nop                                           ; $70a1: $00
    nop                                           ; $70a2: $00
    inc b                                         ; $70a3: $04
    nop                                           ; $70a4: $00
    dec b                                         ; $70a5: $05
    nop                                           ; $70a6: $00
    ld b, $00                                     ; $70a7: $06 $00
    rlca                                          ; $70a9: $07
    nop                                           ; $70aa: $00
    inc b                                         ; $70ab: $04
    inc d                                         ; $70ac: $14
    nop                                           ; $70ad: $00
    dec d                                         ; $70ae: $15
    nop                                           ; $70af: $00
    ld d, $10                                     ; $70b0: $16 $10
    nop                                           ; $70b2: $00
    ld [$0000], sp                                ; $70b3: $08 $00 $00
    add hl, bc                                    ; $70b6: $09
    nop                                           ; $70b7: $00
    ld a, [bc]                                    ; $70b8: $0a
    nop                                           ; $70b9: $00
    dec bc                                        ; $70ba: $0b
    nop                                           ; $70bb: $00
    rla                                           ; $70bc: $17
    nop                                           ; $70bd: $00
    db $10                                        ; $70be: $10
    jr jr_08f_70c1                                ; $70bf: $18 $00

jr_08f_70c1:
    add hl, de                                    ; $70c1: $19
    jr nz, jr_08f_70c4                            ; $70c2: $20 $00

jr_08f_70c4:
    inc c                                         ; $70c4: $0c
    nop                                           ; $70c5: $00
    dec c                                         ; $70c6: $0d
    nop                                           ; $70c7: $00
    nop                                           ; $70c8: $00
    ld c, $00                                     ; $70c9: $0e $00
    rrca                                          ; $70cb: $0f
    nop                                           ; $70cc: $00
    ld a, [de]                                    ; $70cd: $1a
    nop                                           ; $70ce: $00
    dec de                                        ; $70cf: $1b
    nop                                           ; $70d0: $00
    nop                                           ; $70d1: $00
    inc e                                         ; $70d2: $1c
    nop                                           ; $70d3: $00
    dec e                                         ; $70d4: $1d
    nop                                           ; $70d5: $00
    ld e, $00                                     ; $70d6: $1e $00
    rra                                           ; $70d8: $1f
    nop                                           ; $70d9: $00
    nop                                           ; $70da: $00
    jr nz, jr_08f_70dd                            ; $70db: $20 $00

jr_08f_70dd:
    ld hl, $2e00                                  ; $70dd: $21 $00 $2e
    nop                                           ; $70e0: $00
    cpl                                           ; $70e1: $2f
    nop                                           ; $70e2: $00
    nop                                           ; $70e3: $00
    jr nc, jr_08f_70e6                            ; $70e4: $30 $00

jr_08f_70e6:
    ld sp, $2200                                  ; $70e6: $31 $00 $22
    nop                                           ; $70e9: $00
    inc hl                                        ; $70ea: $23
    nop                                           ; $70eb: $00
    nop                                           ; $70ec: $00
    inc h                                         ; $70ed: $24
    nop                                           ; $70ee: $00
    dec h                                         ; $70ef: $25
    nop                                           ; $70f0: $00
    ld [hl-], a                                   ; $70f1: $32
    nop                                           ; $70f2: $00
    inc sp                                        ; $70f3: $33
    nop                                           ; $70f4: $00
    nop                                           ; $70f5: $00
    inc [hl]                                      ; $70f6: $34
    nop                                           ; $70f7: $00
    dec [hl]                                      ; $70f8: $35
    nop                                           ; $70f9: $00
    ld h, $00                                     ; $70fa: $26 $00
    daa                                           ; $70fc: $27
    nop                                           ; $70fd: $00
    nop                                           ; $70fe: $00
    jr z, jr_08f_7101                             ; $70ff: $28 $00

jr_08f_7101:
    add hl, hl                                    ; $7101: $29
    nop                                           ; $7102: $00
    ld [hl], $00                                  ; $7103: $36 $00
    scf                                           ; $7105: $37
    nop                                           ; $7106: $00
    ld b, b                                       ; $7107: $40
    jr c, jr_08f_716a                             ; $7108: $38 $60

    nop                                           ; $710a: $00
    ld a, [hl+]                                   ; $710b: $2a
    nop                                           ; $710c: $00
    dec hl                                        ; $710d: $2b
    nop                                           ; $710e: $00
    inc l                                         ; $710f: $2c
    nop                                           ; $7110: $00
    ld bc, $002d                                  ; $7111: $01 $2d $00
    add hl, sp                                    ; $7114: $39
    nop                                           ; $7115: $00
    ld a, [hl-]                                   ; $7116: $3a
    nop                                           ; $7117: $00
    dec sp                                        ; $7118: $3b
    ld [hl], b                                    ; $7119: $70
    nop                                           ; $711a: $00
    nop                                           ; $711b: $00
    inc a                                         ; $711c: $3c
    nop                                           ; $711d: $00
    dec a                                         ; $711e: $3d
    nop                                           ; $711f: $00
    ld a, $00                                     ; $7120: $3e $00
    ccf                                           ; $7122: $3f
    nop                                           ; $7123: $00
    nop                                           ; $7124: $00
    ld b, b                                       ; $7125: $40
    nop                                           ; $7126: $00
    ld b, c                                       ; $7127: $41
    nop                                           ; $7128: $00
    ld b, d                                       ; $7129: $42
    nop                                           ; $712a: $00
    ld b, e                                       ; $712b: $43
    nop                                           ; $712c: $00
    ld d, e                                       ; $712d: $53
    nop                                           ; $712e: $00
    ld de, $0000                                  ; $712f: $11 $00 $00
    ld bc, $4002                                  ; $7132: $01 $02 $40
    dec bc                                        ; $7135: $0b
    nop                                           ; $7136: $00
    ld a, [bc]                                    ; $7137: $0a
    ld [bc], a                                    ; $7138: $02
    ld b, b                                       ; $7139: $40
    nop                                           ; $713a: $00
    ld [bc], a                                    ; $713b: $02
    nop                                           ; $713c: $00
    inc bc                                        ; $713d: $03
    nop                                           ; $713e: $00
    inc b                                         ; $713f: $04
    nop                                           ; $7140: $00
    dec b                                         ; $7141: $05
    nop                                           ; $7142: $00
    ld bc, $000c                                  ; $7143: $01 $0c $00
    dec c                                         ; $7146: $0d
    nop                                           ; $7147: $00
    ld c, $00                                     ; $7148: $0e $00
    rrca                                          ; $714a: $0f
    inc e                                         ; $714b: $1c
    ld d, b                                       ; $714c: $50
    nop                                           ; $714d: $00
    ld b, $00                                     ; $714e: $06 $00
    rlca                                          ; $7150: $07
    nop                                           ; $7151: $00
    ld [$0900], sp                                ; $7152: $08 $00 $09
    nop                                           ; $7155: $00
    ld bc, $0010                                  ; $7156: $01 $10 $00
    ld de, $1200                                  ; $7159: $11 $00 $12
    nop                                           ; $715c: $00
    inc de                                        ; $715d: $13
    ld b, [hl]                                    ; $715e: $46
    jr nz, jr_08f_7165                            ; $715f: $20 $04

    rla                                           ; $7161: $17
    nop                                           ; $7162: $00
    inc e                                         ; $7163: $1c
    nop                                           ; $7164: $00

jr_08f_7165:
    dec e                                         ; $7165: $1d
    ld b, h                                       ; $7166: $44
    ld b, b                                       ; $7167: $40
    inc d                                         ; $7168: $14
    nop                                           ; $7169: $00

jr_08f_716a:
    nop                                           ; $716a: $00
    dec d                                         ; $716b: $15
    nop                                           ; $716c: $00
    ld d, $00                                     ; $716d: $16 $00
    jr jr_08f_7171                                ; $716f: $18 $00

jr_08f_7171:
    add hl, de                                    ; $7171: $19
    nop                                           ; $7172: $00
    ld bc, $001a                                  ; $7173: $01 $1a $00
    dec de                                        ; $7176: $1b
    nop                                           ; $7177: $00
    ld e, $00                                     ; $7178: $1e $00
    rra                                           ; $717a: $1f
    ld h, b                                       ; $717b: $60
    ld b, b                                       ; $717c: $40
    nop                                           ; $717d: $00
    jr nz, jr_08f_7180                            ; $717e: $20 $00

jr_08f_7180:
    ld hl, $2200                                  ; $7180: $21 $00 $22
    nop                                           ; $7183: $00
    inc hl                                        ; $7184: $23
    nop                                           ; $7185: $00
    nop                                           ; $7186: $00
    inc h                                         ; $7187: $24
    nop                                           ; $7188: $00
    dec h                                         ; $7189: $25
    nop                                           ; $718a: $00
    ld h, $00                                     ; $718b: $26 $00
    daa                                           ; $718d: $27
    nop                                           ; $718e: $00
    ld h, b                                       ; $718f: $60
    jr z, jr_08f_720e                             ; $7190: $28 $7c

    ld d, b                                       ; $7192: $50
    inc c                                         ; $7193: $0c
    ld l, b                                       ; $7194: $68
    ld l, d                                       ; $7195: $6a
    nop                                           ; $7196: $00
    nop                                           ; $7197: $00
    nop                                           ; $7198: $00
    nop                                           ; $7199: $00
    ld bc, $0200                                  ; $719a: $01 $00 $02
    nop                                           ; $719d: $00
    inc bc                                        ; $719e: $03
    nop                                           ; $719f: $00
    nop                                           ; $71a0: $00
    stop                                          ; $71a1: $10 $00
    ld de, $1200                                  ; $71a3: $11 $00 $12
    nop                                           ; $71a6: $00
    inc b                                         ; $71a7: $04
    nop                                           ; $71a8: $00
    nop                                           ; $71a9: $00
    dec b                                         ; $71aa: $05
    nop                                           ; $71ab: $00
    ld b, $00                                     ; $71ac: $06 $00
    rlca                                          ; $71ae: $07
    nop                                           ; $71af: $00
    inc de                                        ; $71b0: $13
    nop                                           ; $71b1: $00
    ld b, b                                       ; $71b2: $40
    inc d                                         ; $71b3: $14
    ld c, $00                                     ; $71b4: $0e $00
    ld [$0900], sp                                ; $71b6: $08 $00 $09
    nop                                           ; $71b9: $00
    ld a, [bc]                                    ; $71ba: $0a
    nop                                           ; $71bb: $00
    inc b                                         ; $71bc: $04
    dec bc                                        ; $71bd: $0b
    nop                                           ; $71be: $00
    dec d                                         ; $71bf: $15
    nop                                           ; $71c0: $00
    ld d, $1c                                     ; $71c1: $16 $1c
    nop                                           ; $71c3: $00
    inc c                                         ; $71c4: $0c
    nop                                           ; $71c5: $00
    nop                                           ; $71c6: $00
    dec c                                         ; $71c7: $0d
    nop                                           ; $71c8: $00
    ld c, $00                                     ; $71c9: $0e $00
    rrca                                          ; $71cb: $0f
    nop                                           ; $71cc: $00
    rla                                           ; $71cd: $17
    nop                                           ; $71ce: $00
    ld b, b                                       ; $71cf: $40
    jr jr_08f_71fc                                ; $71d0: $18 $2a

    nop                                           ; $71d2: $00
    add hl, de                                    ; $71d3: $19
    nop                                           ; $71d4: $00
    ld a, [de]                                    ; $71d5: $1a
    nop                                           ; $71d6: $00
    dec de                                        ; $71d7: $1b
    nop                                           ; $71d8: $00
    nop                                           ; $71d9: $00
    inc e                                         ; $71da: $1c
    nop                                           ; $71db: $00
    add hl, hl                                    ; $71dc: $29
    nop                                           ; $71dd: $00
    ld a, [hl+]                                   ; $71de: $2a
    nop                                           ; $71df: $00
    dec hl                                        ; $71e0: $2b
    nop                                           ; $71e1: $00
    nop                                           ; $71e2: $00
    dec e                                         ; $71e3: $1d
    nop                                           ; $71e4: $00
    ld e, $00                                     ; $71e5: $1e $00
    rra                                           ; $71e7: $1f
    nop                                           ; $71e8: $00
    jr nz, jr_08f_71eb                            ; $71e9: $20 $00

jr_08f_71eb:
    nop                                           ; $71eb: $00
    inc l                                         ; $71ec: $2c
    nop                                           ; $71ed: $00
    dec l                                         ; $71ee: $2d
    nop                                           ; $71ef: $00
    ld l, $00                                     ; $71f0: $2e $00
    ld hl, $0000                                  ; $71f2: $21 $00 $00
    ld [hl+], a                                   ; $71f5: $22
    nop                                           ; $71f6: $00
    inc hl                                        ; $71f7: $23
    nop                                           ; $71f8: $00
    inc h                                         ; $71f9: $24
    nop                                           ; $71fa: $00
    cpl                                           ; $71fb: $2f

jr_08f_71fc:
    nop                                           ; $71fc: $00
    nop                                           ; $71fd: $00
    jr nc, jr_08f_7200                            ; $71fe: $30 $00

jr_08f_7200:
    ld sp, $2500                                  ; $7200: $31 $00 $25
    nop                                           ; $7203: $00
    ld h, $00                                     ; $7204: $26 $00
    nop                                           ; $7206: $00
    daa                                           ; $7207: $27
    nop                                           ; $7208: $00
    jr z, jr_08f_720b                             ; $7209: $28 $00

jr_08f_720b:
    ld [hl-], a                                   ; $720b: $32
    nop                                           ; $720c: $00
    inc sp                                        ; $720d: $33

jr_08f_720e:
    nop                                           ; $720e: $00
    nop                                           ; $720f: $00
    inc [hl]                                      ; $7210: $34
    nop                                           ; $7211: $00
    ld e, [hl]                                    ; $7212: $5e
    nop                                           ; $7213: $00
    nop                                           ; $7214: $00
    nop                                           ; $7215: $00
    nop                                           ; $7216: $00
    ld bc, $0200                                  ; $7217: $01 $00 $02
    nop                                           ; $721a: $00
    inc bc                                        ; $721b: $03
    nop                                           ; $721c: $00
    nop                                           ; $721d: $00
    dec c                                         ; $721e: $0d
    nop                                           ; $721f: $00
    ld c, $00                                     ; $7220: $0e $00
    rrca                                          ; $7222: $0f
    nop                                           ; $7223: $00
    nop                                           ; $7224: $00
    nop                                           ; $7225: $00
    nop                                           ; $7226: $00
    inc b                                         ; $7227: $04
    nop                                           ; $7228: $00
    dec b                                         ; $7229: $05
    nop                                           ; $722a: $00
    ld b, $00                                     ; $722b: $06 $00
    stop                                          ; $722d: $10 $00
    ld b, b                                       ; $722f: $40
    ld de, $100e                                  ; $7230: $11 $0e $10
    rlca                                          ; $7233: $07
    nop                                           ; $7234: $00
    ld [$0900], sp                                ; $7235: $08 $00 $09
    nop                                           ; $7238: $00
    db $10                                        ; $7239: $10
    ld [de], a                                    ; $723a: $12
    nop                                           ; $723b: $00
    inc de                                        ; $723c: $13
    inc e                                         ; $723d: $1c
    db $10                                        ; $723e: $10
    ld a, [bc]                                    ; $723f: $0a
    nop                                           ; $7240: $00
    dec bc                                        ; $7241: $0b
    nop                                           ; $7242: $00
    inc b                                         ; $7243: $04
    inc c                                         ; $7244: $0c
    nop                                           ; $7245: $00
    inc d                                         ; $7246: $14
    nop                                           ; $7247: $00
    dec d                                         ; $7248: $15
    ld a, [hl+]                                   ; $7249: $2a
    nop                                           ; $724a: $00
    ld d, $00                                     ; $724b: $16 $00
    nop                                           ; $724d: $00
    rla                                           ; $724e: $17
    nop                                           ; $724f: $00
    jr jr_08f_7252                                ; $7250: $18 $00

jr_08f_7252:
    add hl, de                                    ; $7252: $19
    nop                                           ; $7253: $00
    dec h                                         ; $7254: $25
    nop                                           ; $7255: $00
    ld b, b                                       ; $7256: $40
    ld h, $38                                     ; $7257: $26 $38
    nop                                           ; $7259: $00
    ld a, [de]                                    ; $725a: $1a
    nop                                           ; $725b: $00
    dec de                                        ; $725c: $1b
    nop                                           ; $725d: $00
    inc e                                         ; $725e: $1c
    nop                                           ; $725f: $00
    inc b                                         ; $7260: $04
    dec e                                         ; $7261: $1d
    nop                                           ; $7262: $00
    daa                                           ; $7263: $27
    nop                                           ; $7264: $00
    jr z, @+$48                                   ; $7265: $28 $46

    nop                                           ; $7267: $00
    ld e, $00                                     ; $7268: $1e $00
    nop                                           ; $726a: $00
    rra                                           ; $726b: $1f
    nop                                           ; $726c: $00
    jr nz, jr_08f_726f                            ; $726d: $20 $00

jr_08f_726f:
    ld hl, $2900                                  ; $726f: $21 $00 $29
    nop                                           ; $7272: $00
    ld b, b                                       ; $7273: $40
    ld a, [hl+]                                   ; $7274: $2a
    ld d, h                                       ; $7275: $54
    db $10                                        ; $7276: $10
    ld [hl+], a                                   ; $7277: $22
    nop                                           ; $7278: $00
    inc hl                                        ; $7279: $23
    nop                                           ; $727a: $00
    inc h                                         ; $727b: $24
    nop                                           ; $727c: $00
    nop                                           ; $727d: $00
    dec hl                                        ; $727e: $2b
    nop                                           ; $727f: $00
    inc l                                         ; $7280: $2c
    nop                                           ; $7281: $00
    dec l                                         ; $7282: $2d
    nop                                           ; $7283: $00
    add b                                         ; $7284: $80
    ld bc, $0000                                  ; $7285: $01 $00 $00
    nop                                           ; $7288: $00
    ld bc, $0200                                  ; $7289: $01 $00 $02
    nop                                           ; $728c: $00
    inc bc                                        ; $728d: $03
    nop                                           ; $728e: $00
    nop                                           ; $728f: $00
    stop                                          ; $7290: $10 $00
    ld de, $1200                                  ; $7292: $11 $00 $12
    nop                                           ; $7295: $00
    inc de                                        ; $7296: $13
    nop                                           ; $7297: $00
    nop                                           ; $7298: $00
    inc b                                         ; $7299: $04
    nop                                           ; $729a: $00
    dec b                                         ; $729b: $05
    nop                                           ; $729c: $00
    ld b, $00                                     ; $729d: $06 $00
    rlca                                          ; $729f: $07
    nop                                           ; $72a0: $00
    nop                                           ; $72a1: $00
    inc d                                         ; $72a2: $14
    nop                                           ; $72a3: $00
    dec d                                         ; $72a4: $15
    nop                                           ; $72a5: $00
    ld d, $00                                     ; $72a6: $16 $00
    rla                                           ; $72a8: $17
    nop                                           ; $72a9: $00
    nop                                           ; $72aa: $00
    ld [$0900], sp                                ; $72ab: $08 $00 $09
    nop                                           ; $72ae: $00
    ld a, [bc]                                    ; $72af: $0a
    nop                                           ; $72b0: $00
    dec bc                                        ; $72b1: $0b
    nop                                           ; $72b2: $00
    nop                                           ; $72b3: $00
    jr jr_08f_72b6                                ; $72b4: $18 $00

jr_08f_72b6:
    add hl, de                                    ; $72b6: $19
    nop                                           ; $72b7: $00
    ld a, [de]                                    ; $72b8: $1a
    nop                                           ; $72b9: $00
    dec de                                        ; $72ba: $1b
    nop                                           ; $72bb: $00
    nop                                           ; $72bc: $00
    inc c                                         ; $72bd: $0c
    nop                                           ; $72be: $00
    dec c                                         ; $72bf: $0d
    nop                                           ; $72c0: $00
    ld c, $00                                     ; $72c1: $0e $00
    rrca                                          ; $72c3: $0f
    nop                                           ; $72c4: $00
    nop                                           ; $72c5: $00
    inc e                                         ; $72c6: $1c
    nop                                           ; $72c7: $00
    dec e                                         ; $72c8: $1d
    nop                                           ; $72c9: $00
    ld e, $00                                     ; $72ca: $1e $00
    rra                                           ; $72cc: $1f
    nop                                           ; $72cd: $00
    nop                                           ; $72ce: $00
    jr nz, jr_08f_72d1                            ; $72cf: $20 $00

jr_08f_72d1:
    ld hl, $2200                                  ; $72d1: $21 $00 $22
    nop                                           ; $72d4: $00
    inc hl                                        ; $72d5: $23
    nop                                           ; $72d6: $00
    nop                                           ; $72d7: $00
    jr nc, jr_08f_72da                            ; $72d8: $30 $00

jr_08f_72da:
    ld sp, $3200                                  ; $72da: $31 $00 $32
    nop                                           ; $72dd: $00
    inc sp                                        ; $72de: $33
    nop                                           ; $72df: $00
    nop                                           ; $72e0: $00
    inc h                                         ; $72e1: $24
    nop                                           ; $72e2: $00
    dec h                                         ; $72e3: $25
    nop                                           ; $72e4: $00
    ld h, $00                                     ; $72e5: $26 $00
    daa                                           ; $72e7: $27
    nop                                           ; $72e8: $00
    nop                                           ; $72e9: $00
    inc [hl]                                      ; $72ea: $34
    nop                                           ; $72eb: $00
    dec [hl]                                      ; $72ec: $35
    nop                                           ; $72ed: $00
    ld [hl], $00                                  ; $72ee: $36 $00
    scf                                           ; $72f0: $37
    nop                                           ; $72f1: $00
    nop                                           ; $72f2: $00
    jr z, jr_08f_72f5                             ; $72f3: $28 $00

jr_08f_72f5:
    add hl, hl                                    ; $72f5: $29
    nop                                           ; $72f6: $00
    ld a, [hl+]                                   ; $72f7: $2a
    nop                                           ; $72f8: $00
    dec hl                                        ; $72f9: $2b
    nop                                           ; $72fa: $00
    nop                                           ; $72fb: $00
    jr c, jr_08f_72fe                             ; $72fc: $38 $00

jr_08f_72fe:
    add hl, sp                                    ; $72fe: $39
    nop                                           ; $72ff: $00
    ld a, [hl-]                                   ; $7300: $3a
    nop                                           ; $7301: $00
    dec sp                                        ; $7302: $3b
    nop                                           ; $7303: $00
    nop                                           ; $7304: $00
    inc l                                         ; $7305: $2c
    nop                                           ; $7306: $00
    dec l                                         ; $7307: $2d
    nop                                           ; $7308: $00
    ld l, $00                                     ; $7309: $2e $00
    cpl                                           ; $730b: $2f
    nop                                           ; $730c: $00
    nop                                           ; $730d: $00
    inc a                                         ; $730e: $3c
    nop                                           ; $730f: $00
    dec a                                         ; $7310: $3d
    nop                                           ; $7311: $00
    ld a, $00                                     ; $7312: $3e $00
    ccf                                           ; $7314: $3f
    nop                                           ; $7315: $00
    nop                                           ; $7316: $00
    ld b, b                                       ; $7317: $40
    nop                                           ; $7318: $00
    ld b, c                                       ; $7319: $41
    nop                                           ; $731a: $00
    ld b, d                                       ; $731b: $42
    nop                                           ; $731c: $00
    ld b, e                                       ; $731d: $43
    nop                                           ; $731e: $00
    nop                                           ; $731f: $00
    ld d, b                                       ; $7320: $50
    nop                                           ; $7321: $00
    ld d, c                                       ; $7322: $51
    nop                                           ; $7323: $00
    ld d, d                                       ; $7324: $52
    nop                                           ; $7325: $00
    ld d, e                                       ; $7326: $53
    nop                                           ; $7327: $00
    nop                                           ; $7328: $00
    ld b, h                                       ; $7329: $44
    nop                                           ; $732a: $00
    ld b, l                                       ; $732b: $45
    nop                                           ; $732c: $00
    ld b, [hl]                                    ; $732d: $46
    nop                                           ; $732e: $00
    ld b, a                                       ; $732f: $47
    nop                                           ; $7330: $00
    nop                                           ; $7331: $00
    ld d, h                                       ; $7332: $54
    nop                                           ; $7333: $00
    ld d, l                                       ; $7334: $55
    nop                                           ; $7335: $00
    ld d, [hl]                                    ; $7336: $56
    nop                                           ; $7337: $00
    ld d, a                                       ; $7338: $57
    nop                                           ; $7339: $00
    nop                                           ; $733a: $00
    ld c, b                                       ; $733b: $48
    nop                                           ; $733c: $00
    ld c, c                                       ; $733d: $49
    nop                                           ; $733e: $00
    ld c, d                                       ; $733f: $4a
    nop                                           ; $7340: $00
    ld c, e                                       ; $7341: $4b
    nop                                           ; $7342: $00
    nop                                           ; $7343: $00
    ld e, b                                       ; $7344: $58
    nop                                           ; $7345: $00
    ld e, c                                       ; $7346: $59
    nop                                           ; $7347: $00
    ld e, d                                       ; $7348: $5a
    nop                                           ; $7349: $00
    ld e, e                                       ; $734a: $5b
    nop                                           ; $734b: $00
    nop                                           ; $734c: $00
    ld c, h                                       ; $734d: $4c
    nop                                           ; $734e: $00
    ld c, l                                       ; $734f: $4d
    nop                                           ; $7350: $00
    ld c, [hl]                                    ; $7351: $4e
    nop                                           ; $7352: $00
    ld c, a                                       ; $7353: $4f
    nop                                           ; $7354: $00
    nop                                           ; $7355: $00
    ld e, h                                       ; $7356: $5c
    nop                                           ; $7357: $00
    ld e, l                                       ; $7358: $5d
    nop                                           ; $7359: $00
    ld e, [hl]                                    ; $735a: $5e
    nop                                           ; $735b: $00
    ld e, a                                       ; $735c: $5f
    nop                                           ; $735d: $00
    nop                                           ; $735e: $00
    ld h, b                                       ; $735f: $60
    nop                                           ; $7360: $00
    ld h, c                                       ; $7361: $61
    nop                                           ; $7362: $00
    ld h, d                                       ; $7363: $62
    nop                                           ; $7364: $00
    ld h, e                                       ; $7365: $63
    nop                                           ; $7366: $00
    nop                                           ; $7367: $00
    ld [hl], b                                    ; $7368: $70
    nop                                           ; $7369: $00
    ld [hl], c                                    ; $736a: $71
    nop                                           ; $736b: $00
    ld [hl], d                                    ; $736c: $72
    nop                                           ; $736d: $00
    ld [hl], e                                    ; $736e: $73
    nop                                           ; $736f: $00
    nop                                           ; $7370: $00
    ld h, h                                       ; $7371: $64
    nop                                           ; $7372: $00
    ld h, l                                       ; $7373: $65
    nop                                           ; $7374: $00
    ld h, [hl]                                    ; $7375: $66
    nop                                           ; $7376: $00
    ld h, a                                       ; $7377: $67
    nop                                           ; $7378: $00
    nop                                           ; $7379: $00
    ld [hl], h                                    ; $737a: $74
    nop                                           ; $737b: $00
    ld [hl], l                                    ; $737c: $75
    nop                                           ; $737d: $00
    halt                                          ; $737e: $76
    nop                                           ; $737f: $00
    ld [hl], a                                    ; $7380: $77
    nop                                           ; $7381: $00
    nop                                           ; $7382: $00
    ld l, b                                       ; $7383: $68
    nop                                           ; $7384: $00
    ld l, c                                       ; $7385: $69
    nop                                           ; $7386: $00
    ld l, d                                       ; $7387: $6a
    nop                                           ; $7388: $00
    ld l, e                                       ; $7389: $6b
    nop                                           ; $738a: $00
    nop                                           ; $738b: $00
    ld a, b                                       ; $738c: $78
    nop                                           ; $738d: $00
    ld a, c                                       ; $738e: $79
    nop                                           ; $738f: $00
    ld a, d                                       ; $7390: $7a
    nop                                           ; $7391: $00
    ld a, e                                       ; $7392: $7b
    nop                                           ; $7393: $00
    nop                                           ; $7394: $00
    ld l, h                                       ; $7395: $6c
    nop                                           ; $7396: $00
    ld l, l                                       ; $7397: $6d
    nop                                           ; $7398: $00
    ld l, [hl]                                    ; $7399: $6e
    nop                                           ; $739a: $00
    ld l, a                                       ; $739b: $6f
    nop                                           ; $739c: $00
    nop                                           ; $739d: $00
    ld a, h                                       ; $739e: $7c
    nop                                           ; $739f: $00
    ld a, l                                       ; $73a0: $7d
    nop                                           ; $73a1: $00
    ld a, [hl]                                    ; $73a2: $7e
    nop                                           ; $73a3: $00
    ld a, a                                       ; $73a4: $7f
    nop                                           ; $73a5: $00
    nop                                           ; $73a6: $00
    add b                                         ; $73a7: $80
    nop                                           ; $73a8: $00
    add c                                         ; $73a9: $81
    nop                                           ; $73aa: $00
    add d                                         ; $73ab: $82
    nop                                           ; $73ac: $00
    add e                                         ; $73ad: $83
    nop                                           ; $73ae: $00
    nop                                           ; $73af: $00
    sub b                                         ; $73b0: $90
    nop                                           ; $73b1: $00
    sub c                                         ; $73b2: $91
    nop                                           ; $73b3: $00
    sub d                                         ; $73b4: $92
    nop                                           ; $73b5: $00
    sub e                                         ; $73b6: $93
    nop                                           ; $73b7: $00
    nop                                           ; $73b8: $00
    add h                                         ; $73b9: $84
    nop                                           ; $73ba: $00
    add l                                         ; $73bb: $85
    nop                                           ; $73bc: $00
    add [hl]                                      ; $73bd: $86
    nop                                           ; $73be: $00
    add a                                         ; $73bf: $87
    nop                                           ; $73c0: $00
    nop                                           ; $73c1: $00
    sub h                                         ; $73c2: $94
    nop                                           ; $73c3: $00
    sub l                                         ; $73c4: $95
    nop                                           ; $73c5: $00
    sub [hl]                                      ; $73c6: $96
    nop                                           ; $73c7: $00
    sub a                                         ; $73c8: $97
    nop                                           ; $73c9: $00
    nop                                           ; $73ca: $00
    adc b                                         ; $73cb: $88
    nop                                           ; $73cc: $00
    adc c                                         ; $73cd: $89
    nop                                           ; $73ce: $00
    adc d                                         ; $73cf: $8a
    nop                                           ; $73d0: $00
    adc e                                         ; $73d1: $8b
    nop                                           ; $73d2: $00
    nop                                           ; $73d3: $00
    sbc b                                         ; $73d4: $98
    nop                                           ; $73d5: $00
    sbc c                                         ; $73d6: $99
    nop                                           ; $73d7: $00
    sbc d                                         ; $73d8: $9a
    nop                                           ; $73d9: $00
    sbc e                                         ; $73da: $9b
    nop                                           ; $73db: $00
    nop                                           ; $73dc: $00
    adc h                                         ; $73dd: $8c
    nop                                           ; $73de: $00
    adc l                                         ; $73df: $8d
    nop                                           ; $73e0: $00
    adc [hl]                                      ; $73e1: $8e
    nop                                           ; $73e2: $00
    adc a                                         ; $73e3: $8f
    nop                                           ; $73e4: $00
    nop                                           ; $73e5: $00
    sbc h                                         ; $73e6: $9c
    nop                                           ; $73e7: $00
    sbc l                                         ; $73e8: $9d
    nop                                           ; $73e9: $00
    sbc [hl]                                      ; $73ea: $9e
    nop                                           ; $73eb: $00
    sbc a                                         ; $73ec: $9f
    nop                                           ; $73ed: $00
    nop                                           ; $73ee: $00
    and b                                         ; $73ef: $a0
    nop                                           ; $73f0: $00
    and c                                         ; $73f1: $a1
    nop                                           ; $73f2: $00
    and d                                         ; $73f3: $a2
    nop                                           ; $73f4: $00
    and e                                         ; $73f5: $a3
    nop                                           ; $73f6: $00
    nop                                           ; $73f7: $00
    or b                                          ; $73f8: $b0
    nop                                           ; $73f9: $00
    or c                                          ; $73fa: $b1
    nop                                           ; $73fb: $00
    or d                                          ; $73fc: $b2
    nop                                           ; $73fd: $00
    or e                                          ; $73fe: $b3
    nop                                           ; $73ff: $00
    nop                                           ; $7400: $00
    and h                                         ; $7401: $a4
    nop                                           ; $7402: $00
    and l                                         ; $7403: $a5
    nop                                           ; $7404: $00
    and [hl]                                      ; $7405: $a6
    nop                                           ; $7406: $00
    and a                                         ; $7407: $a7
    nop                                           ; $7408: $00
    nop                                           ; $7409: $00
    or h                                          ; $740a: $b4
    nop                                           ; $740b: $00
    or l                                          ; $740c: $b5
    nop                                           ; $740d: $00
    or [hl]                                       ; $740e: $b6
    nop                                           ; $740f: $00
    or a                                          ; $7410: $b7
    nop                                           ; $7411: $00
    nop                                           ; $7412: $00
    xor b                                         ; $7413: $a8
    nop                                           ; $7414: $00
    xor c                                         ; $7415: $a9
    nop                                           ; $7416: $00
    xor d                                         ; $7417: $aa
    nop                                           ; $7418: $00
    xor e                                         ; $7419: $ab
    nop                                           ; $741a: $00
    nop                                           ; $741b: $00
    cp b                                          ; $741c: $b8
    nop                                           ; $741d: $00
    cp c                                          ; $741e: $b9
    nop                                           ; $741f: $00
    cp d                                          ; $7420: $ba
    nop                                           ; $7421: $00
    cp e                                          ; $7422: $bb
    nop                                           ; $7423: $00
    nop                                           ; $7424: $00
    xor h                                         ; $7425: $ac
    nop                                           ; $7426: $00
    xor l                                         ; $7427: $ad
    nop                                           ; $7428: $00
    xor [hl]                                      ; $7429: $ae
    nop                                           ; $742a: $00
    xor a                                         ; $742b: $af
    nop                                           ; $742c: $00
    nop                                           ; $742d: $00
    cp h                                          ; $742e: $bc
    nop                                           ; $742f: $00
    cp l                                          ; $7430: $bd
    nop                                           ; $7431: $00
    cp [hl]                                       ; $7432: $be
    nop                                           ; $7433: $00
    cp a                                          ; $7434: $bf
    nop                                           ; $7435: $00
    ld a, c                                       ; $7436: $79
    nop                                           ; $7437: $00
    nop                                           ; $7438: $00
    nop                                           ; $7439: $00
    nop                                           ; $743a: $00
    ld bc, $0200                                  ; $743b: $01 $00 $02
    nop                                           ; $743e: $00
    inc bc                                        ; $743f: $03
    nop                                           ; $7440: $00
    dec b                                         ; $7441: $05
    dec c                                         ; $7442: $0d
    nop                                           ; $7443: $00
    ld c, $00                                     ; $7444: $0e $00
    rrca                                          ; $7446: $0f
    ld a, [bc]                                    ; $7447: $0a
    nop                                           ; $7448: $00
    dec de                                        ; $7449: $1b
    ld a, [bc]                                    ; $744a: $0a
    nop                                           ; $744b: $00
    nop                                           ; $744c: $00
    inc e                                         ; $744d: $1c
    nop                                           ; $744e: $00
    dec e                                         ; $744f: $1d
    nop                                           ; $7450: $00
    nop                                           ; $7451: $00
    nop                                           ; $7452: $00
    inc b                                         ; $7453: $04
    nop                                           ; $7454: $00
    nop                                           ; $7455: $00
    dec b                                         ; $7456: $05
    nop                                           ; $7457: $00
    ld b, $00                                     ; $7458: $06 $00
    stop                                          ; $745a: $10 $00
    ld de, $4100                                  ; $745c: $11 $00 $41
    ld [de], a                                    ; $745f: $12
    ld a, [bc]                                    ; $7460: $0a
    nop                                           ; $7461: $00
    ld e, $00                                     ; $7462: $1e $00
    rra                                           ; $7464: $1f
    nop                                           ; $7465: $00
    jr nz, @+$1a                                  ; $7466: $20 $18

    stop                                          ; $7468: $10 $00
    rlca                                          ; $746a: $07
    nop                                           ; $746b: $00
    ld [$0900], sp                                ; $746c: $08 $00 $09
    nop                                           ; $746f: $00
    inc de                                        ; $7470: $13
    nop                                           ; $7471: $00
    nop                                           ; $7472: $00
    inc d                                         ; $7473: $14
    nop                                           ; $7474: $00
    dec d                                         ; $7475: $15
    nop                                           ; $7476: $00
    ld d, $00                                     ; $7477: $16 $00
    ld hl, $1000                                  ; $7479: $21 $00 $10
    ld [hl+], a                                   ; $747c: $22
    nop                                           ; $747d: $00
    inc hl                                        ; $747e: $23
    jr nc, jr_08f_7491                            ; $747f: $30 $10

    ld a, [bc]                                    ; $7481: $0a
    nop                                           ; $7482: $00
    dec bc                                        ; $7483: $0b
    nop                                           ; $7484: $00
    nop                                           ; $7485: $00
    inc c                                         ; $7486: $0c
    nop                                           ; $7487: $00
    rla                                           ; $7488: $17
    nop                                           ; $7489: $00
    jr jr_08f_748c                                ; $748a: $18 $00

jr_08f_748c:
    add hl, de                                    ; $748c: $19
    nop                                           ; $748d: $00
    ld d, b                                       ; $748e: $50
    ld a, [de]                                    ; $748f: $1a
    inc c                                         ; $7490: $0c

jr_08f_7491:
    db $10                                        ; $7491: $10
    inc h                                         ; $7492: $24
    ld c, b                                       ; $7493: $48
    db $10                                        ; $7494: $10
    dec h                                         ; $7495: $25
    nop                                           ; $7496: $00
    ld h, $00                                     ; $7497: $26 $00
    nop                                           ; $7499: $00
    daa                                           ; $749a: $27
    nop                                           ; $749b: $00
    inc l                                         ; $749c: $2c
    nop                                           ; $749d: $00
    dec l                                         ; $749e: $2d
    nop                                           ; $749f: $00
    ld l, $00                                     ; $74a0: $2e $00
    ld bc, $002f                                  ; $74a2: $01 $2f $00
    inc [hl]                                      ; $74a5: $34
    nop                                           ; $74a6: $00
    dec [hl]                                      ; $74a7: $35
    nop                                           ; $74a8: $00
    ld [hl], $30                                  ; $74a9: $36 $30
    jr nz, jr_08f_74ad                            ; $74ab: $20 $00

jr_08f_74ad:
    jr z, jr_08f_74af                             ; $74ad: $28 $00

jr_08f_74af:
    add hl, hl                                    ; $74af: $29
    nop                                           ; $74b0: $00
    jr nc, jr_08f_74b3                            ; $74b1: $30 $00

jr_08f_74b3:
    ld sp, $0100                                  ; $74b3: $31 $00 $01
    ld [hl-], a                                   ; $74b6: $32
    nop                                           ; $74b7: $00
    inc sp                                        ; $74b8: $33
    nop                                           ; $74b9: $00
    scf                                           ; $74ba: $37
    nop                                           ; $74bb: $00
    jr c, jr_08f_74ee                             ; $74bc: $38 $30

    jr nc, jr_08f_74de                            ; $74be: $30 $1e

    ld a, [hl+]                                   ; $74c0: $2a
    nop                                           ; $74c1: $00
    dec hl                                        ; $74c2: $2b
    inc b                                         ; $74c3: $04
    ld d, b                                       ; $74c4: $50
    jr nc, jr_08f_74ef                            ; $74c5: $30 $28

    ld h, b                                       ; $74c7: $60
    ld [$4804], sp                                ; $74c8: $08 $04 $48
    add hl, sp                                    ; $74cb: $39
    add b                                         ; $74cc: $80
    xor b                                         ; $74cd: $a8
    nop                                           ; $74ce: $00
    ld e, b                                       ; $74cf: $58
    nop                                           ; $74d0: $00
    ld b, h                                       ; $74d1: $44
    nop                                           ; $74d2: $00
    ld bc, $01f0                                  ; $74d3: $01 $f0 $01
    nop                                           ; $74d6: $00
    ld [bc], a                                    ; $74d7: $02
    dec h                                         ; $74d8: $25
    sub b                                         ; $74d9: $90
    inc bc                                        ; $74da: $03
    nop                                           ; $74db: $00
    ld [hl], c                                    ; $74dc: $71
    inc b                                         ; $74dd: $04

jr_08f_74de:
    dec a                                         ; $74de: $3d
    ld hl, sp+$5f                                 ; $74df: $f8 $5f
    ld hl, sp-$7f                                 ; $74e1: $f8 $81
    ld [hl], b                                    ; $74e3: $70
    dec b                                         ; $74e4: $05
    nop                                           ; $74e5: $00
    ld b, $95                                     ; $74e6: $06 $95
    nop                                           ; $74e8: $00
    ld b, b                                       ; $74e9: $40
    dec bc                                        ; $74ea: $0b
    sbc c                                         ; $74eb: $99
    ld h, b                                       ; $74ec: $60
    rlca                                          ; $74ed: $07

jr_08f_74ee:
    nop                                           ; $74ee: $00

jr_08f_74ef:
    ld [$0900], sp                                ; $74ef: $08 $00 $09
    nop                                           ; $74f2: $00
    ld bc, $000a                                  ; $74f3: $01 $0a $00
    inc c                                         ; $74f6: $0c
    nop                                           ; $74f7: $00
    dec c                                         ; $74f8: $0d
    nop                                           ; $74f9: $00
    ld c, $b5                                     ; $74fa: $0e $b5
    ld b, b                                       ; $74fc: $40
    nop                                           ; $74fd: $00
    rrca                                          ; $74fe: $0f
    nop                                           ; $74ff: $00
    stop                                          ; $7500: $10 $00
    ld de, $1200                                  ; $7502: $11 $00 $12
    nop                                           ; $7505: $00
    inc b                                         ; $7506: $04
    rra                                           ; $7507: $1f
    nop                                           ; $7508: $00
    jr nz, jr_08f_750b                            ; $7509: $20 $00

jr_08f_750b:
    ld hl, $40cd                                  ; $750b: $21 $cd $40
    inc de                                        ; $750e: $13
    nop                                           ; $750f: $00
    nop                                           ; $7510: $00

jr_08f_7511:
    inc d                                         ; $7511: $14
    nop                                           ; $7512: $00
    dec d                                         ; $7513: $15
    nop                                           ; $7514: $00
    ld d, $00                                     ; $7515: $16 $00
    ld [hl+], a                                   ; $7517: $22
    nop                                           ; $7518: $00
    db $10                                        ; $7519: $10
    inc hl                                        ; $751a: $23
    nop                                           ; $751b: $00
    inc h                                         ; $751c: $24
    push hl                                       ; $751d: $e5
    ld b, b                                       ; $751e: $40
    rla                                           ; $751f: $17
    nop                                           ; $7520: $00
    jr jr_08f_7523                                ; $7521: $18 $00

jr_08f_7523:
    nop                                           ; $7523: $00
    add hl, de                                    ; $7524: $19
    nop                                           ; $7525: $00
    ld a, [de]                                    ; $7526: $1a
    nop                                           ; $7527: $00
    dec h                                         ; $7528: $25
    nop                                           ; $7529: $00
    ld h, $00                                     ; $752a: $26 $00
    ld b, b                                       ; $752c: $40
    daa                                           ; $752d: $27
    db $fd                                        ; $752e: $fd
    ld b, b                                       ; $752f: $40
    dec de                                        ; $7530: $1b
    nop                                           ; $7531: $00
    inc e                                         ; $7532: $1c
    nop                                           ; $7533: $00
    dec e                                         ; $7534: $1d
    nop                                           ; $7535: $00
    ld bc, $001e                                  ; $7536: $01 $1e $00
    jr z, jr_08f_753b                             ; $7539: $28 $00

jr_08f_753b:
    add hl, hl                                    ; $753b: $29
    nop                                           ; $753c: $00
    ld a, [hl+]                                   ; $753d: $2a
    dec d                                         ; $753e: $15
    ld b, c                                       ; $753f: $41
    ret nz                                        ; $7540: $c0

    ld [$050d], sp                                ; $7541: $08 $0d $05
    ld d, d                                       ; $7544: $52
    rst $38                                       ; $7545: $ff
    ld bc, $8070                                  ; $7546: $01 $70 $80
    ld [bc], a                                    ; $7549: $02
    nop                                           ; $754a: $00
    ret nz                                        ; $754b: $c0

    cp a                                          ; $754c: $bf
    inc b                                         ; $754d: $04
    jr jr_08f_7511                                ; $754e: $18 $c1

    nop                                           ; $7550: $00
    cp a                                          ; $7551: $bf
    rst $38                                       ; $7552: $ff
    rst $38                                       ; $7553: $ff
    nop                                           ; $7554: $00
    rst $38                                       ; $7555: $ff
    xor d                                         ; $7556: $aa
    ld d, l                                       ; $7557: $55
    nop                                           ; $7558: $00
    db $ec                                        ; $7559: $ec
    ld b, $00                                     ; $755a: $06 $00
    ld [$2d00], sp                                ; $755c: $08 $00 $2d
    nop                                           ; $755f: $00
    add e                                         ; $7560: $83
    inc d                                         ; $7561: $14
    nop                                           ; $7562: $00
    inc b                                         ; $7563: $04
    ld c, b                                       ; $7564: $48
    rst $38                                       ; $7565: $ff
    nop                                           ; $7566: $00
    nop                                           ; $7567: $00
    sbc e                                         ; $7568: $9b
    nop                                           ; $7569: $00
    cp h                                          ; $756a: $bc
    nop                                           ; $756b: $00
    inc hl                                        ; $756c: $23
    nop                                           ; $756d: $00
    ld b, b                                       ; $756e: $40
    nop                                           ; $756f: $00
    nop                                           ; $7570: $00
    ld [$0300], sp                                ; $7571: $08 $00 $03
    inc bc                                        ; $7574: $03
    rlca                                          ; $7575: $07
    rlca                                          ; $7576: $07
    rst $38                                       ; $7577: $ff
    nop                                           ; $7578: $00
    nop                                           ; $7579: $00
    or $00                                        ; $757a: $f6 $00
    adc c                                         ; $757c: $89
    nop                                           ; $757d: $00
    ld [de], a                                    ; $757e: $12
    nop                                           ; $757f: $00
    jr nz, jr_08f_7582                            ; $7580: $20 $00

jr_08f_7582:
    nop                                           ; $7582: $00
    nop                                           ; $7583: $00
    nop                                           ; $7584: $00
    db $fc                                        ; $7585: $fc
    db $fc                                        ; $7586: $fc
    cp $fe                                        ; $7587: $fe $fe
    dec c                                         ; $7589: $0d
    rst $38                                       ; $758a: $ff
    nop                                           ; $758b: $00
    ld e, [hl]                                    ; $758c: $5e
    xor a                                         ; $758d: $af
    ld e, l                                       ; $758e: $5d
    xor a                                         ; $758f: $af
    ld a, [hl]                                    ; $7590: $7e
    add a                                         ; $7591: $87
    ld l, a                                       ; $7592: $6f
    sbc a                                         ; $7593: $9f
    nop                                           ; $7594: $00
    ccf                                           ; $7595: $3f
    rst $18                                       ; $7596: $df
    ld a, a                                       ; $7597: $7f
    sbc a                                         ; $7598: $9f
    ld a, a                                       ; $7599: $7f
    sbc a                                         ; $759a: $9f
    ld e, l                                       ; $759b: $5d
    rst $38                                       ; $759c: $ff
    nop                                           ; $759d: $00
    cp a                                          ; $759e: $bf
    db $fd                                        ; $759f: $fd
    ld [hl], c                                    ; $75a0: $71
    ei                                            ; $75a1: $fb
    rlc [hl]                                      ; $75a2: $cb $06
    rst $38                                       ; $75a4: $ff
    rst $38                                       ; $75a5: $ff
    inc bc                                        ; $75a6: $03
    push hl                                       ; $75a7: $e5
    ei                                            ; $75a8: $fb
    cp $fd                                        ; $75a9: $fe $fd
    ld hl, sp-$03                                 ; $75ab: $f8 $fd
    ld b, b                                       ; $75ad: $40
    ld c, b                                       ; $75ae: $48
    ld bc, $8008                                  ; $75af: $01 $08 $80
    ld b, b                                       ; $75b2: $40
    jr @+$21                                      ; $75b3: $18 $1f

jr_08f_75b5:
    rrca                                          ; $75b5: $0f
    ccf                                           ; $75b6: $3f
    rra                                           ; $75b7: $1f
    dec [hl]                                      ; $75b8: $35
    ccf                                           ; $75b9: $3f
    ld a, [hl-]                                   ; $75ba: $3a
    db $10                                        ; $75bb: $10
    ccf                                           ; $75bc: $3f
    dec [hl]                                      ; $75bd: $35
    ccf                                           ; $75be: $3f
    ld h, b                                       ; $75bf: $60
    jr jr_08f_75b5                                ; $75c0: $18 $f3

    ldh a, [$f8]                                  ; $75c2: $f0 $f8
    ld hl, sp+$02                                 ; $75c4: $f8 $02
    ld [hl], h                                    ; $75c6: $74
    db $fc                                        ; $75c7: $fc
    db $fc                                        ; $75c8: $fc
    db $f4                                        ; $75c9: $f4
    call nz, Call_08f_60ec                        ; $75ca: $c4 $ec $60
    jr z, @+$31                                   ; $75cd: $28 $2f

    jr nz, jr_08f_75e0                            ; $75cf: $20 $0f

    rra                                           ; $75d1: $1f
    ld [hl+], a                                   ; $75d2: $22
    stop                                          ; $75d3: $10 $00
    rst $38                                       ; $75d5: $ff
    ldh a, [rIF]                                  ; $75d6: $f0 $0f
    sbc a                                         ; $75d8: $9f
    nop                                           ; $75d9: $00
    ld h, b                                       ; $75da: $60
    ld a, [c]                                     ; $75db: $f2
    ld a, l                                       ; $75dc: $7d
    rra                                           ; $75dd: $1f
    ldh [$fc], a                                  ; $75de: $e0 $fc

jr_08f_75e0:
    add e                                         ; $75e0: $83
    add a                                         ; $75e1: $87
    nop                                           ; $75e2: $00
    ld hl, sp-$01                                 ; $75e3: $f8 $ff
    add b                                         ; $75e5: $80
    dec de                                        ; $75e6: $1b
    db $fc                                        ; $75e7: $fc
    ld a, a                                       ; $75e8: $7f
    cp a                                          ; $75e9: $bf
    rst $38                                       ; $75ea: $ff
    db $10                                        ; $75eb: $10
    ld a, a                                       ; $75ec: $7f
    ld a, a                                       ; $75ed: $7f
    rst $38                                       ; $75ee: $ff
    inc b                                         ; $75ef: $04
    jr @+$01                                      ; $75f0: $18 $ff

    ccf                                           ; $75f2: $3f
    jr z, jr_08f_7614                             ; $75f3: $28 $1f

    nop                                           ; $75f5: $00
    db $fc                                        ; $75f6: $fc
    rst $38                                       ; $75f7: $ff
    sub a                                         ; $75f8: $97
    xor $fa                                       ; $75f9: $ee $fa
    rst $30                                       ; $75fb: $f7
    db $e3                                        ; $75fc: $e3
    or $00                                        ; $75fd: $f6 $00
    ld a, [c]                                     ; $75ff: $f2
    rst $20                                       ; $7600: $e7
    set 4, [hl]                                   ; $7601: $cb $e6
    sub a                                         ; $7603: $97
    call z, $ff35                                 ; $7604: $cc $35 $ff
    ld c, $fb                                     ; $7607: $0e $fb
    inc e                                         ; $7609: $1c
    cp a                                          ; $760a: $bf
    ld a, a                                       ; $760b: $7f
    ld e, $20                                     ; $760c: $1e $20
    ld [bc], a                                    ; $760e: $02
    ld [$20c0], sp                                ; $760f: $08 $c0 $20
    ldh a, [$c0]                                  ; $7612: $f0 $c0

jr_08f_7614:
    ld h, d                                       ; $7614: $62
    jr nz, @-$3e                                  ; $7615: $20 $c0

    jr jr_08f_762c                                ; $7617: $18 $13

    nop                                           ; $7619: $00
    ld hl, $0101                                  ; $761a: $21 $01 $01
    ld bc, $0940                                  ; $761d: $01 $40 $09
    sub b                                         ; $7620: $90
    ld [$fbe0], sp                                ; $7621: $08 $e0 $fb
    ldh [$fc], a                                  ; $7624: $e0 $fc
    ret nz                                        ; $7626: $c0

    db $e3                                        ; $7627: $e3
    nop                                           ; $7628: $00
    ret nz                                        ; $7629: $c0

    ret nz                                        ; $762a: $c0

    add b                                         ; $762b: $80

jr_08f_762c:
    ld [$8080], sp                                ; $762c: $08 $80 $80
    ret nz                                        ; $762f: $c0

    ret nz                                        ; $7630: $c0

    ld h, b                                       ; $7631: $60
    ld h, b                                       ; $7632: $60
    ldh [rOBP0], a                                ; $7633: $e0 $48
    or d                                          ; $7635: $b2
    ld [$efc4], sp                                ; $7636: $08 $c4 $ef
    ld l, $19                                     ; $7639: $2e $19
    db $fc                                        ; $763b: $fc
    nop                                           ; $763c: $00
    rst $38                                       ; $763d: $ff
    sub [hl]                                      ; $763e: $96
    rst $28                                       ; $763f: $ef
    ld a, [$e2f7]                                 ; $7640: $fa $f7 $e2
    rst $30                                       ; $7643: $f7
    ld a, [c]                                     ; $7644: $f2
    jr @-$17                                      ; $7645: $18 $e7

    jp z, $c5e7                                   ; $7647: $ca $e7 $c5

    db $10                                        ; $764a: $10
    dec b                                         ; $764b: $05
    ld b, b                                       ; $764c: $40
    ld h, b                                       ; $764d: $60
    jr nc, jr_08f_7680                            ; $764e: $30 $30

    nop                                           ; $7650: $00
    jr @+$1a                                      ; $7651: $18 $18

    inc c                                         ; $7653: $0c
    nop                                           ; $7654: $00
    ld a, [bc]                                    ; $7655: $0a
    nop                                           ; $7656: $00
    add hl, bc                                    ; $7657: $09
    db $10                                        ; $7658: $10
    dec de                                        ; $7659: $1b
    nop                                           ; $765a: $00
    nop                                           ; $765b: $00
    db $10                                        ; $765c: $10
    rla                                           ; $765d: $17
    ld de, $2023                                  ; $765e: $11 $23 $20
    add b                                         ; $7661: $80
    ldh a, [rLCDC]                                ; $7662: $f0 $40
    jr nc, @+$1b                                  ; $7664: $30 $19

    ld h, b                                       ; $7666: $60
    ld c, b                                       ; $7667: $48
    ld b, [hl]                                    ; $7668: $46
    ld bc, $0905                                  ; $7669: $01 $05 $09
    ld bc, $0900                                  ; $766c: $01 $00 $09
    nop                                           ; $766f: $00
    ld b, $2e                                     ; $7670: $06 $2e
    nop                                           ; $7672: $00
    ld [bc], a                                    ; $7673: $02
    ld [$0100], sp                                ; $7674: $08 $00 $01
    ld h, $00                                     ; $7677: $26 $00
    jr z, jr_08f_7693                             ; $7679: $28 $18

    dec b                                         ; $767b: $05
    sbc b                                         ; $767c: $98
    ld [$0010], sp                                ; $767d: $08 $10 $00

jr_08f_7680:
    ccf                                           ; $7680: $3f
    rst $18                                       ; $7681: $df
    ld [bc], a                                    ; $7682: $02
    nop                                           ; $7683: $00
    rst $08                                       ; $7684: $cf
    daa                                           ; $7685: $27
    rst $18                                       ; $7686: $df
    inc hl                                        ; $7687: $23
    nop                                           ; $7688: $00
    rst $18                                       ; $7689: $df
    ld [hl], b                                    ; $768a: $70
    sbc a                                         ; $768b: $9f
    ld d, h                                       ; $768c: $54
    cp e                                          ; $768d: $bb
    ld d, l                                       ; $768e: $55
    cp d                                          ; $768f: $ba
    db $fc                                        ; $7690: $fc
    nop                                           ; $7691: $00
    ld sp, hl                                     ; $7692: $f9

jr_08f_7693:
    ld a, [c]                                     ; $7693: $f2
    ld sp, hl                                     ; $7694: $f9
    push hl                                       ; $7695: $e5
    di                                            ; $7696: $f3
    xor d                                         ; $7697: $aa
    rst $00                                       ; $7698: $c7
    db $fc                                        ; $7699: $fc
    add b                                         ; $769a: $80
    cp b                                          ; $769b: $b8
    ld bc, $fd02                                  ; $769c: $01 $02 $fd
    db $d3                                        ; $769f: $d3
    dec l                                         ; $76a0: $2d
    ld b, l                                       ; $76a1: $45
    cp d                                          ; $76a2: $ba
    ld l, a                                       ; $76a3: $6f
    ld bc, $6598                                  ; $76a4: $01 $98 $65
    sbc d                                         ; $76a7: $9a
    ld [hl], l                                    ; $76a8: $75
    adc d                                         ; $76a9: $8a
    ld d, l                                       ; $76aa: $55
    xor d                                         ; $76ab: $aa
    ld [bc], a                                    ; $76ac: $02
    ld [$5d00], sp                                ; $76ad: $08 $00 $5d
    and d                                         ; $76b0: $a2
    ld e, d                                       ; $76b1: $5a
    and l                                         ; $76b2: $a5
    ld e, e                                       ; $76b3: $5b
    and l                                         ; $76b4: $a5
    ld e, d                                       ; $76b5: $5a
    and l                                         ; $76b6: $a5
    nop                                           ; $76b7: $00
    ld a, e                                       ; $76b8: $7b
    add l                                         ; $76b9: $85
    ld l, d                                       ; $76ba: $6a
    sub l                                         ; $76bb: $95
    xor a                                         ; $76bc: $af
    ld d, c                                       ; $76bd: $51
    xor d                                         ; $76be: $aa
    ld d, l                                       ; $76bf: $55
    nop                                           ; $76c0: $00
    db $eb                                        ; $76c1: $eb
    dec d                                         ; $76c2: $15
    dec hl                                        ; $76c3: $2b
    call nc, $d42b                                ; $76c4: $d4 $2b $d4
    dec sp                                        ; $76c7: $3b
    call nz, Call_000_2f02                        ; $76c8: $c4 $02 $2f
    ret nc                                        ; $76cb: $d0

    dec l                                         ; $76cc: $2d
    jp nc, $827d                                  ; $76cd: $d2 $7d $82

    inc h                                         ; $76d0: $24
    ld [$00aa], sp                                ; $76d1: $08 $aa $00
    ld d, l                                       ; $76d4: $55
    xor e                                         ; $76d5: $ab
    ld d, l                                       ; $76d6: $55
    ld [$5f15], a                                 ; $76d7: $ea $15 $5f
    and l                                         ; $76da: $a5
    ld d, d                                       ; $76db: $52
    dec b                                         ; $76dc: $05
    xor l                                         ; $76dd: $ad
    ld d, a                                       ; $76de: $57
    xor l                                         ; $76df: $ad
    sub $2d                                       ; $76e0: $d6 $2d
    ld b, b                                       ; $76e2: $40
    db $10                                        ; $76e3: $10
    sub b                                         ; $76e4: $90
    ld b, b                                       ; $76e5: $40
    ld c, b                                       ; $76e6: $48
    nop                                           ; $76e7: $00
    db $e3                                        ; $76e8: $e3
    sbc h                                         ; $76e9: $9c
    cp $81                                        ; $76ea: $fe $81
    add e                                         ; $76ec: $83
    ld a, h                                       ; $76ed: $7c
    ld a, h                                       ; $76ee: $7c
    add e                                         ; $76ef: $83
    nop                                           ; $76f0: $00
    rlca                                          ; $76f1: $07
    ld hl, sp-$4c                                 ; $76f2: $f8 $b4
    ld c, e                                       ; $76f4: $4b
    nop                                           ; $76f5: $00
    rst $38                                       ; $76f6: $ff
    ld d, l                                       ; $76f7: $55
    rst $38                                       ; $76f8: $ff
    inc b                                         ; $76f9: $04
    sbc $3f                                       ; $76fa: $de $3f
    rrca                                          ; $76fc: $0f
    rst $38                                       ; $76fd: $ff
    ret nz                                        ; $76fe: $c0

    add [hl]                                      ; $76ff: $86
    ld bc, $00ff                                  ; $7700: $01 $ff $00
    jr nz, jr_08f_7715                            ; $7703: $20 $10

jr_08f_7705:
    rst $28                                       ; $7705: $ef
    db $10                                        ; $7706: $10
    ld [$1cab], sp                                ; $7707: $08 $ab $1c
    ldh a, [rIE]                                  ; $770a: $f0 $ff
    inc bc                                        ; $770c: $03
    ld [bc], a                                    ; $770d: $02
    db $fc                                        ; $770e: $fc
    inc c                                         ; $770f: $0c
    di                                            ; $7710: $f3
    add a                                         ; $7711: $87
    ld a, b                                       ; $7712: $78
    inc [hl]                                      ; $7713: $34
    ld a, [hl-]                                   ; $7714: $3a

jr_08f_7715:
    ld [bc], a                                    ; $7715: $02
    ld d, l                                       ; $7716: $55
    nop                                           ; $7717: $00
    rst $38                                       ; $7718: $ff
    ld a, a                                       ; $7719: $7f
    cp a                                          ; $771a: $bf
    sbc $3f                                       ; $771b: $de $3f
    adc a                                         ; $771d: $8f
    ld a, a                                       ; $771e: $7f
    ld b, b                                       ; $771f: $40
    jr @-$3f                                      ; $7720: $18 $bf

    nop                                           ; $7722: $00
    rst $38                                       ; $7723: $ff
    jr nc, jr_08f_773e                            ; $7724: $30 $18

    jr nz, jr_08f_7742                            ; $7726: $20 $1a

    jp nc, $e0c0                                  ; $7728: $d2 $c0 $e0

    ld bc, $d0e0                                  ; $772b: $01 $e0 $d0
    ldh a, [$f8]                                  ; $772e: $f0 $f8
    ret nc                                        ; $7730: $d0

    db $10                                        ; $7731: $10
    or b                                          ; $7732: $b0
    ld b, b                                       ; $7733: $40
    ld c, d                                       ; $7734: $4a
    ret nz                                        ; $7735: $c0

    or a                                          ; $7736: $b7
    add hl, bc                                    ; $7737: $09
    ld b, b                                       ; $7738: $40
    ld a, [hl+]                                   ; $7739: $2a
    ld hl, $0301                                  ; $773a: $21 $01 $03
    inc bc                                        ; $773d: $03

jr_08f_773e:
    adc e                                         ; $773e: $8b
    add e                                         ; $773f: $83
    jr nc, jr_08f_7705                            ; $7740: $30 $c3

jr_08f_7742:
    jp $1a50                                      ; $7742: $c3 $50 $1a


    and [hl]                                      ; $7745: $a6
    ld a, [bc]                                    ; $7746: $0a
    ld d, a                                       ; $7747: $57
    rst $38                                       ; $7748: $ff
    xor a                                         ; $7749: $af
    rst $38                                       ; $774a: $ff
    nop                                           ; $774b: $00
    ld e, h                                       ; $774c: $5c
    cp $a1                                        ; $774d: $fe $a1
    ld a, a                                       ; $774f: $7f
    pop af                                        ; $7750: $f1
    rst $38                                       ; $7751: $ff
    ld e, a                                       ; $7752: $5f
    cp c                                          ; $7753: $b9
    nop                                           ; $7754: $00
    ld [$8fdd], a                                 ; $7755: $ea $dd $8f
    reti                                          ; $7758: $d9


    rst $08                                       ; $7759: $cf
    sbc e                                         ; $775a: $9b
    cpl                                           ; $775b: $2f
    sbc e                                         ; $775c: $9b
    nop                                           ; $775d: $00
    ld d, a                                       ; $775e: $57
    dec sp                                        ; $775f: $3b
    xor e                                         ; $7760: $ab
    rst $38                                       ; $7761: $ff
    rst $10                                       ; $7762: $d7
    rst $38                                       ; $7763: $ff
    xor [hl]                                      ; $7764: $ae
    rst $38                                       ; $7765: $ff
    inc b                                         ; $7766: $04
    reti                                          ; $7767: $d9


    ldh [rIE], a                                  ; $7768: $e0 $ff
    rst $38                                       ; $776a: $ff
    db $fc                                        ; $776b: $fc
    rl d                                          ; $776c: $cb $12
    and c                                         ; $776e: $a1
    rst $38                                       ; $776f: $ff
    nop                                           ; $7770: $00
    di                                            ; $7771: $f3
    xor a                                         ; $7772: $af
    ccf                                           ; $7773: $3f
    ld h, a                                       ; $7774: $67
    ld [hl], a                                    ; $7775: $77
    rst $08                                       ; $7776: $cf
    rst $38                                       ; $7777: $ff
    rst $20                                       ; $7778: $e7
    nop                                           ; $7779: $00
    cp a                                          ; $777a: $bf
    ld [hl], a                                    ; $777b: $77
    rst $10                                       ; $777c: $d7
    cp a                                          ; $777d: $bf
    rra                                           ; $777e: $1f
    or e                                          ; $777f: $b3
    or d                                          ; $7780: $b2
    pop bc                                        ; $7781: $c1
    ld [bc], a                                    ; $7782: $02
    rst $38                                       ; $7783: $ff
    rst $38                                       ; $7784: $ff
    ld sp, hl                                     ; $7785: $f9
    cp $ff                                        ; $7786: $fe $ff
    rst $38                                       ; $7788: $ff
    inc bc                                        ; $7789: $03
    ld [$00fc], sp                                ; $778a: $08 $fc $00
    cp $f9                                        ; $778d: $fe $f9
    db $fc                                        ; $778f: $fc
    db $e3                                        ; $7790: $e3
    rst $38                                       ; $7791: $ff
    inc bc                                        ; $7792: $03
    rst $38                                       ; $7793: $ff
    rra                                           ; $7794: $1f
    ld b, $e1                                     ; $7795: $06 $e1
    ld a, h                                       ; $7797: $7c
    add e                                         ; $7798: $83
    inc b                                         ; $7799: $04
    ei                                            ; $779a: $fb
    sub b                                         ; $779b: $90
    jr nz, @+$1c                                  ; $779c: $20 $1a

    nop                                           ; $779e: $00
    db $fc                                        ; $779f: $fc

jr_08f_77a0:
    jr jr_08f_77a0                                ; $77a0: $18 $fe

    push af                                       ; $77a2: $f5
    ld hl, sp+$09                                 ; $77a3: $f8 $09
    ld [bc], a                                    ; $77a5: $02
    or b                                          ; $77a6: $b0
    db $10                                        ; $77a7: $10
    sub c                                         ; $77a8: $91
    ccf                                           ; $77a9: $3f
    ld e, b                                       ; $77aa: $58
    nop                                           ; $77ab: $00
    scf                                           ; $77ac: $37
    and b                                         ; $77ad: $a0
    ld a, a                                       ; $77ae: $7f
    ld e, h                                       ; $77af: $5c
    db $e3                                        ; $77b0: $e3
    add a                                         ; $77b1: $87
    ld hl, sp+$14                                 ; $77b2: $f8 $14
    sub d                                         ; $77b4: $92
    ret nz                                        ; $77b5: $c0

jr_08f_77b6:
    db $10                                        ; $77b6: $10
    ld [$02f1], a                                 ; $77b7: $ea $f1 $02

jr_08f_77ba:
    dec bc                                        ; $77ba: $0b

jr_08f_77bb:
    nop                                           ; $77bb: $00
    rst $38                                       ; $77bc: $ff
    ldh a, [$28]                                  ; $77bd: $f0 $28
    sub h                                         ; $77bf: $94
    ld [$aacf], sp                                ; $77c0: $08 $cf $aa
    dec e                                         ; $77c3: $1d
    ldh a, [$5a]                                  ; $77c4: $f0 $5a
    ld bc, $ff00                                  ; $77c6: $01 $00 $ff
    ld e, $55                                     ; $77c9: $1e $55
    pop hl                                        ; $77cb: $e1
    nop                                           ; $77cc: $00
    add hl, bc                                    ; $77cd: $09
    jr nz, jr_08f_77ba                            ; $77ce: $20 $ea

    ld [bc], a                                    ; $77d0: $02
    ld b, b                                       ; $77d1: $40
    cp $02                                        ; $77d2: $fe $02
    add b                                         ; $77d4: $80
    ld [bc], a                                    ; $77d5: $02
    inc bc                                        ; $77d6: $03
    ld h, b                                       ; $77d7: $60
    jr z, jr_08f_77bb                             ; $77d8: $28 $e1

    ld bc, $2b10                                  ; $77da: $01 $10 $2b
    ret nz                                        ; $77dd: $c0

    add b                                         ; $77de: $80
    ld c, b                                       ; $77df: $48
    ret nz                                        ; $77e0: $c0

    ret nz                                        ; $77e1: $c0

    ld a, [bc]                                    ; $77e2: $0a
    ld b, b                                       ; $77e3: $40
    ld b, b                                       ; $77e4: $40
    ret nz                                        ; $77e5: $c0

    jr nz, jr_08f_77b6                            ; $77e6: $20 $ce

    ld bc, $cc02                                  ; $77e8: $01 $02 $cc
    ld bc, $8d10                                  ; $77eb: $01 $10 $8d
    ldh a, [rSB]                                  ; $77ee: $f0 $01
    ld [bc], a                                    ; $77f0: $02
    nop                                           ; $77f1: $00
    ld b, h                                       ; $77f2: $44
    ld d, $03                                     ; $77f3: $16 $03
    ld b, $08                                     ; $77f5: $06 $08
    add b                                         ; $77f7: $80
    dec bc                                        ; $77f8: $0b
    ld [bc], a                                    ; $77f9: $02
    ld h, b                                       ; $77fa: $60
    nop                                           ; $77fb: $00
    and $01                                       ; $77fc: $e6 $01
    sbc $01                                       ; $77fe: $de $01
    rst $38                                       ; $7800: $ff
    cp $c1                                        ; $7801: $fe $c1
    ld h, b                                       ; $7803: $60
    rst $38                                       ; $7804: $ff
    nop                                           ; $7805: $00
    cp [hl]                                       ; $7806: $be
    ld h, c                                       ; $7807: $61
    jr nc, jr_08f_7879                            ; $7808: $30 $6f

    ld a, $61                                     ; $780a: $3e $61
    and b                                         ; $780c: $a0
    ld a, a                                       ; $780d: $7f
    nop                                           ; $780e: $00
    ld a, [hl]                                    ; $780f: $7e
    pop bc                                        ; $7810: $c1
    nop                                           ; $7811: $00
    nop                                           ; $7812: $00
    sub c                                         ; $7813: $91
    nop                                           ; $7814: $00
    ld hl, $0000                                  ; $7815: $21 $00 $00
    dec b                                         ; $7818: $05
    nop                                           ; $7819: $00
    ld e, d                                       ; $781a: $5a
    nop                                           ; $781b: $00
    or l                                          ; $781c: $b5
    nop                                           ; $781d: $00
    ld l, [hl]                                    ; $781e: $6e
    nop                                           ; $781f: $00
    ld b, b                                       ; $7820: $40
    db $d3                                        ; $7821: $d3
    ld [hl-], a                                   ; $7822: $32
    nop                                           ; $7823: $00
    stop                                          ; $7824: $10 $00
    ret                                           ; $7826: $c9


    nop                                           ; $7827: $00
    or e                                          ; $7828: $b3
    nop                                           ; $7829: $00
    ld b, b                                       ; $782a: $40
    xor $12                                       ; $782b: $ee $12
    nop                                           ; $782d: $00
    rst $28                                       ; $782e: $ef
    nop                                           ; $782f: $00
    cp e                                          ; $7830: $bb
    nop                                           ; $7831: $00
    or b                                          ; $7832: $b0
    rst $08                                       ; $7833: $cf
    add h                                         ; $7834: $84
    ld a, b                                       ; $7835: $78
    ld [$01fe], sp                                ; $7836: $08 $fe $01
    ld [hl], b                                    ; $7839: $70
    adc a                                         ; $783a: $8f
    add b                                         ; $783b: $80
    jr jr_08f_78b3                                ; $783c: $18 $75

    nop                                           ; $783e: $00
    nop                                           ; $783f: $00
    xor d                                         ; $7840: $aa
    nop                                           ; $7841: $00
    push af                                       ; $7842: $f5
    ld [$2055], sp                                ; $7843: $08 $55 $20
    xor a                                         ; $7846: $af
    ld b, b                                       ; $7847: $40
    inc b                                         ; $7848: $04
    ld e, d                                       ; $7849: $5a
    and l                                         ; $784a: $a5
    and l                                         ; $784b: $a5
    ld e, d                                       ; $784c: $5a
    xor d                                         ; $784d: $aa
    xor [hl]                                      ; $784e: $ae
    inc bc                                        ; $784f: $03
    ld a, d                                       ; $7850: $7a
    add l                                         ; $7851: $85
    jr z, @+$80                                   ; $7852: $28 $7e

    add c                                         ; $7854: $81
    inc b                                         ; $7855: $04
    jr c, jr_08f_78bd                             ; $7856: $38 $65

    ld a, [hl-]                                   ; $7858: $3a
    nop                                           ; $7859: $00
    db $db                                        ; $785a: $db
    inc b                                         ; $785b: $04
    ld e, l                                       ; $785c: $5d
    nop                                           ; $785d: $00
    ld [hl+], a                                   ; $785e: $22
    ld [hl], $c1                                  ; $785f: $36 $c1
    xor l                                         ; $7861: $ad
    ld d, d                                       ; $7862: $52
    ld d, b                                       ; $7863: $50
    xor a                                         ; $7864: $af
    xor d                                         ; $7865: $aa
    jr nc, @+$01                                  ; $7866: $30 $ff

    ld bc, $22a1                                  ; $7868: $01 $a1 $22
    sub [hl]                                      ; $786b: $96
    nop                                           ; $786c: $00
    ld bc, $0209                                  ; $786d: $01 $09 $02
    inc b                                         ; $7870: $04
    ld l, d                                       ; $7871: $6a
    ld [bc], a                                    ; $7872: $02
    adc b                                         ; $7873: $88
    ld a, [bc]                                    ; $7874: $0a
    ld h, h                                       ; $7875: $64
    ld a, [hl-]                                   ; $7876: $3a
    ld a, [bc]                                    ; $7877: $0a
    rra                                           ; $7878: $1f

jr_08f_7879:
    nop                                           ; $7879: $00
    db $10                                        ; $787a: $10
    and a                                         ; $787b: $a7
    ld [de], a                                    ; $787c: $12
    daa                                           ; $787d: $27
    ld [$7800], sp                                ; $787e: $08 $00 $78
    nop                                           ; $7881: $00
    adc b                                         ; $7882: $88
    rst $10                                       ; $7883: $d7
    nop                                           ; $7884: $00
    ld b, $00                                     ; $7885: $06 $00
    inc bc                                        ; $7887: $03
    ld [$0c00], sp                                ; $7888: $08 $00 $0c
    nop                                           ; $788b: $00
    ldh a, [rSVBK]                                ; $788c: $f0 $70
    ld [hl-], a                                   ; $788e: $32
    ld [bc], a                                    ; $788f: $02
    inc b                                         ; $7890: $04
    ld a, [bc]                                    ; $7891: $0a
    nop                                           ; $7892: $00
    inc b                                         ; $7893: $04
    ld b, l                                       ; $7894: $45
    inc c                                         ; $7895: $0c
    add [hl]                                      ; $7896: $86
    dec c                                         ; $7897: $0d
    ld e, $0e                                     ; $7898: $1e $0e
    inc c                                         ; $789a: $0c
    nop                                           ; $789b: $00
    ld e, $07                                     ; $789c: $1e $07
    inc c                                         ; $789e: $0c
    add e                                         ; $789f: $83
    ld b, $58                                     ; $78a0: $06 $58
    ld a, $81                                     ; $78a2: $3e $81
    db $10                                        ; $78a4: $10
    ld b, b                                       ; $78a5: $40
    ld [bc], a                                    ; $78a6: $02
    add b                                         ; $78a7: $80

jr_08f_78a8:
    ldh [$38], a                                  ; $78a8: $e0 $38
    ld b, l                                       ; $78aa: $45
    inc bc                                        ; $78ab: $03
    db $10                                        ; $78ac: $10
    ld bc, $b080                                  ; $78ad: $01 $80 $b0
    ld c, b                                       ; $78b0: $48
    add b                                         ; $78b1: $80
    nop                                           ; $78b2: $00

jr_08f_78b3:
    sub c                                         ; $78b3: $91

jr_08f_78b4:
    add b                                         ; $78b4: $80
    ld h, c                                       ; $78b5: $61
    add b                                         ; $78b6: $80
    add l                                         ; $78b7: $85
    nop                                           ; $78b8: $00

jr_08f_78b9:
    ld b, b                                       ; $78b9: $40
    ld e, d                                       ; $78ba: $5a
    ld h, b                                       ; $78bb: $60
    or l                                          ; $78bc: $b5

jr_08f_78bd:
    jr nz, jr_08f_792d                            ; $78bd: $20 $6e

    jr nz, jr_08f_78b4                            ; $78bf: $20 $f3

    ld b, b                                       ; $78c1: $40
    ld h, b                                       ; $78c2: $60
    or b                                          ; $78c3: $b0
    ld d, b                                       ; $78c4: $50
    ld e, e                                       ; $78c5: $5b
    xor e                                         ; $78c6: $ab
    rst $38                                       ; $78c7: $ff
    ld h, l                                       ; $78c8: $65
    ld b, b                                       ; $78c9: $40
    xor $00                                       ; $78ca: $ee $00
    ld b, b                                       ; $78cc: $40
    db $db                                        ; $78cd: $db
    ld b, h                                       ; $78ce: $44
    db $dd                                        ; $78cf: $dd
    ld [c], a                                     ; $78d0: $e2
    or $c1                                        ; $78d1: $f6 $c1
    xor l                                         ; $78d3: $ad
    jr c, jr_08f_78a8                             ; $78d4: $38 $d2

    ret nc                                        ; $78d6: $d0

    and b                                         ; $78d7: $a0
    nop                                           ; $78d8: $00
    sub b                                         ; $78d9: $90
    ld [hl+], a                                   ; $78da: $22
    sub $02                                       ; $78db: $d6 $02
    ld [hl], l                                    ; $78dd: $75
    cp a                                          ; $78de: $bf
    ld a, d                                       ; $78df: $7a
    db $10                                        ; $78e0: $10
    cp a                                          ; $78e1: $bf
    ld [hl], l                                    ; $78e2: $75
    cp a                                          ; $78e3: $bf
    sub b                                         ; $78e4: $90
    ld a, [de]                                    ; $78e5: $1a
    rst $38                                       ; $78e6: $ff
    pop af                                        ; $78e7: $f1
    ld a, [$00fd]                                 ; $78e8: $fa $fd $00
    ld [hl], a                                    ; $78eb: $77
    db $fd                                        ; $78ec: $fd
    cp $f5                                        ; $78ed: $fe $f5
    rst $00                                       ; $78ef: $c7

jr_08f_78f0:
    db $ed                                        ; $78f0: $ed
    ld e, e                                       ; $78f1: $5b
    cp h                                          ; $78f2: $bc
    ld h, b                                       ; $78f3: $60
    ld a, a                                       ; $78f4: $7f
    cp a                                          ; $78f5: $bf
    dec bc                                        ; $78f6: $0b
    ld [bc], a                                    ; $78f7: $02
    jr z, jr_08f_78b9                             ; $78f8: $28 $bf

    ld a, [hl+]                                   ; $78fa: $2a
    dec e                                         ; $78fb: $1d
    rst $38                                       ; $78fc: $ff
    db $fd                                        ; $78fd: $fd
    inc d                                         ; $78fe: $14
    sub [hl]                                      ; $78ff: $96
    rst $28                                       ; $7900: $ef
    ei                                            ; $7901: $fb
    ld a, [hl]                                    ; $7902: $7e
    inc bc                                        ; $7903: $03
    di                                            ; $7904: $f3
    ld a, [hl]                                    ; $7905: $7e
    inc bc                                        ; $7906: $03
    sub a                                         ; $7907: $97
    call Call_000_1e12                            ; $7908: $cd $12 $1e
    rst $38                                       ; $790b: $ff
    rrca                                          ; $790c: $0f
    or d                                          ; $790d: $b2
    inc b                                         ; $790e: $04
    jr nz, jr_08f_78f0                            ; $790f: $20 $df

    ret nc                                        ; $7911: $d0

    ld [hl-], a                                   ; $7912: $32
    dec e                                         ; $7913: $1d
    ld c, b                                       ; $7914: $48
    pop af                                        ; $7915: $f1
    ld [$0f03], sp                                ; $7916: $08 $03 $0f
    push af                                       ; $7919: $f5
    ret nc                                        ; $791a: $d0

    ld a, [hl+]                                   ; $791b: $2a
    ld c, a                                       ; $791c: $4f
    cp a                                          ; $791d: $bf
    ld a, a                                       ; $791e: $7f
    ld h, b                                       ; $791f: $60

jr_08f_7920:
    sbc a                                         ; $7920: $9f
    ld e, d                                       ; $7921: $5a
    jr @+$4c                                      ; $7922: $18 $4a

    jr jr_08f_7920                                ; $7924: $18 $fa

    push af                                       ; $7926: $f5
    ei                                            ; $7927: $fb
    db $fd                                        ; $7928: $fd
    halt                                          ; $7929: $76
    nop                                           ; $792a: $00
    db $fd                                        ; $792b: $fd
    rst $38                                       ; $792c: $ff

jr_08f_792d:
    push af                                       ; $792d: $f5
    add $ed                                       ; $792e: $c6 $ed
    cpl                                           ; $7930: $2f
    add hl, de                                    ; $7931: $19
    cp $00                                        ; $7932: $fe $00
    db $fd                                        ; $7934: $fd
    sub a                                         ; $7935: $97
    rst $28                                       ; $7936: $ef
    rst $38                                       ; $7937: $ff
    rst $38                                       ; $7938: $ff
    jr nz, @+$01                                  ; $7939: $20 $ff

    adc d                                         ; $793b: $8a
    nop                                           ; $793c: $00
    ld [hl], l                                    ; $793d: $75
    ld l, a                                       ; $793e: $6f
    sub b                                         ; $793f: $90
    ldh a, [$08]                                  ; $7940: $f0 $08
    rst $20                                       ; $7942: $e7
    rrca                                          ; $7943: $0f
    rrca                                          ; $7944: $0f
    db $10                                        ; $7945: $10
    db $10                                        ; $7946: $10
    ld [hl], h                                    ; $7947: $74
    ld hl, sp+$00                                 ; $7948: $f8 $00
    dec e                                         ; $794a: $1d
    xor d                                         ; $794b: $aa
    ld [hl], b                                    ; $794c: $70
    ld [hl], a                                    ; $794d: $77
    adc [hl]                                      ; $794e: $8e
    ld [bc], a                                    ; $794f: $02
    ld b, b                                       ; $7950: $40
    adc a                                         ; $7951: $8f
    ld sp, $7f7e                                  ; $7952: $31 $7e $7f
    add h                                         ; $7955: $84
    jr nz, jr_08f_7960                            ; $7956: $20 $08

    and a                                         ; $7958: $a7
    nop                                           ; $7959: $00
    ld e, a                                       ; $795a: $5f
    rst $38                                       ; $795b: $ff
    ld b, b                                       ; $795c: $40
    rst $38                                       ; $795d: $ff
    add b                                         ; $795e: $80
    cp b                                          ; $795f: $b8

jr_08f_7960:
    add b                                         ; $7960: $80
    add d                                         ; $7961: $82
    db $10                                        ; $7962: $10
    ld b, a                                       ; $7963: $47
    sub $39                                       ; $7964: $d6 $39
    jr nc, jr_08f_7975                            ; $7966: $30 $0d

    ld a, [hl+]                                   ; $7968: $2a
    push de                                       ; $7969: $d5
    ld e, [hl]                                    ; $796a: $5e
    add b                                         ; $796b: $80
    nop                                           ; $796c: $00
    jp nz, Jump_000_2e61                          ; $796d: $c2 $61 $2e

    ld e, a                                       ; $7970: $5f
    ld a, h                                       ; $7971: $7c
    add e                                         ; $7972: $83
    cp $81                                        ; $7973: $fe $81

jr_08f_7975:
    nop                                           ; $7975: $00
    ld a, b                                       ; $7976: $78
    add a                                         ; $7977: $87
    cp $02                                        ; $7978: $fe $02
    ld a, c                                       ; $797a: $79
    inc bc                                        ; $797b: $03
    inc bc                                        ; $797c: $03
    add h                                         ; $797d: $84
    nop                                           ; $797e: $00
    ld [hl], e                                    ; $797f: $73
    ld hl, sp-$08                                 ; $7980: $f8 $f8
    inc b                                         ; $7982: $04
    db $fc                                        ; $7983: $fc
    ld b, $62                                     ; $7984: $06 $62
    dec b                                         ; $7986: $05
    nop                                           ; $7987: $00
    ei                                            ; $7988: $fb

jr_08f_7989:
    inc b                                         ; $7989: $04
    ld [hl], d                                    ; $798a: $72
    ld [bc], a                                    ; $798b: $02
    nop                                           ; $798c: $00

jr_08f_798d:
    adc a                                         ; $798d: $8f
    cp c                                          ; $798e: $b9
    ld a, [hl]                                    ; $798f: $7e
    nop                                           ; $7990: $00
    ei                                            ; $7991: $fb
    inc c                                         ; $7992: $0c
    rst $38                                       ; $7993: $ff
    ld [$180f], sp                                ; $7994: $08 $0f $18
    reti                                          ; $7997: $d9


    db $e4                                        ; $7998: $e4
    nop                                           ; $7999: $00
    rst $38                                       ; $799a: $ff
    jr nz, jr_08f_7989                            ; $799b: $20 $ec

    jr nz, jr_08f_79a0                            ; $799d: $20 $01

    inc hl                                        ; $799f: $23

jr_08f_79a0:
    ld c, e                                       ; $79a0: $4b
    db $fc                                        ; $79a1: $fc
    nop                                           ; $79a2: $00
    rst $18                                       ; $79a3: $df
    jr nc, jr_08f_798d                            ; $79a4: $30 $e7

jr_08f_79a6:
    db $10                                        ; $79a6: $10
    pop hl                                        ; $79a7: $e1
    ld [$1ecc], sp                                ; $79a8: $08 $cc $1e
    nop                                           ; $79ab: $00
    cp h                                          ; $79ac: $bc
    add b                                         ; $79ad: $80
    ld bc, $7883                                  ; $79ae: $01 $83 $78
    rst $38                                       ; $79b1: $ff
    xor [hl]                                      ; $79b2: $ae
    ld [hl], c                                    ; $79b3: $71
    nop                                           ; $79b4: $00
    rst $18                                       ; $79b5: $df
    jr nz, jr_08f_79a6                            ; $79b6: $20 $ee

    ld hl, $13c0                                  ; $79b8: $21 $c0 $13
    inc c                                         ; $79bb: $0c
    ccf                                           ; $79bc: $3f
    nop                                           ; $79bd: $00
    inc c                                         ; $79be: $0c
    sbc b                                         ; $79bf: $98
    db $db                                        ; $79c0: $db
    rst $20                                       ; $79c1: $e7
    di                                            ; $79c2: $f3
    inc b                                         ; $79c3: $04
    db $e3                                        ; $79c4: $e3

jr_08f_79c5:
    ld [$0800], sp                                ; $79c5: $08 $00 $08
    sub h                                         ; $79c8: $94
    dec a                                         ; $79c9: $3d
    di                                            ; $79ca: $f3
    ld h, [hl]                                    ; $79cb: $66
    sub c                                         ; $79cc: $91
    pop af                                        ; $79cd: $f1
    ld a, [bc]                                    ; $79ce: $0a
    nop                                           ; $79cf: $00
    inc a                                         ; $79d0: $3c

jr_08f_79d1:
    add d                                         ; $79d1: $82
    adc l                                         ; $79d2: $8d
    pop bc                                        ; $79d3: $c1
    call nz, $ab37                                ; $79d4: $c4 $37 $ab
    inc a                                         ; $79d7: $3c
    nop                                           ; $79d8: $00
    and a                                         ; $79d9: $a7
    ret c                                         ; $79da: $d8

    rst $30                                       ; $79db: $f7
    ld [$08eb], sp                                ; $79dc: $08 $eb $08
    inc e                                         ; $79df: $1c
    ld [$1f00], sp                                ; $79e0: $08 $00 $1f
    ld hl, $c0be                                  ; $79e3: $21 $be $c0
    ret nc                                        ; $79e6: $d0

    jr nz, jr_08f_79d1                            ; $79e7: $20 $e8

    dec e                                         ; $79e9: $1d
    nop                                           ; $79ea: $00
    call z, $9f13                                 ; $79eb: $cc $13 $9f
    jr nz, jr_08f_7a26                            ; $79ee: $20 $36

    jr nz, jr_08f_7a22                            ; $79f0: $20 $30

    ld a, c                                       ; $79f2: $79
    nop                                           ; $79f3: $00
    cp [hl]                                       ; $79f4: $be
    ld b, c                                       ; $79f5: $41
    rst $38                                       ; $79f6: $ff
    add b                                         ; $79f7: $80
    inc c                                         ; $79f8: $0c
    add c                                         ; $79f9: $81
    jr nz, @-$0b                                  ; $79fa: $20 $f3

    nop                                           ; $79fc: $00
    ld [hl], $cf                                  ; $79fd: $36 $cf
    ld a, a                                       ; $79ff: $7f
    add b                                         ; $7a00: $80
    ld e, $80                                     ; $7a01: $1e $80
    ret nz                                        ; $7a03: $c0

    pop hl                                        ; $7a04: $e1
    nop                                           ; $7a05: $00
    ld [$0f0d], a                                 ; $7a06: $ea $0d $0f
    db $10                                        ; $7a09: $10
    xor $f0                                       ; $7a0a: $ee $f0
    ld [hl], b                                    ; $7a0c: $70
    adc c                                         ; $7a0d: $89
    nop                                           ; $7a0e: $00
    ld a, c                                       ; $7a0f: $79
    ld b, $07                                     ; $7a10: $06 $07
    add h                                         ; $7a12: $84
    or e                                          ; $7a13: $b3
    ld [hl], h                                    ; $7a14: $74
    ld hl, sp+$08                                 ; $7a15: $f8 $08
    nop                                           ; $7a17: $00
    rst $20                                       ; $7a18: $e7
    rst $38                                       ; $7a19: $ff
    rst $38                                       ; $7a1a: $ff
    ld b, b                                       ; $7a1b: $40
    ld a, [hl]                                    ; $7a1c: $7e
    ld b, b                                       ; $7a1d: $40
    cp b                                          ; $7a1e: $b8
    pop bc                                        ; $7a1f: $c1
    nop                                           ; $7a20: $00
    db $e3                                        ; $7a21: $e3

jr_08f_7a22:
    daa                                           ; $7a22: $27
    rst $30                                       ; $7a23: $f7
    jr jr_08f_79c5                                ; $7a24: $18 $9f

jr_08f_7a26:
    db $10                                        ; $7a26: $10
    rra                                           ; $7a27: $1f
    ld h, b                                       ; $7a28: $60
    nop                                           ; $7a29: $00
    add hl, sp                                    ; $7a2a: $39
    add $7e                                       ; $7a2b: $c6 $7e
    add d                                         ; $7a2d: $82
    ld a, a                                       ; $7a2e: $7f
    add c                                         ; $7a2f: $81
    db $fc                                        ; $7a30: $fc
    nop                                           ; $7a31: $00
    nop                                           ; $7a32: $00
    ld a, d                                       ; $7a33: $7a
    inc bc                                        ; $7a34: $03
    daa                                           ; $7a35: $27
    add h                                         ; $7a36: $84
    bit 1, h                                      ; $7a37: $cb $4c
    db $ec                                        ; $7a39: $ec
    inc sp                                        ; $7a3a: $33
    nop                                           ; $7a3b: $00
    db $ec                                        ; $7a3c: $ec
    rra                                           ; $7a3d: $1f
    or $09                                        ; $7a3e: $f6 $09
    rrca                                          ; $7a40: $0f
    db $10                                        ; $7a41: $10
    ld c, a                                       ; $7a42: $4f
    ldh [rP1], a                                  ; $7a43: $e0 $00
    ldh [rNR11], a                                ; $7a45: $e0 $11
    rst $30                                       ; $7a47: $f7
    rrca                                          ; $7a48: $0f
    rst $00                                       ; $7a49: $c7
    ld [$300f], sp                                ; $7a4a: $08 $0f $30
    ld bc, $ffe0                                  ; $7a4d: $01 $e0 $ff
    ccf                                           ; $7a50: $3f
    add b                                         ; $7a51: $80
    adc a                                         ; $7a52: $8f
    ld b, b                                       ; $7a53: $40
    and b                                         ; $7a54: $a0

jr_08f_7a55:
    ldh a, [$30]                                  ; $7a55: $f0 $30
    ret nz                                        ; $7a57: $c0

    ld c, h                                       ; $7a58: $4c
    ld c, d                                       ; $7a59: $4a
    ld e, b                                       ; $7a5a: $58
    ld a, [bc]                                    ; $7a5b: $0a
    ldh [rIE], a                                  ; $7a5c: $e0 $ff
    cp a                                          ; $7a5e: $bf
    ret nz                                        ; $7a5f: $c0

    ld a, [hl]                                    ; $7a60: $7e
    add b                                         ; $7a61: $80
    ld b, e                                       ; $7a62: $43

jr_08f_7a63:
    inc e                                         ; $7a63: $1c
    ldh a, [$30]                                  ; $7a64: $f0 $30
    nop                                           ; $7a66: $00
    rst $38                                       ; $7a67: $ff
    ld a, a                                       ; $7a68: $7f
    add b                                         ; $7a69: $80
    ld [bc], a                                    ; $7a6a: $02
    ld c, b                                       ; $7a6b: $48
    ld a, [bc]                                    ; $7a6c: $0a
    inc c                                         ; $7a6d: $0c
    ld d, [hl]                                    ; $7a6e: $56
    db $fc                                        ; $7a6f: $fc
    ld [bc], a                                    ; $7a70: $02
    nop                                           ; $7a71: $00
    ld hl, sp+$02                                 ; $7a72: $f8 $02
    nop                                           ; $7a74: $00
    ldh a, [$38]                                  ; $7a75: $f0 $38
    ld [bc], a                                    ; $7a77: $02
    ld e, $58                                     ; $7a78: $1e $58
    ld b, b                                       ; $7a7a: $40

jr_08f_7a7b:
    nop                                           ; $7a7b: $00
    add b                                         ; $7a7c: $80
    ldh [rP1], a                                  ; $7a7d: $e0 $00
    ldh [rNR23], a                                ; $7a7f: $e0 $18
    ld hl, sp+$06                                 ; $7a81: $f8 $06
    cp $66                                        ; $7a83: $fe $66
    ld bc, $1651                                  ; $7a85: $01 $51 $16
    inc h                                         ; $7a88: $24
    ld b, $bf                                     ; $7a89: $06 $bf
    ret nz                                        ; $7a8b: $c0

    ld [hl], b                                    ; $7a8c: $70
    ld c, $04                                     ; $7a8d: $0e $04
    jr jr_08f_7a55                                ; $7a8f: $18 $c4

    ldh a, [$ca]                                  ; $7a91: $f0 $ca
    inc bc                                        ; $7a93: $03
    inc d                                         ; $7a94: $14
    nop                                           ; $7a95: $00
    dec de                                        ; $7a96: $1b
    jr jr_08f_7b11                                ; $7a97: $18 $78

    ld b, $22                                     ; $7a99: $06 $22
    rst $38                                       ; $7a9b: $ff

jr_08f_7a9c:
    add hl, sp                                    ; $7a9c: $39
    rst $38                                       ; $7a9d: $ff
    ld bc, $ff73                                  ; $7a9e: $01 $73 $ff
    cpl                                           ; $7aa1: $2f
    ldh a, [$1f]                                  ; $7aa2: $f0 $1f
    ld h, b                                       ; $7aa4: $60
    ld h, a                                       ; $7aa5: $67
    sub b                                         ; $7aa6: $90
    ld sp, $c008                                  ; $7aa7: $31 $08 $c0
    rst $38                                       ; $7aaa: $ff
    ccf                                           ; $7aab: $3f
    ret nz                                        ; $7aac: $c0

    and b                                         ; $7aad: $a0
    ld c, b                                       ; $7aae: $48
    pop af                                        ; $7aaf: $f1
    rst $38                                       ; $7ab0: $ff
    xor $16                                       ; $7ab1: $ee $16
    ld sp, $4f37                                  ; $7ab3: $31 $37 $4f
    sub b                                         ; $7ab6: $90
    add hl, sp                                    ; $7ab7: $39
    ret nc                                        ; $7ab8: $d0

    and b                                         ; $7ab9: $a0
    ld [hl], b                                    ; $7aba: $70
    cp e                                          ; $7abb: $bb
    ld c, $0f                                     ; $7abc: $0e $0f
    adc [hl]                                      ; $7abe: $8e
    add $02                                       ; $7abf: $c6 $02
    nop                                           ; $7ac1: $00
    inc b                                         ; $7ac2: $04
    inc b                                         ; $7ac3: $04
    or e                                          ; $7ac4: $b3
    dec c                                         ; $7ac5: $0d
    rst $08                                       ; $7ac6: $cf
    dec de                                        ; $7ac7: $1b
    pop de                                        ; $7ac8: $d1
    ld b, $07                                     ; $7ac9: $06 $07
    ldh [rSC], a                                  ; $7acb: $e0 $02
    db $10                                        ; $7acd: $10
    db $10                                        ; $7ace: $10
    jr c, jr_08f_7a63                             ; $7acf: $38 $92

    jr jr_08f_7adb                                ; $7ad1: $18 $08

    nop                                           ; $7ad3: $00
    ld [$1810], sp                                ; $7ad4: $08 $10 $18
    rlca                                          ; $7ad7: $07
    nop                                           ; $7ad8: $00
    jr jr_08f_7a7b                                ; $7ad9: $18 $a0

jr_08f_7adb:
    cp b                                          ; $7adb: $b8
    ld b, b                                       ; $7adc: $40
    jp nz, $1f00                                  ; $7add: $c2 $00 $1f

    nop                                           ; $7ae0: $00
    ld h, $18                                     ; $7ae1: $26 $18
    cp b                                          ; $7ae3: $b8
    ld b, $20                                     ; $7ae4: $06 $20
    ld hl, sp-$63                                 ; $7ae6: $f8 $9d
    ld b, b                                       ; $7ae8: $40
    ret nz                                        ; $7ae9: $c0

    jr nz, jr_08f_7a9c                            ; $7aea: $20 $b0

    ld c, b                                       ; $7aec: $48
    jr @+$01                                      ; $7aed: $18 $ff

    inc sp                                        ; $7aef: $33
    add b                                         ; $7af0: $80
    sbc d                                         ; $7af1: $9a
    ld [hl-], a                                   ; $7af2: $32
    ccf                                           ; $7af3: $3f
    rst $38                                       ; $7af4: $ff
    ld e, [hl]                                    ; $7af5: $5e
    cp a                                          ; $7af6: $bf
    rrca                                          ; $7af7: $0f
    rst $38                                       ; $7af8: $ff
    ld b, b                                       ; $7af9: $40
    ld h, b                                       ; $7afa: $60
    cp a                                          ; $7afb: $bf
    ld a, d                                       ; $7afc: $7a
    ld b, $18                                     ; $7afd: $06 $18
    ld b, $cb                                     ; $7aff: $06 $cb
    rst $20                                       ; $7b01: $e7
    sub [hl]                                      ; $7b02: $96
    call $84ab                                    ; $7b03: $cd $ab $84
    jr c, jr_08f_7b0c                             ; $7b06: $38 $04

    inc bc                                        ; $7b08: $03
    db $fd                                        ; $7b09: $fd
    ld b, b                                       ; $7b0a: $40
    cp a                                          ; $7b0b: $bf

jr_08f_7b0c:
    sub b                                         ; $7b0c: $90
    dec l                                         ; $7b0d: $2d
    ld e, a                                       ; $7b0e: $5f
    xor a                                         ; $7b0f: $af
    ld c, h                                       ; $7b10: $4c

jr_08f_7b11:
    ld e, a                                       ; $7b11: $5f
    ldh [rSC], a                                  ; $7b12: $e0 $02
    ld a, [bc]                                    ; $7b14: $0a
    push af                                       ; $7b15: $f5
    sub b                                         ; $7b16: $90
    dec l                                         ; $7b17: $2d
    db $e4                                        ; $7b18: $e4
    ld a, [de]                                    ; $7b19: $1a
    ld a, [hl-]                                   ; $7b1a: $3a
    rst $38                                       ; $7b1b: $ff
    rlca                                          ; $7b1c: $07
    dec [hl]                                      ; $7b1d: $35
    rst $38                                       ; $7b1e: $ff
    dec sp                                        ; $7b1f: $3b
    call c, $e23f                                 ; $7b20: $dc $3f $e2
    ld [hl-], a                                   ; $7b23: $32
    db $f4                                        ; $7b24: $f4
    ld a, [bc]                                    ; $7b25: $0a
    db $e4                                        ; $7b26: $e4
    ld c, d                                       ; $7b27: $4a
    ld c, b                                       ; $7b28: $48
    add c                                         ; $7b29: $81
    sbc h                                         ; $7b2a: $9c
    scf                                           ; $7b2b: $37
    ret nz                                        ; $7b2c: $c0

    cp a                                          ; $7b2d: $bf
    sub b                                         ; $7b2e: $90
    rrca                                          ; $7b2f: $0f
    jp Jump_000_2f0f                              ; $7b30: $c3 $0f $2f


    ld c, b                                       ; $7b33: $48
    jr nc, jr_08f_7b56                            ; $7b34: $30 $20

    ld c, c                                       ; $7b36: $49
    ld a, a                                       ; $7b37: $7f
    add b                                         ; $7b38: $80
    ret nz                                        ; $7b39: $c0

    ld e, c                                       ; $7b3a: $59
    rst $08                                       ; $7b3b: $cf
    jr nz, @-$5d                                  ; $7b3c: $20 $a1

    ld b, d                                       ; $7b3e: $42
    jr nc, jr_08f_7b61                            ; $7b3f: $30 $20

    ld c, c                                       ; $7b41: $49
    cp a                                          ; $7b42: $bf
    ret nz                                        ; $7b43: $c0

    rst $38                                       ; $7b44: $ff
    add b                                         ; $7b45: $80

jr_08f_7b46:
    ret nz                                        ; $7b46: $c0

    ld c, c                                       ; $7b47: $49
    rst $38                                       ; $7b48: $ff
    inc bc                                        ; $7b49: $03
    rst $38                                       ; $7b4a: $ff
    ld bc, $83ff                                  ; $7b4b: $01 $ff $83
    ld a, a                                       ; $7b4e: $7f
    ld bc, $0516                                  ; $7b4f: $01 $16 $05
    inc b                                         ; $7b52: $04
    ld [$c120], sp                                ; $7b53: $08 $20 $c1

jr_08f_7b56:
    cp a                                          ; $7b56: $bf
    ret nz                                        ; $7b57: $c0

    ld a, $01                                     ; $7b58: $3e $01
    nop                                           ; $7b5a: $00
    dec b                                         ; $7b5b: $05
    inc bc                                        ; $7b5c: $03
    cpl                                           ; $7b5d: $2f
    ld b, b                                       ; $7b5e: $40
    rra                                           ; $7b5f: $1f
    sub l                                         ; $7b60: $95

jr_08f_7b61:
    rrca                                          ; $7b61: $0f
    call nz, Call_000_3003                        ; $7b62: $c4 $03 $30
    inc c                                         ; $7b65: $0c
    ld bc, $0800                                  ; $7b66: $01 $00 $08
    ld [$2407], sp                                ; $7b69: $08 $07 $24
    jr jr_08f_7b7e                                ; $7b6c: $18 $10

    ld bc, $6038                                  ; $7b6e: $01 $38 $60
    jr nz, jr_08f_7b84                            ; $7b71: $20 $11

    ld b, b                                       ; $7b73: $40
    ret nz                                        ; $7b74: $c0

    add b                                         ; $7b75: $80
    sub a                                         ; $7b76: $97
    ld h, $08                                     ; $7b77: $26 $08
    nop                                           ; $7b79: $00
    di                                            ; $7b7a: $f3
    and b                                         ; $7b7b: $a0
    ld h, c                                       ; $7b7c: $61

jr_08f_7b7d:
    rrca                                          ; $7b7d: $0f

jr_08f_7b7e:
    or b                                          ; $7b7e: $b0
    rst $38                                       ; $7b7f: $ff
    rra                                           ; $7b80: $1f
    ldh [rLCDC], a                                ; $7b81: $e0 $40
    ld c, d                                       ; $7b83: $4a

jr_08f_7b84:
    ld [hl], b                                    ; $7b84: $70
    add hl, hl                                    ; $7b85: $29
    ld h, [hl]                                    ; $7b86: $66
    inc e                                         ; $7b87: $1c
    ld b, $40                                     ; $7b88: $06 $40
    ret nz                                        ; $7b8a: $c0

    ld [hl], c                                    ; $7b8b: $71
    dec d                                         ; $7b8c: $15
    ld b, b                                       ; $7b8d: $40
    ld e, c                                       ; $7b8e: $59
    sub c                                         ; $7b8f: $91
    rst $38                                       ; $7b90: $ff
    ld l, d                                       ; $7b91: $6a
    rst $38                                       ; $7b92: $ff
    add e                                         ; $7b93: $83
    rst $38                                       ; $7b94: $ff
    cpl                                           ; $7b95: $2f
    ld b, c                                       ; $7b96: $41
    cp a                                          ; $7b97: $bf
    sub b                                         ; $7b98: $90
    jr z, jr_08f_7b46                             ; $7b99: $28 $ab

    jp nc, $8215                                  ; $7b9b: $d2 $15 $82

    dec de                                        ; $7b9e: $1b
    add [hl]                                      ; $7b9f: $86
    inc bc                                        ; $7ba0: $03
    ld c, $18                                     ; $7ba1: $0e $18
    ld [hl], b                                    ; $7ba3: $70
    ld d, l                                       ; $7ba4: $55
    ld d, a                                       ; $7ba5: $57
    ld d, $fb                                     ; $7ba6: $16 $fb
    ld [$0dbd], sp                                ; $7ba8: $08 $bd $0d
    cp e                                          ; $7bab: $bb
    or b                                          ; $7bac: $b0
    inc b                                         ; $7bad: $04
    sbc b                                         ; $7bae: $98
    ld [bc], a                                    ; $7baf: $02
    ld d, d                                       ; $7bb0: $52
    rst $38                                       ; $7bb1: $ff
    ld bc, $8070                                  ; $7bb2: $01 $70 $80
    ld [bc], a                                    ; $7bb5: $02
    nop                                           ; $7bb6: $00
    ret nz                                        ; $7bb7: $c0

    cp a                                          ; $7bb8: $bf
    inc b                                         ; $7bb9: $04
    jr jr_08f_7b7d                                ; $7bba: $18 $c1

    nop                                           ; $7bbc: $00
    cp a                                          ; $7bbd: $bf
    rst $38                                       ; $7bbe: $ff
    rst $38                                       ; $7bbf: $ff
    nop                                           ; $7bc0: $00
    rst $38                                       ; $7bc1: $ff
    xor d                                         ; $7bc2: $aa
    ld d, l                                       ; $7bc3: $55
    nop                                           ; $7bc4: $00
    db $ec                                        ; $7bc5: $ec
    ld b, $00                                     ; $7bc6: $06 $00
    ld [$2d00], sp                                ; $7bc8: $08 $00 $2d
    nop                                           ; $7bcb: $00
    add e                                         ; $7bcc: $83
    inc d                                         ; $7bcd: $14
    nop                                           ; $7bce: $00
    inc b                                         ; $7bcf: $04
    ld c, b                                       ; $7bd0: $48
    rst $38                                       ; $7bd1: $ff
    ei                                            ; $7bd2: $fb
    nop                                           ; $7bd3: $00
    ei                                            ; $7bd4: $fb
    and d                                         ; $7bd5: $a2
    ld [c], a                                     ; $7bd6: $e2
    inc b                                         ; $7bd7: $04
    pop de                                        ; $7bd8: $d1
    ld [$0cc0], sp                                ; $7bd9: $08 $c0 $0c
    ret nz                                        ; $7bdc: $c0

    ld [bc], a                                    ; $7bdd: $02
    jr jr_08f_7c30                                ; $7bde: $18 $50

    nop                                           ; $7be0: $00
    xor [hl]                                      ; $7be1: $ae
    xor $0c                                       ; $7be2: $ee $0c
    db $dd                                        ; $7be4: $dd
    inc c                                         ; $7be5: $0c
    call z, $02fa                                 ; $7be6: $cc $fa $02
    jr nz, jr_08f_7c03                            ; $7be9: $20 $18

    jr z, @+$22                                   ; $7beb: $28 $20

    jr z, jr_08f_7c07                             ; $7bed: $28 $18

    jr z, @+$22                                   ; $7bef: $28 $20

    jr z, @+$81                                   ; $7bf1: $28 $7f

    ld [hl], c                                    ; $7bf3: $71
    nop                                           ; $7bf4: $00
    xor d                                         ; $7bf5: $aa
    nop                                           ; $7bf6: $00
    add b                                         ; $7bf7: $80
    xor e                                         ; $7bf8: $ab
    add c                                         ; $7bf9: $81
    add d                                         ; $7bfa: $82
    add e                                         ; $7bfb: $83
    add e                                         ; $7bfc: $83
    add c                                         ; $7bfd: $81
    add c                                         ; $7bfe: $81
    db $10                                        ; $7bff: $10
    add b                                         ; $7c00: $80
    add b                                         ; $7c01: $80
    add b                                         ; $7c02: $80

jr_08f_7c03:
    sub b                                         ; $7c03: $90
    nop                                           ; $7c04: $00
    nop                                           ; $7c05: $00
    xor [hl]                                      ; $7c06: $ae

jr_08f_7c07:
    inc c                                         ; $7c07: $0c
    ld a, [c]                                     ; $7c08: $f2
    nop                                           ; $7c09: $00
    cp $a5                                        ; $7c0a: $fe $a5
    jp $f976                                      ; $7c0c: $c3 $76 $f9


    adc l                                         ; $7c0f: $8d

Call_08f_7c10:
    cp $d3                                        ; $7c10: $fe $d3
    nop                                           ; $7c12: $00
    ld a, a                                       ; $7c13: $7f
    cp $ff                                        ; $7c14: $fe $ff
    rst $38                                       ; $7c16: $ff
    ld bc, $01ab                                  ; $7c17: $01 $ab $01
    db $eb                                        ; $7c1a: $eb
    nop                                           ; $7c1b: $00
    ld h, c                                       ; $7c1c: $61
    or c                                          ; $7c1d: $b1
    pop de                                        ; $7c1e: $d1
    pop af                                        ; $7c1f: $f1
    ld sp, $e1f1                                  ; $7c20: $31 $f1 $e1
    ld h, c                                       ; $7c23: $61
    ld e, b                                       ; $7c24: $58
    pop bc                                        ; $7c25: $c1
    ld e, b                                       ; $7c26: $58
    nop                                           ; $7c27: $00
    adc h                                         ; $7c28: $8c
    ld [bc], a                                    ; $7c29: $02
    ld c, b                                       ; $7c2a: $48
    inc sp                                        ; $7c2b: $33
    nop                                           ; $7c2c: $00
    add b                                         ; $7c2d: $80

jr_08f_7c2e:
    add c                                         ; $7c2e: $81
    add b                                         ; $7c2f: $80

jr_08f_7c30:
    nop                                           ; $7c30: $00
    add e                                         ; $7c31: $83
    add c                                         ; $7c32: $81
    add [hl]                                      ; $7c33: $86
    add e                                         ; $7c34: $83
    add h                                         ; $7c35: $84
    add [hl]                                      ; $7c36: $86
    adc h                                         ; $7c37: $8c
    add [hl]                                      ; $7c38: $86
    nop                                           ; $7c39: $00
    adc c                                         ; $7c3a: $89
    adc [hl]                                      ; $7c3b: $8e
    inc a                                         ; $7c3c: $3c
    ld a, a                                       ; $7c3d: $7f
    bit 7, a                                      ; $7c3e: $cb $7f
    sub $89                                       ; $7c40: $d6 $89
    nop                                           ; $7c42: $00
    ld e, l                                       ; $7c43: $5d
    and b                                         ; $7c44: $a0
    and [hl]                                      ; $7c45: $a6
    ld c, b                                       ; $7c46: $48
    rlc h                                         ; $7c47: $cb $04
    sub l                                         ; $7c49: $95
    ld [bc], a                                    ; $7c4a: $02
    nop                                           ; $7c4b: $00
    ld a, [$c105]                                 ; $7c4c: $fa $05 $c1
    add c                                         ; $7c4f: $81
    ld bc, $c181                                  ; $7c50: $01 $81 $c1
    add c                                         ; $7c53: $81
    nop                                           ; $7c54: $00
    ld h, c                                       ; $7c55: $61
    pop bc                                        ; $7c56: $c1
    or c                                          ; $7c57: $b1
    ld h, c                                       ; $7c58: $61
    reti                                          ; $7c59: $d9


    ld sp, $b90d                                  ; $7c5a: $31 $0d $b9
    dec h                                         ; $7c5d: $25
    push af                                       ; $7c5e: $f5
    dec e                                         ; $7c5f: $1d
    ld a, $58                                     ; $7c60: $3e $58
    call z, $808c                                 ; $7c62: $cc $8c $80
    jr @-$54                                      ; $7c65: $18 $aa

    ld a, d                                       ; $7c67: $7a
    nop                                           ; $7c68: $00
    ld [bc], a                                    ; $7c69: $02
    add d                                         ; $7c6a: $82
    add c                                         ; $7c6b: $81
    and c                                         ; $7c6c: $a1
    sbc [hl]                                      ; $7c6d: $9e
    sbc a                                         ; $7c6e: $9f
    push hl                                       ; $7c6f: $e5
    add b                                         ; $7c70: $80
    ld [$00aa], sp                                ; $7c71: $08 $aa $00
    nop                                           ; $7c74: $00
    or c                                          ; $7c75: $b1
    ld c, $4a                                     ; $7c76: $0e $4a
    ld sp, $c020                                  ; $7c78: $31 $20 $c0
    nop                                           ; $7c7b: $00
    stop                                          ; $7c7c: $10 $00
    ldh [$c0], a                                  ; $7c7e: $e0 $c0
    add b                                         ; $7c80: $80
    jr jr_08f_7c2e                                ; $7c81: $18 $ab

    ld bc, $c121                                  ; $7c83: $01 $21 $c1
    nop                                           ; $7c86: $00
    ld c, c                                       ; $7c87: $49
    ld sp, $0d15                                  ; $7c88: $31 $15 $0d
    dec e                                         ; $7c8b: $1d
    dec c                                         ; $7c8c: $0d
    adc a                                         ; $7c8d: $8f
    add h                                         ; $7c8e: $84
    nop                                           ; $7c8f: $00
    sbc a                                         ; $7c90: $9f
    add h                                         ; $7c91: $84
    adc l                                         ; $7c92: $8d
    add a                                         ; $7c93: $87
    sbc a                                         ; $7c94: $9f
    adc a                                         ; $7c95: $8f
    ei                                            ; $7c96: $fb
    or e                                          ; $7c97: $b3
    nop                                           ; $7c98: $00
    pop hl                                        ; $7c99: $e1
    jp $8080                                      ; $7c9a: $c3 $80 $80


    adc b                                         ; $7c9d: $88
    add [hl]                                      ; $7c9e: $86
    ld hl, sp+$30                                 ; $7c9f: $f8 $30
    nop                                           ; $7ca1: $00
    ld c, a                                       ; $7ca2: $4f
    cp $19                                        ; $7ca3: $fe $19
    rst $38                                       ; $7ca5: $ff
    sbc h                                         ; $7ca6: $9c
    rst $38                                       ; $7ca7: $ff
    adc h                                         ; $7ca8: $8c
    rst $38                                       ; $7ca9: $ff
    nop                                           ; $7caa: $00
    ldh a, [$7f]                                  ; $7cab: $f0 $7f
    inc e                                         ; $7cad: $1c
    rrca                                          ; $7cae: $0f
    ccf                                           ; $7caf: $3f
    inc sp                                        ; $7cb0: $33
    ld [hl], l                                    ; $7cb1: $75
    dec a                                         ; $7cb2: $3d
    nop                                           ; $7cb3: $00
    call $8979                                    ; $7cb4: $cd $79 $89
    ld sp, hl                                     ; $7cb7: $f9
    reti                                          ; $7cb8: $d9


    pop af                                        ; $7cb9: $f1
    pop af                                        ; $7cba: $f1
    and c                                         ; $7cbb: $a1
    ld bc, $91f9                                  ; $7cbc: $01 $f9 $91
    ld sp, hl                                     ; $7cbf: $f9
    adc c                                         ; $7cc0: $89
    ld sp, hl                                     ; $7cc1: $f9
    adc c                                         ; $7cc2: $89
    nop                                           ; $7cc3: $00
    dec sp                                        ; $7cc4: $3b
    add hl, de                                    ; $7cc5: $19
    and h                                         ; $7cc6: $a4
    ld b, c                                       ; $7cc7: $41
    ld bc, $04aa                                  ; $7cc8: $01 $aa $04
    db $10                                        ; $7ccb: $10
    xor d                                         ; $7ccc: $aa
    nop                                           ; $7ccd: $00

jr_08f_7cce:
    ld bc, $aa08                                  ; $7cce: $01 $08 $aa
    nop                                           ; $7cd1: $00
    add h                                         ; $7cd2: $84
    ld d, e                                       ; $7cd3: $53
    add hl, bc                                    ; $7cd4: $09
    ld d, l                                       ; $7cd5: $55
    nop                                           ; $7cd6: $00
    rlca                                          ; $7cd7: $07
    ld hl, sp+$10                                 ; $7cd8: $f8 $10
    ld e, b                                       ; $7cda: $58
    rst $38                                       ; $7cdb: $ff
    nop                                           ; $7cdc: $00
    nop                                           ; $7cdd: $00
    adc h                                         ; $7cde: $8c
    adc a                                         ; $7cdf: $8f
    jp c, $d58f                                   ; $7ce0: $da $8f $d5

    adc a                                         ; $7ce3: $8f
    sbc $87                                       ; $7ce4: $de $87
    nop                                           ; $7ce6: $00
    db $e3                                        ; $7ce7: $e3
    sbc a                                         ; $7ce8: $9f
    push de                                       ; $7ce9: $d5
    add d                                         ; $7cea: $82
    xor d                                         ; $7ceb: $aa
    push de                                       ; $7cec: $d5
    ld a, a                                       ; $7ced: $7f
    rst $38                                       ; $7cee: $ff
    nop                                           ; $7cef: $00
    pop de                                        ; $7cf0: $d1
    ld c, $6d                                     ; $7cf1: $0e $6d
    add d                                         ; $7cf3: $82
    ld de, $a1ee                                  ; $7cf4: $11 $ee $a1
    rst $38                                       ; $7cf7: $ff
    db $10                                        ; $7cf8: $10
    ld a, [$1fff]                                 ; $7cf9: $fa $ff $1f
    adc b                                         ; $7cfc: $88
    ld bc, $ffff                                  ; $7cfd: $01 $ff $ff
    ld c, l                                       ; $7d00: $4d
    dec a                                         ; $7d01: $3d
    nop                                           ; $7d02: $00
    sub l                                         ; $7d03: $95
    ld a, l                                       ; $7d04: $7d
    add hl, hl                                    ; $7d05: $29
    db $fd                                        ; $7d06: $fd
    ld e, a                                       ; $7d07: $5f
    ld sp, hl                                     ; $7d08: $f9
    di                                            ; $7d09: $f3
    db $fd                                        ; $7d0a: $fd
    nop                                           ; $7d0b: $00
    db $dd                                        ; $7d0c: $dd
    pop hl                                        ; $7d0d: $e1
    xor e                                         ; $7d0e: $ab
    ld d, l                                       ; $7d0f: $55
    cp $ff                                        ; $7d10: $fe $ff
    di                                            ; $7d12: $f3
    nop                                           ; $7d13: $00
    xor b                                         ; $7d14: $a8
    ld h, d                                       ; $7d15: $62
    ld e, c                                       ; $7d16: $59
    rst $38                                       ; $7d17: $ff
    ld h, d                                       ; $7d18: $62
    ld l, c                                       ; $7d19: $69
    adc h                                         ; $7d1a: $8c
    ld [hl], d                                    ; $7d1b: $72
    ld e, c                                       ; $7d1c: $59
    ld bc, $fe00                                  ; $7d1d: $01 $00 $fe
    or b                                          ; $7d20: $b0
    ld [bc], a                                    ; $7d21: $02
    jr nz, jr_08f_7cce                            ; $7d22: $20 $aa

    inc b                                         ; $7d24: $04
    db $10                                        ; $7d25: $10
    and b                                         ; $7d26: $a0
    ld c, c                                       ; $7d27: $49
    di                                            ; $7d28: $f3
    nop                                           ; $7d29: $00
    rst $38                                       ; $7d2a: $ff
    rst $38                                       ; $7d2b: $ff
    xor d                                         ; $7d2c: $aa
    and b                                         ; $7d2d: $a0
    ld c, c                                       ; $7d2e: $49
    rst $38                                       ; $7d2f: $ff
    adc $01                                       ; $7d30: $ce $01
    ld d, h                                       ; $7d32: $54
    or b                                          ; $7d33: $b0
    db $10                                        ; $7d34: $10
    ld d, h                                       ; $7d35: $54
    ld l, $20                                     ; $7d36: $2e $20
    cp $80                                        ; $7d38: $fe $80
    ld [hl+], a                                   ; $7d3a: $22
    nop                                           ; $7d3b: $00
    di                                            ; $7d3c: $f3
    ccf                                           ; $7d3d: $3f
    db $fc                                        ; $7d3e: $fc
    rrca                                          ; $7d3f: $0f
    rst $38                                       ; $7d40: $ff
    inc bc                                        ; $7d41: $03

jr_08f_7d42:
    call z, $0300                                 ; $7d42: $cc $00 $03
    jr nc, jr_08f_7d56                            ; $7d45: $30 $0f

    ret nz                                        ; $7d47: $c0

    ccf                                           ; $7d48: $3f
    nop                                           ; $7d49: $00
    rst $08                                       ; $7d4a: $cf
    rst $38                                       ; $7d4b: $ff
    nop                                           ; $7d4c: $00
    rst $38                                       ; $7d4d: $ff
    rst $08                                       ; $7d4e: $cf
    db $fc                                        ; $7d4f: $fc
    jr nc, jr_08f_7d42                            ; $7d50: $30 $f0

    ret nz                                        ; $7d52: $c0

    ret nz                                        ; $7d53: $c0

    jr nc, jr_08f_7d56                            ; $7d54: $30 $00

jr_08f_7d56:
    ret nz                                        ; $7d56: $c0

    inc c                                         ; $7d57: $0c
    ldh a, [$03]                                  ; $7d58: $f0 $03
    db $fc                                        ; $7d5a: $fc
    nop                                           ; $7d5b: $00
    di                                            ; $7d5c: $f3
    rst $38                                       ; $7d5d: $ff
    nop                                           ; $7d5e: $00
    rst $38                                       ; $7d5f: $ff
    ldh a, [$3f]                                  ; $7d60: $f0 $3f
    inc c                                         ; $7d62: $0c
    rrca                                          ; $7d63: $0f
    inc bc                                        ; $7d64: $03
    inc bc                                        ; $7d65: $03
    rrca                                          ; $7d66: $0f
    inc b                                         ; $7d67: $04
    inc bc                                        ; $7d68: $03
    ccf                                           ; $7d69: $3f
    rrca                                          ; $7d6a: $0f
    rst $38                                       ; $7d6b: $ff
    ccf                                           ; $7d6c: $3f
    ld e, [hl]                                    ; $7d6d: $5e
    ld a, [bc]                                    ; $7d6e: $0a
    rrca                                          ; $7d6f: $0f
    db $fc                                        ; $7d70: $fc
    nop                                           ; $7d71: $00
    ccf                                           ; $7d72: $3f
    ldh a, [rIE]                                  ; $7d73: $f0 $ff
    ret nz                                        ; $7d75: $c0

    di                                            ; $7d76: $f3
    ret nz                                        ; $7d77: $c0

    db $fc                                        ; $7d78: $fc
    ldh a, [rP1]                                  ; $7d79: $f0 $00
    rst $38                                       ; $7d7b: $ff
    db $fc                                        ; $7d7c: $fc
    rst $38                                       ; $7d7d: $ff
    rst $38                                       ; $7d7e: $ff
    add d                                         ; $7d7f: $82
    adc [hl]                                      ; $7d80: $8e
    rst $20                                       ; $7d81: $e7
    db $ed                                        ; $7d82: $ed

jr_08f_7d83:
    nop                                           ; $7d83: $00
    ret nz                                        ; $7d84: $c0

    pop hl                                        ; $7d85: $e1
    and c                                         ; $7d86: $a1
    ret nz                                        ; $7d87: $c0

    xor [hl]                                      ; $7d88: $ae
    add b                                         ; $7d89: $80
    cp d                                          ; $7d8a: $ba
    add h                                         ; $7d8b: $84
    nop                                           ; $7d8c: $00
    push de                                       ; $7d8d: $d5
    xor d                                         ; $7d8e: $aa
    ld a, a                                       ; $7d8f: $7f
    rst $38                                       ; $7d90: $ff
    jr jr_08f_7dcb                                ; $7d91: $18 $38

    add sp, -$68                                  ; $7d93: $e8 $98
    nop                                           ; $7d95: $00
    ret nz                                        ; $7d96: $c0

    ret nz                                        ; $7d97: $c0

    ld b, h                                       ; $7d98: $44
    ret c                                         ; $7d99: $d8

    or d                                          ; $7d9a: $b2
    inc e                                         ; $7d9b: $1c
    cp d                                          ; $7d9c: $ba
    inc c                                         ; $7d9d: $0c
    ld b, b                                       ; $7d9e: $40
    ld d, l                                       ; $7d9f: $55
    ld h, c                                       ; $7da0: $61
    ld [bc], a                                    ; $7da1: $02
    ld sp, hl                                     ; $7da2: $f9
    ld c, c                                       ; $7da3: $49
    ld a, c                                       ; $7da4: $79
    add hl, hl                                    ; $7da5: $29
    add hl, sp                                    ; $7da6: $39
    add hl, de                                    ; $7da7: $19
    jr nz, @+$1b                                  ; $7da8: $20 $19

    add hl, bc                                    ; $7daa: $09
    ld [hl], h                                    ; $7dab: $74
    add hl, bc                                    ; $7dac: $09
    ld d, l                                       ; $7dad: $55
    xor e                                         ; $7dae: $ab
    cp $ff                                        ; $7daf: $fe $ff
    ldh a, [rP1]                                  ; $7db1: $f0 $00
    adc a                                         ; $7db3: $8f
    rst $30                                       ; $7db4: $f7
    adc b                                         ; $7db5: $88
    pop af                                        ; $7db6: $f1

jr_08f_7db7:
    adc [hl]                                      ; $7db7: $8e
    push af                                       ; $7db8: $f5
    adc d                                         ; $7db9: $8a
    push af                                       ; $7dba: $f5
    ld bc, $d58a                                  ; $7dbb: $01 $8a $d5
    ld a, [$fa8d]                                 ; $7dbe: $fa $8d $fa
    db $fd                                        ; $7dc1: $fd
    ld a, [$00a3]                                 ; $7dc2: $fa $a3 $00
    inc b                                         ; $7dc5: $04
    nop                                           ; $7dc6: $00
    ld hl, sp+$07                                 ; $7dc7: $f8 $07
    rst $38                                       ; $7dc9: $ff
    inc b                                         ; $7dca: $04

jr_08f_7dcb:
    ld [bc], a                                    ; $7dcb: $02
    jr z, jr_08f_7d83                             ; $7dcc: $28 $b5

    cp $0c                                        ; $7dce: $fe $0c
    ld h, e                                       ; $7dd0: $63
    cp $ff                                        ; $7dd1: $fe $ff
    cp $4c                                        ; $7dd3: $fe $4c
    add hl, bc                                    ; $7dd5: $09
    ld h, b                                       ; $7dd6: $60
    add hl, bc                                    ; $7dd7: $09
    nop                                           ; $7dd8: $00
    nop                                           ; $7dd9: $00
    inc bc                                        ; $7dda: $03
    cp $07                                        ; $7ddb: $fe $07
    db $fc                                        ; $7ddd: $fc
    rlca                                          ; $7dde: $07
    rst $38                                       ; $7ddf: $ff
    rlca                                          ; $7de0: $07
    db $10                                        ; $7de1: $10
    jr c, jr_08f_7db7                             ; $7de2: $38 $d3

    nop                                           ; $7de4: $00
    and b                                         ; $7de5: $a0
    db $e3                                        ; $7de6: $e3
    ld [hl-], a                                   ; $7de7: $32
    xor d                                         ; $7de8: $aa
    ld a, l                                       ; $7de9: $7d
    add hl, bc                                    ; $7dea: $09
    rst $38                                       ; $7deb: $ff
    db $fd                                        ; $7dec: $fd
    inc bc                                        ; $7ded: $03
    rst $38                                       ; $7dee: $ff
    inc bc                                        ; $7def: $03
    adc b                                         ; $7df0: $88
    inc b                                         ; $7df1: $04
    nop                                           ; $7df2: $00
    nop                                           ; $7df3: $00
    pop af                                        ; $7df4: $f1
    ld c, $02                                     ; $7df5: $0e $02
    ld [$fe00], sp                                ; $7df7: $08 $00 $fe
    ld a, [hl]                                    ; $7dfa: $7e
    nop                                           ; $7dfb: $00
    add b                                         ; $7dfc: $80
    ld [c], a                                     ; $7dfd: $e2
    sbc h                                         ; $7dfe: $9c
    ld h, d                                       ; $7dff: $62
    sbc h                                         ; $7e00: $9c
    ld [c], a                                     ; $7e01: $e2
    inc e                                         ; $7e02: $1c
    ld e, [hl]                                    ; $7e03: $5e
    nop                                           ; $7e04: $00
    ldh [$fe], a                                  ; $7e05: $e0 $fe
    ldh [$5e], a                                  ; $7e07: $e0 $5e
    ldh [rIE], a                                  ; $7e09: $e0 $ff
    rst $38                                       ; $7e0b: $ff
    ld [bc], a                                    ; $7e0c: $02
    nop                                           ; $7e0d: $00
    db $fd                                        ; $7e0e: $fd
    dec b                                         ; $7e0f: $05
    ld a, [$f807]                                 ; $7e10: $fa $07 $f8
    dec bc                                        ; $7e13: $0b
    db $f4                                        ; $7e14: $f4
    ld c, $04                                     ; $7e15: $0e $04
    ld sp, hl                                     ; $7e17: $f9
    rlca                                          ; $7e18: $07
    cp $09                                        ; $7e19: $fe $09
    rst $30                                       ; $7e1b: $f7
    nop                                           ; $7e1c: $00
    dec bc                                        ; $7e1d: $0b
    add b                                         ; $7e1e: $80
    ld a, a                                       ; $7e1f: $7f
    ld bc, $bf40                                  ; $7e20: $01 $40 $bf
    ret nz                                        ; $7e23: $c0

    ld a, a                                       ; $7e24: $7f
    add b                                         ; $7e25: $80
    ld a, a                                       ; $7e26: $7f
    add b                                         ; $7e27: $80
    inc c                                         ; $7e28: $0c
    inc bc                                        ; $7e29: $03
    ld [hl], b                                    ; $7e2a: $70
    ld a, [$005e]                                 ; $7e2b: $fa $5e $00
    inc b                                         ; $7e2e: $04
    nop                                           ; $7e2f: $00
    jp nz, Jump_000_0021                          ; $7e30: $c2 $21 $00

    nop                                           ; $7e33: $00
    ld [c], a                                     ; $7e34: $e2
    inc e                                         ; $7e35: $1c
    nop                                           ; $7e36: $00
    ld [c], a                                     ; $7e37: $e2
    inc e                                         ; $7e38: $1c
    ld b, d                                       ; $7e39: $42
    db $fc                                        ; $7e3a: $fc
    cp $e0                                        ; $7e3b: $fe $e0
    ld a, [bc]                                    ; $7e3d: $0a
    and b                                         ; $7e3e: $a0
    ld b, b                                       ; $7e3f: $40
    ld d, h                                       ; $7e40: $54
    ld e, d                                       ; $7e41: $5a
    ld bc, $0000                                  ; $7e42: $01 $00 $00
    ld d, $e9                                     ; $7e45: $16 $e9
    dec e                                         ; $7e47: $1d
    ld [c], a                                     ; $7e48: $e2
    ld bc, $d12f                                  ; $7e49: $01 $2f $d1
    ld a, [hl-]                                   ; $7e4c: $3a
    push hl                                       ; $7e4d: $e5
    ld e, $fb                                     ; $7e4e: $1e $fb
    inc b                                         ; $7e50: $04
    ld a, [hl-]                                   ; $7e51: $3a
    inc bc                                        ; $7e52: $03
    ld [bc], a                                    ; $7e53: $02
    rst $38                                       ; $7e54: $ff
    nop                                           ; $7e55: $00
    ld a, h                                       ; $7e56: $7c
    add e                                         ; $7e57: $83
    ld d, h                                       ; $7e58: $54
    xor e                                         ; $7e59: $ab
    inc b                                         ; $7e5a: $04
    jr jr_08f_7ed9                                ; $7e5b: $18 $7c

    ldh a, [rNR10]                                ; $7e5d: $f0 $10
    db $10                                        ; $7e5f: $10
    ld d, b                                       ; $7e60: $50
    dec bc                                        ; $7e61: $0b
    ld [bc], a                                    ; $7e62: $02
    cp b                                          ; $7e63: $b8
    jr nz, jr_08f_7eae                            ; $7e64: $20 $48

    ccf                                           ; $7e66: $3f
    ret nz                                        ; $7e67: $c0

    add hl, sp                                    ; $7e68: $39
    add $00                                       ; $7e69: $c6 $00
    ccf                                           ; $7e6b: $3f
    ret nz                                        ; $7e6c: $c0

    ld c, $7f                                     ; $7e6d: $0e $7f
    ld a, c                                       ; $7e6f: $79
    rra                                           ; $7e70: $1f
    ld [hl], l                                    ; $7e71: $75
    rra                                           ; $7e72: $1f
    nop                                           ; $7e73: $00
    ld l, [hl]                                    ; $7e74: $6e
    rra                                           ; $7e75: $1f
    ld a, a                                       ; $7e76: $7f
    ld c, $7f                                     ; $7e77: $0e $7f
    nop                                           ; $7e79: $00
    ld l, [hl]                                    ; $7e7a: $6e
    rra                                           ; $7e7b: $1f
    nop                                           ; $7e7c: $00
    ld a, c                                       ; $7e7d: $79
    rra                                           ; $7e7e: $1f
    jr c, @+$01                                   ; $7e7f: $38 $ff

    rst $20                                       ; $7e81: $e7
    ld a, h                                       ; $7e82: $7c
    rst $10                                       ; $7e83: $d7
    ld a, h                                       ; $7e84: $7c
    nop                                           ; $7e85: $00
    cp e                                          ; $7e86: $bb
    ld a, h                                       ; $7e87: $7c
    rst $38                                       ; $7e88: $ff
    jr c, @+$01                                   ; $7e89: $38 $ff

    nop                                           ; $7e8b: $00
    cp e                                          ; $7e8c: $bb
    ld a, h                                       ; $7e8d: $7c
    dec bc                                        ; $7e8e: $0b
    rst $20                                       ; $7e8f: $e7
    ld a, h                                       ; $7e90: $7c
    ld hl, $28de                                  ; $7e91: $21 $de $28
    jr jr_08f_7ed5                                ; $7e94: $18 $3f

    ld b, b                                       ; $7e96: $40
    jr nz, jr_08f_7ec5                            ; $7e97: $20 $2c

    jr z, jr_08f_7ea2                             ; $7e99: $28 $07

    ld d, l                                       ; $7e9b: $55
    nop                                           ; $7e9c: $00
    ld a, [hl+]                                   ; $7e9d: $2a
    nop                                           ; $7e9e: $00
    ld a, a                                       ; $7e9f: $7f
    ld l, h                                       ; $7ea0: $6c
    ld [bc], a                                    ; $7ea1: $02

jr_08f_7ea2:
    inc l                                         ; $7ea2: $2c
    jr z, jr_08f_7ec5                             ; $7ea3: $28 $20

    add hl, hl                                    ; $7ea5: $29
    ld [$f3c0], sp                                ; $7ea6: $08 $c0 $f3
    jr nc, jr_08f_7ee7                            ; $7ea9: $30 $3c

    and b                                         ; $7eab: $a0
    ld c, c                                       ; $7eac: $49
    inc bc                                        ; $7ead: $03

jr_08f_7eae:
    rst $08                                       ; $7eae: $cf
    rrca                                          ; $7eaf: $0f
    ld d, c                                       ; $7eb0: $51
    inc a                                         ; $7eb1: $3c
    and b                                         ; $7eb2: $a0
    ld c, c                                       ; $7eb3: $49
    rst $08                                       ; $7eb4: $cf
    ldh [$61], a                                  ; $7eb5: $e0 $61
    di                                            ; $7eb7: $f3
    rst $38                                       ; $7eb8: $ff
    call z, Call_08f_51e0                         ; $7eb9: $cc $e0 $51
    ld c, h                                       ; $7ebc: $4c

jr_08f_7ebd:
    add c                                         ; $7ebd: $81
    inc e                                         ; $7ebe: $1c
    inc [hl]                                      ; $7ebf: $34
    ret nz                                        ; $7ec0: $c0

    cp a                                          ; $7ec1: $bf
    db $10                                        ; $7ec2: $10
    inc c                                         ; $7ec3: $0c
    sbc a                                         ; $7ec4: $9f

jr_08f_7ec5:
    inc bc                                        ; $7ec5: $03
    rst $38                                       ; $7ec6: $ff
    add e                                         ; $7ec7: $83
    dec bc                                        ; $7ec8: $0b
    ld a, a                                       ; $7ec9: $7f
    ld bc, $03ff                                  ; $7eca: $01 $ff $03
    ld [$0300], sp                                ; $7ecd: $08 $00 $03
    jr nc, jr_08f_7ed6                            ; $7ed0: $30 $04

    ld [$6104], sp                                ; $7ed2: $08 $04 $61

jr_08f_7ed5:
    adc h                                         ; $7ed5: $8c

jr_08f_7ed6:
    ld [bc], a                                    ; $7ed6: $02
    ldh [rNR14], a                                ; $7ed7: $e0 $14

jr_08f_7ed9:
    ld d, h                                       ; $7ed9: $54
    add e                                         ; $7eda: $83
    rst $38                                       ; $7edb: $ff
    ld b, c                                       ; $7edc: $41
    cp a                                          ; $7edd: $bf
    ld b, b                                       ; $7ede: $40
    jr z, jr_08f_7f51                             ; $7edf: $28 $70

    xor e                                         ; $7ee1: $ab
    adc l                                         ; $7ee2: $8d
    inc h                                         ; $7ee3: $24
    ld [hl], d                                    ; $7ee4: $72
    inc e                                         ; $7ee5: $1c
    ld e, [hl]                                    ; $7ee6: $5e

jr_08f_7ee7:
    jr @+$57                                      ; $7ee7: $18 $55

    ld d, l                                       ; $7ee9: $55
    nop                                           ; $7eea: $00
    nop                                           ; $7eeb: $00
    inc d                                         ; $7eec: $14
    ld d, l                                       ; $7eed: $55
    ld d, l                                       ; $7eee: $55
    xor d                                         ; $7eef: $aa
    ld a, e                                       ; $7ef0: $7b
    inc b                                         ; $7ef1: $04
    ld d, l                                       ; $7ef2: $55
    cp $02                                        ; $7ef3: $fe $02
    db $db                                        ; $7ef5: $db
    db $db                                        ; $7ef6: $db
    ld bc, $ff04                                  ; $7ef7: $01 $04 $ff
    ld a, a                                       ; $7efa: $7f
    ld [hl], h                                    ; $7efb: $74
    ld bc, $0046                                  ; $7efc: $01 $46 $00
    ld de, $0b5a                                  ; $7eff: $11 $5a $0b
    ld b, l                                       ; $7f02: $45
    ld b, a                                       ; $7f03: $47
    inc [hl]                                      ; $7f04: $34
    inc b                                         ; $7f05: $04
    jr nz, jr_08f_7ebd                            ; $7f06: $20 $b5

    ld d, [hl]                                    ; $7f08: $56
    sub d                                         ; $7f09: $92
    ld hl, $14eb                                  ; $7f0a: $21 $eb $14
    nop                                           ; $7f0d: $00
    nop                                           ; $7f0e: $00
    inc [hl]                                      ; $7f0f: $34

Call_08f_7f10:
    ld [hl], $ab                                  ; $7f10: $36 $ab
    ld sp, $006b                                  ; $7f12: $31 $6b $00
    nop                                           ; $7f15: $00
    nop                                           ; $7f16: $00
    cp d                                          ; $7f17: $ba
    ld l, d                                       ; $7f18: $6a
    inc sp                                        ; $7f19: $33
    ld c, c                                       ; $7f1a: $49
    ld c, e                                       ; $7f1b: $4b
    jr z, jr_08f_7f22                             ; $7f1c: $28 $04

    inc c                                         ; $7f1e: $0c
    inc [hl]                                      ; $7f1f: $34
    ld [hl], $ab                                  ; $7f20: $36 $ab

jr_08f_7f22:
    ld sp, $2ce5                                  ; $7f22: $31 $e5 $2c
    ld b, b                                       ; $7f25: $40
    jr nz, @+$17                                  ; $7f26: $20 $15

    ld d, h                                       ; $7f28: $54
    rst $38                                       ; $7f29: $ff
    ld a, a                                       ; $7f2a: $7f
    dec d                                         ; $7f2b: $15
    ld d, h                                       ; $7f2c: $54
    nop                                           ; $7f2d: $00
    stop                                          ; $7f2e: $10 $00
    ld b, b                                       ; $7f30: $40
    ld a, d                                       ; $7f31: $7a
    ld [bc], a                                    ; $7f32: $02
    ld [hl], b                                    ; $7f33: $70
    ld bc, $1000                                  ; $7f34: $01 $00 $10
    ld bc, $ff04                                  ; $7f37: $01 $04 $ff
    ld a, a                                       ; $7f3a: $7f
    ld [hl], b                                    ; $7f3b: $70
    ld bc, $1000                                  ; $7f3c: $01 $00 $10
    sub d                                         ; $7f3f: $92
    ld h, d                                       ; $7f40: $62
    bit 1, c                                      ; $7f41: $cb $49
    ld h, $35                                     ; $7f43: $26 $35
    ld b, b                                       ; $7f45: $40
    jr @-$66                                      ; $7f46: $18 $98

    ld c, d                                       ; $7f48: $4a
    rst $10                                       ; $7f49: $d7
    ld sp, $1d31                                  ; $7f4a: $31 $31 $1d
    xor h                                         ; $7f4d: $ac
    inc c                                         ; $7f4e: $0c
    inc a                                         ; $7f4f: $3c
    ld b, [hl]                                    ; $7f50: $46

jr_08f_7f51:
    push af                                       ; $7f51: $f5
    ld d, l                                       ; $7f52: $55
    dec c                                         ; $7f53: $0d
    dec [hl]                                      ; $7f54: $35
    ld b, [hl]                                    ; $7f55: $46
    jr jr_08f_7fa9                                ; $7f56: $18 $51

    ld b, [hl]                                    ; $7f58: $46
    ld [hl], h                                    ; $7f59: $74
    ld bc, $350d                                  ; $7f5a: $01 $0d $35
    ld e, d                                       ; $7f5d: $5a
    ld l, e                                       ; $7f5e: $6b
    ld c, e                                       ; $7f5f: $4b
    ld b, [hl]                                    ; $7f60: $46
    nop                                           ; $7f61: $00
    ld [hl+], a                                   ; $7f62: $22
    dec c                                         ; $7f63: $0d
    dec [hl]                                      ; $7f64: $35
    sub $6a                                       ; $7f65: $d6 $6a
    sub c                                         ; $7f67: $91
    dec l                                         ; $7f68: $2d
    dec d                                         ; $7f69: $15
    nop                                           ; $7f6a: $00
    dec c                                         ; $7f6b: $0d
    dec [hl]                                      ; $7f6c: $35
    ld d, [hl]                                    ; $7f6d: $56
    ld c, e                                       ; $7f6e: $4b
    sbc d                                         ; $7f6f: $9a
    ld a, [hl-]                                   ; $7f70: $3a
    ld a, d                                       ; $7f71: $7a
    ld [bc], a                                    ; $7f72: $02
    ld [hl], b                                    ; $7f73: $70
    ld bc, $1000                                  ; $7f74: $01 $00 $10
    ld bc, $ff04                                  ; $7f77: $01 $04 $ff
    ld a, a                                       ; $7f7a: $7f
    or l                                          ; $7f7b: $b5
    ld d, l                                       ; $7f7c: $55
    ld l, e                                       ; $7f7d: $6b
    inc l                                         ; $7f7e: $2c
    dec b                                         ; $7f7f: $05
    ld [hl+], a                                   ; $7f80: $22
    cp l                                          ; $7f81: $bd
    ld [hl], a                                    ; $7f82: $77
    ld c, d                                       ; $7f83: $4a
    add hl, hl                                    ; $7f84: $29
    ld h, h                                       ; $7f85: $64
    db $10                                        ; $7f86: $10
    dec b                                         ; $7f87: $05
    ld [hl+], a                                   ; $7f88: $22
    ld e, d                                       ; $7f89: $5a
    ld l, $50                                     ; $7f8a: $2e $50
    ld de, $0005                                  ; $7f8c: $11 $05 $00
    xor d                                         ; $7f8f: $aa
    ld b, [hl]                                    ; $7f90: $46
    dec b                                         ; $7f91: $05
    ld [hl+], a                                   ; $7f92: $22
    ld b, l                                       ; $7f93: $45
    dec b                                         ; $7f94: $05
    and l                                         ; $7f95: $a5
    nop                                           ; $7f96: $00
    inc d                                         ; $7f97: $14
    ld l, [hl]                                    ; $7f98: $6e
    ld l, $51                                     ; $7f99: $2e $51
    adc c                                         ; $7f9b: $89
    inc [hl]                                      ; $7f9c: $34
    dec h                                         ; $7f9d: $25
    inc e                                         ; $7f9e: $1c
    inc d                                         ; $7f9f: $14
    ld l, [hl]                                    ; $7fa0: $6e
    and l                                         ; $7fa1: $a5
    nop                                           ; $7fa2: $00
    dec h                                         ; $7fa3: $25
    inc e                                         ; $7fa4: $1c
    nop                                           ; $7fa5: $00
    db $10                                        ; $7fa6: $10
    inc d                                         ; $7fa7: $14
    ld l, [hl]                                    ; $7fa8: $6e

jr_08f_7fa9:
    ld e, d                                       ; $7fa9: $5a
    ld [hl], a                                    ; $7faa: $77
    ld c, h                                       ; $7fab: $4c
    ld sp, $1064                                  ; $7fac: $31 $64 $10
    rst $18                                       ; $7faf: $df
    ld l, e                                       ; $7fb0: $6b
    rst $38                                       ; $7fb1: $ff
    ld [hl], e                                    ; $7fb2: $73
    ld [hl], c                                    ; $7fb3: $71
    ld bc, $0801                                  ; $7fb4: $01 $01 $08

    db $01, $04, $b5, $6a, $0a, $7c, $63, $34, $58, $63, $92, $4a, $cb, $2d, $26, $19
    db $7f, $47, $75, $32, $0b, $1d, $44, $08, $b5, $7e, $cb, $51, $e2, $24, $40, $08
    db $9f, $62, $b4, $35, $4a, $08, $02, $00, $b7, $1e, $b2, $01, $ec, $00, $27, $00
    db $da, $46, $d3, $31, $0b, $1d, $44, $08, $9a, $3a, $7a, $02, $70, $01, $00, $10

    add e                                         ; $7ff7: $83
    jr z, @-$19                                   ; $7ff8: $28 $e5

    ld [hl], d                                    ; $7ffa: $72
    ld h, b                                       ; $7ffb: $60
    ld d, c                                       ; $7ffc: $51
    nop                                           ; $7ffd: $00
    nop                                           ; $7ffe: $00
    rst $38                                       ; $7fff: $ff
